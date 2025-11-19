@interface PLPrivacy
+ (id)_logDictionaryFromPhotosPickerClientLogFile:(id)a3;
+ (id)sharedInstance;
- (PLPrivacy)init;
- (id)photosPickerPresentedLibraryLogForClient:(id)a3;
- (id)photosPickerPresentedLibraryLogsByClient;
- (int64_t)_authStatusForScope:(int64_t)a3;
- (int64_t)_resolvePreflightStatusForScope:(int64_t)a3;
- (int64_t)checkPhotosAccessAllowedWithScope:(int64_t)a3;
- (int64_t)photosAccessAllowedWithScope:(int64_t)a3;
- (int64_t)photosAccessAllowedWithScope:(int64_t)a3 auditToken:(id *)a4 clientAuthorization:(id)a5;
- (void)_checkAuthStatusForPhotosAccessScope:(int64_t)a3 preflightStatus:(int64_t)a4 promptIfUnknown:(BOOL)a5 resultHandler:(id)a6;
- (void)_isPhotosAccessAllowedWithScope:(int64_t)a3 promptIfUnknown:(BOOL)a4 synchronous:(BOOL)a5 resultHandler:(id)a6;
- (void)_setAuthStatus:(int64_t)a3 scope:(int64_t)a4;
- (void)logPhotosAccessWithClientAuthorization:(id)a3;
- (void)logPhotosAccessWithPhotoPickerClientIdentification:(id)a3;
- (void)logPhotosAccessWithSelfAuditToken;
- (void)logPhotosPickerPresentedLibraryForClient:(id)a3 usingOptions:(int64_t)a4;
- (void)presentAsyncPromptForLimitedLibraryPickerIfNeeded;
- (void)reportPhotosUseWithClientAuthorization:(id)a3;
- (void)requestLimitedLibraryPromptForApplicationIdentifier:(id)a3;
@end

@implementation PLPrivacy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_7696);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __27__PLPrivacy_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (PLPrivacy)init
{
  v10.receiver = self;
  v10.super_class = PLPrivacy;
  v2 = [(PLPrivacy *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.accessIsolation", v3);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.photos.accessCallbacks", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v2->_cachedClientAuthLock._os_unfair_lock_opaque = 0;
    *&v2->_cachedClientAuthRightFullAccess = vdupq_n_s64(1uLL);
  }

  return v2;
}

- (void)logPhotosAccessWithSelfAuditToken
{
  v11 = *MEMORY[0x1E69E9840];
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *task_info_out = v2;
  v9 = v2;
  task_info_outCnt = 8;
  v3 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = v3;
    v5 = PLPrivacyGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(v4);
      *buf = 136446466;
      *&buf[4] = v6;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "logPhotosAccessWithSelfToken: create self token failed: %{public}s (0x%x)", buf, 0x12u);
    }
  }

  else
  {
    *buf = *task_info_out;
    *&buf[16] = v9;
    PLPrivacyAccountingLogPhotosAccess(buf);
  }
}

- (id)photosPickerPresentedLibraryLogForClient:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    v5 = [v4 privateCacheDirectoryWithSubType:14];

    if (v5)
    {
      v6 = [v5 stringByAppendingPathComponent:v3];
      v7 = [objc_opt_class() _logDictionaryFromPhotosPickerClientLogFile:v6];
    }

    else
    {
      v10 = PLPrivacyGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Failed to get photos picker client log directory", &v12, 2u);
      }

      v7 = 0;
    }

    v8 = v7;

    v9 = v8;
  }

  else
  {
    v8 = PLPrivacyGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Failed to access photos picker client log for client with invalid bundle identifier: %{public}@", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)photosPickerPresentedLibraryLogsByClient
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
  v4 = [v3 privateCacheDirectoryWithSubType:14];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v21];
    v7 = v21;

    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v16 = v6;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v4 stringByAppendingPathComponent:*(*(&v17 + 1) + 8 * i)];
            v14 = [objc_opt_class() _logDictionaryFromPhotosPickerClientLogFile:v13];
            if (v14)
            {
              [v2 addObject:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
        }

        while (v10);
        v6 = v16;
      }
    }

    else
    {
      if (PLIsErrorFileNotFound(v7))
      {
        goto LABEL_14;
      }

      v8 = PLPrivacyGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = v4;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Failed to read contents of picker client log directory %{public}@: %{public}@", buf, 0x16u);
      }
    }

