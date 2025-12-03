@interface WBSCyclerCreateProfileOperation
- (void)_createRandomProfileWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerCreateProfileOperation

- (void)_createRandomProfileWithContext:(id)context completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  randomItemTitle = [contextCopy randomItemTitle];
  topLevelItem = [contextCopy topLevelItem];
  numberOfChildren = [topLevelItem numberOfChildren];

  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v24 = randomItemTitle;
    v25 = 2048;
    v26 = numberOfChildren;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Creating profile with title %{public}@ at index %lu", buf, 0x16u);
  }

  testTarget = [contextCopy testTarget];
  topLevelItem2 = [contextCopy topLevelItem];
  uniqueIdentifier = [topLevelItem2 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__WBSCyclerCreateProfileOperation__createRandomProfileWithContext_completionHandler___block_invoke;
  v17[3] = &unk_1E7FC5148;
  v18 = contextCopy;
  v19 = randomItemTitle;
  v20 = @"person";
  v21 = handlerCopy;
  v22 = numberOfChildren;
  v14 = randomItemTitle;
  v15 = contextCopy;
  v16 = handlerCopy;
  [testTarget createProfileWithTitle:v14 symbolName:@"person" inListWithIdentifier:uniqueIdentifier reply:v17];
}

void __85__WBSCyclerCreateProfileOperation__createRandomProfileWithContext_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) topLevelItem];
    v6 = [v5 copy];

    v7 = [(WBSCyclerItemRepresentation *)[WBSCyclerProfileRepresentation alloc] initWithTitle:*(a1 + 40) symbolImageName:*(a1 + 48) uniqueIdentifier:v9];
    [v6 insertChild:v7 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 56);
    v6 = [*(a1 + 32) topLevelItem];
    (*(v8 + 16))(v8, v6);
  }
}

@end