@interface StockPlatterViewController
- (CGSize)preferredContentSize;
- (ChartUpdater)chartUpdater;
- (NetPreferences)netPreferences;
- (StockFetcher)stockFetcher;
- (StockManager)stockManager;
- (StockPlatterViewController)initWithStockTicker:(id)ticker;
- (StockUpdateManager)stockUpdateManager;
- (StocksStyle)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_attributionButtonPressed:(id)pressed;
- (void)_cleanup;
- (void)_setupStockWithTicker:(id)ticker;
- (void)_updateExchangeData;
- (void)dealloc;
- (void)updateChartForInterval:(int64_t)interval completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation StockPlatterViewController

- (StockPlatterViewController)initWithStockTicker:(id)ticker
{
  tickerCopy = ticker;
  if (![tickerCopy length])
  {
    [(StockPlatterViewController *)a2 initWithStockTicker:?];
  }

  v42.receiver = self;
  v42.super_class = StockPlatterViewController;
  v6 = [(StockPlatterViewController *)&v42 init];
  if (v6)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v10 = [StocksLayout layoutForSize:v8, v9];
    [(StockPlatterViewController *)v6 setLayout:v10];

    v11 = +[StocksPreferences sharedPreferences];
    v12 = [v11 objectForKey:@"chartInterval"];

    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 4;
    }

    v6->_chartInterval = unsignedIntegerValue;
    v14 = +[StocksPreferences sharedPreferences];
    v15 = [v14 objectForKey:@"rowDataType"];

    if (v15)
    {
      unsignedIntegerValue2 = [v15 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 1;
    }

    v6->_rowDataType = unsignedIntegerValue2;
    layout = [(StockPlatterViewController *)v6 layout];
    chartDisplayMode = [layout chartDisplayMode];

    layout2 = [(StockPlatterViewController *)v6 layout];
    [layout2 chartViewFrame];
    v21 = v20;
    v23 = v22;

    [chartDisplayMode intervalRowHeight];
    v25 = v23 - v24;
    [chartDisplayMode setChartRenderingInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [chartDisplayMode setChartSize:{v21, v25}];
    [chartDisplayMode setGraphOverlapsYAxisLabels:1];
    v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    [chartDisplayMode setXAxisKeylineColor:v26];

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    [chartDisplayMode setAxisLabelsColor:v27];

    v28 = objc_opt_new();
    [(StockPlatterViewController *)v6 setStatusBarView:v28];

    v29 = objc_alloc(MEMORY[0x277D75B40]);
    v30 = [v29 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(StockPlatterViewController *)v6 setStocksTableView:v30];

    stocksTableView = [(StockPlatterViewController *)v6 stocksTableView];
    [stocksTableView setDelegate:v6];

    stocksTableView2 = [(StockPlatterViewController *)v6 stocksTableView];
    [stocksTableView2 setDataSource:v6];

    stocksTableView3 = [(StockPlatterViewController *)v6 stocksTableView];
    [stocksTableView3 setSeparatorStyle:0];

    stocksTableView4 = [(StockPlatterViewController *)v6 stocksTableView];
    [stocksTableView4 setRowHeight:56.0];

    stocksTableView5 = [(StockPlatterViewController *)v6 stocksTableView];
    [stocksTableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"kStockPlatterViewControllerCellType"];

    v36 = [StockChartView alloc];
    layout3 = [(StockPlatterViewController *)v6 layout];
    chartDisplayMode2 = [layout3 chartDisplayMode];
    v39 = [(StockChartView *)v36 initWithInitialDisplayMode:chartDisplayMode2 preferredChartInterval:[(StockPlatterViewController *)v6 chartInterval] stockChartViewDelegate:v6];
    [(StockPlatterViewController *)v6 setChartView:v39];

    [(StockPlatterViewController *)v6 setStockTicker:tickerCopy];
    stockTicker = [(StockPlatterViewController *)v6 stockTicker];
    [(StockPlatterViewController *)v6 _setupStockWithTicker:stockTicker];
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
  view = [(StockPlatterViewController *)self view];
  [view setFrame:{v3, v4, v6, v8}];

  blackColor = [MEMORY[0x277D75348] blackColor];
  view2 = [(StockPlatterViewController *)self view];
  [view2 setBackgroundColor:blackColor];

  [(StockPlatterViewController *)self preferredContentSize];
  v13 = v12;
  v15 = v14;
  chartView = [(StockPlatterViewController *)self chartView];
  [chartView setFrame:{v3, v4, v13, v15}];

  view3 = [(StockPlatterViewController *)self view];
  backgroundColor = [view3 backgroundColor];
  statusBarView = [(StockPlatterViewController *)self statusBarView];
  [statusBarView setBackgroundColor:backgroundColor];

  view4 = [(StockPlatterViewController *)self view];
  backgroundColor2 = [view4 backgroundColor];
  stocksTableView = [(StockPlatterViewController *)self stocksTableView];
  [stocksTableView setBackgroundColor:backgroundColor2];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  chartView2 = [(StockPlatterViewController *)self chartView];
  v111[0] = chartView2;
  statusBarView2 = [(StockPlatterViewController *)self statusBarView];
  v111[1] = statusBarView2;
  stocksTableView2 = [(StockPlatterViewController *)self stocksTableView];
  v111[2] = stocksTableView2;
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
        view5 = [(StockPlatterViewController *)self view];
        [view5 addSubview:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v98 objects:v112 count:16];
    }

    while (v28);
  }

  v109[0] = @"chartView";
  chartView3 = [(StockPlatterViewController *)self chartView];
  v110[0] = chartView3;
  v109[1] = @"tableView";
  stocksTableView3 = [(StockPlatterViewController *)self stocksTableView];
  v110[1] = stocksTableView3;
  v109[2] = @"statusBarView";
  statusBarView3 = [(StockPlatterViewController *)self statusBarView];
  v110[2] = statusBarView3;
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

  attributionButton = [(StockPlatterViewController *)self attributionButton];
  [attributionButton setExclusiveTouch:1];

  attributionButton2 = [(StockPlatterViewController *)self attributionButton];
  netPreferences = [(StockPlatterViewController *)self netPreferences];
  logoButtonImage = [netPreferences logoButtonImage];
  v49 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  v50 = [logoButtonImage _flatImageWithColor:v49];
  [attributionButton2 setImage:v50 forState:0];

  attributionButton3 = [(StockPlatterViewController *)self attributionButton];
  netPreferences2 = [(StockPlatterViewController *)self netPreferences];
  logoButtonImage2 = [netPreferences2 logoButtonImage];
  v54 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
  v55 = [logoButtonImage2 _flatImageWithColor:v54];
  [attributionButton3 setImage:v55 forState:1];

  attributionButton4 = [(StockPlatterViewController *)self attributionButton];
  [attributionButton4 addTarget:self action:sel__attributionButtonPressed_ forControlEvents:64];

  attributionButton5 = [(StockPlatterViewController *)self attributionButton];
  [attributionButton5 accessibilitySetIdentification:@"YahooButton"];

  statusBarView4 = [(StockPlatterViewController *)self statusBarView];
  attributionButton6 = [(StockPlatterViewController *)self attributionButton];
  [statusBarView4 addSubview:attributionButton6];

  attributionButton7 = [(StockPlatterViewController *)self attributionButton];
  [attributionButton7 sizeToFit];

  v61 = objc_opt_new();
  [(StockPlatterViewController *)self setExchangeStatusLabel:v61];

  exchangeStatusLabel = [(StockPlatterViewController *)self exchangeStatusLabel];
  style = [(StockPlatterViewController *)self style];
  v64 = [style lightFontOfSize:12.0];
  [exchangeStatusLabel setFont:v64];

  exchangeStatusLabel2 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v66 = [MEMORY[0x277D75348] colorWithRed:0.549019608 green:0.560784314 blue:0.576470588 alpha:1.0];
  [exchangeStatusLabel2 setTextColor:v66];

  exchangeStatusLabel3 = [(StockPlatterViewController *)self exchangeStatusLabel];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [exchangeStatusLabel3 setBackgroundColor:clearColor];

  exchangeStatusLabel4 = [(StockPlatterViewController *)self exchangeStatusLabel];
  [exchangeStatusLabel4 setTextAlignment:1];

  exchangeStatusLabel5 = [(StockPlatterViewController *)self exchangeStatusLabel];
  [exchangeStatusLabel5 setAdjustsFontSizeToFitWidth:1];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  attributionButton8 = [(StockPlatterViewController *)self attributionButton];
  v105[0] = attributionButton8;
  exchangeStatusLabel6 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v105[1] = exchangeStatusLabel6;
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
        statusBarView5 = [(StockPlatterViewController *)self statusBarView];
        [statusBarView5 addSubview:v78];
      }

      v75 = [v73 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v75);
  }

  v103[0] = @"attributionButton";
  attributionButton9 = [(StockPlatterViewController *)self attributionButton];
  v103[1] = @"exchangeStatusLabel";
  v104[0] = attributionButton9;
  exchangeStatusLabel7 = [(StockPlatterViewController *)self exchangeStatusLabel];
  v104[1] = exchangeStatusLabel7;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];

  v83 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-AttribButtonLeftMargin-[attributionButton]" options:1024 metrics:&unk_287C810E8 views:v82];
  v84 = [v83 mutableCopy];

  v85 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[attributionButton]|" options:0 metrics:&unk_287C810E8 views:v82];
  [v84 addObjectsFromArray:v85];

  v86 = MEMORY[0x277CCAAD0];
  exchangeStatusLabel8 = [(StockPlatterViewController *)self exchangeStatusLabel];
  statusBarView6 = [(StockPlatterViewController *)self statusBarView];
  v89 = [v86 constraintWithItem:exchangeStatusLabel8 attribute:9 relatedBy:0 toItem:statusBarView6 attribute:9 multiplier:1.0 constant:0.0];
  [v84 addObject:v89];

  v90 = MEMORY[0x277CCAAD0];
  exchangeStatusLabel9 = [(StockPlatterViewController *)self exchangeStatusLabel];
  statusBarView7 = [(StockPlatterViewController *)self statusBarView];
  v93 = [v90 constraintWithItem:exchangeStatusLabel9 attribute:10 relatedBy:0 toItem:statusBarView7 attribute:10 multiplier:1.0 constant:0.0];
  [v84 addObject:v93];

  [MEMORY[0x277CCAAD0] activateConstraints:v84];
}

