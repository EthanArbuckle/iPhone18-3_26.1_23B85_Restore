@interface UAFCommonUtilities
+ (BOOL)_getPopulationMapping:(id)a3 toAudience:(id *)a4 toServer:(id *)a5;
+ (BOOL)_setUAFPopulation:(id)a3 forAssetTypes:(id)a4 url:(id)a5;
+ (BOOL)deviceSupportAndUseHybridASR;
+ (BOOL)deviceSupportAssistantEngine;
+ (BOOL)deviceSupportFullUOD;
+ (BOOL)gmsAllowsAssets;
+ (BOOL)gmsWantsAssets;
+ (BOOL)isAssistantEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isFullUODSupportedForStatus:(id)a3 language:(id)a4;
+ (BOOL)isGameModeEnabled;
+ (BOOL)isHybridUODSupportedForStatus:(id)a3 language:(id)a4;
+ (BOOL)isInexpensiveNetworkAvailable;
+ (BOOL)isInternalInstall;
+ (BOOL)isSiriknowledgedSupported;
+ (BOOL)isTop13Locale:(id)a3;
+ (BOOL)isUODAttentionRequired:(id)a3;
+ (BOOL)setUAFPallasURL:(id)a3 assetSet:(id)a4;
+ (BOOL)setUAFPopulation:(id)a3;
+ (BOOL)setUAFPopulation:(id)a3 assetSet:(id)a4;
+ (BOOL)setUAFPopulation:(id)a3 url:(id)a4;
+ (id)_getAssetTypeFromConfig;
+ (id)_getInternalBaseConfigDir;
+ (id)bestEffortSerializeDictToJSONStr:(id)a3 error:(id *)a4;
+ (id)bundle;
+ (id)copyBootSessionUUID;
+ (id)currentAssistantLanguage;
+ (id)experimentIdentifiersTrialClient:(id)a3 trialNamespace:(id)a4;
+ (id)getAutoAssetType:(id)a3;
+ (id)getDefaultStoragePath;
+ (id)getDirectoryPath:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5;
+ (id)getFreeDiskSpaceInBytes;
+ (id)getISO8601Timestamp:(id)a3 withFractionalSeconds:(BOOL)a4;
+ (id)getMAPath:(int64_t)a3;
+ (id)getPWUID:(id)a3 error:(id *)a4;
+ (id)getUAFPallasURLForAssetSet:(id)a3;
+ (id)getUAFPallasURLForAssetType:(id)a3;
+ (id)getUAFPopulationForAssetSet:(id)a3;
+ (id)getUAFPopulationForAssetType:(id)a3;
+ (id)getUserDefaultStoragePath;
+ (id)getenv:(id)a3;
+ (id)mobileGestaltQuery:(id)a3;
+ (id)resetAutoAsset:(id)a3;
+ (id)resetAutoAssets;
+ (id)resetAutoAssets:(id)a3;
+ (id)serializeDictToJSONData:(id)a3 error:(id *)a4;
+ (id)serializeDictToJSONStr:(id)a3 error:(id *)a4;
+ (id)systemLanguage;
+ (id)trialClientWithProject:(id)a3;
+ (id)valueForEntitlement:(id)a3;
+ (int)openFD:(id)a3 oflags:(int)a4 mode:(int)a5 error:(id *)a6;
+ (int)rename:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (int)stat:(id)a3 withBuf:(stat *)a4 error:(id *)a5;
+ (int64_t)sandboxCheckMachEndpoint:(id)a3;
+ (unint64_t)getFreeDiskSpaceNeededInBytes:(unint64_t)a3;
+ (void)acquireClassAAssertion;
+ (void)getUID:(unsigned int *)a3 andEUID:(unsigned int *)a4;
+ (void)releaseClassAAssertion:(void *)a3;
+ (void)resetAutoAsset:(id)a3 userInfo:(id)a4;
@end

@implementation UAFCommonUtilities

+ (BOOL)isInternalInstall
{
  if (qword_1ED7D10C0 != -1)
  {
    dispatch_once(&qword_1ED7D10C0, &__block_literal_global_5);
  }

  return _MergedGlobals_4;
}

uint64_t __39__UAFCommonUtilities_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_content();
  _MergedGlobals_4 = result;
  return result;
}

+ (id)copyBootSessionUUID
{
  if (qword_1ED7D10D0 != -1)
  {
    dispatch_once(&qword_1ED7D10D0, &__block_literal_global_401);
  }

  if (qword_1ED7D10C8)
  {
    v3 = qword_1ED7D10C8;
  }

  else
  {
    v3 = &stru_1F3B6B510;
  }

  return v3;
}

void __41__UAFCommonUtilities_copyBootSessionUUID__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  *__error() = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &v11, 0, 0))
  {
    v0 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_13;
    }

    v9 = *__error();
    *buf = 136315394;
    v13 = "+[UAFCommonUtilities copyBootSessionUUID]_block_invoke";
    v14 = 1024;
    v15 = v9;
    v5 = "%s Failed to get kern.bootsessionuuid length: %{darwin.errno}d";
