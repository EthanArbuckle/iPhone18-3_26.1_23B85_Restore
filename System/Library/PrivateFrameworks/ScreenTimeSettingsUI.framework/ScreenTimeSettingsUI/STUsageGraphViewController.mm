@interface STUsageGraphViewController
- (STUsageGraphViewController)initWithCoder:(id)coder;
- (STUsageGraphViewController)initWithTitleView:(id)view graphHeight:(double)height includePaddle:(BOOL)paddle useVibrancy:(BOOL)vibrancy;
- (UIImage)dashedAverageLineImage;
- (double)maximumYAxisLabelWidth;
- (id)_closestBarViewToPoint:(CGPoint)point;
- (id)createBarIndicatorWithImageName:(id)name barView:(id)view;
- (id)createBarViewWithDataPoint:(id)point layoutGuide:(id)guide previousView:(id)view previousLayoutGuide:(id)layoutGuide layoutGuideWidthMultiplier:(double)multiplier;
- (id)createDividerWithView:(id)view layoutGuide:(id)guide previousLayoutGuide:(id)layoutGuide layoutGuideWidthMultiplier:(double)multiplier;
- (id)createFirstDivider;
- (id)createWeeklyAverageLineWithLayoutGuide:(id)guide;
- (uint64_t)loadView;
- (void)_handleLongPressGestureForBarSelection:(id)selection;
- (void)_handleLongPressGestureForPaddle:(id)paddle;
- (void)_selectBarView:(id)view;
- (void)_setUpHorizontalDividerLabels;
- (void)_showPaddleForBarView:(id)view;
- (void)_updateBarViewsAndIndicators;
- (void)loadView;
- (void)setDataSet:(id)set animated:(BOOL)animated;
- (void)setPressedBarView:(id)view;
- (void)setSelectedWeekday:(int64_t)weekday;
- (void)setUpBarViewHeightContraints;
- (void)setUpGraphWithLabelFormatter:(id)formatter;
- (void)setUpWeeklyAverageLine:(BOOL)line;
- (void)setYAxisLabelSectionWidth:(double)width;
- (void)viewDidLayoutSubviews;
@end

@implementation STUsageGraphViewController

- (STUsageGraphViewController)initWithTitleView:(id)view graphHeight:(double)height includePaddle:(BOOL)paddle useVibrancy:(BOOL)vibrancy
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = STUsageGraphViewController;
  v11 = [(STUsageGraphViewController *)&v14 initWithNibName:0 bundle:0];
  titleView = v11->_titleView;
  v11->_titleView = viewCopy;

  v11->_graphHeight = height;
  v11->_includePaddle = paddle;
  v11->_useVibrancy = vibrancy;
  [(STUsageGraphViewController *)v11 _stUsageGraphViewControllerCommonInit];
  return v11;
}

- (STUsageGraphViewController)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STUsageGraphViewController;
  v3 = [(STUsageGraphViewController *)&v5 initWithCoder:coder];
  [(STUsageGraphViewController *)v3 _stUsageGraphViewControllerCommonInit];
  return v3;
}

- (void)loadView
{
  v4 = objc_opt_new();
  [(STUsageGraphViewController *)self setView:v4];
  v5 = objc_opt_new();
  [(STUsageGraphViewController *)self setGraphLayoutGuide:v5];
  v161 = v5;
  [v4 addLayoutGuide:v5];
  v6 = objc_opt_new();
  selfCopy = self;
  useVibrancy = [(STUsageGraphViewController *)self useVibrancy];
  if (useVibrancy)
  {
    v7 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:102];
    v8 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v7];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v8];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [v4 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v6 addObject:v11];

    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [v4 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v6 addObject:v14];

    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [v4 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v6 addObject:v17];

    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [v4 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v6 addObject:v20];

    self = selfCopy;
    contentView = [v8 contentView];
    [(STUsageGraphViewController *)selfCopy setVibrancyEffectContentView:contentView];
  }

  else
  {
    contentView = 0;
  }

  titleView = [(STUsageGraphViewController *)self titleView];
  includePaddle = [(STUsageGraphViewController *)self includePaddle];
  v153 = includePaddle;
  if (titleView)
  {
    [v4 addSubview:titleView];
    topAnchor3 = [titleView topAnchor];
    topAnchor4 = [v4 topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v6 addObject:v26];

    leadingAnchor3 = [titleView leadingAnchor];
    leadingAnchor4 = [v4 leadingAnchor];
    v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v6 addObject:v29];

    trailingAnchor3 = [titleView trailingAnchor];
    trailingAnchor4 = [v4 trailingAnchor];
    v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v6 addObject:v32];

LABEL_6:
    goto LABEL_8;
  }

  if (includePaddle)
  {
    [(STUsageGraphViewController *)a2 loadView];
    trailingAnchor3 = v172;
    goto LABEL_6;
  }

