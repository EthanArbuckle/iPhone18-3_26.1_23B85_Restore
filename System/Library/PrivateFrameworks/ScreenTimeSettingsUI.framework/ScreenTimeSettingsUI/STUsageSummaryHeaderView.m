@interface STUsageSummaryHeaderView
- (STUsageSummaryHeaderView)initWithSpecifier:(id)a3;
@end

@implementation STUsageSummaryHeaderView

- (STUsageSummaryHeaderView)initWithSpecifier:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = STUsageSummaryHeaderView;
  v5 = [(STTableViewHeaderFooterView *)&v33 initWithReuseIdentifier:0];
  if (v5)
  {
    v31 = +[STScreenTimeSettingsUIBundle bundle];
    v30 = [v31 localizedStringForKey:@"WeekTitle" value:&stru_28766E5A8 table:0];
    v29 = [v31 localizedStringForKey:@"DayTitle" value:&stru_28766E5A8 table:0];
    v6 = objc_alloc(MEMORY[0x277D75A08]);
    v35[0] = v30;
    v35[1] = v29;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v8 = [v6 initWithItems:v7];
    segmentedControl = v5->_segmentedControl;
    v5->_segmentedControl = v8;

    v10 = v5->_segmentedControl;
    v11 = [v4 target];
    -[UISegmentedControl addTarget:action:forControlEvents:](v10, "addTarget:action:forControlEvents:", v11, [v4 buttonAction], 4096);

    [(UISegmentedControl *)v5->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryHeaderView *)v5 contentView];
    v12 = v32 = v4;
    [v12 addSubview:v5->_segmentedControl];
    v25 = [(STTableViewHeaderFooterView *)v5 contentLayoutGuide];
    v22 = MEMORY[0x277CCAAD0];
    v28 = [(UISegmentedControl *)v5->_segmentedControl topAnchor];
    v27 = [v12 topAnchor];
    v26 = [v28 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:2.0];
    v34[0] = v26;
    v24 = [(UISegmentedControl *)v5->_segmentedControl leadingAnchor];
    v23 = [v25 leadingAnchor];
    v13 = [v24 constraintEqualToAnchor:v23];
    v34[1] = v13;
    v14 = [(UISegmentedControl *)v5->_segmentedControl trailingAnchor];
    v15 = [v25 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v34[2] = v16;
    v17 = [(UISegmentedControl *)v5->_segmentedControl bottomAnchor];
    v18 = [v12 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v34[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [v22 activateConstraints:v20];

    v4 = v32;
  }

  return v5;
}

@end