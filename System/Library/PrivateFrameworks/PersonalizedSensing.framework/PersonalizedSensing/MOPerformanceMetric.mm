@interface MOPerformanceMetric
- (MOPerformanceMetric)initWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator;
- (double)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
@end

@implementation MOPerformanceMetric

- (MOPerformanceMetric)initWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator
{
  nameCopy = name;
  unitCopy = unit;
  v16.receiver = self;
  v16.super_class = MOPerformanceMetric;
  v13 = [(MOPerformanceMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v14->_unit, unit);
    v14->_denominator = denominator;
    v14->_pcMetricID = d;
    v14->_initializedWithValue = 0;
    v14->_rawValue = 0.0;
  }

  return v14;
}

- (id)dictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MOPerformanceMetricName";
  displayName = [(MOPerformanceMetric *)self displayName];
  v11[0] = displayName;
  v10[1] = @"MOPerformanceMetricUnit";
  unit = [(MOPerformanceMetric *)self unit];
  v11[1] = unit;
  v10[2] = @"MOPerformanceMetricValue";
  v5 = MEMORY[0x277CCABB0];
  [(MOPerformanceMetric *)self value];
  v6 = [v5 numberWithDouble:?];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  displayName = [(MOPerformanceMetric *)self displayName];
  unit = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self value];
  v7 = [v3 stringWithFormat:@" Metric Name: %@, Metric Unit: %@, Value: %.2f", displayName, unit, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOPerformanceMetric alloc];
  displayName = [(MOPerformanceMetric *)self displayName];
  pcMetricID = [(MOPerformanceMetric *)self pcMetricID];
  unit = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self denominator];
  v8 = [(MOPerformanceMetric *)v4 initWithDisplayName:displayName pcMetricID:pcMetricID unit:unit denominator:?];

  return v8;
}

- (double)value
{
  result = -1.0;
  if (self->_initializedWithValue)
  {
    return self->_rawValue / self->_denominator;
  }

  return result;
}

@end