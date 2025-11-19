@interface STStorageTableCell
- (NSString)sizeString;
- (STStorageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)createLargeFontConstraints;
- (void)createNormalFontConstraints;
- (void)setInfo:(id)a3;
- (void)setSize:(int64_t)a3;
- (void)setSizeString:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupTitleAndInfoConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation STStorageTableCell

- (STStorageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v57.receiver = self;
  v57.super_class = STStorageTableCell;
  v5 = [(PSTableCell *)&v57 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(STStorageTableCell *)v5 contentView];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v56 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v10 = objc_alloc(MEMORY[0x277D755E8]);
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], v12, v13, v14}];
    iconView = v6->_iconView;
    v6->_iconView = v15;

    [(UIImageView *)v6->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_iconView setAccessibilityIdentifier:@"Icon"];
    [(UIImageView *)v6->_iconView setContentMode:1];
    [v7 addSubview:v6->_iconView];
    [v9 addObject:v6->_iconView];
    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v6->_iconView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:29.0];
    iconSizeConstraint = v6->_iconSizeConstraint;
    v6->_iconSizeConstraint = v17;

    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v11, v12, v13, v14}];
    titleInfoView = v6->_titleInfoView;
    v6->_titleInfoView = v19;

    [(UIView *)v6->_titleInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1144750080;
    [(UIView *)v6->_titleInfoView setContentHuggingPriority:1 forAxis:v21];
    LODWORD(v22) = 1144750080;
    [(UIView *)v6->_titleInfoView setContentCompressionResistancePriority:1 forAxis:v22];
    [v7 addSubview:v6->_titleInfoView];
    v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v23;

    v55 = v8;
    [(UILabel *)v6->_titleLabel setFont:v8];
    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v6->_titleLabel setNumberOfLines:1];
    [(UILabel *)v6->_titleLabel setLineBreakMode:4];
    [(UILabel *)v6->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v6->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v6->_titleLabel setContentHuggingPriority:1 forAxis:v25];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v6->_titleLabel setContentCompressionResistancePriority:1 forAxis:v26];
    [(UIView *)v6->_titleInfoView addSubview:v6->_titleLabel];
    [v9 addObject:v6->_titleLabel];
    v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v11, v12, v13, v14}];
    cloudIconView = v6->_cloudIconView;
    v6->_cloudIconView = v27;

    [(UIImageView *)v6->_cloudIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_cloudIconView setAccessibilityIdentifier:@"CloudIcon"];
    [(UIImageView *)v6->_cloudIconView setContentMode:1];
    [(UIImageView *)v6->_cloudIconView setHidden:1];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud.and.arrow.down"];
    [(UIImageView *)v6->_cloudIconView setImage:v29];

    v30 = [(STStorageTableCell *)v6 _cloudIconColor];
    [(UIImageView *)v6->_cloudIconView setTintColor:v30];

    [(UIView *)v6->_titleInfoView addSubview:v6->_cloudIconView];
    [v9 addObject:v6->_cloudIconView];
    v31 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    infoLabel = v6->_infoLabel;
    v6->_infoLabel = v31;

    [(UILabel *)v6->_infoLabel setFont:v56];
    v33 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v6->_sizeLabel setTextColor:v33];

    [(UILabel *)v6->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_infoLabel setAccessibilityIdentifier:@"Info"];
    [(UILabel *)v6->_infoLabel setNumberOfLines:1];
    [(UILabel *)v6->_infoLabel setLineBreakMode:4];
    [(UILabel *)v6->_infoLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v6->_infoLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v34) = 1144750080;
    [(UILabel *)v6->_infoLabel setContentHuggingPriority:1 forAxis:v34];
    LODWORD(v35) = 1144750080;
    [(UILabel *)v6->_infoLabel setContentCompressionResistancePriority:1 forAxis:v35];
    [(UIView *)v6->_titleInfoView addSubview:v6->_infoLabel];
    [v9 addObject:v6->_infoLabel];
    v36 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    sizeLabel = v6->_sizeLabel;
    v6->_sizeLabel = v36;

    [(UILabel *)v6->_sizeLabel setFont:v8];
    v38 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v6->_sizeLabel setTextColor:v38];

    [(UILabel *)v6->_sizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_sizeLabel setAccessibilityIdentifier:@"Size"];
    [(UILabel *)v6->_sizeLabel setNumberOfLines:1];
    [(UILabel *)v6->_sizeLabel setLineBreakMode:4];
    [(UILabel *)v6->_sizeLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v39) = 1148846080;
    [(UILabel *)v6->_sizeLabel setContentHuggingPriority:0 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(UILabel *)v6->_sizeLabel setContentCompressionResistancePriority:0 forAxis:v40];
    [v7 addSubview:v6->_sizeLabel];
    [v9 addObject:v6->_sizeLabel];
    v41 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{v11, v12, v13, v14}];
    spinner = v6->_spinner;
    v6->_spinner = v41;

    [(UIActivityIndicatorView *)v6->_spinner setEnabled:0];
    [(UIActivityIndicatorView *)v6->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v6->_spinner setAccessibilityIdentifier:@"Spinner"];
    [(UIActivityIndicatorView *)v6->_spinner setHidesWhenStopped:1];
    LODWORD(v43) = 1148846080;
    [(UIActivityIndicatorView *)v6->_spinner setContentHuggingPriority:0 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(UIActivityIndicatorView *)v6->_spinner setContentCompressionResistancePriority:0 forAxis:v44];
    [v7 addSubview:v6->_spinner];
    [v9 addObject:v6->_spinner];
    [v7 setAccessibilityElements:v9];
    v45 = MEMORY[0x277CCAAD0];
    v46 = [(STStorageTableCell *)v6 contentView];
    v47 = [v45 constraintWithItem:v46 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    minHeightConstraint = v6->_minHeightConstraint;
    v6->_minHeightConstraint = v47;

    LODWORD(v49) = 1144750080;
    [(NSLayoutConstraint *)v6->_minHeightConstraint setPriority:v49];
    v50 = [MEMORY[0x277CCAAD0] constraintWithItem:v6->_titleLabel attribute:5 relatedBy:0 toItem:v6->_titleInfoView attribute:5 multiplier:1.0 constant:0.0];
    cloudIconConstraint = v6->_cloudIconConstraint;
    v6->_cloudIconConstraint = v50;

    v52 = [MEMORY[0x277CCAAD0] constraintWithItem:v6->_titleLabel attribute:5 relatedBy:0 toItem:v6->_titleInfoView attribute:5 multiplier:1.0 constant:0.0];
    noCloudIconConstraint = v6->_noCloudIconConstraint;
    v6->_noCloudIconConstraint = v52;

    [(STStorageTableCell *)v6 setupTitleAndInfoConstraints];
    [(STStorageTableCell *)v6 setNeedsUpdateConstraints];
  }

  return v6;
}

