@interface STHistoricalScreenTimeCell
- (STHistoricalScreenTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)_currentViewModeDidChangeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)_handleEffectiveChangeForViewMode:(int64_t)a3 hasMultilineLayout:(BOOL)a4 numberOfLines:(unint64_t)a5;
- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_numberOfLinesDidChangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3;
@end

@implementation STHistoricalScreenTimeCell

- (STHistoricalScreenTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v30.receiver = self;
  v30.super_class = STHistoricalScreenTimeCell;
  v5 = [(STTableCell *)&v30 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = [STHistoricalUsageViewController historicalUsageViewControllerOfType:1 graphHeight:90.0];
  historicalUsageViewController = v5->_historicalUsageViewController;
  v5->_historicalUsageViewController = v6;

  v8 = [(STTableCell *)v5 childViewControllers];
  [v8 addObject:v5->_historicalUsageViewController];

  v9 = objc_opt_new();
  topItemsView = v5->_topItemsView;
  v5->_topItemsView = v9;

  [(STHorizontallySegmentedView *)v5->_topItemsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(STHistoricalScreenTimeCell *)v5 contentView];
  v12 = [(STHistoricalUsageViewController *)v5->_historicalUsageViewController view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v12];
  [v11 addSubview:v5->_topItemsView];
  v29 = _NSDictionaryOfVariableBindings(&cfstr_Historicalusag_1.isa, v12, v5->_topItemsView, 0);
  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[historicalUsageView][_topItemsView]-11.0-|" options:0 metrics:0 views:v29];
  v14 = [v13 mutableCopy];

  v15 = [(STTableCell *)v5 contentLayoutGuide];
  v16 = [v15 leadingAnchor];
  v17 = [v12 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v14 addObject:v18];

  v19 = [v15 trailingAnchor];
  v20 = [v12 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v14 addObject:v21];

  v22 = [v15 leadingAnchor];
  v23 = [(STHorizontallySegmentedView *)v5->_topItemsView leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v14 addObject:v24];

  v25 = [v15 trailingAnchor];
  v26 = [(STHorizontallySegmentedView *)v5->_topItemsView trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextHistoricalScreenTimeCell")
  {
    [(STHistoricalScreenTimeCell *)self historicalUsageViewController];

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

      -[STHistoricalScreenTimeCell _currentViewModeDidChangeFrom:to:](self, "_currentViewModeDidChangeFrom:to:", [v12 integerValue], objc_msgSend(v14, "integerValue"));
    }

    else
    {
      [(STHistoricalScreenTimeCell *)self historicalUsageViewController];

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

        -[STHistoricalScreenTimeCell _hasMulitlineLayoutDidChangeFrom:to:](self, "_hasMulitlineLayoutDidChangeFrom:to:", [v12 BOOLValue], objc_msgSend(v14, "BOOLValue"));
      }

      else
      {
        [(STHistoricalScreenTimeCell *)self topItemsView];

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

        -[STHistoricalScreenTimeCell _numberOfLinesDidChangeFrom:to:](self, "_numberOfLinesDidChangeFrom:to:", [v12 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));
      }
    }

    goto LABEL_22;
  }

  v20.receiver = self;
  v20.super_class = STHistoricalScreenTimeCell;
  [(STHistoricalScreenTimeCell *)&v20 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_22:
}

- (void)_currentViewModeDidChangeFrom:(int64_t)a3 to:(int64_t)a4
{
  if (a3 != a4)
  {
    v7 = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    v8 = [v7 titleView];
    v9 = [v8 hasMultilineLayout];

    v10 = [(STHistoricalScreenTimeCell *)self topItemsView];
    v11 = [v10 numberOfLines];
    v12 = [v11 unsignedIntegerValue];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:a4 hasMultilineLayout:v9 numberOfLines:v12];
  }
}

- (void)_hasMulitlineLayoutDidChangeFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a3 != a4)
  {
    v5 = a4;
    v7 = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    v8 = [v7 currentViewMode];

    v9 = [(STHistoricalScreenTimeCell *)self topItemsView];
    v10 = [v9 numberOfLines];
    v11 = [v10 unsignedIntegerValue];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:v8 hasMultilineLayout:v5 numberOfLines:v11];
  }
}

- (void)_numberOfLinesDidChangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  if (a3 != a4)
  {
    v10 = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    v7 = [v10 currentViewMode];
    v8 = [v10 titleView];
    v9 = [v8 hasMultilineLayout];

    [(STHistoricalScreenTimeCell *)self _handleEffectiveChangeForViewMode:v7 hasMultilineLayout:v9 numberOfLines:a4];
  }
}

- (void)_handleEffectiveChangeForViewMode:(int64_t)a3 hasMultilineLayout:(BOOL)a4 numberOfLines:(unint64_t)a5
{
  v6 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SpecifierIdentifierHistoricalScreenTimeCell-%lu-%d-%lu", a3, v6, a5];
  v12 = @"HistoricalScreenTimeSpecifierIdentifier";
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"HistoricalScreenTimeSpecifierIdentifierDidChange" object:self userInfo:v11];

  [(STHistoricalScreenTimeCell *)self setNeedsUpdateConstraints];
  [v9 postNotificationName:0x2876773C8 object:self];
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STHistoricalScreenTimeCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 conformsToProtocol:&unk_2876DCA10])
  {
    v38.receiver = self;
    v38.super_class = STHistoricalScreenTimeCell;
    [(PSTableCell *)&v38 setValue:v5];
    v30 = self;
    v6 = [(STHistoricalScreenTimeCell *)self historicalUsageViewController];
    [v6 setCoordinator:v5];

    v7 = [v5 viewModel];
    v8 = [v7 selectedUsageReport];

    v9 = [v8 topUsageItemsWithMaxCount:3 type:3 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v31 = v5;
    if (![v9 count])
    {
      v10 = [v8 topUsageItemsWithMaxCount:3 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];

      v9 = v10;
    }

    v29 = v8;
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
          v16 = [v15 totalUsage];
          [v16 doubleValue];
          v18 = v17;

          v19 = [STSegmentItem alloc];
          v20 = [v15 displayName];
          if (v18 >= 60.0)
          {
            v21 = objc_opt_new();
            [v21 setAllowedUnits:96];
            [v21 setUnitsStyle:1];
            v22 = 96;
          }

          else
          {
            v21 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
            v22 = 128;
          }

          v23 = [v21 stringFromTimeInterval:v18];

          v24 = [v15 color];
          v25 = [(STSegmentItem *)v19 initWithTitleText:v20 detailText:v23 titleColor:v24 detailImage:0 detailImageTintColor:0];

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

    v28 = [(STHistoricalScreenTimeCell *)v30 topItemsView];
    [v28 setSegmentItems:v33];

    v5 = v31;
  }
}

@end