@interface STOverallUsageSummaryCell
- (STOverallUsageSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_setNoUsageDataViewVisibility;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3;
@end

@implementation STOverallUsageSummaryCell

- (STOverallUsageSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v58[10] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = STOverallUsageSummaryCell;
  v5 = [(STTableCell *)&v57 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = [[STUsageSummaryTitleView alloc] initWithVibrancy:0 usageItemType:1 truncateAverageLabel:0];
  titleView = v5->_titleView;
  v5->_titleView = v6;

  [(STUsageSummaryTitleView *)v5->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [[STUsageGraphViewController alloc] initWithTitleView:v5->_titleView graphHeight:1 includePaddle:0 useVibrancy:90.0];
  weekGraphViewController = v5->_weekGraphViewController;
  v5->_weekGraphViewController = v8;

  v10 = [(STUsageGraphViewController *)v5->_weekGraphViewController view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [STUsageReportGraphDataSet alloc];
  v12 = objc_opt_new();
  v56 = [(STUsageReportGraphDataSet *)v11 initEmptyDataSetWithTimePeriod:2 referenceDate:v12];

  [(STUsageGraphViewController *)v5->_weekGraphViewController setDataSet:v56 animated:0];
  v13 = [(STTableCell *)v5 childViewControllers];
  [v13 addObject:v5->_weekGraphViewController];

  v14 = [(STUsageGraphViewController *)v5->_weekGraphViewController view];
  v15 = [(STOverallUsageSummaryCell *)v5 contentView];
  v52 = v14;
  [v15 addSubview:v14];
  v16 = [STNoUsageDataView alloc];
  v17 = [(STNoUsageDataView *)v16 initWithPreferredFontTextStyle:*MEMORY[0x277D769D0]];
  noUsageDataView = v5->_noUsageDataView;
  v5->_noUsageDataView = v17;

  [(STNoUsageDataView *)v5->_noUsageDataView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STNoUsageDataView *)v5->_noUsageDataView setHidden:1];
  [v15 addSubview:v5->_noUsageDataView];
  v19 = [(STTableCell *)v5 contentLayoutGuide];
  v41 = MEMORY[0x277CCAAD0];
  v55 = [v14 topAnchor];
  v54 = [v15 topAnchor];
  v53 = [v55 constraintEqualToSystemSpacingBelowAnchor:v54 multiplier:2.0];
  v58[0] = v53;
  v51 = [v14 leadingAnchor];
  v50 = [v19 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v58[1] = v49;
  v48 = [v14 trailingAnchor];
  v47 = [v19 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v58[2] = v46;
  v45 = [v15 bottomAnchor];
  v44 = [v14 bottomAnchor];
  v43 = [v45 constraintEqualToSystemSpacingBelowAnchor:v44 multiplier:2.0];
  v58[3] = v43;
  v40 = [(STNoUsageDataView *)v5->_noUsageDataView topAnchor];
  v39 = [v15 topAnchor];
  v38 = [v40 constraintGreaterThanOrEqualToAnchor:v39];
  v58[4] = v38;
  v36 = [(STNoUsageDataView *)v5->_noUsageDataView leadingAnchor];
  v42 = v19;
  v35 = [v19 leadingAnchor];
  v34 = [v36 constraintGreaterThanOrEqualToAnchor:v35];
  v58[5] = v34;
  v33 = [(STNoUsageDataView *)v5->_noUsageDataView bottomAnchor];
  v32 = [v15 bottomAnchor];
  v31 = [v33 constraintLessThanOrEqualToAnchor:v32];
  v58[6] = v31;
  v30 = [(STNoUsageDataView *)v5->_noUsageDataView trailingAnchor];
  v20 = [v19 trailingAnchor];
  v21 = [v30 constraintLessThanOrEqualToAnchor:v20];
  v58[7] = v21;
  v22 = [(STNoUsageDataView *)v5->_noUsageDataView centerXAnchor];
  v37 = v15;
  v23 = [v15 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v58[8] = v24;
  v25 = [(STNoUsageDataView *)v5->_noUsageDataView centerYAnchor];
  v26 = [v15 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v58[9] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:10];
  [v41 activateConstraints:v28];

  [(STUsageSummaryTitleView *)v5->_titleView addObserver:v5 forKeyPath:@"hasMultilineLayout" options:3 context:"KVOContextOverallUsageSummaryCell"];
  return v5;
}

- (void)dealloc
{
  [(STUsageSummaryTitleView *)self->_titleView removeObserver:self forKeyPath:@"hasMultilineLayout" context:"KVOContextOverallUsageSummaryCell"];
  v3.receiver = self;
  v3.super_class = STOverallUsageSummaryCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextOverallUsageSummaryCell")
  {
    if ([a3 isEqualToString:@"hasMultilineLayout"])
    {
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v12 = [MEMORY[0x277CBEB68] null];

      if (v11 == v12)
      {

        v11 = 0;
      }

      v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      -[STOverallUsageSummaryCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v11 BOOLValue], objc_msgSend(v13, "BOOLValue"));
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STOverallUsageSummaryCell;
    [(STOverallUsageSummaryCell *)&v15 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a3 != a4)
  {
    [(STOverallUsageSummaryCell *)self setNeedsUpdateConstraints];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:0x2876773C8 object:self];
  }
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STOverallUsageSummaryCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 conformsToProtocol:&unk_2876DCA10])
  {
    v15.receiver = self;
    v15.super_class = STOverallUsageSummaryCell;
    [(PSTableCell *)&v15 setValue:v5];
    v6 = [(STOverallUsageSummaryCell *)self titleView];
    v7 = [(STOverallUsageSummaryCell *)self weekGraphViewController];
    v8 = [(STOverallUsageSummaryCell *)self noUsageDataView];
    v9 = [v5 viewModel];
    if ([v9 hasUsageData])
    {
      v10 = [v5 viewModel];
      v11 = [v10 selectedWeekUsageReport];

      [v6 setUsageReport:v11];
      v12 = [v11 screenTimeDataSet];
      v13 = [(STOverallUsageSummaryCell *)self window];
      [v7 setDataSet:v12 animated:v13 != 0];

      [v6 setHidden:0];
      v14 = [v7 view];
      [v14 setHidden:0];
    }

    else
    {
      [v8 setLocalDevice:{objc_msgSend(v9, "isLocalDevice")}];
      [v6 setHidden:1];
      v11 = [v7 view];
      [v11 setHidden:1];
    }

    [(STOverallUsageSummaryCell *)self performSelector:sel__setNoUsageDataViewVisibility withObject:0 afterDelay:0.1];
  }
}

- (void)_setNoUsageDataViewVisibility
{
  v3 = [(STOverallUsageSummaryCell *)self value];
  v4 = [v3 viewModel];
  v5 = [v4 hasUsageData];

  v6 = [(STOverallUsageSummaryCell *)self noUsageDataView];
  [v6 setHidden:v5];

  v8 = [(STOverallUsageSummaryCell *)self weekGraphViewController];
  v7 = [v8 view];
  [v7 setHidden:v5 ^ 1];
}

@end