- (void)setupTitleAndInfoConstraints
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
  [v3 addObject:self->_noCloudIconConstraint];
  [v3 addObject:self->_cloudIconConstraint];
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cloudIconView attribute:5 relatedBy:0 toItem:self->_titleInfoView attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v4];

  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cloudIconView attribute:12 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:0.0];
  [v3 addObject:v5];

  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cloudIconView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:22.0];
  [v3 addObject:v6];

  [(UIImageView *)self->_cloudIconView sizeToFit];
  [(UIImageView *)self->_cloudIconView size];
  [(NSLayoutConstraint *)self->_cloudIconConstraint setConstant:v7 + 5.0];
  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:6 relatedBy:1 toItem:self->_titleLabel attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v8];

  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:self->_titleInfoView attribute:3 multiplier:1.0 constant:0.0];
  [v3 addObject:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:4 relatedBy:1 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:0.0];
  [v3 addObject:v10];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];

  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_infoLabel attribute:5 relatedBy:0 toItem:self->_titleInfoView attribute:5 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v11 addObject:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_infoLabel attribute:6 relatedBy:-1 toItem:self->_titleInfoView attribute:6 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v11 addObject:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_infoLabel attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:2.0];
  [(NSMutableArray *)v11 addObject:v14];

  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:4 relatedBy:1 toItem:self->_infoLabel attribute:4 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v11 addObject:v15];

  infoConstraints = self->_infoConstraints;
  self->_infoConstraints = v11;
}

