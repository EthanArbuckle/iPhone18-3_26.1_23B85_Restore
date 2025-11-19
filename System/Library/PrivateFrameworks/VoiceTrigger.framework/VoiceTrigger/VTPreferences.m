@interface VTPreferences
+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)a3;
+ (id)sharedPreferences;
- (BOOL)_isLocalVoiceTriggerAvailable;
- (BOOL)_isSATMarkedForMarker:(id)a3 languageCode:(id)a4;
- (BOOL)_storeModeEnabled;
- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)a3;
- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)a3 endpointId:(id)a4;
- (BOOL)canUseVoiceTriggerDuringPhoneCall;
- (BOOL)corespeechDaemonEnabled;
- (BOOL)everNotifyUserCompactTrigger;
- (BOOL)fileLoggingIsEnabled;
- (BOOL)gestureSubscriptionEnabled;
- (BOOL)hasExplicitlySetVoiceTriggerEnabled;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3;
- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)a3;
- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)a3 forPhraseDeviceType:(unint64_t)a4;
- (BOOL)isMphVTEnabled;
- (BOOL)isVoiceTriggerAvailable;
- (BOOL)onetimeRemoteAssetQueryRanSuccessfully;
- (BOOL)overwritingVoiceTriggerMLock;
- (BOOL)phraseSpotterEnabled;
- (BOOL)remoteDarwinWasEverConnected;
- (BOOL)secondPassAudioLoggingEnabled;
- (BOOL)shouldOverwriteVoiceTriggerMLock;
- (BOOL)useSiriActivationSPIForiOS;
- (BOOL)useSiriActivationSPIForwatchOS;
- (BOOL)voiceTriggerEnabledForEndpointId:(id)a3;
- (BOOL)voiceTriggerEnabledWhenChargerConnected;
- (BOOL)voiceTriggerEnabledWhenChargerDisconnected;
- (BOOL)voiceTriggerInCoreSpeech;
- (BOOL)voiceTriggerWasEverUsed;
- (VTPreferences)init;
- (id)_VTSATBasePath;
- (id)_VTSATCachePath;
- (id)_getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:(id)a3;
- (id)_getVTEnableLoggingMetadata;
- (id)_getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:(unint64_t)a3;
- (id)_getVoiceTriggerEnabledKeyWithDeviceType:(unint64_t)a3;
- (id)_languageCode;
- (id)_localeIdentifier;
- (id)_preferencesPhraseDeviceStringWithPhraseDeviceType:(unint64_t)a3;
- (id)audioInjectionFilePath;
- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)a3;
- (id)fileLoggingLevel;
- (id)getMD5HashForSATEnrollmentAudioForLanguageCode:(id)a3;
- (id)getPreferencesForEndpoint:(id)a3 fromPreferenceDomain:(id)a4 error:(id *)a5;
- (id)getSATEnrollmentPath;
- (id)localizedCompactTriggerPhraseForLanguageCode:(id)a3;
- (id)localizedTriggerPhrase;
- (id)localizedTriggerPhraseForLanguageCode:(id)a3;
- (id)setPreferences:(id)a3 forEndpoint:(id)a4 inPreferenceDomain:(id)a5;
- (id)setUserPreferredVoiceTriggerPhraseType:(unint64_t)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6;
- (unint64_t)_getCSDeviceTypeWithPhraseDeviceType:(unint64_t)a3;
- (unint64_t)canUseVoiceTriggerDuringPhoneCallWithState;
- (unint64_t)getUserPreferredVoiceTriggerPhraseTypeForDeviceType:(unint64_t)a3 endpointId:(id)a4 error:(id *)a5;
- (void)_logMetadataForVTEnabled:(BOOL)a3;
- (void)_setCanUseVoiceTriggerDuringPhoneCall:(BOOL)a3 sender:(id)a4;
- (void)_setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5;
- (void)_setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6;
- (void)discardAllSATEnrollment;
- (void)discardSATEnrollmentForLanguageCode:(id)a3;
- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)a3;
- (void)markSATEnrollmentSuccessForLanguageCode:(id)a3;
- (void)setEverNotifyUserCompactTrigger;
- (void)setFileLoggingIsEnabled:(BOOL)a3;
- (void)setFileLoggingLevel:(id)a3;
- (void)setOnetimeRemoteAssetQueryRanSuccessfully:(BOOL)a3;
- (void)setPhraseSpotterEnabled:(BOOL)a3 sender:(id)a4;
- (void)setSecondPassAudioLoggingEnabled:(BOOL)a3;
- (void)setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6;
- (void)setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 endpointId:(id)a5;
- (void)setVoiceTriggerEnabledWhenChargerConnected:(BOOL)a3;
- (void)setVoiceTriggerEnabledWhenChargerDisconnected:(BOOL)a3;
@end

@implementation VTPreferences

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, &__block_literal_global_3256);
  }

  v3 = sharedPreferences_sSharedPreferences;

  return v3;
}

uint64_t __34__VTPreferences_sharedPreferences__block_invoke()
{
  sharedPreferences_sSharedPreferences = objc_alloc_init(VTPreferences);

  return MEMORY[0x2821F96F8]();
}

- (VTPreferences)init
{
  v4.receiver = self;
  v4.super_class = VTPreferences;
  result = [(VTPreferences *)&v4 init];
  if (result)
  {
    if (VTLogInitIfNeeded_once != -1)
    {
      v3 = result;
      dispatch_once(&VTLogInitIfNeeded_once, &__block_literal_global_30);
      return v3;
    }
  }

  return result;
}

