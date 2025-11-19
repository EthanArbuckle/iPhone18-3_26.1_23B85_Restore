@interface RMMDMConduitConfig
- (id)reportDetails;
@end

@implementation RMMDMConduitConfig

- (id)reportDetails
{
  v5.receiver = self;
  v5.super_class = RMMDMConduitConfig;
  v2 = [(RMConduitConfig *)&v5 reportDetails];
  v3 = [v2 mutableCopy];

  return v3;
}

@end