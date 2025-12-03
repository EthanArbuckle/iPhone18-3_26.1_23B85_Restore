@interface _UIStatusBarWifiSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size;
+ (double)_barThicknessAtIndex:(unint64_t)index iconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
+ (double)_totalWidthForIconSize:(int64_t)size;
+ (double)widthForIconSize:(int64_t)size;
+ (id)_barImageWithSize:(CGSize)size forScale:(double)scale distance:(double)distance angle:(double)angle centerPoint:(CGPoint)point cornerRadius:(double)radius thickness:(double)thickness rounded:(BOOL)self0;
- (CGSize)intrinsicContentSize;
- (double)_barCornerRadius;
- (id)accessibilityHUDRepresentation;
- (void)_colorsDidChange;
- (void)_iconSizeDidChange;
- (void)_setNeedsUpdateCycleAnimation;
- (void)_updateActiveBars;
- (void)_updateBars;
- (void)_updateCycleAnimationIfNeeded;
- (void)_updateCycleAnimationNow;
- (void)_updateFromMode:(int64_t)mode;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation _UIStatusBarWifiSignalView

- (double)_barCornerRadius
{
  iconSize = [(_UIStatusBarSignalView *)self iconSize];
  result = 0.5;
  switch(iconSize)
  {
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarWifiSignalView.m" lineNumber:66 description:@"Undefined icon size"];

      result = 0.0;
      break;
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 17:
      result = 0.666666667;
      break;
    case 9:
    case 11:
    case 15:
      result = 0.75;
      break;
    case 10:
    case 12:
    case 13:
      result = 0.833333333;
      break;
    default:
      return result;
  }

  return result;
}

+ (double)_barThicknessAtIndex:(unint64_t)index iconSize:(int64_t)size
{
  if (index)
  {
    result = 2.25;
    switch(size)
    {
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = currentHandler;
        v9 = a2;
        selfCopy2 = self;
        v11 = 151;
        goto LABEL_19;
      case 2:
      case 3:
      case 17:
        result = 2.33333333;
        break;
      case 4:
        result = 2.41666667;
        break;
      case 5:
      case 6:
      case 7:
        result = 2.5;
        break;
      case 8:
      case 12:
      case 13:
        result = 2.83333333;
        break;
      case 9:
      case 11:
      case 15:
        result = 2.75;
        break;
      case 10:
        result = 2.66666667;
        break;
      case 14:
        result = 2.0;
        break;
      default:
        return result;
    }
  }

  else
  {
    result = 3.25;
    switch(size)
    {
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = currentHandler;
        v9 = a2;
        selfCopy2 = self;
        v11 = 110;
LABEL_19:
        [currentHandler handleFailureInMethod:v9 object:selfCopy2 file:@"_UIStatusBarWifiSignalView.m" lineNumber:v11 description:@"Undefined icon size"];

        result = 0.0;
        break;
      case 2:
      case 3:
      case 17:
        result = 3.33333333;
        break;
      case 4:
      case 6:
        result = 3.5;
        break;
      case 7:
      case 10:
        result = 3.83333333;
        break;
      case 8:
        result = 4.33333333;
        break;
      case 9:
      case 15:
        result = 3.75;
        break;
      case 11:
        result = 4.25;
        break;
      case 12:
      case 13:
        result = 4.16666667;
        break;
      case 14:
        result = 3.0;
        break;
      default:
        return result;
    }
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 1.5;
  if (size > 8)
  {
    if (size > 11)
    {
      if (size == 12 || size == 13)
      {
        return 1.83333333;
      }

      v5 = size == 15;
    }

    else
    {
      if (size == 9)
      {
        return 1.75;
      }

      if (size == 10)
      {
        return 1.66666667;
      }

      v5 = size == 11;
    }

    v4 = 1.75;
    goto LABEL_18;
  }

  if (size > 5)
  {
    if (size != 6)
    {
      if (size != 7)
      {
        return 1.91666667;
      }

      return 1.75;
    }

    return 1.66666667;
  }

  if (!size)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarWifiSignalView.m" lineNumber:195 description:@"Undefined icon size"];

    return 0.0;
  }

  v4 = 1.75;
  if (size == 5)
  {
    result = 1.75;
  }

  v5 = size == 4;
LABEL_18:
  if (v5)
  {
    return v4;
  }

  return result;
}