- (BOOL)_storeModeEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.demo-settings");
  v2 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)corespeechDaemonEnabled
{
  if (corespeechDaemonEnabled_onceToken != -1)
  {
    dispatch_once(&corespeechDaemonEnabled_onceToken, &__block_literal_global_392);
  }

  return corespeechDaemonEnabled_defaultValue;
}

- (BOOL)overwritingVoiceTriggerMLock
{
  if (overwritingVoiceTriggerMLock_onceToken != -1)
  {
    dispatch_once(&overwritingVoiceTriggerMLock_onceToken, &__block_literal_global_398);
  }

  return overwritingVoiceTriggerMLock_voiceTriggerMLockEnabled;
}

uint64_t __45__VTPreferences_overwritingVoiceTriggerMLock__block_invoke()
{
  result = +[VTUtilities isInternalInstall];
  if (result)
  {
    v1 = CFPreferencesCopyAppValue(@"Enable VoiceTrigger Mlock", @"com.apple.voicetrigger.notbackedup");
    if (v1)
    {
      v2 = v1;
      if (objc_opt_respondsToSelector())
      {
        overwritingVoiceTriggerMLock_voiceTriggerMLockEnabled = [v2 BOOLValue];
      }
    }

    return MEMORY[0x2821F9730]();
  }

  return result;
}

- (BOOL)shouldOverwriteVoiceTriggerMLock
{
  if (shouldOverwriteVoiceTriggerMLock_onceToken != -1)
  {
    dispatch_once(&shouldOverwriteVoiceTriggerMLock_onceToken, &__block_literal_global_396);
  }

  return shouldOverwriteVoiceTriggerMLock_shouldOverwrite;
}

void __49__VTPreferences_shouldOverwriteVoiceTriggerMLock__block_invoke()
{
  if (+[VTUtilities isInternalInstall])
  {
    v0 = CFPreferencesCopyAppValue(@"Enable VoiceTrigger Mlock", @"com.apple.voicetrigger.notbackedup");
    if (v0)
    {
      shouldOverwriteVoiceTriggerMLock_shouldOverwrite = 1;
    }
  }
}

- (void)setEverNotifyUserCompactTrigger
{
  CFPreferencesSetAppValue(@"EverNotifyCompactTrigger", MEMORY[0x277CBEC38], @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)everNotifyUserCompactTrigger
{
  v2 = CFPreferencesCopyAppValue(@"EverNotifyCompactTrigger", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMphVTEnabled
{
  if (isMphVTEnabled_onceToken != -1)
  {
    dispatch_once(&isMphVTEnabled_onceToken, &__block_literal_global_394);
  }

  return isMphVTEnabled_mphVTEnabled;
}

void __31__VTPreferences_isMphVTEnabled__block_invoke()
{
  if (+[VTUtilities isInternalInstall])
  {
    v0 = CFPreferencesCopyAppValue(@"MultiPhraseVTEnabled", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isMphVTEnabled_mphVTEnabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

void __40__VTPreferences_corespeechDaemonEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  corespeechDaemonEnabled_defaultValue = !+[VTUtilities VTIsHorseman];
  v0 = CFPreferencesCopyAppValue(@"CoreSpeech Daemon Enabled", @"com.apple.voicetrigger");
  v1 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v1;
    v4[0] = 67240192;
    v4[1] = [v0 BOOLValue];
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "value = %{public}d", v4, 8u);
  }

  if (v0)
  {
    v3 = [v0 BOOLValue];
  }

  else
  {
    v3 = corespeechDaemonEnabled_defaultValue;
  }

  corespeechDaemonEnabled_defaultValue = v3;
}

- (BOOL)useSiriActivationSPIForwatchOS
{
  if (useSiriActivationSPIForwatchOS_onceToken != -1)
  {
    dispatch_once(&useSiriActivationSPIForwatchOS_onceToken, &__block_literal_global_390);
  }

  return useSiriActivationSPIForwatchOS_ret;
}

void __47__VTPreferences_useSiriActivationSPIForwatchOS__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable SiriActivation watchOS", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    useSiriActivationSPIForwatchOS_ret = [v0 BOOLValue];
    v0 = v1;
  }
}

- (BOOL)useSiriActivationSPIForiOS
{
  if (useSiriActivationSPIForiOS_onceToken != -1)
  {
    dispatch_once(&useSiriActivationSPIForiOS_onceToken, &__block_literal_global_388);
  }

  return useSiriActivationSPIForiOS_ret;
}

void __43__VTPreferences_useSiriActivationSPIForiOS__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable SiriActivation iOS", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    useSiriActivationSPIForiOS_ret = [v0 BOOLValue];
    v0 = v1;
  }
}

