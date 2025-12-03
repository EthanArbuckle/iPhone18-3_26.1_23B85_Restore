@interface _UIContextMenuLargeLeadingImageCellLayout
- (void)installConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuLargeLeadingImageCellLayout

- (void)installConstraints
{
  v93[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeCellLayout *)self removeConstraints];
  contentView = [(_UIContextMenuLargeCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  labelStackView = [contentView labelStackView];
  decorationView = [contentView decorationView];
  iconView = [contentView iconView];
  keyShortcutView = [contentView keyShortcutView];
  traitCollection2 = [contentView traitCollection];
  v11 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  [v11 menuItemInternalPadding];
  v13 = v12;
  v15 = v14;

  [MEMORY[0x1E695DF70] array];
  v90 = v89 = decorationView;
  v88 = keyShortcutView;
  if (decorationView)
  {
    v16 = labelStackView;
    [contentView addSubview:v89];
    _hasTrailingAccessory = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];
    centerXAnchor = [v89 centerXAnchor];
    v19 = iconView;
    if (_hasTrailingAccessory)
    {
      [contentView trailingAnchor];
    }

    else
    {
      [contentView leadingAnchor];
    }
    v20 = ;
    v21 = [centerXAnchor constraintEqualToAnchor:v20];
    [(_UIContextMenuLargeCellLayout *)self setDecorationViewCenterX:v21];

    decorationViewCenterX = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
    v93[0] = decorationViewCenterX;
    centerYAnchor = [v89 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v93[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    [v90 addObjectsFromArray:v26];

    labelStackView = v16;
    iconView = v19;
    keyShortcutView = v88;
  }

  v27 = -v15;
  if (keyShortcutView)
  {
    [contentView addSubview:keyShortcutView];
    [keyShortcutView trailingAnchor];
    v28 = v86 = labelStackView;
    [contentView trailingAnchor];
    v30 = v29 = iconView;
    v31 = [v28 constraintEqualToAnchor:v30 constant:v27];
    v92[0] = v31;
    centerYAnchor3 = [keyShortcutView centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v92[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    [v90 addObjectsFromArray:v35];

    iconView = v29;
    labelStackView = v86;
  }

  if (iconView == 0 || IsAccessibilityCategory)
  {
    [iconView removeFromSuperview];
  }

  else
  {
    [contentView addSubview:iconView];
    centerYAnchor5 = [iconView centerYAnchor];
    centerYAnchor6 = [contentView centerYAnchor];
    v38 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v90 addObject:v38];

    centerXAnchor2 = [iconView centerXAnchor];
    leadingAnchor = [contentView leadingAnchor];
    v41 = [centerXAnchor2 constraintEqualToAnchor:leadingAnchor];
    [(_UIContextMenuLargeLeadingImageCellLayout *)self setLeadingToIconViewCenterX:v41];

    leadingToIconViewCenterX = [(_UIContextMenuLargeLeadingImageCellLayout *)self leadingToIconViewCenterX];
    [v90 addObject:leadingToIconViewCenterX];
  }

  titleLabel = [contentView titleLabel];
  text = [titleLabel text];
  if ([text length])
  {
  }

  else
  {
    subtitleLabel = [contentView subtitleLabel];
    text2 = [subtitleLabel text];
    v47 = [text2 length];

    if (!v47)
    {
      traitCollection3 = [contentView traitCollection];
      userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

      v78 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v78 itemTopToFirstBaseline];
      v80 = v79;

      v81 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v81 itemLastBaselineToBottom];
      v83 = v82;

      heightAnchor = [contentView heightAnchor];
      v85 = [heightAnchor constraintGreaterThanOrEqualToConstant:v80 + v83];
      [(_UIContextMenuLargeCellLayout *)self setMinHeightConstraint:v85];

      minHeightConstraint = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
      v75 = v90;
      [v90 addObject:minHeightConstraint];
      goto LABEL_22;
    }
  }

  [contentView addSubview:labelStackView];
  firstBaselineAnchor = [labelStackView firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  v50 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(_UIContextMenuLargeCellLayout *)self setTopToFirstBaseline:v50];

  lastBaselineAnchor = [labelStackView lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  v53 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
  [(_UIContextMenuLargeCellLayout *)self setLastBaselineToBottom:v53];

  leadingAnchor2 = [labelStackView leadingAnchor];
  leadingAnchor3 = [contentView leadingAnchor];
  v56 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v13];
  [(_UIContextMenuLargeCellLayout *)self setLeadingToLabelStackViewLeading:v56];

  superview = [v88 superview];

  if (superview)
  {
    trailingAnchor = [labelStackView trailingAnchor];
    leadingAnchor4 = [v88 leadingAnchor];
    v60 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:v27];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToKeyboardShortcutLeading:v60];

    labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
  }

  else
  {
    superview2 = [v89 superview];
    if (!superview2 || (v64 = superview2, v65 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory], v64, !v65))
    {
      trailingAnchor2 = [labelStackView trailingAnchor];
      trailingAnchor3 = [contentView trailingAnchor];
      minHeightConstraint = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v27];

      goto LABEL_21;
    }

    trailingAnchor4 = [labelStackView trailingAnchor];
    leadingAnchor5 = [v89 leadingAnchor];
    v68 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor5];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToDecorationViewLeading:v68];

    labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
  }

  minHeightConstraint = labelStackViewTrailingToKeyboardShortcutLeading;
