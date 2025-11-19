@interface PencilHandwritingEducationElementViewController
- (BOOL)isPlayerHidden;
- (PencilHandwritingEducationElementViewController)initWithElementData:(id)a3;
- (PencilHandwritingEducationElementViewControllerDelegate)delegate;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)a3;
- (id)createElementButtonWithTitle:(id)a3 image:(id)a4;
- (int64_t)type;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)beginAnimation;
- (void)cancelAnimation;
- (void)canvasView:(id)a3 didRefineStrokes:(id)a4 withNewStrokes:(id)a5;
- (void)canvasViewDidBeginUsingTool:(id)a3;
- (void)canvasViewDrawingDidChange:(id)a3;
- (void)clearButtonPressed:(id)a3;
- (void)clearCanvas;
- (void)clearTrackedStrokes;
- (void)dealloc;
- (void)hidePlayer:(BOOL)a3;
- (void)initCanvasMaskLayer;
- (void)initCanvasView;
- (void)initClearButton;
- (void)initPlayer;
- (void)initReplayButton;
- (void)initSeeOriginalButton;
- (void)initSeeRefinedButton;
- (void)initStackView;
- (void)initTextLine;
- (void)initTitleLabel;
- (void)notNowPressed:(id)a3;
- (void)playerItemDidFinish:(id)a3;
- (void)processVideoRequest:(id)a3;
- (void)reloadStrings;
- (void)replayButtonPressed:(id)a3;
- (void)seeOriginalButtonPressed:(id)a3;
- (void)seeRefinedButtonPressed:(id)a3;
- (void)setButton:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5;
- (void)showPlayer:(BOOL)a3;
- (void)startObservingNotifications;
- (void)stopPlayer;
- (void)turnOnPressed:(id)a3;
- (void)updateButtonTray:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PencilHandwritingEducationElementViewController

- (PencilHandwritingEducationElementViewController)initWithElementData:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PencilHandwritingEducationElementViewController;
  v6 = [(PencilHandwritingEducationElementViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementData, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    nonRefinableStrokes = v7->_nonRefinableStrokes;
    v7->_nonRefinableStrokes = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    originalStrokes = v7->_originalStrokes;
    v7->_originalStrokes = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    refinedStrokes = v7->_refinedStrokes;
    v7->_refinedStrokes = v12;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v4 dealloc];
}

- (void)initStackView
{
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:3];
  [v3 setAxis:1];
  [v3 setSpacing:15.0];
  [(PencilHandwritingEducationElementViewController *)self setStackView:v3];
}

- (void)initTitleLabel
{
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76918];
  v5 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v7 setFont:v6];
  [(PencilHandwritingEducationElementViewController *)self setTitleLabel:v7];
}

- (void)initCanvasView
{
  v5 = objc_alloc_init(MEMORY[0x277CD95F0]);
  v3 = [v5 _tiledView];
  [v3 setIsAutoRefineEnabled:1];

  v4 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setDelegate:self];
  [(PencilHandwritingEducationElementViewController *)self setCanvasView:v5];
}

- (void)initTextLine
{
  v4 = objc_alloc_init(TextLineLayer);
  [(TextLineLayer *)v4 setLineWidth:1.0];
  [(TextLineLayer *)v4 setCenterOffset:12.5];
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  [(TextLineLayer *)v4 setLineColor:v3];

  [(TextLineLayer *)v4 setZPosition:-1.0];
  [(TextLineLayer *)v4 setInsets:0.0, 24.0, 0.0, 24.0];
  [(PencilHandwritingEducationElementViewController *)self setTextLineLayer:v4];
}

