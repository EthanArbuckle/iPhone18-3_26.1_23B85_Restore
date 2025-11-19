@interface TSPRXSIMTransferCompleteViewController
- (TSPRXSIMTransferCompleteViewController)initWithSelectedPlansCount:(int)a3 selectedPlansFailedTransferCount:(int)a4 isDisembarkUIRequired:(BOOL)a5;
- (TSPRXSIMTransferCompleteViewController)initWithoutTargetSyncAndSelectedPlansCount:(int)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_createPKGlyphView;
- (id)_getTitleWhenSyncWithTarget:(BOOL)a3 selectedPlansCount:(int)a4 selectedPlansFailedTransferCount:(int)a5;
- (void)_updateLayoutConstraint;
- (void)viewDidLoad;
@end

@implementation TSPRXSIMTransferCompleteViewController

- (TSPRXSIMTransferCompleteViewController)initWithoutTargetSyncAndSelectedPlansCount:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSPRXSIMTransferCompleteViewController;
  result = [(TSPRXSIMTransferCompleteViewController *)&v5 init];
  if (result)
  {
    result->_selectedPlansCount = a3;
    result->_isSyncWithTargetResults = 0;
  }

  return result;
}

- (TSPRXSIMTransferCompleteViewController)initWithSelectedPlansCount:(int)a3 selectedPlansFailedTransferCount:(int)a4 isDisembarkUIRequired:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = TSPRXSIMTransferCompleteViewController;
  result = [(TSPRXSIMTransferCompleteViewController *)&v9 init];
  if (result)
  {
    result->_isSyncWithTargetResults = 1;
    result->_selectedPlansCount = a3;
    result->_selectedPlansFailedTransferCount = a4;
    result->_isDisembarkUIRequired = a5;
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
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    triangleImageView = self->_triangleImageView;
    self->_triangleImageView = v7;

    v9 = [MEMORY[0x277D75348] systemYellowColor];
    [(UIImageView *)self->_triangleImageView setTintColor:v9];

    v10 = self->_triangleImageView;
    v11 = [MEMORY[0x277CE15D0] effect];
    [(UIImageView *)v10 addSymbolEffect:v11];

    v12 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [v12 addSubview:self->_triangleImageView];
  }

  else
  {
    if (self->_glyphView)
    {
      goto LABEL_5;
    }

    v21 = [(TSPRXSIMTransferCompleteViewController *)self _createPKGlyphView];
    glyphView = self->_glyphView;
    self->_glyphView = v21;

    [(PKGlyphView *)self->_glyphView setState:11];
    v6 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [v6 addSubview:self->_glyphView];
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

  v19 = [(TSPRXSIMTransferCompleteViewController *)self doneAction];
  v20 = [(TSPRXSIMTransferCompleteViewController *)self addAction:v19];

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
    v3 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    [v3 bounds];
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
    v32 = [v11 topAnchor];
    v33 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    v31 = [v33 mainContentGuide];
    v30 = [v31 topAnchor];
    v29 = [v32 constraintGreaterThanOrEqualToAnchor:v30];
    v34[0] = v29;
    v27 = [v11 centerXAnchor];
    v28 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    v26 = [v28 mainContentGuide];
    v24 = [v26 centerXAnchor];
    v23 = [v27 constraintEqualToAnchor:v24];
    v34[1] = v23;
    v22 = [v11 centerYAnchor];
    v12 = [(TSPRXSIMTransferCompleteViewController *)self contentView];
    v13 = [v12 mainContentGuide];
    v14 = [v13 centerYAnchor];
    v15 = [v22 constraintEqualToAnchor:v14];
    v34[2] = v15;
    v16 = [v11 widthAnchor];
    v17 = [v16 constraintEqualToConstant:v9];
    v34[3] = v17;
    v18 = [v11 heightAnchor];
    v19 = [v18 constraintEqualToConstant:v9];
    v34[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
    [v25 activateConstraints:v20];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_getTitleWhenSyncWithTarget:(BOOL)a3 selectedPlansCount:(int)a4 selectedPlansFailedTransferCount:(int)a5
{
  v7 = a3;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  v10 = @"PRXCARD_TARGET_TRANSFER_FAILED_TITLE";
  if (!a5)
  {
    v10 = @"PRXCARD_TARGET_TRANSFER_COMPLETE_TITLE";
  }

  v11 = @"PRXCARD_SOURCE_COMPLETE_SINGLE_TITLE";
  if (a4 > 1)
  {
    v11 = @"PRXCARD_SOURCE_COMPLETE_MULTIPLE_TITLE";
  }

  if (v7)
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