@interface STNotificationUsageCell
- (STNotificationUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setValue:(id)a3;
@end

@implementation STNotificationUsageCell

- (STNotificationUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = STNotificationUsageCell;
  v5 = [(STUsageCell *)&v32 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = [MEMORY[0x277D4BD98] sharedCache];
    v8 = [MEMORY[0x277D75348] systemRedColor];
    v9 = [v7 circleImageWithFillColor:v8 fillDiameter:0 outlineColor:9.0 outlineWidth:0.0];
    v10 = [v6 initWithImage:v9];
    notificationDot = v5->_notificationDot;
    v5->_notificationDot = v10;

    [(UIImageView *)v5->_notificationDot setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_notificationDot setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v31 = [(STNotificationUsageCell *)v5 contentView];
    [v31 addSubview:v5->_notificationDot];
    v12 = [(STUsageCell *)v5 usageBarView];
    v23 = MEMORY[0x277CCAAD0];
    v30 = [(UIImageView *)v5->_notificationDot widthAnchor];
    v29 = [(UIImageView *)v5->_notificationDot heightAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v26 = [(UIImageView *)v5->_notificationDot trailingAnchor];
    v27 = v12;
    v25 = [v12 trailingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:4.0];
    v33[1] = v24;
    v13 = [(UIImageView *)v5->_notificationDot centerYAnchor];
    v14 = [v12 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v33[2] = v15;
    v16 = [(STUsageCell *)v5 usageLabel];
    v17 = [v16 trailingAnchor];
    v18 = [(STTableCell *)v5 contentLayoutGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v33[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v23 activateConstraints:v21];
  }

  return v5;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = STNotificationUsageCell;
    [(STUsageCell *)&v11 setValue:v4];
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"NotificationsCount" value:&stru_28766E5A8 table:0];
    v8 = [v4 totalUsage];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(v8, "unsignedIntegerValue")];
    v10 = [(STUsageCell *)self usageLabel];
    [v10 setText:v9];
  }
}

@end