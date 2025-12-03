@interface PLSyndicationSyncEngine
+ (void)_recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:(id)date endDate:(id)endDate block:(id)block completionHandler:(id)handler;
+ (void)findStartDateForMessagesSpotlightItemsWithBlock:(id)block completionHandler:(id)handler;
- (BOOL)_canHandleSearchableItem:(id)item forQueryType:(int64_t)type;
- (BOOL)_deleteConversationWithSyndicationIdentifiers:(id)identifiers library:(id)library;
- (BOOL)_deleteGuestAssetWithSyndicationIdentifiers:(id)identifiers library:(id)library;
- (BOOL)_isQueryTypeSupported:(int64_t)supported;
- (BOOL)syncSyndicationItemWithUniqueIdentifier:(id)identifier bundleID:(id)d queryType:(int64_t)type library:(id)library error:(id *)error;
- (PLSyndicationSyncEngine)initWithQueryTypes:(id)types savedAssetTypeMask:(unsigned int)mask delegate:(id)delegate;
- (PLSyndicationSyncEngineDelegate)delegate;
- (void)_changeSyncRangeDenominatorWithInterrupted:(BOOL)interrupted success:(BOOL)success library:(id)library;
- (void)_createOrUpdateObjectFromSearchableItem:(id)item library:(id)library fullIndexSyncStartDate:(id)date;
- (void)_processSearchableItem:(id)item forQueryType:(int64_t)type library:(id)library fullIndexSyncStartDate:(id)date;
- (void)_processZombieItem:(id)item library:(id)library;
- (void)_processZombieItems:(id)items library:(id)library;
- (void)_updateSyncTokenWithDate:(id)date queryType:(int64_t)type library:(id)library syncTokenIsCurrent:(BOOL)current;
- (void)syncSyndicationItemsWithStartDate:(id)date endDate:(id)endDate queryType:(int64_t)type library:(id)library completion:(id)completion;
@end

@implementation PLSyndicationSyncEngine

- (PLSyndicationSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)syncSyndicationItemWithUniqueIdentifier:(id)identifier bundleID:(id)d queryType:(int64_t)type library:(id)library error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  libraryCopy = library;
  v28[0] = identifierCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v15 = PLSyndicationSearchAttributes();
  v16 = PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(v14, type, dCopy, v15);

  firstObject = [v16 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    globalValues = [libraryCopy globalValues];
    lastFullIndexSyndicationSyncStartDate = [globalValues lastFullIndexSyndicationSyncStartDate];
    [(PLSyndicationSyncEngine *)self _processSearchableItem:firstObject forQueryType:type library:libraryCopy fullIndexSyncStartDate:lastFullIndexSyndicationSyncStartDate];
  }

  else
  {
    globalValues = [MEMORY[0x1E696AEC0] stringWithFormat:@"No CSSI found for %@ with bundleID %@", identifierCopy, dCopy];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27 = globalValues;
    lastFullIndexSyndicationSyncStartDate = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [v21 errorWithDomain:v22 code:47017 userInfo:lastFullIndexSyndicationSyncStartDate];
    if (error)
    {
      v23 = v23;
      *error = v23;
    }
  }

  return isKindOfClass & 1;
}

