@interface StockChartView
+ (CGGradient)LineBackgroundGradient;
- (BOOL)isCurrentChart;
- (BOOL)isLandscape;
- (BOOL)shouldShowLoadingStatus;
- (CGRect)graphViewFrameForMode:(id)a3;
- (CGRect)lineGraphFrame;
- (NSArray)alternateDisplayModes;
- (NSString)description;
- (StockChartView)initWithInitialDisplayMode:(id)a3 preferredChartInterval:(int64_t)a4 stockChartViewDelegate:(id)a5;
- (StockChartViewDelegate)chartViewDelegate;
- (StocksViewController)controller;
- (double)_evennessOfValue:(double)a3 inRange:(double)a4;
- (double)horizontalPadding;
- (double)lineGraphBottomPadding;
- (double)widestYLabelWidthForMode:(id)a3;
- (id)currentGraphView;
- (int64_t)maxSupportedIntervalFromDesiredInterval:(int64_t)a3;
- (void)_layoutAxesAndXLabels;
- (void)_layoutIntervalButtonRow;
- (void)_layoutSubviews;
- (void)_layoutTopLabelsHidden:(BOOL)a3;
- (void)_layoutVolumeSeparatorLineForGraphRect:(CGRect)a3;
- (void)_layoutYLabels;
- (void)_prepareXAxisLabelsAndPositions;
- (void)_prepareYAxisLabelsAndPositionsForDisplayMode:(id)a3;
- (void)_setDayLabelsWithInterval:(unsigned int)a3 realTimePositions:(BOOL)a4;
- (void)_setHourLabels;
- (void)_setMonthAndYearLabels;
- (void)_setShowingLoadingStatus:(BOOL)a3;
- (void)addDisplayMode:(id)a3;
- (void)animateTransitionToDisplayMode:(id)a3;
- (void)chartIntervalButtonRow:(id)a3 didSelectChartInterval:(int64_t)a4;
- (void)chartUpdater:(id)a3 didFailWithError:(id)a4;
- (void)chartUpdater:(id)a3 didReceiveStockChartData:(id)a4;
- (void)clearData;
- (void)createYLabelsForMode:(id)a3;
- (void)dealloc;
- (void)didTransitionToDisplayMode:(id)a3;
- (void)enumerateGraphsAndDisplayModesUsingBlock:(id)a3;
- (void)forceLayout;
- (void)hideLabelsAxesAndGraphs;
- (void)hideOtherGraphViews;
- (void)layoutGraphViews;
- (void)layoutIfNeeded;
- (void)layoutLoadingStatus;
- (void)layoutPreviousClose;
- (void)layoutSubviews;
- (void)prepareForTransitionToDisplayMode:(id)a3;
- (void)reloadData;
- (void)reloadDataIfStale;
- (void)renderGraphDataIfNeeded;
- (void)renderGraphDataIfNeededForMode:(id)a3;
- (void)resetLocale;
- (void)setChartData:(id)a3;
- (void)setCurrentDisplayMode:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLabelsAndAxesAlpha:(double)a3;
- (void)setNeedsLayout;
- (void)setShowingHUD:(BOOL)a3;
- (void)setStock:(id)a3;
- (void)stockGraphViewReadyForDisplay:(id)a3;
- (void)updateChartViewForSelectedInterval;
- (void)updateHUDView;
@end

@implementation StockChartView

+ (CGGradient)LineBackgroundGradient
{
  result = LineBackgroundGradient_gradient;
  if (!LineBackgroundGradient_gradient)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v4 = MEMORY[0x277CBEA60];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v6 = [v5 CGColor];
    v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
    v8 = [v4 arrayWithObjects:{v6, objc_msgSend(v7, "CGColor"), 0}];

    LineBackgroundGradient_gradient = CGGradientCreateWithColors(DeviceRGB, v8, 0);
    CGColorSpaceRelease(DeviceRGB);
    return LineBackgroundGradient_gradient;
  }

  return result;
}

- (BOOL)isCurrentChart
{
  v2 = self;
  v3 = [(StockChartView *)self chartViewDelegate];
  LOBYTE(v2) = [v3 stockChartViewIsCurrentChartView:v2];

  return v2;
}

- (void)dealloc
{
  [(YQLRequest *)self->_chartUpdater cancelAndInvalidate];
  [(ChartUpdater *)self->_chartUpdater setDelegate:0];
  chartUpdater = self->_chartUpdater;
  self->_chartUpdater = 0;

  v4.receiver = self;
  v4.super_class = StockChartView;
  [(StockChartView *)&v4 dealloc];
}

- (StockChartView)initWithInitialDisplayMode:(id)a3 preferredChartInterval:(int64_t)a4 stockChartViewDelegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v58.receiver = self;
  v58.super_class = StockChartView;
  v10 = [(StockChartView *)&v58 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [(StockChartView *)v10 setBackgroundColor:v11];

    [(StockChartView *)v10 setMultipleTouchEnabled:1];
    v12 = objc_opt_new();
    graphViews = v10->_graphViews;
    v10->_graphViews = v12;

    v14 = objc_alloc_init(LoadingLabel);
    loadingLabel = v10->_loadingLabel;
    v10->_loadingLabel = v14;

    [(StockChartView *)v10 addSubview:v10->_loadingLabel];
    v16 = objc_alloc_init(ChartUpdater);
    chartUpdater = v10->_chartUpdater;
    v10->_chartUpdater = v16;

    [(ChartUpdater *)v10->_chartUpdater setDelegate:v10];
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    axisViews = v10->_axisViews;
    v10->_axisViews = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    xLabelViews = v10->_xLabelViews;
    v10->_xLabelViews = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    yLabelViews = v10->_yLabelViews;
    v10->_yLabelViews = v22;

    [(StockChartView *)v10 createYLabelsForMode:v8];
    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    xAxisKeyline = v10->_xAxisKeyline;
    v10->_xAxisKeyline = v24;

    [(UIView *)v10->_xAxisKeyline setHidden:1];
    [(StockChartView *)v10 addSubview:v10->_xAxisKeyline];
    v26 = objc_opt_new();
    previousCloseLine = v10->_previousCloseLine;
    v10->_previousCloseLine = v26;

    v28 = v10->_previousCloseLine;
    v29 = [MEMORY[0x277D75348] clearColor];
    [(DashedLineView *)v28 setBackgroundColor:v29];

    [(StockChartView *)v10 addSubview:v10->_previousCloseLine];
    v30 = objc_alloc_init(MEMORY[0x277D756B8]);
    previousCloseLabel = v10->_previousCloseLabel;
    v10->_previousCloseLabel = v30;

    v32 = v10->_previousCloseLabel;
    v33 = +[StocksStyle sharedStyle];
    v34 = [v33 lightFontOfSize:12.0];
    [(UILabel *)v32 setFont:v34];

    v35 = v10->_previousCloseLabel;
    v36 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v35 setTextColor:v36];

    v37 = v10->_previousCloseLabel;
    v38 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v37 setBackgroundColor:v38];

    [(UILabel *)v10->_previousCloseLabel setTextAlignment:2];
    [(StockChartView *)v10 addSubview:v10->_previousCloseLabel];
    v39 = objc_alloc_init(ChartHUDView);
    HUDView = v10->_HUDView;
    v10->_HUDView = v39;

    [(ChartHUDView *)v10->_HUDView setChartView:v10];
    [(ChartHUDView *)v10->_HUDView setOverlayHidden:1];
    [(StockChartView *)v10 addSubview:v10->_HUDView];
    v41 = objc_alloc_init(ChartTitleLabel);
    titleView = v10->_titleView;
    v10->_titleView = v41;

    v43 = v10->_titleView;
    v44 = [MEMORY[0x277D75348] blackColor];
    [(ChartTitleLabel *)v43 setBackgroundColor:v44];

    [v8 showsTitle];
    if (v45 != 0.0)
    {
      [(StockChartView *)v10 insertSubview:v10->_titleView belowSubview:v10->_HUDView];
    }

    v46 = [[ChartIntervalButtonRow alloc] initWithMaxChartInterval:8 chartIntervalButtonRowDelegate:v10];
    intervalButtonRow = v10->_intervalButtonRow;
    v10->_intervalButtonRow = v46;

    [(StockChartView *)v10 addSubview:v10->_intervalButtonRow];
    v48 = [(StockChartView *)v10 layer];
    [v48 setNeedsLayoutOnGeometryChange:0];

    v49 = objc_alloc_init(MEMORY[0x277D75D18]);
    chartTopKeyline = v10->_chartTopKeyline;
    v10->_chartTopKeyline = v49;

    v51 = v10->_chartTopKeyline;
    v52 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
    [(UIView *)v51 setBackgroundColor:v52];

    [(StockChartView *)v10 addSubview:v10->_chartTopKeyline];
    v53 = objc_alloc_init(MEMORY[0x277D75D18]);
    chartBottomKeyline = v10->_chartBottomKeyline;
    v10->_chartBottomKeyline = v53;

    v55 = v10->_chartBottomKeyline;
    v56 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
    [(UIView *)v55 setBackgroundColor:v56];

    [(StockChartView *)v10 addSubview:v10->_chartBottomKeyline];
    [v8 setBackgroundGradient:{objc_msgSend(objc_opt_class(), "LineBackgroundGradient")}];
    [(StockChartView *)v10 addDisplayMode:v8];
    [(StockChartView *)v10 setCurrentDisplayMode:v8];
    v10->_preferredInterval = a4;
    v10->_selectedInterval = a4;
    objc_storeWeak(&v10->_chartViewDelegate, v9);
    [(ChartIntervalButtonRow *)v10->_intervalButtonRow selectChartIntervalButtonForInterval:[(StockChartView *)v10 maxSupportedIntervalFromDesiredInterval:a4]];
  }

  return v10;
}

- (void)addDisplayMode:(id)a3
{
  v4 = a3;
  displayModes = self->_displayModes;
  v15 = v4;
  if (!displayModes)
  {
    v6 = objc_opt_new();
    v7 = self->_displayModes;
    self->_displayModes = v6;

    v4 = v15;
    displayModes = self->_displayModes;
  }

  if (([(NSMutableArray *)displayModes containsObject:v4]& 1) == 0)
  {
    v8 = [StockGraphView alloc];
    v9 = [(StockGraphView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(StockGraphView *)v9 setDisplayMode:v15];
    [(StockGraphView *)v9 setChartViewDelegate:self];
    v10 = [(StockChartView *)self chartData];
    [(StockGraphView *)v9 loadStockChartData:v10];

    [v15 setBackgroundGradient:{objc_msgSend(objc_opt_class(), "LineBackgroundGradient")}];
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = v12 == 1.0;
    v14 = 0.7;
    if (v13)
    {
      v14 = 1.0;
    }

    [v15 setLineWidth:v14];

    [(NSMutableArray *)self->_displayModes addObject:v15];
    [(NSMutableDictionary *)self->_graphViews setObject:v9 forKey:v15];
    [(StockChartView *)self insertSubview:v9 belowSubview:self->_HUDView];
    [(StockChartView *)self createYLabelsForMode:v15];
    [(StockChartView *)self _prepareYAxisLabelsAndPositionsForDisplayMode:v15];
  }
}

- (void)setCurrentDisplayMode:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentDisplayMode, a3);
  -[ChartIntervalButtonRow updateMaxChartInterval:](self->_intervalButtonRow, "updateMaxChartInterval:", [v5 maxInterval]);
  if (self->_chartData)
  {
    [(StockChartView *)self _prepareXAxisLabelsAndPositions];
  }

  [(StockChartView *)self setNeedsLayout];
}

