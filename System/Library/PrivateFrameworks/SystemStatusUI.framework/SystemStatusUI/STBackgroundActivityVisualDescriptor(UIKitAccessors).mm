@interface STBackgroundActivityVisualDescriptor(UIKitAccessors)
- (double)verticalOffset;
- (id)backgroundColor;
- (id)preferredVisualEffect;
@end

@implementation STBackgroundActivityVisualDescriptor(UIKitAccessors)

- (double)verticalOffset
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  [a1 verticalOffsetInPixels];
  return v5 / v4;
}

- (id)backgroundColor
{
  v1 = [a1 backgroundColorRepresentation];
  v2 = [v1 UIColor];

  return v2;
}

- (id)preferredVisualEffect
{
  v1 = [a1 preferredVisualEffectName];
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