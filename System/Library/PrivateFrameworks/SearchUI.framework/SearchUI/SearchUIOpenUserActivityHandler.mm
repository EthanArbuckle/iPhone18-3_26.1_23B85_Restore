@interface SearchUIOpenUserActivityHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIOpenUserActivityHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke;
  v9[3] = &unk_1E85B3B00;
  v10 = environmentCopy;
  selfCopy = self;
  v8 = environmentCopy;
  [(SearchUIOpenUserActivityHandler *)self getUserActivityForCommand:command environment:v8 completionHandler:v9];
}

void __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) presentingViewController];
  v8 = [SearchUIUtilities downloadDemotedAppIfNecessaryForBundleIdentifier:v6 presentingViewControllerForExplanationAlert:v7];

  if (!v8)
  {
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
      v10 = objc_opt_new();
      v11 = +[SearchUIUtilities openApplicationOptions];
      [v10 setFrontBoardOptions:v11];

      v12 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v12 openUserActivity:v5 usingApplicationRecord:v9 configuration:v10 completionHandler:&__block_literal_global_23];
    }

    else
    {
      v13 = [*(a1 + 40) rowModel];
      v14 = [v13 identifyingResult];

      v15 = SearchUITapLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(v14, v15);
      }

      if (v6)
      {
        [SearchUILaunchAppHandler openApplicationWithBundleIdentifier:v6 environment:*(a1 + 32)];
      }
    }
  }
}

void __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = SearchUIGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1(v4, v5);
    }
  }
}

void __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 identifier];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_fault_impl(&dword_1DA169000, a2, OS_LOG_TYPE_FAULT, "nil user activity generated for result: %@ (id: %@)", &v5, 0x16u);
}

void __75__SearchUIOpenUserActivityHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Failed to open activity with error %@", &v2, 0xCu);
}

@end