LABEL_15:
    _os_log_error_impl(&dword_1BCF2C000, v0, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
    goto LABEL_3;
  }

  v1 = malloc_type_calloc(v11 + 2, 1uLL, 0x100004077774924uLL);
  if (!v1)
  {
    v0 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v4 = *__error();
    *buf = 136315394;
    v13 = "+[UAFCommonUtilities copyBootSessionUUID]_block_invoke";
    v14 = 1024;
    v15 = v4;
    v5 = "%s Failed to allocate memory for boot session UUID: %{darwin.errno}d";
    goto LABEL_15;
  }

  v2 = v1;
  if (sysctlbyname("kern.bootsessionuuid", v1, &v11, 0, 0))
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      *buf = 136315394;
      v13 = "+[UAFCommonUtilities copyBootSessionUUID]_block_invoke";
      v14 = 1024;
      v15 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s Failed to get kern.bootsessionuuid data: %{darwin.errno}d", buf, 0x12u);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
    v7 = qword_1ED7D10C8;
    qword_1ED7D10C8 = v6;
  }

  free(v2);
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
}

+ (id)getDefaultStoragePath
{
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v2 = @"/private/var/db/assetsubscriptiond";
  }

  else
  {
    v2 = +[UAFCommonUtilities getUserDefaultStoragePath];
  }

  return v2;
}

+ (id)currentAssistantLanguage
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 languageCode];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v4;
}

+ (BOOL)isAssistantEnabled
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

+ (BOOL)deviceSupportAndUseHybridASR
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAFShouldRunAsrOnServerForUODSymbolLoc_ptr;
  v9 = getAFShouldRunAsrOnServerForUODSymbolLoc_ptr;
  if (!getAFShouldRunAsrOnServerForUODSymbolLoc_ptr)
  {
    v3 = AssistantServicesLibrary_1();
    v7[3] = dlsym(v3, "AFShouldRunAsrOnServerForUOD");
    getAFShouldRunAsrOnServerForUODSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)deviceSupportFullUOD
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAFDeviceSupportsSiriUODSymbolLoc_ptr;
  v9 = getAFDeviceSupportsSiriUODSymbolLoc_ptr;
  if (!getAFDeviceSupportsSiriUODSymbolLoc_ptr)
  {
    v3 = AssistantServicesLibrary_1();
    v7[3] = dlsym(v3, "AFDeviceSupportsSiriUOD");
    getAFDeviceSupportsSiriUODSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (id)bundle
{
  v2 = bundle_sUAFBundle;
  if (!bundle_sUAFBundle)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = bundle_sUAFBundle;
    bundle_sUAFBundle = v3;

    v2 = bundle_sUAFBundle;
  }

  return v2;
}

+ (BOOL)isDictationEnabled
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

+ (BOOL)deviceSupportAssistantEngine
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getAFSiriCapabilitiesServiceClientClass_softClass;
  v13 = getAFSiriCapabilitiesServiceClientClass_softClass;
  if (!getAFSiriCapabilitiesServiceClientClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = __getAFSiriCapabilitiesServiceClientClass_block_invoke;
    v16 = &unk_1E7FFD1D8;
    v17 = &v10;
    __getAFSiriCapabilitiesServiceClientClass_block_invoke(&buf);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[UAFCommonUtilities deviceSupportAssistantEngine]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Could not get AFSiriCapabilitiesServiceClient class", &buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = [v3 new];
  v5 = v4;
  if (!v4)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[UAFCommonUtilities deviceSupportAssistantEngine]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Could not initialize a new AFSiriCapabilitiesClient", &buf, 0xCu);
    }

    v5 = 0;
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [v4 shouldDownloadAssetsForSiriSystemAssistantExperienceSync];
LABEL_12:

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)isFullUODSupportedForStatus:(id)a3 language:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v9 = getAFUODStatusSupportedFullSymbolLoc_ptr;
  v17 = getAFUODStatusSupportedFullSymbolLoc_ptr;
  if (!getAFUODStatusSupportedFullSymbolLoc_ptr)
  {
    v10 = AssistantServicesLibrary_1();
    v15[3] = dlsym(v10, "AFUODStatusSupportedFull");
    getAFUODStatusSupportedFullSymbolLoc_ptr = v15[3];
    v9 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v9)
  {
    dlerror();
    v13 = abort_report_np();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v11 = v9(v7, v8);

  return v11;
}

