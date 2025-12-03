@interface VTPreferences
+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)type;
+ (id)sharedPreferences;
- (BOOL)_isLocalVoiceTriggerAvailable;
- (BOOL)_isSATMarkedForMarker:(id)marker languageCode:(id)code;
- (BOOL)_storeModeEnabled;
- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)type;
- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)type endpointId:(id)id;
- (BOOL)canUseVoiceTriggerDuringPhoneCall;
- (BOOL)corespeechDaemonEnabled;
- (BOOL)everNotifyUserCompactTrigger;
- (BOOL)fileLoggingIsEnabled;
- (BOOL)gestureSubscriptionEnabled;
- (BOOL)hasExplicitlySetVoiceTriggerEnabled;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code;
- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)code;
- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)code forPhraseDeviceType:(unint64_t)type;
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
- (BOOL)voiceTriggerEnabledForEndpointId:(id)id;
- (BOOL)voiceTriggerEnabledWhenChargerConnected;
- (BOOL)voiceTriggerEnabledWhenChargerDisconnected;
- (BOOL)voiceTriggerInCoreSpeech;
- (BOOL)voiceTriggerWasEverUsed;
- (VTPreferences)init;
- (id)_VTSATBasePath;
- (id)_VTSATCachePath;
- (id)_getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:(id)profile;
- (id)_getVTEnableLoggingMetadata;
- (id)_getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:(unint64_t)type;
- (id)_getVoiceTriggerEnabledKeyWithDeviceType:(unint64_t)type;
- (id)_languageCode;
- (id)_localeIdentifier;
- (id)_preferencesPhraseDeviceStringWithPhraseDeviceType:(unint64_t)type;
- (id)audioInjectionFilePath;
- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)language;
- (id)fileLoggingLevel;
- (id)getMD5HashForSATEnrollmentAudioForLanguageCode:(id)code;
- (id)getPreferencesForEndpoint:(id)endpoint fromPreferenceDomain:(id)domain error:(id *)error;
- (id)getSATEnrollmentPath;
- (id)localizedCompactTriggerPhraseForLanguageCode:(id)code;
- (id)localizedTriggerPhrase;
- (id)localizedTriggerPhraseForLanguageCode:(id)code;
- (id)setPreferences:(id)preferences forEndpoint:(id)endpoint inPreferenceDomain:(id)domain;
- (id)setUserPreferredVoiceTriggerPhraseType:(unint64_t)type sender:(id)sender deviceType:(unint64_t)deviceType endpointId:(id)id;
- (unint64_t)_getCSDeviceTypeWithPhraseDeviceType:(unint64_t)type;
- (unint64_t)canUseVoiceTriggerDuringPhoneCallWithState;
- (unint64_t)getUserPreferredVoiceTriggerPhraseTypeForDeviceType:(unint64_t)type endpointId:(id)id error:(id *)error;
- (void)_logMetadataForVTEnabled:(BOOL)enabled;
- (void)_setCanUseVoiceTriggerDuringPhoneCall:(BOOL)call sender:(id)sender;
- (void)_setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type;
- (void)_setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type endpointId:(id)id;
- (void)discardAllSATEnrollment;
- (void)discardSATEnrollmentForLanguageCode:(id)code;
- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)language;
- (void)markSATEnrollmentSuccessForLanguageCode:(id)code;
- (void)setEverNotifyUserCompactTrigger;
- (void)setFileLoggingIsEnabled:(BOOL)enabled;
- (void)setFileLoggingLevel:(id)level;
- (void)setOnetimeRemoteAssetQueryRanSuccessfully:(BOOL)successfully;
- (void)setPhraseSpotterEnabled:(BOOL)enabled sender:(id)sender;
- (void)setSecondPassAudioLoggingEnabled:(BOOL)enabled;
- (void)setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type endpointId:(id)id;
- (void)setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender endpointId:(id)id;
- (void)setVoiceTriggerEnabledWhenChargerConnected:(BOOL)connected;
- (void)setVoiceTriggerEnabledWhenChargerDisconnected:(BOOL)disconnected;
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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

- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)language
{
  v7 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (languageCopy)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = languageCopy;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Will Enable VoiceTrigger after VoiceProfile sync for language: %{public}@", &v5, 0xCu);
    }

    CFPreferencesSetAppValue(@"Enable VoiceTrigger Upon VoiceProfile Sync For Language", languageCopy, @"com.apple.voicetrigger.notbackedup");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446210;
    v6 = "[VTPreferences enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    _os_log_error_impl(&dword_223A31000, v4, OS_LOG_TYPE_ERROR, "ERR: %{public}s: Bailing out as language is nil!", &v5, 0xCu);
  }
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code
{
  v52 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = +[VTUtilities deviceProductType];
  if (!v5)
  {
    v31 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = codeCopy;
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
      v46 = codeCopy;
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
  if (!codeCopy)
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
  v37 = codeCopy;
  [(VTPreferences *)self devicesWithVoiceProfileIniCloudForLanguage:codeCopy];
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
          codeCopy = v37;
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
  codeCopy = v37;
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

- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)language
{
  v31 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = languageCopy;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "\nlanguageCode: %{public}@", &buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
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
  v9 = languageCopy;
  v19 = v9;
  p_buf = &buf;
  v10 = v7;
  v20 = v10;
  [v6 getDevicesWithAvailablePHSAssetsForLanguage:v9 completion:v18];
  v11 = dispatch_semaphore_wait(v10, v8);
  date2 = [MEMORY[0x277CBEAA8] date];
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
      [date2 timeIntervalSinceDate:date];
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

- (id)_preferencesPhraseDeviceStringWithPhraseDeviceType:(unint64_t)type
{
  if (type - 1 > 8)
  {
    return @"Default Device";
  }

  else
  {
    return off_2784EC888[type - 1];
  }
}

- (unint64_t)_getCSDeviceTypeWithPhraseDeviceType:(unint64_t)type
{
  if (type - 1 >= 9)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)code forPhraseDeviceType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v7 = [getCSUtilsClass() supportsMphForLanguageCode:codeCopy forDeviceType:{-[VTPreferences _getCSDeviceTypeWithPhraseDeviceType:](self, "_getCSDeviceTypeWithPhraseDeviceType:", type)}];
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(VTPreferences *)self _preferencesPhraseDeviceStringWithPhraseDeviceType:type];
    v12 = 138412802;
    v13 = codeCopy;
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Language code %@, device Type: %@, supportsMph:%d", &v12, 0x1Cu);
  }

  return v7;
}

- (BOOL)isCompactVoiceTriggerAvailableForLanguageCode:(id)code
{
  v11 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v4 = [getCSUtilsClass() supportsMphForLanguageCode:codeCopy];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = codeCopy;
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)voiceTriggerInCoreSpeech
{
  bOOLValue = +[VTUtilities VTIsHorseman];
  v3 = CFPreferencesCopyAppValue(@"VoiceTrigger CoreSpeech Enabled", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  return bOOLValue;
}

- (id)getSATEnrollmentPath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _VTSATBasePath = [(VTPreferences *)self _VTSATBasePath];
  v5 = [defaultManager fileExistsAtPath:_VTSATBasePath isDirectory:0];

  v6 = 0;
  if (v5)
  {
    v7 = MEMORY[0x277CBEA60];
    _VTSATBasePath2 = [(VTPreferences *)self _VTSATBasePath];
    v6 = [v7 arrayWithObjects:{_VTSATBasePath2, 0}];
  }

  return v6;
}

- (id)getMD5HashForSATEnrollmentAudioForLanguageCode:(id)code
{
  codeCopy = code;
  NSLog(&stru_28370C968.isa, codeCopy);
  if (codeCopy)
  {
    v4 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:codeCopy];
    NSLog(&stru_28370C968.isa, v4);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    mD5HashString = 0;
    if ([defaultManager fileExistsAtPath:v4 isDirectory:0])
    {
      v7 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav' OR self ENDSWITH '.json'"];
      v9 = [v7 filteredArrayUsingPredicate:v8];

      v10 = [v9 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
      v11 = [v10 componentsJoinedByString:&stru_28370C9A8];
      v12 = [v11 dataUsingEncoding:4];
      mD5HashString = [v12 MD5HashString];
    }
  }

  else
  {
    mD5HashString = 0;
  }

  return mD5HashString;
}

