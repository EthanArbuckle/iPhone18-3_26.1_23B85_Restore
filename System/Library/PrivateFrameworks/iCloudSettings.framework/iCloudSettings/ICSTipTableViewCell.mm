@interface ICSTipTableViewCell
- (ICSTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)actionButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICSTipTableViewCell

- (ICSTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v69[3] = *MEMORY[0x277D85DE8];
  v66.receiver = self;
  v66.super_class = ICSTipTableViewCell;
  v4 = [(PSTableCell *)&v66 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ICSTipTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v5->_imageView;
    v5->_imageView = v6;

    [(UIImageView *)v5->_imageView setContentMode:1];
    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D75348] systemRedColor];
    [(UIImageView *)v5->_imageView setTintColor:v8];

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v9;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    v11 = v5->_titleLabel;
    v12 = *MEMORY[0x277D769D0];
    v13 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
    [(UILabel *)v11 setFont:v13];

    v14 = v5->_titleLabel;
    v15 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v14 setTextColor:v15];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v16;

    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    v18 = v5->_subtitleLabel;
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:v12];
    [(UILabel *)v18 setFont:v19];

    v20 = v5->_subtitleLabel;
    v21 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v20 setTextColor:v21];

    v22 = objc_alloc_init(MEMORY[0x277D75220]);
    actionButton = v5->_actionButton;
    v5->_actionButton = v22;

    [(UIButton *)v5->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [(UIButton *)v5->_actionButton titleLabel];
    [v24 setNumberOfLines:0];

    v25 = [(UIButton *)v5->_actionButton titleLabel];
    [v25 setTextAlignment:0];

    v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:v12];
    v27 = [(UIButton *)v5->_actionButton titleLabel];
    [v27 setFont:v26];

    v28 = v5->_actionButton;
    v29 = [(ICSTipTableViewCell *)v5 tintColor];
    [(UIButton *)v28 setTitleColor:v29 forState:0];

    v30 = v5->_actionButton;
    v31 = [(ICSTipTableViewCell *)v5 tintColor];
    v32 = [v31 colorWithAlphaComponent:0.200000003];
    [(UIButton *)v30 setTitleColor:v32 forState:1];

    [(UIButton *)v5->_actionButton addTarget:v5 action:sel_actionButtonTapped_ forControlEvents:64];
    v33 = objc_alloc(MEMORY[0x277D75A68]);
    v69[0] = v5->_titleLabel;
    v69[1] = v5->_subtitleLabel;
    v69[2] = v5->_actionButton;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
    v35 = [v33 initWithArrangedSubviews:v34];

    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v35 setAxis:1];
    v36 = v35;
    v65 = v35;
    [v35 setAlignment:1];
    v37 = objc_alloc(MEMORY[0x277D75A68]);
    v68[0] = v5->_imageView;
    v68[1] = v36;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
    v39 = [v37 initWithArrangedSubviews:v38];

    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v39 setAxis:0];
    [v39 setAlignment:3];
    [v39 setSpacing:12.0];
    v40 = [(ICSTipTableViewCell *)v5 contentView];
    [v40 addSubview:v39];

    v56 = MEMORY[0x277CCAAD0];
    v63 = [v39 leadingAnchor];
    v64 = [(ICSTipTableViewCell *)v5 contentView];
    v62 = [v64 leadingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:6.0];
    v67[0] = v61;
    v59 = [v39 trailingAnchor];
    v60 = [(ICSTipTableViewCell *)v5 contentView];
    v58 = [v60 trailingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:-11.0];
    v67[1] = v57;
    v54 = [v39 topAnchor];
    v55 = [(ICSTipTableViewCell *)v5 contentView];
    v53 = [v55 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:11.0];
    v67[2] = v52;
    v51 = [v39 bottomAnchor];
    v41 = [(ICSTipTableViewCell *)v5 contentView];
    v42 = [v41 bottomAnchor];
    v43 = [v51 constraintEqualToAnchor:v42 constant:-11.0];
    v67[3] = v43;
    v44 = [(UIImageView *)v5->_imageView widthAnchor];
    v45 = [v44 constraintEqualToConstant:40.0];
    v67[4] = v45;
    v46 = [(UIImageView *)v5->_imageView heightAnchor];
    v47 = [v46 constraintEqualToConstant:40.0];
    v67[5] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:6];
    [v56 activateConstraints:v48];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = ICSTipTableViewCell;
  [(PSTableCell *)&v2 layoutSubviews];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = ICSTipTableViewCell;
  v4 = a3;
  [(PSTableCell *)&v12 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSTableCell *)self titleLabel:v12.receiver];
  [v5 setText:&stru_288487370];

  v6 = [(ICSTipTableViewCell *)self imageView];
  [v6 setImage:0];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FFC0]];
  [(UIImageView *)self->_imageView setImage:v7];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40170]];
  [(UILabel *)self->_titleLabel setText:v8];

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40160]];
  [(UILabel *)self->_subtitleLabel setText:v9];

  actionButton = self->_actionButton;
  v11 = [v4 objectForKeyedSubscript:@"ICSActionButtonTitleKey"];

  [(UIButton *)actionButton setTitle:v11 forStates:0];
  [(ICSTipTableViewCell *)self setNeedsLayout];
}

- (void)actionButtonTapped:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Action button tapped.", v6, 2u);
  }

  v5 = [(PSTableCell *)self specifier];
  [v5 performButtonAction];
}

@end