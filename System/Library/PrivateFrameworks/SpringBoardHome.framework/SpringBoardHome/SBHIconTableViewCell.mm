@interface SBHIconTableViewCell
+ (UIEdgeInsets)defaultTableViewCellSeparatorInsetsForIconImageInfo:(SBIconImageInfo *)a3;
- (BOOL)_setLabelAccessoryType:(int64_t)a3;
- (BOOL)_updateIconNameLabelForDisplayName:(id)a3 labelAccessoryType:(int64_t)a4;
- (CGSize)intrinsicContentSize;
- (SBHIconTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_resetContent;
- (void)_resetIconView;
- (void)_teardownIconLabelAccessoryView;
- (void)_updateHighlightBackgroundView;
- (void)_updateTitleLabelFont;
- (void)configureCellForIcon:(id)a3;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setIconView:(id)a3;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation SBHIconTableViewCell

- (SBHIconTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v85[3] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = SBHIconTableViewCell;
  v4 = [(SBHIconTableViewCell *)&v81 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    iconNameLabel = v4->_iconNameLabel;
    v4->_iconNameLabel = v5;

    [(UILabel *)v4->_iconNameLabel setNumberOfLines:1];
    v7 = v4->_iconNameLabel;
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v7 setTextColor:v8];

    LODWORD(v9) = 1148846080;
    [(UILabel *)v4->_iconNameLabel setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132068864;
    [(UILabel *)v4->_iconNameLabel setContentCompressionResistancePriority:0 forAxis:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    iconViewContainerView = v4->_iconViewContainerView;
    v4->_iconViewContainerView = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    labelContainerView = v4->_labelContainerView;
    v4->_labelContainerView = v13;

    v15 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v18 = *(MEMORY[0x1E69DDCE0] + 24);
    [(SBHIconTableViewCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], v16, v17, v18];
    [(SBHIconTableViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    v19 = [(SBHIconTableViewCell *)v4 contentView];
    [v19 setLayoutMargins:{v15, v16, v17, v18}];
    [v19 setPreservesSuperviewLayoutMargins:1];
    v85[0] = v4->_iconNameLabel;
    v85[1] = v4->_iconViewContainerView;
    v85[2] = v4->_labelContainerView;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v20 = v80 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v77 objects:v84 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v78;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v78 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v77 + 1) + 8 * i) setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        v22 = [v20 countByEnumeratingWithState:&v77 objects:v84 count:16];
      }

      while (v22);
    }

    [(UIView *)v4->_labelContainerView addSubview:v4->_iconNameLabel];
    [v19 addSubview:v4->_labelContainerView];
    [v19 addSubview:v4->_iconViewContainerView];
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [v19 setBackgroundColor:v25];

    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(SBHIconTableViewCell *)v4 setBackgroundColor:v26];

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = [(UIView *)v4->_iconViewContainerView leadingAnchor];
    v29 = [v19 layoutMarginsGuide];
    v30 = [v29 leadingAnchor];
    [v28 constraintEqualToAnchor:v30];
    v32 = v31 = v19;
    [v27 addObject:v32];

    v33 = [(UIView *)v4->_iconViewContainerView topAnchor];
    v34 = [v31 topAnchor];
    v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:12.0];
    [v27 addObject:v35];

    v36 = [(UIView *)v4->_iconViewContainerView bottomAnchor];
    v37 = [v31 bottomAnchor];
    v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:12.0];
    [v27 addObject:v38];

    v39 = [(UIView *)v4->_iconViewContainerView centerYAnchor];
    v40 = [v31 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v27 addObject:v41];

    v42 = [(UIView *)v4->_labelContainerView leadingAnchor];
    v43 = [(UIView *)v4->_iconViewContainerView trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:16.0];
    [v27 addObject:v44];

    v45 = [(UIView *)v4->_labelContainerView trailingAnchor];
    v46 = [v31 layoutMarginsGuide];
    v47 = [v46 trailingAnchor];
    v48 = [v45 constraintLessThanOrEqualToAnchor:v47 constant:-16.0];
    [v27 addObject:v48];

    v49 = [(UIView *)v4->_labelContainerView centerYAnchor];
    v50 = [(UIView *)v4->_iconViewContainerView centerYAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v27 addObject:v51];

    v52 = [(UIView *)v4->_labelContainerView heightAnchor];
    v53 = [(UIView *)v4->_iconViewContainerView heightAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53 multiplier:1.0];
    [v27 addObject:v54];

    v55 = [(UIView *)v4->_labelContainerView heightAnchor];
    v56 = [(UILabel *)v4->_iconNameLabel heightAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 multiplier:1.0];
    [v27 addObject:v57];

    v58 = [(UILabel *)v4->_iconNameLabel leadingAnchor];
    v59 = [(UIView *)v4->_labelContainerView leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v27 addObject:v60];

    v61 = [(UILabel *)v4->_iconNameLabel trailingAnchor];
    v62 = [(UIView *)v4->_labelContainerView trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [v27 addObject:v63];

    v64 = [(UILabel *)v4->_iconNameLabel topAnchor];
    v65 = [(UIView *)v4->_labelContainerView topAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    [v27 addObject:v66];

    v67 = objc_opt_new();
    customSelectedBackgroundView = v4->_customSelectedBackgroundView;
    v4->_customSelectedBackgroundView = v67;

    [(UIView *)v4->_customSelectedBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHIconTableViewCell *)v4 setSelectedBackgroundView:v4->_customSelectedBackgroundView];
    [(SBHIconTableViewCell *)v4 _updateHighlightBackgroundView];
    [(SBHIconTableViewCell *)v4 _updateTitleLabelFont];
    v69 = [(SBHIconTableViewCell *)v4 layer];
    [v69 setAllowsGroupBlending:0];

    [MEMORY[0x1E696ACD8] activateConstraints:v27];
    v70 = objc_opt_self();
    v83 = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    v72 = [(SBHIconTableViewCell *)v4 registerForTraitChanges:v71 withAction:sel__updateHighlightBackgroundView];

    v73 = objc_opt_self();
    v82 = v73;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    v75 = [(SBHIconTableViewCell *)v4 registerForTraitChanges:v74 withAction:sel__updateTitleLabelFont];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBHIconTableViewCell;
  [(SBHIconTableViewCell *)&v3 prepareForReuse];
  [(SBHIconTableViewCell *)self _resetContent];
}

