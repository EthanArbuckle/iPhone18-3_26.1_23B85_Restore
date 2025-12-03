@interface RMConduitConfig
- (id)reportDetails;
@end

@implementation RMConduitConfig

- (id)reportDetails
{
  v3 = objc_opt_new();
  lastReceivedPushTimestamp = [(RMConduitConfig *)self lastReceivedPushTimestamp];
  [v3 setObject:lastReceivedPushTimestamp forKeyedSubscript:@"lastReceivedPushTimestamp"];

  lastReceivedCommandToken = [(RMConduitConfig *)self lastReceivedCommandToken];
  [v3 setObject:lastReceivedCommandToken forKeyedSubscript:@"lastReceivedCommandToken"];

  lastReceivedDeclarationsToken = [(RMConduitConfig *)self lastReceivedDeclarationsToken];
  [v3 setObject:lastReceivedDeclarationsToken forKeyedSubscript:@"lastReceivedDeclarationsToken"];

  lastReceivedServerTokensTimestamp = [(RMConduitConfig *)self lastReceivedServerTokensTimestamp];
  [v3 setObject:lastReceivedServerTokensTimestamp forKeyedSubscript:@"lastReceivedServerTokensTimestamp"];

  state = [(RMConduitConfig *)self state];
  reportDetails = [state reportDetails];
  [v3 setObject:reportDetails forKeyedSubscript:@"state"];

  v10 = [v3 copy];

  return v10;
}

@end