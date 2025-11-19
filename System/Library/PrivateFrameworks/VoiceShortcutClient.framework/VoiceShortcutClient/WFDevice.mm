@interface WFDevice
+ (BOOL)deviceIsChinaSKU;
+ (BOOL)deviceIsGreenTea;
+ (WFDevice)currentDevice;
+ (id)systemShortcutsUserDefaults;
- (BOOL)hasCapability:(id)a3;
- (BOOL)hasPairedAndSetUpWatch;
- (BOOL)isChineseRegionDevice;
- (CGRect)screenBounds;
- (NSArray)capabilities;
- (NSString)hostname;
- (NSString)localStorageDisplayName;
- (NSString)localizedWiFiDisplayName;
- (NSString)marketingName;
- (NSString)model;
- (NSString)name;
- (NSString)symbolName;
- (NSString)systemBuildNumber;
- (NSString)systemName;
- (NSString)systemVersion;
- (WFDevice)init;
- (double)screenCornerRadius;
- (double)screenScale;
- (id)description;
- (int64_t)chipID;
- (int64_t)idiom;
@end

@implementation WFDevice

+ (WFDevice)currentDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WFDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentDevice_onceToken != -1)
  {
    dispatch_once(&currentDevice_onceToken, block);
  }

  v2 = currentDevice_currentDevice;

  return v2;
}

- (NSString)systemVersion
{
  if (systemVersion_onceTokenkMGQProductVersion != -1)
  {
    dispatch_once(&systemVersion_onceTokenkMGQProductVersion, &__block_literal_global_283);
  }

  if (systemVersion_cachedAnswer)
  {
    v3 = systemVersion_cachedAnswer;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

- (WFDevice)init
{
  v6.receiver = self;
  v6.super_class = WFDevice;
  v2 = [(WFDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_capabilitiesLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (int64_t)idiom
{
  if (idiom_onceTokenkMGQDeviceClassNumber != -1)
  {
    dispatch_once(&idiom_onceTokenkMGQDeviceClassNumber, &__block_literal_global_324);
  }

  v2 = [idiom_cachedAnswer integerValue];
  if ((v2 - 1) > 0xA)
  {
    return -1;
  }

  else
  {
    return qword_1B1F36980[v2 - 1];
  }
}

uint64_t __25__WFDevice_currentDevice__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  currentDevice_currentDevice = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __17__WFDevice_idiom__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = idiom_cachedAnswer;
  idiom_cachedAnswer = v1;
}

- (NSString)name
{
  if (name_onceTokenkMGQUserAssignedDeviceName != -1)
  {
    dispatch_once(&name_onceTokenkMGQUserAssignedDeviceName, &__block_literal_global_297);
  }

  if (name_cachedAnswer)
  {
    v3 = name_cachedAnswer;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

void __16__WFDevice_name__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = name_cachedAnswer;
  name_cachedAnswer = v1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFDevice;
  v4 = [(WFDevice *)&v11 description];
  v5 = [(WFDevice *)self marketingName];
  v6 = [(WFDevice *)self systemName];
  v7 = [(WFDevice *)self systemVersion];
  v8 = [(WFDevice *)self systemBuildNumber];
  v9 = [v3 stringWithFormat:@"<%@: %@ (%@ %@ %@)>", v4, v5, v6, v7, v8];

  return v9;
}

- (NSString)symbolName
{
  v3 = [(WFDevice *)self idiom];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return @"applewatch";
    }

    if (v3 == 4)
    {
      return @"ipodtouch";
    }

    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v8 = [(WFDevice *)self hasCapability:@"HomeButton"];
    v9 = @"ipad.gen2";
    v10 = @"ipad.gen1";
LABEL_16:
    if (v8)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  if (v3 != 2)
  {
LABEL_11:
    if ([(WFDevice *)self hasCapability:@"HomeButton"])
    {
      return @"iphone.gen1";
    }

    v8 = [(WFDevice *)self hasSystemAperture];
    v9 = @"iphone.gen2";
    v10 = @"iphone.gen3";
    goto LABEL_16;
  }

  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v4 = malloc_type_malloc(size, 0x1A4FECCuLL);
  sysctlbyname("hw.model", v4, &size, 0, 0);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v5 initWithBytesNoCopy:v4 length:size - 1 encoding:4 freeWhenDone:1];
  if ([v6 containsString:@"MacBook"])
  {
    v7 = @"macbook";
  }

  else
  {
    v7 = @"desktopcomputer";
  }

  return v7;
}

- (NSString)localStorageDisplayName
{
  v2 = [(WFDevice *)self idiom];
  if (v2 > 4)
  {
    v3 = @"On My Device";
  }

  else
  {
    v3 = off_1E7B02CF8[v2];
  }

  v4 = WFLocalizedString(v3);

  return v4;
}

- (BOOL)hasPairedAndSetUpWatch
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getNRPairedDeviceRegistryClass_softClass;
  v12 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v8[3] = &unk_1E7B02C60;
    v8[4] = &v9;
    __getNRPairedDeviceRegistryClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 sharedInstance];
  v5 = [v4 getSetupCompletedDevices];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)isChineseRegionDevice
{
  v2 = +[WFDevice systemShortcutsUserDefaults];
  if ([v2 BOOLForKey:@"WFGreenTeaOverridingKey"])
  {
    if (VCIsInternalBuild_onceToken != -1)
    {
      dispatch_once(&VCIsInternalBuild_onceToken, &__block_literal_global_18237);
    }

    v3 = VCIsInternalBuild_isInternal;
  }

  else
  {
    v3 = 0;
  }

  if (+[WFDevice deviceIsGreenTea])
  {
    v4 = 1;
  }

  else
  {
    v4 = +[WFDevice deviceIsChinaSKU]| v3;
  }

  return v4 & 1;
}

- (int64_t)chipID
{
  if (chipID_onceTokenkMGQChipID != -1)
  {
    dispatch_once(&chipID_onceTokenkMGQChipID, &__block_literal_global_417);
  }

  v3 = chipID_cachedAnswer;

  return [v3 longLongValue];
}

void __18__WFDevice_chipID__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = chipID_cachedAnswer;
  chipID_cachedAnswer = v1;
}

