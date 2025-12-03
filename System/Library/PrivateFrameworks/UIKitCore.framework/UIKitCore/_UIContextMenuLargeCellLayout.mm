@interface _UIContextMenuLargeCellLayout
- (BOOL)_hasTrailingAccessory;
- (BOOL)useContentShapeForSelectionHighlight;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargeCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuLargeCellLayout

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (BOOL)useContentShapeForSelectionHighlight
{
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  LOBYTE(contentView) = [v4 largeItemUsesContentShapeForSelectionHighlight];
  return contentView;
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuLargeCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (_UIContextMenuLargeCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargeCellLayout;
  v5 = [(_UIContextMenuLargeCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargeCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargeCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v7 = v6;
  if (font)
  {
    [v6 iconEmphasizedSymbolFont];
  }

  else
  {
    [v6 iconSymbolFont];
  }
  v8 = ;
  _fontAdjustedForCurrentContentSizeCategory = [v8 _fontAdjustedForCurrentContentSizeCategory];

  return _fontAdjustedForCurrentContentSizeCategory;
}

- (UIShape)contentShape
{
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  largeItemContentShape = [v4 largeItemContentShape];

  return largeItemContentShape;
}

- (void)installConstraints
{
  v96[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeCellLayout *)self removeConstraints];
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  labelStackView = [contentView labelStackView];
  decorationView = [contentView decorationView];
  iconView = [contentView iconView];
  keyShortcutView = [contentView keyShortcutView];
  [MEMORY[0x1E695DF70] array];
  v93 = v92 = decorationView;
  if (decorationView)
  {
    v90 = keyShortcutView;
    v11 = iconView;
    v12 = labelStackView;
    [contentView addSubview:decorationView];
    _hasTrailingAccessory = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];
    centerXAnchor = [decorationView centerXAnchor];
    if (_hasTrailingAccessory)
    {
      [contentView trailingAnchor];
    }

    else
    {
      [contentView leadingAnchor];
    }
    v15 = ;
    v16 = [centerXAnchor constraintEqualToAnchor:v15];
    [(_UIContextMenuLargeCellLayout *)self setDecorationViewCenterX:v16];

    decorationViewCenterX = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
    v96[0] = decorationViewCenterX;
    centerYAnchor = [decorationView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    [v93 addObjectsFromArray:v21];

    labelStackView = v12;
    iconView = v11;
    keyShortcutView = v90;
  }

  if (iconView == 0 || IsAccessibilityCategory)
  {
    [iconView removeFromSuperview];
    if (keyShortcutView)
    {
LABEL_8:
      [contentView addSubview:keyShortcutView];
      trailingAnchor = [keyShortcutView trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(_UIContextMenuLargeCellLayout *)self setKeyboardShortcutTrailingToTrailing:v24];

      keyboardShortcutTrailingToTrailing = [(_UIContextMenuLargeCellLayout *)self keyboardShortcutTrailingToTrailing];
      v95[0] = keyboardShortcutTrailingToTrailing;
      centerYAnchor3 = [keyShortcutView centerYAnchor];
      centerYAnchor4 = [contentView centerYAnchor];
      v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v95[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
      [v93 addObjectsFromArray:v29];

      goto LABEL_11;
    }
  }

  else
  {
    [contentView addSubview:iconView];
    centerYAnchor5 = [iconView centerYAnchor];
    centerYAnchor6 = [contentView centerYAnchor];
    v32 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v93 addObject:v32];

    centerXAnchor2 = [iconView centerXAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v35 = [centerXAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [(_UIContextMenuLargeCellLayout *)self setIconViewCenterXToTrailing:v35];

    iconViewCenterXToTrailing = [(_UIContextMenuLargeCellLayout *)self iconViewCenterXToTrailing];
    [v93 addObject:iconViewCenterXToTrailing];

    if (keyShortcutView)
    {
      goto LABEL_8;
    }
  }

  [0 removeFromSuperview];
LABEL_11:
  titleLabel = [contentView titleLabel];
  text = [titleLabel text];
  if ([text length])
  {
  }

  else
  {
    subtitleLabel = [contentView subtitleLabel];
    text2 = [subtitleLabel text];
    v41 = [text2 length];

    if (!v41)
    {
      traitCollection2 = [contentView traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      v74 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v74 itemTopToFirstBaseline];
      v76 = v75;

      v77 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v77 itemLastBaselineToBottom];
      v79 = v78;

      heightAnchor = [contentView heightAnchor];
      v81 = [heightAnchor constraintGreaterThanOrEqualToConstant:v76 + v79];
      [(_UIContextMenuLargeCellLayout *)self setMinHeightConstraint:v81];

      minHeightConstraint = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
      v71 = v93;
      [v93 addObject:minHeightConstraint];
      goto LABEL_20;
    }
  }

  [contentView addSubview:labelStackView];
  traitCollection3 = [contentView traitCollection];
  v43 = _UIContextMenuGetPlatformMetrics([traitCollection3 userInterfaceIdiom]);
  [v43 menuItemInternalPadding];
  v45 = v44;
  v47 = v46;

  firstBaselineAnchor = [labelStackView firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  v50 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(_UIContextMenuLargeCellLayout *)self setTopToFirstBaseline:v50];

  lastBaselineAnchor = [labelStackView lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  v53 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
  [(_UIContextMenuLargeCellLayout *)self setLastBaselineToBottom:v53];

  leadingAnchor = [labelStackView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v45];
  [(_UIContextMenuLargeCellLayout *)self setLeadingToLabelStackViewLeading:v56];

  superview = [keyShortcutView superview];

  v91 = iconView;
  if (superview)
  {
    trailingAnchor4 = [labelStackView trailingAnchor];
    leadingAnchor3 = [keyShortcutView leadingAnchor];
    v60 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor3];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToKeyboardShortcutLeading:v60];

    labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
  }

  else
  {
    superview2 = [iconView superview];

    if (superview2)
    {
      trailingAnchor5 = [labelStackView trailingAnchor];
      centerXAnchor3 = [iconView centerXAnchor];
      v65 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:centerXAnchor3];
      [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToiconViewCenterX:v65];

      labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToiconViewCenterX];
    }

    else
    {
      superview3 = [v92 superview];
      if (!superview3 || (v83 = superview3, v84 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory], v83, !v84))
      {
        trailingAnchor6 = [labelStackView trailingAnchor];
        trailingAnchor7 = [contentView trailingAnchor];
        minHeightConstraint = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v47];

        goto LABEL_19;
      }

      trailingAnchor8 = [labelStackView trailingAnchor];
      leadingAnchor4 = [v92 leadingAnchor];
      v87 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor4];
      [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToDecorationViewLeading:v87];

      labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
    }
  }

  minHeightConstraint = labelStackViewTrailingToKeyboardShortcutLeading;
