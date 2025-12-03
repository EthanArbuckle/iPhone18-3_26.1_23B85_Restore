@interface PLRevGeoLocationHelper
+ (BOOL)isCurrentRevGeoProviderAutoNavi;
+ (id)currentRevGeoProvider;
+ (void)simulateAutoNaviForBlock:(id)block;
@end

@implementation PLRevGeoLocationHelper

+ (id)currentRevGeoProvider
{
  sharedConfiguration = [getGEOCountryConfigurationClass() sharedConfiguration];
  countryCode = [sharedConfiguration countryCode];

  if ([countryCode isEqualToString:@"CN"])
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
  sharedConfiguration = [getGEOCountryConfigurationClass() sharedConfiguration];
  countryCode = [sharedConfiguration countryCode];

  if ([countryCode isEqualToString:@"CN"])
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

+ (void)simulateAutoNaviForBlock:(id)block
{
  v3 = SimulateGeoServiceAutoNaviProvider_onceToken;
  blockCopy = block;
  if (v3 != -1)
  {
    dispatch_once(&SimulateGeoServiceAutoNaviProvider_onceToken, &__block_literal_global_16819);
  }

  v5 = simulateGeoServiceAutoNaviProvider;
  simulateGeoServiceAutoNaviProvider = 1;
  blockCopy[2](blockCopy);

  simulateGeoServiceAutoNaviProvider = v5;
}

@end