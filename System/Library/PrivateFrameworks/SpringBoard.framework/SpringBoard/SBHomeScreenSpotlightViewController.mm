@interface SBHomeScreenSpotlightViewController
- (SBHomeScreenSpotlightDismissalDelegate)homescreenSpotlightDelegate;
- (SBHomeScreenSpotlightViewController)initWithDelegate:(id)delegate;
- (unint64_t)remoteSearchViewPresentationSource;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBHomeScreenSpotlightViewController

- (unint64_t)remoteSearchViewPresentationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_homescreenSpotlightDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained defaultSearchViewPresentationSourceForViewController:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (SBHomeScreenSpotlightViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBHomeScreenSpotlightViewController;
  v5 = [(SBHomeScreenSpotlightViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homescreenSpotlightDelegate, delegateCopy);
  }

  return v6;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBHomeScreenSpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenSpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewWillAppear:appear];
  [(SBHomeScreenSpotlightViewController *)self _setDisplayLayoutElementActive:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenSpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewDidDisappear:disappear];
  [(SBHomeScreenSpotlightViewController *)self _setDisplayLayoutElementActive:0];
}

- (void)_setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (active)
  {
    if (displayLayoutAssertion)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D66A50]);
    v10 = [v5 initWithIdentifier:*MEMORY[0x277D66F58]];
    [v10 setLevel:0];
    [v10 setFillsDisplayBounds:1];
    [v10 setLayoutRole:6];
    mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
    v7 = [mEMORY[0x277D0AAA0] addElement:v10];
    v8 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = v7;

    v9 = v10;
  }

  else
  {
    if (!displayLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v9 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }
}

- (SBHomeScreenSpotlightDismissalDelegate)homescreenSpotlightDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_homescreenSpotlightDelegate);

  return WeakRetained;
}

@end