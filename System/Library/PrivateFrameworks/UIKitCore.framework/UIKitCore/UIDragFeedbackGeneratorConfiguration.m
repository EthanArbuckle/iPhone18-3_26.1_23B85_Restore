@interface UIDragFeedbackGeneratorConfiguration
@end

@implementation UIDragFeedbackGeneratorConfiguration

void __61___UIDragFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:6];
  [v9 setInteractionStartedFeedback:v2];

  v3 = [_UIDiscreteFeedback discreteFeedbackForType:6];
  v4 = [v3 hapticParameters];
  LODWORD(v5) = 1058642330;
  [v4 setVolume:v5];

  [v9 setInteractionEndedFeedback:v3];
  v6 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v7 = [v6 hapticParameters];
  LODWORD(v8) = 1061997773;
  [v7 setVolume:v8];

  [v9 setTargetUpdatedFeedback:v6];
  [v9 setHidTargetUpdatedFeedbackPatternName:0x1EFB493B0];
}

@end