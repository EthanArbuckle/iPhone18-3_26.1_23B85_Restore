@interface TFBetaAppLaunchScreenViewController
- (SEL)_selectorForPresentorViewEvent:(unint64_t)a3;
- (TFBetaAppLaunchScreenHost)launchScreenHost;
- (TFBetaAppLaunchScreenViewController)initWithPresenter:(id)a3;
- (id)_fadeTransition;
- (id)_pushTransition;
- (int64_t)_currentInterfaceOrientation;
- (void)_didPressExitLaunchScreenButton;
- (void)_didPressNavigationItemCancel;
- (void)_didPressOpenHowToSupportLinkButton;
- (void)_didPressShowHowToButton;
- (void)_updateForContainmentInHostEnvironment:(id)a3;
- (void)_updateNavigationBarForHostTraitCollection:(id)a3;
- (void)setLaunchScreenHost:(id)a3;
- (void)showHowToWithTitle:(id)a3 subtitle:(id)a4 screenshotImageDict:(id)a5 primaryButtonTitle:(id)a6 primaryButtonEvent:(unint64_t)a7 secondaryButtonTitle:(id)a8 secondaryButtonEvent:(unint64_t)a9 animated:(BOOL)a10;
- (void)showTestNotesWithTitle:(id)a3 lockup:(id)a4 testNotesTitle:(id)a5 testNotesText:(id)a6 primaryButtonTitle:(id)a7 primaryButtonEvent:(unint64_t)a8 animated:(BOOL)a9 fetchingOnImageFetcher:(id)a10;
- (void)tapOnButtonWith:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TFBetaAppLaunchScreenViewController

- (TFBetaAppLaunchScreenViewController)initWithPresenter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TFBetaAppLaunchScreenViewController;
  v6 = [(TFBetaAppLaunchScreenViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, a3);
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel__didPressNavigationItemCancel];
    cancelBarButtonItem = v7->_cancelBarButtonItem;
    v7->_cancelBarButtonItem = v8;
  }

  return v7;
}

- (void)tapOnButtonWith:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      [(TFBetaAppLaunchScreenViewController *)self _didPressExitLaunchScreenButton];
      break;
    case 1:
      [(TFBetaAppLaunchScreenViewController *)self _didPressOpenHowToSupportLinkButton];
      break;
    case 0:
      [(TFBetaAppLaunchScreenViewController *)self _didPressShowHowToButton];
      break;
  }
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v18 viewDidLoad];
  v3 = [_TtC14TestFlightCore16TestFlightCoreUI generateWhatToTestViewWithDelegate:self];
  childUIViewController = self->_childUIViewController;
  self->_childUIViewController = v3;

  [(TFBetaAppLaunchScreenViewController *)self addChildViewController:self->_childUIViewController];
  v5 = [(TFBetaAppLaunchScreenViewController *)self view];
  v6 = [self->_childUIViewController view];
  [v5 addSubview:v6];

  [self->_childUIViewController didMoveToParentViewController:self];
  v7 = [(TFBetaAppLaunchScreenViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [self->_childUIViewController view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(TFBetaAppLaunchScreenViewController *)self navigationController];
  [v17 setNavigationBarHidden:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v7 viewWillAppear:a3];
  v4 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];

  if (v4)
  {
    v5 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
    [(TFBetaAppLaunchScreenViewController *)self _updateForContainmentInHostEnvironment:v5];
  }

  v6 = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [v6 update];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v7 viewDidDisappear:a3];
  v4 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
    [v6 performSelector:sel_launchScreenViewControllerWasDismissed_ withObject:self];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(TFBetaAppLaunchScreenViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(TFBetaAppLaunchScreenViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TFBetaAppLaunchScreenViewController *)self childUIViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (int64_t)_currentInterfaceOrientation
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 statusBarOrientation];

  return v3;
}

- (void)setLaunchScreenHost:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_launchScreenHost, v4);
  [(TFBetaAppLaunchScreenViewController *)self _updateForContainmentInHostEnvironment:v4];
}

- (void)_updateForContainmentInHostEnvironment:(id)a3
{
  if (a3)
  {
    v4 = [a3 traitCollection];
    [(TFBetaAppLaunchScreenViewController *)self _updateNavigationBarForHostTraitCollection:v4];
  }
}

