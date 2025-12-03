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

    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:v3->_fontSize];
    v8 = [defaultMetrics scaledFontForFont:v7];

    fontDescriptor = [v8 fontDescriptor];
    v10 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
    [(UILabel *)v3->_badgeLabel setFont:v11];

    [(UILabel *)v3->_badgeLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_badgeLabel setNumberOfLines:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:whiteColor];

    [(UILabel *)v3->_badgeLabel setTextAlignment:1];
    [(UILabel *)v3->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PSUIBadgeView *)v3 addSubview:v3->_badgeLabel];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(PSUIBadgeView *)v3 setBackgroundColor:systemGrayColor];

    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:v3->_cornerRadius];
    v16 = v15;
    layer = [(PSUIBadgeView *)v3 layer];
    [layer setCornerRadius:v16];

    layer2 = [(PSUIBadgeView *)v3 layer];
    [layer2 setMasksToBounds:1];

    [(PSUIBadgeView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(PSUIBadgeView *)v3 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(PSUIBadgeView *)v3 setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(PSUIBadgeView *)v3 setContentHuggingPriority:0 forAxis:v21];
    widthAnchor = [(PSUIBadgeView *)v3 widthAnchor];
    heightAnchor = [(PSUIBadgeView *)v3 heightAnchor];
    v24 = [widthAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor multiplier:1.0];
    [v24 setActive:1];

    widthAnchor2 = [(PSUIBadgeView *)v3 widthAnchor];
    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics3 scaledValueForValue:13.0];
    v27 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:?];
    [v27 setActive:1];

    heightAnchor2 = [(PSUIBadgeView *)v3 heightAnchor];
    defaultMetrics4 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics4 scaledValueForValue:13.0];
    v30 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
    [v30 setActive:1];

    topAnchor = [(PSUIBadgeView *)v3 topAnchor];
    topAnchor2 = [(UILabel *)v3->_badgeLabel topAnchor];
    defaultMetrics5 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics5 scaledValueForValue:v3->_minPadding];
    v34 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
    [v34 setActive:1];

    trailingAnchor = [(PSUIBadgeView *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_badgeLabel trailingAnchor];
    defaultMetrics6 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics6 scaledValueForValue:v3->_minPadding];
    v38 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];
    [v38 setActive:1];

    leadingAnchor = [(UILabel *)v3->_badgeLabel leadingAnchor];
    leadingAnchor2 = [(PSUIBadgeView *)v3 leadingAnchor];
    defaultMetrics7 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics7 scaledValueForValue:v3->_minPadding];
    v42 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
    [v42 setActive:1];

    bottomAnchor = [(UILabel *)v3->_badgeLabel bottomAnchor];
    bottomAnchor2 = [(PSUIBadgeView *)v3 bottomAnchor];
    defaultMetrics8 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics8 scaledValueForValue:v3->_baseline];
    v46 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:?];
    [v46 setActive:1];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_badgeLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:self->_minPadding];
  v9 = v4 + v8 * 2.0;
  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:13.0];
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