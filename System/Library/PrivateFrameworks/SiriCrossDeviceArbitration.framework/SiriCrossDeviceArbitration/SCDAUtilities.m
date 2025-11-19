@interface SCDAUtilities
+ (BOOL)_hasPearlCameraCapability;
+ (BOOL)accessibilitySupportsAttentionAwareFeatures;
+ (BOOL)isCommunal;
+ (BOOL)isHorseman;
+ (BOOL)isIPad;
+ (BOOL)isPhone;
+ (BOOL)isVirtualDevice;
@end

@implementation SCDAUtilities

+ (BOOL)isCommunal
{
  if (isCommunal_onceToken != -1)
  {
    dispatch_once(&isCommunal_onceToken, &__block_literal_global_20);
  }

  return isCommunal_isCommunal;
}

+ (BOOL)isHorseman
{
  if (isHorseman_onceToken != -1)
  {
    dispatch_once(&isHorseman_onceToken, &__block_literal_global_15);
  }

  return isHorseman_isHorseman;
}

+ (BOOL)isVirtualDevice
{
  if (isVirtualDevice_onceToken != -1)
  {
    dispatch_once(&isVirtualDevice_onceToken, &__block_literal_global_22);
  }

  return isVirtualDevice_isVM;
}

uint64_t __32__SCDAUtilities_isVirtualDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  isVirtualDevice_isVM = result;
  return result;
}

BOOL __27__SCDAUtilities_isCommunal__block_invoke()
{
  result = +[SCDAUtilities isHorseman];
  isCommunal_isCommunal = result;
  return result;
}

uint64_t __27__SCDAUtilities_isHorseman__block_invoke()
{
  result = MGGetBoolAnswer();
  isHorseman_isHorseman = result;
  return result;
}

+ (BOOL)isIPad
{
  if (isIPad_onceToken != -1)
  {
    dispatch_once(&isIPad_onceToken, &__block_literal_global_13);
  }

  return isIPad_isIPad;
}

uint64_t __23__SCDAUtilities_isIPad__block_invoke()
{
  result = MGGetSInt32Answer();
  isIPad_isIPad = result == 3;
  return result;
}

+ (BOOL)isPhone
{
  if (isPhone_onceToken != -1)
  {
    dispatch_once(&isPhone_onceToken, &__block_literal_global_8);
  }

  return isPhone_isIPhone;
}

uint64_t __24__SCDAUtilities_isPhone__block_invoke()
{
  result = MGGetSInt32Answer();
  isPhone_isIPhone = result == 1;
  return result;
}

+ (BOOL)accessibilitySupportsAttentionAwareFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_ptr;
  v13 = get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_ptr;
  if (!get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_block_invoke;
    v15 = &unk_1E85D3638;
    v16 = &v10;
    __get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_block_invoke(buf);
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v3 = v2();
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = v4;
    v9 = [v7 numberWithBool:v3];
    *buf = 136315394;
    *&buf[4] = "+[SCDAUtilities accessibilitySupportsAttentionAwareFeatures]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_debug_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEBUG, "%s #scda _AXSAttentionAwarenessFeaturesEnabled %@", buf, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)_hasPearlCameraCapability
{
  if (_hasPearlCameraCapability_onceToken != -1)
  {
    dispatch_once(&_hasPearlCameraCapability_onceToken, &__block_literal_global_4);
  }

  return _hasPearlCameraCapability_hasPearlCameraCapability;
}

uint64_t __42__SCDAUtilities__hasPearlCameraCapability__block_invoke()
{
  result = MGGetBoolAnswer();
  _hasPearlCameraCapability_hasPearlCameraCapability = result;
  return result;
}

@end