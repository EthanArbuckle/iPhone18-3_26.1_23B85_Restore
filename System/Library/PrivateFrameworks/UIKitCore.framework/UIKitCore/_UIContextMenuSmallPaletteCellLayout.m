@interface _UIContextMenuSmallPaletteCellLayout
- (BOOL)useContentShapeForSelectionHighlight;
- (CGRect)_rectForHighlightContentShape;
- (UIColor)preferredContentColorForCurrentState;
- (UIHoverStyle)hoverStyle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallPaletteCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
@end

@implementation _UIContextMenuSmallPaletteCellLayout

- (_UIContextMenuSmallPaletteCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallPaletteCellLayout;
  v5 = [(_UIContextMenuSmallPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallPaletteCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallPaletteCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
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

- (UIColor)preferredContentColorForCurrentState
{
  v2 = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  v3 = [v2 options];

  if (v3)
  {
    v4 = +[UIColor tertiaryLabelColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)installConstraints
{
  v2 = self;
  v58[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuSmallPaletteCellLayout *)self removeConstraints];
  v3 = [(_UIContextMenuSmallPaletteCellLayout *)v2 contentView];
  v4 = [v3 traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);

  v6 = [v3 labelStackView];
  [v6 removeFromSuperview];

  v7 = [v3 iconView];
  v8 = [v3 titleLabel];
  v9 = v8;
  if (v7)
  {
    v53 = v2;
    v55 = v8;
    v10 = v5;
    [v3 addSubview:v7];
    v11 = [v7 centerYAnchor];
    v12 = [v3 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v58[0] = v13;
    v14 = [v7 centerXAnchor];
    v15 = [v3 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v58[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = [v18 _currentImage];
      v20 = [v3 traitCollection];
      v21 = 0.0;
      if ([v19 isSymbolImage])
      {
        v5 = v10;
        v2 = v53;
        v9 = v55;
        if ([v20 userInterfaceStyle] == 1)
        {
          v49 = v20;
          v51 = v19;
          v22 = [v19 symbolConfiguration];
          v23 = [v22 _colors];
          v24 = [v23 firstObject];

          if (v24)
          {
            [v24 _luminance];
            v20 = v49;
            v19 = v51;
            if (v25 > 0.8)
            {
              v46 = [UIColor colorWithWhite:0.0 alpha:0.15];
              v26 = [v3 traitCollection];
              [v26 displayScale];
              v28 = 1.0 / v27;
              v29 = [v18 layer];
              [v29 setRimWidth:v28];

              v30 = [v18 layer];
              v21 = 1.0;
              LODWORD(v31) = 1.0;
              [v30 setRimOpacity:v31];

              v32 = [v24 _colorBlendedWithColor:v46 compositingFilter:*MEMORY[0x1E6979CE8]];
              v33 = [v32 CGColor];
              [v18 layer];
              v34 = v47 = v18;
              v35 = v33;
              v20 = v49;
              [v34 setRimColor:v35];

              v18 = v47;
              v19 = v51;
            }
          }

          else
          {
            v20 = v49;
            v19 = v51;
          }
        }
      }

      else
      {
        v5 = v10;
        v2 = v53;
        v9 = v55;
      }

      v37 = [v18 layer];
      *&v45 = v21;
      [v37 setRimOpacity:v45];
      goto LABEL_16;
    }

    v5 = v10;
    v2 = v53;
    v9 = v55;
  }

  else
  {
    if (v8)
    {
      v36 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
      [v9 setFont:v36];

      [v3 addSubview:v9];
      v48 = [v9 centerYAnchor];
      v52 = [v3 centerYAnchor];
      v50 = [v48 constraintEqualToAnchor:v52];
      v57[0] = v50;
      v37 = [v9 leadingAnchor];
      v54 = [v3 leadingAnchor];
      [v5 paletteItemMinimumHorizontalMargin];
      v38 = [v37 constraintEqualToAnchor:v54 constant:?];
      v57[1] = v38;
      v39 = [v9 trailingAnchor];
      [v3 trailingAnchor];
      v40 = v56 = v9;
      [v5 paletteItemMinimumHorizontalMargin];
      [v39 constraintEqualToAnchor:v40 constant:-v41];
      v42 = v2;
      v44 = v43 = v5;
      v57[2] = v44;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];

      v5 = v43;
      v2 = v42;
      v19 = v52;

      v9 = v56;
      v20 = v50;

      v18 = v48;
LABEL_16:

      goto LABEL_17;
    }

    v17 = 0;
  }

LABEL_17:
  [MEMORY[0x1E69977A0] activateConstraints:v17];
  [(_UIContextMenuSmallPaletteCellLayout *)v2 setManagedConstraints:v17];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIContextMenuSmallPaletteCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:v4];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (UIHoverStyle)hoverStyle
{
  v3 = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  v4 = [v3 iconView];
  if (v4 || ([v3 titleLabel], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 image];
      if ([v6 isSymbolImage])
      {
        v7 = _UIImageName(v6);
        if ([v7 containsString:@"circle.fill"] & 1) != 0 || (objc_msgSend(v7, "containsString:", @"square.fill"))
        {
          v8 = 1;
        }

        else
        {
          v8 = [v7 containsString:@"rectangle.fill"];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = [[UITargetedPreview alloc] initWithView:v5];
    if (v8)
    {
      v11 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v10];
      [v5 frame];
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      v16 = CGRectGetWidth(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v17 = CGRectGetHeight(v31);
      if (v16 < v17)
      {
        v17 = v16;
      }

      v18 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v17 * 0.5];
    }

    else
    {
      [(_UIContextMenuSmallPaletteCellLayout *)self _rectForHighlightContentShape];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v11 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v10];
      v18 = [UIPointerShape shapeWithRoundedRect:v20, v22, v24, v26];
    }

    v27 = v18;
    v9 = [UIPointerStyle styleWithEffect:v11 shape:v18];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIShape)contentShape
{
  v3 = objc_opt_new();
  [v3 setLayout:self];
  v4 = [UIShape shapeWithProvider:v3];

  return v4;
}

- (BOOL)useContentShapeForSelectionHighlight
{
  v2 = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  v3 = [v2 selectedIconBehavior] != 2;

  return v3;
}

- (CGRect)_rectForHighlightContentShape
{
  v2 = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  v3 = [v2 iconView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 titleLabel];
  }

  v6 = v5;

  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v36 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [v15 _scaledValueForValue:8.0];
  v17 = v16;
  v18 = [v2 traitCollection];
  [v18 displayScale];
  UIRoundToScale(v17, v19);
  v21 = v20;

  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  v38 = CGRectInset(v37, v21, v21);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  [v6 bounds];
  v26 = v21 + v21 + CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v27 = CGRectGetHeight(v40);
  if (v26 >= v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  [v2 bounds];
  v29 = CGRectGetWidth(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = v28;
  v42.size.height = height;
  v30 = CGRectGetWidth(v42);
  if (v29 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  v32 = v8 + (v12 - v31) * 0.5;
  v33 = v36 + (v14 - height) * 0.5;
  v34 = v31;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end