@interface SUCoreSpace
+ (BOOL)_isUserVolume:(id)a3;
+ (id)cacheDeleteUrgencyName:(int)a3;
+ (id)sharedSpaceManager;
+ (int64_t)cacheDeleteGetReserveSpace:(id *)a3 withError:(id *)a4;
+ (unint64_t)getFreeSpaceAvailableForSoftwareUpdate:(id)a3;
+ (unint64_t)getVolumeUsedSpace:(id)a3;
+ (void)_issuePurgeCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 amountPurged:(unint64_t)a6 error:(id)a7 transaction:(id)a8 transactionName:(id)a9;
+ (void)_issuePurgeableCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 amountPurgeable:(unint64_t)a6 error:(id)a7 transaction:(id)a8 transactionName:(id)a9;
+ (void)_issueSpaceCheckCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 haveTotalRequired:(BOOL)a6 freeSpaceAvailable:(unint64_t)a7 error:(id)a8 releasingTransaction:(id)a9;
+ (void)_spaceCheckPhaseError:(id)a3 checkingFromBase:(id)a4 withIdentier:(id)a5 completion:(id)a6;
+ (void)_trackSpaceBegin:(id)a3 withIdentifier:(id)a4;
+ (void)_trackSpaceEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
+ (void)cacheDeleteDisableReserveSpace;
+ (void)cacheDeletePauseReserveSpace:(id)a3 unentitledSpace:(id)a4 withPurpose:(id)a5;
+ (void)cacheDeleteResumeReserveSpace;
+ (void)cacheDeleteSetReserveSpace:(id)a3 systemGrowthMarginSize:(id)a4;
+ (void)cacheDeleteSetReserveSpaceWithInfo:(id)a3;
+ (void)checkAvailableFreeSpace:(unint64_t)a3 checkingFromBase:(id)a4 withIdentifier:(id)a5 userInitiated:(BOOL)a6 completion:(id)a7;
+ (void)checkAvailableSpace:(unint64_t)a3 allowPurgeWithUrgency:(int)a4 purgingFromBase:(id)a5 minimalRequiredFreeSpace:(unint64_t)a6 withCompletionQueue:(id)a7 completion:(id)a8;
+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int)a5 timeout:(int)a6 additionalOptions:(id)a7 withCompletionQueue:(id)a8 completion:(id)a9;
+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)a3 cacheDeleteUrgency:(int64_t)a4 withCompletionQueue:(id)a5 completion:(id)a6;
+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int64_t)a5 onlyAvailableBySkippingLaunchCheck:(BOOL)a6 withCompletionQueue:(id)a7 completion:(id)a8;
+ (void)mobileAssetEstimateEvictable:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5;
+ (void)mobileAssetResumeWithCompletionQueue:(id)a3 completion:(id)a4;
+ (void)mobileAssetSuspend:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5;
+ (void)offloadAppsPurge:(unint64_t)a3 cacheDeleteUrgency:(int64_t)a4 withCompletionQueue:(id)a5 completion:(id)a6;
+ (void)offloadAppsPurge:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int64_t)a5 withCompletionQueue:(id)a6 completion:(id)a7;
- (SUCoreSpace)init;
@end

@implementation SUCoreSpace

+ (id)sharedSpaceManager
{
  if (sharedSpaceManager_spaceManagerOnce != -1)
  {
    +[SUCoreSpace sharedSpaceManager];
  }

  v3 = sharedSpaceManager_spaceManager;

  return v3;
}

uint64_t __33__SUCoreSpace_sharedSpaceManager__block_invoke()
{
  v0 = objc_alloc_init(SUCoreSpace);
  v1 = sharedSpaceManager_spaceManager;
  sharedSpaceManager_spaceManager = v0;

  [sharedSpaceManager_spaceManager setReserveSpacePaused:0];
  [sharedSpaceManager_spaceManager setEntitledSpaceDisabled:0];
  [MEMORY[0x277D64430] associateLayer:151 withDomain:@"CacheDeleteErrorDomain"];
  [MEMORY[0x277D64430] attributesOfSUCoreErrorCode:8600 indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:1 codeName:@"CacheDeleteErrorConnectionInterrupted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:2 codeName:@"CacheDeleteErrorConnectionInvalidated"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:3 codeName:@"CacheDeleteErrorConnectionCancelled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:4 codeName:@"CacheDeleteErrorMissingEntitlement"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:5 codeName:@"CacheDeleteErrorInsufficientPermissions"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:6 codeName:@"CacheDeleteErrorFailedToConnect"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:7 codeName:@"CacheDeleteErrorDuplicateService"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:8 codeName:@"CacheDeleteErrorUnresponsiveService"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:9 codeName:@"CacheDeleteErrorTimeout"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:10 codeName:@"CacheDeleteErrorInvalidVolume"];
  v2 = MEMORY[0x277D64430];

  return [v2 attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:11 codeName:@"CacheDeleteErrorInvalidParams"];
}

- (SUCoreSpace)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SUCoreSpace;
  v2 = [(SUCoreSpace *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [v4 commonDomain];
    v6 = [v3 initWithFormat:@"%@.%@", v5, @"core.space.operation"];

    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    spaceQueue = v2->_spaceQueue;
    v2->_spaceQueue = v9;

    if (v2->_spaceQueue)
    {
      v11 = [MEMORY[0x277D64460] sharedLogger];
      v12 = [v11 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[SPACE] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create dispatch queue domain(%@)", v6];
      [v12 trackError:@"[SPACE]" forReason:v13 withResult:8100 withError:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)checkAvailableSpace:(unint64_t)a3 allowPurgeWithUrgency:(int)a4 purgingFromBase:(id)a5 minimalRequiredFreeSpace:(unint64_t)a6 withCompletionQueue:(id)a7 completion:(id)a8
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a7;
  v14 = a8;
  [SUCoreSpace _trackSpaceBegin:@"checkAvailableSpace" withIdentifier:@"total"];
  v15 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CheckAvailableSpace"];
  v16 = [MEMORY[0x277D64460] sharedLogger];
  v17 = [v16 oslog];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NIL";
    if (v12)
    {
      v18 = v12;
    }

    *buf = 138543618;
    v36 = v18;
    v37 = 2048;
    v38 = a3;
    _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, "[SPACE] Checking available space from base path %{public}@. Required free space: %lld", buf, 0x16u);
  }

  v19 = a4 == 4;

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke;
  v26[3] = &unk_27892E898;
  v27 = v13;
  v28 = v15;
  v33 = a4;
  v31 = a3;
  v32 = a6;
  v29 = v12;
  v30 = v14;
  v34 = a4 == 4;
  v20 = v12;
  v21 = v15;
  v22 = v13;
  v23 = v14;
  [SUCoreSpace checkAvailableFreeSpace:a3 checkingFromBase:v20 withIdentifier:@"total" userInitiated:v19 completion:v26];

  v24 = *MEMORY[0x277D85DE8];
}

void __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[SUCoreSpace sharedSpaceManager];
  v9 = [v8 spaceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_2;
  block[3] = &unk_27892E870;
  v18 = v7;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v25 = a2;
  v13 = *(a1 + 72);
  v21 = *(a1 + 64);
  v22 = a3;
  v24 = *(a1 + 80);
  v23 = v13;
  *&v14 = *(a1 + 48);
  *(&v14 + 1) = v10;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v19 = v15;
  v20 = v14;
  v26 = *(a1 + 84);
  v16 = v7;
  dispatch_async(v9, block);
}

void __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v2 code], *(a1 + 32));
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 64) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:0 error:*(a1 + 32) releasingTransaction:*(a1 + 48)];
    goto LABEL_8;
  }

  if (*(a1 + 100) == 1)
  {
    [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      *buf = 134218240;
      v45 = v5;
      v46 = 2048;
      v47 = v6;
      _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "[SPACE] total disk space available: need %llu and %llu is available (have enough space)", buf, 0x16u);
    }

    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v9 = *(a1 + 40);
    v37 = *(a1 + 48);
    v10 = 1;