+ (BOOL)isHybridUODSupportedForStatus:(id)a3 language:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v9 = getAFUODStatusSupportedHybridSymbolLoc_ptr;
  v17 = getAFUODStatusSupportedHybridSymbolLoc_ptr;
  if (!getAFUODStatusSupportedHybridSymbolLoc_ptr)
  {
    v10 = AssistantServicesLibrary_1();
    v15[3] = dlsym(v10, "AFUODStatusSupportedHybrid");
    getAFUODStatusSupportedHybridSymbolLoc_ptr = v15[3];
    v9 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v9)
  {
    dlerror();
    v13 = abort_report_np();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v11 = v9(v7, v8);

  return v11;
}

+ (BOOL)isTop13Locale:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAFIsTop13LocaleSymbolLoc_ptr;
  v12 = getAFIsTop13LocaleSymbolLoc_ptr;
  if (!getAFIsTop13LocaleSymbolLoc_ptr)
  {
    v5 = AssistantServicesLibrary_1();
    v10[3] = dlsym(v5, "AFIsTop13Locale");
    getAFIsTop13LocaleSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = v4(v3);

  return v6;
}

+ (BOOL)isUODAttentionRequired:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAFUODAttentionRequiredSymbolLoc_ptr;
  v12 = getAFUODAttentionRequiredSymbolLoc_ptr;
  if (!getAFUODAttentionRequiredSymbolLoc_ptr)
  {
    v5 = AssistantServicesLibrary_1();
    v10[3] = dlsym(v5, "AFUODAttentionRequired");
    getAFUODAttentionRequiredSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = v4(v3);

  return v6;
}

+ (BOOL)gmsAllowsAssets
{
  if (gmsAllowsAssets_assetsAllowed)
  {
    v2 = 1;
  }

  else
  {
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    GMAvailabilityWrapperClass = getGMAvailabilityWrapperClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__UAFCommonUtilities_gmsAllowsAssets__block_invoke;
    v7[3] = &unk_1E7FFDAB0;
    v8 = v3;
    v5 = v3;
    [GMAvailabilityWrapperClass getShouldNotDownloadOrServeAppleIntelligenceAssetsWithCompletionHandler:v7];
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v2 = gmsAllowsAssets_assetsAllowed;
  }

  return v2 & 1;
}

void __37__UAFCommonUtilities_gmsAllowsAssets__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  gmsAllowsAssets_assetsAllowed = a2 ^ 1;
  if (v5)
  {
    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[UAFCommonUtilities gmsAllowsAssets]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to determine if Apple Intelligence Assets allowed: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)gmsWantsAssets
{
  GMAvailabilityWrapperClass = getGMAvailabilityWrapperClass();

  return [GMAvailabilityWrapperClass isOkayToHaveAsset];
}

+ (void)resetAutoAsset:(id)a3 userInfo:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 autoAssetType];

  v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v5 name];
      *buf = 136315394;
      v18 = "+[UAFCommonUtilities resetAutoAsset:userInfo:]";
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Removing autoassetset %{public}@", buf, 0x16u);
    }

    v11 = +[UAFAutoAssetManager getSerialQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__UAFCommonUtilities_resetAutoAsset_userInfo___block_invoke;
    v14[3] = &unk_1E7FFD098;
    v15 = v5;
    v16 = v6;
    dispatch_sync(v11, v14);

    v8 = v15;
  }

  else if (v9)
  {
    v12 = [v5 name];
    *buf = 136315394;
    v18 = "+[UAFCommonUtilities resetAutoAsset:userInfo:]";
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s No auto asset type defined for %{public}@", buf, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __46__UAFCommonUtilities_resetAutoAsset_userInfo___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) name];
  v3 = [UAFAutoAssetManager removeAutoAssetSet:v2 fallbackAlter:0];

  if (v3 && [v3 code] != 6551)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) name];
    [v4 setObject:v3 forKeyedSubscript:v5];

    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) name];
      v16 = 136315394;
      v17 = "+[UAFCommonUtilities resetAutoAsset:userInfo:]_block_invoke";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Attempting force removing asset set %{public}@", &v16, 0x16u);
    }

    v8 = [*(a1 + 32) name];
    v9 = [UAFAutoAssetManager forceRemoveAutoAssetSet:v8];

    if (v9)
    {
      v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) name];
        v16 = 136315650;
        v17 = "+[UAFCommonUtilities resetAutoAsset:userInfo:]_block_invoke";
        v18 = 2114;
        v19 = v15;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Force remove of %{public}@ failed: %@", &v16, 0x20u);
      }

      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) name];
      v13 = [@"force-" stringByAppendingString:v12];
      [v11 setObject:v9 forKeyedSubscript:v13];
    }
  }

  [UAFAutoAssetManager eliminateAssetType:*(a1 + 32)];

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)resetAutoAsset:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  [objc_opt_class() resetAutoAsset:v4 userInfo:v5];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)resetAutoAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [objc_opt_class() resetAutoAsset:*(*(&v13 + 1) + 8 * i) userInfo:{v4, v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v4];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)resetAutoAssets
{
  v2 = objc_opt_class();
  v3 = +[UAFConfigurationManager defaultManager];
  v4 = [v3 getAllAssetSets];
  v5 = [v2 resetAutoAssets:v4];

  return v5;
}

