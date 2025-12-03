@interface REUpNextHeaderView
+ (void)initialize;
- (REUpNextHeaderView)initWithFrame:(CGRect)frame;
- (void)setAttributedText:(id)text;
@end

@implementation REUpNextHeaderView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_2_3 = 0x4030000000000000;
    kActiveLayout_0_3 = 0x3FF0000000000000;
    kActiveLayout_1_3 = 0x401E000000000000;
  }
}

- (REUpNextHeaderView)initWithFrame:(CGRect)frame
{
  v26[3] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = REUpNextHeaderView;
  v3 = [(REUpNextHeaderView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v9 setTextColor:blackColor];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v3->_label;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    [(UILabel *)v3->_label setTextAlignment:4];
    [(REUpNextHeaderView *)v3 addSubview:v3->_label];
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(REUpNextHeaderView *)v3 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_0_3];
    v26[0] = v14;
    trailingAnchor = [(UILabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [(REUpNextHeaderView *)v3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&kActiveLayout_0_3];
    v26[1] = v17;
    lastBaselineAnchor = [(UILabel *)v3->_label lastBaselineAnchor];
    bottomAnchor = [(REUpNextHeaderView *)v3 bottomAnchor];
    v20 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-*&kActiveLayout_1_3];
    v26[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setAttributedText:(id)text
{
  v4 = [text copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  label = self->_label;
  v7 = self->_attributedText;

  [(UILabel *)label setAttributedText:v7];
}

@end