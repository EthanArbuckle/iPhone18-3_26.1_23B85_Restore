@interface SBHTintedIconImageAppearance
- (SBHTintedIconImageAppearance)initWithAppearanceType:(int64_t)a3 tintColor:(id)a4;
@end

@implementation SBHTintedIconImageAppearance

- (SBHTintedIconImageAppearance)initWithAppearanceType:(int64_t)a3 tintColor:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SBHTintedIconImageAppearance;
  v7 = [(SBHIconImageAppearance *)&v11 initWithAppearanceType:a3 tintColor:v6];
  if (v7)
  {
    v8 = [v6 copy];
    tintColor = v7->_tintColor;
    v7->_tintColor = v8;
  }

  return v7;
}

@end