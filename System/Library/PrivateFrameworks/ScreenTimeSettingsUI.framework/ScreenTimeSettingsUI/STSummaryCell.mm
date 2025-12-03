@interface STSummaryCell
- (STSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation STSummaryCell

- (STSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v60[11] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = STSummaryCell;
  v5 = [(STTableCell *)&v59 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = [[_TtC20ScreenTimeSettingsUI27STSummaryCellViewController alloc] initWithUserAltDSID:0 deviceIdentifier:0];
  summaryCellViewController = v5->_summaryCellViewController;
  v5->_summaryCellViewController = v6;

  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_summaryCellViewController];

  view = [(STSummaryCellViewController *)v5->_summaryCellViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STSummaryCell *)v5 contentView];
  [contentView addSubview:view];
  v11 = [STNoUsageDataView alloc];
  v12 = [(STNoUsageDataView *)v11 initWithPreferredFontTextStyle:*MEMORY[0x277D769D0]];
  noUsageDataView = v5->_noUsageDataView;
  v5->_noUsageDataView = v12;

  [(STNoUsageDataView *)v5->_noUsageDataView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STNoUsageDataView *)v5->_noUsageDataView setHidden:1];
  [contentView addSubview:v5->_noUsageDataView];
  traitCollection = [(STSummaryCellViewController *)v5->_summaryCellViewController traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
  v45 = MEMORY[0x277CCAAD0];
  heightAnchor = [view heightAnchor];
  v58 = heightAnchor;
  v19 = 182.0;
  if (IsAccessibilityCategory)
  {
    v19 = 300.0;
  }

  v57 = [heightAnchor constraintEqualToConstant:v19];
  v60[0] = v57;
  topAnchor = [view topAnchor];
  topAnchor2 = [contentView topAnchor];
  v54 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
  v60[1] = v54;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [contentLayoutGuide leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[2] = v50;
  v53 = view;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [contentLayoutGuide trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v60[3] = v47;
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v43 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:2.0];
  v60[4] = v43;
  topAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView topAnchor];
  topAnchor4 = [contentView topAnchor];
  v39 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v60[5] = v39;
  leadingAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView leadingAnchor];
  v42 = contentLayoutGuide;
  leadingAnchor4 = [contentLayoutGuide leadingAnchor];
  v35 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v60[6] = v35;
  bottomAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v32 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v60[7] = v32;
  trailingAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView trailingAnchor];
  trailingAnchor4 = [contentLayoutGuide trailingAnchor];
  v21 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v60[8] = v21;
  centerXAnchor = [(STNoUsageDataView *)v5->_noUsageDataView centerXAnchor];
  v23 = contentView;
  v38 = contentView;
  centerXAnchor2 = [contentView centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[9] = v25;
  centerYAnchor = [(STNoUsageDataView *)v5->_noUsageDataView centerYAnchor];
  centerYAnchor2 = [v23 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[10] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:11];
  [v45 activateConstraints:v29];

  return v5;
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STSummaryCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = STSummaryCell;
  value = [(PSTableCell *)&v14 value];
  [value removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextSTSummaryCell"];
  if (!valueCopy || [valueCopy conformsToProtocol:&unk_2876DC050])
  {
    v13.receiver = self;
    v13.super_class = STSummaryCell;
    [(PSTableCell *)&v13 setValue:valueCopy];
    viewModel = [valueCopy viewModel];
    v7 = [viewModel me];
    altDSID = [v7 altDSID];

    summaryCellViewController = [(STSummaryCell *)self summaryCellViewController];
    v10 = summaryCellViewController;
    if (altDSID)
    {
      usageDetailsCoordinator = [valueCopy usageDetailsCoordinator];
      selectedDeviceIdentifier = [usageDetailsCoordinator selectedDeviceIdentifier];
      [v10 updateWithUserAltDSID:altDSID deviceIdentifier:selectedDeviceIdentifier];
    }

    else
    {
      [summaryCellViewController updateWithUserAltDSID:0 deviceIdentifier:0];
    }

    [valueCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:5 context:"KVOContextSTSummaryCell"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextSTSummaryCell")
  {
    pathCopy = path;
    [(STSummaryCell *)self value];

    v13 = [pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      [(STSummaryCell *)self _selectedUsageReportDidChange:v14];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STSummaryCell;
    pathCopy2 = path;
    [(STSummaryCell *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)dealloc
{
  value = [(STSummaryCell *)self value];
  [(STSummaryCell *)self value];

  [value removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextSTSummaryCell"];
  v4.receiver = self;
  v4.super_class = STSummaryCell;
  [(PSTableCell *)&v4 dealloc];
}

@end