LABEL_7:
    [SUCoreSpace _issueSpaceCheckCompletion:v7 withCompletionQueue:v9 haveEnoughSpace:1 haveTotalRequired:v10 freeSpaceAvailable:v8 error:0 releasingTransaction:v37];
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    *buf = 134218240;
    v45 = v14;
    v46 = 2048;
    v47 = v15;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SPACE] not enough free space for total required: need %llu and %llu is available", buf, 0x16u);
  }

  if (*(a1 + 96) == -1)
  {
    v24 = *(a1 + 88);
    if (v24)
    {
      if (*(a1 + 80) >= v24)
      {
        [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
        v33 = [MEMORY[0x277D64460] sharedLogger];
        v34 = [v33 oslog];

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 80);
          v35 = *(a1 + 88);
          *buf = 134218240;
          v45 = v35;
          v46 = 2048;
          v47 = v36;
          _os_log_impl(&dword_23193C000, v34, OS_LOG_TYPE_DEFAULT, "[SPACE] not enough total but have minimal (did not try cache delete): need %llu and %llu is available", buf, 0x16u);
        }

        v7 = *(a1 + 64);
        v8 = *(a1 + 80);
        v9 = *(a1 + 40);
        v37 = *(a1 + 48);
        v10 = 0;
        goto LABEL_7;
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough minimal space (did not try cache delete): need %llu and %llu is available", *(a1 + 88), *(a1 + 80)];
      v26 = [MEMORY[0x277D643F8] sharedCore];
      v27 = [v26 buildError:8600 underlying:0 description:v25];

      +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v27 code], v27);
      v28 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v25;
        _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough total space (did not try cache delete): need %llu and %llu is available", *(a1 + 72), *(a1 + 80)];
      v30 = [MEMORY[0x277D643F8] sharedCore];
      v27 = [v30 buildError:8600 underlying:0 description:v25];

      v31 = [MEMORY[0x277D64460] sharedLogger];
      v32 = [v31 oslog];

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v25;
        _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
      }

      +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v27 code], v27);
    }

    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 64) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 80) error:v27 releasingTransaction:*(a1 + 48)];

    goto LABEL_8;
  }

  [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
  [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"space.CheckAvailableSpace"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_365;
  v38[3] = &unk_27892E848;
  v41 = *(a1 + 72);
  v16 = *(a1 + 64);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v42 = *(a1 + 88);
  *&v19 = *(a1 + 56);
  *(&v19 + 1) = v16;
  *&v20 = v17;
  *(&v20 + 1) = v18;
  v39 = v20;
  v40 = v19;
  v43 = *(a1 + 101);
  v21 = MEMORY[0x2383746D0](v38);
  v22 = *(a1 + 56);
  v23 = *(a1 + 72) - *(a1 + 80);
  if (v22)
  {
    [SUCoreSpace cacheDeletePurge:v23 fromBasePath:v22 cacheDeleteUrgency:*(a1 + 96) completion:v21];
  }

  else
  {
    [SUCoreSpace cacheDeletePurge:v23 cacheDeleteUrgency:*(a1 + 96) withCompletionQueue:0 completion:v21];
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_365(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"space.CheckAvailableSpace"];
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a4 || !a2)
  {
    if (v10)
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *buf = 134218496;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] After cache delete: need %llu total: had %llu free space, was able to free up %llu after cache delete.  Not enough space to install update.", buf, 0x20u);
    }

    v16 = *(a1 + 32);
    result = [SUCoreSpace _checkMinimumRequiredSpace:*(a1 + 80) purgingFromBase:*(a1 + 48) userInitiated:*(a1 + 88) totalRequiredFreeSpace:*(a1 + 64) freeSpaceAvailable:*(a1 + 72) + a3 checkAvailableSpaceTransaction:*(a1 + 40) withCompletionQueue:v16 completion:*(a1 + 56)];
  }

  else
  {
    if (v10)
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      *buf = 134218496;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] After cache delete: need %llu total: had %llu free space, was able to free up %llu after cache delete (enough space to install update)", buf, 0x20u);
    }

    result = [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 32) haveEnoughSpace:1 haveTotalRequired:1 freeSpaceAvailable:*(a1 + 72) + a3 error:0 releasingTransaction:*(a1 + 40)];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)checkAvailableFreeSpace:(unint64_t)a3 checkingFromBase:(id)a4 withIdentifier:(id)a5 userInitiated:(BOOL)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = +[SUCoreSpace sharedSpaceManager];
  v14 = [v13 spaceQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke;
  v18[3] = &unk_27892E8E8;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a3;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, v18);
}

