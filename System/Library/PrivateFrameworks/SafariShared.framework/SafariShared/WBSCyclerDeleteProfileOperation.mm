@interface WBSCyclerDeleteProfileOperation
- (void)_deleteItemWithIdentifier:(id)identifier inContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerDeleteProfileOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  if (tabGroupsParent)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      title = [tabGroupsParent title];
      uniqueIdentifier = [tabGroupsParent uniqueIdentifier];
      v15 = 138543618;
      v16 = title;
      v17 = 2112;
      v18 = uniqueIdentifier;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Deleting profile with title %{public}@ (%@)", &v15, 0x16u);
    }

    uniqueIdentifier2 = [tabGroupsParent uniqueIdentifier];
    [(WBSCyclerDeleteProfileOperation *)self _deleteItemWithIdentifier:uniqueIdentifier2 inContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

- (void)_deleteItemWithIdentifier:(id)identifier inContext:(id)context completionHandler:(id)handler
{
  identifierCopy = identifier;
  contextCopy = context;
  handlerCopy = handler;
  testTarget = [contextCopy testTarget];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__WBSCyclerDeleteProfileOperation__deleteItemWithIdentifier_inContext_completionHandler___block_invoke;
  v14[3] = &unk_1E7FC5170;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v15 = contextCopy;
  v11 = identifierCopy;
  v12 = contextCopy;
  v13 = handlerCopy;
  [testTarget deleteBookmarkWithIdentifier:v11 reply:v14];
}

void __89__WBSCyclerDeleteProfileOperation__deleteItemWithIdentifier_inContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v6 = [v3 copy];

    v4 = [v6 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v6 deleteDescendant:v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) topLevelItem];
    (*(v5 + 16))(v5);
  }
}

@end