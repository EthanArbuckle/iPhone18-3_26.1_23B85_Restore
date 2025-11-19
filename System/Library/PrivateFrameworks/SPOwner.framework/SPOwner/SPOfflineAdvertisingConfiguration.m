@interface SPOfflineAdvertisingConfiguration
- (SPOfflineAdvertisingConfiguration)initWithCoder:(id)a3;
- (SPOfflineAdvertisingConfiguration)initWithDictionaryRepresentation:(id)a3;
- (SPOfflineAdvertisingConfiguration)initWithShortIntervalCount:(int64_t)a3 longIntervalCount:(int64_t)a4;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPOfflineAdvertisingConfiguration

- (SPOfflineAdvertisingConfiguration)initWithShortIntervalCount:(int64_t)a3 longIntervalCount:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SPOfflineAdvertisingConfiguration;
  result = [(SPOfflineAdvertisingConfiguration *)&v7 init];
  if (result)
  {
    result->_shortIntervalCount = a3;
    result->_longIntervalCount = a4;
  }

  return result;
}

- (SPOfflineAdvertisingConfiguration)initWithDictionaryRepresentation:(id)a3
{
  v10.receiver = self;
  v10.super_class = SPOfflineAdvertisingConfiguration;
  v3 = a3;
  v4 = [(SPOfflineAdvertisingConfiguration *)&v10 init];
  v5 = [v3 objectForKeyedSubscript:{@"s", v10.receiver, v10.super_class}];
  v6 = [v5 integerValue];

  v7 = [v3 objectForKeyedSubscript:@"l"];

  v8 = [v7 integerValue];
  if (v4)
  {
    v4->_shortIntervalCount = v6;
    v4->_longIntervalCount = v8;
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

- (void)encodeWithCoder:(id)a3
{
  shortIntervalCount = self->_shortIntervalCount;
  v5 = a3;
  [v5 encodeInteger:shortIntervalCount forKey:@"s"];
  [v5 encodeInteger:self->_longIntervalCount forKey:@"l"];
}

- (SPOfflineAdvertisingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  self->_shortIntervalCount = [v4 decodeIntegerForKey:@"s"];
  v5 = [v4 decodeIntegerForKey:@"l"];

  self->_longIntervalCount = v5;
  return self;
}

@end