@interface UIClickFeedbackGeneratorConfiguration
@end

@implementation UIClickFeedbackGeneratorConfiguration

void __62___UIClickFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:23382 systemSoundID:1519];
  v4 = [v3 hapticParameters];
  LODWORD(v5) = 1.0;
  [v4 setVolume:v5];

  [v3 setHapticOutputMode:3];
  [v3 _setCategory:0x1EFB4AA30];
  [v2 setClickDownFeedback:v3];

  v6 = _UIClickAudioFeedback(0.5);
  [v2 setClickDownAudioFeedback:v6];

  v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:23382 systemSoundID:1519];
  v8 = [v7 hapticParameters];
  LODWORD(v9) = 1.0;
  [v8 setVolume:v9];

  [v7 setHapticOutputMode:3];
  [v7 _setCategory:0x1EFB4AA30];
  [v2 setClickUpFeedback:v7];

  v10 = _UIClickAudioFeedback(0.4);
  [v2 setClickUpAudioFeedback:v10];
}

@end