@interface WFSmartPromptIntentResponse
- (WFSmartPromptIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation WFSmartPromptIntentResponse

- (WFSmartPromptIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = WFSmartPromptIntentResponse;
  v7 = [(WFSmartPromptIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(WFSmartPromptIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end