+ (BOOL)setUAFPopulation:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _getAssetTypeFromConfig];
  v5 = [objc_opt_class() _setUAFPopulation:v3 forAssetTypes:v4 url:0];

  return v5;
}

+ (BOOL)setUAFPopulation:(id)a3 url:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _getAssetTypeFromConfig];
  v8 = [objc_opt_class() _setUAFPopulation:v6 forAssetTypes:v7 url:v5];

  return v8;
}

+ (BOOL)setUAFPopulation:(id)a3 assetSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[UAFConfigurationManager alloc] initWithURLs:0];
  v8 = [(UAFConfigurationManager *)v7 getAssetSet:v6];

  if (v8)
  {
    v9 = [v8 autoAssetType];
    if (!v9)
    {
      v14 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v10 = [objc_opt_class() isInternalInstall];
    if (((v5 == 0) & v10) != 0)
    {
      v11 = @"Carry";
    }

    else
    {
      v11 = v5;
    }

    if ((v10 & 1) != 0 || v5)
    {
      v20 = 0;
      v21 = 0;
      v15 = [objc_opt_class() _getPopulationMapping:v11 toAudience:&v21 toServer:&v20];
      v5 = v21;
      v12 = v20;
      if (!v15)
      {
        v14 = 0;
LABEL_24:

        v5 = v11;
        goto LABEL_25;
      }

      if (([(__CFString *)v11 isEqualToString:v5]& 1) == 0)
      {
        if (v12)
        {
          v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
        }

        else
        {
          v13 = 0;
        }

LABEL_19:
        v17 = [objc_opt_class() _setPallasAudience:v5 forType:v9];
        v18 = [objc_opt_class() _setPallasURL:v13 forType:v9];
        if (v17)
        {
          v16 = v17;
        }

        else
        {
          v16 = v18;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
      if (![0 isEqualToString:0])
      {
        goto LABEL_19;
      }
    }

    v16 = [objc_opt_class() _setPallasAudience:v11 forType:v9];
LABEL_23:
    v14 = v16 == 0;
    goto LABEL_24;
  }

  v14 = 0;
LABEL_26:

  return v14;
}

+ (BOOL)setUAFPallasURL:(id)a3 assetSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[UAFConfigurationManager alloc] initWithURLs:0];
  v8 = [(UAFConfigurationManager *)v7 getAssetSet:v6];

  if (v8)
  {
    v9 = [v8 autoAssetType];
    if (v9)
    {
      if (v5)
      {
        v10 = [MEMORY[0x1E695DFF8] URLWithString:v5];
      }

      else
      {
        v10 = 0;
      }

      v11 = [objc_opt_class() _setPallasURL:v10 forType:v9] == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getAutoAssetType:(id)a3
{
  v3 = a3;
  v4 = [[UAFConfigurationManager alloc] initWithURLs:0];
  v5 = [(UAFConfigurationManager *)v4 getAssetSet:v3];

  if (v5)
  {
    v6 = [v5 autoAssetType];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getUAFPopulationForAssetSet:(id)a3
{
  v3 = [UAFCommonUtilities getAutoAssetType:a3];
  if (v3)
  {
    v4 = [objc_opt_class() getUAFPopulationForAssetType:v3];
  }

  else
  {
    v4 = &stru_1F3B6B510;
  }

  return v4;
}

+ (id)getUAFPopulationForAssetType:(id)a3
{
  v3 = [UAFCommonUtilities _getPallasAudienceForType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F3B6B510;
  }

  return v5;
}

+ (id)getUAFPallasURLForAssetSet:(id)a3
{
  v3 = [UAFCommonUtilities getAutoAssetType:a3];
  if (v3)
  {
    v4 = [objc_opt_class() getUAFPallasURLForAssetType:v3];
  }

  else
  {
    v4 = &stru_1F3B6B510;
  }

  return v4;
}

+ (id)getUAFPallasURLForAssetType:(id)a3
{
  v3 = [UAFCommonUtilities _getPallasURLForType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 description];
  }

  else
  {
    v5 = &stru_1F3B6B510;
  }

  return v5;
}

+ (id)_getAssetTypeFromConfig
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[UAFConfigurationManager defaultManager];
  v3 = [v2 getAllAssetSets];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 autoAssetType];

        if (v11)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v12 = [v10 autoAssetType];
          [v7 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getUserDefaultStoragePath
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  [UAFCommonUtilities getUID:&v13 andEUID:&v13 + 4];
  *__error() = 0;
  if (HIDWORD(v13))
  {
    v2 = HIDWORD(v13);
  }

  else
  {
    v2 = v13;
  }

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  v12 = 0;
  v4 = [UAFCommonUtilities getPWUID:v3 error:&v12];
  v5 = v12;

  if (v4 && ([v4 objectForKeyedSubscript:@"HomeDirectory"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 objectForKeyedSubscript:@"HomeDirectory"];
    if (!v7)
    {
      v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "+[UAFCommonUtilities getUserDefaultStoragePath]";
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to resolve home dir path.", buf, 0xCu);
      }
    }

    v9 = [v7 stringByAppendingString:@"/Library/UnifiedAssetFramework"];
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[UAFCommonUtilities getUserDefaultStoragePath]";
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Could not retrieve homedir: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_getInternalBaseConfigDir
{
  v2 = [objc_opt_class() rootDirectory];
  v3 = [v2 stringByAppendingString:@"/AppleInternal/Library/UnifiedAssetFramework"];

  return v3;
}

+ (BOOL)_getPopulationMapping:(id)a3 toAudience:(id *)a4 toServer:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [objc_opt_class() _getInternalBaseConfigDir];
  v9 = [objc_opt_class() _getInternalConfigFilePath];
  v10 = [v8 stringByAppendingString:v9];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
  v27 = 0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11 error:&v27];
  v13 = v27;
  v14 = v13;
  if (!v12 || v13)
  {
    v18 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = [v11 absoluteURL];
      v26 = [v25 path];
      *buf = 136315650;
      v29 = "+[UAFCommonUtilities _getPopulationMapping:toAudience:toServer:]";
      v30 = 2112;
      v31 = v26;
      v32 = 2112;
      v33 = v14;
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Failed to load %@ %@", buf, 0x20u);
    }

    goto LABEL_13;
  }

  if (a5)
  {
    v15 = [v12 objectForKeyedSubscript:v7];
    *a5 = [v15 objectForKeyedSubscript:@"URL"];

    if ([*a5 isEqualToString:@"nil"])
    {
      *a5 = 0;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v16 = [v12 objectForKeyedSubscript:v7];
  *a4 = [v16 objectForKeyedSubscript:@"Audience"];

  if (([*a4 isEqualToString:@"prod"] & 1) != 0 || objc_msgSend(*a4, "isEqualToString:", @"seed"))
  {
    *a4 = @"0c88076f-c292-4dad-95e7-304db9d29d34";
LABEL_10:
    v17 = 1;
    goto LABEL_14;
  }

  if ([*a4 isEqualToString:@"nil"])
  {
    v21 = 0;
    *a4 = 0;
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    v21 = v22 == 0;
    if (v22)
    {
      v23 = v7;
      *a4 = v7;
    }

    if (*a4)
    {
      goto LABEL_10;
    }
  }

  v24 = [v12 objectForKeyedSubscript:v7];

  v17 = 1;
  if (v21 && !v24)
  {
    v18 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "+[UAFCommonUtilities _getPopulationMapping:toAudience:toServer:]";
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s %{public}@ is not a valid population", buf, 0x16u);
    }

LABEL_13:

    v17 = 0;
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)_setUAFPopulation:(id)a3 forAssetTypes:(id)a4 url:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [objc_opt_class() isInternalInstall];
    if (v7 && v10)
    {
      v44 = 0;
      v45 = 0;
      v11 = [objc_opt_class() _getPopulationMapping:v7 toAudience:&v45 toServer:&v44];
      v39 = v45;
      v12 = v44;
      v13 = v12;
      if (!v11)
      {
        v17 = 0;
LABEL_40:

        goto LABEL_41;
      }

      if (!v9)
      {
        if (v12)
        {
          v34 = v12;
          v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v12];
          if (!v14)
          {
            v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
              v48 = 2114;
              v49 = 0;
              v50 = 2114;
              v51 = v7;
              v16 = "%s Invalid Pallas server URL: %{public}@ population: %{public}@";
LABEL_43:
              _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
              goto LABEL_21;
            }

            goto LABEL_21;
          }

          goto LABEL_15;
        }

LABEL_17:
        v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
          v48 = 2114;
          v49 = v7;
          _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Setting nil default for Pallas server URL for population %{public}@", buf, 0x16u);
        }

        v34 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
      v39 = 0;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v34 = v13;
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
    if (!v14)
    {
      v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
        v48 = 2114;
        v49 = v9;
        v50 = 2114;
        v51 = v7;
        v16 = "%s Invalid Pallas override URL: %{public}@ population: %{public}@";
        goto LABEL_43;
      }

LABEL_21:
      v35 = v9;
      v37 = v7;

      v18 = 0;
      goto LABEL_22;
    }

LABEL_15:
    v18 = v14;
    v35 = v9;
    v37 = v7;
LABEL_22:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = v8;
    obj = v8;
    v19 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [objc_opt_class() _setPallasURL:v18 forType:v23];
          v25 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
          v26 = v25;
          if (v24)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v27 = MEMORY[0x1BFB33230](v24);
              *buf = 136315906;
              v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
              v48 = 2114;
              v49 = v18;
              v50 = 2114;
              v51 = v23;
              v52 = 2114;
              v53 = v27;
              _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s Failed to set Pallas URL to %{public}@ for %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
            v48 = 2114;
            v49 = v37;
            v50 = 2114;
            v51 = v18;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s Setting MobileAsset to UAF population %{public}@ Pallas URL %{public}@ for asset type %{public}@", buf, 0x2Au);
          }

          v28 = [objc_opt_class() _setPallasAudience:v39 forType:v23];
          v29 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v31 = MEMORY[0x1BFB33230](v28);
              *buf = 136315906;
              v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
              v48 = 2114;
              v49 = v39;
              v50 = 2114;
              v51 = v23;
              v52 = 2114;
              v53 = v31;
              _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s Failed to set Pallas audience to %{public}@ for %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
            v48 = 2114;
            v49 = v37;
            v50 = 2114;
            v51 = v39;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_DEFAULT, "%s Setting MobileAsset to UAF population %{public}@ Pallas Audience %{public}@ for asset type %{public}@", buf, 0x2Au);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v20);
    }

    v17 = 1;
    v8 = v36;
    v7 = v37;
    v13 = v34;
    v9 = v35;
    goto LABEL_40;
  }

  v13 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "+[UAFCommonUtilities _setUAFPopulation:forAssetTypes:url:]";
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Skipping setUAFPopulation due to nil AssetTypes", buf, 0xCu);
  }

  v17 = 1;