LABEL_8:
  v158 = contentView;
  v156 = titleView;
  leadingAnchor5 = [v161 leadingAnchor];
  leadingAnchor6 = [v4 leadingAnchor];
  v35 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v6 addObject:v35];

  trailingAnchor5 = [v161 trailingAnchor];
  trailingAnchor6 = [v4 trailingAnchor];
  v38 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v6 addObject:v38];

  bottomAnchor3 = [v161 bottomAnchor];
  bottomAnchor4 = [v4 bottomAnchor];
  v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v6 addObject:v41];

  v42 = objc_opt_new();
  [(STUsageGraphViewController *)self setXAxisLabelSectionLayoutGuide:v42];
  [v4 addLayoutGuide:v42];
  leadingAnchor7 = [v42 leadingAnchor];
  leadingAnchor8 = [v161 leadingAnchor];
  v45 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v6 addObject:v45];

  trailingAnchor7 = [v42 trailingAnchor];
  trailingAnchor8 = [v161 trailingAnchor];
  v48 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v6 addObject:v48];

  bottomAnchor5 = [v42 bottomAnchor];
  bottomAnchor6 = [v161 bottomAnchor];
  v51 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v6 addObject:v51];

  v52 = objc_opt_new();
  [(STUsageGraphViewController *)self setYAxisLabelSectionLayoutGuide:v52];
  [v4 addLayoutGuide:v52];
  topAnchor5 = [v52 topAnchor];
  topAnchor6 = [v161 topAnchor];
  [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v56 = v55 = self;
  [v6 addObject:v56];

  trailingAnchor9 = [v52 trailingAnchor];
  trailingAnchor10 = [v161 trailingAnchor];
  v59 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v6 addObject:v59];

  bottomAnchor7 = [v52 bottomAnchor];
  bottomAnchor8 = [v161 bottomAnchor];
  v62 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [v6 addObject:v62];

  v63 = objc_opt_new();
  [(STUsageGraphViewController *)v55 setBarSectionLayoutGuide:v63];
  [v4 addLayoutGuide:v63];
  topAnchor7 = [v63 topAnchor];
  topAnchor8 = [v161 topAnchor];
  v66 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v6 addObject:v66];

  leadingAnchor9 = [v63 leadingAnchor];
  leadingAnchor10 = [v161 leadingAnchor];
  v69 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v6 addObject:v69];

  bottomAnchor9 = [v63 bottomAnchor];
  v157 = v42;
  topAnchor9 = [v42 topAnchor];
  v72 = [bottomAnchor9 constraintEqualToAnchor:topAnchor9];
  [v6 addObject:v72];

  trailingAnchor11 = [v63 trailingAnchor];
  v160 = v52;
  leadingAnchor11 = [v52 leadingAnchor];
  v75 = [trailingAnchor11 constraintLessThanOrEqualToAnchor:leadingAnchor11];
  [v6 addObject:v75];

  heightAnchor = [v63 heightAnchor];
  [(STUsageGraphViewController *)v55 graphHeight];
  v77 = [heightAnchor constraintEqualToConstant:?];
  [v6 addObject:v77];

  v78 = [STHorizontalDivider alloc];
  if (useVibrancy)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v80 = v158;
  }

  else
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGray3Color];
    v80 = v4;
  }

  v81 = [(STHorizontalDivider *)v78 initWithTintColor:systemGrayColor];

  [(STHorizontalDivider *)v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v80 addSubview:v81];
  leadingAnchor12 = [(STHorizontalDivider *)v81 leadingAnchor];
  leadingAnchor13 = [v63 leadingAnchor];
  v84 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  [v6 addObject:v84];

  centerYAnchor = [(STHorizontalDivider *)v81 centerYAnchor];
  bottomAnchor10 = [v63 bottomAnchor];
  v87 = [centerYAnchor constraintEqualToAnchor:bottomAnchor10];
  [v6 addObject:v87];

  trailingAnchor12 = [(STHorizontalDivider *)v81 trailingAnchor];
  trailingAnchor13 = [v52 trailingAnchor];
  v90 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  [v6 addObject:v90];

  horizontalLineTrailingAnchor = [(STHorizontalDivider *)v81 horizontalLineTrailingAnchor];
  trailingAnchor14 = [v63 trailingAnchor];
  v93 = [horizontalLineTrailingAnchor constraintEqualToAnchor:trailingAnchor14];
  [v6 addObject:v93];

  label = [(STHorizontalDivider *)v81 label];
  leadingAnchor14 = [label leadingAnchor];
  leadingAnchor15 = [v52 leadingAnchor];
  v97 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
  [v6 addObject:v97];

  v98 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v81, 0}];
  v99 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v100 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{1, 4}];
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = __38__STUsageGraphViewController_loadView__block_invoke;
  v163[3] = &unk_279B7E840;
  v101 = v4;
  v164 = v101;
  v102 = v98;
  v165 = v102;
  v103 = v6;
  v166 = v103;
  v152 = v99;
  v167 = v152;
  v171 = useVibrancy;
  v104 = v158;
  v168 = v104;
  v151 = v81;
  v169 = v151;
  v150 = label;
  v170 = v150;
  v155 = v100;
  [v100 enumerateIndexesUsingBlock:v163];
  v159 = v102;
  lastObject = [v102 lastObject];
  topAnchor10 = [lastObject topAnchor];
  v107 = v156;
  if (v156)
  {
    bottomAnchor11 = [v156 bottomAnchor];
    [topAnchor10 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor11 multiplier:1.0];
  }

  else
  {
    bottomAnchor11 = [v101 topAnchor];
    [topAnchor10 constraintEqualToAnchor:bottomAnchor11];
  }
  v109 = ;
  v110 = v101;
  [v103 addObject:v109];

  v149 = lastObject;
  centerYAnchor2 = [lastObject centerYAnchor];
  topAnchor11 = [v161 topAnchor];
  v113 = [centerYAnchor2 constraintEqualToAnchor:topAnchor11];
  [v103 addObject:v113];

  v114 = selfCopy;
  [(STUsageGraphViewController *)selfCopy setHorizontalDividers:v159];
  if (v153)
  {
    v115 = objc_opt_new();
    [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v115 setHidden:1];
    [(STUsageGraphViewController *)selfCopy setPaddleView:v115];
    [v110 addSubview:v115];
    topAnchor12 = [v115 topAnchor];
    topAnchor13 = [v156 topAnchor];
    v118 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
    [v103 addObject:v118];

    leadingAnchor16 = [v115 leadingAnchor];
    leadingAnchor17 = [v156 leadingAnchor];
    v121 = [leadingAnchor16 constraintGreaterThanOrEqualToAnchor:leadingAnchor17];
    [v103 addObject:v121];

    bottomAnchor12 = [v115 bottomAnchor];
    bottomAnchor13 = [v156 bottomAnchor];
    v124 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    [v103 addObject:v124];

    trailingAnchor15 = [v115 trailingAnchor];
    trailingAnchor16 = [v156 trailingAnchor];
    v127 = [trailingAnchor15 constraintLessThanOrEqualToAnchor:trailingAnchor16];
    [v103 addObject:v127];

    centerXAnchor = [v115 centerXAnchor];
    centerXAnchor2 = [v156 centerXAnchor];
    v130 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    v148 = v130;
    [(STUsageGraphViewController *)selfCopy setPaddleViewCenterXConstraint:v130];
    LODWORD(v131) = 1132068864;
    [v130 setPriority:v131];
    [v103 addObject:v130];
    v132 = objc_opt_new();
    [v132 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v132 setHidden:1];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [v132 setBackgroundColor:systemGreenColor];

    [(STUsageGraphViewController *)selfCopy setPaddleConnectorView:v132];
    [v110 addSubview:v132];
    topAnchor14 = [v132 topAnchor];
    bottomAnchor14 = [v156 bottomAnchor];
    v136 = [topAnchor14 constraintEqualToAnchor:bottomAnchor14];
    [v103 addObject:v136];

    bottomAnchor15 = [v132 bottomAnchor];
    bottomAnchor16 = [v63 bottomAnchor];
    v139 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
    [v103 addObject:v139];

    widthAnchor = [v132 widthAnchor];
    v141 = [widthAnchor constraintEqualToConstant:1.0];
    [v103 addObject:v141];

    centerXAnchor3 = [v132 centerXAnchor];
    centerXAnchor4 = [v156 centerXAnchor];
    [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v144 = v104;
    v146 = v145 = v110;

    v107 = v156;
    [(STUsageGraphViewController *)selfCopy setPaddleViewConnectorCenterXConstraint:v146];
    [v103 addObject:v146];
    v147 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:selfCopy action:sel__handleLongPressGestureForPaddle_];
    [v147 setMinimumPressDuration:0.1];

    v110 = v145;
    v104 = v144;

    v114 = selfCopy;
  }

  else
  {
    v147 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:selfCopy action:sel__handleLongPressGestureForBarSelection_];
    [v147 setMinimumPressDuration:0.0];
  }

  [v147 setDelegate:v114];
  [v110 addGestureRecognizer:v147];
  [MEMORY[0x277CCAAD0] activateConstraints:v103];
}

