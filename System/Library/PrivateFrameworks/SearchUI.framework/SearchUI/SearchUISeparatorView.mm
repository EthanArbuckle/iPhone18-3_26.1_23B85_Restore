@interface SearchUISeparatorView
+ (id)separatorColorForAppearance:(id)a3;
+ (unint64_t)separatorProminenceForAppearance:(id)a3;
- (CGSize)intrinsicContentSize;
- (SearchUISeparatorView)init;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUISeparatorView;
  [(TLKProminenceView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUISeparatorView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUISeparatorView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUISeparatorView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
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

- (void)tlk_updateForAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUISeparatorView;
  v4 = a3;
  [(TLKProminenceView *)&v6 tlk_updateForAppearance:v4];
  v5 = [objc_opt_class() separatorProminenceForAppearance:{v4, v6.receiver, v6.super_class}];

  [(TLKProminenceView *)self setProminence:v5];
}

+ (unint64_t)separatorProminenceForAppearance:(id)a3
{
  if ([a3 isVibrant])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (id)separatorColorForAppearance:(id)a3
{
  v3 = a3;
  v4 = [v3 colorForProminence:{objc_msgSend(objc_opt_class(), "separatorProminenceForAppearance:", v3)}];
  v5 = [v3 isVibrant];

  if (v5)
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