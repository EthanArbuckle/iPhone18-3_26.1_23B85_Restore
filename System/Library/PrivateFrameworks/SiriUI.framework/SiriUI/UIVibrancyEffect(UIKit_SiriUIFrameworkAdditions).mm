@interface UIVibrancyEffect(UIKit_SiriUIFrameworkAdditions)
+ (id)siriui_platterVibrancyEffect;
+ (id)siriui_userUtteranceEditModeVibrancyEffect;
@end

@implementation UIVibrancyEffect(UIKit_SiriUIFrameworkAdditions)

+ (id)siriui_platterVibrancyEffect
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:0.8];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.8 green:0.85 blue:0.95 alpha:0.8];
  v4 = [self lightVibrantEffectWithBurnColor:v2 darkenColor:v3 compositingColor:0];

  return v4;
}

+ (id)siriui_userUtteranceEditModeVibrancyEffect
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:0.8];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.8];
  v4 = [self lightVibrantEffectWithBurnColor:v2 darkenColor:v3 compositingColor:0];

  return v4;
}

@end