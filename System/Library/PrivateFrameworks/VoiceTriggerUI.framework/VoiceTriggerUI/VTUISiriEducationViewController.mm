@interface VTUISiriEducationViewController
- (VTUISiriEducationViewController)initWithTitle:(id)title detailText:(id)text style:(id)style delegate:(id)delegate;
- (void)_continueButtonPressed;
- (void)_fadeInSubViews;
- (void)_setupContinueButton;
- (void)_setupImageContainerViewForTraitCollection:(id)collection;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation VTUISiriEducationViewController

- (VTUISiriEducationViewController)initWithTitle:(id)title detailText:(id)text style:(id)style delegate:(id)delegate
{
  styleCopy = style;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = VTUISiriEducationViewController;
  v13 = [(VTUISiriEducationViewController *)&v17 initWithTitle:title detailText:text icon:0 contentLayout:2];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_style, style);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    traitCollection = [(VTUISiriEducationViewController *)v14 traitCollection];
    [(VTUISiriEducationViewController *)v14 _setupImageContainerViewForTraitCollection:traitCollection];

    [(VTUISiriEducationViewController *)v14 _setupContinueButton];
  }

  return v14;
}

- (void)_setupContinueButton
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = +[VTUIStringsHelper sharedStringsHelper];
  v4 = [v3 uiLocalizedStringForKey:@"BUTTON_CONTINUE_SETUP"];
  [boldButton setTitle:v4 forState:0];

  [boldButton addTarget:self action:sel__continueButtonPressed forControlEvents:64];
  buttonTray = [(VTUISiriEducationViewController *)self buttonTray];
  [buttonTray addButton:boldButton];
}

- (void)_setupImageContainerViewForTraitCollection:(id)collection
{
  v54[4] = *MEMORY[0x277D85DE8];
  v4 = [(VTUIStyle *)self->_style educationAssetNameForTraitCollection:collection];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 pathForResource:v4 ofType:@"mov"];
  v8 = [v6 fileURLWithPath:v7];

  v9 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:v8];
  v10 = [objc_alloc(MEMORY[0x277CE65F8]) initWithPlayerItem:v9];
  objc_storeStrong(&self->_player, v10);
  v11 = objc_alloc(MEMORY[0x277CE65E0]);
  v12 = *(MEMORY[0x277CC08C8] + 16);
  v53[0] = *MEMORY[0x277CC08C8];
  v53[1] = v12;
  v53[2] = *(MEMORY[0x277CC08C8] + 32);
  v13 = [v11 initWithPlayer:v10 templateItem:v9 timeRange:v53];
  playerLooper = self->_playerLooper;
  self->_playerLooper = v13;

  playerViewController = self->_playerViewController;
  if (!playerViewController)
  {
    v50 = v8;
    v16 = objc_alloc_init(MEMORY[0x277CB85E0]);
    [(AVPlayerViewController *)v16 setShowsPlaybackControls:0];
    [(AVPlayerViewController *)v16 setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)v16 view];
    v17 = v49 = v9;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(AVPlayerViewController *)v16 view];
    [MEMORY[0x277D75348] systemBackgroundColor];
    v19 = v52 = v4;
    [view setBackgroundColor:v19];

    v20 = self->_playerViewController;
    self->_playerViewController = v16;
    v45 = v16;

    contentView = [(VTUISiriEducationViewController *)self contentView];
    view2 = [(AVPlayerViewController *)v45 view];
    [contentView addSubview:view2];

    [(VTUIStyle *)self->_style educationAssetSize];
    v24 = v23;
    v26 = v25;
    [(VTUIStyle *)self->_style educationAssetTopPadding];
    v28 = v27;
    v41 = MEMORY[0x277CCAAD0];
    view3 = [(AVPlayerViewController *)self->_playerViewController view];
    topAnchor = [view3 topAnchor];
    contentView2 = [(VTUISiriEducationViewController *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v28];
    v54[0] = v43;
    view4 = [(AVPlayerViewController *)self->_playerViewController view];
    centerXAnchor = [view4 centerXAnchor];
    contentView3 = [(VTUISiriEducationViewController *)self contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    v54[1] = v37;
    [(AVPlayerViewController *)self->_playerViewController view];
    v29 = v51 = v5;
    heightAnchor = [v29 heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:v26];
    v54[2] = v31;
    view5 = [(AVPlayerViewController *)self->_playerViewController view];
    widthAnchor = [view5 widthAnchor];
    v34 = [widthAnchor constraintEqualToConstant:v24];
    v54[3] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    [v41 activateConstraints:v35];

    v9 = v49;
    v8 = v50;

    v4 = v52;
    v5 = v51;

    playerViewController = self->_playerViewController;
  }

  [(AVPlayerViewController *)playerViewController setPlayer:self->_player];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = VTUISiriEducationViewController;
  [(VTUISiriEducationViewController *)&v5 traitCollectionDidChange:change];
  traitCollection = [(VTUISiriEducationViewController *)self traitCollection];
  [(VTUISiriEducationViewController *)self _setupImageContainerViewForTraitCollection:traitCollection];
}

- (void)_continueButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriEducationViewControllerContinuePressed:self];
}

- (void)_fadeInSubViews
{
  headerView = [(VTUISiriEducationViewController *)self headerView];
  [headerView setAlpha:0.0];

  contentView = [(VTUISiriEducationViewController *)self contentView];
  [contentView setAlpha:0.0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__VTUISiriEducationViewController__fadeInSubViews__block_invoke;
  v7[3] = &unk_279E54220;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v7 options:0 animations:0.400000006 completion:0.0];
  v5[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__VTUISiriEducationViewController__fadeInSubViews__block_invoke_2;
  v6[3] = &unk_279E54220;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__VTUISiriEducationViewController__fadeInSubViews__block_invoke_3;
  v5[3] = &unk_279E545F0;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:v5 animations:0.400000006 completion:0.300000012];
}

void __50__VTUISiriEducationViewController__fadeInSubViews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headerView];
  [v1 setAlpha:1.0];
}

void __50__VTUISiriEducationViewController__fadeInSubViews__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

@end