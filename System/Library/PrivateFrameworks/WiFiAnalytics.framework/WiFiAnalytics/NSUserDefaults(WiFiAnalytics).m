@interface NSUserDefaults(WiFiAnalytics)
+ (id)_WADefaults;
@end

@implementation NSUserDefaults(WiFiAnalytics)

+ (id)_WADefaults
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 persistentDomainForName:@"com.apple.wifianalyticsd"];

  return v1;
}

@end