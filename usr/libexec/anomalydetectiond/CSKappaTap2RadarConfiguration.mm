@interface CSKappaTap2RadarConfiguration
+ (id)tap2RadarDefaultConfiguration;
+ (id)tap2RadarUserConfiguration;
- (CSKappaTap2RadarConfiguration)initWithAllowOnBattery:(BOOL)a3 checkIntervalInSeconds:(int64_t)a4 coolDownPeriodInSeconds:(int64_t)a5;
@end

@implementation CSKappaTap2RadarConfiguration

- (CSKappaTap2RadarConfiguration)initWithAllowOnBattery:(BOOL)a3 checkIntervalInSeconds:(int64_t)a4 coolDownPeriodInSeconds:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = CSKappaTap2RadarConfiguration;
  result = [(CSKappaTap2RadarConfiguration *)&v9 init];
  if (result)
  {
    result->_allowOnBattery = a3;
    result->_checkIntervalInSeconds = a4;
    result->_coolDownPeriodInSeconds = a5;
  }

  return result;
}

+ (id)tap2RadarDefaultConfiguration
{
  if (qword_1004587A0 != -1)
  {
    sub_100357D8C();
  }

  v3 = qword_100458790;

  return v3;
}

+ (id)tap2RadarUserConfiguration
{
  if (qword_1004587A8 != -1)
  {
    sub_100357DA0();
  }

  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 integerForKey:@"CSKappaTap2RadarCheckIntervalInSeconds"];
  v4 = [v2 integerForKey:@"CSKappaTap2RadarCoolDownPeriodInSeconds"];
  v5 = [v2 BOOLForKey:@"CSKappaTap2RadarAllowOnBattery" withFallback:1];
  v6 = qword_100458798;
  *(qword_100458798 + 8) = v5;
  if (v3)
  {
    v6[2] = v3;
  }

  if (v4)
  {
    v6[3] = v4;
  }

  v7 = v6;

  return v6;
}

@end