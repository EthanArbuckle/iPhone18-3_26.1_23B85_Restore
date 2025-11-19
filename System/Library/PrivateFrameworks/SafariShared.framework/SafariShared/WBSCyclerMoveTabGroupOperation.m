@interface WBSCyclerMoveTabGroupOperation
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerMoveTabGroupOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 tabGroupsParent];
  v8 = [v5 topLevelItem];
  v9 = [v8 randomProfileDescendant];

  if (v7 && v9)
  {
    v10 = [v7 randomTabGroupDescendant];
    if ([v9 numberOfChildren])
    {
      v11 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v9 numberOfChildren]);
    }

    else
    {
      v11 = 0;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      [v10 title];
      v15 = v22 = v11;
      v16 = [v10 uniqueIdentifier];
      v17 = [v7 title];
      v18 = [v9 title];
      *buf = 138544386;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2048;
      v39 = v22;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Moving Tab Group with title %{public}@ (identifier: %{public}@) from profile with title %{public}@ to profile with title %{public}@ at index %lu", buf, 0x34u);

      v11 = v22;
    }

    v19 = [v5 testTarget];
    v20 = [v10 uniqueIdentifier];
    v21 = [v9 uniqueIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__WBSCyclerMoveTabGroupOperation_executeWithContext_completionHandler___block_invoke;
    v23[3] = &unk_1E7FC5120;
    v28 = v6;
    v24 = v5;
    v25 = v7;
    v26 = v9;
    v27 = v10;
    v29 = v11;
    v12 = v10;
    [v19 moveBookmarkWithIdentifier:v20 intoListWithIdentifier:v21 atIndex:v11 reply:v23];
  }

  else
  {
    v12 = [v5 topLevelItem];
    (*(v6 + 2))(v6, v12);
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