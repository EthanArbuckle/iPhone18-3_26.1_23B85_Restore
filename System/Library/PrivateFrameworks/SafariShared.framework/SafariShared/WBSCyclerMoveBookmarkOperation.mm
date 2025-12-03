@interface WBSCyclerMoveBookmarkOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerMoveBookmarkOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  topLevelItem = [contextCopy topLevelItem];
  randomValidStrictDescendantOfTopLevelItem = [contextCopy randomValidStrictDescendantOfTopLevelItem];
  v9 = randomValidStrictDescendantOfTopLevelItem;
  if (randomValidStrictDescendantOfTopLevelItem)
  {
    v24 = handlerCopy;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v31[3] = &unk_1E7FC5198;
    v10 = randomValidStrictDescendantOfTopLevelItem;
    v32 = v10;
    v11 = [contextCopy randomDescendantOfList:topLevelItem enforcingTitlePrefixValidity:1 passingTest:v31];
    v12 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v11 numberOfChildren] + (objc_msgSend(v11, "containsChild:", v10) ^ 1));
    uniqueIdentifier = [v10 uniqueIdentifier];
    uniqueIdentifier2 = [v11 uniqueIdentifier];
    v15 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      [v10 title];
      v17 = v23 = topLevelItem;
      title = [v11 title];
      uniqueIdentifier3 = [v11 uniqueIdentifier];
      *buf = 138544386;
      v34 = v17;
      v35 = 2114;
      v36 = uniqueIdentifier;
      v37 = 2114;
      v38 = title;
      v39 = 2114;
      v40 = uniqueIdentifier3;
      v41 = 1024;
      v42 = v12;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Moving bookmark (title: %{public}@, identifier: %{public}@) into folder (title: %{public}@, identifier: %{public}@) at index %d", buf, 0x30u);

      topLevelItem = v23;
    }

    testTarget = [contextCopy testTarget];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
    v25[3] = &unk_1E7FC50F8;
    handlerCopy = v24;
    v29 = v24;
    v26 = topLevelItem;
    v27 = uniqueIdentifier;
    v28 = uniqueIdentifier2;
    v30 = v12;
    v21 = uniqueIdentifier2;
    v22 = uniqueIdentifier;
    [testTarget moveBookmarkWithIdentifier:v22 intoListWithIdentifier:v21 atIndex:v12 reply:v25];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

uint64_t __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(a1 + 32) == v3)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) containsDescendant:v3] ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

void __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [v6 descendantWithUniqueIdentifier:*(a1 + 40)];
    v4 = [v6 descendantWithUniqueIdentifier:*(a1 + 48)];
    [v6 deleteDescendant:v3];
    [v4 insertChild:v3 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end