- (NSString)hostname
{
  v6 = *MEMORY[0x1E69E9840];
  if (gethostname(v5, 0xFFuLL))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSString)marketingName
{
  if (marketingName_onceTokenkMGQMarketingNameString != -1)
  {
    dispatch_once(&marketingName_onceTokenkMGQMarketingNameString, &__block_literal_global_412);
  }

  v3 = marketingName_cachedAnswer;

  return v3;
}

void __25__WFDevice_marketingName__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = marketingName_cachedAnswer;
  marketingName_cachedAnswer = v1;
}

- (NSString)localizedWiFiDisplayName
{
  if ([(WFDevice *)self hasCapability:@"WAPI"])
  {
    v2 = @"WLAN";
  }

  else
  {
    v2 = @"Wi-Fi";
  }

  v3 = WFLocalizedString(v2);

  return v3;
}

- (BOOL)hasCapability:(id)a3
{
  v4 = a3;
  v5 = [(WFDevice *)self capabilities];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (NSArray)capabilities
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  if (!self->_capabilities)
  {
    v3 = objc_opt_new();
    if (capabilities_onceTokenkMGQVibratorCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQVibratorCapability, &__block_literal_global_330);
    }

    if (capabilities_cachedAnswer == 1)
    {
      [v3 addObject:@"Vibration"];
    }

    if (capabilities_onceTokenkMGQSupportsForceTouch != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQSupportsForceTouch, &__block_literal_global_336);
    }

    if (capabilities_cachedAnswer_334 == 1)
    {
      [v3 addObject:@"ForceTouch"];
    }

    if (capabilities_onceTokenkMGQDeviceSupportsHaptics != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQDeviceSupportsHaptics, &__block_literal_global_342);
    }

    if (capabilities_cachedAnswer_340 == 1)
    {
      [v3 addObject:@"Haptic"];
    }

    if (MGGetBoolAnswer())
    {
      [v3 addObject:@"Baseband"];
    }

    if (capabilities_onceTokenkMGQCellularDataCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQCellularDataCapability, &__block_literal_global_351);
    }

    if (capabilities_cachedAnswer_349 == 1)
    {
      [v3 addObject:@"CellularData"];
    }

    if (capabilities_onceTokenkMGQCellularTelephonyCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQCellularTelephonyCapability, &__block_literal_global_357);
    }

    if (capabilities_cachedAnswer_355 == 1)
    {
      [v3 addObject:@"CellularTelephony"];
    }

    if ([(WFDevice *)self idiomSupportsPosters:[(WFDevice *)self idiom]])
    {
      [v3 addObject:@"Posters"];
    }

    if (capabilities_onceTokenkMGQDeviceSupportsAlwaysOnTime != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQDeviceSupportsAlwaysOnTime, &__block_literal_global_363);
    }

    if (capabilities_cachedAnswer_361 == 1)
    {
      [v3 addObject:@"AlwaysOnDisplay"];
    }

    if (capabilities_onceTokenkMGQRingerSwitchCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQRingerSwitchCapability, &__block_literal_global_369);
    }

    if (capabilities_cachedAnswer_367 == 1)
    {
      [v3 addObject:@"HardwareRingerSwitch"];
    }

    if (capabilities_onceTokenkMGQWAPICapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQWAPICapability, &__block_literal_global_375);
    }

    if (capabilities_cachedAnswer_373 == 1)
    {
      [v3 addObject:@"WAPI"];
    }

    if (capabilities_onceTokenkMGQRingerButtonCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQRingerButtonCapability, &__block_literal_global_381);
    }

    if (capabilities_cachedAnswer_379 == 1)
    {
      [v3 addObject:@"ActionButton"];
    }

    if (capabilities_onceTokenkMGQHomeButtonType != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQHomeButtonType, &__block_literal_global_386);
    }

    if (capabilities_cachedHasHomeButton == 1)
    {
      [v3 addObject:@"HomeButton"];
    }

    if (capabilities_onceTokenkMGQDeviceSupportsApplePencil != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQDeviceSupportsApplePencil, &__block_literal_global_392);
    }

    if (capabilities_cachedAnswer_390 == 1)
    {
      [v3 addObject:@"ApplePencil"];
    }

    if (capabilities_onceTokenkMGQPersonalHotspotCapability != -1)
    {
      dispatch_once(&capabilities_onceTokenkMGQPersonalHotspotCapability, &__block_literal_global_398);
    }

    v4 = capabilities_cachedAnswer_396;
    if (VCIsInternalBuild_onceToken != -1)
    {
      dispatch_once(&VCIsInternalBuild_onceToken, &__block_literal_global_18237);
    }

    if (VCIsInternalBuild_isInternal == 1)
    {
      v5 = MGGetBoolAnswer();
      if ((v4 & 1) == 0)
      {
        if (v5)
        {
          goto LABEL_61;
        }
      }
    }

    if (v4)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v6 = getMCProfileConnectionClass_softClass;
      v22 = getMCProfileConnectionClass_softClass;
      if (!getMCProfileConnectionClass_softClass)
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __getMCProfileConnectionClass_block_invoke;
        v17 = &unk_1E7B02C60;
        v18 = &v19;
        __getMCProfileConnectionClass_block_invoke(&v14);
        v6 = v20[3];
      }

      v7 = v6;
      _Block_object_dispose(&v19, 8);
      v8 = [v6 sharedConnection];
      v9 = [v8 isPersonalHotspotModificationAllowed];

      if (v9)
      {
LABEL_61:
        [v3 addObject:@"PersonalHotspot"];
      }
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = getVKCRemoveBackgroundRequestHandlerClass_softClass_14749;
    v22 = getVKCRemoveBackgroundRequestHandlerClass_softClass_14749;
    if (!getVKCRemoveBackgroundRequestHandlerClass_softClass_14749)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __getVKCRemoveBackgroundRequestHandlerClass_block_invoke_14750;
      v17 = &unk_1E7B02C60;
      v18 = &v19;
      __getVKCRemoveBackgroundRequestHandlerClass_block_invoke_14750(&v14);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    if ([v10 isSupported])
    {
      [v3 addObject:@"Scarlett"];
    }

    if ([(WFDevice *)self idiom]== 1)
    {
      [v3 addObject:@"StageManager"];
    }

    if ([getCBClientClass() supportsAdaptation])
    {
      [v3 addObject:@"TrueTone"];
    }

    if ([getCBClientClass() supportsBlueLightReduction])
    {
      [v3 addObject:@"NightShift"];
    }

    v14 = 0;
    if (!os_eligibility_get_domain_answer() && v14 == 4)
    {
      [v3 addObject:@"GreyMatter"];
    }

    objc_storeStrong(&self->_capabilities, v3);
  }

  os_unfair_lock_unlock(&self->_capabilitiesLock);
  capabilities = self->_capabilities;

  return capabilities;
}

