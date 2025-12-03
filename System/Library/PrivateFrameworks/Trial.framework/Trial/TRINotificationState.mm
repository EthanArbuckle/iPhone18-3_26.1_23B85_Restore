@interface TRINotificationState
- (TRINotificationState)initWithToken:(int)token;
@end

@implementation TRINotificationState

- (TRINotificationState)initWithToken:(int)token
{
  v5.receiver = self;
  v5.super_class = TRINotificationState;
  result = [(TRINotificationState *)&v5 init];
  if (result)
  {
    result->_token = token;
  }

  return result;
}

@end