LABEL_41:

  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)valueForEntitlement:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    CFRelease(v5);
    if (!v6)
    {
      v7 = error;
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v15 = "+[UAFCommonUtilities valueForEntitlement:]";
          _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s SecTaskCopyValueForEntitlement() failed", buf, 0xCu);
        }

        CFRelease(error);
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v15 = "+[UAFCommonUtilities valueForEntitlement:]";
          v16 = 2114;
          v17 = v3;
          _os_log_debug_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEBUG, "%s %{public}@ entitlement not present", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "+[UAFCommonUtilities valueForEntitlement:]";
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s SecTaskCreateFromSelf() failed.", buf, 0xCu);
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int)openFD:(id)a3 oflags:(int)a4 mode:(int)a5 error:(id *)a6
{
  v7 = open([a3 fileSystemRepresentation], a4, a5);
  v8 = v7;
  if (a6 && v7 == -1)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return v8;
}

+ (int)rename:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a3 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  rename(v10, v11, v12);
  v14 = v13;
  if (a5 && v13 == -1)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return v14;
}

+ (int)stat:(id)a3 withBuf:(stat *)a4 error:(id *)a5
{
  v6 = stat([a3 UTF8String], a4);
  v7 = v6;
  if (a5 && v6 == -1)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return v7;
}

