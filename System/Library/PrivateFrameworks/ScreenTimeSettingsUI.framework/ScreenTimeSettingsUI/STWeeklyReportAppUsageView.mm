@interface STWeeklyReportAppUsageView
- (STWeeklyReportAppUsageView)initWithUsageReport:(id)a3 useVibrancy:(BOOL)a4;
- (id)_appImageSubviewWithImage:(id)a3 dimension:(double)a4;
- (void)_didFetchIcon:(id)a3;
@end

@implementation STWeeklyReportAppUsageView

- (STWeeklyReportAppUsageView)initWithUsageReport:(id)a3 useVibrancy:(BOOL)a4
{
  v4 = a4;
  v85 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v83.receiver = self;
  v83.super_class = STWeeklyReportAppUsageView;
  v8 = [(STWeeklyReportAppUsageView *)&v83 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_report, a3);
    v10 = objc_opt_new();
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v10;

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v9->_titleLabel setFont:v12];

    v13 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v9->_titleLabel setTextColor:v13];

    v14 = MEMORY[0x277CCACA8];
    v15 = +[STScreenTimeSettingsUIBundle bundle];
    v16 = [v15 localizedStringForKey:@"AppUsageLabel" value:&stru_28766E5A8 table:0];
    v17 = [v14 localizedStringWithFormat:v16];
    [(UILabel *)v9->_titleLabel setText:v17];

    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9->_titleLabel sizeToFit];
    [(STWeeklyReportAppUsageView *)v9 addSubview:v9->_titleLabel];
    v18 = objc_opt_new();
    v77 = v7;
    if (v4)
    {
      v19 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:102];
      v20 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v19];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(STWeeklyReportAppUsageView *)v9 addSubview:v20];
      v21 = [v20 contentView];
      [v21 addSubview:v9->_titleLabel];
      v22 = [v20 topAnchor];
      v23 = [(STWeeklyReportAppUsageView *)v9 topAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v18 addObject:v24];

      v25 = [v20 leadingAnchor];
      v26 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v18 addObject:v27];

      v28 = [v20 bottomAnchor];
      v29 = [(STWeeklyReportAppUsageView *)v9 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v18 addObject:v30];

      v31 = [v20 trailingAnchor];
      v32 = [(STWeeklyReportAppUsageView *)v9 trailingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v18 addObject:v33];

      v34 = 0.0;
      v35 = 0.0;
    }

    else
    {
      v35 = 16.0;
      v34 = -16.0;
    }

    v36 = [(UILabel *)v9->_titleLabel leadingAnchor];
    v37 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:v35];
    [v18 addObject:v38];

    v39 = [(UILabel *)v9->_titleLabel topAnchor];
    v40 = [(STWeeklyReportAppUsageView *)v9 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:10.0];
    [v18 addObject:v41];

    v42 = objc_opt_new();
    appImageStackView = v9->_appImageStackView;
    v9->_appImageStackView = v42;

    [(UIStackView *)v9->_appImageStackView setAlignment:4];
    [(UIStackView *)v9->_appImageStackView setAxis:0];
    [(UIStackView *)v9->_appImageStackView setDistribution:3];
    [(UIStackView *)v9->_appImageStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STWeeklyReportAppUsageView *)v9 addSubview:v9->_appImageStackView];
    v44 = [(UIStackView *)v9->_appImageStackView topAnchor];
    v45 = [(UILabel *)v9->_titleLabel bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:7.0];
    [v18 addObject:v46];

    v47 = [(UIStackView *)v9->_appImageStackView leadingAnchor];
    v48 = [(STWeeklyReportAppUsageView *)v9 leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:v35];
    [v18 addObject:v49];

    v50 = [(UIStackView *)v9->_appImageStackView trailingAnchor];
    v51 = [(STWeeklyReportAppUsageView *)v9 trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:v34];
    [v18 addObject:v52];

    v53 = [(STWeeklyReportAppUsageView *)v9 bottomAnchor];
    v54 = [(UIStackView *)v9->_appImageStackView bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:16.0];
    [v18 addObject:v55];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    v56 = [(STUsageReport *)v9->_report topUsageItemsWithMaxCount:8 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v76 = v18;
    if ([v56 count])
    {
      v57 = [MEMORY[0x277D4BD98] sharedCache];
    }

    else
    {
      v57 = 0;
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
            v64 = [*(*(&v79 + 1) + 8 * i) totalUsage];
            [v64 doubleValue];
            v61 = v65;
          }

          v66 = [v63 totalUsage];
          [v66 doubleValue];
          v68 = v67;

          if (v61 <= 0.0 || (v69 = v68 / v61 * 40.0, v70 = 15.0, v69 >= 15.0) && (v70 = v69, v69 > 40.0))
          {
            v70 = 40.0;
          }

          v71 = [v63 image];
          if (v71)
          {
            v72 = [(STWeeklyReportAppUsageView *)v9 _appImageSubviewWithImage:v71 dimension:v70];
            [(UIStackView *)v9->_appImageStackView addArrangedSubview:v72];
            [(NSMutableArray *)v9->_topEightImageItems addObject:v63];
            v73 = [MEMORY[0x277CCABB0] numberWithDouble:v70];
            [(NSMutableDictionary *)v9->_dimensionByUsageItem setObject:v73 forKeyedSubscript:v63];
          }

          v74 = [v63 budgetItemIdentifier];
          [v57 addObserver:v9 selector:sel__didFetchIcon_ bundleIdentifier:v74];
        }

        v59 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v59);
    }

    v7 = v77;
  }

  return v9;
}

- (void)_didFetchIcon:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = [a3 userInfo];
  v4 = [v27 objectForKeyedSubscript:*MEMORY[0x277D4BDC8]];
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
        v10 = [v9 budgetItemIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v12 = [v9 image];
          if (v12)
          {
            v13 = [(STWeeklyReportAppUsageView *)self topEightImageItems];
            v14 = [v13 indexOfObject:v9];

            v15 = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [v15 arrangedSubviews];
            v16 = v7;
            v18 = v17 = v4;
            v19 = [v18 objectAtIndexedSubscript:v14];

            v20 = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [v20 removeArrangedSubview:v19];

            [v19 removeFromSuperview];
            v21 = [(STWeeklyReportAppUsageView *)self dimensionByUsageItem];
            v22 = [v21 objectForKeyedSubscript:v9];
            [v22 doubleValue];
            v24 = v23;

            v25 = [(STWeeklyReportAppUsageView *)self _appImageSubviewWithImage:v12 dimension:v24];
            v26 = [(STWeeklyReportAppUsageView *)self appImageStackView];
            [v26 insertArrangedSubview:v25 atIndex:v14];

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

- (id)_appImageSubviewWithImage:(id)a3 dimension:(double)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];

  [v7 setSize:{a4, a4}];
  [v6 addSubview:v7];
  v8 = MEMORY[0x277CCAAD0];
  v9 = [v7 centerXAnchor];
  v10 = [v6 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[0] = v11;
  v12 = [v7 bottomAnchor];
  v13 = [v6 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v17[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v8 activateConstraints:v15];

  return v6;
}

@end