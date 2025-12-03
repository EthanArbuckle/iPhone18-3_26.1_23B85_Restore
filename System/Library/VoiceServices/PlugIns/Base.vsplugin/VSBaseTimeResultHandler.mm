@interface VSBaseTimeResultHandler
- (id)actionForRecognitionResult:(id)result;
@end

@implementation VSBaseTimeResultHandler

- (id)actionForRecognitionResult:(id)result
{
  v3 = +[NSDate date];
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  v5 = [v4 stringFromDate:v3];
  v6 = VSBaseLocalizedString(@"Time", @"TIME_STRING");
  if (v6)
  {
    v7 = [[NSString alloc] initWithFormat:v6, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [[VSRecognitionSpeakAction alloc] initWithSpokenFeedbackString:v8 willTerminate:1];

  return v9;
}

@end