- (void)syncSyndicationItemsWithStartDate:(id)date endDate:(id)endDate queryType:(int64_t)type library:(id)library completion:(id)completion
{
  v106[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  libraryCopy = library;
  completionCopy = completion;
  if ((type - 1) > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E756A5A8[type - 1];
  }

  v16 = v15;
  if ([(PLSyndicationSyncEngine *)self _isQueryTypeSupported:type])
  {
    [endDateCopy timeIntervalSinceReferenceDate];
    if (v17 <= 0.0)
    {
      v42 = PLSyndicationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v99 = 138543618;
        *&v99[4] = v16;
        *&v99[12] = 2114;
        *&v99[14] = endDateCopy;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[sync] invalid %{public}@ sync date: %{public}@, resetting to reference date", v99, 0x16u);
      }

      v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
      [(PLSyndicationSyncEngine *)self _updateSyncTokenWithDate:v43 queryType:type library:libraryCopy syncTokenIsCurrent:0];

      v44 = MEMORY[0x1E696ABC0];
      v103 = *MEMORY[0x1E696A278];
      v104 = @"sync date invalid";
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v46 = [v44 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v45];
      completionCopy[2](completionCopy, 0, v46);
    }

    else
    {
      *v99 = 0;
      *&v99[8] = v99;
      *&v99[16] = 0x3032000000;
      v100 = __Block_byref_object_copy__89120;
      v101 = __Block_byref_object_dispose__89121;
      v102 = 0;
      delegate = [(PLSyndicationSyncEngine *)self delegate];
      v19 = [delegate syncManager:self shouldContinueWithLibrary:libraryCopy];

      if (v19)
      {
        if (type == 4)
        {
          globalValues = [libraryCopy globalValues];
          inProgressFullIndexSyndicationSyncDate = [globalValues inProgressFullIndexSyndicationSyncDate];
          v22 = inProgressFullIndexSyndicationSyncDate == 0;

          if (v22)
          {
            globalValues2 = [libraryCopy globalValues];
            [globalValues2 setInProgressFullIndexSyndicationSyncDate:dateCopy];

            v24 = [MEMORY[0x1E695DF00] now];
            globalValues3 = [libraryCopy globalValues];
            [globalValues3 setLastFullIndexSyndicationSyncStartDate:v24];
          }
        }

        objc_initWeak(&location, self);
        v26 = endDateCopy;
        v27 = dateCopy;
        v28 = v26;
        v29 = v26;
        date = [MEMORY[0x1E695DF00] date];
        v31 = [date compare:v29];
        v59 = date;
        v60 = v29;
        v61 = v29;
        dateCopy = v27;
        if (v31 == -1)
        {
          v61 = date;
        }

        v32 = PLSyndicationGetLog();
        endDateCopy = v28;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          typeCopy = v16;
          v93 = 2114;
          v94 = dateCopy;
          v95 = 2114;
          v96 = v60;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "[sync] starting %{public}@ spotlight query to sync syndication items with start date: %{public}@, end date: %{public}@", buf, 0x20u);
        }

        if (type == 3)
        {
          v33 = v31 == -1;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke_74;
          v72[3] = &unk_1E7573598;
          objc_copyWeak(&v75, &location);
          v35 = libraryCopy;
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
          selfCopy = self;
          v68 = completionCopy;
          [WeakRetained executeQueryForSyncManager:self type:3 startDate:dateCopy endDate:v60 batchHandler:v72 completionHandler:v63];

          objc_destroyWeak(v70);
          objc_destroyWeak(&v75);
        }

        else
        {
          globalValues4 = [libraryCopy globalValues];
          lastFullIndexSyndicationSyncStartDate = [globalValues4 lastFullIndexSyndicationSyncStartDate];
          v58 = v31 == -1;

          v54 = objc_loadWeakRetained(&self->_delegate);
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __98__PLSyndicationSyncEngine_syncSyndicationItemsWithStartDate_endDate_queryType_library_completion___block_invoke;
          v85[3] = &unk_1E7573548;
          objc_copyWeak(v89, &location);
          v55 = libraryCopy;
          v86 = v55;
          v89[1] = type;
          v56 = lastFullIndexSyndicationSyncStartDate;
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
          v83[1] = type;
          v57 = v55;
          v84 = v58;
          v79 = v57;
          selfCopy2 = self;
          v81 = completionCopy;
          [v54 executeQueryForSyncManager:self type:type startDate:dateCopy endDate:v60 itemHandler:v85 completionHandler:v76];

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
          typeCopy = type;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, "[sync] sync for type: %td interrupted by mutex", buf, 0xCu);
        }

        v48 = MEMORY[0x1E696ABC0];
        v97 = *MEMORY[0x1E696A278];
        v98 = @"shouldStopUsingSyndicationIngestLibrary";
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v50 = [v48 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v49];
        v51 = *(*&v99[8] + 40);
        *(*&v99[8] + 40) = v50;

        completionCopy[2](completionCopy, 0, *(*&v99[8] + 40));
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
      *&v99[4] = type;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[sync] unsupported query type: %td", v99, 0xCu);
    }

    v38 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A278];
    v39 = [@"unsupported query type: " stringByAppendingString:v16];
    v106[0] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    v41 = [v38 errorWithDomain:*MEMORY[0x1E69BFF48] code:50003 userInfo:v40];
    completionCopy[2](completionCopy, 0, v41);
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

