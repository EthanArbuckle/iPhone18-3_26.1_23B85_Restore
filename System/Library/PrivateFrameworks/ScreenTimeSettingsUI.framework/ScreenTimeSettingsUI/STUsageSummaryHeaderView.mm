@interface STUsageSummaryHeaderView
- (STUsageSummaryHeaderView)initWithSpecifier:(id)specifier;
@end

@implementation STUsageSummaryHeaderView

- (STUsageSummaryHeaderView)initWithSpecifier:(id)specifier
{
  v35[2] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
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
    target = [specifierCopy target];
    -[UISegmentedControl addTarget:action:forControlEvents:](v10, "addTarget:action:forControlEvents:", target, [specifierCopy buttonAction], 4096);

    [(UISegmentedControl *)v5->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUsageSummaryHeaderView *)v5 contentView];
    v12 = v32 = specifierCopy;
    [v12 addSubview:v5->_segmentedControl];
    contentLayoutGuide = [(STTableViewHeaderFooterView *)v5 contentLayoutGuide];
    v22 = MEMORY[0x277CCAAD0];
    topAnchor = [(UISegmentedControl *)v5->_segmentedControl topAnchor];
    topAnchor2 = [v12 topAnchor];
    v26 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v34[0] = v26;
    leadingAnchor = [(UISegmentedControl *)v5->_segmentedControl leadingAnchor];
    leadingAnchor2 = [contentLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[1] = v13;
    trailingAnchor = [(UISegmentedControl *)v5->_segmentedControl trailingAnchor];
    trailingAnchor2 = [contentLayoutGuide trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[2] = v16;
    bottomAnchor = [(UISegmentedControl *)v5->_segmentedControl bottomAnchor];
    bottomAnchor2 = [v12 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [v22 activateConstraints:v20];

    specifierCopy = v32;
  }

  return v5;
}

@end