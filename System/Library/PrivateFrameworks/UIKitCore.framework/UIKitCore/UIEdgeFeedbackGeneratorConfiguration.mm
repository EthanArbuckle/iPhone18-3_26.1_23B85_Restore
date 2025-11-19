@interface UIEdgeFeedbackGeneratorConfiguration
@end

@implementation UIEdgeFeedbackGeneratorConfiguration

void __60___UIEdgeFeedbackGeneratorConfiguration_sliderConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:8];
  [v3 setUserInteractingThresholdFeedback:v2];

  [v3 setUserInteractingThresholdFeedbackUpdateBlock:&__block_literal_global_160];
  [v3 setHidFeedbackPatternName:0x1EFB24D90];
}

void __60___UIEdgeFeedbackGeneratorConfiguration_sliderConfiguration__block_invoke_2(double a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v3 = fmin(fmax(a1 * 0.0005, 0.3), 0.6);
  v5 = [a3 hapticParameters];
  *&v4 = v3;
  [v5 setVolume:v4];
}

void __71___UIEdgeFeedbackGeneratorConfiguration_swipePresentationConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  [v4 setAnimatingThresholdFeedback:v2];

  [v4 setAnimatingThresholdFeedbackUpdateBlock:&__block_literal_global_167];
  v3 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  [v4 setUserInteractingThresholdFeedback:v3];

  [v4 setUserInteractingThresholdFeedbackUpdateBlock:&__block_literal_global_169];
}

void __71___UIEdgeFeedbackGeneratorConfiguration_swipePresentationConfiguration__block_invoke_2(double a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v3 = fmin(fmax(a1 * 0.00025, 0.4), 0.4);
  v5 = [a3 hapticParameters];
  *&v4 = v3;
  [v5 setVolume:v4];
}

void __71___UIEdgeFeedbackGeneratorConfiguration_swipePresentationConfiguration__block_invoke_3(double a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v3 = fmin(fmax(a1 * 0.00025, 0.4), 0.4);
  v5 = [a3 hapticParameters];
  *&v4 = v3;
  [v5 setVolume:v4];
}

void __59___UIEdgeFeedbackGeneratorConfiguration__zoomConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v3 = [v5 hapticParameters];
  LODWORD(v4) = 0.5;
  [v3 setVolume:v4];

  [v2 setUserInteractingReleaseFeedback:v5];
  [v2 setHidFeedbackPatternName:0x1EFB493D0];
}

@end