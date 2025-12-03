@interface SearchUILaunchAppHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
+ (void)openApplicationWithBundleIdentifier:(id)identifier environment:(id)environment;
- (id)destinationApplicationBundleIdentifier;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUILaunchAppHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  identifyingResult = [modelCopy identifyingResult];
  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
  results = [modelCopy results];

  if ([results count] == 1 && (objc_msgSend(identifyingResult, "isLocalApplicationResult") & 1) != 0)
  {
    v8 = [SearchUIUtilities bundleIdentifierForApp:0];
    v9 = [applicationBundleIdentifier isEqualToString:v8];

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      v10 = objc_opt_new();
      [v10 setApplicationBundleIdentifier:applicationBundleIdentifier];
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  if (([commandCopy isOnenessApplication] & 1) == 0)
  {
    v7 = objc_opt_class();
    applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
    [v7 openApplicationWithBundleIdentifier:applicationBundleIdentifier environment:environmentCopy];
  }
}

+ (void)openApplicationWithBundleIdentifier:(id)identifier environment:(id)environment
{
  identifierCopy = identifier;
  environmentCopy = environment;
  if (![SearchUIUtilities downloadDemotedAppIfNecessaryForBundleIdentifier:identifierCopy presentingViewControllerForExplanationAlert:0])
  {
    if (openApplicationWithBundleIdentifier_environment__onceToken != -1)
    {
      +[SearchUILaunchAppHandler openApplicationWithBundleIdentifier:environment:];
    }

    v6 = MEMORY[0x1E695DF90];
    v7 = +[SearchUIUtilities openApplicationOptions];
    v8 = [v6 dictionaryWithDictionary:v7];

    if (([environmentCopy modifierFlags] & 0x20000) != 0)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v8 setObject:v9 forKey:*MEMORY[0x1E69D4458]];
    }

    v10 = [MEMORY[0x1E699FB70] optionsWithDictionary:v8];
    [openApplicationWithBundleIdentifier_environment__openApplicationService openApplication:identifierCopy withOptions:v10 completion:&__block_literal_global_16];
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
  command = [(SearchUICommandHandler *)self command];
  applicationBundleIdentifier = [command applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

void __76__SearchUILaunchAppHandler_openApplicationWithBundleIdentifier_environment___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Failed to open application with error %@", &v2, 0xCu);
}

@end