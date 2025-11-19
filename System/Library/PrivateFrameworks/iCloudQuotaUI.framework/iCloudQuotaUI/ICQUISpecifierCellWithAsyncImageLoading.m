@interface ICQUISpecifierCellWithAsyncImageLoading
- (ICQUISpecifierCellWithAsyncImageLoading)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQUISpecifierCellWithAsyncImageLoading

- (ICQUISpecifierCellWithAsyncImageLoading)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICQUISpecifierCellWithAsyncImageLoading;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ICQUISpecifierCellWithAsyncImageLoading *)v4 setSelectionStyle:0];
    [(ICQUISpecifierCellWithAsyncImageLoading *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v78[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *MEMORY[0x277D76918];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v7 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_titleLabel setColor:v7];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_subtitleLabel setFont:v10];

  v11 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setColor:v11];

  v12 = objc_alloc(MEMORY[0x277D755E8]);
  v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  cellImageView = self->_cellImageView;
  self->_cellImageView = v13;

  [(UIImageView *)self->_cellImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_cellImageView setContentMode:2];
  v15 = objc_alloc(MEMORY[0x277D75A68]);
  v16 = self->_subtitleLabel;
  v78[0] = self->_titleLabel;
  v78[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v18 = [v15 initWithArrangedSubviews:v17];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setAxis:1];
  [v18 setSpacing:1.0];
  LODWORD(v19) = 1144750080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];
  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  accessoryLabel = self->_accessoryLabel;
  self->_accessoryLabel = v20;

  [(UILabel *)self->_accessoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];
  [(UILabel *)self->_accessoryLabel setFont:v22];

  v23 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_accessoryLabel setColor:v23];

  [(UILabel *)self->_accessoryLabel setTextAlignment:2];
  LODWORD(v24) = 1148846080;
  [(UILabel *)self->_accessoryLabel setContentCompressionResistancePriority:0 forAxis:v24];
  v25 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [v25 addSubview:self->_cellImageView];

  v26 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [v26 addSubview:v18];

  v27 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [v27 addSubview:self->_accessoryLabel];

  v57 = MEMORY[0x277CCAAD0];
  v76 = [(UIImageView *)self->_cellImageView widthAnchor];
  v75 = [v76 constraintEqualToConstant:29.0];
  v77[0] = v75;
  v74 = [(UIImageView *)self->_cellImageView heightAnchor];
  v73 = [v74 constraintEqualToConstant:40.0];
  v77[1] = v73;
  v71 = [(UIImageView *)self->_cellImageView leadingAnchor];
  v72 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v70 = [v72 layoutMarginsGuide];
  v69 = [v70 leadingAnchor];
  v68 = [v71 constraintEqualToAnchor:v69];
  v77[2] = v68;
  v66 = [(UIImageView *)self->_cellImageView centerYAnchor];
  v67 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v65 = [v67 layoutMarginsGuide];
  v64 = [v65 centerYAnchor];
  v63 = [v66 constraintEqualToAnchor:v64];
  v77[3] = v63;
  v61 = [(UILabel *)self->_accessoryLabel centerYAnchor];
  v62 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v60 = [v62 layoutMarginsGuide];
  v59 = [v60 centerYAnchor];
  v58 = [v61 constraintEqualToAnchor:v59];
  v77[4] = v58;
  v55 = [(UILabel *)self->_accessoryLabel trailingAnchor];
  v56 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v54 = [v56 layoutMarginsGuide];
  v53 = [v54 trailingAnchor];
  v51 = [v55 constraintEqualToAnchor:v53];
  v77[5] = v51;
  v50 = [(UILabel *)self->_accessoryLabel leadingAnchor];
  v49 = [v18 trailingAnchor];
  v48 = [v50 constraintGreaterThanOrEqualToAnchor:v49];
  v77[6] = v48;
  v46 = [v18 topAnchor];
  v47 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v45 = [v47 layoutMarginsGuide];
  v44 = [v45 topAnchor];
  v43 = [v46 constraintEqualToAnchor:v44 constant:5.0];
  v77[7] = v43;
  v41 = [v18 bottomAnchor];
  v42 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v40 = [v42 layoutMarginsGuide];
  v39 = [v40 bottomAnchor];
  v38 = [v41 constraintEqualToAnchor:v39 constant:-5.0];
  v77[8] = v38;
  v28 = v18;
  v52 = v18;
  v29 = [v18 leadingAnchor];
  v30 = [(UIImageView *)self->_cellImageView trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:10.0];
  v77[9] = v31;
  v32 = [v28 centerYAnchor];
  v33 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 centerYAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];
  v77[10] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:11];
  [v57 activateConstraints:v37];

  [(ICQUISpecifierCellWithAsyncImageLoading *)self setAccessoryType:1];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ICQUISpecifierCellWithAsyncImageLoading;
  [(PSTableCell *)&v4 layoutSubviews];
  v3 = [(ICQUISpecifierCellWithAsyncImageLoading *)self imageView];
  [v3 setHidden:1];

  [(ICQUISpecifierCellWithAsyncImageLoading *)self setContentMode:3];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = ICQUISpecifierCellWithAsyncImageLoading;
  v4 = a3;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [(ICQUISpecifierCellWithAsyncImageLoading *)self textLabel:v13.receiver];
  [v5 setText:&stru_28844FC60];

  titleLabel = self->_titleLabel;
  v7 = [v4 propertyForKey:*MEMORY[0x277D40170]];
  [(UILabel *)titleLabel setText:v7];

  subtitleLabel = self->_subtitleLabel;
  v9 = [v4 propertyForKey:*MEMORY[0x277D40160]];
  [(UILabel *)subtitleLabel setText:v9];

  v10 = [v4 target];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessoryLabel = self->_accessoryLabel;
      v12 = [v10 storageUsedLabel];
      [(UILabel *)accessoryLabel setText:v12];
    }
  }

  [(ICQUISpecifierCellWithAsyncImageLoading *)self setNeedsLayout];
}

@end