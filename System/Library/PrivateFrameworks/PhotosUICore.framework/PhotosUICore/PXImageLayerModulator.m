@interface PXImageLayerModulator
+ (CGImage)_gainMapPlaceholderImage;
- ($644A41260DF4BF4C36F7F207412D02FF)options;
- (PXImageLayerModulator)init;
- (PXImageLayerModulator)initWithOptions:(id *)a3;
- (void)_addFilterToLayer:(id)a3;
- (void)_removeFilterFromLayer:(id)a3;
- (void)_setNeedsUpdate;
- (void)_updateFilter;
- (void)_updateFilterInput;
- (void)_updateFilterIntensityIfNeeded;
- (void)_updateFilteredLayerIfNeeded;
- (void)_updateGainMapAppearance;
- (void)_updateGainMapVisibility;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)prepareForReuse;
- (void)setDisplayingOpaqueContent:(BOOL)a3;
- (void)setDisplayingVideoComplement:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFilter:(id)a3;
- (void)setFilterType:(int64_t)a3;
- (void)setFilteredLayer:(id)a3;
- (void)setGainMapImage:(CGImage *)a3 animated:(BOOL)a4;
- (void)setGainMapLayer:(id)a3;
- (void)setIntensity:(double)a3;
- (void)setLayer:(id)a3;
- (void)setRevealsGainMapImage:(BOOL)a3;
@end

@implementation PXImageLayerModulator

- ($644A41260DF4BF4C36F7F207412D02FF)options
{
  v3 = *&self[3].var1;
  *&retstr->var0 = *&self[2].var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = self[3].var3;
  return self;
}

- (void)_updateGainMapVisibility
{
  if (self->_needsUpdateFlags.gainMapVisibility)
  {
    self->_needsUpdateFlags.gainMapVisibility = 0;
    v4 = [(PXImageLayerModulator *)self gainMapImage];
    v18 = [(PXImageLayerModulator *)self gainMapLayer];
    v5 = [v18 presentationLayer];
    v6 = [v5 contents];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v18 contents];
    }

    v9 = v8;

    v10 = v4;
    v11 = [(PXImageLayerModulator *)self gainMapAnimationDurationFilter];
    [v11 output];
    v13 = v12;

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if ([(PXImageLayerModulator *)self animateGainMapAppearance]&& v13 > 0.0)
    {
      v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contents"];
      [v14 setFromValue:v9];
      [v14 setToValue:v10];
      [v14 setDuration:v13];
      v15 = +[PXImageModulationSettings sharedInstance];
      v16 = [v15 gainMapAnimationTimingFunction];

      v17 = [MEMORY[0x1E69793D0] functionWithName:v16];
      [v14 setTimingFunction:v17];

      [v18 addAnimation:v14 forKey:@"imageLayerContents"];
    }

    [v18 setContents:v10];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)_updateGainMapAppearance
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.gainMapAppearance)
  {
    self->_needsUpdateFlags.gainMapAppearance = 0;
    v3 = [(PXImageLayerModulator *)self gainMapLayer];
    if (v3)
    {
      v4 = [(PXImageLayerModulator *)self filter];
      if ([(PXImageLayerModulator *)self revealsGainMapImage])
      {
        [v3 setCompositingFilter:*MEMORY[0x1E69798A8]];
        [v3 setFilters:0];
        v8 = v4;
        v9 = 0;
      }

      else
      {
        v5 = [(PXImageLayerModulator *)self isDisplayingOpaqueContent];
        v6 = MEMORY[0x1E6979CA8];
        if (!v5)
        {
          v6 = MEMORY[0x1E6979CA0];
        }

        [v3 setCompositingFilter:*v6];
        v12[0] = v4;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
        [v3 setFilters:v7];

        v8 = v4;
        v9 = 1;
      }

      [v8 setEnabled:v9];
      v10 = +[PXImageModulationSettings sharedInstance];
      if ([v10 showGainMapBorder])
      {
        v11 = [MEMORY[0x1E69DC888] whiteColor];
        [v3 setBorderColor:{objc_msgSend(v11, "CGColor")}];

        [v3 setBorderWidth:15.0];
      }
    }
  }
}

