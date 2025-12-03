@interface STUIStatusBarWifiSignalView
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

@implementation STUIStatusBarWifiSignalView

- (void)_updateBars
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarWifiSignalView;
  [(STUIStatusBarSignalView *)&v6 _updateBars];
  if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
  {
    v3 = 0;
    do
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      layer2 = [(STUIStatusBarWifiSignalView *)self layer];
      [layer2 addSublayer:layer];

      ++v3;
    }

    while (v3 < [(STUIStatusBarSignalView *)self numberOfBars]);
  }

  [(STUIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_setNeedsUpdateCycleAnimation
{
  cycleAnimation = self->_cycleAnimation;
  if (cycleAnimation && [(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {

    [(STUIStatusBarWifiSignalView *)self _updateCycleAnimationNow];
  }

  else
  {
    self->_needsCycleAnimationUpdate = 1;
  }
}

- (void)_colorsDidChange
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarWifiSignalView;
  [(STUIStatusBarSignalView *)&v3 _colorsDidChange];
  [(STUIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_updateActiveBars
{
  v15.receiver = self;
  v15.super_class = STUIStatusBarWifiSignalView;
  [(STUIStatusBarSignalView *)&v15 _updateActiveBars];
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {
    layer = [(STUIStatusBarWifiSignalView *)self layer];
    sublayers = [layer sublayers];

    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v6 = 0;
      do
      {
        v7 = [sublayers objectAtIndexedSubscript:v6];
        if ([(STUIStatusBarSignalView *)self signalMode]== 2 && v6 < [(STUIStatusBarSignalView *)self numberOfActiveBars])
        {
          activeColor = [(STUIStatusBarSignalView *)self activeColor];
        }

        else
        {
          activeColor = [(STUIStatusBarSignalView *)self inactiveColor];
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

      while (v6 < [(STUIStatusBarSignalView *)self numberOfBars]);
    }
  }
}

- (void)_iconSizeDidChange
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarWifiSignalView;
  [(STUIStatusBarSignalView *)&v3 _iconSizeDidChange];
  [(STUIStatusBarWifiSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarWifiSignalView;
  [(STUIStatusBarWifiSignalView *)&v4 didMoveToWindow];
  window = [(STUIStatusBarWifiSignalView *)self window];

  if (window)
  {
    [(STUIStatusBarWifiSignalView *)self _updateActiveBars];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  numberOfBars = [(STUIStatusBarSignalView *)self numberOfBars];
  iconSize = [(STUIStatusBarSignalView *)self iconSize];

  [v3 _intrinsicContentSizeForNumberOfBars:numberOfBars iconSize:iconSize];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  layer = [(STUIStatusBarWifiSignalView *)self layer];
  sublayers = [layer sublayers];
  [(STUIStatusBarWifiSignalView *)self _barCornerRadius];
  v5 = v4;
  [(STUIStatusBarWifiSignalView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [objc_opt_class() _interspaceForIconSize:{-[STUIStatusBarSignalView iconSize](self, "iconSize")}];
  v37 = v14;
  v43.origin.x = v7;
  v43.origin.y = v9;
  v43.size.width = v11;
  v43.size.height = v13;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = v7;
  v44.origin.y = v9;
  v44.size.width = v11;
  v44.size.height = v13;
  MaxY = CGRectGetMaxY(v44);
  rounded = [(STUIStatusBarSignalView *)self rounded];
  rect = v7;
  v45.origin.x = v7;
  v18 = v9;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  Height = CGRectGetHeight(v45);
  v40 = MidX;
  v20 = acos(MidX / Height);
  traitCollection = [(STUIStatusBarWifiSignalView *)self traitCollection];
  v22 = traitCollection;
  if (!traitCollection || ([traitCollection displayScale], v23 == 0.0))
  {
    _screen = [(STUIStatusBarWifiSignalView *)self _screen];
    [_screen scale];
    v39 = v26;
  }

  else
  {
    [v22 displayScale];
    v39 = v24;
  }

  if ([(STUIStatusBarSignalView *)self numberOfBars])
  {
    v27 = 0;
    v36 = MaxY + v5 * -0.5;
    v38 = v5 + v37;
    v28 = 0.0;
    do
    {
      v29 = [sublayers objectAtIndexedSubscript:v27];
      [objc_opt_class() _barThicknessAtIndex:v27 iconSize:{-[STUIStatusBarSignalView iconSize](self, "iconSize")}];
      v31 = v30 - v5;
      v32 = v20;
      if (rounded)
      {
        v46.origin.x = rect;
        v46.origin.y = v18;
        v46.size.width = v11;
        v46.size.height = v13;
        v33 = CGRectGetHeight(v46);
        v32 = v20 + atan(v31 * 0.5 / v33);
      }

      v34 = [objc_opt_class() _barImageWithSize:rounded forScale:v11 distance:v13 angle:v39 centerPoint:v28 cornerRadius:v32 thickness:v40 rounded:{v36, v5, *&v31}];
      [v29 setContents:{objc_msgSend(v34, "CGImage")}];
      [(STUIStatusBarWifiSignalView *)self bounds];
      [v29 setBounds:?];
      UIRectGetCenter();
      [v29 setPosition:?];
      v28 = v28 + v38 + v31;

      ++v27;
    }

    while (v27 < [(STUIStatusBarSignalView *)self numberOfBars]);
  }

  [(STUIStatusBarWifiSignalView *)self _updateActiveBars];
}

- (double)_barCornerRadius
{
  iconSize = [(STUIStatusBarSignalView *)self iconSize];
  result = 0.5;
  if (iconSize <= 0x11)
  {
    return dbl_26C5820C8[iconSize];
  }

  return result;
}

+ (double)_barThicknessAtIndex:(unint64_t)index iconSize:(int64_t)size
{
  result = 2.25;
  if (!index)
  {
    result = 3.25;
  }

  if (size <= 0x11)
  {
    v5 = &unk_26C5821E8;
    if (!index)
    {
      v5 = &unk_26C582158;
    }

    return v5[size];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 1.5;
  if (size <= 0xF)
  {
    return dbl_26C582278[size];
  }

  return result;
}

+ (double)_totalWidthForIconSize:(int64_t)size
{
  result = 15.5;
  switch(size)
  {
    case 0:
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
      v4 = _UIEnhancedMainMenuEnabled();
      result = 14.0;
      if (v4)
      {
        result = 15.0;
      }

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

+ (id)_barImageWithSize:(CGSize)size forScale:(double)scale distance:(double)distance angle:(double)angle centerPoint:(CGPoint)point cornerRadius:(double)radius thickness:(double)thickness rounded:(BOOL)self0
{
  roundedCopy = rounded;
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  if (qword_280C1E778 != -1)
  {
    dispatch_once(&qword_280C1E778, &__block_literal_global_7);
  }

  v18 = [[STUIStatusBarSignalViewCacheKey alloc] initWithClass:objc_opt_class() size:roundedCopy rect:width radius:height lineWidth:x alternate:y scale:distance, angle, radius, thickness, *&scale];
  v19 = [_MergedGlobals_2 objectForKey:v18];
  if (!v19)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_2;
    aBlock[3] = &__block_descriptor_80_e19__CGPoint_dd_16__0d8l;
    *&aBlock[4] = x;
    *&aBlock[5] = y;
    *&aBlock[6] = angle;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    *&aBlock[9] = radius;
    v20 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_3;
    v38[3] = &__block_descriptor_48_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v38[4] = width;
    *&v38[5] = height;
    v21 = _Block_copy(v38);
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    [preferredFormat setScale:scale];
    [preferredFormat setOpaque:0];
    [preferredFormat setPreferredRange:0x7FFFLL];
    v23 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:preferredFormat format:{width, height}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_4;
    v28[3] = &unk_279D38A48;
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
    v19 = [v23 imageWithActions:v28];
    [_MergedGlobals_2 setObject:v19 forKey:v18];
  }

  return v19;
}

uint64_t __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _MergedGlobals_2;
  _MergedGlobals_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 48);
  if (*(a1 + 96) == 1 && v3 == 0.0)
  {
    v4 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:*(a1 + 56) startAngle:*(a1 + 64) - *(a1 + 72) * 0.5 endAngle:*(a1 + 72) * 0.5 clockwise:{0.0, 6.28318531}];
  }

  else
  {
    v5 = (*(*(a1 + 32) + 16))(*(a1 + 48));
    v7 = v6;
    v4 = [MEMORY[0x277D75208] bezierPath];
    [v4 moveToPoint:{v5, v7}];
    [v4 addArcWithCenter:1 radius:*(a1 + 56) startAngle:*(a1 + 64) endAngle:v3 clockwise:{*(a1 + 80) + 3.14159265, 6.28318531 - *(a1 + 80)}];
    v8 = *(a1 + 72);
    if (*(a1 + 96))
    {
      v8 = v8 * 0.5;
    }

    v9 = v3 + v8;
    (*(*(a1 + 32) + 16))(v9);
    (*(*(a1 + 40) + 16))();
    if (*(a1 + 96) == 1)
    {
      [v4 addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
      v9 = v9 + *(a1 + 72) * 0.5;
    }

    else
    {
      [v4 addLineToPoint:?];
    }

    [v4 addArcWithCenter:0 radius:*(a1 + 56) startAngle:*(a1 + 64) endAngle:v9 clockwise:{6.28318531 - *(a1 + 80), *(a1 + 80) + 3.14159265}];
    if (*(a1 + 96) == 1)
    {
      (*(*(a1 + 32) + 16))(v9 - *(a1 + 72) * 0.5);
      [v4 addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
    }

    else
    {
      [v4 setLineJoinStyle:1];
    }
  }

  [v4 setLineWidth:*(a1 + 88)];
  [v4 closePath];
  [v4 fill];
  [v4 stroke];
}

- (void)_updateCycleAnimationIfNeeded
{
  if (!self->_cycleAnimation || self->_needsCycleAnimationUpdate)
  {
    [(STUIStatusBarWifiSignalView *)self _updateCycleAnimationNow];
  }
}

- (void)_updateCycleAnimationNow
{
  v44[4] = *MEMORY[0x277D85DE8];
  activeColor = [(STUIStatusBarSignalView *)self activeColor];
  inactiveColor = [(STUIStatusBarSignalView *)self inactiveColor];
  v5 = inactiveColor;
  if (activeColor && inactiveColor && [(STUIStatusBarSignalView *)self numberOfBars])
  {
    layer = [(STUIStatusBarWifiSignalView *)self layer];
    sublayers = [layer sublayers];

    array = [MEMORY[0x277CBEB18] array];
    numberOfBars = [(STUIStatusBarSignalView *)self numberOfBars];
    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v10 = 0;
      v11 = (numberOfBars + 2);
      v12 = v11 * 0.2;
      v36 = *MEMORY[0x277CDA080];
      v13 = v11 + 0.5;
      v14 = 1.0 / v11;
      v15 = 3.0 / v11;
      v35 = *MEMORY[0x277CDA058];
      v38 = sublayers;
      v39 = activeColor;
      v37 = array;
      do
      {
        v41 = [sublayers objectAtIndexedSubscript:{v10, v35}];
        animation = [MEMORY[0x277CD9E00] animation];
        [animation setDuration:v12];
        LODWORD(v17) = 2139095040;
        [animation setRepeatCount:v17];
        [animation setAutoreverses:0];
        [animation setBeginTimeMode:v36];
        [animation duration];
        [animation setBeginTime:v10 / v13 * v18];
        v44[0] = &unk_287D1B320;
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        v44[1] = v19;
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        v44[2] = v20;
        v44[3] = &unk_287D1B330;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];

        v21 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
        [v21 setKeyTimes:v40];
        [v21 setCalculationMode:v35];
        [v21 setTensionValues:&unk_287D1AF30];
        v22 = MEMORY[0x277CCABB0];
        [v5 alphaComponent];
        v23 = [v22 numberWithDouble:?];
        v43[0] = v23;
        v24 = MEMORY[0x277CCABB0];
        [activeColor alphaComponent];
        v25 = [v24 numberWithDouble:?];
        v43[1] = v25;
        v26 = MEMORY[0x277CCABB0];
        [v5 alphaComponent];
        v27 = [v26 numberWithDouble:?];
        v43[2] = v27;
        v28 = MEMORY[0x277CCABB0];
        [v5 alphaComponent];
        v29 = [v28 numberWithDouble:?];
        v43[3] = v29;
        [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
        v31 = v30 = v5;
        [v21 setValues:v31];

        v5 = v30;
        array = v37;
        v42 = v21;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [animation setAnimations:v32];

        v33 = [STUIStatusBarCycleLayerAnimation cycleAnimationWithLayer:v41 animation:animation key:@"searching"];
        [v37 addObject:v33];

        activeColor = v39;
        sublayers = v38;

        ++v10;
      }

      while (v10 < [(STUIStatusBarSignalView *)self numberOfBars]);
    }

    v34 = [[STUIStatusBarCycleAnimation alloc] initWithLayerAnimations:array];
    [(STUIStatusBarWifiSignalView *)self setCycleAnimation:v34];
  }
}

- (void)_updateFromMode:(int64_t)mode
{
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {
    [(STUIStatusBarWifiSignalView *)self _updateActiveBars];
  }

  if ([(STUIStatusBarSignalView *)self signalMode]== 1)
  {
    [(STUIStatusBarWifiSignalView *)self _updateCycleAnimationIfNeeded];
    v5 = self->_cycleAnimation;

    [(STUIStatusBarCycleAnimation *)v5 start];
  }

  else
  {
    v6 = self->_cycleAnimation;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__STUIStatusBarWifiSignalView__updateFromMode___block_invoke;
    v7[3] = &unk_279D386A0;
    v7[4] = self;
    [(STUIStatusBarCycleAnimation *)v6 stopWithCompletionHandler:v7];
  }
}

uint64_t __47__STUIStatusBarWifiSignalView__updateFromMode___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateActiveBars];
  }

  return result;
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

  [self _interspaceForIconSize:size];
  if (size <= 0x11 && ((1 << size) & 0x235DC) == 0 && !size)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
  }

  [self _totalWidthForIconSize:size];
  v11 = v10;
  UICeilToScale();
  v13 = v12;
  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  if ([(STUIStatusBarSignalView *)self signalMode]== 2)
  {
    numberOfActiveBars = [(STUIStatusBarSignalView *)self numberOfActiveBars];
  }

  else
  {
    numberOfActiveBars = 0;
  }

  v5 = [v3 stringWithFormat:@"AXHUD_WiFi_%d", numberOfActiveBars];
  v6 = [MEMORY[0x277D755B8] kitImageNamed:v5];
  v7 = objc_alloc(MEMORY[0x277D750B0]);
  v8 = [v7 initWithTitle:0 image:v6 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v8 setScaleImage:1];

  return v8;
}

@end