- (NSArray)alternateDisplayModes
{
  v3 = [(NSMutableArray *)self->_displayModes mutableCopy];
  v4 = [(StockChartView *)self currentDisplayMode];
  [v3 removeObject:v4];

  return v3;
}

- (void)enumerateGraphsAndDisplayModesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(StockChartView *)a2 enumerateGraphsAndDisplayModesUsingBlock:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_displayModes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v13 = 0;
      v12 = [(StockChartView *)self graphViewForMode:v11];
      v5[2](v5, v11, v12, &v13);
      LOBYTE(v11) = v13;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (void)resetLocale
{
  [(ChartHUDView *)self->_HUDView resetLocale];
  v3 = +[ChartLabelInfoManager sharedLabelInfoManager];
  [v3 resetLocale];

  [(StockChartView *)self _setMonthAndYearLabels];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(Stock *)self->_stock symbol];
  v8.receiver = self;
  v8.super_class = StockChartView;
  v5 = [(StockChartView *)&v8 description];
  v6 = [v3 stringWithFormat:@"Ticker %@ %@", v4, v5];

  return v6;
}

- (id)currentGraphView
{
  v3 = [(StockChartView *)self currentDisplayMode];
  v4 = [(StockChartView *)self graphViewForMode:v3];

  return v4;
}

- (void)setStock:(id)a3
{
  v5 = a3;
  if (self->_stock != v5)
  {
    v6 = v5;
    [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:&__block_literal_global_11];
    objc_storeStrong(&self->_stock, a3);
    [(StockChartView *)self clearData];
    [(StockChartView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (BOOL)shouldShowLoadingStatus
{
  v2 = [(StockChartView *)self currentGraphView];
  v3 = [v2 isRendered];

  return v3 ^ 1;
}

- (void)layoutGraphViews
{
  if (!self->_animating)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __34__StockChartView_layoutGraphViews__block_invoke;
    v2[3] = &unk_279D16828;
    v2[4] = self;
    [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:v2];
  }
}

void __34__StockChartView_layoutGraphViews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 graphViewFrameForMode:a2];
  [v5 setFrame:?];
}

- (void)layoutPreviousClose
{
  v72 = *MEMORY[0x277D85DE8];
  [(StockChartData *)self->_chartData previousClosePrice];
  v4 = v3;
  v5 = 0;
  if (!self->_selectedInterval && v3 != 0.0)
  {
    if ([(StockChartView *)self isLoading])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(StockChartView *)self currentGraphView];
      v5 = [v6 isRendered];
    }
  }

  v7 = v5 ^ 1u;
  [(DashedLineView *)self->_previousCloseLine setHidden:v7];
  [(UILabel *)self->_previousCloseLabel setHidden:v7];
  if ((v7 & 1) == 0)
  {
    previousCloseLabel = self->_previousCloseLabel;
    v9 = +[StockDataFormatter sharedDataFormatter];
    *&v10 = v4;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v12 = [v9 formattedNumber:v11 withPrecision:-[StockChartData yAxisFractionDigits](self->_chartData useGroupSeparator:{"yAxisFractionDigits"), 1}];
    [(UILabel *)previousCloseLabel setText:v12];

    [(UILabel *)self->_previousCloseLabel sizeToFit];
    v13 = self->_previousCloseLabel;
    v14 = [(StockChartView *)self currentDisplayMode];
    v15 = [v14 showsPriceLabelForPreviousClose];
    v16 = 0.0;
    if (v15)
    {
      v16 = 1.0;
    }

    [(UILabel *)v13 setAlpha:v16];

    v17 = [(StockChartView *)self chartData];
    v18 = *([v17 minValue] + 8);

    v19 = v4;
    if (v18 <= v4)
    {
      v20 = v18;
    }

    else
    {
      v20 = v4;
    }

    v21 = [(StockChartView *)self chartData];
    v22 = *([v21 maxValue] + 8);

    if (v22 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = [(StockChartView *)self currentGraphView];
    [v24 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v73.origin.x = v26;
    v73.origin.y = v28;
    v73.size.width = v30;
    v73.size.height = v32;
    MaxY = CGRectGetMaxY(v73);
    [(StockChartView *)self lineGraphBottomPadding];
    v35 = MaxY - v34;
    [(StockChartView *)self lineGraphBottomPadding];
    v37 = v35 - RoundToPixel((v19 - v20) / (v23 - v20) * (v32 - v36 + -18.0));
    previousCloseLine = self->_previousCloseLine;
    v74.origin.x = v26;
    v74.origin.y = v28;
    v74.size.width = v30;
    v74.size.height = v32;
    MinX = CGRectGetMinX(v74);
    v75.origin.x = v26;
    v75.origin.y = v28;
    v75.size.width = v30;
    v75.size.height = v32;
    Width = CGRectGetWidth(v75);
    [(DashedLineView *)previousCloseLine setFrame:MinX, v37, Width, RoundToPixel(0.5)];
    [(DashedLineView *)self->_previousCloseLine setNeedsDisplay];
    [(UILabel *)self->_previousCloseLabel frame];
    v42 = v41;
    v44 = v43;
    v45 = v37 - v43 + -4.0;
    v46 = [(UILabel *)self->_previousCloseLabel font];
    [v46 descender];
    v48 = RoundToPixel(v45 - v47);

    v76.origin.x = v26;
    v76.origin.y = v28;
    v76.size.width = v30;
    v76.size.height = v32;
    MaxX = CGRectGetMaxX(v76);
    v50 = MaxX - v42;
    [(UILabel *)self->_previousCloseLabel setFrame:MaxX - v42, v48, v42, v44];
    v51 = [(StockChartView *)self currentDisplayMode];
    v52 = [v51 showsPriceLabelForPreviousClose];

    if (v52)
    {
      v77.origin.x = v50;
      v77.origin.y = v48;
      v77.size.width = v42;
      v77.size.height = v44;
      v78 = CGRectInset(v77, -4.0, -4.0);
      x = v78.origin.x;
      y = v78.origin.y;
      v55 = v78.size.width;
      height = v78.size.height;
      [(DashedLineView *)self->_previousCloseLine frame];
      v80 = CGRectInset(v79, -4.0, -4.0);
      v57 = v80.origin.x;
      v58 = v80.origin.y;
      v59 = v80.size.width;
      v60 = v80.size.height;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v61 = self->_yLabelViews;
      v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v68;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v68 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v66 = *(*(&v67 + 1) + 8 * i);
            [v66 frame];
            v83.origin.x = x;
            v83.origin.y = y;
            v83.size.width = v55;
            v83.size.height = height;
            if (!CGRectIntersectsRect(v81, v83))
            {
              [v66 frame];
              v84.origin.x = v57;
              v84.origin.y = v58;
              v84.size.width = v59;
              v84.size.height = v60;
              if (!CGRectIntersectsRect(v82, v84))
              {
                continue;
              }
            }

            [v66 setHidden:1];
          }

          v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v71 count:16];
        }

        while (v63);
      }
    }
  }
}

