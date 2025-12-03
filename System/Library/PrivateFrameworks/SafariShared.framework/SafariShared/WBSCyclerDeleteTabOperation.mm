@interface WBSCyclerDeleteTabOperation
- (void)_deleteItemWithIdentifier:(id)identifier fromParentWithIdentifier:(id)withIdentifier isTab:(BOOL)tab inContext:(id)context completionHandler:(id)handler;
- (void)_deleteRandomTabFromTabGroup:(id)group withContext:(id)context completionHandler:(id)handler;
- (void)_deleteRandomTabGroupWithContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerDeleteTabOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  topLevelItem = [contextCopy topLevelItem];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__WBSCyclerDeleteTabOperation_executeWithContext_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5198;
  v9 = contextCopy;
  v12 = v9;
  v10 = [v9 randomDescendantOfList:topLevelItem enforcingTitlePrefixValidity:1 passingTest:v11];

  if (v10 && [WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    [(WBSCyclerDeleteTabOperation *)self _deleteRandomTabFromTabGroup:v10 withContext:v9 completionHandler:handlerCopy];
  }

  else
  {
    [(WBSCyclerDeleteTabOperation *)self _deleteRandomTabGroupWithContext:v9 completionHandler:handlerCopy];
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

- (void)_deleteRandomTabFromTabGroup:(id)group withContext:(id)context completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  contextCopy = context;
  handlerCopy = handler;
  randomTabDescendant = [groupCopy randomTabDescendant];
  if (randomTabDescendant)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      title = [randomTabDescendant title];
      v15 = [randomTabDescendant url];
      uniqueIdentifier = [randomTabDescendant uniqueIdentifier];
      v20 = 138543874;
      v21 = title;
      v22 = 2114;
      v23 = v15;
      v24 = 2112;
      v25 = uniqueIdentifier;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Deleting tab with title %{public}@ and URL %{public}@ (%@)", &v20, 0x20u);
    }

    uniqueIdentifier2 = [randomTabDescendant uniqueIdentifier];
    uniqueIdentifier3 = [groupCopy uniqueIdentifier];
    [(WBSCyclerDeleteTabOperation *)self _deleteItemWithIdentifier:uniqueIdentifier2 fromParentWithIdentifier:uniqueIdentifier3 isTab:1 inContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

- (void)_deleteRandomTabGroupWithContext:(id)context completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
  if (randomTabGroupDescendant)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      title = [randomTabGroupDescendant title];
      uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
      v17 = 138543618;
      v18 = title;
      v19 = 2112;
      v20 = uniqueIdentifier;
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Deleting tab group with title %{public}@ (%@)", &v17, 0x16u);
    }

    uniqueIdentifier2 = [randomTabGroupDescendant uniqueIdentifier];
    uniqueIdentifier3 = [tabGroupsParent uniqueIdentifier];
    [(WBSCyclerDeleteTabOperation *)self _deleteItemWithIdentifier:uniqueIdentifier2 fromParentWithIdentifier:uniqueIdentifier3 isTab:0 inContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

- (void)_deleteItemWithIdentifier:(id)identifier fromParentWithIdentifier:(id)withIdentifier isTab:(BOOL)tab inContext:(id)context completionHandler:(id)handler
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  contextCopy = context;
  handlerCopy = handler;
  testTarget = [contextCopy testTarget];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __116__WBSCyclerDeleteTabOperation__deleteItemWithIdentifier_fromParentWithIdentifier_isTab_inContext_completionHandler___block_invoke;
  v20[3] = &unk_1E7FB6CF8;
  v21 = contextCopy;
  v22 = identifierCopy;
  v23 = withIdentifierCopy;
  v24 = handlerCopy;
  tabCopy = tab;
  v16 = withIdentifierCopy;
  v17 = identifierCopy;
  v18 = contextCopy;
  v19 = handlerCopy;
  [testTarget deleteBookmarkWithIdentifier:v17 reply:v20];
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