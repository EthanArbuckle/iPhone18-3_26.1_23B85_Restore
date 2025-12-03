@interface STUIStatusBarCellularSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size;
+ (double)_barCornerRadiusForIconSize:(int64_t)size;
+ (double)_barWidthForIconSize:(int64_t)size;
+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
- (CGSize)intrinsicContentSize;
- (double)_heightForBarAtIndex:(int64_t)index;
- (double)_heightForBarAtIndex:(int64_t)index mode:(int64_t)mode;
- (id)accessibilityHUDRepresentation;
- (void)_colorsDidChange;
- (void)_iconSizeDidChange;
- (void)_setNeedsUpdateCycleAnimation;
- (void)_updateActiveBars;
- (void)_updateBars;
- (void)_updateCycleAnimationIfNeeded;
- (void)_updateCycleAnimationNow;
- (void)_updateFromMode:(int64_t)mode;
- (void)applyStyleAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCycleAnimation:(id)animation;
@end

@implementation STUIStatusBarCellularSignalView

- (void)_updateBars
{
  if ([(STUIStatusBarSignalView *)self iconSize])
  {
    v14.receiver = self;
    v14.super_class = STUIStatusBarCellularSignalView;
    [(STUIStatusBarSignalView *)&v14 _updateBars];
    rounded = [(STUIStatusBarSignalView *)self rounded];
    v4 = objc_opt_class();
    iconSize = [(STUIStatusBarSignalView *)self iconSize];
    if (rounded)
    {
      [v4 _barWidthForIconSize:iconSize];
      v7 = v6 * 0.5;
    }

    else
    {
      [v4 _barCornerRadiusForIconSize:iconSize];
      v7 = v8;
    }

    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v9 = 0;
      v10 = *MEMORY[0x277CDA138];
      v11 = *MEMORY[0x277CDA630];
      do
      {
        layer = [MEMORY[0x277CD9ED0] layer];
        [layer setAnchorPoint:{0.5, 1.0}];
        [layer setCornerCurve:v10];
        [layer setCornerRadius:v7];
        if ([(STUIStatusBarCellularSignalView *)self needsLargerScale])
        {
          [layer setMinificationFilter:v11];
          [layer setRasterizationScale:5.0];
          [layer setShouldRasterize:1];
        }

        layer2 = [(STUIStatusBarCellularSignalView *)self layer];
        [layer2 addSublayer:layer];

        ++v9;
      }

      while (v9 < [(STUIStatusBarSignalView *)self numberOfBars]);
    }

    [(STUIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
  }
}

- (void)_colorsDidChange
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarCellularSignalView;
  [(STUIStatusBarSignalView *)&v3 _colorsDidChange];
  [(STUIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
}

- (void)_updateActiveBars
{
  v13.receiver = self;
  v13.super_class = STUIStatusBarCellularSignalView;
  [(STUIStatusBarSignalView *)&v13 _updateActiveBars];
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {
    activeColor = [(STUIStatusBarSignalView *)self activeColor];
    inactiveColor = [(STUIStatusBarSignalView *)self inactiveColor];
    layer = [(STUIStatusBarCellularSignalView *)self layer];
    sublayers = [layer sublayers];

    if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
    {
      v8 = 0;
      do
      {
        if ([(STUIStatusBarSignalView *)self signalMode]!= 2 || (v9 = [(STUIStatusBarSignalView *)self numberOfActiveBars], v10 = activeColor, v8 >= v9))
        {
          v10 = inactiveColor;
        }

        cGColor = [v10 CGColor];
        v12 = [sublayers objectAtIndexedSubscript:v8];
        [v12 setBackgroundColor:cGColor];

        ++v8;
      }

      while (v8 < [(STUIStatusBarSignalView *)self numberOfBars]);
    }
  }
}

- (void)_setNeedsUpdateCycleAnimation
{
  cycleAnimation = self->_cycleAnimation;
  if (cycleAnimation && [(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {

    [(STUIStatusBarCellularSignalView *)self _updateCycleAnimationNow];
  }

  else
  {
    self->_needsCycleAnimationUpdate = 1;

    [(STUIStatusBarCellularSignalView *)self setNeedsLayout];
  }
}

- (void)_iconSizeDidChange
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarCellularSignalView;
  [(STUIStatusBarSignalView *)&v3 _iconSizeDidChange];
  [(STUIStatusBarCellularSignalView *)self _setNeedsUpdateCycleAnimation];
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

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarCellularSignalView;
  [(STUIStatusBarCellularSignalView *)&v4 didMoveToWindow];
  window = [(STUIStatusBarCellularSignalView *)self window];

  if (window)
  {
    [(STUIStatusBarCellularSignalView *)self _updateActiveBars];
  }
}

- (void)layoutSubviews
{
  layer = [(STUIStatusBarCellularSignalView *)self layer];
  sublayers = [layer sublayers];
  [(STUIStatusBarCellularSignalView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_opt_class() _barWidthForIconSize:{-[STUIStatusBarSignalView iconSize](self, "iconSize")}];
  v13 = v12;
  [objc_opt_class() _interspaceForIconSize:{-[STUIStatusBarSignalView iconSize](self, "iconSize")}];
  v15 = v14;
  if ([(STUIStatusBarSignalView *)self numberOfBars]>= 1)
  {
    v16 = 0;
    v17 = v13 + v15;
    do
    {
      v18 = [sublayers objectAtIndexedSubscript:v16];
      [(STUIStatusBarCellularSignalView *)self _heightForBarAtIndex:v16];
      v20 = v19;
      if ([(STUIStatusBarCellularSignalView *)self _shouldReverseLayoutDirection])
      {
        v24.origin.x = v5;
        v24.origin.y = v7;
        v24.size.width = v9;
        v24.size.height = v11;
        v21 = CGRectGetWidth(v24) - v13 - v16 * v17;
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

    while (v16 < [(STUIStatusBarSignalView *)self numberOfBars]);
  }

  [(STUIStatusBarCellularSignalView *)self _updateActiveBars];
  if ([(STUIStatusBarSignalView *)self signalMode]== 1)
  {
    [(STUIStatusBarCellularSignalView *)self _updateCycleAnimationIfNeeded];
    [(STUIStatusBarCycleAnimation *)self->_cycleAnimation start];
  }
}

+ (double)_barWidthForIconSize:(int64_t)size
{
  result = 3.0;
  switch(size)
  {
    case 0:
      result = 0.0;
      break;
    case 5:
      result = 3.5;
      break;
    case 6:
    case 7:
      result = 3.33333333;
      break;
    case 8:
    case 10:
      result = 3.66666667;
      break;
    case 9:
    case 12:
    case 13:
    case 15:
      result = 4.0;
      break;
    case 11:
      result = 4.5;
      break;
    case 14:
      v4 = _UIEnhancedMainMenuEnabled();
      result = 3.0;
      if (v4)
      {
        result = 3.5;
      }

      break;
    case 16:
      result = 2.5;
      break;
    default:
      return result;
  }

  return result;
}

- (double)_heightForBarAtIndex:(int64_t)index
{
  signalMode = [(STUIStatusBarSignalView *)self signalMode];

  [(STUIStatusBarCellularSignalView *)self _heightForBarAtIndex:index mode:signalMode];
  return result;
}

- (double)_heightForBarAtIndex:(int64_t)index mode:(int64_t)mode
{
  if (mode >= 2)
  {
    if (mode == 2)
    {
      v9 = objc_opt_class();
      iconSize = [(STUIStatusBarSignalView *)self iconSize];

      [v9 _heightForNormalBarAtIndex:index iconSize:iconSize];
    }
  }

  else
  {
    v5 = objc_opt_class();
    iconSize2 = [(STUIStatusBarSignalView *)self iconSize];

    [v5 _barWidthForIconSize:iconSize2];
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size
{
  v13 = *MEMORY[0x277D85DE8];
  switch(size)
  {
    case 1:
      v10 = xmmword_26C581A30;
      v11 = xmmword_26C581A40;
      v5 = 0x403A000000000000;
      goto LABEL_23;
    case 2:
      v7 = xmmword_26C5819C0;
      v8 = xmmword_26C581A20;
      goto LABEL_15;
    case 3:
      v7 = xmmword_26C581920;
      v8 = xmmword_26C5819E0;
LABEL_15:
      v10 = v7;
      v11 = v8;
      v6 = 0x4043800000000000;
      goto LABEL_21;
    case 4:
      v10 = xmmword_26C5819C0;
      v11 = xmmword_26C5819D0;
      v6 = 0x4045000000000000;
      goto LABEL_21;
    case 5:
      v10 = xmmword_26C5818E0;
      v11 = xmmword_26C581A10;
      v5 = 0x403C000000000000;
      goto LABEL_23;
    case 6:
      v10 = xmmword_26C5819F0;
      v11 = xmmword_26C581A00;
      v6 = 0x4045800000000000;
      goto LABEL_21;
    case 7:
      v10 = xmmword_26C5819A0;
      v11 = xmmword_26C5819B0;
      v6 = 0x4046800000000000;
      goto LABEL_21;
    case 8:
      v10 = xmmword_26C581980;
      v11 = xmmword_26C581990;
      v6 = 0x4048800000000000;
      goto LABEL_21;
    case 9:
    case 15:
      v10 = xmmword_26C5818A0;
      v11 = xmmword_26C5818B0;
      v5 = 0x4040000000000000;
      goto LABEL_23;
    case 10:
      v10 = xmmword_26C581940;
      v11 = xmmword_26C581950;
      v6 = 0x4048000000000000;
      goto LABEL_21;
    case 11:
      v10 = xmmword_26C581920;
      v11 = xmmword_26C581930;
      v5 = 0x4041000000000000;
      goto LABEL_23;
    case 12:
      v10 = xmmword_26C581900;
      v11 = xmmword_26C581910;
      v6 = 0x404A000000000000;
      goto LABEL_21;
    case 13:
      v10 = xmmword_26C581960;
      v11 = xmmword_26C581970;
      v6 = 0x404B000000000000;
      goto LABEL_21;
    case 14:
      if (_UIEnhancedMainMenuEnabled())
      {
        v10 = xmmword_26C5818E0;
        v11 = xmmword_26C5818F0;
        v5 = 0x403B000000000000;
      }

      else
      {
        v10 = xmmword_26C5818C0;
        v11 = xmmword_26C5818D0;
        v5 = 0x4038000000000000;
      }

      goto LABEL_23;
    case 16:
      v10 = xmmword_26C581880;
      v11 = xmmword_26C581890;
      v5 = 0x4035000000000000;
LABEL_23:
      v12 = v5;
      result = *(&v10 + index) * 0.5;
      break;
    case 17:
      v10 = xmmword_26C581860;
      v11 = xmmword_26C581870;
      v6 = 0x4040000000000000;
LABEL_21:
      v12 = v6;
      result = *(&v10 + index) / 3.0;
      break;
    default:
      result = 0.0;
      break;
  }

  return result;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)size
{
  result = 1.0;
  if (size <= 0xF)
  {
    return dbl_26C581B00[size];
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  result = 1.5;
  if (size <= 0x11)
  {
    return dbl_26C581B80[size];
  }

  return result;
}

- (void)_updateCycleAnimationIfNeeded
{
  if (!self->_cycleAnimation || self->_needsCycleAnimationUpdate)
  {
    [(STUIStatusBarCellularSignalView *)self _updateCycleAnimationNow];
  }
}

- (void)_updateCycleAnimationNow
{
  selfCopy = self;
  v55[4] = *MEMORY[0x277D85DE8];
  activeColor = [(STUIStatusBarSignalView *)self activeColor];
  v46 = [activeColor colorWithAlphaComponent:0.6];

  inactiveColor = [(STUIStatusBarSignalView *)selfCopy inactiveColor];
  if ([(STUIStatusBarSignalView *)selfCopy iconSize])
  {
    v5 = !v46 || inactiveColor == 0;
    if (!v5 && [(STUIStatusBarSignalView *)selfCopy numberOfBars])
    {
      selfCopy->_needsCycleAnimationUpdate = 0;
      numberOfBars = [(STUIStatusBarSignalView *)selfCopy numberOfBars];
      layer = [(STUIStatusBarCellularSignalView *)selfCopy layer];
      sublayers = [layer sublayers];

      array = [MEMORY[0x277CBEB18] array];
      if ([(STUIStatusBarSignalView *)selfCopy numberOfBars]>= 1)
      {
        v10 = 0;
        v11 = (numberOfBars + 3);
        v12 = v11 * 0.175;
        v13 = v11 + 0.5;
        v14 = 1.0 / v11;
        v15 = 3.0 / v11;
        v43 = *MEMORY[0x277CDA058];
        v44 = *MEMORY[0x277CDA080];
        v45 = array;
        v42 = sublayers;
        do
        {
          v49 = v10;
          v48 = [sublayers objectAtIndexedSubscript:v10];
          animation = [MEMORY[0x277CD9E00] animation];
          [animation setDuration:v12];
          LODWORD(v16) = 2139095040;
          [animation setRepeatCount:v16];
          [animation setAutoreverses:0];
          [animation setBeginTimeMode:v44];
          [animation duration];
          [animation setBeginTime:v49 / v13 * v17];
          v55[0] = &unk_287D1B2F0;
          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          v55[1] = v18;
          v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          v55[2] = v19;
          v55[3] = &unk_287D1B300;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];

          v21 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"backgroundColor"];
          [v21 setKeyTimes:v20];
          [v21 setCalculationMode:v43];
          [v21 setTensionValues:&unk_287D1AF18];
          v54[0] = [inactiveColor CGColor];
          v54[1] = [v46 CGColor];
          v54[2] = [inactiveColor CGColor];
          v54[3] = [inactiveColor CGColor];
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
          [v21 setValues:v22];

          v23 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"bounds.size.height"];
          [(STUIStatusBarCellularSignalView *)selfCopy _heightForBarAtIndex:0 mode:0];
          v25 = v24;
          [(STUIStatusBarCellularSignalView *)selfCopy _heightForBarAtIndex:1 mode:2];
          v27 = v26;
          [v23 setKeyTimes:v20];
          [v23 setCalculationMode:v43];
          [v23 setTensionValues:&unk_287D1AF18];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
          v53[0] = v28;
          v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
          v53[1] = v29;
          [MEMORY[0x277CCABB0] numberWithDouble:v25];
          v31 = v30 = inactiveColor;
          v53[2] = v31;
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
          v53[3] = v32;
          [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
          v34 = v33 = selfCopy;
          [v23 setValues:v34];

          selfCopy = v33;
          array = v45;

          inactiveColor = v30;
          sublayers = v42;

          v52[0] = v21;
          v52[1] = v23;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
          [animation setAnimations:v35];

          v36 = [STUIStatusBarCycleLayerAnimation cycleAnimationWithLayer:v48 animation:animation key:@"searching"];
          [v45 addObject:v36];

          numberOfBars2 = [(STUIStatusBarSignalView *)selfCopy numberOfBars];
          v10 = v49 + 1;
        }

        while ((v49 + 1) < numberOfBars2);
      }

      v38 = [[STUIStatusBarCycleAnimation alloc] initWithLayerAnimations:array];
      cycleAnimation = selfCopy->_cycleAnimation;
      if (!cycleAnimation)
      {
        goto LABEL_13;
      }

      state = [(STUIStatusBarCycleAnimation *)cycleAnimation state];
      if (state == 1)
      {
        v41 = selfCopy->_cycleAnimation;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __59__STUIStatusBarCellularSignalView__updateCycleAnimationNow__block_invoke;
        v50[3] = &unk_279D38940;
        v50[4] = selfCopy;
        v51 = v38;
        [(STUIStatusBarCycleAnimation *)v41 stopWithCompletionHandler:v50];

        goto LABEL_15;
      }

      if (!state)
      {
LABEL_13:
        [(STUIStatusBarCellularSignalView *)selfCopy setCycleAnimation:v38];
      }

LABEL_15:
    }
  }
}

uint64_t __59__STUIStatusBarCellularSignalView__updateCycleAnimationNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) signalMode];
  if (result == 1)
  {
    [*(a1 + 32) setCycleAnimation:*(a1 + 40)];
    v3 = *(a1 + 40);

    return [v3 start];
  }

  return result;
}

- (void)setCycleAnimation:(id)animation
{
  v7[1] = *MEMORY[0x277D85DE8];
  animationCopy = animation;
  if (self->_cycleAnimation != animationCopy)
  {
    objc_storeStrong(&self->_cycleAnimation, animation);
    if (animationCopy)
    {
      v7[0] = animationCopy;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      [(STUIStatusBarPersistentAnimationView *)self setPersistentAnimations:v6];
    }

    else
    {
      [(STUIStatusBarPersistentAnimationView *)self setPersistentAnimations:MEMORY[0x277CBEBF8]];
    }
  }
}

- (void)_updateFromMode:(int64_t)mode
{
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation || ![(STUIStatusBarCycleAnimation *)cycleAnimation state])
  {
    [(STUIStatusBarCellularSignalView *)self setNeedsLayout];
  }

  if (mode == 1 && [(STUIStatusBarSignalView *)self signalMode]!= 1)
  {
    v6 = self->_cycleAnimation;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__STUIStatusBarCellularSignalView__updateFromMode___block_invoke;
    v7[3] = &unk_279D386A0;
    v7[4] = self;
    [(STUIStatusBarCycleAnimation *)v6 stopWithCompletionHandler:v7];
  }
}

uint64_t __51__STUIStatusBarCellularSignalView__updateFromMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) signalMode];
  if (result != 1)
  {
    v3 = *(a1 + 32);

    return [v3 setNeedsLayout];
  }

  return result;
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size
{
  [self _barWidthForIconSize:size];
  v8 = v7;
  [self _interspaceForIconSize:size];
  v10 = v9 * (bars - 1) + bars * v8;
  [self _heightForNormalBarAtIndex:? iconSize:?];
  v12 = v11;
  v13 = v10;
  result.height = v12;
  result.width = v13;
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

  v5 = [v3 stringWithFormat:@"AXHUD_Cellular_%d", numberOfActiveBars];
  v6 = [MEMORY[0x277D755B8] kitImageNamed:v5];
  v7 = objc_alloc(MEMORY[0x277D750B0]);
  v8 = [v7 initWithTitle:0 image:v6 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v8 setScaleImage:1];

  return v8;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  -[STUIStatusBarCellularSignalView setNeedsLargerScale:](self, "setNeedsLargerScale:", [attributesCopy isScaledFixedWidthBar]);
  v5.receiver = self;
  v5.super_class = STUIStatusBarCellularSignalView;
  [(STUIStatusBarSignalView *)&v5 applyStyleAttributes:attributesCopy];
}

@end