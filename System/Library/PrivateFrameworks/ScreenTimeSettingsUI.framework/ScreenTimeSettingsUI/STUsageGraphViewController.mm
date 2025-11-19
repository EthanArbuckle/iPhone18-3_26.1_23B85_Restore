@interface STUsageGraphViewController
- (STUsageGraphViewController)initWithCoder:(id)a3;
- (STUsageGraphViewController)initWithTitleView:(id)a3 graphHeight:(double)a4 includePaddle:(BOOL)a5 useVibrancy:(BOOL)a6;
- (UIImage)dashedAverageLineImage;
- (double)maximumYAxisLabelWidth;
- (id)_closestBarViewToPoint:(CGPoint)a3;
- (id)createBarIndicatorWithImageName:(id)a3 barView:(id)a4;
- (id)createBarViewWithDataPoint:(id)a3 layoutGuide:(id)a4 previousView:(id)a5 previousLayoutGuide:(id)a6 layoutGuideWidthMultiplier:(double)a7;
- (id)createDividerWithView:(id)a3 layoutGuide:(id)a4 previousLayoutGuide:(id)a5 layoutGuideWidthMultiplier:(double)a6;
- (id)createFirstDivider;
- (id)createWeeklyAverageLineWithLayoutGuide:(id)a3;
- (uint64_t)loadView;
- (void)_handleLongPressGestureForBarSelection:(id)a3;
- (void)_handleLongPressGestureForPaddle:(id)a3;
- (void)_selectBarView:(id)a3;
- (void)_setUpHorizontalDividerLabels;
- (void)_showPaddleForBarView:(id)a3;
- (void)_updateBarViewsAndIndicators;
- (void)loadView;
- (void)setDataSet:(id)a3 animated:(BOOL)a4;
- (void)setPressedBarView:(id)a3;
- (void)setSelectedWeekday:(int64_t)a3;
- (void)setUpBarViewHeightContraints;
- (void)setUpGraphWithLabelFormatter:(id)a3;
- (void)setUpWeeklyAverageLine:(BOOL)a3;
- (void)setYAxisLabelSectionWidth:(double)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation STUsageGraphViewController

- (STUsageGraphViewController)initWithTitleView:(id)a3 graphHeight:(double)a4 includePaddle:(BOOL)a5 useVibrancy:(BOOL)a6
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = STUsageGraphViewController;
  v11 = [(STUsageGraphViewController *)&v14 initWithNibName:0 bundle:0];
  titleView = v11->_titleView;
  v11->_titleView = v10;

  v11->_graphHeight = a4;
  v11->_includePaddle = a5;
  v11->_useVibrancy = a6;
  [(STUsageGraphViewController *)v11 _stUsageGraphViewControllerCommonInit];
  return v11;
}

- (STUsageGraphViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STUsageGraphViewController;
  v3 = [(STUsageGraphViewController *)&v5 initWithCoder:a3];
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
  v162 = self;
  v154 = [(STUsageGraphViewController *)self useVibrancy];
  if (v154)
  {
    v7 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:102];
    v8 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v7];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v8];
    v9 = [v8 topAnchor];
    v10 = [v4 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v6 addObject:v11];

    v12 = [v8 leadingAnchor];
    v13 = [v4 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v6 addObject:v14];

    v15 = [v8 bottomAnchor];
    v16 = [v4 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v6 addObject:v17];

    v18 = [v8 trailingAnchor];
    v19 = [v4 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v6 addObject:v20];

    self = v162;
    v21 = [v8 contentView];
    [(STUsageGraphViewController *)v162 setVibrancyEffectContentView:v21];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(STUsageGraphViewController *)self titleView];
  v23 = [(STUsageGraphViewController *)self includePaddle];
  v153 = v23;
  if (v22)
  {
    [v4 addSubview:v22];
    v24 = [v22 topAnchor];
    v25 = [v4 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v6 addObject:v26];

    v27 = [v22 leadingAnchor];
    v28 = [v4 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v6 addObject:v29];

    v30 = [v22 trailingAnchor];
    v31 = [v4 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v6 addObject:v32];

LABEL_6:
    goto LABEL_8;
  }

  if (v23)
  {
    [(STUsageGraphViewController *)a2 loadView];
    v30 = v172;
    goto LABEL_6;
  }

