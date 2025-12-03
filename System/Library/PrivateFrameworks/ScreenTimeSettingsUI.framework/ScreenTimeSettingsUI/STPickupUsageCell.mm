@interface STPickupUsageCell
- (STPickupUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation STPickupUsageCell

- (STPickupUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = STPickupUsageCell;
  v5 = [(STUsageCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    contentView = [(STPickupUsageCell *)v5 contentView];
    trailingAnchor = [contentView trailingAnchor];
    usageLabel = [(STUsageCell *)v6 usageLabel];
    trailingAnchor2 = [usageLabel trailingAnchor];
    v11 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:2.0];
    [v11 setActive:1];
  }

  return v6;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = STPickupUsageCell;
    [(STUsageCell *)&v11 setValue:valueCopy];
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
    totalUsage = [valueCopy totalUsage];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(totalUsage, "unsignedIntegerValue")];
    usageLabel = [(STUsageCell *)self usageLabel];
    [usageLabel setText:v9];
  }
}

@end