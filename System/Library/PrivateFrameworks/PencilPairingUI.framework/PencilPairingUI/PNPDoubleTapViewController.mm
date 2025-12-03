@interface PNPDoubleTapViewController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (BOOL)scratchPadViewIsPlayingAnimation:(id)animation;
- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped;
- (void)pencilInteractionDidTap:(id)tap;
- (void)scratchPadViewHadInteractionEvent:(id)event;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PNPDoubleTapViewController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = [PNPDoubleTapViewController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"QUICK_SWAP_TITLE" value:&stru_286FDFDB8 table:0];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"QUICK_SWAP_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v15 = [(PNPWelcomeController *)v10 initWithTitle:v12 detailText:v14 icon:0];

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = PNPDoubleTapViewController;
  [(OBBaseWelcomeController *)&v36 viewDidLoad];
  contentView = [(PNPDoubleTapViewController *)self contentView];
  v4 = objc_alloc_init(PNPWizardScratchpadView);
  [(PNPWizardScratchpadView *)v4 setDelegate:self];
  [(PNPWizardScratchpadView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v4];
  widthAnchor = [(PNPWizardScratchpadView *)v4 widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:448.0];
  [v6 setActive:1];

  heightAnchor = [(PNPWizardScratchpadView *)v4 heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:286.0];
  [v8 setActive:1];

  topAnchor = [(PNPWizardScratchpadView *)v4 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  centerXAnchor = [(PNPWizardScratchpadView *)v4 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 setActive:1];

  [(PNPDoubleTapViewController *)self setScratchPadView:v4];
  v15 = [[PNPPencilView alloc] initWithVariant:0];
  [(PNPPencilView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v15];
  leadingAnchor = [(PNPPencilView *)v15 leadingAnchor];
  leadingAnchor2 = [(PNPWizardScratchpadView *)v4 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v18 setActive:1];

  trailingAnchor = [(PNPPencilView *)v15 trailingAnchor];
  trailingAnchor2 = [(PNPWizardScratchpadView *)v4 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 setActive:1];

  topAnchor3 = [(PNPPencilView *)v15 topAnchor];
  bottomAnchor = [(PNPWizardScratchpadView *)v4 bottomAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-20.0];
  [v24 setActive:1];

  heightAnchor2 = [(PNPPencilView *)v15 heightAnchor];
  v26 = [heightAnchor2 constraintEqualToConstant:100.0];
  [v26 setActive:1];

  bottomAnchor2 = [(PNPPencilView *)v15 bottomAnchor];
  bottomAnchor3 = [contentView bottomAnchor];
  v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v29 setActive:1];

  [(PNPDoubleTapViewController *)self setPencilView:v15];
  v30 = objc_alloc_init(MEMORY[0x277D75820]);
  [(PNPDoubleTapViewController *)self setPencilInteraction:v30];

  pencilInteraction = [(PNPDoubleTapViewController *)self pencilInteraction];
  [pencilInteraction setDelegate:self];

  view = [(PNPDoubleTapViewController *)self view];
  pencilInteraction2 = [(PNPDoubleTapViewController *)self pencilInteraction];
  [view addInteraction:pencilInteraction2];

  v34 = objc_alloc_init(PNPQuickSwapEventSource);
  [(PNPDoubleTapViewController *)self setQuickSwapEventSource:v34];

  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource setEventDestination:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PNPDoubleTapViewController;
  [(PNPDoubleTapViewController *)&v7 viewWillAppear:appear];
  scratchPadView = [(PNPDoubleTapViewController *)self scratchPadView];
  [scratchPadView prepareCanvasViews];

  scratchPadView2 = [(PNPDoubleTapViewController *)self scratchPadView];
  [scratchPadView2 setStep:1];

  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource play];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPDoubleTapViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource stop];
}

- (void)pencilInteractionDidTap:(id)tap
{
  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource stop];

  pencilView = [(PNPDoubleTapViewController *)self pencilView];
  [pencilView eventSource:0 hadPencilDoubleTapped:0];

  scratchPadView = [(PNPDoubleTapViewController *)self scratchPadView];
  [scratchPadView eventSource:0 hadPencilDoubleTapped:0];
}

- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped
{
  sourceCopy = source;
  tappedCopy = tapped;
  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource stop];

  objc_initWeak(&location, self);
  pencilView = [(PNPDoubleTapViewController *)self pencilView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PNPDoubleTapViewController_eventSource_hadPencilDoubleTapped___block_invoke;
  v10[3] = &unk_279A0A578;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [pencilView eventSource:0 hadPencilDoubleTapped:v10];

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

- (void)scratchPadViewHadInteractionEvent:(id)event
{
  [(PNPDoubleTapViewController *)self setAnimationsCancelled:1];
  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  [quickSwapEventSource stop];
}

- (BOOL)scratchPadViewIsPlayingAnimation:(id)animation
{
  quickSwapEventSource = [(PNPDoubleTapViewController *)self quickSwapEventSource];
  isPlaying = [quickSwapEventSource isPlaying];

  return isPlaying;
}

@end