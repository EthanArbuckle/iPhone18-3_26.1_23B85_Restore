@interface VSPostInstallService
- (void)clearSynthesisCache;
- (void)registerPostInstallActivity;
- (void)resetMobileAssetDefaults;
@end

@implementation VSPostInstallService

- (void)clearSynthesisCache
{
  v2 = +[VSSpeechCache defaultCacheStore];
  [v2 deleteCache];
}

- (void)resetMobileAssetDefaults
{
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableMobileAssetURLReset = [standardInstance disableMobileAssetURLReset];

  v4 = VSGetLogEvent();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (disableMobileAssetURLReset)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "Defaults disables reset, skip resetting MobileAsset default URL", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "Resetting MobileAsset default URL", v6, 2u);
    }

    MEMORY[0x2743CD220](@"com.apple.MobileAsset.VoiceServicesVocalizerVoice", 0);
    MEMORY[0x2743CD220](@"com.apple.MobileAsset.VoiceServices.CustomVoice", 0);
    MEMORY[0x2743CD220](@"com.apple.MobileAsset.VoiceServices.GryphonVoice", 0);
    MEMORY[0x2743CD220](@"com.apple.MobileAsset.VoiceServices.VoiceResources", 0);
    ASSetAssetServerURLForAssetType();
    ASSetAssetServerURLForAssetType();
    ASSetAssetServerURLForAssetType();
    ASSetAssetServerURLForAssetType();
    ASSetDefaultAssetServerURLForAssetType();
    ASSetDefaultAssetServerURLForAssetType();
    ASSetDefaultAssetServerURLForAssetType();
    ASSetDefaultAssetServerURLForAssetType();
  }
}

- (void)registerPostInstallActivity
{
  v2 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__VSPostInstallService_registerPostInstallActivity__block_invoke;
  handler[3] = &unk_279E4B700;
  handler[4] = self;
  xpc_activity_register("com.apple.voiced.postInstall", v2, handler);
}

void __51__VSPostInstallService_registerPostInstallActivity__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v5 = state;
    if (state)
    {
      v15 = VSGetLogEvent();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v30 = v5;
        _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected xpc activity state %d for 'com.apple.voiced.postInstall'", buf, 8u);
      }
    }

    else
    {
      v6 = xpc_activity_copy_criteria(v3);
      if (v6)
      {

        goto LABEL_17;
      }

      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86328], 1);
      xpc_activity_set_criteria(v3, v15);
      v16 = VSGetLogEvent();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Registered xpc activity com.apple.voiced.postInstall", buf, 2u);
      }
    }

    goto LABEL_17;
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "Running activity com.apple.voiced.postInstall", buf, 2u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__VSPostInstallService_registerPostInstallActivity__block_invoke_290;
  v27[3] = &unk_279E4BAC8;
  v8 = v3;
  v28 = v8;
  v9 = MEMORY[0x2743CD880](v27);
  [*(a1 + 32) resetMobileAssetDefaults];
  v10 = [MEMORY[0x277D79950] sharedManager];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __51__VSPostInstallService_registerPostInstallActivity__block_invoke_292;
  v25 = &unk_279E4B6D8;
  v11 = v8;
  v26 = v11;
  v12 = [v10 migrateAssetsWithProgress:&v22];

  if ((v12 & 1) != 0 || (v13 = [VSDownloadService alloc], v14 = [(VSDownloadService *)v13 initWithType:2, v22, v23, v24, v25], [(VSDownloadService *)v14 updateVoicesAndVoiceResources], v14, xpc_activity_should_defer(v11)))
  {
    v9[2](v9);
  }

  else
  {
    [*(a1 + 32) clearSynthesisCache];
    if ([MEMORY[0x277D79958] isANECompilationPlatform] && (objc_msgSend(MEMORY[0x277D799C0], "isWatch") & 1) == 0)
    {
      v18 = VSGetLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v18, OS_LOG_TYPE_DEFAULT, "Re-triggering neural compiling afer OS upgrade.", buf, 2u);
      }

      v19 = dispatch_get_global_queue(9, 0);
      dispatch_async(v19, &__block_literal_global_907);
    }

    v20 = VSGetLogEvent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Migration service finished.", buf, 2u);
    }

    if (!xpc_activity_set_state(v11, 5))
    {
      v21 = VSGetLogDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v21, OS_LOG_TYPE_ERROR, "xpc activity com.apple.voiced.postInstall, failed to set state to done.", buf, 2u);
      }
    }
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
}

void __51__VSPostInstallService_registerPostInstallActivity__block_invoke_290(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2727E4000, v2, OS_LOG_TYPE_ERROR, "com.apple.voiced.postInstall is requested to be deferred.", buf, 2u);
  }

  if (xpc_activity_set_state(*(a1 + 32), 3))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Unable to set defer state for com.apple.voiced.postInstall", v4, 2u);
    }
  }
}

BOOL __51__VSPostInstallService_registerPostInstallActivity__block_invoke_292(uint64_t a1, _BYTE *a2, float a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Assets migration progress: %f", &v9, 0xCu);
  }

  result = xpc_activity_should_defer(*(a1 + 32));
  if (result)
  {
    *a2 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end