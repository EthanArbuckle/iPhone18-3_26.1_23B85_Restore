@interface STNotificationsPickupSummaryTableViewCell
- (STNotificationsPickupSummaryTableViewCell)initWithUsageReport:(id)a3;
@end

@implementation STNotificationsPickupSummaryTableViewCell

- (STNotificationsPickupSummaryTableViewCell)initWithUsageReport:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STNotificationsPickupSummaryTableViewCell;
  v5 = [(STNotificationsPickupSummaryTableViewCell *)&v13 initWithStyle:0 reuseIdentifier:0];
  if (v5)
  {
    v6 = [[STNotificationsPickupSummaryView alloc] initWithUsageReport:v4];
    [(STNotificationsPickupSummaryView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    [v7 addSubview:v6];

    v8 = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    [v8 sizeToFit];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    v11 = [v9 st_constraintsForView:v10 equalToView:v6];
    [v9 activateConstraints:v11];
  }

  return v5;
}

@end