@interface NSUbiquitousKeyValueStore(WeatherCore)
+ (id)wc_sharedInstance;
@end

@implementation NSUbiquitousKeyValueStore(WeatherCore)

+ (id)wc_sharedInstance
{
  if (wc_sharedInstance_onceToken != -1)
  {
    +[NSUbiquitousKeyValueStore(WeatherCore) wc_sharedInstance];
  }

  v1 = wc_sharedInstance_sSharedInstance;

  return v1;
}

@end