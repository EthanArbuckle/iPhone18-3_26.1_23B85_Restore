@interface PXLayoutMetricInterpolator
+ (CGSize)bestItemSizeForAvailableWidth:(double)width screenScale:(double)scale columns:(unint64_t)columns bestSpacing:(double *)spacing bestInset:(double *)inset;
+ (CGSize)zoomableGridLayoutSmallItemSizeForWidth:(double)width;
+ (NSArray)allLayoutMetricConfigurationSizes;
+ (double)locketGadgetColumnWidthForLayoutWidth:(CGSize)width layoutMargins:(double)margins interSpacing:(double)spacing isPhone:(BOOL)phone;
+ (id)_gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator:(id)interpolator;
+ (id)_sharedGridEdgeInsetsInterpolator;
+ (id)_sharedGridItemWidthInterpolator;
+ (id)albumsGridEdgeInsetsInterpolator;
+ (id)albumsGridItemWidthInterpolator;
+ (id)gadgetColumnSpacingSpanDoubleSetAInterpolator;
+ (id)gadgetColumnSpacingSpanDoubleSetBInterpolator;
+ (id)gadgetColumnSpacingSpanSingleSetAInterpolator;
+ (id)gadgetColumnWidthSpanDoubleSetAInterpolator;
+ (id)gadgetColumnWidthSpanDoubleSetBInterpolator;
+ (id)gadgetColumnWidthSpanSingleSetAInterpolator;
+ (id)layoutMarginWidthInterpolator;
+ (id)legacyLayoutMarginWidthInterpolator;
+ (id)memoriesFeedLandscapeEdgeInsetsInterpolator;
+ (id)photosDetailsEdgeInsetsInterpolator;
+ (int64_t)photosGridSizeSubclassForScreenSize:(CGSize)size;
+ (unint64_t)photosGridLayoutColumnsForWidth:(double)width;
- (PXLayoutMetricInterpolator)init;
- (double)valueForMetric:(double)metric;
- (id)_valueForMetric:(double)metric fromInterpolationBetweenValue:(id)value secondValue:(id)secondValue;
- (id)description;
- (void)_getReferenceValueForMetric:(double)metric exactMatch:(id *)match closestBeforeMatch:(id *)beforeMatch closestAfterMatch:(id *)afterMatch;
- (void)_invalidateReferenceValuesByMetricsOrder;
- (void)_updateReferenceValuesByMetricsOrderIfNeeded;
- (void)setReferenceValue:(double)value forMetric:(double)metric;
@end

@implementation PXLayoutMetricInterpolator

+ (id)layoutMarginWidthInterpolator
{
  if (layoutMarginWidthInterpolator_onceToken != -1)
  {
    dispatch_once(&layoutMarginWidthInterpolator_onceToken, &__block_literal_global_11);
  }

  v3 = layoutMarginWidthInterpolator_interpolator;

  return v3;
}

void __59__PXLayoutMetricInterpolator_layoutMarginWidthInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = layoutMarginWidthInterpolator_interpolator;
  layoutMarginWidthInterpolator_interpolator = v0;

  v2 = layoutMarginWidthInterpolator_interpolator;
  [v2 setReferenceValue:16.0 forMetric:320.0];
  [v2 setReferenceValue:20.0 forMetric:375.0];
  [v2 setReferenceValue:20.0 forMetric:375.0];
  [v2 setReferenceValue:20.0 forMetric:414.0];
  [v2 setReferenceValue:20.0 forMetric:414.0];
  [v2 setReferenceValue:22.0 forMetric:428.0];
  [v2 setReferenceValue:34.0 forMetric:768.0];
  [v2 setReferenceValue:46.0 forMetric:834.0];
  [v2 setReferenceValue:52.0 forMetric:1024.0];
  [v2 setReferenceValue:52.0 forMetric:568.0];
  [v2 setReferenceValue:62.0 forMetric:667.0];
  [v2 setReferenceValue:60.0 forMetric:812.0];
  [v2 setReferenceValue:66.0 forMetric:736.0];
  [v2 setReferenceValue:64.0 forMetric:896.0];
  [v2 setReferenceValue:64.0 forMetric:926.0];
  [v2 setReferenceValue:52.0 forMetric:1024.0];
  [v2 setReferenceValue:31.0 forMetric:1112.0];
  [v2 setReferenceValue:52.0 forMetric:1366.0];
}