+ (double)_totalWidthForIconSize:(int64_t)size
{
  result = 15.5;
  switch(size)
  {
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarWifiSignalView.m" lineNumber:238 description:@"Undefined icon size"];

      result = 0.0;
      break;
    case 2:
    case 3:
    case 17:
      result = 15.3333333;
      break;
    case 4:
      result = 16.6666667;
      break;
    case 5:
      result = 16.5;
      break;
    case 6:
      result = 16.3333333;
      break;
    case 7:
      result = 17.0;
      break;
    case 8:
      result = 19.6666667;
      break;
    case 9:
    case 15:
      result = 17.5;
      break;
    case 10:
      result = 17.6666667;
      break;
    case 11:
      result = 18.0;
      break;
    case 12:
    case 13:
      result = 19.0;
      break;
    case 14:
      result = 14.0;
      break;
    default:
      return result;
  }

  return result;
}

+ (double)widthForIconSize:(int64_t)size
{
  if (!size)
  {
    return 0.0;
  }

  [self _totalWidthForIconSize:?];
  return result;
}

- (void)_updateBars
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarWifiSignalView;
  [(_UIStatusBarSignalView *)&v6 _updateBars];
  if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
  {
    v3 = 0;
    do
    {
      layer = [MEMORY[0x1E6979398] layer];
      layer2 = [(UIView *)self layer];
      [layer2 addSublayer:layer];

      ++v3;
    }

    while (v3 < [(_UIStatusBarSignalView *)self numberOfBars]);
  }

  [(_UIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)layoutSubviews
{
  layer = [(UIView *)self layer];
  sublayers = [layer sublayers];
  [(_UIStatusBarWifiSignalView *)self _barCornerRadius];
  v5 = v4;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [objc_opt_class() _interspaceForIconSize:{-[_UIStatusBarSignalView iconSize](self, "iconSize")}];
  v42 = v14;
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  MidX = CGRectGetMidX(v47);
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  MaxY = CGRectGetMaxY(v48);
  rounded = [(_UIStatusBarSignalView *)self rounded];
  v37 = v9;
  v38 = v7;
  v49.origin.x = v7;
  v49.origin.y = v9;
  v17 = v11;
  v49.size.width = v11;
  v18 = v13;
  v49.size.height = v13;
  Height = CGRectGetHeight(v49);
  v45 = MidX;
  v20 = acos(MidX / Height);
  traitCollection = [(UIView *)self traitCollection];
  v22 = traitCollection;
  if (!traitCollection || ([traitCollection displayScale], v23 == 0.0))
  {
    _screen = [(UIView *)self _screen];
    [_screen scale];
    v44 = v26;
  }

  else
  {
    [v22 displayScale];
    v44 = v24;
  }

  if ([(_UIStatusBarSignalView *)self numberOfBars])
  {
    v27 = 0;
    v41 = MaxY + v5 * -0.5;
    v43 = v5 + v42;
    v39 = v38 + v11 * 0.5;
    v28 = v9 + v13 * 0.5;
    v29 = 0.0;
    do
    {
      v30 = [sublayers objectAtIndexedSubscript:v27];
      [objc_opt_class() _barThicknessAtIndex:v27 iconSize:{-[_UIStatusBarSignalView iconSize](self, "iconSize")}];
      v32 = v31 - v5;
      v33 = v20;
      if (rounded)
      {
        v50.origin.y = v37;
        v50.origin.x = v38;
        v50.size.width = v17;
        v50.size.height = v18;
        v34 = CGRectGetHeight(v50);
        v33 = v20 + atan(v32 * 0.5 / v34);
      }

      v35 = [objc_opt_class() _barImageWithSize:rounded forScale:v17 distance:v18 angle:v44 centerPoint:v29 cornerRadius:v33 thickness:v45 rounded:{v41, v5, *&v32}];
      [v30 setContents:{objc_msgSend(v35, "CGImage")}];
      [(UIView *)self bounds];
      [v30 setBounds:?];
      [v30 setPosition:{v39, v28}];
      v29 = v29 + v43 + v32;

      ++v27;
    }

    while (v27 < [(_UIStatusBarSignalView *)self numberOfBars]);
  }

  [(_UIStatusBarWifiSignalView *)self _updateActiveBars];
}

+ (id)_barImageWithSize:(CGSize)size forScale:(double)scale distance:(double)distance angle:(double)angle centerPoint:(CGPoint)point cornerRadius:(double)radius thickness:(double)thickness rounded:(BOOL)self0
{
  roundedCopy = rounded;
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  if (qword_1ED49ACA8 != -1)
  {
    dispatch_once(&qword_1ED49ACA8, &__block_literal_global_520);
  }

  v18 = [[_UIStatusBarSignalViewCacheKey alloc] initWithClass:objc_opt_class() size:roundedCopy rect:width radius:height lineWidth:x alternate:y scale:distance, angle, radius, thickness, *&scale];
  v19 = [_MergedGlobals_7_4 objectForKey:v18];
  if (!v19)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115___UIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_2;
    aBlock[3] = &__block_descriptor_80_e19__CGPoint_dd_16__0d8l;
    *&aBlock[4] = x;
    *&aBlock[5] = y;
    *&aBlock[6] = angle;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    *&aBlock[9] = radius;
    v20 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __115___UIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_3;
    v38[3] = &__block_descriptor_48_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v38[4] = width;
    *&v38[5] = height;
    v21 = _Block_copy(v38);
    v22 = +[UIGraphicsImageRendererFormat defaultFormat];
    [v22 setScale:scale];
    [v22 setOpaque:0];
    [v22 setPreferredRange:0x7FFFLL];
    height = [[UIGraphicsImageRenderer alloc] initWithSize:v22 format:width, height];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __115___UIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_4;
    v28[3] = &unk_1E71201D8;
    v37 = roundedCopy;
    distanceCopy = distance;
    v32 = x;
    v33 = y;
    thicknessCopy = thickness;
    v29 = v20;
    v30 = v21;
    angleCopy = angle;
    radiusCopy = radius;
    v24 = v21;
    v25 = v20;
    v19 = [(UIGraphicsImageRenderer *)height imageWithActions:v28];
    [_MergedGlobals_7_4 setObject:v19 forKey:v18];
  }

  return v19;
}