- (void)showTestNotesWithTitle:(id)a3 lockup:(id)a4 testNotesTitle:(id)a5 testNotesText:(id)a6 primaryButtonTitle:(id)a7 primaryButtonEvent:(unint64_t)a8 animated:(BOOL)a9 fetchingOnImageFetcher:(id)a10
{
  interface = self->_interface;
  v16 = a4;
  [(WhatToTestInterface *)interface showTestNotesWithTitle:a3 testNotesTitle:a5 testNotesText:a6 primaryButtonTitle:a7];
  v17 = self->_interface;
  v22 = [v16 title];
  v18 = [v16 subtitles];
  v19 = [v16 iconArtwork];
  v20 = [v19 urlTemplate];
  v21 = [v16 iconNeedsMask];

  [(WhatToTestInterface *)v17 showAppLockup:v22 subtitles:v18 imageTemplateURL:v20 iconNeedsMask:v21];
}

- (void)showHowToWithTitle:(id)a3 subtitle:(id)a4 screenshotImageDict:(id)a5 primaryButtonTitle:(id)a6 primaryButtonEvent:(unint64_t)a7 secondaryButtonTitle:(id)a8 secondaryButtonEvent:(unint64_t)a9 animated:(BOOL)a10
{
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v23 = [a5 objectForKeyedSubscript:@"TFScreenshotInstructionDeviceImageKey"];
  interface = self->_interface;
  v20 = MEMORY[0x277D755B8];
  v21 = [(TFBetaAppLaunchScreenViewController *)self traitCollection];
  v22 = [v20 tf_imageNamed:v23 compatibleWithTraitCollection:v21];
  [(WhatToTestInterface *)interface showHowToScreenWithTitle:v18 subtitle:v17 deviceImage:v22 primaryButtonTitle:v16 secondaryButtonTitle:v15];
}

- (id)_fadeTransition
{
  v2 = [MEMORY[0x277CDA000] animation];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v2 setTimingFunction:v3];

  [v2 setType:*MEMORY[0x277CDA928]];
  [v2 setDuration:0.3];

  return v2;
}

- (id)_pushTransition
{
  v2 = [(TFBetaAppLaunchScreenViewController *)self view];
  v3 = [v2 traitCollection];
  v4 = [v3 layoutDirection];

  v5 = [MEMORY[0x277CDA000] animation];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v5 setTimingFunction:v6];

  [v5 setType:*MEMORY[0x277CDA958]];
  v7 = MEMORY[0x277CDA938];
  if (v4 != 1)
  {
    v7 = MEMORY[0x277CDA940];
  }

  [v5 setSubtype:*v7];
  [v5 setDuration:0.3];

  return v5;
}

- (void)_updateNavigationBarForHostTraitCollection:(id)a3
{
  v4 = [a3 horizontalSizeClass];
  v5 = [(TFBetaAppLaunchScreenViewController *)self navigationController];
  v6 = [v5 navigationBar];
  v7 = v6;
  if (v4 == 2)
  {
    [v6 _setBackgroundOpacity:1.0];

    v9 = [(TFBetaAppLaunchScreenViewController *)self navigationItem];
    v8 = [(TFBetaAppLaunchScreenViewController *)self cancelBarButtonItem];
    [v9 setLeftBarButtonItem:v8];
  }

  else
  {
    [v6 _setBackgroundOpacity:0.0];

    v9 = [(TFBetaAppLaunchScreenViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:0];
  }
}

- (SEL)_selectorForPresentorViewEvent:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      return sel__didPressExitLaunchScreenButton;
    case 1uLL:
      return sel__didPressOpenHowToSupportLinkButton;
    case 0uLL:
      return sel__didPressShowHowToButton;
  }

  return self;
}

- (void)_didPressShowHowToButton
{
  v2 = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [v2 showHowToScreen];
}

- (void)_didPressOpenHowToSupportLinkButton
{
  v2 = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [v2 openHowToSupportLink];
}

- (void)_didPressExitLaunchScreenButton
{
  v2 = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [v2 exitLaunchScreen];
}

- (void)_didPressNavigationItemCancel
{
  v2 = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [v2 exitLaunchScreen];
}

- (TFBetaAppLaunchScreenHost)launchScreenHost
{
  WeakRetained = objc_loadWeakRetained(&self->_launchScreenHost);

  return WeakRetained;
}

@end