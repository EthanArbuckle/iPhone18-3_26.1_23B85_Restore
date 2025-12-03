@interface LaunchTVAppIntentResponse
- (LaunchTVAppIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation LaunchTVAppIntentResponse

- (LaunchTVAppIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = LaunchTVAppIntentResponse;
  v7 = [(LaunchTVAppIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(LaunchTVAppIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end