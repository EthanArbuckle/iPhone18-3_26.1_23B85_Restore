@interface ReduceLoudSoundsIntentResponse
- (ReduceLoudSoundsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ReduceLoudSoundsIntentResponse

- (ReduceLoudSoundsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ReduceLoudSoundsIntentResponse;
  v7 = [(ReduceLoudSoundsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ReduceLoudSoundsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end