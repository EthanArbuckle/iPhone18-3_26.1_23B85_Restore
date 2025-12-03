@interface WBSCyclerModifyProfileOperation
- (void)_updateIconOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler;
- (void)_updateTitleOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyProfileOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  if (tabGroupsParent)
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
    {
      [(WBSCyclerModifyProfileOperation *)self _updateTitleOfProfile:tabGroupsParent withContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      [(WBSCyclerModifyProfileOperation *)self _updateIconOfProfile:tabGroupsParent withContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    handlerCopy[2](handlerCopy, topLevelItem);
  }
}

- (void)_updateTitleOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    title = [profileCopy title];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = title;
    v31 = 2114;
    v32 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Changing title of profile (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__WBSCyclerModifyProfileOperation__updateTitleOfProfile_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = profileCopy;
  v25 = randomItemTitle;
  v26 = handlerCopy;
  v18 = randomItemTitle;
  v19 = profileCopy;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setTitle:v18 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v22];
}

void __87__WBSCyclerModifyProfileOperation__updateTitleOfProfile_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
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

- (void)_updateIconOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  handlerCopy = handler;
  contextCopy = context;
  randomSymbolImageName = [contextCopy randomSymbolImageName];
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    symbolImageName = [profileCopy symbolImageName];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = symbolImageName;
    v31 = 2114;
    v32 = randomSymbolImageName;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Changing icon of profile (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__WBSCyclerModifyProfileOperation__updateIconOfProfile_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = profileCopy;
  v25 = randomSymbolImageName;
  v26 = handlerCopy;
  v18 = randomSymbolImageName;
  v19 = profileCopy;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setSymbolImageName:v18 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v22];
}

void __86__WBSCyclerModifyProfileOperation__updateIconOfProfile_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setSymbolImageName:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end