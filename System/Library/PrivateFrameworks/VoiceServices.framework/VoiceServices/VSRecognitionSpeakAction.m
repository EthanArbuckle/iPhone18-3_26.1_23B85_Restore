@interface VSRecognitionSpeakAction
- (VSRecognitionSpeakAction)initWithSpokenFeedbackString:(id)a3 willTerminate:(BOOL)a4;
@end

@implementation VSRecognitionSpeakAction

- (VSRecognitionSpeakAction)initWithSpokenFeedbackString:(id)a3 willTerminate:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = VSRecognitionSpeakAction;
  v6 = [(VSRecognitionSpeakAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VSRecognitionAction *)v6 setSpokenFeedbackString:a3];
    *(&v7->super + 41) = a4;
  }

  return v7;
}

@end