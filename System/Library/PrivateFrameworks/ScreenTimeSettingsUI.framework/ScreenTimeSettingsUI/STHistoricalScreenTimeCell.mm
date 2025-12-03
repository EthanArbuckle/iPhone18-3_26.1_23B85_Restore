@interface STHistoricalScreenTimeCell
- (STHistoricalScreenTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout numberOfLines:(unint64_t)lines;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation STHistoricalScreenTimeCell

- (STHistoricalScreenTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v30.receiver = self;
  v30.super_class = STHistoricalScreenTimeCell;
  v5 = [(STTableCell *)&v30 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = [STHistoricalUsageViewController historicalUsageViewControllerOfType:1 graphHeight:90.0];
  historicalUsageViewController = v5->_historicalUsageViewController;
  v5->_historicalUsageViewController = v6;

  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_historicalUsageViewController];

  v9 = objc_opt_new();
  topItemsView = v5->_topItemsView;
  v5->_topItemsView = v9;

  [(STHorizontallySegmentedView *)v5->_topItemsView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STHistoricalScreenTimeCell *)v5 contentView];
  view = [(STHistoricalUsageViewController *)v5->_historicalUsageViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:view];
  [contentView addSubview:v5->_topItemsView];
  v29 = _NSDictionaryOfVariableBindings(&cfstr_Historicalusag_1.isa, view, v5->_topItemsView, 0);
  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[historicalUsageView][_topItemsView]-11.0-|" options:0 metrics:0 views:v29];
  v14 = [v13 mutableCopy];

  contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 addObject:v18];

  trailingAnchor = [contentLayoutGuide trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v14 addObject:v21];

  leadingAnchor3 = [contentLayoutGuide leadingAnchor];
  leadingAnchor4 = [(STHorizontallySegmentedView *)v5->_topItemsView leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v14 addObject:v24];

  trailingAnchor3 = [contentLayoutGuide trailingAnchor];
  trailingAnchor4 = [(STHorizontallySegmentedView *)v5->_topItemsView trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v14 addObject:v27];

  [MEMORY[0x277CCAAD0] activateConstraints:v14];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"titleView.hasMultilineLayout" options:3 context:"KVOContextHistoricalScreenTimeCell"];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"currentViewMode" options:3 context:"KVOContextHistoricalScreenTimeCell"];
  [(STHorizontallySegmentedView *)v5->_topItemsView addObserver:v5 forKeyPath:@"numberOfLines" options:3 context:"KVOContextHistoricalScreenTimeCell"];

  return v5;
}

- (void)dealloc
{
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"titleView.hasMultilineLayout" context:"KVOContextHistoricalScreenTimeCell"];
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"currentViewMode" context:"KVOContextHistoricalScreenTimeCell"];
  [(STHorizontallySegmentedView *)self->_topItemsView removeObserver:self forKeyPath:@"numberOfLines" context:"KVOContextHistoricalScreenTimeCell"];
  v3.receiver = self;
  v3.super_class = STHistoricalScreenTimeCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextHistoricalScreenTimeCell")
  {
    [(STHistoricalScreenTimeCell *)self historicalUsageViewController];

    if ([pathCopy isEqualToString:@"currentViewMode"])
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

      -[STHistoricalScreenTimeCell _currentViewModeDidChangeFrom:to:](self, "_currentViewModeDidChangeFrom:to:", [v12 integerValue], objc_msgSend(v14, "integerValue"));
    }

    else
    {
      [(STHistoricalScreenTimeCell *)self historicalUsageViewController];

      if ([pathCopy isEqualToString:@"titleView.hasMultilineLayout"])
      {
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

        -[STHistoricalScreenTimeCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
      }

      else
      {
        [(STHistoricalScreenTimeCell *)self topItemsView];

        if (![pathCopy isEqualToString:@"numberOfLines"])
        {
          goto LABEL_22;
        }

        v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        null5 = [MEMORY[0x277CBEB68] null];

        if (v12 == null5)
        {

          v12 = 0;
        }

        v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null6 = [MEMORY[0x277CBEB68] null];

        if (v14 == null6)
        {

          v14 = 0;
        }

        -[STHistoricalScreenTimeCell _numberOfLinesDidChangeFrom:to:](self, "_numberOfLinesDidChangeFrom:to:", [v12 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));
      }
    }

    goto LABEL_22;
  }

  v20.receiver = self;
  v20.super_class = STHistoricalScreenTimeCell;
  [(STHistoricalScreenTimeCell *)&v20 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_22:
}

- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if (from != to)
  {
    historicalUsageViewController = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    titleView = [historicalUsageViewController titleView];
    hasMultilineLayout = [titleView hasMultilineLayout];

    topItemsView = [(STHistoricalScreenTimeCell *)self topItemsView];
    numberOfLines = [topItemsView numberOfLines];
    unsignedIntegerValue = [numberOfLines unsignedIntegerValue];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:to hasMultilineLayout:hasMultilineLayout numberOfLines:unsignedIntegerValue];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    toCopy = to;
    historicalUsageViewController = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    currentViewMode = [historicalUsageViewController currentViewMode];

    topItemsView = [(STHistoricalScreenTimeCell *)self topItemsView];
    numberOfLines = [topItemsView numberOfLines];
    unsignedIntegerValue = [numberOfLines unsignedIntegerValue];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:currentViewMode hasMultilineLayout:toCopy numberOfLines:unsignedIntegerValue];
  }
}

- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to
{
  if (from != to)
  {
    historicalUsageViewController = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    currentViewMode = [historicalUsageViewController currentViewMode];
    titleView = [historicalUsageViewController titleView];
    hasMultilineLayout = [titleView hasMultilineLayout];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:currentViewMode hasMultilineLayout:hasMultilineLayout numberOfLines:to];
  }
}

- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout numberOfLines:(unint64_t)lines
{
  layoutCopy = layout;
  v13[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  lines = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SpecifierIdentifierHistoricalScreenTimeCell-%lu-%d-%lu", mode, layoutCopy, lines];
  v12 = @"HistoricalScreenTimeSpecifierIdentifier";
  v13[0] = lines;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultCenter postNotificationName:@"HistoricalScreenTimeSpecifierIdentifierDidChange" object:self userInfo:v11];

  [(STHistoricalScreenTimeCell *)self setNeedsUpdateConstraints];
  [defaultCenter postNotificationName:0x2876773C8 object:self];
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STHistoricalScreenTimeCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  v40 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = valueCopy;
  if (!valueCopy || [valueCopy conformsToProtocol:&unk_2876DCA10])
  {
    v38.receiver = self;
    v38.super_class = STHistoricalScreenTimeCell;
    [(PSTableCell *)&v38 setValue:v5];
    selfCopy = self;
    historicalUsageViewController = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    [historicalUsageViewController setCoordinator:v5];

    viewModel = [v5 viewModel];
    selectedUsageReport = [viewModel selectedUsageReport];

    v9 = [selectedUsageReport topUsageItemsWithMaxCount:3 type:3 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v31 = v5;
    if (![v9 count])
    {
      v10 = [selectedUsageReport topUsageItemsWithMaxCount:3 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];

      v9 = v10;
    }

    v29 = selectedUsageReport;
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          totalUsage = [v15 totalUsage];
          [totalUsage doubleValue];
          v18 = v17;

          v19 = [STSegmentItem alloc];
          displayName = [v15 displayName];
          if (v18 >= 60.0)
          {
            st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
            [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
            [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
            v22 = 96;
          }

          else
          {
            st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
            v22 = 128;
          }

          v23 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v18];

          color = [v15 color];
          v25 = [(STSegmentItem *)v19 initWithTitleText:displayName detailText:v23 titleColor:color detailImage:0 detailImageTintColor:0];

          v26 = objc_opt_new();
          [v26 setAllowedUnits:v22];
          [v26 setUnitsStyle:3];
          v27 = [v26 stringFromTimeInterval:v18];

          [(STSegmentItem *)v25 setAccessibilityText:v27];
          [v33 addObject:v25];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    topItemsView = [(STHistoricalScreenTimeCell *)selfCopy topItemsView];
    [topItemsView setSegmentItems:v33];

    v5 = v31;
  }
}

@end