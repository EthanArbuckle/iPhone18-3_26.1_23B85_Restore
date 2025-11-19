@interface StockPlatterViewController
- (CGSize)preferredContentSize;
- (ChartUpdater)chartUpdater;
- (NetPreferences)netPreferences;
- (StockFetcher)stockFetcher;
- (StockManager)stockManager;
- (StockPlatterViewController)initWithStockTicker:(id)a3;
- (StockUpdateManager)stockUpdateManager;
- (StocksStyle)style;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_attributionButtonPressed:(id)a3;
- (void)_cleanup;
- (void)_setupStockWithTicker:(id)a3;
- (void)_updateExchangeData;
- (void)dealloc;
- (void)updateChartForInterval:(int64_t)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation StockPlatterViewController

- (StockPlatterViewController)initWithStockTicker:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(StockPlatterViewController *)a2 initWithStockTicker:?];
  }

  v42.receiver = self;
  v42.super_class = StockPlatterViewController;
  v6 = [(StockPlatterViewController *)&v42 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v10 = [StocksLayout layoutForSize:v8, v9];
    [(StockPlatterViewController *)v6 setLayout:v10];

    v11 = +[StocksPreferences sharedPreferences];
    v12 = [v11 objectForKey:@"chartInterval"];

    if (v12)
    {
      v13 = [v12 unsignedIntegerValue];
    }

    else
    {
      v13 = 4;
    }

    v6->_chartInterval = v13;
    v14 = +[StocksPreferences sharedPreferences];
    v15 = [v14 objectForKey:@"rowDataType"];

    if (v15)
    {
      v16 = [v15 unsignedIntegerValue];
    }

    else
    {
      v16 = 1;
    }

    v6->_rowDataType = v16;
    v17 = [(StockPlatterViewController *)v6 layout];
    v18 = [v17 chartDisplayMode];

    v19 = [(StockPlatterViewController *)v6 layout];
    [v19 chartViewFrame];
    v21 = v20;
    v23 = v22;

    [v18 intervalRowHeight];
    v25 = v23 - v24;
    [v18 setChartRenderingInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v18 setChartSize:{v21, v25}];
    [v18 setGraphOverlapsYAxisLabels:1];
    v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    [v18 setXAxisKeylineColor:v26];

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    [v18 setAxisLabelsColor:v27];

    v28 = objc_opt_new();
    [(StockPlatterViewController *)v6 setStatusBarView:v28];

    v29 = objc_alloc(MEMORY[0x277D75B40]);
    v30 = [v29 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(StockPlatterViewController *)v6 setStocksTableView:v30];

    v31 = [(StockPlatterViewController *)v6 stocksTableView];
    [v31 setDelegate:v6];

    v32 = [(StockPlatterViewController *)v6 stocksTableView];
    [v32 setDataSource:v6];

    v33 = [(StockPlatterViewController *)v6 stocksTableView];
    [v33 setSeparatorStyle:0];

    v34 = [(StockPlatterViewController *)v6 stocksTableView];
    [v34 setRowHeight:56.0];

    v35 = [(StockPlatterViewController *)v6 stocksTableView];
    [v35 registerClass:objc_opt_class() forCellReuseIdentifier:@"kStockPlatterViewControllerCellType"];

    v36 = [StockChartView alloc];
    v37 = [(StockPlatterViewController *)v6 layout];
    v38 = [v37 chartDisplayMode];
    v39 = [(StockChartView *)v36 initWithInitialDisplayMode:v38 preferredChartInterval:[(StockPlatterViewController *)v6 chartInterval] stockChartViewDelegate:v6];
    [(StockPlatterViewController *)v6 setChartView:v39];

    [(StockPlatterViewController *)v6 setStockTicker:v5];
    v40 = [(StockPlatterViewController *)v6 stockTicker];
    [(StockPlatterViewController *)v6 _setupStockWithTicker:v40];
  }

  return v6;
}

