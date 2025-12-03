@interface TFBetaAppLaunchScreenViewController
- (SEL)_selectorForPresentorViewEvent:(unint64_t)event;
- (TFBetaAppLaunchScreenHost)launchScreenHost;
- (TFBetaAppLaunchScreenViewController)initWithPresenter:(id)presenter;
- (id)_fadeTransition;
- (id)_pushTransition;
- (int64_t)_currentInterfaceOrientation;
- (void)_didPressExitLaunchScreenButton;
- (void)_didPressNavigationItemCancel;
- (void)_didPressOpenHowToSupportLinkButton;
- (void)_didPressShowHowToButton;
- (void)_updateForContainmentInHostEnvironment:(id)environment;
- (void)_updateNavigationBarForHostTraitCollection:(id)collection;
- (void)setLaunchScreenHost:(id)host;
- (void)showHowToWithTitle:(id)title subtitle:(id)subtitle screenshotImageDict:(id)dict primaryButtonTitle:(id)buttonTitle primaryButtonEvent:(unint64_t)event secondaryButtonTitle:(id)secondaryButtonTitle secondaryButtonEvent:(unint64_t)buttonEvent animated:(BOOL)self0;
- (void)showTestNotesWithTitle:(id)title lockup:(id)lockup testNotesTitle:(id)notesTitle testNotesText:(id)text primaryButtonTitle:(id)buttonTitle primaryButtonEvent:(unint64_t)event animated:(BOOL)animated fetchingOnImageFetcher:(id)self0;
- (void)tapOnButtonWith:(int64_t)with;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TFBetaAppLaunchScreenViewController

- (TFBetaAppLaunchScreenViewController)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v11.receiver = self;
  v11.super_class = TFBetaAppLaunchScreenViewController;
  v6 = [(TFBetaAppLaunchScreenViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, presenter);
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel__didPressNavigationItemCancel];
    cancelBarButtonItem = v7->_cancelBarButtonItem;
    v7->_cancelBarButtonItem = v8;
  }

  return v7;
}

