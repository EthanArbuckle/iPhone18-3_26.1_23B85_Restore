@interface WBSCyclerDeleteTabOperation
- (void)_deleteItemWithIdentifier:(id)a3 fromParentWithIdentifier:(id)a4 isTab:(BOOL)a5 inContext:(id)a6 completionHandler:(id)a7;
- (void)_deleteRandomTabFromTabGroup:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (void)_deleteRandomTabGroupWithContext:(id)a3 completionHandler:(id)a4;
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerDeleteTabOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 topLevelItem];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__WBSCyclerDeleteTabOperation_executeWithContext_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5198;
  v9 = v6;
  v12 = v9;
  v10 = [v9 randomDescendantOfList:v8 enforcingTitlePrefixValidity:1 passingTest:v11];

  if (v10 && [WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    [(WBSCyclerDeleteTabOperation *)self _deleteRandomTabFromTabGroup:v10 withContext:v9 completionHandler:v7];
  }

  else
  {
    [(WBSCyclerDeleteTabOperation *)self _deleteRandomTabGroupWithContext:v9 completionHandler:v7];
  }
}

BOOL __68__WBSCyclerDeleteTabOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topLevelItem];
  v5 = v4;
  if (v4 == v3)
  {

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = [v3 numberOfTabs] != 0;
LABEL_6:

  return v7;
}

- (void)_deleteRandomTabFromTabGroup:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 randomTabDescendant];
  if (v11)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v11 title];
      v15 = [v11 url];
      v16 = [v11 uniqueIdentifier];
      v20 = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Deleting tab with title %{public}@ and URL %{public}@ (%@)", &v20, 0x20u);
    }

    v17 = [v11 uniqueIdentifier];
    v18 = [v8 uniqueIdentifier];
    [(WBSCyclerDeleteTabOperation *)self _deleteItemWithIdentifier:v17 fromParentWithIdentifier:v18 isTab:1 inContext:v9 completionHandler:v10];
  }

  else
  {
    v19 = [v9 topLevelItem];
    (*(v10 + 2))(v10, v19);
  }
}

- (void)_deleteRandomTabGroupWithContext:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 tabGroupsParent];
  v9 = [v8 randomTabGroupDescendant];
  if (v9)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v9 title];
      v13 = [v9 uniqueIdentifier];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Deleting tab group with title %{public}@ (%@)", &v17, 0x16u);
    }

    v14 = [v9 uniqueIdentifier];
    v15 = [v8 uniqueIdentifier];
    [(WBSCyclerDeleteTabOperation *)self _deleteItemWithIdentifier:v14 fromParentWithIdentifier:v15 isTab:0 inContext:v6 completionHandler:v7];
  }

  else
  {
    v16 = [v6 topLevelItem];
    (*(v7 + 2))(v7, v16);
  }
}

- (void)_deleteItemWithIdentifier:(id)a3 fromParentWithIdentifier:(id)a4 isTab:(BOOL)a5 inContext:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v13 testTarget];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __116__WBSCyclerDeleteTabOperation__deleteItemWithIdentifier_fromParentWithIdentifier_isTab_inContext_completionHandler___block_invoke;
  v20[3] = &unk_1E7FB6CF8;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  v24 = v14;
  v25 = a5;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  v19 = v14;
  [v15 deleteBookmarkWithIdentifier:v17 reply:v20];
}

void __116__WBSCyclerDeleteTabOperation__deleteItemWithIdentifier_fromParentWithIdentifier_isTab_inContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v12 = [v3 copy];

    v4 = [v12 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v12 deleteDescendant:v4];
    v5 = [v12 descendantWithUniqueIdentifier:*(a1 + 48)];
    v6 = v5;
    if (*(a1 + 64) == 1 && [v5 numberOfChildren] == 1)
    {
      v7 = [WBSCyclerBookmarkLeafRepresentation alloc];
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v8 UUIDString];
      v10 = [(WBSCyclerBookmarkLeafRepresentation *)v7 initWithURL:0 title:@"Start Page" uniqueIdentifier:v9];

      [v6 insertChild:v10 atIndex:1];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) topLevelItem];
    (*(v11 + 16))(v11);
  }
}

@end