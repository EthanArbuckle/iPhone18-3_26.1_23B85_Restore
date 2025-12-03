@interface STUsageCell
- (STUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_didFetchAppInfoOrIcon:(id)icon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation STUsageCell

- (STUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v93[2] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v91.receiver = self;
  v91.super_class = STUsageCell;
  v9 = [(STTableCell *)&v91 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STUsageCell *)v9 contentView];
    v88 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v88];
    trustWarningImageView = v10->_trustWarningImageView;
    v10->_trustWarningImageView = v12;

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [(UIImageView *)v10->_trustWarningImageView setTintColor:systemYellowColor];

    [(UIImageView *)v10->_trustWarningImageView setHidden:1];
    v15 = objc_opt_new();
    itemNameLabel = v10->_itemNameLabel;
    v10->_itemNameLabel = v15;

    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_itemNameLabel setFont:v17];

    LODWORD(v18) = 1148846080;
    [(UILabel *)v10->_itemNameLabel setContentCompressionResistancePriority:1 forAxis:v18];
    v19 = objc_alloc(MEMORY[0x277D75A68]);
    v93[0] = v10->_trustWarningImageView;
    v93[1] = v10->_itemNameLabel;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v21 = [v19 initWithArrangedSubviews:v20];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setSpacing:1.17549435e-38];
    [contentView addSubview:v21];
    v22 = objc_opt_new();
    usageLabel = v10->_usageLabel;
    v10->_usageLabel = v22;

    [(UILabel *)v10->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v10->_usageLabel setFont:v24];

    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v10->_usageLabel setTextColor:tertiaryLabelColor];

    [contentView addSubview:v10->_usageLabel];
    v26 = [[STCandyBarView alloc] initWithVibrancy:0];
    usageBarView = v10->_usageBarView;
    v10->_usageBarView = v26;

    [(STCandyBarView *)v10->_usageBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = objc_opt_new();
    [v28 setTotalUsage:&unk_28769D610];
    v89 = specifierCopy;
    v29 = [specifierCopy objectForKeyedSubscript:@"STUsageBarColorKey"];
    if (v29)
    {
      [v28 setColor:v29];
    }

    else
    {
      systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
      [v28 setColor:systemGray4Color];
    }

    v87 = v28;
    v92 = v28;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    [(STCandyBarView *)v10->_usageBarView setUsageItems:v31];

    [contentView addSubview:v10->_usageBarView];
    contentLayoutGuide = [(STTableCell *)v10 contentLayoutGuide];
    v32 = objc_opt_new();
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(STCandyBarView *)v10->_usageBarView bottomAnchor];
    v35 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:7.0];
    [v32 addObject:v35];

    bottomAnchor3 = [contentView bottomAnchor];
    bottomAnchor4 = [(UILabel *)v10->_usageLabel bottomAnchor];
    v38 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:7.0];
    [v32 addObject:v38];

    heightAnchor = [contentView heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:52.0];
    [v32 addObject:v40];

    topAnchor = [v21 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
    [v32 addObject:v43];

    bottomAnchor5 = [v21 bottomAnchor];
    topAnchor3 = [(STCandyBarView *)v10->_usageBarView topAnchor];
    v46 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:topAnchor3];
    [v32 addObject:v46];

    bottomAnchor6 = [v21 bottomAnchor];
    topAnchor4 = [(UILabel *)v10->_usageLabel topAnchor];
    v49 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:topAnchor4];
    [v32 addObject:v49];

    leadingAnchor = [(STCandyBarView *)v10->_usageBarView leadingAnchor];
    leadingAnchor2 = [v21 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v32 addObject:v52];

    heightAnchor2 = [(STCandyBarView *)v10->_usageBarView heightAnchor];
    v54 = [heightAnchor2 constraintEqualToConstant:5.0];
    [v32 addObject:v54];

    widthAnchor = [(STCandyBarView *)v10->_usageBarView widthAnchor];
    v56 = [widthAnchor constraintGreaterThanOrEqualToConstant:5.0];
    [v32 addObject:v56];

    bottomAnchor7 = [(STCandyBarView *)v10->_usageBarView bottomAnchor];
    bottomAnchor8 = [contentView bottomAnchor];
    v59 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
    [v32 addObject:v59];

    widthAnchor2 = [(STCandyBarView *)v10->_usageBarView widthAnchor];
    v61 = [widthAnchor2 constraintEqualToConstant:5.0];
    usageBarWidthConstraint = v10->_usageBarWidthConstraint;
    v10->_usageBarWidthConstraint = v61;

    LODWORD(v63) = 1132068864;
    [(NSLayoutConstraint *)v10->_usageBarWidthConstraint setPriority:v63];
    [v32 addObject:v10->_usageBarWidthConstraint];
    centerYAnchor = [(STCandyBarView *)v10->_usageBarView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v66 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:12.0];

    LODWORD(v67) = 1144750080;
    [v66 setPriority:v67];
    [v32 addObject:v66];
    centerYAnchor3 = [(UILabel *)v10->_usageLabel centerYAnchor];
    centerYAnchor4 = [(STCandyBarView *)v10->_usageBarView centerYAnchor];
    v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v32 addObject:v70];

    leadingAnchor3 = [(UILabel *)v10->_usageLabel leadingAnchor];
    trailingAnchor = [(STCandyBarView *)v10->_usageBarView trailingAnchor];
    v73 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
    [v32 addObject:v73];

    trailingAnchor2 = [(UILabel *)v10->_usageLabel trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v76 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

    LODWORD(v77) = 1132068864;
    [v76 setPriority:v77];
    [v32 addObject:v76];
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    LODWORD(v73) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    leadingAnchor4 = [v21 leadingAnchor];
    if (v73)
    {
      iconImageView = [(PSTableCell *)v10 iconImageView];
      trailingAnchor4 = [iconImageView trailingAnchor];
      v82 = [leadingAnchor4 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:2.0];
      [v32 addObject:v82];
    }

    else
    {
      iconImageView = [contentLayoutGuide leadingAnchor];
      trailingAnchor4 = [leadingAnchor4 constraintEqualToAnchor:iconImageView];
      [v32 addObject:trailingAnchor4];
    }

    widthAnchor3 = [(UIImageView *)v10->_trustWarningImageView widthAnchor];
    heightAnchor3 = [(UIImageView *)v10->_trustWarningImageView heightAnchor];
    v85 = [widthAnchor3 constraintEqualToAnchor:heightAnchor3 multiplier:1.0];
    [v32 addObject:v85];

    [MEMORY[0x277CCAAD0] activateConstraints:v32];
    specifierCopy = v89;
  }

  return v10;
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STUsageCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STUsageCell *)a2 setValue:?];
    }
  }

  value = [(STUsageCell *)self value];
  v26.receiver = self;
  v26.super_class = STUsageCell;
  [(PSTableCell *)&v26 setValue:valueCopy];
  itemType = [value itemType];
  v8 = MEMORY[0x277D4BC98];
  if (itemType == 4)
  {
    budgetItemIdentifier = *MEMORY[0x277D4BC98];
  }

  else
  {
    budgetItemIdentifier = [value budgetItemIdentifier];
  }

  v10 = budgetItemIdentifier;
  itemType2 = [valueCopy itemType];
  if (itemType2 == 4)
  {
    budgetItemIdentifier2 = *v8;
  }

  else
  {
    budgetItemIdentifier2 = [valueCopy budgetItemIdentifier];
  }

  v13 = budgetItemIdentifier2;
  if (budgetItemIdentifier2 != v10)
  {
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    v16 = 1;
    if (itemType <= 6 && ((1 << itemType) & 0x74) != 0)
    {
      if ([v13 isEqualToString:v10])
      {
        v16 = 0;
      }

      else
      {
        [mEMORY[0x277D4BD98] removeObserver:self bundleIdentifier:v10];
        if (itemType != 4)
        {
          [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:v10];
        }

        v16 = 1;
      }
    }

    if (itemType2 <= 6 && ((1 << itemType2) & 0x74) != 0)
    {
      if (v16)
      {
        [mEMORY[0x277D4BD98] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v13];
        if (itemType2 != 4)
        {
          [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v13];
        }
      }
    }
  }

  maxUsage = [valueCopy maxUsage];
  [maxUsage doubleValue];
  v19 = v18;

  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  totalUsage = [valueCopy totalUsage];
  [totalUsage doubleValue];
  v22 = v21 / v19 * 198.0;

  if (v22 < 5.0)
  {
    v22 = 5.0;
  }

  usageBarWidthConstraint = [(STUsageCell *)self usageBarWidthConstraint];
  [usageBarWidthConstraint setConstant:v22];

  usageTrusted = [valueCopy usageTrusted];
  trustWarningImageView = [(STUsageCell *)self trustWarningImageView];
  [trustWarningImageView setHidden:usageTrusted];

LABEL_30:
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = STUsageCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifier];
  value = [(STUsageCell *)self value];
  budgetItemIdentifier = [value budgetItemIdentifier];
  if (budgetItemIdentifier)
  {
    displayName = [value displayName];
    image = [value image];
  }

  else
  {
    displayName = 0;
    image = 0;
  }

  itemNameLabel = [(STUsageCell *)self itemNameLabel];
  [itemNameLabel setText:displayName];

  [(PSTableCell *)self setIcon:image];
  [(STUsageCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)icon
{
  specifier = [(PSTableCell *)self specifier];
  v5 = specifier;
  if (specifier)
  {
    v6 = specifier;
    specifier = [(STUsageCell *)self refreshCellContentsWithSpecifier:specifier];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](specifier, v5);
}

- (void)setValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageCell.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"(usageItem == nil) || [usageItem isKindOfClass:[STUsageItem class]]"}];
}

@end