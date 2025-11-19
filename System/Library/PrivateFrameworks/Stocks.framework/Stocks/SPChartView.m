@interface SPChartView
- (CGRect)graphViewFrameForMode:(id)a3;
- (CGRect)lineGraphFrame;
- (SPChartView)initWithFrame:(CGRect)a3;
- (SPChartView)initWithStockChartDisplayMode:(id)a3;
- (SPChartViewDelegate)delegate;
- (UIFont)labelFont;
- (double)lineGraphBottomPadding;
- (double)widestYLabelWidthForMode:(id)a3;
- (id)_smallCapsFontFrom:(id)a3;
- (void)_prepareXAxisLabelsAndPositions;
- (void)_prepareXAxisLabelsForLabelInfoArray:(id)a3;
- (void)_prepareYAxisLabelsAndPositions;
- (void)_setDayLabelsWithInterval:(unsigned int)a3 realTimePositions:(BOOL)a4;
- (void)_setHourLabels;
- (void)_setMonthAndYearLabels;
- (void)clearData;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setChartData:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)stockGraphViewReadyForDisplay:(id)a3;
@end

@implementation SPChartView

- (void)clearData
{
  chartData = self->_chartData;
  self->_chartData = 0;

  graph = self->_graph;

  [(StockGraphView *)graph clearData];
}

- (SPChartView)initWithStockChartDisplayMode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPChartView;
  v6 = [(SPChartView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentDisplayMode, a3);
    [(StockGraphView *)v7->_graph setDisplayMode:v7->_currentDisplayMode];
  }

  return v7;
}

- (SPChartView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = SPChartView;
  v3 = [(SPChartView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_chartViewType = 0;
    v5 = [StockGraphView alloc];
    v6 = [(StockGraphView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    graph = v4->_graph;
    v4->_graph = v6;

    [(StockGraphView *)v4->_graph setChartViewDelegate:v4];
    v8 = +[StockChartDisplayMode defaultDisplayMode];
    currentDisplayMode = v4->_currentDisplayMode;
    v4->_currentDisplayMode = v8;

    v10 = [MEMORY[0x277D75348] whiteColor];
    [(StockChartDisplayMode *)v4->_currentDisplayMode setLineColor:v10];

    [(StockChartDisplayMode *)v4->_currentDisplayMode setLineWidth:1.0];
    [(StockChartDisplayMode *)v4->_currentDisplayMode setShowsVolume:0];
    [(StockChartDisplayMode *)v4->_currentDisplayMode setVolumeHeight:0.0];
    [(StockChartDisplayMode *)v4->_currentDisplayMode setHorizontalGridlineCount:3];
    [(StockChartDisplayMode *)v4->_currentDisplayMode setYAxisLabelCount:2];
    v11 = v4->_currentDisplayMode;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(StockChartDisplayMode *)v11 setXAxisKeylineColor:v12];

    [(StockGraphView *)v4->_graph setDisplayMode:v4->_currentDisplayMode];
    v4->_selectedInterval = -1;
    [(SPChartView *)v4 addSubview:v4->_graph];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    xAxisLabels = v4->_xAxisLabels;
    v4->_xAxisLabels = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    yAxisLabels = v4->_yAxisLabels;
    v4->_yAxisLabels = v15;

    v17 = objc_alloc_init(ChartLabelInfoManager);
    labelInfoManager = v4->_labelInfoManager;
    v4->_labelInfoManager = v17;

    v19 = [MEMORY[0x277D75348] clearColor];
    [(SPChartView *)v4 setBackgroundColor:v19];

    [(SPChartView *)v4 setShowsHorizontalLines:0];
  }

  return v4;
}

- (void)dealloc
{
  +[GraphRenderer clearSharedRenderer];
  v3.receiver = self;
  v3.super_class = SPChartView;
  [(SPChartView *)&v3 dealloc];
}

- (void)stockGraphViewReadyForDisplay:(id)a3
{
  xAxisLabels = self->_xAxisLabels;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__SPChartView_stockGraphViewReadyForDisplay___block_invoke;
  v12[3] = &unk_279D15A40;
  v12[4] = self;
  [(NSMutableArray *)xAxisLabels enumerateObjectsUsingBlock:v12];
  yAxisLabels = self->_yAxisLabels;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SPChartView_stockGraphViewReadyForDisplay___block_invoke_2;
  v11[3] = &unk_279D15A40;
  v11[4] = self;
  [(NSMutableArray *)yAxisLabels enumerateObjectsUsingBlock:v11];
  [(StockGraphView *)self->_graph setNeedsDisplay];
  [(SPChartView *)self setNeedsDisplay];
  [(SPChartView *)self setNeedsLayout];
  [(SPChartView *)self bounds];
  v13.width = v6;
  v13.height = v7;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 2.0);
  v8 = [(SPChartView *)self layer];
  [v8 renderInContext:UIGraphicsGetCurrentContext()];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained spChartView:self hasChartImage:v9];
}

