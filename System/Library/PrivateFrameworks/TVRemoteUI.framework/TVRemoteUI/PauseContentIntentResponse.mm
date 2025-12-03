@interface PauseContentIntentResponse
- (PauseContentIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation PauseContentIntentResponse

- (PauseContentIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = PauseContentIntentResponse;
  v7 = [(PauseContentIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(PauseContentIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end