void __38__STUsageGraphViewController_loadView__block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = objc_opt_new();
  [*(a1 + 32) addLayoutGuide:v47];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2 - 1];
  v5 = *(a1 + 48);
  v6 = [v47 leadingAnchor];
  v7 = [v4 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v5 addObject:v8];

  v9 = *(a1 + 48);
  v10 = [v47 bottomAnchor];
  v11 = [v4 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v9 addObject:v12];

  v13 = *(a1 + 48);
  v14 = [v47 trailingAnchor];
  v15 = [v4 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v13 addObject:v16];

  v17 = [*(a1 + 56) lastObject];
  if (v17)
  {
    v18 = *(a1 + 48);
    v19 = [v47 heightAnchor];
    v20 = [v17 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v18 addObject:v21];
  }

  [*(a1 + 56) addObject:v47];
  v22 = [STHorizontalDivider alloc];
  if (*(a1 + 88))
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray3Color];
  }
  v23 = ;
  v24 = [(STHorizontalDivider *)v22 initWithTintColor:v23];

  [(STHorizontalDivider *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = 32;
  if (*(a1 + 88))
  {
    v25 = 64;
  }

  [*(a1 + v25) addSubview:v24];
  v26 = *(a1 + 48);
  v27 = [(STHorizontalDivider *)v24 leadingAnchor];
  v28 = [v47 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v26 addObject:v29];

  v30 = *(a1 + 48);
  v31 = [(STHorizontalDivider *)v24 centerYAnchor];
  v32 = [v47 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v30 addObject:v33];

  v34 = *(a1 + 48);
  v35 = [(STHorizontalDivider *)v24 trailingAnchor];
  v36 = [v47 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v34 addObject:v37];

  v38 = *(a1 + 48);
  v39 = [(STHorizontalDivider *)v24 horizontalLineTrailingAnchor];
  v40 = [*(a1 + 72) horizontalLineTrailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v38 addObject:v41];

  v42 = *(a1 + 48);
  v43 = [(STHorizontalDivider *)v24 label];
  v44 = [v43 leadingAnchor];
  v45 = [*(a1 + 80) leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v42 addObject:v46];

  [*(a1 + 40) addObject:v24];
}

- (void)viewDidLayoutSubviews
{
  v34 = *MEMORY[0x277D85DE8];
  dataSet = [(STUsageGraphViewController *)self dataSet];
  timePeriod = [dataSet timePeriod];

  if (timePeriod == 2)
  {
    weeklyAverageLabel = [(STUsageGraphViewController *)self weeklyAverageLabel];
    v6 = weeklyAverageLabel;
    if (weeklyAverageLabel)
    {
      v7 = [weeklyAverageLabel isHidden] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    horizontalDividers = [(STUsageGraphViewController *)self horizontalDividers];
    v17 = [horizontalDividers countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(horizontalDividers);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          if (v7)
          {
            [*(*(&v29 + 1) + 8 * i) frame];
            v36.origin.x = v22;
            v36.origin.y = v23;
            v36.size.width = v24;
            v36.size.height = v25;
            v35.origin.x = v9;
            v35.origin.y = v11;
            v35.size.width = v13;
            v35.size.height = v15;
            v26 = CGRectIntersectsRect(v35, v36);
          }

          else
          {
            v26 = 0;
          }

          label = [v21 label];
          [label setHidden:v26];
        }

        v18 = [horizontalDividers countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageGraphViewController.viewDidLayoutSubviews", v28, 2u);
  }
}

- (void)setDataSet:(id)set animated:(BOOL)animated
{
  animatedCopy = animated;
  v71 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (self->_dataSet != setCopy)
  {
    v48 = a2;
    view = [(STUsageGraphViewController *)self view];
    timePeriod = [(STUsageReportGraphDataSet *)setCopy timePeriod];
    dataSet = self->_dataSet;
    if (dataSet)
    {
      if ([(STUsageReportGraphDataSet *)dataSet timePeriod]== timePeriod)
      {
        dataPoints = [(STUsageReportGraphDataSet *)self->_dataSet dataPoints];
        v47 = [dataPoints count];
        [(STUsageReportGraphDataSet *)setCopy dataPoints];
        v13 = setCopy;
        v14 = timePeriod;
        v16 = v15 = animatedCopy;
        v17 = [v16 count];

        animatedCopy = v15;
        timePeriod = v14;
        setCopy = v13;

        if (v47 == v17)
        {
          objc_storeStrong(&self->_dataSet, set);
          [(STUsageGraphViewController *)self _updateBarViewsAndIndicators];
LABEL_42:
          [(STUsageGraphViewController *)self _setUpHorizontalDividerLabels];
          if (timePeriod == 2 && ([(STUsageReportGraphDataSet *)setCopy averageAsPercentageOfMax], v43 > 0.05))
          {
            [(STUsageGraphViewController *)self setUpWeeklyAverageLine:animatedCopy];
            if (!animatedCopy)
            {
LABEL_45:
              [(STUsageGraphViewController *)self setUpBarViewHeightContraints];
LABEL_48:

              goto LABEL_49;
            }
          }

          else
          {
            weeklyAverageLine = [(STUsageGraphViewController *)self weeklyAverageLine];
            [weeklyAverageLine setHidden:1];

            weeklyAverageLabel = [(STUsageGraphViewController *)self weeklyAverageLabel];
            [weeklyAverageLabel setHidden:1];

            if (!animatedCopy)
            {
              goto LABEL_45;
            }
          }

          [view layoutIfNeeded];
          [(STUsageGraphViewController *)self setUpBarViewHeightContraints];
          v46 = MEMORY[0x277D75D18];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __50__STUsageGraphViewController_setDataSet_animated___block_invoke;
          v49[3] = &unk_279B7C998;
          v50 = view;
          [v46 animateWithDuration:0 delay:v49 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:0.9 completion:0.1];

          goto LABEL_48;
        }
      }
    }

    objc_storeStrong(&self->_dataSet, set);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    verticalDividers = [(STUsageGraphViewController *)self verticalDividers];
    v19 = [verticalDividers countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(verticalDividers);
          }

          [*(*(&v63 + 1) + 8 * i) removeFromSuperview];
        }

        v20 = [verticalDividers countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v20);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    barViews = [(STUsageGraphViewController *)self barViews];
    v24 = [barViews countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(barViews);
          }

          [*(*(&v59 + 1) + 8 * j) removeFromSuperview];
        }

        v25 = [barViews countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    barIndicators = [(STUsageGraphViewController *)self barIndicators];
    v29 = [barIndicators countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v56;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(barIndicators);
          }

          [*(*(&v55 + 1) + 8 * k) removeFromSuperview];
        }

        v30 = [barIndicators countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v30);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    verticalLayoutGuides = [(STUsageGraphViewController *)self verticalLayoutGuides];
    v34 = [verticalLayoutGuides countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v52;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v52 != v36)
          {
            objc_enumerationMutation(verticalLayoutGuides);
          }

          [view removeLayoutGuide:*(*(&v51 + 1) + 8 * m)];
        }

        v35 = [verticalLayoutGuides countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v35);
    }

    paddleView = [(STUsageGraphViewController *)self paddleView];
    [paddleView setHidden:1];

    paddleConnectorView = [(STUsageGraphViewController *)self paddleConnectorView];
    [paddleConnectorView setHidden:1];

    v40 = objc_opt_new();
    [v40 setFormattingContext:3];
    if (timePeriod == 2)
    {
      v42 = @"ccccc";
    }

    else
    {
      if (timePeriod != 1)
      {
        if (!timePeriod)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v48 object:self file:@"STUsageGraphViewController.m" lineNumber:318 description:@"We don't have a graph for hourly reports."];
        }

        goto LABEL_41;
      }

      v42 = @"hj";
    }

    [v40 setLocalizedDateFormatFromTemplate:v42];
LABEL_41:
    [(STUsageGraphViewController *)self setUpGraphWithLabelFormatter:v40];

    goto LABEL_42;
  }

LABEL_49:
}

