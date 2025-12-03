@interface WBSCyclerCloudKitMigrationTestSuite
+ (BOOL)setValue:(id)value forConfigurationKey:(id)key;
- (WBSCyclerCloudKitMigrationTestSuite)init;
- (id)_errorWithCode:(int64_t)code;
- (void)_createRandomBookmarkWithTarget:(id)target completionHandler:(id)handler;
- (void)_fetchBookmarksPriorToMigrationWithTarget:(id)target completionHandler:(id)handler;
- (void)_generateDAVServerIDsForExistingBookmarksWithTarget:(id)target completionHandler:(id)handler;
- (void)_migrateToCloudKitWithTarget:(id)target completionHandler:(id)handler;
- (void)_validateResultsOfMigrationWithTarget:(id)target completionHandler:(id)handler;
- (void)runWithTarget:(id)target completionHandler:(id)handler;
@end

@implementation WBSCyclerCloudKitMigrationTestSuite

- (WBSCyclerCloudKitMigrationTestSuite)init
{
  v7.receiver = self;
  v7.super_class = WBSCyclerCloudKitMigrationTestSuite;
  v2 = [(WBSCyclerCloudKitMigrationTestSuite *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSCyclerTestSuiteBookmarkAuxiliary);
    bookmarkAuxiliary = v2->_bookmarkAuxiliary;
    v2->_bookmarkAuxiliary = v3;

    v5 = v2;
  }

  return v2;
}

- (void)runWithTarget:(id)target completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  handlerCopy = handler;
  if ((shouldMigrateExistingBookmarks & 1) == 0 && ![(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:0])
  {
    v23 = @"forCloudKitTest";
    v24[0] = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    v16 = 0;
    goto LABEL_15;
  }

  if (![(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:1])
  {
    v8 = self->_bookmarkAuxiliary;
    v9 = 1;
    goto LABEL_8;
  }

  if ((shouldMigrateExistingBookmarks & 1) != 0 || self->_bookmarksGeneratedPriorToMigration > 0x63)
  {
    if (![(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:2])
    {
      [(WBSCyclerCloudKitMigrationTestSuite *)self _generateDAVServerIDsForExistingBookmarksWithTarget:targetCopy completionHandler:handlerCopy];
      goto LABEL_22;
    }

    v10 = self->_bookmarkAuxiliary;
    if (!self->_hasValidatedResultsOfPrimaryMigration)
    {
      if (![(WBSCyclerTestSuiteBookmarkAuxiliary *)v10 hasPerformedOperation:3])
      {
        [(WBSCyclerCloudKitMigrationTestSuite *)self _migrateToCloudKitWithTarget:targetCopy completionHandler:handlerCopy];
        goto LABEL_22;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__WBSCyclerCloudKitMigrationTestSuite_runWithTarget_completionHandler___block_invoke;
      v19[3] = &unk_1E7FB8208;
      v19[4] = self;
      v20 = handlerCopy;
      [(WBSCyclerCloudKitMigrationTestSuite *)self _validateResultsOfMigrationWithTarget:targetCopy completionHandler:v19];
      v13 = v20;
      goto LABEL_19;
    }

    v11 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)v10 hasPerformedOperation:4];
    v12 = self->_bookmarkAuxiliary;
    if (v11)
    {
      if ([(WBSCyclerTestSuiteBookmarkAuxiliary *)v12 hasPerformedOperation:3])
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __71__WBSCyclerCloudKitMigrationTestSuite_runWithTarget_completionHandler___block_invoke_2;
        v17[3] = &unk_1E7FB8208;
        v17[4] = self;
        v18 = handlerCopy;
        [(WBSCyclerCloudKitMigrationTestSuite *)self _validateResultsOfMigrationWithTarget:targetCopy completionHandler:v17];
        v13 = v18;
LABEL_19:

        goto LABEL_22;
      }

      v8 = self->_bookmarkAuxiliary;
      v9 = 3;
LABEL_8:
      [(WBSCyclerTestSuiteBookmarkAuxiliary *)v8 performOperation:v9 withTarget:targetCopy completionHandler:handlerCopy];
      goto LABEL_22;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)v12 resetOperation:3];
    v21 = @"includeMigrationState";
    v22 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    v16 = 4;
LABEL_15:
    [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:v16 withTarget:targetCopy options:v14 completionHandler:handlerCopy];

    goto LABEL_22;
  }

  [(WBSCyclerCloudKitMigrationTestSuite *)self _createRandomBookmarkWithTarget:targetCopy completionHandler:handlerCopy];
LABEL_22:
}

+ (BOOL)setValue:(id)value forConfigurationKey:(id)key
{
  valueCopy = value;
  v6 = [key isEqualToString:@"migrate-existing-bookmarks"];
  if (v6)
  {
    bOOLValue = [valueCopy BOOLValue];
    shouldMigrateExistingBookmarks = bOOLValue;
    v8 = WBS_LOG_CHANNEL_PREFIXCycler();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (bOOLValue)
    {
      if (v9)
      {
        v14 = 0;
        v10 = "Migration test will migrate existing bookmarks at ~/Library/Safari/Bookmarks.plist";
        v11 = &v14;
LABEL_7:
        _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, v10, v11, 2u);
      }
    }

    else if (v9)
    {
      v13 = 0;
      v10 = "Migration test will wipe all existing bookmarks and generate random ones prior to migration";
      v11 = &v13;
      goto LABEL_7;
    }
  }

  return v6;
}

