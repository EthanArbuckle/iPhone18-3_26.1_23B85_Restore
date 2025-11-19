@interface SPBTFindingSessionConfig
- (SPBTFindingSessionConfig)initWithOptInRawRSSIMeasurement:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SPBTFindingSessionConfig

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBTFindingSessionConfig alloc];
  v5 = [(SPBTFindingSessionConfig *)self optInRawRSSIMeasurement];

  return [(SPBTFindingSessionConfig *)v4 initWithOptInRawRSSIMeasurement:v5];
}

- (SPBTFindingSessionConfig)initWithOptInRawRSSIMeasurement:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SPBTFindingSessionConfig;
  result = [(SPBTFindingSessionConfig *)&v5 init];
  if (result)
  {
    result->_optInRawRSSIMeasurement = a3;
  }

  return result;
}

@end