- (id)audioInjectionFilePath
{
  v13 = *MEMORY[0x277D85DE8];
  if (!+[VTUtilities isInternalInstall])
  {
    goto LABEL_13;
  }

  v2 = CFPreferencesCopyAppValue(@"VoiceTrigger Audio Injection", @"com.apple.voicetrigger");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "kVTAudioInjectionKey is not array type", buf, 2u);
    }

    goto LABEL_12;
  }

  v2 = v2;
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 67109120;
    *&buf[4] = [v2 count];
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "kVTAudioInjectionKey array size = %d", buf, 8u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__VTPreferences_audioInjectionFilePath__block_invoke;
  v8[3] = &unk_2784EC850;
  v8[4] = buf;
  [v2 enumerateObjectsUsingBlock:v8];
  if (v2)
  {
    v5 = v10[24];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(buf, 8);

  if ((v5 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v2 = 0;
  }

  return v2;
}

void __39__VTPreferences_audioInjectionFilePath__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_223A31000, v8, OS_LOG_TYPE_ERROR, "kVTAudioInjectionKey doesn't have NSString as an array entry", v9, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (v3)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Will Enable VoiceTrigger after VoiceProfile sync for language: %{public}@", &v5, 0xCu);
    }

    CFPreferencesSetAppValue(@"Enable VoiceTrigger Upon VoiceProfile Sync For Language", v3, @"com.apple.voicetrigger.notbackedup");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446210;
    v6 = "[VTPreferences enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    _os_log_error_impl(&dword_223A31000, v4, OS_LOG_TYPE_ERROR, "ERR: %{public}s: Bailing out as language is nil!", &v5, 0xCu);
  }
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VTUtilities deviceProductType];
  if (!v5)
  {
    v31 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v4;
      v32 = "ERR: Unknown device. Returning false, language: %{public}@";
      v33 = v31;
LABEL_30:
      v35 = 12;
      goto LABEL_31;
    }

LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

  v6 = [VTUtilities deviceCategoryForDeviceProductType:v5];
  if (!v6)
  {
    v34 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v44 = v5;
      v45 = 2114;
      v46 = v4;
      v32 = "ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@";
      v33 = v34;
      v35 = 22;
LABEL_31:
      _os_log_error_impl(&dword_223A31000, v33, OS_LOG_TYPE_ERROR, v32, buf, v35);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v7 = VTLogContextFacilityVoiceTrigger;
  if (!v4)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v44 = "[VTPreferences hasVoiceProfileIniCloudForLanguageCode:]";
      v32 = "ERR: %{public}s: Bailing out as language is nil!";
      v33 = v7;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v8 = v6;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    v10 = [VTPreferences deviceCategoryStringRepresentationForCategoryType:v8];
    *buf = 138543618;
    v44 = v5;
    v45 = 2114;
    v46 = v10;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Searching for synced-VoiceProfile for CurrDevice: %{public}@{%{public}@}", buf, 0x16u);
  }

  v38 = v5;
  v37 = v4;
  [(VTPreferences *)self devicesWithVoiceProfileIniCloudForLanguage:v4];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v42 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
  p_cache = (VTTriggerEventMonitorManager + 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v40;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = [VTUtilities deviceCategoryForDeviceProductType:v17];
        v19 = p_cache[145];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v14;
          v21 = v15;
          v22 = v19;
          v23 = [VTPreferences deviceCategoryStringRepresentationForCategoryType:v8];
          [VTPreferences deviceCategoryStringRepresentationForCategoryType:v18];
          v25 = v24 = v11;
          *buf = 138544130;
          v44 = v38;
          v45 = 2114;
          v46 = v23;
          v47 = 2114;
          v48 = v17;
          v49 = 2114;
          v50 = v25;
          _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x2Au);

          v11 = v24;
          v15 = v21;
          v14 = v20;

          p_cache = VTTriggerEventMonitorManager.cache;
          v19 = VTLogContextFacilityVoiceTrigger;
        }

        v26 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v18 == v8)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "VoiceProfile MATCH", buf, 2u);
          }

          v28 = 1;
          v4 = v37;
          v5 = v38;
          goto LABEL_27;
        }

        if (v26)
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "VoiceProfile MIS-MATCH", buf, 2u);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = p_cache[145];
  v28 = 0;
  v4 = v37;
  v5 = v38;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v27;
    v30 = [VTPreferences deviceCategoryStringRepresentationForCategoryType:v8];
    *buf = 138543618;
    v44 = v38;
    v45 = 2114;
    v46 = v30;
    _os_log_impl(&dword_223A31000, v29, OS_LOG_TYPE_DEFAULT, "CurrDevice: [%{public}@ : {%{public}@}] DOES NOT have VoiceProfile synced in iCloud", buf, 0x16u);

    v28 = 0;
  }

LABEL_27:

LABEL_33:
  return v28;
}

- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "\nlanguageCode: %{public}@", &buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = objc_alloc_init(MEMORY[0x277CEF3A0]);
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_time(0, 5000000000);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3165;
  v29 = __Block_byref_object_dispose__3166;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__VTPreferences_devicesWithVoiceProfileIniCloudForLanguage___block_invoke;
  v18[3] = &unk_2784EC828;
  v9 = v3;
  v19 = v9;
  p_buf = &buf;
  v10 = v7;
  v20 = v10;
  [v6 getDevicesWithAvailablePHSAssetsForLanguage:v9 completion:v18];
  v11 = dispatch_semaphore_wait(v10, v8);
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = VTLogContextFacilityVoiceTrigger;
  if (v11)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 134349312;
      v23 = *&v11;
      v24 = 1026;
      v25 = 5000;
      _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Timedout waiting for AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage: %{public}ld, waitedFor: %{public}d, Returning nil", v22, 0x12u);
    }
  }

  else
  {
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [v12 timeIntervalSinceDate:v5];
      *v22 = 134349056;
      v23 = v15 * 1000.0;
      _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "timeToRet(AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage:): %{public}fms", v22, 0xCu);
    }
  }

  v16 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v16;
}

