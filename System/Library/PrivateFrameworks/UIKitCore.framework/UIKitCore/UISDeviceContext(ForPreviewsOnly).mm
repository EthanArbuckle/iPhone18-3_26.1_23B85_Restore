@interface UISDeviceContext(ForPreviewsOnly)
+ (id)_loadedInitialContext;
@end

@implementation UISDeviceContext(ForPreviewsOnly)

+ (id)_loadedInitialContext
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v0 applicationInitializationContext];
  deviceContext = [applicationInitializationContext deviceContext];

  return deviceContext;
}

@end