@interface LaunchRemoteIntentResponse
- (LaunchRemoteIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation LaunchRemoteIntentResponse

- (LaunchRemoteIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = LaunchRemoteIntentResponse;
  v7 = [(LaunchRemoteIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(LaunchRemoteIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end