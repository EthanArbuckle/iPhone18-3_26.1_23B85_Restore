@interface UIImpactFeedbackGeneratorConfiguration
@end

@implementation UIImpactFeedbackGeneratorConfiguration

void __63___UIImpactFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:5];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1060320051;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setMinimumInterval:0.0];
}

void __61___UIImpactFeedbackGeneratorConfiguration_lightConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:8];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1060320051;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setMinimumInterval:0.0];
}

void __62___UIImpactFeedbackGeneratorConfiguration_strongConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:2];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1061997773;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setMinimumInterval:0.0];
}

void __60___UIImpactFeedbackGeneratorConfiguration_softConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:10];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1061830001;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setMinimumInterval:0.0];
}

void __61___UIImpactFeedbackGeneratorConfiguration_rigidConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:11];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1062417203;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setMinimumInterval:0.0];
}

void __63___UIImpactFeedbackGeneratorConfiguration_refreshConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:8];
  v3 = [v2 hapticParameters];
  LODWORD(v4) = 1060320051;
  [v3 setVolume:v4];

  [v5 setFeedback:v2];
  [v5 setHidFeedbackPatternName:0x1EFB43270];
  [v5 setMinimumInterval:0.0];
}

@end