- (void)setChartData:(id)a3
{
  v11 = a3;
  if (self->_chartData != v11)
  {
    objc_storeStrong(&self->_chartData, a3);
    chartData = self->_chartData;
    if (chartData)
    {
      [(StockChartData *)chartData setPreviousClosePrice:0.0];
      self->_selectedInterval = [(StockChartData *)v11 chartInterval];
      [(StockGraphView *)self->_graph loadStockChartData:v11];
      [(StockGraphView *)self->_graph bounds];
      if (v6 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8))
      {
        v9 = v6;
        v10 = v7;
        [(SPChartView *)self _prepareYAxisLabelsAndPositions];
        [(SPChartView *)self _prepareXAxisLabelsAndPositions];
        [(StockGraphView *)self->_graph recomputePathsAndRenderIfNeededForSize:v9, v10];
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SPChartView *)self frame];
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectEqualToRect(v20, v21))
  {
    goto LABEL_9;
  }

  [(StockChartDisplayMode *)self->_currentDisplayMode setChartSize:width, height];
  [(StockGraphView *)self->_graph setFrame:0.0, 0.0, width, height];
  v12 = [(SPChartView *)self chartViewType];
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_7;
    }

    v13 = 22.0;
    v14 = 5.0;
  }

  else
  {
    v13 = 30.0;
    v14 = 20.0;
  }

  [(StockGraphView *)self->_graph setGraphInsets:v14, 0.0, v13, 0.0];
LABEL_7:
  chartData = self->_chartData;
  if (chartData)
  {
    [(StockChartData *)chartData clearAllImageSets];
    graph = self->_graph;
    [(StockGraphView *)graph bounds];
    [(StockGraphView *)graph recomputePathsAndRenderIfNeededForSize:v17, v18];
    [(SPChartView *)self _prepareYAxisLabelsAndPositions];
    [(SPChartView *)self _prepareXAxisLabelsAndPositions];
  }

LABEL_9:
  v19.receiver = self;
  v19.super_class = SPChartView;
  [(SPChartView *)&v19 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  if (self->_chartData && [(StockGraphView *)self->_graph isRendered])
  {
    v38 = [(StockChartData *)self->_chartData xAxisLabelInfoArrayForMode:self->_currentDisplayMode];
    v3 = [(StockChartData *)self->_chartData yAxisLabelInfoArrayForMode:self->_currentDisplayMode];
    v4 = [v38 count];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSMutableArray *)self->_xAxisLabels objectAtIndex:i];
        v8 = [v38 objectAtIndex:i];
        [(SPChartView *)self frame];
        v10 = v9;
        [v7 frame];
        v12 = v11;
        v14 = v13;
        [v8 position];
        v16 = v15;
        [(StockGraphView *)self->_graph frame];
        v18 = floor(v16 * v17 + 2.0);
        if (self->_selectedInterval)
        {
          if (self->_compactGraph)
          {
            v19 = 5.5;
          }

          else
          {
            v19 = 6.5;
          }

          v18 = v18 + v19;
        }

        v20 = [v7 font];
        [v20 ascender];
        v22 = RoundToPixelWatch(v10 + -1.0 - v21);

        [v7 setFrame:{v18, v22, v12, v14}];
        if ((i & 1) != 0 && !self->_selectedInterval)
        {
          [v7 setHidden:1];
        }
      }
    }

    v23 = [(NSMutableArray *)self->_xAxisLabels firstObject];
    [v23 setHidden:1];
    v24 = [v3 count];
    if (v24)
    {
      v25 = v24;
      for (j = 0; j != v25; ++j)
      {
        v27 = [(NSMutableArray *)self->_yAxisLabels objectAtIndex:j];
        v28 = [v3 objectAtIndex:j];
        [v27 frame];
        v30 = v29;
        v32 = v31;
        [(SPChartView *)self bounds];
        v33 = CGRectGetMaxX(v40) - v30;
        [v28 position];
        v35 = 1.0 - v34;
        [(SPChartView *)self frame];
        v37 = v35 * (v36 - v32 + -10.0) + 0.0;
        [v27 setFrame:{v33, floorf(v37), v30, v32}];
      }
    }
  }
}

