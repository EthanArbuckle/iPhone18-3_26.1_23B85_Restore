@interface WFSensitiveSmartPromptIntentResponse
- (WFSensitiveSmartPromptIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation WFSensitiveSmartPromptIntentResponse

- (WFSensitiveSmartPromptIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = WFSensitiveSmartPromptIntentResponse;
  v7 = [(WFSensitiveSmartPromptIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(WFSensitiveSmartPromptIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end