void __24__WFDevice_capabilities__block_invoke_12()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_396 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_11()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_390 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t __24__WFDevice_capabilities__block_invoke_10()
{
  result = MGGetSInt32Answer();
  capabilities_cachedHasHomeButton = result != 2;
  return result;
}

void __24__WFDevice_capabilities__block_invoke_9()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_379 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_8()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_373 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_7()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_367 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_6()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_361 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_5()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_355 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_4()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_349 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_3()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_340 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke_2()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer_334 = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

void __24__WFDevice_capabilities__block_invoke()
{
  v0 = MGCopyAnswer();
  capabilities_cachedAnswer = v0 == *MEMORY[0x1E695E4D0];
  if (v0)
  {

    CFRelease(v0);
  }
}

- (NSString)systemName
{
  if (systemName_onceTokenkMGQMarketingProductName != -1)
  {
    dispatch_once(&systemName_onceTokenkMGQMarketingProductName, &__block_literal_global_313);
  }

  v2 = systemName_cachedAnswer;
  v3 = v2;
  if (!v2)
  {
    if (systemName_onceTokenkMGQProductName != -1)
    {
      dispatch_once(&systemName_onceTokenkMGQProductName, &__block_literal_global_319);
    }

    v4 = systemName_cachedAnswer_317;
    v3 = v4;
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = @"Unknown";
    }
  }

  v5 = v2;

  return v2;
}