- (void)markSATEnrollmentSuccessForLanguageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v8 = codeCopy;
    v4 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:codeCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v4 isDirectory:0])
    {
      v6 = [v4 stringByAppendingPathComponent:@"enrollment_completed"];
      if (([defaultManager createFileAtPath:v6 contents:0 attributes:0] & 1) == 0)
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

- (id)_getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:(id)profile
{
  if (profile)
  {
    profileCopy = profile;
    _VTSATBasePath = [(VTPreferences *)self _VTSATBasePath];
    v6 = [_VTSATBasePath stringByAppendingPathComponent:profileCopy];

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
  _VTSATBasePath = [(VTPreferences *)self _VTSATBasePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:_VTSATBasePath isDirectory:0])
  {
    v13 = 0;
    [defaultManager removeItemAtPath:_VTSATBasePath error:&v13];
    v5 = v13;
    v6 = v5;
    if (v5)
    {
      localizedDescription = [v5 localizedDescription];
      NSLog(&cfstr_CouldnTDeleteS_0.isa, _VTSATBasePath, localizedDescription);
    }
  }

  _VTSATCachePath = [(VTPreferences *)self _VTSATCachePath];
  if ([defaultManager fileExistsAtPath:_VTSATCachePath isDirectory:0])
  {
    v12 = 0;
    [defaultManager removeItemAtPath:_VTSATCachePath error:&v12];
    v9 = v12;
    v10 = v9;
    if (v9)
    {
      localizedDescription2 = [v9 localizedDescription];
      NSLog(&cfstr_CouldnTDeleteS_1.isa, _VTSATCachePath, localizedDescription2);
    }
  }
}

- (void)discardSATEnrollmentForLanguageCode:(id)code
{
  if (code)
  {
    codeCopy = code;
    _VTSATBasePath = [(VTPreferences *)self _VTSATBasePath];
    v6 = [_VTSATBasePath stringByAppendingPathComponent:codeCopy];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v6 isDirectory:0])
    {
      v11 = 0;
      [defaultManager removeItemAtPath:v6 error:&v11];
      v8 = v11;
      v9 = v8;
      if (v8)
      {
        localizedDescription = [v8 localizedDescription];
        NSLog(&cfstr_CouldnTDeleteS.isa, v6, localizedDescription);
      }
    }
  }
}

- (BOOL)_isSATMarkedForMarker:(id)marker languageCode:(id)code
{
  v25 = *MEMORY[0x277D85DE8];
  markerCopy = marker;
  codeCopy = code;
  if (!codeCopy)
  {
    v19 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_223A31000, v19, OS_LOG_TYPE_ERROR, "Language Code is nil!", &v23, 2u);
    }

    goto LABEL_20;
  }

  v8 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:codeCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (![defaultManager fileExistsAtPath:v8 isDirectory:0])
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

  v10 = [v8 stringByAppendingPathComponent:markerCopy];
  v11 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:codeCopy];
  if (![VTVoiceProfileMigration getCurrentVoiceProfileVersionForLanguageCode:codeCopy])
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "Found voice profile with compatibility version 0", &v23, 2u);
    }

    v13 = [(VTPreferences *)self _getSATEnrollmentAudioPathForLanguageCodeForLegacyVoiceProfile:codeCopy];

    v14 = [v13 stringByAppendingPathComponent:markerCopy];

    v11 = v13;
    v10 = v14;
  }

  if (![defaultManager fileExistsAtPath:v10 isDirectory:0])
  {
LABEL_18:

LABEL_19:
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v15 = [defaultManager contentsOfDirectoryAtPath:v11 error:0];
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

    [defaultManager removeItemAtPath:v10 error:0];

    goto LABEL_18;
  }

  v18 = 1;
LABEL_21:

  return v18;
}

- (void)setOnetimeRemoteAssetQueryRanSuccessfully:(BOOL)successfully
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:successfully];
  CFPreferencesSetAppValue(@"One Time Remote Assets Query Succeed", v3, @"com.apple.voicetrigger.notbackedup");
}

