@interface VSUIProgressCardViewController
- (CGSize)preferredContentSize;
- (SUICProgressIndicatorViewController)_progressIndicatorViewController;
- (SUICProgressStateMachine)_progressStateMachine;
- (UIActivityIndicatorView)_loadingIndicatorView;
- (UIView)_hairlineView;
- (VSUIActionStatusView)_statusView;
- (double)contentHeightForWidth:(double)a3;
- (void)_setUpHelpers;
- (void)_setUpViews;
- (void)_updateDelegateOnBoundsDidChange;
- (void)actionStatusView:(id)a3 didAddViewFromProgressViewController:(id)a4;
- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)handleCardCommand:(id)a3 reply:(id)a4;
- (void)progressStateMachine:(id)a3 didTransitionToState:(unint64_t)a4 fromState:(unint64_t)a5 forEvent:(unint64_t)a6;
@end

@implementation VSUIProgressCardViewController

- (void)_setUpViews
{
  v65[10] = *MEMORY[0x277D85DE8];
  v3 = [(VSUIProgressCardViewController *)self view];
  v4 = [(VSUIProgressCardViewController *)self _statusView];
  [v3 addSubview:v4];

  v5 = [(VSUIProgressCardViewController *)self view];
  v6 = [(VSUIProgressCardViewController *)self _hairlineView];
  [v5 addSubview:v6];

  v7 = [(VSUIProgressCardViewController *)self view];
  v8 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  [v7 addSubview:v8];

  v9 = [(VSUIProgressCardViewController *)self _statusView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:40.0];
  statusViewSuccessHeightConstraint = self->_statusViewSuccessHeightConstraint;
  self->_statusViewSuccessHeightConstraint = v11;

  v13 = [(VSUIProgressCardViewController *)self _statusView];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintLessThanOrEqualToConstant:70.0];
  statusViewFailureHeightConstraint = self->_statusViewFailureHeightConstraint;
  self->_statusViewFailureHeightConstraint = v15;

  v45 = MEMORY[0x277CCAAD0];
  v65[0] = self->_statusViewSuccessHeightConstraint;
  v64 = [(VSUIProgressCardViewController *)self _statusView];
  v62 = [v64 leftAnchor];
  v63 = [(VSUIProgressCardViewController *)self view];
  v61 = [v63 leftAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v65[1] = v60;
  v59 = [(VSUIProgressCardViewController *)self _statusView];
  v57 = [v59 rightAnchor];
  v58 = [(VSUIProgressCardViewController *)self view];
  v56 = [v58 rightAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v65[2] = v55;
  v54 = [(VSUIProgressCardViewController *)self _statusView];
  v52 = [v54 bottomAnchor];
  v53 = [(VSUIProgressCardViewController *)self view];
  v51 = [v53 bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v65[3] = v50;
  v49 = [(VSUIProgressCardViewController *)self _hairlineView];
  v48 = [v49 heightAnchor];
  v47 = [v48 constraintEqualToConstant:1.0];
  v65[4] = v47;
  v46 = [(VSUIProgressCardViewController *)self _hairlineView];
  v43 = [v46 leftAnchor];
  v44 = [(VSUIProgressCardViewController *)self view];
  v42 = [v44 leftAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v65[5] = v41;
  v40 = [(VSUIProgressCardViewController *)self _hairlineView];
  v38 = [v40 rightAnchor];
  v39 = [(VSUIProgressCardViewController *)self view];
  v37 = [v39 rightAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v65[6] = v36;
  v35 = [(VSUIProgressCardViewController *)self _hairlineView];
  v33 = [v35 bottomAnchor];
  v34 = [(VSUIProgressCardViewController *)self _statusView];
  v32 = [v34 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v65[7] = v31;
  v30 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  v29 = [v30 centerXAnchor];
  v17 = [(VSUIProgressCardViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v29 constraintEqualToAnchor:v18];
  v65[8] = v19;
  v20 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  v21 = [v20 topAnchor];
  v22 = [(VSUIProgressCardViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  [v24 bounds];
  v26 = [v21 constraintEqualToAnchor:v23 constant:(98.0 - v25) * 0.5];
  v65[9] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:10];
  [v45 activateConstraints:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setUpHelpers
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = [(VSUIProgressCardViewController *)self _progressStateMachine];
  v4 = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];
  v8[1] = v4;
  v5 = [(VSUIProgressCardViewController *)self _statusView];
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v3 addObservers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegateOnBoundsDidChange
{
  v3 = [(VSUIProgressCardViewController *)self cardViewControllerDelegate];
  [v3 cardViewControllerBoundsDidChange:self];
}

- (SUICProgressStateMachine)_progressStateMachine
{
  progressStateMachine = self->_progressStateMachine;
  if (!progressStateMachine)
  {
    v4 = objc_opt_new();
    v5 = self->_progressStateMachine;
    self->_progressStateMachine = v4;

    progressStateMachine = self->_progressStateMachine;
  }

  return progressStateMachine;
}

- (SUICProgressIndicatorViewController)_progressIndicatorViewController
{
  progressIndicatorViewController = self->_progressIndicatorViewController;
  if (!progressIndicatorViewController)
  {
    v4 = objc_opt_new();
    [v4 setDataSource:self];
    [(VSUIProgressCardViewController *)self addChildViewController:v4];
    v5 = self->_progressIndicatorViewController;
    self->_progressIndicatorViewController = v4;

    progressIndicatorViewController = self->_progressIndicatorViewController;
  }

  return progressIndicatorViewController;
}

- (UIView)_hairlineView
{
  hairlineView = self->_hairlineView;
  if (!hairlineView)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setAlpha:0.04];
    [(UIView *)v4 setHidden:1];
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_hairlineView;
    self->_hairlineView = v4;

    hairlineView = self->_hairlineView;
  }

  return hairlineView;
}

- (VSUIActionStatusView)_statusView
{
  statusView = self->_statusView;
  if (!statusView)
  {
    v4 = objc_opt_new();
    [(VSUIActionStatusView *)v4 setDelegate:self];
    [(VSUIActionStatusView *)v4 setHidden:1];
    [(VSUIActionStatusView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_statusView;
    self->_statusView = v4;

    statusView = self->_statusView;
  }

  return statusView;
}

- (UIActivityIndicatorView)_loadingIndicatorView
{
  loadingIndicatorView = self->_loadingIndicatorView;
  if (!loadingIndicatorView)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(UIActivityIndicatorView *)v4 startAnimating];
    [(UIActivityIndicatorView *)v4 setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_loadingIndicatorView;
    self->_loadingIndicatorView = v4;

    loadingIndicatorView = self->_loadingIndicatorView;
  }

  return loadingIndicatorView;
}

- (void)actionStatusView:(id)a3 didAddViewFromProgressViewController:(id)a4
{
  v5 = a4;
  v6 = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];

  if (v6 == v5)
  {
    v7 = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];
    [v7 didMoveToParentViewController:self];
  }
}

- (void)progressStateMachine:(id)a3 didTransitionToState:(unint64_t)a4 fromState:(unint64_t)a5 forEvent:(unint64_t)a6
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__VSUIProgressCardViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke;
  v11[3] = &unk_279E53078;
  v11[4] = self;
  v11[5] = a6;
  v7 = MEMORY[0x2743CF430](v11, a2, a3, a4, a5);
  v8 = v7;
  if (self->_animatesStateTransitions)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__VSUIProgressCardViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_2;
    v9[3] = &unk_279E530A0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v7[2](v7);
  }
}

void __95__VSUIProgressCardViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 0:
LABEL_4:
      v3 = [*(a1 + 32) _statusView];
      [v3 setHidden:0];

      v11 = [*(a1 + 32) _hairlineView];
      [v11 setHidden:0];

      return;
    case 3:
      v4 = [*(a1 + 32) _statusView];
      [v4 setHidden:0];

      v5 = [*(a1 + 32) _hairlineView];
      [v5 setHidden:0];

      [*(*(a1 + 32) + 1112) setActive:1];
      v6 = *(a1 + 32);
      v7 = 1104;
      break;
    case 2:
      goto LABEL_4;
    default:
      v8 = [*(a1 + 32) _statusView];
      [v8 setHidden:0];

      v9 = [*(a1 + 32) _hairlineView];
      [v9 setHidden:0];

      [*(*(a1 + 32) + 1104) setActive:1];
      v6 = *(a1 + 32);
      v7 = 1112;
      break;
  }

  v10 = *(v6 + v7);

  [v10 setActive:0];
}

uint64_t __95__VSUIProgressCardViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _updateDelegateOnBoundsDidChange];
}

