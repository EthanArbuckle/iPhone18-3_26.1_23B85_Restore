@interface WFCompactStatusViewController
- (void)loadView;
- (void)setAttribution:(id)attribution;
- (void)setProgress:(id)progress;
- (void)transitionToCompleted:(BOOL)completed animated:(BOOL)animated;
@end

@implementation WFCompactStatusViewController

- (void)transitionToCompleted:(BOOL)completed animated:(BOOL)animated
{
  animatedCopy = animated;
  completedCopy = completed;
  [(WFCompactStatusViewController *)self loadViewIfNeeded];
  stopButton = [(WFCompactStatusViewController *)self stopButton];
  [stopButton transitionToCompleted:completedCopy animated:animatedCopy];
}

- (void)setAttribution:(id)attribution
{
  attributionCopy = attribution;
  platterView = self->_attribution;
  v7 = attributionCopy;
  v10 = v7;
  if (platterView == v7)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v7 || !platterView)
  {

    goto LABEL_8;
  }

  v8 = [(WFDialogAttribution *)platterView isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_attribution, attribution);
    platterView = [(WFCompactPlatterViewController *)self platterView];
    [(WFDialogAttribution *)platterView setAttribution:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  stopButton = [(WFCompactStatusViewController *)self stopButton];
  [stopButton setProgress:progressCopy];
}

- (void)loadView
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = WFCompactStatusViewController;
  [(WFCompactPlatterViewController *)&v24 loadView];
  v23 = objc_opt_new();
  view = [v23 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v23];
  v4 = [WFCompactStopButton buttonWithType:1];
  progress = [(WFCompactStatusViewController *)self progress];
  [(WFCompactStopButton *)v4 setProgress:progress];

  [(WFCompactStopButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v4];
  stopButton = self->_stopButton;
  self->_stopButton = v4;
  v7 = v4;

  v17 = MEMORY[0x277CCAAD0];
  widthAnchor = [(WFCompactStopButton *)v7 widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:36.0];
  v25[0] = v21;
  heightAnchor = [(WFCompactStopButton *)v7 heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:36.0];
  v25[1] = v19;
  topAnchor = [(WFCompactStopButton *)v7 topAnchor];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v25[2] = v8;
  bottomAnchor = [(WFCompactStopButton *)v7 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
  v25[3] = v11;
  centerXAnchor = [(WFCompactStopButton *)v7 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v25[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  [v17 activateConstraints:v15];
}

@end