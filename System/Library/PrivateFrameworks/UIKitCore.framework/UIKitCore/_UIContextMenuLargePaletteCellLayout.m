@interface _UIContextMenuLargePaletteCellLayout
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargePaletteCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
@end

@implementation _UIContextMenuLargePaletteCellLayout

- (_UIContextMenuLargePaletteCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargePaletteCellLayout;
  v5 = [(_UIContextMenuLargePaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargePaletteCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargePaletteCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
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

- (UIShape)contentShape
{
  v2 = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  v44[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargePaletteCellLayout *)self removeConstraints];
  v3 = [MEMORY[0x1E695DF70] array];
  v40 = self;
  v4 = [(_UIContextMenuLargePaletteCellLayout *)self contentView];
  v5 = [v4 traitCollection];
  v41 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);

  v6 = [v4 labelStackView];
  [v6 removeFromSuperview];

  v7 = [v4 iconView];
  v8 = [v4 titleLabel];
  v9 = v8;
  if (v7)
  {
    [v4 addSubview:v7];
    [v7 centerYAnchor];
    v10 = v39 = v9;
    v11 = [v4 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v44[0] = v12;
    v13 = [v7 centerXAnchor];
    v14 = [v4 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v44[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [v3 addObjectsFromArray:v16];

    v9 = v39;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v7;
      v18 = [v17 _currentImage];
      v19 = [v17 widthAnchor];
      [v18 size];
      v37 = v19;
      v36 = [v19 constraintEqualToConstant:?];
      v43[0] = v36;
      v20 = [v17 heightAnchor];
      v38 = v18;
      [v18 size];
      v35 = v20;
      v34 = [v20 constraintEqualToConstant:v21];
      v43[1] = v34;
      v22 = [v4 widthAnchor];
      v23 = [v17 widthAnchor];
      v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];
      v43[2] = v24;
      v25 = [v4 heightAnchor];
      v26 = [v17 heightAnchor];

      v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];
      v43[3] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
      [v3 addObjectsFromArray:v28];

      v9 = v39;
LABEL_6:
    }
  }

  else if (v8)
  {
    v29 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [v9 setFont:v29];

    [v4 addSubview:v9];
    v30 = [v9 centerYAnchor];
    v37 = [v4 centerYAnchor];
    v38 = v30;
    v36 = [v30 constraintEqualToAnchor:v37];
    v42[0] = v36;
    v31 = [v9 leadingAnchor];
    v32 = [v4 leadingAnchor];
    [v41 paletteItemMinimumHorizontalMargin];
    v34 = v32;
    v35 = v31;
    v22 = [v31 constraintEqualToAnchor:v32 constant:?];
    v42[1] = v22;
    v23 = [v9 trailingAnchor];
    v24 = [v4 trailingAnchor];
    [v41 paletteItemMinimumHorizontalMargin];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-v33];
    v42[2] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    [v3 addObjectsFromArray:v26];
    goto LABEL_6;
  }

  [MEMORY[0x1E69977A0] activateConstraints:v3];
  [(_UIContextMenuLargePaletteCellLayout *)v40 setManagedConstraints:v3];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIContextMenuLargePaletteCellLayout *)self managedConstraints];
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