- (void)_createRandomBookmarkWithTarget:(id)target completionHandler:(id)handler
{
  targetCopy = target;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC4FC0;
  v11 = targetCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = targetCopy;
  [v9 fetchTopLevelBookmarkList:v10];
}

void __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(WBSCyclerOperationContext);
  [(WBSCyclerOperationContext *)v4 setTestTarget:a1[4]];
  [(WBSCyclerOperationContext *)v4 setTopLevelItem:v3];

  v5 = objc_alloc_init(WBSCyclerCreateBookmarkOperation);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7FC4FC0;
  v6 = a1[6];
  v8[4] = a1[5];
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [(WBSCyclerCreateBookmarkOperation *)v5 executeWithContext:v7 completionHandler:v8];
}

void __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke_3;
  v6[3] = &unk_1E7FB8208;
  v6[4] = v3;
  v7 = *(a1 + 48);
  [v5 fetchAndValidateBookmarksWithExpectedBookmarks:a2 context:v4 completionHandler:v6];
}

uint64_t __89__WBSCyclerCloudKitMigrationTestSuite__createRandomBookmarkWithTarget_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    ++*(*(a1 + 32) + 16);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_generateDAVServerIDsForExistingBookmarksWithTarget:(id)target completionHandler:(id)handler
{
  handlerCopy = handler;
  targetCopy = target;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Generating DAV server IDs for new bookmarks", buf, 2u);
  }

  bookmarkAuxiliary = self->_bookmarkAuxiliary;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__WBSCyclerCloudKitMigrationTestSuite__generateDAVServerIDsForExistingBookmarksWithTarget_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:2 withTarget:targetCopy completionHandler:v11];
}

void __109__WBSCyclerCloudKitMigrationTestSuite__generateDAVServerIDsForExistingBookmarksWithTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__WBSCyclerCloudKitMigrationTestSuite__generateDAVServerIDsForExistingBookmarksWithTarget_completionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Generated DAV server IDs for new bookmarks", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchBookmarksPriorToMigrationWithTarget:(id)target completionHandler:(id)handler
{
  handlerCopy = handler;
  targetCopy = target;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Fetching bookmarks prior to CloudKit migration", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__WBSCyclerCloudKitMigrationTestSuite__fetchBookmarksPriorToMigrationWithTarget_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC4F98;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [targetCopy fetchTopLevelBookmarkList:v10];
}

void __99__WBSCyclerCloudKitMigrationTestSuite__fetchBookmarksPriorToMigrationWithTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__WBSCyclerCloudKitMigrationTestSuite__fetchBookmarksPriorToMigrationWithTarget_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FB6E08;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __99__WBSCyclerCloudKitMigrationTestSuite__fetchBookmarksPriorToMigrationWithTarget_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_migrateToCloudKitWithTarget:(id)target completionHandler:(id)handler
{
  targetCopy = target;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__WBSCyclerCloudKitMigrationTestSuite__migrateToCloudKitWithTarget_completionHandler___block_invoke;
  v10[3] = &unk_1E7FB6E08;
  v10[4] = self;
  v11 = targetCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = targetCopy;
  [(WBSCyclerCloudKitMigrationTestSuite *)self _fetchBookmarksPriorToMigrationWithTarget:v9 completionHandler:v10];
}

- (void)_validateResultsOfMigrationWithTarget:(id)target completionHandler:(id)handler
{
  handlerCopy = handler;
  targetCopy = target;
  v8 = objc_alloc_init(WBSCyclerOperationContext);
  [(WBSCyclerOperationContext *)v8 setTestTarget:targetCopy];

  bookmarkAuxiliary = self->_bookmarkAuxiliary;
  topLevelBookmarksPriorToMigration = self->_topLevelBookmarksPriorToMigration;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__WBSCyclerCloudKitMigrationTestSuite__validateResultsOfMigrationWithTarget_completionHandler___block_invoke;
  v12[3] = &unk_1E7FB8208;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary fetchAndValidateBookmarksWithExpectedBookmarks:topLevelBookmarksPriorToMigration context:v8 completionHandler:v12];
}

void __95__WBSCyclerCloudKitMigrationTestSuite__validateResultsOfMigrationWithTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 32))
  {
    v4 = @"secondary";
  }

  else
  {
    v4 = @"primary";
  }

  v5 = v4;
  v6 = WBS_LOG_CHANNEL_PREFIXCycler();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __95__WBSCyclerCloudKitMigrationTestSuite__validateResultsOfMigrationWithTarget_completionHandler___block_invoke_cold_1(v5, v3, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Validated results of %{public}@ migration successfully", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_errorWithCode:(int64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v5 = [(WBSCyclerCloudKitMigrationTestSuite *)self _descriptionForErrorCode:?];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WBSCyclerCloudKitMigrationTestSuiteErrorDomain" code:code userInfo:v6];

  return v7;
}

void __109__WBSCyclerCloudKitMigrationTestSuite__generateDAVServerIDsForExistingBookmarksWithTarget_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to generate DAV server IDs for new bookmarks: %{public}@", &v2, 0xCu);
}

void __95__WBSCyclerCloudKitMigrationTestSuite__validateResultsOfMigrationWithTarget_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to validate %{public}@ migration results: %{public}@", &v3, 0x16u);
}

@end