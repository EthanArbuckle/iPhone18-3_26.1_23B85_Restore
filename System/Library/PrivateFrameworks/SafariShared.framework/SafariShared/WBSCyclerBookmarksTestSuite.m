@interface WBSCyclerBookmarksTestSuite
+ (BOOL)setValue:(id)a3 forConfigurationKey:(id)a4;
- (NSArray)operations;
- (WBSCyclerBookmarksTestSuite)init;
- (id)_descriptionForErrorCode:(int64_t)a3;
- (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4;
- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)a3;
- (void)_performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5;
- (void)_performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:(id)a3 completionHandler:(id)a4;
- (void)_validateServerBookmarksAfterClearingLocallyWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5;
- (void)_validateServerBookmarksAfterInitialSyncWithTarget:(id)a3 completionHandler:(id)a4;
- (void)_validateServerBookmarksWithTarget:(id)a3 completionHandler:(id)a4;
- (void)_validateServerBookmarksWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5;
- (void)runWithTarget:(id)a3 completionHandler:(id)a4;
- (void)setUp;
- (void)tearDown;
@end

@implementation WBSCyclerBookmarksTestSuite

- (WBSCyclerBookmarksTestSuite)init
{
  v9.receiver = self;
  v9.super_class = WBSCyclerBookmarksTestSuite;
  v2 = [(WBSCyclerBookmarksTestSuite *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSCyclerOperationContext);
    operationContext = v2->_operationContext;
    v2->_operationContext = v3;

    v5 = objc_alloc_init(WBSCyclerTestSuiteBookmarkAuxiliary);
    bookmarkAuxiliary = v2->_bookmarkAuxiliary;
    v2->_bookmarkAuxiliary = v5;

    v7 = v2;
  }

  return v2;
}

- (NSArray)operations
{
  if (operations_onceToken != -1)
  {
    [WBSCyclerBookmarksTestSuite operations];
  }

  v3 = operations_operations;

  return v3;
}

void __41__WBSCyclerBookmarksTestSuite_operations__block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WBSCyclerCreateBookmarkOperation);
  v6[0] = v0;
  v1 = objc_alloc_init(WBSCyclerDeleteBookmarkOperation);
  v6[1] = v1;
  v2 = objc_alloc_init(WBSCyclerMoveBookmarkOperation);
  v6[2] = v2;
  v3 = objc_alloc_init(WBSCyclerModifyBookmarkOperation);
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v5 = operations_operations;
  operations_operations = v4;
}

- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)a3
{
  if (relativeProbabilitiesForOperationsWithTopLevelItem__onceToken != -1)
  {
    [WBSCyclerBookmarksTestSuite relativeProbabilitiesForOperationsWithTopLevelItem:];
  }

  v4 = relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations;

  return v4;
}

void __82__WBSCyclerBookmarksTestSuite_relativeProbabilitiesForOperationsWithTopLevelItem___block_invoke()
{
  v0 = relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations;
  relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations = &unk_1F3A9B180;
}

- (void)setUp
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Blocking automatic migration in the sync agent", v4, 2u);
  }

  v3 = [MEMORY[0x1E695E000] safari_cloudBookmarksDefaults];
  [v3 setBool:1 forKey:*MEMORY[0x1E69C8D70]];
}

- (void)tearDown
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Unblocking automatic migration in the sync agent", v4, 2u);
  }

  v3 = [MEMORY[0x1E695E000] safari_cloudBookmarksDefaults];
  [v3 setBool:0 forKey:*MEMORY[0x1E69C8D70]];
}

- (void)runWithTarget:(id)a3 completionHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:0])
  {
    if (shouldRunInCloudKitMode)
    {
      v22 = @"forCloudKitTest";
      v23[0] = MEMORY[0x1E695E118];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v13 = 0;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary performOperation:0 withTarget:v6 options:v13 completionHandler:v7];

    goto LABEL_17;
  }

  if (shouldRunInCloudKitMode)
  {
    v8 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:1];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    if (v8)
    {
      if ([(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary hasPerformedOperation:3])
      {
        goto LABEL_5;
      }

      bookmarkAuxiliary = self->_bookmarkAuxiliary;
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:v14 withTarget:v6 completionHandler:v7];
    goto LABEL_17;
  }