- (void)_changeSyncRangeDenominatorWithInterrupted:(BOOL)interrupted success:(BOOL)success library:(id)library
{
  successCopy = success;
  interruptedCopy = interrupted;
  libraryCopy = library;
  if (interruptedCopy || successCopy)
  {
    v20 = libraryCopy;
    globalValues = [libraryCopy globalValues];
    [globalValues syndicationSyncRangeDenominator];
    v10 = v9;

    v11 = v10 + v10;
    if (!interruptedCopy)
    {
      v11 = v10;
    }

    v12 = fmax(v10 * 0.75, 1.0);
    if (successCopy)
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
    libraryCopy = v20;
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
      globalValues2 = [v20 globalValues];
      [globalValues2 setSyndicationSyncRangeDenominator:v18];

      libraryCopy = v20;
    }
  }
}

- (void)_updateSyncTokenWithDate:(id)date queryType:(int64_t)type library:(id)library syncTokenIsCurrent:(BOOL)current
{
  currentCopy = current;
  dateCopy = date;
  libraryCopy = library;
  v10 = libraryCopy;
  if (type > 2)
  {
    if (type == 3)
    {
      globalValues = [libraryCopy globalValues];
      [globalValues setLastDeleteSyndicationSyncDate:dateCopy];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_13;
      }

      globalValues2 = [libraryCopy globalValues];
      globalValues = globalValues2;
      if (currentCopy)
      {
        [globalValues2 setInProgressFullIndexSyndicationSyncDate:0];

        globalValues = [v10 libraryServicesManager];
        backgroundJobService = [globalValues backgroundJobService];
        libraryServicesManager = [v10 libraryServicesManager];
        libraryBundle = [libraryServicesManager libraryBundle];
        v16 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobWorkerType:6];
        [backgroundJobService signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v16];
      }

      else
      {
        [globalValues2 setInProgressFullIndexSyndicationSyncDate:dateCopy];
      }
    }
  }

  else if (type == 1)
  {
    globalValues = [libraryCopy globalValues];
    [globalValues setLastAttachmentSyndicationSyncDate:dateCopy];
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_13;
    }

    globalValues = [libraryCopy globalValues];
    [globalValues setLastChatSyndicationSyncDate:dateCopy];
  }

LABEL_13:
}

- (void)_processSearchableItem:(id)item forQueryType:(int64_t)type library:(id)library fullIndexSyncStartDate:(id)date
{
  itemCopy = item;
  libraryCopy = library;
  dateCopy = date;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLSyndicationSyncEngine__processSearchableItem_forQueryType_library_fullIndexSyncStartDate___block_invoke;
  v16[3] = &unk_1E7573520;
  v16[4] = self;
  v17 = itemCopy;
  v19 = dateCopy;
  typeCopy = type;
  v18 = libraryCopy;
  v13 = dateCopy;
  v14 = libraryCopy;
  v15 = itemCopy;
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

- (BOOL)_canHandleSearchableItem:(id)item forQueryType:(int64_t)type
{
  itemCopy = item;
  attributeSet = [itemCopy attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v8 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x1E6964510]];
  bOOLValue = [v8 BOOLValue];

  v10 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      v10 = bOOLValue;
      goto LABEL_10;
    }

    if (type != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    v11 = PLSearchableItemRepresentsAsset(itemCopy);
    goto LABEL_8;
  }

  if (type == 1)
  {
    goto LABEL_7;
  }

  if (type == 2)
  {
    v11 = PLSearchableItemRepresentsConversation(itemCopy);
LABEL_8:
    v10 = v11;
  }

