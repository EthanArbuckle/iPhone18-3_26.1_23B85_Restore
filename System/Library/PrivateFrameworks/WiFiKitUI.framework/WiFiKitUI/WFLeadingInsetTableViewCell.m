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
  v3 = [(WFLeadingInsetTableViewCell *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(WFLeadingInsetTableViewCell *)self directionalLayoutMargins];
  v11 = v10;
  [(WFLeadingInsetTableViewCell *)self _airportSettingsCellConnectionStateExtraLeadingInset];
  v13 = v11 + v12;
  v14 = [(WFLeadingInsetTableViewCell *)self contentView];
  [v14 setDirectionalLayoutMargins:{v5, v13, v7, v9}];

  v15.receiver = self;
  v15.super_class = WFLeadingInsetTableViewCell;
  [(WFLeadingInsetTableViewCell *)&v15 layoutSubviews];
}

- (double)_airportSettingsCellConnectionStateExtraLeadingInset
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
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