@interface ToggleCaptionsIntentResponse
- (ToggleCaptionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ToggleCaptionsIntentResponse

- (ToggleCaptionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ToggleCaptionsIntentResponse;
  v7 = [(ToggleCaptionsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ToggleCaptionsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end