- (void)dealloc
{
  [(StockPlatterViewController *)self _cleanup];
  v3.receiver = self;
  v3.super_class = StockPlatterViewController;
  [(StockPlatterViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v113 = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = StockPlatterViewController;
  [(StockPlatterViewController *)&v102 viewDidLoad];
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [(StockPlatterViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  v9 = [(StockPlatterViewController *)self view];
  [v9 setFrame:{v3, v4, v6, v8}];

  v10 = [MEMORY[0x277D75348] blackColor];
  v11 = [(StockPlatterViewController *)self view];
  [v11 setBackgroundColor:v10];

  [(StockPlatterViewController *)self preferredContentSize];
  v13 = v12;
  v15 = v14;
  v16 = [(StockPlatterViewController *)self chartView];
  [v16 setFrame:{v3, v4, v13, v15}];

  v17 = [(StockPlatterViewController *)self view];
  v18 = [v17 backgroundColor];
  v19 = [(StockPlatterViewController *)self statusBarView];
  [v19 setBackgroundColor:v18];

  v20 = [(StockPlatterViewController *)self view];
  v21 = [v20 backgroundColor];
  v22 = [(StockPlatterViewController *)self stocksTableView];
  [v22 setBackgroundColor:v21];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v23 = [(StockPlatterViewController *)self chartView];
  v111[0] = v23;
  v24 = [(StockPlatterViewController *)self statusBarView];
  v111[1] = v24;
  v25 = [(StockPlatterViewController *)self stocksTableView];
  v111[2] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:3];

  v27 = [v26 countByEnumeratingWithState:&v98 objects:v112 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v99;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v98 + 1) + 8 * i);
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v32 = [(StockPlatterViewController *)self view];
        [v32 addSubview:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v98 objects:v112 count:16];
    }

    while (v28);
  }

  v109[0] = @"chartView";
  v33 = [(StockPlatterViewController *)self chartView];
  v110[0] = v33;
  v109[1] = @"tableView";
  v34 = [(StockPlatterViewController *)self stocksTableView];
  v110[1] = v34;
  v109[2] = @"statusBarView";
  v35 = [(StockPlatterViewController *)self statusBarView];
  v110[2] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:3];

  v107[0] = @"TableViewHeight";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:56.0];
  v107[1] = @"StatusBarHeight";
  v108[0] = v37;
  v108[1] = &unk_287C80FD0;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];

  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[tableView(TableViewHeight)][chartView][statusBarView(StatusBarHeight)]|" options:512 metrics:v38 views:v36];
  v40 = [v39 mutableCopy];

  v41 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[chartView]|" options:0 metrics:v38 views:v36];
  [v40 addObjectsFromArray:v41];

  v42 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[tableView]|" options:0 metrics:v38 views:v36];
  [v40 addObjectsFromArray:v42];

  v43 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[statusBarView]|" options:0 metrics:v38 views:v36];
  [v40 addObjectsFromArray:v43];

  [MEMORY[0x277CCAAD0] activateConstraints:v40];
  v44 = [MEMORY[0x277D75220] buttonWithType:0];
  [(StockPlatterViewController *)self setAttributionButton:v44];

  v45 = [(StockPlatterViewController *)self attributionButton];
  [v45 setExclusiveTouch:1];

  v46 = [(StockPlatterViewController *)self attributionButton];
  v47 = [(StockPlatterViewController *)self netPreferences];
  v48 = [v47 logoButtonImage];
  v49 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  v50 = [v48 _flatImageWithColor:v49];
  [v46 setImage:v50 forState:0];

  v51 = [(StockPlatterViewController *)self attributionButton];
  v52 = [(StockPlatterViewController *)self netPreferences];
  v53 = [v52 logoButtonImage];
  v54 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
  v55 = [v53 _flatImageWithColor:v54];
  [v51 setImage:v55 forState:1];

  v56 = [(StockPlatterViewController *)self attributionButton];
  [v56 addTarget:self action:sel__attributionButtonPressed_ forControlEvents:64];

  v57 = [(StockPlatterViewController *)self attributionButton];
  [v57 accessibilitySetIdentification:@"YahooButton"];

  v58 = [(StockPlatterViewController *)self statusBarView];
  v59 = [(StockPlatterViewController *)self attributionButton];
  [v58 addSubview:v59];

  v60 = [(StockPlatterViewController *)self attributionButton];
  [v60 sizeToFit];

  v61 = objc_opt_new();
  [(StockPlatterViewController *)self setExchangeStatusLabel:v61];

  v62 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v63 = [(StockPlatterViewController *)self style];
  v64 = [v63 lightFontOfSize:12.0];
  [v62 setFont:v64];

  v65 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v66 = [MEMORY[0x277D75348] colorWithRed:0.549019608 green:0.560784314 blue:0.576470588 alpha:1.0];
  [v65 setTextColor:v66];

  v67 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v68 = [MEMORY[0x277D75348] clearColor];
  [v67 setBackgroundColor:v68];

  v69 = [(StockPlatterViewController *)self exchangeStatusLabel];
  [v69 setTextAlignment:1];

  v70 = [(StockPlatterViewController *)self exchangeStatusLabel];
  [v70 setAdjustsFontSizeToFitWidth:1];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v71 = [(StockPlatterViewController *)self attributionButton];
  v105[0] = v71;
  v72 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v105[1] = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];

  v74 = [v73 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v95;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v95 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v94 + 1) + 8 * j);
        [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
        v79 = [(StockPlatterViewController *)self statusBarView];
        [v79 addSubview:v78];
      }

      v75 = [v73 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v75);
  }

  v103[0] = @"attributionButton";
  v80 = [(StockPlatterViewController *)self attributionButton];
  v103[1] = @"exchangeStatusLabel";
  v104[0] = v80;
  v81 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v104[1] = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];

  v83 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-AttribButtonLeftMargin-[attributionButton]" options:1024 metrics:&unk_287C810E8 views:v82];
  v84 = [v83 mutableCopy];

  v85 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[attributionButton]|" options:0 metrics:&unk_287C810E8 views:v82];
  [v84 addObjectsFromArray:v85];

  v86 = MEMORY[0x277CCAAD0];
  v87 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v88 = [(StockPlatterViewController *)self statusBarView];
  v89 = [v86 constraintWithItem:v87 attribute:9 relatedBy:0 toItem:v88 attribute:9 multiplier:1.0 constant:0.0];
  [v84 addObject:v89];

  v90 = MEMORY[0x277CCAAD0];
  v91 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v92 = [(StockPlatterViewController *)self statusBarView];
  v93 = [v90 constraintWithItem:v91 attribute:10 relatedBy:0 toItem:v92 attribute:10 multiplier:1.0 constant:0.0];
  [v84 addObject:v93];

  [MEMORY[0x277CCAAD0] activateConstraints:v84];
}

