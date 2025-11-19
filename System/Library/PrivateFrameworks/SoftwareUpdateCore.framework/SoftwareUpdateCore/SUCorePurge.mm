@interface SUCorePurge
+ (void)_trackPurgeBegin:(id)a3 withIdentifier:(id)a4;
+ (void)_trackPurgeEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
+ (void)checkForAssetsOfType:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5;
+ (void)checkForExistingAssetsWithPolicy:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5;
+ (void)checkForExistingPrepareWithCompletionQueue:(id)a3 completion:(id)a4;
+ (void)previousUpdateState:(BOOL *)a3 tetheredRestore:(BOOL *)a4 failedBackward:(BOOL *)a5 failedForward:(BOOL *)a6;
+ (void)removeAllAssetsOfType:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5;
+ (void)removeAllAssetsOfTypes:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5;
+ (void)removeAllUpdateContentWithCompletionQueue:(id)a3 completion:(id)a4;
+ (void)removeAllUpdateContentWithPolicy:(id)a3 completionQueue:(id)a4 completion:(id)a5;
@end

@implementation SUCorePurge

+ (void)previousUpdateState:(BOOL *)a3 tetheredRestore:(BOOL *)a4 failedBackward:(BOOL *)a5 failedForward:(BOOL *)a6
{
  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"purge.PreviousUpdateState"];
  v26 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  [SUCorePurge _trackPurgeBegin:@"MSURetrievePreviousUpdateState"];
  if (!SUCoreBorder_MSURetrievePreviousUpdateState())
  {
    v14 = [MEMORY[0x277D643F8] sharedCore];
    v13 = [v14 buildError:8802 underlying:0 description:@"MSURetrievePreviousUpdateState failed to provide state"];
LABEL_18:

    goto LABEL_19;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v20 = [MEMORY[0x277D64460] sharedLogger];
      v21 = [v20 oslog];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "[PURGE] MSU previous update state:kMSUUpdateStateFailedBackward [OTA attempt failed back to previous OS]", v23, 2u);
      }

      if (a5)
      {
        v13 = 0;
        *a5 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (v26 != 3)
      {
        goto LABEL_26;
      }

      v15 = [MEMORY[0x277D64460] sharedLogger];
      v16 = [v15 oslog];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "[PURGE] MSU previous update state:kMSUUpdateStateFailedForward [OTA attempt encountered failure but continued to the new OS]", v22, 2u);
      }

      if (a6)
      {
        v13 = 0;
        *a6 = 1;
        goto LABEL_19;
      }
    }

LABEL_35:
    v13 = 0;
    goto LABEL_19;
  }

  if (!v26)
  {
    v18 = [MEMORY[0x277D64460] sharedLogger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[PURGE] MSU previous update state:kMSUUpdateStateNone [tethered restore]", v25, 2u);
    }

    if (a4)
    {
      v13 = 0;
      *a4 = 1;
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  if (v26 != 1)
  {
LABEL_26:
    v14 = [MEMORY[0x277D643F8] sharedCore];
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown previous update state: %d", v26];
    v13 = [v14 buildError:8116 underlying:0 description:v17];

    goto LABEL_18;
  }

  v11 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[PURGE] MSU previous update state:kMSUUpdateStateSuccessful [successful OTA]", buf, 2u);
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  v13 = 0;
  *a3 = 1;
LABEL_19:
  +[SUCorePurge _trackPurgeEnd:withResult:withError:](SUCorePurge, "_trackPurgeEnd:withResult:withError:", @"MSURetrievePreviousUpdateState", [v13 code], v13);
  [MEMORY[0x277D643F8] endTransaction:v10 withName:@"purge.PreviousUpdateState"];
}

+ (void)checkForExistingPrepareWithCompletionQueue:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D643F8] beginTransactionWithName:@"purge.CheckForExistingPrepare"];
  v8 = [MEMORY[0x277D643F8] sharedCore];
  v9 = [v8 buildError:8113 underlying:0 description:@"checkForExistingPrepare not yet supported by MSU SPI"];

  v10 = [MEMORY[0x277D64428] sharedDiag];
  [v10 trackError:@"[PURGE]" forReason:@"checkForExistingPrepare not yet supported" withResult:8113 withError:v9];

  if (v6)
  {
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 selectCompletionQueue:v5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SUCorePurge_checkForExistingPrepareWithCompletionQueue_completion___block_invoke;
    block[3] = &unk_27892C830;
    v16 = v6;
    v14 = v9;
    v15 = v7;
    dispatch_async(v12, block);
  }

  else
  {
    [MEMORY[0x277D643F8] endTransaction:v7 withName:@"purge.CheckForExistingPrepare"];
  }
}

