@interface WBSCyclerModifyBookmarkOperation
- (void)_changeTitleOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler;
- (void)_changeURLOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyBookmarkOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  randomValidStrictDescendantOfTopLevelItem = [contextCopy randomValidStrictDescendantOfTopLevelItem];
  if (randomValidStrictDescendantOfTopLevelItem)
  {
    array = [MEMORY[0x1E695DF70] array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v24[3] = &unk_1E7FC51C0;
    v24[4] = self;
    v10 = randomValidStrictDescendantOfTopLevelItem;
    v25 = v10;
    v11 = contextCopy;
    v26 = v11;
    v12 = handlerCopy;
    v27 = v12;
    v13 = MEMORY[0x1BFB13CE0](v24);
    [array addObject:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
      v19 = &unk_1E7FC51C0;
      selfCopy = self;
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v14 = MEMORY[0x1BFB13CE0](&v16);
      [array addObject:{v14, v16, v17, v18, v19, selfCopy}];
    }

    v15 = [WBSCyclerRandomnessUtilities randomElementOfArray:array];
    v15[2]();
  }

  else
  {
    array = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, array);
  }
}

- (void)_changeTitleOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  uniqueIdentifier = [bookmarkCopy uniqueIdentifier];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    title = [bookmarkCopy title];
    *buf = 138543874;
    v27 = uniqueIdentifier;
    v28 = 2114;
    v29 = title;
    v30 = 2114;
    v31 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing title of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__WBSCyclerModifyBookmarkOperation__changeTitleOfBookmark_withContext_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC5038;
  v22 = topLevelItem;
  v23 = uniqueIdentifier;
  v24 = randomItemTitle;
  v25 = handlerCopy;
  v17 = randomItemTitle;
  v18 = uniqueIdentifier;
  v19 = topLevelItem;
  v20 = handlerCopy;
  [testTarget setTitle:v17 forBookmarkWithIdentifier:v18 reply:v21];
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

- (void)_changeURLOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  contextCopy = context;
  v10 = +[WBSCyclerRandomnessUtilities randomURL];
  uniqueIdentifier = [bookmarkCopy uniqueIdentifier];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [bookmarkCopy url];
    *buf = 138543874;
    v27 = uniqueIdentifier;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing URL of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__WBSCyclerModifyBookmarkOperation__changeURLOfBookmark_withContext_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC5038;
  v22 = topLevelItem;
  v23 = uniqueIdentifier;
  v24 = v10;
  v25 = handlerCopy;
  v17 = v10;
  v18 = uniqueIdentifier;
  v19 = topLevelItem;
  v20 = handlerCopy;
  [testTarget setURL:v17 forBookmarkWithIdentifier:v18 reply:v21];
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