@interface SPBTFindingSessionConfig
- (SPBTFindingSessionConfig)initWithOptInRawRSSIMeasurement:(BOOL)measurement;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SPBTFindingSessionConfig

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBTFindingSessionConfig alloc];
  optInRawRSSIMeasurement = [(SPBTFindingSessionConfig *)self optInRawRSSIMeasurement];

  return [(SPBTFindingSessionConfig *)v4 initWithOptInRawRSSIMeasurement:optInRawRSSIMeasurement];
}

- (SPBTFindingSessionConfig)initWithOptInRawRSSIMeasurement:(BOOL)measurement
{
  v5.receiver = self;
  v5.super_class = SPBTFindingSessionConfig;
  result = [(SPBTFindingSessionConfig *)&v5 init];
  if (result)
  {
    result->_optInRawRSSIMeasurement = measurement;
  }

  return result;
}

@end