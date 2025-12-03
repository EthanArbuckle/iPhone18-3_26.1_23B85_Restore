@interface STMostUsedCell
- (STMostUsedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)setValue:(id)value;
@end

@implementation STMostUsedCell

- (STMostUsedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v35.receiver = self;
  v35.super_class = STMostUsedCell;
  v9 = [(STUsageCell *)&v35 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STMostUsedCell *)v9 contentView];
    v12 = objc_opt_new();
    allowanceIconView = v10->_allowanceIconView;
    v10->_allowanceIconView = v12;

    [(UIImageView *)v10->_allowanceIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [specifierCopy objectForKeyedSubscript:@"STAllowanceIconKey"];
    [(UIImageView *)v10->_allowanceIconView setImage:v14];

    [contentView addSubview:v10->_allowanceIconView];
    v15 = objc_opt_new();
    usageLabel = [(STUsageCell *)v10 usageLabel];
    trailingAnchor = [usageLabel trailingAnchor];
    leadingAnchor = [(UIImageView *)v10->_allowanceIconView leadingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-8.0];
    [v15 addObject:v19];

    centerYAnchor = [(UIImageView *)v10->_allowanceIconView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v15 addObject:v22];

    heightAnchor = [(UIImageView *)v10->_allowanceIconView heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:15.0];
    [v15 addObject:v24];

    widthAnchor = [(UIImageView *)v10->_allowanceIconView widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:9.0];
    [v15 addObject:v26];

    trailingAnchor2 = [(UIImageView *)v10->_allowanceIconView trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v15 addObject:v29];

    leadingAnchor2 = [(UIImageView *)v10->_allowanceIconView leadingAnchor];
    itemNameLabel = [(STUsageCell *)v10 itemNameLabel];
    trailingAnchor4 = [itemNameLabel trailingAnchor];
    v33 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:8.0];
    [v15 addObject:v33];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
  }

  return v10;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = STMostUsedCell;
    [(STUsageCell *)&v11 setValue:valueCopy];
    totalUsage = [valueCopy totalUsage];
    [totalUsage doubleValue];
    v7 = v6;
    if (v6 >= 60.0)
    {
      st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
      [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
      [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
    }

    else
    {
      st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
    }

    v9 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v7];

    usageLabel = [(STUsageCell *)self usageLabel];
    [usageLabel setText:v9];
  }
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = STMostUsedCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v9 reloadWithSpecifier:specifierCopy animated:animatedCopy];
  v7 = [specifierCopy objectForKeyedSubscript:{@"STAllowanceIconKey", v9.receiver, v9.super_class}];

  allowanceIconView = [(STMostUsedCell *)self allowanceIconView];
  [allowanceIconView setImage:v7];
}

@end