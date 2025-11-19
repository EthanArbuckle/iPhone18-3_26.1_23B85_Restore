@interface WBSCyclerModifyBookmarkOperation
- (void)_changeTitleOfBookmark:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (void)_changeURLOfBookmark:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerModifyBookmarkOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 randomValidStrictDescendantOfTopLevelItem];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v24[3] = &unk_1E7FC51C0;
    v24[4] = self;
    v10 = v8;
    v25 = v10;
    v11 = v6;
    v26 = v11;
    v12 = v7;
    v27 = v12;
    v13 = MEMORY[0x1BFB13CE0](v24);
    [v9 addObject:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
      v19 = &unk_1E7FC51C0;
      v20 = self;
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v14 = MEMORY[0x1BFB13CE0](&v16);
      [v9 addObject:{v14, v16, v17, v18, v19, v20}];
    }

    v15 = [WBSCyclerRandomnessUtilities randomElementOfArray:v9];
    v15[2]();
  }

  else
  {
    v9 = [v6 topLevelItem];
    (*(v7 + 2))(v7, v9);
  }
}

- (void)_changeTitleOfBookmark:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 randomItemTitle];
  v11 = [v7 uniqueIdentifier];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v7 title];
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing title of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  v15 = [v9 topLevelItem];
  v16 = [v9 testTarget];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__WBSCyclerModifyBookmarkOperation__changeTitleOfBookmark_withContext_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC5038;
  v22 = v15;
  v23 = v11;
  v24 = v10;
  v25 = v8;
  v17 = v10;
  v18 = v11;
  v19 = v15;
  v20 = v8;
  [v16 setTitle:v17 forBookmarkWithIdentifier:v18 reply:v21];
}

void __89__WBSCyclerModifyBookmarkOperation__changeTitleOfBookmark_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) copy];
    v3 = [v5 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v3 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

- (void)_changeURLOfBookmark:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[WBSCyclerRandomnessUtilities randomURL];
  v11 = [v7 uniqueIdentifier];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v7 url];
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing URL of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  v15 = [v9 topLevelItem];
  v16 = [v9 testTarget];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__WBSCyclerModifyBookmarkOperation__changeURLOfBookmark_withContext_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC5038;
  v22 = v15;
  v23 = v11;
  v24 = v10;
  v25 = v8;
  v17 = v10;
  v18 = v11;
  v19 = v15;
  v20 = v8;
  [v16 setURL:v17 forBookmarkWithIdentifier:v18 reply:v21];
}

void __87__WBSCyclerModifyBookmarkOperation__changeURLOfBookmark_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) copy];
    v3 = [v5 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v3 setURL:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

@end