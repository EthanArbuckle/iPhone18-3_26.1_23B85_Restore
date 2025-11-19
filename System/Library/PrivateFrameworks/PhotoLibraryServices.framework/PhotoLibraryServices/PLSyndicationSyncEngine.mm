@interface PLSyndicationSyncEngine
+ (void)_recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:(id)a3 endDate:(id)a4 block:(id)a5 completionHandler:(id)a6;
+ (void)findStartDateForMessagesSpotlightItemsWithBlock:(id)a3 completionHandler:(id)a4;
- (BOOL)_canHandleSearchableItem:(id)a3 forQueryType:(int64_t)a4;
- (BOOL)_deleteConversationWithSyndicationIdentifiers:(id)a3 library:(id)a4;
- (BOOL)_deleteGuestAssetWithSyndicationIdentifiers:(id)a3 library:(id)a4;
- (BOOL)_isQueryTypeSupported:(int64_t)a3;
- (BOOL)syncSyndicationItemWithUniqueIdentifier:(id)a3 bundleID:(id)a4 queryType:(int64_t)a5 library:(id)a6 error:(id *)a7;
- (PLSyndicationSyncEngine)initWithQueryTypes:(id)a3 savedAssetTypeMask:(unsigned int)a4 delegate:(id)a5;
- (PLSyndicationSyncEngineDelegate)delegate;
- (void)_changeSyncRangeDenominatorWithInterrupted:(BOOL)a3 success:(BOOL)a4 library:(id)a5;
- (void)_createOrUpdateObjectFromSearchableItem:(id)a3 library:(id)a4 fullIndexSyncStartDate:(id)a5;
- (void)_processSearchableItem:(id)a3 forQueryType:(int64_t)a4 library:(id)a5 fullIndexSyncStartDate:(id)a6;
- (void)_processZombieItem:(id)a3 library:(id)a4;
- (void)_processZombieItems:(id)a3 library:(id)a4;
- (void)_updateSyncTokenWithDate:(id)a3 queryType:(int64_t)a4 library:(id)a5 syncTokenIsCurrent:(BOOL)a6;
- (void)syncSyndicationItemsWithStartDate:(id)a3 endDate:(id)a4 queryType:(int64_t)a5 library:(id)a6 completion:(id)a7;
@end

@implementation PLSyndicationSyncEngine

