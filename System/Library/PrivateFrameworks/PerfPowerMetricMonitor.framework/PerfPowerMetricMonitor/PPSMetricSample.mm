@interface PPSMetricSample
+ (PPSMetricSample)sampleWithValue:(id)a3 timestamp:(id)a4;
- (BOOL)BOOLValue;
- (PPSMetricSample)initWithCoder:(id)a3;
- (PPSMetricSample)initWithValue:(id)a3 timestamp:(id)a4;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)intValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSMetricSample

+ (PPSMetricSample)sampleWithValue:(id)a3 timestamp:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PPSMetricSample alloc] initWithValue:v6 timestamp:v5];

  return v7;
}

- (PPSMetricSample)initWithValue:(id)a3 timestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = PPSMetricSample;
    v9 = [(PPSMetricSample *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_value, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PPSMetricSample)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PPSMetricSample;
  v5 = [(PPSMetricSample *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PPSMetricSample *)self value];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(PPSMetricSample *)self timestamp];
  [v4 encodeObject:v6 forKey:@"timestamp"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PPSMetricSample allocWithZone:](PPSMetricSample init];
  v6 = [(NSNumber *)self->_value copyWithZone:a3];
  value = v5->_value;
  v5->_value = v6;

  v8 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v8;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PPSMetricSample *)self value];
  v5 = [(PPSMetricSample *)self timestamp];
  v6 = [v3 stringWithFormat:@"PPSMetric value: %@ timestamp: %@", v4, v5];

  return v6;
}

- (BOOL)BOOLValue
{
  v2 = [(PPSMetricSample *)self value];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)intValue
{
  v2 = [(PPSMetricSample *)self value];
  v3 = [v2 intValue];

  return v3;
}

- (double)doubleValue
{
  v2 = [(PPSMetricSample *)self value];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

@end