- (id)_smallCapsFontFrom:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D74388];
  v20[0] = *MEMORY[0x277D74398];
  v20[1] = v3;
  v21[0] = &unk_287C80E68;
  v21[1] = &unk_287C80E80;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v21 forKeys:v20 count:2];
  v7 = *MEMORY[0x277D74338];
  v17 = v6;
  v18 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v10 = [v5 fontDescriptor];
  v11 = [v10 fontDescriptorByAddingAttributes:v9];

  v12 = MEMORY[0x277D74300];
  [v5 pointSize];
  v14 = v13;

  v15 = [v12 fontWithDescriptor:v11 size:v14];

  return v15;
}

- (void)_prepareXAxisLabelsForLabelInfoArray:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 424;
  [(NSMutableArray *)self->_xAxisLabels enumerateObjectsUsingBlock:&__block_literal_global];
  [(NSMutableArray *)self->_xAxisLabels removeAllObjects];
  v30 = [(SPChartView *)self labelFont];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = 0x277D75000uLL;
    do
    {
      v14 = 0;
      v31 = v7;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = [objc_alloc(*(v13 + 1720)) initWithFrame:{v9, v10, v11, v12}];
        v17 = [v15 string];
        [v16 setText:v17];

        [v16 setTextAlignment:2];
        v18 = [(SPChartView *)self chartViewType];
        if (v18 == 1)
        {
          v21 = v8;
          v22 = v5;
          v23 = v13;
          v24 = [(StockChartData *)self->_chartData dataSeriesDict];
          if (v24)
          {
            [MEMORY[0x277D75348] whiteColor];
          }

          else
          {
            [MEMORY[0x277D75348] colorWithWhite:0.301960784 alpha:1.0];
          }
          v25 = ;
          [v16 setTextColor:v25];

          [v16 setFont:v30];
          v26 = [(SPChartView *)self chartData];
          v27 = [v26 dataSeriesDict];
          v28 = [v27 count];

          v13 = v23;
          v5 = v22;
          v8 = v21;
          v7 = v31;
          if (!v28)
          {
            [v16 setText:&stru_287C73C90];
          }
        }

        else if (!v18)
        {
          v19 = [MEMORY[0x277D75348] systemGrayColor];
          [v16 setTextColor:v19];

          v20 = [MEMORY[0x277D74300] systemFontOfSize:8.0];
          [v16 setFont:v20];
        }

        v29 = [MEMORY[0x277D75348] clearColor];
        [v16 setBackgroundColor:v29];

        [v16 sizeToFit];
        [*(&self->super.super.super.isa + v5) addObject:v16];

        ++v14;
      }

      while (v7 != v14);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }
}

- (void)_prepareXAxisLabelsAndPositions
{
  selectedInterval = self->_selectedInterval;
  if (selectedInterval <= 2)
  {
    if (selectedInterval)
    {
      if (selectedInterval == 1)
      {
        v3 = 1;
        v4 = 0;
      }

      else
      {
        if (selectedInterval != 2)
        {
          return;
        }

        v3 = 7;
        v4 = 1;
      }

      [(SPChartView *)self _setDayLabelsWithInterval:v3 realTimePositions:v4];
    }

    else
    {
      [(SPChartView *)self _setHourLabels];
    }
  }

  else if ((selectedInterval - 3) < 6)
  {
    [(SPChartView *)self _setMonthAndYearLabels];
  }
}

- (void)_setMonthAndYearLabels
{
  v2 = self;
  v3 = [(StockChartData *)self->_chartData stockValueCount];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [(StockChartData *)v2->_chartData stockValues];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v124 = [v6 copy];

  v7 = [(StockChartData *)v2->_chartData marketTimeZone];
  [v124 setTimeZone:v7];

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*v5];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5[3 * v4 - 3]];
  v10 = [v124 components:8 fromDate:v8 toDate:v9 options:0];
  v11 = [v10 month];
  v104 = v8;
  if ([v10 month] >= 25)
  {
    v12 = [v10 month] / 24.0;
    v13 = floorf(v12);
    v14 = 6.0;
LABEL_7:
    v16 = v13 * v14;
    if (v16 > 12.0)
    {
      v16 = 12.0;
    }

    v17 = v16;
    goto LABEL_11;
  }

  if (v11 >= 7)
  {
    v15 = [v10 month] / 12.0;
    v13 = ceilf(v15);
    v14 = 3.0;
    goto LABEL_7;
  }

  v17 = 1;
