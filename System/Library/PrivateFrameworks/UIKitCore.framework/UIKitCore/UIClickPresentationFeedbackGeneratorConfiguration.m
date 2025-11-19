@interface UIClickPresentationFeedbackGeneratorConfiguration
@end

@implementation UIClickPresentationFeedbackGeneratorConfiguration

void __70___UIClickPresentationFeedbackGeneratorConfiguration_previewedPattern__block_invoke()
{
  v0 = +[_UIFeedbackPattern feedbackPattern];
  v1 = _MergedGlobals_1328;
  _MergedGlobals_1328 = v0;

  [_MergedGlobals_1328 _setCategory:0x1EFB4AA30];
  v11 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:23382 systemSoundID:1519];
  v2 = [v11 hapticParameters];
  LODWORD(v3) = 1.0;
  [v2 setVolume:v3];

  [v11 setHapticOutputMode:3];
  [v11 _setCategory:0x1EFB4AA30];
  if (v11)
  {
    [_MergedGlobals_1328 addFeedback:v11 atTime:0.0];
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 _feedbackSupportLevel];

  if (v5 >= 2)
  {
    v6 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:32555 systemSoundID:_UISystemSoundIDNone];
    v7 = [v6 audioParameters];
    LODWORD(v8) = *"\nף=";
    [v7 setVolume:v8];

    v9 = [v6 audioParameters];
    LODWORD(v10) = 1036831949;
    [v9 setTransposition:v10];

    if (v6)
    {
      [_MergedGlobals_1328 addFeedback:v6 atTime:0.0];
    }
  }
}

void __68___UIClickPresentationFeedbackGeneratorConfiguration_draggedPattern__block_invoke()
{
  v0 = +[_UIFeedbackPattern feedbackPattern];
  v1 = qword_1ED4A22C0;
  qword_1ED4A22C0 = v0;

  [qword_1ED4A22C0 _setCategory:0x1EFB4AA30];
  v5 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:8023 systemSoundID:1519];
  v2 = [v5 hapticParameters];
  LODWORD(v3) = 1055957975;
  [v2 setVolume:v3];

  [v5 setHapticOutputMode:3];
  [v5 _setCategory:0x1EFB4AA30];
  v4 = v5;
  if (v5)
  {
    [qword_1ED4A22C0 addFeedback:v5 atTime:0.0];
    v4 = v5;
  }
}

@end