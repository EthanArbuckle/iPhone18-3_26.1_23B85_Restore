@interface REUpNextAccessoryView
+ (void)initialize;
- (REUpNextAccessoryView)initWithFrame:(CGRect)a3;
- (void)configureWithDescription:(id)a3;
@end

@implementation REUpNextAccessoryView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kActiveLayout_0_1 = 0x4030800000000000;
    kActiveLayout_2_1 = 0x400C000000000000;
    kActiveLayout_1_1 = 0x4000000000000000;
  }
}

- (REUpNextAccessoryView)initWithFrame:(CGRect)a3
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = REUpNextAccessoryView;
  v3 = [(REUpNextAccessoryView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v8 setTextColor:v9];

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
    v14 = [(REUpNextAccessoryView *)v3 layer];
    [v14 setCornerRadius:*&kActiveLayout_1_1];

    v15 = [(REUpNextAccessoryView *)v3 layer];
    [v15 setCornerCurve:*MEMORY[0x277CDA138]];

    [(REUpNextAccessoryView *)v3 addSubview:v3->_label];
    v32 = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    v31 = [(REUpNextAccessoryView *)v3 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:*&kActiveLayout_2_1];
    v34[0] = v30;
    v29 = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    v16 = [(REUpNextAccessoryView *)v3 trailingAnchor];
    v17 = [v29 constraintEqualToAnchor:v16 constant:-*&kActiveLayout_2_1];
    v34[1] = v17;
    v18 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    v19 = [(REUpNextAccessoryView *)v3 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-*&kActiveLayout_2_1];
    v34[2] = v20;
    v21 = [(REUpNextAccessoryView *)v3 topAnchor];
    v22 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    [v4 capHeight];
    v24 = [v21 constraintEqualToAnchor:v22 constant:-(v23 + *&kActiveLayout_2_1)];
    v34[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)configureWithDescription:(id)a3
{
  v8 = a3;
  if (([(REAccessoryDescription *)self->_accessoryDescription isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryDescription, a3);
    label = self->_label;
    v6 = [(REAccessoryDescription *)self->_accessoryDescription textProvider];
    [(CLKUIColoringLabel *)label setTextProvider:v6];

    v7 = [(REAccessoryDescription *)self->_accessoryDescription backgroundColor];
    [(REUpNextAccessoryView *)self setBackgroundColor:v7];
  }
}

@end