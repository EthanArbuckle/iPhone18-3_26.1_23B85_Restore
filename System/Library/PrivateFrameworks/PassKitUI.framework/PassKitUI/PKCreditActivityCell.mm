@interface PKCreditActivityCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCreditActivityCell)initWithFrame:(CGRect)frame;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)setRewardsSummary:(id)summary;
- (void)setRewardsSummaryFont:(id)font;
- (void)setRewardsSummaryTextColor:(id)color;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
@end

@implementation PKCreditActivityCell

- (PKCreditActivityCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKCreditActivityCell;
  v3 = [(PKDashboardCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    [(PKCreditActivityCell *)v3 _createSubviews];
  }

  return v3;
}

- (void)_createSubviews
{
  contentView = [(PKCreditActivityCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelTitle = self->_labelTitle;
  self->_labelTitle = v3;

  [(UILabel *)self->_labelTitle setNumberOfLines:1];
  [(UILabel *)self->_labelTitle setAdjustsFontSizeToFitWidth:1];
  v5 = self->_labelTitle;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v5 setTextColor:labelColor];

  [(UILabel *)self->_labelTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [contentView addSubview:self->_labelTitle];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelRewardsSummary = self->_labelRewardsSummary;
  self->_labelRewardsSummary = v7;

  [(UILabel *)self->_labelRewardsSummary setNumberOfLines:1];
  [(UILabel *)self->_labelRewardsSummary setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_labelRewardsSummary setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [contentView addSubview:self->_labelRewardsSummary];
  v9 = [PKSpendingSummaryChartView alloc];
  v10 = [(PKSpendingSummaryChartView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  chartView = self->_chartView;
  self->_chartView = v10;

  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendGraph:0];
  [(PKSpendingSummaryChartView *)self->_chartView setShowPlaceholders:1];
  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendLabels:0];
  [contentView addSubview:self->_chartView];
  [(PKCreditActivityCell *)self setAccessibilityIdentifier:*MEMORY[0x1E69B93E0]];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_labelTitle font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelTitle setFont:fontCopy];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }
}

- (void)setRewardsSummaryFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_labelRewardsSummary font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelRewardsSummary setFont:fontCopy];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PKCreditActivityCell;
  [(PKDashboardCollectionViewCell *)&v21 layoutSubviews];
  v3 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v3 = 16.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = 12.0;
  }

  else
  {
    v4 = 8.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = 16.0;
  }

  else
  {
    v5 = 8.0;
  }

  [(PKCreditActivityCell *)self bounds];
  v7 = v3 + v6;
  v9 = v4 + v8;
  v11 = v10 - (v3 + v3);
  v13 = v12 - (v4 + v5);
  [(PKCreditActivityCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  v19.size.width = v11;
  v19.size.height = v13;
  [(UILabel *)self->_labelTitle sizeThatFits:v11, v13, *&v7, *&v9];
  v15 = v14 + 0.0;
  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  CGRectDivide(v22, &slice, &v19, v15, CGRectMinYEdge);
  labelTitle = self->_labelTitle;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)labelTitle setFrame:?];
  [(UILabel *)self->_labelRewardsSummary sizeThatFits:v19.size.width, v19.size.height];
  v23 = v19;
  CGRectDivide(v19, &slice, &v19, v23.origin.y + 7.0, CGRectMinYEdge);
  labelRewardsSummary = self->_labelRewardsSummary;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)labelRewardsSummary setFrame:?];
  if (self->_useAccessibilityLayout)
  {
    PKFloatRoundToPixel();
  }

  chartView = self->_chartView;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(PKSpendingSummaryChartView *)chartView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v6 = 16.0;
    }

    else
    {
      v6 = 12.0;
    }
  }

  v7 = _UISolariumFeatureFlagEnabled();
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = width + v6 * -2.0;
  v10 = v9;
  if (self->_useAccessibilityLayout)
  {
    PKFloatRoundToPixel();
    v10 = v11;
  }

  v12 = 8.0;
  v13 = 16.0;
  if (!v8)
  {
    v13 = 8.0;
  }

  if (v7)
  {
    v12 = 12.0;
  }

  v14 = v12 + v13;
  [(UILabel *)self->_labelTitle sizeThatFits:v9, height];
  v16 = v14 + v15 + 7.0;
  [(UILabel *)self->_labelRewardsSummary sizeThatFits:v9, height];
  v18 = v16 + v17 + 7.0;
  [(PKSpendingSummaryChartView *)self->_chartView sizeThatFits:v10, height];
  v20 = v18 + v19;
  v21 = width;
  result.height = v20;
  result.width = v21;
  return result;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v9 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !titleCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:titleCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_title, title);
    [(UILabel *)self->_labelTitle setText:self->_title];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setRewardsSummary:(id)summary
{
  summaryCopy = summary;
  rewardsSummary = self->_rewardsSummary;
  v9 = summaryCopy;
  v7 = rewardsSummary;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_rewardsSummary, summary);
    [(UILabel *)self->_labelRewardsSummary setText:self->_rewardsSummary];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setRewardsSummaryTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_labelRewardsSummary textColor];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelRewardsSummary setTextColor:colorCopy];
  }
}

@end