- (BOOL)onetimeRemoteAssetQueryRanSuccessfully
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  v2 = CFPreferencesCopyAppValue(@"One Time Remote Assets Query Succeed", @"com.apple.voicetrigger.notbackedup");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setSecondPassAudioLoggingEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setFileLoggingLevel:(id)level
{
  CFPreferencesSetAppValue(@"File Logging Level", level, @"com.apple.voicetrigger");

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

  fileLoggingLevel = [(VTPreferences *)self fileLoggingLevel];
  v4 = [fileLoggingLevel intValue] > 0;

  return v4;
}

- (void)setFileLoggingIsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = &unk_283715458;
  }

  else
  {
    v3 = 0;
  }

  [(VTPreferences *)self setFileLoggingLevel:v3];
}

- (id)localizedTriggerPhraseForLanguageCode:(id)code
{
  v4 = [code stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
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
      _localeIdentifier = [(VTPreferences *)self _localeIdentifier];
      v11 = [_localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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

- (id)localizedCompactTriggerPhraseForLanguageCode:(id)code
{
  v3 = @"Siri";
  if (code)
  {
    v5 = [code stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
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
        _localeIdentifier = [(VTPreferences *)self _localeIdentifier];
        v11 = [_localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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
  _languageCode = [(VTPreferences *)self _languageCode];
  if (!_languageCode)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = MEMORY[0x277CCACA8];
    v6 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    v7 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    _languageCode = [v5 stringWithFormat:@"%@-%@", v6, v7];
  }

  v8 = [(VTPreferences *)self localizedTriggerPhraseForLanguageCode:_languageCode];

  return v8;
}

- (id)_localeIdentifier
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  return localeIdentifier;
}

- (id)_languageCode
{
  mEMORY[0x277CEF360] = [MEMORY[0x277CEF360] sharedPreferences];
  languageCode = [mEMORY[0x277CEF360] languageCode];

  return languageCode;
}

- (void)setVoiceTriggerEnabledWhenChargerConnected:(BOOL)connected
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:connected];
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setVoiceTriggerEnabledWhenChargerDisconnected:(BOOL)disconnected
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:disconnected];
  CFPreferencesSetAppValue(@"Battery Power Allowed", v3, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v4 = dispatch_time(0, 50000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_99);
}

- (BOOL)voiceTriggerEnabledWhenChargerDisconnected
{
  v2 = CFPreferencesCopyAppValue(@"Battery Power Allowed", @"com.apple.voicetrigger");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPhraseSpotterEnabled:(BOOL)enabled sender:(id)sender
{
  enabledCopy = enabled;
  v6 = MEMORY[0x277CCABB0];
  senderCopy = sender;
  v8 = [v6 numberWithBool:enabledCopy];
  CFPreferencesSetAppValue(@"Phrase Detector Enabled", v8, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v9 = dispatch_time(0, 50000000);
  dispatch_after(v9, MEMORY[0x277D85CD0], &__block_literal_global_99);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", senderCopy, 0, 1u);

  [(VTPreferences *)self _logMetadataForVTEnabled:enabledCopy];
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

- (unint64_t)getUserPreferredVoiceTriggerPhraseTypeForDeviceType:(unint64_t)type endpointId:(id)id error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134283779;
    typeCopy = type;
    v19 = 2113;
    typeCopy2 = idCopy;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "deviceType: %{private}lu, endpointId :%{private}@", &v17, 0x16u);
  }

  v10 = [(VTPreferences *)self _isNonEndpointDeviceType:type];
  if (idCopy || !v10)
  {
    if (type != 2 || !idCopy)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:51 userInfo:0];
      }

      v14 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v17 = 138543618;
        typeCopy = idCopy;
        v19 = 2050;
        typeCopy2 = type;
        _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v17, 0x16u);
      }

      v11 = 0;
      goto LABEL_20;
    }

    v12 = [(VTPreferences *)self getPreferencesForEndpoint:idCopy fromPreferenceDomain:@"com.apple.voicetrigger" error:error];
    v13 = v12;
    if (!v12)
    {
      v11 = 0;

LABEL_20:
      unsignedIntegerValue = 0;
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

  unsignedIntegerValue = [v11 unsignedIntegerValue];
LABEL_21:

  return unsignedIntegerValue;
}

