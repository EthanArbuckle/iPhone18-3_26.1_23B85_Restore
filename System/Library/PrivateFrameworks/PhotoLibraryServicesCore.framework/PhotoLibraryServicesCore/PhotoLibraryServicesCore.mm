id PLSyndicationGetLog()
{
  if (PLSyndicationGetLog_predicate != -1)
  {
    dispatch_once(&PLSyndicationGetLog_predicate, &__block_literal_global_132);
  }

  v1 = PLSyndicationGetLog_log;

  return v1;
}

id PLResultWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);

  os_unfair_lock_unlock(a1);

  return v4;
}

id pl_result_with_autoreleasepool(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1[2](v1);
  objc_autoreleasePoolPop(v2);

  return v3;
}

uint64_t PLObjectIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

id PLSafeResultWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);
  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_1AA9BEF30(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

void pl_dispatch_once(dispatch_once_t *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_once_block_invoke;
  block[3] = &unk_1E79324A0;
  v7 = v3;
  v4 = *a1;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(a1, block);
  }
}

void PLRunWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2](v3);

  os_unfair_lock_unlock(a1);
}

void pl_dispatch_async(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_async_block_invoke;
  block[3] = &unk_1E79324A0;
  v6 = v3;
  v4 = v3;
  dispatch_async(a1, block);
}

void __pl_dispatch_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __pl_dispatch_once_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ___ensureSystemPhotoDataDirectoryPath_block_invoke()
{
  v0 = +[PLFileUtilities _defaultSystemLibraryPath];
  v1 = [v0 stringByAppendingPathComponent:@"PhotoData"];

  v2 = sPhotoDataDirectoryPath;
  sPhotoDataDirectoryPath = v1;
}

id PLLibraryBundleGetLog()
{
  if (PLLibraryBundleGetLog_predicate != -1)
  {
    dispatch_once(&PLLibraryBundleGetLog_predicate, &__block_literal_global_81);
  }

  v1 = PLLibraryBundleGetLog_log;

  return v1;
}

uint64_t PLMobileSlideShowPhotoLibraryTestingMode()
{
  if (PLMobileSlideShowPhotoLibraryTestingMode_onceToken != -1)
  {
    dispatch_once(&PLMobileSlideShowPhotoLibraryTestingMode_onceToken, &__block_literal_global_3937);
  }

  return PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode;
}

uint64_t __PLLibraryBundleGetLog_block_invoke()
{
  PLLibraryBundleGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "LibraryBundle");

  return MEMORY[0x1EEE66BB8]();
}

void __PLMobileSlideShowPhotoLibraryTestingMode_block_invoke()
{
  if (PFOSVariantHasInternalUI())
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode = [v3 integerForKey:@"PLMobileSlideShowPhotoLibraryTestingMode"];
    if (!PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode)
    {
      v0 = [MEMORY[0x1E696AE30] processInfo];
      v1 = [v0 environment];

      v2 = [v1 objectForKeyedSubscript:@"PLMobileSlideShowPhotoLibraryTestingMode"];
      PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode = [v2 integerValue];
    }
  }
}

void __PLIsReallyAssetsd_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"assetsd"];
  PLIsReallyAssetsd_isAssetsd = v0;
}

id DCIM_newPLImageWithContentsOfFile(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(NSClassFromString(@"UIImage")) initWithContentsOfFile:v1];

  return v2;
}

void ___ensureSystemDCIMDirectoryPath_block_invoke()
{
  v0 = +[PLFileUtilities _defaultSystemLibraryPath];
  v1 = [v0 stringByAppendingPathComponent:@"DCIM"];

  v2 = sDCIMDirectoryPath;
  sDCIMDirectoryPath = v1;
}

id PLBackendGetLog()
{
  if (PLBackendGetLog_predicate != -1)
  {
    dispatch_once(&PLBackendGetLog_predicate, &__block_literal_global_15);
  }

  v1 = PLBackendGetLog_log;

  return v1;
}

id PLPrivacyGetLog()
{
  if (PLPrivacyGetLog_predicate != -1)
  {
    dispatch_once(&PLPrivacyGetLog_predicate, &__block_literal_global_108);
  }

  v1 = PLPrivacyGetLog_log;

  return v1;
}

uint64_t __PLBackendGetLog_block_invoke()
{
  PLBackendGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Backend");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotosObjectLifecycleGetLog()
{
  if (PLPhotosObjectLifecycleGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotosObjectLifecycleGetLog_predicate, &__block_literal_global_117);
  }

  v1 = PLPhotosObjectLifecycleGetLog_log;

  return v1;
}

uint64_t __PLPhotosObjectLifecycleGetLog_block_invoke()
{
  PLPhotosObjectLifecycleGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PhotosObjectLifecycle");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoLibraryGetLog()
{
  if (PLPhotoLibraryGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoLibraryGetLog_predicate, &__block_literal_global_144);
  }

  v1 = PLPhotoLibraryGetLog_log;

  return v1;
}

uint64_t __PLPhotoLibraryGetLog_block_invoke()
{
  PLPhotoLibraryGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PhotoLibrary");

  return MEMORY[0x1EEE66BB8]();
}

void PLSafeRunWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2]();
  os_unfair_lock_unlock(a1);
}

void sub_1AA9C0028(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

id PLGatekeeperXPCGetLog()
{
  if (PLGatekeeperXPCGetLog_predicate != -1)
  {
    dispatch_once(&PLGatekeeperXPCGetLog_predicate, &__block_literal_global_63);
  }

  v1 = PLGatekeeperXPCGetLog_log;

  return v1;
}

void PLPrivacyAccountingLogPhotosAccess(_OWORD *a1)
{
  v1 = *MEMORY[0x1E69D55C8];
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = [MEMORY[0x1E69C5A58] accessWithAuditToken:v5 forService:v1];
  v4 = [MEMORY[0x1E69C5A38] sharedInstance];
  [v4 log:v3];
}

void PLXPCDictionarySetURL(void *a1, const char *a2, void *a3)
{
  xdict = a1;
  v5 = [a3 absoluteString];
  v6 = v5;
  if (v5)
  {
    xpc_dictionary_set_string(xdict, a2, [v5 UTF8String]);
  }
}

void __pl_dispatch_sync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_sync(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_sync_block_invoke;
  block[3] = &unk_1E79324A0;
  v6 = v3;
  v4 = v3;
  dispatch_sync(a1, block);
}

uint64_t __PLMigrationGetLog_block_invoke()
{
  PLMigrationGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Migration");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendQueryGetLog()
{
  if (PLSearchBackendQueryGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendQueryGetLog_predicate, &__block_literal_global_378);
  }

  v1 = PLSearchBackendQueryGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendQueryGetLog_block_invoke()
{
  PLSearchBackendQueryGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendQuery");

  return MEMORY[0x1EEE66BB8]();
}

id PLChangeHandlingGetLog()
{
  if (PLChangeHandlingGetLog_predicate != -1)
  {
    dispatch_once(&PLChangeHandlingGetLog_predicate, &__block_literal_global_39);
  }

  v1 = PLChangeHandlingGetLog_log;

  return v1;
}

uint64_t __PLChangeHandlingGetLog_block_invoke()
{
  PLChangeHandlingGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ChangeHandling");

  return MEMORY[0x1EEE66BB8]();
}

id PLPersistentHistoryGetLog()
{
  if (PLPersistentHistoryGetLog_predicate != -1)
  {
    dispatch_once(&PLPersistentHistoryGetLog_predicate, &__block_literal_global_99_2586);
  }

  v1 = PLPersistentHistoryGetLog_log;

  return v1;
}

uint64_t __PLPersistentHistoryGetLog_block_invoke()
{
  PLPersistentHistoryGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PersistentHistory");

  return MEMORY[0x1EEE66BB8]();
}

void __PLIsPTPD_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"ptpd"];
  PLIsPTPD_isPTPD = v0;
}

uint64_t PLIsSystemLibraryAccessProhibited()
{
  if (PLIsSystemLibraryAccessProhibited_onceToken != -1)
  {
    dispatch_once(&PLIsSystemLibraryAccessProhibited_onceToken, &__block_literal_global_127);
  }

  return _systemLibraryAccessProhibited;
}

void __PLPhysicalDeviceIsIPad_block_invoke()
{
  v0 = MGCopyAnswer();
  PLPhysicalDeviceIsIPad___isIPad = CFEqual(v0, @"iPad") != 0;
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t __PLPhotoSharingGetLog_block_invoke()
{
  PLPhotoSharingGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PhotoSharing");

  return MEMORY[0x1EEE66BB8]();
}

id PLMigrationGetLog()
{
  if (PLMigrationGetLog_predicate != -1)
  {
    dispatch_once(&PLMigrationGetLog_predicate, &__block_literal_global_87);
  }

  v1 = PLMigrationGetLog_log;

  return v1;
}

uint64_t __PLPrivacyGetLog_block_invoke()
{
  PLPrivacyGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Privacy");

  return MEMORY[0x1EEE66BB8]();
}

id PLWindowSceneDelegateGetLog()
{
  if (PLWindowSceneDelegateGetLog_predicate != -1)
  {
    dispatch_once(&PLWindowSceneDelegateGetLog_predicate, &__block_literal_global_267);
  }

  v1 = PLWindowSceneDelegateGetLog_log;

  return v1;
}

uint64_t __PLWindowSceneDelegateGetLog_block_invoke()
{
  PLWindowSceneDelegateGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "WindowSceneDelegate");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoKitGetLog()
{
  if (PLPhotoKitGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoKitGetLog_predicate, &__block_literal_global_105_2594);
  }

  v1 = PLPhotoKitGetLog_log;

  return v1;
}

uint64_t __PLPhotoKitGetLog_block_invoke()
{
  PLPhotoKitGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PhotoKit");

  return MEMORY[0x1EEE66BB8]();
}

id PLSharedLibraryGetLog()
{
  if (PLSharedLibraryGetLog_predicate != -1)
  {
    dispatch_once(&PLSharedLibraryGetLog_predicate, &__block_literal_global_285);
  }

  v1 = PLSharedLibraryGetLog_log;

  return v1;
}

uint64_t __PLSharedLibraryGetLog_block_invoke()
{
  PLSharedLibraryGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "SharedLibrary");

  return MEMORY[0x1EEE66BB8]();
}

id PLUIGetLog()
{
  if (PLUIGetLog_predicate != -1)
  {
    dispatch_once(&PLUIGetLog_predicate, &__block_literal_global_249);
  }

  v1 = PLUIGetLog_log;

  return v1;
}

uint64_t __PLUIGetLog_block_invoke()
{
  PLUIGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "UI");

  return MEMORY[0x1EEE66BB8]();
}

void pl_notify_register_dispatch_with_retry(const char *a1, int *a2, void *a3, int a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = atomic_load(sNotifyIsDisabledForShutdown);
  if ((v11 & 1) == 0)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    do
    {
      if (v13)
      {
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v20 = 1000000;
          v21 = 2080;
          v22 = a1;
          v23 = 1024;
          v24 = v12;
          v25 = 1024;
          v26 = a4;
          _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_ERROR, "Error %d occurred while trying to connect notify handler for %s. (attempt number: %d of %d)", buf, 0x1Eu);
        }

        usleep(0x186A0u);
      }

      v15 = pl_notify_register_dispatch(a1, a2, v9, v10);
      v12 = (v12 + 1);
      if (v15 != 1000000)
      {
        break;
      }

      v13 = 1;
    }

    while (v12 < a4);
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v20 = v15;
      v21 = 2082;
      v22 = a1;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_DEBUG, "notify_register_dispatch() returned %#x for %{public}s after number %d of %d", buf, 0x1Eu);
    }

    if (v15)
    {
      if (PLIsSecureCaptureExtension())
      {
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v20 = v15;
          v21 = 1024;
          LODWORD(v22) = v12;
          _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEFAULT, "notify_register_dispatch() failed for capture extension: (%#x) after %d retries", buf, 0xEu);
        }
      }

      else
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void pl_notify_register_dispatch_with_retry(const char *, int *, __strong dispatch_queue_t, int, void (^__strong)(int))"}];
        [v17 handleFailureInFunction:v18 file:@"PLDispatchHelpers.m" lineNumber:127 description:@"notify_register_dispatch() failed: (%#x) after %d retries", v15, v12];
      }
    }
  }
}

uint64_t pl_notify_register_dispatch(const char *a1, int *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __pl_notify_register_dispatch_block_invoke;
  handler[3] = &unk_1E7930138;
  v12 = v7;
  v8 = v7;
  v9 = notify_register_dispatch(a1, a2, a3, handler);

  return v9;
}

__CFString *PLBundleIdentifier()
{
  MEMORY[0x1EEE9AC00]();
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v2 = getpid();
    proc_pidpath(v2, v10, 0x1000u);
    if (strlen(v10) > 1)
    {
      v3 = MEMORY[0x1E695DFF8];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      v5 = [v3 fileURLWithPath:v4];

      v6 = [v5 path];
      LOBYTE(v4) = [PLSandboxHelper processCanReadSandboxForPath:v6];

      if (v4)
      {
        v7 = CFBundleCopyInfoDictionaryForURL(v5);
        v1 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];

        if (v1)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v8 = [MEMORY[0x1E696AE30] processInfo];
    v1 = [v8 processName];

    if ([(__CFString *)v1 isEqualToString:@"photolibraryd"])
    {

      v1 = @"com.apple.photolibraryd";
    }

    else if ([(__CFString *)v1 isEqualToString:@"photoanalysisd"])
    {

      v1 = @"com.apple.photoanalysisd";
    }

    else if ([(__CFString *)v1 isEqualToString:@"assetsd"])
    {

      v1 = @"com.apple.assetsd";
    }

    else if ([(__CFString *)v1 isEqualToString:@"replayd"])
    {

      v1 = @"com.apple.replayd";
    }
  }

LABEL_15:

  return v1;
}

void sub_1AA9C1CA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1AA9C1CEC(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v10 = objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      v11 = v10;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v11;
        _os_log_debug_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Failed to get bundle identifer for process. Exception: %@", &a9, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x1AA9C1AC8);
    }

    JUMPOUT(0x1AA9C1ACCLL);
  }

  JUMPOUT(0x1AA9C1CE4);
}

uint64_t PLQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(PLQuery);
          v15 = 24;
LABEL_38:
          objc_storeStrong((a1 + v15), v14);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !PLQueryReadFrom(v14, a2))
          {
            goto LABEL_47;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_45;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(PLSingleQuery);
          [a1 addSingleQueries:v14];
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !PLSingleQueryReadFrom(v14, a2))
          {
LABEL_47:

            return 0;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v25) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v25 & 0x7F) << v16;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_44:
          *(a1 + 8) = v22;
          goto LABEL_45;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(PLQuery);
          v15 = 16;
          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLBoolResultWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);

  os_unfair_lock_unlock(a1);
  return v4;
}

id PLRequestGetLog()
{
  if (PLRequestGetLog_predicate != -1)
  {
    dispatch_once(&PLRequestGetLog_predicate, &__block_literal_global_1273);
  }

  v1 = PLRequestGetLog_log;

  return v1;
}

void __pl_dispatch_source_set_event_handler_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

double PLPhysicalScreenSize()
{
  v0 = MGGetSInt32Answer();
  v1 = MGGetSInt32Answer();
  if (v0 != -1 && v1 != -1)
  {
    return v1;
  }

  v3 = [NSClassFromString(@"UIScreen") mainScreen];
  [v3 nativeBounds];
  v5 = v4;

  return v5;
}

void __PLPhysicalScreenScale_block_invoke()
{
  MGGetFloat32Answer();
  *&PLPhysicalScreenScale_screenScale = v0;
  if (v0 == -1.0)
  {
    v1 = [NSClassFromString(@"UIScreen") mainScreen];
    [v1 scale];
    PLPhysicalScreenScale_screenScale = v2;

    if (*&PLPhysicalScreenScale_screenScale == 1.0)
    {
      v3 = [NSClassFromString(@"UIScreen") mainScreen];
      v10 = [v3 currentMode];

      v4 = v10;
      if (v10)
      {
        [v10 size];
        v4 = v10;
        v7 = 3;
        v8 = &qword_1AAA8F478;
        while (1)
        {
          v9 = *(v8 - 1);
          if (v9 == v5 && *v8 == v6)
          {
            break;
          }

          if (v9 == v6 && *v8 == v5)
          {
            break;
          }

          v8 += 2;
          if (!--v7)
          {
            goto LABEL_13;
          }
        }

        PLPhysicalScreenScale_screenScale = 0x4000000000000000;
      }

LABEL_13:
    }
  }
}

uint64_t __PLDeviceSupportsASTC_block_invoke()
{
  result = MGGetBoolAnswer();
  PLDeviceSupportsASTC_s_hasSupport = result;
  return result;
}

void pl_dispatch_barrier_sync(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_barrier_sync_block_invoke;
  block[3] = &unk_1E79324A0;
  v6 = v3;
  v4 = v3;
  dispatch_barrier_sync(a1, block);
}

void __pl_dispatch_barrier_sync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

BOOL PLDoesIndicatorFileExistAtPath(void *a1)
{
  v1 = open([a1 fileSystemRepresentation], 4);
  v2 = v1;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  return v2 >= 0;
}

id PLUserStatusGetLog()
{
  if (PLUserStatusGetLog_predicate != -1)
  {
    dispatch_once(&PLUserStatusGetLog_predicate, &__block_literal_global_255);
  }

  v1 = PLUserStatusGetLog_log;

  return v1;
}

uint64_t __PLUserStatusGetLog_block_invoke()
{
  PLUserStatusGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "UserStatus");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLIsEDUMode()
{
  if (PLIsEDUMode_onceToken != -1)
  {
    dispatch_once(&PLIsEDUMode_onceToken, &__block_literal_global_230);
  }

  return PLIsEDUMode_isEDUMode;
}

void __PLIsEDUMode_block_invoke()
{
  v1 = [MEMORY[0x1E69DF068] sharedManager];
  if ([v1 isMultiUser])
  {
    v0 = [v1 currentUser];
    PLIsEDUMode_isEDUMode = [v0 userType] == 1;
  }

  else
  {
    PLIsEDUMode_isEDUMode = 0;
  }
}

uint64_t __PLSyndicationUIGetLog_block_invoke()
{
  PLSyndicationUIGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "SyndicationUI");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLIsLockdownMode()
{
  if (PLIsLockdownMode_onceToken != -1)
  {
    dispatch_once(&PLIsLockdownMode_onceToken, &__block_literal_global_235);
  }

  return PLIsLockdownMode_isLockdownMode;
}

void __PLIsLockdownMode_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLockdownModeManagerClass_softClass;
  v7 = getLockdownModeManagerClass_softClass;
  if (!getLockdownModeManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLockdownModeManagerClass_block_invoke;
    v3[3] = &unk_1E7932D68;
    v3[4] = &v4;
    __getLockdownModeManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  v2 = [v0 shared];
  PLIsLockdownMode_isLockdownMode = [v2 enabled];
}

void sub_1AA9C2FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!LockdownModeLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LockdownModeLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E79304A8;
    v8 = 0;
    LockdownModeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LockdownModeLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LockdownModeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLHelper.m" lineNumber:73 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLockdownModeManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLHelper.m" lineNumber:74 description:{@"Unable to find class %s", "LockdownModeManager"}];

LABEL_10:
    __break(1u);
  }

  getLockdownModeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PLPhotoSharingGetLog()
{
  if (PLPhotoSharingGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoSharingGetLog_predicate, &__block_literal_global_114);
  }

  v1 = PLPhotoSharingGetLog_log;

  return v1;
}

BOOL PLIsSharedAlbumsAllowed()
{
  if (PLIsEDUMode_onceToken != -1)
  {
    dispatch_once(&PLIsEDUMode_onceToken, &__block_literal_global_230);
  }

  v0 = PLIsEDUMode_isEDUMode;
  if (PLIsLockdownMode_onceToken != -1)
  {
    dispatch_once(&PLIsLockdownMode_onceToken, &__block_literal_global_235);
  }

  return ((v0 | PLIsLockdownMode_isLockdownMode) & 1) == 0;
}

id PLPreferencesGetLog()
{
  if (PLPreferencesGetLog_predicate != -1)
  {
    dispatch_once(&PLPreferencesGetLog_predicate, &__block_literal_global_225);
  }

  v1 = PLPreferencesGetLog_log;

  return v1;
}

BOOL PLIsFeaturedContentAllowed()
{
  v5 = *MEMORY[0x1E69E9840];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"FeaturedContentAllowed", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = PLPreferencesGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v4 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_1AA9BD000, v1, OS_LOG_TYPE_DEBUG, "Featured content allowed default not set in domain %@. Defaulting to YES", buf, 0xCu);
    }

    return 1;
  }

  return result;
}