- (void)initPlayer
{
  v3 = PencilPairingUIBundle();
  v4 = [v3 URLForResource:@"autoRefineSample" withExtension:@"mov"];

  v5 = [MEMORY[0x277CE65B0] playerItemWithURL:v4];
  v6 = [MEMORY[0x277CE6598] playerWithPlayerItem:v5];
  v7 = [MEMORY[0x277CB83F8] auxiliarySession];
  [v7 setParticipatesInNowPlayingAppPolicy:0 error:0];
  [v7 setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];
  [v6 setAudioSession:v7];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277CE6658];
  v9 = [v6 currentItem];
  v10 = [v9 asset];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __61__PencilHandwritingEducationElementViewController_initPlayer__block_invoke;
  v21 = &unk_279A0A768;
  objc_copyWeak(&v22, &location);
  v11 = [v8 videoCompositionWithAsset:v10 applyingCIFiltersWithHandler:&v18];

  v12 = [v6 currentItem];
  [v12 setVideoComposition:v11];

  [(PencilHandwritingEducationElementViewController *)self setPlayer:v6];
  v13 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v6];
  [v13 setVideoGravity:*MEMORY[0x277CE5DD0]];
  v14 = [MEMORY[0x277D75348] clearColor];
  [v13 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  v15 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  v16 = [v15 userInterfaceStyle];

  if (v16 == 2)
  {
    v17 = @"screenBlendMode";
  }

  else
  {
    v17 = @"multiplyBlendMode";
  }

  [v13 setCompositingFilter:v17];
  [(PencilHandwritingEducationElementViewController *)self setPlayerLayer:v13];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __61__PencilHandwritingEducationElementViewController_initPlayer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processVideoRequest:v3];
}

- (void)initCanvasMaskLayer
{
  v3 = objc_opt_new();
  [v3 setCornerRadius:10.0];
  [v3 setBlurRadius:8.0];
  [v3 setInsets:{5.0, 5.0, 50.0, 24.0}];
  [(PencilHandwritingEducationElementViewController *)self setCanvasMaskLayer:v3];
}

- (void)initReplayButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPLAY_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.counterclockwise"];
  v6 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:v5];

  [v6 setHidden:1];
  [v6 addTarget:self action:sel_replayButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setReplayButton:v6];
}

- (void)initSeeRefinedButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEE_REFINED_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:0];

  [v5 setHidden:1];
  [v5 addTarget:self action:sel_seeRefinedButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setSeeRefinedButton:v5];
}

- (void)initSeeOriginalButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEE_ORIGINAL_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:0];

  [v5 setHidden:1];
  [v5 addTarget:self action:sel_seeOriginalButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setSeeOriginalButton:v5];
}

- (id)createElementButtonWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D75220]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(PencilHandwritingEducationElementViewController *)self view];
  v10 = [v9 tintColor];

  v11 = [v8 imageView];
  [v11 setTintColor:v10];

  [v8 setTitleColor:v10 forState:0];
  if (v6)
  {
    [v8 setTitle:v6 forState:0];
  }

  if (v7)
  {
    [v8 setImage:v7 forState:0];
  }

  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
  v13 = [v8 titleLabel];
  [v13 setFont:v12];

  if (v7)
  {
    v14 = [MEMORY[0x277D755D0] configurationWithFont:v12 scale:-1];
    v15 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
    if ([v15 layoutDirection] == 1)
    {
      v16 = 7.0;
    }

    else
    {
      v16 = -7.0;
    }

    [v8 setImageEdgeInsets:{0.0, v16, 0.0, 0.0}];
    [v8 setPreferredSymbolConfiguration:v14 forImageInState:0];
  }

  return v8;
}

- (void)initClearButton
{
  v8 = objc_opt_new();
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
  [v8 setImage:v3 forState:0];

  [v8 setHidden:1];
  v4 = [v8 imageView];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  [v4 setTintColor:v5];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
  v6 = [v8 widthAnchor];
  v7 = [v6 constraintEqualToConstant:24.0];
  [v7 setActive:1];

  [(PencilHandwritingEducationElementViewController *)self setClearButton:v8];
}

