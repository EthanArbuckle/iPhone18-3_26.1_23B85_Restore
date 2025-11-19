@interface WFOtherNetworkHeaderView
- (NSString)title;
- (WFOtherNetworkHeaderView)initWithReuseIdentifier:(id)a3;
- (void)_configureContents;
- (void)setTitle:(id)a3;
@end

@implementation WFOtherNetworkHeaderView

- (WFOtherNetworkHeaderView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFOtherNetworkHeaderView;
  v3 = [(WFOtherNetworkHeaderView *)&v8 initWithReuseIdentifier:a3];
  v4 = objc_opt_new();
  [(WFOtherNetworkHeaderView *)v3 setTitleLabel:v4];

  [(UILabel *)v3->_titleLabel sizeToFit];
  [(UILabel *)v3->_titleLabel setTextAlignment:1];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v3->_titleLabel setFont:v5];

  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v3->_titleLabel setTextColor:v6];

  [(WFOtherNetworkHeaderView *)v3 _configureContents];
  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v7 = v5;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_288308678;
  }

  [v5 setText:v6];

  [(WFOtherNetworkHeaderView *)self setTitleLabel:v7];
}

- (NSString)title
{
  v2 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)_configureContents
{
  v49[9] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(WFOtherNetworkHeaderView *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(WFOtherNetworkHeaderView *)self contentView];
  [v5 addSubview:v3];

  v6 = [(WFOtherNetworkHeaderView *)self contentView];
  v7 = [(WFOtherNetworkHeaderView *)self titleLabel];
  [v6 addSubview:v7];

  v32 = MEMORY[0x277CCAAD0];
  v48 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v46 = [v48 leadingAnchor];
  v47 = [(WFOtherNetworkHeaderView *)self contentView];
  v45 = [v47 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v49[0] = v44;
  v43 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v41 = [v43 topAnchor];
  v42 = [(WFOtherNetworkHeaderView *)self contentView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v49[1] = v39;
  v38 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v36 = [v38 trailingAnchor];
  v37 = [(WFOtherNetworkHeaderView *)self contentView];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v49[2] = v34;
  v33 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v31 = [v33 bottomAnchor];
  v30 = [v3 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v49[3] = v29;
  v26 = [v3 leadingAnchor];
  v27 = [(WFOtherNetworkHeaderView *)self contentView];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v49[4] = v24;
  v22 = [v3 topAnchor];
  v23 = [(WFOtherNetworkHeaderView *)self titleLabel];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v49[5] = v20;
  v19 = [v3 trailingAnchor];
  v8 = [(WFOtherNetworkHeaderView *)self contentView];
  v9 = [v8 trailingAnchor];
  v10 = [v19 constraintEqualToAnchor:v9];
  v49[6] = v10;
  v28 = v3;
  v11 = [v3 bottomAnchor];
  v12 = [(WFOtherNetworkHeaderView *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v49[7] = v14;
  v15 = [v3 heightAnchor];
  v16 = [v15 constraintEqualToConstant:24.0];
  v49[8] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:9];
  [v32 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

@end