LABEL_11:
  v117 = v11;
  v102 = v10;
  v18 = [v10 month];
  v19 = v17 == 1 || v17 == 12;
  v120 = v17;
  if (v19)
  {
    v20 = v18 / v17 + 1;
  }

  else
  {
    v20 = v18 / v17;
  }

  v21 = 2;
  if (v19)
  {
    v21 = 3;
  }

  v22 = +[ChartLabelInfoManager sharedLabelInfoManager];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20 + 2];
  v105 = v22;
  v24 = [v22 labelInfoForYAxis];
  [v23 addObject:v24];

  v118 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20 + 1];
  v103 = v9;
  v25 = [v124 components:8 fromDate:v9];
  v26 = v4 - 1;
  v119 = v23;
  v116 = v2;
  if ((v4 - 1) < 0)
  {
    v30 = 0;
    v29 = 0;
    v39 = 0;
    v121 = 0;
    goto LABEL_33;
  }

  v121 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v26 + 1;
  v32 = v26;
  v33 = &v5[3 * v26];
  do
  {
    v34 = v30;
    v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*v33];

    v30 = [v124 components:8 fromDate:v35];

    v36 = [v30 month];
    if (v36 == [v25 month])
    {
      goto LABEL_26;
    }

    if (v120 != ++v27)
    {
      if (v121)
      {
        goto LABEL_25;
      }

      if ([v25 month] != 1 && (objc_msgSend(v25, "month") - 1) % v120)
      {
        v121 = 0;
        goto LABEL_25;
      }
    }

    [v118 setObject:v28 atIndexedSubscript:v121];
    v37 = objc_alloc_init(ChartLabelInfo);

    [(ChartLabelInfo *)v37 setPosition:(v31 / v32)];
    [v119 addObject:v37];
    v27 = 0;
    ++v121;
    v29 = v37;
LABEL_25:
    v38 = v30;

    v25 = v38;
LABEL_26:
    v39 = v35;

    v33 -= 3;
    v28 = v39;
    v94 = v31-- <= 1;
  }

  while (!v94);

  v2 = v116;
  v23 = v119;
