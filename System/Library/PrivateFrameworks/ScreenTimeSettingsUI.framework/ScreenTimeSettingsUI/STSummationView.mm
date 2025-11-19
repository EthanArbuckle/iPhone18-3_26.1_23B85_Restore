@interface STSummationView
- (STSummationView)initWithTitle:(id)a3 detailText:(id)a4;
@end

@implementation STSummationView

- (STSummationView)initWithTitle:(id)a3 detailText:(id)a4
{
  v45[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = STSummationView;
  v8 = [(STSummationView *)&v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
    v9 = v42 = v7;
    [(STSummationView *)v8 setBackgroundColor:v9];

    v10 = objc_opt_new();
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v10;

    [(UILabel *)v8->_titleLabel setAttributedText:v6];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(UILabel *)v8->_titleLabel setLineBreakMode:0];
    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v8->_titleLabel setTextColor:v12];

    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_titleLabel sizeToFit];
    [(STSummationView *)v8 addSubview:v8->_titleLabel];
    v35 = MEMORY[0x277CCAAD0];
    v39 = [(UILabel *)v8->_titleLabel topAnchor];
    v37 = [(STSummationView *)v8 topAnchor];
    v13 = [v39 constraintEqualToAnchor:v37 constant:10.0];
    v45[0] = v13;
    v14 = [(UILabel *)v8->_titleLabel leadingAnchor];
    v15 = [(STSummationView *)v8 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:16.0];
    v45[1] = v16;
    v17 = [(UILabel *)v8->_titleLabel trailingAnchor];
    v18 = [(STSummationView *)v8 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-16.0];
    v45[2] = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v20 = v41 = v6;
    [v35 activateConstraints:v20];

    v21 = objc_opt_new();
    detailLabel = v8->_detailLabel;
    v8->_detailLabel = v21;

    [(UILabel *)v8->_detailLabel setAttributedText:v42];
    [(UILabel *)v8->_detailLabel setNumberOfLines:0];
    [(UILabel *)v8->_detailLabel setLineBreakMode:0];
    [(UILabel *)v8->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_detailLabel sizeToFit];
    [(STSummationView *)v8 addSubview:v8->_detailLabel];
    v33 = MEMORY[0x277CCAAD0];
    v40 = [(UILabel *)v8->_detailLabel topAnchor];
    v38 = [(UILabel *)v8->_titleLabel bottomAnchor];
    v36 = [v40 constraintEqualToAnchor:v38 constant:2.0];
    v44[0] = v36;
    v34 = [(UILabel *)v8->_detailLabel leadingAnchor];
    v23 = [(STSummationView *)v8 leadingAnchor];
    v24 = [v34 constraintEqualToAnchor:v23 constant:16.0];
    v44[1] = v24;
    v25 = [(UILabel *)v8->_detailLabel trailingAnchor];
    v26 = [(STSummationView *)v8 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-16.0];
    v44[2] = v27;
    v28 = [(UILabel *)v8->_detailLabel bottomAnchor];
    v29 = [(STSummationView *)v8 bottomAnchor];
    v30 = [v28 constraintLessThanOrEqualToAnchor:v29 constant:-11.0];
    v44[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v31];

    v6 = v41;
    v7 = v42;
  }

  return v8;
}

@end