@interface PNPEducationPanelController
+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
- (CGPoint)forcedContentOffset;
- (void)buttonPressed:(id)a3;
- (void)cancelWatchdogTimer;
- (void)dealloc;
- (void)scheduleWatchdogTimer;
- (void)setIsAnimating:(BOOL)a3 animated:(BOOL)a4;
- (void)setUpForIsAnimating:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PNPEducationPanelController

+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = [a1 bundleImageNamed:@"welcome_scribble"];
  v12 = [PNPEducationPanelController alloc];
  v13 = +[PencilEducationViewController localizedTitle];
  v14 = [(PNPWelcomeController *)v12 initWithTitle:v13 detailText:0 icon:v11];

  [(PNPWelcomeController *)v14 setControllerType:a3 buttonType:a4 deviceType:a5 delegate:v10];

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

  v4 = [(PNPEducationPanelController *)self educationController];
  [v4 setDelegate:self];

  v5 = [(PNPEducationPanelController *)self educationController];
  [(PNPEducationPanelController *)self addChildViewController:v5];

  v6 = [(PNPEducationPanelController *)self educationController];
  v7 = [v6 view];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(PNPEducationPanelController *)self contentView];
  [v8 addSubview:v7];
  v9 = [v7 leadingAnchor];
  v10 = [v8 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v7 topAnchor];
  v13 = [v8 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v7 bottomAnchor];
  v16 = [v8 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v7 trailingAnchor];
  v19 = [v8 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(PNPEducationPanelController *)self educationController];
  [v21 didMoveToParentViewController:self];

  [(PNPEducationPanelController *)self setUpForIsAnimating:[(PNPEducationPanelController *)self isAnimating]];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PNPEducationPanelController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:a3];
  [(PNPEducationPanelController *)self scheduleWatchdogTimer];
  [(PNPEducationPanelController *)self setForcedContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)viewWillDisappear:(BOOL)a3
{
  [(PNPEducationPanelController *)self cancelWatchdogTimer];
  [(PNPEducationPanelController *)self setUpForIsAnimating:0];
  [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:0];
  v4 = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
  [v4 setActive:0];

  [(PNPEducationPanelController *)self setForcedHeightLayoutConstraint:0];

  [(PNPEducationPanelController *)self set_shouldInlineButtontray:0];
}

- (void)viewDidLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PNPEducationPanelController;
  [(OBBaseWelcomeController *)&v46 viewDidLayoutSubviews];
  v3 = [(PNPEducationPanelController *)self educationController];
  v4 = [v3 view];
  v5 = [v4 superview];
  [v5 frame];
  if (v6 <= 0.0)
  {
  }

  else
  {
    v7 = [(PNPEducationPanelController *)self didAdjustHeightForWidth];

    if (!v7)
    {
      [(PNPEducationPanelController *)self set_shouldInlineButtontray:0];
      [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:1];
      v8 = [(PNPEducationPanelController *)self educationController];
      v9 = [v8 view];
      v10 = [(PNPEducationPanelController *)self educationController];
      v11 = [v10 view];
      [v11 bounds];
      [v9 convertRect:0 toView:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [(PNPEducationPanelController *)self educationController];
      [v18 calculateFittingHeightByTemporarilyAdjustingFrameForWidth:v17];
      v20 = v19;

      v21 = [(PNPEducationPanelController *)self educationController];
      v22 = [v21 view];
      v23 = [v22 heightAnchor];
      v24 = [v23 constraintEqualToConstant:v20];
      [(PNPEducationPanelController *)self setForcedHeightLayoutConstraint:v24];

      v25 = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
      [v25 setActive:1];

      v26 = [(PNPEducationPanelController *)self buttonTray];
      v27 = [(PNPEducationPanelController *)self buttonTray];
      [v27 bounds];
      [v26 convertRect:0 toView:?];
      v29 = v28;

      v47.origin.x = v13;
      v47.origin.y = v15;
      v47.size.width = v17;
      v47.size.height = v20;
      v30 = CGRectGetMaxY(v47) - v29;
      if (v30 > 0.0)
      {
        [(PNPEducationPanelController *)self set_shouldInlineButtontray:1];
        v31 = [(PNPEducationPanelController *)self headerView];
        v32 = [(PNPEducationPanelController *)self headerView];
        [v32 bounds];
        [v31 convertRect:0 toView:?];
        v34 = v33;

        v35 = [(PNPEducationPanelController *)self scrollView];
        v36 = [(PNPEducationPanelController *)self scrollView];
        [v36 bounds];
        [v35 convertRect:0 toView:?];
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
    v45 = [(PNPEducationPanelController *)self scrollView];
    [v45 setContentOffset:{v42, v44}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  [(PNPEducationPanelController *)self setForcedContentOffset:a4, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(PNPEducationPanelController *)self setDidAdjustHeightForWidth:0];
  v5 = [(PNPEducationPanelController *)self forcedHeightLayoutConstraint];
  [v5 setActive:0];

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
  v2 = [(PNPEducationPanelController *)self watchdogTimer];
  [v2 invalidate];
}

- (void)setIsAnimating:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isAnimating != a3)
  {
    self->_isAnimating = a3;
    if (a4)
    {
      v8 = v4;
      v9 = v5;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __55__PNPEducationPanelController_setIsAnimating_animated___block_invoke;
      v6[3] = &unk_279A0A100;
      v6[4] = self;
      v7 = a3;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.15];
    }

    else
    {

      [(PNPEducationPanelController *)self setUpForIsAnimating:?];
    }
  }
}

- (void)setUpForIsAnimating:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(PNPWelcomeController *)self trayButton];
  [v6 setAlpha:v5];

  v7 = [(PNPEducationPanelController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setAlpha:v5];

  v9 = [(PNPEducationPanelController *)self educationController];
  v10 = [v9 segmentedControl];
  [v10 setAlpha:v5];

  v11 = [(PNPWelcomeController *)self trayButton];
  [v11 setUserInteractionEnabled:!v3];

  v12 = [(PNPEducationPanelController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 setUserInteractionEnabled:!v3];

  v15 = [(PNPEducationPanelController *)self educationController];
  v14 = [v15 segmentedControl];
  [v14 setUserInteractionEnabled:!v3];
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  if (![(PNPEducationPanelController *)self isAnimating])
  {
    v5 = [(PNPEducationPanelController *)self educationController];
    [v5 cancelScheduledAnimations];

    v6.receiver = self;
    v6.super_class = PNPEducationPanelController;
    [(PNPWelcomeController *)&v6 buttonPressed:v4];
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