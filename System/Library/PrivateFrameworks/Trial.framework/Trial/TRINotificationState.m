@interface TRINotificationState
- (TRINotificationState)initWithToken:(int)a3;
@end

@implementation TRINotificationState

- (TRINotificationState)initWithToken:(int)a3
{
  v5.receiver = self;
  v5.super_class = TRINotificationState;
  result = [(TRINotificationState *)&v5 init];
  if (result)
  {
    result->_token = a3;
  }

  return result;
}

@end