- (void)startObservingNotifications
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277CE60C0];
  v4 = [(PencilHandwritingEducationElementViewController *)self player];
  v5 = [v4 currentItem];
  [v6 addObserver:self selector:sel_playerItemDidFinish_ name:v3 object:v5];

  [v6 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];
  [v6 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
}

- (void)viewDidLoad
{
  v93 = *MEMORY[0x277D85DE8];
  v90.receiver = self;
  v90.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v90 viewDidLoad];
  [(PencilHandwritingEducationElementViewController *)self initStackView];
  [(PencilHandwritingEducationElementViewController *)self initTitleLabel];
  [(PencilHandwritingEducationElementViewController *)self initCanvasView];
  [(PencilHandwritingEducationElementViewController *)self initTextLine];
  [(PencilHandwritingEducationElementViewController *)self initPlayer];
  [(PencilHandwritingEducationElementViewController *)self initCanvasMaskLayer];
  [(PencilHandwritingEducationElementViewController *)self initReplayButton];
  [(PencilHandwritingEducationElementViewController *)self initSeeRefinedButton];
  [(PencilHandwritingEducationElementViewController *)self initSeeOriginalButton];
  [(PencilHandwritingEducationElementViewController *)self initClearButton];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:5.0];
  [v5 setActive:1];

  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintGreaterThanOrEqualToConstant:20.0];
  [v8 setActive:1];

  v9 = [(PencilHandwritingEducationElementViewController *)self stackView];
  v10 = [(PencilHandwritingEducationElementViewController *)self titleLabel];
  v11 = [(PencilHandwritingEducationElementViewController *)self canvasView];
  [v9 addArrangedSubview:v3];
  v82 = v10;
  [v9 addArrangedSubview:v10];
  [v9 addArrangedSubview:v11];
  [v9 addArrangedSubview:v6];
  v12 = [(PencilHandwritingEducationElementViewController *)self view];
  [v12 addSubview:v9];

  v13 = [v9 leadingAnchor];
  v14 = [(PencilHandwritingEducationElementViewController *)self view];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [v9 trailingAnchor];
  v18 = [(PencilHandwritingEducationElementViewController *)self view];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v9 topAnchor];
  v22 = [(PencilHandwritingEducationElementViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v9 bottomAnchor];
  v26 = [(PencilHandwritingEducationElementViewController *)self view];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  LODWORD(v29) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v29];
  v84 = v3;
  v30 = [v3 widthAnchor];
  v31 = [v9 widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];
  [v32 setActive:1];

  v83 = v6;
  v33 = [v6 widthAnchor];
  v34 = [v9 widthAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 multiplier:1.0];
  [v35 setActive:1];

  v36 = [v11 heightAnchor];
  v37 = [v36 constraintEqualToConstant:250.0];
  [v37 setActive:1];

  v38 = [v11 widthAnchor];
  v85 = v9;
  v39 = [v9 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  LODWORD(v41) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v42];
  v43 = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  v44 = [v11 layer];
  [v44 bounds];
  [v43 setFrame:?];

  v45 = [(PencilHandwritingEducationElementViewController *)self view];
  v46 = [v45 layer];
  [v46 insertSublayer:v43 atIndex:0];

  v47 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v48 = [(PencilHandwritingEducationElementViewController *)self view];
  v49 = [v48 layer];
  v80 = v47;
  v81 = v43;
  [v49 insertSublayer:v47 above:v43];

  v50 = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  v51 = [v11 layer];
  [v51 bounds];
  [v50 setFrame:?];

  v52 = v11;
  v53 = [v11 layer];
  v79 = v50;
  [v53 setMask:v50];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v54 = [(PencilHandwritingEducationElementViewController *)self replayButton];
  v91[0] = v54;
  v55 = [(PencilHandwritingEducationElementViewController *)self seeOriginalButton];
  v91[1] = v55;
  v56 = self;
  v57 = [(PencilHandwritingEducationElementViewController *)self seeRefinedButton];
  v91[2] = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

  v59 = [v58 countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v87;
    do
    {
      v62 = 0;
      do
      {
        if (*v87 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v86 + 1) + 8 * v62);
        v64 = [(PencilHandwritingEducationElementViewController *)v56 view];
        [v64 addSubview:v63];

        v65 = [v63 topAnchor];
        v66 = [v52 centerYAnchor];
        v67 = [v65 constraintEqualToAnchor:v66 constant:31.5];
        [v67 setActive:1];

        v68 = [v63 centerXAnchor];
        v69 = [v85 centerXAnchor];
        v70 = [v68 constraintEqualToAnchor:v69];
        [v70 setActive:1];

        ++v62;
      }

      while (v60 != v62);
      v60 = [v58 countByEnumeratingWithState:&v86 objects:v92 count:16];
    }

    while (v60);
  }

  v71 = [(PencilHandwritingEducationElementViewController *)v56 clearButton];
  v72 = [(PencilHandwritingEducationElementViewController *)v56 view];
  [v72 addSubview:v71];

  v73 = [v71 rightAnchor];
  v74 = [v52 rightAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-24.0];
  [v75 setActive:1];

  v76 = [v71 centerYAnchor];
  v77 = [v52 centerYAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:-11.5];
  [v78 setActive:1];

  [(PencilHandwritingEducationElementViewController *)v56 reloadStrings];
  [(PencilHandwritingEducationElementViewController *)v56 startObservingNotifications];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v4 viewWillAppear:a3];
  if (![(PencilHandwritingEducationElementViewController *)self didRunInitialAppearActions]|| [(PencilHandwritingEducationElementViewController *)self didDisappear])
  {
    [(PencilHandwritingEducationElementViewController *)self setDidRunInitialAppearActions:1];
    [(PencilHandwritingEducationElementViewController *)self setDidDisappear:0];
    [(PencilHandwritingEducationElementViewController *)self reloadStrings];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v8 viewDidAppear:a3];
  v4 = [(PencilHandwritingEducationElementViewController *)self delegate];
  [v4 elementControllerDidAppear:self];

  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v5 = [(PencilHandwritingEducationElementViewController *)self player];
    [v5 play];
  }

  v6 = objc_alloc_init(MEMORY[0x277D75820]);
  v7 = [(PencilHandwritingEducationElementViewController *)self view];
  [v7 addInteraction:v6];

  [v6 setDelegate:self];
  [(PencilHandwritingEducationElementViewController *)self setPencilInteraction:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v5 viewWillDisappear:0];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v4 = [(PencilHandwritingEducationElementViewController *)self player];
    [v4 pause];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v7 viewDidDisappear:a3];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v4 = [(PencilHandwritingEducationElementViewController *)self player];
    [v4 pause];
  }

  [(PencilHandwritingEducationElementViewController *)self setDidDisappear:1];
  v5 = [(PencilHandwritingEducationElementViewController *)self view];
  v6 = [(PencilHandwritingEducationElementViewController *)self pencilInteraction];
  [v5 removeInteraction:v6];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v22 viewDidLayoutSubviews];
  v3 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v4 = [(PencilHandwritingEducationElementViewController *)self canvasView];
  [v4 bounds];
  [v4 setContentSize:{v5, v6}];
  v7 = [(PencilHandwritingEducationElementViewController *)self view];
  [v4 bounds];
  [v7 convertRect:v4 fromView:?];
  [v3 setFrame:?];

  [v3 setNeedsDisplay];
  v8 = [(PencilHandwritingEducationElementViewController *)self view];
  [v4 bounds];
  [v8 convertRect:v4 fromView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  [v18 setNeedsDisplay];

  v19 = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  v20 = [v4 layer];
  [v20 bounds];
  [v19 setFrame:?];

  v21 = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  [v21 setNeedsDisplay];
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)a3
{
  v5 = [(PencilHandwritingEducationElementViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PencilHandwritingEducationElementViewController *)self view];
  [v14 setFrame:{v7, v9, a3, v13}];

  v15 = [(PencilHandwritingEducationElementViewController *)self view];
  [v15 layoutIfNeeded];

  v16 = [(PencilHandwritingEducationElementViewController *)self stackView];
  [v16 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v18 = v17;

  v19 = [(PencilHandwritingEducationElementViewController *)self view];
  [v19 setFrame:{v7, v9, v11, v13}];

  return v18;
}

- (void)processVideoRequest:(id)a3
{
  v4 = a3;
  v22 = [v4 sourceImage];
  v5 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = MEMORY[0x277CBFAF0];
  if (v6 == 2)
  {
    v8 = [MEMORY[0x277CBF750] colorInvertFilter];
    [v8 setValue:v22 forKey:*v7];
    v9 = [v8 outputImage];

    v22 = v9;
  }

  v10 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  if ([v10 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277CBF750] lightenBlendModeFilter];
  }

  else
  {
    [MEMORY[0x277CBF750] multiplyBlendModeFilter];
  }
  v11 = ;

  v12 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  if ([v12 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v13 = ;

  [v22 extent];
  v15 = v14;
  v17 = v16;
  v24.width = v14;
  v24.height = v16;
  UIGraphicsBeginImageContext(v24);
  [v13 setFill];
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v15;
  v25.size.height = v17;
  UIRectFill(v25);
  v18 = MEMORY[0x277CBF758];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  v20 = [v18 imageWithCGImage:{objc_msgSend(v19, "CGImage")}];

  UIGraphicsEndImageContext();
  [v11 setValue:v22 forKey:*v7];
  [v11 setValue:v20 forKey:*MEMORY[0x277CBFAB8]];
  v21 = [v11 outputImage];
  [v4 finishWithImage:v21 context:0];
}

- (void)replayButtonPressed:(id)a3
{
  [(PencilHandwritingEducationElementViewController *)self reloadStrings];
  [(PencilHandwritingEducationElementViewController *)self clearCanvas];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_replayButton hidden:1 animated:1];
  v4 = [(PencilHandwritingEducationElementViewController *)self player];
  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  [v4 seekToTime:&v5];
  [(PencilHandwritingEducationElementViewController *)self showPlayer:0];
  [v4 play];
}

- (void)seeRefinedButtonPressed:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_refinedStrokes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addNewStroke:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_nonRefinableStrokes;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v4 addNewStroke:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(PKCanvasView *)self->_canvasView setDrawing:v4];
  [(PKCanvasView *)self->_canvasView setNeedsDisplay];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:0 animated:1];
}