void __60__VTPreferences_devicesWithVoiceProfileIniCloudForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Devices with VoiceProfile in iCloud for language: %{public}@:%{public}@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_preferencesPhraseDeviceStringWithPhraseDeviceType:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return @"Default Device";
  }

  else
  {
    return off_2784EC888[a3 - 1];
  }
}

- (unint64_t)_getCSDeviceTypeWithPhraseDeviceType:(unint64_t)a3
{
  if (a3 - 1 >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)a3 forPhraseDeviceType:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [getCSUtilsClass() supportsMphForLanguageCode:v6 forDeviceType:{-[VTPreferences _getCSDeviceTypeWithPhraseDeviceType:](self, "_getCSDeviceTypeWithPhraseDeviceType:", a4)}];
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(VTPreferences *)self _preferencesPhraseDeviceStringWithPhraseDeviceType:a4];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Language code %@, device Type: %@, supportsMph:%d", &v12, 0x1Cu);
  }

  return v7;
}

- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [getCSUtilsClass() supportsMphForLanguageCode:v3];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Language code %@ supportsMph:%d", &v7, 0x12u);
  }

  return v4;
}

- (BOOL)_isLocalVoiceTriggerAvailable
{
  if (+[VTUtilities VTIsHorseman](VTUtilities, "VTIsHorseman") || +[VTUtilities isAlwaysOn](VTUtilities, "isAlwaysOn") || +[VTUtilities isIOS])
  {
    return 1;
  }

  return +[VTUtilities isNano];
}

- (BOOL)isVoiceTriggerAvailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__VTPreferences_isVoiceTriggerAvailable__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  if (isVoiceTriggerAvailable_onceToken != -1)
  {
    dispatch_once(&isVoiceTriggerAvailable_onceToken, block);
  }

  return isVoiceTriggerAvailable_retValue;
}

void __40__VTPreferences_isVoiceTriggerAvailable__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isLocalVoiceTriggerAvailable])
  {
    v2 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) isRemoteVoiceTriggerAvailable];
    v4 = [*(a1 + 32) _gibraltarHasBuiltInMic];
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"isn't";
      if (v4)
      {
        v6 = @"is";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "VoiceTrigger %{public}@ available", &v7, 0xCu);
    }

    v2 = v3 & v4;
  }

  isVoiceTriggerAvailable_retValue = v2;
}

- (BOOL)gestureSubscriptionEnabled
{
  v2 = CFPreferencesCopyAppValue(@"Gesture Subscription Enabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)voiceTriggerInCoreSpeech
{
  v2 = +[VTUtilities VTIsHorseman];
  v3 = CFPreferencesCopyAppValue(@"VoiceTrigger CoreSpeech Enabled", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    v2 = [v3 BOOLValue];
  }

  return v2;
}

- (id)getSATEnrollmentPath
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(VTPreferences *)self _VTSATBasePath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

  v6 = 0;
  if (v5)
  {
    v7 = MEMORY[0x277CBEA60];
    v8 = [(VTPreferences *)self _VTSATBasePath];
    v6 = [v7 arrayWithObjects:{v8, 0}];
  }

  return v6;
}

- (id)getMD5HashForSATEnrollmentAudioForLanguageCode:(id)a3
{
  v3 = a3;
  NSLog(&stru_28370C968.isa, v3);
  if (v3)
  {
    v4 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:v3];
    NSLog(&stru_28370C968.isa, v4);
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    if ([v5 fileExistsAtPath:v4 isDirectory:0])
    {
      v7 = [v5 contentsOfDirectoryAtPath:v4 error:0];
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav' OR self ENDSWITH '.json'"];
      v9 = [v7 filteredArrayUsingPredicate:v8];

      v10 = [v9 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
      v11 = [v10 componentsJoinedByString:&stru_28370C9A8];
      v12 = [v11 dataUsingEncoding:4];
      v6 = [v12 MD5HashString];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)markSATEnrollmentSuccessForLanguageCode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = v3;
    v4 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:v3];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v5 fileExistsAtPath:v4 isDirectory:0])
    {
      v6 = [v4 stringByAppendingPathComponent:@"enrollment_completed"];
      if (([v5 createFileAtPath:v6 contents:0 attributes:0] & 1) == 0)
      {
        NSLog(&cfstr_CoudnTMarkSatS.isa, v6);
      }

      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
      [VTUtteranceMetadataManager saveMetaVersionFileAtSATAudioDirectory:v7];
      [VTVoiceProfileMigration updateVoiceProfileVersionFileForLanguageCode:v8];
      notify_post("com.apple.voicetrigger.PHSProfileModified");
    }

    else
    {
      NSLog(&cfstr_WeCanTMarkSatS.isa);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)_getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VTPreferences *)self _VTSATBasePath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    v7 = [v6 stringByAppendingPathComponent:@"audio"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)discardAllSATEnrollment
{
  v3 = [(VTPreferences *)self _VTSATBasePath];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3 isDirectory:0])
  {
    v13 = 0;
    [v4 removeItemAtPath:v3 error:&v13];
    v5 = v13;
    v6 = v5;
    if (v5)
    {
      v7 = [v5 localizedDescription];
      NSLog(&cfstr_CouldnTDeleteS_0.isa, v3, v7);
    }
  }

  v8 = [(VTPreferences *)self _VTSATCachePath];
  if ([v4 fileExistsAtPath:v8 isDirectory:0])
  {
    v12 = 0;
    [v4 removeItemAtPath:v8 error:&v12];
    v9 = v12;
    v10 = v9;
    if (v9)
    {
      v11 = [v9 localizedDescription];
      NSLog(&cfstr_CouldnTDeleteS_1.isa, v8, v11);
    }
  }
}