- (PLSyndicationSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)syncSyndicationItemWithUniqueIdentifier:(id)a3 bundleID:(id)a4 queryType:(int64_t)a5 library:(id)a6 error:(id *)a7
{
  v28[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v28[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v15 = PLSyndicationSearchAttributes();
  v16 = PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(v14, a5, v12, v15);

  v17 = [v16 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = [v13 globalValues];
    v20 = [v19 lastFullIndexSyndicationSyncStartDate];
    [(PLSyndicationSyncEngine *)self _processSearchableItem:v17 forQueryType:a5 library:v13 fullIndexSyncStartDate:v20];
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No CSSI found for %@ with bundleID %@", v11, v12];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [v21 errorWithDomain:v22 code:47017 userInfo:v20];
    if (a7)
    {
      v23 = v23;
      *a7 = v23;
    }
  }

  return isKindOfClass & 1;
}

- (void)syncSyndicationItemsWithStartDate:(id)a3 endDate:(id)a4 queryType:(int64_t)a5 library:(id)a6 completion:(id)a7
{
  v106[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v62 = a6;
  v14 = a7;
  if ((a5 - 1) > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E756A5A8[a5 - 1];
  }

  v16 = v15;
  if ([(PLSyndicationSyncEngine *)self _isQueryTypeSupported:a5])
  {
    [v13 timeIntervalSinceReferenceDate];
    if (v17 <= 0.0)
    {
      v42 = PLSyndicationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v99 = 138543618;
        *&v99[4] = v16;
        *&v99[12] = 2114;
        *&v99[14] = v13;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[sync] invalid %{public}@ sync date: %{public}@, resetting to reference date", v99, 0x16u);
      }

      v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
      [(PLSyndicationSyncEngine *)self _updateSyncTokenWithDate:v43 queryType:a5 library:v62 syncTokenIsCurrent:0];

      v44 = MEMORY[0x1E696ABC0];
      v103 = *MEMORY[0x1E696A278];
      v104 = @"sync date invalid";
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v46 = [v44 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v45];
      v14[2](v14, 0, v46);
    }

    else
    {
      *v99 = 0;
      *&v99[8] = v99;
      *&v99[16] = 0x3032000000;
      v100 = __Block_byref_object_copy__89120;
      v101 = __Block_byref_object_dispose__89121;
      v102 = 0;
      v18 = [(PLSyndicationSyncEngine *)self delegate];
      v19 = [v18 syncManager:self shouldContinueWithLibrary:v62];

      if (v19)
      {
        if (a5 == 4)
        {
          v20 = [v62 globalValues];
          v21 = [v20 inProgressFullIndexSyndicationSyncDate];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = [v62 globalValues];
            [v23 setInProgressFullIndexSyndicationSyncDate:v12];

            v24 = [MEMORY[0x1E695DF00] now];
            v25 = [v62 globalValues];
            [v25 setLastFullIndexSyndicationSyncStartDate:v24];
          }
        }

        objc_initWeak(&location, self);
        v26 = v13;
        v27 = v12;
        v28 = v26;
        v29 = v26;
        v30 = [MEMORY[0x1E695DF00] date];
        v31 = [v30 compare:v29];
        v59 = v30;
        v60 = v29;
        v61 = v29;
        v12 = v27;
        if (v31 == -1)
        {
          v61 = v30;
        }

        v32 = PLSyndicationGetLog();
        v13 = v28;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v92 = v16;
          v93 = 2114;
          v94 = v12;
          v95 = 2114;
          v96 = v60;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "[sync] starting %{public}@ spotlight query to sync syndication items with start date: %{public}@, end date: %{public}@", buf, 0x20u);
        }

        if (a5 == 3)
        {
          v33 = v31 == -1;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_74;
          v72[3] = &unk_1E7573598;
          objc_copyWeak(&v75, &location);
          v35 = v62;
          v73 = v35;
          v74 = v99;
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_76;
          v63[3] = &unk_1E7573570;
          v69 = v99;
          v64 = v16;
          objc_copyWeak(v70, &location);
          v65 = v61;
          v70[1] = 3;
          v36 = v35;
          v71 = v33;
          v66 = v36;
          v67 = self;
          v68 = v14;
          [WeakRetained executeQueryForSyncManager:self type:3 startDate:v12 endDate:v60 batchHandler:v72 completionHandler:v63];

          objc_destroyWeak(v70);
          objc_destroyWeak(&v75);
        }

        else
        {
          v52 = [v62 globalValues];
          v53 = [v52 lastFullIndexSyndicationSyncStartDate];
          v58 = v31 == -1;

          v54 = objc_loadWeakRetained(&self->_delegate);
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke;
          v85[3] = &unk_1E7573548;
          objc_copyWeak(v89, &location);
          v55 = v62;
          v86 = v55;
          v89[1] = a5;
          v56 = v53;
          v87 = v56;
          v88 = v99;
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_2;
          v76[3] = &unk_1E7573570;
          v82 = v99;
          v77 = v16;
          objc_copyWeak(v83, &location);
          v78 = v61;
          v83[1] = a5;
          v57 = v55;
          v84 = v58;
          v79 = v57;
          v80 = self;
          v81 = v14;
          [v54 executeQueryForSyncManager:self type:a5 startDate:v12 endDate:v60 itemHandler:v85 completionHandler:v76];

          objc_destroyWeak(v83);
          objc_destroyWeak(v89);
        }

        objc_destroyWeak(&location);
      }

      else
      {
        v47 = PLSyndicationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v92 = a5;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, "[sync] sync for type: %td interrupted by mutex", buf, 0xCu);
        }

        v48 = MEMORY[0x1E696ABC0];
        v97 = *MEMORY[0x1E696A278];
        v98 = @"shouldStopUsingSyndicationIngestLibrary";
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v50 = [v48 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v49];
        v51 = *(*&v99[8] + 40);
        *(*&v99[8] + 40) = v50;

        v14[2](v14, 0, *(*&v99[8] + 40));
      }

      _Block_object_dispose(v99, 8);
    }
  }

  else
  {
    v37 = PLSyndicationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v99 = 134217984;
      *&v99[4] = a5;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[sync] unsupported query type: %td", v99, 0xCu);
    }

    v38 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A278];
    v39 = [@"unsupported query type: " stringByAppendingString:v16];
    v106[0] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    v41 = [v38 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v40];
    v14[2](v14, 0, v41);
  }
}