LABEL_8:
  v158 = v21;
  v156 = v22;
  v33 = [v161 leadingAnchor];
  v34 = [v4 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v6 addObject:v35];

  v36 = [v161 trailingAnchor];
  v37 = [v4 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v6 addObject:v38];

  v39 = [v161 bottomAnchor];
  v40 = [v4 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v6 addObject:v41];

  v42 = objc_opt_new();
  [(STUsageGraphViewController *)self setXAxisLabelSectionLayoutGuide:v42];
  [v4 addLayoutGuide:v42];
  v43 = [v42 leadingAnchor];
  v44 = [v161 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v6 addObject:v45];

  v46 = [v42 trailingAnchor];
  v47 = [v161 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v6 addObject:v48];

  v49 = [v42 bottomAnchor];
  v50 = [v161 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v6 addObject:v51];

  v52 = objc_opt_new();
  [(STUsageGraphViewController *)self setYAxisLabelSectionLayoutGuide:v52];
  [v4 addLayoutGuide:v52];
  v53 = [v52 topAnchor];
  v54 = [v161 topAnchor];
  [v53 constraintEqualToAnchor:v54];
  v56 = v55 = self;
  [v6 addObject:v56];

  v57 = [v52 trailingAnchor];
  v58 = [v161 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [v6 addObject:v59];

  v60 = [v52 bottomAnchor];
  v61 = [v161 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v6 addObject:v62];

  v63 = objc_opt_new();
  [(STUsageGraphViewController *)v55 setBarSectionLayoutGuide:v63];
  [v4 addLayoutGuide:v63];
  v64 = [v63 topAnchor];
  v65 = [v161 topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  [v6 addObject:v66];

  v67 = [v63 leadingAnchor];
  v68 = [v161 leadingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [v6 addObject:v69];

  v70 = [v63 bottomAnchor];
  v157 = v42;
  v71 = [v42 topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  [v6 addObject:v72];

  v73 = [v63 trailingAnchor];
  v160 = v52;
  v74 = [v52 leadingAnchor];
  v75 = [v73 constraintLessThanOrEqualToAnchor:v74];
  [v6 addObject:v75];

  v76 = [v63 heightAnchor];
  [(STUsageGraphViewController *)v55 graphHeight];
  v77 = [v76 constraintEqualToConstant:?];
  [v6 addObject:v77];

  v78 = [STHorizontalDivider alloc];
  if (v154)
  {
    v79 = [MEMORY[0x277D75348] systemGrayColor];
    v80 = v158;
  }

  else
  {
    v79 = [MEMORY[0x277D75348] systemGray3Color];
    v80 = v4;
  }

  v81 = [(STHorizontalDivider *)v78 initWithTintColor:v79];

  [(STHorizontalDivider *)v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v80 addSubview:v81];
  v82 = [(STHorizontalDivider *)v81 leadingAnchor];
  v83 = [v63 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];
  [v6 addObject:v84];

  v85 = [(STHorizontalDivider *)v81 centerYAnchor];
  v86 = [v63 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];
  [v6 addObject:v87];

  v88 = [(STHorizontalDivider *)v81 trailingAnchor];
  v89 = [v52 trailingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];
  [v6 addObject:v90];

  v91 = [(STHorizontalDivider *)v81 horizontalLineTrailingAnchor];
  v92 = [v63 trailingAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];
  [v6 addObject:v93];

  v94 = [(STHorizontalDivider *)v81 label];
  v95 = [v94 leadingAnchor];
  v96 = [v52 leadingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
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
  v171 = v154;
  v104 = v158;
  v168 = v104;
  v151 = v81;
  v169 = v151;
  v150 = v94;
  v170 = v150;
  v155 = v100;
  [v100 enumerateIndexesUsingBlock:v163];
  v159 = v102;
  v105 = [v102 lastObject];
  v106 = [v105 topAnchor];
  v107 = v156;
  if (v156)
  {
    v108 = [v156 bottomAnchor];
    [v106 constraintEqualToSystemSpacingBelowAnchor:v108 multiplier:1.0];
  }

  else
  {
    v108 = [v101 topAnchor];
    [v106 constraintEqualToAnchor:v108];
  }
  v109 = ;
  v110 = v101;
  [v103 addObject:v109];

  v149 = v105;
  v111 = [v105 centerYAnchor];
  v112 = [v161 topAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];
  [v103 addObject:v113];

  v114 = v162;
  [(STUsageGraphViewController *)v162 setHorizontalDividers:v159];
  if (v153)
  {
    v115 = objc_opt_new();
    [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v115 setHidden:1];
    [(STUsageGraphViewController *)v162 setPaddleView:v115];
    [v110 addSubview:v115];
    v116 = [v115 topAnchor];
    v117 = [v156 topAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];
    [v103 addObject:v118];

    v119 = [v115 leadingAnchor];
    v120 = [v156 leadingAnchor];
    v121 = [v119 constraintGreaterThanOrEqualToAnchor:v120];
    [v103 addObject:v121];

    v122 = [v115 bottomAnchor];
    v123 = [v156 bottomAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];
    [v103 addObject:v124];

    v125 = [v115 trailingAnchor];
    v126 = [v156 trailingAnchor];
    v127 = [v125 constraintLessThanOrEqualToAnchor:v126];
    [v103 addObject:v127];

    v128 = [v115 centerXAnchor];
    v129 = [v156 centerXAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];

    v148 = v130;
    [(STUsageGraphViewController *)v162 setPaddleViewCenterXConstraint:v130];
    LODWORD(v131) = 1132068864;
    [v130 setPriority:v131];
    [v103 addObject:v130];
    v132 = objc_opt_new();
    [v132 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v132 setHidden:1];
    v133 = [MEMORY[0x277D75348] systemGreenColor];
    [v132 setBackgroundColor:v133];

    [(STUsageGraphViewController *)v162 setPaddleConnectorView:v132];
    [v110 addSubview:v132];
    v134 = [v132 topAnchor];
    v135 = [v156 bottomAnchor];
    v136 = [v134 constraintEqualToAnchor:v135];
    [v103 addObject:v136];

    v137 = [v132 bottomAnchor];
    v138 = [v63 bottomAnchor];
    v139 = [v137 constraintEqualToAnchor:v138];
    [v103 addObject:v139];

    v140 = [v132 widthAnchor];
    v141 = [v140 constraintEqualToConstant:1.0];
    [v103 addObject:v141];

    v142 = [v132 centerXAnchor];
    v143 = [v156 centerXAnchor];
    [v142 constraintEqualToAnchor:v143];
    v144 = v104;
    v146 = v145 = v110;

    v107 = v156;
    [(STUsageGraphViewController *)v162 setPaddleViewConnectorCenterXConstraint:v146];
    [v103 addObject:v146];
    v147 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v162 action:sel__handleLongPressGestureForPaddle_];
    [v147 setMinimumPressDuration:0.1];

    v110 = v145;
    v104 = v144;

    v114 = v162;
  }

  else
  {
    v147 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v162 action:sel__handleLongPressGestureForBarSelection_];
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
  v3 = [(STUsageGraphViewController *)self dataSet];
  v4 = [v3 timePeriod];

  if (v4 == 2)
  {
    v5 = [(STUsageGraphViewController *)self weeklyAverageLabel];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 isHidden] ^ 1;
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
    v16 = [(STUsageGraphViewController *)self horizontalDividers];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v16);
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

          v27 = [v21 label];
          [v27 setHidden:v26];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

- (void)setDataSet:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_dataSet != v8)
  {
    v48 = a2;
    v9 = [(STUsageGraphViewController *)self view];
    v10 = [(STUsageReportGraphDataSet *)v8 timePeriod];
    dataSet = self->_dataSet;
    if (dataSet)
    {
      if ([(STUsageReportGraphDataSet *)dataSet timePeriod]== v10)
      {
        v12 = [(STUsageReportGraphDataSet *)self->_dataSet dataPoints];
        v47 = [v12 count];
        [(STUsageReportGraphDataSet *)v8 dataPoints];
        v13 = v8;
        v14 = v10;
        v16 = v15 = v4;
        v17 = [v16 count];

        v4 = v15;
        v10 = v14;
        v8 = v13;

        if (v47 == v17)
        {
          objc_storeStrong(&self->_dataSet, a3);
          [(STUsageGraphViewController *)self _updateBarViewsAndIndicators];
LABEL_42:
          [(STUsageGraphViewController *)self _setUpHorizontalDividerLabels];
          if (v10 == 2 && ([(STUsageReportGraphDataSet *)v8 averageAsPercentageOfMax], v43 > 0.05))
          {
            [(STUsageGraphViewController *)self setUpWeeklyAverageLine:v4];
            if (!v4)
            {
LABEL_45:
              [(STUsageGraphViewController *)self setUpBarViewHeightContraints];
LABEL_48:

              goto LABEL_49;
            }
          }

          else
          {
            v44 = [(STUsageGraphViewController *)self weeklyAverageLine];
            [v44 setHidden:1];

            v45 = [(STUsageGraphViewController *)self weeklyAverageLabel];
            [v45 setHidden:1];

            if (!v4)
            {
              goto LABEL_45;
            }
          }

          [v9 layoutIfNeeded];
          [(STUsageGraphViewController *)self setUpBarViewHeightContraints];
          v46 = MEMORY[0x277D75D18];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __50__STUsageGraphViewController_setDataSet_animated___block_invoke;
          v49[3] = &unk_279B7C998;
          v50 = v9;
          [v46 animateWithDuration:0 delay:v49 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:0.9 completion:0.1];

          goto LABEL_48;
        }
      }
    }

    objc_storeStrong(&self->_dataSet, a3);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = [(STUsageGraphViewController *)self verticalDividers];
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v70 count:16];
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
            objc_enumerationMutation(v18);
          }

          [*(*(&v63 + 1) + 8 * i) removeFromSuperview];
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v20);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [(STUsageGraphViewController *)self barViews];
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
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
            objc_enumerationMutation(v23);
          }

          [*(*(&v59 + 1) + 8 * j) removeFromSuperview];
        }

        v25 = [v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = [(STUsageGraphViewController *)self barIndicators];
    v29 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
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
            objc_enumerationMutation(v28);
          }

          [*(*(&v55 + 1) + 8 * k) removeFromSuperview];
        }

        v30 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v30);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v33 = [(STUsageGraphViewController *)self verticalLayoutGuides];
    v34 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
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
            objc_enumerationMutation(v33);
          }

          [v9 removeLayoutGuide:*(*(&v51 + 1) + 8 * m)];
        }

        v35 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v35);
    }

    v38 = [(STUsageGraphViewController *)self paddleView];
    [v38 setHidden:1];

    v39 = [(STUsageGraphViewController *)self paddleConnectorView];
    [v39 setHidden:1];

    v40 = objc_opt_new();
    [v40 setFormattingContext:3];
    if (v10 == 2)
    {
      v42 = @"ccccc";
    }

    else
    {
      if (v10 != 1)
      {
        if (!v10)
        {
          v41 = [MEMORY[0x277CCA890] currentHandler];
          [v41 handleFailureInMethod:v48 object:self file:@"STUsageGraphViewController.m" lineNumber:318 description:@"We don't have a graph for hourly reports."];
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

- (void)setSelectedWeekday:(int64_t)a3
{
  v6 = [(STUsageGraphViewController *)self dataSet];
  if ([v6 timePeriod] != 2)
  {
    [(STUsageGraphViewController *)a2 setSelectedWeekday:?];
  }

  if (self->_selectedWeekday != a3)
  {
    self->_selectedWeekday = a3;
    v7 = [(STUsageGraphViewController *)self barViews];
    v8 = v7;
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(STUsageGraphViewController *)self _selectBarView:0];
    }

    else if ([v7 count])
    {
      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v6 dataPoints];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__STUsageGraphViewController_setSelectedWeekday___block_invoke;
      v12[3] = &unk_279B7E868;
      v16 = a3;
      v13 = v9;
      v14 = self;
      v15 = v8;
      v11 = v9;
      [v10 enumerateObjectsUsingBlock:v12];
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

- (void)setPressedBarView:(id)a3
{
  v4 = a3;
  [(STBarView *)self->_pressedBarView setDarkened:0];
  pressedBarView = self->_pressedBarView;
  self->_pressedBarView = v4;
  v6 = v4;

  [(STBarView *)v6 setDarkened:1];
}

- (double)maximumYAxisLabelWidth
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(STUsageGraphViewController *)self weeklyAverageLabel];
  [v3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v5 = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(STUsageGraphViewController *)self horizontalDividers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) label];
        [v11 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v13 = v12;

        if (v5 < v13)
        {
          v5 = v13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)setYAxisLabelSectionWidth:(double)a3
{
  v5 = [(STUsageGraphViewController *)self yAxisLabelSectionWidthConstraint];
  if (v5)
  {
    v8 = v5;
    [v5 setConstant:a3];
  }

  else
  {
    v6 = [(STUsageGraphViewController *)self yAxisLabelSectionLayoutGuide];
    v7 = [v6 widthAnchor];
    v8 = [v7 constraintEqualToConstant:a3];

    [v8 setActive:1];
    [(STUsageGraphViewController *)self setYAxisLabelSectionWidthConstraint:v8];
  }
}

- (void)_setUpHorizontalDividerLabels
{
  v3 = [(STUsageGraphViewController *)self dataSet];
  v4 = [v3 itemType];
  if ((v4 - 1) >= 4)
  {
    if ((v4 - 5) < 2)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v14 = [v3 max];
      [v14 doubleValue];
      v16 = v15;

      v17 = [(STUsageGraphViewController *)self horizontalDividers];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke_2;
      v18[3] = &unk_279B7E8B8;
      v18[4] = &v23;
      *&v18[5] = v16 / 4uLL;
      [v17 enumerateObjectsUsingBlock:v18];

      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    v5 = [v3 timePeriod];
    v6 = [v3 max];
    [v6 doubleValue];
    v8 = v7;

    v9 = objc_opt_new();
    [v9 setFormattingContext:3];
    if (v8 <= 3600.0 && v5 == 1)
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
    v12 = [(STUsageGraphViewController *)self horizontalDividers];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__STUsageGraphViewController__setUpHorizontalDividerLabels__block_invoke;
    v19[3] = &unk_279B7E890;
    v21 = &v23;
    v13 = v9;
    v20 = v13;
    v22 = v8 / 4uLL;
    [v12 enumerateObjectsUsingBlock:v19];

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

- (void)setUpGraphWithLabelFormatter:(id)a3
{
  v49 = a3;
  v5 = [(STUsageGraphViewController *)self dataSet];
  v52 = [v5 dataPoints];
  v6 = [v52 count];
  if (!v6)
  {
    goto LABEL_37;
  }

  v7 = v6;
  v45 = a2;
  v46 = v5;
  v8 = [v5 timePeriod];
  v48 = objc_opt_new();
  v9 = objc_opt_new();
  v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
  v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
  v10 = 0;
  v11 = 0;
  v53 = 0;
  v54 = v8;
  v12 = 0;
  if (v8 == 1)
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
    v14 = [v52 objectAtIndexedSubscript:v12];
    v15 = [v14 date];
    v56 = v15;
    v57 = v14;
    if (v54 != 2)
    {
      if (v54 != 1 || (([MEMORY[0x277CBEA80] currentCalendar], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "component:fromDate:", 32, v15), v16, v18 = __ROR8__(v17, 1), v14 = v57, v19 = (1 << v18) & 0x249, v18 <= 9) ? (v20 = v19 == 0) : (v20 = 1), v20))
      {

        if (v10)
        {
          v21 = 0;
          v22 = 0;
          v23 = v53 + 1;
          goto LABEL_18;
        }

LABEL_16:
        v22 = [(STUsageGraphViewController *)self createFirstDivider];
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
    v22 = [(STUsageGraphViewController *)self createDividerWithView:v10 layoutGuide:v21 previousLayoutGuide:v11 layoutGuideWidthMultiplier:v13];
LABEL_17:
    v24 = [v49 stringFromDate:v15];
    [v22 setLabelText:v24];

    [v48 addObject:v22];
    v23 = 0;
    v14 = v57;
LABEL_18:
    if (v22)
    {
      v25 = v22;
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
    v30 = [v14 indicatorImageName];
    if (v30)
    {
      v31 = [(STUsageGraphViewController *)self createBarIndicatorWithImageName:v30 barView:v10];
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
      v37 = [(STUsageGraphViewController *)self paddleView];
      [v37 setDataPoint:v14];
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
  v41 = [v40 trailingAnchor];
  [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v42 = v58 = v10;
  v43 = [v42 trailingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  [(STUsageGraphViewController *)self setVerticalDividers:v48];
  [(STUsageGraphViewController *)self setVerticalLayoutGuides:v39];
  [(STUsageGraphViewController *)self setBarViews:v51];
  [(STUsageGraphViewController *)self setBarIndicators:v47];

  v5 = v46;
LABEL_37:
}

- (void)setUpBarViewHeightContraints
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(STUsageGraphViewController *)self barViewHeightConstraints];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * v7++) setActive:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v8 = [(STUsageGraphViewController *)self barViews];
  v9 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v10 = [v9 heightAnchor];

  v11 = [(STUsageGraphViewController *)self dataSet];
  v12 = [v11 dataPoints];

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__STUsageGraphViewController_setUpBarViewHeightContraints__block_invoke;
  v17[3] = &unk_279B7E8E0;
  v18 = v12;
  v19 = v10;
  v20 = v13;
  v14 = v13;
  v15 = v10;
  v16 = v12;
  [v8 enumerateObjectsUsingBlock:v17];
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
  v3 = [(STUsageGraphViewController *)self barIndicators];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v8 = [(STUsageGraphViewController *)self dataSet];
  v9 = [v8 dataPoints];

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = [(STUsageGraphViewController *)self barViews];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__STUsageGraphViewController__updateBarViewsAndIndicators__block_invoke;
  v14[3] = &unk_279B7E8E0;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  [v11 enumerateObjectsUsingBlock:v14];

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

- (void)setUpWeeklyAverageLine:(BOOL)a3
{
  v3 = a3;
  v23 = [(STUsageGraphViewController *)self view];
  v5 = [(STUsageGraphViewController *)self weeklyAverageLine];
  v6 = [(STUsageGraphViewController *)self weeklyAverageLayoutGuide];
  if (v5)
  {
    [v23 bringSubviewToFront:v5];
    [v5 setHidden:0];
    v7 = [(STUsageGraphViewController *)self weeklyAverageLabel];
    [v7 setHidden:0];
  }

  else
  {
    v8 = objc_opt_new();

    [(STUsageGraphViewController *)self setWeeklyAverageLayoutGuide:v8];
    v5 = [(STUsageGraphViewController *)self createWeeklyAverageLineWithLayoutGuide:v8];
    [(STUsageGraphViewController *)self setWeeklyAverageLine:v5];
    v6 = v8;
  }

  v9 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v10 = [(STUsageGraphViewController *)self weeklyAverageHeightConstraint];
  [v10 setActive:0];
  v11 = [v6 heightAnchor];
  v12 = [v9 heightAnchor];
  v13 = [(STUsageGraphViewController *)self dataSet];
  [v13 averageAsPercentageOfMax];
  v14 = [v11 constraintEqualToAnchor:v12 multiplier:?];

  [v14 setActive:1];
  [(STUsageGraphViewController *)self setWeeklyAverageHeightConstraint:v14];
  v15 = [(STUsageGraphViewController *)self weeklyAverageTrailingConstraint];
  v16 = v15;
  if (v3)
  {
    [v15 setActive:0];
    v17 = [v5 trailingAnchor];
    v18 = [v9 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setActive:1];
    [v23 layoutIfNeeded];
    v16 = v19;
  }

  [v16 setActive:0];
  v20 = [v5 trailingAnchor];
  v21 = [v9 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  [v22 setActive:1];
  [(STUsageGraphViewController *)self setWeeklyAverageTrailingConstraint:v22];
}

- (id)createFirstDivider
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [(STUsageGraphViewController *)self vibrancyEffectContentView];
  v4 = [STDashedVerticalDivider alloc];
  v28 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277D75348] systemDarkGrayColor];
    v6 = [(STDashedVerticalDivider *)v4 initWithTintColor:v5];

    [(STDashedVerticalDivider *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemGray3Color];
    v6 = [(STDashedVerticalDivider *)v4 initWithTintColor:v7];

    [(STDashedVerticalDivider *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(STUsageGraphViewController *)self view];
    [v8 addSubview:v6];
  }

  v9 = [(STUsageGraphViewController *)self graphLayoutGuide];
  v20 = MEMORY[0x277CCAAD0];
  v27 = [(STDashedVerticalDivider *)v6 topAnchor];
  v24 = v9;
  v26 = [v9 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v22 = [(STDashedVerticalDivider *)v6 leadingAnchor];
  v23 = [(STUsageGraphViewController *)self xAxisLabelSectionLayoutGuide];
  v21 = [v23 leadingAnchor];
  v10 = [v22 constraintEqualToAnchor:v21];
  v29[1] = v10;
  v11 = [(STDashedVerticalDivider *)v6 bottomAnchor];
  v12 = [v9 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v29[2] = v13;
  v14 = [(STDashedVerticalDivider *)v6 labelTopAnchor];
  v15 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:6.0];
  v29[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v20 activateConstraints:v18];

  return v6;
}

- (id)createDividerWithView:(id)a3 layoutGuide:(id)a4 previousLayoutGuide:(id)a5 layoutGuideWidthMultiplier:(double)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [(STUsageGraphViewController *)self vibrancyEffectContentView];
  v14 = [(STUsageGraphViewController *)self view];
  v15 = [STDashedVerticalDivider alloc];
  v47 = v11;
  if (v13)
  {
    v16 = [MEMORY[0x277D75348] systemDarkGrayColor];
    v17 = [(STDashedVerticalDivider *)v15 initWithTintColor:v16];

    [(STDashedVerticalDivider *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = v13;
  }

  else
  {
    v19 = [MEMORY[0x277D75348] systemGray3Color];
    v17 = [(STDashedVerticalDivider *)v15 initWithTintColor:v19];

    [(STDashedVerticalDivider *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = v14;
  }

  [v18 addSubview:v17];
  v20 = [(STUsageGraphViewController *)self graphLayoutGuide];
  v21 = [(STDashedVerticalDivider *)v17 topAnchor];
  v22 = [v20 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(STDashedVerticalDivider *)v17 bottomAnchor];
  v25 = [v20 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(STDashedVerticalDivider *)v17 labelTopAnchor];
  v28 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:6.0];
  [v30 setActive:1];

  [v14 addLayoutGuide:v10];
  v31 = [v10 topAnchor];
  v32 = [v20 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = [v10 leadingAnchor];
  v35 = [v12 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [v10 bottomAnchor];
  v38 = [v20 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [v10 trailingAnchor];
  v41 = [(STDashedVerticalDivider *)v17 dashedLineCenterXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  if (v47)
  {
    v43 = [v10 widthAnchor];
    v44 = [v47 widthAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 multiplier:a6];
    [v45 setActive:1];
  }

  return v17;
}

- (id)createBarViewWithDataPoint:(id)a3 layoutGuide:(id)a4 previousView:(id)a5 previousLayoutGuide:(id)a6 layoutGuideWidthMultiplier:(double)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [[STBarView alloc] initWithDataPoint:v15 useVibrancy:[(STUsageGraphViewController *)self useVibrancy]];

  [(STBarView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(STUsageGraphViewController *)self view];
  [v17 addSubview:v16];
  v18 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v19 = [(STBarView *)v16 bottomAnchor];
  v20 = [v18 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(STUsageGraphViewController *)self dataSet];
  v23 = [v22 timePeriod];
  v24 = [v22 dataPoints];
  v25 = [v24 count];

  if (v25)
  {
    v26 = 0.7;
    if (v23 != 1)
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

  v29 = [(STBarView *)v16 widthAnchor];
  v30 = [v18 widthAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 multiplier:v28];
  [v31 setActive:1];

  [v17 addLayoutGuide:v12];
  v32 = [v12 topAnchor];
  v33 = [v18 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v13;
    v36 = [v12 leadingAnchor];
    v37 = [v35 dashedLineCenterXAnchor];
  }

  else
  {
    v36 = [v12 leadingAnchor];
    v37 = [v13 trailingAnchor];
  }

  v38 = [v36 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  v39 = [v12 bottomAnchor];
  v40 = [v18 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [v12 trailingAnchor];
  v43 = [(STBarView *)v16 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  if (v14)
  {
    v45 = [v12 widthAnchor];
    v46 = [v14 widthAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 multiplier:a7];
    [v47 setActive:1];
  }

  return v16;
}

- (id)createWeeklyAverageLineWithLayoutGuide:(id)a3
{
  v53[9] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(STUsageGraphViewController *)self dashedAverageLineImage];
  v8 = [v6 initWithImage:v7];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x277D75348] systemGreenColor];
  [v8 setTintColor:v9];

  v10 = [(STUsageGraphViewController *)self view];
  [v10 addSubview:v8];
  v11 = [(STUsageGraphViewController *)self barSectionLayoutGuide];
  v52 = v10;
  [v10 addLayoutGuide:v5];
  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v12 setFont:v13];

  v14 = [MEMORY[0x277D75348] systemGreenColor];
  [v12 setTextColor:v14];

  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"DailyAverageLineLabel" value:&stru_28766E5A8 table:0];
  [v12 setText:v16];

  LODWORD(v17) = 1144750080;
  [v12 setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1144766464;
  [v12 setContentCompressionResistancePriority:0 forAxis:v18];
  [(STUsageGraphViewController *)self setWeeklyAverageLabel:v12];
  [v10 addSubview:v12];
  v19 = [(STUsageGraphViewController *)self yAxisLabelSectionLayoutGuide];
  v39 = MEMORY[0x277CCAAD0];
  v51 = [v8 leadingAnchor];
  v50 = [v11 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v53[0] = v49;
  v48 = [v8 heightAnchor];
  v47 = [v48 constraintEqualToConstant:1.5];
  v53[1] = v47;
  v45 = [v5 leadingAnchor];
  v44 = [v11 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v53[2] = v43;
  v42 = [v5 bottomAnchor];
  v46 = v11;
  v41 = [v11 bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v53[3] = v40;
  v38 = [v5 trailingAnchor];
  v37 = [v11 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v53[4] = v36;
  v34 = [v5 topAnchor];

  v33 = [v8 centerYAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v53[5] = v32;
  v31 = [v12 leadingAnchor];
  v35 = v19;
  v20 = [v19 leadingAnchor];
  v21 = [v31 constraintEqualToAnchor:v20];
  v53[6] = v21;
  v22 = [v12 centerYAnchor];
  v30 = v8;
  v23 = [v8 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v53[7] = v24;
  v25 = [v12 trailingAnchor];
  v26 = [v19 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v53[8] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
  [v39 activateConstraints:v28];

  return v30;
}

- (id)createBarIndicatorWithImageName:(id)a3 barView:(id)a4
{
  v6 = MEMORY[0x277D755B8];
  v7 = a4;
  v8 = a3;
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v6 imageNamed:v8 inBundle:v9];

  v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(STUsageGraphViewController *)self view];
  [v12 addSubview:v11];

  v13 = [v11 topAnchor];
  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v11 centerXAnchor];
  v17 = [v7 centerXAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  return v11;
}

- (void)_handleLongPressGestureForPaddle:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGraphViewController *)self barViews];
  v6 = [v5 count];

  if (v6)
  {
    if ([v4 state] > 2)
    {
      v15 = [(STUsageGraphViewController *)self paddleView];
      [v15 setHidden:1];

      v16 = [(STUsageGraphViewController *)self paddleConnectorView];
      [v16 setHidden:1];

      v17 = [(STUsageGraphViewController *)self selectedBarView];
      [v17 setColor:0];

      v18 = [(STUsageGraphViewController *)self titleView];
      [v18 alpha];
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
      v7 = [(STUsageGraphViewController *)self view];
      [v4 locationInView:v7];
      v9 = v8;
      v11 = v10;

      v12 = [(STUsageGraphViewController *)self graphLayoutGuide];
      [v12 layoutFrame];
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

- (id)_closestBarViewToPoint:(CGPoint)a3
{
  x = a3.x;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(STUsageGraphViewController *)self barViews];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 dataPoint];
        v13 = [v12 total];
        [v13 doubleValue];
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

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showPaddleForBarView:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGraphViewController *)self selectedBarView];
  [v5 setColor:0];
  if (v4)
  {
    v6 = [(STUsageGraphViewController *)self titleView];
    [v6 alpha];
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

    v9 = v4;

    v10 = [MEMORY[0x277D75348] systemGreenColor];
    [v9 setColor:v10];

    [(STUsageGraphViewController *)self setSelectedBarView:v9];
    v11 = [(STUsageGraphViewController *)self paddleView];
    [v11 setHidden:0];
    v12 = [v9 dataPoint];
    [v11 setDataPoint:v12];

    v13 = [(STUsageGraphViewController *)self paddleViewCenterXConstraint];
    [v13 setActive:0];
    v14 = [v11 centerXAnchor];
    v15 = [v9 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    LODWORD(v17) = 1132068864;
    [v16 setPriority:v17];
    [v16 setActive:1];
    [(STUsageGraphViewController *)self setPaddleViewCenterXConstraint:v16];
    v18 = [(STUsageGraphViewController *)self paddleConnectorView];
    [v18 setHidden:0];
    v19 = [(STUsageGraphViewController *)self paddleViewConnectorCenterXConstraint];
    [v19 setActive:0];
    v20 = [v18 centerXAnchor];
    v21 = [v9 centerXAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setActive:1];
    [(STUsageGraphViewController *)self setPaddleViewConnectorCenterXConstraint:v22];

    v5 = v9;
  }

  else
  {
    v23 = [(STUsageGraphViewController *)self paddleView];
    [v23 setHidden:1];

    v24 = [(STUsageGraphViewController *)self paddleConnectorView];
    [v24 setHidden:1];
  }
}

void __52__STUsageGraphViewController__showPaddleForBarView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleView];
  [v1 setAlpha:0.0];
}

- (void)_handleLongPressGestureForBarSelection:(id)a3
{
  v23 = a3;
  v4 = [(STUsageGraphViewController *)self barViews];
  if (![v4 count])
  {
    goto LABEL_14;
  }

  v5 = [(STUsageGraphViewController *)self dataSet];
  v6 = [v5 timePeriod];

  if (v6 != 2)
  {
    goto LABEL_15;
  }

  v4 = [(STUsageGraphViewController *)self view];
  [v23 locationInView:v4];
  v8 = v7;
  v10 = v9;
  v11 = [(STUsageGraphViewController *)self _closestBarViewToPoint:?];
  v12 = [v23 state];
  [v23 _translationInView:v4];
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
      if (v12 < 3)
      {
        v17 = [(STUsageGraphViewController *)self graphLayoutGuide];
        [v17 layoutFrame];
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

      if (v12 - 4 >= 2)
      {
        if (v12 != 3)
        {
          goto LABEL_13;
        }

        v19 = [(STUsageGraphViewController *)self graphLayoutGuide];
        [v19 layoutFrame];
        v26.x = v8;
        v26.y = v10;
        v20 = CGRectContainsPoint(v28, v26);

        if (v20)
        {
          v21 = [(STUsageGraphViewController *)self selectedBarView];
          v22 = [v21 isEqual:v11];

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

- (void)_selectBarView:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGraphViewController *)self selectedBarView];
  [(STUsageGraphViewController *)self setSelectedBarView:v4];
  v6 = [(STUsageGraphViewController *)self verticalDividers];
  v7 = [(STUsageGraphViewController *)self barViews];
  v8 = v7;
  if (v4)
  {
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v7, "indexOfObject:", v4)}];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(STUsageGraphViewController *)self selectedVerticalDivider];
  [(STUsageGraphViewController *)self setSelectedVerticalDivider:v9];
  if (v4 && v5)
  {
    v11 = [MEMORY[0x277D75348] systemGray4Color];
    [v5 setColor:v11];

    [v10 setSelected:0];
    [v4 setColor:0];
    [v9 setSelected:1];
  }

  else if (v4 | v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__STUsageGraphViewController__selectBarView___block_invoke;
    v15[3] = &unk_279B7E908;
    v18 = v5 != 0;
    v16 = v6;
    v17 = v4;
    [v8 enumerateObjectsUsingBlock:v15];
    if (v4)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    v12 = ;
    v13 = [(STUsageGraphViewController *)self weeklyAverageLine];
    [v13 setTintColor:v12];

    v14 = [(STUsageGraphViewController *)self weeklyAverageLabel];
    [v14 setTextColor:v12];
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
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"STUsageGraphViewController.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!includePaddle"}];
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