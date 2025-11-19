@interface STHistoricalPickupsCell
- (STHistoricalPickupsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)_currentViewModeDidChangeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)_handleEffectiveChangeForViewMode:(int64_t)a3 hasMultilineLayout:(BOOL)a4 numberOfLines:(unint64_t)a5;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_numberOfLinesDidChangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3;
@end

@implementation STHistoricalPickupsCell

- (STHistoricalPickupsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v41.receiver = self;
  v41.super_class = STHistoricalPickupsCell;
  v5 = [(STTableCell *)&v41 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = [STHistoricalUsageViewController historicalUsageViewControllerOfType:6 graphHeight:62.0];
  historicalUsageViewController = v5->_historicalUsageViewController;
  v5->_historicalUsageViewController = v6;

  v8 = [(STTableCell *)v5 childViewControllers];
  [v8 addObject:v5->_historicalUsageViewController];

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
  v19 = [(STHistoricalPickupsCell *)v5 contentView];
  v20 = [(STHistoricalUsageViewController *)v5->_historicalUsageViewController view];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:v20];
  [v19 addSubview:v5->_pickupMetricsView];
  v40 = _NSDictionaryOfVariableBindings(&cfstr_Historicalusag_0.isa, v20, v5->_pickupMetricsView, 0);
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[historicalUsageView][_pickupMetricsView]" options:0 metrics:0 views:v40];
  v22 = [v21 mutableCopy];

  v23 = [(STTableCell *)v5 contentLayoutGuide];
  v24 = [v23 leadingAnchor];
  v25 = [v20 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v22 addObject:v26];

  v27 = [v23 trailingAnchor];
  v28 = [v20 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v22 addObject:v29];

  v30 = [v23 leadingAnchor];
  v31 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v22 addObject:v32];

  v33 = [v23 trailingAnchor];
  v34 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v22 addObject:v35];

  v36 = [v19 bottomAnchor];
  v37 = [(STHorizontallySegmentedView *)v5->_pickupMetricsView bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextHistoricalPickupsCell")
  {
    [(STHistoricalPickupsCell *)self historicalUsageViewController];

    if ([v10 isEqualToString:@"currentViewMode"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
      {

        v14 = 0;
      }

      -[STHistoricalPickupsCell _currentViewModeDidChangeFrom:to:](self, "_currentViewModeDidChangeFrom:to:", [v12 integerValue], objc_msgSend(v14, "integerValue"));
    }

    else
    {
      [(STHistoricalPickupsCell *)self historicalUsageViewController];

      if ([v10 isEqualToString:@"titleView.hasMultilineLayout"])
      {
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v16 = [MEMORY[0x277CBEB68] null];

        if (v12 == v16)
        {

          v12 = 0;
        }

        v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v17 = [MEMORY[0x277CBEB68] null];

        if (v14 == v17)
        {

          v14 = 0;
        }

        -[STHistoricalPickupsCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
      }

      else
      {
        [(STHistoricalPickupsCell *)self pickupMetricsView];

        if (![v10 isEqualToString:@"numberOfLines"])
        {
          goto LABEL_22;
        }

        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v18 = [MEMORY[0x277CBEB68] null];

        if (v12 == v18)
        {

          v12 = 0;
        }

        v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v19 = [MEMORY[0x277CBEB68] null];

        if (v14 == v19)
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
  [(STHistoricalPickupsCell *)&v20 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_22:
}

- (void)_currentViewModeDidChangeFrom:(int64_t)a3 to:(int64_t)a4
{
  if (a3 != a4)
  {
    v7 = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    v8 = [v7 titleView];
    v9 = [v8 hasMultilineLayout];

    v10 = [(STHistoricalPickupsCell *)self pickupMetricsView];
    v11 = [v10 numberOfLines];
    v12 = [v11 unsignedIntegerValue];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:a4 hasMultilineLayout:v9 numberOfLines:v12];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a3 != a4)
  {
    v5 = a4;
    v7 = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    v8 = [v7 currentViewMode];

    v9 = [(STHistoricalPickupsCell *)self pickupMetricsView];
    v10 = [v9 numberOfLines];
    v11 = [v10 unsignedIntegerValue];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:v8 hasMultilineLayout:v5 numberOfLines:v11];
  }
}

- (void)_numberOfLinesDidChangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  if (a3 != a4)
  {
    v10 = [(STHistoricalPickupsCell *)self historicalUsageViewController];
    v7 = [v10 currentViewMode];
    v8 = [v10 titleView];
    v9 = [v8 hasMultilineLayout];

    [(STHistoricalPickupsCell *)self _handleEffectiveChangeForViewMode:v7 hasMultilineLayout:v9 numberOfLines:a4];
  }
}

- (void)_handleEffectiveChangeForViewMode:(int64_t)a3 hasMultilineLayout:(BOOL)a4 numberOfLines:(unint64_t)a5
{
  v6 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SpecifierIdentifierHistoricalPickupsCell-%lu-%d-%lu", a3, v6, a5];
  v12 = @"HistoricalPickupsSpecifierIdentifier";
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"HistoricalPickupsSpecifierIdentifierDidChange" object:self userInfo:v11];

  [(STHistoricalPickupsCell *)self setNeedsUpdateConstraints];
  [v9 postNotificationName:0x2876773C8 object:self];
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STHistoricalPickupsCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v82[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 conformsToProtocol:&unk_2876DCA10])
  {
    goto LABEL_21;
  }

  v81.receiver = self;
  v81.super_class = STHistoricalPickupsCell;
  [(PSTableCell *)&v81 setValue:v5];
  v6 = [(STHistoricalPickupsCell *)self historicalUsageViewController];
  [v6 setCoordinator:v5];

  v7 = [v5 viewModel];
  v8 = [v7 selectedUsageReport];

  v9 = [v8 type];
  v79 = v5;
  if (v9 == 1)
  {
    v17 = v8;
    v18 = [v17 firstPickup];
    v19 = +[STScreenTimeSettingsUIBundle bundle];
    v77 = v8;
    v75 = v18;
    if (v18)
    {
      v20 = objc_opt_new();
      [v20 setTimeStyle:1];
      [v20 setDateStyle:0];
      [v20 setFormattingContext:1];
      v21 = [v20 stringFromDate:v18];
    }

    else
    {
      v21 = &stru_28766E5A8;
    }

    v35 = [v19 localizedStringForKey:@"FirstPickupTime" value:&stru_28766E5A8 table:0];
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = [MEMORY[0x277CBEAF8] currentLocale];
    v38 = [v17 totalPickups];

    v76 = v35;
    v24 = [v36 initWithFormat:v35 locale:v37, v38, v21];

    v34 = v19;
    v25 = [v19 localizedStringForKey:@"FirstPickupTitle" value:&stru_28766E5A8 table:0];
    v26 = [MEMORY[0x277D755B8] imageNamed:@"PickupArrowBig" inBundle:v19];
    v39 = [STSegmentItem alloc];
    v29 = [MEMORY[0x277D75348] systemGrayColor];
    v22 = 0x277D75000uLL;
    v30 = [MEMORY[0x277D75348] systemGrayColor];
    v80 = [(STSegmentItem *)v39 initWithTitleText:v25 detailText:v24 titleColor:v29 detailImage:v26 detailImageTintColor:v30];
    v33 = v21;
    v10 = v75;
  }

  else
  {
    if (v9)
    {
      v22 = 0x277D75000;
      v80 = 0;
      goto LABEL_15;
    }

    v77 = v8;
    v10 = v8;
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v11 firstWeekday];
    v13 = [v10 dateIntervals];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v10, "maxPickupDateIntervalIndex")}];
    v15 = [v14 startDate];

    v74 = v15;
    if (v10)
    {
      v16 = [v11 component:512 fromDate:v15] - 1;
    }

    else
    {
      v16 = 0;
    }

    v23 = v12 + v16;
    v76 = [v11 standaloneWeekdaySymbols];
    [v76 objectAtIndexedSubscript:{(v23 - 1) % objc_msgSend(v76, "count")}];
    v24 = v73 = v11;
    v25 = +[STScreenTimeSettingsUIBundle bundle];
    v26 = [v25 localizedStringForKey:@"MostPickupsDetailText" value:&stru_28766E5A8 table:0];
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = [MEMORY[0x277CBEAF8] currentLocale];
    v29 = [v27 initWithFormat:v26 locale:v28, v24, objc_msgSend(v10, "maxPickups")];

    v30 = [v25 localizedStringForKey:@"MostPickupsTitle" value:&stru_28766E5A8 table:0];
    v31 = [STSegmentItem alloc];
    v22 = 0x277D75000uLL;
    v32 = [MEMORY[0x277D75348] systemGrayColor];
    v80 = [(STSegmentItem *)v31 initWithTitleText:v30 detailText:v29 titleColor:v32 detailImage:0 detailImageTintColor:0];

    v34 = v73;
    v33 = v74;
  }

  v8 = v77;
