@interface _UIContextMenuMediumCellLayout
- (BOOL)_hasTitle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuMediumCellLayout)initWithContentView:(id)view;
- (id)_currentPlatformMetrics;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuMediumCellLayout

- (_UIContextMenuMediumCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuMediumCellLayout;
  v5 = [(_UIContextMenuMediumCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuMediumCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuMediumCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  fontCopy = font;
  _currentPlatformMetrics = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  if ([(_UIContextMenuMediumCellLayout *)self _hasTitle])
  {
    [_currentPlatformMetrics mediumItemIconTextStyle];
  }

  else
  {
    [_currentPlatformMetrics mediumItemIconTextStyleWithoutTitle];
  }
  v6 = ;
  if (fontCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [off_1E70ECC18 _preferredFontForTextStyle:v6 addingSymbolicTraits:v7];

  return v8;
}

- (UIShape)contentShape
{
  _currentPlatformMetrics = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  mediumItemContentShape = [_currentPlatformMetrics mediumItemContentShape];

  return mediumItemContentShape;
}

- (void)installConstraints
{
  [(_UIContextMenuMediumCellLayout *)self removeConstraints];
  _currentPlatformMetrics = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  array = [MEMORY[0x1E695DF70] array];
  _hasTitle = [(_UIContextMenuMediumCellLayout *)self _hasTitle];
  contentView = [(_UIContextMenuMediumCellLayout *)self contentView];
  labelStackView = [contentView labelStackView];
  iconView = [contentView iconView];
  titleLabel = [contentView titleLabel];
  [titleLabel setTextAlignment:1];
  mediumItemTitleFont = [_currentPlatformMetrics mediumItemTitleFont];
  [titleLabel setFont:mediumItemTitleFont];

  LODWORD(v10) = 1148846080;
  [titleLabel setContentHuggingPriority:1 forAxis:v10];
  if (iconView)
  {
    [contentView addSubview:iconView];
    centerXAnchor = [iconView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v13 = iconView;
    v14 = labelStackView;
    v16 = v15 = titleLabel;
    [array addObject:v16];

    titleLabel = v15;
    labelStackView = v14;
    iconView = v13;
  }

  if (titleLabel)
  {
    [contentView addSubview:labelStackView];
    contentView2 = [(_UIContextMenuMediumCellLayout *)self contentView];
    [contentView2 traitCollection];
    v65 = _hasTitle;
    v18 = iconView;
    v20 = v19 = titleLabel;
    v21 = _UIContextMenuGetPlatformMetrics([v20 userInterfaceIdiom]);

    leadingAnchor = [labelStackView leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    [v21 mediumItemMinimumHorizontalMargin];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v24];

    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [labelStackView trailingAnchor];
    [v21 mediumItemMinimumHorizontalMargin];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    [array addObject:v27];

    titleLabel = v19;
    iconView = v18;
    _hasTitle = v65;
  }

  v28 = !_hasTitle;
  if (!iconView)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    centerYAnchor = [iconView centerYAnchor];
    topAnchor = [contentView topAnchor];
LABEL_11:
    v31 = topAnchor;
    v32 = [centerYAnchor constraintEqualToAnchor:topAnchor];
    [(_UIContextMenuMediumCellLayout *)self setPrimaryViewCenterYConstraint:v32];

    firstBaselineAnchor = [labelStackView firstBaselineAnchor];
    topAnchor2 = [contentView topAnchor];
    v35 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor2];
    [(_UIContextMenuMediumCellLayout *)self setTopConstraint:v35];

    bottomAnchor = [contentView bottomAnchor];
    lastBaselineAnchor = [labelStackView lastBaselineAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    [(_UIContextMenuMediumCellLayout *)self setBottomConstraint:v38];

    bottomAnchor2 = [contentView bottomAnchor];
    v40 = labelStackView;
LABEL_12:
    lastBaselineAnchor2 = [v40 lastBaselineAnchor];
    v42 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
    [(_UIContextMenuMediumCellLayout *)self setFittingBottomConstraint:v42];

    topConstraint = [(_UIContextMenuMediumCellLayout *)self topConstraint];
    LODWORD(v44) = 1144750080;
    [topConstraint setPriority:v44];

    bottomConstraint = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
    LODWORD(v46) = 1144733696;
    [bottomConstraint setPriority:v46];

    primaryViewCenterYConstraint = [(_UIContextMenuMediumCellLayout *)self primaryViewCenterYConstraint];
    [array addObject:primaryViewCenterYConstraint];

    topConstraint2 = [(_UIContextMenuMediumCellLayout *)self topConstraint];
    [array addObject:topConstraint2];

    bottomConstraint2 = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
    [array addObject:bottomConstraint2];

    fittingBottomConstraint = [(_UIContextMenuMediumCellLayout *)self fittingBottomConstraint];
    [array addObject:fittingBottomConstraint];

    goto LABEL_13;
  }

  if (_hasTitle)
  {
    centerYAnchor = [labelStackView centerYAnchor];
    topAnchor = [contentView centerYAnchor];
    goto LABEL_11;
  }

  if (iconView)
  {
    centerYAnchor2 = [iconView centerYAnchor];
    centerYAnchor3 = [contentView centerYAnchor];
    v58 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    [(_UIContextMenuMediumCellLayout *)self setPrimaryViewCenterYConstraint:v58];

    topAnchor3 = [iconView topAnchor];
    topAnchor4 = [contentView topAnchor];
    v61 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [(_UIContextMenuMediumCellLayout *)self setTopConstraint:v61];

    bottomAnchor3 = [contentView bottomAnchor];
    lastBaselineAnchor3 = [iconView lastBaselineAnchor];
    v64 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor3];
    [(_UIContextMenuMediumCellLayout *)self setBottomConstraint:v64];

    bottomAnchor2 = [contentView bottomAnchor];
    v40 = iconView;
    goto LABEL_12;
  }

LABEL_13:
  heightAnchor = [contentView heightAnchor];
  v52 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  [(_UIContextMenuMediumCellLayout *)self setMinimumHeightConstraint:v52];

  minimumHeightConstraint = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  LODWORD(v54) = 1148829696;
  [minimumHeightConstraint setPriority:v54];

  minimumHeightConstraint2 = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  [array addObject:minimumHeightConstraint2];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  [(_UIContextMenuMediumCellLayout *)self setManagedConstraints:array];
}

- (void)updateConstraints
{
  contentView = [(_UIContextMenuMediumCellLayout *)self contentView];
  _currentPlatformMetrics = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  traitCollection = [contentView traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  titleFont = [v5 titleFont];
  v7 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  LODWORD(traitCollection) = [(_UIContextMenuMediumCellLayout *)self _hasTitle];
  [_currentPlatformMetrics mediumItemLastBaselineToBottom];
  [v7 _scaledValueForValue:?];
  if (traitCollection)
  {
    iconView = [contentView iconView];

    [_currentPlatformMetrics mediumItemTopToFirstBaseline];
    v10 = v9;
    if (iconView)
    {
      [_currentPlatformMetrics mediumItemBaselineToBaseline];
      [v7 _scaledValueForValue:v10 + v11];
    }

    else
    {
      [v7 _scaledValueForValue:v9];
    }
  }

  UIRoundToViewScale(contentView);
  v13 = v12;
  primaryViewCenterYConstraint = [(_UIContextMenuMediumCellLayout *)self primaryViewCenterYConstraint];
  [primaryViewCenterYConstraint setConstant:v13];

  UIRoundToViewScale(contentView);
  v16 = v15;
  topConstraint = [(_UIContextMenuMediumCellLayout *)self topConstraint];
  [topConstraint setConstant:v16];

  UIRoundToViewScale(contentView);
  v19 = v18;
  bottomConstraint = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
  [bottomConstraint setConstant:v19];

  UIRoundToViewScale(contentView);
  v22 = v21;
  fittingBottomConstraint = [(_UIContextMenuMediumCellLayout *)self fittingBottomConstraint];
  [fittingBottomConstraint setConstant:v22];

  [_currentPlatformMetrics mediumItemTopToFirstBaseline];
  v25 = v24;
  [_currentPlatformMetrics mediumItemBaselineToBaseline];
  v27 = v25 + v26;
  [_currentPlatformMetrics mediumItemLastBaselineToBottom];
  [v7 _scaledValueForValue:v27 + v28];
  v30 = v29;
  minimumHeightConstraint = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  [minimumHeightConstraint setConstant:v30];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuMediumCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (BOOL)_hasTitle
{
  contentView = [(_UIContextMenuMediumCellLayout *)self contentView];
  titleLabel = [contentView titleLabel];
  text = [titleLabel text];
  v5 = [text length] != 0;

  return v5;
}

- (id)_currentPlatformMetrics
{
  contentView = [(_UIContextMenuMediumCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v4;
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end