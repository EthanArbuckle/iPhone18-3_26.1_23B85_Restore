@interface WBSCyclerCreateTabGroupRelatedItemOperation
- (void)_createRandomTabGroupFavoriteWithContext:(id)a3 completionHandler:(id)a4;
- (void)_createRandomTabGroupWithContext:(id)a3 completionHandler:(id)a4;
- (void)_createRandomTabWithContext:(id)a3 completionHandler:(id)a4;
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerCreateTabGroupRelatedItemOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 tabGroupsParent];
  v8 = [v9 randomDescendantOfList:v7 enforcingTitlePrefixValidity:1 passingTest:&__block_literal_global_38];
  if (v8 && ![WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:5])
    {
      [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabGroupFavoriteWithContext:v9 completionHandler:v6];
    }

    else
    {
      [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabWithContext:v9 completionHandler:v6];
    }
  }

  else
  {
    [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabGroupWithContext:v9 completionHandler:v6];
  }
}

uint64_t __84__WBSCyclerCreateTabGroupRelatedItemOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_createRandomTabWithContext:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 tabGroupsParent];
  v8 = [v7 randomTabGroupDescendant];
  if (v8)
  {
    v9 = [v5 randomItemTitle];
    v10 = +[WBSCyclerRandomnessUtilities randomURL];
    v11 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v8 numberOfTabs] + 1);
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v8 title];
      *buf = 138544130;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = v14;
      v33 = 2048;
      v34 = v11;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Creating tab with title %{public}@ and URL %{public}@ in tab group with title %{public}@ at index %lu", buf, 0x2Au);
    }

    v15 = [v5 testTarget];
    v16 = [v8 uniqueIdentifier];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabWithContext_completionHandler___block_invoke;
    v20[3] = &unk_1E7FC5120;
    v25 = v6;
    v21 = v5;
    v22 = v8;
    v23 = v10;
    v24 = v9;
    v26 = v11;
    v17 = v9;
    v18 = v10;
    [v15 createBookmarkWithTitle:v17 url:v18 inListWithIdentifier:v16 atIndex:v11 reply:v20];
  }

  else
  {
    v19 = [v5 topLevelItem];
    (*(v6 + 2))(v6, v19);
  }
}

void __93__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v13 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v13 descendantWithUniqueIdentifier:v4];

    v6 = [WBSCyclerBookmarkLeafRepresentation alloc];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [(WBSCyclerBookmarkLeafRepresentation *)v6 initWithURL:v7 title:v8 uniqueIdentifier:v10];

    [v5 insertChild:v11 atIndex:*(a1 + 72) + 1];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = [*(a1 + 32) topLevelItem];
    (*(v12 + 16))(v12);
  }
}

- (void)_createRandomTabGroupWithContext:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 randomItemTitle];
  v8 = [v5 tabGroupsParent];
  v9 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v8 numberOfChildren] + 1);
  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 title];
    *buf = 138543874;
    v26 = v12;
    v27 = 2114;
    v28 = v7;
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Creating tab group in profile %{public}@ with title %{public}@ at index %lu", buf, 0x20u);
  }

  v13 = [v5 testTarget];
  v14 = [v8 uniqueIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupWithContext_completionHandler___block_invoke;
  v19[3] = &unk_1E7FC50F8;
  v20 = v5;
  v21 = v7;
  v22 = v8;
  v23 = v6;
  v24 = v9;
  v15 = v8;
  v16 = v7;
  v17 = v5;
  v18 = v6;
  [v13 createBookmarkListWithTitle:v16 inListWithIdentifier:v14 atIndex:v9 reply:v19];
}

void __98__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [WBSCyclerTabGroupRepresentation alloc];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v17 = [(WBSCyclerItemListRepresentation *)v3 initWithTitle:v4 uniqueIdentifier:v6];

    v7 = [WBSCyclerTopScopedBookmarkListRepresentation alloc];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(WBSCyclerItemRepresentation *)v17 uniqueIdentifier];
    v10 = [v8 stringWithFormat:@"TopScopedBookmarkList_%@", v9];
    v11 = [(WBSCyclerItemListRepresentation *)v7 initWithTitle:&stru_1F3A5E418 uniqueIdentifier:v10];

    [(WBSCyclerItemListRepresentation *)v17 insertChild:v11 atIndex:0];
    v12 = [*(a1 + 32) topLevelItem];
    v13 = [v12 copy];

    v14 = [*(a1 + 48) uniqueIdentifier];
    v15 = [v13 descendantWithUniqueIdentifier:v14];

    [v15 insertChild:v17 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v16 = *(a1 + 56);
    v17 = [*(a1 + 32) topLevelItem];
    (*(v16 + 16))(v16);
  }
}

- (void)_createRandomTabGroupFavoriteWithContext:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 tabGroupsParent];
  v8 = [v7 randomTabGroupDescendant];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 childAtIndex:0];
    if (v10)
    {
      v11 = [v5 randomItemTitle];
      v12 = +[WBSCyclerRandomnessUtilities randomURL];
      v13 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v10 numberOfChildren] + 1);
      v14 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v16 = [v9 title];
        *buf = 138544130;
        v30 = v11;
        v31 = 2114;
        v32 = v12;
        v33 = 2114;
        v34 = v16;
        v35 = 2048;
        v36 = v13;
        _os_log_impl(&dword_1BB6F3000, v15, OS_LOG_TYPE_INFO, "Creating Tab Group Favorite with title %{public}@ and URL %{public}@ in tab group with title %{public}@ at index %lu", buf, 0x2Au);
      }

      v17 = [v5 testTarget];
      v18 = [v10 uniqueIdentifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __106__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupFavoriteWithContext_completionHandler___block_invoke;
      v22[3] = &unk_1E7FC5120;
      v27 = v6;
      v23 = v5;
      v24 = v10;
      v25 = v12;
      v26 = v11;
      v28 = v13;
      v19 = v11;
      v20 = v12;
      [v17 createBookmarkWithTitle:v19 url:v20 inListWithIdentifier:v18 atIndex:v13 reply:v22];
    }

    else
    {
      v21 = [v5 topLevelItem];
      (*(v6 + 2))(v6, v21);
    }
  }

  else
  {
    v10 = [v5 topLevelItem];
    (*(v6 + 2))(v6, v10);
  }
}

void __106__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupFavoriteWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v13 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v13 descendantWithUniqueIdentifier:v4];

    v6 = [WBSCyclerBookmarkLeafRepresentation alloc];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [(WBSCyclerBookmarkLeafRepresentation *)v6 initWithURL:v7 title:v8 uniqueIdentifier:v10];

    [v5 insertChild:v11 atIndex:*(a1 + 72)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = [*(a1 + 32) topLevelItem];
    (*(v12 + 16))(v12);
  }
}

@end