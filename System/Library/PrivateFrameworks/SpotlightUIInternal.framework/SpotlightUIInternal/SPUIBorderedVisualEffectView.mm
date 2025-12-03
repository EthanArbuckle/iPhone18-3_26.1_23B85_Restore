@interface SPUIBorderedVisualEffectView
- (SPUIBorderedVisualEffectView)initWithEffect:(id)effect;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SPUIBorderedVisualEffectView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUIBorderedVisualEffectView;
  [(SPUIBorderedVisualEffectView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUIBorderedVisualEffectView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUIBorderedVisualEffectView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUIBorderedVisualEffectView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUIBorderedVisualEffectView;
  [(SPUIBorderedVisualEffectView *)&v3 didMoveToWindow];
  [(SPUIBorderedVisualEffectView *)self tlk_updateWithCurrentAppearance];
}

- (SPUIBorderedVisualEffectView)initWithEffect:(id)effect
{
  v9.receiver = self;
  v9.super_class = SPUIBorderedVisualEffectView;
  v3 = [(SPUIBorderedVisualEffectView *)&v9 initWithEffect:effect];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.06];
    cGColor = [v4 CGColor];
    contentView = [(SPUIBorderedVisualEffectView *)v3 contentView];
    layer = [contentView layer];
    [layer setBorderColor:cGColor];
  }

  return v3;
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v10.receiver = self;
  v10.super_class = SPUIBorderedVisualEffectView;
  appearanceCopy = appearance;
  [(SPUIBorderedVisualEffectView *)&v10 tlk_updateForAppearance:appearanceCopy];
  isDark = [appearanceCopy isDark];

  v6 = 0.0;
  if (isDark)
  {
    [MEMORY[0x277D6F1D8] pixelWidthForView:self];
    v6 = v7;
  }

  contentView = [(SPUIBorderedVisualEffectView *)self contentView];
  layer = [contentView layer];
  [layer setBorderWidth:v6];
}

@end