- (void)seeOriginalButtonPressed:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_originalStrokes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addNewStroke:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_nonRefinableStrokes;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v4 addNewStroke:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(PKCanvasView *)self->_canvasView setDrawing:v4];
  [(PKCanvasView *)self->_canvasView setNeedsDisplay];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:0 animated:1];
}

- (void)clearButtonPressed:(id)a3
{
  [(PencilHandwritingEducationElementViewController *)self clearCanvas];
  [(PencilHandwritingEducationElementViewController *)self clearTrackedStrokes];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    [(PencilHandwritingEducationElementViewController *)self stopPlayer];
    [(PencilHandwritingEducationElementViewController *)self hidePlayer:1];
  }

  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  replayButton = self->_replayButton;

  [(PencilHandwritingEducationElementViewController *)self setButton:replayButton hidden:0 animated:1];
}

- (void)clearTrackedStrokes
{
  [(NSMutableSet *)self->_originalStrokes removeAllObjects];
  [(NSMutableSet *)self->_refinedStrokes removeAllObjects];
  nonRefinableStrokes = self->_nonRefinableStrokes;

  [(NSMutableSet *)nonRefinableStrokes removeAllObjects];
}

- (void)updateButtonTray:(id)a3
{
  v12 = a3;
  [v12 setHidden:1];
  [v12 removeAllButtons];
  v4 = [(PencilHandwritingEducationElementViewController *)self elementData];
  v5 = [v4 type];

  if (!v5)
  {
    v6 = [MEMORY[0x277D37618] boldButton];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUTO_REFINE_TURN_ON_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
    [v6 setTitle:v8 forState:0];

    [v6 addTarget:self action:sel_turnOnPressed_ forControlEvents:64];
    [v12 addButton:v6];
    v9 = [MEMORY[0x277D37650] linkButton];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AUTO_REFINE_NOT_NOW_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
    [v9 setTitle:v11 forState:0];

    [v9 addTarget:self action:sel_notNowPressed_ forControlEvents:64];
    [v12 addButton:v9];
    [v12 setHidden:0];
  }
}

