@interface ICQUISpecifierCellWithAsyncImageLoading
- (ICQUISpecifierCellWithAsyncImageLoading)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQUISpecifierCellWithAsyncImageLoading

- (ICQUISpecifierCellWithAsyncImageLoading)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ICQUISpecifierCellWithAsyncImageLoading;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_titleLabel setColor:labelColor];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_subtitleLabel setFont:v10];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setColor:secondaryLabelColor];

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

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_accessoryLabel setColor:secondaryLabelColor2];

  [(UILabel *)self->_accessoryLabel setTextAlignment:2];
  LODWORD(v24) = 1148846080;
  [(UILabel *)self->_accessoryLabel setContentCompressionResistancePriority:0 forAxis:v24];
  contentView = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [contentView addSubview:self->_cellImageView];

  contentView2 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [contentView2 addSubview:v18];

  contentView3 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  [contentView3 addSubview:self->_accessoryLabel];

  v57 = MEMORY[0x277CCAAD0];
  widthAnchor = [(UIImageView *)self->_cellImageView widthAnchor];
  v75 = [widthAnchor constraintEqualToConstant:29.0];
  v77[0] = v75;
  heightAnchor = [(UIImageView *)self->_cellImageView heightAnchor];
  v73 = [heightAnchor constraintEqualToConstant:40.0];
  v77[1] = v73;
  leadingAnchor = [(UIImageView *)self->_cellImageView leadingAnchor];
  contentView4 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v77[2] = v68;
  centerYAnchor = [(UIImageView *)self->_cellImageView centerYAnchor];
  contentView5 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v77[3] = v63;
  centerYAnchor3 = [(UILabel *)self->_accessoryLabel centerYAnchor];
  contentView6 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
  centerYAnchor4 = [layoutMarginsGuide3 centerYAnchor];
  v58 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v77[4] = v58;
  trailingAnchor = [(UILabel *)self->_accessoryLabel trailingAnchor];
  contentView7 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v77[5] = v51;
  leadingAnchor3 = [(UILabel *)self->_accessoryLabel leadingAnchor];
  trailingAnchor3 = [v18 trailingAnchor];
  v48 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3];
  v77[6] = v48;
  topAnchor = [v18 topAnchor];
  contentView8 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide5 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v77[7] = v43;
  bottomAnchor = [v18 bottomAnchor];
  contentView9 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide6 bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v77[8] = v38;
  v28 = v18;
  v52 = v18;
  leadingAnchor4 = [v18 leadingAnchor];
  trailingAnchor4 = [(UIImageView *)self->_cellImageView trailingAnchor];
  v31 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
  v77[9] = v31;
  centerYAnchor5 = [v28 centerYAnchor];
  contentView10 = [(ICQUISpecifierCellWithAsyncImageLoading *)self contentView];
  layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
  centerYAnchor6 = [layoutMarginsGuide7 centerYAnchor];
  v36 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
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
  imageView = [(ICQUISpecifierCellWithAsyncImageLoading *)self imageView];
  [imageView setHidden:1];

  [(ICQUISpecifierCellWithAsyncImageLoading *)self setContentMode:3];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = ICQUISpecifierCellWithAsyncImageLoading;
  specifierCopy = specifier;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(ICQUISpecifierCellWithAsyncImageLoading *)self textLabel:v13.receiver];
  [v5 setText:&stru_28844FC60];

  titleLabel = self->_titleLabel;
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [(UILabel *)titleLabel setText:v7];

  subtitleLabel = self->_subtitleLabel;
  v9 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
  [(UILabel *)subtitleLabel setText:v9];

  target = [specifierCopy target];

  if (target)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessoryLabel = self->_accessoryLabel;
      storageUsedLabel = [target storageUsedLabel];
      [(UILabel *)accessoryLabel setText:storageUsedLabel];
    }
  }

  [(ICQUISpecifierCellWithAsyncImageLoading *)self setNeedsLayout];
}

@end