LABEL_33:

  [(SPChartView *)v2 lineGraphFrame];
  v114 = v41;
  v115 = v40;
  v43 = v42;
  v113 = v44;
  v108 = 0.0;
  if ([v23 count] >= 2 && ((objc_msgSend(v23, "objectAtIndexedSubscript:", objc_msgSend(v23, "count") - 2), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "position"), v47 = v46, objc_msgSend(v23, "objectAtIndexedSubscript:", objc_msgSend(v23, "count") - 1), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "position"), v108 = v43 * (v47 - v49), v48, v45, v120 == 12) || v120 == 1))
  {
    v50 = v39;
    if (v120 == 12)
    {
      v51 = [v124 components:-1 fromDate:v50];
      [v51 setMonth:1];
      v52 = [v124 dateFromComponents:v51];

      v50 = v52;
    }

    [v118 setObject:v50 atIndexedSubscript:v121];
    v53 = objc_alloc_init(ChartLabelInfo);

    v54 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 1}];
    [v54 position];
    [(ChartLabelInfo *)v53 setPosition:v55 - v108 / v43];

    [(ChartLabelInfo *)v53 position];
    if (v56 > 0.0)
    {
      [v23 addObject:v53];
      ++v121;
    }
  }

  else
  {
    v53 = v29;
  }

  v57 = [(SPChartView *)v2 currentDisplayMode];
  v58 = [v57 usesDetailedAxisLabels];

  v59 = [v105 monthLabelInfoArrayForLabelLength:0];
  if (v121 >= 1)
  {
    v60 = 0;
    v61 = 0;
    v62 = *MEMORY[0x277CBF398];
    v123 = *(MEMORY[0x277CBF398] + 8);
    v63 = *(MEMORY[0x277CBF398] + 24);
    v64 = 0.015;
    if (v58)
    {
      v64 = 0.0199999996;
    }

    v65 = floor(v43 * v64);
    v125 = v65;
    v109 = *(MEMORY[0x277CBF3A8] + 8);
    v110 = *MEMORY[0x277CBF3A8];
    v111 = v121;
    v106 = *(MEMORY[0x277CBF398] + 24);
    v107 = *(MEMORY[0x277CBF398] + 16);
    v122 = v107;
    v112 = v43;
    while (1)
    {
      v66 = v61;
      v67 = v53;
      v68 = [v118 objectAtIndexedSubscript:v60];
      v69 = [v124 components:8 fromDate:v68];
      v70 = v60 + 1;
      v53 = [v119 objectAtIndex:v60 + 1];

      if (v117 >= 7 && [v69 month] == 1)
      {
        v71 = [v124 timeZone];
        [(ChartLabelInfo *)v53 setStringToYearWithDate:v68 timeZone:v71];
        v61 = 1;
      }

      else
      {
        v71 = [v59 objectAtIndex:{(objc_msgSend(v69, "month") - 1) % objc_msgSend(v59, "count")}];
        [(ChartLabelInfo *)v53 retainStringAndSizeFromLabelInfo:v71];
        v61 = 0;
      }

      [(ChartLabelInfo *)v53 size];
      v73 = v72;
      v75 = v74;
      if (v120 == 1 || v120 == 12)
      {
        v76 = v62;
        v77 = v108;
        if (!v60)
        {
          [(ChartLabelInfo *)v53 position];
          v77 = v43 * (1.0 - v78);
        }

        v79 = 0.5;
        v80 = v77 * 0.5;
        [(ChartLabelInfo *)v53 position];
        v81 = v115;
        v83 = v115 + v43 * v82 + v80 - v73 * 0.5;
      }

      else
      {
        v76 = v62;
        [(ChartLabelInfo *)v53 position];
        v81 = v115;
        v83 = v115 + v43 * v84;
        v79 = 0.5;
      }

      v127.origin.x = v81;
      v127.size.height = v113;
      v127.origin.y = v114;
      v127.size.width = v43;
      MaxX = CGRectGetMaxX(v127);
      v86 = v83 + v73 * v79;
      v94 = v73 + v83 <= MaxX;
      v87 = v125;
      if (!v94 || v86 < v125)
      {
        [(ChartLabelInfo *)v53 setString:&stru_287C73C90, v125, v86];
        [(ChartLabelInfo *)v53 setSize:v110, v109];
        v75 = v106;
        v73 = v107;
      }

      v89 = [(SPChartView *)v116 currentDisplayMode:v87];
      v90 = 0.0;
      if ([v89 usesDetailedAxisLabels])
      {
        v91 = 10.0;
      }

      else
      {
        v91 = 0.0;
      }

      if ((v66 & (v61 ^ 1)) != 0)
      {
        v92 = 4.0;
      }

      else
      {
        v92 = 0.0;
      }

      v62 = fmax(floor(v83), 0.0);
      if (v62 >= v125)
      {
        goto LABEL_71;
      }

      v128.origin.x = v76;
      v128.size.width = v122;
      v128.origin.y = v123;
      v128.size.height = v63;
      if (CGRectIsNull(v128))
      {
        break;
      }

      v129.origin.y = 0.0;
      v129.origin.x = v125;
      v129.size.width = v73;
      v129.size.height = v75;
      v93 = v92 + v91 + CGRectGetMaxX(v129);
      v94 = v93 > v76 && v117 <= 6;
      if (v94)
      {
        [(ChartLabelInfo *)v53 setString:&stru_287C73C90];
        [(ChartLabelInfo *)v53 setSize:v110, v109];
        v43 = v112;
LABEL_81:
        v95 = [(ChartLabelInfo *)v53 string];
        v96 = [v95 length];

        v62 = v125;
        if (v96)
        {
          [(ChartLabelInfo *)v53 setString:&stru_287C73C90];
          [(ChartLabelInfo *)v53 setSize:v110, v109];
          v75 = v63;
          v73 = v122;
          v90 = v123;
          v62 = v76;
        }

        goto LABEL_72;
      }

      v43 = v112;
      if (v93 > v76)
      {
        goto LABEL_81;
      }

      v62 = v125;
LABEL_72:

      v60 = v70;
      v122 = v73;
      v123 = v90;
      v63 = v75;
      if (v111 == v70)
      {
        goto LABEL_83;
      }
    }

    v62 = v125;
LABEL_71:
    v43 = v112;
    goto LABEL_72;
  }

