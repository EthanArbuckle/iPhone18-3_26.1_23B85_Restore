@interface WFSingleStepHomeScreenShortcutCompletionDialogViewController
- (id)requestIdentifier;
- (void)loadView;
@end

@implementation WFSingleStepHomeScreenShortcutCompletionDialogViewController

- (id)requestIdentifier
{
  v5.receiver = self;
  v5.super_class = WFSingleStepHomeScreenShortcutCompletionDialogViewController;
  requestIdentifier = [(WFCompactPlatterViewController *)&v5 requestIdentifier];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.single-step-home-screen-completion", requestIdentifier];

  return v3;
}

- (void)loadView
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFSingleStepHomeScreenShortcutCompletionDialogViewController;
  [(WFCompactDialogViewController *)&v21 loadView];
  v20 = objc_opt_new();
  view = [v20 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v20];
  v4 = [WFCompactStopButton buttonWithType:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v4];
  [v4 transitionToCompleted:1 animated:0];
  v14 = MEMORY[0x277CCAAD0];
  widthAnchor = [v4 widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:36.0];
  v22[0] = v18;
  heightAnchor = [v4 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:36.0];
  v22[1] = v16;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [view topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v22[2] = v5;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
  v22[3] = v8;
  centerXAnchor = [v4 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  [v14 activateConstraints:v12];
}

@end