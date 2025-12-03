@interface _UIContextMenuLargePaletteCellLayout
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargePaletteCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)installConstraints;
- (void)removeConstraints;
@end

@implementation _UIContextMenuLargePaletteCellLayout

- (_UIContextMenuLargePaletteCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargePaletteCellLayout;
  v5 = [(_UIContextMenuLargePaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargePaletteCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargePaletteCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
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

- (UIShape)contentShape
{
  contentView = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  v44[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargePaletteCellLayout *)self removeConstraints];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  contentView = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v41 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  labelStackView = [contentView labelStackView];
  [labelStackView removeFromSuperview];

  iconView = [contentView iconView];
  titleLabel = [contentView titleLabel];
  v9 = titleLabel;
  if (iconView)
  {
    [contentView addSubview:iconView];
    [iconView centerYAnchor];
    v10 = v39 = v9;
    centerYAnchor = [contentView centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:centerYAnchor];
    v44[0] = v12;
    centerXAnchor = [iconView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v44[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [array addObjectsFromArray:v16];

    v9 = v39;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = iconView;
      _currentImage = [v17 _currentImage];
      widthAnchor = [v17 widthAnchor];
      [_currentImage size];
      centerYAnchor3 = widthAnchor;
      v36 = [widthAnchor constraintEqualToConstant:?];
      v43[0] = v36;
      heightAnchor = [v17 heightAnchor];
      v38 = _currentImage;
      [_currentImage size];
      v35 = heightAnchor;
      v34 = [heightAnchor constraintEqualToConstant:v21];
      v43[1] = v34;
      widthAnchor2 = [contentView widthAnchor];
      widthAnchor3 = [v17 widthAnchor];
      trailingAnchor = [widthAnchor2 constraintGreaterThanOrEqualToAnchor:widthAnchor3];
      v43[2] = trailingAnchor;
      heightAnchor2 = [contentView heightAnchor];
      heightAnchor3 = [v17 heightAnchor];

      v27 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
      v43[3] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
      [array addObjectsFromArray:v28];

      v9 = v39;
LABEL_6:
    }
  }

  else if (titleLabel)
  {
    v29 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [v9 setFont:v29];

    [contentView addSubview:v9];
    centerYAnchor2 = [v9 centerYAnchor];
    centerYAnchor3 = [contentView centerYAnchor];
    v38 = centerYAnchor2;
    v36 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    v42[0] = v36;
    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    [v41 paletteItemMinimumHorizontalMargin];
    v34 = leadingAnchor2;
    v35 = leadingAnchor;
    widthAnchor2 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v42[1] = widthAnchor2;
    widthAnchor3 = [v9 trailingAnchor];
    trailingAnchor = [contentView trailingAnchor];
    [v41 paletteItemMinimumHorizontalMargin];
    heightAnchor2 = [widthAnchor3 constraintEqualToAnchor:trailingAnchor constant:-v33];
    v42[2] = heightAnchor2;
    heightAnchor3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    [array addObjectsFromArray:heightAnchor3];
    goto LABEL_6;
  }

  [MEMORY[0x1E69977A0] activateConstraints:array];
  [(_UIContextMenuLargePaletteCellLayout *)selfCopy setManagedConstraints:array];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuLargePaletteCellLayout *)self managedConstraints];
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