uint64_t __PLPreferencesGetLog_block_invoke()
{
  PLPreferencesGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Preferences");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLIsChinaSKU()
{
  if (PLIsChinaSKU_onceToken != -1)
  {
    dispatch_once(&PLIsChinaSKU_onceToken, &__block_literal_global_528);
  }

  return PLIsChinaSKU_isChinaSKU;
}

uint64_t __PLIsChinaSKU_block_invoke()
{
  result = MGGetBoolAnswer();
  PLIsChinaSKU_isChinaSKU = result;
  return result;
}

id PLAppIntentsGetLog()
{
  if (PLAppIntentsGetLog_predicate != -1)
  {
    dispatch_once(&PLAppIntentsGetLog_predicate, &__block_literal_global_279);
  }

  v1 = PLAppIntentsGetLog_log;

  return v1;
}

uint64_t __PLAppIntentsGetLog_block_invoke()
{
  PLAppIntentsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AppIntents");

  return MEMORY[0x1EEE66BB8]();
}

id PLPPTGetLog()
{
  if (PLPPTGetLog_predicate != -1)
  {
    dispatch_once(&PLPPTGetLog_predicate, &__block_literal_global_210);
  }

  v1 = PLPPTGetLog_log;

  return v1;
}

uint64_t __PLPPTGetLog_block_invoke()
{
  PLPPTGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PPT");

  return MEMORY[0x1EEE66BB8]();
}

void pl_dispatch_source_set_event_handler(NSObject *a1, void *a2)
{
  v3 = a2;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __pl_dispatch_source_set_event_handler_block_invoke;
  handler[3] = &unk_1E79324A0;
  v6 = v3;
  v4 = v3;
  dispatch_source_set_event_handler(a1, handler);
}

id PLCuratedLibraryGetLog()
{
  if (PLCuratedLibraryGetLog_predicate != -1)
  {
    dispatch_once(&PLCuratedLibraryGetLog_predicate, &__block_literal_global_180);
  }

  v1 = PLCuratedLibraryGetLog_log;

  return v1;
}

uint64_t __PLCuratedLibraryGetLog_block_invoke()
{
  PLCuratedLibraryGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "CuratedLibrary");

  return MEMORY[0x1EEE66BB8]();
}

id PLSyndicationUIGetLog()
{
  if (PLSyndicationUIGetLog_predicate != -1)
  {
    dispatch_once(&PLSyndicationUIGetLog_predicate, &__block_literal_global_288);
  }

  v1 = PLSyndicationUIGetLog_log;

  return v1;
}

uint64_t __PLValidatedSavedAssetTypeForEnabledTypesExecuteBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  result = PLValidatedSavedAssetTypeApplies(*(a1 + 40), a2);
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t PLValidatedSavedAssetTypeApplies(unsigned int a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 0:
      return a1 & 1;
    case 1:
      a1 = (a1 >> 1) & 1;
      break;
    case 2:
      a1 = (a1 >> 2) & 1;
      break;
    case 3:
      a1 = (a1 >> 3) & 1;
      break;
    case 4:
      a1 = (a1 >> 4) & 1;
      break;
    case 5:
      a1 = (a1 >> 5) & 1;
      break;
    case 6:
      a1 = (a1 >> 6) & 1;
      break;
    case 7:
      a1 = (a1 >> 7) & 1;
      break;
    case 8:
      a1 = (a1 >> 8) & 1;
      break;
    case 9:
      a1 = (a1 >> 9) & 1;
      break;
    case 10:
      a1 = (a1 >> 10) & 1;
      break;
    case 11:
      a1 = (a1 >> 11) & 1;
      break;
    case 12:
      a1 = (a1 >> 12) & 1;
      break;
    case 13:
      a1 = (a1 >> 13) & 1;
      break;
    case 14:
      a1 = (a1 >> 14) & 1;
      break;
    case 15:
      goto LABEL_5;
    case 16:
      a1 = HIWORD(a1) & 1;
      break;
    default:
      if (a2 == 256)
      {
        a1 = (a1 >> 15) & 1;
      }

      else
      {
LABEL_5:
        v3 = PLBackendGetLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v6 = a2;
          _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_FAULT, "Unrecognized savedAssetType %d", buf, 8u);
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unrecognized savedAssetType %d", a2}];
        LOBYTE(a1) = 0;
      }

      break;
  }

  return a1 & 1;
}

id PLUserStatusUIGetLog()
{
  if (PLUserStatusUIGetLog_predicate != -1)
  {
    dispatch_once(&PLUserStatusUIGetLog_predicate, &__block_literal_global_258);
  }

  v1 = PLUserStatusUIGetLog_log;

  return v1;
}

uint64_t __PLUserStatusUIGetLog_block_invoke()
{
  PLUserStatusUIGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "UserStatusUI");

  return MEMORY[0x1EEE66BB8]();
}

PLPhotoLibraryPathManagerIdentifier *PLLibraryIDFromPathManager(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PLPhotoLibraryID  _Nonnull PLLibraryIDFromPathManager(PLPhotoLibraryPathManager *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v2 = [[PLPhotoLibraryPathManagerIdentifier alloc] initWithPathManager:v1];

  return v2;
}

uint64_t __PLImageManagerGetLog_block_invoke()
{
  PLImageManagerGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ImageManager");

  return MEMORY[0x1EEE66BB8]();
}

PLPhotoLibraryPathManager *PLPathManagerFromLibraryID(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PLPhotoLibraryPathManager * _Nonnull PLPathManagerFromLibraryID(__strong PLPhotoLibraryID _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];
  }

  v2 = MEMORY[0x1E695DFF8];
  v3 = [v1 identifier];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v5 = -[PLPhotoLibraryPathManager initWithLibraryURL:bundleScope:libraryFormat:]([PLPhotoLibraryPathManager alloc], "initWithLibraryURL:bundleScope:libraryFormat:", v4, 0, [v1 bundleFormat]);

  return v5;
}

id PLImageManagerGetLog()
{
  if (PLImageManagerGetLog_predicate != -1)
  {
    dispatch_once(&PLImageManagerGetLog_predicate, &__block_literal_global_66);
  }

  v1 = PLImageManagerGetLog_log;

  return v1;
}

id PLLemonadeGetLog()
{
  if (PLLemonadeGetLog_predicate != -1)
  {
    dispatch_once(&PLLemonadeGetLog_predicate, &__block_literal_global_246);
  }

  v1 = PLLemonadeGetLog_log;

  return v1;
}

uint64_t __PLLemonadeGetLog_block_invoke()
{
  PLLemonadeGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Lemonade");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendInitialSuggestionsGetLog()
{
  if (PLSearchBackendInitialSuggestionsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendInitialSuggestionsGetLog_predicate, &__block_literal_global_396);
  }

  v1 = PLSearchBackendInitialSuggestionsGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendInitialSuggestionsGetLog_block_invoke()
{
  PLSearchBackendInitialSuggestionsGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendInitialSuggestions");

  return MEMORY[0x1EEE66BB8]();
}

NSObject *pl_dispatch_queue_create_with_fallback_qos(const char *a1, dispatch_queue_attr_t attr)
{
  v3 = dispatch_queue_attr_make_initially_inactive(attr);
  v4 = dispatch_queue_create(a1, v3);
  dispatch_set_qos_class_fallback();
  dispatch_activate(v4);

  return v4;
}

id PLPhotosSearchGetLog()
{
  if (PLPhotosSearchGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotosSearchGetLog_predicate, &__block_literal_global_219);
  }

  v1 = PLPhotosSearchGetLog_log;

  return v1;
}

uint64_t PLIsLimitedLibraryClient()
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  v0 = 0;
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
  {
    os_unfair_lock_lock(&PLIsLimitedLibraryClient_lock);
    if ((PLIsLimitedLibraryClient_didResolveKnownAllowedResult & 1) == 0)
    {
      v1 = +[PLPrivacy sharedInstance];
      v2 = [v1 photosAccessAllowedWithScope:7];

      if (v2 != 1)
      {
        PLIsLimitedLibraryClient_didResolveKnownAllowedResult = 1;
        PLIsLimitedLibraryClient_limitedLibraryMode = PLIsAllowedResultEffectivelyLimited(v2);
      }
    }

    v0 = PLIsLimitedLibraryClient_limitedLibraryMode;
    os_unfair_lock_unlock(&PLIsLimitedLibraryClient_lock);
  }

  return v0 & 1;
}

uint64_t __PLPhotosSearchGetLog_block_invoke()
{
  PLPhotosSearchGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PhotosSearch");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLIsAllowedResultEffectivelyLimited(uint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  v8 = v1;
  v9 = v2;
  if (a1)
  {
    return 0;
  }

  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd)
  {
    return 0;
  }

  if (__PLIsAssetsdProxyService)
  {
    return 0;
  }

  v3 = +[PLPhotoLibraryPathManagerDCIM defaultDCIMPath];
  getpid();
  [v3 fileSystemRepresentation];
  v4 = sandbox_check();

  if (!v4)
  {
    return 0;
  }

  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Capture Session: Forcing Limited Library mode in the client", buf, 2u);
  }

  return 1;
}

id PLImportantFetchGetLog()
{
  if (PLImportantFetchGetLog_predicate != -1)
  {
    dispatch_once(&PLImportantFetchGetLog_predicate, &__block_literal_global_72);
  }

  v1 = PLImportantFetchGetLog_log;

  return v1;
}

uint64_t __PLImportantFetchGetLog_block_invoke()
{
  PLImportantFetchGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ImportantFetch");

  return MEMORY[0x1EEE66BB8]();
}

id PLDCIMURLForResourceProperties(uint64_t a1, uint64_t a2, unsigned int a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (!v18)
  {
    v27 = v17;
    v28 = PLBackendGetLog();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v70 = 0;
    v29 = "PLDCIMURLForResourceProperties: assetDirectory is NULL";
    v30 = &v70;
LABEL_13:
    _os_log_impl(&dword_1AA9BD000, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 2u);
    goto LABEL_14;
  }

  if (!v17)
  {
    v27 = 0;
    v28 = PLBackendGetLog();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v69 = 0;
    v29 = "PLDCIMURLForResourceProperties: assetFilename is NULL";
    v30 = &v69;
    goto LABEL_13;
  }

  if (!a1)
  {
    v27 = v17;
    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "PLDCIMURLForResourceProperties: extension is NULL";
      v30 = buf;
      goto LABEL_13;
    }

LABEL_14:

    v31 = 0;
    goto LABEL_148;
  }

  v63 = a1;
  v65 = v18;
  v20 = [v17 stringByDeletingPathExtension];
  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v22 = v21;
  v23 = v17;
  v24 = a3;
  v25 = HIWORD(a3);
  v64 = v23;
  if (HIWORD(a3) == 4)
  {
    [v21 appendFormat:@"%s/%@/%@/", a12, v65, v23];
    v26 = v20;
    if (a3)
    {
      [v22 appendFormat:@"%s", a13];
      v27 = v64;
      v19 = v65;
      goto LABEL_143;
    }

    goto LABEL_42;
  }

  v62 = v21;
  if (a3 == 65749)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a12];
    v33 = [v32 stringByDeletingLastPathComponent];
    v34 = [v33 stringByAppendingPathComponent:@"VideoKeyFrames"];

    v27 = v64;
    [v62 appendFormat:@"%@/%@/%@/", v34, v65, v64];

    v22 = v62;
    [v62 appendFormat:@"LocalVideoKeyFrame.jpg"];
    v26 = v20;
    v19 = v65;
    goto LABEL_143;
  }

  if (a4 == 14)
  {
    v26 = v20;
    v58 = v65;
    v60 = v20;
    v35 = @"%s/%@/%@/";
LABEL_30:
    v22 = v21;
    [v21 appendFormat:v35, a11, v58, v60, v61];
LABEL_31:
    v24 = a3;
    goto LABEL_32;
  }

  v26 = v20;
  if ((a2 - 1) < 2)
  {
    v60 = v20;
    v61 = @"Adjustments";
    a11 = a9;
    v58 = v65;
    v35 = @"%s/%@/%@/%@/";
    goto LABEL_30;
  }

  v22 = v21;
  if (!a2 || a2 == 3)
  {
    if (a3 == 131279)
    {
      v36 = a7;
    }

    else
    {
      v36 = a10;
    }

    if ((a3 & ((a3 & 0xFFFFFFF7) != 65943)) != 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = a7;
    }

    [v21 appendFormat:@"%s/%@/", v37, v65, v59, v61];
    goto LABEL_31;
  }

LABEL_32:
  if (!v24)
  {
LABEL_42:
    v27 = v64;
    v19 = v65;
    switch(a4)
    {
      case 0:
        if (a2 != 1)
        {
          goto LABEL_43;
        }

        [v22 appendFormat:@"PenultimateFullSizeRender.%s", v63, v57, v59];
        goto LABEL_143;
      case 1:
      case 3:
        if (a2 != 1)
        {
          goto LABEL_43;
        }

        v38 = @"PenultimateFullSizeRender.mov";
        goto LABEL_137;
      case 2:
      case 4:
      case 5:
      case 12:
      case 31:
        goto LABEL_43;
      case 6:
        if (!a2)
        {
          [v22 appendFormat:@"%@.data", v26, v57, v59];
          goto LABEL_143;
        }

        if (a2 == 2)
        {
          v38 = @"Adjustments.data";
          goto LABEL_137;
        }

        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        [(__CFString *)v40 handleFailureInFunction:v41 file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:1038 description:@"Unexpected resource version (%d) for adjustment resource data (PLResourceTypeAdjustmentData).", a2];
        break;
      case 7:
        v38 = @"AdjustmentsSecondary.data";
        goto LABEL_137;
      case 8:
        v38 = @"Adjustments.plist";
        goto LABEL_137;
      case 9:
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        v42 = @"Resource with type PLResourceTypeMediaMetadata must have a recipeID set.";
        v43 = v40;
        v44 = v41;
        v45 = 1046;
        goto LABEL_140;
      case 10:
      case 11:
        goto LABEL_94;
      case 13:
        [v22 appendFormat:@"%@%@.%@", v26, @"videometadata", @"mov"];
        goto LABEL_143;
      case 14:
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        v42 = @"Resource with type PLResourceTypeCompute must have a recipeID set.";
        v43 = v40;
        v44 = v41;
        v45 = 1052;
        goto LABEL_140;
      case 15:
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        v42 = @"Resource with type PLResourceTypeAdjustmentSuggestionImage must have a recipeID set.";
        v43 = v40;
        v44 = v41;
        v45 = 1055;
        goto LABEL_140;
      case 16:
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        v42 = @"Contextual video thumbnail URL is obtained via PLManagedAsset.fileURLForContextualVideoThumbnailIdentifier";
        v43 = v40;
        v44 = v41;
        v45 = 1058;
        goto LABEL_140;
      default:
        goto LABEL_143;
    }

    goto LABEL_141;
  }

  if (v25 == 1)
  {
    if (v24 <= 65937)
    {
      v27 = v64;
      if (v24 <= 65742)
      {
        v19 = v65;
        switch(v24)
        {
          case 65737:
            [v22 appendFormat:@"%@.full.JPG", v26, v57, v59];
            break;
          case 65739:
            [v22 appendFormat:@"%@.large.JPG", v26, v57, v59];
            break;
          case 65741:
            [v22 appendFormat:@"%@.JPG", v26, v57, v59];
            break;
        }

        goto LABEL_143;
      }

      v19 = v65;
      if (v24 <= 65746)
      {
        if (v24 == 65743)
        {
          [v22 appendFormat:@"%@.medium.JPG", v26, v57, v59];
        }

        else if (v24 == 65745)
        {
          [v22 appendFormat:@"%@_sRGB.JPG", v26, v57, v59];
        }

        goto LABEL_143;
      }

      if (v24 == 65747)
      {
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
        v42 = @"DCIM layout does not support PLImageRecipeID_Pri_SourceColorSpace_1K.";
        v43 = v40;
        v44 = v41;
        v45 = 1152;
LABEL_140:
        [(__CFString *)v43 handleFailureInFunction:v44 file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:v45 description:v42, v55];
LABEL_141:

        goto LABEL_142;
      }

      if (v24 != 65937)
      {
        goto LABEL_143;
      }

      v38 = @"SubstandardFullSizeRender.jpg";
LABEL_137:
      [v22 appendString:v38];
      goto LABEL_143;
    }

    v27 = v64;
    if (v24 > 65945)
    {
      v19 = v65;
      if (v24 <= 65950)
      {
        if (v24 == 65946)
        {
LABEL_94:
          v46 = [PLPhotoLibraryPathManagerCore basenameForSpatialOverCaptureFromOriginalBasename:v26];
          v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v63];
          [v22 appendFormat:@"%@.%@", v46, v47];

          goto LABEL_143;
        }

        if (v24 == 65948)
        {
          v38 = @"VideoPosterFramePreview.jpg";
          goto LABEL_137;
        }

        goto LABEL_143;
      }

      if (v24 != 65951)
      {
        if (v24 == 66137)
        {
          [v22 appendFormat:@"Alchemist.%s", v63, v57, v59];
        }

        goto LABEL_143;
      }

      v48 = @"X";
LABEL_156:
      [v22 appendFormat:@"%@%s.%s", v26, -[__CFString UTF8String](v48, "UTF8String"), v63];
      goto LABEL_143;
    }

    v19 = v65;
    if (v24 <= 65942)
    {
      if (v24 == 65938)
      {
        if (a2 == 1)
        {
          v53 = [MEMORY[0x1E696AAA8] currentHandler];
          v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
          [v53 handleFailureInFunction:v54 file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:1115 description:@"DCIM layout does not support penultimate image resources with a receipID set."];

          v22 = v62;
        }

        [v22 appendFormat:@"FullSizeRender.%s", v63, v57, v59];
        goto LABEL_143;
      }

      if (v24 == 65941)
      {
        v38 = @"AsyncRenderPreview.JPG";
        goto LABEL_137;
      }

      goto LABEL_143;
    }

    if (v24 != 65943)
    {
      if (v24 != 65944)
      {
        goto LABEL_143;
      }

      goto LABEL_43;
    }

LABEL_114:
    v48 = @"D";
    goto LABEL_156;
  }

  if (v25 == 2)
  {
    if (v24 <= 131271)
    {
      v27 = v64;
      if (v24 <= 131076)
      {
        v19 = v65;
        if (v24 == 0x20000)
        {
          if (a2 == 1)
          {
            v51 = [MEMORY[0x1E696AAA8] currentHandler];
            v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nullable PLDCIMURLForResourceProperties(const char * _Nonnull, PLResourceVersion, PLResourceRecipeID, PLResourceType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull, const char * _Nonnull)"}];
            [v51 handleFailureInFunction:v52 file:@"PLPhotoLibraryPathManagerDCIM.m" lineNumber:1177 description:@"DCIM layout does not support penultimate video resources with a receipID set."];
          }
        }

        else if (v24 != 131075)
        {
          goto LABEL_143;
        }

        v38 = @"FullSizeRender.mov";
        goto LABEL_137;
      }

      v19 = v65;
      switch(v24)
      {
        case 131077:
          v39 = @"large.MOV";
          break;
        case 131079:
          v39 = @"medium.MP4";
          break;
        case 131081:
          v39 = @"small.MP4";
          break;
        default:
          goto LABEL_143;
      }

      goto LABEL_133;
    }

    v27 = v64;
    if (v24 <= 131278)
    {
      v19 = v65;
      switch(v24)
      {
        case 131272:
          if (a2 == 1)
          {
            v38 = @"PenultimateFullSizeRender.mov";
          }

          else
          {
            v38 = @"FullSizeRender.mov";
          }

          goto LABEL_137;
        case 131275:
          v39 = @"medium.MOV";
          break;
        case 131277:
          v39 = @"small.MOV";
          break;
        default:
          goto LABEL_143;
      }

LABEL_133:
      [v22 appendFormat:@"%@.%@", v26, v39, v59];
      goto LABEL_143;
    }

    v19 = v65;
    if (v24 != 131279)
    {
      if (v24 != 131280)
      {
        if (v24 != 131475)
        {
          goto LABEL_143;
        }

        v39 = @"medium-hdr.MOV";
        goto LABEL_133;
      }

LABEL_43:
      [v22 appendFormat:@"%@.%s", v26, v63, v59];
      goto LABEL_143;
    }

    goto LABEL_114;
  }

  v27 = v64;
  v19 = v65;
  if (v25 != 5)
  {
    goto LABEL_143;
  }

  if (v24 > 327692)
  {
    if (v24 <= 327696)
    {
      if (v24 == 327693)
      {
        v38 = @"GenerativePlaygroundFaceResources.dat";
        goto LABEL_137;
      }

      if (v24 != 327695)
      {
        goto LABEL_143;
      }

      v40 = @"AlchemistV2OneUp.mxi";
    }

    else
    {
      switch(v24)
      {
        case 327697:
          v40 = @"AlchemistV2Widget1x1.mxi";
          break;
        case 327699:
          v40 = @"AlchemistV2Widget1x2.mxi";
          break;
        case 327701:
          v40 = @"AlchemistV2Wallpaper.mxi";
          break;
        default:
          goto LABEL_143;
      }
    }

    v49 = v40;
    [v22 appendString:v40];
LABEL_142:

    goto LABEL_143;
  }

  if (v24 > 327686)
  {
    switch(v24)
    {
      case 327687:
        v38 = @"WallpaperComputeResources.dat";
        break;
      case 327689:
        v38 = @"ComputeSyncWrapper.dat";
        break;
      case 327691:
        v38 = @"ComputeSyncMediaAnalysisPayload.dat";
        break;
      default:
        goto LABEL_143;
    }

    goto LABEL_137;
  }

  if (v24 == 327683)
  {
    [v22 appendFormat:@"%@.media.dat", v26, v57, v59];
  }

  else if (v24 == 327685)
  {
    v31 = 0;
    goto LABEL_145;
  }

LABEL_143:
  if (!v22)
  {
    v31 = 0;
    goto LABEL_147;
  }

  v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22 isDirectory:0];
LABEL_145:

LABEL_147:
LABEL_148:

  return v31;
}

id PLUnderlyingErrorThatHasDomainAndCode(void *a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = a2;
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = a1;
    v8 = [v5 numberWithInteger:a3];
    v13 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v11 = PFUnderlyingErrorThatMatchesCodesByDomain();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t DCIM_newPLImageWithCGImage(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_alloc(NSClassFromString(@"UIImage"));

  return [v6 initWithCGImage:a1 scale:a2 orientation:a3];
}

void __pl_notify_register_dispatch_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __PLIsInternalTool_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  v6 = (v0 & 1) != 0 || ([MEMORY[0x1E696AE30] processInfo], v2 = LOBYTE(v0) = [v1 isEqualToString:@"photosctl"];
  PLIsInternalTool_isInternalTool = v6;
}

void __PLIsMediaanalysisd_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"mediaanalysisd"];
  PLIsMediaanalysisd_isMAD = v0;
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v2 = [v4 isEqualToString:@"mediaanalysisd-service"];
  }

  PLIsMediaanalysisd_isMAD = v2;
}

