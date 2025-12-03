@interface ToggleSystemAppearanceIntentResponse
- (ToggleSystemAppearanceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ToggleSystemAppearanceIntentResponse

- (ToggleSystemAppearanceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ToggleSystemAppearanceIntentResponse;
  v7 = [(ToggleSystemAppearanceIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ToggleSystemAppearanceIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end