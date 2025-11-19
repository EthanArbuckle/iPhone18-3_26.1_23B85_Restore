@interface WBSCyclerCreateProfileOperation
- (void)_createRandomProfileWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerCreateProfileOperation

- (void)_createRandomProfileWithContext:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 randomItemTitle];
  v8 = [v5 topLevelItem];
  v9 = [v8 numberOfChildren];

  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v24 = v7;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Creating profile with title %{public}@ at index %lu", buf, 0x16u);
  }

  v11 = [v5 testTarget];
  v12 = [v5 topLevelItem];
  v13 = [v12 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__WBSCyclerCreateProfileOperation__createRandomProfileWithContext_completionHandler___block_invoke;
  v17[3] = &unk_1E7FC5148;
  v18 = v5;
  v19 = v7;
  v20 = @"person";
  v21 = v6;
  v22 = v9;
  v14 = v7;
  v15 = v5;
  v16 = v6;
  [v11 createProfileWithTitle:v14 symbolName:@"person" inListWithIdentifier:v13 reply:v17];
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