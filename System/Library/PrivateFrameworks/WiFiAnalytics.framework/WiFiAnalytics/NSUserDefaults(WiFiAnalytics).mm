@interface NSUserDefaults(WiFiAnalytics)
+ (id)_WADefaults;
@end

@implementation NSUserDefaults(WiFiAnalytics)

+ (id)_WADefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [standardUserDefaults persistentDomainForName:@"com.apple.wifianalyticsd"];

  return v1;
}

@end