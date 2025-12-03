@interface PNPEducationPanelController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (CGPoint)forcedContentOffset;
- (void)buttonPressed:(id)pressed;
- (void)cancelWatchdogTimer;
- (void)dealloc;
- (void)scheduleWatchdogTimer;
- (void)setIsAnimating:(BOOL)animating animated:(BOOL)animated;
- (void)setUpForIsAnimating:(BOOL)animating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PNPEducationPanelController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v11 = [self bundleImageNamed:@"welcome_scribble"];
  v12 = [PNPEducationPanelController alloc];
  v13 = +[PencilEducationViewController localizedTitle];
  v14 = [(PNPWelcomeController *)v12 initWithTitle:v13 detailText:0 icon:v11];

  [(PNPWelcomeController *)v14 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v14;
}

- (void)dealloc
{
  [(NSTimer *)self->_watchdogTimer invalidate];
  v3.receiver = self;
  v3.super_class = PNPEducationPanelController;
  [(PNPEducationPanelController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = PNPEducationPanelController;
  [(OBBaseWelcomeController *)&v22 viewDidLoad];
  v3 = [[PencilEducationViewController alloc] initWithNibName:0 bundle:0];
  [(PNPEducationPanelController *)self setEducationController:v3];

  educationController = [(PNPEducationPanelController *)self educationController];
  [educationController setDelegate:self];

  educationController2 = [(PNPEducationPanelController *)self educationController];
  [(PNPEducationPanelController *)self addChildViewController:educationController2];

  educationController3 = [(PNPEducationPanelController *)self educationController];
  view = [educationController3 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PNPEducationPanelController *)self contentView];
  [contentView addSubview:view];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v11 setActive:1];

  topAnchor = [view topAnchor];
  topAnchor2 = [contentView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  educationController4 = [(PNPEducationPanelController *)self educationController];
  [educationController4 didMoveToParentViewController:self];

  [(PNPEducationPanelController *)self setUpForIsAnimating:[(PNPEducationPanelController *)self isAnimating]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PNPEducationPanelController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  [(PNPEducationPanelController *)self scheduleWatchdogTimer];
  [(PNPEducationPanelController *)self setForcedContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  [(PNPEducationPanelController *)self cancelWatchdogTimer];
  [(PNPEducationPanelController *)self setUpForIsAnimating:0];
  [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:0];
  forcedHeightLayoutConstraint = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
  [forcedHeightLayoutConstraint setActive:0];

  [(PNPEducationPanelController *)self setForcedHeightLayoutConstraint:0];

  [(PNPEducationPanelController *)self set_shouldInlineButtontray:0];
}

- (void)viewDidLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PNPEducationPanelController;
  [(OBBaseWelcomeController *)&v46 viewDidLayoutSubviews];
  educationController = [(PNPEducationPanelController *)self educationController];
  view = [educationController view];
  superview = [view superview];
  [superview frame];
  if (v6 <= 0.0)
  {
  }

  else
  {
    didAdjustHeightForWidth = [(PNPEducationPanelController *)self didAdjustHeightForWidth];

    if (!didAdjustHeightForWidth)
    {
      [(PNPEducationPanelController *)self set_shouldInlineButtontray:0];
      [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:1];
      educationController2 = [(PNPEducationPanelController *)self educationController];
      view2 = [educationController2 view];
      educationController3 = [(PNPEducationPanelController *)self educationController];
      view3 = [educationController3 view];
      [view3 bounds];
      [view2 convertRect:0 toView:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      educationController4 = [(PNPEducationPanelController *)self educationController];
      [educationController4 calculateFittingHeightByTemporarilyAdjustingFrameForWidth:v17];
      v20 = v19;

      educationController5 = [(PNPEducationPanelController *)self educationController];
      view4 = [educationController5 view];
      heightAnchor = [view4 heightAnchor];
      v24 = [heightAnchor constraintEqualToConstant:v20];
      [(PNPEducationPanelController *)self setForcedHeightLayoutConstraint:v24];

      forcedHeightLayoutConstraint = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
      [forcedHeightLayoutConstraint setActive:1];

      buttonTray = [(PNPEducationPanelController *)self buttonTray];
      buttonTray2 = [(PNPEducationPanelController *)self buttonTray];
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
        [(PNPEducationPanelController *)self set_shouldInlineButtontray:1];
        headerView = [(PNPEducationPanelController *)self headerView];
        headerView2 = [(PNPEducationPanelController *)self headerView];
        [headerView2 bounds];
        [headerView convertRect:0 toView:?];
        v34 = v33;

        scrollView = [(PNPEducationPanelController *)self scrollView];
        scrollView2 = [(PNPEducationPanelController *)self scrollView];
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

        [(PNPEducationPanelController *)self setForcedContentOffset:0.0, v39];
      }
    }
  }

  [(PNPEducationPanelController *)self forcedContentOffset];
  if (v40 > 0.0)
  {
    [(PNPEducationPanelController *)self forcedContentOffset];
    v42 = v41;
    v44 = v43;
    scrollView3 = [(PNPEducationPanelController *)self scrollView];
    [scrollView3 setContentOffset:{v42, v44}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  [(PNPEducationPanelController *)self setForcedContentOffset:coordinator, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:0];
  forcedHeightLayoutConstraint = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
  [forcedHeightLayoutConstraint setActive:0];

  [(PNPEducationPanelController *)self setForcedHeightLayoutConstraint:0];

  [(PNPEducationPanelController *)self set_shouldInlineButtontray:0];
}

- (void)scheduleWatchdogTimer
{
  [(PNPEducationPanelController *)self cancelWatchdogTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __52__PNPEducationPanelController_scheduleWatchdogTimer__block_invoke;
  v8 = &unk_279A0A0D8;
  objc_copyWeak(&v9, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:5.0];
  [(PNPEducationPanelController *)self setWatchdogTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__PNPEducationPanelController_scheduleWatchdogTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnimating:0];
}

- (void)cancelWatchdogTimer
{
  watchdogTimer = [(PNPEducationPanelController *)self watchdogTimer];
  [watchdogTimer invalidate];
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
      v6[2] = __55__PNPEducationPanelController_setIsAnimating_animated___block_invoke;
      v6[3] = &unk_279A0A100;
      v6[4] = self;
      animatingCopy = animating;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.15];
    }

    else
    {

      [(PNPEducationPanelController *)self setUpForIsAnimating:?];
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

  navigationController = [(PNPEducationPanelController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setAlpha:v5];

  educationController = [(PNPEducationPanelController *)self educationController];
  segmentedControl = [educationController segmentedControl];
  [segmentedControl setAlpha:v5];

  trayButton2 = [(PNPWelcomeController *)self trayButton];
  [trayButton2 setUserInteractionEnabled:!animatingCopy];

  navigationController2 = [(PNPEducationPanelController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setUserInteractionEnabled:!animatingCopy];

  educationController2 = [(PNPEducationPanelController *)self educationController];
  segmentedControl2 = [educationController2 segmentedControl];
  [segmentedControl2 setUserInteractionEnabled:!animatingCopy];
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (![(PNPEducationPanelController *)self isAnimating])
  {
    educationController = [(PNPEducationPanelController *)self educationController];
    [educationController cancelScheduledAnimations];

    v6.receiver = self;
    v6.super_class = PNPEducationPanelController;
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