- (void)discardSATEnrollmentForLanguageCode:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VTPreferences *)self _VTSATBasePath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v7 fileExistsAtPath:v6 isDirectory:0])
    {
      v11 = 0;
      [v7 removeItemAtPath:v6 error:&v11];
      v8 = v11;
      v9 = v8;
      if (v8)
      {
        v10 = [v8 localizedDescription];
        NSLog(&cfstr_CouldnTDeleteS.isa, v6, v10);
      }
    }
  }
}

- (BOOL)_isSATMarkedForMarker:(id)a3 languageCode:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v19 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_223A31000, v19, OS_LOG_TYPE_ERROR, "Language Code is nil!", &v23, 2u);
    }

    goto LABEL_20;
  }

  v8 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:v7];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v9 fileExistsAtPath:v8 isDirectory:0])
  {
    v20 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_error_impl(&dword_223A31000, v20, OS_LOG_TYPE_ERROR, "SAT path doesnt exist - %@", &v23, 0xCu);
    }

    goto LABEL_19;
  }

  v10 = [v8 stringByAppendingPathComponent:v6];
  v11 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:v7];
  if (![VTVoiceProfileMigration getCurrentVoiceProfileVersionForLanguageCode:v7])
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "Found voice profile with compatibility version 0", &v23, 2u);
    }

    v13 = [(VTPreferences *)self _getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:v7];

    v14 = [v13 stringByAppendingPathComponent:v6];

    v11 = v13;
    v10 = v14;
  }

  if (![v9 fileExistsAtPath:v10 isDirectory:0])
  {
LABEL_18:

LABEL_19:
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v15 = [v9 contentsOfDirectoryAtPath:v11 error:0];
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'"];
  v17 = [v15 filteredArrayUsingPredicate:v16];

  if (!v17 || ![v17 count])
  {
    v21 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_223A31000, v21, OS_LOG_TYPE_ERROR, "No Audio file exists when enrollment marker is set, remove marker", &v23, 2u);
    }

    [v9 removeItemAtPath:v10 error:0];

    goto LABEL_18;
  }

  v18 = 1;
LABEL_21:

  return v18;
}

- (void)setOnetimeRemoteAssetQueryRanSuccessfully:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  CFPreferencesSetAppValue(@"One Time Remote Assets Query Succeed", v3, @"com.apple.voicetrigger.notbackedup");
}

- (BOOL)onetimeRemoteAssetQueryRanSuccessfully
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  v2 = CFPreferencesCopyAppValue(@"One Time Remote Assets Query Succeed", @"com.apple.voicetrigger.notbackedup");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSecondPassAudioLoggingEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  CFPreferencesSetAppValue(@"Second Pass Audio Logging Enabled", v3, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v4 = dispatch_time(0, 50000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_99);
}

- (BOOL)secondPassAudioLoggingEnabled
{
  if (!+[VTUtilities isInternalInstall])
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Second Pass Audio Logging Enabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileLoggingLevel:(id)a3
{
  CFPreferencesSetAppValue(@"File Logging Level", a3, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (id)fileLoggingLevel
{
  if (+[VTUtilities isInternalInstall])
  {
    v2 = CFPreferencesCopyAppValue(@"File Logging Level", @"com.apple.voicetrigger");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)fileLoggingIsEnabled
{
  if (!+[VTUtilities isInternalInstall])
  {
    return 0;
  }

  v3 = [(VTPreferences *)self fileLoggingLevel];
  v4 = [v3 intValue] > 0;

  return v4;
}

- (void)setFileLoggingIsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = &unk_283715458;
  }

  else
  {
    v3 = 0;
  }

  [(VTPreferences *)self setFileLoggingLevel:v3];
}

- (id)localizedTriggerPhraseForLanguageCode:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v5 = [&unk_2837154E0 objectForKey:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 componentsSeparatedByString:@"-"];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [&unk_2837154E0 objectForKey:v8];
    if (v9)
    {
      v6 = v9;
      v4 = v8;
    }

    else
    {
      v10 = [(VTPreferences *)self _localeIdentifier];
      v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

      v12 = [v11 componentsSeparatedByString:@"-"];
      v4 = [v12 objectAtIndexedSubscript:0];

      v13 = [&unk_2837154E0 objectForKey:v4];
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        v6 = @"Hey Siri";
      }
    }
  }

  return v6;
}

- (id)localizedCompactTriggerPhraseForLanguageCode:(id)a3
{
  v3 = @"Siri";
  if (a3)
  {
    v5 = [a3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v6 = [&unk_2837154B8 objectForKey:v5];
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v7 = [v5 componentsSeparatedByString:@"-"];
      v8 = [v7 objectAtIndexedSubscript:0];

      v9 = [&unk_2837154B8 objectForKey:v8];
      if (v9)
      {
        v5 = v8;
        v3 = v9;
      }

      else
      {
        v10 = [(VTPreferences *)self _localeIdentifier];
        v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

        v12 = [v11 componentsSeparatedByString:@"-"];
        v5 = [v12 objectAtIndexedSubscript:0];

        v13 = [&unk_2837154B8 objectForKey:v5];
        if (v13)
        {
          v3 = v13;
        }
      }
    }
  }

  return v3;
}

