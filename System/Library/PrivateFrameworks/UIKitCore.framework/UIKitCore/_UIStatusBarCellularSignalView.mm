@interface _UIStatusBarCellularSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4;
+ (double)_barCornerRadiusForIconSize:(int64_t)a3;
+ (double)_barWidthForIconSize:(int64_t)a3;
+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4;
+ (double)_interspaceForIconSize:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (double)_heightForBarAtIndex:(int64_t)a3;
- (double)_heightForBarAtIndex:(int64_t)a3 mode:(int64_t)a4;
- (id)accessibilityHUDRepresentation;
- (void)_colorsDidChange;
- (void)_iconSizeDidChange;
- (void)_setNeedsUpdateCycleAnimation;
- (void)_updateActiveBars;
- (void)_updateBars;
- (void)_updateCycleAnimationIfNeeded;
- (void)_updateCycleAnimationNow;
- (void)_updateFromMode:(int64_t)a3;
- (void)applyStyleAttributes:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCycleAnimation:(id)a3;
@end

@implementation _UIStatusBarCellularSignalView

+ (double)_barWidthForIconSize:(int64_t)a3
{
  result = 3.0;
  if (a3 > 9)
  {
    if (a3 > 12)
    {
      v4 = 4.0;
      if (a3 == 16)
      {
        result = 2.5;
      }

      if (a3 == 15)
      {
        result = 4.0;
      }

      v5 = a3 == 13;
      goto LABEL_20;
    }

    if (a3 != 10)
    {
      v4 = 4.5;
      if (a3 == 12)
      {
        result = 4.0;
      }

      v5 = a3 == 11;
      goto LABEL_20;
    }

    return 3.66666667;
  }

  if (a3 > 6)
  {
    if (a3 == 7)
    {
      return 3.33333333;
    }

    if (a3 != 8)
    {
      v5 = a3 == 9;
      v4 = 4.0;
LABEL_20:
      if (v5)
      {
        return v4;
      }

      return result;
    }

    return 3.66666667;
  }

  switch(a3)
  {
    case 0:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarCellularSignalView.m" lineNumber:72 description:@"Undefined icon size"];

      return 0.0;
    case 5:
      return 3.5;
    case 6:
      return 3.33333333;
  }

  return result;
}

- (double)_heightForBarAtIndex:(int64_t)a3
{
  v5 = [(_UIStatusBarSignalView *)self signalMode];

  [(_UIStatusBarCellularSignalView *)self _heightForBarAtIndex:a3 mode:v5];
  return result;
}

