@interface WBSCyclerMoveTabGroupOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerMoveTabGroupOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  topLevelItem = [contextCopy topLevelItem];
  randomProfileDescendant = [topLevelItem randomProfileDescendant];

  if (tabGroupsParent && randomProfileDescendant)
  {
    randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
    if ([randomProfileDescendant numberOfChildren])
    {
      v11 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [randomProfileDescendant numberOfChildren]);
    }

    else
    {
      v11 = 0;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      [randomTabGroupDescendant title];
      v15 = v22 = v11;
      uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
      title = [tabGroupsParent title];
      title2 = [randomProfileDescendant title];
      *buf = 138544386;
      v31 = v15;
      v32 = 2114;
      v33 = uniqueIdentifier;
      v34 = 2114;
      v35 = title;
      v36 = 2114;
      v37 = title2;
      v38 = 2048;
      v39 = v22;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Moving Tab Group with title %{public}@ (identifier: %{public}@) from profile with title %{public}@ to profile with title %{public}@ at index %lu", buf, 0x34u);

      v11 = v22;
    }

    testTarget = [contextCopy testTarget];
    uniqueIdentifier2 = [randomTabGroupDescendant uniqueIdentifier];
    uniqueIdentifier3 = [randomProfileDescendant uniqueIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__WBSCyclerMoveTabGroupOperation_executeWithContext_completionHandler___block_invoke;
    v23[3] = &unk_1E7FC5120;
    v28 = handlerCopy;
    v24 = contextCopy;
    v25 = tabGroupsParent;
    v26 = randomProfileDescendant;
    v27 = randomTabGroupDescendant;
    v29 = v11;
    topLevelItem2 = randomTabGroupDescendant;
    [testTarget moveBookmarkWithIdentifier:uniqueIdentifier2 intoListWithIdentifier:uniqueIdentifier3 atIndex:v11 reply:v23];
  }

  else
  {
    topLevelItem2 = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem2);
  }
}

void __71__WBSCyclerMoveTabGroupOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v11 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v11 descendantWithUniqueIdentifier:v4];

    v6 = [*(a1 + 48) uniqueIdentifier];
    v7 = [v11 descendantWithUniqueIdentifier:v6];

    v8 = [*(a1 + 56) uniqueIdentifier];
    v9 = [v11 descendantWithUniqueIdentifier:v8];

    [v5 deleteChild:v9];
    [v7 insertChild:v9 atIndex:*(a1 + 72)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = [*(a1 + 32) topLevelItem];
    (*(v10 + 16))(v10);
  }
}

@end