@interface RMHTTPConduitConfig
- (id)reportDetails;
@end

@implementation RMHTTPConduitConfig

- (id)reportDetails
{
  v5.receiver = self;
  v5.super_class = RMHTTPConduitConfig;
  v2 = [(RMConduitConfig *)&v5 reportDetails];
  v3 = [v2 mutableCopy];

  return v3;
}

@end