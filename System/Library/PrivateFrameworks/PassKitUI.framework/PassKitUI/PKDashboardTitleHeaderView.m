@interface PKDashboardTitleHeaderView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplate:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardTitleHeaderView)initWithFrame:(CGRect)a3;
- (void)_buttonPressed:(id)a3;
- (void)_resetButtonInsets;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)resetTitleColor;
- (void)setAction:(id)a3;
- (void)setActionImage:(id)a3;
- (void)setActionStyle:(unint64_t)a3;
- (void)setActionTitle:(id)a3;
- (void)setMenu:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleStyle:(unint64_t)a3;
- (void)setTopPadding:(double)a3;
@end

@implementation PKDashboardTitleHeaderView

- (PKDashboardTitleHeaderView)initWithFrame:(CGRect)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKDashboardTitleHeaderView;
  v3 = [(PKDashboardCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    [(PKDashboardTitleHeaderView *)v3 createSubviews];
    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
    v8[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v5 = [(PKDashboardTitleHeaderView *)v3 registerForTraitChanges:v4 withHandler:&__block_literal_global_248];

    [(PKDashboardTitleHeaderView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9688]];
  }

  return v3;
}

void __44__PKDashboardTitleHeaderView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _resetButtonInsets];
  [v2 resetFonts];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardTitleHeaderView;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(PKDashboardTitleHeaderView *)self setTitleStyle:0];
  [(PKDashboardTitleHeaderView *)self setTitle:0];
  [(PKDashboardTitleHeaderView *)self setTitleColor:0];
  [(PKDashboardTitleHeaderView *)self setActionTitle:0];
  [(PKDashboardTitleHeaderView *)self setActionImage:0];
  [(PKDashboardTitleHeaderView *)self setAction:0];
  [(PKDashboardTitleHeaderView *)self setMenu:0];
  [(PKDashboardTitleHeaderView *)self setTopPadding:0.0];
  [(UIButton *)self->_actionButton setHidden:[(PKDashboardTitleHeaderView *)self shouldShowActionButton]^ 1];
  [(UIButton *)self->_actionButton setMenu:0];
  [(PKDashboardTitleHeaderView *)self setAlpha:1.0];
}