void __22__WFDevice_systemName__block_invoke_2()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = systemName_cachedAnswer_317;
  systemName_cachedAnswer_317 = v1;
}

void __22__WFDevice_systemName__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = systemName_cachedAnswer;
  systemName_cachedAnswer = v1;
}

- (NSString)model
{
  if (model_onceTokenkMGQDeviceName != -1)
  {
    dispatch_once(&model_onceTokenkMGQDeviceName, &__block_literal_global_302);
  }

  v2 = model_cachedAnswer;
  v3 = v2;
  if (v2)
  {
    if ([(__CFString *)v2 isEqualToString:@"iPod"])
    {
      v4 = @"iPod touch";
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

void __17__WFDevice_model__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = model_cachedAnswer;
  model_cachedAnswer = v1;
}

- (NSString)systemBuildNumber
{
  if (systemBuildNumber_onceTokenkMGQBuildVersion != -1)
  {
    dispatch_once(&systemBuildNumber_onceTokenkMGQBuildVersion, &__block_literal_global_292);
  }

  if (systemBuildNumber_cachedAnswer)
  {
    v3 = systemBuildNumber_cachedAnswer;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

void __29__WFDevice_systemBuildNumber__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = systemBuildNumber_cachedAnswer;
  systemBuildNumber_cachedAnswer = v1;
}

void __25__WFDevice_systemVersion__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = systemVersion_cachedAnswer;
  systemVersion_cachedAnswer = v1;
}

- (double)screenCornerRadius
{
  if (screenCornerRadius_onceTokenkMGQDeviceCornerRadius != -1)
  {
    dispatch_once(&screenCornerRadius_onceTokenkMGQDeviceCornerRadius, &__block_literal_global_278);
  }

  v3 = screenCornerRadius_cachedAnswer;

  [v3 doubleValue];
  return result;
}

void __30__WFDevice_screenCornerRadius__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = screenCornerRadius_cachedAnswer;
  screenCornerRadius_cachedAnswer = v1;
}

- (double)screenScale
{
  if (screenScale_onceTokenkMGQMainScreenScale != -1)
  {
    dispatch_once(&screenScale_onceTokenkMGQMainScreenScale, &__block_literal_global_273);
  }

  [screenScale_cachedAnswer doubleValue];
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

void __23__WFDevice_screenScale__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = screenScale_cachedAnswer;
  screenScale_cachedAnswer = v1;
}

- (CGRect)screenBounds
{
  if (screenBounds_onceTokenkMGQMainScreenWidth != -1)
  {
    dispatch_once(&screenBounds_onceTokenkMGQMainScreenWidth, &__block_literal_global_14795);
  }

  v3 = screenBounds_cachedAnswer;
  if (screenBounds_onceTokenkMGQMainScreenHeight != -1)
  {
    dispatch_once(&screenBounds_onceTokenkMGQMainScreenHeight, &__block_literal_global_268);
  }

  v4 = screenBounds_cachedAnswer_266;
  [(WFDevice *)self screenScale];
  if (v5 == 0.0)
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = v5;
    [v3 doubleValue];
    v8 = v11 / v10;
    [v4 doubleValue];
    v6 = 0.0;
    v7 = 0.0;
    v9 = v12 / v10;
  }

  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

void __24__WFDevice_screenBounds__block_invoke_2()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = screenBounds_cachedAnswer_266;
  screenBounds_cachedAnswer_266 = v1;
}

