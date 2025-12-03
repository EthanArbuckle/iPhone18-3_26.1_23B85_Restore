@interface TSCellularPlanUsesDataSwitchCell
- (TSCellularPlanUsesDataSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TSCellularPlanUsesDataSwitchCell

- (TSCellularPlanUsesDataSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44.receiver = self;
  v44.super_class = TSCellularPlanUsesDataSwitchCell;
  v4 = [(TSCellularPlanUsesDataSwitchCell *)&v44 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(TSCellularPlanUsesDataSwitchCell *)v4 setAccessoryType:0];
  }

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TSCellularPlanUsesDataSwitchCell *)v5 setTitleLabel:v7];

  titleLabel = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CELLULAR_PLAN_DATA_SWITCH" value:&stru_28753DF48 table:@"Localizable"];
  titleLabel2 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [titleLabel2 setText:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  titleLabel3 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [titleLabel3 setFont:v12];

  titleLabel4 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [titleLabel4 setNumberOfLines:0];

  titleLabel5 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [titleLabel5 setLineBreakMode:0];

  contentView = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  [contentView addSubview:v5->_titleLabel];

  v17 = objc_alloc_init(MEMORY[0x277D75AE8]);
  switchControl = v5->_switchControl;
  v5->_switchControl = v17;

  [(TSCellularPlanUsesDataSwitchCell *)v5 setAccessoryView:v5->_switchControl];
  titleLabel6 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  leadingAnchor = [titleLabel6 leadingAnchor];
  contentView2 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 setActive:1];

  titleLabel7 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  trailingAnchor = [titleLabel7 trailingAnchor];
  contentView3 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v30 setActive:1];

  titleLabel8 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  centerXAnchor = [titleLabel8 centerXAnchor];
  contentView4 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  centerXAnchor2 = [layoutMarginsGuide3 centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v36 setActive:1];

  titleLabel9 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  centerYAnchor = [titleLabel9 centerYAnchor];
  contentView5 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v42 setActive:1];

  return v5;
}

@end