- (void)createSubviews
{
  v3 = [(PKDashboardTitleHeaderView *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v3 addSubview:self->_titleLabel];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __44__PKDashboardTitleHeaderView_createSubviews__block_invoke;
  v20 = &unk_1E8010A60;
  objc_copyWeak(&v21, &location);
  v7 = [v6 actionWithHandler:&v17];
  v8 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v9 = [v8 background];
  [v9 setCornerRadius:0.0];

  v10 = [(PKDashboardTitleHeaderView *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

  if (IsAccessibilityCategory)
  {
    v13 = 2;
  }

  else
  {
    v13 = 8;
  }

  [v8 setImagePlacement:v13];
  v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:v7];
  actionButton = self->_actionButton;
  self->_actionButton = v14;

  v16 = [(UIButton *)self->_actionButton titleLabel];
  [v16 setLineBreakMode:4];

  [(UIButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  [v3 addSubview:self->_actionButton];
  [(PKDashboardTitleHeaderView *)self _resetButtonInsets];
  [(PKDashboardTitleHeaderView *)self resetFonts];
  [(PKDashboardTitleHeaderView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __44__PKDashboardTitleHeaderView_createSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _buttonPressed:v4];
}

- (void)resetFonts
{
  v3 = PKUIGetMinScreenWidthType();
  v16 = [MEMORY[0x1E69DCC28] extraProminentInsetGroupedHeaderConfiguration];
  actionButton = self->_actionButton;
  v5 = MEMORY[0x1E69DDD80];
  if (v3)
  {
    v5 = MEMORY[0x1E69DDCF8];
  }

  v6 = PKFontForDefaultDesign(*v5, *MEMORY[0x1E69DDC30], 0x8000, 0);
  [(UIButton *)actionButton pkui_updateConfigurationWithFont:v6];

  titleStyle = self->_titleStyle;
  if (titleStyle > 1)
  {
    if (titleStyle != 2)
    {
      if (titleStyle != 3)
      {
        goto LABEL_14;
      }

      titleLabel = self->_titleLabel;
      v11 = [MEMORY[0x1E69DD050] _defaultFontForTableViewStyle:1 isSectionHeader:1];
      goto LABEL_13;
    }

    titleLabel = self->_titleLabel;
    v9 = *MEMORY[0x1E69DDD40];
    v10 = MEMORY[0x1E69DDC40];
  }

  else
  {
    if (!titleStyle)
    {
      v12 = self->_titleLabel;
      v13 = [v16 textProperties];
      v14 = [v13 font];
      [(UILabel *)v12 setFont:v14];

      [v16 directionalLayoutMargins];
      [(PKDashboardTitleHeaderView *)self setDirectionalLayoutMargins:?];
      goto LABEL_14;
    }

    if (titleStyle != 1)
    {
      goto LABEL_14;
    }

    titleLabel = self->_titleLabel;
    v9 = *MEMORY[0x1E69DDDB0];
    v10 = MEMORY[0x1E69DDC38];
  }

  v11 = PKFontForDefaultDesign(v9, *v10, 2, 0);
LABEL_13:
  v15 = v11;
  [(UILabel *)titleLabel setFont:v11];

LABEL_14:
}

- (void)resetTitleColor
{
  titleStyle = self->_titleStyle;
  if (titleStyle >= 3)
  {
    if (titleStyle != 3)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DD050] _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
  }

  v5 = v4;
  [(PKDashboardTitleHeaderView *)self setTitleColor:v4];
}

- (void)_resetButtonInsets
{
  v14 = [(UIButton *)self->_actionButton configuration];
  [v14 contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKDashboardTitleHeaderView *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (self->_actionStyle - 1 <= 1)
  {
    v6 = !IsAccessibilityCategory;
    if (PKUIGetMinScreenWidthType() <= 4)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 2.0;
    }

    v8 = 3.0;
    v4 = 3.0;
  }

  [v14 setContentInsets:{v4, v6, v8, v10}];
  [(UIButton *)self->_actionButton setConfiguration:v14];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardTitleHeaderView;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKDashboardTitleHeaderView *)self bounds];
  [(PKDashboardTitleHeaderView *)self _layoutWithBounds:0 isTemplate:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDashboardTitleHeaderView *)self _layoutWithBounds:1 isTemplate:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplate:(BOOL)a4
{
  width = a3.size.width;
  x = a3.origin.x;
  [(PKDashboardCollectionViewCell *)self horizontalInset:a3.origin.x];
  v88 = width;
  v85 = v7;
  v8 = width + v7 * -2.0;
  v9 = _UISolariumFeatureFlagEnabled();
  titleStyle = self->_titleStyle;
  v11 = 0.0;
  v12 = v8 + -18.0;
  v13 = 14.0;
  if (titleStyle)
  {
    v14 = self->_titleStyle;
  }

  else
  {
    v14 = 0;
  }

  if (titleStyle)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 4.0;
  }

  if (titleStyle)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 14.0;
  }

  if (titleStyle)
  {
    v12 = v8;
  }

  if (v9)
  {
    v17 = v14;
  }

  else
  {
    v17 = self->_titleStyle;
  }

  if (!v9)
  {
    v15 = 0.0;
  }

  v83 = v15;
  if (v9)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0.0;
  }

  if (v9)
  {
    v19 = v12;
  }

  else
  {
    v19 = v8;
  }

  if (!self->_isCompactUI)
  {
    v12 = 9.0;
    if (v17 != 3)
    {
      v13 = 9.0;
    }

    if (self->_useCompactTopInset)
    {
      v11 = 4.0;
    }

    else
    {
      v11 = v13;
    }
  }

  topPadding = self->_topPadding;
  v21 = [(PKDashboardTitleHeaderView *)self traitCollection:4.0];
  v22 = [v21 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v22);

  v86 = [(PKDashboardTitleHeaderView *)self _shouldReverseLayoutDirection];
  if ([(NSString *)self->_actionTitle length])
  {
    v24 = 1;
  }

  else
  {
    v24 = self->_actionImage != 0;
  }

  v25 = MEMORY[0x1E695F060];
  v26 = [(NSString *)self->_actionTitle length];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v28 = [(UILabel *)titleLabel superview];
    v29 = v28 != 0;
  }

  else
  {
    v29 = 0;
  }

  v30 = *v25;
  v31 = v25[1];
  v32 = v31;
  v33 = *v25;
  if (v24)
  {
    [(UIButton *)self->_actionButton sizeThatFits:v19 * 0.5, 1.79769313e308];
    v33 = v34;
    v32 = v35;
  }

  if (v29)
  {
    v36 = !IsAccessibilityCategory && self->_titleStyle != 1 && !self->_preferTitleWrapOverStackedLayout;
    [(UILabel *)self->_titleLabel setNumberOfLines:v36];
    [(UILabel *)self->_titleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    if (IsAccessibilityCategory || v33 + v41 + 13.0 > v19 && !self->_preferTitleWrapOverStackedLayout)
    {
      v42 = 1;
      v43 = v19;
    }

    else
    {
      v42 = 0;
      v43 = v19 + -13.0 - v33;
    }

    [(UILabel *)self->_titleLabel sizeThatFits:v43, 1.79769313e308];
    v30 = v44;
    v31 = v45;
    if ((v42 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (!IsAccessibilityCategory)
  {
LABEL_50:
    v40 = 0;
    if (v31 <= v32)
    {
      v39 = v32;
    }

    else
    {
      v39 = v31;
    }

    goto LABEL_53;
  }

  [(UIButton *)self->_actionButton sizeThatFits:v19, 1.79769313e308];
  v33 = v37;
  v32 = v38;
  v39 = v31 + v38;
  v40 = 1;
LABEL_53:
  v46 = v11 + topPadding;
  if (!a4)
  {
    v82 = v88 - v85;
    v47 = v88 - v85 - v30 - v18;
    if (!v86)
    {
      v47 = v85 + v18;
    }

    v84 = v39;
    [(UILabel *)self->_titleLabel setFrame:x + v47, v46, v30, v31];
    v39 = v84;
    if (v24)
    {
      if (v40)
      {
        actionButton = self->_actionButton;
        v49 = v46 + v31;
        v50 = v82 - v33 - v18;
        if (!v86)
        {
          v50 = v85 + v18;
        }

        v51 = x + v50;
      }

      else
      {
        if (v19 <= 0.0)
        {
          actionButton = self->_actionButton;
          v51 = *MEMORY[0x1E695F058];
          v49 = *(MEMORY[0x1E695F058] + 8);
          v52 = *(MEMORY[0x1E695F058] + 16);
          v53 = *(MEMORY[0x1E695F058] + 24);
          goto LABEL_68;
        }

        if (v26)
        {
          [(UILabel *)self->_titleLabel frame];
          MinY = CGRectGetMinY(v90);
          v55 = [(UILabel *)self->_titleLabel font];
          [v55 ascender];
          v57 = MinY + v56;
          v58 = [(UIButton *)self->_actionButton titleLabel];
          v59 = [v58 font];

          [v59 ascender];
          v61 = v60;
          v62 = [(UIButton *)self->_actionButton configuration];
          [v62 contentInsets];
          v64 = v61 + v63;

          v65 = v85 + v83;
          if (!v86)
          {
            v65 = v82 - v33 - v83;
          }

          [(UIButton *)self->_actionButton setFrame:x + v65, v57 - v64, v33, v32];

          goto LABEL_69;
        }

        actionStyle = self->_actionStyle;
        [(UILabel *)self->_titleLabel frame];
        v71 = v70;
        [(UILabel *)self->_titleLabel frame];
        v73 = v72;
        v74 = [(UILabel *)self->_titleLabel font];
        if (actionStyle == 2)
        {
          [v74 lineHeight];
          v76 = v71 + (v73 - v75) * 0.5;
          v77 = [(UILabel *)self->_titleLabel font];
          [v77 lineHeight];
        }

        else
        {
          [v74 ascender];
          v76 = v71 + v73 - v79;
          v77 = [(UILabel *)self->_titleLabel font];
          [v77 ascender];
        }

        v80 = v76 + v78 * 0.5 - v32 * 0.5;

        actionButton = self->_actionButton;
        v81 = v85 + v83;
        if (!v86)
        {
          v81 = v82 - v33 - v83;
        }

        v51 = x + v81;
        v49 = v80;
      }

      v52 = v33;
      v53 = v32;
LABEL_68:
      [(UIButton *)actionButton setFrame:v51, v49, v52, v53];
LABEL_69:
      v39 = v84;
    }
  }

  v66 = 6.0;
  if (v17 == 3)
  {
    v66 = 7.0;
  }

  if (v17 < 2)
  {
    v66 = 10.0;
  }

  v67 = v66 + v46 + v39;
  v68 = v88;
  result.height = v67;
  result.width = v68;
  return result;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  v6 = self->_title;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_title, a3);
    [(UILabel *)self->_titleLabel setText:v9];
    [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setActionTitle:(id)a3
{
  v5 = a3;
  actionTitle = self->_actionTitle;
  v10 = v5;
  v7 = actionTitle;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v10 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_actionTitle, a3);
    actionImage = self->_actionImage;
    self->_actionImage = 0;

    [(UIButton *)self->_actionButton pkui_updateConfigurationWithTitle:self->_actionTitle];
    [(UIButton *)self->_actionButton setHidden:[(PKDashboardTitleHeaderView *)self shouldShowActionButton]^ 1];
    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setActionImage:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_actionImage, a3);
    actionTitle = self->_actionTitle;
    self->_actionTitle = 0;

    [(UIButton *)self->_actionButton pkui_updateConfigurationWithImage:self->_actionImage];
    [(UIButton *)self->_actionButton setHidden:[(PKDashboardTitleHeaderView *)self shouldShowActionButton]^ 1];
    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }
}

- (void)setTitleStyle:(unint64_t)a3
{
  if (self->_titleStyle != a3)
  {
    v8 = v3;
    self->_titleStyle = a3;
    if (a3 == 3)
    {
      +[PKDashboardTitleHeaderView defaultTableHorizontalInset];
      [(PKDashboardCollectionViewCell *)self setHorizontalInset:?];
    }

    [(PKDashboardTitleHeaderView *)self resetTitleColor:v4];
    [(PKDashboardTitleHeaderView *)self resetFonts];

    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }
}

- (void)setTopPadding:(double)a3
{
  if (self->_topPadding != a3)
  {
    self->_topPadding = a3;
    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }
}

- (void)setActionStyle:(unint64_t)a3
{
  if (self->_actionStyle != a3)
  {
    self->_actionStyle = a3;
    [(PKDashboardTitleHeaderView *)self _resetButtonInsets];

    [(PKDashboardTitleHeaderView *)self setNeedsLayout];
  }
}

- (void)setAction:(id)a3
{
  v4 = _Block_copy(a3);
  action = self->_action;
  self->_action = v4;

  actionButton = self->_actionButton;

  [(UIButton *)actionButton setShowsMenuAsPrimaryAction:0];
}

- (void)_buttonPressed:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

- (void)setMenu:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_menu, a3);
    [(UIButton *)self->_actionButton setMenu:self->_menu];
    [(UIButton *)self->_actionButton setShowsMenuAsPrimaryAction:1];
  }
}

@end