@interface STOverallUsageSummaryCell
- (STOverallUsageSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_setNoUsageDataViewVisibility;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation STOverallUsageSummaryCell

- (STOverallUsageSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v58[10] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = STOverallUsageSummaryCell;
  v5 = [(STTableCell *)&v57 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = [[STUsageSummaryTitleView alloc] initWithVibrancy:0 usageItemType:1 truncateAverageLabel:0];
  titleView = v5->_titleView;
  v5->_titleView = v6;

  [(STUsageSummaryTitleView *)v5->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [[STUsageGraphViewController alloc] initWithTitleView:v5->_titleView graphHeight:1 includePaddle:0 useVibrancy:90.0];
  weekGraphViewController = v5->_weekGraphViewController;
  v5->_weekGraphViewController = v8;

  view = [(STUsageGraphViewController *)v5->_weekGraphViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [STUsageReportGraphDataSet alloc];
  v12 = objc_opt_new();
  v56 = [(STUsageReportGraphDataSet *)v11 initEmptyDataSetWithTimePeriod:2 referenceDate:v12];

  [(STUsageGraphViewController *)v5->_weekGraphViewController setDataSet:v56 animated:0];
  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_weekGraphViewController];

  view2 = [(STUsageGraphViewController *)v5->_weekGraphViewController view];
  contentView = [(STOverallUsageSummaryCell *)v5 contentView];
  v52 = view2;
  [contentView addSubview:view2];
  v16 = [STNoUsageDataView alloc];
  v17 = [(STNoUsageDataView *)v16 initWithPreferredFontTextStyle:*MEMORY[0x277D769D0]];
  noUsageDataView = v5->_noUsageDataView;
  v5->_noUsageDataView = v17;

  [(STNoUsageDataView *)v5->_noUsageDataView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STNoUsageDataView *)v5->_noUsageDataView setHidden:1];
  [contentView addSubview:v5->_noUsageDataView];
  contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
  v41 = MEMORY[0x277CCAAD0];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v53 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
  v58[0] = v53;
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [contentLayoutGuide leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v58[1] = v49;
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [contentLayoutGuide trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v58[2] = v46;
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v43 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:2.0];
  v58[3] = v43;
  topAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView topAnchor];
  topAnchor4 = [contentView topAnchor];
  v38 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v58[4] = v38;
  leadingAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView leadingAnchor];
  v42 = contentLayoutGuide;
  leadingAnchor4 = [contentLayoutGuide leadingAnchor];
  v34 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v58[5] = v34;
  bottomAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v31 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v58[6] = v31;
  trailingAnchor3 = [(STNoUsageDataView *)v5->_noUsageDataView trailingAnchor];
  trailingAnchor4 = [contentLayoutGuide trailingAnchor];
  v21 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v58[7] = v21;
  centerXAnchor = [(STNoUsageDataView *)v5->_noUsageDataView centerXAnchor];
  v37 = contentView;
  centerXAnchor2 = [contentView centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v58[8] = v24;
  centerYAnchor = [(STNoUsageDataView *)v5->_noUsageDataView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextOverallUsageSummaryCell")
  {
    if ([path isEqualToString:@"hasMultilineLayout"])
    {
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v11 == null)
      {

        v11 = 0;
      }

      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v13 == null2)
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
    [(STOverallUsageSummaryCell *)&v15 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    [(STOverallUsageSummaryCell *)self setNeedsUpdateConstraints];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:0x2876773C8 object:self];
  }
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STOverallUsageSummaryCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (!valueCopy || [valueCopy conformsToProtocol:&unk_2876DCA10])
  {
    v15.receiver = self;
    v15.super_class = STOverallUsageSummaryCell;
    [(PSTableCell *)&v15 setValue:v5];
    titleView = [(STOverallUsageSummaryCell *)self titleView];
    weekGraphViewController = [(STOverallUsageSummaryCell *)self weekGraphViewController];
    noUsageDataView = [(STOverallUsageSummaryCell *)self noUsageDataView];
    viewModel = [v5 viewModel];
    if ([viewModel hasUsageData])
    {
      viewModel2 = [v5 viewModel];
      selectedWeekUsageReport = [viewModel2 selectedWeekUsageReport];

      [titleView setUsageReport:selectedWeekUsageReport];
      screenTimeDataSet = [selectedWeekUsageReport screenTimeDataSet];
      window = [(STOverallUsageSummaryCell *)self window];
      [weekGraphViewController setDataSet:screenTimeDataSet animated:window != 0];

      [titleView setHidden:0];
      view = [weekGraphViewController view];
      [view setHidden:0];
    }

    else
    {
      [noUsageDataView setLocalDevice:{objc_msgSend(viewModel, "isLocalDevice")}];
      [titleView setHidden:1];
      selectedWeekUsageReport = [weekGraphViewController view];
      [selectedWeekUsageReport setHidden:1];
    }

    [(STOverallUsageSummaryCell *)self performSelector:sel__setNoUsageDataViewVisibility withObject:0 afterDelay:0.1];
  }
}

- (void)_setNoUsageDataViewVisibility
{
  value = [(STOverallUsageSummaryCell *)self value];
  viewModel = [value viewModel];
  hasUsageData = [viewModel hasUsageData];

  noUsageDataView = [(STOverallUsageSummaryCell *)self noUsageDataView];
  [noUsageDataView setHidden:hasUsageData];

  weekGraphViewController = [(STOverallUsageSummaryCell *)self weekGraphViewController];
  view = [weekGraphViewController view];
  [view setHidden:hasUsageData ^ 1];
}

@end