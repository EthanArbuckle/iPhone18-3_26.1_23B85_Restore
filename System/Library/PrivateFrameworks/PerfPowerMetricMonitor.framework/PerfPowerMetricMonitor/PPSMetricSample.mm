@interface PPSMetricSample
+ (PPSMetricSample)sampleWithValue:(id)value timestamp:(id)timestamp;
- (BOOL)BOOLValue;
- (PPSMetricSample)initWithCoder:(id)coder;
- (PPSMetricSample)initWithValue:(id)value timestamp:(id)timestamp;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)intValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSMetricSample

+ (PPSMetricSample)sampleWithValue:(id)value timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  valueCopy = value;
  v7 = [[PPSMetricSample alloc] initWithValue:valueCopy timestamp:timestampCopy];

  return v7;
}

- (PPSMetricSample)initWithValue:(id)value timestamp:(id)timestamp
{
  valueCopy = value;
  timestampCopy = timestamp;
  if (valueCopy)
  {
    v13.receiver = self;
    v13.super_class = PPSMetricSample;
    v9 = [(PPSMetricSample *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_value, value);
      objc_storeStrong(p_isa + 2, timestamp);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPSMetricSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PPSMetricSample;
  v5 = [(PPSMetricSample *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(PPSMetricSample *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  timestamp = [(PPSMetricSample *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PPSMetricSample allocWithZone:](PPSMetricSample init];
  v6 = [(NSNumber *)self->_value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v6;

  v8 = [(NSDate *)self->_timestamp copyWithZone:zone];
  timestamp = v5->_timestamp;
  v5->_timestamp = v8;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  value = [(PPSMetricSample *)self value];
  timestamp = [(PPSMetricSample *)self timestamp];
  v6 = [v3 stringWithFormat:@"PPSMetric value: %@ timestamp: %@", value, timestamp];

  return v6;
}

- (BOOL)BOOLValue
{
  value = [(PPSMetricSample *)self value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (int)intValue
{
  value = [(PPSMetricSample *)self value];
  intValue = [value intValue];

  return intValue;
}

- (double)doubleValue
{
  value = [(PPSMetricSample *)self value];
  [value doubleValue];
  v4 = v3;

  return v4;
}

@end