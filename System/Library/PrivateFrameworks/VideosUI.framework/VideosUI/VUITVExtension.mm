@interface VUITVExtension
+ (BOOL)isRunningInCompanionApp;
+ (BOOL)isRunningInTVAppExtension;
+ (BOOL)isRunningInTVExtension;
+ (BOOL)isRunningInTVProductPageExtension;
+ (id)sharedInstance;
- (UINavigationController)currentNavigationController;
- (UIViewController)presentationViewController;
@end

@implementation VUITVExtension

+ (BOOL)isRunningInTVExtension
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  tvExtensionBundleIDs = [self tvExtensionBundleIDs];
  LOBYTE(mainBundle) = [tvExtensionBundleIDs containsObject:bundleIdentifier];

  return mainBundle;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_24 != -1)
  {
    +[VUITVExtension sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_9;

  return v3;
}

void __32__VUITVExtension_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_9;
  sharedInstance_sharedInstance_9 = v0;
}

+ (BOOL)isRunningInTVAppExtension
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqual:@"com.apple.VideosUI.TVAppExtension"];
  return mainBundle;
}

+ (BOOL)isRunningInTVProductPageExtension
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqual:@"com.apple.VideosUI.TVProductPageExtension"];
  return mainBundle;
}

+ (BOOL)isRunningInCompanionApp
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqual:@"com.apple.visionproapp"];
  return mainBundle;
}

- (UINavigationController)currentNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentNavigationController);

  return WeakRetained;
}

- (UIViewController)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

@end