uint64_t __69__SUCorePurge_checkForExistingPrepareWithCompletionQueue_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = MEMORY[0x277D643F8];
  v4 = a1[5];

  return [v3 endTransaction:v4 withName:@"purge.CheckForExistingPrepare"];
}

+ (void)checkForExistingAssetsWithPolicy:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277D643F8];
  v10 = a3;
  v11 = [v9 beginTransactionWithName:@"purge.CheckForExistingAssets"];
  v12 = [v10 copy];

  v13 = [v12 softwareUpdateAssetType];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke;
  v18[3] = &unk_27892DE98;
  v19 = v12;
  v20 = v7;
  v21 = v11;
  v22 = v8;
  v14 = v11;
  v15 = v7;
  v16 = v8;
  v17 = v12;
  [SUCorePurge checkForAssetsOfType:v13 withCompletionQueue:0 completion:v18];
}

void __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] documentationAssetType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke_2;
  v10[3] = &unk_27892DE70;
  v15 = a1[7];
  v11 = v6;
  v12 = a1[5];
  v13 = v5;
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  [SUCorePurge checkForAssetsOfType:v7 withCompletionQueue:0 completion:v10];
}

void __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64))
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v6 && !v7)
    {
      v8 = v6;
    }

    v9 = [MEMORY[0x277D643F8] sharedCore];
    v10 = [v9 selectCompletionQueue:*(a1 + 40)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke_3;
    block[3] = &unk_27892D408;
    v17 = *(a1 + 64);
    v13 = v5;
    v14 = *(a1 + 48);
    v15 = v8;
    v16 = *(a1 + 56);
    v11 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 56) withName:@"purge.CheckForExistingAssets"];
  }
}

uint64_t __79__SUCorePurge_checkForExistingAssetsWithPolicy_withCompletionQueue_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  (*(a1[8] + 16))();
  v5 = MEMORY[0x277D643F8];
  v6 = a1[7];

  return [v5 endTransaction:v6 withName:@"purge.CheckForExistingAssets"];
}

+ (void)checkForAssetsOfType:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D643F8] sharedCore];
  v11 = [v10 waitedOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUCorePurge_checkForAssetsOfType_withCompletionQueue_completion___block_invoke;
  block[3] = &unk_27892D368;
  v17 = v8;
  v18 = v9;
  v16 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v7;
  dispatch_async(v11, block);
}