- (CGSize)preferredContentSize
{
  v8.receiver = self;
  v8.super_class = VSUIProgressCardViewController;
  [(VSUIProgressCardViewController *)&v8 preferredContentSize];
  v4 = v3;
  [(VSUIProgressCardViewController *)self contentHeightForWidth:?];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v15 = a3;
  if (([(VSUIProgressCardViewController *)self isLoading]& 1) == 0)
  {
    v5 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
    [v5 stopAnimating];
  }

  if (self->_hasAsynchronousCard)
  {
    v6 = [(VSUIProgressCardViewController *)self cardSectionViewSource];
    v7 = [v6 viewConfigurationForCardSection:v15];
    v8 = [v7 cardSectionView];

    [v8 setAlpha:0.0];
    v9 = [(VSUIProgressCardViewController *)self view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    [v8 sizeThatFits:{v11, v13}];
    [v8 setFrame:{0.0, 0.0, v11, v14}];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  if (self->_hasAsynchronousCard)
  {
    v15 = v4;
    v16 = v5;
    v7 = a3;
    v8 = [(VSUIProgressCardViewController *)self cardSectionViewSource];
    v9 = [v8 viewConfigurationForCardSection:v7];

    v10 = [v9 cardSectionView];

    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__VSUIProgressCardViewController_cardSectionViewDidAppearForCardSection_withAppearanceFeedback___block_invoke;
    v13[3] = &unk_279E530C8;
    v14 = v10;
    v12 = v10;
    [v11 animateWithDuration:v13 animations:0.300000012];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  v15.receiver = self;
  v15.super_class = VSUIProgressCardViewController;
  [(VSUIProgressCardViewController *)&v15 contentHeightForWidth:?];
  v6 = v5;
  v7 = [(VSUIProgressCardViewController *)self _statusView];
  v8 = [v7 isHidden];

  result = v6;
  if ((v8 & 1) == 0)
  {
    v10 = [(VSUIProgressCardViewController *)self _statusView];
    [v10 sizeThatFits:{a3, 2.22507386e-308}];
    v12 = v11;

    v13 = [(NSLayoutConstraint *)self->_statusViewFailureHeightConstraint isActive];
    v14 = 40.0;
    if (v13)
    {
      v14 = 70.0;
    }

    if (v14 < v12)
    {
      v14 = v12;
    }

    result = v6 + v14;
  }

  if (v6 == 0.0)
  {
    return result + 98.0;
  }

  return result;
}

- (void)handleCardCommand:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    self->_animatesStateTransitions = [v8 animatesProgress];
    v9 = [v8 progress];
    progress = self->_progress;
    self->_progress = v9;

    v11 = [v8 event];
    if (v11 >= 5)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11;
    }

    [(SUICProgressStateMachine *)self->_progressStateMachine handleEvent:v12];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VSUIProgressCardViewController;
    [(VSUIProgressCardViewController *)&v13 handleCardCommand:v6 reply:v7];
  }
}

@end