- (PXLayoutMetricInterpolator)init
{
  v6.receiver = self;
  v6.super_class = PXLayoutMetricInterpolator;
  v2 = [(PXLayoutMetricInterpolator *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    referenceValuesByMetrics = v2->__referenceValuesByMetrics;
    v2->__referenceValuesByMetrics = array;
  }

  return v2;
}

- (void)_invalidateReferenceValuesByMetricsOrder
{
  self->_needsUpdateFlags.referenceValuesByMetricsOrder = 1;
  [(PXLayoutMetricInterpolator *)self _setCachedMetric:0.0];
  [(PXLayoutMetricInterpolator *)self _setCachedValue:0];

  [(PXLayoutMetricInterpolator *)self _setNeedsUpdate];
}

- (void)_updateReferenceValuesByMetricsOrderIfNeeded
{
  if (self->_needsUpdateFlags.referenceValuesByMetricsOrder)
  {
    self->_needsUpdateFlags.referenceValuesByMetricsOrder = 0;
    _referenceValuesByMetrics = [(PXLayoutMetricInterpolator *)self _referenceValuesByMetrics];
    [_referenceValuesByMetrics sortUsingComparator:&__block_literal_global_129];
  }
}

- (double)valueForMetric:(double)metric
{
  [(PXLayoutMetricInterpolator *)self _cachedMetric];
  if (v5 != metric)
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    [(PXLayoutMetricInterpolator *)self _getReferenceValueForMetric:&v19 exactMatch:&v18 closestBeforeMatch:&v17 closestAfterMatch:metric];
    v9 = v19;
    v10 = v18;
    v11 = v17;
    v12 = v11;
    if (v9)
    {
      v13 = v9;
    }

    else if (!v10 || v11)
    {
      if (v10 || !v11)
      {
        v14 = 0;
        if (!v10 || !v11)
        {
          goto LABEL_15;
        }

        v13 = [(PXLayoutMetricInterpolator *)self _valueForMetric:v10 fromInterpolationBetweenValue:v11 secondValue:metric];
      }

      else
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
LABEL_15:
    [(PXLayoutMetricInterpolator *)self _setCachedMetric:metric];
    [(PXLayoutMetricInterpolator *)self _setCachedValue:v14];
    [v14 CGPointValue];
    v8 = v15;

    return v8;
  }

  _cachedValue = [(PXLayoutMetricInterpolator *)self _cachedValue];
  [_cachedValue CGPointValue];
  v8 = v7;

  return v8;
}

- (id)_valueForMetric:(double)metric fromInterpolationBetweenValue:(id)value secondValue:(id)secondValue
{
  secondValueCopy = secondValue;
  [value CGPointValue];
  v9 = v8;
  v11 = v10;
  [secondValueCopy CGPointValue];
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1E696B098];

  return [v16 valueWithCGPoint:{0.0, v11 - (v15 - v11) / (v13 - v9) * v9 + (v15 - v11) / (v13 - v9) * metric}];
}

