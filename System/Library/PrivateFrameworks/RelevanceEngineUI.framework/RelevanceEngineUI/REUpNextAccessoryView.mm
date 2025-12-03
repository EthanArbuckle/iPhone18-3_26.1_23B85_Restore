@interface REUpNextAccessoryView
+ (void)initialize;
- (REUpNextAccessoryView)initWithFrame:(CGRect)frame;
- (void)configureWithDescription:(id)description;
@end

@implementation REUpNextAccessoryView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_0_1 = 0x4030800000000000;
    kActiveLayout_2_1 = 0x400C000000000000;
    kActiveLayout_1_1 = 0x4000000000000000;
  }
}

- (REUpNextAccessoryView)initWithFrame:(CGRect)frame
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = REUpNextAccessoryView;
  v3 = [(REUpNextAccessoryView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_0_1 weight:*MEMORY[0x277D74410]];
    v5 = objc_alloc(MEMORY[0x277CFA760]);
    v6 = [v5 initWithFrame:0 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    v28 = v4;
    [(CLKUIColoringLabel *)v3->_label setFont:v4];
    [(CLKUIColoringLabel *)v3->_label setNowProvider:&__block_literal_global_2];
    v8 = v3->_label;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v8 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_label setNumberOfLines:1];
    LODWORD(v10) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentHuggingPriority:1 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentHuggingPriority:0 forAxis:v13];
    layer = [(REUpNextAccessoryView *)v3 layer];
    [layer setCornerRadius:*&kActiveLayout_1_1];

    layer2 = [(REUpNextAccessoryView *)v3 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [(REUpNextAccessoryView *)v3 addSubview:v3->_label];
    leadingAnchor = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(REUpNextAccessoryView *)v3 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_2_1];
    v34[0] = v30;
    trailingAnchor = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [(REUpNextAccessoryView *)v3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&kActiveLayout_2_1];
    v34[1] = v17;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    bottomAnchor = [(REUpNextAccessoryView *)v3 bottomAnchor];
    v20 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-*&kActiveLayout_2_1];
    v34[2] = v20;
    topAnchor = [(REUpNextAccessoryView *)v3 topAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    [v4 capHeight];
    v24 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:-(v23 + *&kActiveLayout_2_1)];
    v34[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)configureWithDescription:(id)description
{
  descriptionCopy = description;
  if (([(REAccessoryDescription *)self->_accessoryDescription isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryDescription, description);
    label = self->_label;
    textProvider = [(REAccessoryDescription *)self->_accessoryDescription textProvider];
    [(CLKUIColoringLabel *)label setTextProvider:textProvider];

    backgroundColor = [(REAccessoryDescription *)self->_accessoryDescription backgroundColor];
    [(REUpNextAccessoryView *)self setBackgroundColor:backgroundColor];
  }
}

@end