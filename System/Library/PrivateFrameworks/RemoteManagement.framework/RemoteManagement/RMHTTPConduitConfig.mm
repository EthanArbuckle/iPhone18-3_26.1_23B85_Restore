@interface RMHTTPConduitConfig
- (id)reportDetails;
@end

@implementation RMHTTPConduitConfig

- (id)reportDetails
{
  v5.receiver = self;
  v5.super_class = RMHTTPConduitConfig;
  reportDetails = [(RMConduitConfig *)&v5 reportDetails];
  v3 = [reportDetails mutableCopy];

  return v3;
}

@end