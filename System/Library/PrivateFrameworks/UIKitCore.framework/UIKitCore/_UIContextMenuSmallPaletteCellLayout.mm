@interface _UIContextMenuSmallPaletteCellLayout
- (BOOL)useContentShapeForSelectionHighlight;
- (CGRect)_rectForHighlightContentShape;
- (UIColor)preferredContentColorForCurrentState;
- (UIHoverStyle)hoverStyle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallPaletteCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)installConstraints;
- (void)removeConstraints;
@end

@implementation _UIContextMenuSmallPaletteCellLayout

- (_UIContextMenuSmallPaletteCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallPaletteCellLayout;
  v5 = [(_UIContextMenuSmallPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallPaletteCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallPaletteCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
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

- (UIColor)preferredContentColorForCurrentState
{
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  options = [contentView options];

  if (options)
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
  selfCopy = self;
  v58[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuSmallPaletteCellLayout *)self removeConstraints];
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)selfCopy contentView];
  traitCollection = [contentView traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  labelStackView = [contentView labelStackView];
  [labelStackView removeFromSuperview];

  iconView = [contentView iconView];
  titleLabel = [contentView titleLabel];
  v9 = titleLabel;
  if (iconView)
  {
    v53 = selfCopy;
    v55 = titleLabel;
    v10 = v5;
    [contentView addSubview:iconView];
    centerYAnchor = [iconView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v58[0] = v13;
    centerXAnchor = [iconView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = iconView;
      _currentImage = [v18 _currentImage];
      traitCollection2 = [contentView traitCollection];
      v21 = 0.0;
      if ([_currentImage isSymbolImage])
      {
        v5 = v10;
        selfCopy = v53;
        v9 = v55;
        if ([traitCollection2 userInterfaceStyle] == 1)
        {
          v49 = traitCollection2;
          v51 = _currentImage;
          symbolConfiguration = [_currentImage symbolConfiguration];
          _colors = [symbolConfiguration _colors];
          firstObject = [_colors firstObject];

          if (firstObject)
          {
            [firstObject _luminance];
            traitCollection2 = v49;
            _currentImage = v51;
            if (v25 > 0.8)
            {
              v46 = [UIColor colorWithWhite:0.0 alpha:0.15];
              traitCollection3 = [contentView traitCollection];
              [traitCollection3 displayScale];
              v28 = 1.0 / v27;
              layer = [v18 layer];
              [layer setRimWidth:v28];

              layer2 = [v18 layer];
              v21 = 1.0;
              LODWORD(v31) = 1.0;
              [layer2 setRimOpacity:v31];

              v32 = [firstObject _colorBlendedWithColor:v46 compositingFilter:*MEMORY[0x1E6979CE8]];
              cGColor = [v32 CGColor];
              [v18 layer];
              v34 = v47 = v18;
              v35 = cGColor;
              traitCollection2 = v49;
              [v34 setRimColor:v35];

              v18 = v47;
              _currentImage = v51;
            }
          }

          else
          {
            traitCollection2 = v49;
            _currentImage = v51;
          }
        }
      }

      else
      {
        v5 = v10;
        selfCopy = v53;
        v9 = v55;
      }

      layer3 = [v18 layer];
      *&v45 = v21;
      [layer3 setRimOpacity:v45];
      goto LABEL_16;
    }

    v5 = v10;
    selfCopy = v53;
    v9 = v55;
  }

  else
  {
    if (titleLabel)
    {
      v36 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
      [v9 setFont:v36];

      [contentView addSubview:v9];
      centerYAnchor3 = [v9 centerYAnchor];
      centerYAnchor4 = [contentView centerYAnchor];
      v50 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v57[0] = v50;
      layer3 = [v9 leadingAnchor];
      leadingAnchor = [contentView leadingAnchor];
      [v5 paletteItemMinimumHorizontalMargin];
      v38 = [layer3 constraintEqualToAnchor:leadingAnchor constant:?];
      v57[1] = v38;
      trailingAnchor = [v9 trailingAnchor];
      [contentView trailingAnchor];
      v40 = v56 = v9;
      [v5 paletteItemMinimumHorizontalMargin];
      [trailingAnchor constraintEqualToAnchor:v40 constant:-v41];
      v42 = selfCopy;
      v44 = v43 = v5;
      v57[2] = v44;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];

      v5 = v43;
      selfCopy = v42;
      _currentImage = centerYAnchor4;

      v9 = v56;
      traitCollection2 = v50;

      v18 = centerYAnchor3;
LABEL_16:

      goto LABEL_17;
    }

    v17 = 0;
  }

LABEL_17:
  [MEMORY[0x1E69977A0] activateConstraints:v17];
  [(_UIContextMenuSmallPaletteCellLayout *)selfCopy setManagedConstraints:v17];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuSmallPaletteCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (UIHoverStyle)hoverStyle
{
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  iconView = [contentView iconView];
  if (iconView || ([contentView titleLabel], (iconView = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = iconView;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      image = [v5 image];
      if ([image isSymbolImage])
      {
        v7 = _UIImageName(image);
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
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  v3 = [contentView selectedIconBehavior] != 2;

  return v3;
}

- (CGRect)_rectForHighlightContentShape
{
  contentView = [(_UIContextMenuSmallPaletteCellLayout *)self contentView];
  iconView = [contentView iconView];
  v4 = iconView;
  if (iconView)
  {
    titleLabel = iconView;
  }

  else
  {
    titleLabel = [contentView titleLabel];
  }

  v6 = titleLabel;

  [contentView bounds];
  v8 = v7;
  v10 = v9;
  v36 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [v15 _scaledValueForValue:8.0];
  v17 = v16;
  traitCollection = [contentView traitCollection];
  [traitCollection displayScale];
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

  [contentView bounds];
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