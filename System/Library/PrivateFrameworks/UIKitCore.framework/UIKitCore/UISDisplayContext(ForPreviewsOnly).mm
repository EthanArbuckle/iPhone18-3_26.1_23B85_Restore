@interface UISDisplayContext(ForPreviewsOnly)
+ (id)_loadedInitialContext;
@end

@implementation UISDisplayContext(ForPreviewsOnly)

+ (id)_loadedInitialContext
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v0 applicationInitializationContext];
  displayContext = [applicationInitializationContext displayContext];

  return displayContext;
}

@end