- (void)_layoutSubviews
{
  v3 = +[StockManager sharedManager];
  v4 = [v3 stocksList];
  v5 = [v4 count];

  if (v5)
  {
    [(StockChartView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(StockChartView *)self currentDisplayMode];
    [v14 showsTitle];
    v16 = v15;
    v17 = v15 == 0.0;

    [(StockChartView *)self _layoutTopLabelsHidden:v17];
    if (v16 != 0.0)
    {
      v18 = [(StockChartView *)self currentDisplayMode];
      [v18 chartRenderingInsets];
      v20 = v19;
      v22 = v21;

      [(ChartTitleLabel *)self->_titleView prepareStringsWithStock:self->_stock width:v11 - (v20 + v22)];
    }

    if (self->_chartData)
    {
      [(StockChartView *)self layoutGraphViews];
      [(StockChartView *)self _prepareXAxisLabelsAndPositions];
    }

    [(StockChartView *)self _layoutIntervalButtonRow];
    [(ChartIntervalButtonRow *)self->_intervalButtonRow setHidden:0];
    if ([(StockChartView *)self shouldShowLoadingStatus])
    {
      [(StockChartView *)self _setShowingLoadingStatus:1];
    }

    else
    {
      [(StockChartView *)self _setShowingLoadingStatus:0];
      v23 = [(StockChartView *)self currentGraphView];
      [v23 frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [(StockChartView *)self _layoutVolumeSeparatorLineForGraphRect:v25, v27, v29, v31];
      [(StockChartView *)self _layoutYLabels];
      [(StockChartView *)self _layoutAxesAndXLabels];
      [(ChartHUDView *)self->_HUDView setFrame:v7, v9, v11, v13];
      v32 = [(StockChartView *)self currentGraphView];
      [v32 setHidden:0];

      [(UIView *)self->_xAxisKeyline setHidden:0];
      v33 = [(StockChartView *)self chartViewDelegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        v35 = [(StockChartView *)self chartViewDelegate];
        [v35 stockChartViewFinishedInitialLoad:self];
      }
    }

    [(StockChartView *)self layoutPreviousClose];
    v36 = [(StockChartView *)self currentDisplayMode];
    [(StockChartView *)self graphViewFrameForMode:v36];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = [MEMORY[0x277D75128] sharedApplication];
    v46 = [v45 statusBarOrientation];

    [(StockChartView *)self horizontalPadding];
    v48 = v47;
    v69.origin.x = v38;
    v69.origin.y = v40;
    v69.size.width = v42;
    v69.size.height = v44;
    MaxY = CGRectGetMaxY(v69);
    v70.origin.x = v38;
    v70.origin.y = v40;
    v70.size.width = v42;
    v70.size.height = v44;
    Width = CGRectGetWidth(v70);
    v50 = [MEMORY[0x277D759A0] mainScreen];
    [v50 scale];
    v65 = 1.0 / v51;

    v71.origin.x = v38;
    v71.origin.y = v40;
    v71.size.width = v42;
    v71.size.height = v44;
    MinY = CGRectGetMinY(v71);
    v53 = MinY - RoundToPixel(0.5);
    v72.origin.x = v38;
    v72.origin.y = v40;
    v72.size.width = v42;
    v72.size.height = v44;
    v54 = CGRectGetWidth(v72);
    v55 = v54 + RoundToPixel(0.5);
    v56 = [MEMORY[0x277D759A0] mainScreen];
    [v56 scale];
    v58 = 1.0 / v57;

    if (v46 == 3)
    {
      v38 = v38 - v48;
    }

    v59 = [MEMORY[0x277D759A0] mainScreen];
    [v59 _referenceBounds];
    v61 = v60;

    if (v61 == 812.0)
    {
      v62 = v48 + Width;
    }

    else
    {
      v62 = Width;
    }

    if (v61 == 812.0)
    {
      v63 = v48 + v55;
    }

    else
    {
      v63 = v55;
    }

    [(UIView *)self->_chartBottomKeyline setFrame:v38, MaxY, v62, v66];
    [(UIView *)self->_chartBottomKeyline setHidden:[(StockChartView *)self drawsBottomLine]^ 1];
    [(UIView *)self->_chartTopKeyline setFrame:v38, v53, v63, v58];
    chartTopKeyline = self->_chartTopKeyline;

    [(UIView *)chartTopKeyline setHidden:0];
  }

  else
  {
    [(ChartIntervalButtonRow *)self->_intervalButtonRow setHidden:1];
    [(StockChartView *)self _layoutTopLabelsHidden:1];
    [(StockChartView *)self hideLabelsAxesAndGraphs];

    [(StockChartView *)self _setShowingLoadingStatus:0];
  }
}

- (void)layoutSubviews
{
  if (!self->_animating)
  {
    v3 = [(StockChartView *)self controller];
    v4 = [v3 isAnimatingRotation];

    if ((v4 & 1) == 0)
    {

      [(StockChartView *)self _layoutSubviews];
    }
  }
}

- (double)horizontalPadding
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  if (v4 == 812.0)
  {
    if ([(StockChartView *)self isLandscape])
    {
      v5 = 44.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)isLandscape
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 statusBarOrientation];

  return (v3 - 3) < 2;
}

- (void)layoutIfNeeded
{
  if ([(StockChartView *)self isCurrentChart])
  {
    if (!self->_animating)
    {
      v3.receiver = self;
      v3.super_class = StockChartView;
      [(StockChartView *)&v3 layoutIfNeeded];
    }
  }
}

- (void)forceLayout
{
  [(StockChartView *)self _layoutSubviews];
  intervalButtonRow = self->_intervalButtonRow;

  [(ChartIntervalButtonRow *)intervalButtonRow setNeedsLayout];
}

- (void)setNeedsLayout
{
  if (self->_animating)
  {
    self->_layoutPending = 1;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = StockChartView;
    [(StockChartView *)&v4 setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(StockChartView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = StockChartView;
  [(StockChartView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(StockChartView *)self renderGraphDataIfNeeded];
  }
}

- (double)lineGraphBottomPadding
{
  v2 = [(StockChartView *)self currentDisplayMode];
  [v2 lineGraphBottomPadding];
  v4 = v3;

  return v4;
}

- (void)chartUpdater:(id)a3 didReceiveStockChartData:(id)a4
{
  v11 = a4;
  v5 = [(StockChartView *)self chartViewDelegate];
  [v5 stockChartViewNeedsLoadingStatusUpdated:self];

  selectedInterval = self->_selectedInterval;
  if (selectedInterval == [v11 chartInterval])
  {
    v7 = [(Stock *)self->_stock symbol];
    v8 = [v11 stock];
    v9 = [v8 symbol];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      [(StockChartView *)self setChartData:v11];
    }
  }
}

- (void)chartUpdater:(id)a3 didFailWithError:(id)a4
{
  objc_storeStrong(&self->_error, a4);
  [(StockChartView *)self setNeedsLayout];
  v5 = [(StockChartView *)self chartViewDelegate];
  [v5 stockChartViewNeedsLoadingStatusUpdated:self];
}

- (void)reloadData
{
  if (self->_stock && ![(StockChartView *)self isLoading])
  {
    [(StockChartView *)self clearData];
    if (![(ChartUpdater *)self->_chartUpdater updateChartForStock:self->_stock interval:self->_selectedInterval])
    {
      v3 = [(StockChartView *)self chartViewDelegate];
      [v3 stockChartViewNeedsLoadingStatusUpdated:self];
    }

    [(StockChartView *)self setNeedsLayout];
  }
}

- (void)clearData
{
  chartData = self->_chartData;
  self->_chartData = 0;

  [(StockChartView *)self setError:0];
  [(StockChartView *)self hideLabelsAxesAndGraphs];
  [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:&__block_literal_global_63];
  [(StockChartView *)self updateHUDView];
  chartUpdater = self->_chartUpdater;

  [(ChartUpdater *)chartUpdater cancel];
}

- (void)reloadDataIfStale
{
  if (-[ChartHUDView isTrackingTouches](self->_HUDView, "isTrackingTouches") || self->_chartData && (([*MEMORY[0x277D76620] isSuspended] & 1) == 0 && !-[Stock marketIsOpen](self->_stock, "marketIsOpen") || (Current = CFAbsoluteTimeGetCurrent(), -[StockChartData expirationTime](self->_chartData, "expirationTime"), Current < v4)))
  {

    [(StockChartView *)self setError:0];
  }

  else
  {

    [(StockChartView *)self reloadData];
  }
}

- (void)setChartData:(id)a3
{
  v5 = a3;
  if (self->_chartData != v5)
  {
    objc_storeStrong(&self->_chartData, a3);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__StockChartView_setChartData___block_invoke;
    v7[3] = &unk_279D16828;
    v8 = v5;
    [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__StockChartView_setChartData___block_invoke_2;
    v6[3] = &unk_279D16828;
    v6[4] = self;
    [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:v6];
    [(StockChartView *)self bounds];
    if (!CGRectEqualToRect(v9, *MEMORY[0x277CBF3A0]))
    {
      [(StockChartView *)self layoutSubviews];
      [(StockChartView *)self renderGraphDataIfNeeded];
    }

    [(StockChartView *)self updateHUDView];
  }
}

- (CGRect)graphViewFrameForMode:(id)a3
{
  v4 = a3;
  [v4 showsTitle];
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 37.0;
  }

  [v4 chartSize];
  [v4 chartRenderingInsets];
  v8 = v7;
  v10 = v9;
  v39 = v11;
  v13 = v12;
  [(StockChartView *)self horizontalPadding];
  v15 = v14;
  v16 = [MEMORY[0x277D75128] sharedApplication];
  v17 = [v16 statusBarOrientation];

  [(StockChartView *)self bounds];
  v19 = v18;
  v38 = v20;
  [v4 intervalRowHeight];
  v22 = v8 + v6 + v21;
  if (v17 == 3)
  {
    v23 = v10 + v15;
  }

  else
  {
    v23 = v10;
  }

  v24 = v10 + v13;
  v25 = [MEMORY[0x277D759A0] mainScreen];
  [v25 _referenceBounds];
  v26 = 0.0;
  if (v27 == 812.0)
  {
    v26 = v15;
  }

  v28 = v24 + v26;

  [v4 intervalRowHeight];
  v30 = v29;

  v31 = [MEMORY[0x277D759A0] mainScreen];
  [v31 scale];
  v33 = v38 - (v8 + v39 + v6 + v30 + 1.0 / v32);

  v34 = v23;
  v35 = v22;
  v36 = v19 - v28;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)lineGraphFrame
{
  v3 = [(StockChartView *)self currentDisplayMode];
  [(StockChartView *)self graphViewFrameForMode:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(StockChartView *)self lineGraphBottomPadding];
  v13 = v12;
  v14 = [(StockChartView *)self currentDisplayMode];
  v15 = [v14 graphOverlapsYAxisLabels];

  if ((v15 & 1) == 0)
  {
    v16 = [(StockChartView *)self currentDisplayMode];
    [(StockChartView *)self widestYLabelWidthForMode:v16];
    v18 = v17 + 4.0;
    v19 = [MEMORY[0x277D759A0] mainScreen];
    [v19 scale];
    v9 = v9 - (v18 + 1.0 / v20);
  }

  v21 = v11 - (v13 + 18.0);
  v22 = v7 + 18.0;
  v23 = v5;
  v24 = v9;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (void)renderGraphDataIfNeededForMode:(id)a3
{
  v15 = a3;
  v4 = [(StockChartView *)self graphViewForMode:?];
  v5 = [(StockChartView *)self chartData];
  if (v5 && ([v4 isRendered] & 1) == 0)
  {
    v6 = [v4 isRendering];

    if ((v6 & 1) == 0)
    {
      v7 = 0.0;
      if (([v15 graphOverlapsYAxisLabels] & 1) == 0)
      {
        [(StockChartView *)self widestYLabelWidthForMode:v15];
        v9 = v8 + 4.0;
        v10 = [MEMORY[0x277D759A0] mainScreen];
        [v10 scale];
        v7 = FloorToPixel(v9 + 1.0 / v11);
      }

      [v15 lineGraphBottomPadding];
      [v4 setGraphInsets:{18.0, 0.0, v12, v7}];
      [(StockChartView *)self graphViewFrameForMode:v15];
      [v4 recomputePathsAndRenderIfNeededForSize:{v13, v14}];
    }
  }

  else
  {
  }
}

- (void)renderGraphDataIfNeeded
{
  v3 = [(StockChartView *)self currentDisplayMode];
  [(StockChartView *)self renderGraphDataIfNeededForMode:v3];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__StockChartView_renderGraphDataIfNeeded__block_invoke;
  v4[3] = &unk_279D16828;
  v4[4] = self;
  [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:v4];
}

void __41__StockChartView_renderGraphDataIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) currentDisplayMode];

  v4 = v5;
  if (v3 != v5)
  {
    [*(a1 + 32) renderGraphDataIfNeededForMode:v5];
    v4 = v5;
  }
}

- (void)stockGraphViewReadyForDisplay:(id)a3
{
  v5 = a3;
  v4 = [(StockChartView *)self currentGraphView];

  if (v4 == v5)
  {
    [(StockChartView *)self hideOtherGraphViews];
    [v5 setAlpha:1.0];
    [(StockChartView *)self setLabelsAndAxesAlpha:1.0];
    [(StockChartView *)self setNeedsLayout];
  }

  [(StockChartView *)self updateHUDView];
}

- (void)hideOtherGraphViews
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(StockChartView *)self currentDisplayMode];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_displayModes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (v3 != *(*(&v10 + 1) + 8 * v8))
        {
          v9 = [(StockChartView *)self graphViewForMode:v10];
          [v9 setAlpha:0.0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setShowingHUD:(BOOL)a3
{
  v3 = a3;
  if ([(ChartHUDView *)self->_HUDView isOverlayHidden]== a3)
  {
    v5 = [(StockChartView *)self currentDisplayMode];
    v6 = [(StockChartView *)self currentGraphView];
    [(ChartHUDView *)self->_HUDView setGraphView:v6];
    HUDView = self->_HUDView;
    [v6 frame];
    v9 = v8;
    [v5 gutterHeight];
    v11 = v9 - v10;
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    [(ChartHUDView *)HUDView setBarHeight:v11 + 1.0 / v13 * -2.0];

    [(ChartHUDView *)self->_HUDView setOverlayHidden:!v3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32__StockChartView_setShowingHUD___block_invoke;
    v17[3] = &unk_279D15BC8;
    v17[4] = self;
    v18 = v3;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.100000001];
    chartTopKeyline = self->_chartTopKeyline;
    v15 = 0.2;
    if (!v3)
    {
      v15 = 0.8;
    }

    v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:v15];
    [(UIView *)chartTopKeyline setBackgroundColor:v16];
  }
}

uint64_t __32__StockChartView_setShowingHUD___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:(*(a1 + 40) ^ 1u)];
  v2 = *(*(a1 + 32) + 480);
  v3 = *(a1 + 40);

  return [v2 setLabelsHidden:v3];
}

