@interface WFLeadingInsetTableViewCell
- (double)_airportSettingsCellConnectionStateExtraLeadingInset;
- (void)awakeFromNib;
- (void)layoutSubviews;
@end

@implementation WFLeadingInsetTableViewCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = WFLeadingInsetTableViewCell;
  [(WFLeadingInsetTableViewCell *)&v2 awakeFromNib];
}

- (void)layoutSubviews
{
  contentView = [(WFLeadingInsetTableViewCell *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(WFLeadingInsetTableViewCell *)self directionalLayoutMargins];
  v11 = v10;
  [(WFLeadingInsetTableViewCell *)self _airportSettingsCellConnectionStateExtraLeadingInset];
  v13 = v11 + v12;
  contentView2 = [(WFLeadingInsetTableViewCell *)self contentView];
  [contentView2 setDirectionalLayoutMargins:{v5, v13, v7, v9}];

  v15.receiver = self;
  v15.super_class = WFLeadingInsetTableViewCell;
  [(WFLeadingInsetTableViewCell *)&v15 layoutSubviews];
}

- (double)_airportSettingsCellConnectionStateExtraLeadingInset
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 >= 414.0 && v8 <= 440.0;
  result = 20.0;
  if (!v9)
  {
    return 24.0;
  }

  return result;
}

@end