- (CGSize)preferredContentSize
{
  layout = [(StockPlatterViewController *)self layout];
  [layout listViewFrame];
  v5 = v4;
  layout2 = [(StockPlatterViewController *)self layout];
  [layout2 chartViewFrame];
  v8 = v7 + 56.0;
  layout3 = [(StockPlatterViewController *)self layout];
  [layout3 statusViewFrame];
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

- (void)updateChartForInterval:(int64_t)interval completion:(id)completion
{
  completionCopy = completion;
  stock = [(StockPlatterViewController *)self stock];
  stocksTableView = [(StockPlatterViewController *)self stocksTableView];
  chartView = [(StockPlatterViewController *)self chartView];
  chartUpdater = [(StockPlatterViewController *)self chartUpdater];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke;
  v35[3] = &unk_279D165B8;
  v10 = completionCopy;
  v36 = v10;
  v11 = MEMORY[0x26D68CA60](v35);
  v12 = StocksLogForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(StockPlatterViewController *)stock updateChartForInterval:v12 completion:v13, v14, v15, v16, v17, v18];
  }

  objc_initWeak(&location, self);
  stockUpdateManager = [(StockPlatterViewController *)self stockUpdateManager];
  stock2 = [(StockPlatterViewController *)self stock];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__StockPlatterViewController_updateChartForInterval_completion___block_invoke_101;
  v27[3] = &unk_279D16608;
  v21 = v11;
  v32 = v21;
  objc_copyWeak(v33, &location);
  v33[1] = interval;
  v22 = chartView;
  v28 = v22;
  v23 = stock;
  v29 = v23;
  v24 = stocksTableView;
  v30 = v24;
  v25 = chartUpdater;
  v31 = v25;
  [stockUpdateManager updateStockBasicWithCompletion:stock2 withCompletion:v27];

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

