@interface PNPHandwritingEducationPanelController
+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
- (CGPoint)forcedContentOffset;
- (void)buttonPressed:(id)a3;
- (void)cancelWatchdogTimer;
- (void)dealloc;
- (void)educationControllerRequestedDismissal:(id)a3;
- (void)scheduleWatchdogTimer;
- (void)setIsAnimating:(BOOL)a3 animated:(BOOL)a4;
- (void)setUpForIsAnimating:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PNPHandwritingEducationPanelController

+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v9 = a6;
  v10 = [PNPHandwritingEducationPanelController alloc];
  v11 = +[PencilHandwritingEducationViewController localizedTitle];
  v12 = [(PNPHandwritingEducationPanelController *)v10 initWithTitle:v11 detailText:0 icon:0 contentLayout:3];

  [(PNPWelcomeController *)v12 setControllerType:a3 buttonType:a4 deviceType:a5 delegate:v9];

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
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [(PNPHandwritingEducationPanelController *)self view];
  [v4 setTintColor:v3];

  v5 = [(PNPHandwritingEducationPanelController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setTintColor:v3];

  v7 = [[PencilHandwritingEducationViewController alloc] initWithNibName:0 bundle:0];
  [(PNPHandwritingEducationPanelController *)self setEducationController:v7];

  v8 = [(PNPHandwritingEducationPanelController *)self educationController];
  [v8 setDelegate:self];

  v9 = [(PNPHandwritingEducationPanelController *)self educationController];
  [(PNPHandwritingEducationPanelController *)self addChildViewController:v9];

  v10 = [(PNPHandwritingEducationPanelController *)self educationController];
  v11 = [v10 view];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(PNPHandwritingEducationPanelController *)self contentView];
  [v12 addSubview:v11];
  v13 = [v11 leadingAnchor];
  v14 = [v12 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v11 topAnchor];
  v17 = [v12 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [v11 bottomAnchor];
  v20 = [v12 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [v11 trailingAnchor];
  v23 = [v12 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [(PNPHandwritingEducationPanelController *)self educationController];
  [(PNPHandwritingEducationPanelController *)self addChildViewController:v25];

  [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:[(PNPHandwritingEducationPanelController *)self isAnimating]];
  v26 = [(PNPHandwritingEducationPanelController *)self educationController];
  v27 = [(PNPHandwritingEducationPanelController *)self buttonTray];
  [v26 updateButtonTray:v27];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PNPHandwritingEducationPanelController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:a3];
  [(PNPHandwritingEducationPanelController *)self scheduleWatchdogTimer];
  [(PNPHandwritingEducationPanelController *)self setForcedContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)viewWillDisappear:(BOOL)a3
{
  [(PNPHandwritingEducationPanelController *)self cancelWatchdogTimer];
  [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:0];
  [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:0];
  v4 = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
  [v4 setActive:0];

  [(PNPHandwritingEducationPanelController *)self setForcedHeightLayoutConstraint:0];
}

- (void)viewDidLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PNPHandwritingEducationPanelController;
  [(OBBaseWelcomeController *)&v46 viewDidLayoutSubviews];
  v3 = [(PNPHandwritingEducationPanelController *)self educationController];
  v4 = [v3 view];
  v5 = [v4 superview];
  [v5 frame];
  if (v6 <= 0.0)
  {
  }

  else
  {
    v7 = [(PNPHandwritingEducationPanelController *)self didAdjustHeightForWidth];

    if (!v7)
    {
      [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:1];
      v8 = [(PNPHandwritingEducationPanelController *)self educationController];
      v9 = [v8 view];
      v10 = [(PNPHandwritingEducationPanelController *)self educationController];
      v11 = [v10 view];
      [v11 bounds];
      [v9 convertRect:0 toView:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [(PNPHandwritingEducationPanelController *)self educationController];
      [v18 calculateFittingHeightByTemporarilyAdjustingFrameForWidth:v17];
      v20 = v19;

      v21 = [(PNPHandwritingEducationPanelController *)self educationController];
      v22 = [v21 view];
      v23 = [v22 heightAnchor];
      v24 = [v23 constraintEqualToConstant:v20];
      [(PNPHandwritingEducationPanelController *)self setForcedHeightLayoutConstraint:v24];

      v25 = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
      [v25 setActive:1];

      v26 = [(PNPHandwritingEducationPanelController *)self buttonTray];
      v27 = [(PNPHandwritingEducationPanelController *)self buttonTray];
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
        v31 = [(PNPHandwritingEducationPanelController *)self headerView];
        v32 = [(PNPHandwritingEducationPanelController *)self headerView];
        [v32 bounds];
        [v31 convertRect:0 toView:?];
        v34 = v33;

        v35 = [(PNPHandwritingEducationPanelController *)self scrollView];
        v36 = [(PNPHandwritingEducationPanelController *)self scrollView];
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
    v45 = [(PNPHandwritingEducationPanelController *)self scrollView];
    [v45 setContentOffset:{v42, v44}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  [(PNPHandwritingEducationPanelController *)self setForcedContentOffset:a4, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(PNPHandwritingEducationPanelController *)self setDidAdjustHeightForWidth:0];
  v5 = [(PNPHandwritingEducationPanelController *)self forcedHeightLayoutConstraint];
  [v5 setActive:0];

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
  v2 = [(PNPHandwritingEducationPanelController *)self watchdogTimer];
  [v2 invalidate];
}

- (void)educationControllerRequestedDismissal:(id)a3
{
  v4 = [(PNPWelcomeController *)self deviceType];
  v5 = [(PNPWelcomeController *)self features];
  v6 = [(PNPWelcomeController *)self delegate];
  v8 = [PNPWelcomeController controllerWithType:9 buttonType:2 deviceType:v4 features:v5 delegate:v6];

  v7 = [(PNPHandwritingEducationPanelController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
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
      v6[2] = __66__PNPHandwritingEducationPanelController_setIsAnimating_animated___block_invoke;
      v6[3] = &unk_279A0A100;
      v6[4] = self;
      v7 = a3;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.15];
    }

    else
    {

      [(PNPHandwritingEducationPanelController *)self setUpForIsAnimating:?];
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

  v7 = [(PNPHandwritingEducationPanelController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setAlpha:v5];

  v9 = [(PNPHandwritingEducationPanelController *)self educationController];
  v10 = [v9 segmentedControl];
  [v10 setAlpha:v5];

  v11 = [(PNPWelcomeController *)self trayButton];
  [v11 setUserInteractionEnabled:!v3];

  v12 = [(PNPHandwritingEducationPanelController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 setUserInteractionEnabled:!v3];

  v15 = [(PNPHandwritingEducationPanelController *)self educationController];
  v14 = [v15 segmentedControl];
  [v14 setUserInteractionEnabled:!v3];
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  if (![(PNPHandwritingEducationPanelController *)self isAnimating])
  {
    v5 = [(PNPHandwritingEducationPanelController *)self educationController];
    [v5 cancelScheduledAnimations];

    v6.receiver = self;
    v6.super_class = PNPHandwritingEducationPanelController;
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