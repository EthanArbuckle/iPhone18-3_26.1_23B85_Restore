@interface WBSFormDataController(SafariSharedUIExtras)
- (void)bestUsernameSuggestionForUsernamePromptOnURL:()SafariSharedUIExtras inContext:completionHandler:;
@end

@implementation WBSFormDataController(SafariSharedUIExtras)

- (void)bestUsernameSuggestionForUsernamePromptOnURL:()SafariSharedUIExtras inContext:completionHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[WBSHideMyEmailManager sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__WBSFormDataController_SafariSharedUIExtras__bestUsernameSuggestionForUsernamePromptOnURL_inContext_completionHandler___block_invoke;
  v15[3] = &unk_1E8284E40;
  v15[4] = a1;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 getRecordForURL:v14 completionHandler:v15];
}

@end