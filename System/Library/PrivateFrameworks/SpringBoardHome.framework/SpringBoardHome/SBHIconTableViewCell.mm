@interface SBHIconTableViewCell
+ (UIEdgeInsets)defaultTableViewCellSeparatorInsetsForIconImageInfo:(SBIconImageInfo *)info;
- (BOOL)_setLabelAccessoryType:(int64_t)type;
- (BOOL)_updateIconNameLabelForDisplayName:(id)name labelAccessoryType:(int64_t)type;
- (CGSize)intrinsicContentSize;
- (SBHIconTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_resetContent;
- (void)_resetIconView;
- (void)_teardownIconLabelAccessoryView;
- (void)_updateHighlightBackgroundView;
- (void)_updateTitleLabelFont;
- (void)configureCellForIcon:(id)icon;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIconView:(id)view;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SBHIconTableViewCell

- (SBHIconTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v85[3] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = SBHIconTableViewCell;
  v4 = [(SBHIconTableViewCell *)&v81 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    iconNameLabel = v4->_iconNameLabel;
    v4->_iconNameLabel = v5;

    [(UILabel *)v4->_iconNameLabel setNumberOfLines:1];
    v7 = v4->_iconNameLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v7 setTextColor:whiteColor];

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
    contentView = [(SBHIconTableViewCell *)v4 contentView];
    [contentView setLayoutMargins:{v15, v16, v17, v18}];
    [contentView setPreservesSuperviewLayoutMargins:1];
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
    [contentView addSubview:v4->_labelContainerView];
    [contentView addSubview:v4->_iconViewContainerView];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [contentView setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(SBHIconTableViewCell *)v4 setBackgroundColor:clearColor2];

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leadingAnchor = [(UIView *)v4->_iconViewContainerView leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32 = v31 = contentView;
    [v27 addObject:v32];

    topAnchor = [(UIView *)v4->_iconViewContainerView topAnchor];
    topAnchor2 = [v31 topAnchor];
    v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:12.0];
    [v27 addObject:v35];

    bottomAnchor = [(UIView *)v4->_iconViewContainerView bottomAnchor];
    bottomAnchor2 = [v31 bottomAnchor];
    v38 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:12.0];
    [v27 addObject:v38];

    centerYAnchor = [(UIView *)v4->_iconViewContainerView centerYAnchor];
    centerYAnchor2 = [v31 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v27 addObject:v41];

    leadingAnchor3 = [(UIView *)v4->_labelContainerView leadingAnchor];
    trailingAnchor = [(UIView *)v4->_iconViewContainerView trailingAnchor];
    v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
    [v27 addObject:v44];

    trailingAnchor2 = [(UIView *)v4->_labelContainerView trailingAnchor];
    layoutMarginsGuide2 = [v31 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v48 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-16.0];
    [v27 addObject:v48];

    centerYAnchor3 = [(UIView *)v4->_labelContainerView centerYAnchor];
    centerYAnchor4 = [(UIView *)v4->_iconViewContainerView centerYAnchor];
    v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v27 addObject:v51];

    heightAnchor = [(UIView *)v4->_labelContainerView heightAnchor];
    heightAnchor2 = [(UIView *)v4->_iconViewContainerView heightAnchor];
    v54 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:1.0];
    [v27 addObject:v54];

    heightAnchor3 = [(UIView *)v4->_labelContainerView heightAnchor];
    heightAnchor4 = [(UILabel *)v4->_iconNameLabel heightAnchor];
    v57 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:1.0];
    [v27 addObject:v57];

    leadingAnchor4 = [(UILabel *)v4->_iconNameLabel leadingAnchor];
    leadingAnchor5 = [(UIView *)v4->_labelContainerView leadingAnchor];
    v60 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v27 addObject:v60];

    trailingAnchor4 = [(UILabel *)v4->_iconNameLabel trailingAnchor];
    trailingAnchor5 = [(UIView *)v4->_labelContainerView trailingAnchor];
    v63 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [v27 addObject:v63];

    topAnchor3 = [(UILabel *)v4->_iconNameLabel topAnchor];
    topAnchor4 = [(UIView *)v4->_labelContainerView topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v27 addObject:v66];

    v67 = objc_opt_new();
    customSelectedBackgroundView = v4->_customSelectedBackgroundView;
    v4->_customSelectedBackgroundView = v67;

    [(UIView *)v4->_customSelectedBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHIconTableViewCell *)v4 setSelectedBackgroundView:v4->_customSelectedBackgroundView];
    [(SBHIconTableViewCell *)v4 _updateHighlightBackgroundView];
    [(SBHIconTableViewCell *)v4 _updateTitleLabelFont];
    layer = [(SBHIconTableViewCell *)v4 layer];
    [layer setAllowsGroupBlending:0];

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
  traitCollection = [(SBHIconTableViewCell *)self traitCollection];
  v4 = MEMORY[0x1E69DD1B8];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = SBHContentSizeCategoryClip(preferredContentSizeCategory, *MEMORY[0x1E69DDC88], *MEMORY[0x1E69DDC28]);
  v12 = [v4 traitCollectionWithPreferredContentSizeCategory:v6];

  iconNameLabel = self->_iconNameLabel;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v12];
  [(UILabel *)iconNameLabel setFont:v8];

  iconLabelAccessoryView = self->_iconLabelAccessoryView;
  legibilitySettings = self->_legibilitySettings;
  font = [(UILabel *)self->_iconNameLabel font];
  [(SBIconLabelAccessoryView *)iconLabelAccessoryView updateWithLegibilitySettings:legibilitySettings labelFont:font];
}

