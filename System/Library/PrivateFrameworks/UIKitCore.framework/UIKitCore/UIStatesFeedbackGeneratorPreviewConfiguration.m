@interface UIStatesFeedbackGeneratorPreviewConfiguration
@end

@implementation UIStatesFeedbackGeneratorPreviewConfiguration

void __70___UIStatesFeedbackGeneratorPreviewConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = a2;
  v22 = [v2 dictionary];
  v4 = [objc_opt_class() keyFromState:0 toState:@"preview"];
  v5 = objc_alloc_init(_UIFeedbackStateChangeConfiguration);
  v6 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20309 systemSoundID:1519];
  v7 = [v6 hapticParameters];
  LODWORD(v8) = 1064094925;
  [v7 setVolume:v8];

  [v6 _setCategory:0x1EFB4AA30];
  [(_UIFeedbackStateChangeConfiguration *)v5 setThresholdFeedback:v6];
  [v22 setObject:v5 forKeyedSubscript:v4];

  v9 = [objc_opt_class() keyFromState:0 toState:@"commit"];
  v10 = objc_alloc_init(_UIFeedbackStateChangeConfiguration);
  v11 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20311 systemSoundID:1520];
  v12 = [v11 hapticParameters];
  LODWORD(v13) = 1062417203;
  [v12 setVolume:v13];

  [v11 _setCategory:0x1EFB4AA30];
  [(_UIFeedbackStateChangeConfiguration *)v10 setThresholdFeedback:v11];
  [v22 setObject:v10 forKeyedSubscript:v9];

  v14 = [objc_opt_class() keyFromState:0 toState:@"cancel"];
  v15 = objc_alloc_init(_UIFeedbackStateChangeConfiguration);
  v16 = +[UIDevice currentDevice];
  v17 = [v16 _feedbackSupportLevel];

  if (v17 < 2)
  {
    v18 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1521];
  }

  else
  {
    v18 = +[_UIFeedbackPattern feedbackPattern];
    v19 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20309 systemSoundID:_UISystemSoundIDNone];
    [v18 addFeedback:v19 atTime:0.0];

    v20 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20309 systemSoundID:_UISystemSoundIDNone];
    [v18 addFeedback:v20 atTime:0.07];

    v21 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:20309 systemSoundID:_UISystemSoundIDNone];
    [v18 addFeedback:v21 atTime:0.14];

    [v18 _setCategory:0x1EFB4AA30];
  }

  [(_UIFeedbackStateChangeConfiguration *)v15 setThresholdFeedback:v18];

  [v22 setObject:v15 forKeyedSubscript:v14];
  [v3 setStateChangeConfigurations:v22];
}

@end