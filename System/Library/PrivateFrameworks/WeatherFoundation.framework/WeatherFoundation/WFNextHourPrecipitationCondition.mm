@interface WFNextHourPrecipitationCondition
- (WFNextHourPrecipitationCondition)initWithCoder:(id)coder;
- (WFNextHourPrecipitationCondition)initWithType:(id)type intensity:(double)intensity probability:(double)probability validUntil:(id)until;
- (id)_stringForType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)typeForString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNextHourPrecipitationCondition

- (WFNextHourPrecipitationCondition)initWithType:(id)type intensity:(double)intensity probability:(double)probability validUntil:(id)until
{
  typeCopy = type;
  untilCopy = until;
  v15.receiver = self;
  v15.super_class = WFNextHourPrecipitationCondition;
  v12 = [(WFNextHourPrecipitationCondition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = [(WFNextHourPrecipitationCondition *)v12 typeForString:typeCopy];
    v13->_intensity = intensity;
    v13->_probability = probability;
    objc_storeStrong(&v13->_validUntil, until);
  }

  return v13;
}

- (unint64_t)typeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"clear"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"precip"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"rain"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"snow"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"sleet"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"hail"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_stringForType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_279E6D8E0[type - 1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_type;
  *(v4 + 16) = self->_intensity;
  *(v4 + 24) = self->_probability;
  v5 = [(NSDate *)self->_validUntil copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(WFNextHourPrecipitationCondition *)self _stringForType:[(WFNextHourPrecipitationCondition *)self type]];
  [coderCopy encodeObject:v6 forKey:@"WFNextHourPrecipitationConditionTypeKey"];
  [(WFNextHourPrecipitationCondition *)self intensity];
  [coderCopy encodeDouble:@"WFNextHourPrecipitationConditionIntensityKey" forKey:?];
  [(WFNextHourPrecipitationCondition *)self probability];
  [coderCopy encodeDouble:@"WFNextHourPrecipitationConditionProbabilityKey" forKey:?];
  validUntil = [(WFNextHourPrecipitationCondition *)self validUntil];
  [coderCopy encodeObject:validUntil forKey:@"WFNextHourPrecipitationConditionValidUntilKey"];
}

- (WFNextHourPrecipitationCondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationConditionTypeKey"];
  [coderCopy decodeDoubleForKey:@"WFNextHourPrecipitationConditionIntensityKey"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"WFNextHourPrecipitationConditionProbabilityKey"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationConditionValidUntilKey"];

  v11 = [(WFNextHourPrecipitationCondition *)self initWithType:v5 intensity:v10 probability:v7 validUntil:v9];
  return v11;
}

@end