uint64_t PLDeviceOrientationFromImageOrientation(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return (a1 + 1);
  }
}

uint64_t PLImageOrientationFromDeviceOrientation(int a1)
{
  v1 = (a1 - 2);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PLSensorOrientationFromCaptureOrientation(int a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 == 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (a1 == 4)
  {
    v4 = v2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t PLImageOrientationFromImageProperties(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E696DE78];
  v3 = [v1 objectForKey:*MEMORY[0x1E696DE78]];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 intValue] - 1;
    if (v5 >= 8)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [v1 objectForKey:*MEMORY[0x1E696DF28]];
    v4 = [v6 objectForKey:v2];

    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [v4 intValue] - 1;
    if (v5 > 7)
    {
      goto LABEL_7;
    }
  }

  v7 = PLImageOrientationFromExifOrientation_orientationMapping[v5];
LABEL_8:

  return v7;
}

uint64_t PLImageOrientationFromExifOrientation(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return PLImageOrientationFromExifOrientation_orientationMapping[a1 - 1];
  }
}

uint64_t PLExifOrientationFromImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1AAA8F1F8[a1 - 1];
  }
}

uint64_t PLInverseExifOrientationFromImageOrientation(unint64_t a1)
{
  if (a1 > 7)
  {
    return 1;
  }

  else
  {
    return dword_1AAA8F214[a1];
  }
}

uint64_t PLCaptureOrientationFromImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 3;
  }

  else
  {
    return dword_1AAA8F234[a1 - 1];
  }
}

CGImageSource *PLImageOrientationFromImageData(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  v2 = _ImageOrientationFromImageSource(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CGImageSource *_ImageOrientationFromImageSource(CGImageSource *result)
{
  if (result)
  {
    v1 = result;
    v2 = CGImageSourceCopyPropertiesAtIndex(result, 0, 0);
    if (!v2)
    {
      v2 = CGImageSourceCopyPropertiesAtIndex(v1, 0, &unk_1F1F91098);
    }

    v3 = PLImageOrientationFromImageProperties(v2);

    return v3;
  }

  return result;
}

uint64_t PLUnmirroredImageOrientation(uint64_t result)
{
  if ((result - 5) >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result - 4;
  }

  if ((result & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    return v1;
  }

  return result;
}

uint64_t PLMirroredImageOrientation(uint64_t result)
{
  v1 = 4;
  if ((result - 1) < 3)
  {
    v1 = result + 4;
  }

  if ((result & 0xFFFFFFFFFFFFFFFCLL) != 4)
  {
    return v1;
  }

  return result;
}

uint64_t PLDegreesForImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1AAA8F240[a1 - 1];
  }
}

uint64_t PLTransformForImageOrientation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result > 3)
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        *a2 = 0xBFF0000000000000;
        *(a2 + 8) = 0;
        v2 = 0x3FF0000000000000;
      }

      else
      {
        *a2 = 0x3FF0000000000000;
        *(a2 + 8) = 0;
        v2 = 0xBFF0000000000000;
      }

      goto LABEL_15;
    }

    if (result == 6)
    {
      __asm { FMOV            V0.2D, #1.0 }

      goto LABEL_18;
    }

    if (result == 7)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      goto LABEL_18;
    }

LABEL_13:
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    *(a2 + 16) = v9;
    *(a2 + 32) = *(v8 + 32);
    return result;
  }

  if (result == 1)
  {
    v2 = 0xBFF0000000000000;
    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
LABEL_15:
    *(a2 + 16) = 0;
    *(a2 + 24) = v2;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    return result;
  }

  if (result == 2)
  {
    _Q0 = xmmword_1AAA8EF10;
    goto LABEL_18;
  }

  if (result != 3)
  {
    goto LABEL_13;
  }

  _Q0 = xmmword_1AAA8EF00;
LABEL_18:
  *(a2 + 8) = _Q0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t PLImageOrientationRotatedByDegrees(uint64_t a1, float a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v2 = a1 - 5;
    if ((a1 - 5) >= 3)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v2 = a1 - 1;
    if ((a1 - 1) > 2)
    {
      goto LABEL_3;
    }
  }

  v3 = dword_1AAA8F25C[v2];
LABEL_6:
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  v4 = v3 + (a2 / 90.0) + 4 * ((v3 + (a2 / 90.0)) >> 31);
  v5 = v4 & 3;
  v7 = -v4;
  v6 = v7 < 0;
  v8 = v7 & 3;
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = -v8;
  }

  v10 = PLImageOrientationRotatedByDegrees_orientations[v9];
  v11 = 4;
  if ((v10 - 1) < 3)
  {
    v11 = v10 + 4;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

uint64_t PLExifOrientationForSensorOrientation(int a1)
{
  if ((a1 - 2) > 2)
  {
    return 6;
  }

  else
  {
    return dword_1AAA8F268[a1 - 2];
  }
}

void PLAddTIFFDPIPropertiesToDictionary(void *a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  v3 = [[v1 alloc] initWithInt:72];
  [v2 setObject:v3 forKey:*MEMORY[0x1E696DF88]];
  [v2 setObject:v3 forKey:*MEMORY[0x1E696DF98]];
}

CFStringRef PLCreateEXIFDateString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (v5)
  {
    v6 = v5;
    CFDateFormatterSetFormat(v5, v4);
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v6, v3);
    CFRelease(v6);
  }

  else
  {
    StringWithDate = 0;
  }

  return StringWithDate;
}

void *PLCreationDateFromImageProperties(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696D998]];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DB28]];
    if (v4)
    {
      goto LABEL_8;
    }

    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696D990]];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DB20]];

    v5 = v6;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v8 = v7;
  if (!v7)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v4 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DF20]];

  v5 = 0;
  if (!v4)
  {
    v4 = 0;
    v8 = 0;
    goto LABEL_18;
  }

LABEL_8:
  if (PLEXIFDateFormatter_onceToken != -1)
  {
    dispatch_once(&PLEXIFDateFormatter_onceToken, &__block_literal_global_91);
  }

  v8 = [PLEXIFDateFormatter__dateFormatter dateFromString:v4];
  if (v8 && [v5 length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0.%@", v5];

    [v9 doubleValue];
    if (v10 <= 0.0 || v10 >= 1.0)
    {
      v5 = v9;
    }

    else
    {
      v11 = [v8 dateByAddingTimeInterval:?];

      v5 = v9;
      v8 = v11;
    }
  }

LABEL_18:
  v12 = v8;

  return v8;
}

void __PLEXIFDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = PLEXIFDateFormatter__dateFormatter;
  PLEXIFDateFormatter__dateFormatter = v0;

  [PLEXIFDateFormatter__dateFormatter setTimeStyle:0];
  [PLEXIFDateFormatter__dateFormatter setDateStyle:0];
  [PLEXIFDateFormatter__dateFormatter setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [PLEXIFDateFormatter__dateFormatter setLocale:v2];

  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US_POSIX"];
  [PLEXIFDateFormatter__dateFormatter setCalendar:v3];
}

__IOSurface *PLCreateCGImageFromIOSurface(__IOSurface *a1)
{
  v1 = a1;
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(v1);
  if (!v1)
  {
    return v1;
  }

  v4 = Height;
  if (!setupUIGraphicsFunctions())
  {
    return 0;
  }

  pixelBufferOut = 0;
  texture = 0;
  pixelTransferSessionOut = 0;
  v5 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v1, 0, &pixelBufferOut) || VTPixelTransferSessionCreate(v5, &pixelTransferSessionOut))
  {
    goto LABEL_5;
  }

  v1 = 0;
  if (!Width || !v4)
  {
    goto LABEL_6;
  }

  if (FigCreateIOSurfaceBackedCVPixelBuffer() || VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture))
  {
LABEL_5:
    v1 = 0;
  }

  else
  {
    IOSurface = CVPixelBufferGetIOSurface(texture);
    v1 = sUICreateCGImageFromIOSurface(IOSurface);
  }

LABEL_6:
  CVPixelBufferRelease(pixelBufferOut);
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  CVPixelBufferRelease(texture);
  return v1;
}

BOOL setupUIGraphicsFunctions()
{
  if (setupUIGraphicsFunctions_onceToken != -1)
  {
    dispatch_once(&setupUIGraphicsFunctions_onceToken, &__block_literal_global_99);
  }

  result = 0;
  if (sUIGraphicsBeginImageContext && sUIGraphicsGetCurrentContext && sUIGraphicsGetImageFromCurrentImageContext && sUIGraphicsEndImageContext && sUIGraphicsPushContext && sUIGraphicsPopContext && s_UIImageJPEGRepresentation)
  {
    if (sUIImagePNGRepresentation)
    {
      return sUICreateCGImageFromIOSurface != 0;
    }
  }

  return result;
}

void __setupUIGraphicsFunctions_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(@"UIImage")];
  if (v0)
  {
    v1 = *MEMORY[0x1E695E480];
    v4 = v0;
    v2 = [v0 bundleURL];
    v3 = CFBundleCreate(v1, v2);

    v0 = v4;
    if (v3)
    {
      sUIGraphicsBeginImageContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsBeginImageContext");
      sUIGraphicsGetCurrentContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsGetCurrentContext");
      sUIGraphicsGetImageFromCurrentImageContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsGetImageFromCurrentImageContext");
      sUIGraphicsEndImageContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsEndImageContext");
      sUIGraphicsPushContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsPushContext");
      sUIGraphicsPopContext = CFBundleGetFunctionPointerForName(v3, @"UIGraphicsPopContext");
      s_UIImageJPEGRepresentation = CFBundleGetFunctionPointerForName(v3, @"_UIImageJPEGRepresentation");
      sUIImagePNGRepresentation = CFBundleGetFunctionPointerForName(v3, @"UIImagePNGRepresentation");
      sUICreateCGImageFromIOSurface = CFBundleGetFunctionPointerForName(v3, @"UICreateCGImageFromIOSurface");
      CFRelease(v3);
      v0 = v4;
    }
  }
}

__IOSurface *PLCreateCGImageFromIOSurfaceWithOrientation(IOSurfaceRef surface, unint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    return 0;
  }

  if (a2)
  {
    pixelBufferOut = 0;
    v3 = 0;
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], surface, 0, &pixelBufferOut))
    {
      v4 = 1;
    }

    else
    {
      v4 = pixelBufferOut == 0;
    }

    if (v4)
    {
      return v3;
    }

    if (a2 > 7)
    {
      v5 = 1;
    }

    else
    {
      v5 = dword_1AAA8F1F8[a2 - 1];
    }

    v16 = *MEMORY[0x1E6991B98];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{v5, 0}];
    v17[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v9 = CMPhotoScaleAndRotateSessionTransformImage();
    if (v9 || !pixelBuffer)
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v15 = v9;
        _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Failed to transform image with error: %d", buf, 8u);
      }
    }

    else
    {
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      if (IOSurface)
      {
        v3 = PLCreateCGImageFromIOSurface(IOSurface);
LABEL_22:
        CVPixelBufferRelease(pixelBufferOut);
        CVPixelBufferRelease(pixelBuffer);

        return v3;
      }
    }

    v3 = 0;
    goto LABEL_22;
  }

  return PLCreateCGImageFromIOSurface(surface);
}

__IOSurface *PLCreateCGImageFromIOSurfaceBackedUIImage(void *a1)
{
  v1 = [a1 ioSurface];

  return PLCreateCGImageFromIOSurface(v1);
}

uint64_t PLCreateImageAndJPEGDataFromPreviewImageSurface(__IOSurface *a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v4 = setupUIGraphicsFunctions();
  v5 = 0;
  if (!a1 || !v4)
  {
    return v5;
  }

  texture = 0;
  Width = IOSurfaceGetWidth(a1);
  +[PLAssetFormatsCore scaledSizeForSize:format:capLength:](PLAssetFormatsCore, "scaledSizeForSize:format:capLength:", +[PLAssetFormatsCore masterThumbnailFormat], 1, Width, IOSurfaceGetHeight(a1));
  if (Width / v7 <= 4.0)
  {
    v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, &texture);
    v13 = texture;
    goto LABEL_25;
  }

  *destinationBuffer = 0;
  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, &pixelBufferOut);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = pixelBufferOut == 0;
  }

  if (v10 || ((v9 = VTPixelTransferSessionCreate(v8, &pixelTransferSessionOut)) == 0 ? (v11 = pixelTransferSessionOut == 0) : (v11 = 1), v11))
  {
    v12 = v9;
    v13 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  IOSurfaceBackedCVPixelBuffer = FigCreateIOSurfaceBackedCVPixelBuffer();
  v14 = *destinationBuffer;
  if (IOSurfaceBackedCVPixelBuffer)
  {
    v16 = 1;
  }

  else
  {
    v16 = *destinationBuffer == 0;
  }

  if (v16)
  {
    v12 = IOSurfaceBackedCVPixelBuffer;
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v17 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, *destinationBuffer);
  v12 = v17;
  v14 = *destinationBuffer;
  if (v17)
  {
    goto LABEL_22;
  }

  v13 = CVPixelBufferRetain(*destinationBuffer);
  texture = v13;
  v14 = *destinationBuffer;
LABEL_23:
  CVPixelBufferRelease(v14);
  CVPixelBufferRelease(pixelBufferOut);
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

LABEL_25:
  if (v12)
  {
    v18 = 1;
  }

  else
  {
    v18 = v13 == 0;
  }

  if (v18)
  {
    v19 = 0;
    v5 = 0;
    goto LABEL_45;
  }

  *destinationBuffer = 0;
  pixelBufferOut = 0;
  v12 = VTImageRotationSessionCreate();
  v19 = 0;
  v20 = pixelBufferOut;
  if (!v12 && pixelBufferOut)
  {
    VTSessionSetProperty(pixelBufferOut, *MEMORY[0x1E6983CF8], *MEMORY[0x1E695E4D0]);
    IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
    if (IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      v22 = 1;
    }

    else
    {
      v22 = *destinationBuffer == 0;
    }

    if (v22 || (IOSurfaceBackedCVPixelBufferWithAttributes = MEMORY[0x1AC591C30](pixelBufferOut, texture)) != 0)
    {
      v12 = IOSurfaceBackedCVPixelBufferWithAttributes;
      v19 = 0;
    }

    else
    {
      v25 = CVPixelBufferRetain(*destinationBuffer);
      v19 = v25;
      if (v25)
      {
        IOSurface = CVPixelBufferGetIOSurface(v25);
        v5 = sUICreateCGImageFromIOSurface(IOSurface);
        v12 = 0;
        if (a2 && IOSurface)
        {
          v27 = *MEMORY[0x1E6991978];
          v40[0] = &unk_1F1F90728;
          v28 = *MEMORY[0x1E6991970];
          v39[0] = v27;
          v39[1] = v28;
          v37 = *MEMORY[0x1E6991B90];
          v38 = &unk_1F1F91088;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v40[1] = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

          v12 = PFFigJPEGDataFromImage();
        }

LABEL_40:
        v20 = pixelBufferOut;
        if (!pixelBufferOut)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v12 = 0;
    }

    v5 = 0;
    goto LABEL_40;
  }

  v5 = 0;
  if (pixelBufferOut)
  {
LABEL_43:
    CFRelease(v20);
  }

LABEL_44:
  CVPixelBufferRelease(*destinationBuffer);
  v13 = texture;
LABEL_45:
  CVPixelBufferRelease(v13);
  CVPixelBufferRelease(v19);
  if (v12)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *destinationBuffer = 136315394;
      *&destinationBuffer[4] = "CGImageRef PLCreateImageAndJPEGDataFromPreviewImageSurface(CFTypeRef, NSData *__autoreleasing *, UIImageOrientation)";
      v35 = 2048;
      v36 = v12;
      _os_log_impl(&dword_1AA9BD000, v23, OS_LOG_TYPE_DEFAULT, "%s error %ld", destinationBuffer, 0x16u);
    }
  }

  return v5;
}

id PLCreateJPEGDataFromPreviewImageSurface(IOSurfaceRef surface, unint64_t a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    v6 = 0;
    goto LABEL_32;
  }

  pixelBufferOut = 0;
  v3 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], surface, 0, &pixelBufferOut);
  v4 = pixelBufferOut;
  if (pixelBufferOut)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (a2 > 7)
    {
      goto LABEL_24;
    }

    if (((1 << a2) & 0x22) != 0)
    {
      v7 = 1;
    }

    else if (((1 << a2) & 0x44) != 0)
    {
      v7 = 0;
    }

    else
    {
      if (((1 << a2) & 0x88) == 0)
      {
        goto LABEL_24;
      }

      v7 = 0;
    }

    texture[0] = 0;
    if (VTImageRotationSessionCreate())
    {
      goto LABEL_21;
    }

    VTSessionSetProperty(0, *MEMORY[0x1E6983CF8], *MEMORY[0x1E695E4D0]);
    if (v7)
    {
      CVPixelBufferGetWidth(pixelBufferOut);
      CVPixelBufferGetHeight(pixelBufferOut);
    }

    else
    {
      CVPixelBufferGetHeight(pixelBufferOut);
      CVPixelBufferGetWidth(pixelBufferOut);
    }

    CVPixelBufferGetPixelFormatType(pixelBufferOut);
    if (FigCreateIOSurfaceBackedCVPixelBufferWithAttributes() || MEMORY[0x1AC591C30](0, pixelBufferOut, texture[0]))
    {
LABEL_21:
      v8 = 0;
    }

    else
    {
      v8 = CVPixelBufferRetain(texture[0]);
    }

    CVPixelBufferRelease(texture[0]);
    if (v8)
    {
      goto LABEL_25;
    }

    v4 = pixelBufferOut;
LABEL_24:
    v8 = CVPixelBufferRetain(v4);
    if (!v8)
    {
      v6 = 0;
LABEL_30:
      CVPixelBufferRelease(v8);
      v4 = pixelBufferOut;
      goto LABEL_31;
    }

LABEL_25:
    v9 = *MEMORY[0x1E6991978];
    v21[0] = &unk_1F1F90728;
    v10 = *MEMORY[0x1E6991970];
    v20[0] = v9;
    v20[1] = v10;
    v18 = *MEMORY[0x1E6991B90];
    v19 = &unk_1F1F91088;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v13 = PFFigJPEGDataFromImage();
    v6 = 0;
    if (v13)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(texture[0]) = 136315138;
        *(texture + 4) = "NSData *PLCreateJPEGDataFromPreviewImageSurface(CFTypeRef, UIImageOrientation)";
        _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_ERROR, "Error received from PFFigJPEGDataFromImage() in %s", texture, 0xCu);
      }
    }

    goto LABEL_30;
  }

  v6 = 0;
LABEL_31:
  CVPixelBufferRelease(v4);
LABEL_32:

  return v6;
}

double DCIMScaledSizeForFormat(uint64_t a1, double a2, double a3)
{
  [PLAssetFormatsCore sizeForFormat:a1];

  return PLScaledSizeWithinSizeCore(a2, a3, v5, v6);
}

id PLCreateScaledImageFromImage(void *a1, void *a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = a2;
  v13 = setupUIGraphicsFunctions();
  v14 = 0;
  if (v11 && v13)
  {
    v15 = a3 == 1;
    if (a3 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = 4;
    }

    if (v15)
    {
      v17 = 5;
    }

    else
    {
      v17 = 8;
    }

    if (v15)
    {
      v18 = 4102;
    }

    else
    {
      v18 = 2;
    }

    v19 = PLScaledImageSizeForPLImage(v11);
    v21 = v20;
    v22 = ((a5 * v16) + 8 * v16 - 1) / (8 * v16) * 8 * v16;
    v23 = *MEMORY[0x1E695EFF8];
    v24 = *(MEMORY[0x1E695EFF8] + 8);
    v25 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(a6 * v22)];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v27 = CGBitmapContextCreate([v25 mutableBytes], a5, a6, v17, v22, DeviceRGB, v18);
    CGContextTranslateCTM(v27, 0.0, a6);
    CGContextScaleCTM(v27, 1.0, -1.0);
    CGAffineTransformMakeScale(&v31, 1.0, -1.0);
    CGContextSetBaseCTM();
    sUIGraphicsPushContext(v27);
    v30 = 0;
    PLCreateCroppedImageInContextFromImageWithQuality(v11, v12, v27, kCGInterpolationHigh, &v30, v23, v24, v19, v21, a5, a6);
    v14 = v30;
    sUIGraphicsPopContext(v14);
    CGContextRelease(v27);
    CGColorSpaceRelease(DeviceRGB);
    if (a4)
    {
      v28 = v25;
      *a4 = v25;
    }
  }

  return v14;
}

double PLScaledImageSizeForPLImage(void *a1)
{
  v1 = a1;
  v2 = DCIM_sizeFromPLImage(v1);
  v3 = DCIM_scaleFromPLImage(v1);

  return v2 * v3;
}