- (id)localizedTriggerPhrase
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v3 = [(VTPreferences *)self _languageCode];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = MEMORY[0x277CCACA8];
    v6 = [v4 objectForKey:*MEMORY[0x277CBE6C8]];
    v7 = [v4 objectForKey:*MEMORY[0x277CBE690]];
    v3 = [v5 stringWithFormat:@"%@-%@", v6, v7];
  }

  v8 = [(VTPreferences *)self localizedTriggerPhraseForLanguageCode:v3];

  return v8;
}

- (id)_localeIdentifier
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (id)_languageCode
{
  v2 = [MEMORY[0x277CEF360] sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

- (void)setVoiceTriggerEnabledWhenChargerConnected:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  CFPreferencesSetAppValue(@"Enabled On Charger", v3, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v4 = dispatch_time(0, 50000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_99);
}

- (BOOL)voiceTriggerEnabledWhenChargerConnected
{
  v2 = CFPreferencesCopyAppValue(@"Enabled On Charger", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setVoiceTriggerEnabledWhenChargerDisconnected:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  CFPreferencesSetAppValue(@"Battery Power Allowed", v3, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v4 = dispatch_time(0, 50000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_99);
}

- (BOOL)voiceTriggerEnabledWhenChargerDisconnected
{
  v2 = CFPreferencesCopyAppValue(@"Battery Power Allowed", @"com.apple.voicetrigger");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPhraseSpotterEnabled:(BOOL)a3 sender:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  CFPreferencesSetAppValue(@"Phrase Detector Enabled", v8, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v9 = dispatch_time(0, 50000000);
  dispatch_after(v9, MEMORY[0x277D85CD0], &__block_literal_global_99);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", v7, 0, 1u);

  [(VTPreferences *)self _logMetadataForVTEnabled:v4];
}

- (BOOL)phraseSpotterEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v3 = CFPreferencesCopyAppValue(@"Phrase Detector Enabled", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    LOBYTE(v5) = [v3 BOOLValue];
  }

  else
  {
    v5 = ![(VTPreferences *)self _storeModeEnabled];
  }

  return v5;
}

- (BOOL)hasExplicitlySetVoiceTriggerEnabled
{
  v2 = CFPreferencesCopyAppValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger");
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)getUserPreferredVoiceTriggerPhraseTypeForDeviceType:(unint64_t)a3 endpointId:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134283779;
    v18 = a3;
    v19 = 2113;
    v20 = v8;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "deviceType: %{private}lu, endpointId :%{private}@", &v17, 0x16u);
  }

  v10 = [(VTPreferences *)self _isNonEndpointDeviceType:a3];
  if (v8 || !v10)
  {
    if (a3 != 2 || !v8)
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:51 userInfo:0];
      }

      v14 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v17 = 138543618;
        v18 = v8;
        v19 = 2050;
        v20 = a3;
        _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v17, 0x16u);
      }

      v11 = 0;
      goto LABEL_20;
    }

    v12 = [(VTPreferences *)self getPreferencesForEndpoint:v8 fromPreferenceDomain:@"com.apple.voicetrigger" error:a5];
    v13 = v12;
    if (!v12)
    {
      v11 = 0;

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v11 = [v12 objectForKey:@"UserPreferredVoiceTriggerPhraseType"];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = CFPreferencesCopyAppValue(@"UserPreferredVoiceTriggerPhraseType", @"com.apple.voicetrigger");
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = [v11 unsignedIntegerValue];
LABEL_21:

  return v15;
}

- (id)setUserPreferredVoiceTriggerPhraseType:(unint64_t)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v26 = a3;
    v27 = 2049;
    v28 = a5;
    v29 = 2113;
    v30 = v11;
    _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "phraseType: %lu, deviceType: %{private}lu, endpointId :%{private}@", buf, 0x20u);
  }

  v13 = [(VTPreferences *)self _isNonEndpointDeviceType:a5];
  if (!v11 && v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    CFPreferencesSetAppValue(@"UserPreferredVoiceTriggerPhraseType", v14, @"com.apple.voicetrigger");
LABEL_6:

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VT Phrase Type changed", v10, 0, 1u);
    v16 = 0;
    goto LABEL_14;
  }

  if (a5 == 2 && v11)
  {
    v24 = 0;
    v14 = [(VTPreferences *)self getPreferencesForEndpoint:v11 fromPreferenceDomain:@"com.apple.voicetrigger" error:&v24];
    v17 = v24;
    if (!v17)
    {
      if (v14)
      {
        v20 = [v14 mutableCopy];
      }

      else
      {
        v20 = [MEMORY[0x277CBEB38] dictionary];
      }

      v21 = v20;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v21 setObject:v22 forKey:@"UserPreferredVoiceTriggerPhraseType"];

      v23 = [(VTPreferences *)self setPreferences:v21 forEndpoint:v11 inPreferenceDomain:@"com.apple.voicetrigger"];
      goto LABEL_6;
    }

    v16 = v17;
  }

  else
  {
    v18 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v11;
      v27 = 2050;
      v28 = a5;
      _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:51 userInfo:0];
  }

LABEL_14:

  return v16;
}

