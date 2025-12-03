@interface LaunchScreenSaverIntentResponse
- (LaunchScreenSaverIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation LaunchScreenSaverIntentResponse

- (LaunchScreenSaverIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = LaunchScreenSaverIntentResponse;
  v7 = [(LaunchScreenSaverIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(LaunchScreenSaverIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end