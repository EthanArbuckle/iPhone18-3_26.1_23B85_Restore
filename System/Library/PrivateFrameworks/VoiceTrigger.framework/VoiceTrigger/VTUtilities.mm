@interface VTUtilities
+ (BOOL)VTIsHorseman;
+ (BOOL)isExclaveHardware;
+ (BOOL)isInternalInstall;
+ (BOOL)isNonUI;
+ (BOOL)isTorpedo;
+ (BOOL)supportBargeIn;
+ (BOOL)supportPremiumAssets;
+ (BOOL)supportRemoteDarwinVoiceTrigger;
+ (double)VTMachAbsoluteTimeGetTimeInterval:(unint64_t)a3;
+ (double)systemUpTime;
+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)a3;
+ (id)deviceProductType;
+ (id)deviceProductVersion;
+ (id)deviceSoftwareVersion;
+ (id)getAssetHashFromConfigPath:(id)a3;
+ (id)sanitizeEventInfoForLogging:(id)a3;
+ (unint64_t)deviceCategoryForDeviceProductType:(id)a3;
@end

@implementation VTUtilities

+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 2;
  v12 = 1191181824;
  __C = 1.0;
  __B = -1.0;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4 & 0xFFFFFFFFFFFFFFFCLL];
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v5];
  v8 = [v3 bytes];

  vDSP_vclip(v8, 1, &__B, &__C, [v6 bytes], 1, v5);
  MEMORY[0x223DF29D0]([v6 bytes], 1, &v12, objc_msgSend(v6, "bytes"), 1, v5);
  vDSP_vfix16([v6 bytes], 1, objc_msgSend(v7, "bytes"), 1, v5);

  return v7;
}

+ (BOOL)isTorpedo
{
  if (isTorpedo_onceToken != -1)
  {
    dispatch_once(&isTorpedo_onceToken, &__block_literal_global_170);
  }

  return isTorpedo_isTorpedo;
}

uint64_t __24__VTUtilities_isTorpedo__block_invoke()
{
  result = MGGetBoolAnswer();
  isTorpedo_isTorpedo = result;
  return result;
}

+ (double)VTMachAbsoluteTimeGetTimeInterval:(unint64_t)a3
{
  if (VTMachAbsoluteTimeGetTimeInterval__onceToken != -1)
  {
    v4 = a3;
    dispatch_once(&VTMachAbsoluteTimeGetTimeInterval__onceToken, &__block_literal_global_168);
    a3 = v4;
  }

  return *&VTMachAbsoluteTimeGetTimeInterval__rate * a3 / 1000000000.0;
}

double __49__VTUtilities_VTMachAbsoluteTimeGetTimeInterval___block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    VTMachAbsoluteTimeGetTimeInterval__rate = *&result;
  }

  return result;
}

+ (id)getAssetHashFromConfigPath:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"com_apple_MobileAsset_VoiceTriggerAssets/"];
  v6 = v5;
  v7 = [v3 rangeOfString:@".asset"];
  v9 = @"nohash";
  if (v6 && v8)
  {
    v9 = [v3 substringWithRange:{v4 + v6, v7 - (v4 + v6)}];
  }

  return v9;
}

+ (unint64_t)deviceCategoryForDeviceProductType:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (deviceCategoryForDeviceProductType__onceToken != -1)
  {
    dispatch_once(&deviceCategoryForDeviceProductType__onceToken, &__block_literal_global_61);
  }

  if ([deviceCategoryForDeviceProductType__nonAopDeviceSet containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    if ([deviceCategoryForDeviceProductType__macOsDeviceSet containsObject:v3])
    {
      goto LABEL_6;
    }

    if ([v3 containsString:@"iPad"] & 1) != 0 || (objc_msgSend(v3, "containsString:", @"iPhone"))
    {
      v4 = 2;
      goto LABEL_10;
    }

    if ([v3 containsString:@"Mac"])
    {
LABEL_6:
      v4 = 3;
    }

    else
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Unknown Device category for deviceProduceType: %@", &v7, 0xCu);
      }

      v4 = 0;
    }
  }

LABEL_10:

  return v4;
}

uint64_t __50__VTUtilities_deviceCategoryForDeviceProductType___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 7", @"iPad6, 8", @"iPad6, 11", @"iPad6, 12", @"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", 0}];
  v1 = deviceCategoryForDeviceProductType__nonAopDeviceSet;
  deviceCategoryForDeviceProductType__nonAopDeviceSet = v0;

  deviceCategoryForDeviceProductType__macOsDeviceSet = [MEMORY[0x277CBEB98] setWithObjects:{@"macOS", @"Mac", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)deviceSoftwareVersion
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v2 = @"???";
  }

  return v2;
}

+ (id)deviceProductType
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v2 = @"???";
  }

  return v2;
}