void PLCreateCroppedImageInContextFromImageWithQuality(void *a1, void *a2, CGContext *a3, CGInterpolationQuality a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v19 = a1;
  v20 = a2;
  CGContextSaveGState(a3);
  if (a4)
  {
    CGContextSetInterpolationQuality(a3, a4);
  }

  CGContextTranslateCTM(a3, 0.0, a11);
  CGContextScaleCTM(a3, 1.0, -1.0);
  v21 = [NSClassFromString(@"UIColor") blackColor];
  CGContextSetFillColorWithColor(a3, [v21 CGColor]);
  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = a10;
  v53.size.height = a11;
  CGContextFillRect(a3, v53);
  v47 = a10 * 0.5;
  CGContextTranslateCTM(a3, a10 * 0.5, a11 * 0.5);
  v22 = a10 / a8;
  v23 = a11 / a9;
  CGContextScaleCTM(a3, v22, v23);
  v51 = a10;
  v49 = a10 * -0.5;
  CGContextTranslateCTM(a3, a10 * -0.5, a11 * -0.5);
  v24 = PLScaledImageSizeForPLImage(v19);
  v26 = v25;
  v54.origin.x = a6;
  v54.origin.y = a7;
  v54.size.width = a8;
  v54.size.height = a9;
  MidX = CGRectGetMidX(v54);
  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MidY = CGRectGetMidY(v55);
  v29 = v24 * 0.5 - MidX;
  v30 = MidY + v26 * -0.5;
  CGContextTranslateCTM(a3, v29, v30);
  v31 = [v19 imageOrientation] - 1;
  if (v31 >= 7)
  {
    v36 = MEMORY[0x1E695EFD0];
    v34 = (MEMORY[0x1E695EFD0] + 8);
    v33 = (MEMORY[0x1E695EFD0] + 16);
    v32 = (MEMORY[0x1E695EFD0] + 24);
    v35 = *(MEMORY[0x1E695EFD0] + 32);
    v37 = *(MEMORY[0x1E695EFD0] + 40);
  }

  else
  {
    v32 = (&unk_1AAA8F278 + 8 * v31);
    v33 = (&unk_1AAA8F2B0 + 8 * v31);
    v34 = (&unk_1AAA8F2E8 + 8 * v31);
    v35 = 0.0;
    v36 = (&unk_1AAA8F320 + 8 * v31);
    v37 = 0.0;
  }

  v38 = *v36;
  v39 = *v34;
  v40 = *v33;
  v41 = *v32;
  CGContextTranslateCTM(a3, v47, a11 * 0.5);
  transform.a = v38;
  transform.b = v39;
  transform.c = v40;
  transform.d = v41;
  transform.tx = v35;
  transform.ty = v37;
  CGContextConcatCTM(a3, &transform);
  CGContextTranslateCTM(a3, v49, a11 * -0.5);
  v42 = [v19 CGImage];
  Width = CGImageGetWidth(v42);
  v56.size.height = CGImageGetHeight(v42);
  v56.origin.x = (v51 - Width) * 0.5;
  v56.origin.y = (a11 - v56.size.height) * 0.5;
  v56.size.width = Width;
  CGContextDrawImage(a3, v56, v42);
  CGContextRestoreGState(a3);
  if (v20)
  {
    CGContextSaveGState(a3);
    [v20 frame];
    CGContextTranslateCTM(a3, v44, v45);
    [v20 renderInContext:a3];
    CGContextRestoreGState(a3);
  }

  if (a5)
  {
    Image = CGBitmapContextCreateImage(a3);
    *a5 = [objc_alloc(NSClassFromString(@"UIImage")) initWithCGImage:Image scale:0 orientation:1.0];
    CGImageRelease(Image);
  }
}

double DCIM_sizeFromPLImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 size];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
  }

  return v4;
}

double DCIM_scaleFromPLImage(void *a1)
{
  v1 = a1;
  NSClassFromString(@"UIImage");
  v2 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v1 scale];
    v2 = v3;
  }

  return v2;
}

uint64_t PLSubsampleFactorForImageSizeScaledToSize(double a1, double a2, double a3, double a4)
{
  v4 = a2;
  if (a2 <= a1)
  {
    v4 = a1;
  }

  if (a3 >= a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  v6 = floor(log2((v4 / v5)));
  v7 = exp2f(v6);
  if (v7 >= 32)
  {
    v7 = 32;
  }

  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

id PLCreateImageWithFormatFromImage(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a1;
  v11 = DCIM_sizeFromPLImage(v10);
  v13 = v12;
  [PLAssetFormatsCore sizeForFormat:a3];
  v16 = PLScaledSizeWithinSizeCore(v11, v13, v14, v15);
  v18 = PLCreateScaledImageFromImage(v10, v9, a4, a5, v16, v17);

  return v18;
}

double PLSquareCropRectForSize(double a1, double a2)
{
  v2 = a1 > a2;
  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = (a1 - v4) * 0.5;
  result = rintf(v5);
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t DCIM_CGImageRefFromPLImage(void *a1)
{
  v1 = a1;

  return [v1 CGImage];
}

id PLCreateCroppedImageFromImageWithQuality(void *a1, CGInterpolationQuality a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = a1;
  if (!v15)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate(0, a7, a8, 8uLL, vcvtd_n_u64_f64(a7, 2uLL), DeviceRGB, 5u);
  CGColorSpaceRelease(DeviceRGB);
  if (!v17)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "PLImage *PLCreateCroppedImageFromImageWithQuality(PLImage *__strong, CGRect, CGSize, CGInterpolationQuality)";
      _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "%s: failed to create context", buf, 0xCu);
    }

    goto LABEL_7;
  }

  CGContextTranslateCTM(v17, 0.0, a8);
  CGContextScaleCTM(v17, 1.0, -1.0);
  v21 = 0;
  PLCreateCroppedImageInContextFromImageWithQuality(v15, 0, v17, a2, &v21, a3, a4, a5, a6, a7, a8);
  v18 = v21;
  CGContextRelease(v17);
LABEL_8:

  return v18;
}

id DCIM_newPLImageWithContentsOfFileURL(void *a1, int a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = *MEMORY[0x1E696E018];
    v20[0] = *MEMORY[0x1E696E028];
    v4 = *MEMORY[0x1E696E020];
    v19[0] = v3;
    v19[1] = v4;
    v17 = *MEMORY[0x1E696D208];
    v18 = MEMORY[0x1E695E118];
    v5 = MEMORY[0x1E695DF20];
    v6 = a1;
    v7 = [v5 dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [v2 dictionaryWithDictionary:v8];

    v10 = CGImageSourceCreateWithURL(v6, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, v9);
    v12 = _ImageOrientationFromImageSource(v10);
    v13 = [objc_alloc(NSClassFromString(@"UIImage")) initWithCGImage:ImageAtIndex scale:v12 orientation:1.0];
    CGImageRelease(ImageAtIndex);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v14 = a1;
    v15 = [v14 path];

    v13 = DCIM_newPLImageWithContentsOfFile(v15);
  }

  return v13;
}

id DCIM_scaleImageFromURL(void *a1, double a2, double a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    v23 = *MEMORY[0x1E6991AE0];
    if (a2 >= a3)
    {
      v6 = a2;
    }

    else
    {
      v6 = a3;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    v24[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v5];
    CGImageFromImageData = PFFigCreateCGImageFromImageData();
    if (CGImageFromImageData)
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "PLImage *DCIM_scaleImageFromURL(NSURL *__strong, CGSize, UIImageOrientation)";
        v19 = 2048;
        v20 = CGImageFromImageData;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_DEFAULT, "PFFigCreateCGImageFromImageData %s returned %ld from %@", buf, 0x20u);
      }
    }

    v12 = [v5 path];
    v13 = DCIM_newPLImageWithContentsOfFile(v12);

    v14 = DCIM_resizedImage(v13, a2, a3);

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id DCIM_resizedImage(void *a1, double a2, double a3)
{
  v5 = a1;
  if (v5 && setupUIGraphicsFunctions())
  {
    v6 = sUIGraphicsBeginImageContext;
    v7 = v5;
    v6(a2, a3);
    [v7 drawInRect:{0.0, 0.0, a2, a3}];

    v8 = sUIGraphicsGetImageFromCurrentImageContext();
    sUIGraphicsEndImageContext();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t DCIM_blackColorRef()
{
  v0 = [NSClassFromString(@"UIColor") blackColor];
  v1 = [v0 CGColor];

  return v1;
}

uint64_t DCIM_blackColor()
{
  v0 = NSClassFromString(@"UIColor");

  return [(objc_class *)v0 blackColor];
}

uint64_t DCIM_whiteColor()
{
  v0 = NSClassFromString(@"UIColor");

  return [(objc_class *)v0 whiteColor];
}

uint64_t DCIM_redColor()
{
  v0 = NSClassFromString(@"UIColor");

  return [(objc_class *)v0 redColor];
}

uint64_t DCIM_greenColor()
{
  v0 = NSClassFromString(@"UIColor");

  return [(objc_class *)v0 greenColor];
}

uint64_t DCIM_blueColor()
{
  v0 = NSClassFromString(@"UIColor");

  return [(objc_class *)v0 blueColor];
}

id DCIM_resolvedPlaceholderImageColor()
{
  v0 = [NSClassFromString(@"UIScreen") mainScreen];
  v1 = [NSClassFromString(@"UIColor") systemBackgroundColor];
  v2 = [NSClassFromString(@"UIColor") quaternarySystemFillColor];
  v3 = [v1 _colorBlendedWithColor:v2];
  v4 = [v0 traitCollection];
  v5 = [v3 resolvedColorWithTraitCollection:v4];

  return v5;
}

__CFString *DCIM_NSStringFromCGSize(double a1, double a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, *&a1, 17, *&a2);

  return v2;
}

__CFString *DCIM_NSStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&a1, 17, *&a2, 17, *&a3, 17, *&a4);

  return v4;
}

uint64_t DCIM_newResizablePLImageWithCGImage(uint64_t a1, uint64_t a2, double a3)
{
  v3 = [objc_alloc(NSClassFromString(@"UIImage")) initWithCGImage:a1 scale:a2 orientation:a3];
  v4 = [v3 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

uint64_t DCIM_newPLImageWithData(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(NSClassFromString(@"UIImage")) initWithData:v1];

  return v2;
}

uint64_t DCIM_newPLImageWithIOSurface(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(NSClassFromString(@"UIImage"));

  return [v4 _initWithIOSurface:a1 imageOrientation:a2];
}

uint64_t DCIM_boldSystemFontOfSize(double a1)
{
  v2 = NSClassFromString(@"UIFont");

  return [(objc_class *)v2 boldSystemFontOfSize:a1];
}

double DCIM_boundsFromMainScreen()
{
  v0 = [NSClassFromString(@"UIScreen") mainScreen];
  v1 = v0;
  if (v0)
  {
    [v0 bounds];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
  }

  return v3;
}

double DCIM_boundsFromScreen(void *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F058];
  }

  [a1 bounds];
  return result;
}

double DCIM_scaleFromMainScreen()
{
  v0 = [NSClassFromString(@"UIScreen") mainScreen];
  v1 = v0;
  if (v0)
  {
    [v0 scale];
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  return v3;
}

double DCIM_scaleFromScreen(void *a1, const char *a2)
{
  if (!a1)
  {
    return 1.0;
  }

  [a1 scale];
  return result;
}

id DCIM_currentDeviceModelName()
{
  v0 = [NSClassFromString(@"UIDevice") currentDevice];
  v1 = [v0 model];

  return v1;
}

id DCIM_labelAttributesWithFontAndColor(void *a1, void *a2)
{
  v2 = 0;
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v8[0] = @"NSFont";
    v8[1] = @"NSForegroundColor";
    v9[0] = a1;
    v9[1] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = a2;
    v6 = a1;
    v2 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  return v2;
}

id DCIM_ASCIIDescriptionForPLImage(void *a1)
{
  v1 = a1;
  v2 = DCIM_sizeFromPLImage(v1);
  v4 = 700.0 / v2;
  if (700.0 / v2 >= 1300.0 / v3)
  {
    v4 = 1300.0 / v3;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = vcvtpd_s64_f64(v2 * v4 / 7.0);
  v7 = vcvtpd_s64_f64(v3 * v4 / 13.0);
  v8 = v1;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    goto LABEL_39;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v12 = CGBitmapContextCreate(0, v6, v7, 8uLL, 0, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  v13 = [v8 CGImage];
  CGContextSaveGState(v12);
  v14 = v6;
  v15 = [v8 imageOrientation];
  if (((v15 - 2) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v16 = v7;
  }

  else
  {
    v16 = v6;
  }

  if (((v15 - 2) & 0xFFFFFFFFFFFFFFFALL) == 0)
  {
    v14 = v7;
  }

  v17 = [v8 imageOrientation];
  v19 = *MEMORY[0x1E695EFD0];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  v20 = *(MEMORY[0x1E695EFD0] + 32);
  v21 = *(MEMORY[0x1E695EFD0] + 40);
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        v18 = xmmword_1AAA8EF50;
        v19 = xmmword_1AAA8EF20;
        v21 = 0.0;
        v20 = v14;
        goto LABEL_31;
      }

      v18 = xmmword_1AAA8EF30;
      v19 = xmmword_1AAA8EF40;
      v20 = 0.0;
      goto LABEL_26;
    }

    if (v17 != 6)
    {
      if (v17 == 7)
      {
        v18 = xmmword_1AAA8EF40;
        v19 = xmmword_1AAA8EF50;
        v20 = 0.0;
        v21 = 0.0;
      }

      goto LABEL_31;
    }

    v18 = xmmword_1AAA8EF20;
    v19 = xmmword_1AAA8EF30;
    v20 = v16;
LABEL_29:
    v21 = v14;
    goto LABEL_31;
  }

  switch(v17)
  {
    case 1:
      v18 = xmmword_1AAA8EF30;
      v19 = xmmword_1AAA8EF20;
      v20 = v14;
LABEL_26:
      v21 = v16;
      break;
    case 2:
      v18 = xmmword_1AAA8EF20;
      v19 = xmmword_1AAA8EF50;
      v21 = 0.0;
      v20 = v16;
      break;
    case 3:
      v18 = xmmword_1AAA8EF40;
      v19 = xmmword_1AAA8EF30;
      v20 = 0.0;
      goto LABEL_29;
  }

LABEL_31:
  *&transform.a = v19;
  *&transform.c = v18;
  transform.tx = v20;
  transform.ty = v21;
  CGContextConcatCTM(v12, &transform);
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v14;
  v37.size.height = v16;
  CGContextDrawImage(v12, v37, v13);
  CGContextRestoreGState(v12);
  Data = CGBitmapContextGetData(v12);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v12);
  v24 = malloc_type_malloc(4 * v7 * (v6 + 1), 0xDD0F1DB5uLL);
  v25 = v24;
  if (v7 >= 1)
  {
    v26 = 0;
    v27 = v24;
    do
    {
      v28 = Data;
      v29 = v27;
      v30 = v6;
      if (v6 >= 1)
      {
        do
        {
          v31 = *v28++;
          v32 = (171 * (v31 ^ 0xFFu)) >> 9;
          if (v32 >= 0x45)
          {
            v32 = 69;
          }

          *v29++ = CharacterForBrightness_chars[v32];
          --v30;
        }

        while (v30);
      }

      v25[++v26 * (v6 + 1) - 1] = 10;
      v27 += v6 + 1;
      Data += BytesPerRow;
    }

    while (v26 != v7);
  }

  CGContextRelease(v12);
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v25 length:4 * v7 * (v6 + 1) encoding:2617245952 freeWhenDone:1];
LABEL_39:

  v33 = [v5 stringWithFormat:@"\n%@", v10];

  return v33;
}

uint64_t DCIM_NSValueToCGAffineTransform@<X0>(void *a1@<X0>, _OWORD *x8_0@<X8>)
{
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0];
}

uint64_t DCIM_newJPEGRepresentationWithPLImage(void *a1, double a2)
{
  v3 = a1;
  if (setupUIGraphicsFunctions())
  {
    v4 = s_UIImageJPEGRepresentation(v3, 1, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t DCIM_newPNGRepresentationWithPLImage(void *a1)
{
  v1 = a1;
  if ([v1 CGImage] && setupUIGraphicsFunctions())
  {
    v2 = sUIImagePNGRepresentation(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id DCIM_imageWithColor(void *a1, double a2, double a3)
{
  v5 = a1;
  if (v5 && setupUIGraphicsFunctions())
  {
    v6 = sUIGraphicsBeginImageContext(a2, a3);
    CurrentContext = sUIGraphicsGetCurrentContext(v6);
    CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = a2;
    v11.size.height = a3;
    CGContextFillRect(CurrentContext, v11);
    v8 = sUIGraphicsGetImageFromCurrentImageContext();
    sUIGraphicsEndImageContext();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t DCIM_IS_PAD()
{
  if (DCIM_IS_PAD_onceToken != -1)
  {
    dispatch_once(&DCIM_IS_PAD_onceToken, &__block_literal_global_74);
  }

  return DCIM_IS_PAD_retval;
}

id DCIM_newPLImageWithStoredJPEGData(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v14 = *MEMORY[0x1E6991AD0];
    v15[0] = MEMORY[0x1E695E118];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    CVPixelBufferFromImageData = PFFigCreateCVPixelBufferFromImageData();
    if (CVPixelBufferFromImageData)
    {
      v4 = CVPixelBufferFromImageData;
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v9 = @"DCIM_newPLImageWithStoredJPEGData";
        v10 = 2048;
        v11 = v4;
        v12 = 2048;
        v13 = [v1 length];
        _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "PFFigCreateCVPixelBufferFromImageData %@ returned %ld from %lu", buf, 0x20u);
      }
    }
  }

  v6 = DCIM_newPLImageWithData(v1);
  if (v6)
  {
    objc_setAssociatedObject(v6, @"PLImageJPEGDataKey", v1, 0x301);
  }

  return v6;
}

uint64_t DCIM_decorateThumbnailWithTime(CGContext *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v29 = a2;
  if (setupUIGraphicsFunctions())
  {
    if ([v29 unsignedIntegerValue] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v17 = NSClassFromString(@"UIMovieScrubber");
      [v29 doubleValue];
      v16 = [(objc_class *)v17 timeStringForSeconds:rint(v18) forceFullWidthComponents:0 isElapsed:1];
    }

    if ([v16 length])
    {
      sUIGraphicsPushContext(a1);
      CGContextScaleCTM(a1, 1.0, -1.0);
      CGContextTranslateCTM(a1, 0.0, -a4);
      v19 = ceil(a4 - a8 - a6) + -1.0;
      pl_dispatch_once(&PLPhysicalScreenScale_didCheck, &__block_literal_global_237_4038);
      v20 = a7 + *&PLPhysicalScreenScale_screenScale * -5.0 * a9;
      v21 = [NSClassFromString(@"UIColor") whiteColor];
      [v21 set];

      pl_dispatch_once(&PLPhysicalScreenScale_didCheck, &__block_literal_global_237_4038);
      v22 = [NSClassFromString(@"UIFont") boldSystemFontOfSize:*&PLPhysicalScreenScale_screenScale * 12.0 * a9];
      [v16 _legacy_sizeWithFont:v22 constrainedToSize:2 lineBreakMode:{v20, a8}];
      v24 = round(v19 + (a8 - v23) * 0.5);
      if (v23 >= a8)
      {
        v25 = v19;
      }

      else
      {
        v25 = v24;
      }

      if (v23 >= a8)
      {
        v26 = a8;
      }

      else
      {
        v26 = v23;
      }

      v27 = [v16 _legacy_drawInRect:v22 withFont:2 lineBreakMode:2 alignment:{a5, v25, v20, v26}];
      sUIGraphicsPopContext(v27);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

Class DCIM_isApplicationSuspended()
{
  result = NSClassFromString(@"UIApplication");
  if (result)
  {
    v1 = [NSClassFromString(@"UIApplication") sharedApplication];
    v2 = [v1 isSuspended];

    return v2;
  }

  return result;
}

char *DCIM_MakeUniqueDirectoryWithPath(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = *MEMORY[0x1E696A370];
  v15[0] = &unk_1F1F90758;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  if (([v2 fileExistsAtPath:v1] & 1) == 0)
  {
    if ([v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:0])
    {
      v4 = v1;
      if (v4)
      {
        goto LABEL_10;
      }
    }
  }

  strcpy(v13, ".tmp.XXXXXX");
  if (![v1 getFileSystemRepresentation:__s maxLength:1023])
  {
    NSLog(@"*** Warning: invalid path %@", v1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  v5 = strlen(__s);
  v6 = [MEMORY[0x1E696AF00] currentThread];
  snprintf(&__s[v5], 1056 - v5, "-T%p", v6);

  __strcat_chk();
  v7 = mkdtemp(__s);
  if (v7)
  {
    v4 = v7;
LABEL_7:
    v4 = [v2 stringWithFileSystemRepresentation:v4 length:strlen(v4)];
    goto LABEL_10;
  }

  if (*__error() != 2)
  {
    goto LABEL_9;
  }

  v9 = [v1 stringByDeletingLastPathComponent];
  v10 = [v2 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:v3 error:0];

  if (v10)
  {
    [v1 getFileSystemRepresentation:__s maxLength:1023];
    v12 = 0;
    __strcat_chk();
    v4 = mkdtemp(__s);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    *__error() = 2;
  }

LABEL_10:

  return v4;
}

CGImageRef createImageByRemovingBlackBarsFromPreviewImage(CGImage *a1, int a2, int a3)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (a2 < 1 || a3 < 1 || !Width || !Height)
  {
    return 0;
  }

  v8 = a2 / a3;
  v9 = Width;
  v10 = Height;
  v11 = ceilf((Height - floorf(Width / v8)) * 0.5);
  if (v11 <= 2.0)
  {
    v17 = ceilf((v9 - floorf(v8 * v10)) * 0.5);
    if (v17 > 2.0)
    {
      v18 = v9 + (v17 * -2.0);
      if (v18 > 0.0)
      {
        v16 = v17;
        v14 = v18;
        v15 = Height;
        v13 = 0.0;
        goto LABEL_11;
      }
    }

    return 0;
  }

  v12 = v10 + (v11 * -2.0);
  if (v12 <= 0.0)
  {
    return 0;
  }

  v13 = v11;
  v14 = Width;
  v15 = v12;
  v16 = 0.0;
LABEL_11:

  return CGImageCreateWithImageInRect(a1, *&v16);
}

uint64_t PLSingleQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 != 4)
        {
          if (v13 == 5)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v47 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v47 & 0x7F) << v37;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_80;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v39;
            }

LABEL_80:
            v43 = 8;
          }

          else
          {
            if (v13 != 6)
            {
LABEL_45:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_82;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v46 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v46 & 0x7F) << v16;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_72;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_72:
            v43 = 40;
          }

          goto LABEL_81;
        }

        v14 = PBReaderReadData();
        v15 = 32;
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v49 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_68:
          v43 = 24;
          goto LABEL_81;
        }

        if (v13 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v48 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v48 & 0x7F) << v31;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v33;
          }

LABEL_76:
          v43 = 44;
LABEL_81:
          *(a1 + v43) = v22;
          goto LABEL_82;
        }

        if (v13 != 3)
        {
          goto LABEL_45;
        }

        v14 = PBReaderReadData();
        v15 = 16;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_82:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1AA9CD544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AA9CD6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t PLPlatformShouldPrefetchThumbnailsForComputeSyncUnprocessedAssetsOnly()
{
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"PLShouldPrefetchThumbnailsForComputeSyncUnprocessedAssetsOnly"];

    return v2;
  }

  return result;
}

