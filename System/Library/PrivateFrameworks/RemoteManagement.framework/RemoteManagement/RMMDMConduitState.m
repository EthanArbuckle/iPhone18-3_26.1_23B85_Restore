@interface RMMDMConduitState
- (id)reportDetails;
@end

@implementation RMMDMConduitState

- (id)reportDetails
{
  v11.receiver = self;
  v11.super_class = RMMDMConduitState;
  v3 = [(RMConduitState *)&v11 reportDetails];
  v4 = [v3 mutableCopy];

  v5 = [(RMMDMConduitState *)self localRetryAfterDate];
  [v4 setObject:v5 forKeyedSubscript:@"localRetryAfterDate"];

  v6 = [NSNumber numberWithLongLong:[(RMMDMConduitState *)self numberOfConsecutiveErrors]];
  [v4 setObject:v6 forKeyedSubscript:@"numberOfConsecutiveErrors"];

  v7 = [NSNumber numberWithLongLong:[(RMMDMConduitState *)self numberOfConsecutiveFailures]];
  [v4 setObject:v7 forKeyedSubscript:@"numberOfConsecutiveFailures"];

  v8 = [(RMMDMConduitState *)self serverRetryAfterDate];
  [v4 setObject:v8 forKeyedSubscript:@"serverRetryAfterDate"];

  v9 = [v4 copy];

  return v9;
}

@end