@interface ICQUIiCloudPlusFeatureCell
- (ICQUIiCloudPlusFeatureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQUIiCloudPlusFeatureCell

- (ICQUIiCloudPlusFeatureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ICQUIiCloudPlusFeatureCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ICQUIiCloudPlusFeatureCell *)v4 setSelectionStyle:0];
    [(ICQUIiCloudPlusFeatureCell *)v5 setEnabled:1];
    [(ICQUIiCloudPlusFeatureCell *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v45[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  cellImageView = self->_cellImageView;
  self->_cellImageView = v4;

  [(UIImageView *)self->_cellImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_cellImageView setContentMode:1];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v6;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_titleLabel;
  v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74418]];
  [(UILabel *)v8 setFont:v9];

  v10 = self->_titleLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v10 setColor:labelColor];

  contentView = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  contentView2 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  [contentView2 addSubview:self->_cellImageView];

  v33 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView3 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:42.0];
  v45[0] = v40;
  centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
  contentView4 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[1] = v35;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView5 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[2] = v29;
  widthAnchor = [(UIImageView *)self->_cellImageView widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:24.0];
  v45[3] = v27;
  heightAnchor = [(UIImageView *)self->_cellImageView heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:24.0];
  v45[4] = v25;
  leadingAnchor3 = [(UIImageView *)self->_cellImageView leadingAnchor];
  contentView6 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v45[5] = v16;
  centerYAnchor3 = [(UIImageView *)self->_cellImageView centerYAnchor];
  contentView7 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
  centerYAnchor4 = [layoutMarginsGuide5 centerYAnchor];
  v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v45[6] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];
  [v33 activateConstraints:v22];

  [(ICQUIiCloudPlusFeatureCell *)self setAccessoryType:1];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = ICQUIiCloudPlusFeatureCell;
  [(PSTableCell *)&v12 layoutSubviews];
  imageView = [(ICQUIiCloudPlusFeatureCell *)self imageView];
  [imageView setHidden:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ICQUIiCloudPlusFeatureCell *)self setSeparatorColor:clearColor];

  LODWORD(clearColor) = self->_isLastCell;
  [(ICQUIiCloudPlusFeatureCell *)self layoutMargins];
  v6 = v5;
  v8 = v7;
  [(ICQUIiCloudPlusFeatureCell *)self layoutMargins];
  if (clearColor == 1)
  {
    v10 = v9;
    [(ICQUIiCloudPlusFeatureCell *)self layoutMargins];
    v11 = 20.0;
    v8 = v10;
  }

  else
  {
    v6 = 0.0;
    v11 = 0.0;
  }

  [(ICQUIiCloudPlusFeatureCell *)self setLayoutMargins:v6, v8, v11];
  [(ICQUIiCloudPlusFeatureCell *)self setNeedsDisplay];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = ICQUIiCloudPlusFeatureCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(ICQUIiCloudPlusFeatureCell *)self textLabel:v9.receiver];
  [v5 setText:&stru_28844FC60];

  v6 = [specifierCopy propertyForKey:@"LAST_ITEM_KEY"];
  self->_isLastCell = v6 != 0;

  titleLabel = self->_titleLabel;
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];

  [(UILabel *)titleLabel setText:v8];
  [(ICQUIiCloudPlusFeatureCell *)self setNeedsLayout];
}

@end