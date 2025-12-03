@interface WiFiUsageBeaconParsingConfiguration
+ (id)getConfigForKey:(id)key;
+ (void)initialize;
+ (void)setConfig:(id)config;
@end

@implementation WiFiUsageBeaconParsingConfiguration

+ (void)initialize
{
  v2 = _beaconParsing;
  _beaconParsing = 0;
}

+ (void)setConfig:(id)config
{
  configCopy = config;
  if (([configCopy isEqualToDictionary:_beaconParsing] & 1) == 0)
  {
    objc_storeStrong(&_beaconParsing, config);
    +[WiFiUsageParsedBeacon updateConfig];
    NSLog(&cfstr_SUpdatedWifius_0.isa, "+[WiFiUsageBeaconParsingConfiguration setConfig:]");
  }
}

+ (id)getConfigForKey:(id)key
{
  keyCopy = key;
  if (_beaconParsing)
  {
    v4 = [_beaconParsing objectForKey:keyCopy];
    if (!v4)
    {
      NSLog(&cfstr_SDoesNotContai.isa, "+[WiFiUsageBeaconParsingConfiguration getConfigForKey:]", @"BeaconParsing", keyCopy);
    }
  }

  else
  {
    NSLog(&cfstr_SFeatureHasnTB.isa, "+[WiFiUsageBeaconParsingConfiguration getConfigForKey:]", @"BeaconParsing");
    v4 = 0;
  }

  return v4;
}

@end