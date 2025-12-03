@interface STHistoricalPickupsCell
- (STHistoricalPickupsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)value;
- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout numberOfLines:(unint64_t)lines;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation STHistoricalPickupsCell

- (STHistoricalPickupsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v41.receiver = self;
  v41.super_class = STHistoricalPickupsCell;
  v5 = [(STTableCell *)&v41 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = [STHistoricalUsageViewController historicalUsageViewControllerOfType:6 graphHeight:62.0];
  historicalUsageViewController = v5->_historicalUsageViewController;
  v5->_historicalUsageViewController = v6;

  childViewControllers = [(STTableCell *)v5 childViewControllers];
  [childViewControllers addObject:v5->_historicalUsageViewController];

  v9 = objc_opt_new();
  pickupMetricsView = v5->_pickupMetricsView;
  v5->_pickupMetricsView = v9;

  [(STHorizontallySegmentedView *)v5->_pickupMetricsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_opt_new();
  firstUsedAfterPickupLabel = v5->_firstUsedAfterPickupLabel;
  v5->_firstUsedAfterPickupLabel = v11;

  [(UILabel *)v5->_firstUsedAfterPickupLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D75B70] _defaultFontForTableViewStyle:1 isSectionHeader:1];
  [(UILabel *)v5->_firstUsedAfterPickupLabel setFont:v13];

  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v14 localizedStringForKey:@"FirstUsedAfterPickupTitle" value:&stru_28766E5A8 table:0];
  [(UILabel *)v5->_firstUsedAfterPickupLabel setText:v15];

  v16 = [MEMORY[0x277D75B70] _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
  [(UILabel *)v5->_firstUsedAfterPickupLabel setTextColor:v16];

  [(UILabel *)v5->_firstUsedAfterPickupLabel setNumberOfLines:0];
  [(UILabel *)v5->_firstUsedAfterPickupLabel setLineBreakMode:0];
  LODWORD(v17) = 1144750080;
  [(UILabel *)v5->_firstUsedAfterPickupLabel setContentHuggingPriority:1 forAxis:v17];
  LODWORD(v18) = 1144766464;
  [(UILabel *)v5->_firstUsedAfterPickupLabel setContentCompressionResistancePriority:1 forAxis:v18];
  contentView = [(STHistoricalPickupsCell *)v5 contentView];
  view = [(STHistoricalUsageViewController *)v5->_historicalUsageViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:view];
  [contentView addSubview:v5->_pickupMetricsView];
  v40 = _NSDictionaryOfVariableBindings(&cfstr_Historicalusag_0.isa, view, v5->_pickupMetricsView, 0);
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[historicalUsageView][_pickupMetricsView]" options:0 metrics:0 views:v40];
  v22 = [v21 mutableCopy];

  contentLayoutGuide = [(STTableCell *)v5 contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v22 addObject:v26];

  trailingAnchor = [contentLayoutGuide trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v22 addObject:v29];

  leadingAnchor3 = [contentLayoutGuide leadingAnchor];
  leadingAnchor4 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v22 addObject:v32];

  trailingAnchor3 = [contentLayoutGuide trailingAnchor];
  trailingAnchor4 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v22 addObject:v35];

  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:11.0];

  [(STHistoricalPickupsCell *)v5 setBottomConstraint:v38];
  [v22 addObject:v38];
  [MEMORY[0x277CCAAD0] activateConstraints:v22];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"titleView.hasMultilineLayout" options:3 context:"KVOContextHistoricalPickupsCell"];
  [(STHistoricalUsageViewController *)v5->_historicalUsageViewController addObserver:v5 forKeyPath:@"titleView.hasMultilineLayout" options:3 context:"KVOContextHistoricalPickupsCell"];
  [(STHorizontallySegmentedView *)v5->_pickupMetricsView addObserver:v5 forKeyPath:@"numberOfLines" options:3 context:"KVOContextHistoricalPickupsCell"];

  return v5;
}

- (void)dealloc
{
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"titleView.hasMultilineLayout" context:"KVOContextHistoricalPickupsCell"];
  [(STHistoricalUsageViewController *)self->_historicalUsageViewController removeObserver:self forKeyPath:@"titleView.hasMultilineLayout" context:"KVOContextHistoricalPickupsCell"];
  [(STHorizontallySegmentedView *)self->_pickupMetricsView removeObserver:self forKeyPath:@"numberOfLines" context:"KVOContextHistoricalPickupsCell"];
  v3.receiver = self;
  v3.super_class = STHistoricalPickupsCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextHistoricalPickupsCell")
  {
    [(STHistoricalPickupsCell *)self historicalUsageViewController];

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

      -[STHistoricalPickupsCell _currentViewModeDidChangeFrom:to:](self, "_currentViewModeDidChangeFrom:to:", [v12 integerValue], objc_msgSend(v14, "integerValue"));
    }

    else
    {
      [(STHistoricalPickupsCell *)self historicalUsageViewController];

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

        -[STHistoricalPickupsCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
      }

      else
      {
        [(STHistoricalPickupsCell *)self pickupMetricsView];

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

        -[STHistoricalPickupsCell _numberOfLinesDidChangeFrom:to:](self, "_numberOfLinesDidChangeFrom:to:", [v12 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));
      }
    }

    goto LABEL_22;
  }

  v20.receiver = self;
  v20.super_class = STHistoricalPickupsCell;
  [(STHistoricalPickupsCell *)&v20 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_22:
}

