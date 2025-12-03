@interface RMMDMConduitConfig
- (id)reportDetails;
@end

@implementation RMMDMConduitConfig

- (id)reportDetails
{
  v5.receiver = self;
  v5.super_class = RMMDMConduitConfig;
  reportDetails = [(RMConduitConfig *)&v5 reportDetails];
  v3 = [reportDetails mutableCopy];

  return v3;
}

@end