- (void)updateHUDView
{
  HUDView = self->_HUDView;
  if (self->_chartData)
  {
    v6 = [(StockChartView *)self currentDisplayMode];
    if ([v6 HUDEnabled])
    {
      v4 = [(StockChartView *)self currentGraphView];
      -[ChartHUDView setEnabled:](HUDView, "setEnabled:", [v4 isRendered]);
    }

    else
    {
      [(ChartHUDView *)HUDView setEnabled:0];
    }
  }

  else
  {
    v5 = self->_HUDView;

    [(ChartHUDView *)v5 setEnabled:0];
  }
}

- (void)_layoutIntervalButtonRow
{
  [(StockChartView *)self bounds];
  v4 = v3;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  v8 = v7;

  v9 = [(StockChartView *)self currentDisplayMode];
  [v9 showsTitle];
  if (v10 == 0.0)
  {
    MaxY = 0.0;
  }

  else
  {
    [(ChartTitleLabel *)self->_titleView frame];
    MaxY = CGRectGetMaxY(v20);
  }

  [(StockChartView *)self horizontalPadding];
  v13 = v12;
  v14 = [(StockChartView *)self isLandscape];
  if (v14)
  {
    v15 = v4 + v13 * -2.0;
  }

  else
  {
    v15 = v4;
  }

  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v5;
  }

  v17 = 26.0;
  intervalButtonRow = self->_intervalButtonRow;
  if (v8 == 667.0)
  {
    v17 = 33.0;
  }

  [(ChartIntervalButtonRow *)intervalButtonRow setFrame:v16, MaxY, v15, v17];
}

- (void)_layoutVolumeSeparatorLineForGraphRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277D75128] sharedApplication];
  v9 = [v8 statusBarOrientation];

  [(StockChartView *)self horizontalPadding];
  v11 = v10;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxY = CGRectGetMaxY(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v13 = CGRectGetWidth(v32);
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = [(StockChartView *)self currentDisplayMode];
  [v17 gutterHeight];
  v19 = v18;
  v20 = [MEMORY[0x277D759A0] mainScreen];
  [v20 scale];
  v22 = v21;

  if (v9 == 3)
  {
    x = x - v11;
  }

  v23 = [MEMORY[0x277D759A0] mainScreen];
  [v23 _referenceBounds];
  v25 = v24;

  if (v25 == 812.0)
  {
    v26 = v11 + v13;
  }

  else
  {
    v26 = v13;
  }

  [(UIView *)self->_xAxisKeyline setFrame:x, MaxY - (v19 + 1.0 / v22), v26, 1.0 / v16];
  xAxisKeyline = self->_xAxisKeyline;
  v29 = [(StockChartView *)self currentDisplayMode];
  v28 = [v29 xAxisKeylineColor];
  [(UIView *)xAxisKeyline setBackgroundColor:v28];
}

- (void)createYLabelsForMode:(id)a3
{
  v9 = a3;
  v4 = +[ChartLabelInfoManager chartLabelFont];
  v5 = [(NSMutableArray *)self->_yLabelViews count];
  if (v5 < [v9 yAxisLabelCount])
  {
    do
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      [v6 setFont:v4];
      v7 = [MEMORY[0x277D75348] clearColor];
      [v6 setBackgroundColor:v7];

      [v6 setTextAlignment:2];
      [(NSMutableArray *)self->_yLabelViews addObject:v6];
      [(StockChartView *)self addSubview:v6];

      v8 = [(NSMutableArray *)self->_yLabelViews count];
    }

    while (v8 < [v9 yAxisLabelCount]);
  }
}

- (void)_setMonthAndYearLabels
{
  v3 = [(StockChartData *)self->_chartData stockValueCount];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [(StockChartData *)self->_chartData stockValues];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v132 = [v6 copy];

  v7 = [(StockChartData *)self->_chartData marketTimeZone];
  [v132 setTimeZone:v7];

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5->var0];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5[v4 - 1].var0];
  if ([v9 compare:v8] == -1)
  {
    goto LABEL_101;
  }

  v10 = [v132 components:8 fromDate:v8 toDate:v9 options:0];
  v11 = [v10 month];
  v111 = v8;
  v131 = v11;
  if ([v10 month] >= 25)
  {
    v12 = [v10 month] / 24.0;
    v13 = floorf(v12);
    v14 = 6.0;
LABEL_9:
    v17 = v13 * v14;
    if (v17 > 12.0)
    {
      v17 = 12.0;
    }

    v15 = v17;
    goto LABEL_12;
  }

  if (v11 >= 7)
  {
    v16 = [v10 month] / 12.0;
    v13 = ceilf(v16);
    v14 = 3.0;
    goto LABEL_9;
  }

  v15 = 1;
LABEL_12:
  v123 = self;
  v109 = v10;
  v18 = [v10 month];
  v19 = v15 == 1 || v15 == 12;
  v128 = v15;
  if (v19)
  {
    v20 = v18 / v15 + 1;
  }

  else
  {
    v20 = v18 / v15;
  }

  v21 = 2;
  if (v19)
  {
    v21 = 3;
  }

  v108 = v21;
  v22 = +[ChartLabelInfoManager sharedLabelInfoManager];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20 + 2];
  v113 = v22;
  v24 = [v22 labelInfoForYAxis];
  v127 = v23;
  [v23 addObject:v24];

  v126 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20 + 1];
  v110 = v9;
  v25 = [v132 components:8 fromDate:v9];
  v26 = v4 - 1;
  if ((v4 - 1) >= 0)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v26 + 1;
    v33 = v26;
    p_var0 = &v5[v26].var0;
    while (1)
    {
      v35 = v31;
      v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*p_var0];
      v31 = [v132 components:8 fromDate:?];

      v37 = [v31 month];
      if (v37 != [v25 month])
      {
        break;
      }

LABEL_27:

      p_var0 -= 3;
      v29 = v36;
      if (v32-- <= 1)
      {
        goto LABEL_34;
      }
    }

    if (v128 != ++v28)
    {
      if (v27)
      {
        goto LABEL_26;
      }

      if ([v25 month] != 1 && (objc_msgSend(v25, "month") - 1) % v128)
      {
        v27 = 0;
        goto LABEL_26;
      }
    }

    [v126 setObject:v29 atIndexedSubscript:v27];
    v38 = objc_alloc_init(ChartLabelInfo);

    [(ChartLabelInfo *)v38 setPosition:(v32 / v33)];
    [v127 addObject:v38];
    v28 = 0;
    ++v27;
    v30 = v38;
LABEL_26:
    v39 = v31;

    v25 = v39;
    goto LABEL_27;
  }

  v31 = 0;
  v30 = 0;
  v36 = 0;
  v27 = 0;
