@interface UIStatesFeedbackGeneratorSwipeActionConfiguration
@end

@implementation UIStatesFeedbackGeneratorSwipeActionConfiguration

void __74___UIStatesFeedbackGeneratorSwipeActionConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = a2;
  v14 = [v2 dictionary];
  v4 = [objc_opt_class() keyFromState:0 toState:@"confirm"];
  v5 = objc_alloc_init(_UIFeedbackStateChangeConfiguration);
  v6 = [_UIDiscreteFeedback discreteFeedbackForType:6];
  v7 = [v6 hapticParameters];
  LODWORD(v8) = 1060320051;
  [v7 setVolume:v8];

  [(_UIFeedbackStateChangeConfiguration *)v5 setThresholdFeedback:v6];
  [(_UIFeedbackStateChangeConfiguration *)v5 setHidThresholdFeedbackPatternName:0x1EFB181D0];
  [v14 setObject:v5 forKeyedSubscript:v4];

  v9 = [objc_opt_class() keyFromState:@"confirm" toState:0];
  v10 = objc_alloc_init(_UIFeedbackStateChangeConfiguration);
  v11 = [_UIDiscreteFeedback discreteFeedbackForType:9];
  v12 = [v11 hapticParameters];
  LODWORD(v13) = 1057803469;
  [v12 setVolume:v13];

  [(_UIFeedbackStateChangeConfiguration *)v10 setThresholdFeedback:v11];
  [(_UIFeedbackStateChangeConfiguration *)v10 setHidThresholdFeedbackPatternName:0x1EFB181D0];
  [v14 setObject:v10 forKeyedSubscript:v9];

  [v3 setStateChangeConfigurations:v14];
}

@end