- (void)createNormalFontConstraints
{
  v17 = [(STStorageTableCell *)self contentView];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v4];

  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:7 relatedBy:0 toItem:self->_iconView attribute:8 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v5];

  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v6];

  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sizeLabel attribute:6 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:0.0];
  sizeRightConstraint = self->_sizeRightConstraint;
  self->_sizeRightConstraint = v7;

  [(NSMutableArray *)v3 addObject:self->_sizeRightConstraint];
  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sizeLabel attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:5 relatedBy:0 toItem:self->_iconView attribute:6 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:6 relatedBy:0 toItem:self->_sizeLabel attribute:5 multiplier:1.0 constant:-10.0];
  [(NSMutableArray *)v3 addObject:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:10 relatedBy:1 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v14];

  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:6 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:-10.0];
  [(NSMutableArray *)v3 addObject:v15];

  normalFontConstraints = self->_normalFontConstraints;
  self->_normalFontConstraints = v3;
}

- (void)createLargeFontConstraints
{
  v18 = [(STStorageTableCell *)self contentView];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:5 relatedBy:0 toItem:v18 attribute:5 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v4];

  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:7 relatedBy:0 toItem:self->_iconView attribute:8 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v5];

  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconView attribute:4 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:2.0];
  [(NSMutableArray *)v3 addObject:v6];

  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:5 relatedBy:0 toItem:self->_iconView attribute:6 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v7];

  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:6 relatedBy:0 toItem:v18 attribute:6 multiplier:1.0 constant:-10.0];
  [(NSMutableArray *)v3 addObject:v8];

  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleInfoView attribute:3 relatedBy:0 toItem:v18 attribute:3 multiplier:1.0 constant:12.0];
  [(NSMutableArray *)v3 addObject:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:4 relatedBy:1 toItem:self->_titleInfoView attribute:4 multiplier:1.0 constant:12.0];
  [(NSMutableArray *)v3 addObject:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sizeLabel attribute:5 relatedBy:0 toItem:self->_iconView attribute:6 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sizeLabel attribute:6 relatedBy:-1 toItem:v18 attribute:6 multiplier:1.0 constant:-10.0];
  [(NSMutableArray *)v3 addObject:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sizeLabel attribute:3 relatedBy:0 toItem:self->_titleInfoView attribute:4 multiplier:1.0 constant:2.0];
  [(NSMutableArray *)v3 addObject:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:4 relatedBy:1 toItem:self->_sizeLabel attribute:4 multiplier:1.0 constant:12.0];
  [(NSMutableArray *)v3 addObject:v14];

  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v15];

  v16 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:6 relatedBy:0 toItem:v18 attribute:6 multiplier:1.0 constant:-10.0];
  [(NSMutableArray *)v3 addObject:v16];

  largeFontConstraints = self->_largeFontConstraints;
  self->_largeFontConstraints = v3;
}