void __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained delegate];
  v8 = [v7 syncManager:WeakRetained shouldContinueWithLibrary:*(a1 + 32)];

  if (v8)
  {
    [WeakRetained _processSearchableItem:v5 forQueryType:*(a1 + 64) library:*(a1 + 32) fullIndexSyncStartDate:*(a1 + 40)];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"shouldStopUsingSyndicationIngestLibrary";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:v10 code:50003 userInfo:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (a3)
    {
      *a3 = 1;
    }
  }
}

void __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    goto LABEL_2;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 72) + 8) + 40);
      *v21 = 138543618;
      *&v21[4] = v16;
      *&v21[12] = 2112;
      *&v21[14] = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "[sync] %{public}@ (MUTEX) query completion handler error not set, reporting %@", v21, 0x16u);
    }

    v3 = *(*(*(a1 + 72) + 8) + 40);
    if (v3)
    {
LABEL_2:
      v4 = v3;
      v5 = [v3 domain];
      if ([v5 isEqualToString:*MEMORY[0x1E6963B80]])
      {
        v6 = [v4 code];

        if (v6 == -2003)
        {
          v7 = PLSyndicationGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 32);
            *v21 = 138543362;
            *&v21[4] = v8;
            v9 = "[sync] %{public}@ spotlight search query was cancelled";
            v10 = v7;
            v11 = OS_LOG_TYPE_DEFAULT;
            v12 = 12;
LABEL_9:
            _os_log_impl(&dword_19BF1F000, v10, v11, v9, v21, v12);
            goto LABEL_10;
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

      v7 = PLSyndicationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *v21 = 138543618;
        *&v21[4] = v13;
        *&v21[12] = 2112;
        *&v21[14] = v4;
        v9 = "[sync] %{public}@ spotlight search query failed with error: %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_9;
      }

LABEL_10:
      v14 = 0;
      goto LABEL_18;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _updateSyncTokenWithDate:*(a1 + 40) queryType:*(a1 + 88) library:*(a1 + 48) syncTokenIsCurrent:*(a1 + 96)];

  v7 = PLSyndicationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v19;
    *&v21[12] = 2114;
    *&v21[14] = v20;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[sync] finished %{public}@ spotlight query to sync syndication items, setting sync token date: %{public}@", v21, 0x16u);
  }

  v4 = 0;
  v14 = 1;
LABEL_18:

  [*(a1 + 56) _changeSyncRangeDenominatorWithInterrupted:*(*(*(a1 + 72) + 8) + 40) != 0 success:v14 library:{*(a1 + 48), *v21, *&v21[16], v22}];
  (*(*(a1 + 64) + 16))();
}

void __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_74(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained delegate];
  v8 = [v7 syncManager:WeakRetained shouldContinueWithLibrary:*(a1 + 32)];

  if (v8)
  {
    v9 = PLSyndicationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) libraryID];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[sync] processing zombie items in %@", buf, 0xCu);
    }

    [WeakRetained _processZombieItems:v5 library:*(a1 + 32)];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A278];
    v18 = @"shouldStopUsingSyndicationIngestLibrary";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:v12 code:50003 userInfo:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (a3)
    {
      *a3 = 1;
    }
  }
}

