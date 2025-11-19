@interface STSummaryCell
- (STSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3;
@end

@implementation STSummaryCell

- (STSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v60[11] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = STSummaryCell;
  v5 = [(STTableCell *)&v59 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = [[_TtC20ScreenTimeSettingsUI27STSummaryCellViewController alloc] initWithUserAltDSID:0 deviceIdentifier:0];
  summaryCellViewController = v5->_summaryCellViewController;
  v5->_summaryCellViewController = v6;

  v8 = [(STTableCell *)v5 childViewControllers];
  [v8 addObject:v5->_summaryCellViewController];

  v9 = [(STSummaryCellViewController *)v5->_summaryCellViewController view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(STSummaryCell *)v5 contentView];
  [v10 addSubview:v9];
  v11 = [STNoUsageDataView alloc];
  v12 = [(STNoUsageDataView *)v11 initWithPreferredFontTextStyle:*MEMORY[0x277D769D0]];
  noUsageDataView = v5->_noUsageDataView;
  v5->_noUsageDataView = v12;

  [(STNoUsageDataView *)v5->_noUsageDataView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STNoUsageDataView *)v5->_noUsageDataView setHidden:1];
  [v10 addSubview:v5->_noUsageDataView];
  v14 = [(STSummaryCellViewController *)v5->_summaryCellViewController traitCollection];
  v15 = [v14 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

  v17 = [(STTableCell *)v5 contentLayoutGuide];
  v45 = MEMORY[0x277CCAAD0];
  v18 = [v9 heightAnchor];
  v58 = v18;
  v19 = 182.0;
  if (IsAccessibilityCategory)
  {
    v19 = 300.0;
  }

  v57 = [v18 constraintEqualToConstant:v19];
  v60[0] = v57;
  v56 = [v9 topAnchor];
  v55 = [v10 topAnchor];
  v54 = [v56 constraintEqualToSystemSpacingBelowAnchor:v55 multiplier:2.0];
  v60[1] = v54;
  v52 = [v9 leadingAnchor];
  v51 = [v17 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v60[2] = v50;
  v53 = v9;
  v49 = [v9 trailingAnchor];
  v48 = [v17 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v60[3] = v47;
  v46 = [v10 bottomAnchor];
  v44 = [v9 bottomAnchor];
  v43 = [v46 constraintEqualToSystemSpacingBelowAnchor:v44 multiplier:2.0];
  v60[4] = v43;
  v41 = [(STNoUsageDataView *)v5->_noUsageDataView topAnchor];
  v40 = [v10 topAnchor];
  v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40];
  v60[5] = v39;
  v37 = [(STNoUsageDataView *)v5->_noUsageDataView leadingAnchor];
  v42 = v17;
  v36 = [v17 leadingAnchor];
  v35 = [v37 constraintGreaterThanOrEqualToAnchor:v36];
  v60[6] = v35;
  v34 = [(STNoUsageDataView *)v5->_noUsageDataView bottomAnchor];
  v33 = [v10 bottomAnchor];
  v32 = [v34 constraintLessThanOrEqualToAnchor:v33];
  v60[7] = v32;
  v31 = [(STNoUsageDataView *)v5->_noUsageDataView trailingAnchor];
  v20 = [v17 trailingAnchor];
  v21 = [v31 constraintLessThanOrEqualToAnchor:v20];
  v60[8] = v21;
  v22 = [(STNoUsageDataView *)v5->_noUsageDataView centerXAnchor];
  v23 = v10;
  v38 = v10;
  v24 = [v10 centerXAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v60[9] = v25;
  v26 = [(STNoUsageDataView *)v5->_noUsageDataView centerYAnchor];
  v27 = [v23 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v60[10] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:11];
  [v45 activateConstraints:v29];

  return v5;
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STSummaryCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STSummaryCell;
  v5 = [(PSTableCell *)&v14 value];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextSTSummaryCell"];
  if (!v4 || [v4 conformsToProtocol:&unk_2876DC050])
  {
    v13.receiver = self;
    v13.super_class = STSummaryCell;
    [(PSTableCell *)&v13 setValue:v4];
    v6 = [v4 viewModel];
    v7 = [v6 me];
    v8 = [v7 altDSID];

    v9 = [(STSummaryCell *)self summaryCellViewController];
    v10 = v9;
    if (v8)
    {
      v11 = [v4 usageDetailsCoordinator];
      v12 = [v11 selectedDeviceIdentifier];
      [v10 updateWithUserAltDSID:v8 deviceIdentifier:v12];
    }

    else
    {
      [v9 updateWithUserAltDSID:0 deviceIdentifier:0];
    }

    [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:5 context:"KVOContextSTSummaryCell"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextSTSummaryCell")
  {
    v12 = a3;
    [(STSummaryCell *)self value];

    v13 = [v12 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
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
    v11 = a3;
    [(STSummaryCell *)&v16 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)dealloc
{
  v3 = [(STSummaryCell *)self value];
  [(STSummaryCell *)self value];

  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextSTSummaryCell"];
  v4.receiver = self;
  v4.super_class = STSummaryCell;
  [(PSTableCell *)&v4 dealloc];
}

@end