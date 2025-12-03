@interface WFInteractionCardProgressViewController
- (void)handleEvent:(unint64_t)event;
- (void)loadView;
@end

@implementation WFInteractionCardProgressViewController

- (void)handleEvent:(unint64_t)event
{
  [(WFInteractionCardProgressViewController *)self loadViewIfNeeded];
  v5 = 2;
  if (event != 1)
  {
    v5 = -1;
  }

  if (event)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  progressEventViewController = [(WFInteractionCardProgressViewController *)self progressEventViewController];
  [progressEventViewController handleEvent:v6];
}

- (void)loadView
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFInteractionCardProgressViewController;
  [(WFInteractionCardProgressViewController *)&v21 loadView];
  v3 = objc_alloc_init(getSUICProgressEventViewControllerClass());
  [(WFInteractionCardProgressViewController *)self addChildViewController:v3];
  view = [v3 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(WFInteractionCardProgressViewController *)self view];
  [view2 addSubview:view];

  v16 = MEMORY[0x277CCAAD0];
  heightAnchor = [view heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:20.0];
  v22[0] = v19;
  widthAnchor = [view widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:20.0];
  v22[1] = v17;
  centerXAnchor = [view centerXAnchor];
  view3 = [(WFInteractionCardProgressViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[2] = v7;
  centerYAnchor = [view centerYAnchor];
  view4 = [(WFInteractionCardProgressViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v12];

  [v3 didMoveToParentViewController:self];
  [v3 handleEvent:0];
  progressEventViewController = self->_progressEventViewController;
  self->_progressEventViewController = v3;
}

@end