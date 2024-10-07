#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r12s device
$(call inherit-product, device/samsung/r12s/device.mk)

PRODUCT_DEVICE := r12s
PRODUCT_NAME := omni_r12s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S721B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r12sxxx-user 14 UP1A.231005.007 S721BXXS2AXI5 release-keys"

BUILD_FINGERPRINT := samsung/r12sxxx/r12s:14/UP1A.231005.007/S721BXXS2AXI5:user/release-keys
