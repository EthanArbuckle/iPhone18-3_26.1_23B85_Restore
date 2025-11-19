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
  v8[0] = @"MOPerformanceMetricName";
  v3 = [(MOPerformanceMetric *)self displayName];
  v9[0] = v3;
  v8[1] = @"MOPerformanceMetricUnit";
  v4 = [(MOPerformanceMetric *)self unit];
  v9[1] = v4;
  v8[2] = @"MOPerformanceMetricValue";
  [(MOPerformanceMetric *)self value];
  v5 = [NSNumber numberWithDouble:?];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  v3 = [(MOPerformanceMetric *)self displayName];
  v4 = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self value];
  v6 = [NSString stringWithFormat:@" Metric Name: %@, Metric Unit: %@, Value: %.2f", v3, v4, v5];

  return v6;
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