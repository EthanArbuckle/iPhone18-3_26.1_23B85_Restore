@interface CSMartyTap2RadarConfiguration
+ (id)tap2RadarDefaultConfiguration;
+ (id)tap2RadarUserConfiguration;
- (CSMartyTap2RadarConfiguration)initWithAllowOnBattery:(BOOL)battery checkIntervalInSeconds:(int64_t)seconds coolDownPeriodInSeconds:(int64_t)inSeconds;
@end

@implementation CSMartyTap2RadarConfiguration

- (CSMartyTap2RadarConfiguration)initWithAllowOnBattery:(BOOL)battery checkIntervalInSeconds:(int64_t)seconds coolDownPeriodInSeconds:(int64_t)inSeconds
{
  v9.receiver = self;
  v9.super_class = CSMartyTap2RadarConfiguration;
  result = [(CSMartyTap2RadarConfiguration *)&v9 init];
  if (result)
  {
    result->_allowOnBattery = battery;
    result->_checkIntervalInSeconds = seconds;
    result->_coolDownPeriodInSeconds = inSeconds;
  }

  return result;
}

+ (id)tap2RadarDefaultConfiguration
{
  if (qword_100458830 != -1)
  {
    sub_1003585C4();
  }

  v3 = qword_100458820;

  return v3;
}

+ (id)tap2RadarUserConfiguration
{
  if (qword_100458838 != -1)
  {
    sub_1003585D8();
  }

  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 integerForKey:@"CSMartyTap2RadarCheckIntervalInSeconds"];
  v4 = [v2 integerForKey:@"CSMartyTap2RadarCoolDownPeriodInSeconds"];
  v5 = [v2 BOOLForKey:@"CSMartyTap2RadarAllowOnBattery" withFallback:1];
  v6 = qword_100458828;
  *(qword_100458828 + 8) = v5;
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