void __PLPlatformSearchSupported_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PLPlatformSearchSupported_searchSupported = [v0 BOOLForKey:@"PLSearchIndexDisabled"] ^ 1;
}

uint64_t PLPlatformIsFrameDropRecoverySupported()
{
  result = PLIsDeviceClassiPhone();
  if (result)
  {
    return MGIsDeviceOneOfType() ^ 1;
  }

  return result;
}

void __PLPlatformGenerativeModelSystemsSupported_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    v2 = strerror(domain_answer);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v6 = v1;
      v7 = 2080;
      v8 = v2;
      _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with errno %d: %s", buf, 0x12u);
    }
  }

  else
  {
    PLPlatformGenerativeModelSystemsSupported_gmSupported = 0;
    if (PFOSVariantHasInternalDiagnostics())
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [v3 BOOLForKey:@"PLPlatformGenerativeModelSystemsSupported"];

      if (v4)
      {
        PLPlatformGenerativeModelSystemsSupported_gmSupported = 1;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLPlatformGenerativeModelSystemsSupported is overridden to YES via defaults", buf, 2u);
        }
      }
    }
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __copy_helper_block_e8_56n18_8_8_t0w1_s8_t16w32(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = result;
  return result;
}

__n128 __copy_helper_block_e8_48n18_8_8_t0w1_s8_t16w32(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = result;
  return result;
}

__n128 __copy_helper_block_e8_32n18_8_8_t0w1_s8_t16w32(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = result;
  return result;
}

void sub_1AA9D9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AA9DA60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__992(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PUTCreatePathForPersistentURL(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 scheme];
  v4 = [v3 isEqualToString:@"ipod-library"];

  if (v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v5 = getMPMediaLibraryClass_softClass;
    v17 = getMPMediaLibraryClass_softClass;
    if (!getMPMediaLibraryClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getMPMediaLibraryClass_block_invoke;
      v13[3] = &unk_1E7932D68;
      v13[4] = &v14;
      __getMPMediaLibraryClass_block_invoke(v13);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    v7 = [v5 defaultMediaLibrary];
    if ([v7 isValidAssetURL:a1])
    {
      v8 = [v7 pathForAssetURL:a1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];
    v9 = [v7 resourceClient];
    v12 = 0;
    [v9 fileURLForAssetURL:a1 withAdjustments:1 fileURL:&v12 error:0];
    v10 = v12;

    v8 = [v10 path];
  }

  objc_autoreleasePoolPop(v2);
  return v8;
}

void sub_1AA9E4ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E792FAE8;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PersistentURLTranslator.m" lineNumber:39 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PersistentURLTranslator.m" lineNumber:40 description:{@"Unable to find class %s", "MPMediaLibrary"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

id PUTCreateSandboxExtensionURLForPersistentURL(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 scheme];
  v4 = [v3 isEqualToString:@"ipod-library"];

  if (v4)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Requesting sandbox extension URL for Music URL, which is not supported", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v5 = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];
    v7 = [v5 resourceClient];
    v9 = 0;
    [v7 sandboxExtensionFileURLForAssetURL:a1 withAdjustments:1 fileURL:&v9 error:0];
    v6 = v9;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t PUTIsPersistentURL(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 scheme];
  if ([v3 isEqualToString:@"assets-library"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ipod-library"];
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t PUTGetCurrentAccessForURLAndToken(void *a1, _OWORD *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[PLPrivacy sharedInstance];
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  v7 = [v5 photosAccessAllowedWithScope:7 auditToken:v12 clientAuthorization:0];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 0 && ([a1 scheme], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"ipod-library"), v8, !v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_1AA9E5084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t PLScaleDimensionsToShortSide(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 >= SHIDWORD(a1))
  {
    v3 = HIDWORD(a1);
  }

  else
  {
    v3 = a1;
  }

  if (a1 <= SHIDWORD(a1))
  {
    v4 = HIDWORD(a1);
  }

  else
  {
    v4 = a1;
  }

  v5 = (v4 * a2) / v3;
  if (a3 < 1 || v5 <= a3)
  {
    if (v5 != a3)
    {
      a3 = (v5 + 1 + ((v5 + 1) >> 31)) & 0xFFFFFFFE;
    }
  }

  else
  {
    v6 = v3 * a3 / v4;
    if (v6 != a2)
    {
      a2 = (v6 + 1 + ((v6 + 1) >> 31)) & 0xFFFFFFFE;
    }
  }

  v7 = __ROR8__(a2 | (a3 << 32), 32);
  if (a1 <= SHIDWORD(a1))
  {
    return a2 | (a3 << 32);
  }

  else
  {
    return v7;
  }
}

double PLRectByCenteringAndScalingDimensionsToFitDimensions(uint64_t a1, uint64_t a2)
{
  v3 = a1 / SHIDWORD(a1);
  v4 = a2;
  v5 = v3 <= a2 / SHIDWORD(a2);
  v6 = v3 * SHIDWORD(a2);
  v7 = a2 / v3;
  if (v5)
  {
    v8 = SHIDWORD(a2);
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = a2;
  }

  if (v9 == v4)
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = (SHIDWORD(a2) - v8) * 0.5;
  }

  else
  {
    v11 = *(MEMORY[0x1E695F058] + 8);
    v10 = (v4 - v9) * 0.5;
  }

  v13 = CGRectIntegral(*(&v8 - 3));
  if (v13.size.width <= v13.size.height)
  {
    if (v13.size.height > v13.size.width)
    {
      v13.size.height = v13.size.height + -1.0;
    }
  }

  else
  {
    v13.size.width = v13.size.width + -1.0;
  }

  *&result = CGRectStandardize(v13);
  return result;
}

double PLCGSizeScaledToFitSize(uint64_t a1, uint64_t a2)
{
  v2 = a1 / SHIDWORD(a1);
  result = a2;
  if (v2 <= a2 / SHIDWORD(a2))
  {
    return v2 * SHIDWORD(a2);
  }

  return result;
}

uint64_t __PLRequestGetLog_block_invoke()
{
  PLRequestGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Request");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AA9E6F44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id PLURLForResourceProperties(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = PLPathForResourceProperties(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id PLPathForResourceProperties(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = a3;
  if (!PLResourceTypeIsAllowedForUseInFilename(a3, a4, a5))
  {
    v17 = 31;
  }

  v32 = a1;
  if (a1)
  {
    v20 = 0;
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (a5 || v17 != 31 || (a6 & 1) == 0)
        {
          FileMarker = _createFileMarker(v17, 2, a5);
          if (a5)
          {
            v20 = a9;
          }

          else
          {
            v20 = a8;
          }

          goto LABEL_36;
        }

        goto LABEL_24;
      }

      FileMarker = 0;
      v22 = a2;
      if (a4 != 3)
      {
        goto LABEL_37;
      }

      if ((a5 & 0xFFFF0000) != 0x40000)
      {
        if ((v17 & 0xFFFFFFFE) == 0xE)
        {
          FileMarker = _createFileMarker(v17, 3, a5);
          v20 = a10;
          goto LABEL_36;
        }

        if (v17 == 16)
        {
          if (a12)
          {
            FileMarker = 0;
            v22 = 0;
            v20 = a12;
          }

          else
          {
            v29 = [MEMORY[0x1E696AAA8] currentHandler];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *_pathForResourceProperties(const char *, const char *, PLResourceType, PLResourceVersion, PLResourceRecipeID, BOOL, const char *, const char *, const char *, const char *, const char *, const char *, const char *)"}];
            [v29 handleFailureInFunction:v30 file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"cvtBase != NULL"}];

            v20 = 0;
            FileMarker = 0;
            v22 = 0;
          }

          goto LABEL_37;
        }

        v24 = 31;
        v25 = 3;
        goto LABEL_20;
      }

      FileMarker = malloc_type_calloc(1uLL, 0xBuLL, 0xFB88419CuLL);
      if (snprintf(FileMarker, 0xBuLL, "%d_%d_%c", 4, a5 >> 1, 99) >= 0xB)
      {
        goto LABEL_50;
      }

      v20 = a11;
    }

    else
    {
      if (a4)
      {
        FileMarker = 0;
        v22 = a2;
        if (a4 != 1)
        {
          goto LABEL_37;
        }

        if (v17 != 16)
        {
          if (v17 == 31)
          {
            FileMarker = malloc_type_calloc(1uLL, 2uLL, 0x5F354E98uLL);
            *FileMarker = 112;
LABEL_35:
            v20 = a8;
            goto LABEL_36;
          }

          FileMarker = malloc_type_calloc(1uLL, 5uLL, 0x249D5FA8uLL);
          if (snprintf(FileMarker, 5uLL, "%c_%d", 112, v17) < 5)
          {
            goto LABEL_35;
          }

LABEL_50:
          __assert_rtn("_createFileMarker", "PLPhotoLibraryPathManagerUBF.m", 126, "formattedLen < markerLen");
        }

LABEL_24:
        FileMarker = 0;
        goto LABEL_35;
      }

      if (a5)
      {
        v24 = v17;
        v25 = 0;
LABEL_20:
        FileMarker = _createFileMarker(v24, v25, a5);
        v20 = a9;
        goto LABEL_36;
      }

      FileMarker = 0;
      if (v17 != 16 && v17 != 31)
      {
        FileMarker = malloc_type_calloc(1uLL, 3uLL, 0xD131BA79uLL);
        if (snprintf(FileMarker, 3uLL, "%d", v17) >= 3)
        {
          goto LABEL_50;
        }
      }

      v20 = a7;
    }

LABEL_36:
    v22 = a2;
LABEL_37:
    v23 = [PLPhotoLibraryPathManagerCore managedPathWithUuid:v32 base:v20 fileMarker:FileMarker extension:v22];
    if (v17 == 16 && a2 && a13)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@%s.%s", v32, @"_cvt_", a13, a2];
      v27 = [v23 stringByAppendingPathComponent:v26];

      v23 = v27;
    }

    if (FileMarker)
    {
      free(FileMarker);
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "_pathForResourceProperties uuid is NULL", buf, 2u);
  }

  v23 = 0;
LABEL_43:

  return v23;
}

uint64_t PLResourceTypeIsAllowedForUseInFilename(unsigned int a1, int a2, int a3)
{
  if (a1 <= 0x10)
  {
    if (((1 << a1) & 0x2C00) != 0)
    {
      return (a3 | a2) == 0;
    }

    if (((1 << a1) & 0xC000) != 0 || a1 == 16)
    {
      return 1;
    }
  }

  if (a1 - 3 < 3)
  {
    return (a3 | a2) == 0;
  }

  v5 = a2 == 2 && a3 == 0;
  return a1 == 7 && v5;
}

char *_createFileMarker(int a1, int a2, int a3)
{
  v3 = a2;
  if (a3 && a1 != 31)
  {
    v4 = malloc_type_calloc(1uLL, 0xEuLL, 0x82D53B91uLL);
    v5 = 14;
    v6 = snprintf(v4, 0xEuLL, "%d_%d_%c_%d");
    goto LABEL_12;
  }

  if (a1 == 31 && a3)
  {
    v4 = malloc_type_calloc(1uLL, 0xBuLL, 0xFB88419CuLL);
    v5 = 11;
    v6 = snprintf(v4, 0xBuLL, "%d_%d_%c");
    goto LABEL_12;
  }

  if (a1 == 16)
  {
    return 0;
  }

  if (a1 == 31 || !a2)
  {
    if (a1 == 31 || a2)
    {
      if (a2)
      {
        v4 = malloc_type_calloc(1uLL, 2uLL, 0x5F354E98uLL);
        *v4 = (0x6361706Fu >> (8 * v3));
        return v4;
      }

      return 0;
    }

    v5 = 3;
    v4 = malloc_type_calloc(1uLL, 3uLL, 0xD131BA79uLL);
    v6 = snprintf(v4, 3uLL, "%d");
  }

  else
  {
    v5 = 5;
    v4 = malloc_type_calloc(1uLL, 5uLL, 0x249D5FA8uLL);
    v6 = snprintf(v4, 5uLL, "%c_%d");
  }

LABEL_12:
  if (v5 <= v6)
  {
    __assert_rtn("_createFileMarker", "PLPhotoLibraryPathManagerUBF.m", 126, "formattedLen < markerLen");
  }

  return v4;
}

uint64_t PLResourceVersionDesignatorForResourceVersion(unsigned int a1)
{
  v1 = 0x6361706Fu >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 111;
  }

  return v1 & 0x7F;
}

id PLAllowedResourceTypesForOriginalResources()
{
  if (PLAllowedResourceTypesForOriginalResources_onceToken != -1)
  {
    dispatch_once(&PLAllowedResourceTypesForOriginalResources_onceToken, &__block_literal_global_1427);
  }

  v1 = PLAllowedResourceTypesForOriginalResources_allowedResourceTypes;

  return v1;
}

void __PLAllowedResourceTypesForOriginalResources_block_invoke()
{
  v0 = PLAllowedResourceTypesForOriginalResources_allowedResourceTypes;
  PLAllowedResourceTypesForOriginalResources_allowedResourceTypes = &unk_1F1F91178;
}

id PLResourceDataStoreErrorCreate(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A278]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PLResourceDataStoreErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id PLGuessResourceUTIForResourceType(int a1, int a2, void *a3)
{
  v5 = [a3 pathExtension];
  if (![v5 length] || (objc_msgSend(MEMORY[0x1E69C08F0], "resourceModelTypeForFilenameExtension:", v5), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = 0;
    switch(a1)
    {
      case 0:
      case 4:
      case 15:
      case 16:
        v7 = MEMORY[0x1E6982E30];
        goto LABEL_14;
      case 1:
        v7 = MEMORY[0x1E6982EE8];
        goto LABEL_14;
      case 2:
        v7 = MEMORY[0x1E6982CD0];
        goto LABEL_14;
      case 3:
      case 11:
      case 13:
        v7 = MEMORY[0x1E6982F80];
        goto LABEL_14;
      case 5:
      case 12:
      case 31:
        v7 = MEMORY[0x1E6982E48];
        goto LABEL_14;
      case 6:
      case 8:
        v7 = MEMORY[0x1E6982F68];
        goto LABEL_14;
      case 7:
      case 9:
      case 14:
        v7 = MEMORY[0x1E6982D60];
        goto LABEL_14;
      case 10:
        v7 = MEMORY[0x1E6982E30];
        if (a2)
        {
          v7 = MEMORY[0x1E6982EE8];
        }

LABEL_14:
        v6 = *v7;
        break;
      default:
        break;
    }
  }

  v8 = [v6 identifier];

  return v8;
}

void sub_1AA9EAFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1545(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL PLIsValidUUIDString(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] == 36 && (v2 = objc_msgSend(v1, "cStringUsingEncoding:", 4)) != 0)
  {
    memset(uu, 0, sizeof(uu));
    v3 = uuid_parse(v2, uu) == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1AA9EC354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel, int buf)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel);
      buf = 136446210;
      *(v26 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v29, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AA9EC8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel, int buf)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel);
      buf = 136446210;
      *(v26 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v29, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_e8_40n18_8_8_t0w1_s8_t16w32(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = result;
  return result;
}

uint64_t __Block_byref_object_copy__1936(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AA9FADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, os_signpost_id_t a35, os_activity_scope_state_s a36, SEL sel)
{
  if (a33 == 1)
  {
    os_activity_scope_leave(&a36);
  }

  if (a35)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    if (a35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(sel);
      *(v38 - 144) = 136446210;
      *(v37 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v41, OS_SIGNPOST_INTERVAL_END, a35, "PLXPC Sync", "%{public}s", (v38 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AA9FB4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, os_signpost_id_t a27, os_activity_scope_state_s a28, SEL sel)
{
  if (a25 == 1)
  {
    os_activity_scope_leave(&a28);
  }

  if (a27)
  {
    v32 = PLRequestGetLog();
    v33 = v32;
    if (a27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      Name = sel_getName(sel);
      *(v30 - 144) = 136446210;
      *(v29 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v33, OS_SIGNPOST_INTERVAL_END, a27, "PLXPC Sync", "%{public}s", (v30 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AA9FDE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AA9FE13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AA9FF77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, os_signpost_id_t a29, os_activity_scope_state_s a30, SEL sel)
{
  if (a27 == 1)
  {
    os_activity_scope_leave(&a30);
  }

  if (a29)
  {
    v34 = PLRequestGetLog();
    v35 = v34;
    if (a29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      Name = sel_getName(sel);
      *(v32 - 160) = 136446210;
      *(v31 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v35, OS_SIGNPOST_INTERVAL_END, a29, "PLXPC Sync", "%{public}s", (v32 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA019CC(_Unwind_Exception *a1)
{
  if (*(v2 - 144) == 1)
  {
    os_activity_scope_leave((v2 - 120));
  }

  if (*(v2 - 128))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 128);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 104));
      *(v2 - 96) = 136446210;
      *(v1 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

id PLClientApplicationIdentifierFromXPCConnection(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 auditToken];
    v3 = PLClientApplicationIdentifierFromAuditToken(v6, v2);
  }

  else
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v6[0]) = 136446210;
      *(v6 + 4) = "NSString *PLClientApplicationIdentifierFromXPCConnection(NSXPCConnection *__strong)";
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "%{public}s: missing required connection", v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

__CFString *PLClientApplicationIdentifierFromAuditToken(_OWORD *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *v12.val = *a1;
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &v12);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopySigningIdentifier(v6, 0);
    CFRelease(v7);
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12.val[0] = 136446466;
      *&v12.val[1] = "NSString *PLClientApplicationIdentifierFromAuditToken(audit_token_t, __strong id)";
      LOWORD(v12.val[3]) = 2114;
      *(&v12.val[3] + 2) = v3;
      v10 = "%{public}s: failed to get identifier from %{public}@";
LABEL_7:
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x16u);
    }
  }

  else
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12.val[0] = 136446466;
      *&v12.val[1] = "NSString *PLClientApplicationIdentifierFromAuditToken(audit_token_t, __strong id)";
      LOWORD(v12.val[3]) = 2114;
      *(&v12.val[3] + 2) = v3;
      v10 = "%{public}s: failed to get SecTask from %{public}@";
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

id PLDescriptionFromXPCObject()
{
  v0 = MEMORY[0x1AC592D30]();
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
  free(v0);

  return v1;
}

__CFString *PLStringFromXPCChangeSource(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@".Unknown(%d)", a1];
  }

  else
  {
    v2 = off_1E792FEC8[a1];
  }

  return v2;
}

id PLDescriptionFromXPCErrorDictionary(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      goto LABEL_12;
    }
  }

  else
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (v2)
      {
        Class = object_getClass(v2);
      }

      else
      {
        Class = 0;
      }

      v8 = 134218240;
      v9 = v2;
      v10 = 2048;
      v11 = Class;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, error dictionary %p = %p", &v8, 0x16u);
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

id PLStringFromXPCDictionary(void *a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v4, a2);
    if (string)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v10, 0x16u);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

id PLErrorFromXPCDictionary(void *a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLDataFromXPCDictionary(a1, a2);
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Failed to unarchive NSError, error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLDataFromXPCDictionary(void *a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v7 = xpc_dictionary_get_value(v4, a2);
    v8 = _PLDataExplicitLengthKey(a2);
    int64 = xpc_dictionary_get_int64(v4, v8);
    v10 = PLDataFromXPCDataObject(v7, int64);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v12 = 134218240;
      v13 = v4;
      v14 = 2048;
      v15 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v12, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

uint64_t _PLDataExplicitLengthKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v2 = [v1 stringByAppendingString:@"__LENGTH"];

  v3 = [v2 UTF8String];
  return v3;
}

id PLDataFromXPCDataObject(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || (Class = object_getClass(v3), Class == MEMORY[0x1E69E9ED0]))
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (Class != MEMORY[0x1E69E9E70])
  {
    if (Class == MEMORY[0x1E69E9F08])
    {
      v11 = [PLXPCShMemData alloc];
      if (a2 < 1)
      {
        v12 = [(PLXPCShMemData *)v11 initWithXPCShmem:v4];
      }

      else
      {
        v12 = [(PLXPCShMemData *)v11 initWithXPCShmem:v4 length:a2];
      }

      v6 = v12;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = objc_alloc(MEMORY[0x1E695DEF0]);
  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  length = xpc_data_get_length(v4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __PLDataFromXPCDataObject_block_invoke;
  v13[3] = &unk_1E792FE08;
  v14 = v4;
  v6 = [v8 initWithBytesNoCopy:bytes_ptr length:length deallocator:v13];

LABEL_6:

  return v6;
}

id PLURLFromXPCDictionary(void *a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v7 = PLStringFromXPCDictionary(v4, a2);
    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v10, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

id PLDictionaryFromXPCDictionary(void *a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v7 = xpc_dictionary_get_value(v4, a2);
    v8 = PLDictionaryFromXPCObject(v7);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v10, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

id PLDictionaryFromXPCObject(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1 || object_getClass(v1) == MEMORY[0x1E69E9ED0])
  {
    v4 = 0;
    goto LABEL_13;
  }

  v3 = _CFXPCCreateCFObjectFromXPCMessage();
  if (!v3)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "ERROR: PLDictionaryFromXPCDictionary failed to deserialize dictionary", &v9, 2u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "ERROR: PLDictionaryFromXPCDictionary failed to deserialize dictionary (root object not a dictionary: %@)", &v9, 0xCu);
    }

LABEL_11:

    v4 = 0;
    goto LABEL_12;
  }

  v4 = v3;
LABEL_12:

LABEL_13:

  return v4;
}

id PLArrayFromXPCDictionary(void *a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v7 = xpc_dictionary_get_value(v4, a2);
    v8 = PLArrayFromXPCObject(v7);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v10, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

id PLArrayFromXPCObject(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1 || object_getClass(v1) == MEMORY[0x1E69E9ED0])
  {
    v4 = 0;
    goto LABEL_13;
  }

  v3 = _CFXPCCreateCFObjectFromXPCMessage();
  if (!v3)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "ERROR: PLArrayFromXPCDictionary failed to deserialize array", &v9, 2u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "ERROR: PLArrayFromXPCDictionary failed to deserialize array (root object not an array: %@)", &v9, 0xCu);
    }

LABEL_11:

    v4 = 0;
    goto LABEL_12;
  }

  v4 = v3;
LABEL_12:

LABEL_13:

  return v4;
}

id PLDateFromXPCDictionary(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = PLDateFromXPCObject(v2);

  return v3;
}

id PLDateFromXPCObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E88])
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:xpc_double_get_value(v2)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLManagedObjectIDFromXPCValue(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(v3);
    if (length + 1 > 0xC7)
    {
      v5 = PLBackendGetLog();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v13 = "Bogus object ID in xpc data.";
      v14 = v5;
      v15 = 2;
      goto LABEL_13;
    }

    v8 = length;
    xpc_data_get_bytes_ptr(v3);
    __strncpy_chk();
    buf[v8] = 0;
    v9 = [v4 managedObjectIDFromUTF8String:buf length:v8];
    if (v9)
    {
      goto LABEL_15;
    }

    v10 = [v4 persistentStores];
    v5 = [v10 valueForKey:@"identifier"];

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 componentsJoinedByString:@", "];
      v17 = 136315394;
      v18 = buf;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Unable to get object ID for %s, persistent store IDs: %@", &v17, 0x16u);
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        Class = object_getClass(v3);
      }

      else
      {
        Class = 0;
      }

      *buf = 134218240;
      v22 = v3;
      v23 = 2048;
      v24 = Class;
      v13 = "Bogus value type in xpc, data %p = %p";
      v14 = v5;
      v15 = 22;