LABEL_15:
  v40 = v8;
  v41 = +[STScreenTimeSettingsUIBundle bundle];
  v42 = [v41 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  v44 = [MEMORY[0x277CBEAF8] currentLocale];
  v45 = [v40 totalPickups];

  v46 = [v43 initWithFormat:v42 locale:v44, v45];
  v47 = [v41 localizedStringForKey:@"TotalPickups" value:&stru_28766E5A8 table:0];
  v48 = [STSegmentItem alloc];
  v49 = [*(v22 + 840) systemGrayColor];
  v50 = [(STSegmentItem *)v48 initWithTitleText:v47 detailText:v46 titleColor:v49 detailImage:0 detailImageTintColor:0];

  v51 = [(STHistoricalPickupsCell *)self pickupMetricsView];
  v52 = v80;
  v82[0] = v80;
  v82[1] = v50;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  [v51 setSegmentItems:v53];

  v54 = [(STHistoricalPickupsCell *)self contentView];
  v55 = [(STHistoricalPickupsCell *)self firstUsedAfterPickupLabel];
  v56 = [v40 pickupsByTrustIdentifier];
  v57 = [v56 count];

  v58 = [v54 subviews];
  v59 = [v58 containsObject:v55];

  if (!v57 || (v59 & 1) != 0)
  {
    if (((v57 == 0) & v59) == 1)
    {
      [v55 removeFromSuperview];
      [(STHistoricalPickupsCell *)self bottomConstraint];
      v72 = v71 = v50;
      [v72 setActive:1];

      v50 = v71;
      [v54 setNeedsUpdateConstraints];
    }
  }

  else
  {
    [v54 addSubview:v55];
    v60 = [(STHistoricalPickupsCell *)self bottomConstraint];
    [v60 setActive:0];

    v78 = _NSDictionaryOfVariableBindings(&cfstr_Pickupmetricsv.isa, v51, v55, 0);
    v61 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[pickupMetricsView]-14.0-[firstUsedAfterPickupLabel]-2.0-|" options:0 metrics:0 views:v78];
    v62 = [v61 mutableCopy];

    v63 = [(STTableCell *)self contentLayoutGuide];
    v64 = [v63 leadingAnchor];
    [v55 leadingAnchor];
    v66 = v65 = v50;
    v67 = [v64 constraintEqualToAnchor:v66];
    [v62 addObject:v67];

    v68 = [v63 trailingAnchor];
    v69 = [v55 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    [v62 addObject:v70];

    v52 = v80;
    v50 = v65;
    [MEMORY[0x277CCAAD0] activateConstraints:v62];
    [v54 setNeedsUpdateConstraints];
  }

  v5 = v79;
LABEL_21:
}

@end