- (void)setSelectedWeekday:(int64_t)weekday
{
  dataSet = [(STUsageGraphViewController *)self dataSet];
  if ([dataSet timePeriod] != 2)
  {
    [(STUsageGraphViewController *)a2 setSelectedWeekday:?];
  }

  if (self->_selectedWeekday != weekday)
  {
    self->_selectedWeekday = weekday;
    barViews = [(STUsageGraphViewController *)self barViews];
    v8 = barViews;
    if (weekday == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(STUsageGraphViewController *)self _selectBarView:0];
    }

    else if ([barViews count])
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      dataPoints = [dataSet dataPoints];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__STUsageGraphViewController_setSelectedWeekday___block_invoke;
      v12[3] = &unk_279B7E868;
      weekdayCopy = weekday;
      v13 = currentCalendar;
      selfCopy = self;
      v15 = v8;
      v11 = currentCalendar;
      [dataPoints enumerateObjectsUsingBlock:v12];
    }
  }
}

void __49__STUsageGraphViewController_setSelectedWeekday___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 date];
  v9 = [v7 component:512 fromDate:v8];
  v10 = *(a1 + 56);

  if (v9 == v10)
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) objectAtIndexedSubscript:a3];
    [v11 _selectBarView:v12];

    *a4 = 1;
  }
}

- (void)setPressedBarView:(id)view
{
  viewCopy = view;
  [(STBarView *)self->_pressedBarView setDarkened:0];
  pressedBarView = self->_pressedBarView;
  self->_pressedBarView = viewCopy;
  v6 = viewCopy;

  [(STBarView *)v6 setDarkened:1];
}

- (double)maximumYAxisLabelWidth
{
  v20 = *MEMORY[0x277D85DE8];
  weeklyAverageLabel = [(STUsageGraphViewController *)self weeklyAverageLabel];
  [weeklyAverageLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v5 = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  horizontalDividers = [(STUsageGraphViewController *)self horizontalDividers];
  v7 = [horizontalDividers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(horizontalDividers);
        }

        label = [*(*(&v15 + 1) + 8 * v10) label];
        [label sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v13 = v12;

        if (v5 < v13)
        {
          v5 = v13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [horizontalDividers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)setYAxisLabelSectionWidth:(double)width
{
  yAxisLabelSectionWidthConstraint = [(STUsageGraphViewController *)self yAxisLabelSectionWidthConstraint];
  if (yAxisLabelSectionWidthConstraint)
  {
    v8 = yAxisLabelSectionWidthConstraint;
    [yAxisLabelSectionWidthConstraint setConstant:width];
  }

  else
  {
    yAxisLabelSectionLayoutGuide = [(STUsageGraphViewController *)self yAxisLabelSectionLayoutGuide];
    widthAnchor = [yAxisLabelSectionLayoutGuide widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:width];

    [v8 setActive:1];
    [(STUsageGraphViewController *)self setYAxisLabelSectionWidthConstraint:v8];
  }
}

- (void)_setUpHorizontalDividerLabels
{
  dataSet = [(STUsageGraphViewController *)self dataSet];
  itemType = [dataSet itemType];
  if ((itemType - 1) >= 4)
  {
    if ((itemType - 5) < 2)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v14 = [dataSet max];
      [v14 doubleValue];
      v16 = v15;

      horizontalDividers = [(STUsageGraphViewController *)self horizontalDividers];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke_2;
      v18[3] = &unk_279B7E8B8;
      v18[4] = &v23;
      *&v18[5] = v16 / 4uLL;
      [horizontalDividers enumerateObjectsUsingBlock:v18];

      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    timePeriod = [dataSet timePeriod];
    v6 = [dataSet max];
    [v6 doubleValue];
    v8 = v7;

    v9 = objc_opt_new();
    [v9 setFormattingContext:3];
    if (v8 <= 3600.0 && timePeriod == 1)
    {
      v11 = 64;
    }

    else
    {
      v11 = 32;
    }

    [v9 setAllowedUnits:v11];
    [v9 setUnitsStyle:1];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    horizontalDividers2 = [(STUsageGraphViewController *)self horizontalDividers];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke;
    v19[3] = &unk_279B7E890;
    v21 = &v23;
    v13 = v9;
    v20 = v13;
    v22 = v8 / 4uLL;
    [horizontalDividers2 enumerateObjectsUsingBlock:v19];

    _Block_object_dispose(&v23, 8);
  }
}

void __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = [a2 label];
  v10 = v5;
  if (a3)
  {
    [v5 setText:0];
  }

  else if (*(*(*(a1 + 40) + 8) + 24) == 0.0)
  {
    v6 = MEMORY[0x277CCABB8];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];
    [v10 setText:v8];
  }

  else
  {
    v9 = [*(a1 + 32) stringFromTimeInterval:?];
    [v10 setText:v9];
  }

  [v10 setHidden:0];
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) + *(*(*(a1 + 40) + 8) + 24);
}

void __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v8 = [a2 label];
  if (a3)
  {
    [v8 setText:0];
  }

  else
  {
    v5 = MEMORY[0x277CCABB8];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 32) + 8) + 24)];
    v7 = [v5 localizedStringFromNumber:v6 numberStyle:0];
    [v8 setText:v7];
  }

  [v8 setHidden:0];
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) + *(*(*(a1 + 32) + 8) + 24);
}