- (void)tapOnButtonWith:(int64_t)with
{
  switch(with)
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
  view = [(TFBetaAppLaunchScreenViewController *)self view];
  view2 = [self->_childUIViewController view];
  [view addSubview:view2];

  [self->_childUIViewController didMoveToParentViewController:self];
  view3 = [(TFBetaAppLaunchScreenViewController *)self view];
  [view3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view4 = [self->_childUIViewController view];
  [view4 setFrame:{v9, v11, v13, v15}];

  navigationController = [(TFBetaAppLaunchScreenViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v7 viewWillAppear:appear];
  launchScreenHost = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];

  if (launchScreenHost)
  {
    launchScreenHost2 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
    [(TFBetaAppLaunchScreenViewController *)self _updateForContainmentInHostEnvironment:launchScreenHost2];
  }

  presenter = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [presenter update];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v7 viewDidDisappear:disappear];
  launchScreenHost = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    launchScreenHost2 = [(TFBetaAppLaunchScreenViewController *)self launchScreenHost];
    [launchScreenHost2 performSelector:sel_launchScreenViewControllerWasDismissed_ withObject:self];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v4 viewSafeAreaInsetsDidChange];
  view = [(TFBetaAppLaunchScreenViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = TFBetaAppLaunchScreenViewController;
  [(TFBetaAppLaunchScreenViewController *)&v14 viewDidLayoutSubviews];
  view = [(TFBetaAppLaunchScreenViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  childUIViewController = [(TFBetaAppLaunchScreenViewController *)self childUIViewController];
  view2 = [childUIViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (int64_t)_currentInterfaceOrientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  return statusBarOrientation;
}

- (void)setLaunchScreenHost:(id)host
{
  hostCopy = host;
  objc_storeWeak(&self->_launchScreenHost, hostCopy);
  [(TFBetaAppLaunchScreenViewController *)self _updateForContainmentInHostEnvironment:hostCopy];
}

- (void)_updateForContainmentInHostEnvironment:(id)environment
{
  if (environment)
  {
    traitCollection = [environment traitCollection];
    [(TFBetaAppLaunchScreenViewController *)self _updateNavigationBarForHostTraitCollection:traitCollection];
  }
}

- (void)showTestNotesWithTitle:(id)title lockup:(id)lockup testNotesTitle:(id)notesTitle testNotesText:(id)text primaryButtonTitle:(id)buttonTitle primaryButtonEvent:(unint64_t)event animated:(BOOL)animated fetchingOnImageFetcher:(id)self0
{
  interface = self->_interface;
  lockupCopy = lockup;
  [(WhatToTestInterface *)interface showTestNotesWithTitle:title testNotesTitle:notesTitle testNotesText:text primaryButtonTitle:buttonTitle];
  v17 = self->_interface;
  title = [lockupCopy title];
  subtitles = [lockupCopy subtitles];
  iconArtwork = [lockupCopy iconArtwork];
  urlTemplate = [iconArtwork urlTemplate];
  iconNeedsMask = [lockupCopy iconNeedsMask];

  [(WhatToTestInterface *)v17 showAppLockup:title subtitles:subtitles imageTemplateURL:urlTemplate iconNeedsMask:iconNeedsMask];
}

- (void)showHowToWithTitle:(id)title subtitle:(id)subtitle screenshotImageDict:(id)dict primaryButtonTitle:(id)buttonTitle primaryButtonEvent:(unint64_t)event secondaryButtonTitle:(id)secondaryButtonTitle secondaryButtonEvent:(unint64_t)buttonEvent animated:(BOOL)self0
{
  secondaryButtonTitleCopy = secondaryButtonTitle;
  buttonTitleCopy = buttonTitle;
  subtitleCopy = subtitle;
  titleCopy = title;
  v23 = [dict objectForKeyedSubscript:@"TFScreenshotInstructionDeviceImageKey"];
  interface = self->_interface;
  v20 = MEMORY[0x277D755B8];
  traitCollection = [(TFBetaAppLaunchScreenViewController *)self traitCollection];
  v22 = [v20 tf_imageNamed:v23 compatibleWithTraitCollection:traitCollection];
  [(WhatToTestInterface *)interface showHowToScreenWithTitle:titleCopy subtitle:subtitleCopy deviceImage:v22 primaryButtonTitle:buttonTitleCopy secondaryButtonTitle:secondaryButtonTitleCopy];
}

- (id)_fadeTransition
{
  animation = [MEMORY[0x277CDA000] animation];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v3];

  [animation setType:*MEMORY[0x277CDA928]];
  [animation setDuration:0.3];

  return animation;
}

- (id)_pushTransition
{
  view = [(TFBetaAppLaunchScreenViewController *)self view];
  traitCollection = [view traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  animation = [MEMORY[0x277CDA000] animation];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v6];

  [animation setType:*MEMORY[0x277CDA958]];
  v7 = MEMORY[0x277CDA938];
  if (layoutDirection != 1)
  {
    v7 = MEMORY[0x277CDA940];
  }

  [animation setSubtype:*v7];
  [animation setDuration:0.3];

  return animation;
}

- (void)_updateNavigationBarForHostTraitCollection:(id)collection
{
  horizontalSizeClass = [collection horizontalSizeClass];
  navigationController = [(TFBetaAppLaunchScreenViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v7 = navigationBar;
  if (horizontalSizeClass == 2)
  {
    [navigationBar _setBackgroundOpacity:1.0];

    navigationItem = [(TFBetaAppLaunchScreenViewController *)self navigationItem];
    cancelBarButtonItem = [(TFBetaAppLaunchScreenViewController *)self cancelBarButtonItem];
    [navigationItem setLeftBarButtonItem:cancelBarButtonItem];
  }

  else
  {
    [navigationBar _setBackgroundOpacity:0.0];

    navigationItem = [(TFBetaAppLaunchScreenViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
  }
}

- (SEL)_selectorForPresentorViewEvent:(unint64_t)event
{
  switch(event)
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
  presenter = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [presenter showHowToScreen];
}

- (void)_didPressOpenHowToSupportLinkButton
{
  presenter = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [presenter openHowToSupportLink];
}

- (void)_didPressExitLaunchScreenButton
{
  presenter = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [presenter exitLaunchScreen];
}

- (void)_didPressNavigationItemCancel
{
  presenter = [(TFBetaAppLaunchScreenViewController *)self presenter];
  [presenter exitLaunchScreen];
}

- (TFBetaAppLaunchScreenHost)launchScreenHost
{
  WeakRetained = objc_loadWeakRetained(&self->_launchScreenHost);

  return WeakRetained;
}

@end