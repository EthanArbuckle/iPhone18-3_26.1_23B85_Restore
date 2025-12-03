@interface VSRecognitionSpeakAction
- (VSRecognitionSpeakAction)initWithSpokenFeedbackString:(id)string willTerminate:(BOOL)terminate;
@end

@implementation VSRecognitionSpeakAction

- (VSRecognitionSpeakAction)initWithSpokenFeedbackString:(id)string willTerminate:(BOOL)terminate
{
  v9.receiver = self;
  v9.super_class = VSRecognitionSpeakAction;
  v6 = [(VSRecognitionSpeakAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VSRecognitionAction *)v6 setSpokenFeedbackString:string];
    *(&v7->super + 41) = terminate;
  }

  return v7;
}

@end