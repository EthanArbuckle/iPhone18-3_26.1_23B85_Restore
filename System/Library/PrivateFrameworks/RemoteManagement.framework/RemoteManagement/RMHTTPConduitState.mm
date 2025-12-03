@interface RMHTTPConduitState
- (id)reportDetails;
@end

@implementation RMHTTPConduitState

- (id)reportDetails
{
  v17.receiver = self;
  v17.super_class = RMHTTPConduitState;
  reportDetails = [(RMConduitState *)&v17 reportDetails];
  v4 = [reportDetails mutableCopy];

  chosenAuthenticationScheme = [(RMHTTPConduitState *)self chosenAuthenticationScheme];
  [v4 setObject:chosenAuthenticationScheme forKeyedSubscript:@"chosenAuthenticationScheme"];

  localRetryAfterDate = [(RMHTTPConduitState *)self localRetryAfterDate];
  [v4 setObject:localRetryAfterDate forKeyedSubscript:@"localRetryAfterDate"];

  v7 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveAuthErrors]];
  [v4 setObject:v7 forKeyedSubscript:@"numberOfConsecutiveAuthErrors"];

  v8 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveErrors]];
  [v4 setObject:v8 forKeyedSubscript:@"numberOfConsecutiveErrors"];

  v9 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self numberOfConsecutiveFailures]];
  [v4 setObject:v9 forKeyedSubscript:@"numberOfConsecutiveFailures"];

  pushEnvironment = [(RMHTTPConduitState *)self pushEnvironment];
  [v4 setObject:pushEnvironment forKeyedSubscript:@"pushEnvironment"];

  pushTopic = [(RMHTTPConduitState *)self pushTopic];
  [v4 setObject:pushTopic forKeyedSubscript:@"pushTopic"];

  referralBaseURL = [(RMHTTPConduitState *)self referralBaseURL];
  [v4 setObject:referralBaseURL forKeyedSubscript:@"referralBaseURL"];

  v13 = [NSNumber numberWithLongLong:[(RMHTTPConduitState *)self referralCount]];
  [v4 setObject:v13 forKeyedSubscript:@"referralCount"];

  serverRetryAfterDate = [(RMHTTPConduitState *)self serverRetryAfterDate];
  [v4 setObject:serverRetryAfterDate forKeyedSubscript:@"serverRetryAfterDate"];

  v15 = [v4 copy];

  return v15;
}

@end