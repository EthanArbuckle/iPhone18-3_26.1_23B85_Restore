@interface SearchUILaunchWebClipHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUILaunchWebClipHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = [a3 identifyingResult];
  if ([v4 isLocalApplicationResult] && (objc_msgSend(v4, "applicationBundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), +[SearchUIUtilities bundleIdentifierForApp:](SearchUIUtilities, "bundleIdentifierForApp:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = objc_opt_new();
    v9 = [v4 identifier];
    [v8 setClipIdentifier:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = MEMORY[0x1E69D4320];
  v6 = [a3 clipIdentifier];
  [v5 launchWebClipWithIdentifier:v6 origin:2];
}

@end