LABEL_13:
      _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

LABEL_14:

  v9 = 0;
LABEL_15:

  return v9;
}

IOSurfaceRef PLCreateIOSurfaceFromXPCDictionary(void *a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v7 = xpc_dictionary_get_value(v4, a2);
    v8 = v7;
    if (v7)
    {
      v9 = IOSurfaceLookupFromXPCObject(v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      v11 = 134218240;
      v12 = v4;
      v13 = 2048;
      v14 = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", &v11, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

id PLIndexSetFromXPCDictionary(void *a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_value(v4, a2);
    if (v5)
    {
      v7 = [MEMORY[0x1E696AD50] indexSet];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v14 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __PLIndexSetFromXPCDictionary_block_invoke;
      v10[3] = &unk_1E792FE30;
      v12 = buf;
      v8 = v7;
      v11 = v8;
      xpc_array_apply(v5, v10);

      _Block_object_dispose(buf, 8);
      goto LABEL_11;
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Class = object_getClass(v4);
      }

      else
      {
        Class = 0;
      }

      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = Class;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Bogus value type in xpc, dictionary %p = %p", buf, 0x16u);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

void sub_1AAA04134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PLIndexSetFromXPCDictionary_block_invoke(uint64_t a1, char a2, xpc_object_t xuint)
{
  if (a2)
  {
    [*(a1 + 32) addIndexesInRange:{*(*(*(a1 + 40) + 8) + 24), xpc_uint64_get_value(xuint)}];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_uint64_get_value(xuint);
  }

  return 1;
}

id PLDataFromManagedObjectID(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 URIRepresentation];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:buffer length:{CFURLGetBytes(v1, buffer, 250)}];

  return v2;
}

id PLManagedObjectIDFromData(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if ((v5 + 1) > 0xC8)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v3;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Bogus object ID from data: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v6 = v5;
    [v3 getBytes:buf length:v5];
    buf[v6] = 0;
    v7 = [v4 managedObjectIDFromUTF8String:buf length:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = [v4 persistentStores];
    v9 = [v8 valueForKey:@"identifier"];

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 componentsJoinedByString:@", "];
      v13 = 136315394;
      v14 = buf;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Unable to get object ID for %s, persistent store IDs: %@", &v13, 0x16u);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

void PLXPCDictionarySetString(void *a1, const char *a2, void *a3)
{
  xdict = a1;
  v5 = [a3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(xdict, a2, v5);
  }
}

void PLXPCDictionarySetError(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a3)
  {
    v9 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
    v7 = v9;
    if (v6)
    {
      PLXPCDictionarySetData(v5, a2, v6);
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Failed to archive errorData, error: %@", buf, 0xCu);
      }
    }
  }
}

void PLXPCDictionarySetData(void *a1, const char *a2, void *a3)
{
  if (a3)
  {
    v5 = a1;
    v6 = [a3 _createDispatchData];
    value = xpc_data_create_with_dispatch_data(v6);

    xpc_dictionary_set_value(v5, a2, value);
  }
}

void PLXPCDictionarySetXPCDataWithLength(void *a1, const char *a2, void *a3, void *a4)
{
  v7 = a4;
  xdict = a1;
  xpc_dictionary_set_value(xdict, a2, a3);
  v8 = [v7 longLongValue];

  v9 = _PLDataExplicitLengthKey(a2);
  xpc_dictionary_set_int64(xdict, v9, v8);
}

void PLXPCDictionarySetDictionary(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_dictionary_set_value(v4, a2, v5);
  }
}

void PLXPCDictionarySetArray(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_dictionary_set_value(v4, a2, v5);
  }
}

void PLXPCDictionarySetDate(void *a1, const char *a2, void *a3)
{
  if (a3)
  {
    xdict = a1;
    [a3 timeIntervalSinceReferenceDate];
    xpc_dictionary_set_double(xdict, a2, v5);
  }
}

void PLXPCDictionarySetIOSurface(void *a1, const char *a2, __IOSurface *a3)
{
  v5 = a1;
  if (a3)
  {
    xdict = v5;
    XPCObject = IOSurfaceCreateXPCObject(a3);
    if (XPCObject)
    {
      xpc_dictionary_set_value(xdict, a2, XPCObject);
    }

    v5 = xdict;
  }
}

void PLXPCDictionarySetIndexSet(void *a1, const char *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a1;
    v7 = xpc_array_create(0, 0);
    xpc_dictionary_set_value(v6, a2, v7);

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __PLXPCDictionarySetIndexSet_block_invoke;
    v9[3] = &unk_1E792FE58;
    v10 = v7;
    v8 = v7;
    [v5 enumerateRangesUsingBlock:v9];
  }
}

void __PLXPCDictionarySetIndexSet_block_invoke(uint64_t a1, uint64_t value, uint64_t a3, _BYTE *a4)
{
  xpc_array_set_uint64(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, value);
  xpc_array_set_uint64(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, a3);
  *a4 = 0;
}

void PLXPCDictionarySetManagedObjectID(void *a1, const char *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a3 URIRepresentation];
  v7 = v6;
  if (v6)
  {
    v8 = CFURLGetBytes(v6, buffer, 250);
    if (v8 >= 1)
    {
      xpc_dictionary_set_data(v5, a2, buffer, v8);
    }
  }
}

void PLXPCArrayAppendManagedObjectID(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 URIRepresentation];
  v5 = v4;
  if (v4)
  {
    v6 = CFURLGetBytes(v4, buffer, 250);
    if (v6 >= 1)
    {
      xpc_array_set_data(v3, 0xFFFFFFFFFFFFFFFFLL, buffer, v6);
    }
  }
}

PLSandboxedURL *PLSandboxedURLFromXPCDictionary(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PLURLFromXPCDictionary(v3, a2);
  v5 = _PLSandboxedURLTokenKey(a2);
  v6 = PLStringFromXPCDictionary(v3, v5);

  v7 = [[PLSandboxedURL alloc] initWithURL:v4 sandboxExtensionToken:v6 consume:1];

  return v7;
}

uint64_t _PLSandboxedURLTokenKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v2 = [v1 stringByAppendingString:@"__TOKEN"];

  v3 = [v2 UTF8String];
  return v3;
}

void PLXPCDictionarySetSandboxedURL(void *a1, const char *a2, void *a3)
{
  v9 = a3;
  v5 = a1;
  if ([v9 isFileURL])
  {
    v6 = [v9 path];
    v7 = PLGetSandboxExtensionTokenWithFlags(v6, *MEMORY[0x1E69E9BA8], *MEMORY[0x1E69E9BE0], 0);
  }

  else
  {
    v7 = 0;
  }

  PLXPCDictionarySetURL(v5, a2, v9);
  v8 = _PLSandboxedURLTokenKey(a2);
  PLXPCDictionarySetString(v5, v8, v7);
}

id PLGetSandboxExtensionTokenWithFlags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = v5;
  if (v5 && (([v5 fileSystemRepresentation], !a4) ? (v7 = sandbox_extension_issue_file()) : (v7 = sandbox_extension_issue_file_to_process()), (v8 = v7) != 0))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void PLDictionarySetSandboxedURL(void *a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = a1;
  if ([v10 isFileURL])
  {
    v6 = [v10 path];
    v7 = PLGetSandboxExtensionTokenWithFlags(v6, *MEMORY[0x1E69E9BA8], *MEMORY[0x1E69E9BE0], 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v5 setObject:v10 forKeyedSubscript:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_PLSandboxedURLTokenKey(a2)];
  [v5 setObject:v7 forKeyedSubscript:v9];
}

PLSandboxedURL *PLSandboxedURLFromDictionary(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_PLSandboxedURLTokenKey(a2)];
  v8 = [v4 objectForKeyedSubscript:v7];

  v9 = [[PLSandboxedURL alloc] initWithURL:v6 sandboxExtensionToken:v8 consume:1];

  return v9;
}

id PLClientBundleIdentifierFromXPCConnection(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  [v1 auditToken];
  v13 = 0;
  *buf = 0u;
  v19 = 0u;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v3 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v2;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_DEFAULT, "%@ has no bundle identifier. Will fallback on process ID", buf, 0xCu);
    }

    v4 = [v2 processIdentifier];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v19 = 0u;
    if (proc_name(v4, buf, 0x100u))
    {
      v13 = CFStringCreateWithCString(0, buf, 0x8000100u);
      if (v13)
      {
        goto LABEL_14;
      }

      v5 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v14 = 0;
      v6 = "Can't decypher process name";
      v7 = v5;
      v8 = 2;
    }

    else
    {
      v5 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = __error();
      v11 = strerror(*v10);
      *v14 = 138412546;
      v15 = v2;
      v16 = 2080;
      v17 = v11;
      v6 = "Can't get process name for %@: %s";
      v7 = v5;
      v8 = 22;
    }

    _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, v6, v14, v8);
    goto LABEL_13;
  }

LABEL_14:
  v9 = v13;
  if (!v13)
  {
    v9 = CFRetain(@"anonymous");
  }

LABEL_16:

  return v9;
}

void _PLJobLogDictionary(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [@"\t" mutableCopy];
  if (a2 >= 1)
  {
    v8 = a2;
    do
    {
      [v7 appendString:@"\t"];
      --v8;
    }

    while (v8);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___PLJobLogDictionary_block_invoke;
  v11[3] = &unk_1E792FEA8;
  v12 = v6;
  v13 = v7;
  v14 = a2;
  v9 = v7;
  v10 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
}

xpc_object_t PLCreateMemoryMappedXPCObjectFromFileURL(void *a1, void *a2, void *a3)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 path];
  v8 = open([v7 fileSystemRepresentation], 0);

  if (v8 <= 0)
  {
    v23 = *__error();
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A798];
    v51 = *MEMORY[0x1E696A578];
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v5 lastPathComponent];
    v28 = [v26 stringWithFormat:@"Unable to open '%@' for reading. (%s)", v27, strerror(v23)];
    v52[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v22 = [v24 errorWithDomain:v25 code:v23 userInfo:v29];
    v30 = 0;
  }

  else
  {
    v43 = a3;
    v44 = v5;
    v42 = v6;
    v9 = [v6 unsignedLongValue];
    v10 = mmap(0, v9, 1, 1, v8, 0);
    v11 = close(v8);
    v12 = MEMORY[0x1E696A798];
    v13 = MEMORY[0x1E696A578];
    if (v11)
    {
      v14 = *__error();
      v15 = MEMORY[0x1E696ABC0];
      v16 = v12;
      v17 = *v12;
      v49 = *v13;
      v18 = MEMORY[0x1E696AEC0];
      v19 = [v44 lastPathComponent];
      v20 = [v18 stringWithFormat:@"Error closing file '%@'. (%s)", v19, strerror(v14)];
      v50 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v22 = [v15 errorWithDomain:v17 code:v14 userInfo:v21];
    }

    else
    {
      v16 = MEMORY[0x1E696A798];
      v22 = 0;
    }

    if (v10 == -1)
    {
      v36 = *__error();
      v37 = MEMORY[0x1E696ABC0];
      v38 = *v16;
      v47 = *MEMORY[0x1E696A578];
      v39 = MEMORY[0x1E696AEC0];
      v5 = v44;
      v27 = [v44 lastPathComponent];
      v28 = [v39 stringWithFormat:@"mmap(2) failed for '%@'. (%s)", v27, strerror(v36)];
      v48 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v35 = [v37 errorWithDomain:v38 code:v36 userInfo:v29];

      v30 = 0;
    }

    else
    {
      v30 = xpc_shmem_create(v10, v9);
      if (!munmap(v10, v9))
      {
        v6 = v42;
        a3 = v43;
        v5 = v44;
        if (!v43)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v31 = *__error();
      v32 = MEMORY[0x1E696ABC0];
      v33 = *v16;
      v45 = *MEMORY[0x1E696A578];
      v34 = MEMORY[0x1E696AEC0];
      v5 = v44;
      v27 = [v44 lastPathComponent];
      v28 = [v34 stringWithFormat:@"munmap(2) failed for '%@'. (%s)", v27, strerror(v31)];
      v46 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v35 = [v32 errorWithDomain:v33 code:v31 userInfo:v29];
    }

    v22 = v35;
    v6 = v42;
    a3 = v43;
  }

  if (a3)
  {
LABEL_12:
    v40 = v22;
    *a3 = v22;
  }

LABEL_13:

  return v30;
}

xpc_object_t PLCreateMemoryMappedXPCObjectFromData(void *a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 length];
  if (!v4)
  {
    v15 = 0;
    v8 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = mmap(0, v4, 3, 4097, 1207959552, 0);
  if (v6 == -1)
  {
    v16 = *__error();
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v19 = v16;
    v24 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mmap(2) failed. (%s)", strerror(v16)];
    v25[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v15 = [v17 errorWithDomain:v18 code:v19 userInfo:v14];
    v8 = 0;
  }

  else
  {
    v7 = v6;
    memcpy(v6, [v3 bytes], v5);
    v8 = xpc_shmem_create(v7, v5);
    if (!munmap(v7, v5))
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v9 = *__error();
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A798];
    v12 = v9;
    v22 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"munmap(2) failed. (%s)", strerror(v9), v22];
    v23 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [v10 errorWithDomain:v11 code:v12 userInfo:v14];
  }

  if (a2)
  {
LABEL_9:
    v20 = v15;
    *a2 = v15;
  }

LABEL_10:

  return v8;
}

id PLSandboxExtensionTokenAsData(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v1 length:{"UTF8String"), strlen(objc_msgSend(v1, "UTF8String")) + 1}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PLXPCActivityRegister(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __PLXPCActivityRegister_block_invoke;
  handler[3] = &unk_1E792FE80;
  v12 = v6;
  v13 = a1;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  xpc_activity_register(a1, v7, handler);
}

void __PLXPCActivityRegister_block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v10 = 136315138;
      v11 = v9;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "registered xpc activity and pushed to run state for identifier: %s", &v10, 0xCu);
    }

    v7 = a1[5];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (!state)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v10 = 136315138;
      v11 = v6;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "registered xpc activity check in for identifier: %s", &v10, 0xCu);
    }

    v7 = a1[4];
    if (v7)
    {
LABEL_6:
      (*(v7 + 16))(v7, v3);
    }
  }
}

void PLRunWithIncrementedAtomicInt32(atomic_uint *a1, void *a2)
{
  v3 = a2;
  atomic_fetch_add(a1, 1u);
  v4 = v3;
  v3[2]();
  atomic_fetch_add(a1, 0xFFFFFFFF);
}

void sub_1AAA05DF0(void *a1)
{
  objc_begin_catch(a1);
  atomic_fetch_add(v1, 0xFFFFFFFF);
  objc_exception_rethrow();
}

void sub_1AAA092E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLIsUBFOnDCIMLibraryURLForSingletonLibraryPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 stringByAppendingPathComponent:@"PhotoData"];
  v5 = [v4 stringByAppendingPathComponent:@"UBF"];

  v6 = [v3 path];

  v7 = [v6 isEqualToString:v5];
  return v7;
}

id PLDCIMURLForResourcePropertiesAndPathManager(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [v12 photoDirectoryWithType:1];
  v16 = [v15 UTF8String];

  v17 = [v12 photoDirectoryWithType:4];
  [v17 UTF8String];

  v18 = [v12 photoDirectoryWithType:9];
  v19 = [v18 UTF8String];

  v20 = [v12 photoDirectoryWithType:10];
  v21 = [v20 UTF8String];

  v22 = [v12 photoDirectoryWithType:19];
  v23 = [v22 UTF8String];

  v24 = [v12 photoDirectoryWithType:12];

  v25 = [v24 UTF8String];
  v27 = PLDCIMURLForResourceProperties(a1, a2, a3, a4, v14, v13, v16, v26, v19, v21, v23, v25, a8);

  return v27;
}

id PLAggdGetLog()
{
  if (PLAggdGetLog_predicate != -1)
  {
    dispatch_once(&PLAggdGetLog_predicate, &__block_literal_global_2532);
  }

  v1 = PLAggdGetLog_log;

  return v1;
}

uint64_t __PLAggdGetLog_block_invoke()
{
  PLAggdGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Aggd");

  return MEMORY[0x1EEE66BB8]();
}

id PLAnalysisCoordinatorGetLog()
{
  if (PLAnalysisCoordinatorGetLog_predicate != -1)
  {
    dispatch_once(&PLAnalysisCoordinatorGetLog_predicate, &__block_literal_global_3);
  }

  v1 = PLAnalysisCoordinatorGetLog_log;

  return v1;
}

uint64_t __PLAnalysisCoordinatorGetLog_block_invoke()
{
  PLAnalysisCoordinatorGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "AnalysisCoordinator");

  return MEMORY[0x1EEE66BB8]();
}

id PLAssetAnalysisGetLog()
{
  if (PLAssetAnalysisGetLog_predicate != -1)
  {
    dispatch_once(&PLAssetAnalysisGetLog_predicate, &__block_literal_global_6_2536);
  }

  v1 = PLAssetAnalysisGetLog_log;

  return v1;
}

uint64_t __PLAssetAnalysisGetLog_block_invoke()
{
  PLAssetAnalysisGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "AssetAnalysis");

  return MEMORY[0x1EEE66BB8]();
}

id PLAssetImportGetLog()
{
  if (PLAssetImportGetLog_predicate != -1)
  {
    dispatch_once(&PLAssetImportGetLog_predicate, &__block_literal_global_9);
  }

  v1 = PLAssetImportGetLog_log;

  return v1;
}

uint64_t __PLAssetImportGetLog_block_invoke()
{
  PLAssetImportGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "AssetImport");

  return MEMORY[0x1EEE66BB8]();
}

id PLAvailabilityRequestGetLog()
{
  if (PLAvailabilityRequestGetLog_predicate != -1)
  {
    dispatch_once(&PLAvailabilityRequestGetLog_predicate, &__block_literal_global_12_2540);
  }

  v1 = PLAvailabilityRequestGetLog_log;

  return v1;
}

uint64_t __PLAvailabilityRequestGetLog_block_invoke()
{
  PLAvailabilityRequestGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "AvailabilityRequest");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoKitIngestGetLog()
{
  if (PLPhotoKitIngestGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoKitIngestGetLog_predicate, &__block_literal_global_18_2546);
  }

  v1 = PLPhotoKitIngestGetLog_log;

  return v1;
}

uint64_t __PLPhotoKitIngestGetLog_block_invoke()
{
  PLPhotoKitIngestGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PhotoKitIngest");

  return MEMORY[0x1EEE66BB8]();
}

id PLBackgroundJobServiceGetLog()
{
  if (PLBackgroundJobServiceGetLog_predicate != -1)
  {
    dispatch_once(&PLBackgroundJobServiceGetLog_predicate, &__block_literal_global_21);
  }

  v1 = PLBackgroundJobServiceGetLog_log;

  return v1;
}

uint64_t __PLBackgroundJobServiceGetLog_block_invoke()
{
  PLBackgroundJobServiceGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "BackgroundJobService");

  return MEMORY[0x1EEE66BB8]();
}

