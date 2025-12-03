@interface STNotificationUsageCell
- (STNotificationUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation STNotificationUsageCell

- (STNotificationUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = STNotificationUsageCell;
  v5 = [(STUsageCell *)&v32 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v9 = [mEMORY[0x277D4BD98] circleImageWithFillColor:systemRedColor fillDiameter:0 outlineColor:9.0 outlineWidth:0.0];
    v10 = [v6 initWithImage:v9];
    notificationDot = v5->_notificationDot;
    v5->_notificationDot = v10;

    [(UIImageView *)v5->_notificationDot setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_notificationDot setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    contentView = [(STNotificationUsageCell *)v5 contentView];
    [contentView addSubview:v5->_notificationDot];
    usageBarView = [(STUsageCell *)v5 usageBarView];
    v23 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIImageView *)v5->_notificationDot widthAnchor];
    heightAnchor = [(UIImageView *)v5->_notificationDot heightAnchor];
    v28 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v33[0] = v28;
    trailingAnchor = [(UIImageView *)v5->_notificationDot trailingAnchor];
    v27 = usageBarView;
    trailingAnchor2 = [usageBarView trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    v33[1] = v24;
    centerYAnchor = [(UIImageView *)v5->_notificationDot centerYAnchor];
    centerYAnchor2 = [usageBarView centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v33[2] = v15;
    usageLabel = [(STUsageCell *)v5 usageLabel];
    trailingAnchor3 = [usageLabel trailingAnchor];
    contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
    trailingAnchor4 = [contentLayoutGuide trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v33[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v23 activateConstraints:v21];
  }

  return v5;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = STNotificationUsageCell;
    [(STUsageCell *)&v11 setValue:valueCopy];
    v5 = MEMORY[0x277CCACA8];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"NotificationsCount" value:&stru_28766E5A8 table:0];
    totalUsage = [valueCopy totalUsage];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(totalUsage, "unsignedIntegerValue")];
    usageLabel = [(STUsageCell *)self usageLabel];
    [usageLabel setText:v9];
  }
}

@end