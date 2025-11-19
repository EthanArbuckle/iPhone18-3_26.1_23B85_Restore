@interface MOPerformanceMetric
- (MOPerformanceMetric)initWithDisplayName:(id)a3 pcMetricID:(unint64_t)a4 unit:(id)a5 denominator:(double)a6;
- (double)value;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionary;
@end

@implementation MOPerformanceMetric

- (MOPerformanceMetric)initWithDisplayName:(id)a3 pcMetricID:(unint64_t)a4 unit:(id)a5 denominator:(double)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = MOPerformanceMetric;
  v13 = [(MOPerformanceMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayName, a3);
    objc_storeStrong(&v14->_unit, a5);
    v14->_denominator = a6;
    v14->_pcMetricID = a4;
    v14->_initializedWithValue = 0;
    v14->_rawValue = 0.0;
  }

  return v14;
}

- (id)dictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MOPerformanceMetricName";
  v3 = [(MOPerformanceMetric *)self displayName];
  v11[0] = v3;
  v10[1] = @"MOPerformanceMetricUnit";
  v4 = [(MOPerformanceMetric *)self unit];
  v11[1] = v4;
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
  v4 = [(MOPerformanceMetric *)self displayName];
  v5 = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self value];
  v7 = [v3 stringWithFormat:@" Metric Name: %@, Metric Unit: %@, Value: %.2f", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOPerformanceMetric alloc];
  v5 = [(MOPerformanceMetric *)self displayName];
  v6 = [(MOPerformanceMetric *)self pcMetricID];
  v7 = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self denominator];
  v8 = [(MOPerformanceMetric *)v4 initWithDisplayName:v5 pcMetricID:v6 unit:v7 denominator:?];

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