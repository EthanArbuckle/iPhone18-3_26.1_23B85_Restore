@interface SearchUILaunchWebClipHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUILaunchWebClipHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  identifyingResult = [model identifyingResult];
  if ([identifyingResult isLocalApplicationResult] && (objc_msgSend(identifyingResult, "applicationBundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), +[SearchUIUtilities bundleIdentifierForApp:](SearchUIUtilities, "bundleIdentifierForApp:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = objc_opt_new();
    identifier = [identifyingResult identifier];
    [v8 setClipIdentifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v5 = MEMORY[0x1E69D4320];
  clipIdentifier = [command clipIdentifier];
  [v5 launchWebClipWithIdentifier:clipIdentifier origin:2];
}

@end