void __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"/var/mobile/";
  }

  v4 = [SUCoreSpace getFreeSpaceAvailableForSoftwareUpdate:v3];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v12 = @"NO";
      if (v5 >= v6)
      {
        v12 = @"YES";
      }

      *buf = 138544386;
      v25 = v3;
      v26 = 2114;
      v27 = v10;
      v28 = 2048;
      v29 = v11;
      v30 = 2048;
      v31 = v5;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] checked space on %{public}@ (%{public}@): required %llu and %llu is available | haveEnoughSpace:%{public}@", buf, 0x34u);
    }

    v13 = [MEMORY[0x277D643F8] sharedCore];
    v14 = [v13 completionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke_382;
    block[3] = &unk_27892E8C0;
    v15 = *(a1 + 48);
    v23 = v7;
    v21 = v15;
    v22 = v5;
    dispatch_async(v14, block);

    v16 = v21;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"check for available space failed, basePath=%@", v3];
    v18 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v18 buildError:8602 underlying:0 description:v17];

    [SUCoreSpace _spaceCheckPhaseError:v16 checkingFromBase:v3 withIdentier:*(a1 + 40) completion:*(a1 + 48)];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __103__SUCoreSpace_cacheDeletePurge_fromBasePath_cacheDeleteUrgency_timeout_withCompletionQueue_completion___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a2)
  {
    v11 = @"no results provided on cache delete purge complete";
LABEL_12:
    v12 = 8601;
LABEL_15:
    v3 = [MEMORY[0x277D643F8] sharedCore];
    v14 = [v3 buildError:v12 underlying:0 description:v11];
    v15 = 0;
    goto LABEL_16;
  }

  v3 = a2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    v13 = [MEMORY[0x277D64428] sharedDiag];
    [v13 trackAnomaly:@"cacheDeletePurge" forReason:@"result provided by CacheDeletePurgeSpaceWithInfo is not CFDictionary type - ignored" withResult:8112 withError:0];

    v11 = @"invalid results type provided on cache delete purge complete";
    goto LABEL_12;
  }

  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v3;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[PURGE] cache delete purge results: %{public}@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(v3, @"CACHE_DELETE_AMOUNT");
  if (!Value)
  {
    v11 = @"no amount of space purged provided on cache delete purge complete";
    v12 = 8601;
    goto LABEL_14;
  }

  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = valuePtr;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld bytes", buf, 0xCu);
  }

  if (valuePtr < a1[8])
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v10 initWithFormat:@"purged %lld but needed to purge %lld (not enough space)", valuePtr, a1[8]];
    v12 = 8600;
LABEL_14:

    goto LABEL_15;
  }

  v18 = [MEMORY[0x277D64460] sharedLogger];
  v19 = [v18 oslog];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[8];
    *buf = 134218240;
    v23 = valuePtr;
    v24 = 2048;
    v25 = v20;
    _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v11 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 1;
LABEL_16:

  [SUCoreSpace _trackSpaceEnd:@"CacheDeletePurgeSpaceWithInfo" withResult:v12 withError:v14];
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v15 amountPurged:valuePtr error:v14 transaction:a1[5] transactionName:@"space.CacheDeletePurge"];
  v16 = *(*(a1[7] + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
    *(*(a1[7] + 8) + 24) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)getFreeSpaceAvailableForSoftwareUpdate:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"/";
  }

  if (_os_feature_enabled_impl())
  {
    v42 = 0;
    v43 = 0;
    v5 = [SUCoreSpace cacheDeleteGetReserveSpace:&v43 withError:&v42];
    v6 = v43;
    v7 = v42;
    if (!v5)
    {
      v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_ENTITLED_RESERVATION_FREE"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v8 unsignedLongLongValue];
      }

      else
      {
        v9 = 0;
      }

      v17 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_EXTRA_SHARED_FREE"];
      v40 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = [v18 unsignedLongLongValue];
      }

      else
      {
        v16 = 0;
      }

      v19 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_UNENTITLED_RESERVATION"];
      v41 = v8;
      v39 = v19;
      v21 = v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 unsignedLongLongValue] != 0;
      v22 = +[SUCoreSpace sharedSpaceManager];
      v23 = [v22 entitledSpaceDisabled];

      if (v23)
      {
        v24 = [MEMORY[0x277D64460] sharedLogger];
        v25 = [v24 oslog];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134217984;
          *&buf.f_iosize = v16;
          _os_log_impl(&dword_23193C000, v25, OS_LOG_TYPE_DEFAULT, "[SPACE] entitled space is already disabled, return sharedFreeSpace as available for software update. sharedFreeSpace= %llu", &buf, 0xCu);
        }
      }

      else
      {
        if (!v21)
        {
          v25 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_UNENTITLED_CD_THRESHOLD"];
          if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v29 = [v25 unsignedLongLongValue]) == 0)
          {
            v30 = [MEMORY[0x277D64460] sharedLogger];
            v31 = [v30 oslog];

            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.f_bsize) = 0;
              _os_log_impl(&dword_23193C000, v31, OS_LOG_TYPE_DEFAULT, "[SPACE] unentitled threshold from CD is 0!", &buf, 2u);
            }

            v29 = 0;
          }

          v32 = v16 - v29;
          if (v16 >= v29)
          {
            v36 = [MEMORY[0x277D64460] sharedLogger];
            v35 = [v36 oslog];

            v27 = v41;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218496;
              *&buf.f_iosize = v16;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = v29;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = v16 - v29;
              _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[SPACE] Entitled secured space is empty, let's deduct the unentitled threshold from the shared space, sharedFreeSpace= %llu, unentitledThreshold= %llu, freeSpaceAvilableForSoftwareUpdate= %llu", &buf, 0x20u);
            }
          }

          else
          {
            v33 = +[SUCoreSpace sharedSpaceManager];
            [v33 setEntitledSpaceDisabled:1];

            v34 = [MEMORY[0x277D64460] sharedLogger];
            v35 = [v34 oslog];

            v27 = v41;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218496;
              *&buf.f_iosize = v16;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = v29;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = v16;
              _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[SPACE] free space is less than unentitled threshold, disable setting entitled space for software update. sharedFreeSpace= %llu, unentitledThreshold= %llu, freeSpaceAvilableForSoftwareUpdate= %llu", &buf, 0x20u);
            }

            v32 = v16;
          }

          v28 = v39;

          v16 = v32;
          goto LABEL_47;
        }

        v26 = [MEMORY[0x277D64460] sharedLogger];
        v25 = [v26 oslog];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134218496;
          *&buf.f_iosize = v16;
          WORD2(buf.f_blocks) = 2048;
          *(&buf.f_blocks + 6) = v9;
          HIWORD(buf.f_bfree) = 2048;
          buf.f_bavail = v16 + v9;
          _os_log_impl(&dword_23193C000, v25, OS_LOG_TYPE_DEFAULT, "[SPACE] Entitled secured space is taken into account, sharedFreeSpace= %llu, entitledFreeSpace= %llu, freeSpaceAvailableForSoftwareUpdate= %llu", &buf, 0x20u);
        }

        v16 += v9;
      }

      v27 = v41;
      v28 = v39;
LABEL_47:

      goto LABEL_48;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[SPACE] Calculating Free space using statfs", &buf, 2u);
  }

  bzero(&buf, 0x878uLL);
  if (statfs([(__CFString *)v4 fileSystemRepresentation], &buf))
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *v44 = 136446466;
      v45 = "/";
      v46 = 2082;
      v47 = v15;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "unable to stat volume: %{public}s : %{public}s", v44, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v16 = buf.f_bavail * buf.f_bsize;
  }