LABEL_83:
  [(SPChartView *)v116 _prepareXAxisLabelsForLabelInfoArray:v119];
  chartData = v116->_chartData;
  v98 = [(SPChartView *)v116 currentDisplayMode];
  [(StockChartData *)chartData setXAxisLabelInfoArray:v119 forDisplayMode:v98];

  v99 = v116->_chartData;
  v100 = [(SPChartView *)v116 currentDisplayMode];
  [(StockChartData *)v99 setLabelPlacement:v101 forDisplayMode:v100];
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
            v29 = [(SPChartView *)self currentDisplayMode];
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

  v41 = [(SPChartView *)self currentDisplayMode];
  v42 = [v41 usesDetailedAxisLabels];

  if (v42)
  {
    v43 = [v82 lastObject];
    [v43 setStringToMonthAndDayWithDate:v85 timeZone:v77];
  }

  [(SPChartView *)self _prepareXAxisLabelsForLabelInfoArray:v82];
  chartData = self->_chartData;
  v45 = [(SPChartView *)self currentDisplayMode];
  [(StockChartData *)chartData setXAxisLabelInfoArray:v82 forDisplayMode:v45];

  v46 = self->_chartData;
  v47 = [(SPChartView *)self currentDisplayMode];
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
  v56 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  j = [v3 copy];

  v5 = [(StockChartData *)self->_chartData marketTimeZone];
  [j setTimeZone:v5];

  v6 = [(StockChartData *)self->_chartData marketOpenDate];
  v7 = [(StockChartData *)self->_chartData marketCloseDate];
  v8 = [j components:96 fromDate:v6 toDate:v7 options:0];

  v9 = [(StockChartData *)self->_chartData marketOpenDate];
  v10 = [j components:96 fromDate:v9];

  v11 = [(StockChartData *)self->_chartData marketCloseDate];
  v12 = [j components:96 fromDate:v11];

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
  v16 = ceilf(v14);
  v17 = (v16 + [v8 hour]) - ((v15 + v14) >= 1.0);
  if (v17 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  *&v18 = v15 + v14;
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{v19, v18}];
  if ((v17 - 25) > 0xFFFFFFFFFFFFFFE7)
  {
    v48 = v10;
    v49 = v8;
    v50 = j;
    v22 = [v12 hour];
    v23 = -v22;
    v47 = v17;
    v24 = v17;
    do
    {
      v25 = v20;
      v26 = (v22 & ~(v22 >> 63)) + v23;
      v27 = v26 != 0;
      v28 = ((v26 - v27) * 0xAAAAAAAAAAAAAAABLL) >> 64;
      v29 = (v26 - v27) / 0x18uLL;
      if ((v22 & ~(v22 >> 63)) + v23)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = v28 >> 4;
      }

      if ([(ChartLabelInfoManager *)self->_labelInfoManager use24hrTime])
      {
        v31 = v22 + 24 * v30;
      }

      else if (v22 + 24 * (v27 + (v28 >> 4)) - 12 * ((v22 + 24 * (v27 + (v28 >> 4))) / 0xC))
      {
        v31 = v22 + 24 * (v27 + (v28 >> 4)) - 12 * ((v22 + 24 * (v27 + (v28 >> 4))) / 0xC);
      }

      else
      {
        v31 = 12;
      }

      v32 = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoWithUnsignedInteger:v31];
      v33 = [v32 copy];
      v20 = v25;
      [v25 addObject:v33];

      --v22;
      ++v23;
      --v24;
    }

    while (v24);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v34 = v25;
    v35 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 1.0 / (v15 + (v14 + (v47 - v16)));
      v38 = 1.0 - (v37 * v15);
      v39 = *v52;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v51 + 1) + 8 * i) setPosition:v38];
          v38 = v38 - v37;
        }

        v36 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v36);
    }

    if (v47 < 13)
    {
      v44 = 0;
      j = v50;
    }

    else
    {
      v41 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v42 = [v34 objectAtIndex:0];
      v43 = [v42 string];
      v44 = [v43 integerValue];
      v45 = (v44 & 1) == 0;

      for (j = v50; [v34 count] > v45; v45 += 2)
      {
        [v41 addIndex:v45];
      }

      [v34 removeObjectsAtIndexes:v41];
    }

    if (v15 > 0.0 || (v44 & 1) != 0)
    {
      v46 = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoForYAxis];
      [v34 insertObject:v46 atIndex:0];
    }

    [(SPChartView *)self _prepareXAxisLabelsForLabelInfoArray:v34];
    [(StockChartData *)self->_chartData setXAxisLabelInfoArray:v34 forDisplayMode:self->_currentDisplayMode];
    v10 = v48;
    v8 = v49;
  }

  else
  {
    v21 = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoForYAxis];
    [v20 addObject:v21];

    [(SPChartView *)self _prepareXAxisLabelsForLabelInfoArray:v20];
    [(StockChartData *)self->_chartData setXAxisLabelInfoArray:v20 forDisplayMode:self->_currentDisplayMode];
  }
}

