@interface STWeeklyReportAppUsageView
- (STWeeklyReportAppUsageView)initWithUsageReport:(id)report useVibrancy:(BOOL)vibrancy;
- (id)_appImageSubviewWithImage:(id)image dimension:(double)dimension;
- (void)_didFetchIcon:(id)icon;
@end

@implementation STWeeklyReportAppUsageView

- (STWeeklyReportAppUsageView)initWithUsageReport:(id)report useVibrancy:(BOOL)vibrancy
{
  vibrancyCopy = vibrancy;
  v85 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v83.receiver = self;
  v83.super_class = STWeeklyReportAppUsageView;
  v8 = [(STWeeklyReportAppUsageView *)&v83 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_report, report);
    v10 = objc_opt_new();
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v10;

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v9->_titleLabel setFont:v12];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v9->_titleLabel setTextColor:secondaryLabelColor];

    v14 = MEMORY[0x277CCACA8];
    v15 = +[STScreenTimeSettingsUIBundle bundle];
    v16 = [v15 localizedStringForKey:@"AppUsageLabel" value:&stru_28766E5A8 table:0];
    v17 = [v14 localizedStringWithFormat:v16];
    [(UILabel *)v9->_titleLabel setText:v17];

    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9->_titleLabel sizeToFit];
    [(STWeeklyReportAppUsageView *)v9 addSubview:v9->_titleLabel];
    v18 = objc_opt_new();
    v77 = reportCopy;
    if (vibrancyCopy)
    {
      v19 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:102];
      v20 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v19];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(STWeeklyReportAppUsageView *)v9 addSubview:v20];
      contentView = [v20 contentView];
      [contentView addSubview:v9->_titleLabel];
      topAnchor = [v20 topAnchor];
      topAnchor2 = [(STWeeklyReportAppUsageView *)v9 topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v18 addObject:v24];

      leadingAnchor = [v20 leadingAnchor];
      leadingAnchor2 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
      v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v18 addObject:v27];

      bottomAnchor = [v20 bottomAnchor];
      bottomAnchor2 = [(STWeeklyReportAppUsageView *)v9 bottomAnchor];
      v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v18 addObject:v30];

      trailingAnchor = [v20 trailingAnchor];
      trailingAnchor2 = [(STWeeklyReportAppUsageView *)v9 trailingAnchor];
      v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v18 addObject:v33];

      v34 = 0.0;
      v35 = 0.0;
    }

    else
    {
      v35 = 16.0;
      v34 = -16.0;
    }

    leadingAnchor3 = [(UILabel *)v9->_titleLabel leadingAnchor];
    leadingAnchor4 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v35];
    [v18 addObject:v38];

    topAnchor3 = [(UILabel *)v9->_titleLabel topAnchor];
    topAnchor4 = [(STWeeklyReportAppUsageView *)v9 topAnchor];
    v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    [v18 addObject:v41];

    v42 = objc_opt_new();
    appImageStackView = v9->_appImageStackView;
    v9->_appImageStackView = v42;

    [(UIStackView *)v9->_appImageStackView setAlignment:4];
    [(UIStackView *)v9->_appImageStackView setAxis:0];
    [(UIStackView *)v9->_appImageStackView setDistribution:3];
    [(UIStackView *)v9->_appImageStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STWeeklyReportAppUsageView *)v9 addSubview:v9->_appImageStackView];
    topAnchor5 = [(UIStackView *)v9->_appImageStackView topAnchor];
    bottomAnchor3 = [(UILabel *)v9->_titleLabel bottomAnchor];
    v46 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:7.0];
    [v18 addObject:v46];

    leadingAnchor5 = [(UIStackView *)v9->_appImageStackView leadingAnchor];
    leadingAnchor6 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
    v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v35];
    [v18 addObject:v49];

    trailingAnchor3 = [(UIStackView *)v9->_appImageStackView trailingAnchor];
    trailingAnchor4 = [(STWeeklyReportAppUsageView *)v9 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v34];
    [v18 addObject:v52];

    bottomAnchor4 = [(STWeeklyReportAppUsageView *)v9 bottomAnchor];
    bottomAnchor5 = [(UIStackView *)v9->_appImageStackView bottomAnchor];
    v55 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:16.0];
    [v18 addObject:v55];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    v56 = [(STUsageReport *)v9->_report topUsageItemsWithMaxCount:8 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v76 = v18;
    if ([v56 count])
    {
      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    }

    else
    {
      mEMORY[0x277D4BD98] = 0;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v56;
    v58 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v80;
      v61 = 0.0;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v80 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v79 + 1) + 8 * i);
          if (v61 == 0.0)
          {
            totalUsage = [*(*(&v79 + 1) + 8 * i) totalUsage];
            [totalUsage doubleValue];
            v61 = v65;
          }

          totalUsage2 = [v63 totalUsage];
          [totalUsage2 doubleValue];
          v68 = v67;

          if (v61 <= 0.0 || (v69 = v68 / v61 * 40.0, v70 = 15.0, v69 >= 15.0) && (v70 = v69, v69 > 40.0))
          {
            v70 = 40.0;
          }

          image = [v63 image];
          if (image)
          {
            v72 = [(STWeeklyReportAppUsageView *)v9 _appImageSubviewWithImage:image dimension:v70];
            [(UIStackView *)v9->_appImageStackView addArrangedSubview:v72];
            [(NSMutableArray *)v9->_topEightImageItems addObject:v63];
            v73 = [MEMORY[0x277CCABB0] numberWithDouble:v70];
            [(NSMutableDictionary *)v9->_dimensionByUsageItem setObject:v73 forKeyedSubscript:v63];
          }

          budgetItemIdentifier = [v63 budgetItemIdentifier];
          [mEMORY[0x277D4BD98] addObserver:v9 selector:sel__didFetchIcon_ bundleIdentifier:budgetItemIdentifier];
        }

        v59 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v59);
    }

    reportCopy = v77;
  }

  return v9;
}