- (void)_getReferenceValueForMetric:(double)metric exactMatch:(id *)match closestBeforeMatch:(id *)beforeMatch closestAfterMatch:(id *)afterMatch
{
  _referenceValuesByMetrics = [(PXLayoutMetricInterpolator *)self _referenceValuesByMetrics];
  if ([_referenceValuesByMetrics count])
  {
    [(PXLayoutMetricInterpolator *)self _updateReferenceValuesByMetricsOrderIfNeeded];
    v11 = _IndexOfReferenceValueForMetricWithOptions(_referenceValuesByMetrics, 1024, metric);
    if (v11 < [_referenceValuesByMetrics count])
    {
      v12 = [_referenceValuesByMetrics objectAtIndex:v11];
      [v12 CGPointValue];
      if (v13 == metric)
      {
        afterMatch = match;
        if (!match)
        {
LABEL_6:

          goto LABEL_9;
        }
      }

      else
      {
        if (beforeMatch && v11)
        {
          *beforeMatch = [_referenceValuesByMetrics objectAtIndexedSubscript:v11 - 1];
        }

        if (!afterMatch)
        {
          goto LABEL_6;
        }
      }

      v14 = v12;
      *afterMatch = v12;
      goto LABEL_6;
    }

    if (beforeMatch)
    {
      *beforeMatch = [_referenceValuesByMetrics lastObject];
    }
  }

LABEL_9:
}

- (void)setReferenceValue:(double)value forMetric:(double)metric
{
  _referenceValuesByMetrics = [(PXLayoutMetricInterpolator *)self _referenceValuesByMetrics];
  v7 = _IndexOfReferenceValueForMetricWithOptions(_referenceValuesByMetrics, 256, metric);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [_referenceValuesByMetrics removeObjectAtIndex:v7];
  }

  v8 = [MEMORY[0x1E696B098] valueWithCGPoint:{metric, value}];
  [_referenceValuesByMetrics addObject:v8];

  [(PXLayoutMetricInterpolator *)self _invalidateReferenceValuesByMetricsOrder];
}

- (id)description
{
  [(PXLayoutMetricInterpolator *)self _updateReferenceValuesByMetricsOrderIfNeeded];
  _referenceValuesByMetrics = [(PXLayoutMetricInterpolator *)self _referenceValuesByMetrics];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p, (%@)>", objc_opt_class(), self, _referenceValuesByMetrics];

  return v4;
}

+ (double)locketGadgetColumnWidthForLayoutWidth:(CGSize)width layoutMargins:(double)margins interSpacing:(double)spacing isPhone:(BOOL)phone
{
  if (phone)
  {
    if (width.width <= width.height)
    {
      v7 = 3;
      return (width.width - margins - spacing * (v7 - 1)) / v7;
    }

    v6 = width.height / width.width <= 0.472;
    v7 = 6;
    v8 = 4;
  }

  else
  {
    v6 = width.width <= width.height;
    v7 = 2;
    v8 = 3;
  }

  if (!v6)
  {
    v7 = v8;
  }

  return (width.width - margins - spacing * (v7 - 1)) / v7;
}

