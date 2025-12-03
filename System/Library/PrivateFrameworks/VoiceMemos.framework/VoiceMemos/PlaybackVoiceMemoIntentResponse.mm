@interface PlaybackVoiceMemoIntentResponse
- (PlaybackVoiceMemoIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation PlaybackVoiceMemoIntentResponse

- (PlaybackVoiceMemoIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = PlaybackVoiceMemoIntentResponse;
  v7 = [(PlaybackVoiceMemoIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(PlaybackVoiceMemoIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end