LABEL_34:
  v112 = v36;

  [(StockChartView *)v123 lineGraphFrame];
  v120 = v41;
  v121 = v42;
  v122 = v43;
  v45 = v44;
  rect = v44;
  if ([v127 count] < 2)
  {
    v119 = 0.0;
  }

  else
  {
    v46 = [v127 objectAtIndexedSubscript:{objc_msgSend(v127, "count") - 2}];
    [v46 position];
    v48 = v47;
    v49 = [v127 objectAtIndexedSubscript:{objc_msgSend(v127, "count") - 1}];
    [v49 position];
    v119 = v45 * (v48 - v50);

    if (v128 == 12 || v128 == 1)
    {
      v51 = v36;
      if (v128 == 12)
      {
        v52 = [v132 components:-1 fromDate:v51];
        [v52 setMonth:1];
        v53 = [v132 dateFromComponents:v52];

        v51 = v53;
      }

      [v126 setObject:v51 atIndexedSubscript:v27];
      v54 = objc_alloc_init(ChartLabelInfo);

      v55 = [v127 objectAtIndexedSubscript:{objc_msgSend(v127, "count") - 1}];
      [v55 position];
      [(ChartLabelInfo *)v54 setPosition:v56 - v119 / rect];

      [v127 addObject:v54];
      ++v27;

      v30 = v54;
    }
  }

  v57 = [(StockChartView *)v123 currentDisplayMode];
  v58 = [v57 usesDetailedAxisLabels];
  v59 = 0.015;
  if (v58)
  {
    v59 = 0.0199999996;
  }

  v60 = round(rect * v59);

  v114 = *(MEMORY[0x277CBF398] + 8);
  v115 = *MEMORY[0x277CBF398];
  v117 = *(MEMORY[0x277CBF398] + 24);
  v118 = *(MEMORY[0x277CBF398] + 16);
  v61 = v60;
  v124 = *(MEMORY[0x277CBF3A8] + 8);
  v125 = *MEMORY[0x277CBF3A8];
  v129 = v27;
  v62 = 2;
  v63 = 0.5;
  while (2)
  {
    v64 = [v113 monthLabelInfoArrayForLabelLength:v62];
    if (v129 < 1)
    {
      v68 = v115;
      v133 = v114;
      v69 = v118;
      v134 = v117;
      goto LABEL_96;
    }

    v116 = v62;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = v115;
    v133 = v114;
    v69 = v118;
    v134 = v117;
    while (1)
    {
      v70 = v66;
      v71 = v30;
      v72 = [v126 objectAtIndexedSubscript:v65];
      v73 = [v132 components:8 fromDate:v72];
      v74 = v65 + 1;
      v30 = [v127 objectAtIndex:v65 + 1];

      if (v131 >= 7 && [v73 month] == 1)
      {
        v75 = [v132 timeZone];
        [v30 setStringToYearWithDate:v72 timeZone:v75];
        v66 = 1;
      }

      else
      {
        v75 = [v64 objectAtIndex:{(objc_msgSend(v73, "month") - 1) % objc_msgSend(v64, "count")}];
        [v30 retainStringAndSizeFromLabelInfo:v75];
        v66 = 0;
      }

      [v30 size];
      v77 = v76;
      v79 = v78;
      if (v128 == 1 || v128 == 12)
      {
        v80 = v119;
        if (!v65)
        {
          [v30 position];
          v80 = rect * (1.0 - v81);
        }

        v82 = v80 * v63;
        [v30 position];
        v83 = v120;
        v84 = rect;
        v86 = v120 + rect * v85 + v82 - v77 * v63;
      }

      else
      {
        [v30 position];
        v83 = v120;
        v84 = rect;
        v86 = v120 + rect * v87;
      }

      v88 = v83;
      v90 = v121;
      v89 = v122;
      if (v77 + v86 > CGRectGetMaxX(*(&v84 - 2)) || v86 + v77 * v63 < v61)
      {
        [v30 setString:&stru_287C73C90];
        [v30 setSize:{v125, v124}];
        v79 = v117;
        v77 = v118;
      }

      v92 = [(StockChartView *)v123 currentDisplayMode];
      v93 = [v92 usesDetailedAxisLabels];
      v94 = 6.0;
      if (v93)
      {
        v94 = 10.0;
      }

      v95 = 4.0;
      if ((v70 & (v66 ^ 1)) == 0)
      {
        v95 = 0.0;
      }

      v96 = v95 + v94;

      v97 = fmax(round(v86), 0.0);
      v136.origin.x = v68;
      v136.origin.y = v133;
      v136.size.height = v134;
      v136.size.width = v69;
      if (CGRectIsEmpty(v136))
      {
        v98 = 0;
      }

      else
      {
        v137.origin.y = 0.0;
        v137.origin.x = v97;
        v137.size.width = v77;
        v137.size.height = v79;
        v98 = v96 + CGRectGetMaxX(v137) > v68;
      }

      v99 = v65 == 1 && v98;
      v100 = v98 ^ v99;
      v67 |= v99;
      v63 = 0.5;
      if (v97 >= v61)
      {
        goto LABEL_81;
      }

      if (v100)
      {
        v100 = 1;
        goto LABEL_78;
      }

      v138.origin.x = v68;
      v138.origin.y = v133;
      v138.size.height = v134;
      v138.size.width = v69;
      if (!CGRectIsNull(v138))
      {
        break;
      }

      v69 = v77;
      v133 = 0.0;
      v134 = v79;
      v68 = v61;
LABEL_88:

      v65 = v74;
      if (v129 == v74)
      {
        v62 = v116;
        if ((v67 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_93;
      }
    }

    v139.origin.y = 0.0;
    v139.origin.x = v61;
    v139.size.width = v77;
    v139.size.height = v79;
    v100 = v96 + CGRectGetMaxX(v139) > v68;
LABEL_78:
    v97 = v61;
    if (v100 && v131 <= 6)
    {
      [v30 setString:&stru_287C73C90];
      [v30 setSize:{v125, v124}];
      v97 = v61;
    }

    else
    {
LABEL_81:
      if (!v100)
      {
        v69 = v77;
        v133 = 0.0;
        v134 = v79;
LABEL_87:
        v68 = v97;
        goto LABEL_88;
      }
    }

    v101 = [v30 string];
    v102 = [v101 length];

    if (!v102)
    {
      v133 = 0.0;
      v134 = v79;
      v69 = v77;
      goto LABEL_87;
    }

    v62 = v116;
    if (!v116)
    {
      [v30 setString:&stru_287C73C90];
      [v30 setSize:{v125, v124}];
      goto LABEL_88;
    }

    v68 = v115;
    v133 = v114;
    v69 = v118;
    v134 = v117;
    if ((v67 & 1) == 0)
    {
      v134 = v117;
      v69 = v118;
      v133 = v114;
      v68 = v115;
      goto LABEL_97;
    }

LABEL_93:
    v140.origin.x = v68;
    v140.origin.y = v133;
    v140.size.height = v134;
    v140.size.width = v69;
    if (!CGRectIsNull(v140) && [v127 count] >= 2)
    {
      v103 = [v127 objectAtIndexedSubscript:1];
      [v103 setString:&stru_287C73C90];
      [v103 setSize:{v125, v124}];
    }

LABEL_96:
    if (v62)
    {
LABEL_97:
      v141.origin.x = v68;
      v141.origin.y = v133;
      v141.size.height = v134;
      v141.size.width = v69;
      if (CGRectIsNull(v141))
      {

        --v62;
        continue;
      }
    }

    break;
  }

  chartData = v123->_chartData;
  v105 = [(StockChartView *)v123 currentDisplayMode];
  [(StockChartData *)chartData setXAxisLabelInfoArray:v127 forDisplayMode:v105];

  v106 = v123->_chartData;
  v107 = [(StockChartView *)v123 currentDisplayMode];
  [(StockChartData *)v106 setLabelPlacement:v108 forDisplayMode:v107];

  v9 = v110;
  v8 = v111;
LABEL_101:
}

- (void)_setDayLabelsWithInterval:(unsigned int)a3 realTimePositions:(BOOL)a4
{
  v80 = a4;
  v95 = *MEMORY[0x277D85DE8];
  v77 = [(StockChartData *)self->_chartData marketTimeZone];
  v6 = [v77 secondsFromGMT];
  v79 = a3;
  if (a3 == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = +[ChartLabelInfoManager sharedLabelInfoManager];
  v9 = [MEMORY[0x277CBEB18] array];
  v81 = v8;
  v82 = v9;
  v76 = v7;
  if (self->_selectedInterval == 1 && (v10 = v9, [v8 labelInfoForYAxis], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "addObject:", v11), v11, self->_selectedInterval == 1))
  {
    v86 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v86 = 0;
  }

  v12 = [(StockChartData *)self->_chartData stockValueCount];
  v13 = [(StockChartData *)self->_chartData stockValues];
  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [v14 copy];

  [v15 setTimeZone:v77];
  if (v12)
  {
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v16 = 0;
    v83 = 0;
    v17 = v12 - 1;
    v18 = v6;
    p_var0 = &v13[v17].var0;
    v20 = 0xFFFFFFFFLL;
    v78 = v15;
    while (1)
    {
      v21 = v16;
      v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*p_var0];

      v22 = [v15 components:24 fromDate:v16];
      v23 = ((*p_var0 + v18) / 86400.0);
      if (v20 == v23)
      {
        v23 = v20;
      }

      else
      {
        v88 = v16;
        v24 = v15;
        if (v20 == -1)
        {
          v25 = 0;
        }

        else
        {
          v25 = v20 - v23;
        }

        if (v25 >= 1 && v86 != 0)
        {
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
          [v86 addObject:v27];
        }

        if (v25 > v87 || v87 == v25)
        {
          if (v84)
          {
            v29 = [(StockChartView *)self currentDisplayMode];
            if (![v29 usesDetailedAxisLabels])
            {
              goto LABEL_29;
            }

            v30 = [v22 month];

            if (v30 != v84)
            {
              v29 = [v82 lastObject];
              [v29 setStringToMonthAndDayWithDate:v85 timeZone:v77];
LABEL_29:
            }
          }

          v31 = [v81 labelInfoWithUnsignedInteger:{objc_msgSend(v22, "day")}];
          v32 = [v31 copy];

          v33 = -1.0;
          if (v80)
          {
            v33 = (v17 / ([(StockChartData *)self->_chartData stockValueCount]- 1));
          }

          [v32 setPosition:v33];
          [v82 addObject:v32];
          v84 = [v22 month];
          v16 = v88;
          v34 = v88;

          v83 = v32;
          v85 = v34;
          v87 = v79;
          v15 = v78;
          goto LABEL_33;
        }

        v87 -= v25;
        v15 = v24;
        v16 = v88;
      }

LABEL_33:

      p_var0 -= 3;
      v17 = (v17 - 1);
      v20 = v23;
      if (v17 == -1)
      {
        goto LABEL_36;
      }
    }
  }

  v83 = 0;
  v16 = 0;
  v85 = 0;
LABEL_36:
  v89 = v16;
  v35 = [v82 count];
  if (v35)
  {
    v36 = 0;
    v37 = v35 - 1;
    v38 = (v35 - 1);
    do
    {
      v39 = [v82 objectAtIndexedSubscript:v36];
      [v39 position];
      if (v40 == -1.0)
      {
        [v39 setPosition:(v37 / v38)];
      }

      ++v36;
      --v37;
    }

    while (v37 != -1);
  }

  v41 = [(StockChartView *)self currentDisplayMode];
  v42 = [v41 usesDetailedAxisLabels];

  if (v42)
  {
    v43 = [v82 lastObject];
    [v43 setStringToMonthAndDayWithDate:v85 timeZone:v77];
  }

  chartData = self->_chartData;
  v45 = [(StockChartView *)self currentDisplayMode];
  [(StockChartData *)chartData setXAxisLabelInfoArray:v82 forDisplayMode:v45];

  v46 = self->_chartData;
  v47 = [(StockChartView *)self currentDisplayMode];
  [(StockChartData *)v46 setLabelPlacement:v76 forDisplayMode:v47];

  if (v86 && [(StockChartData *)self->_chartData stockValueCount]>= 6)
  {
    v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v86, "count")}];
    if (v48 && self->_selectedInterval == 1)
    {
      v49 = [(StockChartData *)self->_chartData stockValues];
      var0 = v49[[(StockChartData *)self->_chartData stockValueCount]- 1].var0;
      v51 = [(StockChartData *)self->_chartData marketCloseDate];
      [v51 timeIntervalSince1970];
      v53 = fmod(v52, 86400.0);
      v54 = (v53 - fmod(var0, 86400.0)) / 60.0;

      v55 = 1.0;
      if (v54 > 20.0)
      {
        v56 = [MEMORY[0x277CBEA80] currentCalendar];
        v57 = [v56 copy];

        v58 = [(StockChartData *)self->_chartData marketTimeZone];
        [v57 setTimeZone:v58];

        v59 = [(StockChartData *)self->_chartData marketOpenDate];
        v60 = [v57 components:96 fromDate:v59];

        v61 = [(StockChartData *)self->_chartData marketCloseDate];
        v62 = [v57 components:96 fromDate:v61];

        v63 = [v62 hour];
        v64 = [v62 minute] + (v63 * 60.0);
        v65 = [v60 hour];
        v66 = v54 / (v64 - ([v60 minute] + (v65 * 60.0)));
        v55 = 1.0 - v66 / ([v86 count] + 1);
      }

      v67 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
      [v48 addObject:v67];
    }
  }

  else
  {
    v48 = 0;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v68 = v86;
  v69 = [v68 countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v91;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v91 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = MEMORY[0x277CCABB0];
        [*(*(&v90 + 1) + 8 * i) doubleValue];
        v75 = [v73 numberWithDouble:{v74 / (-[StockChartData stockValueCount](self->_chartData, "stockValueCount") + -1.0)}];
        [v48 insertObject:v75 atIndex:0];
      }

      v70 = [v68 countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v70);
  }

  [(StockChartData *)self->_chartData setInterestingIndexes:v48];
}

