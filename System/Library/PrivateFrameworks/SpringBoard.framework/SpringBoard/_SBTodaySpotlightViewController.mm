@interface _SBTodaySpotlightViewController
- (int64_t)_displayLayoutElementLevel;
- (unint64_t)level;
- (unint64_t)remoteSearchViewPresentationSource;
- (void)_setDisplayLayoutElementActive:(BOOL)a3;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _SBTodaySpotlightViewController

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
  v3.receiver = self;
  v3.super_class = _SBTodaySpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SBTodaySpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewWillAppear:a3];
  [(_SBTodaySpotlightViewController *)self _setDisplayLayoutElementActive:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SBTodaySpotlightViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 viewDidDisappear:a3];
  [(_SBTodaySpotlightViewController *)self _setDisplayLayoutElementActive:0];
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
    [v10 setLevel:{-[_SBTodaySpotlightViewController _displayLayoutElementLevel](self, "_displayLayoutElementLevel")}];
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

- (int64_t)_displayLayoutElementLevel
{
  if (self->_location == 2)
  {
    return *MEMORY[0x277D76EE8];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)level
{
  if (self->_location == 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (unint64_t)remoteSearchViewPresentationSource
{
  if (self->_location == 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

@end