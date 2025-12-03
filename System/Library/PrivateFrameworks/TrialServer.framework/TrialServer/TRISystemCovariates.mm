@interface TRISystemCovariates
- (TRISystemCovariates)initWithPaths:(id)paths;
- (id)_sharedCovariatesFromConfiguration:(id)configuration;
- (id)_userSpecificCovariatesFromConfiguration:(id)configuration;
- (id)dictionary;
- (id)objectForKey:(id)key;
- (id)tri_checkAIUseCaseEnabled:(id)enabled;
- (id)tri_contextValueWithName:(id)name;
@end

@implementation TRISystemCovariates

- (TRISystemCovariates)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRISystemCovariates;
  v5 = [(TRISystemCovariates *)&v9 init];
  if (v5)
  {
    v6 = [[TRISystemConfiguration alloc] initWithPaths:pathsCopy];
    sysConfig = v5->_sysConfig;
    v5->_sysConfig = v6;
  }

  return v5;
}

- (id)tri_checkAIUseCaseEnabled:(id)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v4 = enabledCopy;
  if (enabledCopy && ![enabledCopy isEqualToString:&stru_287FA0430])
  {
    v5 = objc_alloc_init(TRIXPCCovariateFetcher);
    v11 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v8 = [(TRIXPCCovariateFetcher *)v5 appleIntelligenceStateWithUseCaseIdentifiers:v7];

    if (v8)
    {
      v6 = &unk_287FC4C30;
    }

    else
    {
      v6 = &unk_287FC4C48;
    }
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_error_impl(&dword_26F567000, &v5->super, OS_LOG_TYPE_ERROR, "Invalid useCaseId: %@", buf, 0xCu);
    }

    v6 = &unk_287FC4C30;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)tri_contextValueWithName:(id)name
{
  nameCopy = name;
  dictionary = [(TRISystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The system covariates do not contain the key %@", nameCopy];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:nameCopy userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)_sharedCovariatesFromConfiguration:(id)configuration
{
  v33[19] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sysConfig = self->_sysConfig;
  if (sysConfig)
  {
    [(TRISystemConfiguration *)sysConfig marketingOSVersion];
  }

  v32[0] = @"OS";
  osType = [configurationCopy osType];
  v33[0] = osType;
  v32[1] = @"OSBuild";
  osBuild = [configurationCopy osBuild];
  v33[1] = osBuild;
  v32[2] = @"DeviceModelCode";
  deviceModelCode = [configurationCopy deviceModelCode];
  v33[2] = deviceModelCode;
  v32[3] = @"DeviceClass";
  deviceClass = [configurationCopy deviceClass];
  v33[3] = deviceClass;
  v32[4] = @"IsInternalBuild";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isInternalBuild")}];
  v33[4] = v27;
  v32[5] = @"IsBetaBuild";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isBetaBuild")}];
  v33[5] = v26;
  v32[6] = @"MarketingOSMajor";
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v33[6] = v25;
  v32[7] = @"MarketingOSMinor";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v33[7] = v24;
  v32[8] = @"MarketingOSPatch";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v33[8] = v23;
  v32[9] = @"TrialVersionTag";
  trialVersionTag = [configurationCopy trialVersionTag];
  v33[9] = trialVersionTag;
  v32[10] = @"TrialVersionMajor";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "trialVersionMajor")}];
  v33[10] = v21;
  v32[11] = @"TrialVersionMinor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "trialVersionMinor")}];
  v33[11] = v6;
  v32[12] = @"DiagnosticsUsageEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isDiagnosticsAndUsageEnabled")}];
  v33[12] = v7;
  v32[13] = @"HasANE";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "hasAne")}];
  v33[13] = v8;
  v32[14] = @"ANEVersion";
  aneVersion = [configurationCopy aneVersion];
  v10 = aneVersion;
  if (aneVersion)
  {
    v11 = aneVersion;
  }

  else
  {
    v11 = &stru_287FA0430;
  }

  v33[14] = v11;
  v32[15] = @"IsAutomatedTestDevice";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isAutomatedTestDevice")}];
  v33[15] = v12;
  v32[16] = @"DeviceSystemId";
  deviceSystemId = [configurationCopy deviceSystemId];
  v14 = deviceSystemId;
  if (deviceSystemId)
  {
    v15 = deviceSystemId;
  }

  else
  {
    v15 = &stru_287FA0430;
  }

  v33[16] = v15;
  v32[17] = @"DeviceChipId";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configurationCopy, "deviceChipId")}];
  v33[17] = v16;
  v32[18] = @"DeviceHardwareModel";
  deviceHardwareModel = [configurationCopy deviceHardwareModel];
  v33[18] = deviceHardwareModel;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:19];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_userSpecificCovariatesFromConfiguration:(id)configuration
{
  v34[15] = *MEMORY[0x277D85DE8];
  v33[0] = @"DeviceId";
  configurationCopy = configuration;
  deviceId = [configurationCopy deviceId];
  v32 = deviceId;
  if (deviceId)
  {
    v6 = deviceId;
  }

  else
  {
    v6 = &stru_287FA0430;
  }

  v34[0] = v6;
  v33[1] = @"DeviceLocale";
  userSettingsLanguageCode = [configurationCopy userSettingsLanguageCode];
  v34[1] = userSettingsLanguageCode;
  v33[2] = @"IsBetaUser";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isBetaUserWithIsStale:", 0)}];
  v34[2] = v30;
  v33[3] = @"UserSettingsLanguageCode";
  userSettingsLanguageCode2 = [configurationCopy userSettingsLanguageCode];
  v34[3] = userSettingsLanguageCode2;
  v33[4] = @"UserSettingsRegionCode";
  userSettingsRegionCode = [configurationCopy userSettingsRegionCode];
  v8 = userSettingsRegionCode;
  if (userSettingsRegionCode)
  {
    v9 = userSettingsRegionCode;
  }

  else
  {
    v9 = &stru_287FA0430;
  }

  v34[4] = v9;
  v33[5] = @"UserKeyboardEnabledInputModeIdentifiers";
  enabledInputModeIdentifiers = [configurationCopy enabledInputModeIdentifiers];
  v34[5] = enabledInputModeIdentifiers;
  v33[6] = @"UserSettingsSiriLocale";
  userSettingsSiriLocale = [configurationCopy userSettingsSiriLocale];
  v11 = userSettingsSiriLocale;
  if (userSettingsSiriLocale)
  {
    v12 = userSettingsSiriLocale;
  }

  else
  {
    v12 = &stru_287FA0430;
  }

  v34[6] = v12;
  v33[7] = @"BCP47DeviceLocale";
  userSettingsBCP47DeviceLocale = [configurationCopy userSettingsBCP47DeviceLocale];
  v34[7] = userSettingsBCP47DeviceLocale;
  v33[8] = @"CarrierBundleIdentifier";
  carrierBundleIdentifier = [configurationCopy carrierBundleIdentifier];
  v34[8] = carrierBundleIdentifier;
  v33[9] = @"CarrierCountryIsoCode";
  carrierCountryIsoCode = [configurationCopy carrierCountryIsoCode];
  v34[9] = carrierCountryIsoCode;
  v33[10] = @"iCloudId";
  iCloudId = [configurationCopy iCloudId];
  v16 = iCloudId;
  if (iCloudId)
  {
    v17 = iCloudId;
  }

  else
  {
    v17 = &stru_287FA0430;
  }

  v34[10] = v17;
  v33[11] = @"AppleIntelligenceState";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TRISystemConfiguration appleIntelligenceState](self->_sysConfig, "appleIntelligenceState")}];
  v34[11] = v18;
  v33[12] = @"MapsBucketId";
  mapsBucketId = [configurationCopy mapsBucketId];
  v20 = mapsBucketId;
  v21 = &unk_287FC4C60;
  if (mapsBucketId)
  {
    v21 = mapsBucketId;
  }

  v34[12] = v21;
  v33[13] = @"ActiveDictationLocales";
  activeDictationLocales = [configurationCopy activeDictationLocales];
  v34[13] = activeDictationLocales;
  v33[14] = @"MapsDeviceCountryCode";
  mapsDeviceCountryCode = [configurationCopy mapsDeviceCountryCode];

  v34[14] = mapsDeviceCountryCode;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:15];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)dictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionary = selfCopy->_dictionary;
  if (!dictionary)
  {
    v4 = +[TRISystemConfiguration sharedInstance];
    isInternalBuild = [v4 isInternalBuild];

    if (isInternalBuild)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v7 = [standardUserDefaults objectForKey:@"systemCovariatesOverride"];
      v8 = selfCopy->_dictionary;
      selfCopy->_dictionary = v7;

      v9 = selfCopy->_dictionary;
      if (v9)
      {
        v10 = v9;

        goto LABEL_8;
      }
    }

    v11 = [(TRISystemCovariates *)selfCopy _sharedCovariatesFromConfiguration:selfCopy->_sysConfig];
    v12 = [v11 mutableCopy];

    v13 = [(TRISystemCovariates *)selfCopy _userSpecificCovariatesFromConfiguration:selfCopy->_sysConfig];
    [v12 addEntriesFromDictionary:v13];
    v14 = [v12 copy];
    v15 = selfCopy->_dictionary;
    selfCopy->_dictionary = v14;

    dictionary = selfCopy->_dictionary;
  }

  v10 = dictionary;
LABEL_8:
  objc_sync_exit(selfCopy);

  return v10;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(TRISystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

@end