- (void)_prepareYAxisLabelsAndPositions
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(StockChartData *)self->_chartData minValue])
  {
    v4 = [(StockChartData *)self->_chartData minValue][8];
  }

  if ([(StockChartData *)self->_chartData maxValue])
  {
    v3 = [(StockChartData *)self->_chartData maxValue][8];
  }

  v5 = v3 - v4;
  v6 = [(StockChartDisplayMode *)self->_currentDisplayMode yAxisLabelCount];
  v7 = (v3 - v4) / (v6 - 1);
  v8 = v7 >= 2.0 && v3 >= 100.0;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (v7 >= 0.0199999996)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = [(Stock *)self->_stock pricePrecision];
    if (v10 <= v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  [(StockChartData *)self->_chartData setYAxisFractionDigits:v9];
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v6)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    while (1)
    {
      v17 = v16;
      v18 = v14;
      *&v13 = v15 / (v6 - 1);
      v19 = v4 + (v5 * *&v13);
      if (v15)
      {
        if (!v8)
        {
          goto LABEL_24;
        }

        LODWORD(v12) = vcvtps_s32_f32(v19);
      }

      else
      {
        if (!v8)
        {
LABEL_24:
          *&v13 = v4 + (v5 * *&v13);
          v20 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
          goto LABEL_25;
        }

        LODWORD(v12) = vcvtms_s32_f32(v19);
      }

      v20 = [MEMORY[0x277CCABB0] numberWithInt:v12];
LABEL_25:
      v16 = v20;

      v14 = objc_alloc_init(ChartLabelInfo);
      [(ChartLabelInfo *)v14 setPosition:((v19 - v4) / v5)];
      v21 = +[StockDataFormatter sharedDataFormatter];
      v22 = [v21 formattedNumber:v16 withPrecision:-[StockChartData yAxisFractionDigits](self->_chartData useGroupSeparator:{"yAxisFractionDigits"), 1}];
      [(ChartLabelInfo *)v14 setString:v22];

      [v37 addObject:v14];
      v15 = (v15 + 1);
      if (v6 <= v15)
      {

        break;
      }
    }
  }

  [(NSMutableArray *)self->_yAxisLabels enumerateObjectsUsingBlock:&__block_literal_global_42];
  [(NSMutableArray *)self->_yAxisLabels removeAllObjects];
  v23 = [v37 count];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    v30 = *MEMORY[0x277D76978];
    do
    {
      v31 = [v37 objectAtIndex:v25];
      v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v26, v27, v28, v29}];
      v33 = [v31 string];
      [v32 setText:v33];

      [v32 setTextAlignment:1];
      v34 = [MEMORY[0x277D75348] systemGrayColor];
      [v32 setTextColor:v34];

      v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
      [v32 setFont:v35];

      v36 = [MEMORY[0x277D75348] clearColor];
      [v32 setBackgroundColor:v36];

      [v32 sizeToFit];
      [(NSMutableArray *)self->_yAxisLabels addObject:v32];

      ++v25;
    }

    while (v24 != v25);
  }

  [(StockChartData *)self->_chartData setYAxisLabelInfoArray:v37 forDisplayMode:self->_currentDisplayMode];
}

