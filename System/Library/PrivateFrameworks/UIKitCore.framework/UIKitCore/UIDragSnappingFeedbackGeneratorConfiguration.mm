@interface UIDragSnappingFeedbackGeneratorConfiguration
@end

@implementation UIDragSnappingFeedbackGeneratorConfiguration

void __69___UIDragSnappingFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:6];
  [v12 setInteractionStartedFeedback:v2];

  v3 = [_UIDiscreteFeedback discreteFeedbackForType:6];
  v4 = [v3 hapticParameters];
  LODWORD(v5) = 1058642330;
  [v4 setVolume:v5];

  [v12 setInteractionEndedFeedback:v3];
  v6 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v7 = [v6 hapticParameters];
  LODWORD(v8) = 1061997773;
  [v7 setVolume:v8];

  [v12 setTargetUpdatedFeedback:v6];
  v9 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v10 = [v9 hapticParameters];
  LODWORD(v11) = 1058642330;
  [v10 setVolume:v11];

  [v12 setObjectSnappedFeedback:v9];
  [v12 setHidObjectSnappedFeedbackPatternName:0x1EFB493B0];
}

@end