LABEL_10:

  return v10;
}

- (void)_createOrUpdateObjectFromSearchableItem:(id)item library:(id)library fullIndexSyncStartDate:(id)date
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  libraryCopy = library;
  dateCopy = date;
  v22 = 0;
  if (PLSearchableItemRepresentsAsset(itemCopy))
  {
    v10 = objc_opt_class();
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_6:
    v21 = 1;
    v20 = 0;
    v12 = [v10 createOrUpdateObjectFromSearchableItem:itemCopy library:libraryCopy fullIndexSyncStartDate:dateCopy createIfNeeded:1 didCreate:&v22 isSyndicatable:&v21 error:&v20];
    v13 = v20;
    v14 = v13;
    if (v12 || v21 != 1)
    {
      goto LABEL_20;
    }

    domain = [(__CFString *)v13 domain];
    if ([domain isEqualToString:*MEMORY[0x1E69BFF48]])
    {
      code = [(__CFString *)v14 code];

      if (code == 49501)
      {
        v17 = PLSyndicationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = uniqueIdentifier;
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
      v26 = uniqueIdentifier;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[sync] failed to insert %{public}@ with syndication ID: %{public}@, error: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (PLSearchableItemRepresentsConversation(itemCopy))
  {
    v10 = objc_opt_class();
    uniqueIdentifier = @"<conversationID>";
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    uniqueIdentifier = 0;
  }

LABEL_13:
  v18 = PLSyndicationGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v24 = uniqueIdentifier;
    v25 = 2112;
    v26 = 0;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[sync] failed to resolve object class for item with syndication ID: %{public}@, error: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_21:
}

- (void)_processZombieItems:(id)items library:(id)library
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  libraryCopy = library;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = itemsCopy;
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
        attributeSet = [v12 attributeSet];
        attributeDictionary = [attributeSet attributeDictionary];
        v15 = [attributeDictionary objectForKeyedSubscript:v10];
        bOOLValue = [v15 BOOLValue];

        if (bOOLValue)
        {
          uniqueIdentifier = [v12 uniqueIdentifier];
          [array addObject:uniqueIdentifier];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(PLSyndicationSyncEngine *)self _deleteGuestAssetWithSyndicationIdentifiers:array library:libraryCopy];
  [(PLSyndicationSyncEngine *)self _deleteConversationWithSyndicationIdentifiers:array library:libraryCopy];
}

- (BOOL)_deleteConversationWithSyndicationIdentifiers:(id)identifiers library:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PLSyndicationSyncEngine__deleteConversationWithSyndicationIdentifiers_library___block_invoke;
  v10[3] = &unk_1E7578820;
  v7 = identifiersCopy;
  v11 = v7;
  v8 = libraryCopy;
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

- (BOOL)_deleteGuestAssetWithSyndicationIdentifiers:(id)identifiers library:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  array = [MEMORY[0x1E695DF70] array];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLSyndicationSyncEngine__deleteGuestAssetWithSyndicationIdentifiers_library___block_invoke;
  v13[3] = &unk_1E7578100;
  v14 = identifiersCopy;
  selfCopy = self;
  v16 = libraryCopy;
  v17 = array;
  v9 = array;
  v10 = libraryCopy;
  v11 = identifiersCopy;
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

- (void)_processZombieItem:(id)item library:(id)library
{
  v25 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  uniqueIdentifier = [item uniqueIdentifier];
  v7 = [PLManagedAsset assetWithSyndicationIdentifier:uniqueIdentifier inLibrary:libraryCopy];
  v8 = v7;
  if (!v7)
  {
    v10 = [PLConversation albumWithConversationID:uniqueIdentifier inLibrary:libraryCopy];
    managedObjectContext = PLSyndicationGetLog();
    v14 = os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        uuid = [v10 uuid];
        v19 = 138543362;
        v20 = uuid;
        _os_log_impl(&dword_19BF1F000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "[sync] deleting conversation with uuid: %{public}@", &v19, 0xCu);
      }

      managedObjectContext = [libraryCopy managedObjectContext];
      [managedObjectContext deleteObject:v10];
      goto LABEL_15;
    }

    if (!v14)
    {
LABEL_15:

      goto LABEL_16;
    }

    LOWORD(v19) = 0;
    v16 = "[sync] did not find matching asset/conversation to delete";
    v17 = managedObjectContext;
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

    managedObjectContext = [v8 uuid];
    v19 = 138543874;
    v20 = managedObjectContext;
    v21 = 2114;
    v22 = uniqueIdentifier;
    v23 = 1024;
    savedAssetType = [v8 savedAssetType];
    v16 = "[sync] not deleting asset with uuid: %{public}@, syndication identifier: %{public}@ because savedAssetType=%hu";
    v17 = v10;
    v18 = 28;
    goto LABEL_14;
  }

  if (v11)
  {
    uuid2 = [v8 uuid];
    v19 = 138543618;
    v20 = uuid2;
    v21 = 2114;
    v22 = uniqueIdentifier;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[sync] deleting asset with uuid: %{public}@, syndication identifier: %{public}@", &v19, 0x16u);
  }

  v10 = [PLAssetTransactionReason transactionReason:@"Syndication sync"];
  [v8 deleteWithReason:v10];