+ (void)getUID:(unsigned int *)a3 andEUID:(unsigned int *)a4
{
  if (a3)
  {
    *a3 = getuid();
  }

  if (a4)
  {
    *a4 = geteuid();
  }
}

+ (id)getPWUID:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 unsignedIntValue];
  memset(&v32, 0, sizeof(v32));
  v31 = 0;
  v7 = sysconf(71);
  if (v7 == -1)
  {
    v8 = 1024;
  }

  else
  {
    v8 = v7;
  }

  v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  if (!v9)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A798];
    v39 = *MEMORY[0x1E696A588];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memory allocation failed while looking for uid %@", v5];
    v40[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v17 = [v20 errorWithDomain:v21 code:12 userInfo:v23];

    v24 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "+[UAFCommonUtilities getPWUID:error:]";
      v37 = 2114;
      v38 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v25 = v17;
      v26 = 0;
      *a4 = v17;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = v9;
  v11 = getpwuid_r(v6, &v32, v9, v8, &v31);
  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v14 = v11;
    v33 = *MEMORY[0x1E696A588];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve user info for UID %@: %s", v5, strerror(v11)];
    v34 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v17 = [v12 errorWithDomain:v13 code:v14 userInfo:v16];

    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "+[UAFCommonUtilities getPWUID:error:]";
      v37 = 2114;
      v38 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v19 = v17;
      *a4 = v17;
    }

    free(v10);
    goto LABEL_22;
  }

  if (!v31)
  {
    free(v10);
    v17 = 0;
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v26 = objc_opt_new();
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31->pw_name];
  if (v27)
  {
    [v26 setObject:v27 forKeyedSubscript:@"Username"];
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31->pw_dir];
  if (v28)
  {
    [v26 setObject:v28 forKeyedSubscript:@"HomeDirectory"];
  }

  free(v10);

  v17 = 0;
LABEL_23:

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)mobileGestaltQuery:(id)a3
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 description];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)systemLanguage
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 countryCode];

      if (v8)
      {
        v9 = v7;

        v2 = v9;
      }
    }
  }

  v10 = [v2 languageCode];
  v11 = [v2 countryCode];

  if (v11)
  {
    v12 = [v2 countryCode];
    v13 = [v10 stringByAppendingFormat:@"-%@", v12];

    v10 = v13;
  }

  return v10;
}

