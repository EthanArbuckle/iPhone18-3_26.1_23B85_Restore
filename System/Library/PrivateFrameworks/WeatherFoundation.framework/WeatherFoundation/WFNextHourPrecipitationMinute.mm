@interface WFNextHourPrecipitationMinute
- (WFNextHourPrecipitationMinute)initWithCoder:(id)coder;
- (WFNextHourPrecipitationMinute)initWithIntensity:(double)intensity chance:(double)chance perceivedIntensity:(double)perceivedIntensity date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNextHourPrecipitationMinute

- (WFNextHourPrecipitationMinute)initWithIntensity:(double)intensity chance:(double)chance perceivedIntensity:(double)perceivedIntensity date:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = WFNextHourPrecipitationMinute;
  v12 = [(WFNextHourPrecipitationMinute *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_intensity = intensity;
    v12->_chance = chance;
    v12->_perceivedIntensity = perceivedIntensity;
    objc_storeStrong(&v12->_date, date);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_intensity;
  *(v4 + 16) = self->_chance;
  *(v4 + 24) = self->_perceivedIntensity;
  v5 = [(NSDate *)self->_date copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(WFNextHourPrecipitationMinute *)self intensity];
  [coderCopy encodeDouble:@"WFNextHourPrecipitationMinuteIntensityKey" forKey:?];
  [(WFNextHourPrecipitationMinute *)self chance];
  [coderCopy encodeDouble:@"WFNextHourPrecipitationMinuteChanceKey" forKey:?];
  [(WFNextHourPrecipitationMinute *)self perceivedIntensity];
  [coderCopy encodeDouble:@"WFNextHourPrecipitationMinutePerceivedIntensityKey" forKey:?];
  date = [(WFNextHourPrecipitationMinute *)self date];
  [coderCopy encodeObject:date forKey:@"WFNextHourPrecipitationMinuteDateKey"];
}

- (WFNextHourPrecipitationMinute)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"WFNextHourPrecipitationMinuteIntensityKey"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"WFNextHourPrecipitationMinuteChanceKey"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"WFNextHourPrecipitationMinutePerceivedIntensityKey"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationMinuteDateKey"];

  v12 = [(WFNextHourPrecipitationMinute *)self initWithIntensity:v11 chance:v6 perceivedIntensity:v8 date:v10];
  return v12;
}

@end