- (void)_colorsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarWifiSignalView;
  [(_UIStatusBarSignalView *)&v3 _colorsDidChange];
  [(_UIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_setNeedsUpdateCycleAnimation
{
  cycleAnimation = self->_cycleAnimation;
  if (cycleAnimation && [(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {

    [(_UIStatusBarWifiSignalView *)self _updateCycleAnimationNow];
  }

  else
  {
    self->_needsCycleAnimationUpdate = 1;
  }
}

- (void)_updateCycleAnimationIfNeeded
{
  if (!self->_cycleAnimation || self->_needsCycleAnimationUpdate)
  {
    [(_UIStatusBarWifiSignalView *)self _updateCycleAnimationNow];
  }
}

- (void)_updateCycleAnimationNow
{
  v44[4] = *MEMORY[0x1E69E9840];
  activeColor = [(_UIStatusBarSignalView *)self activeColor];
  inactiveColor = [(_UIStatusBarSignalView *)self inactiveColor];
  v5 = inactiveColor;
  if (activeColor && inactiveColor && [(_UIStatusBarSignalView *)self numberOfBars])
  {
    layer = [(UIView *)self layer];
    sublayers = [layer sublayers];

    array = [MEMORY[0x1E695DF70] array];
    numberOfBars = [(_UIStatusBarSignalView *)self numberOfBars];
    if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v10 = 0;
      v11 = (numberOfBars + 2);
      v12 = v11 * 0.2;
      v36 = *MEMORY[0x1E69795C0];
      v13 = v11 + 0.5;
      v14 = 1.0 / v11;
      v15 = 3.0 / v11;
      v35 = *MEMORY[0x1E6979590];
      v38 = sublayers;
      v39 = activeColor;
      v37 = array;
      do
      {
        v41 = [sublayers objectAtIndexedSubscript:{v10, v35}];
        animation = [MEMORY[0x1E6979308] animation];
        [animation setDuration:v12];
        LODWORD(v17) = 2139095040;
        [animation setRepeatCount:v17];
        [animation setAutoreverses:0];
        [animation setBeginTimeMode:v36];
        [animation duration];
        [animation setBeginTime:v10 / v13 * v18];
        v44[0] = &unk_1EFE2EBD8;
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v44[1] = v19;
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
        v44[2] = v20;
        v44[3] = &unk_1EFE2EBE8;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];

        v21 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
        [v21 setKeyTimes:v40];
        [v21 setCalculationMode:v35];
        [v21 setTensionValues:&unk_1EFE2D678];
        v22 = MEMORY[0x1E696AD98];
        [v5 alphaComponent];
        v23 = [v22 numberWithDouble:?];
        v43[0] = v23;
        v24 = MEMORY[0x1E696AD98];
        [activeColor alphaComponent];
        v25 = [v24 numberWithDouble:?];
        v43[1] = v25;
        v26 = MEMORY[0x1E696AD98];
        [v5 alphaComponent];
        v27 = [v26 numberWithDouble:?];
        v43[2] = v27;
        v28 = MEMORY[0x1E696AD98];
        [v5 alphaComponent];
        v29 = [v28 numberWithDouble:?];
        v43[3] = v29;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
        v31 = v30 = v5;
        [v21 setValues:v31];

        v5 = v30;
        array = v37;
        v42 = v21;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        [animation setAnimations:v32];

        v33 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:v41 animation:animation key:@"searching"];
        [v37 addObject:v33];

        activeColor = v39;
        sublayers = v38;

        ++v10;
      }

      while (v10 < [(_UIStatusBarSignalView *)self numberOfBars]);
    }

    v34 = [[_UIStatusBarCycleAnimation alloc] initWithLayerAnimations:array];
    [(_UIStatusBarWifiSignalView *)self setCycleAnimation:v34];
  }
}

- (void)_updateActiveBars
{
  v15.receiver = self;
  v15.super_class = _UIStatusBarWifiSignalView;
  [(_UIStatusBarSignalView *)&v15 _updateActiveBars];
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {
    layer = [(UIView *)self layer];
    sublayers = [layer sublayers];

    if ([(_UIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v6 = 0;
      do
      {
        v7 = [sublayers objectAtIndexedSubscript:v6];
        if ([(_UIStatusBarSignalView *)self signalMode]== 2 && v6 < [(_UIStatusBarSignalView *)self numberOfActiveBars])
        {
          activeColor = [(_UIStatusBarSignalView *)self activeColor];
        }

        else
        {
          activeColor = [(_UIStatusBarSignalView *)self inactiveColor];
        }

        v9 = activeColor;
        v10 = [activeColor colorWithAlphaComponent:1.0];
        cGColor = [v10 CGColor];

        [v9 alphaComponent];
        v13 = v12;
        [v7 setContentsMultiplyColor:cGColor];
        *&v14 = v13;
        [v7 setOpacity:v14];

        ++v6;
      }

      while (v6 < [(_UIStatusBarSignalView *)self numberOfBars]);
    }
  }
}

- (void)_updateFromMode:(int64_t)mode
{
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(_UIStatusBarCycleAnimation *)cycleAnimation state])
  {
    [(_UIStatusBarWifiSignalView *)self _updateActiveBars];
  }

  if ([(_UIStatusBarSignalView *)self signalMode]== 1)
  {
    [(_UIStatusBarWifiSignalView *)self _updateCycleAnimationIfNeeded];
    v5 = self->_cycleAnimation;

    [(_UIStatusBarCycleAnimation *)v5 start];
  }

  else
  {
    v6 = self->_cycleAnimation;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___UIStatusBarWifiSignalView__updateFromMode___block_invoke;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [(_UIStatusBarCycleAnimation *)v6 stopWithCompletionHandler:v7];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarWifiSignalView;
  [(UIView *)&v4 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    [(_UIStatusBarWifiSignalView *)self _updateActiveBars];
  }
}

- (void)_iconSizeDidChange
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarWifiSignalView;
  [(_UIStatusBarSignalView *)&v3 _iconSizeDidChange];
  [(_UIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size
{
  if (bars)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      [self _barThicknessAtIndex:v7 iconSize:size];
      v8 = v8 + v9;
      ++v7;
    }

    while (bars != v7);
  }

  else
  {
    v8 = 0.0;
  }

  [self _interspaceForIconSize:size];
  v11 = v10;
  v12 = 2.0;
  if (size <= 0x11)
  {
    if (((1 << size) & 0x235DC) != 0)
    {
      v12 = 3.0;
    }

    else if (!size)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v12 = v19;
    }
  }

  [self _totalWidthForIconSize:size];
  v14 = v13;
  UICeilToScale(v8 + v11 * (bars - 1), v12);
  v16 = v15;
  v17 = v14;
  result.height = v16;
  result.width = v17;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  numberOfBars = [(_UIStatusBarSignalView *)self numberOfBars];
  iconSize = [(_UIStatusBarSignalView *)self iconSize];

  [v3 _intrinsicContentSizeForNumberOfBars:numberOfBars iconSize:iconSize];
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(_UIStatusBarSignalView *)self signalMode]== 2)
  {
    numberOfActiveBars = [(_UIStatusBarSignalView *)self numberOfActiveBars];
  }

  else
  {
    numberOfActiveBars = 0;
  }

  v5 = [v3 stringWithFormat:@"AXHUD_WiFi_%d", numberOfActiveBars];
  v6 = [UIImage kitImageNamed:v5];
  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v7 setScaleImage:1];

  return v7;
}

@end