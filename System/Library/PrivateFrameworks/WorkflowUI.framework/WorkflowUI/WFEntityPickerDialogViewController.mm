@interface WFEntityPickerDialogViewController
- (WFEntityPickerDialogViewController)initWithRequest:(id)request;
- (void)finishWithEntry:(id)entry;
- (void)loadView;
@end

@implementation WFEntityPickerDialogViewController

- (void)finishWithEntry:(id)entry
{
  v4 = MEMORY[0x277D7C3E0];
  entryCopy = entry;
  v6 = [[v4 alloc] initWithSelectedEntry:entryCopy];

  [(WFCompactDialogViewController *)self finishWithResponse:v6];
}

- (void)loadView
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFEntityPickerDialogViewController;
  [(WFCompactDialogViewController *)&v34 loadView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setSashVisible:0];

  v32 = objc_opt_new();
  [(WFCompactPlatterViewController *)self setContentViewController:v32];
  request = [(WFCompactDialogViewController *)self request];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__WFEntityPickerDialogViewController_loadView__block_invoke;
  v33[3] = &unk_279EE8670;
  v33[4] = self;
  v5 = [WFEntityPickerHostingControllerFactory makeHostingController:request maxRows:2 tapHandler:v33];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [v5 view];
  [view setBackgroundColor:clearColor];

  contentViewController = [(WFCompactPlatterViewController *)self contentViewController];
  v9 = v5;
  v31 = v5;
  [contentViewController addChildViewController:v5];

  contentViewController2 = [(WFCompactPlatterViewController *)self contentViewController];
  view2 = [contentViewController2 view];

  view3 = [v9 view];
  LODWORD(v13) = 1148846080;
  [view3 setContentCompressionResistancePriority:1 forAxis:v13];
  [view2 addSubview:view3];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor = [view3 bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v17) = 1144750080;
  v30 = v16;
  [v16 setPriority:v17];
  v26 = MEMORY[0x277CCAAD0];
  topAnchor = [view3 topAnchor];
  topAnchor2 = [view2 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v27;
  v35[1] = v16;
  leftAnchor = [view3 leftAnchor];
  leftAnchor2 = [view2 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v35[2] = v20;
  rightAnchor = [view3 rightAnchor];
  rightAnchor2 = [view2 rightAnchor];
  v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v35[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v26 activateConstraints:v24];

  contentViewController3 = [(WFCompactPlatterViewController *)self contentViewController];
  [v31 didMoveToParentViewController:contentViewController3];

  [(WFCompactPlatterViewController *)self invalidateContentSize];
}

- (WFEntityPickerDialogViewController)initWithRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = WFEntityPickerDialogViewController;
  v3 = [(WFCompactDialogViewController *)&v7 initWithRequest:request];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end