@interface STAppStoreIconCell
- (STAppStoreIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_didFetchAppInfoOrIcon:(id)icon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation STAppStoreIconCell

- (STAppStoreIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v46[9] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = STAppStoreIconCell;
  v5 = [(STTableCell *)&v45 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    contentView = [(STAppStoreIconCell *)v5 contentView];
    v8 = objc_opt_new();
    appIconView = v6->_appIconView;
    v6->_appIconView = v8;

    [(UIImageView *)v6->_appIconView setContentMode:1];
    [(UIImageView *)v6->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v6->_appIconView];
    v10 = objc_opt_new();
    nameLabel = v6->_nameLabel;
    v6->_nameLabel = v10;

    [(UILabel *)v6->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v6->_nameLabel setFont:v12];

    [contentView addSubview:v6->_nameLabel];
    heightAnchor = [(UIImageView *)v6->_appIconView heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:44.0];

    LODWORD(v14) = 1144750080;
    [v44 setPriority:v14];
    contentLayoutGuide = [(STTableCell *)v6 contentLayoutGuide];
    v33 = MEMORY[0x277CCAAD0];
    v46[0] = v44;
    topAnchor = [(UIImageView *)v6->_appIconView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v40 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v46[1] = v40;
    leadingAnchor = [(UIImageView *)v6->_appIconView leadingAnchor];
    leadingAnchor2 = [contentLayoutGuide leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v46[2] = v37;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v6->_appIconView bottomAnchor];
    v34 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v46[3] = v34;
    widthAnchor = [(UIImageView *)v6->_appIconView widthAnchor];
    heightAnchor2 = [(UIImageView *)v6->_appIconView heightAnchor];
    v30 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v46[4] = v30;
    centerYAnchor = [(UIImageView *)v6->_appIconView centerYAnchor];
    v29 = contentView;
    centerYAnchor2 = [contentView centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[5] = v26;
    leadingAnchor3 = [(UILabel *)v6->_nameLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v6->_appIconView trailingAnchor];
    v16 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:2.0];
    v46[6] = v16;
    centerYAnchor3 = [(UILabel *)v6->_nameLabel centerYAnchor];
    centerYAnchor4 = [(UIImageView *)v6->_appIconView centerYAnchor];
    v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v46[7] = v19;
    trailingAnchor2 = [(UILabel *)v6->_nameLabel trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v22 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
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
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    itemType = [valueCopy itemType];
    if (itemType > 6 || ((1 << itemType) & 0x54) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STAppStoreIconCell.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"isAppItem || (itemType == STUsageItemTypeWebsite)"}];
    }

    value = [(STAppStoreIconCell *)self value];
    v14.receiver = self;
    v14.super_class = STAppStoreIconCell;
    [(PSTableCell *)&v14 setValue:valueCopy];
    budgetItemIdentifier = [valueCopy budgetItemIdentifier];
    budgetItemIdentifier2 = [value budgetItemIdentifier];
    if (budgetItemIdentifier == budgetItemIdentifier2)
    {
      goto LABEL_16;
    }

    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    if (([value itemType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
    {
      if ([budgetItemIdentifier isEqualToString:budgetItemIdentifier2])
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      [mEMORY[0x277D4BD98] removeObserver:self bundleIdentifier:budgetItemIdentifier2];
      [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:budgetItemIdentifier2];
    }

    if ((itemType & 0xFFFFFFFFFFFFFFFBLL) == 2)
    {
      [mEMORY[0x277D4BD98] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:budgetItemIdentifier];
      [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:budgetItemIdentifier];
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = STAppStoreIconCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifier];
  value = [(STAppStoreIconCell *)self value];
  budgetItemIdentifier = [value budgetItemIdentifier];
  if (budgetItemIdentifier)
  {
    if ([value itemType] == 4)
    {
      displayName = [value displayName];
      image = [value image];
    }

    else
    {
      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      v9 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:budgetItemIdentifier];
      displayName = [v9 displayName];

      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
      image = [mEMORY[0x277D4BD98] imageForBundleIdentifier:budgetItemIdentifier];
    }
  }

  else
  {
    image = 0;
    displayName = 0;
  }

  nameLabel = [(STAppStoreIconCell *)self nameLabel];
  [nameLabel setText:displayName];

  appIconView = [(STAppStoreIconCell *)self appIconView];
  [appIconView setImage:image];

  [(STAppStoreIconCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)icon
{
  specifier = [(PSTableCell *)self specifier];
  v5 = specifier;
  if (specifier)
  {
    v6 = specifier;
    specifier = [(STAppStoreIconCell *)self refreshCellContentsWithSpecifier:specifier];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](specifier, v5);
}

@end