- (void)turnOnPressed:(id)a3
{
  v4 = [(PencilHandwritingEducationElementViewController *)self elementData];
  v5 = [v4 type];

  if (!v5)
  {
    v6 = +[PencilSettings sharedPencilSettings];
    [v6 setAutoRefineEnabled:1];

    [(PencilHandwritingEducationElementViewController *)self setDidEnableAutoRefine:1];
    v7 = [(PencilHandwritingEducationElementViewController *)self delegate];
    [v7 elementControllerShouldDismiss:self];
  }
}

- (void)notNowPressed:(id)a3
{
  v4 = [(PencilHandwritingEducationElementViewController *)self elementData];
  v5 = [v4 type];

  if (!v5)
  {
    v6 = +[PencilSettings sharedPencilSettings];
    [v6 setAutoRefineEnabled:0];

    v7 = [(PencilHandwritingEducationElementViewController *)self delegate];
    [v7 elementControllerShouldDismiss:self];
  }
}

- (void)reloadStrings
{
  v5 = [(PencilHandwritingEducationElementViewController *)self elementData];
  v3 = [v5 title];
  v4 = [(PencilHandwritingEducationElementViewController *)self titleLabel];
  [v4 setAttributedText:v3];
}

- (void)clearCanvas
{
  v3 = [(PencilHandwritingEducationElementViewController *)self canvasView];
  v2 = objc_opt_new();
  [v3 setDrawing:v2];

  [v3 setNeedsDisplay];
}