- (void)_setHourLabels
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 copy];

  v5 = [(StockChartData *)self->_chartData marketTimeZone];
  [v4 setTimeZone:v5];

  v6 = [(StockChartData *)self->_chartData marketOpenDate];
  v7 = [(StockChartData *)self->_chartData marketCloseDate];
  v8 = [v4 components:96 fromDate:v6 toDate:v7 options:0];

  v9 = [(StockChartData *)self->_chartData marketOpenDate];
  v10 = [v4 components:96 fromDate:v9];

  v11 = [(StockChartData *)self->_chartData marketCloseDate];
  v12 = [v4 components:96 fromDate:v11];

  v13 = [v10 minute];
  if (v13)
  {
    v14 = 1.0 - (v13 / 60.0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [v12 minute] / 60.0;
  v16 = [v8 hour];
  v17 = ceilf(v14);
  *&v18 = v15 + v14;
  v19 = (v17 + v16) - ((v15 + v14) >= 1.0);
  v20 = +[ChartLabelInfoManager sharedLabelInfoManager];
  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v21];
  if ((v19 - 25) > 0xFFFFFFFFFFFFFFE7)
  {
    v57 = v10;
    v58 = v8;
    v59 = self;
    v56 = v12;
    v26 = [v12 hour];
    v27 = -v26;
    v55 = v19;
    v28 = v19;
    do
    {
      v29 = (v26 & ~(v26 >> 63)) + v27;
      v30 = v29 != 0;
      v31 = ((v29 - v30) * 0xAAAAAAAAAAAAAAABLL) >> 64;
      v32 = (v29 - v30) / 0x18uLL;
      if ((v26 & ~(v26 >> 63)) + v27)
      {
        v33 = v32 + 1;
      }

      else
      {
        v33 = v31 >> 4;
      }

      if ([v20 use24hrTime])
      {
        v34 = v26 + 24 * v33;
      }

      else if (v26 + 24 * (v30 + (v31 >> 4)) - 12 * ((v26 + 24 * (v30 + (v31 >> 4))) / 0xC))
      {
        v34 = v26 + 24 * (v30 + (v31 >> 4)) - 12 * ((v26 + 24 * (v30 + (v31 >> 4))) / 0xC);
      }

      else
      {
        v34 = 12;
      }

      v35 = [v20 labelInfoWithUnsignedInteger:v34];
      v36 = [v35 copy];
      [v22 addObject:v36];

      --v26;
      ++v27;
      --v28;
    }

    while (v28);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v37 = v22;
    v38 = [v37 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = 1.0 / (v15 + (v14 + (v55 - v17)));
      v41 = 1.0 - (v40 * v15);
      v42 = *v61;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v61 != v42)
          {
            objc_enumerationMutation(v37);
          }

          [*(*(&v60 + 1) + 8 * i) setPosition:v41];
          v41 = v41 - v40;
        }

        v39 = [v37 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v39);
    }

    if (v55 < 13)
    {
      v47 = 0;
      j = v59;
    }

    else
    {
      v44 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v45 = [v37 objectAtIndex:0];
      v46 = [v45 string];
      v47 = [v46 integerValue];
      v48 = (v47 & 1) == 0;

      for (j = v59; [v37 count] > v48; v48 += 2)
      {
        [v44 addIndex:v48];
      }

      [v37 removeObjectsAtIndexes:v44];
    }

    if (v15 > 0.0 || (v47 & 1) != 0)
    {
      v50 = [v20 labelInfoForYAxis];
      [v37 insertObject:v50 atIndex:0];
    }

    chartData = j->_chartData;
    v52 = [(StockChartView *)j currentDisplayMode];
    [(StockChartData *)chartData setXAxisLabelInfoArray:v37 forDisplayMode:v52];

    v53 = j->_chartData;
    v54 = [(StockChartView *)j currentDisplayMode];
    [(StockChartData *)v53 setLabelPlacement:2 forDisplayMode:v54];

    v8 = v58;
    v12 = v56;
    v10 = v57;
  }

  else
  {
    v23 = [v20 labelInfoForYAxis];
    [v22 addObject:v23];

    v24 = self->_chartData;
    v25 = [(StockChartView *)self currentDisplayMode];
    [(StockChartData *)v24 setXAxisLabelInfoArray:v22 forDisplayMode:v25];
  }
}

- (void)_prepareXAxisLabelsAndPositions
{
  if ([(StockChartData *)self->_chartData stockValueCount])
  {
    chartData = self->_chartData;
    v4 = [(StockChartView *)self currentDisplayMode];
    v5 = [(StockChartData *)chartData xAxisLabelInfoArrayForMode:v4];
    v6 = [v5 count];

    if (!v6)
    {
      selectedInterval = self->_selectedInterval;
      if (selectedInterval <= 2)
      {
        if (selectedInterval)
        {
          if (selectedInterval == 1)
          {
            v8 = self;
            v9 = 1;
            v10 = 0;
          }

          else
          {
            if (selectedInterval != 2)
            {
              return;
            }

            v8 = self;
            v9 = 7;
            v10 = 1;
          }

          [(StockChartView *)v8 _setDayLabelsWithInterval:v9 realTimePositions:v10];
        }

        else
        {

          [(StockChartView *)self _setHourLabels];
        }
      }

      else if ((selectedInterval - 3) < 6)
      {

        [(StockChartView *)self _setMonthAndYearLabels];
      }
    }
  }
}

- (double)_evennessOfValue:(double)a3 inRange:(double)a4
{
  result = 1.0;
  if (a3 == 0.0)
  {
    return result;
  }

  v7 = 0.0;
  if (fmod(a3, 10.0) == 0.0)
  {
    do
    {
      v7 = v7 + 1.0;
      a3 = a3 / 10.0;
    }

    while (fmod(a3, 10.0) == 0.0);
  }

  else
  {
    do
    {
      do
      {
        v7 = v7 + -1.0;
        a3 = a3 * 10.0;
        v8 = fmod(a3, 10.0);
      }

      while (v8 < 0.0);
    }

    while (v8 > 0.0);
    v7 = v7 + 1.0;
    a3 = a3 / 10.0;
  }

  if (fabs(fmod(a3, 25.0)) < 0.001)
  {
    v9 = 1.0;
LABEL_10:
    v7 = v7 + v9;
    goto LABEL_15;
  }

  if (fabs(fmod(a3, 5.0)) >= 0.001)
  {
    if (fabs(a3 + trunc(a3 * 0.5) * -2.0) < 0.001)
    {
      v9 = 0.25;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v7 + 0.9;
  }

LABEL_15:
  v10 = floor(log10(a4));
  v11 = v7;
  if (v10 >= v7)
  {
    return 1.0 / (vabdd_f64(v10, v11) + 1.0);
  }

  v12 = v11 - v10;
  if (v12 > 0.8)
  {
    v12 = 0.8;
  }

  return v12 * 0.5 + 0.85;
}

- (void)_prepareYAxisLabelsAndPositionsForDisplayMode:(id)a3
{
  v43 = a3;
  v4 = [(StockChartView *)self graphViewForMode:v43];
  v5 = [(StockChartData *)self->_chartData yAxisLabelInfoArrayForMode:v43];
  if (![(StockChartData *)self->_chartData stockValueCount])
  {
LABEL_4:
    if (self->_chartData && [v43 horizontalGridlineCount])
    {
      v6 = [v43 horizontalGridlineCount];
      if (v6 == [v43 yAxisLabelCount])
      {
        [v4 setDottedLinePositionsWithLabelInfo:v5];
      }

      else
      {
        [v4 setEvenlySpacedDottedLinePositionsWithCount:{objc_msgSend(v43, "horizontalGridlineCount")}];
      }
    }

    goto LABEL_51;
  }

  if (self->_chartData)
  {
    if ([v5 count])
    {
      goto LABEL_4;
    }

    chartData = self->_chartData;
  }

  else
  {
    chartData = 0;
  }

  v8 = [(StockChartData *)chartData minValue][8];
  v9 = [(StockChartData *)self->_chartData maxValue][8];
  [(StockChartData *)self->_chartData previousClosePrice];
  if (v10 != 0.0)
  {
    v11 = v10;
    v12 = [(StockChartData *)self->_chartData chartInterval];
    v13 = v11 <= v8 ? v11 : v8;
    v14 = v11 <= v9 ? v9 : v11;
    if (!v12)
    {
      v9 = v14;
      v8 = v13;
    }
  }

  v15 = v9 - v8;
  v16 = [v43 yAxisLabelCount];
  v17 = v16 - 1;
  v18 = (v9 - v8) / (v16 - 1);
  v19 = [v43 usesDetailedAxisLabels];
  v20 = 1.0;
  if (v19)
  {
    v20 = 1.5;
  }

  v21 = v18 < (v20 + v20) || v9 < (v20 * 100.0);
  if (v21)
  {
    if (v18 >= 0.0199999996)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    v23 = [(Stock *)self->_stock pricePrecision];
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }
  }

  else
  {
    v24 = 0;
  }

  [(StockChartData *)self->_chartData setYAxisFractionDigits:v24];
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
  if (v16)
  {
    v42 = v15 / v17;
    v40 = v5;
    v41 = v4;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v17;
    v30 = -v16;
    v31 = 0.0;
    do
    {
      if ([v43 usesDetailedAxisLabels])
      {
        v34 = v8;
        if (v26)
        {
          v33 = v8 + v31 * v42;
          *&v33 = v33;
          if (v30 + v26 == -1)
          {
            v34 = v9;
          }

          else
          {
            v34 = *&v33;
          }
        }
      }

      else
      {
        v34 = v8 + (v15 * (v26 / v29));
      }

      if (v21)
      {
        *&v33 = v34;
        [MEMORY[0x277CCABB0] numberWithFloat:v33];
      }

      else
      {
        LODWORD(v32) = llroundf(v34);
        [MEMORY[0x277CCABB0] numberWithInt:v32];
      }
      v35 = ;

      v36 = objc_alloc_init(ChartLabelInfo);
      [(ChartLabelInfo *)v36 setPosition:((v34 - v8) / v15)];
      v37 = +[StockDataFormatter sharedDataFormatter];
      v38 = [v37 formattedNumber:v35 withPrecision:-[StockChartData yAxisFractionDigits](self->_chartData useGroupSeparator:{"yAxisFractionDigits"), 1}];
      [(ChartLabelInfo *)v36 setString:v38];

      [v25 addObject:v36];
      v31 = v31 + 1.0;
      ++v26;
      v27 = v35;
      v28 = v36;
    }

    while (v30 + v26);

    v5 = v40;
    v4 = v41;
  }

  if ([v43 horizontalGridlineCount])
  {
    v39 = [v43 horizontalGridlineCount];
    if (v39 == [v43 yAxisLabelCount])
    {
      [v4 setDottedLinePositionsWithLabelInfo:v25];
    }

    else
    {
      [v4 setEvenlySpacedDottedLinePositionsWithCount:{objc_msgSend(v43, "horizontalGridlineCount")}];
    }
  }

  [(StockChartData *)self->_chartData setYAxisLabelInfoArray:v25 forDisplayMode:v43];

LABEL_51:
}