LABEL_5:
  [(WBSCyclerIterationCounter *)self->_iterationCounter incrementIterationCount];
  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    iterationCounter = self->_iterationCounter;
    v12 = v10;
    *buf = 134218240;
    v19 = [(WBSCyclerIterationCounter *)iterationCounter iterationCount];
    v20 = 2048;
    v21 = +[WBSCyclerRandomnessUtilities seed];
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Beginning iteration %lu with seed %lu", buf, 0x16u);
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * [(WBSCyclerIterationCounter *)self->_iterationCounter iterationCount], 2) <= 0x28F5C28F5C28F5CuLL)
  {
    [(WBSCyclerBookmarksTestSuite *)self _validateServerBookmarksWithTarget:v6 completionHandler:v7];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke;
    v15[3] = &unk_1E7FC4FC0;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [v16 fetchTopLevelBookmarkList:v15];
  }

LABEL_17:
}

void __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) setTestTarget:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setTopLevelItem:v3];
  [*(*(a1 + 32) + 8) setTitlePrefix:bookmarkTitlePrefix];
  if (!*(*(a1 + 32) + 24))
  {
LABEL_10:
    v5 = [v3 randomProfileDescendant];
    [*(*(a1 + 32) + 8) setTabGroupsParent:v5];
    v7 = [*(a1 + 32) operations];
    v8 = [*(a1 + 32) relativeProbabilitiesForOperationsWithTopLevelItem:v5];
    v9 = [WBSCyclerRandomnessUtilities randomElementOfArray:v7 relativeProbabilities:v8];

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_16;
    v12[3] = &unk_1E7FC4F98;
    v12[4] = v10;
    v13 = *(a1 + 48);
    [v9 executeWithContext:v11 completionHandler:v12];

    goto LABEL_11;
  }

  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_1();
  }

  v5 = [*(*(a1 + 32) + 16) validateBookmarks:v3 expectingBookmarks:*(*(a1 + 32) + 24) context:*(*(a1 + 32) + 8)];
  v6 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_3();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_2();
  }

  (*(*(a1 + 48) + 16))();
LABEL_11:
}

void __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = *(a1 + 32);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7FB8300;
  v11 = *(a1 + 40);
  [v8 fetchAndValidateBookmarksWithExpectedBookmarks:v3 context:v9 completionHandler:v10];
}

+ (BOOL)setValue:(id)a3 forConfigurationKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"bookmark-prefix"])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Bookmark prefix set to %{public}@", &v15, 0xCu);
    }

    objc_storeStrong(&bookmarkTitlePrefix, a3);
    v9 = 1;
    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"enable-cloudkit"])
  {
    shouldRunInCloudKitMode = [(__CFString *)v6 BOOLValue];
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    v9 = 1;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    if (shouldRunInCloudKitMode)
    {
      v11 = @"enabled";
    }

    else
    {
      v11 = @"disabled";
    }

    v15 = 138543362;
    v16 = v11;
    v12 = "CloudKit mode %{public}@";
LABEL_17:
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0xCu);
    goto LABEL_19;
  }

  if (![v7 isEqualToString:@"enable-secondary-migration"])
  {
    v9 = 0;
    goto LABEL_19;
  }

  shouldSyncDownUsingSecondaryMigration = [(__CFString *)v6 BOOLValue];
  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  v9 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (shouldSyncDownUsingSecondaryMigration)
    {
      v13 = @"enabled";
    }

    else
    {
      v13 = @"disabled";
    }

    v15 = 138543362;
    v16 = v13;
    v12 = "CloudKit secondary migration sync down %{public}@";
    goto LABEL_17;
  }

LABEL_19:

  return v9;
}

- (void)_validateServerBookmarksWithTarget:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Validating server bookmarks", buf, 2u);
  }

  v9 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Performing initial sync before syncing down server bookmarks", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC4FE8;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v10 syncBookmarksWithCompletionHandler:v12];
}