- (void)_updateHighlightBackgroundView
{
  traitCollection = [(SBHIconTableViewCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    p_customSelectedBackgroundView = &self->_customSelectedBackgroundView;
    customSelectedBackgroundView = self->_customSelectedBackgroundView;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0900000036 green:0.0900000036 blue:0.0900000036 alpha:1.0];
    [(UIView *)customSelectedBackgroundView setBackgroundColor:v7];
    v8 = MEMORY[0x1E6979CF8];
  }

  else
  {
    if (userInterfaceStyle != 2)
    {
      return;
    }

    p_customSelectedBackgroundView = &self->_customSelectedBackgroundView;
    v6 = self->_customSelectedBackgroundView;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.920000017 green:0.920000017 blue:0.920000017 alpha:1.0];
    [(UIView *)v6 setBackgroundColor:v7];
    v8 = MEMORY[0x1E6979CE8];
  }

  layer = [(UIView *)*p_customSelectedBackgroundView layer];
  v10 = [MEMORY[0x1E6979378] filterWithType:*v8];
  [layer setCompositingFilter:v10];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v10.receiver = self;
  v10.super_class = SBHIconTableViewCell;
  [(SBHIconTableViewCell *)&v10 setHighlighted:highlighted animated:animated];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SBHIconTableViewCell_setHighlighted_animated___block_invoke;
  v9[3] = &unk_1E8088C90;
  v9[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
  selectedBackgroundView = [(SBHIconTableViewCell *)self selectedBackgroundView];
  superview = [selectedBackgroundView superview];
  layer = [superview layer];
  [layer setAllowsGroupBlending:!highlightedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = SBHIconTableViewCell;
  [(SBHIconTableViewCell *)&v9 setHighlighted:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBHIconTableViewCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E8088C90;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  selectedBackgroundView = [(SBHIconTableViewCell *)self selectedBackgroundView];
  superview = [selectedBackgroundView superview];
  layer = [superview layer];
  [layer setAllowsGroupBlending:!highlightedCopy];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBIconView *)self->_iconView setLegibilitySettings:settingsCopy];
    iconLabelAccessoryView = self->_iconLabelAccessoryView;
    font = [(UILabel *)self->_iconNameLabel font];
    [(SBIconLabelAccessoryView *)iconLabelAccessoryView updateWithLegibilitySettings:settingsCopy labelFont:font];
  }
}

+ (UIEdgeInsets)defaultTableViewCellSeparatorInsetsForIconImageInfo:(SBIconImageInfo *)info
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

