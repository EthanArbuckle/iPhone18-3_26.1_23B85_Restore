@interface STDailyAverageSummaryTableViewCell
- (STDailyAverageSummaryTableViewCell)initWithUsageReport:(id)report;
- (void)_layoutDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation STDailyAverageSummaryTableViewCell

- (STDailyAverageSummaryTableViewCell)initWithUsageReport:(id)report
{
  v51 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v49.receiver = self;
  v49.super_class = STDailyAverageSummaryTableViewCell;
  v5 = [(STTableCell *)&v49 initWithStyle:0 reuseIdentifier:0 specifier:0];
  v6 = [[STUsageSummaryTitleView alloc] initWithVibrancy:0 usageItemType:1 truncateAverageLabel:0];
  titleView = v5->_titleView;
  v5->_titleView = v6;

  [(STUsageSummaryTitleView *)v5->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STUsageSummaryTitleView *)v5->_titleView setUsageReport:reportCopy];
  v8 = [[STUsageGraphViewController alloc] initWithTitleView:v5->_titleView graphHeight:0 includePaddle:0 useVibrancy:90.0];
  usageGraphViewController = v5->_usageGraphViewController;
  v5->_usageGraphViewController = v8;

  categoryUsageDataSet = [reportCopy categoryUsageDataSet];
  [(STUsageGraphViewController *)v5->_usageGraphViewController setDataSet:categoryUsageDataSet];

  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_usageGraphViewController];

  view = [(STUsageGraphViewController *)v5->_usageGraphViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STDailyAverageSummaryTableViewCell *)v5 contentView];
  firstValue = view;
  [contentView addSubview:view];
  v14 = objc_opt_new();
  topItemsView = v5->_topItemsView;
  v5->_topItemsView = v14;

  [(STHorizontallySegmentedView *)v5->_topItemsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = v5;
  v40 = contentView;
  [contentView addSubview:v5->_topItemsView];
  v16 = [reportCopy topUsageItemsWithMaxCount:3 type:3 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
  v43 = reportCopy;
  if (![v16 count])
  {
    v17 = [reportCopy topUsageItemsWithMaxCount:3 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];

    v16 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v16;
  v19 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        v24 = [STSegmentItem alloc];
        displayName = [v23 displayName];
        totalUsage = [v23 totalUsage];
        [totalUsage doubleValue];
        v28 = v27;
        if (v27 >= 60.0)
        {
          st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
          [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
          [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
        }

        else
        {
          st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
        }

        v30 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v28];

        color = [v23 color];
        v32 = [(STSegmentItem *)v24 initWithTitleText:displayName detailText:v30 titleColor:color detailImage:0 detailImageTintColor:0];

        [v18 addObject:v32];
      }

      v20 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v20);
  }

  v33 = v42;
  [(STHorizontallySegmentedView *)v42->_topItemsView setSegmentItems:v18];
  v34 = _NSDictionaryOfVariableBindings(&cfstr_GraphviewTopit.isa, firstValue, v42->_topItemsView, 0);
  v35 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[graphView]-|" options:0 metrics:0 views:v34];
  v36 = [v35 mutableCopy];

  v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_topItemsView]-|" options:0 metrics:0 views:v34];
  [v36 addObjectsFromArray:v37];

  v38 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-14.0-[graphView]-9.0-[_topItemsView]-11.0-|" options:0 metrics:0 views:v34];
  [v36 addObjectsFromArray:v38];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
  [(STUsageSummaryTitleView *)v33->_titleView addObserver:v33 forKeyPath:@"hasMultilineLayout" options:3 context:"KVOContextDailyAverageSummaryTableViewCell"];
  [(STHorizontallySegmentedView *)v33->_topItemsView addObserver:v33 forKeyPath:@"numberOfLines" options:3 context:"KVOContextDailyAverageSummaryTableViewCell"];

  return v42;
}

- (void)dealloc
{
  [(STUsageSummaryTitleView *)self->_titleView removeObserver:self forKeyPath:@"hasMultilineLayout" context:"KVOContextDailyAverageSummaryTableViewCell"];
  [(STHorizontallySegmentedView *)self->_topItemsView removeObserver:self forKeyPath:@"numberOfLines" context:"KVOContextDailyAverageSummaryTableViewCell"];
  v3.receiver = self;
  v3.super_class = STDailyAverageSummaryTableViewCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextDailyAverageSummaryTableViewCell")
  {
    if ([pathCopy isEqualToString:@"numberOfLines"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v14 == null2)
      {

        v14 = 0;
      }

      -[STDailyAverageSummaryTableViewCell _numberOfLinesDidChangeFrom:to:](self, "_numberOfLinesDidChangeFrom:to:", [v12 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));
    }

    else
    {
      if (![pathCopy isEqualToString:@"hasMultilineLayout"])
      {
        goto LABEL_16;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v12 == null3)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null4 = [MEMORY[0x277CBEB68] null];

      if (v14 == null4)
      {

        v14 = 0;
      }

      -[STDailyAverageSummaryTableViewCell _layoutDidChangeFrom:to:](self, "_layoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
    }

    goto LABEL_16;
  }

  v18.receiver = self;
  v18.super_class = STDailyAverageSummaryTableViewCell;
  [(STDailyAverageSummaryTableViewCell *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_16:
}

- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to
{
  if (from != to)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HeightDidChange" object:self];
  }
}

- (void)_layoutDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HeightDidChange" object:self];
  }
}

@end