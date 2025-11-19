@interface PAXPCActivityCancellationToken
- (PAXPCActivityCancellationToken)initWithActivity:(id)a3;
@end

@implementation PAXPCActivityCancellationToken

- (PAXPCActivityCancellationToken)initWithActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PAXPCActivityCancellationToken;
  v6 = [(PAXPCActivityCancellationToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, a3);
  }

  return v7;
}

@end