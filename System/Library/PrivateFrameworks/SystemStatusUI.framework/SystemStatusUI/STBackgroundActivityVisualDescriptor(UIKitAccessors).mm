@interface STBackgroundActivityVisualDescriptor(UIKitAccessors)
- (double)verticalOffset;
- (id)backgroundColor;
- (id)preferredVisualEffect;
@end

@implementation STBackgroundActivityVisualDescriptor(UIKitAccessors)

- (double)verticalOffset
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  [self verticalOffsetInPixels];
  return v5 / v4;
}

- (id)backgroundColor
{
  backgroundColorRepresentation = [self backgroundColorRepresentation];
  uIColor = [backgroundColorRepresentation UIColor];

  return uIColor;
}

- (id)preferredVisualEffect
{
  preferredVisualEffectName = [self preferredVisualEffectName];
  if (BSEqualStrings())
  {
    v2 = [MEMORY[0x277D75210] effectWithStyle:2];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end