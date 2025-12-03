@interface ConfigurationIntentResponse
- (ConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ConfigurationIntentResponse

- (ConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ConfigurationIntentResponse;
  v7 = [(ConfigurationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ConfigurationIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end