- (void)_updateFilterIntensityIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.filterIntensity)
  {
    self->_needsUpdateFlags.filterIntensity = 0;
    if ([(PXImageLayerModulator *)self filterType]== 3)
    {
      [(PXImageLayerModulator *)self gainMapLayer];
    }

    else
    {
      [(PXImageLayerModulator *)self filteredLayer];
    }
    v3 = ;
    v4 = [(PXImageLayerModulator *)self layerFilterIntensityKeyPath];
    v5 = v4;
    if (!v3 || !v4)
    {
LABEL_30:

      return;
    }

    v6 = 0.0;
    if (![(PXImageLayerModulator *)self isEnabled])
    {
LABEL_17:
      if ([(PXImageLayerModulator *)self filterType]== 2)
      {
        PXFloatByLinearlyInterpolatingFloats();
      }

      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
      [(PXImageLayerModulator *)self intensityAnimationDuration];
      v13 = v12;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      if (v13 > 0.0)
      {
        v14 = [v3 presentationLayer];
        v15 = [v14 filters];
        if (v15)
        {
          v16 = [v3 presentationLayer];
          v17 = [v16 valueForKeyPath:v5];
        }

        else
        {
          v17 = [v3 valueForKeyPath:v5];
        }

        if (v17 && ([v17 isEqualToNumber:v11] & 1) == 0)
        {
          v18 = [MEMORY[0x1E6979318] animationWithKeyPath:v5];
          [v18 setFromValue:v17];
          [v18 setToValue:v11];
          [v18 setDuration:v13];
          [v3 addAnimation:v18 forKey:@"imageLayerModulatorIntensity"];
        }
      }

      [v3 setValue:v11 forKeyPath:v5];
      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v22 = self;
        v23 = 2112;
        v24 = v3;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] layer:%@ setValue:%@ forKeyPath:%@", buf, 0x2Au);
      }

      [MEMORY[0x1E6979518] commit];
      goto LABEL_30;
    }

    v7 = +[PXImageModulationSettings sharedInstance];
    [(PXImageLayerModulator *)self options];
    if ((v20 - 1) >= 4)
    {
      if (v20)
      {
        goto LABEL_13;
      }

      [v7 SDRModulationIntensity];
    }

    else
    {
      [v7 HDRModulationIntensity];
    }

    v6 = v8;
LABEL_13:
    if ([(PXImageLayerModulator *)self isDisplayingVideoComplement])
    {
      [v7 videoComplementModulationIntensity];
      if (v6 >= v9)
      {
        v6 = v9;
      }
    }

    [(PXImageLayerModulator *)self intensity];
    v6 = v6 * v10;

    goto LABEL_17;
  }
}

- (void)_updateFilteredLayerIfNeeded
{
  if (self->_needsUpdateFlags.filteredLayer)
  {
    self->_needsUpdateFlags.filteredLayer = 0;
    if ([(PXImageLayerModulator *)self isEnabled])
    {
      v3 = [(PXImageLayerModulator *)self layer];
      [(PXImageLayerModulator *)self setFilteredLayer:v3];
    }

    else
    {

      [(PXImageLayerModulator *)self setFilteredLayer:0];
    }
  }
}

