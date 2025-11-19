@interface PKSpendingSummaryChartView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSpendingSummaryChartView)initWithFrame:(CGRect)a3;
- (void)_configureBarView:(id)a3 smallContext:(BOOL)a4;
- (void)configureWithSummary:(id)a3 presentationStyle:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setBlurDisabled:(BOOL)a3;
- (void)setPrioritizeLegendPlacementUI:(BOOL)a3;
- (void)setShowLegendGraph:(BOOL)a3;
- (void)setShowLegendLabels:(BOOL)a3;
- (void)setShowPlaceholders:(BOOL)a3;
@end

@implementation PKSpendingSummaryChartView

- (PKSpendingSummaryChartView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = PKSpendingSummaryChartView;
  v3 = [(PKSpendingSummaryChartView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DDD10];
    v5 = *MEMORY[0x1E69DDC70];
    v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    fontForLabels = v3->_fontForLabels;
    v3->_fontForLabels = v6;

    v8 = PKFontForDefaultDesign(v4, v5);
    fontForValues = v3->_fontForValues;
    v3->_fontForValues = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    legendLabels = v3->_legendLabels;
    v3->_legendLabels = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bars = v3->_bars;
    v3->_bars = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    horizontalAxis = v3->_horizontalAxis;
    v3->_horizontalAxis = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    valueLabels = v3->_valueLabels;
    v3->_valueLabels = v16;

    v18 = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = v18;

    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
  }

  return v3;
}

- (void)configureWithSummary:(id)a3 presentationStyle:(unint64_t)a4
{
  v66 = a3;
  objc_storeStrong(&self->_summary, a3);
  self->_chartMaxAmount = 0.0;
  self->_groupsMaxAmount = 0.0;
  self->_presentationStyle = a4;
  v7 = [v66 totalSpending];
  v64 = [v7 currency];

  v8 = [v66 summaryType];
  if (v8 == 2)
  {
    v63 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v63 setLocalizedDateFormatFromTemplate:@"MMM"];
    v61 = 0;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v61 = objc_alloc_init(MEMORY[0x1E696AB88]);
    [v61 setDateTemplate:@"d"];
    v63 = 0;
LABEL_9:
    v10 = 4;
    goto LABEL_13;
  }

  if (v8)
  {
    v61 = 0;
    v63 = 0;
    [v66 spendingsPerCalendarUnit];
    goto LABEL_14;
  }

  v63 = objc_alloc_init(MEMORY[0x1E696AB78]);
  if (self->_isCompactUI || self->_prioritizeLegendPlacement)
  {
    v9 = @"EEEEE";
  }

  else
  {
    v9 = @"EEE";
  }

  [v63 setLocalizedDateFormatFromTemplate:v9];
  v61 = 0;
  v10 = 3;
