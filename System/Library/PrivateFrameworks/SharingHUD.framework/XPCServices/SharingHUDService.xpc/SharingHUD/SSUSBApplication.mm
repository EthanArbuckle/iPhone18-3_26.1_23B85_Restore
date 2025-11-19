@interface SSUSBApplication
+ (id)_systemUIServiceClientSettings;
@end

@implementation SSUSBApplication

+ (id)_systemUIServiceClientSettings
{
  v2 = +[UIMutableApplicationSceneClientSettings settings];
  [v2 setPreferredLevel:UIScreenshotServicesWindowLevel + -1.0];

  return v2;
}

@end