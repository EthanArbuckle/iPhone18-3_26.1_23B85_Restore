@interface VSUIProgressCardViewController
- (CGSize)preferredContentSize;
- (SUICProgressIndicatorViewController)_progressIndicatorViewController;
- (SUICProgressStateMachine)_progressStateMachine;
- (UIActivityIndicatorView)_loadingIndicatorView;
- (UIView)_hairlineView;
- (VSUIActionStatusView)_statusView;
- (double)contentHeightForWidth:(double)width;
- (void)_setUpHelpers;
- (void)_setUpViews;
- (void)_updateDelegateOnBoundsDidChange;
- (void)actionStatusView:(id)view didAddViewFromProgressViewController:(id)controller;
- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)handleCardCommand:(id)command reply:(id)reply;
- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event;
@end

@implementation VSUIProgressCardViewController

- (void)_setUpViews
{
  v65[10] = *MEMORY[0x277D85DE8];
  view = [(VSUIProgressCardViewController *)self view];
  _statusView = [(VSUIProgressCardViewController *)self _statusView];
  [view addSubview:_statusView];

  view2 = [(VSUIProgressCardViewController *)self view];
  _hairlineView = [(VSUIProgressCardViewController *)self _hairlineView];
  [view2 addSubview:_hairlineView];

  view3 = [(VSUIProgressCardViewController *)self view];
  _loadingIndicatorView = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  [view3 addSubview:_loadingIndicatorView];

  _statusView2 = [(VSUIProgressCardViewController *)self _statusView];
  heightAnchor = [_statusView2 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:40.0];
  statusViewSuccessHeightConstraint = self->_statusViewSuccessHeightConstraint;
  self->_statusViewSuccessHeightConstraint = v11;

  _statusView3 = [(VSUIProgressCardViewController *)self _statusView];
  heightAnchor2 = [_statusView3 heightAnchor];
  v15 = [heightAnchor2 constraintLessThanOrEqualToConstant:70.0];
  statusViewFailureHeightConstraint = self->_statusViewFailureHeightConstraint;
  self->_statusViewFailureHeightConstraint = v15;

  v45 = MEMORY[0x277CCAAD0];
  v65[0] = self->_statusViewSuccessHeightConstraint;
  _statusView4 = [(VSUIProgressCardViewController *)self _statusView];
  leftAnchor = [_statusView4 leftAnchor];
  view4 = [(VSUIProgressCardViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v60 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v65[1] = v60;
  _statusView5 = [(VSUIProgressCardViewController *)self _statusView];
  rightAnchor = [_statusView5 rightAnchor];
  view5 = [(VSUIProgressCardViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v55 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v65[2] = v55;
  _statusView6 = [(VSUIProgressCardViewController *)self _statusView];
  bottomAnchor = [_statusView6 bottomAnchor];
  view6 = [(VSUIProgressCardViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v65[3] = v50;
  _hairlineView2 = [(VSUIProgressCardViewController *)self _hairlineView];
  heightAnchor3 = [_hairlineView2 heightAnchor];
  v47 = [heightAnchor3 constraintEqualToConstant:1.0];
  v65[4] = v47;
  _hairlineView3 = [(VSUIProgressCardViewController *)self _hairlineView];
  leftAnchor3 = [_hairlineView3 leftAnchor];
  view7 = [(VSUIProgressCardViewController *)self view];
  leftAnchor4 = [view7 leftAnchor];
  v41 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v65[5] = v41;
  _hairlineView4 = [(VSUIProgressCardViewController *)self _hairlineView];
  rightAnchor3 = [_hairlineView4 rightAnchor];
  view8 = [(VSUIProgressCardViewController *)self view];
  rightAnchor4 = [view8 rightAnchor];
  v36 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v65[6] = v36;
  _hairlineView5 = [(VSUIProgressCardViewController *)self _hairlineView];
  bottomAnchor3 = [_hairlineView5 bottomAnchor];
  _statusView7 = [(VSUIProgressCardViewController *)self _statusView];
  topAnchor = [_statusView7 topAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:topAnchor];
  v65[7] = v31;
  _loadingIndicatorView2 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  centerXAnchor = [_loadingIndicatorView2 centerXAnchor];
  view9 = [(VSUIProgressCardViewController *)self view];
  centerXAnchor2 = [view9 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v65[8] = v19;
  _loadingIndicatorView3 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  topAnchor2 = [_loadingIndicatorView3 topAnchor];
  view10 = [(VSUIProgressCardViewController *)self view];
  topAnchor3 = [view10 topAnchor];
  _loadingIndicatorView4 = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
  [_loadingIndicatorView4 bounds];
  v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:(98.0 - v25) * 0.5];
  v65[9] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:10];
  [v45 activateConstraints:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setUpHelpers
{
  v8[3] = *MEMORY[0x277D85DE8];
  _progressStateMachine = [(VSUIProgressCardViewController *)self _progressStateMachine];
  _progressIndicatorViewController = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];
  v8[1] = _progressIndicatorViewController;
  _statusView = [(VSUIProgressCardViewController *)self _statusView];
  v8[2] = _statusView;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [_progressStateMachine addObservers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegateOnBoundsDidChange
{
  cardViewControllerDelegate = [(VSUIProgressCardViewController *)self cardViewControllerDelegate];
  [cardViewControllerDelegate cardViewControllerBoundsDidChange:self];
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
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v4 setBackgroundColor:blackColor];

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

- (void)actionStatusView:(id)view didAddViewFromProgressViewController:(id)controller
{
  controllerCopy = controller;
  _progressIndicatorViewController = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];

  if (_progressIndicatorViewController == controllerCopy)
  {
    _progressIndicatorViewController2 = [(VSUIProgressCardViewController *)self _progressIndicatorViewController];
    [_progressIndicatorViewController2 didMoveToParentViewController:self];
  }
}

- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__VSUIProgressCardViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke;
  v11[3] = &unk_279E53078;
  v11[4] = self;
  v11[5] = event;
  v7 = MEMORY[0x2743CF430](v11, a2, machine, state, fromState);
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

- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  sectionCopy = section;
  if (([(VSUIProgressCardViewController *)self isLoading]& 1) == 0)
  {
    _loadingIndicatorView = [(VSUIProgressCardViewController *)self _loadingIndicatorView];
    [_loadingIndicatorView stopAnimating];
  }

  if (self->_hasAsynchronousCard)
  {
    cardSectionViewSource = [(VSUIProgressCardViewController *)self cardSectionViewSource];
    v7 = [cardSectionViewSource viewConfigurationForCardSection:sectionCopy];
    cardSectionView = [v7 cardSectionView];

    [cardSectionView setAlpha:0.0];
    view = [(VSUIProgressCardViewController *)self view];
    [view bounds];
    v11 = v10;
    v13 = v12;

    [cardSectionView sizeThatFits:{v11, v13}];
    [cardSectionView setFrame:{0.0, 0.0, v11, v14}];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  if (self->_hasAsynchronousCard)
  {
    v15 = v4;
    v16 = v5;
    sectionCopy = section;
    cardSectionViewSource = [(VSUIProgressCardViewController *)self cardSectionViewSource];
    v9 = [cardSectionViewSource viewConfigurationForCardSection:sectionCopy];

    cardSectionView = [v9 cardSectionView];

    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__VSUIProgressCardViewController_cardSectionViewDidAppearForCardSection_withAppearanceFeedback___block_invoke;
    v13[3] = &unk_279E530C8;
    v14 = cardSectionView;
    v12 = cardSectionView;
    [v11 animateWithDuration:v13 animations:0.300000012];
  }
}

- (double)contentHeightForWidth:(double)width
{
  v15.receiver = self;
  v15.super_class = VSUIProgressCardViewController;
  [(VSUIProgressCardViewController *)&v15 contentHeightForWidth:?];
  v6 = v5;
  _statusView = [(VSUIProgressCardViewController *)self _statusView];
  isHidden = [_statusView isHidden];

  result = v6;
  if ((isHidden & 1) == 0)
  {
    _statusView2 = [(VSUIProgressCardViewController *)self _statusView];
    [_statusView2 sizeThatFits:{width, 2.22507386e-308}];
    v12 = v11;

    isActive = [(NSLayoutConstraint *)self->_statusViewFailureHeightConstraint isActive];
    v14 = 40.0;
    if (isActive)
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

- (void)handleCardCommand:(id)command reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = commandCopy;
    self->_animatesStateTransitions = [v8 animatesProgress];
    progress = [v8 progress];
    progress = self->_progress;
    self->_progress = progress;

    event = [v8 event];
    if (event >= 5)
    {
      v12 = -1;
    }

    else
    {
      v12 = event;
    }

    [(SUICProgressStateMachine *)self->_progressStateMachine handleEvent:v12];
    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VSUIProgressCardViewController;
    [(VSUIProgressCardViewController *)&v13 handleCardCommand:commandCopy reply:replyCopy];
  }
}

@end