- (void)setIconView:(id)view
{
  v26[5] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (([(SBIconView *)self->_iconView isEqual:viewCopy]& 1) == 0)
  {
    [(SBHIconTableViewCell *)self _resetIconView];
    objc_storeStrong(&self->_iconView, view);
    iconView = self->_iconView;
    legibilitySettings = [(SBHIconTableViewCell *)self legibilitySettings];
    [(SBIconView *)iconView setLegibilitySettings:legibilitySettings];

    [(SBIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_iconView)
    {
      iconViewContainerView = [(SBHIconTableViewCell *)self iconViewContainerView];
      [viewCopy sizeToFit];
      [iconViewContainerView addSubview:viewCopy];
      topAnchor = [viewCopy topAnchor];
      topAnchor2 = [iconViewContainerView topAnchor];
      v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v26[0] = v23;
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [iconViewContainerView bottomAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v26[1] = v20;
      leadingAnchor = [viewCopy leadingAnchor];
      leadingAnchor2 = [iconViewContainerView leadingAnchor];
      v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v26[2] = v9;
      trailingAnchor = [viewCopy trailingAnchor];
      trailingAnchor2 = [iconViewContainerView trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v26[3] = v12;
      widthAnchor = [iconViewContainerView widthAnchor];
      [viewCopy iconImageSize];
      v14 = [widthAnchor constraintEqualToConstant:?];
      v26[4] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
      [(SBHIconTableViewCell *)self setIconViewContainerViewConstraints:v15];

      v16 = MEMORY[0x1E696ACD8];
      iconViewContainerViewConstraints = [(SBHIconTableViewCell *)self iconViewContainerViewConstraints];
      [v16 activateConstraints:iconViewContainerViewConstraints];
    }

    [(SBHIconTableViewCell *)self invalidateIntrinsicContentSize];
  }
}

- (void)configureCellForIcon:(id)icon
{
  iconCopy = icon;
  objc_storeStrong(&self->_icon, icon);
  if (iconCopy)
  {
    displayName = [iconCopy displayName];
    v6 = -[SBHIconTableViewCell _updateIconNameLabelForDisplayName:labelAccessoryType:](self, "_updateIconNameLabelForDisplayName:labelAccessoryType:", displayName, [iconCopy labelAccessoryType]);

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
  superview = [(SBIconView *)self->_iconView superview];
  iconViewContainerView = [(SBHIconTableViewCell *)self iconViewContainerView];

  if (superview == iconViewContainerView)
  {
    [(SBIconView *)self->_iconView removeFromSuperview];
  }

  iconView = self->_iconView;
  self->_iconView = 0;

  icon = self->_icon;
  self->_icon = 0;

  iconViewContainerView2 = [(SBHIconTableViewCell *)self iconViewContainerView];
  subviews = [iconViewContainerView2 subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  v8 = MEMORY[0x1E696ACD8];
  iconViewContainerViewConstraints = [(SBHIconTableViewCell *)self iconViewContainerViewConstraints];
  [v8 deactivateConstraints:iconViewContainerViewConstraints];

  [(SBHIconTableViewCell *)self setIconViewContainerViewConstraints:0];
}

- (void)_resetContent
{
  iconView = [(SBHIconTableViewCell *)self iconView];
  [iconView prepareForReuse];

  iconNameLabel = [(SBHIconTableViewCell *)self iconNameLabel];
  [iconNameLabel setText:0];

  [(SBHIconTableViewCell *)self _teardownIconLabelAccessoryView];
  self->_labelAccessoryType = 0;
  icon = self->_icon;
  self->_icon = 0;
}

- (BOOL)_updateIconNameLabelForDisplayName:(id)name labelAccessoryType:(int64_t)type
{
  nameCopy = name;
  text = [(UILabel *)self->_iconNameLabel text];
  v8 = BSEqualObjects();

  if ((v8 & 1) == 0)
  {
    [(UILabel *)self->_iconNameLabel setText:nameCopy];
    [(UILabel *)self->_iconNameLabel invalidateIntrinsicContentSize];
  }

  v9 = [(SBHIconTableViewCell *)self _setLabelAccessoryType:type]| ~v8;

  return v9 & 1;
}

- (BOOL)_setLabelAccessoryType:(int64_t)type
{
  if (type == 3)
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
    if (type == 3)
    {
      [SBIconView defaultViewClassForLabelAccessoryType:3];
      v7 = objc_opt_new();
      iconLabelAccessoryView = self->_iconLabelAccessoryView;
      self->_iconLabelAccessoryView = v7;

      v9 = self->_iconLabelAccessoryView;
      legibilitySettings = self->_legibilitySettings;
      iconNameLabel = [(SBHIconTableViewCell *)self iconNameLabel];
      font = [iconNameLabel font];
      [(SBIconLabelAccessoryView *)v9 updateWithLegibilitySettings:legibilitySettings labelFont:font];

      [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(SBHIconTableViewCell *)self contentView];
      [contentView addSubview:self->_iconLabelAccessoryView];

      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      hasBaseline = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView hasBaseline];
      v16 = self->_iconLabelAccessoryView;
      if (hasBaseline)
      {
        firstBaselineAnchor = [(SBIconLabelAccessoryView *)v16 firstBaselineAnchor];
        [(UILabel *)self->_iconNameLabel firstBaselineAnchor];
      }

      else
      {
        firstBaselineAnchor = [(SBIconLabelAccessoryView *)v16 centerYAnchor];
        [(UILabel *)self->_iconNameLabel centerYAnchor];
      }
      v18 = ;
      v19 = [firstBaselineAnchor constraintEqualToAnchor:v18];
      [(NSArray *)v14 addObject:v19];

      contentView2 = [(SBHIconTableViewCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];

      trailingAnchor = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView trailingAnchor];
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
      [(NSArray *)v14 addObject:v24];

      leadingAnchor = [(SBIconLabelAccessoryView *)self->_iconLabelAccessoryView leadingAnchor];
      trailingAnchor3 = [(UIView *)self->_labelContainerView trailingAnchor];
      v27 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
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