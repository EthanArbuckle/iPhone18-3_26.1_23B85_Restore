@interface STSummationView
- (STSummationView)initWithTitle:(id)title detailText:(id)text;
@end

@implementation STSummationView

- (STSummationView)initWithTitle:(id)title detailText:(id)text
{
  v45[3] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  textCopy = text;
  v43.receiver = self;
  v43.super_class = STSummationView;
  v8 = [(STSummationView *)&v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
    v9 = v42 = textCopy;
    [(STSummationView *)v8 setBackgroundColor:v9];

    v10 = objc_opt_new();
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v10;

    [(UILabel *)v8->_titleLabel setAttributedText:titleCopy];
    [(UILabel *)v8->_titleLabel setNumberOfLines:0];
    [(UILabel *)v8->_titleLabel setLineBreakMode:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v8->_titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_titleLabel sizeToFit];
    [(STSummationView *)v8 addSubview:v8->_titleLabel];
    v35 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v8->_titleLabel topAnchor];
    topAnchor2 = [(STSummationView *)v8 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v45[0] = v13;
    leadingAnchor = [(UILabel *)v8->_titleLabel leadingAnchor];
    leadingAnchor2 = [(STSummationView *)v8 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v45[1] = v16;
    trailingAnchor = [(UILabel *)v8->_titleLabel trailingAnchor];
    trailingAnchor2 = [(STSummationView *)v8 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v45[2] = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v20 = v41 = titleCopy;
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
    topAnchor3 = [(UILabel *)v8->_detailLabel topAnchor];
    bottomAnchor = [(UILabel *)v8->_titleLabel bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
    v44[0] = v36;
    leadingAnchor3 = [(UILabel *)v8->_detailLabel leadingAnchor];
    leadingAnchor4 = [(STSummationView *)v8 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v44[1] = v24;
    trailingAnchor3 = [(UILabel *)v8->_detailLabel trailingAnchor];
    trailingAnchor4 = [(STSummationView *)v8 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v44[2] = v27;
    bottomAnchor2 = [(UILabel *)v8->_detailLabel bottomAnchor];
    bottomAnchor3 = [(STSummationView *)v8 bottomAnchor];
    v30 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-11.0];
    v44[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v31];

    titleCopy = v41;
    textCopy = v42;
  }

  return v8;
}

@end