+ (CGSize)bestItemSizeForAvailableWidth:(double)width screenScale:(double)scale columns:(unint64_t)columns bestSpacing:(double *)spacing bestInset:(double *)inset
{
  v7 = 0.0;
  v8 = 0.0;
  if (width > 0.0 && scale > 0.0)
  {
    v8 = floor(width * scale) / scale;
  }

  v9 = round(scale);
  if (scale <= 0.0)
  {
    v9 = 1.0;
  }

  v10 = (columns - 1);
  v11 = round(v9 + v9);
  v12 = floor((v9 * v8 - v11 * v10) / columns);
  v13 = round(v9 * v8 - (v11 * v10 + v12 * columns + 0.0));
  if (v13 <= 0.0)
  {
    v14 = v11;
    if (spacing)
    {
LABEL_24:
      *spacing = v14 / v9;
    }
  }

  else
  {
    v14 = v11;
    v15 = v13;
    do
    {
      if (v13 < v11 + v11 || (v7 == 0.0 ? (v16 = v14 - v7 < v9 + v9) : (v16 = 1), v16))
      {
        if (v13 >= v10)
        {
          v14 = v14 + 1.0;
          v13 = v13 - v10;
        }

        else if (v13 < 2.0 || v7 < v11)
        {
          v12 = v12 + -1.0;
          v15 = v15 + columns;
          v7 = 0.0;
          v13 = v15;
          v14 = v11;
        }

        else
        {
          v7 = v7 + 1.0;
          v13 = v13 + -2.0;
        }
      }

      else
      {
        v13 = v13 + -v11 * 2.0;
        v7 = v11;
      }
    }

    while (v13 > 0.0);
    if (spacing)
    {
      goto LABEL_24;
    }
  }

  if (inset)
  {
    *inset = v7 / v9;
  }

  v18 = v12 / v9;
  v19 = v18;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (CGSize)zoomableGridLayoutSmallItemSizeForWidth:(double)width
{
  v3 = width <= 480.0;
  v4 = 10.0;
  if (!v3)
  {
    v4 = 11.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (unint64_t)photosGridLayoutColumnsForWidth:(double)width
{
  if (width >= 480.0)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

+ (int64_t)photosGridSizeSubclassForScreenSize:(CGSize)size
{
  if (size.width > size.height)
  {
    size.width = size.height;
  }

  v3 = 3;
  if (size.width != 414.0)
  {
    v3 = 1;
  }

  if (size.width == 375.0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (NSArray)allLayoutMetricConfigurationSizes
{
  if (allLayoutMetricConfigurationSizes_onceToken != -1)
  {
    dispatch_once(&allLayoutMetricConfigurationSizes_onceToken, &__block_literal_global_25);
  }

  v3 = allLayoutMetricConfigurationSizes_configurations;

  return v3;
}

void __63__PXLayoutMetricInterpolator_allLayoutMetricConfigurationSizes__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B098] valueWithCGSize:{320.0, 480.0}];
  v1 = [MEMORY[0x1E696B098] valueWithCGSize:{320.0, 568.0, v0}];
  v7[1] = v1;
  v2 = [MEMORY[0x1E696B098] valueWithCGSize:{375.0, 667.0}];
  v7[2] = v2;
  v3 = [MEMORY[0x1E696B098] valueWithCGSize:{414.0, 736.0}];
  v7[3] = v3;
  v4 = [MEMORY[0x1E696B098] valueWithCGSize:{375.0, 812.0}];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v6 = allLayoutMetricConfigurationSizes_configurations;
  allLayoutMetricConfigurationSizes_configurations = v5;
}

+ (id)gadgetColumnWidthSpanDoubleSetBInterpolator
{
  if (gadgetColumnWidthSpanDoubleSetBInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnWidthSpanDoubleSetBInterpolator_onceToken, &__block_literal_global_23);
  }

  v3 = gadgetColumnWidthSpanDoubleSetBInterpolator_interpolator;

  return v3;
}

void __73__PXLayoutMetricInterpolator_gadgetColumnWidthSpanDoubleSetBInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnWidthSpanDoubleSetBInterpolator_interpolator;
  gadgetColumnWidthSpanDoubleSetBInterpolator_interpolator = v0;

  v2 = gadgetColumnWidthSpanDoubleSetBInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetBReferenceValues(0, v2);
}

+ (id)gadgetColumnSpacingSpanDoubleSetBInterpolator
{
  if (gadgetColumnSpacingSpanDoubleSetBInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnSpacingSpanDoubleSetBInterpolator_onceToken, &__block_literal_global_21);
  }

  v3 = gadgetColumnSpacingSpanDoubleSetBInterpolator_interpolator;

  return v3;
}

void __75__PXLayoutMetricInterpolator_gadgetColumnSpacingSpanDoubleSetBInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnSpacingSpanDoubleSetBInterpolator_interpolator;
  gadgetColumnSpacingSpanDoubleSetBInterpolator_interpolator = v0;

  v2 = gadgetColumnSpacingSpanDoubleSetBInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetBReferenceValues(v2, 0);
}

+ (id)gadgetColumnWidthSpanDoubleSetAInterpolator
{
  if (gadgetColumnWidthSpanDoubleSetAInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnWidthSpanDoubleSetAInterpolator_onceToken, &__block_literal_global_19);
  }

  v3 = gadgetColumnWidthSpanDoubleSetAInterpolator_interpolator;

  return v3;
}

