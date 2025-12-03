@interface SwitchUserAccountIntentResponse
- (SwitchUserAccountIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation SwitchUserAccountIntentResponse

- (SwitchUserAccountIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = SwitchUserAccountIntentResponse;
  v7 = [(SwitchUserAccountIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(SwitchUserAccountIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end