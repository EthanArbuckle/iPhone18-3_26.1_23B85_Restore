@interface SearchUILaunchAppHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
+ (void)openApplicationWithBundleIdentifier:(id)a3 environment:(id)a4;
- (id)destinationApplicationBundleIdentifier;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUILaunchAppHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = a3;
  v5 = [v4 identifyingResult];
  v6 = [v5 applicationBundleIdentifier];
  v7 = [v4 results];

  if ([v7 count] == 1 && (objc_msgSend(v5, "isLocalApplicationResult") & 1) != 0)
  {
    v8 = [SearchUIUtilities bundleIdentifierForApp:0];
    v9 = [v6 isEqualToString:v8];

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      v10 = objc_opt_new();
      [v10 setApplicationBundleIdentifier:v6];
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v9 = a3;
  v6 = a5;
  if (([v9 isOnenessApplication] & 1) == 0)
  {
    v7 = objc_opt_class();
    v8 = [v9 applicationBundleIdentifier];
    [v7 openApplicationWithBundleIdentifier:v8 environment:v6];
  }
}

+ (void)openApplicationWithBundleIdentifier:(id)a3 environment:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (![SearchUIUtilities downloadDemotedAppIfNecessaryForBundleIdentifier:v11 presentingViewControllerForExplanationAlert:0])
  {
    if (openApplicationWithBundleIdentifier_environment__onceToken != -1)
    {
      +[SearchUILaunchAppHandler openApplicationWithBundleIdentifier:environment:];
    }

    v6 = MEMORY[0x1E695DF90];
    v7 = +[SearchUIUtilities openApplicationOptions];
    v8 = [v6 dictionaryWithDictionary:v7];

    if (([v5 modifierFlags] & 0x20000) != 0)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v8 setObject:v9 forKey:*MEMORY[0x1E69D4458]];
    }

    v10 = [MEMORY[0x1E699FB70] optionsWithDictionary:v8];
    [openApplicationWithBundleIdentifier_environment__openApplicationService openApplication:v11 withOptions:v10 completion:&__block_literal_global_16];
  }
}

uint64_t __76__SearchUILaunchAppHandler_openApplicationWithBundleIdentifier_environment___block_invoke()
{
  openApplicationWithBundleIdentifier_environment__openApplicationService = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];

  return MEMORY[0x1EEE66BB8]();
}

void __76__SearchUILaunchAppHandler_openApplicationWithBundleIdentifier_environment___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__SearchUILaunchAppHandler_openApplicationWithBundleIdentifier_environment___block_invoke_2_cold_1(v3, v4);
    }
  }
}

- (id)destinationApplicationBundleIdentifier
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 applicationBundleIdentifier];

  return v3;
}

void __76__SearchUILaunchAppHandler_openApplicationWithBundleIdentifier_environment___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Failed to open application with error %@", &v2, 0xCu);
}

@end