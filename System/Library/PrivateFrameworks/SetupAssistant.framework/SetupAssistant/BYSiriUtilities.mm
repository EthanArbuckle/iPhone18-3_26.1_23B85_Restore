@interface BYSiriUtilities
+ (BOOL)currentVoiceIsDefaultVoice;
+ (BOOL)deviceSupportsSystemAssistantExperience;
+ (BOOL)isVoiceTriggerEnabled;
+ (uint64_t)deviceSupportsSystemAssistantExperience;
+ (void)requiresAcknowledgementForDataSharing:(id)a3;
@end

@implementation BYSiriUtilities

+ (void)requiresAcknowledgementForDataSharing:(id)a3
{
  v3 = a3;
  v4 = [getVTPreferencesClass() sharedPreferences];
  v5 = [v4 voiceTriggerEnabled];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v6 = getAFPreferencesClass_softClass;
  v25 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAFPreferencesClass_block_invoke;
    v19 = &unk_1E7D02730;
    v20 = &v22;
    __getAFPreferencesClass_block_invoke(&v16);
    v6 = *(v23 + 24);
  }

  v7 = v6;
  _Block_object_dispose(&v22, 8);
  v8 = [v6 sharedPreferences];
  v9 = [v8 assistantIsEnabled];

  if ((v5 | v9))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v10 = getAFSettingsConnectionClass_softClass;
    v30 = getAFSettingsConnectionClass_softClass;
    if (!getAFSettingsConnectionClass_softClass)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getAFSettingsConnectionClass_block_invoke;
      v25 = &unk_1E7D02730;
      v26 = &v27;
      __getAFSettingsConnectionClass_block_invoke(&v22);
      v10 = v28[3];
    }

    v11 = v10;
    _Block_object_dispose(&v27, 8);
    v21 = objc_alloc_init(v10);
    v12 = *(v17 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke;
    v13[3] = &unk_1E7D02708;
    v15 = &v16;
    v14 = v3;
    [v12 getSiriDataSharingOptInStatusWithCompletion:v13];

    _Block_object_dispose(&v16, 8);
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v5)
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke_cold_1(v5, v8);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a3 == 0);
  }
}

+ (BOOL)isVoiceTriggerEnabled
{
  v2 = [getVTPreferencesClass() sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  return v3;
}

+ (BOOL)deviceSupportsSystemAssistantExperience
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr;
  v9 = getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr;
  if (!getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr)
  {
    v3 = AssistantServicesLibrary();
    v7[3] = dlsym(v3, "AFDeviceSupportsSystemAssistantExperience");
    getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)currentVoiceIsDefaultVoice
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v2 = get_AFPreferencesOutputVoiceSymbolLoc_ptr;
  v22 = get_AFPreferencesOutputVoiceSymbolLoc_ptr;
  if (!get_AFPreferencesOutputVoiceSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __get_AFPreferencesOutputVoiceSymbolLoc_block_invoke;
    v17 = &unk_1E7D02730;
    v18 = &v19;
    v3 = AssistantServicesLibrary();
    v20[3] = dlsym(v3, "_AFPreferencesOutputVoice");
    get_AFPreferencesOutputVoiceSymbolLoc_ptr = *(v18[1] + 24);
    v2 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v2)
  {
    v13 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  v4 = v2();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getAFVoiceInfoClass_softClass;
  v22 = getAFVoiceInfoClass_softClass;
  if (!getAFVoiceInfoClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAFVoiceInfoClass_block_invoke;
    v17 = &unk_1E7D02730;
    v18 = &v19;
    __getAFVoiceInfoClass_block_invoke(&v14);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v7 = [v4 languageCode];
  v8 = [v5 voiceInfoForSessionLanguageCode:v7];

  v9 = [v4 name];
  v10 = [v8 name];
  v11 = [v9 isEqualToString:v10];

  return v11;
}

void __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to get Siri data sharing opt-in status: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)deviceSupportsSystemAssistantExperience
{
  dlerror();
  abort_report_np();
  return __getVTPreferencesClass_block_invoke_cold_1();
}

@end