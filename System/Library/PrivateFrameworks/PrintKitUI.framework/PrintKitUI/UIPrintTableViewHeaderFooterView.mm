@interface UIPrintTableViewHeaderFooterView
- (BOOL)spinSpinner;
- (NSString)messageText;
- (UIPrintTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)prepareForReuse;
- (void)setMessageText:(id)a3;
- (void)setSpinSpinner:(BOOL)a3;
@end

@implementation UIPrintTableViewHeaderFooterView

- (UIPrintTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = UIPrintTableViewHeaderFooterView;
  v3 = [(UIPrintTableViewHeaderFooterView *)&v35 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    [v5 addSubview:v4];

    v32 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    v6 = MEMORY[0x277CCAAD0];
    v34 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    v33 = [v6 constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v34 attribute:5 multiplier:1.0 constant:0.0];
    v38[0] = v33;
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    v9 = [v7 constraintWithItem:v4 attribute:6 relatedBy:0 toItem:v8 attribute:6 multiplier:1.0 constant:0.0];
    v38[1] = v9;
    v10 = MEMORY[0x277CCAAD0];
    v11 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    v12 = [v10 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
    v38[2] = v12;
    v13 = MEMORY[0x277CCAAD0];
    v14 = [(UIPrintTableViewHeaderFooterView *)v3 contentView];
    v15 = [v13 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    v38[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v32 addConstraints:v16];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v3->_label;
    v3->_label = v17;

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v3->_label setFont:v19];

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setTextAlignment:4];
    [(UILabel *)v3->_label setLineBreakMode:0];
    v20 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:v20];

    [(UILabel *)v3->_label setBackgroundColor:0];
    [(UILabel *)v3->_label setOpaque:0];
    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v3->_label];
    v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_label attribute:5 relatedBy:0 toItem:v4 attribute:17 multiplier:1.0 constant:0.0];
    v37[0] = v21;
    v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_label attribute:3 relatedBy:0 toItem:v4 attribute:15 multiplier:1.0 constant:0.0];
    v37[1] = v22;
    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_label attribute:4 relatedBy:0 toItem:v4 attribute:16 multiplier:1.0 constant:0.0];
    v37[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [v4 addConstraints:v24];

    v25 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:4];
    spinner = v3->_spinner;
    v3->_spinner = v25;

    [(UIActivityIndicatorView *)v3->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v3->_spinner];
    v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_spinner attribute:5 relatedBy:0 toItem:v3->_label attribute:6 multiplier:1.0 constant:14.0];
    v36[0] = v27;
    v28 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_spinner attribute:6 relatedBy:-1 toItem:v4 attribute:18 multiplier:1.0 constant:0.0];
    v36[1] = v28;
    v29 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_spinner attribute:3 relatedBy:0 toItem:v4 attribute:15 multiplier:1.0 constant:0.0];
    v36[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    [v4 addConstraints:v30];
  }

  return v3;
}

- (NSString)messageText
{
  v2 = [(UIPrintTableViewHeaderFooterView *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setMessageText:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintTableViewHeaderFooterView *)self label];
  [v5 setText:v4];
}

- (BOOL)spinSpinner
{
  v2 = [(UIPrintTableViewHeaderFooterView *)self spinner];
  v3 = [v2 isAnimating];

  return v3;
}

- (void)setSpinSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPrintTableViewHeaderFooterView *)self spinner];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (void)prepareForReuse
{
  v3 = [(UIPrintTableViewHeaderFooterView *)self label];
  [v3 setText:0];

  v4 = [(UIPrintTableViewHeaderFooterView *)self spinner];
  [v4 stopAnimating];

  v5.receiver = self;
  v5.super_class = UIPrintTableViewHeaderFooterView;
  [(UIPrintTableViewHeaderFooterView *)&v5 prepareForReuse];
}

@end