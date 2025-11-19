@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __58__NSUserDefaults_SafariCoreExtras__safari_browserDefaults__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_browserDefaults];
  v2 = safari_browserDefaults_userDefaults;
  safari_browserDefaults_userDefaults = v1;
}

void __64__NSUserDefaults_SafariCoreExtras__safari_browserSharedDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobilesafarishared"];
  v1 = safari_browserSharedDefaults_safariSharedDefaults;
  safari_browserSharedDefaults_safariSharedDefaults = v0;
}

void __47__NSUserDefaults_SafariCoreExtras__pm_defaults__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 safari_isPasswordsAppBundle];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = pm_defaults_userDefaults;
    pm_defaults_userDefaults = v2;
  }

  else
  {
    WBSSetUpAccessToAppDataContainerWithIdentifier(@"com.apple.Passwords");
    v4 = objc_alloc(MEMORY[0x1E695E000]);
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v8 safari_passwordsAppContainerDirectoryURL];
    v6 = [v4 _initWithSuiteName:@"com.apple.Passwords" container:v5];
    v7 = pm_defaults_userDefaults;
    pm_defaults_userDefaults = v6;

    v3 = v8;
  }
}

void __93__NSUserDefaults_SafariCoreExtras__safari_standardUserDefaultsWithOptimizedKeyValueObserving__block_invoke()
{
  v0 = [[_WBSOptimizedKeyValueObservingUserDefaults alloc] _initWithSuiteName:0 container:0];
  v1 = safari_standardUserDefaultsWithOptimizedKeyValueObserving_userDefaults;
  safari_standardUserDefaultsWithOptimizedKeyValueObserving_userDefaults = v0;
}

void __56__NSUserDefaults_SafariCoreExtras__as_developerDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AuthenticationServices.Developer"];
  v1 = as_developerDefaults_userDefaults;
  as_developerDefaults_userDefaults = v0;
}

void __65__NSUserDefaults_SafariCoreExtras__safari_cloudBookmarksDefaults__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.SafariBookmarksSyncAgent"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v5 = [objc_alloc(*(a1 + 32)) initWithSuiteName:@"com.apple.SafariBookmarksSyncAgent"];
  }

  v6 = safari_cloudBookmarksDefaults_defaults;
  safari_cloudBookmarksDefaults_defaults = v5;
}

@end