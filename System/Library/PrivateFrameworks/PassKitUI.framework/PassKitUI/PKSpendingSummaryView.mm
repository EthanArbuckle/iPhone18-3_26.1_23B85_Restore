@interface PKSpendingSummaryView
- (BOOL)_needsLayoutWithSummary:(id)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSpendingSummaryView)initWithFrame:(CGRect)a3;
- (id)_trendDescriptionForSummary:(id)a3;
- (void)_createSubviews;
- (void)configureWithSummary:(id)a3 presentationStyle:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)a3;
@end

@implementation PKSpendingSummaryView

- (PKSpendingSummaryView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKSpendingSummaryView;
  v3 = [(PKSpendingSummaryView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKSpendingSummaryView *)v3 _createSubviews];
    v5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKSpendingSummaryView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)_createSubviews
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  totalAmount = self->_totalAmount;
  self->_totalAmount = v9;

  [(UILabel *)self->_totalAmount setNumberOfLines:1];
  [(UILabel *)self->_totalAmount setTextColor:v3];
  v11 = self->_totalAmount;
  v12 = *MEMORY[0x1E69DDC70];
  v13 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC70], 2, 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)v11 setFont:v13];

  [(UILabel *)self->_totalAmount setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [(PKSpendingSummaryView *)self addSubview:self->_totalAmount];
  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  spendingLabel = self->_spendingLabel;
  self->_spendingLabel = v14;

  [(UILabel *)self->_spendingLabel setNumberOfLines:1];
  v16 = self->_spendingLabel;
  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v16 setTextColor:v17];

  v18 = self->_spendingLabel;
  v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v12, 0x8000, 0);
  [(UILabel *)v18 setFont:v19];

  v20 = self->_spendingLabel;
  v21 = PKLocalizedFeatureString();
  [(UILabel *)v20 setText:v21];

  [(UILabel *)self->_spendingLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [(PKSpendingSummaryView *)self addSubview:self->_spendingLabel];
  v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
  arrowImageView = self->_arrowImageView;
  self->_arrowImageView = v22;

  [(UIImageView *)self->_arrowImageView setContentMode:4];
  [(PKSpendingSummaryView *)self addSubview:self->_arrowImageView];
  v24 = MEMORY[0x1E69DCAD8];
  v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v12, *MEMORY[0x1E69DB978]);
  v26 = [v24 configurationWithFont:v25];

  v27 = MEMORY[0x1E69DCAD8];
  v28 = [MEMORY[0x1E69DC888] labelColor];
  v40[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v30 = [v27 configurationWithPaletteColors:v29];
  v31 = [v26 configurationByApplyingConfiguration:v30];

  v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.fill" withConfiguration:v31];
  upArrow = self->_upArrow;
  self->_upArrow = v32;

  v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle.fill" withConfiguration:v31];
  downArrow = self->_downArrow;
  self->_downArrow = v34;

  v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  trendDescriptionLabel = self->_trendDescriptionLabel;
  self->_trendDescriptionLabel = v36;

  [(UILabel *)self->_trendDescriptionLabel setNumberOfLines:0];
  [(PKSpendingSummaryView *)self addSubview:self->_trendDescriptionLabel];
  v38 = [[PKSpendingSummaryChartView alloc] initWithFrame:v5, v6, v7, v8];
  chartView = self->_chartView;
  self->_chartView = v38;

  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendGraph:1];
  [(PKSpendingSummaryChartView *)self->_chartView setShowPlaceholders:0];
  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendLabels:1];
  [(PKSpendingSummaryView *)self addSubview:self->_chartView];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSpendingSummaryView;
  [(PKSpendingSummaryView *)&v3 layoutSubviews];
  [(PKSpendingSummaryView *)self bounds];
  [(PKSpendingSummaryView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKSpendingSummaryView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  width = a3.size.width;
  v5 = a3.origin.x + 12.0;
  v6 = a3.origin.y + 13.0;
  v7 = a3.size.height + -20.0;
  if ([(PKSpendingSummaryView *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v5;
  remainder.origin.y = v6;
  remainder.size.width = width + -24.0;
  remainder.size.height = v7;
  [(UILabel *)self->_spendingLabel sizeThatFits:width + -24.0, v7];
  v10 = v9;
  v32.origin.x = v5;
  v32.origin.y = v6;
  v32.size.width = width + -24.0;
  v32.size.height = v7;
  CGRectDivide(v32, &slice, &remainder, v10, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    spendingLabel = self->_spendingLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)spendingLabel setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, 0.0, CGRectMinYEdge);
  v12 = v10 + 0.0;
  [(UILabel *)self->_totalAmount sizeThatFits:remainder.size.width, remainder.size.height];
  v14 = v13;
  v16 = v15;
  CGRectDivide(remainder, &slice, &remainder, v15, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    totalAmount = self->_totalAmount;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)totalAmount setFrame:?];
    if (([(UIImageView *)self->_arrowImageView isHidden]& 1) == 0)
    {
      memset(&v28, 0, sizeof(v28));
      memset(&v27, 0, sizeof(v27));
      CGRectDivide(slice, &v28, &v27, v14 + 8.0, v8);
      arrowImageView = self->_arrowImageView;
      [(UIImageView *)arrowImageView intrinsicContentSize];
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIImageView *)arrowImageView setFrame:?];
    }
  }

  v19 = v12 + 13.0;
  if (([(UILabel *)self->_trendDescriptionLabel isHidden]& 1) == 0)
  {
    CGRectDivide(remainder, &slice, &remainder, 8.0, CGRectMinYEdge);
    [(UILabel *)self->_trendDescriptionLabel sizeThatFits:remainder.size.width, 3.40282347e38];
    v21 = v20;
    CGRectDivide(remainder, &slice, &remainder, v20, CGRectMinYEdge);
    v19 = v19 + v16 + 8.0 + v21;
    if (!self->_isTemplateLayout)
    {
      trendDescriptionLabel = self->_trendDescriptionLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)trendDescriptionLabel setFrame:?];
    }
  }

  CGRectDivide(remainder, &slice, &remainder, 8.0, CGRectMinYEdge);
  [(PKSpendingSummaryChartView *)self->_chartView sizeThatFits:remainder.size.width, 3.40282347e38];
  v24 = v23;
  CGRectDivide(remainder, &slice, &remainder, v23, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(PKSpendingSummaryChartView *)self->_chartView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    [(PKSpendingSummaryChartView *)self->_chartViewToFadeOut setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v25 = v19 + 8.0 + v24 + 7.0;
  v26 = width;
  result.height = v25;
  result.width = v26;
  return result;
}

- (BOOL)_needsLayoutWithSummary:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [(PKSpendingSummary *)self->_summary startDate];
  if (!PKEqualObjects())
  {
    goto LABEL_6;
  }

  v7 = [v4 totalSpending];
  v8 = [(PKSpendingSummary *)self->_summary totalSpending];
  if (!PKEqualObjects() || (v9 = [v4 summaryType], v9 != -[PKSpendingSummary summaryType](self->_summary, "summaryType")) || (objc_msgSend(v4, "isLoading") & 1) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v12 = [(PKSpendingSummary *)self->_summary isLoading];

  if (v12)
  {
    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

LABEL_7:
  v10 = PKEqualObjects() ^ 1;
LABEL_8:

  return v10;
}

- (void)configureWithSummary:(id)a3 presentationStyle:(unint64_t)a4
{
  v7 = a3;
  if ([(PKSpendingSummaryView *)self _needsLayoutWithSummary:v7])
  {
    if (a4 == 2)
    {
      objc_storeStrong(&self->_chartViewToFadeOut, self->_chartView);
      v8 = [PKSpendingSummaryChartView alloc];
      v9 = [(PKSpendingSummaryChartView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      chartView = self->_chartView;
      self->_chartView = v9;

      [(PKSpendingSummaryChartView *)self->_chartView setShowLegendGraph:1];
      [(PKSpendingSummaryChartView *)self->_chartView setShowPlaceholders:0];
      [(PKSpendingSummaryChartView *)self->_chartView setShowLegendLabels:1];
      v11 = self->_chartView;
      [(PKSpendingSummaryChartView *)self->_chartViewToFadeOut frame];
      [(PKSpendingSummaryChartView *)v11 setFrame:?];
      [(PKSpendingSummaryView *)self insertSubview:self->_chartView belowSubview:self->_chartViewToFadeOut];
      v12 = [(PKSpendingSummaryChartView *)self->_chartView layer];
      v13 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v13 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:1.0];
      v14 = [v12 pkui_addAdditiveAnimation:v13];
      LODWORD(v15) = 1.0;
      [v12 setOpacity:v15];
      v16 = [(PKSpendingSummaryChartView *)self->_chartViewToFadeOut layer];
      v17 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v13 pkui_updateForAdditiveAnimationFromScalar:1.0 toScalar:0.0];
      v18 = [v16 pkui_addAdditiveAnimation:v17];
      [v16 setOpacity:0.0];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __64__PKSpendingSummaryView_configureWithSummary_presentationStyle___block_invoke;
      v45[3] = &unk_1E8011D28;
      v45[4] = self;
      [v17 pkui_setCompletionHandler:v45];
    }

    objc_storeStrong(&self->_summary, a3);
    v19 = [v7 totalSpending];

    if (!v19)
    {
      [(UILabel *)self->_totalAmount setText:@"-"];
      [(UIImageView *)self->_arrowImageView setHidden:1];
      [(UILabel *)self->_trendDescriptionLabel setHidden:1];
      goto LABEL_14;
    }

    v20 = [v7 totalSpending];
    totalAmount = self->_totalAmount;
    v22 = [v20 formattedStringValue];
    [(UILabel *)totalAmount setText:v22];

    v23 = [v7 insights];
    [(UIImageView *)self->_arrowImageView setHidden:1];
    [(UILabel *)self->_trendDescriptionLabel setHidden:1];
    if (v23)
    {
      v24 = [v23 overallSpendingTrend];
      v25 = [v24 direction] - 2;
      if (v25 <= 3)
      {
        v26 = off_1E8015670[v25];
        [(UIImageView *)self->_arrowImageView setHidden:0];
        [(UIImageView *)self->_arrowImageView setImage:*(&self->super.super.super.isa + *v26)];
      }

      v27 = [v24 direction];
      if ((v27 - 1) >= 5)
      {
        if (v27)
        {
          goto LABEL_11;
        }

        trendDescriptionLabel = self->_trendDescriptionLabel;
        v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)trendDescriptionLabel setTextColor:v29];
        v30 = 0;
      }

      else
      {
        v28 = self->_trendDescriptionLabel;
        v29 = [MEMORY[0x1E69DC888] labelColor];
        [(UILabel *)v28 setTextColor:v29];
        v30 = 2;
      }

      v31 = self->_trendDescriptionLabel;
      v32 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], v30, 0);
      [(UILabel *)v31 setFont:v32];

LABEL_11:
      [(UILabel *)self->_trendDescriptionLabel setHidden:0];
      v33 = self->_trendDescriptionLabel;
      v34 = [(PKSpendingSummaryView *)self _trendDescriptionForSummary:v7];
      [(UILabel *)v33 setText:v34];
      goto LABEL_12;
    }

    v24 = [v20 amount];
    v35 = [v7 previousTotalSpending];
    v34 = [v35 amount];

    if (!v34 || ([v7 isCurrentPeriod] & 1) != 0)
    {
      goto LABEL_12;
    }

    v36 = [MEMORY[0x1E696AB90] zero];
    if ([v24 compare:v36] != 1)
    {

      goto LABEL_12;
    }

    v37 = [MEMORY[0x1E696AB90] zero];
    v44 = [v34 compare:v37];

    if (v44 != 1)
    {
LABEL_12:

LABEL_14:
      [(PKSpendingSummaryChartView *)self->_chartView configureWithSummary:v7 presentationStyle:a4, v44];
      [(PKSpendingSummaryView *)self setNeedsLayout];
      goto LABEL_15;
    }

    v38 = [v34 compare:v24];
    if (v38 == -1)
    {
      arrowImageView = self->_arrowImageView;
      v43 = 424;
    }

    else
    {
      if (v38 != 1)
      {
        if (v38)
        {
          goto LABEL_12;
        }

        v39 = self->_arrowImageView;
        v40 = 1;
LABEL_30:
        [(UIImageView *)v39 setHidden:v40, v44];
        goto LABEL_12;
      }

      arrowImageView = self->_arrowImageView;
      v43 = 432;
    }

    [(UIImageView *)arrowImageView setImage:*(&self->super.super.super.isa + v43), 1];
    v39 = self->_arrowImageView;
    v40 = 0;
    goto LABEL_30;
  }