LABEL_14:
    goto LABEL_17;
  }

  v7 = PLPrivacyGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Failed to get photos picker client log directory", buf, 2u);
  }

LABEL_17:

  return v2;
}

- (void)logPhotosPickerPresentedLibraryForClient:(id)a3 usingOptions:(int64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(__CFString *)v5 length])
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = PLPhotosPickerLogDateFormatter();
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [v7 stringFromDate:v8];

    [v6 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
    [v6 setObject:v9 forKeyedSubscript:@"timestamp"];
    if (a4 == 1)
    {
      v10 = MEMORY[0x1E695E118];
    }

    else
    {
      if (a4 != 2)
      {
LABEL_9:
        v11 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
        v29 = 0;
        v12 = [v11 privateCacheDirectoryWithSubType:14 createIfNeeded:1 error:&v29];
        v13 = v29;
        v14 = v13;
        if (v12)
        {
          v24 = v13;
          v15 = [v12 stringByAppendingPathComponent:v5];
          v16 = [objc_opt_class() _logDictionaryFromPhotosPickerClientLogFile:v15];
          if (v16)
          {
            [v6 addEntriesFromDictionary:v16];
          }

          v25 = v9;
          v26 = v7;
          v17 = PLPrivacyGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v31 = v5;
            v32 = 2114;
            v33 = v6;
            _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEFAULT, "Logging photos picker presented library for client %{public}@: %{public}@", buf, 0x16u);
          }

          v28 = 0;
          v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v28];
          v27 = v28;
          v19 = v28;
          v20 = [v18 writeToFile:v15 options:1073741825 error:&v27];
          v21 = v27;

          if ((v20 & 1) == 0)
          {
            v22 = PLPrivacyGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = @"write";
              *buf = 138544130;
              if (!v18)
              {
                v23 = @"encode";
              }

              v31 = v23;
              v32 = 2114;
              v33 = v6;
              v34 = 2114;
              v35 = v15;
              v36 = 2112;
              v37 = v21;
              _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "Failed to %{public}@ photos picker client log %{public}@ to %{public}@: %@", buf, 0x2Au);
            }
          }

          v9 = v25;
          v7 = v26;
          v14 = v24;
        }

        else
        {
          v15 = PLPrivacyGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v31 = v5;
            v32 = 2112;
            v33 = v14;
            _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "Failed to create photos picker client log directory for client %{public}@: %@", buf, 0x16u);
          }
        }

        goto LABEL_24;
      }

      v10 = MEMORY[0x1E695E110];
    }

    [v6 setObject:v10 forKeyedSubscript:@"pickerUsesOptions"];
    goto LABEL_9;
  }

  v6 = PLPrivacyGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = v5;
    _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Failed to create photos picker client log for client with empty bundle identifier: %{public}@", buf, 0xCu);
  }

LABEL_24:
}

- (void)logPhotosAccessWithPhotoPickerClientIdentification:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLPrivacyGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 trustedCallerBundleID];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = [v3 clientProcessIdentifier];
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, "Logging client %{public}@ (pid: %ld) access to photos via picker", buf, 0x16u);
  }

  memset(buf, 0, 32);
  if (v3)
  {
    [v3 clientAuditToken];
  }

  v9[0] = *buf;
  v9[1] = *&buf[16];
  v6 = [MEMORY[0x1E69C5A40] applicationWithAuditToken:v9];
  v7 = [MEMORY[0x1E69C5A48] accessWithAccessor:v6 forType:1];
  v8 = [MEMORY[0x1E69C5A38] sharedInstance];
  [v8 log:v7];
}