void __67__SUCorePurge_checkForAssetsOfType_withCompletionQueue_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:*(a1 + 32)];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  [v2 returnTypes:1];
  v3 = [v2 queryMetaDataSync];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to query for installed %@ assets (MAQuery domain)", *(a1 + 32)];
    v6 = [MEMORY[0x277D643F8] sharedCore];
    v7 = [v6 buildError:v4 underlying:0 description:v5];

    v8 = [MEMORY[0x277D64428] sharedDiag];
    [v8 trackError:@"[PURGE]" forReason:v5 withResult:v4 withError:v7];

    v9 = 0;
    if (!*(a1 + 48))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = [v2 assetIds];
  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 count];
    v13 = *(a1 + 32);
    v14 = [v9 count];
    v15 = @"s";
    *buf = 134218754;
    v24 = v12;
    v25 = 2114;
    if (v14 == 1)
    {
      v15 = &stru_28469CC48;
    }

    v26 = v13;
    v27 = 2114;
    v28 = v15;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[PURGE] MobileAsset found %ld installed %{public}@ asset%{public}@, assetIDs: %{public}@", buf, 0x2Au);
  }

  if (*(a1 + 48))
  {
    if (v9 && ![v9 count])
    {

      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = 0;
    }

LABEL_14:
    v16 = [MEMORY[0x277D643F8] sharedCore];
    v17 = [v16 selectCompletionQueue:*(a1 + 40)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SUCorePurge_checkForAssetsOfType_withCompletionQueue_completion___block_invoke_335;
    block[3] = &unk_27892C830;
    v22 = *(a1 + 48);
    v9 = v9;
    v20 = v9;
    v7 = v7;
    v21 = v7;
    dispatch_async(v17, block);

    goto LABEL_15;
  }

  v7 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)removeAllUpdateContentWithCompletionQueue:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D643F8] sharedCore];
  v8 = [v7 buildError:8123 underlying:0 description:{@"removeAllUpdateContent method has been deprecated, use removeAllUpdateContentWithPolicy instead"}];

  v9 = [MEMORY[0x277D64428] sharedDiag];
  [v9 trackError:@"PURGE" forReason:@"removeAllUpdateContent method has been deprecated withResult:use removeAllUpdateContentWithPolicy instead" withError:{8123, v8}];

  if (v6)
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v11 = [v10 selectCompletionQueue:v5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__SUCorePurge_removeAllUpdateContentWithCompletionQueue_completion___block_invoke;
    v12[3] = &unk_27892CA88;
    v14 = v6;
    v13 = v8;
    dispatch_async(v11, v12);
  }
}

+ (void)removeAllUpdateContentWithPolicy:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"purge.RemoveAllUpdateContentWithPolicy"];
  v11 = [MEMORY[0x277D643F8] sharedCore];
  v12 = [v11 waitedOperationQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke;
  v17[3] = &unk_27892CA10;
  v18 = v8;
  v19 = v10;
  v20 = v7;
  v21 = v9;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  dispatch_async(v12, v17);
}

void __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_342;
  v22[3] = &unk_27892DEC0;
  v25 = a1[7];
  v23 = a1[4];
  v24 = a1[5];
  v2 = MEMORY[0x2383746D0](v22);
  [SUCorePurge _trackPurgeBegin:@"MSUPurgeSuspendedUpdate"];
  v3 = SUCoreBorder_MSUPurgeSuspendedUpdate();
  v4 = v27[5];
  v27[5] = v3;

  v5 = [v27[5] code];
  [SUCorePurge _trackPurgeEnd:@"MSUPurgeSuspendedUpdate" withResult:v5 withError:v27[5]];
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1[6] assetTypeSummary];
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[PURGE] removeAllUpdateContentWithPolicy is using provided policy asset types: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [a1[6] softwareUpdateAssetType];

  if (v10)
  {
    v11 = [a1[6] softwareUpdateAssetType];
    [v9 addObject:v11];
  }

  v12 = [a1[6] documentationAssetType];

  if (v12)
  {
    v13 = [a1[6] documentationAssetType];
    [v9 addObject:v13];
  }

  v14 = [MEMORY[0x277D64460] sharedLogger];
  v15 = [v14 oslog];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[PURGE] removing all assets with types: %{public}@", buf, 0xCu);
  }

  [SUCorePurge _trackPurgeBegin:@"MAPurgeAll"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_345;
  v18[3] = &unk_27892DEE8;
  v21 = &v26;
  v19 = a1[6];
  v16 = v2;
  v20 = v16;
  SUCoreBorder_MAPurgeAll(v9, v18);

  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_342(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [v4 selectCompletionQueue:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_2;
    block[3] = &unk_27892C830;
    v9 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 40);
    dispatch_async(v5, block);
  }

  else
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"purge.RemoveAllUpdateContentWithPolicy"];
  }
}