LABEL_15:
}

void __64__PKSpendingSummaryView_configureWithSummary_presentationStyle___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 464) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 464);
  *(v2 + 464) = 0;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible == !a3)
  {
    v4 = a3;
    self->_visible = a3;
    [(PKSpendingSummaryChartView *)self->_chartView setVisible:?];
    chartViewToFadeOut = self->_chartViewToFadeOut;

    [(PKSpendingSummaryChartView *)chartViewToFadeOut setVisible:v4];
  }
}

- (id)_trendDescriptionForSummary:(id)a3
{
  v3 = a3;
  v4 = [v3 insights];
  v5 = [v4 overallSpendingTrend];

  if (!v5)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v6 = [v3 summaryType];
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E8015690[v6];
  }

  v9 = [v3 isCurrentPeriod];
  v10 = [v5 direction];
  v8 = 0;
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v14 = v9 == 0;
      if (v9)
      {
        v15 = @"_LAST";
      }

      else
      {
        v15 = @"_PREVIOUS";
      }

      v16 = @"ACCOUNT_INSIGHT_TREND_INCREASING_PREVIOUS_PERIOD";
      v17 = @"ACCOUNT_INSIGHT_TREND_INCREASING_CURRENT_PERIOD";
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_37;
      }

      v14 = v9 == 0;
      if (v9)
      {
        v15 = @"_LAST";
      }

      else
      {
        v15 = @"_PREVIOUS";
      }

      v16 = @"ACCOUNT_INSIGHT_TREND_DECREASING_PREVIOUS_PERIOD";
      v17 = @"ACCOUNT_INSIGHT_TREND_DECREASING_CURRENT_PERIOD";
    }

    if (v14)
    {
      v12 = v16;
    }

    else
    {
      v12 = v17;
    }

    v7 = [(__CFString *)v7 stringByAppendingString:v15];
    if ([v3 isFamilySummary])
    {
      v12 = [(__CFString *)v12 stringByAppendingString:@"_FAMILY"];
    }

    v13 = PKLocalizedFeatureString();
    v18 = [v5 amountChange];
    v20 = [v18 formattedStringValue];
    v8 = PKLocalizedFeatureString();

    goto LABEL_35;
  }

  if ((v10 - 1) < 3)
  {
    if (v9)
    {
      v11 = @"_LAST";
    }

    else
    {
      v11 = @"_PREVIOUS";
    }

    if (v9)
    {
      v12 = @"ACCOUNT_INSIGHT_TREND_STEADY_CURRENT_PERIOD";
    }

    else
    {
      v12 = @"ACCOUNT_INSIGHT_TREND_STEADY_PREVIOUS_PERIOD";
    }

    v7 = [(__CFString *)v7 stringByAppendingString:v11];
    if ([v3 isFamilySummary])
    {
      v12 = [(__CFString *)v12 stringByAppendingString:@"_FAMILY"];
    }

    v13 = PKLocalizedFeatureString();
    v8 = PKLocalizedFeatureString();
LABEL_35:

    goto LABEL_36;
  }

  if (!v10)
  {
    v7 = [(__CFString *)v7 stringByAppendingString:@"_THIS"];
    v12 = PKLocalizedFeatureString();
    v8 = PKLocalizedFeatureString();
LABEL_36:
  }

LABEL_37:

LABEL_38:

  return v8;
}

@end