@interface SBCoverSheetBlurView
- (SBCoverSheetBlurView)initWithFrame:(CGRect)frame scaleAdjustment:(id)adjustment alphaAdjustment:(id)alphaAdjustment;
- (id)_averageWallpaperColor;
- (uint64_t)alphaAdjustment;
- (uint64_t)reduceTransparencyView;
- (uint64_t)scaleAdjustment;
- (uint64_t)setVariantToTrack:(uint64_t)result;
- (uint64_t)variantToTrack;
- (void)_configureForCurrentReduceTransparencySetting;
- (void)_createFilters;
- (void)_createReduceTransparencyView;
- (void)_removeFilters;
- (void)_removeReduceTransparencyView;
- (void)_updateForBlurRadius:(double)radius weighting:(double)weighting forPresentationValue:(BOOL)value;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlphaAdjustment:(uint64_t)adjustment;
- (void)setBlurRadius:(double)radius;
- (void)setDimmingColor:(id)color;
- (void)setReduceTransparencyView:(uint64_t)view;
- (void)setScaleAdjustment:(uint64_t)adjustment;
- (void)setWeighting:(double)weighting;
- (void)setWeighting:(double)weighting forPresentationValue:(BOOL)value;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
@end

@implementation SBCoverSheetBlurView

- (SBCoverSheetBlurView)initWithFrame:(CGRect)frame scaleAdjustment:(id)adjustment alphaAdjustment:(id)alphaAdjustment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  adjustmentCopy = adjustment;
  alphaAdjustmentCopy = alphaAdjustment;
  v20.receiver = self;
  v20.super_class = SBCoverSheetBlurView;
  height = [(SBCoverSheetBlurView *)&v20 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_setProperty_nonatomic_copy(height, v14, adjustmentCopy, 432);
    objc_setProperty_nonatomic_copy(v15, v16, alphaAdjustmentCopy, 440);
    [(SBCoverSheetBlurView *)v15 setBlurRadius:20.0];
    v15->_variantToTrack = 1;
    [(SBCoverSheetBlurView *)v15 setDimmingColor:0];
    [(SBCoverSheetBlurView *)v15 _configureForCurrentReduceTransparencySetting];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__reduceTransparencyEnabledStateDidChange_ name:*MEMORY[0x277D764C8] object:0];

    v18 = +[SBWallpaperController sharedInstance];
    [v18 addObserver:v15 forVariant:v15->_variantToTrack];
  }

  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  v4 = +[SBWallpaperController sharedInstance];
  [v4 removeObserver:self forVariant:self->_variantToTrack];

  v5.receiver = self;
  v5.super_class = SBCoverSheetBlurView;
  [(SBCoverSheetBlurView *)&v5 dealloc];
}

- (void)setBlurRadius:(double)radius
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_blurRadius = radius;
    weighting = self->_weighting;

    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:radius forPresentationValue:weighting];
  }
}

- (void)setDimmingColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_dimmingColor, color);
    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:self->_blurRadius forPresentationValue:self->_weighting];
  }
}

- (void)setWeighting:(double)weighting
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_weighting = weighting;
    blurRadius = self->_blurRadius;

    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:blurRadius forPresentationValue:weighting];
  }
}

- (void)setWeighting:(double)weighting forPresentationValue:(BOOL)value
{
  if (value)
  {
    [(SBCoverSheetBlurView *)self _updateForBlurRadius:1 weighting:self->_blurRadius forPresentationValue:weighting];
  }

  else
  {
    [(SBCoverSheetBlurView *)self setWeighting:weighting];
  }
}

- (void)_updateForBlurRadius:(double)radius weighting:(double)weighting forPresentationValue:(BOOL)value
{
  valueCopy = value;
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (self)
    {
      reduceTransparencyView = self->_reduceTransparencyView;
      if (valueCopy)
      {
LABEL_4:
        v10 = MEMORY[0x277CCABB0];
        layer6 = reduceTransparencyView;
        v12 = [v10 numberWithDouble:weighting];
        selfCopy = layer6;
        layer = v12;
LABEL_12:
        [(SBCoverSheetBlurView *)selfCopy _setPresentationValue:v12 forKey:@"opacity"];
        goto LABEL_17;
      }
    }

    else
    {
      reduceTransparencyView = 0;
      if (valueCopy)
      {
        goto LABEL_4;
      }
    }

    v31 = reduceTransparencyView;
    layer = [(UIView *)v31 layer];

    layer6 = [MEMORY[0x277CCABB0] numberWithDouble:weighting];
    [layer setValue:layer6 forKey:@"opacity"];
    goto LABEL_17;
  }

  scaleAdjustment = self->_scaleAdjustment;
  v15 = 1.0;
  if (scaleAdjustment)
  {
    v15 = scaleAdjustment[2](weighting);
  }

  alphaAdjustment = self->_alphaAdjustment;
  v17 = 1.0;
  if (alphaAdjustment)
  {
    v17 = alphaAdjustment[2](weighting);
  }

  v18 = weighting * 0.4 + 1.0;
  v19 = radius * weighting;
  layer = [(UIColor *)self->_dimmingColor colorWithAlphaComponent:weighting];
  if (valueCopy)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v20 forKey:@"filters.colorSaturate.inputAmount"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v21 forKey:@"filters.gaussianBlur.inputRadius"];

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v22 forKey:@"scale"];

    -[SBCoverSheetBlurView _setPresentationValue:forKey:](self, "_setPresentationValue:forKey:", [layer CGColor], @"backgroundColor");
    if (!self->_alphaAdjustment)
    {
      goto LABEL_18;
    }

    layer6 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    selfCopy = self;
    v12 = layer6;
    goto LABEL_12;
  }

  layer2 = [(SBCoverSheetBlurView *)self layer];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [layer2 setValue:v24 forKeyPath:@"filters.colorSaturate.inputAmount"];

  layer3 = [(SBCoverSheetBlurView *)self layer];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [layer3 setValue:v26 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  layer4 = [(SBCoverSheetBlurView *)self layer];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [layer4 setValue:v28 forKeyPath:@"scale"];

  layer5 = [(SBCoverSheetBlurView *)self layer];
  [layer5 setValue:objc_msgSend(layer forKey:{"CGColor"), @"backgroundColor"}];

  if (!self->_alphaAdjustment)
  {
    goto LABEL_18;
  }

  layer6 = [(SBCoverSheetBlurView *)self layer];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [(SBCoverSheetBlurView *)layer6 setValue:v30 forKeyPath:@"opacity"];

LABEL_17:
LABEL_18:
}

