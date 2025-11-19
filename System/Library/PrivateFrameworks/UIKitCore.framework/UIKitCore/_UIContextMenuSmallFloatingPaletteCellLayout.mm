@interface _UIContextMenuSmallFloatingPaletteCellLayout
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallFloatingPaletteCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)_configureSharedFloatingContentViewStyle;
- (void)installConstraints;
- (void)removeConstraints;
- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4;
@end

@implementation _UIContextMenuSmallFloatingPaletteCellLayout

- (_UIContextMenuSmallFloatingPaletteCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallFloatingPaletteCellLayout;
  v5 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
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
  v2 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  v78[6] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuSmallFloatingPaletteCellLayout *)self removeConstraints];
  v74 = [MEMORY[0x1E695DF70] array];
  v3 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  v4 = [v3 labelStackView];
  [v4 removeFromSuperview];

  v5 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];

  if (!v5)
  {
    v6 = [_UIFloatingContentView alloc];
    v7 = [(_UIFloatingContentView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)self setFloatingContentView:v7];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)self _configureSharedFloatingContentViewStyle];
  }

  v8 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v3 addSubview:v8];

  v73 = [v3 iconView];
  v71 = [v3 titleLabel];
  v9 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v68 = self;
  v10 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  v11 = [v10 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  v69 = _UIContextMenuGetPlatformMetrics(v12);
  [v69 paletteMinimumItemSize];
  v14 = v13;
  v16 = v15;
  v65 = [v9 topAnchor];
  v62 = [v3 topAnchor];
  v60 = [v65 constraintEqualToAnchor:v62 constant:26.0];
  v78[0] = v60;
  v58 = [v9 bottomAnchor];
  v57 = [v3 bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:-46.0];
  v78[1] = v56;
  v55 = [v9 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v18 = [v55 constraintEqualToAnchor:v17];
  v78[2] = v18;
  v19 = [v9 trailingAnchor];
  v72 = v3;
  v20 = [v3 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v78[3] = v21;
  v22 = [v9 widthAnchor];
  v23 = [v22 constraintEqualToConstant:v14];
  v78[4] = v23;
  v70 = v9;
  v24 = [v9 heightAnchor];
  v25 = [v24 constraintEqualToConstant:v16];
  v78[5] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:6];
  [v74 addObjectsFromArray:v26];

  v27 = v73;
  if (v73)
  {
    v28 = [v70 contentView];
    [v28 addSubview:v73];

    v63 = [v73 centerYAnchor];
    v66 = [v70 contentView];
    v29 = [v66 centerYAnchor];
    v30 = [v63 constraintEqualToAnchor:v29];
    v77[0] = v30;
    v31 = [v73 centerXAnchor];
    v32 = [v70 contentView];
    v33 = [v32 centerXAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v77[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v36 = v74;
    [v74 addObjectsFromArray:v35];

    objc_opt_class();
    v38 = v71;
    v37 = v72;
    v39 = v70;
    if (objc_opt_isKindOfClass())
    {
      v40 = v73;
      v41 = [v40 _currentImage];
      if (([v72 options] & 4) != 0 && !objc_msgSend(v72, "selectedIconBehavior"))
      {
        if ([v72 isFocused])
        {
          +[UIColor blackColor];
        }

        else
        {
          +[UIColor labelColor];
        }
        v53 = ;
        v76 = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
        v42 = [UIImageSymbolConfiguration configurationWithPaletteColors:v54];
      }

      else
      {
        v42 = 0;
      }

      [v40 _setOverridingSymbolConfiguration:v42];
      goto LABEL_11;
    }
  }

  else
  {
    v36 = v74;
    v38 = v71;
    v37 = v72;
    v39 = v70;
    if (v71)
    {
      v43 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
      [v71 setFont:v43];

      v44 = [v70 contentView];
      [v44 addSubview:v71];

      v42 = [v71 centerYAnchor];
      v40 = [v70 contentView];
      v59 = [v40 centerYAnchor];
      v67 = [v42 constraintEqualToAnchor:v59];
      v75[0] = v67;
      v61 = [v71 leadingAnchor];
      v64 = [v70 contentView];
      v45 = [v64 leadingAnchor];
      [v69 paletteItemMinimumHorizontalMargin];
      v46 = [v61 constraintEqualToAnchor:v45 constant:?];
      v75[1] = v46;
      v47 = [v71 trailingAnchor];
      v48 = [v70 contentView];
      v49 = [v48 trailingAnchor];
      [v69 paletteItemMinimumHorizontalMargin];
      v51 = [v47 constraintEqualToAnchor:v49 constant:-v50];
      v75[2] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
      v36 = v74;
      [v74 addObjectsFromArray:v52];

      v41 = v59;
      v39 = v70;

      v38 = v71;
      v37 = v72;

LABEL_11:
      v27 = v73;
    }
  }

  [MEMORY[0x1E69977A0] activateConstraints:v36];
  [(_UIContextMenuSmallFloatingPaletteCellLayout *)v68 setManagedConstraints:v36];
}

- (void)removeConstraints
{
  v3 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v3 removeFromSuperview];

  v4 = MEMORY[0x1E69977A0];
  v5 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self managedConstraints];
  [v4 deactivateConstraints:v5];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4
{
  self->_controlState = a3;
  v6 = a4;
  v7 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v7 setControlState:a3 withAnimationCoordinator:v6];
}

- (void)_configureSharedFloatingContentViewStyle
{
  v3 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v29 = _UIContextMenuGetPlatformMetrics(v5);
  v6 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v7 = [v29 itemBackgroundColorProvider];
  v8 = v7[2](v7, 0, 0);
  [v6 setBackgroundColor:v8 forState:0];

  v9 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v10 = [v29 itemBackgroundColorProvider];
  v11 = v10[2](v10, 8, 0);
  [v9 setBackgroundColor:v11 forState:8];

  v12 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v13 = [v29 itemBackgroundColorProvider];
  v14 = v13[2](v13, 1, 0);
  [v12 setBackgroundColor:v14 forState:1];

  v15 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v16 = [v29 itemBackgroundColorProvider];
  v17 = v16[2](v16, 4, 0);
  [v15 setBackgroundColor:v17 forState:4];

  v18 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v19 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [v18 setFocusAnimationConfiguration:v19];

  v20 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v20 setCornerRadius:24.0];

  v21 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v21 setRoundContentWhenDeselected:1];

  v22 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v22 setClipsContentToBounds:1];

  v23 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v23 setFocusedSizeIncrease:20.0];

  v24 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v24 setShadowOpacity:1 forUserInterfaceStyle:0.3];

  v25 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v25 setUseShadowImage:0];

  v26 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v26 setShadowRadius:10.0];

  v27 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v27 setShadowVerticalOffset:10.0];

  v28 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [v28 setContentMotionRotation:0.0 translation:{0.0, 4.0, 4.0}];
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end