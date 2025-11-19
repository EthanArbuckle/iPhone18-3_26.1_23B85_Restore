@interface _UIContextMenuSmallCellLayout
- (UIHoverStyle)hoverStyle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuSmallCellLayout

- (_UIContextMenuSmallCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallCellLayout;
  v5 = [(_UIContextMenuSmallCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v5 = [v4 traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  v7 = v6;
  if (a3)
  {
    [v6 titleEmphasizedFont];
  }

  else
  {
    [v6 titleFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];

  return v9;
}

- (UIHoverStyle)hoverStyle
{
  v3 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = [(_UIContextMenuSmallCellLayout *)self contentShape];
    v7 = [UIHoverStyle styleWithShape:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIShape)contentShape
{
  v3 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = +[UIShape circleShape];
  }

  else
  {
    v7 = [(_UIContextMenuSmallCellLayout *)self contentView];
    v8 = [v7 traitCollection];
    v9 = _UIContextMenuGetPlatformMetrics([v8 userInterfaceIdiom]);

    v6 = [v9 smallItemContentShape];
  }

  return v6;
}

- (void)installConstraints
{
  [(_UIContextMenuSmallCellLayout *)self removeConstraints];
  v37 = [MEMORY[0x1E695DF70] array];
  v3 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v4 = [v3 iconView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 labelStackView];
  }

  v7 = v6;

  [v3 addSubview:v7];
  v8 = [v3 iconView];

  if (v8)
  {
    v9 = [v3 labelStackView];
    [v9 removeFromSuperview];

    v10 = [v7 centerYAnchor];
    v11 = [v3 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v37 addObject:v12];
  }

  else
  {
    v13 = [v3 titleLabel];

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [v3 iconView];
    [v14 removeFromSuperview];

    v15 = [v7 firstBaselineAnchor];
    v16 = [v3 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [(_UIContextMenuSmallCellLayout *)self setFirstBaselineConstraint:v17];

    v10 = [(_UIContextMenuSmallCellLayout *)self firstBaselineConstraint];
    [v37 addObject:v10];
  }

LABEL_9:
  v18 = [v3 traitCollection];
  v19 = _UIContextMenuGetPlatformMetrics([v18 userInterfaceIdiom]);

  v20 = [v7 leadingAnchor];
  v21 = [v3 leadingAnchor];
  [v19 smallItemMinimumHorizontalMargin];
  v22 = [v20 constraintEqualToAnchor:v21 constant:?];
  [v37 addObject:v22];

  v23 = [v3 trailingAnchor];
  v24 = [v7 trailingAnchor];
  [v19 smallItemMinimumHorizontalMargin];
  v25 = [v23 constraintEqualToAnchor:v24 constant:?];
  [v37 addObject:v25];

  v26 = [v3 traitCollection];
  v27 = [v26 userInterfaceIdiom];

  v28 = _UIContextMenuGetPlatformMetrics(v27);
  [v28 smallItemTopToFirstBaseline];
  v30 = v29;

  v31 = _UIContextMenuGetPlatformMetrics(v27);
  [v31 smallItemLastBaselineToBottom];
  v33 = v32;

  v34 = [v3 heightAnchor];
  v35 = [v34 constraintGreaterThanOrEqualToConstant:v30 + v33];
  [(_UIContextMenuSmallCellLayout *)self setMinHeightConstraint:v35];

  v36 = [(_UIContextMenuSmallCellLayout *)self minHeightConstraint];
  [v37 addObject:v36];

  [MEMORY[0x1E69977A0] activateConstraints:v37];
  [(_UIContextMenuSmallCellLayout *)self setManagedConstraints:v37];
}

- (void)updateConstraints
{
  v3 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [(_UIContextMenuSmallCellLayout *)self contentView];
  v7 = [v6 traitCollection];
  v8 = _UIContextMenuGetPlatformMetrics([v7 userInterfaceIdiom]);
  v9 = [v8 titleFont];
  v27 = [v9 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v7];

  v10 = _UIContextMenuGetPlatformMetrics(v5);
  [v10 smallItemTopToFirstBaseline];
  v12 = v11;

  [v27 _scaledValueForValue:v12];
  v13 = [(_UIContextMenuSmallCellLayout *)self contentView];
  UIRoundToViewScale(v13);
  v15 = v14;
  v16 = [(_UIContextMenuSmallCellLayout *)self firstBaselineConstraint];
  [v16 setConstant:v15];

  v17 = _UIContextMenuGetPlatformMetrics(v5);
  [v17 smallItemTopToFirstBaseline];
  v19 = v18;

  v20 = _UIContextMenuGetPlatformMetrics(v5);
  [v20 smallItemLastBaselineToBottom];
  v22 = v21;

  [v27 _scaledValueForValue:v19 + v22];
  v23 = [(_UIContextMenuSmallCellLayout *)self contentView];
  UIRoundToViewScale(v23);
  v25 = v24;
  v26 = [(_UIContextMenuSmallCellLayout *)self minHeightConstraint];
  [v26 setConstant:v25];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIContextMenuSmallCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:v4];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end