- (id)setUserPreferredVoiceTriggerPhraseType:(unint64_t)type sender:(id)sender deviceType:(unint64_t)deviceType endpointId:(id)id
{
  v31 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  idCopy = id;
  v12 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    typeCopy = type;
    v27 = 2049;
    deviceTypeCopy2 = deviceType;
    v29 = 2113;
    v30 = idCopy;
    _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "phraseType: %lu, deviceType: %{private}lu, endpointId :%{private}@", buf, 0x20u);
  }

  v13 = [(VTPreferences *)self _isNonEndpointDeviceType:deviceType];
  if (!idCopy && v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    CFPreferencesSetAppValue(@"UserPreferredVoiceTriggerPhraseType", v14, @"com.apple.voicetrigger");
LABEL_6:

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VT Phrase Type changed", senderCopy, 0, 1u);
    v16 = 0;
    goto LABEL_14;
  }

  if (deviceType == 2 && idCopy)
  {
    v24 = 0;
    v14 = [(VTPreferences *)self getPreferencesForEndpoint:idCopy fromPreferenceDomain:@"com.apple.voicetrigger" error:&v24];
    v17 = v24;
    if (!v17)
    {
      if (v14)
      {
        dictionary = [v14 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v21 = dictionary;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      [v21 setObject:v22 forKey:@"UserPreferredVoiceTriggerPhraseType"];

      v23 = [(VTPreferences *)self setPreferences:v21 forEndpoint:idCopy inPreferenceDomain:@"com.apple.voicetrigger"];
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
      typeCopy = idCopy;
      v27 = 2050;
      deviceTypeCopy2 = deviceType;
      _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:51 userInfo:0];
  }

LABEL_14:

  return v16;
}

- (void)_setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type endpointId:(id)id
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  idCopy = id;
  v12 = [(VTPreferences *)self _isNonEndpointDeviceType:type];
  if (idCopy || !v12)
  {
    if (type == 2 && idCopy)
    {
      v13 = [(VTPreferences *)self getPreferencesForEndpoint:idCopy fromPreferenceDomain:@"com.apple.voicetrigger" error:0];
      v14 = v13;
      if (v13)
      {
        dictionary = [v13 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v17 = dictionary;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      [v17 setObject:v18 forKey:@"VoiceTrigger Enabled"];

      v19 = [(VTPreferences *)self setPreferences:v17 forEndpoint:idCopy inPreferenceDomain:@"com.apple.voicetrigger"];
      CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
      v20 = dispatch_time(0, 50000000);
      dispatch_after(v20, MEMORY[0x277D85CD0], &__block_literal_global_99);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kVTPreferencesRemoraVoiceTriggerEnabledDidChangeDarwinNotification", senderCopy, 0, 1u);
    }

    else
    {
      v16 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543618;
        v23 = idCopy;
        v24 = 2050;
        typeCopy = type;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v22, 0x16u);
      }
    }
  }

  else
  {
    [(VTPreferences *)self _setVoiceTriggerEnabled:enabledCopy sender:senderCopy deviceType:type];
  }
}

- (id)_getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:(unint64_t)type
{
  if (type == 3)
  {
    return @"kVTPreferencesRemoteDarwinVoiceTriggerEnabledDidChangeDarwinNotification";
  }

  else
  {
    return @"kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification";
  }
}

- (id)_getVoiceTriggerEnabledKeyWithDeviceType:(unint64_t)type
{
  if (type == 3)
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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 stringFromDate:date];

  if (processName && v7)
  {
    v13[0] = @"processName";
    v13[1] = @"timestamp";
    v14[0] = processName;
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

- (void)_logMetadataForVTEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  if (+[VTUtilities isInternalInstall])
  {
    _getVTEnableLoggingMetadata = [(VTPreferences *)self _getVTEnableLoggingMetadata];
    v6 = @"Disabled";
    if (enabledCopy)
    {
      v6 = @"Enabled";
    }

    v7 = v6;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = CFPreferencesCopyAppValue(@"VT Enabled Metadata", @"com.apple.voicetrigger.notbackedup");
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];

      dictionary = v11;
    }

    [dictionary setObject:_getVTEnableLoggingMetadata forKeyedSubscript:v7];
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = dictionary;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "Writing metadata into plist: %@", &v13, 0xCu);
    }

    CFPreferencesSetAppValue(@"VT Enabled Metadata", dictionary, @"com.apple.voicetrigger.notbackedup");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  }
}