id PLCPLGetLog()
{
  if (PLCPLGetLog_predicate != -1)
  {
    dispatch_once(&PLCPLGetLog_predicate, &__block_literal_global_24);
  }

  v1 = PLCPLGetLog_log;

  return v1;
}

uint64_t __PLCPLGetLog_block_invoke()
{
  PLCPLGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CPL");

  return MEMORY[0x1EEE66BB8]();
}

id PLCPLSignpostsTelemetryGetLog()
{
  if (PLCPLSignpostsTelemetryGetLog_predicate != -1)
  {
    dispatch_once(&PLCPLSignpostsTelemetryGetLog_predicate, &__block_literal_global_27);
  }

  v1 = PLCPLSignpostsTelemetryGetLog_log;

  return v1;
}

uint64_t __PLCPLSignpostsTelemetryGetLog_block_invoke()
{
  PLCPLSignpostsTelemetryGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CPLSignpostsTelemetry");

  return MEMORY[0x1EEE66BB8]();
}

id PLCacheMetricsCollectorGetLog()
{
  if (PLCacheMetricsCollectorGetLog_predicate != -1)
  {
    dispatch_once(&PLCacheMetricsCollectorGetLog_predicate, &__block_literal_global_30);
  }

  v1 = PLCacheMetricsCollectorGetLog_log;

  return v1;
}

uint64_t __PLCacheMetricsCollectorGetLog_block_invoke()
{
  PLCacheMetricsCollectorGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CacheMetricsCollector");

  return MEMORY[0x1EEE66BB8]();
}

id PLCameraConnectionKitGetLog()
{
  if (PLCameraConnectionKitGetLog_predicate != -1)
  {
    dispatch_once(&PLCameraConnectionKitGetLog_predicate, &__block_literal_global_33);
  }

  v1 = PLCameraConnectionKitGetLog_log;

  return v1;
}

uint64_t __PLCameraConnectionKitGetLog_block_invoke()
{
  PLCameraConnectionKitGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CameraConnectionKit");

  return MEMORY[0x1EEE66BB8]();
}

id PLCameraTaskConstraintsGetLog()
{
  if (PLCameraTaskConstraintsGetLog_predicate != -1)
  {
    dispatch_once(&PLCameraTaskConstraintsGetLog_predicate, &__block_literal_global_36);
  }

  v1 = PLCameraTaskConstraintsGetLog_log;

  return v1;
}

uint64_t __PLCameraTaskConstraintsGetLog_block_invoke()
{
  PLCameraTaskConstraintsGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CameraTaskConstraints");

  return MEMORY[0x1EEE66BB8]();
}

id PLClientServerTransactionsGetLog()
{
  if (PLClientServerTransactionsGetLog_predicate != -1)
  {
    dispatch_once(&PLClientServerTransactionsGetLog_predicate, &__block_literal_global_42_2558);
  }

  v1 = PLClientServerTransactionsGetLog_log;

  return v1;
}

uint64_t __PLClientServerTransactionsGetLog_block_invoke()
{
  PLClientServerTransactionsGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ClientServerTransactions");

  return MEMORY[0x1EEE66BB8]();
}

id PLCloudResourcePruneGetLog()
{
  if (PLCloudResourcePruneGetLog_predicate != -1)
  {
    dispatch_once(&PLCloudResourcePruneGetLog_predicate, &__block_literal_global_45);
  }

  v1 = PLCloudResourcePruneGetLog_log;

  return v1;
}

uint64_t __PLCloudResourcePruneGetLog_block_invoke()
{
  PLCloudResourcePruneGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "CloudResourcePrune");

  return MEMORY[0x1EEE66BB8]();
}

id PLDaemonJobsGetLog()
{
  if (PLDaemonJobsGetLog_predicate != -1)
  {
    dispatch_once(&PLDaemonJobsGetLog_predicate, &__block_literal_global_48);
  }

  v1 = PLDaemonJobsGetLog_log;

  return v1;
}

uint64_t __PLDaemonJobsGetLog_block_invoke()
{
  PLDaemonJobsGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "DaemonJobs");

  return MEMORY[0x1EEE66BB8]();
}

id PLDeferredProcessingGetLog()
{
  if (PLDeferredProcessingGetLog_predicate != -1)
  {
    dispatch_once(&PLDeferredProcessingGetLog_predicate, &__block_literal_global_51_2563);
  }

  v1 = PLDeferredProcessingGetLog_log;

  return v1;
}

uint64_t __PLDeferredProcessingGetLog_block_invoke()
{
  PLDeferredProcessingGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "DeferredProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id PLDupesGetLog()
{
  if (PLDupesGetLog_predicate != -1)
  {
    dispatch_once(&PLDupesGetLog_predicate, &__block_literal_global_54);
  }

  v1 = PLDupesGetLog_log;

  return v1;
}

uint64_t __PLDupesGetLog_block_invoke()
{
  PLDupesGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Dupes");

  return MEMORY[0x1EEE66BB8]();
}

id PLDuplicateDetectionGetLog()
{
  if (PLDuplicateDetectionGetLog_predicate != -1)
  {
    dispatch_once(&PLDuplicateDetectionGetLog_predicate, &__block_literal_global_57_2567);
  }

  v1 = PLDuplicateDetectionGetLog_log;

  return v1;
}

uint64_t __PLDuplicateDetectionGetLog_block_invoke()
{
  PLDuplicateDetectionGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "DuplicateDetection");

  return MEMORY[0x1EEE66BB8]();
}

id PLAssetStackGetLog()
{
  if (PLAssetStackGetLog_predicate != -1)
  {
    dispatch_once(&PLAssetStackGetLog_predicate, &__block_literal_global_60_2570);
  }

  v1 = PLAssetStackGetLog_log;

  return v1;
}

uint64_t __PLAssetStackGetLog_block_invoke()
{
  PLAssetStackGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "AssetStack");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PLGatekeeperXPCGetLog_block_invoke()
{
  PLGatekeeperXPCGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "GatekeeperXPC");

  return MEMORY[0x1EEE66BB8]();
}

id PLImageWriterGetLog()
{
  if (PLImageWriterGetLog_predicate != -1)
  {
    dispatch_once(&PLImageWriterGetLog_predicate, &__block_literal_global_69);
  }

  v1 = PLImageWriterGetLog_log;

  return v1;
}

uint64_t __PLImageWriterGetLog_block_invoke()
{
  PLImageWriterGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ImageWriter");

  return MEMORY[0x1EEE66BB8]();
}

id PLFetchPerformanceGetLog()
{
  if (PLFetchPerformanceGetLog_predicate != -1)
  {
    dispatch_once(&PLFetchPerformanceGetLog_predicate, &__block_literal_global_75);
  }

  v1 = PLFetchPerformanceGetLog_log;

  return v1;
}

uint64_t __PLFetchPerformanceGetLog_block_invoke()
{
  PLFetchPerformanceGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "FetchPerformance");

  return MEMORY[0x1EEE66BB8]();
}

id PLInterLibraryTransferGetLog()
{
  if (PLInterLibraryTransferGetLog_predicate != -1)
  {
    dispatch_once(&PLInterLibraryTransferGetLog_predicate, &__block_literal_global_78);
  }

  v1 = PLInterLibraryTransferGetLog_log;

  return v1;
}

uint64_t __PLInterLibraryTransferGetLog_block_invoke()
{
  PLInterLibraryTransferGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "InterLibraryTransfer");

  return MEMORY[0x1EEE66BB8]();
}

id PLLibraryServicesGetLog()
{
  if (PLLibraryServicesGetLog_predicate != -1)
  {
    dispatch_once(&PLLibraryServicesGetLog_predicate, &__block_literal_global_84);
  }

  v1 = PLLibraryServicesGetLog_log;

  return v1;
}

uint64_t __PLLibraryServicesGetLog_block_invoke()
{
  PLLibraryServicesGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "LibraryServices");

  return MEMORY[0x1EEE66BB8]();
}

id PLMomentGenerationGetLog()
{
  if (PLMomentGenerationGetLog_predicate != -1)
  {
    dispatch_once(&PLMomentGenerationGetLog_predicate, &__block_literal_global_90);
  }

  v1 = PLMomentGenerationGetLog_log;

  return v1;
}

uint64_t __PLMomentGenerationGetLog_block_invoke()
{
  PLMomentGenerationGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "MomentGeneration");

  return MEMORY[0x1EEE66BB8]();
}

id PLMyPhotoStreamGetLog()
{
  if (PLMyPhotoStreamGetLog_predicate != -1)
  {
    dispatch_once(&PLMyPhotoStreamGetLog_predicate, &__block_literal_global_93);
  }

  v1 = PLMyPhotoStreamGetLog_log;

  return v1;
}

uint64_t __PLMyPhotoStreamGetLog_block_invoke()
{
  PLMyPhotoStreamGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "MyPhotoStream");

  return MEMORY[0x1EEE66BB8]();
}

id PLPTPGetLog()
{
  if (PLPTPGetLog_predicate != -1)
  {
    dispatch_once(&PLPTPGetLog_predicate, &__block_literal_global_96);
  }

  v1 = PLPTPGetLog_log;

  return v1;
}

uint64_t __PLPTPGetLog_block_invoke()
{
  PLPTPGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "PTP");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoAnalysisQueriesGetLog()
{
  if (PLPhotoAnalysisQueriesGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoAnalysisQueriesGetLog_predicate, &__block_literal_global_102_2589);
  }

  v1 = PLPhotoAnalysisQueriesGetLog_log;

  return v1;
}

uint64_t __PLPhotoAnalysisQueriesGetLog_block_invoke()
{
  PLPhotoAnalysisQueriesGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "photoanalysisd");

  return MEMORY[0x1EEE66BB8]();
}

id PLImportGetLog()
{
  if (PLImportGetLog_predicate != -1)
  {
    dispatch_once(&PLImportGetLog_predicate, &__block_literal_global_111);
  }

  v1 = PLImportGetLog_log;

  return v1;
}

uint64_t __PLImportGetLog_block_invoke()
{
  PLImportGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Import");

  return MEMORY[0x1EEE66BB8]();
}

id PLPrefetchGetLog()
{
  if (PLPrefetchGetLog_predicate != -1)
  {
    dispatch_once(&PLPrefetchGetLog_predicate, &__block_literal_global_120);
  }

  v1 = PLPrefetchGetLog_log;

  return v1;
}

uint64_t __PLPrefetchGetLog_block_invoke()
{
  PLPrefetchGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "prefetch");

  return MEMORY[0x1EEE66BB8]();
}

id PLResourceCachingGetLog()
{
  if (PLResourceCachingGetLog_predicate != -1)
  {
    dispatch_once(&PLResourceCachingGetLog_predicate, &__block_literal_global_123);
  }

  v1 = PLResourceCachingGetLog_log;

  return v1;
}

uint64_t __PLResourceCachingGetLog_block_invoke()
{
  PLResourceCachingGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "ResourceCaching");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchIndexGetLog()
{
  if (PLSearchIndexGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchIndexGetLog_predicate, &__block_literal_global_126);
  }

  v1 = PLSearchIndexGetLog_log;

  return v1;
}

uint64_t __PLSearchIndexGetLog_block_invoke()
{
  PLSearchIndexGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "SearchIndex");

  return MEMORY[0x1EEE66BB8]();
}

id PLSyncGetLog()
{
  if (PLSyncGetLog_predicate != -1)
  {
    dispatch_once(&PLSyncGetLog_predicate, &__block_literal_global_129);
  }

  v1 = PLSyncGetLog_log;

  return v1;
}

uint64_t __PLSyncGetLog_block_invoke()
{
  PLSyncGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Sync");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PLSyndicationGetLog_block_invoke()
{
  PLSyndicationGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Syndication");

  return MEMORY[0x1EEE66BB8]();
}

id PLThumbnailsGetLog()
{
  if (PLThumbnailsGetLog_predicate != -1)
  {
    dispatch_once(&PLThumbnailsGetLog_predicate, &__block_literal_global_135);
  }

  v1 = PLThumbnailsGetLog_log;

  return v1;
}

uint64_t __PLThumbnailsGetLog_block_invoke()
{
  PLThumbnailsGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "Thumbnails");

  return MEMORY[0x1EEE66BB8]();
}

id PLUserSmartAlbumGetLog()
{
  if (PLUserSmartAlbumGetLog_predicate != -1)
  {
    dispatch_once(&PLUserSmartAlbumGetLog_predicate, &__block_literal_global_138);
  }

  v1 = PLUserSmartAlbumGetLog_log;

  return v1;
}

uint64_t __PLUserSmartAlbumGetLog_block_invoke()
{
  PLUserSmartAlbumGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "UserSmartAlbum");

  return MEMORY[0x1EEE66BB8]();
}

id PLUserFeedbackGetLog()
{
  if (PLUserFeedbackGetLog_predicate != -1)
  {
    dispatch_once(&PLUserFeedbackGetLog_predicate, &__block_literal_global_141);
  }

  v1 = PLUserFeedbackGetLog_log;

  return v1;
}

uint64_t __PLUserFeedbackGetLog_block_invoke()
{
  PLUserFeedbackGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "UserFeedback");

  return MEMORY[0x1EEE66BB8]();
}

id PLBackendSharingGetLog()
{
  if (PLBackendSharingGetLog_predicate != -1)
  {
    dispatch_once(&PLBackendSharingGetLog_predicate, &__block_literal_global_147);
  }

  v1 = PLBackendSharingGetLog_log;

  return v1;
}

uint64_t __PLBackendSharingGetLog_block_invoke()
{
  PLBackendSharingGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "BackendSharing");

  return MEMORY[0x1EEE66BB8]();
}

id PLStoreDemoModeGetLog()
{
  if (PLStoreDemoModeGetLog_predicate != -1)
  {
    dispatch_once(&PLStoreDemoModeGetLog_predicate, &__block_literal_global_150);
  }

  v1 = PLStoreDemoModeGetLog_log;

  return v1;
}

uint64_t __PLStoreDemoModeGetLog_block_invoke()
{
  PLStoreDemoModeGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "StoreDemoMode");

  return MEMORY[0x1EEE66BB8]();
}

id PLBackendPerfTestGetLog()
{
  if (PLBackendPerfTestGetLog_predicate != -1)
  {
    dispatch_once(&PLBackendPerfTestGetLog_predicate, &__block_literal_global_153);
  }

  v1 = PLBackendPerfTestGetLog_log;

  return v1;
}

uint64_t __PLBackendPerfTestGetLog_block_invoke()
{
  PLBackendPerfTestGetLog_log = os_log_create(*MEMORY[0x1E69BDD98], "BackendPerfTest");

  return MEMORY[0x1EEE66BB8]();
}

id PLAirPlayGetLog()
{
  if (PLAirPlayGetLog_predicate != -1)
  {
    dispatch_once(&PLAirPlayGetLog_predicate, &__block_literal_global_156_2615);
  }

  v1 = PLAirPlayGetLog_log;

  return v1;
}

uint64_t __PLAirPlayGetLog_block_invoke()
{
  PLAirPlayGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AirPlay");

  return MEMORY[0x1EEE66BB8]();
}

id PLAmbientPhotoFrameGetLog()
{
  if (PLAmbientPhotoFrameGetLog_predicate != -1)
  {
    dispatch_once(&PLAmbientPhotoFrameGetLog_predicate, &__block_literal_global_159_2618);
  }

  v1 = PLAmbientPhotoFrameGetLog_log;

  return v1;
}

uint64_t __PLAmbientPhotoFrameGetLog_block_invoke()
{
  PLAmbientPhotoFrameGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AmbientPhotoFrame");

  return MEMORY[0x1EEE66BB8]();
}

id PLAnimationTelemetryGetLog()
{
  if (PLAnimationTelemetryGetLog_predicate != -1)
  {
    dispatch_once(&PLAnimationTelemetryGetLog_predicate, &__block_literal_global_162);
  }

  v1 = PLAnimationTelemetryGetLog_log;

  return v1;
}

uint64_t __PLAnimationTelemetryGetLog_block_invoke()
{
  PLAnimationTelemetryGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AnimationTelemetry");

  return MEMORY[0x1EEE66BB8]();
}

id PLAudioPlaybackGetLog()
{
  if (PLAudioPlaybackGetLog_predicate != -1)
  {
    dispatch_once(&PLAudioPlaybackGetLog_predicate, &__block_literal_global_165);
  }

  v1 = PLAudioPlaybackGetLog_log;

  return v1;
}

uint64_t __PLAudioPlaybackGetLog_block_invoke()
{
  PLAudioPlaybackGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AudioPlayback");

  return MEMORY[0x1EEE66BB8]();
}

id PLCloudFeedGetLog()
{
  if (PLCloudFeedGetLog_predicate != -1)
  {
    dispatch_once(&PLCloudFeedGetLog_predicate, &__block_literal_global_168);
  }

  v1 = PLCloudFeedGetLog_log;

  return v1;
}

uint64_t __PLCloudFeedGetLog_block_invoke()
{
  PLCloudFeedGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "CloudFeed");

  return MEMORY[0x1EEE66BB8]();
}

id PLSharedAlbumsGetLog()
{
  if (PLSharedAlbumsGetLog_predicate != -1)
  {
    dispatch_once(&PLSharedAlbumsGetLog_predicate, &__block_literal_global_171);
  }

  v1 = PLSharedAlbumsGetLog_log;

  return v1;
}

uint64_t __PLSharedAlbumsGetLog_block_invoke()
{
  PLSharedAlbumsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "SharedAlbums");

  return MEMORY[0x1EEE66BB8]();
}

id PLSharedCollectionsGetLog()
{
  if (PLSharedCollectionsGetLog_predicate != -1)
  {
    dispatch_once(&PLSharedCollectionsGetLog_predicate, &__block_literal_global_174);
  }

  v1 = PLSharedCollectionsGetLog_log;

  return v1;
}

uint64_t __PLSharedCollectionsGetLog_block_invoke()
{
  PLSharedCollectionsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "SharedCollections");

  return MEMORY[0x1EEE66BB8]();
}

id PLSharingGetLog()
{
  if (PLSharingGetLog_predicate != -1)
  {
    dispatch_once(&PLSharingGetLog_predicate, &__block_literal_global_177);
  }

  v1 = PLSharingGetLog_log;

  return v1;
}

uint64_t __PLSharingGetLog_block_invoke()
{
  PLSharingGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Sharing");

  return MEMORY[0x1EEE66BB8]();
}

id PLDragAndDropGetLog()
{
  if (PLDragAndDropGetLog_predicate != -1)
  {
    dispatch_once(&PLDragAndDropGetLog_predicate, &__block_literal_global_183);
  }

  v1 = PLDragAndDropGetLog_log;

  return v1;
}

uint64_t __PLDragAndDropGetLog_block_invoke()
{
  PLDragAndDropGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "DragAndDrop");

  return MEMORY[0x1EEE66BB8]();
}

id PLGridZeroGetLog()
{
  if (PLGridZeroGetLog_predicate != -1)
  {
    dispatch_once(&PLGridZeroGetLog_predicate, &__block_literal_global_186);
  }

  v1 = PLGridZeroGetLog_log;

  return v1;
}

uint64_t __PLGridZeroGetLog_block_invoke()
{
  PLGridZeroGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "GridZero");

  return MEMORY[0x1EEE66BB8]();
}

id PLLivePhotoPlaybackGetLog()
{
  if (PLLivePhotoPlaybackGetLog_predicate != -1)
  {
    dispatch_once(&PLLivePhotoPlaybackGetLog_predicate, &__block_literal_global_189_2630);
  }

  v1 = PLLivePhotoPlaybackGetLog_log;

  return v1;
}

uint64_t __PLLivePhotoPlaybackGetLog_block_invoke()
{
  PLLivePhotoPlaybackGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "LivePhotoPlayback");

  return MEMORY[0x1EEE66BB8]();
}

id PLMemoriesGetLog()
{
  if (PLMemoriesGetLog_predicate != -1)
  {
    dispatch_once(&PLMemoriesGetLog_predicate, &__block_literal_global_192);
  }

  v1 = PLMemoriesGetLog_log;

  return v1;
}

uint64_t __PLMemoriesGetLog_block_invoke()
{
  PLMemoriesGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Memories");

  return MEMORY[0x1EEE66BB8]();
}

id PLMomentsGetLog()
{
  if (PLMomentsGetLog_predicate != -1)
  {
    dispatch_once(&PLMomentsGetLog_predicate, &__block_literal_global_195);
  }

  v1 = PLMomentsGetLog_log;

  return v1;
}

uint64_t __PLMomentsGetLog_block_invoke()
{
  PLMomentsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Moments");

  return MEMORY[0x1EEE66BB8]();
}

id PLOneUpGetLog()
{
  if (PLOneUpGetLog_predicate != -1)
  {
    dispatch_once(&PLOneUpGetLog_predicate, &__block_literal_global_198);
  }

  v1 = PLOneUpGetLog_log;

  return v1;
}

uint64_t __PLOneUpGetLog_block_invoke()
{
  PLOneUpGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "OneUp");

  return MEMORY[0x1EEE66BB8]();
}

id PLPAImageGetLog()
{
  if (PLPAImageGetLog_predicate != -1)
  {
    dispatch_once(&PLPAImageGetLog_predicate, &__block_literal_global_201);
  }

  v1 = PLPAImageGetLog_log;

  return v1;
}

uint64_t __PLPAImageGetLog_block_invoke()
{
  PLPAImageGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PAImage");

  return MEMORY[0x1EEE66BB8]();
}

id PLPALayerGetLog()
{
  if (PLPALayerGetLog_predicate != -1)
  {
    dispatch_once(&PLPALayerGetLog_predicate, &__block_literal_global_204);
  }

  v1 = PLPALayerGetLog_log;

  return v1;
}

