@interface WeatherInternalPreferences
+ (id)sharedInternalPreferences;
- (BOOL)isInternalInstall;
- (BOOL)isV3Enabled;
- (BOOL)shouldShowUpdateTimestamp;
- (unint64_t)deviceInactivityThreshold;
@end

@implementation WeatherInternalPreferences

+ (id)sharedInternalPreferences
{
  if (sharedInternalPreferences_onceToken != -1)
  {
    +[WeatherInternalPreferences sharedInternalPreferences];
  }

  v3 = sharedInternalPreferences_sharedInternalPreferences;

  return v3;
}

uint64_t __55__WeatherInternalPreferences_sharedInternalPreferences__block_invoke()
{
  v0 = [[WeatherInternalPreferences alloc] initWithSuiteName:@"com.apple.weather.internal"];
  v1 = sharedInternalPreferences_sharedInternalPreferences;
  sharedInternalPreferences_sharedInternalPreferences = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    [WeatherInternalPreferences isInternalInstall];
  }

  return isInternalInstall___isInternalInstall;
}

uint64_t __47__WeatherInternalPreferences_isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalInstall___isInternalInstall = result;
  return result;
}

- (BOOL)isV3Enabled
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 objectForKey:@"apiVersion"];

  LOBYTE(v2) = [v3 isEqualToString:@"twc_v3"];
  return v2;
}

- (BOOL)shouldShowUpdateTimestamp
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 BOOLForKey:@"forceUpdateTimeShown"];

  return v3;
}

- (unint64_t)deviceInactivityThreshold
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 integerForKey:@"feature.manateeMigration.deviceInactivityThreshold"];

  return v3;
}

@end