@interface UISDeviceContext(ForPreviewsOnly)
+ (id)_loadedInitialContext;
@end

@implementation UISDeviceContext(ForPreviewsOnly)

+ (id)_loadedInitialContext
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  v1 = [v0 applicationInitializationContext];
  v2 = [v1 deviceContext];

  return v2;
}

@end