void __73__PXLayoutMetricInterpolator_gadgetColumnWidthSpanDoubleSetAInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnWidthSpanDoubleSetAInterpolator_interpolator;
  gadgetColumnWidthSpanDoubleSetAInterpolator_interpolator = v0;

  v2 = gadgetColumnWidthSpanDoubleSetAInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetAReferenceValues(2uLL, 0, v2);
}

+ (id)gadgetColumnSpacingSpanDoubleSetAInterpolator
{
  if (gadgetColumnSpacingSpanDoubleSetAInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnSpacingSpanDoubleSetAInterpolator_onceToken, &__block_literal_global_17);
  }

  v3 = gadgetColumnSpacingSpanDoubleSetAInterpolator_interpolator;

  return v3;
}

void __75__PXLayoutMetricInterpolator_gadgetColumnSpacingSpanDoubleSetAInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnSpacingSpanDoubleSetAInterpolator_interpolator;
  gadgetColumnSpacingSpanDoubleSetAInterpolator_interpolator = v0;

  v2 = gadgetColumnSpacingSpanDoubleSetAInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetAReferenceValues(2uLL, v2, 0);
}

+ (id)gadgetColumnWidthSpanSingleSetAInterpolator
{
  if (gadgetColumnWidthSpanSingleSetAInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnWidthSpanSingleSetAInterpolator_onceToken, &__block_literal_global_15);
  }

  v3 = gadgetColumnWidthSpanSingleSetAInterpolator_interpolator;

  return v3;
}

void __73__PXLayoutMetricInterpolator_gadgetColumnWidthSpanSingleSetAInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnWidthSpanSingleSetAInterpolator_interpolator;
  gadgetColumnWidthSpanSingleSetAInterpolator_interpolator = v0;

  v2 = gadgetColumnWidthSpanSingleSetAInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetAReferenceValues(1uLL, 0, v2);
}

+ (id)gadgetColumnSpacingSpanSingleSetAInterpolator
{
  if (gadgetColumnSpacingSpanSingleSetAInterpolator_onceToken != -1)
  {
    dispatch_once(&gadgetColumnSpacingSpanSingleSetAInterpolator_onceToken, &__block_literal_global_13);
  }

  v3 = gadgetColumnSpacingSpanSingleSetAInterpolator_interpolator;

  return v3;
}

void __75__PXLayoutMetricInterpolator_gadgetColumnSpacingSpanSingleSetAInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = gadgetColumnSpacingSpanSingleSetAInterpolator_interpolator;
  gadgetColumnSpacingSpanSingleSetAInterpolator_interpolator = v0;

  v2 = gadgetColumnSpacingSpanSingleSetAInterpolator_interpolator;

  _ConfigureGadgetColumnWidthAndSpacingSetAReferenceValues(1uLL, v2, 0);
}

+ (id)photosDetailsEdgeInsetsInterpolator
{
  if (photosDetailsEdgeInsetsInterpolator_onceToken != -1)
  {
    dispatch_once(&photosDetailsEdgeInsetsInterpolator_onceToken, &__block_literal_global_9);
  }

  v3 = photosDetailsEdgeInsetsInterpolator_interpolator;

  return v3;
}

