@interface WFInteractionCardProgressViewController
- (void)handleEvent:(unint64_t)a3;
- (void)loadView;
@end

@implementation WFInteractionCardProgressViewController

- (void)handleEvent:(unint64_t)a3
{
  [(WFInteractionCardProgressViewController *)self loadViewIfNeeded];
  v5 = 2;
  if (a3 != 1)
  {
    v5 = -1;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WFInteractionCardProgressViewController *)self progressEventViewController];
  [v7 handleEvent:v6];
}

- (void)loadView
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFInteractionCardProgressViewController;
  [(WFInteractionCardProgressViewController *)&v21 loadView];
  v3 = objc_alloc_init(getSUICProgressEventViewControllerClass());
  [(WFInteractionCardProgressViewController *)self addChildViewController:v3];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(WFInteractionCardProgressViewController *)self view];
  [v5 addSubview:v4];

  v16 = MEMORY[0x277CCAAD0];
  v20 = [v4 heightAnchor];
  v19 = [v20 constraintEqualToConstant:20.0];
  v22[0] = v19;
  v18 = [v4 widthAnchor];
  v17 = [v18 constraintEqualToConstant:20.0];
  v22[1] = v17;
  v14 = [v4 centerXAnchor];
  v15 = [(WFInteractionCardProgressViewController *)self view];
  v6 = [v15 centerXAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v22[2] = v7;
  v8 = [v4 centerYAnchor];
  v9 = [(WFInteractionCardProgressViewController *)self view];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v12];

  [v3 didMoveToParentViewController:self];
  [v3 handleEvent:0];
  progressEventViewController = self->_progressEventViewController;
  self->_progressEventViewController = v3;
}

@end