- (void)_setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v9 = [(VTPreferences *)self _getVoiceTriggerEnabledKeyWithDeviceType:type];
  v10 = [(VTPreferences *)self _getVoiceTriggerEnabledDidChangeNotificationStringWithDeviceType:type];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  CFPreferencesSetAppValue(v9, v11, @"com.apple.voicetrigger");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v12 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger");
  v13 = v12;
  if (v12 && [v12 BOOLValue] == enabledCopy || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", enabledCopy), v14 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v14, @"com.apple.voicetrigger"), v14, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v15 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v15) != 0) && objc_msgSend(v15, "BOOLValue") == enabledCopy || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", enabledCopy), v16 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v16, @"com.apple.voicetrigger"), v16, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v17 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v17) != 0) && objc_msgSend(v17, "BOOLValue") == enabledCopy || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", enabledCopy), v18 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v18, @"com.apple.voicetrigger"), v18, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v19 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v19) != 0) && objc_msgSend(v19, "BOOLValue") == enabledCopy || (v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", enabledCopy), v20 = objc_claimAutoreleasedReturnValue(), CFPreferencesSetAppValue(v9, v20, @"com.apple.voicetrigger"), v20, CFPreferencesAppSynchronize(@"com.apple.voicetrigger"), v21 = CFPreferencesCopyAppValue(v9, @"com.apple.voicetrigger"), (v13 = v21) != 0) && objc_msgSend(v21, "BOOLValue") == enabledCopy)
  {
  }

  else
  {

    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67240192;
      v25[1] = enabledCopy;
      _os_log_error_impl(&dword_223A31000, v22, OS_LOG_TYPE_ERROR, "Voice trigger state incorrect, expected %{public}d", v25, 8u);
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v23 = dispatch_time(0, 50000000);
  dispatch_after(v23, MEMORY[0x277D85CD0], &__block_literal_global_99);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v10, senderCopy, 0, 1u);

  [(VTPreferences *)self _logMetadataForVTEnabled:enabledCopy];
}

- (void)setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender deviceType:(unint64_t)type endpointId:(id)id
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  idCopy = id;
  v12 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    uUIDString = [idCopy UUIDString];
    v15[0] = 67240706;
    v15[1] = enabledCopy;
    v16 = 2114;
    v17 = uUIDString;
    v18 = 2050;
    typeCopy = type;
    _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "setVoiceTriggerEnabled : %{public}d, endpoint : %{public}@, deviceType : %{public}lu", v15, 0x1Cu);
  }

  [(VTPreferences *)self _setVoiceTriggerEnabled:enabledCopy sender:senderCopy deviceType:type endpointId:idCopy];
}

- (void)setVoiceTriggerEnabled:(BOOL)enabled sender:(id)sender endpointId:(id)id
{
  idCopy = id;
  if (id)
  {
    id = 2;
  }

  [(VTPreferences *)self setVoiceTriggerEnabled:enabled sender:sender deviceType:id endpointId:idCopy];
}

- (void)_setCanUseVoiceTriggerDuringPhoneCall:(BOOL)call sender:(id)sender
{
  callCopy = call;
  v5 = MEMORY[0x277CCABB0];
  object = sender;
  v6 = [v5 numberWithBool:callCopy];
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)type endpointId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = [(VTPreferences *)self _isNonEndpointDeviceType:type];
  if (!idCopy && v7)
  {
    bOOLValue = [(VTPreferences *)self _voiceTriggerEnabledWithDeviceType:type];
    goto LABEL_13;
  }

  if (type != 2 || !idCopy)
  {
    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = idCopy;
      v17 = 2050;
      typeCopy = type;
      _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Wrong input argument : endpointId(%{public}@), deviceType(%{public}lu)", &v15, 0x16u);
    }

    goto LABEL_12;
  }

  if ([(VTPreferences *)self _storeModeEnabled])
  {
LABEL_12:
    bOOLValue = 0;
    goto LABEL_13;
  }

  v9 = [(VTPreferences *)self getPreferencesForEndpoint:idCopy fromPreferenceDomain:@"com.apple.voicetrigger" error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"VoiceTrigger Enabled"];
    v12 = v11;
    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

