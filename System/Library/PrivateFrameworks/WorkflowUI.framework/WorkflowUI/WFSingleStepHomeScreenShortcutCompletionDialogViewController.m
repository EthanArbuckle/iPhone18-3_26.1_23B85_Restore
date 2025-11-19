@interface WFSingleStepHomeScreenShortcutCompletionDialogViewController
- (id)requestIdentifier;
- (void)loadView;
@end

@implementation WFSingleStepHomeScreenShortcutCompletionDialogViewController

- (id)requestIdentifier
{
  v5.receiver = self;
  v5.super_class = WFSingleStepHomeScreenShortcutCompletionDialogViewController;
  v2 = [(WFCompactPlatterViewController *)&v5 requestIdentifier];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.single-step-home-screen-completion", v2];

  return v3;
}

- (void)loadView
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFSingleStepHomeScreenShortcutCompletionDialogViewController;
  [(WFCompactDialogViewController *)&v21 loadView];
  v20 = objc_opt_new();
  v3 = [v20 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v20];
  v4 = [WFCompactStopButton buttonWithType:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  [v4 transitionToCompleted:1 animated:0];
  v14 = MEMORY[0x277CCAAD0];
  v19 = [v4 widthAnchor];
  v18 = [v19 constraintEqualToConstant:36.0];
  v22[0] = v18;
  v17 = [v4 heightAnchor];
  v16 = [v17 constraintEqualToConstant:36.0];
  v22[1] = v16;
  v15 = [v4 topAnchor];
  v13 = [v3 topAnchor];
  v5 = [v15 constraintEqualToAnchor:v13 constant:8.0];
  v22[2] = v5;
  v6 = [v4 bottomAnchor];
  v7 = [v3 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-18.0];
  v22[3] = v8;
  v9 = [v4 centerXAnchor];
  v10 = [v3 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v22[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  [v14 activateConstraints:v12];
}

@end