@interface RMConduitState
- (id)reportDetails;
@end

@implementation RMConduitState

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMConduitState *)self enrollmentToken];
  [v3 setObject:v4 forKeyedSubscript:@"enrollmentToken"];

  v5 = [NSNumber numberWithShort:[(RMConduitState *)self errorState]];
  [v3 setObject:v5 forKeyedSubscript:@"errorState"];

  v6 = [(RMConduitState *)self lastReceivedCommandToken];
  [v3 setObject:v6 forKeyedSubscript:@"lastReceivedCommandToken"];

  v7 = [(RMConduitState *)self lastReceivedDeclarationsToken];
  [v3 setObject:v7 forKeyedSubscript:@"lastReceivedDeclarationsToken"];

  v8 = [(RMConduitState *)self lastReceivedServerTokensTimestamp];
  [v3 setObject:v8 forKeyedSubscript:@"lastReceivedServerTokensTimestamp"];

  v9 = [(RMConduitState *)self lastProcessedCommandToken];
  [v3 setObject:v9 forKeyedSubscript:@"lastProcessedCommandToken"];

  v10 = [(RMConduitState *)self lastProcessedDeclarationsToken];
  [v3 setObject:v10 forKeyedSubscript:@"lastProcessedDeclarationsToken"];

  v11 = [(RMConduitState *)self lastReceivedServerTokensFromServerTimestamp];
  [v3 setObject:v11 forKeyedSubscript:@"lastReceivedServerTokensFromServerTimestamp"];

  v12 = [v3 copy];

  return v12;
}

@end