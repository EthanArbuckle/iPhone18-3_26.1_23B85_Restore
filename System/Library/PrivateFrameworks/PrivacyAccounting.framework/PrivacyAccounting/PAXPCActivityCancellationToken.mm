@interface PAXPCActivityCancellationToken
- (PAXPCActivityCancellationToken)initWithActivity:(id)activity;
@end

@implementation PAXPCActivityCancellationToken

- (PAXPCActivityCancellationToken)initWithActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = PAXPCActivityCancellationToken;
  v6 = [(PAXPCActivityCancellationToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, activity);
  }

  return v7;
}

@end