uint64_t __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = MEMORY[0x277D643F8];
  v4 = a1[5];

  return [v3 endTransaction:v4 withName:@"purge.RemoveAllUpdateContentWithPolicy"];
}

void __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_345(uint64_t a1, void *a2)
{
  v4 = a2;
  +[SUCorePurge _trackPurgeEnd:withResult:withError:](SUCorePurge, "_trackPurgeEnd:withResult:withError:", @"MAPurgeAll", [v4 code], v4);
  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, a2);
  }

  v8 = [*(a1 + 32) enablePreSUStaging];
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[PURGE] PreSUStaging: removing all staged assets", buf, 2u);
    }

    [SUCorePurge _trackPurgeBegin:@"stagePurgeAll"];
    v12 = MEMORY[0x277D289E0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_347;
    v16[3] = &unk_27892C920;
    v15 = *(a1 + 40);
    v13 = v15;
    v17 = v15;
    [v12 SUCoreBorder_stagePurgeAll:v16];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[PURGE] PreSUStaging: disabled by policy; nothing to purge", buf, 2u);
    }

    v14 = *(*(*(a1 + 48) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }
}

void __75__SUCorePurge_removeAllUpdateContentWithPolicy_completionQueue_completion___block_invoke_347(uint64_t a1, void *a2)
{
  v8 = a2;
  +[SUCorePurge _trackPurgeEnd:withResult:withError:](SUCorePurge, "_trackPurgeEnd:withResult:withError:", @"stagePurgeAll", [v8 code], v8);
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)removeAllAssetsOfType:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithObjects:{v11, 0}];

  [a1 removeAllAssetsOfTypes:v12 withCompletionQueue:v10 completion:v9];
}

+ (void)removeAllAssetsOfTypes:(id)a3 withCompletionQueue:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D643F8] beginTransactionWithName:@"purge.RemoveAssetsOfType"];
  v11 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[PURGE] removing all assets with types: %{public}@", buf, 0xCu);
  }

  [SUCorePurge _trackPurgeBegin:@"MAPurgeAll"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SUCorePurge_removeAllAssetsOfTypes_withCompletionQueue_completion___block_invoke;
  v17[3] = &unk_27892DEC0;
  v19 = v10;
  v20 = v9;
  v18 = v8;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  SUCoreBorder_MAPurgeAll(v7, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __69__SUCorePurge_removeAllAssetsOfTypes_withCompletionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  +[SUCorePurge _trackPurgeEnd:withResult:withError:](SUCorePurge, "_trackPurgeEnd:withResult:withError:", @"MAPurgeAll", [v3 code], v3);
  if (*(a1 + 48))
  {
    v4 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [v4 selectCompletionQueue:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SUCorePurge_removeAllAssetsOfTypes_withCompletionQueue_completion___block_invoke_2;
    block[3] = &unk_27892C830;
    v9 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 40);
    dispatch_async(v5, block);
  }

  else
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"purge.RemoveAssetsOfType"];
  }
}

uint64_t __69__SUCorePurge_removeAllAssetsOfTypes_withCompletionQueue_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = MEMORY[0x277D643F8];
  v4 = a1[5];

  return [v3 endTransaction:v4 withName:@"purge.RemoveAssetsOfType"];
}

+ (void)_trackPurgeBegin:(id)a3 withIdentifier:(id)a4
{
  v5 = MEMORY[0x277D64428];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDiag];
  [v8 trackBegin:v7 atLevel:1 forModule:@"purge" withIdentifier:v6];
}

+ (void)_trackPurgeEnd:(id)a3 withIdentifier:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v9 = MEMORY[0x277D64428];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v9 sharedDiag];
  [v13 trackEnd:v12 atLevel:1 forModule:@"purge" withIdentifier:v11 withResult:a5 withError:v10];
}

@end