- (CGSize)preferredContentSize
{
  v3 = [(StockPlatterViewController *)self layout];
  [v3 listViewFrame];
  v5 = v4;
  v6 = [(StockPlatterViewController *)self layout];
  [v6 chartViewFrame];
  v8 = v7 + 56.0;
  v9 = [(StockPlatterViewController *)self layout];
  [v9 statusViewFrame];
  v11 = v8 + v10;

  v12 = v5;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (NetPreferences)netPreferences
{
  netPreferences = self->_netPreferences;
  if (!netPreferences)
  {
    v4 = +[NetPreferences sharedPreferences];
    v5 = self->_netPreferences;
    self->_netPreferences = v4;

    netPreferences = self->_netPreferences;
  }

  return netPreferences;
}

- (StocksStyle)style
{
  style = self->_style;
  if (!style)
  {
    v4 = objc_opt_new();
    v5 = self->_style;
    self->_style = v4;

    style = self->_style;
  }

  return style;
}

- (StockManager)stockManager
{
  stockManager = self->_stockManager;
  if (!stockManager)
  {
    v4 = objc_opt_new();
    v5 = self->_stockManager;
    self->_stockManager = v4;

    stockManager = self->_stockManager;
  }

  return stockManager;
}

- (StockUpdateManager)stockUpdateManager
{
  stockUpdateManager = self->_stockUpdateManager;
  if (!stockUpdateManager)
  {
    v4 = objc_opt_new();
    v5 = self->_stockUpdateManager;
    self->_stockUpdateManager = v4;

    stockUpdateManager = self->_stockUpdateManager;
  }

  return stockUpdateManager;
}

- (ChartUpdater)chartUpdater
{
  chartUpdater = self->_chartUpdater;
  if (!chartUpdater)
  {
    v4 = objc_opt_new();
    v5 = self->_chartUpdater;
    self->_chartUpdater = v4;

    chartUpdater = self->_chartUpdater;
  }

  v6 = chartUpdater;

  return v6;
}

- (StockFetcher)stockFetcher
{
  stockFetcher = self->_stockFetcher;
  if (!stockFetcher)
  {
    v4 = objc_opt_new();
    v5 = self->_stockFetcher;
    self->_stockFetcher = v4;

    stockFetcher = self->_stockFetcher;
  }

  v6 = stockFetcher;

  return v6;
}

- (void)updateChartForInterval:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(StockPlatterViewController *)self stock];
  v26 = [(StockPlatterViewController *)self stocksTableView];
  v8 = [(StockPlatterViewController *)self chartView];
  v9 = [(StockPlatterViewController *)self chartUpdater];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke;
  v35[3] = &unk_279D165B8;
  v10 = v6;
  v36 = v10;
  v11 = MEMORY[0x26D68CA60](v35);
  v12 = StocksLogForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(StockPlatterViewController *)v7 updateChartForInterval:v12 completion:v13, v14, v15, v16, v17, v18];
  }

  objc_initWeak(&location, self);
  v19 = [(StockPlatterViewController *)self stockUpdateManager];
  v20 = [(StockPlatterViewController *)self stock];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_101;
  v27[3] = &unk_279D16608;
  v21 = v11;
  v32 = v21;
  objc_copyWeak(v33, &location);
  v33[1] = a3;
  v22 = v8;
  v28 = v22;
  v23 = v7;
  v29 = v23;
  v24 = v26;
  v30 = v24;
  v25 = v9;
  v31 = v25;
  [v19 updateStockBasicWithCompletion:v20 withCompletion:v27];

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