- (void)_configureForCurrentReduceTransparencySetting
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    [(SBCoverSheetBlurView *)self _createReduceTransparencyView];

    [(SBCoverSheetBlurView *)self _removeFilters];
  }

  else
  {
    [(SBCoverSheetBlurView *)self _removeReduceTransparencyView];

    [(SBCoverSheetBlurView *)self _createFilters];
  }
}

- (void)_createFilters
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v3 setName:@"gaussianBlur"];
  [v3 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
  v4 = MEMORY[0x277CCABB0];
  [(SBCoverSheetBlurView *)self blurRadius];
  v5 = [v4 numberWithDouble:?];
  [v3 setValue:v5 forKeyPath:@"inputRadius"];

  v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
  [v6 setValue:&unk_28336F500 forKey:@"inputAmount"];
  backdropLayer = [(SBCoverSheetBlurView *)self backdropLayer];
  [backdropLayer setIgnoresScreenClip:1];

  layer = [(SBCoverSheetBlurView *)self layer];
  v10[0] = v3;
  v10[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [layer setFilters:v9];
}

- (void)_removeFilters
{
  layer = [(SBCoverSheetBlurView *)self layer];
  [layer setFilters:0];

  layer2 = [(SBCoverSheetBlurView *)self layer];
  [layer2 setValue:&unk_28336F510 forKeyPath:@"scale"];
}

- (id)_averageWallpaperColor
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [v3 averageColorForVariant:self->_variantToTrack];
  v5 = v4;
  if (v4)
  {
    whiteColor = v4;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v7 = whiteColor;

  return v7;
}

- (void)setScaleAdjustment:(uint64_t)adjustment
{
  if (self)
  {
    OUTLINED_FUNCTION_0_40(self, a2, adjustment, 432);
  }
}

- (void)setAlphaAdjustment:(uint64_t)adjustment
{
  if (self)
  {
    OUTLINED_FUNCTION_0_40(self, a2, adjustment, 440);
  }
}

- (uint64_t)setVariantToTrack:(uint64_t)result
{
  if (result)
  {
    *(result + 456) = a2;
  }

  return result;
}

- (void)layoutSubviews
{
  if (self)
  {
    reduceTransparencyView = self->_reduceTransparencyView;
  }

  else
  {
    reduceTransparencyView = 0;
  }

  v4 = reduceTransparencyView;
  [(SBCoverSheetBlurView *)self bounds];
  [(UIView *)v4 setFrame:?];
}

- (uint64_t)reduceTransparencyView
{
  if (result)
  {
    return *(result + 448);
  }

  return result;
}

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  if (self)
  {
    reduceTransparencyView = self->_reduceTransparencyView;
  }

  else
  {
    reduceTransparencyView = 0;
  }

  v5 = reduceTransparencyView;
  _averageWallpaperColor = [(SBCoverSheetBlurView *)self _averageWallpaperColor];
  [(UIView *)v5 setBackgroundColor:_averageWallpaperColor];
}

- (void)_createReduceTransparencyView
{
  if (!self || !self->_reduceTransparencyView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    _averageWallpaperColor = [(SBCoverSheetBlurView *)self _averageWallpaperColor];
    [v4 setBackgroundColor:_averageWallpaperColor];

    [(SBCoverSheetBlurView *)self setReduceTransparencyView:v4];
    [(SBCoverSheetBlurView *)self insertSubview:v4 atIndex:0];
  }
}

- (void)setReduceTransparencyView:(uint64_t)view
{
  if (view)
  {
    objc_storeStrong((view + 448), a2);
  }
}

- (void)_removeReduceTransparencyView
{
  selfCopy = self;
  if (self)
  {
    self = self->_reduceTransparencyView;
  }

  [(SBCoverSheetBlurView *)self removeFromSuperview];

  [(SBCoverSheetBlurView *)selfCopy setReduceTransparencyView:?];
}

- (uint64_t)scaleAdjustment
{
  if (result)
  {
    return *(result + 432);
  }

  return result;
}

- (uint64_t)alphaAdjustment
{
  if (result)
  {
    return *(result + 440);
  }

  return result;
}

- (uint64_t)variantToTrack
{
  if (result)
  {
    return *(result + 456);
  }

  return result;
}

@end