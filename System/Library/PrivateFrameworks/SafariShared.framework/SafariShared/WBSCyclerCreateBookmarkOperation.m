@interface WBSCyclerCreateBookmarkOperation
- (id)_randomListWithContext:(id)a3;
- (void)_createRandomLeafWithContext:(id)a3 completionHandler:(id)a4;
- (void)_createRandomListWithContext:(id)a3 completionHandler:(id)a4;
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerCreateBookmarkOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    [(WBSCyclerCreateBookmarkOperation *)self _createRandomLeafWithContext:v7 completionHandler:v6];
  }

  else
  {
    [(WBSCyclerCreateBookmarkOperation *)self _createRandomListWithContext:v7 completionHandler:v6];
  }
}

- (id)_randomListWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 topLevelItem];
  v5 = [v3 randomDescendantOfList:v4 enforcingTitlePrefixValidity:1 passingTest:&__block_literal_global_37];

  return v5;
}

uint64_t __59__WBSCyclerCreateBookmarkOperation__randomListWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_createRandomListWithContext:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WBSCyclerCreateBookmarkOperation *)self _randomListWithContext:v6];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 randomItemTitle];
  v11 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v8 numberOfChildren] + 1);
  v12 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v25 = v10;
    v26 = 2114;
    v27 = v9;
    v28 = 1024;
    v29 = v11;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Creating bookmark list with title %{public}@ in list with identifier %{public}@ at index %d", buf, 0x1Cu);
  }

  v13 = [v6 testTarget];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__WBSCyclerCreateBookmarkOperation__createRandomListWithContext_completionHandler___block_invoke;
  v18[3] = &unk_1E7FC50F8;
  v19 = v6;
  v20 = v9;
  v21 = v10;
  v22 = v7;
  v23 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  [v13 createBookmarkListWithTitle:v14 inListWithIdentifier:v15 atIndex:v11 reply:v18];
}

void __83__WBSCyclerCreateBookmarkOperation__createRandomListWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v11 = [v3 copy];

    v4 = [v11 descendantWithUniqueIdentifier:*(a1 + 40)];
    v5 = [WBSCyclerItemListRepresentation alloc];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    v9 = [(WBSCyclerItemListRepresentation *)v5 initWithTitle:v6 uniqueIdentifier:v8];

    [v4 insertChild:v9 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) topLevelItem];
    (*(v10 + 16))(v10);
  }
}

- (void)_createRandomLeafWithContext:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WBSCyclerCreateBookmarkOperation *)self _randomListWithContext:v6];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 randomItemTitle];
  v11 = +[WBSCyclerRandomnessUtilities randomURL];
  v12 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v8 numberOfChildren] + 1);
  v13 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v9;
    v33 = 1024;
    v34 = v12;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Creating bookmark leaf with title %{public}@ and URL %{public}@ in list with identifier %{public}@ at index %d", buf, 0x26u);
  }

  v14 = [v6 testTarget];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__WBSCyclerCreateBookmarkOperation__createRandomLeafWithContext_completionHandler___block_invoke;
  v20[3] = &unk_1E7FC5120;
  v21 = v6;
  v22 = v9;
  v23 = v11;
  v24 = v10;
  v25 = v7;
  v26 = v12;
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v18 = v6;
  v19 = v7;
  [v14 createBookmarkWithTitle:v15 url:v16 inListWithIdentifier:v17 atIndex:v12 reply:v20];
}

void __83__WBSCyclerCreateBookmarkOperation__createRandomLeafWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v12 = [v3 copy];

    v4 = [v12 descendantWithUniqueIdentifier:*(a1 + 40)];
    v5 = [WBSCyclerBookmarkLeafRepresentation alloc];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [(WBSCyclerBookmarkLeafRepresentation *)v5 initWithURL:v6 title:v7 uniqueIdentifier:v9];

    [v4 insertChild:v10 atIndex:*(a1 + 72)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 32) topLevelItem];
    (*(v11 + 16))(v11);
  }
}

@end