void __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    goto LABEL_2;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 72) + 8) + 40);
      *v21 = 138543618;
      *&v21[4] = v16;
      *&v21[12] = 2112;
      *&v21[14] = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "[sync] %{public}@ (MUTEX) query completion handler error not set, reporting %@", v21, 0x16u);
    }

    v3 = *(*(*(a1 + 72) + 8) + 40);
    if (v3)
    {
LABEL_2:
      v4 = v3;
      v5 = [v3 domain];
      if ([v5 isEqualToString:*MEMORY[0x1E6963B80]])
      {
        v6 = [v4 code];

        if (v6 == -2003)
        {
          v7 = PLSyndicationGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 32);
            *v21 = 138543362;
            *&v21[4] = v8;
            v9 = "[sync] %{public}@ spotlight search query was cancelled";
            v10 = v7;
            v11 = OS_LOG_TYPE_DEFAULT;
            v12 = 12;
LABEL_9:
            _os_log_impl(&dword_19BF1F000, v10, v11, v9, v21, v12);
            goto LABEL_10;
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

      v7 = PLSyndicationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *v21 = 138543618;
        *&v21[4] = v13;
        *&v21[12] = 2112;
        *&v21[14] = v4;
        v9 = "[sync] %{public}@ spotlight search query failed with error: %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_9;
      }

LABEL_10:
      v14 = 0;
      goto LABEL_18;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _updateSyncTokenWithDate:*(a1 + 40) queryType:*(a1 + 88) library:*(a1 + 48) syncTokenIsCurrent:*(a1 + 96)];

  v7 = PLSyndicationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v19;
    *&v21[12] = 2114;
    *&v21[14] = v20;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[sync] finished %{public}@ spotlight query to sync syndication items, setting sync token date: %{public}@", v21, 0x16u);
  }

  v4 = 0;
  v14 = 1;
LABEL_18:

  [*(a1 + 56) _changeSyncRangeDenominatorWithInterrupted:*(*(*(a1 + 72) + 8) + 40) != 0 success:v14 library:{*(a1 + 48), *v21, *&v21[16], v22}];
  (*(*(a1 + 64) + 16))();
}

- (void)_changeSyncRangeDenominatorWithInterrupted:(BOOL)a3 success:(BOOL)a4 library:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = a5;
  if (v6 || v5)
  {
    v20 = v7;
    v8 = [v7 globalValues];
    [v8 syndicationSyncRangeDenominator];
    v10 = v9;

    v11 = v10 + v10;
    if (!v6)
    {
      v11 = v10;
    }

    v12 = fmax(v10 * 0.75, 1.0);
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [objc_opt_class() maxSpotlightQueryTimeInterval];
    v15 = v14;
    [objc_opt_class() minSpotlightQueryTimeInterval];
    v7 = v20;
    v17 = v15 / v16;
    if (v13 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (vabdd_f64(v18, v10) > 2.22044605e-16)
    {
      v19 = [v20 globalValues];
      [v19 setSyndicationSyncRangeDenominator:v18];

      v7 = v20;
    }
  }
}

- (void)_updateSyncTokenWithDate:(id)a3 queryType:(int64_t)a4 library:(id)a5 syncTokenIsCurrent:(BOOL)a6
{
  v6 = a6;
  v17 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v11 = [v9 globalValues];
      [v11 setLastDeleteSyndicationSyncDate:v17];
    }

    else
    {
      if (a4 != 4)
      {
        goto LABEL_13;
      }

      v12 = [v9 globalValues];
      v11 = v12;
      if (v6)
      {
        [v12 setInProgressFullIndexSyndicationSyncDate:0];

        v11 = [v10 libraryServicesManager];
        v13 = [v11 backgroundJobService];
        v14 = [v10 libraryServicesManager];
        v15 = [v14 libraryBundle];
        v16 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobWorkerType:6];
        [v13 signalBackgroundProcessingNeededOnBundle:v15 workerTypes:v16];
      }

      else
      {
        [v12 setInProgressFullIndexSyndicationSyncDate:v17];
      }
    }
  }

  else if (a4 == 1)
  {
    v11 = [v9 globalValues];
    [v11 setLastAttachmentSyndicationSyncDate:v17];
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_13;
    }

    v11 = [v9 globalValues];
    [v11 setLastChatSyndicationSyncDate:v17];
  }

LABEL_13:
}

