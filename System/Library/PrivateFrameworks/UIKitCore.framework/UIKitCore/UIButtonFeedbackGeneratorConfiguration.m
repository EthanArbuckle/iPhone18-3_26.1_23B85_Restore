@interface UIButtonFeedbackGeneratorConfiguration
@end

@implementation UIButtonFeedbackGeneratorConfiguration

void __63___UIButtonFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = _UISystemSoundIDNone;
  v3 = a2;
  v4 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29526 systemSoundID:v2];
  v5 = [v4 hapticParameters];
  LODWORD(v6) = 1057384038;
  [v5 setVolume:v6];

  [v3 setInteractionStartedFeedback:v4];
  v9 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:29526 systemSoundID:_UISystemSoundIDNone];
  v7 = [v9 hapticParameters];
  LODWORD(v8) = 1048995430;
  [v7 setVolume:v8];

  [v3 setInteractionEndedFeedback:v9];
}

void __65___UIButtonFeedbackGeneratorConfiguration_prominentConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = _UISystemSoundIDNone;
  v3 = a2;
  v4 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:23382 systemSoundID:v2];
  v5 = [v4 hapticParameters];
  LODWORD(v6) = 1054448026;
  [v5 setVolume:v6];

  [v3 setInteractionStartedFeedback:v4];
  v9 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:23382 systemSoundID:_UISystemSoundIDNone];
  v7 = [v9 hapticParameters];
  LODWORD(v8) = 1046059418;
  [v7 setVolume:v8];

  [v3 setInteractionEndedFeedback:v9];
}

@end