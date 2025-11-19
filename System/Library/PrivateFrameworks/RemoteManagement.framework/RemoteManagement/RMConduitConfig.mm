@interface RMConduitConfig
- (id)reportDetails;
@end

@implementation RMConduitConfig

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMConduitConfig *)self lastReceivedPushTimestamp];
  [v3 setObject:v4 forKeyedSubscript:@"lastReceivedPushTimestamp"];

  v5 = [(RMConduitConfig *)self lastReceivedCommandToken];
  [v3 setObject:v5 forKeyedSubscript:@"lastReceivedCommandToken"];

  v6 = [(RMConduitConfig *)self lastReceivedDeclarationsToken];
  [v3 setObject:v6 forKeyedSubscript:@"lastReceivedDeclarationsToken"];

  v7 = [(RMConduitConfig *)self lastReceivedServerTokensTimestamp];
  [v3 setObject:v7 forKeyedSubscript:@"lastReceivedServerTokensTimestamp"];

  v8 = [(RMConduitConfig *)self state];
  v9 = [v8 reportDetails];
  [v3 setObject:v9 forKeyedSubscript:@"state"];

  v10 = [v3 copy];

  return v10;
}

@end