- (void)logPhotosAccessWithClientAuthorization:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isClientAuthorizedForTCCServicePhotos])
  {
    v4 = PLPrivacyGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 trustedCallerBundleID];
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = [v3 clientProcessIdentifier];
      *&buf[22] = 2114;
      *&buf[24] = @"read-write";
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, "Logging client %{public}@ (pid: %ld) access to photos (%{public}@)", buf, 0x20u);
    }

    memset(buf, 0, 32);
    if (v3)
    {
      [v3 clientAuditToken];
    }

    v6[0] = *buf;
    v6[1] = *&buf[16];
    PLPrivacyAccountingLogPhotosAccess(v6);
  }

  else
  {
    [v3 isClientAuthorizedForTCCServicePhotosAdd];
  }
}

- (void)reportPhotosUseWithClientAuthorization:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isClientAuthorizedForTCCServicePhotos])
  {
    v4 = MEMORY[0x1E69D55C8];
  }

  else
  {
    if (![v3 isClientAuthorizedForTCCServicePhotosAdd])
    {
      goto LABEL_15;
    }

    v4 = MEMORY[0x1E69D55D0];
  }

  v5 = *v4;
  if (TCCLibraryCore() && gettcc_authorization_audit_token_report_useSymbolLoc())
  {
    v6 = PLPrivacyGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v3 trustedCallerBundleID];
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = [v3 clientProcessIdentifier];
      *&buf[22] = 2114;
      *&buf[24] = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEBUG, "Reporting client %{public}@ (pid: %ld) use of photos service %{public}@", buf, 0x20u);
    }

    memset(buf, 0, 32);
    if (v3)
    {
      [v3 clientAuditToken];
    }

    v8 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PLPrivacy_reportPhotosUseWithClientAuthorization___block_invoke;
    v11[3] = &unk_1E7931B10;
    v13 = v5;
    v14 = *buf;
    v15 = *&buf[16];
    v12 = v3;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = PLPrivacyGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 trustedCallerBundleID];
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = [v3 clientProcessIdentifier];
      *&buf[22] = 2114;
      *&buf[24] = v5;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Unable to report client %{public}@ (pid: %ld) use of photos service %{public}@", buf, 0x20u);
    }
  }

LABEL_15:
}

void __52__PLPrivacy_reportPhotosUseWithClientAuthorization___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v15 = *(a1 + 48);
  v16 = v3;
  v4 = gettcc_authorization_audit_token_report_useSymbolLoc();
  if (!v4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool pl_tcc_authorization_audit_token_report_use(CFStringRef _Nonnull, audit_token_t, CFDictionaryRef _Nullable)"}];
    [v10 handleFailureInFunction:v11 file:@"PLPrivacy.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }

  *buf = v15;
  *&buf[16] = v16;
  v5 = v4(v2, buf, 0);
  v6 = PLPrivacyGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) trustedCallerBundleID];
    v8 = [*(a1 + 32) clientProcessIdentifier];
    v9 = *(a1 + 40);
    *buf = 138544130;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    *&buf[24] = v9;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "Reported client %{public}@ (pid: %ld) use of photos service %{public}@ (rv=%d)", buf, 0x26u);
  }
}

- (void)requestLimitedLibraryPromptForApplicationIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLPrivacy.m" lineNumber:711 description:{@"Invalid parameter not satisfying: %@", @"applicationIdentifier"}];
  }

  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLPrivacy.m" lineNumber:712 description:@"requestLimitedLibraryPromptForApplicationIdentifier: can only be called within assetsd"];
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLPrivacy_requestLimitedLibraryPromptForApplicationIdentifier___block_invoke;
  block[3] = &unk_1E79329F0;
  v11 = v5;
  v7 = v5;
  dispatch_sync(isolationQueue, block);
}

void __65__PLPrivacy_requestLimitedLibraryPromptForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v2 dictionaryForKey:@"PLLimitedLibraryApplicationEntries"];

  if (v6)
  {
    v3 = [v6 mutableCopy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
  }

  v4 = v3;
  [v3 setObject:@"ForcePrompt" forKeyedSubscript:*(a1 + 32)];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v5 setObject:v4 forKey:@"PLLimitedLibraryApplicationEntries"];
}