- (void)_updateFilter
{
  if (!self->_needsUpdateFlags.filter)
  {
    return;
  }

  self->_needsUpdateFlags.filter = 0;
  v4 = [(PXImageLayerModulator *)self filterType];
  switch(v4)
  {
    case 3:
      v13 = objc_alloc(MEMORY[0x1E6979378]);
      v25 = [v13 initWithType:*MEMORY[0x1E6979910]];
      v6 = *MEMORY[0x1E6979BF0];
      v7 = +[PXImageModulationSettings sharedInstance];
      v14 = [v7 EDRHeadroomUsageScheme];
      if (v14 != 1)
      {
        v9 = 0.0;
        if (!v14)
        {
          v15 = MEMORY[0x1E69C0708];
          [(PXImageLayerModulator *)self hdrGain];
          v17 = v16;
          [(PXImageLayerModulator *)self gainMapValue];
          [v15 gainMapHeadroomForHDRGain:v17 gainMapValue:v18];
          v11 = log2(v19);
          goto LABEL_13;
        }

LABEL_16:
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:{pow(2.0, v9)}];
        [v25 setValue:v22 forKey:*MEMORY[0x1E6979990]];

        break;
      }

LABEL_15:
      [v7 deviceMaximumEDRHeadroomStops];
      v9 = v21;
      goto LABEL_16;
    case 2:
      v12 = objc_alloc(MEMORY[0x1E6979378]);
      v25 = [v12 initWithType:*MEMORY[0x1E6979888]];
      [v25 setValue:&unk_1F1911C18 forKey:@"inputAmount"];
      v6 = @"inputBias";
      break;
    case 1:
      v5 = objc_alloc(MEMORY[0x1E6979378]);
      v25 = [v5 initWithType:*MEMORY[0x1E6979C90]];
      v6 = *MEMORY[0x1E6979BF0];
      v7 = +[PXImageModulationSettings sharedInstance];
      v8 = [v7 EDRHeadroomUsageScheme];
      if (v8 != 1)
      {
        v9 = 0.0;
        if (!v8)
        {
          [(PXImageLayerModulator *)self hdrGain];
          v11 = v10;
LABEL_13:
          [v7 deviceMaximumEDRHeadroomStops];
          v9 = fmin(v11, v20);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    default:
      v6 = 0;
      v25 = 0;
      break;
  }

  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PXImageLayerModulatorFilter-%p", self];
  [v25 setName:v23];
  [v25 setEnabled:1];
  [(PXImageLayerModulator *)self setFilter:v25];
  if (v6)
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"filters.%@.%@", v23, v6];
    [(PXImageLayerModulator *)self setLayerFilterIntensityKeyPath:v24];
  }

  else
  {
    [(PXImageLayerModulator *)self setLayerFilterIntensityKeyPath:0];
  }
}

- (void)_updateFilterInput
{
  if (self->_needsUpdateFlags.filterInput)
  {
    self->_needsUpdateFlags.filterInput = 0;
    [(PXImageLayerModulator *)self options];
    [(PXImageLayerModulator *)self setFilterType:0];
    LODWORD(v3) = 0;
    [(PXImageLayerModulator *)self setHdrGain:v3];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXImageLayerModulator *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXImageLayerModulator *)self _updateFilterInput];
    [(PXImageLayerModulator *)self _updateFilter];
    [(PXImageLayerModulator *)self _updateFilteredLayerIfNeeded];
    [(PXImageLayerModulator *)self _updateGainMapAppearance];
    [(PXImageLayerModulator *)self _updateGainMapVisibility];
    [(PXImageLayerModulator *)self _updateFilterIntensityIfNeeded];
    [(PXImageLayerModulator *)self setIntensityAnimationDuration:0.0];
    [(PXImageLayerModulator *)self setAnimateGainMapAppearance:0];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXImageLayerModulator.m" lineNumber:345 description:{@"neither insider -performChanges: block, nor performing updates"}];
  }
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, self);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXImageLayerModulator *)self _updateIfNeeded];
  }
}

- (void)prepareForReuse
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] %@", &v6, 0x16u);
  }

  [(PXImageLayerModulator *)self setLayer:0];
  [(PXImageLayerModulator *)self setEnabled:0];
  [(PXImageLayerModulator *)self setIntensity:0.0];
  [(PXImageLayerModulator *)self setDisplayingVideoComplement:0];
  [(PXImageLayerModulator *)self setGainMapImage:0];
  [(PXImageLayerModulator *)self setGainMapValue:0.0];
}

- (void)setRevealsGainMapImage:(BOOL)a3
{
  if (self->_revealsGainMapImage != a3)
  {
    self->_revealsGainMapImage = a3;
    [(PXImageLayerModulator *)self _invalidateGainMapAppearance];
  }
}

