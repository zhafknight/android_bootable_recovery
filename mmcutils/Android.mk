ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	mmcutils.cpp

LOCAL_MODULE := libmmcutils
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS := -Wno-writable-strings
include $(BUILD_STATIC_LIBRARY)

#Added for TWRP building dynamic:
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
mmcutils.cpp

LOCAL_MODULE := libmmcutils
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS := -Wno-writable-strings
include $(BUILD_SHARED_LIBRARY)

endif	# !TARGET_SIMULATOR