- (void)_didFetchIcon:(id)icon
{
  v35 = *MEMORY[0x277D85DE8];
  userInfo = [icon userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4BDC8]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(STWeeklyReportAppUsageView *)self topEightImageItems];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        budgetItemIdentifier = [v9 budgetItemIdentifier];
        v11 = [budgetItemIdentifier isEqualToString:v4];

        if (v11)
        {
          image = [v9 image];
          if (image)
          {
            topEightImageItems = [(STWeeklyReportAppUsageView *)self topEightImageItems];
            v14 = [topEightImageItems indexOfObject:v9];

            appImageStackView = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [appImageStackView arrangedSubviews];
            v16 = v7;
            v18 = v17 = v4;
            v19 = [v18 objectAtIndexedSubscript:v14];

            appImageStackView2 = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [appImageStackView2 removeArrangedSubview:v19];

            [v19 removeFromSuperview];
            dimensionByUsageItem = [(STWeeklyReportAppUsageView *)self dimensionByUsageItem];
            v22 = [dimensionByUsageItem objectForKeyedSubscript:v9];
            [v22 doubleValue];
            v24 = v23;

            v25 = [(STWeeklyReportAppUsageView *)self _appImageSubviewWithImage:image dimension:v24];
            appImageStackView3 = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [appImageStackView3 insertArrangedSubview:v25 atIndex:v14];

            v4 = v17;
            v7 = v16;
            v6 = v28;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }
}

- (id)_appImageSubviewWithImage:(id)image dimension:(double)dimension
{
  v17[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageCopy];

  [v7 setSize:{dimension, dimension}];
  [v6 addSubview:v7];
  v8 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v7 centerXAnchor];
  centerXAnchor2 = [v6 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[0] = v11;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v17[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v8 activateConstraints:v15];

  return v6;
}

@end