- (void)setGainMapLayer:(id)a3
{
  v5 = a3;
  if (self->_gainMapLayer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_gainMapLayer, a3);
    [(PXImageLayerModulator *)self _invalidateGainMapVisibility];
    v5 = v6;
  }
}

- (void)setGainMapImage:(CGImage *)a3 animated:(BOOL)a4
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = a3;
    CGImageRetain(a3);
    [(PXImageLayerModulator *)self setAnimateGainMapAppearance:1];
    v7 = [(PXImageLayerModulator *)self gainMapAnimationDurationFilter];
    [v7 setGainMapImageAvailable:a3 != 0];

    [(PXImageLayerModulator *)self _invalidateFilterInput];

    [(PXImageLayerModulator *)self _invalidateGainMapVisibility];
  }
}

- (void)setDisplayingOpaqueContent:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_displayingOpaqueContent != a3)
  {
    v3 = a3;
    self->_displayingOpaqueContent = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] setDisplayingOpaqueContent:%d", &v6, 0x12u);
    }

    [(PXImageLayerModulator *)self _invalidateGainMapAppearance];
  }
}

- (void)setDisplayingVideoComplement:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_displayingVideoComplement != a3)
  {
    v3 = a3;
    self->_displayingVideoComplement = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] setDisplayingVideoComplement:%d", &v6, 0x12u);
    }

    [(PXImageLayerModulator *)self _invalidateFilterIntensity];
  }
}

- (void)setIntensity:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_intensity != a3)
  {
    self->_intensity = a3;
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      intensity = self->_intensity;
      v6 = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = intensity;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] setIntensity:%f", &v6, 0x16u);
    }

    [(PXImageLayerModulator *)self _invalidateFilterIntensity];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 134218498;
      v9 = self;
      v10 = 2112;
      v11 = v7;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] %@ %i", &v8, 0x1Cu);
    }

    [(PXImageLayerModulator *)self _invalidateFilteredLayer];
    [(PXImageLayerModulator *)self _invalidateFilterIntensity];
  }
}

- (void)_removeFilterFromLayer:(id)a3
{
  v5 = a3;
  v6 = [(PXImageLayerModulator *)self filter];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(PXImageLayerModulator *)self filterType];
    if ((v8 - 1) >= 2)
    {
      if (v8 == 3)
      {
        v15 = [(PXImageLayerModulator *)self gainMapLayer];
        [v15 removeFromSuperlayer];

        [(PXImageLayerModulator *)self setGainMapLayer:0];
      }
    }

    else
    {
      v9 = [v5 filters];
      v10 = [v9 mutableCopy];

      v11 = [v7 name];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __48__PXImageLayerModulator__removeFilterFromLayer___block_invoke;
      v19 = &unk_1E773F5A8;
      v23 = a2;
      v20 = self;
      v21 = v7;
      v22 = v11;
      v12 = v11;
      v13 = [v10 indexOfObjectPassingTest:&v16];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v10 removeObjectAtIndex:{v13, v16, v17, v18, v19, v20, v21, v22, v23}];
        if ([v10 count])
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        [v5 setFilters:v14];
      }
    }
  }
}

uint64_t __48__PXImageLayerModulator__removeFilterFromLayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 48)];

  return v4;
}

- (void)_addFilterToLayer:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXImageLayerModulator *)self filter];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [(PXImageLayerModulator *)self filterType];
    if ((v7 - 1) < 2)
    {
      v8 = [v4 filters];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 arrayByAddingObject:v6];
      }

      else
      {
        v21[0] = v6;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      }

      v17 = v10;
      [v4 setFilters:v10];

      goto LABEL_10;
    }

    if (v7 == 3)
    {
      v9 = objc_alloc_init(MEMORY[0x1E6979398]);
      [v9 setCompositingFilter:*MEMORY[0x1E6979CA8]];
      v11 = [(PXImageLayerModulator *)self filter];
      v20 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      [v9 setFilters:v12];

      v18 = @"onOrderIn";
      v13 = objc_opt_new();
      v19 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v9 setActions:v14];

      v15 = [(PXImageLayerModulator *)self filteredLayer];
      [v15 addSublayer:v9];

      [(PXImageLayerModulator *)self setGainMapLayer:v9];
      v16 = objc_alloc_init(PXGainMapAnimationDurationFilter);
      [(PXImageLayerModulator *)self setGainMapAnimationDurationFilter:v16];

