@interface REUpNextHeaderView
+ (void)initialize;
- (REUpNextHeaderView)initWithFrame:(CGRect)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation REUpNextHeaderView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kActiveLayout_2_3 = 0x4030000000000000;
    kActiveLayout_0_3 = 0x3FF0000000000000;
    kActiveLayout_1_3 = 0x401E000000000000;
  }
}

- (REUpNextHeaderView)initWithFrame:(CGRect)a3
{
  v26[3] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = REUpNextHeaderView;
  v3 = [(REUpNextHeaderView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    v7 = v3->_label;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:*&kActiveLayout_2_3 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v7 setFont:v8];

    v9 = v3->_label;
    v10 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v9 setTextColor:v10];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v3->_label;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11 setBackgroundColor:v12];

    [(UILabel *)v3->_label setTextAlignment:4];
    [(REUpNextHeaderView *)v3 addSubview:v3->_label];
    v24 = [(UILabel *)v3->_label leadingAnchor];
    v13 = [(REUpNextHeaderView *)v3 leadingAnchor];
    v14 = [v24 constraintEqualToAnchor:v13 constant:*&kActiveLayout_0_3];
    v26[0] = v14;
    v15 = [(UILabel *)v3->_label trailingAnchor];
    v16 = [(REUpNextHeaderView *)v3 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-*&kActiveLayout_0_3];
    v26[1] = v17;
    v18 = [(UILabel *)v3->_label lastBaselineAnchor];
    v19 = [(REUpNextHeaderView *)v3 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-*&kActiveLayout_1_3];
    v26[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = [a3 copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  label = self->_label;
  v7 = self->_attributedText;

  [(UILabel *)label setAttributedText:v7];
}

@end