void __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3)
    {
      v5 = StocksLogForCategory(3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_cold_1(v3, v5);
      }

      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, v3);
  }
}

void __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_101(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 80);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained setChartInterval:v5];

    v7 = objc_loadWeakRetained((a1 + 72));
    [v7 _updateExchangeData];

    [*(a1 + 32) setStock:*(a1 + 40)];
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v8 reloadSections:v9 withRowAnimation:0];

    v10 = StocksLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_101_cold_1(a1 + 40, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 80);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_103;
    v22[3] = &unk_279D165E0;
    v19 = *(a1 + 56);
    v25 = *(a1 + 64);
    v23 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 80);
    v24 = v20;
    v26 = v21;
    [v19 updateChartForStock:v17 interval:v18 withCompletion:v22];
  }
}

uint64_t __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_103(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  else
  {
    v6 = StocksLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_103_cold_1(a1, v6, v7, v8, v9, v10, v11, v12);
    }

    if (!*(a1 + 32))
    {
      NSLog(&cfstr_ChartviewIsNil.isa);
    }

    v13 = [*(a1 + 40) chartDataForInterval:*(a1 + 56)];
    [*(a1 + 32) setChartData:v13];

    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_setupStockWithTicker:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(StockPlatterViewController *)self stockFetcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__StockPlatterViewController__setupStockWithTicker___block_invoke;
  v6[3] = &unk_279D16630;
  objc_copyWeak(&v7, &location);
  [v5 fetchStockWithSymbol:v4 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__StockPlatterViewController__setupStockWithTicker___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setStockFetcher:0];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setStock:v3];

    [v3 setTransient:1];
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 updateChartForInterval:objc_msgSend(v6 completion:{"chartInterval"), 0}];
  }
}

- (void)_updateExchangeData
{
  v3 = [(StockPlatterViewController *)self stock];
  v6 = [v3 marketStatusDescription];

  if (v6)
  {
    v4 = [(StockPlatterViewController *)self exchangeStatusLabel];
    [v4 setText:v6];
  }

  v5 = [(StockPlatterViewController *)self statusBarView];
  [v5 setNeedsUpdateConstraints];
}

- (void)_cleanup
{
  +[ChartLabelInfoManager clearSharedManager];
  +[GraphRenderer clearSharedRenderer];
  +[NetPreferences clearSharedPreferences];
  +[StocksPreferences clearSharedPreferences];
  +[StockManager clearSharedManager];
  [(StockPlatterViewController *)self setNetPreferences:0];
  v3 = [(StockPlatterViewController *)self chartUpdater];
  [v3 cancelAndInvalidate];

  [(StockPlatterViewController *)self setChartUpdater:0];
  [(StockPlatterViewController *)self setStockUpdateManager:0];

  [(StockPlatterViewController *)self setStockManager:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"kStockPlatterViewControllerCellType"];
  [v8 setRowDataType:{-[StockPlatterViewController rowDataType](self, "rowDataType")}];
  [v8 setShowsRowSeparator:0];
  v9 = [(StockPlatterViewController *)self stock];
  [v8 setStock:v9];

  [v7 selectRowAtIndexPath:v6 animated:0 scrollPosition:0];

  return v8;
}

- (void)_attributionButtonPressed:(id)a3
{
  v4 = [(StockPlatterViewController *)self stock];

  if (v4)
  {
    v5 = [(StockPlatterViewController *)self netPreferences];
    v6 = [(StockPlatterViewController *)self stock];
    v8 = [v5 fullQuoteURLOverrideForStock:v6];

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

- (void)initWithStockTicker:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"StockPlatterViewController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"stockTicker.length > 0"}];
}

void __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "ERROR POPULATING PLATTER: %@", &v2, 0xCu);
}

@end