- (void)_setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6
{
  v8 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = [(VTPreferences *)self _isNonEndpointDeviceType:a5];
  if (v11 || !v12)
  {
    if (a5 == 2 && v11)
    {
      v13 = [(VTPreferences *)self getPreferencesForEndpoint:v11 fromPreferenceDomain:@"com.apple.voicetrigger" error:0];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 mutableCopy];
      }

      else
      {
        v15 = [MEMORY[0x277CBEB38] dictionary];
      }

      v17 = v15;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v17 setObject:v18 forKey:@"VoiceTrigger Enabled"];

      v19 = [(VTPreferences *)self setPreferences:v17 forEndpoint:v11 inPreferenceDomain:@"com.apple.voicetrigger"];
      CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
      v20 = dispatch_time(0, 50000000);
      dispatch_after(v20, MEMORY[0x277D85CD0], &__block_literal_global_99);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kVTPreferencesRemoraVoiceTriggerEnabledDidChangeDarwinNotification", v10, 0, 1u);
    }

    else
    {
      v16 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543618;
        v23 = v11;
        v24 = 2050;
        v25 = a5;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v22, 0x16u);
      }
    }
  }

  else
  {
    [(VTPreferences *)self _setVoiceTriggerEnabled:v8 sender:v10 deviceType:a5];
  }
}

- (id)_getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:(unint64_t)a3
{
  if (a3 == 3)
  {
    return @"kVTPreferencesRemoteDarwinVoiceTriggerEnabledDidChangeDarwinNotification";
  }

  else
  {
    return @"kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification";
  }
}

- (id)_getVoiceTriggerEnabledKeyWithDeviceType:(unint64_t)a3
{
  if (a3 == 3)
  {
    return @"Remote Darwin VoiceTrigger Enabled";
  }

  else
  {
    return @"VoiceTrigger Enabled";
  }
}

- (id)_getVTEnableLoggingMetadata
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 stringFromDate:v6];

  if (v3 && v7)
  {
    v13[0] = @"processName";
    v13[1] = @"timestamp";
    v14[0] = v3;
    v14[1] = v7;
    v13[2] = @"buildVersion";
    v8 = +[VTUtilities deviceSoftwareVersion];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_223A31000, v10, OS_LOG_TYPE_ERROR, "Unable to fetch processName or timestamp", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_logMetadataForVTEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if (+[VTUtilities isInternalInstall])
  {
    v5 = [(VTPreferences *)self _getVTEnableLoggingMetadata];
    v6 = @"Disabled";
    if (v3)
    {
      v6 = @"Enabled";
    }

    v7 = v6;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = CFPreferencesCopyAppValue(@"VT Enabled Metadata", @"com.apple.voicetrigger.notbackedup");
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];

      v8 = v11;
    }

    [v8 setObject:v5 forKeyedSubscript:v7];
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "Writing metadata into plist: %@", &v13, 0xCu);
    }

    CFPreferencesSetAppValue(@"VT Enabled Metadata", v8, @"com.apple.voicetrigger.notbackedup");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  }
}

- (void)_setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5
{
  v6 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(VTPreferences *)self _getVoiceTriggerEnabledKeyWithDeviceType:a5];
  v10 = [(VTPreferences *)self _getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:a5];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  CFPreferencesSetAppValue(v9, v11, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v12 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger");
  v13 = v12;
  if (v12 && [v12 BOOLValue] == v6 || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v6), v14 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v14, @"com.apple.voicetrigger"), v14, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v15 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v15) != 0) && objc_msgSend(v15, "BOOLValue") == v6 || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v6), v16 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v16, @"com.apple.voicetrigger"), v16, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v17 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v17) != 0) && objc_msgSend(v17, "BOOLValue") == v6 || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v6), v18 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v18, @"com.apple.voicetrigger"), v18, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v19 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v19) != 0) && objc_msgSend(v19, "BOOLValue") == v6 || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v6), v20 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v20, @"com.apple.voicetrigger"), v20, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v21 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v21) != 0) && objc_msgSend(v21, "BOOLValue") == v6)
  {
  }

  else
  {

    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67240192;
      v25[1] = v6;
      _os_log_error_impl(&dword_223A31000, v22, OS_LOG_TYPE_ERROR, "Voice trigger state incorrect, expected %{public}d", v25, 8u);
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v23 = dispatch_time(0, 50000000);
  dispatch_after(v23, MEMORY[0x277D85CD0], &__block_literal_global_99);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v10, v8, 0, 1u);

  [(VTPreferences *)self _logMetadataForVTEnabled:v6];
}

- (void)setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 deviceType:(unint64_t)a5 endpointId:(id)a6
{
  v8 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v11 UUIDString];
    v15[0] = 67240706;
    v15[1] = v8;
    v16 = 2114;
    v17 = v14;
    v18 = 2050;
    v19 = a5;
    _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "setVoiceTriggerEnabled : %{public}d, endpoint : %{public}@, deviceType : %{public}lu", v15, 0x1Cu);
  }

  [(VTPreferences *)self _setVoiceTriggerEnabled:v8 sender:v10 deviceType:a5 endpointId:v11];
}

- (void)setVoiceTriggerEnabled:(BOOL)a3 sender:(id)a4 endpointId:(id)a5
{
  v5 = a5;
  if (a5)
  {
    a5 = 2;
  }

  [(VTPreferences *)self setVoiceTriggerEnabled:a3 sender:a4 deviceType:a5 endpointId:v5];
}

