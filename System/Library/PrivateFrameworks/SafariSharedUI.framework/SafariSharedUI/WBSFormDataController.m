@interface WBSFormDataController
@end

@implementation WBSFormDataController

void __120__WBSFormDataController_SafariSharedUIExtras__bestUsernameSuggestionForUsernamePromptOnURL_inContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__WBSFormDataController_SafariSharedUIExtras__bestUsernameSuggestionForUsernamePromptOnURL_inContext_completionHandler___block_invoke_2;
  block[3] = &unk_1E8284E18;
  v11 = v3;
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __120__WBSFormDataController_SafariSharedUIExtras__bestUsernameSuggestionForUsernamePromptOnURL_inContext_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) state])
  {
    [*(a1 + 40) lastUsedUsernameWithPasswordForURL:*(a1 + 48) inContext:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 32) privateEmailAddress];
  }
  v2 = ;
  (*(*(a1 + 64) + 16))();
}

@end