LABEL_48:

  v37 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (int64_t)cacheDeleteGetReserveSpace:(id *)a3 withError:(id *)a4
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v6 = CacheDeleteGetReserveSpace();
  if (v6)
  {
    v7 = v6;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = @"not CFDictionaryRef";
  }

  else
  {
    v12 = @"nil";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"result provided by CacheDeleteGetReserveSpace is %@ - ignored", v12];
  v13 = [MEMORY[0x277D643F8] sharedCore];
  v10 = 8112;
  v11 = [v13 buildError:8112 underlying:0 description:v9];

  v7 = 0;
  if (a4)
  {
LABEL_10:
    v14 = v11;
    *a4 = v11;
  }

LABEL_11:
  if (a3)
  {
    v15 = v7;
    *a3 = v7;
  }

  return v10;
}

+ (void)cacheDeleteDisableReserveSpace
{
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[SPACE] Disabling reserve space", v4, 2u);
  }

  CacheDeleteDisableReserveSpace();
}

+ (void)cacheDeleteSetReserveSpace:(id)a3 systemGrowthMarginSize:(id)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"CACHE_DELETE_RESERVE_SPACE_AMOUNT";
  v10[1] = @"CACHE_DELETE_EXPECTED_SYSTEM_GROWTH_AMOUNT";
  v11[0] = a3;
  v11[1] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];
  [SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)cacheDeleteSetReserveSpaceWithInfo:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = +[SUCoreSpace sharedSpaceManager];
    v5 = [v4 reserveSpacePaused];

    if (v5)
    {
      v6 = [MEMORY[0x277D64460] sharedLogger];
      v7 = [v6 oslog];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136446466;
        v10 = "+[SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:]";
        v11 = 2114;
        v12 = v3;
        _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}s: trying to set reserve space while in paused state, %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      [SUCoreSpace _trackSpaceBegin:@"CacheDeleteSetReserveSpace"];
      CacheDeleteSetReserveSpaceWithInfo();
      [SUCoreSpace _trackSpaceEnd:@"CacheDeleteSetReserveSpace" withResult:0 withError:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)cacheDeleteResumeReserveSpace
{
  v10 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = +[SUCoreSpace sharedSpaceManager];
    v3 = [v2 reserveSpacePaused];

    v4 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v4 oslog];

    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v8 = 136315138;
        v9 = "+[SUCoreSpace cacheDeleteResumeReserveSpace]";
        _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: resuming CacheDelete purgeable monitor", &v8, 0xCu);
      }

      CacheDeleteSetEntitledReservation();
      v5 = +[SUCoreSpace sharedSpaceManager];
      [v5 setReserveSpacePaused:0];
    }

    else if (v6)
    {
      v8 = 136315138;
      v9 = "+[SUCoreSpace cacheDeleteResumeReserveSpace]";
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: trying to resume reserve space while the monitor is not paused", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)cacheDeletePauseReserveSpace:(id)a3 unentitledSpace:(id)a4 withPurpose:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (_os_feature_enabled_impl())
  {
    v10 = +[SUCoreSpace sharedSpaceManager];
    v11 = [v10 entitledSpaceDisabled];

    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"Enabled";
      if (v11)
      {
        v14 = @"Disabled";
      }

      *buf = 136315394;
      v33 = "+[SUCoreSpace cacheDeletePauseReserveSpace:unentitledSpace:withPurpose:]";
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: APFS entitled space is %{public}@", buf, 0x16u);
    }

    if (v7)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) != 0 || ![(__CFString *)v7 unsignedLongLongValue])
    {
      v21 = [MEMORY[0x277D64460] sharedLogger];
      v22 = [v21 oslog];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[SPACE] Pause cache delete reserve space monitoring", buf, 2u);
      }

      CacheDeletePauseReserveSpaceMonitoring();
      goto LABEL_32;
    }

    if (!v9)
    {
      v9 = @"com.apple.SUCore:totalRequired";
    }

    v30 = 0;
    v31 = 0;
    v16 = [SUCoreSpace cacheDeleteGetReserveSpace:&v31 withError:&v30];
    v17 = v31;
    v18 = v30;
    if (v16)
    {
      v19 = [MEMORY[0x277D64460] sharedLogger];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v18;
        _os_log_impl(&dword_23193C000, v20, OS_LOG_TYPE_DEFAULT, "[SPACE] Unable to get reserve space info from cache delete, Error: %@", buf, 0xCu);
      }
    }

    else
    {
      v20 = [v17 objectForKeyedSubscript:@"CACHE_DELETE_ENTITLED_RESERVATION"];
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v20 unsignedLongLongValue];
          if (v23 && [(__CFString *)v7 unsignedLongLongValue]> v23)
          {
            v24 = [MEMORY[0x277D64460] sharedLogger];
            oslog = [v24 oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v33 = v20;
              v34 = 2112;
              v35 = v7;
              _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Clearing APFS entitled reserve space because we got a bigger space to reserve, existingEntitledSpace:%@, entitledSpace:%@", buf, 0x16u);
            }

            CacheDeleteSetEntitledReservation();
          }

          goto LABEL_27;
        }
      }
    }

    v23 = 0;
LABEL_27:

    if ([(__CFString *)v7 unsignedLongLongValue]> v23)
    {
      v25 = [MEMORY[0x277D64460] sharedLogger];
      v26 = [v25 oslog];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v33 = v23;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_23193C000, v26, OS_LOG_TYPE_DEFAULT, "[SPACE] Pause cache delete reserve space monitoring and set entitled reservation, existingEntitledSpace:%llu entitledSpace:%@ with purpose:%@", buf, 0x20u);
      }

      [(__CFString *)v9 UTF8String];
      CacheDeleteSetEntitledAndUnentitledReservation();
    }