- (void)_layoutYLabels
{
  chartData = self->_chartData;
  v4 = [(StockChartView *)self currentDisplayMode];
  v76 = [(StockChartData *)chartData yAxisLabelInfoArrayForMode:v4];

  v73 = [v76 count];
  if (v73)
  {
    v5 = [(StockChartView *)self currentGraphView];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(StockChartView *)self lineGraphFrame];
    y = v85.origin.y;
    height = v85.size.height;
    MaxX = CGRectGetMaxX(v85);
    v16 = [(StockChartView *)self currentDisplayMode];
    if ([v16 graphOverlapsYAxisLabels])
    {
      v17 = MaxX + -4.0;
    }

    else
    {
      v86.origin.x = v7;
      v86.origin.y = v9;
      v86.size.width = v11;
      v86.size.height = v13;
      v17 = CGRectGetMaxX(v86);
    }

    v81 = v17;

    v18 = +[ChartLabelInfoManager chartLabelFont];
    [v18 leading];
    v20 = v19;

    v21 = [(StockChartView *)self currentDisplayMode];
    v22 = [v21 yAxisLabelCount];

    v23 = y - ceil(v20);
    if (v22 == 2)
    {
      v23 = y;
    }

    v74 = v23;
    v24 = [(NSMutableArray *)self->_yLabelViews count];
    if (v24)
    {
      v25 = v24;
      v71 = v7;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = *(MEMORY[0x277CBF3A0] + 16);
      v83 = *(MEMORY[0x277CBF3A0] + 24);
      v31 = v9;
      v33 = *MEMORY[0x277CBF3A0];
      v32 = *(MEMORY[0x277CBF3A0] + 8);
      v79 = (v24 - v73);
      v72 = (v24 - 1);
      v69 = v31 + 15.0;
      v70 = v31;
      v77 = *(MEMORY[0x277CBF348] + 8);
      v78 = *MEMORY[0x277CBF348];
      v80 = v11;
      rect = v13;
      while (1)
      {
        v34 = v27;
        v35 = roundf(((v28 + 1) / v79) * (v73 - 1 + v28));
        v36 = [(NSMutableArray *)self->_yLabelViews objectAtIndex:v27];

        v37 = v35 == v27 ? v28 + 1 : v28;
        v26 = v36;
        v82 = v30;
        if (v35 == v34)
        {
          break;
        }

        v38 = [v76 objectAtIndex:v27 - v28];

        [v38 size];
        v30 = v39;
        v41 = v40;
        v42 = v81 - v39;
        if (v73 == 2)
        {
          if (v27 == v28)
          {
            v87.origin.y = v70;
            v87.origin.x = v71;
            v87.size.width = v11;
            v87.size.height = rect;
            MaxY = CGRectGetMaxY(v87);
            v44 = [(StockChartView *)self currentDisplayMode];
            [v44 gutterHeight];
            v46 = MaxY - v45;
            v47 = [MEMORY[0x277D759A0] mainScreen];
            [v47 scale];
            v49 = v46 + -1.0 / v48 + -4.0;
            v50 = [v26 font];
            [v50 ascender];
            v52 = RoundToPixel(v49 - v51);
          }

          else
          {
            v44 = [v26 font];
            [v44 ascender];
            v52 = RoundToPixel(v69 - v56);
          }

          v54 = v42;

          goto LABEL_25;
        }

        if (!v38)
        {
          goto LABEL_19;
        }

        [v38 position];
LABEL_20:
        v52 = RoundToPixel(v74 + height * (1.0 - v53));
        if (v35 == v34)
        {
          v55 = 1;
          v29 = v38;
          v54 = v42;
          goto LABEL_26;
        }

        v54 = v42;
LABEL_25:
        v88.origin.x = v54;
        v88.origin.y = v52;
        v88.size.width = v30;
        v88.size.height = v41;
        v89.origin.x = v33;
        v89.origin.y = v32;
        v89.size.width = v82;
        v89.size.height = v83;
        v55 = CGRectIntersectsRect(v88, v89);
        v29 = v38;
LABEL_26:
        [v26 bounds];
        v58 = v57;
        if (!v55 || v30 > v57)
        {
          v59 = [MEMORY[0x277D75D18] areAnimationsEnabled];
          [MEMORY[0x277D75D18] setAnimationsEnabled:0];
          [v26 center];
          [v26 setCenter:v60 + (v30 - v58) * 0.5];
          [v26 setBounds:{0.0, 0.0, v30, v41}];
          [MEMORY[0x277D75D18] setAnimationsEnabled:v59];
        }

        [v26 bounds];
        v30 = v61;
        v63 = v62;
        v64 = [(StockChartView *)self currentDisplayMode];
        v65 = [v64 axisLabelsColor];
        [v26 setTextColor:v65];

        v83 = v63;
        [v26 setFrame:{v54, v52, v30, v63}];
        [v26 setAlpha:!v55];
        if (!v55)
        {
          v66 = [v29 string];
          [v26 setText:v66];
        }

        [v26 setHidden:0];
        v67 = [v26 superview];

        if (!v67)
        {
          [(StockChartView *)self addSubview:v26];
        }

        if (v55)
        {
          v33 = v78;
        }

        else
        {
          v33 = v54;
        }

        if (v55)
        {
          v32 = v77;
        }

        else
        {
          v32 = v52;
        }

        ++v27;
        v28 = v37;
        v11 = v80;
        if (v25 == v27)
        {

          goto LABEL_41;
        }
      }

      v42 = v81 - v30;
      v41 = v83;
LABEL_19:
      v38 = 0;
      v53 = (v27 / v72);
      goto LABEL_20;
    }
  }

LABEL_41:
}

- (void)_layoutAxesAndXLabels
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = [(StockChartView *)self currentGraphView];
  [v3 frame];
  rect = v4;

  [(StockChartView *)self lineGraphFrame];
  v6 = v5;
  v99 = v8;
  v100 = v7;
  v10 = v9;
  chartData = self->_chartData;
  v12 = [(StockChartView *)self currentDisplayMode];
  v96 = [(StockChartData *)chartData labelPlacementForDisplayMode:v12];

  v13 = self->_chartData;
  v14 = [(StockChartView *)self currentDisplayMode];
  v15 = [(StockChartData *)v13 xAxisLabelInfoArrayForMode:v14];

  v16 = [v15 count];
  v94 = [(StockChartView *)self currentGraphView];
  while ([(NSMutableArray *)self->_axisViews count]< v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(NSMutableArray *)self->_axisViews addObject:v17];
  }

  if ([(NSMutableArray *)self->_axisViews count]> v16)
  {
    v18 = [(NSMutableArray *)self->_axisViews subarrayWithRange:v16, [(NSMutableArray *)self->_axisViews count]- v16];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v110 objects:v116 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v111;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v111 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v110 + 1) + 8 * i) setHidden:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v110 objects:v116 count:16];
      }

      while (v20);
    }

    [(NSMutableArray *)self->_axisViews removeObjectsInArray:v18];
  }

  if (v16)
  {
    v23 = +[ChartLabelInfoManager chartLabelFont];
    while ([(NSMutableArray *)self->_xLabelViews count]< v16)
    {
      v24 = objc_alloc_init(MEMORY[0x277D756B8]);
      [v24 setFont:v23];
      v25 = [MEMORY[0x277D75348] clearColor];
      [v24 setBackgroundColor:v25];

      [(NSMutableArray *)self->_xLabelViews addObject:v24];
    }

    if ([(NSMutableArray *)self->_xLabelViews count]> v16)
    {
      v26 = [(NSMutableArray *)self->_xLabelViews subarrayWithRange:v16, [(NSMutableArray *)self->_xLabelViews count]- v16];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v106 objects:v115 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v107;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v107 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v106 + 1) + 8 * j) setHidden:1];
          }

          v28 = [v26 countByEnumeratingWithState:&v106 objects:v115 count:16];
        }

        while (v28);
      }

      [(NSMutableArray *)self->_xLabelViews removeObjectsInArray:v26];
    }

    v89 = v23;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v31 = self->_xLabelViews;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v103;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v103 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v102 + 1) + 8 * k);
          v37 = [(StockChartView *)self currentDisplayMode];
          v38 = [v37 axisLabelsColor];
          [v36 setTextColor:v38];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v102 objects:v114 count:16];
      }

      while (v33);
    }

    if (v16 == 1)
    {
      v93 = 0;
      v39 = 0.0;
    }

    else
    {
      v40 = [v15 objectAtIndexedSubscript:v16 - 2];
      [v40 position];
      v42 = v41;
      v93 = v16 - 1;
      v43 = [v15 objectAtIndexedSubscript:v16 - 1];
      [v43 position];
      v45 = v10 * (v42 - v44);

      v39 = v45;
    }

    v46 = round(v10 * 0.015);
    [(UIView *)self->_xAxisKeyline frame];
    MaxY = CGRectGetMaxY(v118);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v91 = v6 + v39;
    v92 = v39;
    v95 = v46;
    v51 = 0x277D75000uLL;
    v52 = 0.0;
    v97 = v6;
    v98 = v10;
    do
    {
      v53 = v49;
      v49 = [v15 objectAtIndex:v48];

      [v49 position];
      v55 = v54;
      v56 = round(v6 + v10 * v55);
      v57 = [(NSMutableArray *)self->_xLabelViews objectAtIndex:v48];
      v58 = [v57 font];
      [v58 ascender];
      v60 = RoundToPixel(v59);

      v61 = v56;
      v62 = [*(v51 + 2464) mainScreen];
      [v62 scale];
      v64 = v63;

      if (v50)
      {
        v65 = [*(v51 + 2464) mainScreen];
        [v65 scale];
        v61 = v61 + -1.0 / v66 * 0.5;
      }

      v67 = MaxY;
      v68 = MaxY + v60 - rect;
      v69 = 1.0 / v64;
      v70 = [(NSMutableArray *)self->_axisViews objectAtIndex:v48];
      v71 = 1.0 - v55;
      if ((1.0 - v55) > v55)
      {
        v71 = v55;
      }

      v72 = v71 >= 0.02 || v50 == 0;
      v73 = !v72;
      if (v72)
      {
        v74 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
        [v70 setBackgroundColor:v74];

        [v70 setFrame:{v61, rect, 1.0 / v64, v68}];
        v75 = [v70 superview];

        if (!v75)
        {
          [(StockChartView *)self insertSubview:v70 belowSubview:v94];
        }
      }

      [v70 setHidden:v73];
      [v49 size];
      v77 = v76;
      v79 = v78;
      switch(v96)
      {
        case 3:
          if (v50 == 1)
          {
            v121.origin.x = v97;
            v121.size.width = v98;
            v121.size.height = v99;
            v121.origin.y = v100;
            v80 = CGRectGetMaxX(v121) - v61;
          }

          else
          {
            v80 = v91 - v61;
            if (v93 != v48)
            {
              v80 = v92;
            }
          }

          v81 = v80 * 0.5;
          v122.origin.x = v61;
          v122.origin.y = rect;
          v122.size.width = v69;
          v122.size.height = v68;
          MinX = CGRectGetMinX(v122);
          v52 = RoundToPixel(MinX + v81 - v77 * 0.5);
          break;
        case 2:
          v120.origin.x = v61;
          v120.origin.y = rect;
          v120.size.width = v69;
          v120.size.height = v68;
          v52 = CGRectGetMaxX(v120) + 2.0;
          break;
        case 1:
          v119.origin.x = v61;
          v119.origin.y = rect;
          v119.size.width = v69;
          v119.size.height = v68;
          v52 = CGRectGetMidX(v119) + v77 * -0.5;
          break;
      }

      if (v52 <= v95)
      {
        v52 = v95;
      }

      v83 = [v49 string];
      [v57 setText:v83];

      v84 = [v49 accessibilityLabel];
      [v57 setAccessibilityLabel:v84];

      MaxY = v67;
      [v57 setFrame:{v52, v67, v77, v79}];
      v85 = [v49 string];
      v86 = [v85 length];
      v87 = 0.0;
      if (v86)
      {
        v87 = 1.0;
      }

      [v57 setAlpha:v87];

      v88 = [v57 superview];

      if (!v88)
      {
        [(StockChartView *)self insertSubview:v57 belowSubview:v94];
      }

      v6 = v97;
      v10 = v98;
      v123.origin.x = v97;
      v123.size.height = v99;
      v123.origin.y = v100;
      v123.size.width = v98;
      [v57 setHidden:v52 > CGRectGetMaxX(v123)];

      v48 = ++v50;
      v51 = 0x277D75000;
    }

    while (v16 > v50);
  }
}

