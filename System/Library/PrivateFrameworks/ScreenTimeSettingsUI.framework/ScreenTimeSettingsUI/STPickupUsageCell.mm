@interface STPickupUsageCell
- (STPickupUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setValue:(id)a3;
@end

@implementation STPickupUsageCell

- (STPickupUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v13.receiver = self;
  v13.super_class = STPickupUsageCell;
  v5 = [(STUsageCell *)&v13 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(STPickupUsageCell *)v5 contentView];
    v8 = [v7 trailingAnchor];
    v9 = [(STUsageCell *)v6 usageLabel];
    v10 = [v9 trailingAnchor];
    v11 = [v8 constraintEqualToSystemSpacingAfterAnchor:v10 multiplier:2.0];
    [v11 setActive:1];
  }

  return v6;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = STPickupUsageCell;
    [(STUsageCell *)&v11 setValue:v4];
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
    v8 = [v4 totalUsage];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(v8, "unsignedIntegerValue")];
    v10 = [(STUsageCell *)self usageLabel];
    [v10 setText:v9];
  }
}

@end