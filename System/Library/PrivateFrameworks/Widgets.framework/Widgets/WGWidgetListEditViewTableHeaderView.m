@interface WGWidgetListEditViewTableHeaderView
- (CGRect)_explanationLabelFrameForBoundsWidth:(double)a3 withHeadlineLabelFrame:(CGRect)a4;
- (CGRect)_headlineLabelFrameForBoundsWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WGWidgetListEditViewTableHeaderView)initWithReuseIdentifier:(id)a3 forTodayView:(BOOL)a4;
- (double)contentMinY;
- (void)layoutSubviews;
@end

@implementation WGWidgetListEditViewTableHeaderView

- (WGWidgetListEditViewTableHeaderView)initWithReuseIdentifier:(id)a3 forTodayView:(BOOL)a4
{
  v4 = a4;
  v31.receiver = self;
  v31.super_class = WGWidgetListEditViewTableHeaderView;
  v5 = [(WGWidgetListEditViewTableHeaderView *)&v31 initWithReuseIdentifier:a3];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    headlineLabel = v5->_headlineLabel;
    v5->_headlineLabel = v6;

    [(UILabel *)v5->_headlineLabel setNumberOfLines:0];
    [(UILabel *)v5->_headlineLabel setTextAlignment:1];
    v8 = v5->_headlineLabel;
    v9 = [MEMORY[0x277D74300] bsui_preferredFontForTextStyle:*MEMORY[0x277D76A08] hiFontStyle:4];
    [(UILabel *)v8 setFont:v9];

    v10 = v5->_headlineLabel;
    if (v4)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"WIDGETS_EDIT_TODAY_HEADLINE";
    }

    else
    {
      v14 = _os_feature_enabled_impl();
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      if (v14)
      {
        v13 = @"WIDGETS_EDIT_HEADLINE_LEGACY";
      }

      else
      {
        v13 = @"WIDGETS_EDIT_HEADLINE";
      }
    }

    v15 = [v11 localizedStringForKey:v13 value:&stru_2883435D8 table:@"Widgets"];
    [(UILabel *)v10 setText:v15];

    v16 = v5->_headlineLabel;
    v17 = [MEMORY[0x277D75348] _labelColor];
    [(UILabel *)v16 setTextColor:v17];

    [(WGWidgetListEditViewTableHeaderView *)v5 addSubview:v5->_headlineLabel];
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    explanationLabel = v5->_explanationLabel;
    v5->_explanationLabel = v18;

    [(UILabel *)v5->_explanationLabel setNumberOfLines:0];
    [(UILabel *)v5->_explanationLabel setTextAlignment:1];
    v20 = v5->_explanationLabel;
    v21 = [MEMORY[0x277D74300] bsui_preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
    [(UILabel *)v20 setFont:v21];

    v22 = v5->_explanationLabel;
    if (v4)
    {
      v23 = _os_feature_enabled_impl();
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      if (v23)
      {
        v26 = @"WIDGETS_EDIT_TODAY_EXPLANATION_LEGACY";
      }

      else
      {
        v26 = @"WIDGETS_EDIT_TODAY_EXPLANATION";
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      v26 = @"WIDGETS_EDIT_EXPLANATION";
    }

    v27 = [v24 localizedStringForKey:v26 value:&stru_2883435D8 table:@"Widgets"];
    [(UILabel *)v22 setText:v27];

    v28 = v5->_explanationLabel;
    v29 = [MEMORY[0x277D75348] _labelColor];
    [(UILabel *)v28 setTextColor:v29];

    [(WGWidgetListEditViewTableHeaderView *)v5 addSubview:v5->_explanationLabel];
  }

  return v5;
}

- (double)contentMinY
{
  [(WGWidgetListEditViewTableHeaderView *)self layoutIfNeeded];
  headlineLabel = self->_headlineLabel;
  [(UILabel *)headlineLabel bounds];
  [(UILabel *)headlineLabel textRectForBounds:[(UILabel *)self->_headlineLabel numberOfLines] limitedToNumberOfLines:v4, v5, v6, v7];
  [(WGWidgetListEditViewTableHeaderView *)self convertRect:self->_headlineLabel fromView:?];

  return CGRectGetMinY(*&v8);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(WGWidgetListEditViewTableHeaderView *)self _headlineLabelFrameForBoundsWidth:a3.width, a3.height];
  [(WGWidgetListEditViewTableHeaderView *)self _explanationLabelFrameForBoundsWidth:width withHeadlineLabelFrame:v5, v6, v7, v8];
  MaxY = CGRectGetMaxY(v12);
  v10 = width;
  result.height = MaxY;
  result.width = v10;
  return result;
}

- (CGRect)_headlineLabelFrameForBoundsWidth:(double)a3
{
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = a3 + -60.0;
  [(UILabel *)self->_headlineLabel sizeThatFits:a3 + -60.0, 1.79769313e308];
  [(UILabel *)self->_headlineLabel setFrame:30.0, v4, v5, v6];
  v7 = [(UILabel *)self->_headlineLabel font];
  [v7 _scaledValueForValue:43.0];
  [(UILabel *)self->_headlineLabel _firstLineBaselineOffsetFromBoundsTop];

  _WGMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_explanationLabelFrameForBoundsWidth:(double)a3 withHeadlineLabelFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v37 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = a3 + -60.0;
  [(UILabel *)self->_explanationLabel sizeThatFits:a3 + -60.0, 1.79769313e308];
  v9 = v8;
  v10 = [(UILabel *)self->_explanationLabel font];
  [v10 _scaledValueForValue:27.0];
  v12 = v11;
  v13 = [(UILabel *)self->_explanationLabel font];
  [v13 descender];
  v15 = v9 + v12 + v14;

  headlineLabel = self->_headlineLabel;
  BSRectWithSize();
  [(UILabel *)headlineLabel textRectForBounds:[(UILabel *)self->_headlineLabel numberOfLines] limitedToNumberOfLines:v17, v18, v19, v20];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMaxY(v39);
  v40.origin.x = v22;
  v40.origin.y = v24;
  v40.size.width = v26;
  v40.size.height = v28;
  CGRectGetMaxY(v40);
  v41.origin.x = v22;
  v41.origin.y = v24;
  v41.size.width = v26;
  v41.size.height = v28;
  CGRectGetHeight(v41);
  v29 = [(UILabel *)self->_explanationLabel font];
  [v29 descender];

  [(UILabel *)self->_explanationLabel setFrame:30.0, v37, v7, v15];
  v30 = [(UILabel *)self->_explanationLabel font];
  [v30 _scaledValueForValue:26.0];
  [(UILabel *)self->_explanationLabel _firstLineBaselineOffsetFromBoundsTop];

  _WGMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = WGWidgetListEditViewTableHeaderView;
  [(WGWidgetListEditViewTableHeaderView *)&v15 layoutSubviews];
  [(WGWidgetListEditViewTableHeaderView *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [(WGWidgetListEditViewTableHeaderView *)self _headlineLabelFrameForBoundsWidth:CGRectGetWidth(v16)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UILabel *)self->_headlineLabel setFrame:?];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(WGWidgetListEditViewTableHeaderView *)self _explanationLabelFrameForBoundsWidth:CGRectGetWidth(v17) withHeadlineLabelFrame:v8, v10, v12, v14];
  [(UILabel *)self->_explanationLabel setFrame:?];
}

@end