LABEL_13:
  [v66 spendingsPerCalendarUnit];
  v11 = LABEL_14:;
  v65 = v11;
  if ([v11 count])
  {
    v12 = 0;
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v17 = [v11 objectAtIndex:v12];
      if ([(NSMutableArray *)self->_legendLabels count]<= v12 || ([(NSMutableArray *)self->_legendLabels objectAtIndex:v12], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
        [v18 setNumberOfLines:1];
        [v18 setAdjustsFontSizeToFitWidth:1];
        v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v18 setTextColor:v19];

        [(NSMutableArray *)self->_legendLabels addObject:v18];
        [(PKSpendingSummaryChartView *)self addSubview:v18];
      }

      [v18 setFont:self->_fontForLabels];
      [v18 setHidden:0];
      v20 = [v17 startDate];
      v21 = [v66 summaryType];
      if (!v21 || v21 == 2)
      {
        v25 = [v63 stringFromDate:v20];
        v26 = [v25 pk_uppercaseFirstStringForPreferredLocale];
        [v18 setText:v26];
      }

      else
      {
        if (v21 != 1)
        {
          goto LABEL_28;
        }

        isCompactUI = self->_isCompactUI;
        v23 = v20;
        if (!isCompactUI)
        {
          v62 = [v17 endDate];
          v23 = v62;
        }

        v24 = [v61 stringFromDate:v20 toDate:v23];
        [v18 setText:v24];

        v25 = v62;
        if (isCompactUI)
        {
          goto LABEL_28;
        }
      }

LABEL_28:
      if ([(NSMutableArray *)self->_bars count]<= v12 || ([(NSMutableArray *)self->_bars objectAtIndex:v12], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v27 = [[PKSegmentedBarView alloc] initWithFrame:v13, v14, v15, v16];
        [(PKSpendingSummaryChartView *)self _configureBarView:v27 smallContext:self->_showPlaceholders];
        [(PKSegmentedBarView *)v27 setShowPlaceholder:self->_showPlaceholders];
        [(PKSegmentedBarView *)v27 setBlurDisabled:self->_blurDisabled];
        [(NSMutableArray *)self->_bars addObject:v27];
        [(PKSpendingSummaryChartView *)self addSubview:v27];
      }

      [(PKSegmentedBarView *)v27 setHidden:0];
      v28 = [v17 totalSpending];
      v29 = [v28 amount];
      [v29 floatValue];
      v31 = v30;

      if (self->_groupsMaxAmount < v31)
      {
        self->_groupsMaxAmount = v31;
      }

      ++v12;
      v11 = v65;
    }

    while (v12 < [v65 count]);
  }

  groupsMaxAmount = self->_groupsMaxAmount;
  if (groupsMaxAmount <= 0.0)
  {
    v34 = [v66 previousMaxAmount];

    if (v34)
    {
      v35 = [v66 previousMaxAmount];
      v36 = [v35 amount];
      [v36 floatValue];
      self->_chartMaxAmount = (10 * ((llroundf(v37) + 10) / 10));
    }

    else if (([v66 isLoading] & 1) == 0)
    {
      self->_chartMaxAmount = 10.0;
    }
  }

  else
  {
    v33 = groupsMaxAmount;
    self->_chartMaxAmount = (10 * ((llroundf(v33) + 10) / 10));
  }

  v38 = 0;
  chartMaxAmount = self->_chartMaxAmount;
  if (chartMaxAmount <= 50.0)
  {
    v40 = 3;
  }

  else
  {
    v40 = v60;
  }

  self->_axisCount = 2 * v40 - 1;
  v41 = chartMaxAmount / (v40 - 1);
  v42 = *MEMORY[0x1E695F058];
  v43 = *(MEMORY[0x1E695F058] + 8);
  v44 = *(MEMORY[0x1E695F058] + 16);
  v45 = *(MEMORY[0x1E695F058] + 24);
  v46 = 0.0;
  do
  {
    if ([(NSMutableArray *)self->_horizontalAxis count]<= v38 || ([(NSMutableArray *)self->_horizontalAxis objectAtIndex:v38], (v47 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v47 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v42, v43, v44, v45}];
      [(NSMutableArray *)self->_horizontalAxis addObject:v47];
      [(PKSpendingSummaryChartView *)self addSubview:v47];
    }

    [v47 setHidden:0];
    if (v38)
    {
      v49 = [MEMORY[0x1E69DC888] systemGray5Color];
      [v47 setBackgroundColor:v49];
    }

    else
    {
      v48 = [MEMORY[0x1E69DC888] systemGray3Color];
      [v47 setBackgroundColor:v48];

      if ([(NSMutableArray *)self->_valueLabels count]<= v38 >> 1 || ([(NSMutableArray *)self->_valueLabels objectAtIndex:v38 >> 1], (v49 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v49 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v42, v43, v44, v45}];
        [v49 setNumberOfLines:1];
        [v49 setAdjustsFontSizeToFitWidth:1];
        [v49 setMinimumScaleFactor:0.5];
        [v49 setBaselineAdjustment:1];
        [v49 setFont:self->_fontForValues];
        v50 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v49 setTextColor:v50];

        [(NSMutableArray *)self->_valueLabels addObject:v49];
        [(PKSpendingSummaryChartView *)self addSubview:v49];
      }

      [v49 setHidden:self->_chartMaxAmount <= 0.0];
      if (v64)
      {
        v51 = [objc_alloc(MEMORY[0x1E696AB90]) initWithDouble:round(v46)];
        v52 = PKCurrencyAmountCreate(v51, v64);
        v53 = [v52 minimalFormattedStringValue];
        [v49 setText:v53];
      }

      else
      {
        [v49 setText:0];
      }

      if ((v38 >> 1) + 2 == v40)
      {
        v46 = self->_chartMaxAmount;
      }

      else
      {
        v46 = v41 + v46;
      }
    }

    ++v38;
  }

  while (v38 < self->_axisCount);
  for (i = [v65 count]; i < -[NSMutableArray count](self->_legendLabels, "count"); ++i)
  {
    v55 = [(NSMutableArray *)self->_legendLabels objectAtIndex:i];
    [v55 setHidden:1];

    v56 = [(NSMutableArray *)self->_bars objectAtIndex:i];
    [v56 setHidden:1];
  }

  for (j = self->_axisCount; j < [(NSMutableArray *)self->_horizontalAxis count]; ++j)
  {
    v58 = [(NSMutableArray *)self->_horizontalAxis objectAtIndex:j];
    [v58 setHidden:1];
  }

  while (v40 < [(NSMutableArray *)self->_valueLabels count])
  {
    v59 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v40];
    [v59 setHidden:1];

    ++v40;
  }

  [(PKSpendingSummaryChartView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v75.receiver = self;
  v75.super_class = PKSpendingSummaryChartView;
  [(PKSpendingSummaryChartView *)&v75 layoutSubviews];
  [(PKSpendingSummaryChartView *)self bounds];
  v4 = v3;
  v6 = v5;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v7;
  remainder.origin.y = v8;
  remainder.size.width = v3;
  remainder.size.height = v5;
  v9 = MEMORY[0x1E695F058];
  if (self->_showLegendGraph)
  {
    PKFloatRoundToPixel();
    CGRectDivide(remainder, &slice, &remainder, v10, CGRectMaxXEdge);
    height = remainder.size.height;
    x = slice.origin.x;
    width = slice.size.width;
    if (self->_isCompactUI)
    {
      v12 = 2.0;
    }

    else
    {
      v12 = 7.0;
    }

    v13 = remainder.origin.x;
    y = remainder.origin.y;
    v15 = remainder.size.width;
    CGRectDivide(*(&height - 3), &slice, &remainder, v12, CGRectMaxXEdge);
    if (self->_showLegendGraph)
    {
      CGRectDivide(remainder, &slice, &remainder, 8.0, CGRectMinYEdge);
    }
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    width = 0.0;
  }

  if (self->_showLegendLabels)
  {
    v16 = [(NSMutableArray *)self->_legendLabels firstObject];
    [v16 sizeThatFits:{v4, v6}];
    v18 = v17;

    CGRectDivide(remainder, &slice, &remainder, v18, CGRectMaxYEdge);
    v61 = slice.size.height;
    v62 = slice.size.width;
    CGRectDivide(remainder, &slice, &remainder, 7.0, CGRectMaxYEdge);
  }

  else
  {
    v61 = *(v9 + 24);
    v62 = *(v9 + 16);
  }

  v19 = remainder.size.height;
  v63 = remainder.size.width;
  v64 = remainder.origin.x;
  v56 = remainder.origin.y;
  CGRectGetMaxY(remainder);
  v59 = [(PKSpendingSummary *)self->_summary summaryType];
  v67 = [(PKSpendingSummary *)self->_summary spendingsPerCalendarUnit];
  v20 = [v67 count];
  if (self->_prioritizeLegendPlacement && self->_showLegendLabels)
  {
    v21 = [(NSMutableArray *)self->_legendLabels firstObject];
    [v21 sizeThatFits:{v62, v61}];

    v22 = [(NSMutableArray *)self->_legendLabels lastObject];
    [v22 sizeThatFits:{v62, v61}];
  }

  if (self->_showLegendGraph)
  {
    v23 = 5.0;
  }

  else
  {
    v23 = 0.0;
  }

  PKFloatRoundToPixel();
  v25 = v24;
  PKFloatRoundToPixel();
  v27 = v26;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v72[3] = 0;
  objc_initWeak(&location, self);
  presentationStyle = self->_presentationStyle;
  v66 = presentationStyle < 4;
  v58 = [(PKSpendingSummary *)self->_summary summaryType];
  if (v20)
  {
    v29 = 0;
    v30 = v25 / (v20 - 1);
    v31 = v27 + v23;
    v65 = 0xCu >> (presentationStyle & 0xF);
    v32 = v66 & (2u >> (presentationStyle & 0xF));
    do
    {
      if (self->_showLegendLabels)
      {
        v33 = [(NSMutableArray *)self->_legendLabels objectAtIndex:v29];
        [v33 sizeThatFits:{v62, v61}];
        PKFloatRoundToPixel();
        [v33 setFrame:?];
        v34 = v29 & 1;
        if ((v29 & 1) != 0 && v59 != 2)
        {
          v34 = v58 == 1 && self->_prioritizeLegendPlacement;
        }

        [v33 setHidden:v34];
      }

      v35 = [v67 objectAtIndex:v29];
      v36 = [[PKSpendingSummaryChartBarConfiguration alloc] initWithSummary:v35];
      v37 = [(NSMutableArray *)self->_bars objectAtIndex:v29];
      v38 = 0.0;
      if (self->_chartMaxAmount > 0.0)
      {
        [(PKSpendingSummaryChartBarConfiguration *)v36 totalValue];
        if (v39 > 0.0)
        {
          PKFloatRoundToPixel();
          v38 = v40;
        }

        [v37 minimumLength];
        v38 = fmax(fmin(v38, v19), v41);
      }

      PKFloatRoundToPixel();
      [v37 setFrame:?];
      v42 = [v37 layer];
      [v42 setOpacity:0.0];

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke;
      v68[3] = &unk_1E8021300;
      objc_copyWeak(v69, &location);
      v69[1] = v20;
      v70 = v32;
      v68[4] = self;
      v68[5] = v72;
      [v37 configureWithBarConfiguration:v36 axis:1 maximumLength:v66 & v65 barLength:v68 synchronous:v19 completion:v38];
      [(PKSpendingSummaryChartView *)self bringSubviewToFront:v37];
      v31 = v30 + v31;
      objc_destroyWeak(v69);

      ++v29;
    }

    while (v20 != v29);
  }

  PKFloatRoundToPixel();
  v44 = v43;
  v45 = PKUIPixelLength();
  if (self->_showLegendGraph && self->_axisCount)
  {
    v46 = v45;
    v47 = 0;
    v48 = v56 + v19;
    do
    {
      v49 = [(NSMutableArray *)self->_horizontalAxis objectAtIndex:v47];
      [v49 setFrame:{v64, v48 - v46, v63, v46}];
      if ((v47 & 1) == 0 && self->_chartMaxAmount > 0.0)
      {
        v50 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v47 >> 1];
        [v50 sizeThatFits:{width, 1.79769313e308}];
        v52 = v51;
        v54 = v53;
        PKFloatRoundToPixel();
        [v50 setFrame:{x + 2.0, v55, fmin(width, v52), v54}];
      }

      v48 = v48 - v44;

      ++v47;
    }

    while (v47 < self->_axisCount);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(v72, 8);
}

void __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
    {
      if (*(a1 + 64) == 1 && *(*(a1 + 32) + 510) == 1)
      {
        v3 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
      }

      else
      {
        v3 = 0;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke_2;
      v11[3] = &unk_1E80183C0;
      v11[4] = *(a1 + 32);
      [v3 setAnimationDelayHandler:v11];
      if (*(a1 + 56))
      {
        v4 = 0;
        do
        {
          v5 = [WeakRetained[54] objectAtIndex:v4];
          v6 = [v5 layer];
          [v6 opacity];
          if (*&v7 != 1.0)
          {
            v8 = *&v7;
            LODWORD(v7) = 1.0;
            [v6 setOpacity:v7];
            if (v3)
            {
              v9 = [v3 springAnimationForView:v5 withKeyPath:@"opacity"];
              [v9 pkui_updateForAdditiveAnimationFromScalar:v8 toScalar:1.0];
              v10 = [v6 pkui_addAdditiveAnimation:v9];
            }
          }

          ++v4;
        }

        while (v4 < *(a1 + 56));
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  PKFloatRoundToPixel();
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setShowLegendLabels:(BOOL)a3
{
  if (self->_showLegendLabels == !a3)
  {
    self->_showLegendLabels = a3;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setShowLegendGraph:(BOOL)a3
{
  if (self->_showLegendGraph == !a3)
  {
    self->_showLegendGraph = a3;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setShowPlaceholders:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showPlaceholders == !a3)
  {
    v3 = a3;
    self->_showPlaceholders = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_bars;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PKSpendingSummaryChartView *)self _configureBarView:*(*(&v10 + 1) + 8 * v9++) smallContext:v3, v10];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setPrioritizeLegendPlacementUI:(BOOL)a3
{
  if (self->_prioritizeLegendPlacement == !a3)
  {
    self->_prioritizeLegendPlacement = a3;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setBlurDisabled:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_blurDisabled == !a3)
  {
    v3 = a3;
    self->_blurDisabled = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_bars;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setBlurDisabled:{v3, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)_configureBarView:(id)a3 smallContext:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 setShowPlaceholder:v4];
  [v5 setUseSmallCornerRadius:v4];
  [v5 setRoundBaselineCorners:v4];
}

@end