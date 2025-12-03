@interface PNPHandwritingEducationPanelController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (CGPoint)forcedContentOffset;
- (void)buttonPressed:(id)pressed;
- (void)cancelWatchdogTimer;
- (void)dealloc;
- (void)educationControllerRequestedDismissal:(id)dismissal;
- (void)scheduleWatchdogTimer;
- (void)setIsAnimating:(BOOL)animating animated:(BOOL)animated;
- (void)setUpForIsAnimating:(BOOL)animating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PNPHandwritingEducationPanelController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = [PNPHandwritingEducationPanelController alloc];
  v11 = +[PencilHandwritingEducationViewController localizedTitle];
  v12 = [(PNPHandwritingEducationPanelController *)v10 initWithTitle:v11 detailText:0 icon:0 contentLayout:3];

  [(PNPWelcomeController *)v12 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v12;
}

- (void)dealloc
{
  [(NSTimer *)self->_watchdogTimer invalidate];
  v3.receiver = self;
  v3.super_class = PNPHandwritingEducationPanelController;
  [(PNPHandwritingEducationPanelController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PNPHandwritingEducationPanelController;
  [(OBBaseWelcomeController *)&v28 viewDidLoad];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  view = [(PNPHandwritingEducationPanelController *)self view];
  [view setTintColor:systemBlueColor];

  navigationController = [(PNPHandwritingEducationPanelController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setTintColor:systemBlueColor];

  v7 = [[PencilHandwritingEducationViewController alloc] initWithNibName:0 bundle:0];
  [(PNPHandwritingEducationPanelController *)self setEducationController:v7];

  educationController = [(PNPHandwritingEducationPanelController *)self educationController];
  [educationController setDelegate:self];

  educationController2 = [(PNPHandwritingEducationPanelController *)self educationController];
  [(PNPHandwritingEducationPanelController *)self addChildViewController:educationController2];

  educationController3 = [(PNPHandwritingEducationPanelController *)self educationController];
  view2 = [educationController3 view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PNPHandwritingEducationPanelController *)self contentView];
  [contentView addSubview:view2];
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v15 setActive:1];

  topAnchor = [view2 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v24 setActive:1];

  educationController4 = [(PNPHandwritingEducationPanelController *)self educationController];
  [(PNPHandwritingEducationPanelController *)self addChildViewController:educationController4];

  [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:[(PNPHandwritingEducationPanelController *)self isAnimating]];
  educationController5 = [(PNPHandwritingEducationPanelController *)self educationController];
  buttonTray = [(PNPHandwritingEducationPanelController *)self buttonTray];
  [educationController5 updateButtonTray:buttonTray];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PNPHandwritingEducationPanelController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  [(PNPHandwritingEducationPanelController *)self scheduleWatchdogTimer];
  [(PNPHandwritingEducationPanelController *)self setForcedContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  [(PNPHandwritingEducationPanelController *)self cancelWatchdogTimer];
  [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:0];
  [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:0];
  forcedHeightLayoutConstraint = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
  [forcedHeightLayoutConstraint setActive:0];

  [(PNPHandwritingEducationPanelController *)self setForcedHeightLayoutConstraint:0];
}

- (void)viewDidLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PNPHandwritingEducationPanelController;
  [(OBBaseWelcomeController *)&v46 viewDidLayoutSubviews];
  educationController = [(PNPHandwritingEducationPanelController *)self educationController];
  view = [educationController view];
  superview = [view superview];
  [superview frame];
  if (v6 <= 0.0)
  {
  }

  else
  {
    didAdjustHeightForWidth = [(PNPHandwritingEducationPanelController *)self didAdjustHeightForWidth];

    if (!didAdjustHeightForWidth)
    {
      [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:1];
      educationController2 = [(PNPHandwritingEducationPanelController *)self educationController];
      view2 = [educationController2 view];
      educationController3 = [(PNPHandwritingEducationPanelController *)self educationController];
      view3 = [educationController3 view];
      [view3 bounds];
      [view2 convertRect:0 toView:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      educationController4 = [(PNPHandwritingEducationPanelController *)self educationController];
      [educationController4 calculateFittingHeightByTemporarilyAdjustingFrameForWidth:v17];
      v20 = v19;

      educationController5 = [(PNPHandwritingEducationPanelController *)self educationController];
      view4 = [educationController5 view];
      heightAnchor = [view4 heightAnchor];
      v24 = [heightAnchor constraintEqualToConstant:v20];
      [(PNPHandwritingEducationPanelController *)self setForcedHeightLayoutConstraint:v24];

      forcedHeightLayoutConstraint = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
      [forcedHeightLayoutConstraint setActive:1];

      buttonTray = [(PNPHandwritingEducationPanelController *)self buttonTray];
      buttonTray2 = [(PNPHandwritingEducationPanelController *)self buttonTray];
      [buttonTray2 bounds];
      [buttonTray convertRect:0 toView:?];
      v29 = v28;

      v47.origin.x = v13;
      v47.origin.y = v15;
      v47.size.width = v17;
      v47.size.height = v20;
      v30 = CGRectGetMaxY(v47) - v29;
      if (v30 > 0.0)
      {
        headerView = [(PNPHandwritingEducationPanelController *)self headerView];
        headerView2 = [(PNPHandwritingEducationPanelController *)self headerView];
        [headerView2 bounds];
        [headerView convertRect:0 toView:?];
        v34 = v33;

        scrollView = [(PNPHandwritingEducationPanelController *)self scrollView];
        scrollView2 = [(PNPHandwritingEducationPanelController *)self scrollView];
        [scrollView2 bounds];
        [scrollView convertRect:0 toView:?];
        v38 = v37;

        if (v34 - v38 >= v30)
        {
          v39 = v30;
        }

        else
        {
          v39 = v34 - v38;
        }

        [(PNPHandwritingEducationPanelController *)self setForcedContentOffset:0.0, v39];
      }
    }
  }

  [(PNPHandwritingEducationPanelController *)self forcedContentOffset];
  if (v40 > 0.0)
  {
    [(PNPHandwritingEducationPanelController *)self forcedContentOffset];
    v42 = v41;
    v44 = v43;
    scrollView3 = [(PNPHandwritingEducationPanelController *)self scrollView];
    [scrollView3 setContentOffset:{v42, v44}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  [(PNPHandwritingEducationPanelController *)self setForcedContentOffset:coordinator, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:0];
  forcedHeightLayoutConstraint = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
  [forcedHeightLayoutConstraint setActive:0];

  [(PNPHandwritingEducationPanelController *)self setForcedHeightLayoutConstraint:0];
}

- (void)scheduleWatchdogTimer
{
  [(PNPHandwritingEducationPanelController *)self cancelWatchdogTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __63__PNPHandwritingEducationPanelController_scheduleWatchdogTimer__block_invoke;
  v8 = &unk_279A0A0D8;
  objc_copyWeak(&v9, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:5.0];
  [(PNPHandwritingEducationPanelController *)self setWatchdogTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__PNPHandwritingEducationPanelController_scheduleWatchdogTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnimating:0];
}

- (void)cancelWatchdogTimer
{
  watchdogTimer = [(PNPHandwritingEducationPanelController *)self watchdogTimer];
  [watchdogTimer invalidate];
}

- (void)educationControllerRequestedDismissal:(id)dismissal
{
  deviceType = [(PNPWelcomeController *)self deviceType];
  features = [(PNPWelcomeController *)self features];
  delegate = [(PNPWelcomeController *)self delegate];
  v8 = [PNPWelcomeController controllerWithType:9 buttonType:2 deviceType:deviceType features:features delegate:delegate];

  navigationController = [(PNPHandwritingEducationPanelController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)setIsAnimating:(BOOL)animating animated:(BOOL)animated
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    if (animated)
    {
      v8 = v4;
      v9 = v5;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__PNPHandwritingEducationPanelController_setIsAnimating_animated___block_invoke;
      v6[3] = &unk_279A0A100;
      v6[4] = self;
      animatingCopy = animating;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.15];
    }

    else
    {

      [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:?];
    }
  }
}

- (void)setUpForIsAnimating:(BOOL)animating
{
  animatingCopy = animating;
  if (animating)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  trayButton = [(PNPWelcomeController *)self trayButton];
  [trayButton setAlpha:v5];

  navigationController = [(PNPHandwritingEducationPanelController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setAlpha:v5];

  educationController = [(PNPHandwritingEducationPanelController *)self educationController];
  segmentedControl = [educationController segmentedControl];
  [segmentedControl setAlpha:v5];

  trayButton2 = [(PNPWelcomeController *)self trayButton];
  [trayButton2 setUserInteractionEnabled:!animatingCopy];

  navigationController2 = [(PNPHandwritingEducationPanelController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setUserInteractionEnabled:!animatingCopy];

  educationController2 = [(PNPHandwritingEducationPanelController *)self educationController];
  segmentedControl2 = [educationController2 segmentedControl];
  [segmentedControl2 setUserInteractionEnabled:!animatingCopy];
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (![(PNPHandwritingEducationPanelController *)self isAnimating])
  {
    educationController = [(PNPHandwritingEducationPanelController *)self educationController];
    [educationController cancelScheduledAnimations];

    v6.receiver = self;
    v6.super_class = PNPHandwritingEducationPanelController;
    [(PNPWelcomeController *)&v6 buttonPressed:pressedCopy];
  }
}

- (CGPoint)forcedContentOffset
{
  x = self->_forcedContentOffset.x;
  y = self->_forcedContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end