@interface StockChartDisplayMode
+ (id)defaultDisplayMode;
- (BOOL)isEqual:(id)a3;
- (CGSize)chartSize;
- (StockChartDisplayMode)init;
- (UIEdgeInsets)chartRenderingInsets;
- (UIEdgeInsets)lineGraphInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)setBackgroundGradient:(CGGradient *)a3;
@end

@implementation StockChartDisplayMode

+ (id)defaultDisplayMode
{
  v2 = objc_alloc_init(StockChartDisplayMode);

  return v2;
}

- (StockChartDisplayMode)init
{
  v12.receiver = self;
  v12.super_class = StockChartDisplayMode;
  v2 = [(StockChartDisplayMode *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(StockChartDisplayMode *)v2 setLineWidth:2.5];
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.450980392 alpha:0.4];
    [(StockChartDisplayMode *)v3 setBackgroundLinesColor:v4];

    v5 = [MEMORY[0x277D75348] colorWithWhite:0.980392157 alpha:1.0];
    [(StockChartDisplayMode *)v3 setLineColor:v5];

    v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
    [(StockChartDisplayMode *)v3 setXAxisKeylineColor:v6];

    v7 = [MEMORY[0x277D75348] whiteColor];
    [(StockChartDisplayMode *)v3 setAxisLabelsColor:v7];

    [(StockChartDisplayMode *)v3 setVolumeHeight:RoundToPixel(19.5)];
    [(StockChartDisplayMode *)v3 setYAxisLabelCount:5];
    [(StockChartDisplayMode *)v3 setMaxInterval:6];
    [(StockChartDisplayMode *)v3 setIntervalRowHeight:34.5];
    [(StockChartDisplayMode *)v3 setShowsVolume:1];
    [(StockChartDisplayMode *)v3 setChartRenderingInsets:0.0, 16.0, 0.0, 16.0];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    hash = v3->_hash;
    v3->_hash = v9;
  }

  return v3;
}

- (void)dealloc
{
  backgroundGradient = self->_backgroundGradient;
  if (backgroundGradient)
  {
    CGGradientRelease(backgroundGradient);
  }

  v4.receiver = self;
  v4.super_class = StockChartDisplayMode;
  [(StockChartDisplayMode *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_hash copy];
  v6 = v4[1];
  v4[1] = v5;

  [(StockChartDisplayMode *)self chartSize];
  [v4 setChartSize:?];
  [v4 setShowsVolume:{-[StockChartDisplayMode showsVolume](self, "showsVolume")}];
  [v4 setMaxInterval:{-[StockChartDisplayMode maxInterval](self, "maxInterval")}];
  [v4 setHUDEnabled:{-[StockChartDisplayMode HUDEnabled](self, "HUDEnabled")}];
  [(StockChartDisplayMode *)self showsTitle];
  [v4 setShowsTitle:?];
  [v4 setYAxisLabelCount:{-[StockChartDisplayMode yAxisLabelCount](self, "yAxisLabelCount")}];
  [v4 setHorizontalGridlineCount:{-[StockChartDisplayMode horizontalGridlineCount](self, "horizontalGridlineCount")}];
  [v4 setShowsPriceLabelForPreviousClose:{-[StockChartDisplayMode showsPriceLabelForPreviousClose](self, "showsPriceLabelForPreviousClose")}];
  [v4 setUsesDetailedAxisLabels:{-[StockChartDisplayMode usesDetailedAxisLabels](self, "usesDetailedAxisLabels")}];
  [(StockChartDisplayMode *)self lineGraphInsets];
  [v4 setLineGraphInsets:?];
  [v4 setGraphOverlapsYAxisLabels:{-[StockChartDisplayMode graphOverlapsYAxisLabels](self, "graphOverlapsYAxisLabels")}];
  [(StockChartDisplayMode *)self volumeHeight];
  [v4 setVolumeHeight:?];
  [(StockChartDisplayMode *)self intervalRowHeight];
  [v4 setIntervalRowHeight:?];
  [v4 setYAxisLabelCount:{-[StockChartDisplayMode yAxisLabelCount](self, "yAxisLabelCount")}];
  [(StockChartDisplayMode *)self lineWidth];
  [v4 setLineWidth:?];
  v7 = [(StockChartDisplayMode *)self lineColor];
  [v4 setLineColor:v7];

  v8 = [(StockChartDisplayMode *)self backgroundLinesColor];
  [v4 setBackgroundLinesColor:v8];

  v9 = [(StockChartDisplayMode *)self xAxisKeylineColor];
  [v4 setXAxisKeylineColor:v9];

  v10 = [(StockChartDisplayMode *)self axisLabelsColor];
  [v4 setAxisLabelsColor:v10];

  [v4 setBackgroundGradient:{-[StockChartDisplayMode backgroundGradient](self, "backgroundGradient")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)v4->_hash isEqualToString:self->_hash];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = StockChartDisplayMode;
  v3 = [(StockChartDisplayMode *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [(StockChartDisplayMode *)self chartSize];
  v5 = NSStringFromCGSize(v9);
  [v4 appendFormat:@"; chart size %@>", v5];

  return v4;
}

- (void)setBackgroundGradient:(CGGradient *)a3
{
  backgroundGradient = self->_backgroundGradient;
  if (backgroundGradient != a3)
  {
    if (backgroundGradient)
    {
      CGGradientRelease(backgroundGradient);
    }

    self->_backgroundGradient = a3;
    if (a3)
    {

      CGGradientRetain(a3);
    }
  }
}

- (CGSize)chartSize
{
  width = self->_chartSize.width;
  height = self->_chartSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)lineGraphInsets
{
  top = self->_lineGraphInsets.top;
  left = self->_lineGraphInsets.left;
  bottom = self->_lineGraphInsets.bottom;
  right = self->_lineGraphInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)chartRenderingInsets
{
  top = self->_chartRenderingInsets.top;
  left = self->_chartRenderingInsets.left;
  bottom = self->_chartRenderingInsets.bottom;
  right = self->_chartRenderingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end