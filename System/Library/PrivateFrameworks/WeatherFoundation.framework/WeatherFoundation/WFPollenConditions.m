@interface WFPollenConditions
- (WFPollenConditions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPollenConditions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(WFPollenConditions *)self date];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[1];
  v5[1] = v7;

  v5[2] = [(WFPollenConditions *)self timeOfDay];
  v5[3] = [(WFPollenConditions *)self grassIndex];
  v5[4] = [(WFPollenConditions *)self ragweedIndex];
  v5[5] = [(WFPollenConditions *)self treeIndex];
  return v5;
}

- (WFPollenConditions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFPollenConditions;
  v5 = [(WFPollenConditions *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFPollenConditionsDateKey"];
    date = v5->_date;
    v5->_date = v6;

    v5->_timeOfDay = [v4 decodeIntegerForKey:@"WFPollenConditionsTimeOfDayKey"];
    v5->_grassIndex = [v4 decodeIntegerForKey:@"WFPollenConditionsGrassIndexKey"];
    v5->_ragweedIndex = [v4 decodeIntegerForKey:@"WFPollenConditionsRagweedIndexKey"];
    v5->_treeIndex = [v4 decodeIntegerForKey:@"WFPollenConditionsTreeIndexKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WFPollenConditions *)self date];
  [v5 encodeObject:v4 forKey:@"WFPollenConditionsDateKey"];

  [v5 encodeInteger:-[WFPollenConditions timeOfDay](self forKey:{"timeOfDay"), @"WFPollenConditionsTimeOfDayKey"}];
  [v5 encodeInteger:-[WFPollenConditions grassIndex](self forKey:{"grassIndex"), @"WFPollenConditionsGrassIndexKey"}];
  [v5 encodeInteger:-[WFPollenConditions ragweedIndex](self forKey:{"ragweedIndex"), @"WFPollenConditionsRagweedIndexKey"}];
  [v5 encodeInteger:-[WFPollenConditions treeIndex](self forKey:{"treeIndex"), @"WFPollenConditionsTreeIndexKey"}];
}

@end