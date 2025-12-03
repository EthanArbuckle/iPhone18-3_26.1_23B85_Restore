@interface VSBaseHelpResultHandler
- (id)actionForRecognitionResult:(id)result;
@end

@implementation VSBaseHelpResultHandler

- (id)actionForRecognitionResult:(id)result
{
  if (MGGetBoolAnswer())
  {
    v3 = @"HELP_STRING";
  }

  else
  {
    v3 = @"HELP_STRING_NO_TELEPHONY";
  }

  v4 = [[VSRecognitionSpeakAction alloc] initWithSpokenFeedbackString:VSBaseLocalizedString(@"Help" willTerminate:{v3), 0}];

  return v4;
}

@end