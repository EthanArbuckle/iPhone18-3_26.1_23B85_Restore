@interface SBHTintedIconImageAppearance
- (SBHTintedIconImageAppearance)initWithAppearanceType:(int64_t)type tintColor:(id)color;
@end

@implementation SBHTintedIconImageAppearance

- (SBHTintedIconImageAppearance)initWithAppearanceType:(int64_t)type tintColor:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = SBHTintedIconImageAppearance;
  v7 = [(SBHIconImageAppearance *)&v11 initWithAppearanceType:type tintColor:colorCopy];
  if (v7)
  {
    v8 = [colorCopy copy];
    tintColor = v7->_tintColor;
    v7->_tintColor = v8;
  }

  return v7;
}

@end