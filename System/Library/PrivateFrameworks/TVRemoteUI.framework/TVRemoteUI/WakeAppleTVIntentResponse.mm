@interface WakeAppleTVIntentResponse
- (WakeAppleTVIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation WakeAppleTVIntentResponse

- (WakeAppleTVIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = WakeAppleTVIntentResponse;
  v7 = [(WakeAppleTVIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(WakeAppleTVIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end