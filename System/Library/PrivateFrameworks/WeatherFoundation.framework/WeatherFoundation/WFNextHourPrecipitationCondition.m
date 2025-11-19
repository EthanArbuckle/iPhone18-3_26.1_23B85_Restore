@interface WFNextHourPrecipitationCondition
- (WFNextHourPrecipitationCondition)initWithCoder:(id)a3;
- (WFNextHourPrecipitationCondition)initWithType:(id)a3 intensity:(double)a4 probability:(double)a5 validUntil:(id)a6;
- (id)_stringForType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)typeForString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFNextHourPrecipitationCondition

- (WFNextHourPrecipitationCondition)initWithType:(id)a3 intensity:(double)a4 probability:(double)a5 validUntil:(id)a6
{
  v10 = a3;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = WFNextHourPrecipitationCondition;
  v12 = [(WFNextHourPrecipitationCondition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = [(WFNextHourPrecipitationCondition *)v12 typeForString:v10];
    v13->_intensity = a4;
    v13->_probability = a5;
    objc_storeStrong(&v13->_validUntil, a6);
  }

  return v13;
}

- (unint64_t)typeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"clear"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"precip"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"rain"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"snow"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"sleet"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"hail"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_stringForType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_279E6D8E0[a3 - 1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_type;
  *(v4 + 16) = self->_intensity;
  *(v4 + 24) = self->_probability;
  v5 = [(NSDate *)self->_validUntil copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(WFNextHourPrecipitationCondition *)self _stringForType:[(WFNextHourPrecipitationCondition *)self type]];
  [v4 encodeObject:v6 forKey:@"WFNextHourPrecipitationConditionTypeKey"];
  [(WFNextHourPrecipitationCondition *)self intensity];
  [v4 encodeDouble:@"WFNextHourPrecipitationConditionIntensityKey" forKey:?];
  [(WFNextHourPrecipitationCondition *)self probability];
  [v4 encodeDouble:@"WFNextHourPrecipitationConditionProbabilityKey" forKey:?];
  v5 = [(WFNextHourPrecipitationCondition *)self validUntil];
  [v4 encodeObject:v5 forKey:@"WFNextHourPrecipitationConditionValidUntilKey"];
}

- (WFNextHourPrecipitationCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationConditionTypeKey"];
  [v4 decodeDoubleForKey:@"WFNextHourPrecipitationConditionIntensityKey"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"WFNextHourPrecipitationConditionProbabilityKey"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationConditionValidUntilKey"];

  v11 = [(WFNextHourPrecipitationCondition *)self initWithType:v5 intensity:v10 probability:v7 validUntil:v9];
  return v11;
}

@end