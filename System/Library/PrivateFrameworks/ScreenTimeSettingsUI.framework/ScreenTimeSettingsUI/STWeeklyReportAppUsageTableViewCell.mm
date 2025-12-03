@interface STWeeklyReportAppUsageTableViewCell
- (STWeeklyReportAppUsageTableViewCell)initWithUsageReport:(id)report;
@end

@implementation STWeeklyReportAppUsageTableViewCell

- (STWeeklyReportAppUsageTableViewCell)initWithUsageReport:(id)report
{
  reportCopy = report;
  v13.receiver = self;
  v13.super_class = STWeeklyReportAppUsageTableViewCell;
  v5 = [(STWeeklyReportAppUsageTableViewCell *)&v13 initWithStyle:0 reuseIdentifier:0];
  if (v5)
  {
    v6 = [[STWeeklyReportAppUsageView alloc] initWithUsageReport:reportCopy useVibrancy:0];
    [(STWeeklyReportAppUsageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(STWeeklyReportAppUsageTableViewCell *)v5 contentView];
    [contentView addSubview:v6];

    contentView2 = [(STWeeklyReportAppUsageTableViewCell *)v5 contentView];
    [contentView2 sizeToFit];

    v9 = MEMORY[0x277CCAAD0];
    contentView3 = [(STWeeklyReportAppUsageTableViewCell *)v5 contentView];
    v11 = [v9 st_constraintsForView:v6 equalToView:contentView3];
    [v9 activateConstraints:v11];
  }

  return v5;
}

@end