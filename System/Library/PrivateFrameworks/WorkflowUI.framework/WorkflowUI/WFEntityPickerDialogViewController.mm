@interface WFEntityPickerDialogViewController
- (WFEntityPickerDialogViewController)initWithRequest:(id)a3;
- (void)finishWithEntry:(id)a3;
- (void)loadView;
@end

@implementation WFEntityPickerDialogViewController

- (void)finishWithEntry:(id)a3
{
  v4 = MEMORY[0x277D7C3E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithSelectedEntry:v5];

  [(WFCompactDialogViewController *)self finishWithResponse:v6];
}

- (void)loadView
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFEntityPickerDialogViewController;
  [(WFCompactDialogViewController *)&v34 loadView];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v3 setSashVisible:0];

  v32 = objc_opt_new();
  [(WFCompactPlatterViewController *)self setContentViewController:v32];
  v4 = [(WFCompactDialogViewController *)self request];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__WFEntityPickerDialogViewController_loadView__block_invoke;
  v33[3] = &unk_279EE8670;
  v33[4] = self;
  v5 = [WFEntityPickerHostingControllerFactory makeHostingController:v4 maxRows:2 tapHandler:v33];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [v5 view];
  [v7 setBackgroundColor:v6];

  v8 = [(WFCompactPlatterViewController *)self contentViewController];
  v9 = v5;
  v31 = v5;
  [v8 addChildViewController:v5];

  v10 = [(WFCompactPlatterViewController *)self contentViewController];
  v11 = [v10 view];

  v12 = [v9 view];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];
  [v11 addSubview:v12];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v12 bottomAnchor];
  v15 = [v11 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  LODWORD(v17) = 1144750080;
  v30 = v16;
  [v16 setPriority:v17];
  v26 = MEMORY[0x277CCAAD0];
  v29 = [v12 topAnchor];
  v28 = [v11 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v35[0] = v27;
  v35[1] = v16;
  v18 = [v12 leftAnchor];
  v19 = [v11 leftAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v35[2] = v20;
  v21 = [v12 rightAnchor];
  v22 = [v11 rightAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v35[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v26 activateConstraints:v24];

  v25 = [(WFCompactPlatterViewController *)self contentViewController];
  [v31 didMoveToParentViewController:v25];

  [(WFCompactPlatterViewController *)self invalidateContentSize];
}

- (WFEntityPickerDialogViewController)initWithRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFEntityPickerDialogViewController;
  v3 = [(WFCompactDialogViewController *)&v7 initWithRequest:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end