- (void)presentAsyncPromptForLimitedLibraryPickerIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = [(PLPrivacy *)self hasHandledLimitedLibraryReprompt];
  if ((v6[3] & 1) == 0)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
    {
      v3 = dispatch_get_global_queue(0, 0);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __62__PLPrivacy_presentAsyncPromptForLimitedLibraryPickerIfNeeded__block_invoke;
      v4[3] = &unk_1E7932A58;
      v4[4] = self;
      v4[5] = &v5;
      dispatch_async(v3, v4);
    }
  }

  _Block_object_dispose(&v5, 8);
}

void __62__PLPrivacy_presentAsyncPromptForLimitedLibraryPickerIfNeeded__block_invoke(uint64_t a1)
{
  if (PLShouldPreventAutomaticLimitedAccessAlert_onceToken != -1)
  {
    dispatch_once(&PLShouldPreventAutomaticLimitedAccessAlert_onceToken, &__block_literal_global_197);
  }

  if (PLShouldPreventAutomaticLimitedAccessAlert_shouldPreventAlert == 1)
  {
    [*(a1 + 32) setHasHandledLimitedLibraryReprompt:1];
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_10;
  }

  if ((PLIsClientApplicationStateReadyForLimitedLibraryPickerReprompt() & 1) == 0)
  {
    v2 = PLPrivacyGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_DEFAULT, "Application state is not ready for limited library picker re-prompt", buf, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v3 = *(a1 + 40);
  if ((*(*(v3 + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__PLPrivacy_presentAsyncPromptForLimitedLibraryPickerIfNeeded__block_invoke_68;
    v12[3] = &unk_1E7932A58;
    v12[4] = v4;
    v12[5] = v3;
    dispatch_sync(v5, v12);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      if (*(*(a1 + 32) + 48) || (v6 = objc_alloc_init(PLNonBindingAssetsdClient), [(PLNonBindingAssetsdClient *)v6 privacySupportClient], v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), v9 = *(v8 + 48), *(v8 + 48) = v7, v9, v6, *(*(a1 + 32) + 48)))
      {
        v10 = PLPrivacyGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "Presenting limited library picker re-prompt", buf, 2u);
        }

        [*(*(a1 + 32) + 48) presentLimitedLibraryPickerRepromptWithCompletionHandler:&__block_literal_global_73_7669];
      }

      else
      {
        v11 = PLPrivacyGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Failed to message privacy support client to reprompt alert", buf, 2u);
        }
      }
    }
  }
}

uint64_t __62__PLPrivacy_presentAsyncPromptForLimitedLibraryPickerIfNeeded__block_invoke_68(uint64_t a1)
{
  result = [*(a1 + 32) hasHandledLimitedLibraryReprompt];
  if ((result & 1) != 0 || (result = [*(a1 + 32) _authStatusForScope:7], result != 3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(a1 + 32);

    return [v3 setHasHandledLimitedLibraryReprompt:1];
  }

  return result;
}

void __62__PLPrivacy_presentAsyncPromptForLimitedLibraryPickerIfNeeded__block_invoke_70(uint64_t a1, int a2)
{
  if (a2)
  {

    PLPresentLimitedLibraryPicker(0);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = PLPrivacyGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEBUG, "Skipping limited library picker, will keep current selection", v5, 2u);
    }
  }
}