- (void)setUpGraphWithLabelFormatter:(id)formatter
{
  formatterCopy = formatter;
  dataSet = [(STUsageGraphViewController *)self dataSet];
  dataPoints = [dataSet dataPoints];
  v6 = [dataPoints count];
  if (!v6)
  {
    goto LABEL_37;
  }

  v7 = v6;
  v45 = a2;
  v46 = dataSet;
  timePeriod = [dataSet timePeriod];
  v48 = objc_opt_new();
  v9 = objc_opt_new();
  v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
  v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
  v10 = 0;
  v11 = 0;
  v53 = 0;
  v54 = timePeriod;
  v12 = 0;
  if (timePeriod == 1)
  {
    v13 = 0.5;
  }

  else
  {
    v13 = 1.0;
  }

  v50 = v7;
  do
  {
    v14 = [dataPoints objectAtIndexedSubscript:v12];
    date = [v14 date];
    v56 = date;
    v57 = v14;
    if (v54 != 2)
    {
      if (v54 != 1 || (([MEMORY[0x277CBEA80] currentCalendar], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "component:fromDate:", 32, date), v16, v18 = __ROR8__(v17, 1), v14 = v57, v19 = (1 << v18) & 0x249, v18 <= 9) ? (v20 = v19 == 0) : (v20 = 1), v20))
      {

        if (v10)
        {
          v21 = 0;
          createFirstDivider = 0;
          v23 = v53 + 1;
          goto LABEL_18;
        }

LABEL_16:
        createFirstDivider = [(STUsageGraphViewController *)self createFirstDivider];
        v21 = 0;
        goto LABEL_17;
      }
    }

    if (!v10)
    {
      goto LABEL_16;
    }

    v21 = objc_opt_new();
    [v9 addObject:v21];
    createFirstDivider = [(STUsageGraphViewController *)self createDividerWithView:v10 layoutGuide:v21 previousLayoutGuide:v11 layoutGuideWidthMultiplier:v13];
LABEL_17:
    v24 = [formatterCopy stringFromDate:date];
    [createFirstDivider setLabelText:v24];

    [v48 addObject:createFirstDivider];
    v23 = 0;
    v14 = v57;
LABEL_18:
    if (createFirstDivider)
    {
      v25 = createFirstDivider;
    }

    else
    {
      v25 = v10;
    }

    v26 = v25;

    if (v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v11;
    }

    v28 = v27;

    v11 = objc_opt_new();
    [v9 addObject:v11];
    if (!v26)
    {
      [(STUsageGraphViewController *)v45 setUpGraphWithLabelFormatter:?];
    }

    v53 = v23;
    if (v23 == 1)
    {
      v29 = 2.0;
    }

    else
    {
      v29 = 1.0;
    }

    v55 = v28;
    v10 = [(STUsageGraphViewController *)self createBarViewWithDataPoint:v14 layoutGuide:v11 previousView:v26 previousLayoutGuide:v28 layoutGuideWidthMultiplier:v29];
    [v51 addObject:v10];
    indicatorImageName = [v14 indicatorImageName];
    if (indicatorImageName)
    {
      v31 = [(STUsageGraphViewController *)self createBarIndicatorWithImageName:indicatorImageName barView:v10];
      [v14 indicatorImageColor];
      v32 = v10;
      v33 = v11;
      v34 = v9;
      v36 = v35 = self;
      [v31 setTintColor:v36];

      self = v35;
      v9 = v34;
      v11 = v33;
      v10 = v32;
      v14 = v57;
      [v47 addObject:v31];
    }

    if (!v12)
    {
      paddleView = [(STUsageGraphViewController *)self paddleView];
      [paddleView setDataPoint:v14];
    }

    ++v12;
  }

  while (v50 != v12);
  v38 = objc_opt_new();
  [v9 addObject:v38];
  v39 = v9;
  if (!v10)
  {
    [(STUsageGraphViewController *)v45 setUpGraphWithLabelFormatter:?];
  }

  v40 = [(STUsageGraphViewController *)self createDividerWithView:v10 layoutGuide:v38 previousLayoutGuide:v11 layoutGuideWidthMultiplier:v13];
  [v48 addObject:v40];
  trailingAnchor = [v40 trailingAnchor];
  [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v42 = v58 = v10;
  trailingAnchor2 = [v42 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v44 setActive:1];

  [(STUsageGraphViewController *)self setVerticalDividers:v48];
  [(STUsageGraphViewController *)self setVerticalLayoutGuides:v39];
  [(STUsageGraphViewController *)self setBarViews:v51];
  [(STUsageGraphViewController *)self setBarIndicators:v47];

  dataSet = v46;
LABEL_37:
}

- (void)setUpBarViewHeightContraints
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  barViewHeightConstraints = [(STUsageGraphViewController *)self barViewHeightConstraints];
  v4 = [barViewHeightConstraints countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(barViewHeightConstraints);
        }

        [*(*(&v21 + 1) + 8 * v7++) setActive:0];
      }

      while (v5 != v7);
      v5 = [barViewHeightConstraints countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  barViews = [(STUsageGraphViewController *)self barViews];
  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  heightAnchor = [barSectionLayoutGuide heightAnchor];

  dataSet = [(STUsageGraphViewController *)self dataSet];
  dataPoints = [dataSet dataPoints];

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(barViews, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__STUsageGraphViewController_setUpBarViewHeightContraints__block_invoke;
  v17[3] = &unk_279B7E8E0;
  v18 = dataPoints;
  v19 = heightAnchor;
  v20 = v13;
  v14 = v13;
  v15 = heightAnchor;
  v16 = dataPoints;
  [barViews enumerateObjectsUsingBlock:v17];
  [(STUsageGraphViewController *)self setBarViewHeightConstraints:v14];
}

void __58__STUsageGraphViewController_setUpBarViewHeightContraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 heightAnchor];

  v8 = *(a1 + 40);
  [v10 totalAsPercentageOfMax];
  v9 = [v7 constraintEqualToAnchor:v8 multiplier:?];

  [v9 setActive:1];
  [*(a1 + 48) addObject:v9];
}

- (void)_updateBarViewsAndIndicators
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  barIndicators = [(STUsageGraphViewController *)self barIndicators];
  v4 = [barIndicators countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(barIndicators);
        }

        [*(*(&v18 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [barIndicators countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  dataSet = [(STUsageGraphViewController *)self dataSet];
  dataPoints = [dataSet dataPoints];

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dataPoints, "count")}];
  barViews = [(STUsageGraphViewController *)self barViews];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__STUsageGraphViewController__updateBarViewsAndIndicators__block_invoke;
  v14[3] = &unk_279B7E8E0;
  v15 = dataPoints;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = dataPoints;
  [barViews enumerateObjectsUsingBlock:v14];

  [(STUsageGraphViewController *)self setBarIndicators:v12];
}

void __58__STUsageGraphViewController__updateBarViewsAndIndicators__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [a1[4] objectAtIndexedSubscript:a3];
  [v9 setDataPoint:v5];
  v6 = [v5 indicatorImageName];
  if (v6)
  {
    v7 = [a1[5] createBarIndicatorWithImageName:v6 barView:v9];
    v8 = [v5 indicatorImageColor];
    [v7 setTintColor:v8];

    [a1[6] addObject:v7];
  }
}

- (void)setUpWeeklyAverageLine:(BOOL)line
{
  lineCopy = line;
  view = [(STUsageGraphViewController *)self view];
  weeklyAverageLine = [(STUsageGraphViewController *)self weeklyAverageLine];
  weeklyAverageLayoutGuide = [(STUsageGraphViewController *)self weeklyAverageLayoutGuide];
  if (weeklyAverageLine)
  {
    [view bringSubviewToFront:weeklyAverageLine];
    [weeklyAverageLine setHidden:0];
    weeklyAverageLabel = [(STUsageGraphViewController *)self weeklyAverageLabel];
    [weeklyAverageLabel setHidden:0];
  }

  else
  {
    v8 = objc_opt_new();

    [(STUsageGraphViewController *)self setWeeklyAverageLayoutGuide:v8];
    weeklyAverageLine = [(STUsageGraphViewController *)self createWeeklyAverageLineWithLayoutGuide:v8];
    [(STUsageGraphViewController *)self setWeeklyAverageLine:weeklyAverageLine];
    weeklyAverageLayoutGuide = v8;
  }

  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  weeklyAverageHeightConstraint = [(STUsageGraphViewController *)self weeklyAverageHeightConstraint];
  [weeklyAverageHeightConstraint setActive:0];
  heightAnchor = [weeklyAverageLayoutGuide heightAnchor];
  heightAnchor2 = [barSectionLayoutGuide heightAnchor];
  dataSet = [(STUsageGraphViewController *)self dataSet];
  [dataSet averageAsPercentageOfMax];
  v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:?];

  [v14 setActive:1];
  [(STUsageGraphViewController *)self setWeeklyAverageHeightConstraint:v14];
  weeklyAverageTrailingConstraint = [(STUsageGraphViewController *)self weeklyAverageTrailingConstraint];
  v16 = weeklyAverageTrailingConstraint;
  if (lineCopy)
  {
    [weeklyAverageTrailingConstraint setActive:0];
    trailingAnchor = [weeklyAverageLine trailingAnchor];
    leadingAnchor = [barSectionLayoutGuide leadingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];

    [v19 setActive:1];
    [view layoutIfNeeded];
    v16 = v19;
  }

  [v16 setActive:0];
  trailingAnchor2 = [weeklyAverageLine trailingAnchor];
  trailingAnchor3 = [barSectionLayoutGuide trailingAnchor];
  v22 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

  [v22 setActive:1];
  [(STUsageGraphViewController *)self setWeeklyAverageTrailingConstraint:v22];
}