- (void)_processSearchableItem:(id)a3 forQueryType:(int64_t)a4 library:(id)a5 fullIndexSyncStartDate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLSyndicationSyncEngine__processSearchableItem_forQueryType_library_fullIndexSyncStartDate___block_invoke;
  v16[3] = &unk_1E7573520;
  v16[4] = self;
  v17 = v10;
  v19 = v12;
  v20 = a4;
  v18 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [v14 performTransactionAndWait:v16];
}

void __94__PLSyndicationSyncEngine__processSearchableItem_forQueryType_library_fullIndexSyncStartDate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _canHandleSearchableItem:*(a1 + 40) forQueryType:*(a1 + 64)];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 attributeSet];
    v5 = [v4 attributeDictionary];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6964510]];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v7)
    {
      [v8 _processZombieItem:v9 library:v10];
    }

    else
    {
      [v8 _createOrUpdateObjectFromSearchableItem:v9 library:v10 fullIndexSyncStartDate:*(a1 + 56)];
    }
  }

  else
  {
    if (PLSearchableItemRepresentsConversation(v3))
    {
      v11 = @"<conversationID>";
    }

    else
    {
      v11 = [*(a1 + 40) uniqueIdentifier];
    }

    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[sync] skipping unexpected searchable item %{public}@", &v14, 0xCu);
    }
  }

  v13 = [*(a1 + 48) managedObjectContext];
  [v13 refreshAllObjects];
}

- (BOOL)_canHandleSearchableItem:(id)a3 forQueryType:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 attributeSet];
  v7 = [v6 attributeDictionary];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6964510]];
  v9 = [v8 BOOLValue];

  v10 = 0;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v10 = v9;
      goto LABEL_10;
    }

    if (a4 != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    v11 = PLSearchableItemRepresentsAsset(v5);
    goto LABEL_8;
  }

  if (a4 == 1)
  {
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v11 = PLSearchableItemRepresentsConversation(v5);
LABEL_8:
    v10 = v11;
  }

LABEL_10:

  return v10;
}

- (void)_createOrUpdateObjectFromSearchableItem:(id)a3 library:(id)a4 fullIndexSyncStartDate:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22 = 0;
  if (PLSearchableItemRepresentsAsset(v7))
  {
    v10 = objc_opt_class();
    v11 = [v7 uniqueIdentifier];
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_6:
    v21 = 1;
    v20 = 0;
    v12 = [v10 createOrUpdateObjectFromSearchableItem:v7 library:v8 fullIndexSyncStartDate:v9 createIfNeeded:1 didCreate:&v22 isSyndicatable:&v21 error:&v20];
    v13 = v20;
    v14 = v13;
    if (v12 || v21 != 1)
    {
      goto LABEL_20;
    }

    v15 = [(__CFString *)v13 domain];
    if ([v15 isEqualToString:*MEMORY[0x1E69BFF48]])
    {
      v16 = [(__CFString *)v14 code];

      if (v16 == 49501)
      {
        v17 = PLSyndicationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = v11;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "[sync] skipping item %{public}@ with invalid content type: %@", buf, 0x16u);
        }

LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
    }

    v17 = PLSyndicationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromClass(v10);
      *buf = 138543874;
      v24 = v19;
      v25 = 2114;
      v26 = v11;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[sync] failed to insert %{public}@ with syndication ID: %{public}@, error: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (PLSearchableItemRepresentsConversation(v7))
  {
    v10 = objc_opt_class();
    v11 = @"<conversationID>";
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_13:
  v18 = PLSyndicationGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = 0;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[sync] failed to resolve object class for item with syndication ID: %{public}@, error: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_21:
}

- (void)_processZombieItems:(id)a3 library:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18 = a4;
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = *MEMORY[0x1E6964510];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 attributeSet];
        v14 = [v13 attributeDictionary];
        v15 = [v14 objectForKeyedSubscript:v10];
        v16 = [v15 BOOLValue];

        if (v16)
        {
          v17 = [v12 uniqueIdentifier];
          [v20 addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(PLSyndicationSyncEngine *)self _deleteGuestAssetWithSyndicationIdentifiers:v20 library:v18];
  [(PLSyndicationSyncEngine *)self _deleteConversationWithSyndicationIdentifiers:v20 library:v18];
}