- (double)_heightForBarAtIndex:(int64_t)a3 mode:(int64_t)a4
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = objc_opt_class();
      v10 = [(_UIStatusBarSignalView *)self iconSize];

      [v9 _heightForNormalBarAtIndex:a3 iconSize:v10];
    }
  }

  else
  {
    v5 = objc_opt_class();
    v6 = [(_UIStatusBarSignalView *)self iconSize];

    [v5 _barWidthForIconSize:v6];
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  switch(a4)
  {
    case 0:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarCellularSignalView.m" lineNumber:183 description:@"Undefined icon size"];

      return 0.0;
    case 1:
      v12 = xmmword_18A681D40;
      v13 = xmmword_18A681D50;
      v5 = 0x403A000000000000;
      goto LABEL_17;
    case 2:
      v7 = xmmword_18A681CC0;
      v8 = xmmword_18A681D30;
      goto LABEL_10;
    case 3:
      v7 = xmmword_18A681C20;
      v8 = xmmword_18A681CE0;
LABEL_10:
      v12 = v7;
      v13 = v8;
      v6 = 0x4043800000000000;
      goto LABEL_21;
    case 4:
      v12 = xmmword_18A681CC0;
      v13 = xmmword_18A681CD0;
      v6 = 0x4045000000000000;
      goto LABEL_21;
    case 5:
      v12 = xmmword_18A681D10;
      v13 = xmmword_18A681D20;
      v5 = 0x403C000000000000;
      goto LABEL_17;
    case 6:
      v12 = xmmword_18A681CF0;
      v13 = xmmword_18A681D00;
      v6 = 0x4045800000000000;
      goto LABEL_21;
    case 7:
      v12 = xmmword_18A681CA0;
      v13 = xmmword_18A681CB0;
      v6 = 0x4046800000000000;
      goto LABEL_21;
    case 8:
      v12 = xmmword_18A681C80;
      v13 = xmmword_18A681C90;
      v6 = 0x4048800000000000;
      goto LABEL_21;
    case 9:
    case 15:
      v12 = xmmword_18A681BC0;
      v13 = xmmword_18A681BD0;
      v5 = 0x4040000000000000;
      goto LABEL_17;
    case 10:
      v12 = xmmword_18A681C40;
      v13 = xmmword_18A681C50;
      v6 = 0x4048000000000000;
      goto LABEL_21;
    case 11:
      v12 = xmmword_18A681C20;
      v13 = xmmword_18A681C30;
      v5 = 0x4041000000000000;
      goto LABEL_17;
    case 12:
      v12 = xmmword_18A681C00;
      v13 = xmmword_18A681C10;
      v6 = 0x404A000000000000;
      goto LABEL_21;
    case 13:
      v12 = xmmword_18A681C60;
      v13 = xmmword_18A681C70;
      v6 = 0x404B000000000000;
      goto LABEL_21;
    case 14:
      v12 = xmmword_18A681BE0;
      v13 = xmmword_18A681BF0;
      v5 = 0x4038000000000000;
      goto LABEL_17;
    case 16:
      v12 = xmmword_18A681BA0;
      v13 = xmmword_18A681BB0;
      v5 = 0x4035000000000000;
LABEL_17:
      v14 = v5;
      result = *(&v12 + a3) * 0.5;
      break;
    case 17:
      v12 = xmmword_18A67FDA0;
      v13 = xmmword_18A681B90;
      v6 = 0x4040000000000000;
LABEL_21:
      v14 = v6;
      result = *(&v12 + a3) / 3.0;
      break;
    default:
      return result;
  }

  return result;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)a3
{
  result = 1.0;
  if (a3 <= 8)
  {
    if (a3 <= 5)
    {
      if (a3)
      {
        if (a3 == 5)
        {
          return 1.15;
        }
      }

      else
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarCellularSignalView.m" lineNumber:227 description:@"Undefined icon size"];

        return 0.0;
      }
    }

    else
    {
      if (a3 != 6 && a3 != 7)
      {
        return 1.2;
      }

      return 1.16666667;
    }
  }

  else if (a3 > 11)
  {
    if (a3 == 12 || a3 == 13)
    {
      return 1.4;
    }

    else if (a3 == 15)
    {
      return 1.25;
    }
  }

  else
  {
    if (a3 != 9)
    {
      if (a3 != 10)
      {
        return 1.3;
      }

      return 1.2;
    }

    return 1.25;
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  result = 1.5;
  switch(a3)
  {
    case 0:
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarCellularSignalView.m" lineNumber:270 description:@"Undefined icon size"];

      result = 0.0;
      break;
    case 2:
    case 3:
    case 4:
    case 6:
    case 17:
      result = 1.66666667;
      break;
    case 7:
    case 9:
    case 10:
    case 11:
    case 15:
      result = 2.0;
      break;
    case 8:
    case 12:
    case 13:
      result = 2.33333333;
      break;
    default:
      return result;
  }

  return result;
}

