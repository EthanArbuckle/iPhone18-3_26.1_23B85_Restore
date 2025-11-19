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
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [a1 tvExtensionBundleIDs];
  LOBYTE(v3) = [v5 containsObject:v4];

  return v3;
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqual:@"com.apple.VideosUI.TVAppExtension"];
  return v2;
}

+ (BOOL)isRunningInTVProductPageExtension
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqual:@"com.apple.VideosUI.TVProductPageExtension"];
  return v2;
}

+ (BOOL)isRunningInCompanionApp
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqual:@"com.apple.visionproapp"];
  return v2;
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