@interface WFNextHourPrecipitationMinute
- (WFNextHourPrecipitationMinute)initWithCoder:(id)a3;
- (WFNextHourPrecipitationMinute)initWithIntensity:(double)a3 chance:(double)a4 perceivedIntensity:(double)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFNextHourPrecipitationMinute

- (WFNextHourPrecipitationMinute)initWithIntensity:(double)a3 chance:(double)a4 perceivedIntensity:(double)a5 date:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = WFNextHourPrecipitationMinute;
  v12 = [(WFNextHourPrecipitationMinute *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_intensity = a3;
    v12->_chance = a4;
    v12->_perceivedIntensity = a5;
    objc_storeStrong(&v12->_date, a6);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_intensity;
  *(v4 + 16) = self->_chance;
  *(v4 + 24) = self->_perceivedIntensity;
  v5 = [(NSDate *)self->_date copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(WFNextHourPrecipitationMinute *)self intensity];
  [v4 encodeDouble:@"WFNextHourPrecipitationMinuteIntensityKey" forKey:?];
  [(WFNextHourPrecipitationMinute *)self chance];
  [v4 encodeDouble:@"WFNextHourPrecipitationMinuteChanceKey" forKey:?];
  [(WFNextHourPrecipitationMinute *)self perceivedIntensity];
  [v4 encodeDouble:@"WFNextHourPrecipitationMinutePerceivedIntensityKey" forKey:?];
  v5 = [(WFNextHourPrecipitationMinute *)self date];
  [v4 encodeObject:v5 forKey:@"WFNextHourPrecipitationMinuteDateKey"];
}

- (WFNextHourPrecipitationMinute)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"WFNextHourPrecipitationMinuteIntensityKey"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"WFNextHourPrecipitationMinuteChanceKey"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"WFNextHourPrecipitationMinutePerceivedIntensityKey"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationMinuteDateKey"];

  v12 = [(WFNextHourPrecipitationMinute *)self initWithIntensity:v11 chance:v6 perceivedIntensity:v8 date:v10];
  return v12;
}

@end