- (void)_currentViewModeDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if (from != to)
  {
    historicalUsageViewController = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    titleView = [historicalUsageViewController titleView];
    hasMultilineLayout = [titleView hasMultilineLayout];

    pickupMetricsView = [(STHistoricalPickupsCell *)self pickupMetricsView];
    numberOfLines = [pickupMetricsView numberOfLines];
    unsignedIntegerValue = [numberOfLines unsignedIntegerValue];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:to hasMultilineLayout:hasMultilineLayout numberOfLines:unsignedIntegerValue];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    toCopy = to;
    historicalUsageViewController = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    currentViewMode = [historicalUsageViewController currentViewMode];

    pickupMetricsView = [(STHistoricalPickupsCell *)self pickupMetricsView];
    numberOfLines = [pickupMetricsView numberOfLines];
    unsignedIntegerValue = [numberOfLines unsignedIntegerValue];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:currentViewMode hasMultilineLayout:toCopy numberOfLines:unsignedIntegerValue];
  }
}

- (void)_numberOfLinesDidChangeFrom:(unint64_t)from to:(unint64_t)to
{
  if (from != to)
  {
    historicalUsageViewController = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    currentViewMode = [historicalUsageViewController currentViewMode];
    titleView = [historicalUsageViewController titleView];
    hasMultilineLayout = [titleView hasMultilineLayout];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:currentViewMode hasMultilineLayout:hasMultilineLayout numberOfLines:to];
  }
}

- (void)_handleEffectiveChangeForViewMode:(int64_t)mode hasMultilineLayout:(BOOL)layout numberOfLines:(unint64_t)lines
{
  layoutCopy = layout;
  v13[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  lines = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SpecifierIdentifierHistoricalPickupsCell-%lu-%d-%lu", mode, layoutCopy, lines];
  v12 = @"HistoricalPickupsSpecifierIdentifier";
  v13[0] = lines;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultCenter postNotificationName:@"HistoricalPickupsSpecifierIdentifierDidChange" object:self userInfo:v11];

  [(STHistoricalPickupsCell *)self setNeedsUpdateConstraints];
  [defaultCenter postNotificationName:0x2876773C8 object:self];
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STHistoricalPickupsCell;
  value = [(PSTableCell *)&v4 value];

  return value;
}