- (int64_t)photosAccessAllowedWithScope:(int64_t)a3 auditToken:(id *)a4 clientAuthorization:(id)a5
{
  v6 = tcc_authorization_check_audit_token();
  if (v6 >= 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = &unk_1AAA8F588;
  if (a3 <= 1)
  {
    v8 = qword_1AAA8F5B0;
  }

  result = v8[v7];
  if (a3 == 1)
  {
    if ((result & 3) != 0)
    {
      v10 = tcc_authorization_check_audit_token();
      if (v10 >= 5)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 2)
      {
        v11 = 4;
      }

      return qword_1AAA8F5B0[v11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)photosAccessAllowedWithScope:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PLPrivacy_photosAccessAllowedWithScope___block_invoke;
  v5[3] = &unk_1E79328E0;
  v5[4] = &v6;
  [(PLPrivacy *)self _isPhotosAccessAllowedWithScope:a3 promptIfUnknown:0 synchronous:1 resultHandler:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)checkPhotosAccessAllowedWithScope:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PLPrivacy_checkPhotosAccessAllowedWithScope___block_invoke;
  v5[3] = &unk_1E79328E0;
  v5[4] = &v6;
  [(PLPrivacy *)self _isPhotosAccessAllowedWithScope:a3 promptIfUnknown:1 synchronous:1 resultHandler:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_isPhotosAccessAllowedWithScope:(int64_t)a3 promptIfUnknown:(BOOL)a4 synchronous:(BOOL)a5 resultHandler:(id)a6
{
  v10 = a6;
  isolationQueue = self->_isolationQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PLPrivacy__isPhotosAccessAllowedWithScope_promptIfUnknown_synchronous_resultHandler___block_invoke;
  v13[3] = &unk_1E7931AC8;
  v14 = v10;
  v15 = a3;
  v16 = a5;
  v17 = a4;
  v13[4] = self;
  v12 = v10;
  dispatch_sync(isolationQueue, v13);
}

void __87__PLPrivacy__isPhotosAccessAllowedWithScope_promptIfUnknown_synchronous_resultHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = [*(a1 + 32) _resolvePreflightStatusForScope:*(a1 + 48)];
  v2 = PLPrivacyGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = PLStringFromPhotosAccessScope(*(a1 + 48));
    v4 = v14[3];
    *buf = 138543618;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_DEBUG, "_isPhotosAccessAllowedWithScope:%{public}@ resolved preflight status as %d", buf, 0x12u);
  }

  v5 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [v5 _checkAuthStatusForPhotosAccessScope:*(a1 + 48) preflightStatus:v14[3] promptIfUnknown:*(a1 + 57) resultHandler:*(a1 + 40)];
  }

  else
  {
    v6 = v5[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PLPrivacy__isPhotosAccessAllowedWithScope_promptIfUnknown_synchronous_resultHandler___block_invoke_67;
    block[3] = &unk_1E7931AA0;
    v10 = &v13;
    block[4] = v5;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 57);
    v9 = v7;
    dispatch_async(v6, block);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __87__PLPrivacy__isPhotosAccessAllowedWithScope_promptIfUnknown_synchronous_resultHandler___block_invoke_67(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _authStatusForScope:*(a1 + 56)];
    v2 = *(*(*(a1 + 48) + 8) + 24);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _checkAuthStatusForPhotosAccessScope:v3 preflightStatus:v2 promptIfUnknown:v4 resultHandler:v6];
}

- (void)_checkAuthStatusForPhotosAccessScope:(int64_t)a3 preflightStatus:(int64_t)a4 promptIfUnknown:(BOOL)a5 resultHandler:(id)a6
{
  v6 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = v10;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = a4;
  if (!a4)
  {
    v13 = TCCAccessRestricted() != 0;
    goto LABEL_23;
  }

  if (a4 != 1)
  {
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v12 = TCCAccessRestricted();
  v13 = v12 != 0;
  if (!v6 || v12)
  {
LABEL_23:
    if (!v11)
    {
      goto LABEL_33;
    }

    if (v13)
    {
      v21 = 3;
LABEL_32:
      v11[2](v11, v21);
      goto LABEL_33;
    }

LABEL_27:
    v22 = v34[3];
    if (v22 > 4)
    {
      v21 = 1;
    }

    else
    {
      v23 = qword_1AAA8F5B0;
      if (a3 > 1)
      {
        v23 = &unk_1AAA8F588;
      }

      v21 = v23[v22];
    }

    goto LABEL_32;
  }

  v14 = a3;
  if (a3 == 1)
  {
    if (PLHasPhotoLibraryAddUsageDescription_onceToken != -1)
    {
      dispatch_once(&PLHasPhotoLibraryAddUsageDescription_onceToken, &__block_literal_global_214);
    }

    if (PLHasPhotoLibraryAddUsageDescription_hasUsageDescription)
    {
      goto LABEL_13;
    }

    if (PLHasPhotoLibraryUsageDescription_onceToken != -1)
    {
      dispatch_once(&PLHasPhotoLibraryUsageDescription_onceToken, &__block_literal_global_219_4023);
    }

    if (PLHasPhotoLibraryUsageDescription_hasUsageDescription != 1 || TCCAccessRestricted())
    {
LABEL_13:
      v14 = 1;
    }

    else
    {
      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1AA9BD000, v24, OS_LOG_TYPE_DEFAULT, "Missing NSPhotoLibraryAddUsageDescription, will try photos access instead of add-only", &buf, 2u);
      }

      v14 = 7;
    }
  }

  v15 = PLPrivacyGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PLStringFromPhotosAccessScope(v14);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEFAULT, "TCCAccessRequest %{public}@", &buf, 0xCu);
  }

  v17 = dispatch_semaphore_create(0);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __96__PLPrivacy__checkAuthStatusForPhotosAccessScope_preflightStatus_promptIfUnknown_resultHandler___block_invoke;
  v28 = &unk_1E7931A78;
  v29 = self;
  v31 = &v33;
  v32 = a3;
  v18 = v17;
  v30 = v18;
  v19 = &v25;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v38 = __PLTCCAuthorizationRequest_block_invoke;
  v39 = &unk_1E7931B38;
  v40 = v19;
  v20 = v19;
  tcc_authorization_request();

  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  if (v11)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if (a3 >= 2 && (PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0 && v34[3] == 3)
    {
      [(PLPrivacy *)self setHasHandledLimitedLibraryReprompt:1, v25, v26, v27, v28, v29];
      PLPresentLimitedLibraryPicker(1);
    }

    goto LABEL_27;
  }

