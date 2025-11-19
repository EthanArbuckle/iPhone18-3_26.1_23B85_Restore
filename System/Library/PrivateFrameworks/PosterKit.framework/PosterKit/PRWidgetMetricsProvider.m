@interface PRWidgetMetricsProvider
+ (id)sharedInstance;
- (CGSize)_sizeForItemWithGridWidth:(int64_t)a3 height:(int64_t)a4;
- (CHSEdgeInsets)_edgeInsets;
- (double)_insetScreenWidth;
- (double)_scaleFactor;
- (id)_complicationCircularMetrics;
- (id)_complicationInlineMetrics;
- (id)_complicationRectangularMetrics;
- (id)_systemSmallMetrics;
- (id)_transparentMediumMetrics;
- (id)lockScreenWidgetMetricsSpecifications;
- (id)systemMetricsForWidget:(id)a3;
- (int64_t)_complicationFontStyle;
@end

@implementation PRWidgetMetricsProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PRWidgetMetricsProvider sharedInstance];
  }

  v3 = sharedInstance_widgetMetricsProvider;

  return v3;
}

uint64_t __41__PRWidgetMetricsProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PRWidgetMetricsProvider);
  v1 = sharedInstance_widgetMetricsProvider;
  sharedInstance_widgetMetricsProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)lockScreenWidgetMetricsSpecifications
{
  v3 = objc_alloc_init(MEMORY[0x1E6994318]);
  v4 = [(PRWidgetMetricsProvider *)self _complicationCircularMetrics];
  [v3 setMetrics:v4 forFamily:10];

  v5 = [(PRWidgetMetricsProvider *)self _complicationRectangularMetrics];
  [v3 setMetrics:v5 forFamily:11];

  v6 = [(PRWidgetMetricsProvider *)self _complicationInlineMetrics];
  [v3 setMetrics:v6 forFamily:12];

  v7 = [MEMORY[0x1E698E730] sharedInstance];
  v8 = [v7 deviceClass];

  if (v8 == 2)
  {
    v9 = [(PRWidgetMetricsProvider *)self _systemSmallMetrics];
    [v3 setMetrics:v9 forFamily:1];
  }

  return v3;
}

- (id)systemMetricsForWidget:(id)a3
{
  v4 = [a3 family];
  if (v4 > 10)
  {
    if (v4 != 11)
    {
      if (v4 == 12)
      {
        v5 = [(PRWidgetMetricsProvider *)self _complicationInlineMetrics];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = [(PRWidgetMetricsProvider *)self _complicationRectangularMetrics];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 10)
      {
        v5 = [(PRWidgetMetricsProvider *)self _complicationCircularMetrics];
        goto LABEL_11;
      }

LABEL_8:
      v5 = [(PRWidgetMetricsProvider *)self _transparentMediumMetrics];
      goto LABEL_11;
    }

    v5 = [(PRWidgetMetricsProvider *)self _systemSmallMetrics];
  }

LABEL_11:

  return v5;
}

- (CHSEdgeInsets)_edgeInsets
{
  v2 = [MEMORY[0x1E6999618] complicationEdgeInset];
  v4.n128_u64[0] = v3.n128_u64[0];
  v5.n128_u64[0] = v3.n128_u64[0];
  v6.n128_u64[0] = v3.n128_u64[0];

  MEMORY[0x1EEDF3CB0](v2, v3, v4, v5, v6);
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_scaleFactor
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 1.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    v7 = v6;
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 nativeScale];
    v4 = v7 / v9;
  }

  return v4;
}

