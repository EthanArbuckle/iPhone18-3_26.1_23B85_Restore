@interface WBSCyclerMoveBookmarkOperation
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerMoveBookmarkOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 topLevelItem];
  v8 = [v5 randomValidStrictDescendantOfTopLevelItem];
  v9 = v8;
  if (v8)
  {
    v24 = v6;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v31[3] = &unk_1E7FC5198;
    v10 = v8;
    v32 = v10;
    v11 = [v5 randomDescendantOfList:v7 enforcingTitlePrefixValidity:1 passingTest:v31];
    v12 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v11 numberOfChildren] + (objc_msgSend(v11, "containsChild:", v10) ^ 1));
    v13 = [v10 uniqueIdentifier];
    v14 = [v11 uniqueIdentifier];
    v15 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      [v10 title];
      v17 = v23 = v7;
      v18 = [v11 title];
      v19 = [v11 uniqueIdentifier];
      *buf = 138544386;
      v34 = v17;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v18;
      v39 = 2114;
      v40 = v19;
      v41 = 1024;
      v42 = v12;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Moving bookmark (title: %{public}@, identifier: %{public}@) into folder (title: %{public}@, identifier: %{public}@) at index %d", buf, 0x30u);

      v7 = v23;
    }

    v20 = [v5 testTarget];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
    v25[3] = &unk_1E7FC50F8;
    v6 = v24;
    v29 = v24;
    v26 = v7;
    v27 = v13;
    v28 = v14;
    v30 = v12;
    v21 = v14;
    v22 = v13;
    [v20 moveBookmarkWithIdentifier:v22 intoListWithIdentifier:v21 atIndex:v12 reply:v25];
  }

  else
  {
    (*(v6 + 2))(v6, v7);
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