LABEL_10:
    }
  }
}

- (void)setFilteredLayer:(id)a3
{
  v4 = a3;
  filteredLayer = self->_filteredLayer;
  if (filteredLayer != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_filteredLayer;
    self->_filteredLayer = v6;
    v8 = filteredLayer;

    [(PXImageLayerModulator *)self _removeFilterFromLayer:v8];
    [(PXImageLayerModulator *)self _addFilterToLayer:v6];

    [(PXImageLayerModulator *)self _invalidateFilterIntensity];
    [(PXImageLayerModulator *)self _invalidateGainMapAppearance];
    v4 = v9;
  }
}

- (void)setFilterType:(int64_t)a3
{
  if (self->_filterType != a3)
  {
    v6 = [(PXImageLayerModulator *)self filteredLayer];
    [(PXImageLayerModulator *)self _removeFilterFromLayer:v6];

    self->_filterType = a3;

    [(PXImageLayerModulator *)self _invalidateFilter];
  }
}

- (void)setFilter:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_filter != v5)
  {
    v10 = v5;
    v7 = [(CAFilter *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [(PXImageLayerModulator *)self filteredLayer];
      [(PXImageLayerModulator *)self _removeFilterFromLayer:v8];

      objc_storeStrong(&self->_filter, a3);
      v9 = [(PXImageLayerModulator *)self filteredLayer];
      [(PXImageLayerModulator *)self _addFilterToLayer:v9];

      [(PXImageLayerModulator *)self _invalidateFilterIntensity];
      [(PXImageLayerModulator *)self _invalidateGainMapAppearance];
      v6 = v10;
    }
  }
}

- (void)setLayer:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_layer != v6)
  {
    objc_storeStrong(&self->_layer, a3);
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a2);
      v9 = 134218498;
      v10 = self;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[ImageLayerModulator %p] %@ %@", &v9, 0x20u);
    }

    [(PXImageLayerModulator *)self _invalidateFilteredLayer];
  }
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = PXImageLayerModulator;
  [(PXImageLayerModulator *)&v3 dealloc];
}

- (PXImageLayerModulator)initWithOptions:(id *)a3
{
  v10.receiver = self;
  v10.super_class = PXImageLayerModulator;
  v4 = [(PXImageLayerModulator *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0;
    v7 = *&a3->var2;
    *&v4->_options.fallbackHdrGain = *&a3->var4;
    *&v4->_options.contentFormat = v6;
    *&v4->_options.hdrGain = v7;
    v4->_displayingOpaqueContent = 1;
    if (a3->var0 == 2)
    {
      v8 = [objc_opt_class() _gainMapPlaceholderImage];
      v5->_gainMapImage = CGImageRetain(v8);
    }

    v5->_needsUpdateFlags.filterInput = 1;
    v5->_needsUpdateFlags.filterIntensity = 1;
  }

  return v5;
}

- (PXImageLayerModulator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImageLayerModulator.m" lineNumber:65 description:{@"%s is not available as initializer", "-[PXImageLayerModulator init]"}];

  abort();
}

+ (CGImage)_gainMapPlaceholderImage
{
  if (_gainMapPlaceholderImage_onceToken != -1)
  {
    dispatch_once(&_gainMapPlaceholderImage_onceToken, &__block_literal_global_169164);
  }

  return _gainMapPlaceholderImage_placeholderImage;
}

CGImageRef __49__PXImageLayerModulator__gainMapPlaceholderImage__block_invoke()
{
  result = PXImageCreateBlackPlaceholderImageWithSize();
  _gainMapPlaceholderImage_placeholderImage = result;
  return result;
}

@end