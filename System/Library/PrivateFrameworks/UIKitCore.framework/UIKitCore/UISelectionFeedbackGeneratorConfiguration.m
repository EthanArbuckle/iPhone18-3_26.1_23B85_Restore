@interface UISelectionFeedbackGeneratorConfiguration
@end

@implementation UISelectionFeedbackGeneratorConfiguration

void __66___UISelectionFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 1053609165;
  [v3 setVolume:v4];

  [v2 setFeedback:v5];
  [v2 setHidFeedbackPatternName:0x1EFB49330];
  [v2 setMinimumInterval:0.04];
}

void __64___UISelectionFeedbackGeneratorConfiguration_lightConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 1050253722;
  [v3 setVolume:v4];

  [v2 setFeedback:v5];
  [v2 setHidFeedbackPatternName:0x1EFB49330];
  [v2 setMinimumInterval:0.04];
}

void __65___UISelectionFeedbackGeneratorConfiguration_strongConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 0.5;
  [v3 setVolume:v4];

  [v2 setFeedback:v5];
  [v2 setHidFeedbackPatternName:0x1EFB49350];
  [v2 setMinimumInterval:0.04];
}

void __65___UISelectionFeedbackGeneratorConfiguration_pickerConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:32556 systemSoundID:1157];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 0.5;
  [v3 setVolume:v4];

  [v5 _setCategory:0x1EFB4AA50];
  [v2 setFeedback:v5];
  [v2 setHidFeedbackPatternName:0];
  [v2 setMinimumInterval:0.04];
  [v2 setMaxSpeed:50.0];
  [v2 setSlowAudioVolume:0.2];
  [v2 setFastAudioVolume:0.3];
  [v2 setSlowHapticVolume:0.4];
  [v2 setFastHapticVolume:0.5];
}

void __70___UISelectionFeedbackGeneratorConfiguration_pageControlConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 1053609165;
  [v3 setVolume:v4];

  [v2 setFeedback:v5];
  [v2 setHidFeedbackPatternName:@"page_control_selection"];
  [v2 setMinimumInterval:0.04];
}

@end