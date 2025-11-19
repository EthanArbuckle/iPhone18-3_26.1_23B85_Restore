@interface NSUserDefaults(WeatherCore)
+ (id)wc_userDefaultsWithSuiteName:()WeatherCore backupDisabled:;
@end

@implementation NSUserDefaults(WeatherCore)

+ (id)wc_userDefaultsWithSuiteName:()WeatherCore backupDisabled:
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:v4];

  return v5;
}

@end