LABEL_32:
    v27 = +[SUCoreSpace sharedSpaceManager];
    [v27 setReserveSpacePaused:1];
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int)a5 timeout:(int)a6 additionalOptions:(id)a7 withCompletionQueue:(id)a8 completion:(id)a9
{
  v64[3] = *MEMORY[0x277D85DE8];
  v56 = a4;
  v55 = a7;
  v14 = a9;
  v15 = a8;
  [SUCoreSpace _trackSpaceBegin:@"CacheDeleteCopyPurgeableSpaceWithInfo"];
  v16 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CacheDeletePurgeable"];
  v17 = _os_feature_enabled_impl();
  v18 = 0;
  v54 = a3;
  if (a5 == 4 && v17)
  {
    v19 = v16;
    v20 = v15;
    v21 = v14;
    v22 = [MEMORY[0x277D64460] sharedLogger];
    v23 = [v22 oslog];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v23, OS_LOG_TYPE_DEFAULT, "[SPACE] Checking reserved space in the update volume from CacheDelete", buf, 2u);
    }

    v57 = 0;
    v58 = 0;
    v24 = [SUCoreSpace cacheDeleteGetReserveSpace:&v58 withError:&v57];
    v25 = v58;
    v26 = v57;
    if (v24)
    {
      v27 = [MEMORY[0x277D64460] sharedLogger];
      v28 = [v27 oslog];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v26;
        _os_log_impl(&dword_23193C000, v28, OS_LOG_TYPE_DEFAULT, "[SPACE] Unable to get reserve space, error: %@", buf, 0xCu);
      }
    }

    else
    {
      v28 = [v25 objectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT"];
      if (v28)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v28 unsignedLongLongValue];
LABEL_15:
          v14 = v21;

          v15 = v20;
          v16 = v19;
          a3 = v54;
          goto LABEL_16;
        }
      }

      v29 = [MEMORY[0x277D64460] sharedLogger];
      v30 = [v29 oslog];

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v30, OS_LOG_TYPE_DEFAULT, "[SPACE] Invalid reserved type", buf, 2u);
      }
    }

    v18 = 0;
    goto LABEL_15;
  }

LABEL_16:
  if (v18 >= a3)
  {
    v46 = [MEMORY[0x277D64460] sharedLogger];
    v35 = [v46 oslog];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[SPACE] reserved space is enough, skip checking for purgeable content", buf, 2u);
    }

    v44 = 0;
    v45 = 0;
    v47 = 0;
    v48 = 1;
    goto LABEL_41;
  }

  v53 = v14;
  if (a6 >= 1)
  {
    v31 = a6;
  }

  else
  {
    v31 = 300;
  }

  v64[0] = v56;
  v63[0] = @"CACHE_DELETE_VOLUME";
  v63[1] = @"CACHE_DELETE_URGENCY";
  v32 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
  v64[1] = v32;
  v63[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v33 = [MEMORY[0x277CCABB0] numberWithInt:v31];
  v64[2] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v35 = [v34 mutableCopy];

  if (v55)
  {
    [v35 addEntriesFromDictionary:?];
  }

  v36 = [MEMORY[0x277D64460] sharedLogger];
  v37 = [v36 oslog];

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = v35;
    _os_log_impl(&dword_23193C000, v37, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering cache delete purgeable check with options: %{public}@", buf, 0xCu);
  }

  v38 = CacheDeleteCopyPurgeableSpaceWithInfo();
  if (!v38)
  {
    v44 = @"no results provided on cache delete purgeable complete";
LABEL_37:
    v45 = 8603;
LABEL_40:
    v14 = v53;

    v35 = [MEMORY[0x277D643F8] sharedCore];
    v47 = [v35 buildError:v45 underlying:0 description:v44];
    v48 = 0;
    goto LABEL_41;
  }

  v39 = v38;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v39))
  {
    v49 = [MEMORY[0x277D64428] sharedDiag];
    [v49 trackAnomaly:@"cacheDeletePurgeable" forReason:@"result provided by CacheDeleteCopyPurgeableSpaceWithInfo is not CFDictionary type - ignored" withResult:8112 withError:0];

    CFRelease(v39);
    v44 = @"invalid results type provided on cache delete purgeable complete";
    goto LABEL_37;
  }

  v41 = [MEMORY[0x277D64460] sharedLogger];
  v42 = [v41 oslog];

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v39;
    _os_log_impl(&dword_23193C000, v42, OS_LOG_TYPE_DEFAULT, "[SPACE] cache delete purgeable results: %@", buf, 0xCu);
  }

  v43 = [v39 objectForKey:@"CACHE_DELETE_AMOUNT"];
  if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v44 = @"no amount of purgeable space provided on cache delete purgeable complete";
    v45 = 8603;
    goto LABEL_39;
  }

  v18 += [v43 unsignedLongLongValue];
  if (v18 < v54)
  {
    v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purgeable %lld but needed to purge %lld (not enough space)", v18, v54];
    v45 = 8600;
LABEL_39:

    goto LABEL_40;
  }

  v51 = [MEMORY[0x277D64460] sharedLogger];
  v52 = [v51 oslog];

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v60 = v18;
    v61 = 2048;
    v62 = v54;
    _os_log_impl(&dword_23193C000, v52, OS_LOG_TYPE_DEFAULT, "[SPACE] purgeable %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v44 = 0;
  v45 = 0;
  v47 = 0;
  v48 = 1;
  v14 = v53;
LABEL_41:

  [SUCoreSpace _trackSpaceEnd:@"CacheDeleteCopyPurgeableSpaceWithInfo" withResult:v45 withError:v47];
  [SUCoreSpace _issuePurgeableCompletion:v14 withCompletionQueue:v15 haveEnoughSpace:v48 amountPurgeable:v18 error:v47 transaction:v16 transactionName:@"space.CacheDeletePurgeable"];

  v50 = *MEMORY[0x277D85DE8];
}

+ (id)cacheDeleteUrgencyName:(int)a3
{
  if ((a3 + 1) > 5)
  {
    return @"UNKNOWN TYPE";
  }

  else
  {
    return off_27892EAC0[a3 + 1];
  }
}

