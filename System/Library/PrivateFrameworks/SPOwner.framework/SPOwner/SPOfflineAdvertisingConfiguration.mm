@interface SPOfflineAdvertisingConfiguration
- (SPOfflineAdvertisingConfiguration)initWithCoder:(id)coder;
- (SPOfflineAdvertisingConfiguration)initWithDictionaryRepresentation:(id)representation;
- (SPOfflineAdvertisingConfiguration)initWithShortIntervalCount:(int64_t)count longIntervalCount:(int64_t)intervalCount;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOfflineAdvertisingConfiguration

- (SPOfflineAdvertisingConfiguration)initWithShortIntervalCount:(int64_t)count longIntervalCount:(int64_t)intervalCount
{
  v7.receiver = self;
  v7.super_class = SPOfflineAdvertisingConfiguration;
  result = [(SPOfflineAdvertisingConfiguration *)&v7 init];
  if (result)
  {
    result->_shortIntervalCount = count;
    result->_longIntervalCount = intervalCount;
  }

  return result;
}

- (SPOfflineAdvertisingConfiguration)initWithDictionaryRepresentation:(id)representation
{
  v10.receiver = self;
  v10.super_class = SPOfflineAdvertisingConfiguration;
  representationCopy = representation;
  v4 = [(SPOfflineAdvertisingConfiguration *)&v10 init];
  v5 = [representationCopy objectForKeyedSubscript:{@"s", v10.receiver, v10.super_class}];
  integerValue = [v5 integerValue];

  v7 = [representationCopy objectForKeyedSubscript:@"l"];

  integerValue2 = [v7 integerValue];
  if (v4)
  {
    v4->_shortIntervalCount = integerValue;
    v4->_longIntervalCount = integerValue2;
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"s";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SPOfflineAdvertisingConfiguration shortIntervalCount](self, "shortIntervalCount")}];
  v8[1] = @"l";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SPOfflineAdvertisingConfiguration longIntervalCount](self, "longIntervalCount")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shortIntervalCount = self->_shortIntervalCount;
  coderCopy = coder;
  [coderCopy encodeInteger:shortIntervalCount forKey:@"s"];
  [coderCopy encodeInteger:self->_longIntervalCount forKey:@"l"];
}

- (SPOfflineAdvertisingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_shortIntervalCount = [coderCopy decodeIntegerForKey:@"s"];
  v5 = [coderCopy decodeIntegerForKey:@"l"];

  self->_longIntervalCount = v5;
  return self;
}

@end