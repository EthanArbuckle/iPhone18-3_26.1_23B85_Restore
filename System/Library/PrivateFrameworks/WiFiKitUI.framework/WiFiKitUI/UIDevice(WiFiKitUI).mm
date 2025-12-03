@interface UIDevice(WiFiKitUI)
+ (BOOL)currentIsIPad;
@end

@implementation UIDevice(WiFiKitUI)

+ (BOOL)currentIsIPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 1;

  return v1;
}

@end