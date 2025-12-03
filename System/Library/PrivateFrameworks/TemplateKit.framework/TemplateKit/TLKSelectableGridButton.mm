@interface TLKSelectableGridButton
+ (id)selectableGridButton;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setTitle:(id)title subtitle:(id)subtitle;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TLKSelectableGridButton

+ (id)selectableGridButton
{
  v2 = [TLKSelectableGridButton buttonWithType:1];
  [v2 setCustomHighlight:0];
  layer = [v2 layer];
  [layer setCornerRadius:5.0];

  v4 = objc_opt_new();
  [v4 setAxis:1];
  [v4 setAlignment:3];
  [v4 setSpacing:0.0];
  [v4 setLayoutMargins:{4.0, 4.0, 4.0, 4.0}];
  [v4 setLayoutMarginsRelativeArrangement:1];
  [v4 setUserInteractionEnabled:0];
  [v2 setStackView:v4];
  [v2 addSubview:v4];
  v5 = objc_opt_new();
  v6 = +[TLKFontUtilities subheadFont];
  [v5 setFont:v6];

  [v2 setTopLabel:v5];
  [v4 addArrangedSubview:v5];
  v7 = +[TLKLabel secondaryLabel];
  v8 = +[TLKFontUtilities footnoteFont];
  [v7 setFont:v8];

  [v2 setBottomLabel:v7];
  [v4 addArrangedSubview:v7];
  [v2 _setTouchInsets:{-0.15, -0.15, -0.15, -0.15}];

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKSelectableGridButton;
  [(TLKSelectableGridButton *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKSelectableGridButton *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKSelectableGridButton *)self traitCollection];
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
  v3.super_class = TLKSelectableGridButton;
  [(TLKSelectableGridButton *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = TLKSelectableGridButton;
  appearanceCopy = appearance;
  [(UIView *)&v6 tlk_updateForAppearance:appearanceCopy];
  if (self->_customHighlight)
  {
    quaternaryColor = [appearanceCopy quaternaryColor];
    [(TLKSelectableGridButton *)self setBackgroundColor:quaternaryColor];
  }

  else
  {
    [(TLKSelectableGridButton *)self setBackgroundColor:0, v6.receiver, v6.super_class];
  }

  [appearanceCopy enableAppearanceForView:self];
}

- (void)setTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  topLabel = [(TLKSelectableGridButton *)self topLabel];
  [topLabel setText:titleCopy];

  bottomLabel = [(TLKSelectableGridButton *)self bottomLabel];
  [bottomLabel setText:subtitleCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  stackView = [(TLKSelectableGridButton *)self stackView];
  [stackView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  stackView = [(TLKSelectableGridButton *)self stackView];
  [stackView systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  stackView = [(TLKSelectableGridButton *)self stackView];
  [stackView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TLKSelectableGridButton;
  [(TLKSelectableGridButton *)&v12 layoutSubviews];
  [(TLKSelectableGridButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  stackView = [(TLKSelectableGridButton *)self stackView];
  [stackView setFrame:{v4, v6, v8, v10}];
}

@end