@interface _UIContextMenuSmallCellLayout
- (UIHoverStyle)hoverStyle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuSmallCellLayout

- (_UIContextMenuSmallCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallCellLayout;
  v5 = [(_UIContextMenuSmallCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuSmallCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v7 = v6;
  if (font)
  {
    [v6 titleEmphasizedFont];
  }

  else
  {
    [v6 titleFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  return v9;
}

- (UIHoverStyle)hoverStyle
{
  contentView = [(_UIContextMenuSmallCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    contentShape = [(_UIContextMenuSmallCellLayout *)self contentShape];
    v7 = [UIHoverStyle styleWithShape:contentShape];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIShape)contentShape
{
  contentView = [(_UIContextMenuSmallCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    smallItemContentShape = +[UIShape circleShape];
  }

  else
  {
    contentView2 = [(_UIContextMenuSmallCellLayout *)self contentView];
    traitCollection2 = [contentView2 traitCollection];
    v9 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

    smallItemContentShape = [v9 smallItemContentShape];
  }

  return smallItemContentShape;
}

- (void)installConstraints
{
  [(_UIContextMenuSmallCellLayout *)self removeConstraints];
  array = [MEMORY[0x1E695DF70] array];
  contentView = [(_UIContextMenuSmallCellLayout *)self contentView];
  iconView = [contentView iconView];
  v5 = iconView;
  if (iconView)
  {
    labelStackView = iconView;
  }

  else
  {
    labelStackView = [contentView labelStackView];
  }

  v7 = labelStackView;

  [contentView addSubview:v7];
  iconView2 = [contentView iconView];

  if (iconView2)
  {
    labelStackView2 = [contentView labelStackView];
    [labelStackView2 removeFromSuperview];

    centerYAnchor = [v7 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v12];
  }

  else
  {
    titleLabel = [contentView titleLabel];

    if (!titleLabel)
    {
      goto LABEL_9;
    }

    iconView3 = [contentView iconView];
    [iconView3 removeFromSuperview];

    firstBaselineAnchor = [v7 firstBaselineAnchor];
    topAnchor = [contentView topAnchor];
    v17 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
    [(_UIContextMenuSmallCellLayout *)self setFirstBaselineConstraint:v17];

    centerYAnchor = [(_UIContextMenuSmallCellLayout *)self firstBaselineConstraint];
    [array addObject:centerYAnchor];
  }

LABEL_9:
  traitCollection = [contentView traitCollection];
  v19 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  leadingAnchor = [v7 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  [v19 smallItemMinimumHorizontalMargin];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [array addObject:v22];

  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  [v19 smallItemMinimumHorizontalMargin];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  [array addObject:v25];

  traitCollection2 = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  v28 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v28 smallItemTopToFirstBaseline];
  v30 = v29;

  v31 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v31 smallItemLastBaselineToBottom];
  v33 = v32;

  heightAnchor = [contentView heightAnchor];
  v35 = [heightAnchor constraintGreaterThanOrEqualToConstant:v30 + v33];
  [(_UIContextMenuSmallCellLayout *)self setMinHeightConstraint:v35];

  minHeightConstraint = [(_UIContextMenuSmallCellLayout *)self minHeightConstraint];
  [array addObject:minHeightConstraint];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  [(_UIContextMenuSmallCellLayout *)self setManagedConstraints:array];
}

- (void)updateConstraints
{
  contentView = [(_UIContextMenuSmallCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  contentView2 = [(_UIContextMenuSmallCellLayout *)self contentView];
  traitCollection2 = [contentView2 traitCollection];
  v8 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  titleFont = [v8 titleFont];
  v27 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection2];

  v10 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v10 smallItemTopToFirstBaseline];
  v12 = v11;

  [v27 _scaledValueForValue:v12];
  contentView3 = [(_UIContextMenuSmallCellLayout *)self contentView];
  UIRoundToViewScale(contentView3);
  v15 = v14;
  firstBaselineConstraint = [(_UIContextMenuSmallCellLayout *)self firstBaselineConstraint];
  [firstBaselineConstraint setConstant:v15];

  v17 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v17 smallItemTopToFirstBaseline];
  v19 = v18;

  v20 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v20 smallItemLastBaselineToBottom];
  v22 = v21;

  [v27 _scaledValueForValue:v19 + v22];
  contentView4 = [(_UIContextMenuSmallCellLayout *)self contentView];
  UIRoundToViewScale(contentView4);
  v25 = v24;
  minHeightConstraint = [(_UIContextMenuSmallCellLayout *)self minHeightConstraint];
  [minHeightConstraint setConstant:v25];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuSmallCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end