- (BOOL)_deleteConversationWithSyndicationIdentifiers:(id)a3 library:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PLSyndicationSyncEngine__deleteConversationWithSyndicationIdentifiers_library___block_invoke;
  v10[3] = &unk_1E7578820;
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v13 = v14;
  [v8 performTransactionAndWait:v10];

  _Block_object_dispose(v14, 8);
  return 1;
}

void __81__PLSyndicationSyncEngine__deleteConversationWithSyndicationIdentifiers_library___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLConversation entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) managedObjectContext];
  v17 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v17];
  v8 = v17;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__PLSyndicationSyncEngine__deleteConversationWithSyndicationIdentifiers_library___block_invoke_2;
    v15[3] = &unk_1E75734F8;
    v14 = *(a1 + 40);
    v9 = v14;
    v16 = v14;
    v10 = [v6 enumerateWithIncrementalSaveUsingObjects:v7 withBlock:v15];
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134217984;
      v19 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Deleted %tu conversation(s)", buf, 0xCu);
    }

    v13 = v16;
  }

  else
  {
    v13 = PLSyndicationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error fetching conversations: %@", buf, 0xCu);
    }
  }
}

void __81__PLSyndicationSyncEngine__deleteConversationWithSyndicationIdentifiers_library___block_invoke_2(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

- (BOOL)_deleteGuestAssetWithSyndicationIdentifiers:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLSyndicationSyncEngine__deleteGuestAssetWithSyndicationIdentifiers_library___block_invoke;
  v13[3] = &unk_1E7578100;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v17 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [v10 performTransactionAndWait:v13];

  return 1;
}

void __79__PLSyndicationSyncEngine__deleteGuestAssetWithSyndicationIdentifiers_library___block_invoke(uint64_t a1)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [PLManagedAsset predicateForSyndicatedAssetIdentifiers:*(a1 + 32) includeRejected:1];
  v28[0] = v6;
  v7 = [MEMORY[0x1E69BF328] predicateForIncludeMask:*(*(a1 + 40) + 16) useIndex:0];
  v28[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  v27 = @"additionalAttributes";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v4 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [*(a1 + 48) managedObjectContext];
  v22 = 0;
  v12 = [v11 executeFetchRequest:v4 error:&v22];
  v13 = v22;
  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__PLSyndicationSyncEngine__deleteGuestAssetWithSyndicationIdentifiers_library___block_invoke_2;
    v19[3] = &unk_1E75781C0;
    v20 = *(a1 + 56);
    v21 = v11;
    v14 = [v21 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v19];
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 56) count];
      v17 = [*(a1 + 56) componentsJoinedByString:{@", "}];
      *buf = 134218242;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Deleted %tu guest asset(s), uuid: %{public}@", buf, 0x16u);
    }

    v18 = v20;
  }

  else
  {
    v18 = PLSyndicationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Error fetching guest assets: %@", buf, 0xCu);
    }
  }
}

void __79__PLSyndicationSyncEngine__deleteGuestAssetWithSyndicationIdentifiers_library___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v4 additionalAttributes];
  v6 = [v5 syndicationIdentifier];
  v7 = [v4 uuid];
  v8 = [v3 stringWithFormat:@"%@ (%@)", v6, v7];

  [*(a1 + 32) addObject:v8];
  [*(a1 + 40) deleteObject:v4];
}

- (void)_processZombieItem:(id)a3 library:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = [PLManagedAsset assetWithSyndicationIdentifier:v6 inLibrary:v5];
  v8 = v7;
  if (!v7)
  {
    v10 = [PLConversation albumWithConversationID:v6 inLibrary:v5];
    v13 = PLSyndicationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        v15 = [v10 uuid];
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[sync] deleting conversation with uuid: %{public}@", &v19, 0xCu);
      }

      v13 = [v5 managedObjectContext];
      [v13 deleteObject:v10];
      goto LABEL_15;
    }

    if (!v14)
    {
LABEL_15:

      goto LABEL_16;
    }

    LOWORD(v19) = 0;
    v16 = "[sync] did not find matching asset/conversation to delete";
    v17 = v13;
    v18 = 2;
