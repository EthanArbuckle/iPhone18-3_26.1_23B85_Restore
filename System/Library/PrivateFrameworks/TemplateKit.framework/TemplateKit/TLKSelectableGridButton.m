@interface TLKSelectableGridButton
+ (id)selectableGridButton;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setTitle:(id)a3 subtitle:(id)a4;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKSelectableGridButton

+ (id)selectableGridButton
{
  v2 = [TLKSelectableGridButton buttonWithType:1];
  [v2 setCustomHighlight:0];
  v3 = [v2 layer];
  [v3 setCornerRadius:5.0];

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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKSelectableGridButton;
  [(TLKSelectableGridButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKSelectableGridButton *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKSelectableGridButton *)self traitCollection];
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
  v3.super_class = TLKSelectableGridButton;
  [(TLKSelectableGridButton *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = TLKSelectableGridButton;
  v4 = a3;
  [(UIView *)&v6 tlk_updateForAppearance:v4];
  if (self->_customHighlight)
  {
    v5 = [v4 quaternaryColor];
    [(TLKSelectableGridButton *)self setBackgroundColor:v5];
  }

  else
  {
    [(TLKSelectableGridButton *)self setBackgroundColor:0, v6.receiver, v6.super_class];
  }

  [v4 enableAppearanceForView:self];
}

- (void)setTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TLKSelectableGridButton *)self topLabel];
  [v8 setText:v7];

  v9 = [(TLKSelectableGridButton *)self bottomLabel];
  [v9 setText:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKSelectableGridButton *)self stackView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKSelectableGridButton *)self stackView];
  [v5 systemLayoutSizeFittingSize:{width, height}];
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
  v2 = [(TLKSelectableGridButton *)self stackView];
  [v2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
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
  v11 = [(TLKSelectableGridButton *)self stackView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end