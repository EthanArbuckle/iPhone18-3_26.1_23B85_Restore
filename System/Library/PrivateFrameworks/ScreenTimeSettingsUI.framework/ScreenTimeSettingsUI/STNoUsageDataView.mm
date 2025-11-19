@interface STNoUsageDataView
- (STNoUsageDataView)initWithPreferredFontTextStyle:(id)a3;
- (void)setLocalDevice:(BOOL)a3;
@end

@implementation STNoUsageDataView

- (STNoUsageDataView)initWithPreferredFontTextStyle:(id)a3
{
  v4 = a3;
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
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
    [(UILabel *)v6->_noDataDetailTextLabel setFont:v9];

    v10 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v6->_noDataDetailTextLabel setTextColor:v10];

    [(UILabel *)v6->_noDataDetailTextLabel setLineBreakMode:0];
    [(UILabel *)v6->_noDataDetailTextLabel setTextAlignment:1];
    [(UILabel *)v6->_noDataDetailTextLabel setNumberOfLines:0];
    [(STNoUsageDataView *)v6 addSubview:v6->_noDataDetailTextLabel];
    v11 = [(UILabel *)v6->_noDataDetailTextLabel topAnchor];
    v12 = [(STNoUsageDataView *)v6 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(UILabel *)v6->_noDataDetailTextLabel leadingAnchor];
    v15 = [(STNoUsageDataView *)v6 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UILabel *)v6->_noDataDetailTextLabel bottomAnchor];
    v18 = [(STNoUsageDataView *)v6 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UILabel *)v6->_noDataDetailTextLabel trailingAnchor];
    v21 = [(STNoUsageDataView *)v6 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];
  }

  return v6;
}

- (void)setLocalDevice:(BOOL)a3
{
  v3 = a3;
  self->_localDevice = a3;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  if (v3)
  {
    v5 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"NoDataDetailTextLabel"];
    v6 = [v8 localizedStringForKey:v5 value:&stru_28766E5A8 table:0];
    v7 = [(STNoUsageDataView *)self noDataDetailTextLabel];
    [v7 setText:v6];
  }

  else
  {
    v5 = [v8 localizedStringForKey:@"NoDataDetailTextLabel" value:&stru_28766E5A8 table:0];
    v6 = [(STNoUsageDataView *)self noDataDetailTextLabel];
    [v6 setText:v5];
  }
}

@end