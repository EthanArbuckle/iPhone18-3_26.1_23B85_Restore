@interface UISDisplayContext(ForPreviewsOnly)
+ (id)_loadedInitialContext;
@end

@implementation UISDisplayContext(ForPreviewsOnly)

+ (id)_loadedInitialContext
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  v1 = [v0 applicationInitializationContext];
  v2 = [v1 displayContext];

  return v2;
}

@end