+ (id)getMAPath:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"/private/var/MobileAsset/AssetsV2";
  }

  else
  {
    return off_1E7FFDB00[a3 - 1];
  }
}

+ (id)getFreeDiskSpaceInBytes
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [UAFCommonUtilities getMAPath:3];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "+[UAFCommonUtilities getFreeDiskSpaceInBytes]";
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Using path to check for free space: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v5 = [v4 attributesOfFileSystemForPath:v2 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      v8 = 0;
      goto LABEL_7;
    }

    *buf = 136315394;
    v16 = "+[UAFCommonUtilities getFreeDiskSpaceInBytes]";
    v17 = 2112;
    v18 = v6;
    v11 = "%s #settings Error getting free disk space: %@";
    v12 = v7;
    v13 = 22;
LABEL_13:
    _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_5;
  }

  v8 = [v5 objectForKey:*MEMORY[0x1E696A3C0]];
  if (!v8)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v16 = "+[UAFCommonUtilities getFreeDiskSpaceInBytes]";
    v11 = "%s #settings Error getting free size";
    v12 = v7;
    v13 = 12;
    goto LABEL_13;
  }

LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (unint64_t)getFreeDiskSpaceNeededInBytes:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() getFreeDiskSpaceInBytes];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedLongLongValue];
    v7 = 2 * a3;
    v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "+[UAFCommonUtilities getFreeDiskSpaceNeededInBytes:]";
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Free space %llu / Download size %llu", &v12, 0x20u);
    }

    if (v7 >= v6)
    {
      v9 = v7 - v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)serializeDictToJSONData:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:11 error:a4];
    if (v6)
    {
      goto LABEL_15;
    }

    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v8 = *a4;
      }

      else
      {
        v8 = @"unknown";
      }

      *buf = 136315394;
      v15 = "+[UAFCommonUtilities serializeDictToJSONData:error:]";
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s could not serialize dictionary to json: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (a4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v19[0] = @"not a valid dictionary for JSON serialization";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = [v9 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5100 userInfo:v10];
    }

    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "+[UAFCommonUtilities serializeDictToJSONData:error:]";
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s not a valid dictionary for JSON serialization", buf, 0xCu);
    }
  }

  v6 = 0;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)serializeDictToJSONStr:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v7 = [UAFCommonUtilities serializeDictToJSONData:v5 error:&v14];
  v8 = v14;
  v9 = v8;
  v10 = 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v7 length:"bytes") encoding:{objc_msgSend(v7, "length"), 4}];
  }

  objc_autoreleasePoolPop(v6);
  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  return v10;
}

+ (id)bestEffortSerializeDictToJSONStr:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [UAFCommonUtilities serializeDictToJSONStr:v5 error:a4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v21 = a4;
    v9 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v5 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = MEMORY[0x1E696ACB0];
          v17 = [v5 objectForKeyedSubscript:{v15, v21}];
          LODWORD(v16) = [v16 isValidJSONObject:v17];

          if (v16)
          {
            [v5 objectForKeyedSubscript:v15];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"could not serialize to JSON"];
          }
          v18 = ;
          [v9 setObject:v18 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v8 = [UAFCommonUtilities serializeDictToJSONStr:v9 error:v21];

    v7 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getISO8601Timestamp:(id)a3 withFractionalSeconds:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF00] date];
  }

  v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFE8] systemTimeZone];
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 name];
      v13 = 136315394;
      v14 = "+[UAFCommonUtilities getISO8601Timestamp:withFractionalSeconds:]";
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_INFO, "%s Failed to get GMT timezone, falling back to system TZ '%{public}@'", &v13, 0x16u);
    }
  }

  if (v4)
  {
    v9 = 3955;
  }

  else
  {
    v9 = 1907;
  }

  v10 = [MEMORY[0x1E696AC80] stringFromDate:v5 timeZone:v6 formatOptions:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)trialClientWithProject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!+[UAFCommonUtilities isTrialAvailable])
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = 136315138;
    v16 = "+[UAFCommonUtilities trialClientWithProject:]";
    v9 = "%s This system doesn't support Trial. Returning nil.";
    v10 = v7;
    v11 = 12;
LABEL_17:
    _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E69DB558] projectIdFromName:v3];
  if (!v4 || (v5 = v4, (TRIProject_ProjectId_IsValidValue() & 1) == 0))
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = 136315394;
    v16 = "+[UAFCommonUtilities trialClientWithProject:]";
    v17 = 2114;
    v18 = v3;
    v9 = "%s Could not find TRIProject for %{public}@";
    v10 = v7;
    v11 = 22;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E69DB520] clientWithIdentifier:v5];
  if (v6)
  {
    v7 = v6;
    v8 = v7;
    goto LABEL_10;
  }

  v14 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "+[UAFCommonUtilities trialClientWithProject:]";
    v17 = 2114;
    v18 = v3;
    _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Could not create trial client for project %{public}@", &v15, 0x16u);
  }

  v7 = 0;