void __65__PXLayoutMetricInterpolator_photosDetailsEdgeInsetsInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = photosDetailsEdgeInsetsInterpolator_interpolator;
  photosDetailsEdgeInsetsInterpolator_interpolator = v0;

  v2 = photosDetailsEdgeInsetsInterpolator_interpolator;
  [v2 setReferenceValue:16.0 forMetric:320.0];
  [v2 setReferenceValue:16.0 forMetric:375.0];
  [v2 setReferenceValue:16.0 forMetric:375.0];
  [v2 setReferenceValue:16.0 forMetric:414.0];
  [v2 setReferenceValue:16.0 forMetric:414.0];
  [v2 setReferenceValue:16.0 forMetric:768.0];
  [v2 setReferenceValue:16.0 forMetric:834.0];
  [v2 setReferenceValue:16.0 forMetric:1024.0];
  [v2 setReferenceValue:16.0 forMetric:568.0];
  [v2 setReferenceValue:16.0 forMetric:667.0];
  [v2 setReferenceValue:32.0 forMetric:812.0];
  [v2 setReferenceValue:32.0 forMetric:736.0];
  [v2 setReferenceValue:32.0 forMetric:896.0];
  [v2 setReferenceValue:32.0 forMetric:844.0];
  [v2 setReferenceValue:32.0 forMetric:926.0];
  [v2 setReferenceValue:16.0 forMetric:1024.0];
  [v2 setReferenceValue:16.0 forMetric:1112.0];
  [v2 setReferenceValue:16.0 forMetric:1366.0];
}

+ (id)legacyLayoutMarginWidthInterpolator
{
  if (legacyLayoutMarginWidthInterpolator_onceToken != -1)
  {
    dispatch_once(&legacyLayoutMarginWidthInterpolator_onceToken, &__block_literal_global_7);
  }

  v3 = legacyLayoutMarginWidthInterpolator_interpolator;

  return v3;
}

void __65__PXLayoutMetricInterpolator_legacyLayoutMarginWidthInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = legacyLayoutMarginWidthInterpolator_interpolator;
  legacyLayoutMarginWidthInterpolator_interpolator = v0;

  v2 = legacyLayoutMarginWidthInterpolator_interpolator;

  _ConfigureStandardLayoutMarginValues(v2);
}

+ (id)_gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator:(id)interpolator
{
  interpolatorCopy = interpolator;
  v4 = objc_alloc_init(PXLayoutMetricInterpolator);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __87__PXLayoutMetricInterpolator__gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator___block_invoke;
  v13 = &unk_1E7BB5D58;
  v14 = interpolatorCopy;
  v5 = v4;
  v15 = v5;
  v6 = interpolatorCopy;
  v7 = _Block_copy(&v10);
  v7[2](v7, 2, 16.0, 320.0);
  v7[2](v7, 2, 16.0, 375.0);
  v7[2](v7, 2, 20.0, 414.0);
  [(PXLayoutMetricInterpolator *)v5 setReferenceValue:142.0 forMetric:467.0, v10, v11, v12, v13];
  [(PXLayoutMetricInterpolator *)v5 setReferenceValue:130.0 forMetric:523.0];
  [(PXLayoutMetricInterpolator *)v5 setReferenceValue:157.5 forMetric:567.0];
  [(PXLayoutMetricInterpolator *)v5 setReferenceValue:177.0 forMetric:633.333313];
  v7[2](v7, 3, 20.0, 490.0);
  v7[2](v7, 4, 20.0, 768.0);
  v7[2](v7, 4, 22.0, 834.0);
  v7[2](v7, 5, 30.0, 1024.0);
  v7[2](v7, 5, 32.0, 1112.0);
  v7[2](v7, 7, 24.0, 1366.0);
  v8 = v5;

  return v5;
}

uint64_t __87__PXLayoutMetricInterpolator__gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  [*(a1 + 32) valueForMetric:a4];
  v9 = 0.0;
  if (a2 >= 2)
  {
    v9 = (a2 - 1) * a3;
  }

  v10 = (a4 + v8 * -2.0 - v9) / a2;
  v11 = *(a1 + 40);

  return [v11 setReferenceValue:v10 forMetric:?];
}

+ (id)_sharedGridItemWidthInterpolator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXLayoutMetricInterpolator__sharedGridItemWidthInterpolator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedGridItemWidthInterpolator_onceToken != -1)
  {
    dispatch_once(&_sharedGridItemWidthInterpolator_onceToken, block);
  }

  v2 = _sharedGridItemWidthInterpolator_interpolator;

  return v2;
}

