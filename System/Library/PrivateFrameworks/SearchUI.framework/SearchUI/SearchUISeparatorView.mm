@interface SearchUISeparatorView
+ (id)separatorColorForAppearance:(id)appearance;
+ (unint64_t)separatorProminenceForAppearance:(id)appearance;
- (CGSize)intrinsicContentSize;
- (SearchUISeparatorView)init;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchUISeparatorView

- (SearchUISeparatorView)init
{
  v3.receiver = self;
  v3.super_class = SearchUISeparatorView;
  result = [(TLKProminenceView *)&v3 initWithProminence:3];
  if (result)
  {
    result->_separatorHeight = 1.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  [(SearchUISeparatorView *)self separatorHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUISeparatorView;
  [(TLKProminenceView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUISeparatorView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUISeparatorView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUISeparatorView *)self traitCollection];
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
  v3.super_class = SearchUISeparatorView;
  [(TLKProminenceView *)&v3 didMoveToWindow];
  [(SearchUISeparatorView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = SearchUISeparatorView;
  appearanceCopy = appearance;
  [(TLKProminenceView *)&v6 tlk_updateForAppearance:appearanceCopy];
  v5 = [objc_opt_class() separatorProminenceForAppearance:{appearanceCopy, v6.receiver, v6.super_class}];

  [(TLKProminenceView *)self setProminence:v5];
}

+ (unint64_t)separatorProminenceForAppearance:(id)appearance
{
  if ([appearance isVibrant])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (id)separatorColorForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v4 = [appearanceCopy colorForProminence:{objc_msgSend(objc_opt_class(), "separatorProminenceForAppearance:", appearanceCopy)}];
  isVibrant = [appearanceCopy isVibrant];

  if (isVibrant)
  {
    v9 = 0.0;
    [v4 getWhite:0 alpha:&v9];
    v6 = [v4 colorWithAlphaComponent:v9 * 0.75];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

@end