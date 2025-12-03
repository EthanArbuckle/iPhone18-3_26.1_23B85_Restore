@interface STNotificationsPickupSummaryTableViewCell
- (STNotificationsPickupSummaryTableViewCell)initWithUsageReport:(id)report;
@end

@implementation STNotificationsPickupSummaryTableViewCell

- (STNotificationsPickupSummaryTableViewCell)initWithUsageReport:(id)report
{
  reportCopy = report;
  v13.receiver = self;
  v13.super_class = STNotificationsPickupSummaryTableViewCell;
  v5 = [(STNotificationsPickupSummaryTableViewCell *)&v13 initWithStyle:0 reuseIdentifier:0];
  if (v5)
  {
    v6 = [[STNotificationsPickupSummaryView alloc] initWithUsageReport:reportCopy];
    [(STNotificationsPickupSummaryView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    [contentView addSubview:v6];

    contentView2 = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    [contentView2 sizeToFit];

    v9 = MEMORY[0x277CCAAD0];
    contentView3 = [(STNotificationsPickupSummaryTableViewCell *)v5 contentView];
    v11 = [v9 st_constraintsForView:contentView3 equalToView:v6];
    [v9 activateConstraints:v11];
  }

  return v5;
}

@end