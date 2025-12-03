@interface STNoUsageDataView
- (STNoUsageDataView)initWithPreferredFontTextStyle:(id)style;
- (void)setLocalDevice:(BOOL)device;
@end

@implementation STNoUsageDataView

- (STNoUsageDataView)initWithPreferredFontTextStyle:(id)style
{
  styleCopy = style;
  v24.receiver = self;
  v24.super_class = STNoUsageDataView;
  v5 = [(STNoUsageDataView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(STNoUsageDataView *)v5 setAccessibilityIdentifier:@"STNoUsageDataView"];
    v7 = objc_opt_new();
    noDataDetailTextLabel = v6->_noDataDetailTextLabel;
    v6->_noDataDetailTextLabel = v7;

    [(UILabel *)v6->_noDataDetailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:styleCopy];
    [(UILabel *)v6->_noDataDetailTextLabel setFont:v9];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v6->_noDataDetailTextLabel setTextColor:systemGrayColor];

    [(UILabel *)v6->_noDataDetailTextLabel setLineBreakMode:0];
    [(UILabel *)v6->_noDataDetailTextLabel setTextAlignment:1];
    [(UILabel *)v6->_noDataDetailTextLabel setNumberOfLines:0];
    [(STNoUsageDataView *)v6 addSubview:v6->_noDataDetailTextLabel];
    topAnchor = [(UILabel *)v6->_noDataDetailTextLabel topAnchor];
    topAnchor2 = [(STNoUsageDataView *)v6 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    leadingAnchor = [(UILabel *)v6->_noDataDetailTextLabel leadingAnchor];
    leadingAnchor2 = [(STNoUsageDataView *)v6 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v16 setActive:1];

    bottomAnchor = [(UILabel *)v6->_noDataDetailTextLabel bottomAnchor];
    bottomAnchor2 = [(STNoUsageDataView *)v6 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v19 setActive:1];

    trailingAnchor = [(UILabel *)v6->_noDataDetailTextLabel trailingAnchor];
    trailingAnchor2 = [(STNoUsageDataView *)v6 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v22 setActive:1];
  }

  return v6;
}

- (void)setLocalDevice:(BOOL)device
{
  deviceCopy = device;
  self->_localDevice = device;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  if (deviceCopy)
  {
    v5 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"NoDataDetailTextLabel"];
    noDataDetailTextLabel2 = [v8 localizedStringForKey:v5 value:&stru_28766E5A8 table:0];
    noDataDetailTextLabel = [(STNoUsageDataView *)self noDataDetailTextLabel];
    [noDataDetailTextLabel setText:noDataDetailTextLabel2];
  }

  else
  {
    v5 = [v8 localizedStringForKey:@"NoDataDetailTextLabel" value:&stru_28766E5A8 table:0];
    noDataDetailTextLabel2 = [(STNoUsageDataView *)self noDataDetailTextLabel];
    [noDataDetailTextLabel2 setText:v5];
  }
}

@end