+ (id)deviceProductVersion
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v2 = @"???";
  }

  return v2;
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    dispatch_once(&isInternalInstall_onceToken, &__block_literal_global_44);
  }

  return isInternalInstall_isInternal;
}

void __32__VTUtilities_isInternalInstall__block_invoke()
{
  v0 = MGCopyAnswer();
  isInternalInstall_isInternal = [v0 BOOLValue];
}

+ (BOOL)supportRemoteDarwinVoiceTrigger
{
  if (supportRemoteDarwinVoiceTrigger_onceToken != -1)
  {
    dispatch_once(&supportRemoteDarwinVoiceTrigger_onceToken, &__block_literal_global_39);
  }

  return supportRemoteDarwinVoiceTrigger_supportDarwinVT;
}

uint64_t __46__VTUtilities_supportRemoteDarwinVoiceTrigger__block_invoke()
{
  result = MGGetBoolAnswer();
  supportRemoteDarwinVoiceTrigger_supportDarwinVT = result;
  return result;
}

+ (BOOL)supportPremiumAssets
{
  if (+[VTUtilities isAlwaysOn])
  {
    return 1;
  }

  return +[VTUtilities VTIsHorseman];
}

+ (BOOL)supportBargeIn
{
  if (supportBargeIn_onceToken != -1)
  {
    dispatch_once(&supportBargeIn_onceToken, &__block_literal_global_33);
  }

  return supportBargeIn_bargeInSupported;
}

uint64_t __29__VTUtilities_supportBargeIn__block_invoke()
{
  result = MGGetBoolAnswer();
  supportBargeIn_bargeInSupported = result;
  return result;
}

+ (BOOL)VTIsHorseman
{
  if (VTIsHorseman_onceToken != -1)
  {
    dispatch_once(&VTIsHorseman_onceToken, &__block_literal_global_22);
  }

  return VTIsHorseman_isHorseman;
}

uint64_t __27__VTUtilities_VTIsHorseman__block_invoke()
{
  result = MGGetBoolAnswer();
  VTIsHorseman_isHorseman = result;
  return result;
}

+ (BOOL)isExclaveHardware
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v2 = getCSUtilsClass_softClass;
  v8 = getCSUtilsClass_softClass;
  if (!getCSUtilsClass_softClass)
  {
    if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __CoreSpeechFoundationLibraryCore_block_invoke;
      v12 = &__block_descriptor_40_e5_v8__0l;
      v13 = 0;
      v14 = xmmword_2784EC350;
      v15 = 0;
      CoreSpeechFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    v6[3] = objc_getClass("CSUtils");
    getCSUtilsClass_softClass = v6[3];
    v2 = v6[3];
  }

  v3 = v2;
  _Block_object_dispose(&v5, 8);
  return [v2 isExclaveHardware];
}

+ (BOOL)isNonUI
{
  if (isNonUI_onceToken != -1)
  {
    dispatch_once(&isNonUI_onceToken, &__block_literal_global);
  }

  return isNonUI_isNonUI;
}

uint64_t __22__VTUtilities_isNonUI__block_invoke()
{
  result = MGCopyAnswer();
  if (result)
  {
    result = CFEqual(result, @"NonUI");
    isNonUI_isNonUI = result != 0;
  }

  return result;
}

+ (double)systemUpTime
{
  v10 = *MEMORY[0x277D85DE8];
  *v9 = 0x1500000001;
  v7 = 0;
  v8 = 0;
  v6 = 16;
  v2 = sysctl(v9, 2u, &v7, &v6, 0, 0);
  result = -1.0;
  if (v2 != -1 && v7 != 0)
  {
    v5.tv_sec = 0;
    *&v5.tv_usec = 0;
    gettimeofday(&v5, 0);
    return (v5.tv_usec - v8) / 1000000.0 + (v5.tv_sec - v7);
  }

  return result;
}

+ (id)sanitizeEventInfoForLogging:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0xBFF0000000000000;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_283715428];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__VTUtilities_sanitizeEventInfoForLogging___block_invoke;
    v12[3] = &unk_2784EC330;
    v7 = v6;
    v13 = v7;
    v15 = v17;
    v8 = v5;
    v14 = v8;
    v16 = a1;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v8;

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __43__VTUtilities_sanitizeEventInfoForLogging___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v15] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    v8 = *(*(*(a1 + 48) + 8) + 24);
    if (v8 < 0.0)
    {
      [v6 doubleValue];
      *(*(*(a1 + 48) + 8) + 24) = v9 + -10.0;
      v8 = *(*(*(a1 + 48) + 8) + 24);
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCABB0];
    v12 = *(a1 + 56);
    [v7 doubleValue];
    [v12 _round:2 withPlaces:v13 - v8];
    v14 = [v11 numberWithDouble:?];
    [v10 setObject:v14 forKey:v15];
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKey:v15];
  }
}

@end