- (CGSize)intrinsicContentSize
{
  LODWORD(v2) = 1148846080;
  LODWORD(v3) = 1148846080;
  [(SBHIconTableViewCell *)self systemLayoutSizeFittingSize:*MEMORY[0x1E695F060] withHorizontalFittingPriority:*(MEMORY[0x1E695F060] + 8) verticalFittingPriority:v2, v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_updateTitleLabelFont
{
  v3 = [(SBHIconTableViewCell *)self traitCollection];
  v4 = MEMORY[0x1E69DD1B8];
  v5 = [v3 preferredContentSizeCategory];
  v6 = SBHContentSizeCategoryClip(v5, *MEMORY[0x1E69DDC88], *MEMORY[0x1E69DDC28]);
  v12 = [v4 traitCollectionWithPreferredContentSizeCategory:v6];

  iconNameLabel = self->_iconNameLabel;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v12];
  [(UILabel *)iconNameLabel setFont:v8];

  iconLabelAccessoryView = self->_iconLabelAccessoryView;
  legibilitySettings = self->_legibilitySettings;
  v11 = [(UILabel *)self->_iconNameLabel font];
  [(SBIconLabelAccessoryView *)iconLabelAccessoryView updateWithLegibilitySettings:legibilitySettings labelFont:v11];
}

- (void)_updateHighlightBackgroundView
{
  v3 = [(SBHIconTableViewCell *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    p_customSelectedBackgroundView = &self->_customSelectedBackgroundView;
    customSelectedBackgroundView = self->_customSelectedBackgroundView;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0900000036 green:0.0900000036 blue:0.0900000036 alpha:1.0];
    [(UIView *)customSelectedBackgroundView setBackgroundColor:v7];
    v8 = MEMORY[0x1E6979CF8];
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    p_customSelectedBackgroundView = &self->_customSelectedBackgroundView;
    v6 = self->_customSelectedBackgroundView;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.920000017 green:0.920000017 blue:0.920000017 alpha:1.0];
    [(UIView *)v6 setBackgroundColor:v7];
    v8 = MEMORY[0x1E6979CE8];
  }

  v11 = [(UIView *)*p_customSelectedBackgroundView layer];
  v10 = [MEMORY[0x1E6979378] filterWithType:*v8];
  [v11 setCompositingFilter:v10];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHIconTableViewCell;
  [(SBHIconTableViewCell *)&v10 setHighlighted:a3 animated:a4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SBHIconTableViewCell_setHighlighted_animated___block_invoke;
  v9[3] = &unk_1E8088C90;
  v9[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
  v6 = [(SBHIconTableViewCell *)self selectedBackgroundView];
  v7 = [v6 superview];
  v8 = [v7 layer];
  [v8 setAllowsGroupBlending:!v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconTableViewCell;
  [(SBHIconTableViewCell *)&v9 setHighlighted:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBHIconTableViewCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E8088C90;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  v5 = [(SBHIconTableViewCell *)self selectedBackgroundView];
  v6 = [v5 superview];
  v7 = [v6 layer];
  [v7 setAllowsGroupBlending:!v3];
}

- (void)setLegibilitySettings:(id)a3
{
  v7 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBIconView *)self->_iconView setLegibilitySettings:v7];
    iconLabelAccessoryView = self->_iconLabelAccessoryView;
    v6 = [(UILabel *)self->_iconNameLabel font];
    [(SBIconLabelAccessoryView *)iconLabelAccessoryView updateWithLegibilitySettings:v7 labelFont:v6];
  }
}

+ (UIEdgeInsets)defaultTableViewCellSeparatorInsetsForIconImageInfo:(SBIconImageInfo *)a3
{
  v4 = v3 + 16.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 30.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)setIconView:(id)a3
{
  v26[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(SBIconView *)self->_iconView isEqual:v5]& 1) == 0)
  {
    [(SBHIconTableViewCell *)self _resetIconView];
    objc_storeStrong(&self->_iconView, a3);
    iconView = self->_iconView;
    v7 = [(SBHIconTableViewCell *)self legibilitySettings];
    [(SBIconView *)iconView setLegibilitySettings:v7];

    [(SBIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_iconView)
    {
      v8 = [(SBHIconTableViewCell *)self iconViewContainerView];
      [v5 sizeToFit];
      [v8 addSubview:v5];
      v25 = [v5 topAnchor];
      v24 = [v8 topAnchor];
      v23 = [v25 constraintEqualToAnchor:v24];
      v26[0] = v23;
      v22 = [v5 bottomAnchor];
      v21 = [v8 bottomAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v26[1] = v20;
      v19 = [v5 leadingAnchor];
      v18 = [v8 leadingAnchor];
      v9 = [v19 constraintEqualToAnchor:v18];
      v26[2] = v9;
      v10 = [v5 trailingAnchor];
      v11 = [v8 trailingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v26[3] = v12;
      v13 = [v8 widthAnchor];
      [v5 iconImageSize];
      v14 = [v13 constraintEqualToConstant:?];
      v26[4] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
      [(SBHIconTableViewCell *)self setIconViewContainerViewConstraints:v15];

      v16 = MEMORY[0x1E696ACD8];
      v17 = [(SBHIconTableViewCell *)self iconViewContainerViewConstraints];
      [v16 activateConstraints:v17];
    }

    [(SBHIconTableViewCell *)self invalidateIntrinsicContentSize];
  }
}

- (void)configureCellForIcon:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_icon, a3);
  if (v7)
  {
    v5 = [v7 displayName];
    v6 = -[SBHIconTableViewCell _updateIconNameLabelForDisplayName:labelAccessoryType:](self, "_updateIconNameLabelForDisplayName:labelAccessoryType:", v5, [v7 labelAccessoryType]);

    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([(SBHIconTableViewCell *)self _updateIconNameLabelForDisplayName:0 labelAccessoryType:0])
  {
LABEL_3:
    [(SBHIconTableViewCell *)self invalidateIntrinsicContentSize];
    [(SBHIconTableViewCell *)self setNeedsUpdateConstraints];
  }

LABEL_4:
}

- (void)_resetIconView
{
  [(SBHIconTableViewCell *)self _teardownIconLabelAccessoryView];
  self->_labelAccessoryType = 0;
  [(SBIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:1];
  v3 = [(SBIconView *)self->_iconView superview];
  v4 = [(SBHIconTableViewCell *)self iconViewContainerView];

  if (v3 == v4)
  {
    [(SBIconView *)self->_iconView removeFromSuperview];
  }

  iconView = self->_iconView;
  self->_iconView = 0;

  icon = self->_icon;
  self->_icon = 0;

  v10 = [(SBHIconTableViewCell *)self iconViewContainerView];
  v7 = [v10 subviews];
  [v7 makeObjectsPerformSelector:sel_removeFromSuperview];

  v8 = MEMORY[0x1E696ACD8];
  v9 = [(SBHIconTableViewCell *)self iconViewContainerViewConstraints];
  [v8 deactivateConstraints:v9];

  [(SBHIconTableViewCell *)self setIconViewContainerViewConstraints:0];
}

- (void)_resetContent
{
  v3 = [(SBHIconTableViewCell *)self iconView];
  [v3 prepareForReuse];

  v4 = [(SBHIconTableViewCell *)self iconNameLabel];
  [v4 setText:0];

  [(SBHIconTableViewCell *)self _teardownIconLabelAccessoryView];
  self->_labelAccessoryType = 0;
  icon = self->_icon;
  self->_icon = 0;
}

- (BOOL)_updateIconNameLabelForDisplayName:(id)a3 labelAccessoryType:(int64_t)a4
{
  v6 = a3;
  v7 = [(UILabel *)self->_iconNameLabel text];
  v8 = BSEqualObjects();

  if ((v8 & 1) == 0)
  {
    [(UILabel *)self->_iconNameLabel setText:v6];
    [(UILabel *)self->_iconNameLabel invalidateIntrinsicContentSize];
  }

  v9 = [(SBHIconTableViewCell *)self _setLabelAccessoryType:a4]| ~v8;

  return v9 & 1;
}

- (BOOL)_setLabelAccessoryType:(int64_t)a3
{
  if (a3 == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  labelAccessoryType = self->_labelAccessoryType;
  if (labelAccessoryType != v3)
  {
    self->_labelAccessoryType = v3;
    [(SBHIconTableViewCell *)self _teardownIconLabelAccessoryView];
    if (a3 == 3)
    {
      [SBIconView defaultViewClassForLabelAccessoryType:3];
      v7 = objc_opt_new();
      iconLabelAccessoryView = self->_iconLabelAccessoryView;
      self->_iconLabelAccessoryView = v7;

      v9 = self->_iconLabelAccessoryView;
      legibilitySettings = self->_legibilitySettings;
      v11 = [(SBHIconTableViewCell *)self iconNameLabel];
      v12 = [v11 font];
      [(SBIconLabelAccessoryView *)v9 updateWithLegibilitySettings:legibilitySettings labelFont:v12];

      [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v13 = [(SBHIconTableViewCell *)self contentView];
      [v13 addSubview:self->_iconLabelAccessoryView];

      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView hasBaseline];
      v16 = self->_iconLabelAccessoryView;
      if (v15)
      {
        v17 = [(SBIconLabelAccessoryView *)v16 firstBaselineAnchor];
        [(UILabel *)self->_iconNameLabel firstBaselineAnchor];
      }

      else
      {
        v17 = [(SBIconLabelAccessoryView *)v16 centerYAnchor];
        [(UILabel *)self->_iconNameLabel centerYAnchor];
      }
      v18 = ;
      v19 = [v17 constraintEqualToAnchor:v18];
      [(NSArray *)v14 addObject:v19];

      v20 = [(SBHIconTableViewCell *)self contentView];
      v21 = [v20 layoutMarginsGuide];

      v22 = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView trailingAnchor];
      v23 = [v21 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];
      [(NSArray *)v14 addObject:v24];

      v25 = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView leadingAnchor];
      v26 = [(UIView *)self->_labelContainerView trailingAnchor];
      v27 = [v25 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v26 multiplier:1.0];
      [(NSArray *)v14 addObject:v27];

      iconLabelAccessoryViewConstraints = self->_iconLabelAccessoryViewConstraints;
      self->_iconLabelAccessoryViewConstraints = v14;
      v29 = v14;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_iconLabelAccessoryViewConstraints];
    }
  }

  return labelAccessoryType != v3;
}

- (void)_teardownIconLabelAccessoryView
{
  if (self->_iconLabelAccessoryView)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_iconLabelAccessoryViewConstraints];
    iconLabelAccessoryViewConstraints = self->_iconLabelAccessoryViewConstraints;
    self->_iconLabelAccessoryViewConstraints = 0;

    [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView removeFromSuperview];
    iconLabelAccessoryView = self->_iconLabelAccessoryView;
    self->_iconLabelAccessoryView = 0;

    [(SBHIconTableViewCell *)self setNeedsUpdateConstraints];
  }
}

@end