+ (unint64_t)getVolumeUsedSpace:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  bzero(&v11, 0x878uLL);
  if (statfs([v3 fileSystemRepresentation], &v11))
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"check for available space failed (unable to statfs basePath=%@)", v3];
    v5 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v5 buildError:8602 underlying:0 description:v4];

    v7 = [MEMORY[0x277D64428] sharedDiag];
    [v7 trackError:@"[SPACE]" forReason:v4 withResult:objc_msgSend(v6 withError:{"code"), v6}];

    v8 = 0;
  }

  else
  {
    v8 = (v11.f_blocks - v11.f_bfree) * v11.f_bsize;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int64_t)a5 onlyAvailableBySkippingLaunchCheck:(BOOL)a6 withCompletionQueue:(id)a7 completion:(id)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a8;
  v15 = a4;
  [SUCoreSpace _trackSpaceBegin:@"ASDPurgeableAppRequest"];
  v16 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurgeable"];
  v17 = objc_alloc(MEMORY[0x277CEC470]);
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = @"/var/mobile/";
  }

  v19 = [v17 initWithVolume:v18 urgency:a5];

  [v19 setSkipLaunchCheck:1];
  v20 = [MEMORY[0x277D64460] sharedLogger];
  v21 = [v20 oslog];

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v19;
    _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering app offload purgeable check with options: %{public}@", buf, 0xCu);
  }

  v22 = [objc_alloc(MEMORY[0x277CEC468]) initWithOptions:v19];
  if (v22)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __144__SUCoreSpace_checkPurgeableSpaceOffloadApps_fromBasePath_cacheDeleteUrgency_onlyAvailableBySkippingLaunchCheck_withCompletionQueue_completion___block_invoke;
    v27[3] = &unk_27892E960;
    v32 = a6;
    v31 = a3;
    v30 = v14;
    v28 = v13;
    v29 = v16;
    [v22 startWithCompletionBlock:v27];

    v23 = v30;
  }

  else
  {
    v24 = [MEMORY[0x277D64428] sharedDiag];
    [v24 trackAnomaly:@"ASDPurgeableAppRequest" forReason:@"Failed to create ASDPurgeableAppRequest instance" withResult:8100 withError:0];

    v25 = [MEMORY[0x277D643F8] sharedCore];
    v23 = [v25 buildError:8605 underlying:0 description:@"Failed to create ASDPurgeAppsRequest instance"];

    [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:8605 withError:v23];
    [SUCoreSpace _issuePurgeableCompletion:v14 withCompletionQueue:v13 haveEnoughSpace:0 amountPurgeable:0 error:v23 transaction:v16 transactionName:@"space.AppOffloadPurgeable"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __144__SUCoreSpace_checkPurgeableSpaceOffloadApps_fromBasePath_cacheDeleteUrgency_onlyAvailableBySkippingLaunchCheck_withCompletionQueue_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = 0;
    v16 = @"ASDPurgeableAppRequest returned null response";
    v17 = 8605;
LABEL_27:
    v22 = [MEMORY[0x277D643F8] sharedCore];
    v24 = [v22 buildError:v17 underlying:v8 description:v16];
    v25 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 64) == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v7 purgeableApps];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if ([v15 purgeableType] == 5 && objc_msgSend(v15, "staticDiskUsage") >= 1)
          {
            v12 += [v15 staticDiskUsage];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v7 purgeableSize];
  }

  v18 = [MEMORY[0x277D64460] sharedLogger];
  v19 = [v18 oslog];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 64);
    *buf = 67109376;
    *v32 = v20;
    *&v32[4] = 2048;
    *&v32[6] = v12;
    _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[SPACE] app offload purgeable (onlyAvailableBySkippingLaunchCheck:%d) space %lld bytes", buf, 0x12u);
  }

  if (v12 < *(a1 + 56))
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purgeable %lld is less than requested %lld (not enough space)", v12, *(a1 + 56)];
    v17 = 8600;
    goto LABEL_27;
  }

  if (!a2)
  {
    v16 = @"ASDPurgeableAppRequest returned result=NO";
    v17 = 8606;
    goto LABEL_27;
  }

  v21 = [MEMORY[0x277D64460] sharedLogger];
  v22 = [v21 oslog];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 56);
    *buf = 134218240;
    *v32 = v12;
    *&v32[8] = 2048;
    *&v32[10] = v23;
    _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[SPACE] app offload purgeable %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v16 = 0;
  v17 = 0;
  v24 = 0;
  v25 = 1;
LABEL_28:

  [SUCoreSpace _trackSpaceEnd:@"ASDPurgeableAppRequest" withResult:v17 withError:v24];
  [SUCoreSpace _issuePurgeableCompletion:*(a1 + 48) withCompletionQueue:*(a1 + 32) haveEnoughSpace:v25 amountPurgeable:v12 error:v24 transaction:*(a1 + 40) transactionName:@"space.AppOffloadPurgeable"];

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)a3 cacheDeleteUrgency:(int64_t)a4 withCompletionQueue:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurgeable"];
    v12 = [MEMORY[0x277D643F8] sharedCore];
    v13 = [v12 selectCompletionQueue:v9];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__SUCoreSpace_checkPurgeableSpaceOffloadApps_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = v10;
    v16 = v9;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace checkPurgeableSpaceOffloadApps:a3 fromBasePath:@"/var/mobile/" cacheDeleteUrgency:a4 withCompletionQueue:v13 completion:v15];
  }

  else
  {
    [SUCoreSpace checkPurgeableSpaceOffloadApps:a3 cacheDeleteUrgency:a4 withCompletionQueue:v9 completion:v10];
  }
}

+ (void)offloadAppsPurge:(unint64_t)a3 fromBasePath:(id)a4 cacheDeleteUrgency:(int64_t)a5 withCompletionQueue:(id)a6 completion:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a7;
  v13 = a4;
  [SUCoreSpace _trackSpaceBegin:@"ASDPurgeAppsRequest"];
  v14 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurge"];
  v15 = objc_alloc(MEMORY[0x277CEC460]);
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = @"/var/mobile/";
  }

  v17 = [v15 initWithVolume:v16 urgency:a5];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v17 setDesiredPurgeAmount:v18];

  [v17 setSkipLaunchCheck:1];
  v19 = [MEMORY[0x277D64460] sharedLogger];
  v20 = [v19 oslog];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v17;
    _os_log_impl(&dword_23193C000, v20, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering app offload purge with options: %{public}@", buf, 0xCu);
  }

  v21 = [objc_alloc(MEMORY[0x277CEC458]) initWithOptions:v17];
  if (v21)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __95__SUCoreSpace_offloadAppsPurge_fromBasePath_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v26[3] = &unk_27892E988;
    v30 = a3;
    v29 = v12;
    v27 = v11;
    v28 = v14;
    [v21 startWithCompletionBlock:v26];

    v22 = v29;
  }

  else
  {
    v23 = [MEMORY[0x277D64428] sharedDiag];
    [v23 trackAnomaly:@"ASDPurgeAppsRequest" forReason:@"Failed to create ASDPurgeAppsRequest instance" withResult:8100 withError:0];

    v24 = [MEMORY[0x277D643F8] sharedCore];
    v22 = [v24 buildError:8607 underlying:0 description:@"Failed to create ASDPurgeAppsRequest instance"];

    [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:8607 withError:v22];
    [SUCoreSpace _issuePurgeCompletion:v12 withCompletionQueue:v11 haveEnoughSpace:0 amountPurged:0 error:v22 transaction:v14 transactionName:@"space.AppOffloadPurge"];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __95__SUCoreSpace_offloadAppsPurge_fromBasePath_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke(void *a1, int a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v11)
    {
      *buf = 138412290;
      v47 = @"ASDPurgeAppsRequest returned null response";
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: %@", buf, 0xCu);
    }

    v29 = 0;
    v30 = @"ASDPurgeAppsRequest returned null response";
    v31 = 8607;
    goto LABEL_27;
  }

  if (v11)
  {
    *buf = 134217984;
    v47 = [v7 purgedSize];
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: purged size %lld bytes", buf, 0xCu);
  }

  v38 = a2;
  v39 = a1;
  v40 = v8;

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 purgedApps];
    v15 = [v14 count];
    *buf = 67109120;
    LODWORD(v47) = v15;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: number of purgedApps: %d", buf, 8u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = v7;
  v16 = [v7 purgedApps];
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [v21 bundleID];

        if (v22)
        {
          v23 = [MEMORY[0x277D64460] sharedLogger];
          v24 = [v23 oslog];

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v21 bundleID];
            v26 = [v21 purgeableReason];
            v27 = [v21 purgeableType];
            v28 = [v21 staticDiskUsage];
            *buf = 138413058;
            v47 = v25;
            v48 = 2112;
            v49 = v26;
            v50 = 1024;
            v51 = v27;
            v52 = 2048;
            v53 = v28;
            _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload purged app bundleID: '%@'; reason: '%@'; purgeableType: '%d'; diskUsage: '%lld'", buf, 0x26u);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v18);
  }

  v7 = v41;
  v29 = [v41 purgedSize];
  a1 = v39;
  if (v29 < v39[7])
  {
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purged %lld but needed to purge %lld (not enough space)", v29, v39[7]];
    v31 = 8600;
    v8 = v40;
LABEL_27:
    v33 = [MEMORY[0x277D643F8] sharedCore];
    v35 = [v33 buildError:v31 underlying:v8 description:v30];
    v36 = 0;
    goto LABEL_28;
  }

  v8 = v40;
  if (!v38)
  {
    v30 = @"ASDPurgeAppsRequest returned result=NO";
    v31 = 8608;
    goto LABEL_27;
  }

  v32 = [MEMORY[0x277D64460] sharedLogger];
  v33 = [v32 oslog];

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v39[7];
    *buf = 134218240;
    v47 = v29;
    v48 = 2048;
    v49 = v34;
    _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v30 = 0;
  v31 = 0;
  v35 = 0;
  v36 = 1;
