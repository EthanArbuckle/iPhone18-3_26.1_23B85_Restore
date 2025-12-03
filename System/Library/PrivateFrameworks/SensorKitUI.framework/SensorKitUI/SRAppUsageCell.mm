@interface SRAppUsageCell
- (SRAppUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation SRAppUsageCell

- (SRAppUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SRAppUsageCell;
  v4 = [(SRAppUsageCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SRAppUsageCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_new();
    v5->_label = v6;
    [(UILabel *)v6 setLineBreakMode:0];
    [(UILabel *)v5->_label setNumberOfLines:0];
    v7 = *MEMORY[0x277D76918];
    -[UILabel setFont:](v5->_label, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]]);
    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    v5->_button = v8;
    [(UIButton *)v8 setContentHorizontalAlignment:1];
    [(UIButton *)v5->_button setContentVerticalAlignment:2];
    -[UILabel setFont:](-[UIButton titleLabel](v5->_button, "titleLabel"), "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:v7]);
    v9 = objc_alloc(MEMORY[0x277D75A68]);
    v16[0] = v5->_label;
    v16[1] = v5->_button;
    v10 = [v9 initWithArrangedSubviews:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 2)}];
    [v10 setAxis:1];
    [v10 setSpacing:8.0];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[SRAppUsageCell contentView](v5 "contentView")];
    v11 = MEMORY[0x277CCAAD0];
    v15[0] = [objc_msgSend(v10 "topAnchor")];
    v15[1] = [objc_msgSend(v10 "leadingAnchor")];
    v15[2] = [objc_msgSend(v10 "trailingAnchor")];
    v15[3] = [objc_msgSend(v10 "bottomAnchor")];
    [v11 activateConstraints:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v15, 4)}];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  self->_label = 0;

  self->_button = 0;
  v3.receiver = self;
  v3.super_class = SRAppUsageCell;
  [(SRAppUsageCell *)&v3 dealloc];
}

@end