void __24__WFDevice_screenBounds__block_invoke()
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;

  v2 = screenBounds_cachedAnswer;
  screenBounds_cachedAnswer = v1;
}

+ (id)systemShortcutsUserDefaults
{
  if (systemShortcutsUserDefaults_onceToken != -1)
  {
    dispatch_once(&systemShortcutsUserDefaults_onceToken, &__block_literal_global_496);
  }

  v3 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;

  return v3;
}

uint64_t __39__WFDevice_systemShortcutsUserDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.shortcuts"];
  v1 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;
  systemShortcutsUserDefaults_systemShortcutsUserDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)deviceIsChinaSKU
{
  if (deviceIsChinaSKU_onceToken != -1)
  {
    dispatch_once(&deviceIsChinaSKU_onceToken, &__block_literal_global_488);
  }

  return deviceIsChinaSKU_deviceIsChinaSKU;
}

void __28__WFDevice_deviceIsChinaSKU__block_invoke()
{
  v0 = MGCopyAnswer();
  deviceIsChinaSKU_deviceIsChinaSKU = [v0 caseInsensitiveCompare:@"CH"] == 0;
}

+ (BOOL)deviceIsGreenTea
{
  if (deviceIsGreenTea_onceToken != -1)
  {
    dispatch_once(&deviceIsGreenTea_onceToken, &__block_literal_global_483);
  }

  return deviceIsGreenTea_deviceIsGreenTea;
}

uint64_t __28__WFDevice_deviceIsGreenTea__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceIsGreenTea_deviceIsGreenTea = result;
  return result;
}

@end