uint64_t __PLPALayerGetLog_block_invoke()
{
  PLPALayerGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PALayer");

  return MEMORY[0x1EEE66BB8]();
}

id PLPeopleGetLog()
{
  if (PLPeopleGetLog_predicate != -1)
  {
    dispatch_once(&PLPeopleGetLog_predicate, &__block_literal_global_207);
  }

  v1 = PLPeopleGetLog_log;

  return v1;
}

uint64_t __PLPeopleGetLog_block_invoke()
{
  PLPeopleGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "People");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoEditGetLog()
{
  if (PLPhotoEditGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoEditGetLog_predicate, &__block_literal_global_213);
  }

  v1 = PLPhotoEditGetLog_log;

  return v1;
}

uint64_t __PLPhotoEditGetLog_block_invoke()
{
  PLPhotoEditGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PhotoEdit");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotoPickerGetLog()
{
  if (PLPhotoPickerGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotoPickerGetLog_predicate, &__block_literal_global_216);
  }

  v1 = PLPhotoPickerGetLog_log;

  return v1;
}

uint64_t __PLPhotoPickerGetLog_block_invoke()
{
  PLPhotoPickerGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PhotoPicker");

  return MEMORY[0x1EEE66BB8]();
}

id PLPickerGetLog()
{
  if (PLPickerGetLog_predicate != -1)
  {
    dispatch_once(&PLPickerGetLog_predicate, &__block_literal_global_222);
  }

  v1 = PLPickerGetLog_log;

  return v1;
}

uint64_t __PLPickerGetLog_block_invoke()
{
  PLPickerGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Picker");

  return MEMORY[0x1EEE66BB8]();
}

id PLRelatedGetLog()
{
  if (PLRelatedGetLog_predicate != -1)
  {
    dispatch_once(&PLRelatedGetLog_predicate, &__block_literal_global_228);
  }

  v1 = PLRelatedGetLog_log;

  return v1;
}

uint64_t __PLRelatedGetLog_block_invoke()
{
  PLRelatedGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Related");

  return MEMORY[0x1EEE66BB8]();
}

id PLShareSheetGetLog()
{
  if (PLShareSheetGetLog_predicate != -1)
  {
    dispatch_once(&PLShareSheetGetLog_predicate, &__block_literal_global_231);
  }

  v1 = PLShareSheetGetLog_log;

  return v1;
}

uint64_t __PLShareSheetGetLog_block_invoke()
{
  PLShareSheetGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "ShareSheet");

  return MEMORY[0x1EEE66BB8]();
}

id PLBoopGetLog()
{
  if (PLBoopGetLog_predicate != -1)
  {
    dispatch_once(&PLBoopGetLog_predicate, &__block_literal_global_234);
  }

  v1 = PLBoopGetLog_log;

  return v1;
}

uint64_t __PLBoopGetLog_block_invoke()
{
  PLBoopGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Boop");

  return MEMORY[0x1EEE66BB8]();
}

id PLSidebarGetLog()
{
  if (PLSidebarGetLog_predicate != -1)
  {
    dispatch_once(&PLSidebarGetLog_predicate, &__block_literal_global_237);
  }

  v1 = PLSidebarGetLog_log;

  return v1;
}

uint64_t __PLSidebarGetLog_block_invoke()
{
  PLSidebarGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Sidebar");

  return MEMORY[0x1EEE66BB8]();
}

id PLStoryGetLog()
{
  if (PLStoryGetLog_predicate != -1)
  {
    dispatch_once(&PLStoryGetLog_predicate, &__block_literal_global_240);
  }

  v1 = PLStoryGetLog_log;

  return v1;
}

uint64_t __PLStoryGetLog_block_invoke()
{
  PLStoryGetLog_log = os_log_create("com.apple.photos.ui.story", "Story");

  return MEMORY[0x1EEE66BB8]();
}

id PLHomeGetLog()
{
  if (PLHomeGetLog_predicate != -1)
  {
    dispatch_once(&PLHomeGetLog_predicate, &__block_literal_global_243);
  }

  v1 = PLHomeGetLog_log;

  return v1;
}

uint64_t __PLHomeGetLog_block_invoke()
{
  PLHomeGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Home");

  return MEMORY[0x1EEE66BB8]();
}

id PLUIActionsGetLog()
{
  if (PLUIActionsGetLog_predicate != -1)
  {
    dispatch_once(&PLUIActionsGetLog_predicate, &__block_literal_global_252);
  }

  v1 = PLUIActionsGetLog_log;

  return v1;
}

uint64_t __PLUIActionsGetLog_block_invoke()
{
  PLUIActionsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "UIActions");

  return MEMORY[0x1EEE66BB8]();
}

id PLVideoPlaybackGetLog()
{
  if (PLVideoPlaybackGetLog_predicate != -1)
  {
    dispatch_once(&PLVideoPlaybackGetLog_predicate, &__block_literal_global_261);
  }

  v1 = PLVideoPlaybackGetLog_log;

  return v1;
}

uint64_t __PLVideoPlaybackGetLog_block_invoke()
{
  PLVideoPlaybackGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "VideoPlayback");

  return MEMORY[0x1EEE66BB8]();
}

id PLWallpaperGetLog()
{
  if (PLWallpaperGetLog_predicate != -1)
  {
    dispatch_once(&PLWallpaperGetLog_predicate, &__block_literal_global_264);
  }

  v1 = PLWallpaperGetLog_log;

  return v1;
}

uint64_t __PLWallpaperGetLog_block_invoke()
{
  PLWallpaperGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Wallpaper");

  return MEMORY[0x1EEE66BB8]();
}

id PLGadgetsGetLog()
{
  if (PLGadgetsGetLog_predicate != -1)
  {
    dispatch_once(&PLGadgetsGetLog_predicate, &__block_literal_global_270);
  }

  v1 = PLGadgetsGetLog_log;

  return v1;
}

uint64_t __PLGadgetsGetLog_block_invoke()
{
  PLGadgetsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Gadgets");

  return MEMORY[0x1EEE66BB8]();
}

id PLPlacesGetLog()
{
  if (PLPlacesGetLog_predicate != -1)
  {
    dispatch_once(&PLPlacesGetLog_predicate, &__block_literal_global_273_2660);
  }

  v1 = PLPlacesGetLog_log;

  return v1;
}

uint64_t __PLPlacesGetLog_block_invoke()
{
  PLPlacesGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Places");

  return MEMORY[0x1EEE66BB8]();
}

id PLTipsGetLog()
{
  if (PLTipsGetLog_predicate != -1)
  {
    dispatch_once(&PLTipsGetLog_predicate, &__block_literal_global_276);
  }

  v1 = PLTipsGetLog_log;

  return v1;
}

uint64_t __PLTipsGetLog_block_invoke()
{
  PLTipsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "Tips");

  return MEMORY[0x1EEE66BB8]();
}

id PLUserActivityGetLog()
{
  if (PLUserActivityGetLog_predicate != -1)
  {
    dispatch_once(&PLUserActivityGetLog_predicate, &__block_literal_global_282);
  }

  v1 = PLUserActivityGetLog_log;

  return v1;
}

uint64_t __PLUserActivityGetLog_block_invoke()
{
  PLUserActivityGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "UserActivity");

  return MEMORY[0x1EEE66BB8]();
}

id PLContentPrivacyUIGetLog()
{
  if (PLContentPrivacyUIGetLog_predicate != -1)
  {
    dispatch_once(&PLContentPrivacyUIGetLog_predicate, &__block_literal_global_291);
  }

  v1 = PLContentPrivacyUIGetLog_log;

  return v1;
}

uint64_t __PLContentPrivacyUIGetLog_block_invoke()
{
  PLContentPrivacyUIGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "ContentPrivacyUI");

  return MEMORY[0x1EEE66BB8]();
}

id PLVisualIntelligenceGetLog()
{
  if (PLVisualIntelligenceGetLog_predicate != -1)
  {
    dispatch_once(&PLVisualIntelligenceGetLog_predicate, &__block_literal_global_294);
  }

  v1 = PLVisualIntelligenceGetLog_log;

  return v1;
}

uint64_t __PLVisualIntelligenceGetLog_block_invoke()
{
  PLVisualIntelligenceGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "VisualIntelligence");

  return MEMORY[0x1EEE66BB8]();
}

id PLAssetExplorerGetLog()
{
  if (PLAssetExplorerGetLog_predicate != -1)
  {
    dispatch_once(&PLAssetExplorerGetLog_predicate, &__block_literal_global_297);
  }

  v1 = PLAssetExplorerGetLog_log;

  return v1;
}

uint64_t __PLAssetExplorerGetLog_block_invoke()
{
  PLAssetExplorerGetLog_log = os_log_create("com.apple.messages.asset-explorer", "AssetExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id PLCameraGetLog()
{
  if (PLCameraGetLog_predicate != -1)
  {
    dispatch_once(&PLCameraGetLog_predicate, &__block_literal_global_301);
  }

  v1 = PLCameraGetLog_log;

  return v1;
}

uint64_t __PLCameraGetLog_block_invoke()
{
  PLCameraGetLog_log = os_log_create("com.apple.photos.camera", "Camera");

  return MEMORY[0x1EEE66BB8]();
}

id PLTimelineGetLog()
{
  if (PLTimelineGetLog_predicate != -1)
  {
    dispatch_once(&PLTimelineGetLog_predicate, &__block_literal_global_305);
  }

  v1 = PLTimelineGetLog_log;

  return v1;
}

uint64_t __PLTimelineGetLog_block_invoke()
{
  PLTimelineGetLog_log = os_log_create("com.apple.photos.PhotosReliveWidget", "TimelineGeneration");

  return MEMORY[0x1EEE66BB8]();
}

id PLUpNextGetLog()
{
  if (PLUpNextGetLog_predicate != -1)
  {
    dispatch_once(&PLUpNextGetLog_predicate, &__block_literal_global_309);
  }

  v1 = PLUpNextGetLog_log;

  return v1;
}

uint64_t __PLUpNextGetLog_block_invoke()
{
  PLUpNextGetLog_log = os_log_create("com.apple.photos.memories.upNext", "UpNextGeneration");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotosSearchCurationGetLog()
{
  if (PLPhotosSearchCurationGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotosSearchCurationGetLog_predicate, &__block_literal_global_313);
  }

  v1 = PLPhotosSearchCurationGetLog_log;

  return v1;
}

uint64_t __PLPhotosSearchCurationGetLog_block_invoke()
{
  PLPhotosSearchCurationGetLog_log = os_log_create("com.apple.photos.search.curation", "SearchCuration");

  return MEMORY[0x1EEE66BB8]();
}

id PLPhotosStatusGetLog()
{
  if (PLPhotosStatusGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotosStatusGetLog_predicate, &__block_literal_global_317);
  }

  v1 = PLPhotosStatusGetLog_log;

  return v1;
}

uint64_t __PLPhotosStatusGetLog_block_invoke()
{
  PLPhotosStatusGetLog_log = os_log_create("com.apple.photos.status", "PhotosStatus");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUIDisplayGetLog()
{
  if (PLSearchUIDisplayGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUIDisplayGetLog_predicate, &__block_literal_global_321);
  }

  v1 = PLSearchUIDisplayGetLog_log;

  return v1;
}

uint64_t __PLSearchUIDisplayGetLog_block_invoke()
{
  PLSearchUIDisplayGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUIDisplay");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUIQueryGetLog()
{
  if (PLSearchUIQueryGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUIQueryGetLog_predicate, &__block_literal_global_324);
  }

  v1 = PLSearchUIQueryGetLog_log;

  return v1;
}

uint64_t __PLSearchUIQueryGetLog_block_invoke()
{
  PLSearchUIQueryGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUIQuery");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUIParsecAnalyticsGetLog()
{
  if (PLSearchUIParsecAnalyticsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUIParsecAnalyticsGetLog_predicate, &__block_literal_global_327);
  }

  v1 = PLSearchUIParsecAnalyticsGetLog_log;

  return v1;
}

uint64_t __PLSearchUIParsecAnalyticsGetLog_block_invoke()
{
  PLSearchUIParsecAnalyticsGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUIParsecAnalytics");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUIAssetCurationGetLog()
{
  if (PLSearchUIAssetCurationGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUIAssetCurationGetLog_predicate, &__block_literal_global_330);
  }

  v1 = PLSearchUIAssetCurationGetLog_log;

  return v1;
}

uint64_t __PLSearchUIAssetCurationGetLog_block_invoke()
{
  PLSearchUIAssetCurationGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUIAssetCuration");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUISpotlightGetLog()
{
  if (PLSearchUISpotlightGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUISpotlightGetLog_predicate, &__block_literal_global_333);
  }

  v1 = PLSearchUISpotlightGetLog_log;

  return v1;
}

uint64_t __PLSearchUISpotlightGetLog_block_invoke()
{
  PLSearchUISpotlightGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUISpotlight");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchUIBiomeGetLog()
{
  if (PLSearchUIBiomeGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchUIBiomeGetLog_predicate, &__block_literal_global_336);
  }

  v1 = PLSearchUIBiomeGetLog_log;

  return v1;
}

uint64_t __PLSearchUIBiomeGetLog_block_invoke()
{
  PLSearchUIBiomeGetLog_log = os_log_create("com.apple.photos.ui.search", "SearchUIBiome");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexStatusGetLog()
{
  if (PLSearchBackendIndexStatusGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexStatusGetLog_predicate, &__block_literal_global_339);
  }

  v1 = PLSearchBackendIndexStatusGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexStatusGetLog_block_invoke()
{
  PLSearchBackendIndexStatusGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexStatus");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexRebuildGetLog()
{
  if (PLSearchBackendIndexRebuildGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexRebuildGetLog_predicate, &__block_literal_global_342);
  }

  v1 = PLSearchBackendIndexRebuildGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexRebuildGetLog_block_invoke()
{
  PLSearchBackendIndexRebuildGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexRebuild");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexManagerGetLog()
{
  if (PLSearchBackendIndexManagerGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexManagerGetLog_predicate, &__block_literal_global_345);
  }

  v1 = PLSearchBackendIndexManagerGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexManagerGetLog_block_invoke()
{
  PLSearchBackendIndexManagerGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexManager");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexingEngineGetLog()
{
  if (PLSearchBackendIndexingEngineGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexingEngineGetLog_predicate, &__block_literal_global_348);
  }

  v1 = PLSearchBackendIndexingEngineGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexingEngineGetLog_block_invoke()
{
  PLSearchBackendIndexingEngineGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexingEngine");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexWorkerGetLog()
{
  if (PLSearchBackendIndexWorkerGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexWorkerGetLog_predicate, &__block_literal_global_351);
  }

  v1 = PLSearchBackendIndexWorkerGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexWorkerGetLog_block_invoke()
{
  PLSearchBackendIndexWorkerGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexWorker");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendLibraryChangeTrackingGetLog()
{
  if (PLSearchBackendLibraryChangeTrackingGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendLibraryChangeTrackingGetLog_predicate, &__block_literal_global_354);
  }

  v1 = PLSearchBackendLibraryChangeTrackingGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendLibraryChangeTrackingGetLog_block_invoke()
{
  PLSearchBackendLibraryChangeTrackingGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendLibraryChangeTracking");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendGraphUpdatesGetLog()
{
  if (PLSearchBackendGraphUpdatesGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendGraphUpdatesGetLog_predicate, &__block_literal_global_357);
  }

  v1 = PLSearchBackendGraphUpdatesGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendGraphUpdatesGetLog_block_invoke()
{
  PLSearchBackendGraphUpdatesGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendGraphUpdates");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendDonationsGetLog()
{
  if (PLSearchBackendDonationsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendDonationsGetLog_predicate, &__block_literal_global_360);
  }

  v1 = PLSearchBackendDonationsGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendDonationsGetLog_block_invoke()
{
  PLSearchBackendDonationsGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendDonations");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendDonationProgressGetLog()
{
  if (PLSearchBackendDonationProgressGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendDonationProgressGetLog_predicate, &__block_literal_global_363);
  }

  v1 = PLSearchBackendDonationProgressGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendDonationProgressGetLog_block_invoke()
{
  PLSearchBackendDonationProgressGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendDonationProgress");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendModelTranslationGetLog()
{
  if (PLSearchBackendModelTranslationGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendModelTranslationGetLog_predicate, &__block_literal_global_366);
  }

  v1 = PLSearchBackendModelTranslationGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendModelTranslationGetLog_block_invoke()
{
  PLSearchBackendModelTranslationGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendModelTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendStickerSuggestionsGetLog()
{
  if (PLSearchBackendStickerSuggestionsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendStickerSuggestionsGetLog_predicate, &__block_literal_global_369);
  }

  v1 = PLSearchBackendStickerSuggestionsGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendStickerSuggestionsGetLog_block_invoke()
{
  PLSearchBackendStickerSuggestionsGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendStickerSuggestions");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendPhotosDatabaseFetchGetLog()
{
  if (PLSearchBackendPhotosDatabaseFetchGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendPhotosDatabaseFetchGetLog_predicate, &__block_literal_global_372);
  }

  v1 = PLSearchBackendPhotosDatabaseFetchGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendPhotosDatabaseFetchGetLog_block_invoke()
{
  PLSearchBackendPhotosDatabaseFetchGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendPhotosDatabaseFetch");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendSceneTaxonomyGetLog()
{
  if (PLSearchBackendSceneTaxonomyGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendSceneTaxonomyGetLog_predicate, &__block_literal_global_375);
  }

  v1 = PLSearchBackendSceneTaxonomyGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendSceneTaxonomyGetLog_block_invoke()
{
  PLSearchBackendSceneTaxonomyGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendSceneTaxonomy");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendResultProcessingGetLog()
{
  if (PLSearchBackendResultProcessingGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendResultProcessingGetLog_predicate, &__block_literal_global_381);
  }

  v1 = PLSearchBackendResultProcessingGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendResultProcessingGetLog_block_invoke()
{
  PLSearchBackendResultProcessingGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendResultProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendPSIDatabaseGetLog()
{
  if (PLSearchBackendPSIDatabaseGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendPSIDatabaseGetLog_predicate, &__block_literal_global_384);
  }

  v1 = PLSearchBackendPSIDatabaseGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendPSIDatabaseGetLog_block_invoke()
{
  PLSearchBackendPSIDatabaseGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendPSIDatabase");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendPSITokenizerGetLog()
{
  if (PLSearchBackendPSITokenizerGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendPSITokenizerGetLog_predicate, &__block_literal_global_387);
  }

  v1 = PLSearchBackendPSITokenizerGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendPSITokenizerGetLog_block_invoke()
{
  PLSearchBackendPSITokenizerGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendPSITokenizer");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexStatusMaintenanceTaskGetLog()
{
  if (PLSearchBackendIndexStatusMaintenanceTaskGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexStatusMaintenanceTaskGetLog_predicate, &__block_literal_global_390);
  }

  v1 = PLSearchBackendIndexStatusMaintenanceTaskGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexStatusMaintenanceTaskGetLog_block_invoke()
{
  PLSearchBackendIndexStatusMaintenanceTaskGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexStatusMaintenanceTask");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendPhotoKitAPIGetLog()
{
  if (PLSearchBackendPhotoKitAPIGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendPhotoKitAPIGetLog_predicate, &__block_literal_global_393);
  }

  v1 = PLSearchBackendPhotoKitAPIGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendPhotoKitAPIGetLog_block_invoke()
{
  PLSearchBackendPhotoKitAPIGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendPhotoKitAPI");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendRecentSuggestionsGetLog()
{
  if (PLSearchBackendRecentSuggestionsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendRecentSuggestionsGetLog_predicate, &__block_literal_global_399_2706);
  }

  v1 = PLSearchBackendRecentSuggestionsGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendRecentSuggestionsGetLog_block_invoke()
{
  PLSearchBackendRecentSuggestionsGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendRecentSuggestions");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendIndexEntityResultGetLog()
{
  if (PLSearchBackendIndexEntityResultGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendIndexEntityResultGetLog_predicate, &__block_literal_global_402);
  }

  v1 = PLSearchBackendIndexEntityResultGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendIndexEntityResultGetLog_block_invoke()
{
  PLSearchBackendIndexEntityResultGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendIndexEntityResult");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendFeedbackDiagnosticsGetLog()
{
  if (PLSearchBackendFeedbackDiagnosticsGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendFeedbackDiagnosticsGetLog_predicate, &__block_literal_global_405);
  }

  v1 = PLSearchBackendFeedbackDiagnosticsGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendFeedbackDiagnosticsGetLog_block_invoke()
{
  PLSearchBackendFeedbackDiagnosticsGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendFeedbackDiagnostics");

  return MEMORY[0x1EEE66BB8]();
}

id PLSearchBackendThumbnailMapGetLog()
{
  if (PLSearchBackendThumbnailMapGetLog_predicate != -1)
  {
    dispatch_once(&PLSearchBackendThumbnailMapGetLog_predicate, &__block_literal_global_408);
  }

  v1 = PLSearchBackendThumbnailMapGetLog_log;

  return v1;
}

uint64_t __PLSearchBackendThumbnailMapGetLog_block_invoke()
{
  PLSearchBackendThumbnailMapGetLog_log = os_log_create("com.apple.photos.backend.search", "SearchBackendThumbnailMap");

  return MEMORY[0x1EEE66BB8]();
}

void PLDonateMomentShareURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Received moment share donation URL from external client", buf, 2u);
  }

  v6 = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];
  v7 = [v6 cloudInternalClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PLDonateMomentShareURL_block_invoke;
  v9[3] = &unk_1E7930050;
  v10 = v3;
  v8 = v3;
  [v7 fetchShareFromShareURL:v4 ignoreExistingShare:0 completionHandler:v9];
}

void __PLDonateMomentShareURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLGatekeeperXPCGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Error fetching donated moment share from external client: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched donated moment share %@ from external client", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}