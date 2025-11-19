@interface STAppStoreIconCell
- (STAppStoreIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)_didFetchAppInfoOrIcon:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation STAppStoreIconCell

- (STAppStoreIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v46[9] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = STAppStoreIconCell;
  v5 = [(STTableCell *)&v45 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(STAppStoreIconCell *)v5 contentView];
    v8 = objc_opt_new();
    appIconView = v6->_appIconView;
    v6->_appIconView = v8;

    [(UIImageView *)v6->_appIconView setContentMode:1];
    [(UIImageView *)v6->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v6->_appIconView];
    v10 = objc_opt_new();
    nameLabel = v6->_nameLabel;
    v6->_nameLabel = v10;

    [(UILabel *)v6->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v6->_nameLabel setFont:v12];

    [v7 addSubview:v6->_nameLabel];
    v13 = [(UIImageView *)v6->_appIconView heightAnchor];
    v44 = [v13 constraintEqualToConstant:44.0];

    LODWORD(v14) = 1144750080;
    [v44 setPriority:v14];
    v41 = [(STTableCell *)v6 contentLayoutGuide];
    v33 = MEMORY[0x277CCAAD0];
    v46[0] = v44;
    v43 = [(UIImageView *)v6->_appIconView topAnchor];
    v42 = [v7 topAnchor];
    v40 = [v43 constraintEqualToSystemSpacingBelowAnchor:v42 multiplier:1.0];
    v46[1] = v40;
    v39 = [(UIImageView *)v6->_appIconView leadingAnchor];
    v38 = [v41 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v46[2] = v37;
    v36 = [v7 bottomAnchor];
    v35 = [(UIImageView *)v6->_appIconView bottomAnchor];
    v34 = [v36 constraintEqualToSystemSpacingBelowAnchor:v35 multiplier:1.0];
    v46[3] = v34;
    v32 = [(UIImageView *)v6->_appIconView widthAnchor];
    v31 = [(UIImageView *)v6->_appIconView heightAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v46[4] = v30;
    v28 = [(UIImageView *)v6->_appIconView centerYAnchor];
    v29 = v7;
    v27 = [v7 centerYAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v46[5] = v26;
    v25 = [(UILabel *)v6->_nameLabel leadingAnchor];
    v15 = [(UIImageView *)v6->_appIconView trailingAnchor];
    v16 = [v25 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:2.0];
    v46[6] = v16;
    v17 = [(UILabel *)v6->_nameLabel centerYAnchor];
    v18 = [(UIImageView *)v6->_appIconView centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v46[7] = v19;
    v20 = [(UILabel *)v6->_nameLabel trailingAnchor];
    v21 = [v7 trailingAnchor];
    v22 = [v20 constraintLessThanOrEqualToAnchor:v21];
    v46[8] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:9];
    [v33 activateConstraints:v23];
  }

  return v6;
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STAppStoreIconCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 itemType];
    if (v6 > 6 || ((1 << v6) & 0x54) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"STAppStoreIconCell.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"isAppItem || (itemType == STUsageItemTypeWebsite)"}];
    }

    v9 = [(STAppStoreIconCell *)self value];
    v14.receiver = self;
    v14.super_class = STAppStoreIconCell;
    [(PSTableCell *)&v14 setValue:v5];
    v10 = [v5 budgetItemIdentifier];
    v11 = [v9 budgetItemIdentifier];
    if (v10 == v11)
    {
      goto LABEL_16;
    }

    v12 = [MEMORY[0x277D4BD98] sharedCache];
    v13 = [MEMORY[0x277D4B8C0] sharedCache];
    if (([v9 itemType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
    {
      if ([v10 isEqualToString:v11])
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      [v12 removeObserver:self bundleIdentifier:v11];
      [v13 removeObserver:self bundleIdentifier:v11];
    }

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 2)
    {
      [v12 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v10];
      [v13 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v10];
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = STAppStoreIconCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:a3];
  v4 = [(STAppStoreIconCell *)self value];
  v5 = [v4 budgetItemIdentifier];
  if (v5)
  {
    if ([v4 itemType] == 4)
    {
      v6 = [v4 displayName];
      v7 = [v4 image];
    }

    else
    {
      v8 = [MEMORY[0x277D4B8C0] sharedCache];
      v9 = [v8 appInfoForBundleIdentifier:v5];
      v6 = [v9 displayName];

      v10 = [MEMORY[0x277D4BD98] sharedCache];
      v7 = [v10 imageForBundleIdentifier:v5];
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v11 = [(STAppStoreIconCell *)self nameLabel];
  [v11 setText:v6];

  v12 = [(STAppStoreIconCell *)self appIconView];
  [v12 setImage:v7];

  [(STAppStoreIconCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)a3
{
  v4 = [(PSTableCell *)self specifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(STAppStoreIconCell *)self refreshCellContentsWithSpecifier:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end