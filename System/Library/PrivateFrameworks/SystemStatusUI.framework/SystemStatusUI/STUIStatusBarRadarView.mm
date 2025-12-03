@interface STUIStatusBarRadarView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarRadarView)initWithFrame:(CGRect)frame;
- (id)accessibilityUserInputLabels;
- (void)_updateTintColor;
- (void)applyStyleAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation STUIStatusBarRadarView

- (STUIStatusBarRadarView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarRadarView;
  v3 = [(STUIStatusBarImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(STUIStatusBarRadarView *)v3 layer];
    [layer setCornerRadius:12.0];

    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v7 = [(STUIStatusBarRadarView *)v4 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel__updateTintColor];

    [(STUIStatusBarRadarView *)v4 _updateTintColor];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarRadarView;
  [(STUIStatusBarImageView *)&v4 applyStyleAttributes:attributes];
  [(STUIStatusBarRadarView *)self _updateTintColor];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  if (nextFocusedItem == self)
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(STUIStatusBarRadarView *)self setBackgroundColor:_carSystemFocusColor];
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
  isFocused = [(STUIStatusBarRadarView *)self isFocused];
  if (isFocused)
  {
    traitCollection = [(STUIStatusBarRadarView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 1)
    {

LABEL_7:
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_9;
    }
  }

  traitCollection2 = [(STUIStatusBarRadarView *)self traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  if (isFocused)
  {
  }

  if (userInterfaceStyle == 2)
  {
    goto LABEL_7;
  }

  whiteColor = [MEMORY[0x277D75348] blackColor];
LABEL_9:
  v8 = whiteColor;
  [(STUIStatusBarRadarView *)self setTintColor:whiteColor];
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