- (void)_updateBars
{
  if ([(_UIStatusBarSignalView *)self iconSize])
  {
    v14.receiver = self;
    v14.super_class = _UIStatusBarCellularSignalView;
    [(_UIStatusBarSignalView *)&v14 _updateBars];
    v3 = [(_UIStatusBarSignalView *)self rounded];
    v4 = objc_opt_class();
    v5 = [(_UIStatusBarSignalView *)self iconSize];
    if (v3)
    {
      [v4 _barWidthForIconSize:v5];
      v7 = v6 * 0.5;
    }

    else
    {
      [v4 _barCornerRadiusForIconSize:v5];
      v7 = v8;
    }

    if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v9 = 0;
      v10 = *MEMORY[0x1E69796E8];
      v11 = *MEMORY[0x1E6979D68];
      do
      {
        v12 = [MEMORY[0x1E6979398] layer];
        [v12 setAnchorPoint:{0.5, 1.0}];
        [v12 setCornerCurve:v10];
        [v12 setCornerRadius:v7];
        if ([(_UIStatusBarCellularSignalView *)self needsLargerScale])
        {
          [v12 setMinificationFilter:v11];
          [v12 setRasterizationScale:5.0];
          [v12 setShouldRasterize:1];
        }

        v13 = [(UIView *)self layer];
        [v13 addSublayer:v12];

        ++v9;
      }

      while (v9 < [(_UIStatusBarSignalView *)self numberOfBars]);
    }

    [(_UIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
  }
}

- (void)_setNeedsUpdateCycleAnimation
{
  cycleAnimation = self->_cycleAnimation;
  if (cycleAnimation && [(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {

    [(_UIStatusBarCellularSignalView *)self _updateCycleAnimationNow];
  }

  else
  {
    self->_needsCycleAnimationUpdate = 1;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateCycleAnimationIfNeeded
{
  if (!self->_cycleAnimation || self->_needsCycleAnimationUpdate)
  {
    [(_UIStatusBarCellularSignalView *)self _updateCycleAnimationNow];
  }
}

- (void)_updateCycleAnimationNow
{
  v3 = self;
  v58[4] = *MEMORY[0x1E69E9840];
  v4 = [(_UIStatusBarSignalView *)self activeColor];
  v48 = [v4 colorWithAlphaComponent:0.6];

  v5 = [(_UIStatusBarSignalView *)v3 inactiveColor];
  if ([(_UIStatusBarSignalView *)v3 iconSize])
  {
    v6 = !v48 || v5 == 0;
    if (!v6 && [(_UIStatusBarSignalView *)v3 numberOfBars])
    {
      v3->_needsCycleAnimationUpdate = 0;
      v7 = [(_UIStatusBarSignalView *)v3 numberOfBars];
      v8 = [(UIView *)v3 layer];
      v9 = [v8 sublayers];

      v47 = [MEMORY[0x1E695DF70] array];
      v10 = [v9 count];
      if (v10 != [(_UIStatusBarSignalView *)v3 numberOfBars])
      {
        v43 = [MEMORY[0x1E696AAA8] currentHandler];
        [v43 handleFailureInMethod:a2 object:v3 file:@"_UIStatusBarCellularSignalView.m" lineNumber:338 description:@"The number of bars is not consistent"];
      }

      if ([(_UIStatusBarSignalView *)v3 numberOfBars]>= 1)
      {
        v11 = 0;
        v12 = (v7 + 3);
        v13 = v12 * 0.175;
        v14 = v12 + 0.5;
        v15 = 1.0 / v12;
        v16 = 3.0 / v12;
        v44 = *MEMORY[0x1E6979590];
        v45 = *MEMORY[0x1E69795C0];
        v46 = v9;
        do
        {
          v52 = v11;
          v51 = [v9 objectAtIndexedSubscript:{v11, v44}];
          v50 = [MEMORY[0x1E6979308] animation];
          [v50 setDuration:v13];
          LODWORD(v17) = 2139095040;
          [v50 setRepeatCount:v17];
          [v50 setAutoreverses:0];
          [v50 setBeginTimeMode:v45];
          [v50 duration];
          [v50 setBeginTime:v52 / v14 * v18];
          v58[0] = &unk_1EFE2EB88;
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
          v58[1] = v19;
          v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          v58[2] = v20;
          v58[3] = &unk_1EFE2EB98;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];

          v22 = [MEMORY[0x1E6979390] animationWithKeyPath:@"backgroundColor"];
          [v22 setKeyTimes:v21];
          [v22 setCalculationMode:v44];
          v49 = v22;
          [v22 setTensionValues:&unk_1EFE2D660];
          v57[0] = [v5 CGColor];
          v57[1] = [v48 CGColor];
          v57[2] = [v5 CGColor];
          v57[3] = [v5 CGColor];
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
          [v22 setValues:v23];

          v24 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.height"];
          [(_UIStatusBarCellularSignalView *)v3 _heightForBarAtIndex:0 mode:0];
          v26 = v25;
          [(_UIStatusBarCellularSignalView *)v3 _heightForBarAtIndex:1 mode:2];
          v28 = v27;
          [v24 setKeyTimes:v21];
          [v24 setCalculationMode:v44];
          [v24 setTensionValues:&unk_1EFE2D660];
          v29 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
          v56[0] = v29;
          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
          v56[1] = v30;
          [MEMORY[0x1E696AD98] numberWithDouble:v26];
          v31 = v3;
          v33 = v32 = v5;
          v56[2] = v33;
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
          v56[3] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
          [v24 setValues:v35];

          v5 = v32;
          v3 = v31;
          v9 = v46;

          v55[0] = v49;
          v55[1] = v24;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
          [v50 setAnimations:v36];

          v37 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:v51 animation:v50 key:@"searching"];
          [v47 addObject:v37];

          v38 = [(_UIStatusBarSignalView *)v3 numberOfBars];
          v11 = v52 + 1;
        }

        while ((v52 + 1) < v38);
      }

      v39 = [[_UIStatusBarCycleAnimation alloc] initWithLayerAnimations:v47];
      cycleAnimation = v3->_cycleAnimation;
      if (!cycleAnimation)
      {
        goto LABEL_15;
      }

      v41 = [(_UIStatusBarCycleAnimation *)cycleAnimation state];
      if (v41 == 1)
      {
        v42 = v3->_cycleAnimation;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __58___UIStatusBarCellularSignalView__updateCycleAnimationNow__block_invoke;
        v53[3] = &unk_1E70F3C60;
        v53[4] = v3;
        v54 = v39;
        [(_UIStatusBarCycleAnimation *)v42 stopWithCompletionHandler:v53];

        goto LABEL_17;
      }

      if (!v41)
      {
LABEL_15:
        [(_UIStatusBarCellularSignalView *)v3 setCycleAnimation:v39];
      }

LABEL_17:
    }
  }
}

- (void)setCycleAnimation:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_cycleAnimation != v5)
  {
    objc_storeStrong(&self->_cycleAnimation, a3);
    if (v5)
    {
      v7[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [(_UIStatusBarPersistentAnimationView *)self setPersistentAnimations:v6];
    }

    else
    {
      [(_UIStatusBarPersistentAnimationView *)self setPersistentAnimations:MEMORY[0x1E695E0F0]];
    }
  }
}

- (void)layoutSubviews
{
  v22 = [(UIView *)self layer];
  v3 = [v22 sublayers];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_opt_class() _barWidthForIconSize:{-[_UIStatusBarSignalView iconSize](self, "iconSize")}];
  v13 = v12;
  [objc_opt_class() _interspaceForIconSize:{-[_UIStatusBarSignalView iconSize](self, "iconSize")}];
  v15 = v14;
  if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
  {
    v16 = 0;
    v17 = v13 + v15;
    do
    {
      v18 = [v3 objectAtIndexedSubscript:v16];
      [(_UIStatusBarCellularSignalView *)self _heightForBarAtIndex:v16];
      v20 = v19;
      if ([(UIView *)self _shouldReverseLayoutDirection])
      {
        v24.origin.x = v5;
        v24.origin.y = v7;
        v24.size.width = v9;
        v24.size.height = v11;
        v21 = CGRectGetWidth(v24) - v13 - v17 * v16;
      }

      else
      {
        v21 = v17 * v16;
      }

      v25.origin.x = v5;
      v25.origin.y = v7;
      v25.size.width = v9;
      v25.size.height = v11;
      [v18 setFrame:{v21, CGRectGetHeight(v25) - v20, v13, v20}];

      ++v16;
    }

    while (v16 < [(_UIStatusBarSignalView *)self numberOfBars]);
  }

  [(_UIStatusBarCellularSignalView *)self _updateActiveBars];
  if ([(_UIStatusBarSignalView *)self signalMode]== 1)
  {
    [(_UIStatusBarCellularSignalView *)self _updateCycleAnimationIfNeeded];
    [(_UIStatusBarCycleAnimation *)self->_cycleAnimation start];
  }
}

- (void)_colorsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarCellularSignalView;
  [(_UIStatusBarSignalView *)&v3 _colorsDidChange];
  [(_UIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_iconSizeDidChange
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarCellularSignalView;
  [(_UIStatusBarSignalView *)&v3 _iconSizeDidChange];
  [(_UIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_updateActiveBars
{
  v13.receiver = self;
  v13.super_class = _UIStatusBarCellularSignalView;
  [(_UIStatusBarSignalView *)&v13 _updateActiveBars];
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {
    v4 = [(_UIStatusBarSignalView *)self activeColor];
    v5 = [(_UIStatusBarSignalView *)self inactiveColor];
    v6 = [(UIView *)self layer];
    v7 = [v6 sublayers];

    if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v8 = 0;
      do
      {
        if ([(_UIStatusBarSignalView *)self signalMode]!= 2 || (v9 = [(_UIStatusBarSignalView *)self numberOfActiveBars], v10 = v4, v8 >= v9))
        {
          v10 = v5;
        }

        v11 = [v10 CGColor];
        v12 = [v7 objectAtIndexedSubscript:v8];
        [v12 setBackgroundColor:v11];

        ++v8;
      }

      while (v8 < [(_UIStatusBarSignalView *)self numberOfBars]);
    }
  }
}

- (void)_updateFromMode:(int64_t)a3
{
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {
    [(UIView *)self setNeedsLayout];
  }

  if (a3 == 1 && [(_UIStatusBarSignalView *)self signalMode]!= 1)
  {
    v6 = self->_cycleAnimation;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___UIStatusBarCellularSignalView__updateFromMode___block_invoke;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [(_UIStatusBarCycleAnimation *)v6 stopWithCompletionHandler:v7];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarCellularSignalView;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(_UIStatusBarCellularSignalView *)self _updateActiveBars];
  }
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4
{
  [a1 _barWidthForIconSize:a4];
  v8 = v7;
  [a1 _interspaceForIconSize:a4];
  v10 = v8 * a3 + v9 * (a3 - 1);
  [a1 _heightForNormalBarAtIndex:? iconSize:?];
  v12 = v11;
  v13 = v10;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  v4 = [(_UIStatusBarSignalView *)self numberOfBars];
  v5 = [(_UIStatusBarSignalView *)self iconSize];

  [v3 _intrinsicContentSizeForNumberOfBars:v4 iconSize:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(_UIStatusBarSignalView *)self signalMode]== 2)
  {
    v4 = [(_UIStatusBarSignalView *)self numberOfActiveBars];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", v4];
  v6 = [UIImage kitImageNamed:v5];
  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v7 setScaleImage:1];

  return v7;
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  -[_UIStatusBarCellularSignalView setNeedsLargerScale:](self, "setNeedsLargerScale:", [v4 isScaledFixedWidthBar]);
  v5.receiver = self;
  v5.super_class = _UIStatusBarCellularSignalView;
  [(_UIStatusBarSignalView *)&v5 applyStyleAttributes:v4];
}

@end