LABEL_28:

  [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:v31 withError:v35];
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v36 amountPurged:v29 error:v35 transaction:a1[5] transactionName:@"space.AppOffloadPurge"];

  v37 = *MEMORY[0x277D85DE8];
}

+ (void)offloadAppsPurge:(unint64_t)a3 cacheDeleteUrgency:(int64_t)a4 withCompletionQueue:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurge"];
    v12 = +[SUCoreSpace sharedSpaceManager];
    v13 = [v12 spaceQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__SUCoreSpace_offloadAppsPurge_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = v10;
    v16 = v9;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace offloadAppsPurge:a3 fromBasePath:@"/var/mobile/" cacheDeleteUrgency:a4 withCompletionQueue:v13 completion:v15];
  }

  else
  {
    [SUCoreSpace offloadAppsPurge:a3 fromBasePath:@"/var/mobile/" cacheDeleteUrgency:a4 withCompletionQueue:v9 completion:v10];
  }
}

void __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[SUCoreSpace sharedSpaceManager];
  v9 = [v8 spaceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke_2;
  block[3] = &unk_27892E9B0;
  v14 = v7;
  v17 = *(a1 + 48);
  v15 = *(a1 + 32);
  v10 = *(a1 + 40);
  v20 = a2;
  v11 = *(a1 + 56);
  v16 = v10;
  v18 = v11;
  v19 = a3;
  v12 = v7;
  dispatch_async(v9, block);
}

void __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"minimal", [v2 code], *(a1 + 32));
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:0 error:*(a1 + 32) releasingTransaction:*(a1 + 48)];
  }

  else if (*(a1 + 80) == 1)
  {
    [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"minimal" withResult:0 withError:0];
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      *buf = 134218240;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "[SPACE] minimal disk space available: need %llu and %llu is available (have enough space)", buf, 0x16u);
    }

    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:1 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 72) error:0 releasingTransaction:*(a1 + 48)];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough minimal space to install update: need %llu and %llu is available", *(a1 + 64), *(a1 + 72)];
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 buildError:8600 underlying:0 description:v8];

    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"minimal", [v12 code], v12);
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 72) error:v12 releasingTransaction:*(a1 + 48)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_spaceCheckPhaseError:(id)a3 checkingFromBase:(id)a4 withIdentier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = MEMORY[0x277D64428];
  v12 = a5;
  v13 = a4;
  v14 = [v11 sharedDiag];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"space check from base(%@) phase(%@) failed", v13, v12];

  [v14 trackError:@"[SPACE]" forReason:v15 withResult:objc_msgSend(v9 withError:{"code"), v9}];
  v16 = [MEMORY[0x277D643F8] sharedCore];
  v17 = [v16 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SUCoreSpace__spaceCheckPhaseError_checkingFromBase_withIdentier_completion___block_invoke;
  block[3] = &unk_27892CA88;
  v21 = v9;
  v22 = v10;
  v18 = v9;
  v19 = v10;
  dispatch_async(v17, block);
}

+ (BOOL)_isUserVolume:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x40CuLL);
  v8[2] = 0;
  v8[0] = 5;
  v8[1] = 2147491840;
  result = 0;
  if (getattrlist([a3 fileSystemRepresentation], v8, v9, 0x40CuLL, 0) != -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:v10 + v10[0] encoding:4];
    v5 = [v4 isEqualToString:@"User"];

    if (v5)
    {
      result = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)mobileAssetEstimateEvictable:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    [SUCoreSpace _trackSpaceBegin:@"MobileAssetEstimateEvictable"];
    v9 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.MobileAssetEstimateEvictable"];
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]";
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to estimate evictable bytes: bytesNeeded = %llu", buf, 0x16u);
    }

    v12 = MEMORY[0x277D289E0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SUCoreSpace_mobileAssetEstimateEvictable_completionQueue_completion___block_invoke;
    v16[3] = &unk_27892E9D8;
    v20 = a3;
    v19 = v8;
    v17 = v7;
    v18 = v9;
    v13 = v9;
    [v12 estimateEvictableBytesForSoftwareUpdateWithCompletion:v16];
  }

  else
  {
    v14 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v14 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SUCoreSpace mobileAssetEstimateEvictable:v13 completionQueue:? completion:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__SUCoreSpace_mobileAssetEstimateEvictable_completionQueue_completion___block_invoke(void *a1, int a2, unint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]_block_invoke";
    v17 = 1024;
    v18 = a2;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA estimated evictable bytes: success = %d, evictableBytes = %llu, error = %{public}@", buf, 0x26u);
  }

  if (v7 || !a2)
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v10 buildError:8609 underlying:v7 description:@"Failed to estimate evictable bytes"];
    a3 = 0;
  }

  else
  {
    if (a1[7] <= a3)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"neededBytes=%llu evictableBytes=%llu", a1[7], a3];;
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 buildError:8600 underlying:0 description:v10];
  }

  v13 = 0;