- (void)drawRect:(CGRect)a3
{
  if (!self->_chartData)
  {
    return;
  }

  height = a3.size.height;
  width = a3.size.width;
  if (![(StockGraphView *)self->_graph isRendered:a3.origin.x])
  {
    return;
  }

  v27 = [(StockChartData *)self->_chartData xAxisLabelInfoArrayForMode:self->_currentDisplayMode];
  v6 = RoundToPixelWatch(2.5);
  v7 = RoundToPixelWatch(0.5);
  v8 = RoundToPixelWatch(0.5) * 0.5;
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v10 CGColor]);

  CGContextSetLineJoin(CurrentContext, kCGLineJoinMiter);
  CGContextSetLineCap(CurrentContext, kCGLineCapSquare);
  v11 = 11.0;
  if (self->_compactGraph)
  {
    v11 = 10.0;
  }

  v12 = RoundToPixelWatch(height - v11);
  if ([(SPChartView *)self showsHorizontalLines])
  {
    v13 = v8 + v12;
    CGContextBeginPath(CurrentContext);
    CGContextSetLineWidth(CurrentContext, v7);
    CGContextMoveToPoint(CurrentContext, 0.0, v8);
    CGContextAddLineToPoint(CurrentContext, width, v8);
    CGContextMoveToPoint(CurrentContext, 0.0, v13);
    CGContextAddLineToPoint(CurrentContext, width, v13);
    CGContextStrokePath(CurrentContext);
  }

  v14 = [(SPChartView *)self chartViewType];
  if (v14 == 1)
  {
    v15 = [MEMORY[0x277D75348] colorWithRed:0.3 green:0.3 blue:0.3 alpha:1.0];
    v17 = [v15 CGColor];
  }

  else
  {
    if (v14)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v15 = [MEMORY[0x277D75348] systemGrayColor];
    v16 = [v15 colorWithAlphaComponent:0.5];
    v17 = [v16 CGColor];
  }

LABEL_14:
  CGContextSetStrokeColorWithColor(CurrentContext, v17);
  CGContextBeginPath(CurrentContext);
  CGContextSetLineWidth(CurrentContext, v6);
  v18 = [v27 count];
  if (v18)
  {
    v19 = v18;
    for (i = 0; i != v19; ++i)
    {
      v21 = [(NSMutableArray *)self->_xAxisLabels objectAtIndex:i];
      v22 = [v27 objectAtIndex:i];
      if (([v21 isHidden] & 1) == 0)
      {
        [v22 position];
        v24 = v23;
        [(StockGraphView *)self->_graph frame];
        v26 = v8 + RoundToPixelWatch(v24 * v25);
        CGContextMoveToPoint(CurrentContext, v26, 0.0);
        CGContextAddLineToPoint(CurrentContext, v26, height);
      }
    }
  }

  CGContextStrokePath(CurrentContext);
}

- (CGRect)graphViewFrameForMode:(id)a3
{
  v3 = a3;
  [v3 showsTitle];
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 37.0;
  }

  [v3 chartSize];
  v7 = v6;
  v9 = v8;
  [v3 intervalRowHeight];
  v11 = v10 + v5;
  [v3 intervalRowHeight];
  v13 = v12;

  v14 = v9 - (v5 + v13 + 0.5);
  v15 = 16.0;
  v16 = v11;
  v17 = v7 + -32.0;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)lineGraphFrame
{
  v3 = [(SPChartView *)self chartViewType];
  v4 = [(SPChartView *)self currentDisplayMode];
  [(SPChartView *)self graphViewFrameForMode:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(SPChartView *)self lineGraphBottomPadding];
  v14 = v13;
  v15 = [(SPChartView *)self currentDisplayMode];
  v16 = [v15 graphOverlapsYAxisLabels];

  if ((v16 & 1) == 0)
  {
    v17 = [(SPChartView *)self currentDisplayMode];
    [(SPChartView *)self widestYLabelWidthForMode:v17];
    v10 = v10 - (v18 + 4.0 + 0.5);
  }

  v19 = 0.0;
  if (v3 == 1)
  {
    v19 = 5.0;
  }

  if (!v3)
  {
    v19 = 18.0;
  }

  v20 = v12 - (v19 + v14);
  v21 = v19 + v8;
  v22 = v6;
  v23 = v10;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
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

- (double)lineGraphBottomPadding
{
  v2 = [(SPChartView *)self currentDisplayMode];
  [v2 lineGraphBottomPadding];
  v4 = v3;

  return v4;
}

- (UIFont)labelFont
{
  v3 = [(SPChartView *)self chartViewType];
  if (v3 == 1)
  {
    if ([(SPChartView *)self isCompactGraph])
    {
      v4 = 18.0;
    }

    else
    {
      v4 = 20.0;
    }

    v3 = [MEMORY[0x277D74300] systemFontOfSize:v4 weight:*MEMORY[0x277D74410]];
  }

  else if (!v3)
  {
    v3 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  }

  return v3;
}

- (SPChartViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end