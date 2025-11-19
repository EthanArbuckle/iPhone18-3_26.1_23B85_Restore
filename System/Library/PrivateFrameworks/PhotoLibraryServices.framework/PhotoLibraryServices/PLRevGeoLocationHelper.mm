@interface PLRevGeoLocationHelper
+ (BOOL)isCurrentRevGeoProviderAutoNavi;
+ (id)currentRevGeoProvider;
+ (void)simulateAutoNaviForBlock:(id)a3;
@end

@implementation PLRevGeoLocationHelper

+ (id)currentRevGeoProvider
{
  v2 = [getGEOCountryConfigurationClass() sharedConfiguration];
  v3 = [v2 countryCode];

  if ([v3 isEqualToString:@"CN"])
  {
    goto LABEL_5;
  }

  if (SimulateGeoServiceAutoNaviProvider_onceToken != -1)
  {
    dispatch_once(&SimulateGeoServiceAutoNaviProvider_onceToken, &__block_literal_global_16819);
  }

  if (simulateGeoServiceAutoNaviProvider == 1)
  {
LABEL_5:
    v4 = @"35230";
  }

  else
  {
    v4 = @"7618";
  }

  return v4;
}

+ (BOOL)isCurrentRevGeoProviderAutoNavi
{
  v2 = [getGEOCountryConfigurationClass() sharedConfiguration];
  v3 = [v2 countryCode];

  if ([v3 isEqualToString:@"CN"])
  {
    v4 = 1;
  }

  else
  {
    if (SimulateGeoServiceAutoNaviProvider_onceToken != -1)
    {
      dispatch_once(&SimulateGeoServiceAutoNaviProvider_onceToken, &__block_literal_global_16819);
    }

    v4 = simulateGeoServiceAutoNaviProvider;
  }

  return v4 & 1;
}

+ (void)simulateAutoNaviForBlock:(id)a3
{
  v3 = SimulateGeoServiceAutoNaviProvider_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&SimulateGeoServiceAutoNaviProvider_onceToken, &__block_literal_global_16819);
  }

  v5 = simulateGeoServiceAutoNaviProvider;
  simulateGeoServiceAutoNaviProvider = 1;
  v4[2](v4);

  simulateGeoServiceAutoNaviProvider = v5;
}

@end