LABEL_9:
  v8 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getDirectoryPath:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!+[UAFCommonUtilities isTrialAvailable])
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "+[UAFCommonUtilities getDirectoryPath:trialNamespace:trialFactor:]";
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", &v22, 0xCu);
    }

    v10 = 0;
    goto LABEL_23;
  }

  v10 = 0;
  if (v8 && v9)
  {
    v11 = +[UAFTrialConversions entitledTrialNamespaceNames];
    if (([v11 containsObject:v8]& 1) == 0)
    {
      v13 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315650;
        v23 = "+[UAFCommonUtilities getDirectoryPath:trialNamespace:trialFactor:]";
        v24 = 2114;
        v25 = v9;
        v26 = 2114;
        v27 = v8;
        _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Not including %{public}@ as its trial Namespace %{public}@ isn't entitled", &v22, 0x20u);
      }

      goto LABEL_21;
    }

    v12 = [v7 levelForFactor:v9 withNamespaceName:v8];
    if (!v12)
    {
      v19 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "+[UAFCommonUtilities getDirectoryPath:trialNamespace:trialFactor:]";
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s No level for factor %@", &v22, 0x16u);
      }

      v13 = 0;
      goto LABEL_21;
    }

    v13 = v12;
    if ([v12 levelOneOfCase]== 101)
    {
      v14 = [v13 directoryValue];
      if (([v14 hasPath]& 1) != 0)
      {
        v15 = [v13 directoryValue];
        v16 = [v15 path];
        v17 = [v16 length];

        if (v17)
        {
          v18 = [v13 directoryValue];
          v10 = [v18 path];

LABEL_22:
LABEL_23:

          goto LABEL_24;
        }

LABEL_21:
        v10 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315650;
        v23 = "+[UAFCommonUtilities getDirectoryPath:trialNamespace:trialFactor:]";
        v24 = 2112;
        v25 = v9;
        v26 = 1024;
        LODWORD(v27) = [v13 levelOneOfCase];
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s TRILevel is not a directory type: %@ %d", &v22, 0x1Cu);
      }
    }

    goto LABEL_21;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)experimentIdentifiersTrialClient:(id)a3 trialNamespace:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (+[UAFCommonUtilities isTrialAvailable])
  {
    v7 = +[UAFTrialConversions entitledTrialNamespaceNames];
    if (([v7 containsObject:v6]& 1) != 0)
    {
      v8 = [v5 experimentIdentifiersWithNamespaceName:v6];
      goto LABEL_10;
    }

    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[UAFCommonUtilities experimentIdentifiersTrialClient:trialNamespace:]";
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Not including trial Namespace %{public}@ isn't entitled", &v12, 0x16u);
    }
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "+[UAFCommonUtilities experimentIdentifiersTrialClient:trialNamespace:]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", &v12, 0xCu);
    }
  }

  v8 = 0;
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)isInexpensiveNetworkAvailable
{
  v2 = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
  v3 = [v2 path];

  if (([v3 status] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v4 = [v3 isExpensive] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (void)acquireClassAAssertion
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"MKBAssertionKey";
  v11[1] = @"MKBAssertionTimeout";
  v12[0] = @"Other";
  v12[1] = &unk_1F3B731A0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v3 = MKBDeviceLockAssertion();
  if (!v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "+[UAFCommonUtilities acquireClassAAssertion]";
      v9 = 2114;
      v10 = 0;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Could not obtain device lock assertion: %{public}@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)releaseClassAAssertion:(void *)a3
{
  if (a3)
  {
    CFRelease(a3);
  }
}

+ (BOOL)isGameModeEnabled
{
  out_token = 0;
  v3 = 0;
  notify_register_check("com.apple.system.console_mode_changed", &out_token);
  notify_get_state(out_token, &v3);
  return v3 != 0;
}

+ (id)getenv:(id)a3
{
  v3 = getenv([a3 UTF8String]);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  return v3;
}

+ (int64_t)sandboxCheckMachEndpoint:(id)a3
{
  v3 = a3;
  getpid();
  [v3 UTF8String];

  return sandbox_check();
}

+ (BOOL)isSiriknowledgedSupported
{
  if (qword_1ED7D10D8 != -1)
  {
    dispatch_once(&qword_1ED7D10D8, &__block_literal_global_405);
  }

  return byte_1ED7D10B9;
}

uint64_t __47__UAFCommonUtilities_isSiriknowledgedSupported__block_invoke()
{
  memset(v2, 0, sizeof(v2));
  result = [UAFCommonUtilities stat:@"/usr/libexec/siriknowledged" withBuf:v2 error:0];
  v1 = !result && (WORD2(v2[0]) & 0xF000) == 0x8000;
  byte_1ED7D10B9 = v1;
  return result;
}

@end