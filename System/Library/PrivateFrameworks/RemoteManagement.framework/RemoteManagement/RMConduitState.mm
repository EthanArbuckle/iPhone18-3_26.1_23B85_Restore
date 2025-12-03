@interface RMConduitState
- (id)reportDetails;
@end

@implementation RMConduitState

- (id)reportDetails
{
  v3 = objc_opt_new();
  enrollmentToken = [(RMConduitState *)self enrollmentToken];
  [v3 setObject:enrollmentToken forKeyedSubscript:@"enrollmentToken"];

  v5 = [NSNumber numberWithShort:[(RMConduitState *)self errorState]];
  [v3 setObject:v5 forKeyedSubscript:@"errorState"];

  lastReceivedCommandToken = [(RMConduitState *)self lastReceivedCommandToken];
  [v3 setObject:lastReceivedCommandToken forKeyedSubscript:@"lastReceivedCommandToken"];

  lastReceivedDeclarationsToken = [(RMConduitState *)self lastReceivedDeclarationsToken];
  [v3 setObject:lastReceivedDeclarationsToken forKeyedSubscript:@"lastReceivedDeclarationsToken"];

  lastReceivedServerTokensTimestamp = [(RMConduitState *)self lastReceivedServerTokensTimestamp];
  [v3 setObject:lastReceivedServerTokensTimestamp forKeyedSubscript:@"lastReceivedServerTokensTimestamp"];

  lastProcessedCommandToken = [(RMConduitState *)self lastProcessedCommandToken];
  [v3 setObject:lastProcessedCommandToken forKeyedSubscript:@"lastProcessedCommandToken"];

  lastProcessedDeclarationsToken = [(RMConduitState *)self lastProcessedDeclarationsToken];
  [v3 setObject:lastProcessedDeclarationsToken forKeyedSubscript:@"lastProcessedDeclarationsToken"];

  lastReceivedServerTokensFromServerTimestamp = [(RMConduitState *)self lastReceivedServerTokensFromServerTimestamp];
  [v3 setObject:lastReceivedServerTokensFromServerTimestamp forKeyedSubscript:@"lastReceivedServerTokensFromServerTimestamp"];

  v12 = [v3 copy];

  return v12;
}

@end