- (void)updateConstraints
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(STStorageTableCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v6 ascender];
  v9 = v8;
  [v6 descender];
  v11 = v9 - v10;
  [v7 ascender];
  v13 = v12;
  [v7 descender];
  v15 = v11 + v13 - v14 + 2.0 + 12.0 + 12.0;
  if (IsAccessibilityCategory)
  {
    if (!self->_largeFontConstraints)
    {
      [(STStorageTableCell *)self createLargeFontConstraints];
    }

    if (self->_normalFontConstraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:?];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:self->_largeFontConstraints];
    [(NSLayoutConstraint *)self->_sizeRightConstraint setActive:0];
    [(UILabel *)self->_infoLabel setNumberOfLines:3];
    v15 = v11 + 2.0 + v15;
  }

  else
  {
    if (!self->_normalFontConstraints)
    {
      [(STStorageTableCell *)self createNormalFontConstraints];
    }

    if (self->_largeFontConstraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:?];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:self->_normalFontConstraints];
    v16 = [(STStorageTableCell *)self accessoryType];
    v17 = -15.0;
    if (v16 == 1)
    {
      v17 = 0.0;
    }

    [(NSLayoutConstraint *)self->_sizeRightConstraint setConstant:v17];
    [(NSLayoutConstraint *)self->_sizeRightConstraint setActive:1];
    [(UILabel *)self->_infoLabel setNumberOfLines:1];
  }

  v18 = [(UILabel *)self->_infoLabel isHidden];
  infoConstraints = self->_infoConstraints;
  if (v18)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:infoConstraints];
  }

  else
  {
    [MEMORY[0x277CCAAD0] activateConstraints:infoConstraints];
  }

  v20 = [(UIImageView *)self->_cloudIconView isHidden];
  v21 = MEMORY[0x277CCAAD0];
  if (v20)
  {
    v33[0] = self->_cloudIconConstraint;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v21 deactivateConstraints:v22];

    v23 = MEMORY[0x277CCAAD0];
    noCloudIconConstraint = self->_noCloudIconConstraint;
    p_noCloudIconConstraint = &noCloudIconConstraint;
  }

  else
  {
    v31 = self->_noCloudIconConstraint;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [v21 deactivateConstraints:v25];

    v23 = MEMORY[0x277CCAAD0];
    cloudIconConstraint = self->_cloudIconConstraint;
    p_noCloudIconConstraint = &cloudIconConstraint;
  }

  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:p_noCloudIconConstraint count:1];
  [v23 activateConstraints:v26];

  v27 = 39.0;
  if (v15 >= 39.0)
  {
    v27 = v15;
  }

  [(NSLayoutConstraint *)self->_minHeightConstraint setConstant:v27];
  [(NSLayoutConstraint *)self->_minHeightConstraint setActive:1];
  [(NSLayoutConstraint *)self->_iconSizeConstraint setActive:1];
  v29.receiver = self;
  v29.super_class = STStorageTableCell;
  [(STStorageTableCell *)&v29 updateConstraints];
  [(STStorageTableCell *)self setNeedsLayout];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = STStorageTableCell;
  [(STStorageTableCell *)&v4 traitCollectionDidChange:a3];
  [(STStorageTableCell *)self setNeedsUpdateConstraints];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_282D51E38;
  }

  [(UILabel *)self->_titleLabel setText:v5];

  [(STStorageTableCell *)self setNeedsLayout];
}

- (void)setInfo:(id)a3
{
  v4 = a3;
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_282D51E38;
  }

  [(UILabel *)self->_infoLabel setText:v5];

  [(STStorageTableCell *)self setNeedsLayout];
}

- (void)setSizeString:(id)a3
{
  v13 = a3;
  if ([(__CFString *)v13 isEqualToString:@"…"])
  {
    [(UILabel *)self->_sizeLabel setText:0];
    v4 = [(STStorageTableCell *)self spinner];
    [(__CFString *)v4 startAnimating];
  }

  else
  {
    v5 = [(STStorageTableCell *)self spinner];
    [v5 stopAnimating];

    v6 = [(UILabel *)self->_sizeLabel text];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_282D51E38;
    }

    v4 = v8;

    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v9 = &stru_282D51E38;
    }

    v10 = v9;
    if (([(__CFString *)v4 isEqualToString:v10]& 1) == 0)
    {
      if ([(__CFString *)v13 length])
      {
        v11 = v13;
      }

      else
      {
        v11 = 0;
      }

      [(UILabel *)self->_sizeLabel setText:v11];
      v12 = [(STStorageTableCell *)self contentView];
      [v12 setNeedsLayout];
    }
  }
}

- (NSString)sizeString
{
  v2 = [(UILabel *)self->_sizeLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282D51E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setSize:(int64_t)a3
{
  if (a3 < 0)
  {

    [(STStorageTableCell *)self setSizeString:@"…"];
  }

  else if (self->_size != a3)
  {
    self->_size = a3;
    v4 = STFormattedSize();
    [(STStorageTableCell *)self setSizeString:v4];
  }
}

@end