- (void)_layoutTopLabelsHidden:(BOOL)a3
{
  v3 = a3;
  [(StockChartView *)self bounds];
  v6 = v5;
  [(StockChartView *)self horizontalPadding];
  v8 = v7;
  v9 = [(StockChartView *)self isLandscape];
  v10 = 0.0;
  v11 = v6 + v8 * -2.0;
  if (v9)
  {
    v10 = v8 + 0.0;
  }

  else
  {
    v11 = v6;
  }

  v12 = 1.0;
  if (!v3)
  {
    v12 = 37.0;
  }

  v13 = 0;
  v16 = CGRectIntegral(*&v10);
  [(ChartTitleLabel *)self->_titleView setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
  titleView = self->_titleView;

  [(ChartTitleLabel *)titleView setAlpha:!v3];
}

- (double)widestYLabelWidthForMode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(StockChartData *)self->_chartData yAxisLabelInfoArrayForMode:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) size];
        if (v9 > v7)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)hideLabelsAxesAndGraphs
{
  v33 = *MEMORY[0x277D85DE8];
  [(UIView *)self->_xAxisKeyline setHidden:1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_axisViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v26 + 1) + 8 * v7++) setHidden:1];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_xLabelViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12++) setHidden:1];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_yLabelViews;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) setHidden:{1, v18}];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v15);
  }

  [(StockChartView *)self enumerateGraphsAndDisplayModesUsingBlock:&__block_literal_global_73];
  [(ChartHUDView *)self->_HUDView setOverlayHidden:1];
}

- (void)_setShowingLoadingStatus:(BOOL)a3
{
  if (a3)
  {
    [(StockChartView *)self hideLabelsAxesAndGraphs];
    [(StockChartView *)self layoutLoadingStatus];
    [(LoadingLabel *)self->_loadingLabel setHidden:0];
    loadingLabel = self->_loadingLabel;

    [(LoadingLabel *)loadingLabel setAlpha:1.0];
  }

  else
  {
    v5 = self->_loadingLabel;

    [(LoadingLabel *)v5 setHidden:1];
  }
}

- (void)layoutLoadingStatus
{
  v3 = [(StockChartView *)self error];
  v4 = [v3 code];

  if (v4)
  {
    if (v4 == 2 && self->_selectedInterval < 2uLL)
    {
      v5 = @"No Chart Available";
    }

    else
    {
      v5 = @"Error Retrieving Chart";
    }
  }

  else
  {
    v5 = @"RETRIEVING_CHART";
  }

  v6 = [StocksBundles getBundle:1];
  v13 = [v6 localizedStringForKey:v5 value:&stru_287C73C90 table:@"Localizable"];

  [(LoadingLabel *)self->_loadingLabel setText:v13 showingActivity:v4 == 0];
  [(StockChartView *)self bounds];
  v8 = v7;
  v10 = v9;
  [(LoadingLabel *)self->_loadingLabel frame];
  [(LoadingLabel *)self->_loadingLabel setFrame:round((v8 - v11) * 0.5), round((v10 - v12) * 0.5)];
}

- (void)setLabelsAndAxesAlpha:(double)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_axisViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v28 + 1) + 8 * v9++) setAlpha:a3];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_xLabelViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14++) setAlpha:a3];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_yLabelViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) setAlpha:{a3, v20}];
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)prepareForTransitionToDisplayMode:(id)a3
{
  v13 = a3;
  self->_animating = 1;
  v4 = [(StockChartView *)self graphViewForMode:v13];
  v5 = [(StockChartView *)self currentGraphView];
  [v13 showsTitle];
  titleView = self->_titleView;
  if (v7 == 0.0)
  {
    v9 = 0.0;
    v10 = self->_titleView;
    v11 = 0;
  }

  else
  {
    stock = self->_stock;
    [v13 chartSize];
    v10 = titleView;
    v11 = stock;
  }

  [(ChartTitleLabel *)v10 prepareStringsWithStock:v11 width:v9];
  if ([v4 isRendered])
  {
    [v5 frame];
    [v4 setFrame:?];
    [v4 setAlpha:0.0];
  }

  else
  {
    [(StockChartView *)self layoutLoadingStatus];
  }

  [v13 showsTitle];
  if (v12 == 0.0)
  {
    [(StockChartView *)self setShowingHUD:0];
  }

  else
  {
    [(StockChartView *)self insertSubview:self->_titleView belowSubview:self->_HUDView];
  }
}

- (void)animateTransitionToDisplayMode:(id)a3
{
  v19 = a3;
  v4 = [(StockChartView *)self currentGraphView];
  v5 = [(StockChartView *)self graphViewForMode:v19];
  [(StockChartView *)self setCurrentDisplayMode:v19];
  preferredInterval = self->_preferredInterval;
  if (preferredInterval == self->_selectedInterval)
  {
    v7 = [(StockChartView *)self currentDisplayMode];
    v8 = [v7 maxInterval];

    if (preferredInterval <= v8)
    {
      goto LABEL_5;
    }

    preferredInterval = self->_preferredInterval;
  }

  [(StockChartView *)self setSelectedInterval:[(StockChartView *)self maxSupportedIntervalFromDesiredInterval:preferredInterval]];
  [(StockChartView *)self updateChartViewForSelectedInterval];
  [(ChartIntervalButtonRow *)self->_intervalButtonRow selectChartIntervalButtonForInterval:[(StockChartView *)self selectedInterval]];
LABEL_5:
  [v4 setAlpha:0.0];
  v9 = [v5 isRendered];
  loadingLabel = self->_loadingLabel;
  if (v9)
  {
    [(LoadingLabel *)loadingLabel setAlpha:0.0];
    [v5 setAlpha:1.0];
  }

  else
  {
    [(LoadingLabel *)loadingLabel setAlpha:1.0];
    [(StockChartView *)self setLabelsAndAxesAlpha:0.0];
  }

  [(StockChartView *)self graphViewFrameForMode:v19];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v4 setFrame:?];
  [v5 setFrame:{v12, v14, v16, v18}];
  [(StockChartView *)self forceLayout];
}

- (void)didTransitionToDisplayMode:(id)a3
{
  [a3 showsTitle];
  if (v4 == 0.0)
  {
    [(ChartTitleLabel *)self->_titleView removeFromSuperview];
  }

  v5 = [(StockChartView *)self currentGraphView];
  v6 = [v5 isRendered];

  if (v6)
  {
    [(LoadingLabel *)self->_loadingLabel setAlpha:0.0];
    v7 = [(StockChartView *)self currentGraphView];
    [v7 setAlpha:1.0];

    [(StockChartView *)self setLabelsAndAxesAlpha:1.0];
  }

  else
  {
    [(StockChartView *)self hideLabelsAxesAndGraphs];
  }

  self->_animating = 0;
  if (self->_layoutPending)
  {
    [(StockChartView *)self setNeedsLayout];
    self->_layoutPending = 0;
  }

  [(ChartTitleLabel *)self->_titleView prepareStringsForDeferredStockIfNeeded];
  [(StockChartView *)self hideOtherGraphViews];

  [(StockChartView *)self updateHUDView];
}

- (int64_t)maxSupportedIntervalFromDesiredInterval:(int64_t)a3
{
  v4 = [(StockChartView *)self currentDisplayMode];
  v5 = [v4 maxInterval];

  if (v5 >= a3)
  {
    return a3;
  }

  else
  {
    return v5;
  }
}

- (void)updateChartViewForSelectedInterval
{
  [(StockChartView *)self setShowingHUD:0];

  [(StockChartView *)self reloadData];
}

- (void)chartIntervalButtonRow:(id)a3 didSelectChartInterval:(int64_t)a4
{
  v6 = [(StockChartView *)self selectedInterval];
  v7 = [(StockChartView *)self maxSupportedIntervalFromDesiredInterval:a4];
  if (v7 != v6)
  {
    self->_preferredInterval = v7;
    [(StockChartView *)self setSelectedInterval:v7];
    [(StockChartView *)self updateChartViewForSelectedInterval];
    v8 = [(StockChartView *)self chartViewDelegate];
    [v8 stockChartView:self chartIntervalDidChange:a4];
  }
}

- (StocksViewController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (StockChartViewDelegate)chartViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chartViewDelegate);

  return WeakRetained;
}

- (void)enumerateGraphsAndDisplayModesUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"StockChartView.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end