LABEL_14:
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
    goto LABEL_15;
  }

  [v7 savedAssetType];
  v9 = PLValidatedSavedAssetTypeApplies();
  v10 = PLSyndicationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    v13 = [v8 uuid];
    v19 = 138543874;
    v20 = v13;
    v21 = 2114;
    v22 = v6;
    v23 = 1024;
    v24 = [v8 savedAssetType];
    v16 = "[sync] not deleting asset with uuid: %{public}@, syndication identifier: %{public}@ because savedAssetType=%hu";
    v17 = v10;
    v18 = 28;
    goto LABEL_14;
  }

  if (v11)
  {
    v12 = [v8 uuid];
    v19 = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[sync] deleting asset with uuid: %{public}@, syndication identifier: %{public}@", &v19, 0x16u);
  }

  v10 = [PLAssetTransactionReason transactionReason:@"Syndication sync"];
  [v8 deleteWithReason:v10];
LABEL_16:
}

- (BOOL)_isQueryTypeSupported:(int64_t)a3
{
  suppportedQueryTypes = self->_suppportedQueryTypes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(suppportedQueryTypes) = [(NSSet *)suppportedQueryTypes containsObject:v4];

  return suppportedQueryTypes;
}

- (PLSyndicationSyncEngine)initWithQueryTypes:(id)a3 savedAssetTypeMask:(unsigned int)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PLSyndicationSyncEngine;
  v11 = [(PLSyndicationSyncEngine *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    objc_storeStrong(&v12->_suppportedQueryTypes, a3);
    v12->_savedAssetTypeMask = a4;
  }

  return v12;
}

+ (void)findStartDateForMessagesSpotlightItemsWithBlock:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v10 = [v6 dateWithTimeIntervalSinceReferenceDate:0.0];
  v9 = [MEMORY[0x1E695DF00] date];
  [a1 _recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:v10 endDate:v9 block:v8 completionHandler:v7];
}

+ (void)_recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:(id)a3 endDate:(id)a4 block:(id)a5 completionHandler:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PLSyndicationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[sync] recursively searching syndication start date in interval: %@, %@", buf, 0x16u);
  }

  [v11 timeIntervalSinceDate:v10];
  v16 = v15;
  if (v15 <= 604800.0)
  {
    v13[2](v13, v10, 0);
  }

  else
  {
    v30 = 0;
    v12[2](v12, v10, &v30);
    if (v30 == 1)
    {
      v17 = PLSyndicationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "[sync] searching syndication start date was canceled", buf, 2u);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v10 sinceDate:v16 * 0.5];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v19 = PLSyndicationCheckQueryWithDates(v10, v18);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __121__PLSyndicationSyncEngine__recursiveFindStartDateForMessagesSpotlightItemsWithStartDate_endDate_block_completionHandler___block_invoke;
      v29[3] = &unk_1E75735C0;
      v29[4] = buf;
      [v19 setFoundItemsHandler:v29];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __121__PLSyndicationSyncEngine__recursiveFindStartDateForMessagesSpotlightItemsWithStartDate_endDate_block_completionHandler___block_invoke_2;
      v21[3] = &unk_1E75735E8;
      v25 = v13;
      v27 = buf;
      v28 = a1;
      v22 = v10;
      v20 = v18;
      v23 = v20;
      v26 = v12;
      v24 = v11;
      [v19 setCompletionHandler:v21];
      [v19 start];

      _Block_object_dispose(buf, 8);
    }
  }
}

uint64_t __121__PLSyndicationSyncEngine__recursiveFindStartDateForMessagesSpotlightItemsWithStartDate_endDate_block_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void __121__PLSyndicationSyncEngine__recursiveFindStartDateForMessagesSpotlightItemsWithStartDate_endDate_block_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
    }

    [*(a1 + 80) _recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:v3 endDate:v4 block:*(a1 + 64) completionHandler:*(a1 + 56)];
  }
}

@end