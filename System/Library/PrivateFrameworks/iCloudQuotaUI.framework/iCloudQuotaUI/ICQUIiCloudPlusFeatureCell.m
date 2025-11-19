@interface ICQUIiCloudPlusFeatureCell
- (ICQUIiCloudPlusFeatureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQUIiCloudPlusFeatureCell

- (ICQUIiCloudPlusFeatureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICQUIiCloudPlusFeatureCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v11 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v10 setColor:v11];

  v12 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  [v12 addSubview:self->_titleLabel];

  v13 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  [v13 addSubview:self->_cellImageView];

  v33 = MEMORY[0x277CCAAD0];
  v43 = [(UILabel *)self->_titleLabel leadingAnchor];
  v44 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  v42 = [v44 layoutMarginsGuide];
  v41 = [v42 leadingAnchor];
  v40 = [v43 constraintEqualToAnchor:v41 constant:42.0];
  v45[0] = v40;
  v38 = [(UILabel *)self->_titleLabel centerYAnchor];
  v39 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  v37 = [v39 layoutMarginsGuide];
  v36 = [v37 centerYAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v45[1] = v35;
  v32 = [(UILabel *)self->_titleLabel trailingAnchor];
  v34 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  v31 = [v34 layoutMarginsGuide];
  v30 = [v31 trailingAnchor];
  v29 = [v32 constraintEqualToAnchor:v30];
  v45[2] = v29;
  v28 = [(UIImageView *)self->_cellImageView widthAnchor];
  v27 = [v28 constraintEqualToConstant:24.0];
  v45[3] = v27;
  v26 = [(UIImageView *)self->_cellImageView heightAnchor];
  v25 = [v26 constraintEqualToConstant:24.0];
  v45[4] = v25;
  v23 = [(UIImageView *)self->_cellImageView leadingAnchor];
  v24 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  v14 = [v24 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];
  v16 = [v23 constraintEqualToAnchor:v15];
  v45[5] = v16;
  v17 = [(UIImageView *)self->_cellImageView centerYAnchor];
  v18 = [(ICQUIiCloudPlusFeatureCell *)self contentView];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 centerYAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
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
  v3 = [(ICQUIiCloudPlusFeatureCell *)self imageView];
  [v3 setHidden:1];

  v4 = [MEMORY[0x277D75348] clearColor];
  [(ICQUIiCloudPlusFeatureCell *)self setSeparatorColor:v4];

  LODWORD(v4) = self->_isLastCell;
  [(ICQUIiCloudPlusFeatureCell *)self layoutMargins];
  v6 = v5;
  v8 = v7;
  [(ICQUIiCloudPlusFeatureCell *)self layoutMargins];
  if (v4 == 1)
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICQUIiCloudPlusFeatureCell;
  v4 = a3;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [(ICQUIiCloudPlusFeatureCell *)self textLabel:v9.receiver];
  [v5 setText:&stru_28844FC60];

  v6 = [v4 propertyForKey:@"LAST_ITEM_KEY"];
  self->_isLastCell = v6 != 0;

  titleLabel = self->_titleLabel;
  v8 = [v4 propertyForKey:*MEMORY[0x277D40170]];

  [(UILabel *)titleLabel setText:v8];
  [(ICQUIiCloudPlusFeatureCell *)self setNeedsLayout];
}

@end