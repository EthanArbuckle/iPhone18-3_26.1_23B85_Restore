@interface PRXScannerViewController
- (PRXScannerViewController)initWithScannerEngine:(id)engine;
- (void)resetConfirmationRing;
- (void)showConfirmationRing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRXScannerViewController

- (PRXScannerViewController)initWithScannerEngine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = PRXScannerViewController;
  v6 = [(PRXCardContentViewController *)&v11 initWithContentView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scannerEngine, engine);
    v8 = objc_alloc_init(PRXScannerIndicatorView);
    indicatorView = v7->_indicatorView;
    v7->_indicatorView = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v90[13] = *MEMORY[0x277D85DE8];
  v89.receiver = self;
  v89.super_class = PRXScannerViewController;
  [(PRXCardContentViewController *)&v89 viewDidLoad];
  [(PRXCardContentViewController *)self setDismissalType:1];
  view = [(PRXScannerViewController *)self view];
  [view setClipsToBounds:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView setBackgroundColor:clearColor];

  contentView2 = [(PRXCardContentViewController *)self contentView];
  [contentView2 setOpaque:0];

  contentView3 = [(PRXCardContentViewController *)self contentView];
  titleView = [contentView3 titleView];
  [titleView setOpaque:0];

  indicatorView = [(PRXScannerViewController *)self indicatorView];
  [indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(PRXScannerViewController *)self view];
  indicatorView2 = [(PRXScannerViewController *)self indicatorView];
  [view2 addSubview:indicatorView2];

  view3 = [(PRXScannerViewController *)self view];
  indicatorView3 = [(PRXScannerViewController *)self indicatorView];
  [view3 sendSubviewToBack:indicatorView3];

  scannerEngine = [(PRXScannerViewController *)self scannerEngine];
  [(PRXScannerViewController *)self addChildViewController:scannerEngine];

  scannerEngine2 = [(PRXScannerViewController *)self scannerEngine];
  view4 = [scannerEngine2 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(PRXScannerViewController *)self view];
  scannerEngine3 = [(PRXScannerViewController *)self scannerEngine];
  view6 = [scannerEngine3 view];
  [view5 addSubview:view6];

  view7 = [(PRXScannerViewController *)self view];
  scannerEngine4 = [(PRXScannerViewController *)self scannerEngine];
  view8 = [scannerEngine4 view];
  [view7 sendSubviewToBack:view8];

  v23 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v23 setIdentifier:@"PRXScannerIndicator"];
  contentView4 = [(PRXCardContentViewController *)self contentView];
  [contentView4 addLayoutGuide:v23];

  contentView5 = [(PRXCardContentViewController *)self contentView];
  mainContentGuide = [contentView5 mainContentGuide];

  scannerEngine5 = [(PRXScannerViewController *)self scannerEngine];
  view9 = [scannerEngine5 view];

  v65 = MEMORY[0x277CCAAD0];
  leftAnchor = [view9 leftAnchor];
  view10 = [(PRXScannerViewController *)self view];
  leftAnchor2 = [view10 leftAnchor];
  v85 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v90[0] = v85;
  rightAnchor = [view9 rightAnchor];
  view11 = [(PRXScannerViewController *)self view];
  rightAnchor2 = [view11 rightAnchor];
  v80 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v81 = view9;
  v90[1] = v80;
  heightAnchor = [view9 heightAnchor];
  view12 = [(PRXScannerViewController *)self view];
  heightAnchor2 = [view12 heightAnchor];
  v76 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:2.0];
  v90[2] = v76;
  centerYAnchor = [view9 centerYAnchor];
  view13 = [(PRXScannerViewController *)self view];
  centerYAnchor2 = [view13 centerYAnchor];
  v72 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v90[3] = v72;
  indicatorView4 = [(PRXScannerViewController *)self indicatorView];
  leftAnchor3 = [indicatorView4 leftAnchor];
  view14 = [(PRXScannerViewController *)self view];
  leftAnchor4 = [view14 leftAnchor];
  v67 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v90[4] = v67;
  indicatorView5 = [(PRXScannerViewController *)self indicatorView];
  rightAnchor3 = [indicatorView5 rightAnchor];
  view15 = [(PRXScannerViewController *)self view];
  rightAnchor4 = [view15 rightAnchor];
  v61 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v90[5] = v61;
  indicatorView6 = [(PRXScannerViewController *)self indicatorView];
  heightAnchor3 = [indicatorView6 heightAnchor];
  view16 = [(PRXScannerViewController *)self view];
  heightAnchor4 = [view16 heightAnchor];
  v54 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:3.0];
  v90[6] = v54;
  indicatorView7 = [(PRXScannerViewController *)self indicatorView];
  centerYAnchor3 = [indicatorView7 centerYAnchor];
  centerYAnchor4 = [v23 centerYAnchor];
  v50 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v90[7] = v50;
  topAnchor = [v23 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[8] = v47;
  bottomAnchor = [v23 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v90[9] = v44;
  leadingAnchor = [v23 leadingAnchor];
  v29 = mainContentGuide;
  v60 = mainContentGuide;
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v90[10] = v31;
  v59 = v23;
  trailingAnchor = [v23 trailingAnchor];
  trailingAnchor2 = [v29 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[11] = v34;
  heightAnchor5 = [v23 heightAnchor];
  view17 = [(PRXScannerViewController *)self view];
  widthAnchor = [view17 widthAnchor];
  +[PRXScannerIndicatorView innerHoleRatio];
  v39 = v38;
  +[PRXScannerIndicatorView strokeWidth];
  v41 = [heightAnchor5 constraintEqualToAnchor:widthAnchor multiplier:v39 constant:v40];
  v90[12] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:13];
  [v65 activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PRXScannerViewController;
  [(PRXScannerViewController *)&v5 viewWillAppear:appear];
  indicatorView = [(PRXScannerViewController *)self indicatorView];
  [indicatorView reset];
}

- (void)showConfirmationRing
{
  indicatorView = [(PRXScannerViewController *)self indicatorView];
  [indicatorView complete];
}

- (void)resetConfirmationRing
{
  indicatorView = [(PRXScannerViewController *)self indicatorView];
  [indicatorView reset];
}

@end