- (void)_setupStockWithTicker:(id)ticker
{
  tickerCopy = ticker;
  objc_initWeak(&location, self);
  stockFetcher = [(StockPlatterViewController *)self stockFetcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__StockPlatterViewController__setupStockWithTicker___block_invoke;
  v6[3] = &unk_279D16630;
  objc_copyWeak(&v7, &location);
  [stockFetcher fetchStockWithSymbol:tickerCopy completionHandler:v6];

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
  stock = [(StockPlatterViewController *)self stock];
  marketStatusDescription = [stock marketStatusDescription];

  if (marketStatusDescription)
  {
    exchangeStatusLabel = [(StockPlatterViewController *)self exchangeStatusLabel];
    [exchangeStatusLabel setText:marketStatusDescription];
  }

  statusBarView = [(StockPlatterViewController *)self statusBarView];
  [statusBarView setNeedsUpdateConstraints];
}

- (void)_cleanup
{
  +[ChartLabelInfoManager clearSharedManager];
  +[GraphRenderer clearSharedRenderer];
  +[NetPreferences clearSharedPreferences];
  +[StocksPreferences clearSharedPreferences];
  +[StockManager clearSharedManager];
  [(StockPlatterViewController *)self setNetPreferences:0];
  chartUpdater = [(StockPlatterViewController *)self chartUpdater];
  [chartUpdater cancelAndInvalidate];

  [(StockPlatterViewController *)self setChartUpdater:0];
  [(StockPlatterViewController *)self setStockUpdateManager:0];

  [(StockPlatterViewController *)self setStockManager:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kStockPlatterViewControllerCellType"];
  [v8 setRowDataType:{-[StockPlatterViewController rowDataType](self, "rowDataType")}];
  [v8 setShowsRowSeparator:0];
  stock = [(StockPlatterViewController *)self stock];
  [v8 setStock:stock];

  [viewCopy selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];

  return v8;
}

- (void)_attributionButtonPressed:(id)pressed
{
  stock = [(StockPlatterViewController *)self stock];

  if (stock)
  {
    netPreferences = [(StockPlatterViewController *)self netPreferences];
    stock2 = [(StockPlatterViewController *)self stock];
    v8 = [netPreferences fullQuoteURLOverrideForStock:stock2];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:0];
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