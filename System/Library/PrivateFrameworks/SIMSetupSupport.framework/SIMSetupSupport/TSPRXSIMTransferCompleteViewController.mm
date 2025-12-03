@interface TSPRXSIMTransferCompleteViewController
- (TSPRXSIMTransferCompleteViewController)initWithSelectedPlansCount:(int)count selectedPlansFailedTransferCount:(int)transferCount isDisembarkUIRequired:(BOOL)required;
- (TSPRXSIMTransferCompleteViewController)initWithoutTargetSyncAndSelectedPlansCount:(int)count;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_createPKGlyphView;
- (id)_getTitleWhenSyncWithTarget:(BOOL)target selectedPlansCount:(int)count selectedPlansFailedTransferCount:(int)transferCount;
- (void)_updateLayoutConstraint;
- (void)viewDidLoad;
@end

@implementation TSPRXSIMTransferCompleteViewController

- (TSPRXSIMTransferCompleteViewController)initWithoutTargetSyncAndSelectedPlansCount:(int)count
{
  v5.receiver = self;
  v5.super_class = TSPRXSIMTransferCompleteViewController;
  result = [(TSPRXSIMTransferCompleteViewController *)&v5 init];
  if (result)
  {
    result->_selectedPlansCount = count;
    result->_isSyncWithTargetResults = 0;
  }

  return result;
}

- (TSPRXSIMTransferCompleteViewController)initWithSelectedPlansCount:(int)count selectedPlansFailedTransferCount:(int)transferCount isDisembarkUIRequired:(BOOL)required
{
  v9.receiver = self;
  v9.super_class = TSPRXSIMTransferCompleteViewController;
  result = [(TSPRXSIMTransferCompleteViewController *)&v9 init];
  if (result)
  {
    result->_isSyncWithTargetResults = 1;
    result->_selectedPlansCount = count;
    result->_selectedPlansFailedTransferCount = transferCount;
    result->_isDisembarkUIRequired = required;
  }

  return result;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = TSPRXSIMTransferCompleteViewController;
  [(TSPRXSIMTransferCompleteViewController *)&v29 viewDidLoad];
  v3 = [(TSPRXSIMTransferCompleteViewController *)self _getTitleWhenSyncWithTarget:self->_isSyncWithTargetResults selectedPlansCount:self->_selectedPlansCount selectedPlansFailedTransferCount:self->_selectedPlansFailedTransferCount];
  [(TSPRXSIMTransferCompleteViewController *)self setTitle:v3];

  v4 = [(TSPRXSIMTransferCompleteViewController *)self _getSubtitleWhenSyncWithTarget:self->_isSyncWithTargetResults selectedPlansCount:self->_selectedPlansCount selectedPlansFailedTransferCount:self->_selectedPlansFailedTransferCount];
  [(TSPRXSIMTransferCompleteViewController *)self setSubtitle:v4];

  selectedPlansFailedTransferCount = self->_selectedPlansFailedTransferCount;
  if (selectedPlansFailedTransferCount)
  {
    contentView2 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:contentView2];
    triangleImageView = self->_triangleImageView;
    self->_triangleImageView = v7;

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [(UIImageView *)self->_triangleImageView setTintColor:systemYellowColor];

    v10 = self->_triangleImageView;
    effect = [MEMORY[0x277CE15D0] effect];
    [(UIImageView *)v10 addSymbolEffect:effect];

    contentView = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [contentView addSubview:self->_triangleImageView];
  }

  else
  {
    if (self->_glyphView)
    {
      goto LABEL_5;
    }

    _createPKGlyphView = [(TSPRXSIMTransferCompleteViewController *)self _createPKGlyphView];
    glyphView = self->_glyphView;
    self->_glyphView = _createPKGlyphView;

    [(PKGlyphView *)self->_glyphView setState:11];
    contentView2 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [contentView2 addSubview:self->_glyphView];
  }

LABEL_5:
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];

  if (!selectedPlansFailedTransferCount && self->_isDisembarkUIRequired)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];

    v14 = v16;
  }

  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D432F0];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __53__TSPRXSIMTransferCompleteViewController_viewDidLoad__block_invoke;
  v26 = &unk_279B448A0;
  objc_copyWeak(&v27, &location);
  v18 = [v17 actionWithTitle:v14 style:0 handler:&v23];
  [(TSPRXSIMTransferCompleteViewController *)self setDoneAction:v18, v23, v24, v25, v26];

  doneAction = [(TSPRXSIMTransferCompleteViewController *)self doneAction];
  v20 = [(TSPRXSIMTransferCompleteViewController *)self addAction:doneAction];

  [(TSPRXSIMTransferCompleteViewController *)self _updateLayoutConstraint];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __53__TSPRXSIMTransferCompleteViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 viewControllerDidComplete:v3];
}

- (id)_createPKGlyphView
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPKGlyphViewClass_softClass;
  v10 = getPKGlyphViewClass_softClass;
  if (!getPKGlyphViewClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPKGlyphViewClass_block_invoke;
    v6[3] = &unk_279B44778;
    v6[4] = &v7;
    __getPKGlyphViewClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithStyle:1];

  return v4;
}

- (void)_updateLayoutConstraint
{
  v34[5] = *MEMORY[0x277D85DE8];
  if (self->_glyphView || self->_triangleImageView)
  {
    contentView = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    if (v5 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8 * 0.275;
    glyphView = self->_glyphView;
    if (!glyphView)
    {
      glyphView = self->_triangleImageView;
    }

    v25 = MEMORY[0x277CCAAD0];
    v11 = glyphView;
    topAnchor = [v11 topAnchor];
    contentView2 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    mainContentGuide = [contentView2 mainContentGuide];
    topAnchor2 = [mainContentGuide topAnchor];
    v29 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v34[0] = v29;
    centerXAnchor = [v11 centerXAnchor];
    contentView3 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    mainContentGuide2 = [contentView3 mainContentGuide];
    centerXAnchor2 = [mainContentGuide2 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v34[1] = v23;
    centerYAnchor = [v11 centerYAnchor];
    contentView4 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    mainContentGuide3 = [contentView4 mainContentGuide];
    centerYAnchor2 = [mainContentGuide3 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v34[2] = v15;
    widthAnchor = [v11 widthAnchor];
    v17 = [widthAnchor constraintEqualToConstant:v9];
    v34[3] = v17;
    heightAnchor = [v11 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:v9];
    v34[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
    [v25 activateConstraints:v20];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_getTitleWhenSyncWithTarget:(BOOL)target selectedPlansCount:(int)count selectedPlansFailedTransferCount:(int)transferCount
{
  targetCopy = target;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  v10 = @"PRXCARD_TARGET_TRANSFER_FAILED_TITLE";
  if (!transferCount)
  {
    v10 = @"PRXCARD_TARGET_TRANSFER_COMPLETE_TITLE";
  }

  v11 = @"PRXCARD_SOURCE_COMPLETE_SINGLE_TITLE";
  if (count > 1)
  {
    v11 = @"PRXCARD_SOURCE_COMPLETE_MULTIPLE_TITLE";
  }

  if (targetCopy)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v8 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

  return v13;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end