LABEL_19:
  topToFirstBaseline = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  v94[0] = topToFirstBaseline;
  lastBaselineToBottom = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  v94[1] = lastBaselineToBottom;
  leadingToLabelStackViewLeading = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  v94[2] = leadingToLabelStackViewLeading;
  v94[3] = minHeightConstraint;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
  v71 = v93;
  [v93 addObjectsFromArray:v70];

  iconView = v91;
LABEL_20:

  [MEMORY[0x1E69977A0] activateConstraints:v71];
  [(_UIContextMenuLargeCellLayout *)self setManagedConstraints:v71];
}

- (void)updateConstraints
{
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  traitCollection2 = [contentView traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  subtitleLabel = [contentView subtitleLabel];
  text = [subtitleLabel text];
  v11 = [text length];

  traitCollection3 = [contentView traitCollection];
  v13 = _UIContextMenuGetPlatformMetrics([traitCollection3 userInterfaceIdiom]);
  titleFont = [v13 titleFont];
  v15 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection3];

  v16 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v16 itemBaselineToBaseline];
  v18 = v17;

  [v15 _scaledValueForValue:1 useLanguageAwareScaling:v18];
  UIRoundToViewScale(contentView);
  v20 = v19;
  labelStackView = [contentView labelStackView];
  [labelStackView setSpacing:v20];

  v22 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  v23 = v22;
  if (v11)
  {
    [v22 itemTopToFirstBaselineWithSubtitle];
  }

  else
  {
    [v22 itemTopToFirstBaseline];
  }

  v25 = v24;

  v26 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  v27 = v26;
  if (v11)
  {
    [v26 itemLastBaselineToBottomWithSubtitle];
  }

  else
  {
    [v26 itemLastBaselineToBottom];
  }

  v29 = v28;

  [v15 _scaledValueForValue:v25];
  UIRoundToViewScale(contentView);
  v31 = v30;
  [v15 _scaledValueForValue:v29];
  UIRoundToViewScale(contentView);
  v33 = v32;
  topToFirstBaseline = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  [topToFirstBaseline setConstant:v31];

  lastBaselineToBottom = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  [lastBaselineToBottom setConstant:-v33];

  [contentView directionalLayoutMargins];
  v37 = v36;
  decorationView = [contentView decorationView];
  if (decorationView)
  {
    v39 = decorationView;
    _hasTrailingAccessory = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (!_hasTrailingAccessory)
    {
      [v5 leadingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      UIRoundToViewScale(contentView);
      v42 = v41;
      decorationViewCenterX = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [decorationViewCenterX setConstant:v42];
    }
  }

  leadingToLabelStackViewLeading = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  [leadingToLabelStackViewLeading setConstant:v37];

  keyShortcutView = [contentView keyShortcutView];

  if (keyShortcutView)
  {
    v46 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v46 minIntraItemSpacing];
    v48 = v47;

    [contentView directionalLayoutMargins];
    v50 = v49;
    iconView = [contentView iconView];
    LOBYTE(v46) = iconView == 0 || IsAccessibilityCategory;

    if ((v46 & 1) == 0)
    {
      v52 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v52 dynamicImageBoxWidth];
      v54 = v53;

      [v15 _scaledValueForValue:v54];
      UIRoundToViewScale(contentView);
      v50 = v50 + v48 + v55;
    }

    keyboardShortcutTrailingToTrailing = [(_UIContextMenuLargeCellLayout *)self keyboardShortcutTrailingToTrailing];
    [keyboardShortcutTrailingToTrailing setConstant:-v50];

    labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
    [labelStackViewTrailingToKeyboardShortcutLeading setConstant:-v48];
  }

  iconView2 = [contentView iconView];
  v59 = iconView2 == 0 || IsAccessibilityCategory;

  if (!v59)
  {
    v60 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v60 dynamicImageBoxWidth];
    v62 = v61;

    [v15 _scaledValueForValue:v62];
    UIRoundToViewScale(contentView);
    v64 = v63;
    [contentView directionalLayoutMargins];
    v65 = v64 * 0.5;
    v67 = v64 * 0.5 + v66;
    v68 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v68 minIntraItemSpacing];
    v70 = v69;

    iconViewCenterXToTrailing = [(_UIContextMenuLargeCellLayout *)self iconViewCenterXToTrailing];
    [iconViewCenterXToTrailing setConstant:-v67];

    labelStackViewTrailingToiconViewCenterX = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToiconViewCenterX];
    [labelStackViewTrailingToiconViewCenterX setConstant:-(v65 + v70)];
  }

  decorationView2 = [contentView decorationView];
  if (decorationView2)
  {
    v74 = decorationView2;
    _hasTrailingAccessory2 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (_hasTrailingAccessory2)
    {
      [v5 trailingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      v76 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v76 menuItemInternalPadding];

      _UIContextMenuGutterWidth(userInterfaceIdiom);
      UIRoundToViewScale(contentView);
      v78 = -v77;
      decorationViewCenterX2 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [decorationViewCenterX2 setConstant:v78];

      labelStackViewTrailingToDecorationViewLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];

      if (labelStackViewTrailingToDecorationViewLeading)
      {
        v81 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
        [v81 minIntraItemSpacing];
        v83 = v82;

        labelStackViewTrailingToDecorationViewLeading2 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
        [labelStackViewTrailingToDecorationViewLeading2 setConstant:-v83];
      }
    }
  }

  v85 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v85 itemTopToFirstBaseline];
  v87 = v86;

  v88 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v88 itemLastBaselineToBottom];
  v90 = v89;

  [v15 _scaledValueForValue:v87 + v90];
  UIRoundToViewScale(contentView);
  v92 = v91;
  minHeightConstraint = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
  [minHeightConstraint setConstant:v92];
}

- (BOOL)_hasTrailingAccessory
{
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = ~[contentView options];

  return (v3 & 0x30) == 0;
}

@end