@interface SBCoverSheetBlurView
- (SBCoverSheetBlurView)initWithFrame:(CGRect)a3 scaleAdjustment:(id)a4 alphaAdjustment:(id)a5;
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
- (void)_updateForBlurRadius:(double)a3 weighting:(double)a4 forPresentationValue:(BOOL)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlphaAdjustment:(uint64_t)a3;
- (void)setBlurRadius:(double)a3;
- (void)setDimmingColor:(id)a3;
- (void)setReduceTransparencyView:(uint64_t)a1;
- (void)setScaleAdjustment:(uint64_t)a3;
- (void)setWeighting:(double)a3;
- (void)setWeighting:(double)a3 forPresentationValue:(BOOL)a4;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
@end

@implementation SBCoverSheetBlurView

- (SBCoverSheetBlurView)initWithFrame:(CGRect)a3 scaleAdjustment:(id)a4 alphaAdjustment:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = SBCoverSheetBlurView;
  v13 = [(SBCoverSheetBlurView *)&v20 initWithFrame:x, y, width, height];
  v15 = v13;
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v14, v11, 432);
    objc_setProperty_nonatomic_copy(v15, v16, v12, 440);
    [(SBCoverSheetBlurView *)v15 setBlurRadius:20.0];
    v15->_variantToTrack = 1;
    [(SBCoverSheetBlurView *)v15 setDimmingColor:0];
    [(SBCoverSheetBlurView *)v15 _configureForCurrentReduceTransparencySetting];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v15 selector:sel__reduceTransparencyEnabledStateDidChange_ name:*MEMORY[0x277D764C8] object:0];

    v18 = +[SBWallpaperController sharedInstance];
    [v18 addObserver:v15 forVariant:v15->_variantToTrack];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  v4 = +[SBWallpaperController sharedInstance];
  [v4 removeObserver:self forVariant:self->_variantToTrack];

  v5.receiver = self;
  v5.super_class = SBCoverSheetBlurView;
  [(SBCoverSheetBlurView *)&v5 dealloc];
}

- (void)setBlurRadius:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_blurRadius = a3;
    weighting = self->_weighting;

    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:a3 forPresentationValue:weighting];
  }
}

- (void)setDimmingColor:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_dimmingColor, a3);
    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:self->_blurRadius forPresentationValue:self->_weighting];
  }
}

- (void)setWeighting:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_weighting = a3;
    blurRadius = self->_blurRadius;

    [(SBCoverSheetBlurView *)self _updateForBlurRadius:0 weighting:blurRadius forPresentationValue:a3];
  }
}

- (void)setWeighting:(double)a3 forPresentationValue:(BOOL)a4
{
  if (a4)
  {
    [(SBCoverSheetBlurView *)self _updateForBlurRadius:1 weighting:self->_blurRadius forPresentationValue:a3];
  }

  else
  {
    [(SBCoverSheetBlurView *)self setWeighting:a3];
  }
}

- (void)_updateForBlurRadius:(double)a3 weighting:(double)a4 forPresentationValue:(BOOL)a5
{
  v5 = a5;
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (self)
    {
      reduceTransparencyView = self->_reduceTransparencyView;
      if (v5)
      {
LABEL_4:
        v10 = MEMORY[0x277CCABB0];
        v11 = reduceTransparencyView;
        v12 = [v10 numberWithDouble:a4];
        v13 = v11;
        v32 = v12;
LABEL_12:
        [(SBCoverSheetBlurView *)v13 _setPresentationValue:v12 forKey:@"opacity"];
        goto LABEL_17;
      }
    }

    else
    {
      reduceTransparencyView = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v31 = reduceTransparencyView;
    v32 = [(UIView *)v31 layer];

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v32 setValue:v11 forKey:@"opacity"];
    goto LABEL_17;
  }

  scaleAdjustment = self->_scaleAdjustment;
  v15 = 1.0;
  if (scaleAdjustment)
  {
    v15 = scaleAdjustment[2](a4);
  }

  alphaAdjustment = self->_alphaAdjustment;
  v17 = 1.0;
  if (alphaAdjustment)
  {
    v17 = alphaAdjustment[2](a4);
  }

  v18 = a4 * 0.4 + 1.0;
  v19 = a3 * a4;
  v32 = [(UIColor *)self->_dimmingColor colorWithAlphaComponent:a4];
  if (v5)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v20 forKey:@"filters.colorSaturate.inputAmount"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v21 forKey:@"filters.gaussianBlur.inputRadius"];

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [(SBCoverSheetBlurView *)self _setPresentationValue:v22 forKey:@"scale"];

    -[SBCoverSheetBlurView _setPresentationValue:forKey:](self, "_setPresentationValue:forKey:", [v32 CGColor], @"backgroundColor");
    if (!self->_alphaAdjustment)
    {
      goto LABEL_18;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v13 = self;
    v12 = v11;
    goto LABEL_12;
  }

  v23 = [(SBCoverSheetBlurView *)self layer];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [v23 setValue:v24 forKeyPath:@"filters.colorSaturate.inputAmount"];

  v25 = [(SBCoverSheetBlurView *)self layer];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [v25 setValue:v26 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v27 = [(SBCoverSheetBlurView *)self layer];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v27 setValue:v28 forKeyPath:@"scale"];

  v29 = [(SBCoverSheetBlurView *)self layer];
  [v29 setValue:objc_msgSend(v32 forKey:{"CGColor"), @"backgroundColor"}];

  if (!self->_alphaAdjustment)
  {
    goto LABEL_18;
  }

  v11 = [(SBCoverSheetBlurView *)self layer];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [(SBCoverSheetBlurView *)v11 setValue:v30 forKeyPath:@"opacity"];

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
  v7 = [(SBCoverSheetBlurView *)self backdropLayer];
  [v7 setIgnoresScreenClip:1];

  v8 = [(SBCoverSheetBlurView *)self layer];
  v10[0] = v3;
  v10[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v8 setFilters:v9];
}

- (void)_removeFilters
{
  v3 = [(SBCoverSheetBlurView *)self layer];
  [v3 setFilters:0];

  v4 = [(SBCoverSheetBlurView *)self layer];
  [v4 setValue:&unk_28336F510 forKeyPath:@"scale"];
}

- (id)_averageWallpaperColor
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [v3 averageColorForVariant:self->_variantToTrack];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
  }

  v7 = v6;

  return v7;
}

- (void)setScaleAdjustment:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_40(a1, a2, a3, 432);
  }
}

- (void)setAlphaAdjustment:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_40(a1, a2, a3, 440);
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

- (void)wallpaperDidChangeForVariant:(int64_t)a3
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
  v6 = [(SBCoverSheetBlurView *)self _averageWallpaperColor];
  [(UIView *)v5 setBackgroundColor:v6];
}

- (void)_createReduceTransparencyView
{
  if (!self || !self->_reduceTransparencyView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v3 = [(SBCoverSheetBlurView *)self _averageWallpaperColor];
    [v4 setBackgroundColor:v3];

    [(SBCoverSheetBlurView *)self setReduceTransparencyView:v4];
    [(SBCoverSheetBlurView *)self insertSubview:v4 atIndex:0];
  }
}

- (void)setReduceTransparencyView:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 448), a2);
  }
}

- (void)_removeReduceTransparencyView
{
  v2 = self;
  if (self)
  {
    self = self->_reduceTransparencyView;
  }

  [(SBCoverSheetBlurView *)self removeFromSuperview];

  [(SBCoverSheetBlurView *)v2 setReduceTransparencyView:?];
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