LABEL_16:
}

- (BOOL)_isQueryTypeSupported:(int64_t)supported
{
  suppportedQueryTypes = self->_suppportedQueryTypes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:supported];
  LOBYTE(suppportedQueryTypes) = [(NSSet *)suppportedQueryTypes containsObject:v4];

  return suppportedQueryTypes;
}

- (PLSyndicationSyncEngine)initWithQueryTypes:(id)types savedAssetTypeMask:(unsigned int)mask delegate:(id)delegate
{
  typesCopy = types;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PLSyndicationSyncEngine;
  v11 = [(PLSyndicationSyncEngine *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_suppportedQueryTypes, types);
    v12->_savedAssetTypeMask = mask;
  }

  return v12;
}

+ (void)findStartDateForMessagesSpotlightItemsWithBlock:(id)block completionHandler:(id)handler
{
  v6 = MEMORY[0x1E695DF00];
  handlerCopy = handler;
  blockCopy = block;
  v10 = [v6 dateWithTimeIntervalSinceReferenceDate:0.0];
  date = [MEMORY[0x1E695DF00] date];
  [self _recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:v10 endDate:date block:blockCopy completionHandler:handlerCopy];
}

+ (void)_recursiveFindStartDateForMessagesSpotlightItemsWithStartDate:(id)date endDate:(id)endDate block:(id)block completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  handlerCopy = handler;
  v14 = PLSyndicationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[sync] recursively searching syndication start date in interval: %@, %@", buf, 0x16u);
  }

  [endDateCopy timeIntervalSinceDate:dateCopy];
  v16 = v15;
  if (v15 <= 604800.0)
  {
    handlerCopy[2](handlerCopy, dateCopy, 0);
  }

  else
  {
    v30 = 0;
    blockCopy[2](blockCopy, dateCopy, &v30);
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
      v18 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:v16 * 0.5];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v19 = PLSyndicationCheckQueryWithDates(dateCopy, v18);
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
      v25 = handlerCopy;
      v27 = buf;
      selfCopy = self;
      v22 = dateCopy;
      v20 = v18;
      v23 = v20;
      v26 = blockCopy;
      v24 = endDateCopy;
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