@interface PAOngoingAccessIntervalState
- (PAOngoingAccessIntervalState)initWithAccess:(id)a3;
@end

@implementation PAOngoingAccessIntervalState

- (PAOngoingAccessIntervalState)initWithAccess:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PAOngoingAccessIntervalState;
  v6 = [(PAOngoingAccessIntervalState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_access, a3);
    v7->_retryCount = 0;
  }

  return v7;
}

@end