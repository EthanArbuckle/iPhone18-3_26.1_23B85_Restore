@interface PRXScannerViewController
- (PRXScannerViewController)initWithScannerEngine:(id)a3;
- (void)resetConfirmationRing;
- (void)showConfirmationRing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PRXScannerViewController

- (PRXScannerViewController)initWithScannerEngine:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PRXScannerViewController;
  v6 = [(PRXCardContentViewController *)&v11 initWithContentView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scannerEngine, a3);
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
  v3 = [(PRXScannerViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(PRXCardContentViewController *)self contentView];
  [v5 setBackgroundColor:v4];

  v6 = [(PRXCardContentViewController *)self contentView];
  [v6 setOpaque:0];

  v7 = [(PRXCardContentViewController *)self contentView];
  v8 = [v7 titleView];
  [v8 setOpaque:0];

  v9 = [(PRXScannerViewController *)self indicatorView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(PRXScannerViewController *)self view];
  v11 = [(PRXScannerViewController *)self indicatorView];
  [v10 addSubview:v11];

  v12 = [(PRXScannerViewController *)self view];
  v13 = [(PRXScannerViewController *)self indicatorView];
  [v12 sendSubviewToBack:v13];

  v14 = [(PRXScannerViewController *)self scannerEngine];
  [(PRXScannerViewController *)self addChildViewController:v14];

  v15 = [(PRXScannerViewController *)self scannerEngine];
  v16 = [v15 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(PRXScannerViewController *)self view];
  v18 = [(PRXScannerViewController *)self scannerEngine];
  v19 = [v18 view];
  [v17 addSubview:v19];

  v20 = [(PRXScannerViewController *)self view];
  v21 = [(PRXScannerViewController *)self scannerEngine];
  v22 = [v21 view];
  [v20 sendSubviewToBack:v22];

  v23 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v23 setIdentifier:@"PRXScannerIndicator"];
  v24 = [(PRXCardContentViewController *)self contentView];
  [v24 addLayoutGuide:v23];

  v25 = [(PRXCardContentViewController *)self contentView];
  v26 = [v25 mainContentGuide];

  v27 = [(PRXScannerViewController *)self scannerEngine];
  v28 = [v27 view];

  v65 = MEMORY[0x277CCAAD0];
  v87 = [v28 leftAnchor];
  v88 = [(PRXScannerViewController *)self view];
  v86 = [v88 leftAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v90[0] = v85;
  v83 = [v28 rightAnchor];
  v84 = [(PRXScannerViewController *)self view];
  v82 = [v84 rightAnchor];
  v80 = [v83 constraintEqualToAnchor:v82];
  v81 = v28;
  v90[1] = v80;
  v78 = [v28 heightAnchor];
  v79 = [(PRXScannerViewController *)self view];
  v77 = [v79 heightAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 multiplier:2.0];
  v90[2] = v76;
  v74 = [v28 centerYAnchor];
  v75 = [(PRXScannerViewController *)self view];
  v73 = [v75 centerYAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v90[3] = v72;
  v71 = [(PRXScannerViewController *)self indicatorView];
  v69 = [v71 leftAnchor];
  v70 = [(PRXScannerViewController *)self view];
  v68 = [v70 leftAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v90[4] = v67;
  v66 = [(PRXScannerViewController *)self indicatorView];
  v63 = [v66 rightAnchor];
  v64 = [(PRXScannerViewController *)self view];
  v62 = [v64 rightAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v90[5] = v61;
  v58 = [(PRXScannerViewController *)self indicatorView];
  v56 = [v58 heightAnchor];
  v57 = [(PRXScannerViewController *)self view];
  v55 = [v57 heightAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 multiplier:3.0];
  v90[6] = v54;
  v53 = [(PRXScannerViewController *)self indicatorView];
  v52 = [v53 centerYAnchor];
  v51 = [v23 centerYAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v90[7] = v50;
  v49 = [v23 topAnchor];
  v48 = [v26 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v90[8] = v47;
  v46 = [v23 bottomAnchor];
  v45 = [v26 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v90[9] = v44;
  v43 = [v23 leadingAnchor];
  v29 = v26;
  v60 = v26;
  v30 = [v26 leadingAnchor];
  v31 = [v43 constraintEqualToAnchor:v30];
  v90[10] = v31;
  v59 = v23;
  v32 = [v23 trailingAnchor];
  v33 = [v29 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v90[11] = v34;
  v35 = [v23 heightAnchor];
  v36 = [(PRXScannerViewController *)self view];
  v37 = [v36 widthAnchor];
  +[PRXScannerIndicatorView innerHoleRatio];
  v39 = v38;
  +[PRXScannerIndicatorView strokeWidth];
  v41 = [v35 constraintEqualToAnchor:v37 multiplier:v39 constant:v40];
  v90[12] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:13];
  [v65 activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRXScannerViewController;
  [(PRXScannerViewController *)&v5 viewWillAppear:a3];
  v4 = [(PRXScannerViewController *)self indicatorView];
  [v4 reset];
}

- (void)showConfirmationRing
{
  v2 = [(PRXScannerViewController *)self indicatorView];
  [v2 complete];
}

- (void)resetConfirmationRing
{
  v2 = [(PRXScannerViewController *)self indicatorView];
  [v2 reset];
}

@end