- (int64_t)type
{
  v2 = [(PencilHandwritingEducationElementViewController *)self elementData];
  v3 = [v2 type];

  return v3;
}

- (void)cancelAnimation
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v3 = [(PencilHandwritingEducationElementViewController *)self player];
    [v3 pause];

    v4 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
    [v4 setHidden:1];
  }
}

- (void)beginAnimation
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v3 = [(PencilHandwritingEducationElementViewController *)self player];
    [v3 play];
  }
}

- (BOOL)isPlayerHidden
{
  v2 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v3 = [v2 superlayer];
  if (v3)
  {
    [v2 opacity];
    v5 = v4 != 1.0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)stopPlayer
{
  v2 = [(PencilHandwritingEducationElementViewController *)self player];
  [v2 pause];
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  [v2 seekToTime:&v3];
}

- (void)hidePlayer:(BOOL)a3
{
  v3 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PencilHandwritingEducationElementViewController_hidePlayer___block_invoke;
  v8[3] = &unk_279A0A060;
  v9 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PencilHandwritingEducationElementViewController_hidePlayer___block_invoke_2;
  v6[3] = &unk_279A0A790;
  v7 = v9;
  v5 = v9;
  [v4 animateWithDuration:v8 animations:v6 completion:0.25];
}

- (void)showPlayer:(BOOL)a3
{
  v4 = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v5 = [v4 superlayer];

  if (!v5)
  {
    v6 = [(PencilHandwritingEducationElementViewController *)self view];
    v7 = [v6 layer];
    v8 = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
    [v7 insertSublayer:v4 above:v8];
  }

  v9 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PencilHandwritingEducationElementViewController_showPlayer___block_invoke;
  v11[3] = &unk_279A0A060;
  v12 = v4;
  v10 = v4;
  [v9 animateWithDuration:v11 animations:0.25];
}

- (void)setButton:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([v7 isHidden] != v6)
  {
    if ([v7 isHidden])
    {
      [v7 setAlpha:0.0];
      [v7 setHidden:0];
    }

    if (v5)
    {
      v8 = 0.25;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__PencilHandwritingEducationElementViewController_setButton_hidden_animated___block_invoke;
    v13[3] = &unk_279A0A100;
    v14 = v7;
    v15 = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__PencilHandwritingEducationElementViewController_setButton_hidden_animated___block_invoke_2;
    v10[3] = &unk_279A0A7B8;
    v11 = v14;
    v12 = v6;
    [v9 animateWithDuration:v13 animations:v10 completion:v8];
  }
}

- (void)playerItemDidFinish:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PencilHandwritingEducationElementViewController_playerItemDidFinish___block_invoke;
  block[3] = &unk_279A0A060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__PencilHandwritingEducationElementViewController_playerItemDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 replayButton];
  [v2 setButton:v3 hidden:0 animated:1];

  v4 = [*(a1 + 32) clearButton];
  [v4 setHidden:0];
}