LABEL_10:
  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetEstimateEvictable", [v12 code], v12);
  [SUCoreSpace _issuePurgeableCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v13 amountPurgeable:a3 error:v12 transaction:a1[5] transactionName:@"space.MobileAssetEstimateEvictable"];

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)mobileAssetSuspend:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [SUCoreSpace _trackSpaceBegin:@"MobileAssetSuspend"];
  v9 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.MobileAssetSuspend"];
  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "+[SUCoreSpace mobileAssetSuspend:completionQueue:completion:]";
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to suspend: bytesNeeded = %llu", buf, 0x16u);
  }

  v12 = MEMORY[0x277D289E0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SUCoreSpace_mobileAssetSuspend_completionQueue_completion___block_invoke;
  v17[3] = &unk_27892EA00;
  v20 = v8;
  v21 = a3;
  v18 = v7;
  v19 = v9;
  v13 = v9;
  v14 = v7;
  v15 = v8;
  [v12 suspendForSoftwareUpdateWithNeededBytes:a3 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __61__SUCoreSpace_mobileAssetSuspend_completionQueue_completion___block_invoke(void *a1, int a2, void *a3)
{
  LODWORD(v3) = a2;
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "+[SUCoreSpace mobileAssetSuspend:completionQueue:completion:]_block_invoke";
    v14 = 1024;
    v15 = v3;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA suspended: success = %d, error = %{public}@", buf, 0x1Cu);
  }

  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  if (v3 == 1)
  {
    v8 = 0;
    v9 = a1[7];
  }

  else
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v8 = [v10 buildError:8610 underlying:v5 description:0];

    v9 = 0;
  }

  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetSuspend", [v8 code], v8);
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v3 amountPurged:v9 error:v8 transaction:a1[5] transactionName:@"space.MobileAssetSuspend"];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)mobileAssetResumeWithCompletionQueue:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [SUCoreSpace _trackSpaceBegin:@"MobileAssetResume"];
  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "+[SUCoreSpace mobileAssetResumeWithCompletionQueue:completion:]";
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to resume", buf, 0xCu);
  }

  v9 = MEMORY[0x277D289E0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke;
  v13[3] = &unk_27892EA50;
  v14 = v5;
  v15 = v6;
  v10 = v5;
  v11 = v6;
  [v9 resumeFromSoftwareUpdateWithCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "+[SUCoreSpace mobileAssetResumeWithCompletionQueue:completion:]_block_invoke";
    v20 = 1024;
    v21 = a2;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA resumed: success = %d, error = %{public}@", buf, 0x1Cu);
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v10 buildError:8611 underlying:v5 description:0];
  }

  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetResume", [v9 code], v9);
  if (*(a1 + 40))
  {
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 selectCompletionQueue:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke_572;
    block[3] = &unk_27892EA28;
    v16 = *(a1 + 40);
    v17 = v8;
    v15 = v9;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)_issueSpaceCheckCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 haveTotalRequired:(BOOL)a6 freeSpaceAvailable:(unint64_t)a7 error:(id)a8 releasingTransaction:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v18 = v17;
  if (v14)
  {
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v19 selectCompletionQueue:v15];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __142__SUCoreSpace__issueSpaceCheckCompletion_withCompletionQueue_haveEnoughSpace_haveTotalRequired_freeSpaceAvailable_error_releasingTransaction___block_invoke;
    block[3] = &unk_27892EA78;
    v26 = a5;
    v27 = a6;
    v24 = v14;
    v25 = a7;
    v22 = v16;
    v23 = v18;
    dispatch_async(v20, block);
  }

  else if (v17)
  {
    [MEMORY[0x277D643F8] endTransaction:v17 withName:@"space.CheckAvailableSpace"];
  }
}

uint64_t __142__SUCoreSpace__issueSpaceCheckCompletion_withCompletionQueue_haveEnoughSpace_haveTotalRequired_freeSpaceAvailable_error_releasingTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 65);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 40))
  {
    v7 = MEMORY[0x277D643F8];

    return [v7 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_issuePurgeableCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 amountPurgeable:(unint64_t)a6 error:(id)a7 transaction:(id)a8 transactionName:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (v14)
  {
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v19 selectCompletionQueue:v15];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __127__SUCoreSpace__issuePurgeableCompletion_withCompletionQueue_haveEnoughSpace_amountPurgeable_error_transaction_transactionName___block_invoke;
    v21[3] = &unk_27892EAA0;
    v27 = a5;
    v25 = v14;
    v26 = a6;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    dispatch_async(v20, v21);
  }

  else if (v17)
  {
    [MEMORY[0x277D643F8] endTransaction:v17 withName:v18];
  }
}

uint64_t __127__SUCoreSpace__issuePurgeableCompletion_withCompletionQueue_haveEnoughSpace_amountPurgeable_error_transaction_transactionName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  result = (*(*(a1 + 56) + 16))();
  if (*(a1 + 40))
  {
    v6 = MEMORY[0x277D643F8];
    v7 = *(a1 + 48);

    return [v6 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_issuePurgeCompletion:(id)a3 withCompletionQueue:(id)a4 haveEnoughSpace:(BOOL)a5 amountPurged:(unint64_t)a6 error:(id)a7 transaction:(id)a8 transactionName:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (v14)
  {
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v19 selectCompletionQueue:v15];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__SUCoreSpace__issuePurgeCompletion_withCompletionQueue_haveEnoughSpace_amountPurged_error_transaction_transactionName___block_invoke;
    v21[3] = &unk_27892EAA0;
    v27 = a5;
    v25 = v14;
    v26 = a6;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    dispatch_async(v20, v21);
  }

  else if (v17)
  {
    [MEMORY[0x277D643F8] endTransaction:v17 withName:v18];
  }
}

uint64_t __120__SUCoreSpace__issuePurgeCompletion_withCompletionQueue_haveEnoughSpace_amountPurged_error_transaction_transactionName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  result = (*(*(a1 + 56) + 16))();
  if (*(a1 + 40))
  {
    v6 = MEMORY[0x277D643F8];
    v7 = *(a1 + 48);

    return [v6 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_trackSpaceBegin:(id)a3 withIdentifier:(id)a4
{
  v5 = MEMORY[0x277D64428];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDiag];
  [v8 trackBegin:v7 atLevel:1 forModule:@"space" withIdentifier:v6];
}

+ (void)_trackSpaceEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v9 = MEMORY[0x277D64428];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v9 sharedDiag];
  [v13 trackEnd:v12 atLevel:1 forModule:@"space" withIdentifier:v11 withResult:a5 withError:v10];
}

+ (void)mobileAssetEstimateEvictable:(os_log_t)log completionQueue:completion:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]";
  _os_log_error_impl(&dword_23193C000, log, OS_LOG_TYPE_ERROR, "[SPACE] %s called with no completion", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end