@interface TRISystemCovariates
- (TRISystemCovariates)initWithPaths:(id)a3;
- (id)_sharedCovariatesFromConfiguration:(id)a3;
- (id)_userSpecificCovariatesFromConfiguration:(id)a3;
- (id)dictionary;
- (id)objectForKey:(id)a3;
- (id)tri_checkAIUseCaseEnabled:(id)a3;
- (id)tri_contextValueWithName:(id)a3;
@end

@implementation TRISystemCovariates

- (TRISystemCovariates)initWithPaths:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRISystemCovariates;
  v5 = [(TRISystemCovariates *)&v9 init];
  if (v5)
  {
    v6 = [[TRISystemConfiguration alloc] initWithPaths:v4];
    sysConfig = v5->_sysConfig;
    v5->_sysConfig = v6;
  }

  return v5;
}

- (id)tri_checkAIUseCaseEnabled:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 isEqualToString:&stru_287FA0430])
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

- (id)tri_contextValueWithName:(id)a3
{
  v4 = a3;
  v5 = [(TRISystemCovariates *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The system covariates do not contain the key %@", v4];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)_sharedCovariatesFromConfiguration:(id)a3
{
  v33[19] = *MEMORY[0x277D85DE8];
  v4 = a3;
  sysConfig = self->_sysConfig;
  if (sysConfig)
  {
    [(TRISystemConfiguration *)sysConfig marketingOSVersion];
  }

  v32[0] = @"OS";
  v31 = [v4 osType];
  v33[0] = v31;
  v32[1] = @"OSBuild";
  v30 = [v4 osBuild];
  v33[1] = v30;
  v32[2] = @"DeviceModelCode";
  v29 = [v4 deviceModelCode];
  v33[2] = v29;
  v32[3] = @"DeviceClass";
  v28 = [v4 deviceClass];
  v33[3] = v28;
  v32[4] = @"IsInternalBuild";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isInternalBuild")}];
  v33[4] = v27;
  v32[5] = @"IsBetaBuild";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isBetaBuild")}];
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
  v22 = [v4 trialVersionTag];
  v33[9] = v22;
  v32[10] = @"TrialVersionMajor";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "trialVersionMajor")}];
  v33[10] = v21;
  v32[11] = @"TrialVersionMinor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "trialVersionMinor")}];
  v33[11] = v6;
  v32[12] = @"DiagnosticsUsageEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isDiagnosticsAndUsageEnabled")}];
  v33[12] = v7;
  v32[13] = @"HasANE";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "hasAne")}];
  v33[13] = v8;
  v32[14] = @"ANEVersion";
  v9 = [v4 aneVersion];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_287FA0430;
  }

  v33[14] = v11;
  v32[15] = @"IsAutomatedTestDevice";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isAutomatedTestDevice")}];
  v33[15] = v12;
  v32[16] = @"DeviceSystemId";
  v13 = [v4 deviceSystemId];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_287FA0430;
  }

  v33[16] = v15;
  v32[17] = @"DeviceChipId";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "deviceChipId")}];
  v33[17] = v16;
  v32[18] = @"DeviceHardwareModel";
  v17 = [v4 deviceHardwareModel];
  v33[18] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:19];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_userSpecificCovariatesFromConfiguration:(id)a3
{
  v34[15] = *MEMORY[0x277D85DE8];
  v33[0] = @"DeviceId";
  v4 = a3;
  v5 = [v4 deviceId];
  v32 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_287FA0430;
  }

  v34[0] = v6;
  v33[1] = @"DeviceLocale";
  v31 = [v4 userSettingsLanguageCode];
  v34[1] = v31;
  v33[2] = @"IsBetaUser";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isBetaUserWithIsStale:", 0)}];
  v34[2] = v30;
  v33[3] = @"UserSettingsLanguageCode";
  v29 = [v4 userSettingsLanguageCode];
  v34[3] = v29;
  v33[4] = @"UserSettingsRegionCode";
  v7 = [v4 userSettingsRegionCode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_287FA0430;
  }

  v34[4] = v9;
  v33[5] = @"UserKeyboardEnabledInputModeIdentifiers";
  v28 = [v4 enabledInputModeIdentifiers];
  v34[5] = v28;
  v33[6] = @"UserSettingsSiriLocale";
  v10 = [v4 userSettingsSiriLocale];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_287FA0430;
  }

  v34[6] = v12;
  v33[7] = @"BCP47DeviceLocale";
  v27 = [v4 userSettingsBCP47DeviceLocale];
  v34[7] = v27;
  v33[8] = @"CarrierBundleIdentifier";
  v13 = [v4 carrierBundleIdentifier];
  v34[8] = v13;
  v33[9] = @"CarrierCountryIsoCode";
  v14 = [v4 carrierCountryIsoCode];
  v34[9] = v14;
  v33[10] = @"iCloudId";
  v15 = [v4 iCloudId];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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
  v19 = [v4 mapsBucketId];
  v20 = v19;
  v21 = &unk_287FC4C60;
  if (v19)
  {
    v21 = v19;
  }

  v34[12] = v21;
  v33[13] = @"ActiveDictationLocales";
  v22 = [v4 activeDictationLocales];
  v34[13] = v22;
  v33[14] = @"MapsDeviceCountryCode";
  v23 = [v4 mapsDeviceCountryCode];

  v34[14] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:15];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)dictionary
{
  v2 = self;
  objc_sync_enter(v2);
  dictionary = v2->_dictionary;
  if (!dictionary)
  {
    v4 = +[TRISystemConfiguration sharedInstance];
    v5 = [v4 isInternalBuild];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v7 = [v6 objectForKey:@"systemCovariatesOverride"];
      v8 = v2->_dictionary;
      v2->_dictionary = v7;

      v9 = v2->_dictionary;
      if (v9)
      {
        v10 = v9;

        goto LABEL_8;
      }
    }

    v11 = [(TRISystemCovariates *)v2 _sharedCovariatesFromConfiguration:v2->_sysConfig];
    v12 = [v11 mutableCopy];

    v13 = [(TRISystemCovariates *)v2 _userSpecificCovariatesFromConfiguration:v2->_sysConfig];
    [v12 addEntriesFromDictionary:v13];
    v14 = [v12 copy];
    v15 = v2->_dictionary;
    v2->_dictionary = v14;

    dictionary = v2->_dictionary;
  }

  v10 = dictionary;
LABEL_8:
  objc_sync_exit(v2);

  return v10;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(TRISystemCovariates *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end