- (void)_setCanUseVoiceTriggerDuringPhoneCall:(BOOL)a3 sender:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  object = a4;
  v6 = [v5 numberWithBool:v4];
  CFPreferencesSetAppValue(@"Can Use VoiceTrigger During Phone Call", v6, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kVTPreferencesCanUseVoiceTriggerDuringPhoneCallDidChangeDarwinNotification", object, 0, 1u);
}

- (unint64_t)canUseVoiceTriggerDuringPhoneCallWithState
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v2 = CFPreferencesCopyAppValue(@"Can Use VoiceTrigger During Phone Call", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    if ([v2 BOOLValue])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canUseVoiceTriggerDuringPhoneCall
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v3 = CFPreferencesCopyAppValue(@"Can Use VoiceTrigger During Phone Call", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)a3 endpointId:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(VTPreferences *)self _isNonEndpointDeviceType:a3];
  if (!v6 && v7)
  {
    v8 = [(VTPreferences *)self _voiceTriggerEnabledWithDeviceType:a3];
    goto LABEL_13;
  }

  if (a3 != 2 || !v6)
  {
    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2050;
      v18 = a3;
      _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v15, 0x16u);
    }

    goto LABEL_12;
  }

  if ([(VTPreferences *)self _storeModeEnabled])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v9 = [(VTPreferences *)self getPreferencesForEndpoint:v6 fromPreferenceDomain:@"com.apple.voicetrigger" error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"VoiceTrigger Enabled"];
    v12 = v11;
    if (v11)
    {
      v8 = [v11 BOOLValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)a3
{
  v4 = [(VTPreferences *)self _getVoiceTriggerEnabledKeyWithDeviceType:a3];
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v5 = CFPreferencesCopyAppValue(v4, @"com.apple.voicetrigger");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    [(VTPreferences *)self _storeModeEnabled];
    v7 = 0;
  }

  return v7;
}

- (BOOL)remoteDarwinWasEverConnected
{
  v2 = CFPreferencesCopyAppValue(@"Remote Darwin Ever Connected", @"com.apple.voicetrigger.notbackedup");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)voiceTriggerWasEverUsed
{
  v2 = CFPreferencesCopyAppValue(@"VoiceTriggerEverUsed", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)voiceTriggerEnabledForEndpointId:(id)a3
{
  v3 = a3;
  if (a3)
  {
    a3 = 2;
  }

  return [(VTPreferences *)self voiceTriggerEnabledWithDeviceType:a3 endpointId:v3];
}

- (id)_VTSATCachePath
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Caches/VoiceTrigger"];

  return v3;
}

- (id)_VTSATBasePath
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/VoiceTrigger/SAT"];

  return v3;
}

+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"kVTDeviceCategory_Unknown";
  }

  else
  {
    return off_2784EC8D0[a3 - 1];
  }
}

- (id)setPreferences:(id)a3 forEndpoint:(id)a4 inPreferenceDomain:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dictionaryForKey:@"RemoraDevices"];
      v14 = [v13 mutableCopy];

      if (!v14)
      {
        v14 = [MEMORY[0x277CBEB38] dictionary];
      }

      v15 = [v8 UUIDString];
      [v14 setObject:v7 forKey:v15];

      [v12 setObject:v14 forKey:@"RemoraDevices"];
    }

    v16 = 0;
  }

  else
  {
    v17 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v19 = 138478339;
      v20 = v7;
      v21 = 2113;
      v22 = v8;
      v23 = 2113;
      v24 = v10;
      _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Unexpected Input (pref: %{private}@ endpointId: %{private}@ preferenceDomain: %{private}@).", &v19, 0x20u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:1 userInfo:0];
  }

  return v16;
}

- (id)getPreferencesForEndpoint:(id)a3 fromPreferenceDomain:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dictionaryForKey:@"RemoraDevices"];
      v13 = [v12 mutableCopy];

      if (v13)
      {
        v14 = [v7 UUIDString];
        v15 = [v13 objectForKey:v14];

        if (!v15)
        {
          v18 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            v20 = [v7 UUIDString];
            v25 = 138477827;
            v26 = v20;
            _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_INFO, "Saved voice trigger preferences for endpoint %{private}@ is nil", &v25, 0xCu);
          }

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
LABEL_13:

LABEL_19:
          goto LABEL_22;
        }

        v21 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          v23 = v21;
          v24 = [v7 UUIDString];
          v25 = 138477827;
          v26 = v24;
          _os_log_error_impl(&dword_223A31000, v23, OS_LOG_TYPE_ERROR, "Saved voice trigger preferences for endpoint %{private}@ is not a dictionary.", &v25, 0xCu);
        }

        if (a5)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:objc_msgSend(&unk_283715470 userInfo:{"unsignedIntegerValue"), 0}];
          *a5 = v15 = 0;
          goto LABEL_19;
        }
      }
    }

    v15 = 0;
    goto LABEL_19;
  }

  v17 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v25 = 138478083;
    v26 = v7;
    v27 = 2113;
    v28 = v9;
    _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Unexpected Input (endpointId: %{private}@ preferenceDomain: %{private}@).", &v25, 0x16u);
    if (a5)
    {
      goto LABEL_10;
    }
  }

  else if (a5)
  {
LABEL_10:
    [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:1 userInfo:0];
    *a5 = v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

@end