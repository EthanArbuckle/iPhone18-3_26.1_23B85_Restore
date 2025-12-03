@interface PRWidgetMetricsProvider
+ (id)sharedInstance;
- (CGSize)_sizeForItemWithGridWidth:(int64_t)width height:(int64_t)height;
- (CHSEdgeInsets)_edgeInsets;
- (double)_insetScreenWidth;
- (double)_scaleFactor;
- (id)_complicationCircularMetrics;
- (id)_complicationInlineMetrics;
- (id)_complicationRectangularMetrics;
- (id)_systemSmallMetrics;
- (id)_transparentMediumMetrics;
- (id)lockScreenWidgetMetricsSpecifications;
- (id)systemMetricsForWidget:(id)widget;
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
  _complicationCircularMetrics = [(PRWidgetMetricsProvider *)self _complicationCircularMetrics];
  [v3 setMetrics:_complicationCircularMetrics forFamily:10];

  _complicationRectangularMetrics = [(PRWidgetMetricsProvider *)self _complicationRectangularMetrics];
  [v3 setMetrics:_complicationRectangularMetrics forFamily:11];

  _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _complicationInlineMetrics];
  [v3 setMetrics:_complicationInlineMetrics forFamily:12];

  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  deviceClass = [mEMORY[0x1E698E730] deviceClass];

  if (deviceClass == 2)
  {
    _systemSmallMetrics = [(PRWidgetMetricsProvider *)self _systemSmallMetrics];
    [v3 setMetrics:_systemSmallMetrics forFamily:1];
  }

  return v3;
}

- (id)systemMetricsForWidget:(id)widget
{
  family = [widget family];
  if (family > 10)
  {
    if (family != 11)
    {
      if (family == 12)
      {
        _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _complicationInlineMetrics];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _complicationRectangularMetrics];
  }

  else
  {
    if (family != 1)
    {
      if (family == 10)
      {
        _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _complicationCircularMetrics];
        goto LABEL_11;
      }

LABEL_8:
      _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _transparentMediumMetrics];
      goto LABEL_11;
    }

    _complicationInlineMetrics = [(PRWidgetMetricsProvider *)self _systemSmallMetrics];
  }

LABEL_11:

  return _complicationInlineMetrics;
}

- (CHSEdgeInsets)_edgeInsets
{
  complicationEdgeInset = [MEMORY[0x1E6999618] complicationEdgeInset];
  v4.n128_u64[0] = v3.n128_u64[0];
  v5.n128_u64[0] = v3.n128_u64[0];
  v6.n128_u64[0] = v3.n128_u64[0];

  MEMORY[0x1EEDF3CB0](complicationEdgeInset, v3, v4, v5, v6);
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_scaleFactor
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = 1.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = v6;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 nativeScale];
    v4 = v7 / v9;
  }

  return v4;
}

- (CGSize)_sizeForItemWithGridWidth:(int64_t)width height:(int64_t)height
{
  [MEMORY[0x1E6999618] complicationEdgeInset];
  v8 = v7 + v7;
  [MEMORY[0x1E6999618] interComplicationSpacing];
  v10 = v9 * (width - 1);
  [MEMORY[0x1E6999618] gridUnitSize];
  v12 = v8 + v10 + v11 * width;
  [MEMORY[0x1E6999618] interComplicationSpacing];
  v14 = v13 * (height - 1);
  [MEMORY[0x1E6999618] gridUnitSize];
  v16 = v8 + v14 + v15 * height;
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
  _complicationFontStyle = [(PRWidgetMetricsProvider *)self _complicationFontStyle];
  [(PRWidgetMetricsProvider *)self _edgeInsets];
  v17 = [v9 initWithSize:_complicationFontStyle cornerRadius:2 scaleFactor:v4 fontStyle:v6 safeAreaInsets:v8 layoutInsets:v11 contentMargins:v13 supportsDynamicText:{v14, v15, v16, *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24)}];

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
  _complicationFontStyle = [(PRWidgetMetricsProvider *)self _complicationFontStyle];
  [(PRWidgetMetricsProvider *)self _edgeInsets];
  v15 = [v3 initWithSize:_complicationFontStyle cornerRadius:2 scaleFactor:v5 fontStyle:v7 safeAreaInsets:0.0 layoutInsets:v9 contentMargins:v11 supportsDynamicText:{v12, v13, v14, *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24)}];

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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v4 = v3 + -16.0;

  return v4;
}

- (int64_t)_complicationFontStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 7;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v7 = v6;

  if (v7 == 375.0)
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 nativeScale];
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