- (void)setValue:(id)value
{
  v82[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy && ![valueCopy conformsToProtocol:&unk_2876DCA10])
  {
    goto LABEL_21;
  }

  v81.receiver = self;
  v81.super_class = STHistoricalPickupsCell;
  [(PSTableCell *)&v81 setValue:v5];
  historicalUsageViewController = [(STHistoricalPickupsCell *)self historicalUsageViewController];
  [historicalUsageViewController setCoordinator:v5];

  viewModel = [v5 viewModel];
  selectedUsageReport = [viewModel selectedUsageReport];

  type = [selectedUsageReport type];
  v79 = v5;
  if (type == 1)
  {
    v17 = selectedUsageReport;
    firstPickup = [v17 firstPickup];
    v19 = +[STScreenTimeSettingsUIBundle bundle];
    v77 = selectedUsageReport;
    v75 = firstPickup;
    if (firstPickup)
    {
      v20 = objc_opt_new();
      [v20 setTimeStyle:1];
      [v20 setDateStyle:0];
      [v20 setFormattingContext:1];
      v21 = [v20 stringFromDate:firstPickup];
    }

    else
    {
      v21 = &stru_28766E5A8;
    }

    v35 = [v19 localizedStringForKey:@"FirstPickupTime" value:&stru_28766E5A8 table:0];
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    totalPickups = [v17 totalPickups];

    standaloneWeekdaySymbols = v35;
    v24 = [v36 initWithFormat:v35 locale:currentLocale, totalPickups, v21];

    v34 = v19;
    v25 = [v19 localizedStringForKey:@"FirstPickupTitle" value:&stru_28766E5A8 table:0];
    v26 = [MEMORY[0x277D755B8] imageNamed:@"PickupArrowBig" inBundle:v19];
    v39 = [STSegmentItem alloc];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v22 = 0x277D75000uLL;
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    v80 = [(STSegmentItem *)v39 initWithTitleText:v25 detailText:v24 titleColor:systemGrayColor detailImage:v26 detailImageTintColor:systemGrayColor2];
    v33 = v21;
    v10 = v75;
  }

  else
  {
    if (type)
    {
      v22 = 0x277D75000;
      v80 = 0;
      goto LABEL_15;
    }

    v77 = selectedUsageReport;
    v10 = selectedUsageReport;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    firstWeekday = [currentCalendar firstWeekday];
    dateIntervals = [v10 dateIntervals];
    v14 = [dateIntervals objectAtIndexedSubscript:{objc_msgSend(v10, "maxPickupDateIntervalIndex")}];
    startDate = [v14 startDate];

    v74 = startDate;
    if (v10)
    {
      v16 = [currentCalendar component:512 fromDate:startDate] - 1;
    }

    else
    {
      v16 = 0;
    }

    v23 = firstWeekday + v16;
    standaloneWeekdaySymbols = [currentCalendar standaloneWeekdaySymbols];
    [standaloneWeekdaySymbols objectAtIndexedSubscript:{(v23 - 1) % objc_msgSend(standaloneWeekdaySymbols, "count")}];
    v24 = v73 = currentCalendar;
    v25 = +[STScreenTimeSettingsUIBundle bundle];
    v26 = [v25 localizedStringForKey:@"MostPickupsDetailText" value:&stru_28766E5A8 table:0];
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    systemGrayColor = [v27 initWithFormat:v26 locale:currentLocale2, v24, objc_msgSend(v10, "maxPickups")];

    systemGrayColor2 = [v25 localizedStringForKey:@"MostPickupsTitle" value:&stru_28766E5A8 table:0];
    v31 = [STSegmentItem alloc];
    v22 = 0x277D75000uLL;
    systemGrayColor3 = [MEMORY[0x277D75348] systemGrayColor];
    v80 = [(STSegmentItem *)v31 initWithTitleText:systemGrayColor2 detailText:systemGrayColor titleColor:systemGrayColor3 detailImage:0 detailImageTintColor:0];

    v34 = v73;
    v33 = v74;
  }

  selectedUsageReport = v77;
LABEL_15:
  v40 = selectedUsageReport;
  v41 = +[STScreenTimeSettingsUIBundle bundle];
  v42 = [v41 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  totalPickups2 = [v40 totalPickups];

  v46 = [v43 initWithFormat:v42 locale:currentLocale3, totalPickups2];
  v47 = [v41 localizedStringForKey:@"TotalPickups" value:&stru_28766E5A8 table:0];
  v48 = [STSegmentItem alloc];
  systemGrayColor4 = [*(v22 + 840) systemGrayColor];
  v50 = [(STSegmentItem *)v48 initWithTitleText:v47 detailText:v46 titleColor:systemGrayColor4 detailImage:0 detailImageTintColor:0];

  pickupMetricsView = [(STHistoricalPickupsCell *)self pickupMetricsView];
  v52 = v80;
  v82[0] = v80;
  v82[1] = v50;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  [pickupMetricsView setSegmentItems:v53];

  contentView = [(STHistoricalPickupsCell *)self contentView];
  firstUsedAfterPickupLabel = [(STHistoricalPickupsCell *)self firstUsedAfterPickupLabel];
  pickupsByTrustIdentifier = [v40 pickupsByTrustIdentifier];
  v57 = [pickupsByTrustIdentifier count];

  subviews = [contentView subviews];
  v59 = [subviews containsObject:firstUsedAfterPickupLabel];

  if (!v57 || (v59 & 1) != 0)
  {
    if (((v57 == 0) & v59) == 1)
    {
      [firstUsedAfterPickupLabel removeFromSuperview];
      [(STHistoricalPickupsCell *)self bottomConstraint];
      v72 = v71 = v50;
      [v72 setActive:1];

      v50 = v71;
      [contentView setNeedsUpdateConstraints];
    }
  }

  else
  {
    [contentView addSubview:firstUsedAfterPickupLabel];
    bottomConstraint = [(STHistoricalPickupsCell *)self bottomConstraint];
    [bottomConstraint setActive:0];

    v78 = _NSDictionaryOfVariableBindings(&cfstr_Pickupmetricsv.isa, pickupMetricsView, firstUsedAfterPickupLabel, 0);
    v61 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[pickupMetricsView]-14.0-[firstUsedAfterPickupLabel]-2.0-|" options:0 metrics:0 views:v78];
    v62 = [v61 mutableCopy];

    contentLayoutGuide = [(STTableCell *)self contentLayoutGuide];
    leadingAnchor = [contentLayoutGuide leadingAnchor];
    [firstUsedAfterPickupLabel leadingAnchor];
    v66 = v65 = v50;
    v67 = [leadingAnchor constraintEqualToAnchor:v66];
    [v62 addObject:v67];

    trailingAnchor = [contentLayoutGuide trailingAnchor];
    trailingAnchor2 = [firstUsedAfterPickupLabel trailingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v62 addObject:v70];

    v52 = v80;
    v50 = v65;
    [MEMORY[0x277CCAAD0] activateConstraints:v62];
    [contentView setNeedsUpdateConstraints];
  }

  v5 = v79;
LABEL_21:
}

@end