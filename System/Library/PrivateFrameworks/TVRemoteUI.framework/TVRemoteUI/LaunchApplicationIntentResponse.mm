@interface LaunchApplicationIntentResponse
- (LaunchApplicationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation LaunchApplicationIntentResponse

- (LaunchApplicationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = LaunchApplicationIntentResponse;
  v7 = [(LaunchApplicationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(LaunchApplicationIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end