void __62__PXLayoutMetricInterpolator__sharedGridItemWidthInterpolator__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _sharedGridEdgeInsetsInterpolator];
  v2 = [*(a1 + 32) _gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator:v4];
  v3 = _sharedGridItemWidthInterpolator_interpolator;
  _sharedGridItemWidthInterpolator_interpolator = v2;
}

+ (id)_sharedGridEdgeInsetsInterpolator
{
  if (_sharedGridEdgeInsetsInterpolator_onceToken != -1)
  {
    dispatch_once(&_sharedGridEdgeInsetsInterpolator_onceToken, &__block_literal_global_4);
  }

  v3 = _sharedGridEdgeInsetsInterpolator_interpolator;

  return v3;
}

void __63__PXLayoutMetricInterpolator__sharedGridEdgeInsetsInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = _sharedGridEdgeInsetsInterpolator_interpolator;
  _sharedGridEdgeInsetsInterpolator_interpolator = v0;

  v2 = _sharedGridEdgeInsetsInterpolator_interpolator;

  _ConfigureSharedReferenceValues(v2);
}

+ (id)albumsGridItemWidthInterpolator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXLayoutMetricInterpolator_albumsGridItemWidthInterpolator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (albumsGridItemWidthInterpolator_onceToken != -1)
  {
    dispatch_once(&albumsGridItemWidthInterpolator_onceToken, block);
  }

  v2 = albumsGridItemWidthInterpolator_interpolator;

  return v2;
}

void __61__PXLayoutMetricInterpolator_albumsGridItemWidthInterpolator__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) albumsGridEdgeInsetsInterpolator];
  v2 = [*(a1 + 32) _gridItemWidthInterpolatorWithGridEdgeInsetsInterpolator:v4];
  v3 = albumsGridItemWidthInterpolator_interpolator;
  albumsGridItemWidthInterpolator_interpolator = v2;
}

+ (id)albumsGridEdgeInsetsInterpolator
{
  if (albumsGridEdgeInsetsInterpolator_onceToken != -1)
  {
    dispatch_once(&albumsGridEdgeInsetsInterpolator_onceToken, &__block_literal_global_2);
  }

  v3 = albumsGridEdgeInsetsInterpolator_interpolator;

  return v3;
}

uint64_t __62__PXLayoutMetricInterpolator_albumsGridEdgeInsetsInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = albumsGridEdgeInsetsInterpolator_interpolator;
  albumsGridEdgeInsetsInterpolator_interpolator = v0;

  _ConfigureSharedReferenceValues(albumsGridEdgeInsetsInterpolator_interpolator);
  [albumsGridEdgeInsetsInterpolator_interpolator setReferenceValue:20.0 forMetric:756.0];
  v2 = albumsGridEdgeInsetsInterpolator_interpolator;

  return [v2 setReferenceValue:20.0 forMetric:838.0];
}

+ (id)memoriesFeedLandscapeEdgeInsetsInterpolator
{
  if (memoriesFeedLandscapeEdgeInsetsInterpolator_onceToken != -1)
  {
    dispatch_once(&memoriesFeedLandscapeEdgeInsetsInterpolator_onceToken, &__block_literal_global_4961);
  }

  v3 = memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator;

  return v3;
}

uint64_t __73__PXLayoutMetricInterpolator_memoriesFeedLandscapeEdgeInsetsInterpolator__block_invoke()
{
  v0 = objc_alloc_init(PXLayoutMetricInterpolator);
  v1 = memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator;
  memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator = v0;

  _ConfigureSharedReferenceValues(memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator);
  [memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator setReferenceValue:65.0 forMetric:667.0];
  [memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator setReferenceValue:156.0 forMetric:724.0];
  [memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator setReferenceValue:156.0 forMetric:1024.0];
  [memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator setReferenceValue:179.0 forMetric:1112.0];
  v2 = memoriesFeedLandscapeEdgeInsetsInterpolator_interpolator;

  return [v2 setReferenceValue:187.0 forMetric:1366.0];
}

@end