LABEL_21:
  topToFirstBaseline = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  v91[0] = topToFirstBaseline;
  lastBaselineToBottom = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  v91[1] = lastBaselineToBottom;
  leadingToLabelStackViewLeading = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  v91[2] = leadingToLabelStackViewLeading;
  v91[3] = minHeightConstraint;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:4];
  v75 = v90;
  [v90 addObjectsFromArray:v74];

LABEL_22:
  [MEMORY[0x1E69977A0] activateConstraints:v75];
  [(_UIContextMenuLargeCellLayout *)self setManagedConstraints:v75];
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

  options = [contentView options];
  iconView = [contentView iconView];
  if (iconView || (options & 0x100) != 0)
  {

    if (!IsAccessibilityCategory)
    {
      v46 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v46 dynamicImageBoxWidth];
      v48 = v47;

      [v15 _scaledValueForValue:v48];
      UIRoundToViewScale(contentView);
      v50 = v49;
      v51 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v51 minIntraItemSpacing];
      v53 = v52;

      [v5 leadingImageOffset];
      v55 = v54;
      v56 = v37 + v50 * 0.5 + v54;
      leadingToIconViewCenterX = [(_UIContextMenuLargeLeadingImageCellLayout *)self leadingToIconViewCenterX];
      [leadingToIconViewCenterX setConstant:v56];

      v37 = v50 + v37 + v53 + v55;
    }
  }

  leadingToLabelStackViewLeading = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  [leadingToLabelStackViewLeading setConstant:v37];

  keyShortcutView = [contentView keyShortcutView];
  if (keyShortcutView)
  {
    v60 = keyShortcutView;
    labelStackViewTrailingToKeyboardShortcutLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];

    if (labelStackViewTrailingToKeyboardShortcutLeading)
    {
      v62 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v62 minIntraItemSpacing];
      v64 = v63;

      v65 = -v64;
      labelStackViewTrailingToKeyboardShortcutLeading2 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
LABEL_21:
      v78 = labelStackViewTrailingToKeyboardShortcutLeading2;
      [labelStackViewTrailingToKeyboardShortcutLeading2 setConstant:v65];

      goto LABEL_22;
    }
  }

  decorationView2 = [contentView decorationView];
  if (decorationView2)
  {
    v68 = decorationView2;
    _hasTrailingAccessory2 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (_hasTrailingAccessory2)
    {
      [v5 trailingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      v70 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v70 menuItemInternalPadding];

      _UIContextMenuGutterWidth(userInterfaceIdiom);
      UIRoundToViewScale(contentView);
      v72 = -v71;
      decorationViewCenterX2 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [decorationViewCenterX2 setConstant:v72];

      labelStackViewTrailingToDecorationViewLeading = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];

      if (labelStackViewTrailingToDecorationViewLeading)
      {
        v75 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
        [v75 minIntraItemSpacing];
        v77 = v76;

        v65 = -v77;
        labelStackViewTrailingToKeyboardShortcutLeading2 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v79 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v79 itemTopToFirstBaseline];
  v81 = v80;

  v82 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v82 itemLastBaselineToBottom];
  v84 = v83;

  [v15 _scaledValueForValue:v81 + v84];
  UIRoundToViewScale(contentView);
  v86 = v85;
  minHeightConstraint = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
  [minHeightConstraint setConstant:v86];
}

@end