- (id)createFirstDivider
{
  v29[4] = *MEMORY[0x277D85DE8];
  vibrancyEffectContentView = [(STUsageGraphViewController *)self vibrancyEffectContentView];
  v4 = [STDashedVerticalDivider alloc];
  v28 = vibrancyEffectContentView;
  if (vibrancyEffectContentView)
  {
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    v6 = [(STDashedVerticalDivider *)v4 initWithTintColor:systemDarkGrayColor];

    [(STDashedVerticalDivider *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [vibrancyEffectContentView addSubview:v6];
  }

  else
  {
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    v6 = [(STDashedVerticalDivider *)v4 initWithTintColor:systemGray3Color];

    [(STDashedVerticalDivider *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(STUsageGraphViewController *)self view];
    [view addSubview:v6];
  }

  graphLayoutGuide = [(STUsageGraphViewController *)self graphLayoutGuide];
  v20 = MEMORY[0x277CCAAD0];
  topAnchor = [(STDashedVerticalDivider *)v6 topAnchor];
  v24 = graphLayoutGuide;
  topAnchor2 = [graphLayoutGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v25;
  leadingAnchor = [(STDashedVerticalDivider *)v6 leadingAnchor];
  xAxisLabelSectionLayoutGuide = [(STUsageGraphViewController *)self xAxisLabelSectionLayoutGuide];
  leadingAnchor2 = [xAxisLabelSectionLayoutGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v10;
  bottomAnchor = [(STDashedVerticalDivider *)v6 bottomAnchor];
  bottomAnchor2 = [graphLayoutGuide bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v13;
  labelTopAnchor = [(STDashedVerticalDivider *)v6 labelTopAnchor];
  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  bottomAnchor3 = [barSectionLayoutGuide bottomAnchor];
  v17 = [labelTopAnchor constraintEqualToAnchor:bottomAnchor3 constant:6.0];
  v29[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v20 activateConstraints:v18];

  return v6;
}

- (id)createDividerWithView:(id)view layoutGuide:(id)guide previousLayoutGuide:(id)layoutGuide layoutGuideWidthMultiplier:(double)multiplier
{
  guideCopy = guide;
  layoutGuideCopy = layoutGuide;
  viewCopy = view;
  vibrancyEffectContentView = [(STUsageGraphViewController *)self vibrancyEffectContentView];
  view = [(STUsageGraphViewController *)self view];
  v15 = [STDashedVerticalDivider alloc];
  v47 = layoutGuideCopy;
  if (vibrancyEffectContentView)
  {
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    v17 = [(STDashedVerticalDivider *)v15 initWithTintColor:systemDarkGrayColor];

    [(STDashedVerticalDivider *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = vibrancyEffectContentView;
  }

  else
  {
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    v17 = [(STDashedVerticalDivider *)v15 initWithTintColor:systemGray3Color];

    [(STDashedVerticalDivider *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = view;
  }

  [v18 addSubview:v17];
  graphLayoutGuide = [(STUsageGraphViewController *)self graphLayoutGuide];
  topAnchor = [(STDashedVerticalDivider *)v17 topAnchor];
  topAnchor2 = [graphLayoutGuide topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 setActive:1];

  bottomAnchor = [(STDashedVerticalDivider *)v17 bottomAnchor];
  bottomAnchor2 = [graphLayoutGuide bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v26 setActive:1];

  labelTopAnchor = [(STDashedVerticalDivider *)v17 labelTopAnchor];
  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  bottomAnchor3 = [barSectionLayoutGuide bottomAnchor];
  v30 = [labelTopAnchor constraintEqualToAnchor:bottomAnchor3 constant:6.0];
  [v30 setActive:1];

  [view addLayoutGuide:guideCopy];
  topAnchor3 = [guideCopy topAnchor];
  topAnchor4 = [graphLayoutGuide topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v33 setActive:1];

  leadingAnchor = [guideCopy leadingAnchor];
  trailingAnchor = [viewCopy trailingAnchor];

  v36 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
  [v36 setActive:1];

  bottomAnchor4 = [guideCopy bottomAnchor];
  bottomAnchor5 = [graphLayoutGuide bottomAnchor];
  v39 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v39 setActive:1];

  trailingAnchor2 = [guideCopy trailingAnchor];
  dashedLineCenterXAnchor = [(STDashedVerticalDivider *)v17 dashedLineCenterXAnchor];
  v42 = [trailingAnchor2 constraintEqualToAnchor:dashedLineCenterXAnchor];
  [v42 setActive:1];

  if (v47)
  {
    widthAnchor = [guideCopy widthAnchor];
    widthAnchor2 = [v47 widthAnchor];
    v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:multiplier];
    [v45 setActive:1];
  }

  return v17;
}

- (id)createBarViewWithDataPoint:(id)point layoutGuide:(id)guide previousView:(id)view previousLayoutGuide:(id)layoutGuide layoutGuideWidthMultiplier:(double)multiplier
{
  guideCopy = guide;
  viewCopy = view;
  layoutGuideCopy = layoutGuide;
  pointCopy = point;
  v16 = [[STBarView alloc] initWithDataPoint:pointCopy useVibrancy:[(STUsageGraphViewController *)self useVibrancy]];

  [(STBarView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(STUsageGraphViewController *)self view];
  [view addSubview:v16];
  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  bottomAnchor = [(STBarView *)v16 bottomAnchor];
  bottomAnchor2 = [barSectionLayoutGuide bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  dataSet = [(STUsageGraphViewController *)self dataSet];
  timePeriod = [dataSet timePeriod];
  dataPoints = [dataSet dataPoints];
  v25 = [dataPoints count];

  if (v25)
  {
    v26 = 0.7;
    if (timePeriod != 1)
    {
      v26 = 0.5;
    }

    v27 = v25;
    if (v25 < 1.0)
    {
      v27 = 1.0;
    }

    v28 = v26 / v27;
  }

  else
  {
    v28 = 0.0;
  }

  widthAnchor = [(STBarView *)v16 widthAnchor];
  widthAnchor2 = [barSectionLayoutGuide widthAnchor];
  v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v28];
  [v31 setActive:1];

  [view addLayoutGuide:guideCopy];
  topAnchor = [guideCopy topAnchor];
  topAnchor2 = [barSectionLayoutGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v34 setActive:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = viewCopy;
    leadingAnchor = [guideCopy leadingAnchor];
    dashedLineCenterXAnchor = [v35 dashedLineCenterXAnchor];
  }

  else
  {
    leadingAnchor = [guideCopy leadingAnchor];
    dashedLineCenterXAnchor = [viewCopy trailingAnchor];
  }

  v38 = [leadingAnchor constraintEqualToAnchor:dashedLineCenterXAnchor];
  [v38 setActive:1];

  bottomAnchor3 = [guideCopy bottomAnchor];
  bottomAnchor4 = [barSectionLayoutGuide bottomAnchor];
  v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v41 setActive:1];

  trailingAnchor = [guideCopy trailingAnchor];
  leadingAnchor2 = [(STBarView *)v16 leadingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v44 setActive:1];

  if (layoutGuideCopy)
  {
    widthAnchor3 = [guideCopy widthAnchor];
    widthAnchor4 = [layoutGuideCopy widthAnchor];
    v47 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:multiplier];
    [v47 setActive:1];
  }

  return v16;
}

- (id)createWeeklyAverageLineWithLayoutGuide:(id)guide
{
  v53[9] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D755E8];
  guideCopy = guide;
  v6 = [v4 alloc];
  dashedAverageLineImage = [(STUsageGraphViewController *)self dashedAverageLineImage];
  v8 = [v6 initWithImage:dashedAverageLineImage];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  [v8 setTintColor:systemGreenColor];

  view = [(STUsageGraphViewController *)self view];
  [view addSubview:v8];
  barSectionLayoutGuide = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v52 = view;
  [view addLayoutGuide:guideCopy];
  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v12 setFont:v13];

  systemGreenColor2 = [MEMORY[0x277D75348] systemGreenColor];
  [v12 setTextColor:systemGreenColor2];

  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"DailyAverageLineLabel" value:&stru_28766E5A8 table:0];
  [v12 setText:v16];

  LODWORD(v17) = 1144750080;
  [v12 setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1144766464;
  [v12 setContentCompressionResistancePriority:0 forAxis:v18];
  [(STUsageGraphViewController *)self setWeeklyAverageLabel:v12];
  [view addSubview:v12];
  yAxisLabelSectionLayoutGuide = [(STUsageGraphViewController *)self yAxisLabelSectionLayoutGuide];
  v39 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [barSectionLayoutGuide leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v49;
  heightAnchor = [v8 heightAnchor];
  v47 = [heightAnchor constraintEqualToConstant:1.5];
  v53[1] = v47;
  leadingAnchor3 = [guideCopy leadingAnchor];
  leadingAnchor4 = [barSectionLayoutGuide leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v53[2] = v43;
  bottomAnchor = [guideCopy bottomAnchor];
  v46 = barSectionLayoutGuide;
  bottomAnchor2 = [barSectionLayoutGuide bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[3] = v40;
  trailingAnchor = [guideCopy trailingAnchor];
  trailingAnchor2 = [barSectionLayoutGuide trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[4] = v36;
  topAnchor = [guideCopy topAnchor];

  centerYAnchor = [v8 centerYAnchor];
  v32 = [topAnchor constraintEqualToAnchor:centerYAnchor];
  v53[5] = v32;
  leadingAnchor5 = [v12 leadingAnchor];
  v35 = yAxisLabelSectionLayoutGuide;
  leadingAnchor6 = [yAxisLabelSectionLayoutGuide leadingAnchor];
  v21 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v53[6] = v21;
  centerYAnchor2 = [v12 centerYAnchor];
  v30 = v8;
  centerYAnchor3 = [v8 centerYAnchor];
  v24 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v53[7] = v24;
  trailingAnchor3 = [v12 trailingAnchor];
  trailingAnchor4 = [yAxisLabelSectionLayoutGuide trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v53[8] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
  [v39 activateConstraints:v28];

  return v30;
}

- (id)createBarIndicatorWithImageName:(id)name barView:(id)view
{
  v6 = MEMORY[0x277D755B8];
  viewCopy = view;
  nameCopy = name;
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v6 imageNamed:nameCopy inBundle:v9];

  v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(STUsageGraphViewController *)self view];
  [view addSubview:v11];

  topAnchor = [v11 topAnchor];
  bottomAnchor = [viewCopy bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v15 setActive:1];

  centerXAnchor = [v11 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];

  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];

  return v11;
}

- (void)_handleLongPressGestureForPaddle:(id)paddle
{
  paddleCopy = paddle;
  barViews = [(STUsageGraphViewController *)self barViews];
  v6 = [barViews count];

  if (v6)
  {
    if ([paddleCopy state] > 2)
    {
      paddleView = [(STUsageGraphViewController *)self paddleView];
      [paddleView setHidden:1];

      paddleConnectorView = [(STUsageGraphViewController *)self paddleConnectorView];
      [paddleConnectorView setHidden:1];

      selectedBarView = [(STUsageGraphViewController *)self selectedBarView];
      [selectedBarView setColor:0];

      titleView = [(STUsageGraphViewController *)self titleView];
      [titleView alpha];
      v20 = v19;

      if (v20 <= 0.00000011920929)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __63__STUsageGraphViewController__handleLongPressGestureForPaddle___block_invoke;
        v21[3] = &unk_279B7C998;
        v21[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v21 animations:0.2];
      }
    }

    else
    {
      view = [(STUsageGraphViewController *)self view];
      [paddleCopy locationInView:view];
      v9 = v8;
      v11 = v10;

      graphLayoutGuide = [(STUsageGraphViewController *)self graphLayoutGuide];
      [graphLayoutGuide layoutFrame];
      v22.x = v9;
      v22.y = v11;
      v13 = CGRectContainsPoint(v23, v22);

      if (v13)
      {
        v14 = [(STUsageGraphViewController *)self _closestBarViewToPoint:v9, v11];
        [(STUsageGraphViewController *)self _showPaddleForBarView:v14];
      }
    }
  }
}

void __63__STUsageGraphViewController__handleLongPressGestureForPaddle___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleView];
  [v1 setAlpha:1.0];
}

- (id)_closestBarViewToPoint:(CGPoint)point
{
  x = point.x;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  barViews = [(STUsageGraphViewController *)self barViews];
  v5 = [barViews countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(barViews);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        dataPoint = [v11 dataPoint];
        total = [dataPoint total];
        [total doubleValue];
        v15 = v14;

        if (v15 > 0.0)
        {
          [v11 frame];
          v16 = CGRectGetMidX(v27) - x;
          v17 = v16 >= 0.0 ? v16 : -v16;
          if (v17 < v9)
          {
            v18 = v11;

            v9 = v17;
            v7 = v18;
          }
        }
      }

      v6 = [barViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showPaddleForBarView:(id)view
{
  viewCopy = view;
  selectedBarView = [(STUsageGraphViewController *)self selectedBarView];
  [selectedBarView setColor:0];
  if (viewCopy)
  {
    titleView = [(STUsageGraphViewController *)self titleView];
    [titleView alpha];
    v8 = v7;

    if (v8 > 0.00000011920929)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__STUsageGraphViewController__showPaddleForBarView___block_invoke;
      v25[3] = &unk_279B7C998;
      v25[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v25 animations:0.2];
    }

    v9 = viewCopy;

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [v9 setColor:systemGreenColor];

    [(STUsageGraphViewController *)self setSelectedBarView:v9];
    paddleView = [(STUsageGraphViewController *)self paddleView];
    [paddleView setHidden:0];
    dataPoint = [v9 dataPoint];
    [paddleView setDataPoint:dataPoint];

    paddleViewCenterXConstraint = [(STUsageGraphViewController *)self paddleViewCenterXConstraint];
    [paddleViewCenterXConstraint setActive:0];
    centerXAnchor = [paddleView centerXAnchor];
    centerXAnchor2 = [v9 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    LODWORD(v17) = 1132068864;
    [v16 setPriority:v17];
    [v16 setActive:1];
    [(STUsageGraphViewController *)self setPaddleViewCenterXConstraint:v16];
    paddleConnectorView = [(STUsageGraphViewController *)self paddleConnectorView];
    [paddleConnectorView setHidden:0];
    paddleViewConnectorCenterXConstraint = [(STUsageGraphViewController *)self paddleViewConnectorCenterXConstraint];
    [paddleViewConnectorCenterXConstraint setActive:0];
    centerXAnchor3 = [paddleConnectorView centerXAnchor];
    centerXAnchor4 = [v9 centerXAnchor];
    v22 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

    [v22 setActive:1];
    [(STUsageGraphViewController *)self setPaddleViewConnectorCenterXConstraint:v22];

    selectedBarView = v9;
  }

  else
  {
    paddleView2 = [(STUsageGraphViewController *)self paddleView];
    [paddleView2 setHidden:1];

    paddleConnectorView2 = [(STUsageGraphViewController *)self paddleConnectorView];
    [paddleConnectorView2 setHidden:1];
  }
}

void __52__STUsageGraphViewController__showPaddleForBarView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleView];
  [v1 setAlpha:0.0];
}

- (void)_handleLongPressGestureForBarSelection:(id)selection
{
  selectionCopy = selection;
  barViews = [(STUsageGraphViewController *)self barViews];
  if (![barViews count])
  {
    goto LABEL_14;
  }

  dataSet = [(STUsageGraphViewController *)self dataSet];
  timePeriod = [dataSet timePeriod];

  if (timePeriod != 2)
  {
    goto LABEL_15;
  }

  barViews = [(STUsageGraphViewController *)self view];
  [selectionCopy locationInView:barViews];
  v8 = v7;
  v10 = v9;
  v11 = [(STUsageGraphViewController *)self _closestBarViewToPoint:?];
  state = [selectionCopy state];
  [selectionCopy _translationInView:barViews];
  v15 = -v13;
  if (v13 >= 0.0)
  {
    v15 = v13;
  }

  if (v15 <= 10.0)
  {
    if (v14 < 0.0)
    {
      v14 = -v14;
    }

    if (v14 <= 10.0)
    {
      if (state < 3)
      {
        graphLayoutGuide = [(STUsageGraphViewController *)self graphLayoutGuide];
        [graphLayoutGuide layoutFrame];
        v25.x = v8;
        v25.y = v10;
        v18 = CGRectContainsPoint(v27, v25);

        v16 = v11;
        if (!v18)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (state - 4 >= 2)
      {
        if (state != 3)
        {
          goto LABEL_13;
        }

        graphLayoutGuide2 = [(STUsageGraphViewController *)self graphLayoutGuide];
        [graphLayoutGuide2 layoutFrame];
        v26.x = v8;
        v26.y = v10;
        v20 = CGRectContainsPoint(v28, v26);

        if (v20)
        {
          selectedBarView = [(STUsageGraphViewController *)self selectedBarView];
          v22 = [selectedBarView isEqual:v11];

          if (v22)
          {

            v11 = 0;
          }

          [(STUsageGraphViewController *)self _selectBarView:v11];
        }
      }
    }
  }

  v16 = 0;
LABEL_12:
  [(STUsageGraphViewController *)self setPressedBarView:v16];
LABEL_13:

LABEL_14:
LABEL_15:
}

- (void)_selectBarView:(id)view
{
  viewCopy = view;
  selectedBarView = [(STUsageGraphViewController *)self selectedBarView];
  [(STUsageGraphViewController *)self setSelectedBarView:viewCopy];
  verticalDividers = [(STUsageGraphViewController *)self verticalDividers];
  barViews = [(STUsageGraphViewController *)self barViews];
  v8 = barViews;
  if (viewCopy)
  {
    v9 = [verticalDividers objectAtIndexedSubscript:{objc_msgSend(barViews, "indexOfObject:", viewCopy)}];
  }

  else
  {
    v9 = 0;
  }

  selectedVerticalDivider = [(STUsageGraphViewController *)self selectedVerticalDivider];
  [(STUsageGraphViewController *)self setSelectedVerticalDivider:v9];
  if (viewCopy && selectedBarView)
  {
    systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
    [selectedBarView setColor:systemGray4Color];

    [selectedVerticalDivider setSelected:0];
    [viewCopy setColor:0];
    [v9 setSelected:1];
  }

  else if (viewCopy | selectedBarView)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__STUsageGraphViewController__selectBarView___block_invoke;
    v15[3] = &unk_279B7E908;
    v18 = selectedBarView != 0;
    v16 = verticalDividers;
    v17 = viewCopy;
    [v8 enumerateObjectsUsingBlock:v15];
    if (viewCopy)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    v12 = ;
    weeklyAverageLine = [(STUsageGraphViewController *)self weeklyAverageLine];
    [weeklyAverageLine setTintColor:v12];

    weeklyAverageLabel = [(STUsageGraphViewController *)self weeklyAverageLabel];
    [weeklyAverageLabel setTextColor:v12];
  }
}

void __45__STUsageGraphViewController__selectBarView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(a1 + 48) == 1)
  {
    [v5 setColor:0];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (*(a1 + 40) != v5)
  {
    v6 = [MEMORY[0x277D75348] systemGray4Color];
    [v9 setColor:v6];

    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v8 setSelected:v7];
}

- (UIImage)dashedAverageLineImage
{
  if (dashedAverageLineImage_onceToken[0] != -1)
  {
    [STUsageGraphViewController dashedAverageLineImage];
  }

  v3 = dashedAverageLineImage_dashedAverageLineImage;

  return v3;
}

void __52__STUsageGraphViewController_dashedAverageLineImage__block_invoke()
{
  v6 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{8.0, 1.5}];
  v0 = [v6 imageWithActions:&__block_literal_global_66];
  v1 = dashedAverageLineImage_dashedAverageLineImage;
  dashedAverageLineImage_dashedAverageLineImage = v0;

  v2 = [dashedAverageLineImage_dashedAverageLineImage resizableImageWithCapInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v3 = dashedAverageLineImage_dashedAverageLineImage;
  dashedAverageLineImage_dashedAverageLineImage = v2;

  v4 = [dashedAverageLineImage_dashedAverageLineImage imageWithRenderingMode:2];
  v5 = dashedAverageLineImage_dashedAverageLineImage;
  dashedAverageLineImage_dashedAverageLineImage = v4;
}

void __52__STUsageGraphViewController_dashedAverageLineImage__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [a2 CGContext];
  CGContextSetLineWidth(v2, 1.5);
  *lengths = xmmword_264CD1BD0;
  CGContextSetLineDash(v2, 0.0, lengths, 2uLL);
  v3[0] = xmmword_264CD1BB0;
  v3[1] = xmmword_264CD1BC0;
  CGContextAddLines(v2, v3, 2uLL);
  CGContextStrokeLineSegments(v2, v3, 2uLL);
}

- (uint64_t)loadView
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  *a3 = currentHandler;
  return [currentHandler handleFailureInMethod:self object:a2 file:@"STUsageGraphViewController.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!includePaddle"}];
}

- (void)setSelectedWeekday:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageGraphViewController.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"dataSet.timePeriod == STUsageReportTimePeriodWeek"}];
}

- (void)setUpGraphWithLabelFormatter:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageGraphViewController.m" lineNumber:514 description:{@"Invalid parameter not satisfying: %@", @"previousView"}];
}

- (void)setUpGraphWithLabelFormatter:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageGraphViewController.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"previousView"}];
}

@end