- (CGSize)_sizeForItemWithGridWidth:(int64_t)a3 height:(int64_t)a4
{
  [MEMORY[0x1E6999618] complicationEdgeInset];
  v8 = v7 + v7;
  [MEMORY[0x1E6999618] interComplicationSpacing];
  v10 = v9 * (a3 - 1);
  [MEMORY[0x1E6999618] gridUnitSize];
  v12 = v8 + v10 + v11 * a3;
  [MEMORY[0x1E6999618] interComplicationSpacing];
  v14 = v13 * (a4 - 1);
  [MEMORY[0x1E6999618] gridUnitSize];
  v16 = v8 + v14 + v15 * a4;
  [(PRWidgetMetricsProvider *)self _scaleFactor];
  v18 = 1.0 / v17;
  v19 = v12 * (1.0 / v17);
  v20 = v16 * v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)_complicationCircularMetrics
{
  [(PRWidgetMetricsProvider *)self _sizeForItemWithGridWidth:1 height:1];
  v4 = v3;
  v6 = v5;
  [(PRWidgetMetricsProvider *)self _scaleFactor];
  v8 = v4 * 0.5 * (1.0 / v7);
  v9 = objc_alloc(MEMORY[0x1E69943F0]);
  [(PRWidgetMetricsProvider *)self _scaleFactor];
  v11 = v10;
  v12 = [(PRWidgetMetricsProvider *)self _complicationFontStyle];
  [(PRWidgetMetricsProvider *)self _edgeInsets];
  v17 = [v9 initWithSize:v12 cornerRadius:2 scaleFactor:v4 fontStyle:v6 safeAreaInsets:v8 layoutInsets:v11 contentMargins:v13 supportsDynamicText:{v14, v15, v16, *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24)}];

  return v17;
}

- (id)_complicationRectangularMetrics
{
  v3 = objc_alloc(MEMORY[0x1E69943F0]);
  [(PRWidgetMetricsProvider *)self _sizeForItemWithGridWidth:2 height:1];
  v5 = v4;
  v7 = v6;
  [(PRWidgetMetricsProvider *)self _scaleFactor];
  v9 = v8;
  v10 = [(PRWidgetMetricsProvider *)self _complicationFontStyle];
  [(PRWidgetMetricsProvider *)self _edgeInsets];
  v15 = [v3 initWithSize:v10 cornerRadius:2 scaleFactor:v5 fontStyle:v7 safeAreaInsets:0.0 layoutInsets:v9 contentMargins:v11 supportsDynamicText:{v12, v13, v14, *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24)}];

  return v15;
}

- (id)_complicationInlineMetrics
{
  [PREditorElementLayoutController frameForElements:4];
  v4 = [objc_alloc(MEMORY[0x1E69943F0]) initWithSize:v2 cornerRadius:{v3, 0.0}];

  return v4;
}

- (id)_systemSmallMetrics
{
  v3 = objc_alloc(MEMORY[0x1E69943F0]);
  [(PRWidgetMetricsProvider *)self _sizeForItemWithGridWidth:2 height:2];
  v5 = v4;
  v7 = v6;
  [(PRWidgetMetricsProvider *)self _scaleFactor];
  v9 = v8;
  [(PRWidgetMetricsProvider *)self _edgeInsets];
  v14 = [v3 initWithSize:0 cornerRadius:2 scaleFactor:v5 fontStyle:v7 safeAreaInsets:7.0 layoutInsets:v9 contentMargins:v10 supportsDynamicText:{v11, v12, v13, *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24)}];

  return v14;
}

- (id)_transparentMediumMetrics
{
  v3 = objc_alloc(MEMORY[0x1E69943F0]);
  [(PRWidgetMetricsProvider *)self _insetScreenWidth];
  v4 = [v3 initWithSize:? cornerRadius:?];

  return v4;
}

- (double)_insetScreenWidth
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v4 = v3 + -16.0;

  return v4;
}

- (int64_t)_complicationFontStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 7;
  }

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 _referenceBounds];
  v7 = v6;

  if (v7 == 375.0)
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 nativeScale];
    v10 = v9 == 2.0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 < 375.0 || v10;
  v12 = 7;
  if (v7 > 394.0)
  {
    v12 = 8;
  }

  if (v11)
  {
    return 6;
  }

  else
  {
    return v12;
  }
}

@end