LABEL_13:

  return bOOLValue;
}

- (BOOL)_voiceTriggerEnabledWithDeviceType:(unint64_t)type
{
  v4 = [(VTPreferences *)self _getVoiceTriggerEnabledKeyWithDeviceType:type];
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v5 = CFPreferencesCopyAppValue(v4, @"com.apple.voicetrigger");
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    [(VTPreferences *)self _storeModeEnabled];
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)remoteDarwinWasEverConnected
{
  v2 = CFPreferencesCopyAppValue(@"Remote Darwin Ever Connected", @"com.apple.voicetrigger.notbackedup");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)voiceTriggerWasEverUsed
{
  v2 = CFPreferencesCopyAppValue(@"VoiceTriggerEverUsed", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)voiceTriggerEnabledForEndpointId:(id)id
{
  idCopy = id;
  if (id)
  {
    id = 2;
  }

  return [(VTPreferences *)self voiceTriggerEnabledWithDeviceType:id endpointId:idCopy];
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

+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"kVTDeviceCategory_Unknown";
  }

  else
  {
    return off_2784EC8D0[type - 1];
  }
}

- (id)setPreferences:(id)preferences forEndpoint:(id)endpoint inPreferenceDomain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  endpointCopy = endpoint;
  domainCopy = domain;
  v10 = domainCopy;
  if (preferencesCopy && endpointCopy && domainCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dictionaryForKey:@"RemoraDevices"];
      dictionary = [v13 mutableCopy];

      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      uUIDString = [endpointCopy UUIDString];
      [dictionary setObject:preferencesCopy forKey:uUIDString];

      [v12 setObject:dictionary forKey:@"RemoraDevices"];
    }

    v16 = 0;
  }

  else
  {
    v17 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v19 = 138478339;
      v20 = preferencesCopy;
      v21 = 2113;
      v22 = endpointCopy;
      v23 = 2113;
      v24 = v10;
      _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Unexpected Input (pref: %{private}@ endpointId: %{private}@ preferenceDomain: %{private}@).", &v19, 0x20u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:1 userInfo:0];
  }

  return v16;
}

- (id)getPreferencesForEndpoint:(id)endpoint fromPreferenceDomain:(id)domain error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  domainCopy = domain;
  v9 = domainCopy;
  if (endpointCopy && domainCopy)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dictionaryForKey:@"RemoraDevices"];
      v13 = [v12 mutableCopy];

      if (v13)
      {
        uUIDString = [endpointCopy UUIDString];
        v15 = [v13 objectForKey:uUIDString];

        if (!v15)
        {
          v18 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            uUIDString2 = [endpointCopy UUIDString];
            v25 = 138477827;
            v26 = uUIDString2;
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
          uUIDString3 = [endpointCopy UUIDString];
          v25 = 138477827;
          v26 = uUIDString3;
          _os_log_error_impl(&dword_223A31000, v23, OS_LOG_TYPE_ERROR, "Saved voice trigger preferences for endpoint %{private}@ is not a dictionary.", &v25, 0xCu);
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:objc_msgSend(&unk_283715470 userInfo:{"unsignedIntegerValue"), 0}];
          *error = v15 = 0;
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
    v26 = endpointCopy;
    v27 = 2113;
    v28 = v9;
    _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Unexpected Input (endpointId: %{private}@ preferenceDomain: %{private}@).", &v25, 0x16u);
    if (error)
    {
      goto LABEL_10;
    }
  }

  else if (error)
  {
LABEL_10:
    [MEMORY[0x277CCA9B8] errorWithDomain:VTErrorDomain code:1 userInfo:0];
    *error = v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

@end