@interface WFPencilActionConfigurationMetricsProvider
+ (id)sharedProvider;
- ($38DE1B8188D18052B1D0096D2D7D1570)metricsWithInterfaceOrientation:(SEL)orientation;
- (CGSize)sheetPreferredContentSizeWithMetrics:(id *)metrics;
- (UIEdgeInsets)uiEdgeInsetsFromDirectionalInsets:(NSDirectionalEdgeInsets)insets;
- (WFPencilActionConfigurationMetricsProvider)init;
@end

@implementation WFPencilActionConfigurationMetricsProvider

- (UIEdgeInsets)uiEdgeInsetsFromDirectionalInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection)
  {
    v10 = trailing;
  }

  else
  {
    v10 = leading;
  }

  if (layoutDirection)
  {
    v11 = leading;
  }

  else
  {
    v11 = trailing;
  }

  v12 = top;
  v13 = bottom;
  result.right = v11;
  result.bottom = v13;
  result.left = v10;
  result.top = v12;
  return result;
}

- (CGSize)sheetPreferredContentSizeWithMetrics:(id *)metrics
{
  [(WFPencilActionConfigurationMetricsProvider *)self uiEdgeInsetsFromDirectionalInsets:metrics->var3.var2.top, metrics->var3.var2.leading, metrics->var3.var2.bottom, metrics->var3.var2.trailing];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v13 = v12 - (v6 + v10);
  v15 = v14 - (v4 + v8);

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- ($38DE1B8188D18052B1D0096D2D7D1570)metricsWithInterfaceOrientation:(SEL)orientation
{
  v7 = [WFPencilActionConfigurationMetricsCacheKey alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v11 = [(WFPencilActionConfigurationMetricsCacheKey *)v7 initWithInterfaceOrientation:a4 screenSize:v9, v10];

  os_unfair_lock_lock(&self->_cacheLock);
  cache = [(WFPencilActionConfigurationMetricsProvider *)self cache];
  v13 = [cache objectForKeyedSubscript:v11];

  if (v13)
  {
    v14 = v13;
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    _CF = (a4 - 1) >= 2;
    v18 = (a4 - 1) < 2;
    if (_CF)
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = 40.0;
    if (!_CF)
    {
      v20 = 0.0;
    }

    v21 = v20 + 716.0 + 240.0;
    v22 = v16 - v21;
    if (vabdd_f64(v16, v21) >= 60.0)
    {
      v38 = xmmword_1C841E390;
      v23 = 208.0;
    }

    else
    {
      v23 = v22 / 3.0 + 208.0;
      __asm { FMOV            V3.2D, #30.0 }

      *&_Q3 = v23;
      v38 = _Q3;
      v22 = v16 - (v20 + v23 * 3.0 + 60.0 + 32.0 + 240.0);
    }

    if (v22 >= 0.0)
    {
      v28 = 3;
    }

    else
    {
      v22 = v16 - (v20 + v23 * 2.0 + 30.0 + 32.0 + 240.0);
      v28 = 2;
    }

    if (v22 >= 144.0)
    {
      v22 = v16 - (v20 + (30 * v28 - 30) + v28 * v23 + 176.0 + 240.0);
      v29 = xmmword_1C841E3C0;
      v30 = xmmword_1C841E3D0;
      v31 = 88.0;
    }

    else
    {
      v29 = xmmword_1C841E3A0;
      v30 = xmmword_1C841E3B0;
      v31 = 16.0;
    }

    if (v22 >= v23 + 30.0)
    {
      v22 = v16 - (v20 + (30 * v28) + (v28 + 1) * v23 + v31 + v31 + 240.0);
      ++v28;
    }

    if (v22 >= 40.0)
    {
      v22 = v16 - (v20 + v31 + v31 + (v28 - 1) * 30.0 + v28 * v23 + 280.0);
      v32 = xmmword_1C841E3F0;
    }

    else
    {
      v32 = xmmword_1C841E3E0;
    }

    v37 = v32;
    if (v22 > 0.0)
    {
      *(&v29 + 1) = v22 * 0.5 + v31;
      *(&v30 + 1) = *(&v29 + 1);
    }

    v35 = v29;
    v36 = v30;

    v39 = v18;
    v40 = v37;
    v41 = v28;
    v42 = v38;
    v43 = v35;
    v44 = v36;
    v45 = xmmword_1C841E400;
    v46 = 0x405C400000000000;
    v47 = v19;
    v48 = 0;
    v49 = v19;
    v50 = xmmword_1C841E410;
    v51 = xmmword_1C841E420;
    v52 = xmmword_1C841E430;
    v14 = [[WFPencilActionConfigurationMetricsCacheValue alloc] initWithValue:&v39];
    cache2 = [(WFPencilActionConfigurationMetricsProvider *)self cache];
    [cache2 setObject:v14 forKeyedSubscript:v11];

    os_unfair_lock_unlock(&self->_cacheLock);
    if (!v14)
    {
      *&retstr->var4.var2.top = 0u;
      *&retstr->var4.var2.bottom = 0u;
      *&retstr->var3.var2.bottom = 0u;
      *&retstr->var4.var0 = 0u;
      *&retstr->var3.var0 = 0u;
      *&retstr->var3.var2.top = 0u;
      *&retstr->var2.var3.top = 0u;
      *&retstr->var2.var3.bottom = 0u;
      *&retstr->var1.var1 = 0u;
      *&retstr->var2.var1 = 0u;
      *&retstr->var0 = 0u;
      goto LABEL_26;
    }
  }

  [(WFPencilActionConfigurationMetricsCacheValue *)v14 value:v35];
LABEL_26:

  return result;
}

- (WFPencilActionConfigurationMetricsProvider)init
{
  v7.receiver = self;
  v7.super_class = WFPencilActionConfigurationMetricsProvider;
  v2 = [(WFPencilActionConfigurationMetricsProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_5267);
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

uint64_t __60__WFPencilActionConfigurationMetricsProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedProvider = objc_alloc_init(WFPencilActionConfigurationMetricsProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end