@interface RMHTTPConduitState
- (id)reportDetails;
@end

@implementation RMHTTPConduitState

- (id)reportDetails
{
  v17.receiver = self;
  v17.super_class = RMHTTPConduitState;
  v3 = [(RMConduitState *)&v17 reportDetails];
  v4 = [v3 mutableCopy];

  v5 = [(RMHTTPConduitState *)self chosenAuthenticationScheme];
  [v4 setObject:v5 forKeyedSubscript:@"chosenAuthenticationScheme"];

  v6 = [(RMHTTPConduitState *)self localRetryAfterDate];
  [v4 setObject:v6 forKeyedSubscript:@"localRetryAfterDate"];

  v7 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveAuthErrors]];
  [v4 setObject:v7 forKeyedSubscript:@"numberOfConsecutiveAuthErrors"];

  v8 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveErrors]];
  [v4 setObject:v8 forKeyedSubscript:@"numberOfConsecutiveErrors"];

  v9 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveFailures]];
  [v4 setObject:v9 forKeyedSubscript:@"numberOfConsecutiveFailures"];

  v10 = [(RMHTTPConduitState *)self pushEnvironment];
  [v4 setObject:v10 forKeyedSubscript:@"pushEnvironment"];

  v11 = [(RMHTTPConduitState *)self pushTopic];
  [v4 setObject:v11 forKeyedSubscript:@"pushTopic"];

  v12 = [(RMHTTPConduitState *)self referralBaseURL];
  [v4 setObject:v12 forKeyedSubscript:@"referralBaseURL"];

  v13 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self referralCount]];
  [v4 setObject:v13 forKeyedSubscript:@"referralCount"];

  v14 = [(RMHTTPConduitState *)self serverRetryAfterDate];
  [v4 setObject:v14 forKeyedSubscript:@"serverRetryAfterDate"];

  v15 = [v4 copy];

  return v15;
}

@end