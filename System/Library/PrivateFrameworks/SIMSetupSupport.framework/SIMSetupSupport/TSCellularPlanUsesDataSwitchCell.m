@interface TSCellularPlanUsesDataSwitchCell
- (TSCellularPlanUsesDataSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TSCellularPlanUsesDataSwitchCell

- (TSCellularPlanUsesDataSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44.receiver = self;
  v44.super_class = TSCellularPlanUsesDataSwitchCell;
  v4 = [(TSCellularPlanUsesDataSwitchCell *)&v44 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(TSCellularPlanUsesDataSwitchCell *)v4 setAccessoryType:0];
  }

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TSCellularPlanUsesDataSwitchCell *)v5 setTitleLabel:v7];

  v8 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CELLULAR_PLAN_DATA_SWITCH" value:&stru_28753DF48 table:@"Localizable"];
  v11 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [v11 setText:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v13 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [v13 setFont:v12];

  v14 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [v14 setNumberOfLines:0];

  v15 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  [v15 setLineBreakMode:0];

  v16 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  [v16 addSubview:v5->_titleLabel];

  v17 = objc_alloc_init(MEMORY[0x277D75AE8]);
  switchControl = v5->_switchControl;
  v5->_switchControl = v17;

  [(TSCellularPlanUsesDataSwitchCell *)v5 setAccessoryView:v5->_switchControl];
  v19 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  v20 = [v19 leadingAnchor];
  v21 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 leadingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  v26 = [v25 trailingAnchor];
  v27 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  v28 = [v27 layoutMarginsGuide];
  v29 = [v28 trailingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  v32 = [v31 centerXAnchor];
  v33 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 centerXAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [(TSCellularPlanUsesDataSwitchCell *)v5 titleLabel];
  v38 = [v37 centerYAnchor];
  v39 = [(TSCellularPlanUsesDataSwitchCell *)v5 contentView];
  v40 = [v39 layoutMarginsGuide];
  v41 = [v40 centerYAnchor];
  v42 = [v38 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  return v5;
}

@end