@interface PNPDoubleTapViewController
+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
- (BOOL)scratchPadViewIsPlayingAnimation:(id)a3;
- (void)eventSource:(id)a3 hadPencilDoubleTapped:(id)a4;
- (void)pencilInteractionDidTap:(id)a3;
- (void)scratchPadViewHadInteractionEvent:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PNPDoubleTapViewController

+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v9 = a6;
  v10 = [PNPDoubleTapViewController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"QUICK_SWAP_TITLE" value:&stru_286FDFDB8 table:0];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"QUICK_SWAP_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v15 = [(PNPWelcomeController *)v10 initWithTitle:v12 detailText:v14 icon:0];

  [(PNPWelcomeController *)v15 setControllerType:a3 buttonType:a4 deviceType:a5 delegate:v9];

  return v15;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = PNPDoubleTapViewController;
  [(OBBaseWelcomeController *)&v36 viewDidLoad];
  v3 = [(PNPDoubleTapViewController *)self contentView];
  v4 = objc_alloc_init(PNPWizardScratchpadView);
  [(PNPWizardScratchpadView *)v4 setDelegate:self];
  [(PNPWizardScratchpadView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  v5 = [(PNPWizardScratchpadView *)v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:448.0];
  [v6 setActive:1];

  v7 = [(PNPWizardScratchpadView *)v4 heightAnchor];
  v8 = [v7 constraintEqualToConstant:286.0];
  [v8 setActive:1];

  v9 = [(PNPWizardScratchpadView *)v4 topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(PNPWizardScratchpadView *)v4 centerXAnchor];
  v13 = [v3 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  [(PNPDoubleTapViewController *)self setScratchPadView:v4];
  v15 = [[PNPPencilView alloc] initWithVariant:0];
  [(PNPPencilView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v15];
  v16 = [(PNPPencilView *)v15 leadingAnchor];
  v17 = [(PNPWizardScratchpadView *)v4 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(PNPPencilView *)v15 trailingAnchor];
  v20 = [(PNPWizardScratchpadView *)v4 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(PNPPencilView *)v15 topAnchor];
  v23 = [(PNPWizardScratchpadView *)v4 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-20.0];
  [v24 setActive:1];

  v25 = [(PNPPencilView *)v15 heightAnchor];
  v26 = [v25 constraintEqualToConstant:100.0];
  [v26 setActive:1];

  v27 = [(PNPPencilView *)v15 bottomAnchor];
  v28 = [v3 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  [(PNPDoubleTapViewController *)self setPencilView:v15];
  v30 = objc_alloc_init(MEMORY[0x277D75820]);
  [(PNPDoubleTapViewController *)self setPencilInteraction:v30];

  v31 = [(PNPDoubleTapViewController *)self pencilInteraction];
  [v31 setDelegate:self];

  v32 = [(PNPDoubleTapViewController *)self view];
  v33 = [(PNPDoubleTapViewController *)self pencilInteraction];
  [v32 addInteraction:v33];

  v34 = objc_alloc_init(PNPQuickSwapEventSource);
  [(PNPDoubleTapViewController *)self setQuickSwapEventSource:v34];

  v35 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v35 setEventDestination:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PNPDoubleTapViewController;
  [(PNPDoubleTapViewController *)&v7 viewWillAppear:a3];
  v4 = [(PNPDoubleTapViewController *)self scratchPadView];
  [v4 prepareCanvasViews];

  v5 = [(PNPDoubleTapViewController *)self scratchPadView];
  [v5 setStep:1];

  v6 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v6 play];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PNPDoubleTapViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v4 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v4 stop];
}

- (void)pencilInteractionDidTap:(id)a3
{
  v4 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v4 stop];

  v5 = [(PNPDoubleTapViewController *)self pencilView];
  [v5 eventSource:0 hadPencilDoubleTapped:0];

  v6 = [(PNPDoubleTapViewController *)self scratchPadView];
  [v6 eventSource:0 hadPencilDoubleTapped:0];
}

- (void)eventSource:(id)a3 hadPencilDoubleTapped:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v8 stop];

  objc_initWeak(&location, self);
  v9 = [(PNPDoubleTapViewController *)self pencilView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PNPDoubleTapViewController_eventSource_hadPencilDoubleTapped___block_invoke;
  v10[3] = &unk_279A0A578;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v9 eventSource:0 hadPencilDoubleTapped:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __64__PNPDoubleTapViewController_eventSource_hadPencilDoubleTapped___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) animationsCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained scratchPadView];
    [v2 eventSource:0 hadPencilDoubleTapped:0];

    v3 = objc_alloc_init(PNPQuickSwapEventSource);
    [WeakRetained setQuickSwapEventSource:v3];

    v4 = [WeakRetained quickSwapEventSource];
    [v4 setEventDestination:WeakRetained];

    v5 = [WeakRetained quickSwapEventSource];
    [v5 play];
  }
}

- (void)scratchPadViewHadInteractionEvent:(id)a3
{
  [(PNPDoubleTapViewController *)self setAnimationsCancelled:1];
  v4 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [v4 stop];
}

- (BOOL)scratchPadViewIsPlayingAnimation:(id)a3
{
  v3 = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  v4 = [v3 isPlaying];

  return v4;
}

@end