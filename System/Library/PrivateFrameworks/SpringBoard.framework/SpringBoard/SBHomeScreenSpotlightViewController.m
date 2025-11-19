@interface SBHomeScreenSpotlightViewController
- (SBHomeScreenSpotlightDismissalDelegate)homescreenSpotlightDelegate;
- (SBHomeScreenSpotlightViewController)initWithDelegate:(id)a3;
- (unint64_t)remoteSearchViewPresentationSource;
- (void)_setDisplayLayoutElementActive:(BOOL)a3;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
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

- (SBHomeScreenSpotlightViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBHomeScreenSpotlightViewController;
  v5 = [(SBHomeScreenSpotlightViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homescreenSpotlightDelegate, v4);
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenSpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewWillAppear:a3];
  [(SBHomeScreenSpotlightViewController *)self _setDisplayLayoutElementActive:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenSpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewDidDisappear:a3];
  [(SBHomeScreenSpotlightViewController *)self _setDisplayLayoutElementActive:0];
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (a3)
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
    v6 = [MEMORY[0x277D0AAA0] sharedInstance];
    v7 = [v6 addElement:v10];
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