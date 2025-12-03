@interface WFPollenConditions
- (WFPollenConditions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPollenConditions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  date = [(WFPollenConditions *)self date];
  v7 = [date copyWithZone:zone];
  v8 = v5[1];
  v5[1] = v7;

  v5[2] = [(WFPollenConditions *)self timeOfDay];
  v5[3] = [(WFPollenConditions *)self grassIndex];
  v5[4] = [(WFPollenConditions *)self ragweedIndex];
  v5[5] = [(WFPollenConditions *)self treeIndex];
  return v5;
}

- (WFPollenConditions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFPollenConditions;
  v5 = [(WFPollenConditions *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFPollenConditionsDateKey"];
    date = v5->_date;
    v5->_date = v6;

    v5->_timeOfDay = [coderCopy decodeIntegerForKey:@"WFPollenConditionsTimeOfDayKey"];
    v5->_grassIndex = [coderCopy decodeIntegerForKey:@"WFPollenConditionsGrassIndexKey"];
    v5->_ragweedIndex = [coderCopy decodeIntegerForKey:@"WFPollenConditionsRagweedIndexKey"];
    v5->_treeIndex = [coderCopy decodeIntegerForKey:@"WFPollenConditionsTreeIndexKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(WFPollenConditions *)self date];
  [coderCopy encodeObject:date forKey:@"WFPollenConditionsDateKey"];

  [coderCopy encodeInteger:-[WFPollenConditions timeOfDay](self forKey:{"timeOfDay"), @"WFPollenConditionsTimeOfDayKey"}];
  [coderCopy encodeInteger:-[WFPollenConditions grassIndex](self forKey:{"grassIndex"), @"WFPollenConditionsGrassIndexKey"}];
  [coderCopy encodeInteger:-[WFPollenConditions ragweedIndex](self forKey:{"ragweedIndex"), @"WFPollenConditionsRagweedIndexKey"}];
  [coderCopy encodeInteger:-[WFPollenConditions treeIndex](self forKey:{"treeIndex"), @"WFPollenConditionsTreeIndexKey"}];
}

@end