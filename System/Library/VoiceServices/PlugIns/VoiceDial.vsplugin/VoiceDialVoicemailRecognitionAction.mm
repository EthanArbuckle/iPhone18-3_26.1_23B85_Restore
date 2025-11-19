@interface VoiceDialVoicemailRecognitionAction
- (VoiceDialVoicemailRecognitionAction)init;
@end

@implementation VoiceDialVoicemailRecognitionAction

- (VoiceDialVoicemailRecognitionAction)init
{
  v10.receiver = self;
  v10.super_class = VoiceDialVoicemailRecognitionAction;
  v2 = [(VoiceDialVoicemailRecognitionAction *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:@"tel:"];
    [(VSRecognitionURLAction *)v2 setURL:v3];
    v4 = VoiceDialBundle();
    v5 = [v4 localizedStringForKey:@"VOICEMAIL" value:&stru_2A1D19580 table:@"Feedback"];
    [(VSRecognitionAction *)v2 setResultDisplayString:v5];

    v6 = VoiceDialBundle();
    v7 = [v6 localizedStringForKey:@"CONFIRMED_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
    [(VSRecognitionAction *)v2 setStatusDisplayString:v7];

    v8 = VoiceDialSpokenLocalizedString(@"CONFIRMED_SPOKEN_VOICEMAIL");
    [(VSRecognitionAction *)v2 setSpokenFeedbackString:v8];
  }

  return v2;
}

@end