- (void)applicationWillResignActive:(id)a3
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v4 = [(PencilHandwritingEducationElementViewController *)self player];
    [v4 pause];
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    v4 = [(PencilHandwritingEducationElementViewController *)self player];
    [v4 play];
  }
}

- (void)canvasViewDidBeginUsingTool:(id)a3
{
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_replayButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    [(PencilHandwritingEducationElementViewController *)self stopPlayer];

    [(PencilHandwritingEducationElementViewController *)self hidePlayer:0];
  }
}

- (void)canvasViewDrawingDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PencilHandwritingEducationElementViewController_canvasViewDrawingDidChange___block_invoke;
  block[3] = &unk_279A0A060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__PencilHandwritingEducationElementViewController_canvasViewDrawingDidChange___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) canvasView];
  v2 = [v6 drawing];
  v3 = [v2 strokes];
  v4 = [v3 count] == 0;
  v5 = [*(a1 + 32) clearButton];
  [v5 setHidden:v4];
}

- (void)canvasView:(id)a3 didRefineStrokes:(id)a4 withNewStrokes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__PencilHandwritingEducationElementViewController_canvasView_didRefineStrokes_withNewStrokes___block_invoke;
  block[3] = &unk_279A0A7E0;
  objc_copyWeak(&v18, &location);
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __94__PencilHandwritingEducationElementViewController_canvasView_didRefineStrokes_withNewStrokes___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    [v3[139] addObjectsFromArray:*(a1 + 32)];
    [v3[140] addObjectsFromArray:*(a1 + 40)];
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [*(a1 + 48) drawing];
    v6 = [v5 strokes];
    v7 = [v4 initWithCapacity:{objc_msgSend(v3[138], "count") + objc_msgSend(v6, "count")}];

    v8 = [*(a1 + 48) drawing];
    v9 = [v8 strokes];
    [v7 addObjectsFromArray:v9];

    v10 = [v3[138] allObjects];
    [v7 addObjectsFromArray:v10];

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 _strokeUUID];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3[140], "count") + objc_msgSend(v3[139], "count")}];
    v20 = [v3[140] allObjects];
    [v19 addObjectsFromArray:v20];

    v21 = [v3[139] allObjects];
    [v19 addObjectsFromArray:v21];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v30 + 1) + 8 * j) _strokeUUID];
          [v11 removeObjectForKey:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    [v3[138] removeAllObjects];
    v28 = v3[138];
    v29 = [v11 allValues];
    [v28 addObjectsFromArray:v29];

    [v3 setButton:v3[136] hidden:1 animated:0];
    [v3 setButton:v3[134] hidden:1 animated:0];
    [v3 setButton:v3[137] hidden:0 animated:1];
  }
}

- (PencilHandwritingEducationElementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end