void __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v9 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Bookmark sync is disabled; skipping validation of server bookmarks", v10, 2u);
      }

      (*(*(a1 + 48) + 16))();
      break;
    case 1:
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);

      [v6 _validateServerBookmarksAfterInitialSyncWithTarget:v7 completionHandler:v8];
      break;
    case 0:
      v3 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke_cold_1();
      }

      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) _errorWithCode:1 userInfo:0];
      (*(v4 + 16))(v4, v5);

      break;
  }
}

- (void)_validateServerBookmarksAfterInitialSyncWithTarget:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Saving off initial bookmarks before server bookmark validation", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterInitialSyncWithTarget_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC4FC0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v10 fetchTopLevelBookmarkList:v11];
}

- (void)_validateServerBookmarksWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Clearing local bookmarks for server bookmark validation", buf, 2u);
  }

  if (shouldRunInCloudKitMode == 1)
  {
    if (shouldSyncDownUsingSecondaryMigration == 1)
    {
      v26 = @"includeMigrationState";
      v27[0] = MEMORY[0x1E695E118];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    }

    else
    {
      v12 = 0;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary resetOperation:4];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke;
    v21[3] = &unk_1E7FC5010;
    v21[4] = self;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v15 = v9;
    v13 = v8;
    v14 = v10;
    [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:4 withTarget:v13 options:v12 completionHandler:v21];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38;
    v17[3] = &unk_1E7FC5038;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v13 = v9;
    v14 = v8;
    v12 = v10;
    [v14 clearBookmarksWithOptions:0 completionHandler:v17];

    v15 = v20;
  }
}

void __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _validateServerBookmarksAfterClearingLocallyWithTarget:*(a1 + 40) initialBookmarks:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

void __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 _validateServerBookmarksAfterClearingLocallyWithTarget:v4 initialBookmarks:v5 completionHandler:v6];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38_cold_1();
    }

    v8 = *(a1 + 56);
    v9 = [*(a1 + 32) _errorWithCode:0 userInfo:0];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)_validateServerBookmarksAfterClearingLocallyWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Cleared local bookmarks for server bookmark validation. Performing sync.", buf, 2u);
  }

  if (shouldRunInCloudKitMode == 1 && shouldSyncDownUsingSecondaryMigration == 1)
  {
    [(WBSCyclerBookmarksTestSuite *)self _performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:v8 initialBookmarks:v9 completionHandler:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke;
    v12[3] = &unk_1E7FC4FE8;
    v14 = v10;
    v12[4] = self;
    v13 = v9;
    [v8 syncBookmarksWithCompletionHandler:v12];
  }
}

void __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (a2 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Bookmark sync was apparently disabled between initial and final syncs for server validation; skipping validation", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Synced bookmarks down after clearing them", v8, 2u);
    }

    [*(a1 + 32) _performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1();
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) _errorWithCode:1 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)_performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:(id)a3 initialBookmarks:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Cleared local bookmarks for server bookmark validation. Performing secondary migration.", buf, 2u);
  }

  [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary resetOperation:3];
  bookmarkAuxiliary = self->_bookmarkAuxiliary;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC5060;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:3 withTarget:v10 completionHandler:v15];
}

void __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Secondary migration succeeded", v6, 2u);
  }

  [*(a1 + 32) _performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Performing final validation of bookmarks after clearing and syncing down from server", buf, 2u);
  }

  p_operationContext = &self->_operationContext;
  operationContext = self->_operationContext;
  v10 = p_operationContext[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke;
  v13[3] = &unk_1E7FB8300;
  v14 = v6;
  v12 = v6;
  [(WBSCyclerOperationContext *)v10 fetchAndValidateBookmarksWithExpectedBookmarks:v7 context:operationContext completionHandler:v13];
}

void __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Validated server-side bookmarks successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v8;

  v10 = [(WBSCyclerBookmarksTestSuite *)self _descriptionForErrorCode:a3];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCyclerBookmarksTestSuiteErrorDomain" code:a3 userInfo:v9];

  return v11;
}

- (id)_descriptionForErrorCode:(int64_t)a3
{
  if (a3)
  {
    return @"Could not sync bookmarks";
  }

  else
  {
    return @"Could not clear local bookmarks";
  }
}

void __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Secondary migration failed: %{public}@", &v2, 0xCu);
}

void __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Server validation failed: %{public}@", &v2, 0xCu);
}

@end