LABEL_33:
  _Block_object_dispose(&v33, 8);
}

intptr_t __96__PLPrivacy__checkAuthStatusForPhotosAccessScope_preflightStatus_promptIfUnknown_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setAuthStatus:a2 scope:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v4 = PLPrivacyGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, "TCCAccessRequest returned %d", v6, 8u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (int64_t)_authStatusForScope:(int64_t)a3
{
  os_unfair_lock_lock(&self->_cachedClientAuthLock);
  cachedClientAuthRightFullAccess = self->_cachedClientAuthRightFullAccess;
  if (a3 == 1 && (cachedClientAuthRightFullAccess - 2) >= 3)
  {
    cachedClientAuthRightFullAccess = self->_cachedClientAuthRightAddOnly;
  }

  os_unfair_lock_unlock(&self->_cachedClientAuthLock);
  return cachedClientAuthRightFullAccess;
}

- (void)_setAuthStatus:(int64_t)a3 scope:(int64_t)a4
{
  os_unfair_lock_lock(&self->_cachedClientAuthLock);
  if (a4 == 1 || (self->_cachedClientAuthRightFullAccess = a3, a3 == 2))
  {
    self->_cachedClientAuthRightAddOnly = a3;
  }

  os_unfair_lock_unlock(&self->_cachedClientAuthLock);
}

- (int64_t)_resolvePreflightStatusForScope:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [(PLPrivacy *)self _authStatusForScope:a3];
  if (v5 == 1)
  {
    v6 = tcc_authorization_preflight();
    if (v6 >= 5)
    {
      v5 = 1;
    }

    else
    {
      v5 = v6;
    }
  }

  if (a3 != 1 || v5 == 2)
  {
    v7 = self;
    v8 = v5;
    v9 = a3;
  }

  else if (tcc_authorization_preflight() == 2)
  {
    v5 = 2;
    v7 = self;
    v8 = 2;
    v9 = 7;
  }

  else
  {
    v7 = self;
    v8 = v5;
    v9 = 1;
  }

  [(PLPrivacy *)v7 _setAuthStatus:v8 scope:v9];
  return v5;
}

+ (id)_logDictionaryFromPhotosPickerClientLogFile:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3 options:0 error:&v15];
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v14 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v14];
    v8 = v14;

    if (v7)
    {
      v9 = _ValidatedClientLogFromDictionary(v7);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v5;
  }

  v10 = PLPrivacyGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = @"read";
    *buf = 138543874;
    if (!v4)
    {
      v11 = @"decode";
    }

    v17 = v11;
    v18 = 2114;
    v19 = v3;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Failed to %{public}@ photos picker client log from %{public}@: %@", buf, 0x20u);
  }

  v7 = 0;
  v9 = 0;
LABEL_10:
  v12 = v9;

  return v9;
}

@end