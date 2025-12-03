@interface WBSCyclerModifyTabOperation
- (void)_modifyRandomTabGroupWithContext:(id)context completionHandler:(id)handler;
- (void)_modifyRandomTabInTabGroup:(id)group withContext:(id)context completionHandler:(id)handler;
- (void)_updateTitleOfTab:(id)tab withContext:(id)context completionHandler:(id)handler;
- (void)_updateURLOfTab:(id)tab withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyTabOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  topLevelItem = [contextCopy topLevelItem];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__WBSCyclerModifyTabOperation_executeWithContext_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5198;
  v9 = contextCopy;
  v12 = v9;
  v10 = [v9 randomDescendantOfList:topLevelItem enforcingTitlePrefixValidity:1 passingTest:v11];

  if (v10 && [WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    [(WBSCyclerModifyTabOperation *)self _modifyRandomTabInTabGroup:v10 withContext:v9 completionHandler:handlerCopy];
  }

  else
  {
    [(WBSCyclerModifyTabOperation *)self _modifyRandomTabGroupWithContext:v9 completionHandler:handlerCopy];
  }
}

BOOL __68__WBSCyclerModifyTabOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topLevelItem];
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = [v3 randomTabDescendant];
    v6 = v4 != 0;
  }

LABEL_7:
  return v6;
}

- (void)_modifyRandomTabInTabGroup:(id)group withContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  randomTabDescendant = [group randomTabDescendant];
  if (randomTabDescendant)
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
    {
      [(WBSCyclerModifyTabOperation *)self _updateTitleOfTab:randomTabDescendant withContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      [(WBSCyclerModifyTabOperation *)self _updateURLOfTab:randomTabDescendant withContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    handlerCopy[2](handlerCopy, topLevelItem);
  }
}

- (void)_updateTitleOfTab:(id)tab withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    uniqueIdentifier = [tabCopy uniqueIdentifier];
    title = [tabCopy title];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = title;
    v31 = 2114;
    v32 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Changing title of tab (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [tabCopy uniqueIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__WBSCyclerModifyTabOperation__updateTitleOfTab_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = tabCopy;
  v25 = randomItemTitle;
  v26 = handlerCopy;
  v18 = randomItemTitle;
  v19 = tabCopy;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setTitle:v18 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v22];
}

void __79__WBSCyclerModifyTabOperation__updateTitleOfTab_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

- (void)_updateURLOfTab:(id)tab withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  handlerCopy = handler;
  contextCopy = context;
  v10 = +[WBSCyclerRandomnessUtilities randomURL];
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    uniqueIdentifier = [tabCopy uniqueIdentifier];
    v14 = [tabCopy url];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Changing URL of tab (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [tabCopy uniqueIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__WBSCyclerModifyTabOperation__updateURLOfTab_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = tabCopy;
  v25 = v10;
  v26 = handlerCopy;
  v18 = v10;
  v19 = tabCopy;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setURL:v18 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v22];
}

void __77__WBSCyclerModifyTabOperation__updateURLOfTab_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setURL:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

- (void)_modifyRandomTabGroupWithContext:(id)context completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
  if (randomTabGroupDescendant)
  {
    randomItemTitle = [contextCopy randomItemTitle];
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
      title = [randomTabGroupDescendant title];
      *buf = 138543874;
      v26 = uniqueIdentifier;
      v27 = 2114;
      v28 = title;
      v29 = 2114;
      v30 = randomItemTitle;
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Changing title of tab group (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
    }

    topLevelItem = [contextCopy topLevelItem];
    testTarget = [contextCopy testTarget];
    uniqueIdentifier2 = [randomTabGroupDescendant uniqueIdentifier];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__WBSCyclerModifyTabOperation__modifyRandomTabGroupWithContext_completionHandler___block_invoke;
    v20[3] = &unk_1E7FC5038;
    v24 = handlerCopy;
    v21 = topLevelItem;
    v22 = randomTabGroupDescendant;
    v23 = randomItemTitle;
    v17 = randomItemTitle;
    v18 = topLevelItem;
    [testTarget setTitle:v17 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v20];
  }

  else
  {
    topLevelItem2 = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem2);
  }
}

void __82__WBSCyclerModifyTabOperation__modifyRandomTabGroupWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end