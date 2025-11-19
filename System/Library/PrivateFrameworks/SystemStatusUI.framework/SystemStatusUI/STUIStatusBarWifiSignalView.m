@interface STUIStatusBarWifiSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4;
+ (double)_barThicknessAtIndex:(unint64_t)a3 iconSize:(int64_t)a4;
+ (double)_interspaceForIconSize:(int64_t)a3;
+ (double)_totalWidthForIconSize:(int64_t)a3;
+ (double)widthForIconSize:(int64_t)a3;
+ (id)_barImageWithSize:(CGSize)a3 forScale:(double)a4 distance:(double)a5 angle:(double)a6 centerPoint:(CGPoint)a7 cornerRadius:(double)a8 thickness:(double)a9 rounded:(BOOL)a10;
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
- (void)_updateFromMode:(int64_t)a3;
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
      v4 = [MEMORY[0x277CD9ED0] layer];
      v5 = [(STUIStatusBarWifiSignalView *)self layer];
      [v5 addSublayer:v4];

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
    v4 = [(STUIStatusBarWifiSignalView *)self layer];
    v5 = [v4 sublayers];

    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v6 = 0;
      do
      {
        v7 = [v5 objectAtIndexedSubscript:v6];
        if ([(STUIStatusBarSignalView *)self signalMode]== 2 && v6 < [(STUIStatusBarSignalView *)self numberOfActiveBars])
        {
          v8 = [(STUIStatusBarSignalView *)self activeColor];
        }

        else
        {
          v8 = [(STUIStatusBarSignalView *)self inactiveColor];
        }

        v9 = v8;
        v10 = [v8 colorWithAlphaComponent:1.0];
        v11 = [v10 CGColor];

        [v9 alphaComponent];
        v13 = v12;
        [v7 setContentsMultiplyColor:v11];
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
  v3 = [(STUIStatusBarWifiSignalView *)self window];

  if (v3)
  {
    [(STUIStatusBarWifiSignalView *)self _updateActiveBars];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  v4 = [(STUIStatusBarSignalView *)self numberOfBars];
  v5 = [(STUIStatusBarSignalView *)self iconSize];

  [v3 _intrinsicContentSizeForNumberOfBars:v4 iconSize:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v35 = [(STUIStatusBarWifiSignalView *)self layer];
  v3 = [v35 sublayers];
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
  v17 = [(STUIStatusBarSignalView *)self rounded];
  rect = v7;
  v45.origin.x = v7;
  v18 = v9;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  Height = CGRectGetHeight(v45);
  v40 = MidX;
  v20 = acos(MidX / Height);
  v21 = [(STUIStatusBarWifiSignalView *)self traitCollection];
  v22 = v21;
  if (!v21 || ([v21 displayScale], v23 == 0.0))
  {
    v25 = [(STUIStatusBarWifiSignalView *)self _screen];
    [v25 scale];
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
      v29 = [v3 objectAtIndexedSubscript:v27];
      [objc_opt_class() _barThicknessAtIndex:v27 iconSize:{-[STUIStatusBarSignalView iconSize](self, "iconSize")}];
      v31 = v30 - v5;
      v32 = v20;
      if (v17)
      {
        v46.origin.x = rect;
        v46.origin.y = v18;
        v46.size.width = v11;
        v46.size.height = v13;
        v33 = CGRectGetHeight(v46);
        v32 = v20 + atan(v31 * 0.5 / v33);
      }

      v34 = [objc_opt_class() _barImageWithSize:v17 forScale:v11 distance:v13 angle:v39 centerPoint:v28 cornerRadius:v32 thickness:v40 rounded:{v36, v5, *&v31}];
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
  v2 = [(STUIStatusBarSignalView *)self iconSize];
  result = 0.5;
  if (v2 <= 0x11)
  {
    return dbl_26C5820C8[v2];
  }

  return result;
}

+ (double)_barThicknessAtIndex:(unint64_t)a3 iconSize:(int64_t)a4
{
  result = 2.25;
  if (!a3)
  {
    result = 3.25;
  }

  if (a4 <= 0x11)
  {
    v5 = &unk_26C5821E8;
    if (!a3)
    {
      v5 = &unk_26C582158;
    }

    return v5[a4];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  result = 1.5;
  if (a3 <= 0xF)
  {
    return dbl_26C582278[a3];
  }

  return result;
}

+ (double)_totalWidthForIconSize:(int64_t)a3
{
  result = 15.5;
  switch(a3)
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

+ (double)widthForIconSize:(int64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  [a1 _totalWidthForIconSize:?];
  return result;
}

+ (id)_barImageWithSize:(CGSize)a3 forScale:(double)a4 distance:(double)a5 angle:(double)a6 centerPoint:(CGPoint)a7 cornerRadius:(double)a8 thickness:(double)a9 rounded:(BOOL)a10
{
  v10 = a10;
  y = a7.y;
  x = a7.x;
  height = a3.height;
  width = a3.width;
  if (qword_280C1E778 != -1)
  {
    dispatch_once(&qword_280C1E778, &__block_literal_global_7);
  }

  v18 = [[STUIStatusBarSignalViewCacheKey alloc] initWithClass:objc_opt_class() size:v10 rect:width radius:height lineWidth:x alternate:y scale:a5, a6, a8, a9, *&a4];
  v19 = [_MergedGlobals_2 objectForKey:v18];
  if (!v19)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_2;
    aBlock[3] = &__block_descriptor_80_e19__CGPoint_dd_16__0d8l;
    *&aBlock[4] = x;
    *&aBlock[5] = y;
    *&aBlock[6] = a6;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    *&aBlock[9] = a8;
    v20 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_3;
    v38[3] = &__block_descriptor_48_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v38[4] = width;
    *&v38[5] = height;
    v21 = _Block_copy(v38);
    v22 = [MEMORY[0x277D75568] preferredFormat];
    [v22 setScale:a4];
    [v22 setOpaque:0];
    [v22 setPreferredRange:0x7FFFLL];
    v23 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v22 format:{width, height}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __116__STUIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_4;
    v28[3] = &unk_279D38A48;
    v37 = v10;
    v31 = a5;
    v32 = x;
    v33 = y;
    v34 = a9;
    v29 = v20;
    v30 = v21;
    v35 = a6;
    v36 = a8;
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
  v3 = [(STUIStatusBarSignalView *)self activeColor];
  v4 = [(STUIStatusBarSignalView *)self inactiveColor];
  v5 = v4;
  if (v3 && v4 && [(STUIStatusBarSignalView *)self numberOfBars])
  {
    v6 = [(STUIStatusBarWifiSignalView *)self layer];
    v7 = [v6 sublayers];

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(STUIStatusBarSignalView *)self numberOfBars];
    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v10 = 0;
      v11 = (v9 + 2);
      v12 = v11 * 0.2;
      v36 = *MEMORY[0x277CDA080];
      v13 = v11 + 0.5;
      v14 = 1.0 / v11;
      v15 = 3.0 / v11;
      v35 = *MEMORY[0x277CDA058];
      v38 = v7;
      v39 = v3;
      v37 = v8;
      do
      {
        v41 = [v7 objectAtIndexedSubscript:{v10, v35}];
        v16 = [MEMORY[0x277CD9E00] animation];
        [v16 setDuration:v12];
        LODWORD(v17) = 2139095040;
        [v16 setRepeatCount:v17];
        [v16 setAutoreverses:0];
        [v16 setBeginTimeMode:v36];
        [v16 duration];
        [v16 setBeginTime:v10 / v13 * v18];
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
        [v3 alphaComponent];
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
        v8 = v37;
        v42 = v21;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [v16 setAnimations:v32];

        v33 = [STUIStatusBarCycleLayerAnimation cycleAnimationWithLayer:v41 animation:v16 key:@"searching"];
        [v37 addObject:v33];

        v3 = v39;
        v7 = v38;

        ++v10;
      }

      while (v10 < [(STUIStatusBarSignalView *)self numberOfBars]);
    }

    v34 = [[STUIStatusBarCycleAnimation alloc] initWithLayerAnimations:v8];
    [(STUIStatusBarWifiSignalView *)self setCycleAnimation:v34];
  }
}

- (void)_updateFromMode:(int64_t)a3
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

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4
{
  if (a3)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      [a1 _barThicknessAtIndex:v7 iconSize:a4];
      v8 = v8 + v9;
      ++v7;
    }

    while (a3 != v7);
  }

  [a1 _interspaceForIconSize:a4];
  if (a4 <= 0x11 && ((1 << a4) & 0x235DC) == 0 && !a4)
  {
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
  }

  [a1 _totalWidthForIconSize:a4];
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
    v4 = [(STUIStatusBarSignalView *)self numberOfActiveBars];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 stringWithFormat:@"AXHUD_WiFi_%d", v4];
  v6 = [MEMORY[0x277D755B8] kitImageNamed:v5];
  v7 = objc_alloc(MEMORY[0x277D750B0]);
  v8 = [v7 initWithTitle:0 image:v6 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v8 setScaleImage:1];

  return v8;
}

@end