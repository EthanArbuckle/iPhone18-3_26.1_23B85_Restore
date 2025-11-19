@interface PSUIBadgeView
- (CGSize)intrinsicContentSize;
- (PSUIBadgeView)init;
@end

@implementation PSUIBadgeView

- (PSUIBadgeView)init
{
  v48.receiver = self;
  v48.super_class = PSUIBadgeView;
  v2 = [(PSUIBadgeView *)&v48 init];
  v3 = v2;
  if (v2)
  {
    v2->_fontSize = 9.2;
    v2->_cornerRadius = 2.0;
    v2->_minPadding = 3.5;
    v2->_baseline = 3.2;
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgeLabel = v3->_badgeLabel;
    v3->_badgeLabel = v4;

    v6 = [MEMORY[0x277D75520] defaultMetrics];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:v3->_fontSize];
    v8 = [v6 scaledFontForFont:v7];

    v9 = [v8 fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits:2];

    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
    [(UILabel *)v3->_badgeLabel setFont:v11];

    [(UILabel *)v3->_badgeLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_badgeLabel setNumberOfLines:1];
    v12 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:v12];

    [(UILabel *)v3->_badgeLabel setTextAlignment:1];
    [(UILabel *)v3->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PSUIBadgeView *)v3 addSubview:v3->_badgeLabel];
    v13 = [MEMORY[0x277D75348] systemGrayColor];
    [(PSUIBadgeView *)v3 setBackgroundColor:v13];

    v14 = [MEMORY[0x277D75520] defaultMetrics];
    [v14 scaledValueForValue:v3->_cornerRadius];
    v16 = v15;
    v17 = [(PSUIBadgeView *)v3 layer];
    [v17 setCornerRadius:v16];

    v18 = [(PSUIBadgeView *)v3 layer];
    [v18 setMasksToBounds:1];

    [(PSUIBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(PSUIBadgeView *)v3 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(PSUIBadgeView *)v3 setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(PSUIBadgeView *)v3 setContentHuggingPriority:0 forAxis:v21];
    v22 = [(PSUIBadgeView *)v3 widthAnchor];
    v23 = [(PSUIBadgeView *)v3 heightAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 multiplier:1.0];
    [v24 setActive:1];

    v25 = [(PSUIBadgeView *)v3 widthAnchor];
    v26 = [MEMORY[0x277D75520] defaultMetrics];
    [v26 scaledValueForValue:13.0];
    v27 = [v25 constraintGreaterThanOrEqualToConstant:?];
    [v27 setActive:1];

    v28 = [(PSUIBadgeView *)v3 heightAnchor];
    v29 = [MEMORY[0x277D75520] defaultMetrics];
    [v29 scaledValueForValue:13.0];
    v30 = [v28 constraintGreaterThanOrEqualToConstant:?];
    [v30 setActive:1];

    v31 = [(PSUIBadgeView *)v3 topAnchor];
    v32 = [(UILabel *)v3->_badgeLabel topAnchor];
    v33 = [MEMORY[0x277D75520] defaultMetrics];
    [v33 scaledValueForValue:v3->_minPadding];
    v34 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:?];
    [v34 setActive:1];

    v35 = [(PSUIBadgeView *)v3 trailingAnchor];
    v36 = [(UILabel *)v3->_badgeLabel trailingAnchor];
    v37 = [MEMORY[0x277D75520] defaultMetrics];
    [v37 scaledValueForValue:v3->_minPadding];
    v38 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:?];
    [v38 setActive:1];

    v39 = [(UILabel *)v3->_badgeLabel leadingAnchor];
    v40 = [(PSUIBadgeView *)v3 leadingAnchor];
    v41 = [MEMORY[0x277D75520] defaultMetrics];
    [v41 scaledValueForValue:v3->_minPadding];
    v42 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:?];
    [v42 setActive:1];

    v43 = [(UILabel *)v3->_badgeLabel bottomAnchor];
    v44 = [(PSUIBadgeView *)v3 bottomAnchor];
    v45 = [MEMORY[0x277D75520] defaultMetrics];
    [v45 scaledValueForValue:v3->_baseline];
    v46 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:?];
    [v46 setActive:1];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_badgeLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75520] defaultMetrics];
  [v7 scaledValueForValue:self->_minPadding];
  v9 = v4 + v8 * 2.0;
  v10 = [MEMORY[0x277D75520] defaultMetrics];
  [v10 scaledValueForValue:13.0];
  v12 = v11;

  if (v6 < v12)
  {
    v6 = v12;
  }

  v13 = v9;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

@end