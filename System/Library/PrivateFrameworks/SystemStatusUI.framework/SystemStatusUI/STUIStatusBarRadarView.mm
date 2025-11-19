@interface STUIStatusBarRadarView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarRadarView)initWithFrame:(CGRect)a3;
- (id)accessibilityUserInputLabels;
- (void)_updateTintColor;
- (void)applyStyleAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation STUIStatusBarRadarView

- (STUIStatusBarRadarView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarRadarView;
  v3 = [(STUIStatusBarImageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(STUIStatusBarRadarView *)v3 layer];
    [v5 setCornerRadius:12.0];

    v6 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v7 = [(STUIStatusBarRadarView *)v4 registerForTraitChanges:v6 withAction:sel__updateTintColor];

    [(STUIStatusBarRadarView *)v4 _updateTintColor];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarRadarView;
  [(STUIStatusBarImageView *)&v4 applyStyleAttributes:a3];
  [(STUIStatusBarRadarView *)self _updateTintColor];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];

  if (v5 == self)
  {
    v6 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(STUIStatusBarRadarView *)self setBackgroundColor:v6];
  }

  else
  {
    [(STUIStatusBarRadarView *)self setBackgroundColor:0];
  }

  [(STUIStatusBarRadarView *)self _updateTintColor];
}

- (CGSize)intrinsicContentSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateTintColor
{
  v4 = [(STUIStatusBarRadarView *)self isFocused];
  if (v4)
  {
    v2 = [(STUIStatusBarRadarView *)self traitCollection];
    if ([v2 userInterfaceStyle] == 1)
    {

LABEL_7:
      v7 = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_9;
    }
  }

  v5 = [(STUIStatusBarRadarView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v4)
  {
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277D75348] blackColor];
LABEL_9:
  v8 = v7;
  [(STUIStatusBarRadarView *)self setTintColor:v7];
}

- (id)accessibilityUserInputLabels
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Radar" value:@"Radar" table:0];
  v7[0] = v3;
  v4 = [v2 localizedStringForKey:@"Bug" value:@"Bug" table:0];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

@end