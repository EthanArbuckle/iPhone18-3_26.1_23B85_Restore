@interface RecordVoiceMemoIntentResponse
- (RecordVoiceMemoIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation RecordVoiceMemoIntentResponse

- (RecordVoiceMemoIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = RecordVoiceMemoIntentResponse;
  v7 = [(RecordVoiceMemoIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(RecordVoiceMemoIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end