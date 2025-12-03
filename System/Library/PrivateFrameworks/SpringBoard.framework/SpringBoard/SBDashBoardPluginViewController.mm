@interface SBDashBoardPluginViewController
- (BOOL)handleEvent:(id)event;
- (SBDashBoardPluginViewController)initWithLockScreenPlugin:(id)plugin;
- (id)_newDisplayLayoutElement;
- (id)coverSheetIdentifier;
- (id)succinctDescriptionBuilder;
- (id)view;
- (int64_t)_presentationPriority;
- (int64_t)presentationStyle;
- (int64_t)presentationTransition;
- (int64_t)presentationType;
- (void)_updateLegibility;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
- (void)pluginAppearanceDidChange:(id)change;
- (void)updateForPresentation:(id)presentation;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToPresented:(BOOL)presented;
@end

@implementation SBDashBoardPluginViewController

- (SBDashBoardPluginViewController)initWithLockScreenPlugin:(id)plugin
{
  pluginCopy = plugin;
  if (pluginCopy)
  {
    v6 = [(CSCoverSheetViewControllerBase *)self initWithNibName:0 bundle:0];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_plugin, plugin);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = SBDashBoardPluginViewController;
  view = [(SBDashBoardPluginViewController *)&v4 view];

  return view;
}

- (void)viewDidLoad
{
  viewController = [(SBLockScreenPlugin *)self->_plugin viewController];
  v4 = viewController;
  if (viewController)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SBDashBoardPluginViewController_viewDidLoad__block_invoke;
    v7[3] = &unk_2783A9460;
    v8 = viewController;
    selfCopy = self;
    [(SBDashBoardPluginViewController *)self bs_addChildViewController:v8 animated:0 transitionBlock:v7];
  }

  view = [(SBDashBoardPluginViewController *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:view forRole:2];

  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidLoad];
}

void __46__SBDashBoardPluginViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) view];
  v4 = [*(a1 + 40) view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [*(a1 + 32) view];
  [v5 setAutoresizingMask:18];

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:appear];
  [(SBLockScreenPlugin *)self->_plugin setDelegate:self];
  [(SBDashBoardPluginViewController *)self _updateLegibility];
  view = [(SBDashBoardPluginViewController *)self view];
  appearance = [(SBLockScreenPlugin *)self->_plugin appearance];
  [appearance presentationRegion];
  [view setPresentationRegion:?];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SBLockScreenPlugin *)self->_plugin setDelegate:0];
  v5.receiver = self;
  v5.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:disappearCopy];
}

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  visibleCopy = visible;
  settingsCopy = settings;
  completionCopy = completion;
  viewController = [(SBLockScreenPlugin *)self->_plugin viewController];

  if (viewController)
  {
    viewController2 = [(SBLockScreenPlugin *)self->_plugin viewController];
    v12 = [viewController2 pluginAnimateAppearanceTransition:visibleCopy withCompletion:completionCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBDashBoardPluginViewController;
    [(CSCoverSheetViewControllerBase *)&v13 performCustomTransitionToVisible:visibleCopy withAnimationSettings:settingsCopy completion:completionCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SBDashBoardPluginViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBDashBoardPluginViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A9488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __86__SBDashBoardPluginViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(*(a1 + 32) + 1064) appearance];
  [v2 presentationRegion];
  [v3 setPresentationRegion:?];
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBDashBoardPluginViewController;
  succinctDescriptionBuilder = [(CSCoverSheetViewControllerBase *)&v7 succinctDescriptionBuilder];
  name = [(SBLockScreenPlugin *)self->_plugin name];
  v5 = [succinctDescriptionBuilder appendObject:name withName:@"plugin"];

  return succinctDescriptionBuilder;
}

- (void)aggregateAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateAppearance:appearanceCopy];
  v5 = [(SBLockScreenPlugin *)self->_plugin coverSheetAppearance:v6.receiver];
  [appearanceCopy unionAppearance:v5];
}

- (void)aggregateBehavior:(id)behavior
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:behaviorCopy];
  v5 = [(SBLockScreenPlugin *)self->_plugin coverSheetBehavior:v6.receiver];
  [behaviorCopy unionBehavior:v5];

  [behaviorCopy setIdleTimerDuration:12];
  [behaviorCopy setIdleTimerMode:2];
  [behaviorCopy setIdleWarnMode:1];
}

- (void)updateForPresentation:(id)presentation
{
  v23 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  regions = [presentationCopy regions];
  v6 = [regions countByEnumeratingWithState:&v18 objects:v22 count:16];
  v7 = 1.0;
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(regions);
        }

        if ([*(*(&v18 + 1) + 8 * i) role] == 2)
        {
          v7 = 0.0;
          goto LABEL_11;
        }
      }

      v8 = [regions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  view = [(SBDashBoardPluginViewController *)self view];
  [view setAlpha:v7];

  controller = [(SBLockScreenPlugin *)self->_plugin controller];
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_alloc_init(MEMORY[0x277D67968]);
    defaultSettings = [MEMORY[0x277D67948] defaultSettings];
    [v13 setLegibilitySettings:defaultSettings];

    view2 = [(SBDashBoardPluginViewController *)self view];
    [view2 bounds];
    [presentationCopy suggestedInsetsForPreferredContentFrame:?];
    [v13 setSuggestedContentInsets:?];

    v16 = [v13 copy];
    [controller updateForPresentation:v16];
  }

  v17.receiver = self;
  v17.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v17 updateForPresentation:presentationCopy];
}

- (id)_newDisplayLayoutElement
{
  plugin = [(SBDashBoardPluginViewController *)self plugin];
  name = [plugin name];
  v4 = [name isEqualToString:@"MapsLockScreen"];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277D66A50]);
  v6 = [v5 initWithIdentifier:*MEMORY[0x277D66F30]];
  [v6 setFillsDisplayBounds:1];
  [v6 setLayoutRole:6];
  return v6;
}

- (void)willTransitionToPresented:(BOOL)presented
{
  v9.receiver = self;
  v9.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v9 willTransitionToPresented:?];
  if (!presented)
  {
    viewController = [(SBLockScreenPlugin *)self->_plugin viewController];
    [(SBDashBoardPluginViewController *)self bs_removeChildViewController:viewController];

    [(SBDashBoardPluginViewController *)self setView:0];
    kitPresentedViewController = [(CSCoverSheetViewControllerBase *)self kitPresentedViewController];
    v7 = kitPresentedViewController;
    if (kitPresentedViewController)
    {
      presentingViewController = [kitPresentedViewController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (int64_t)presentationStyle
{
  appearance = [(SBLockScreenPlugin *)self->_plugin appearance];
  presentationStyle = [appearance presentationStyle];

  if (presentationStyle == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)presentationTransition
{
  viewController = [(SBLockScreenPlugin *)self->_plugin viewController];
  v3 = [viewController pluginAnimatesAppearanceTransition:1] && (objc_opt_respondsToSelector() & 1) != 0;

  return v3;
}

- (int64_t)presentationType
{
  if ([(SBDashBoardPluginViewController *)self _presentationPriority]< 500)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)coverSheetIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(SBLockScreenPlugin *)self->_plugin name];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, name];

  return v7;
}

- (void)pluginAppearanceDidChange:(id)change
{
  viewIfLoaded = [(SBDashBoardPluginViewController *)self viewIfLoaded];
  appearance = [(SBLockScreenPlugin *)self->_plugin appearance];
  [appearance presentationRegion];
  [viewIfLoaded setPresentationRegion:?];

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SBDashBoardPluginViewController;
  if ((!-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0) && !-[SBLockScreenPlugin handleDashBoardEvent:](self->_plugin, "handleDashBoardEvent:", eventCopy))
  {
    if ([eventCopy type] != 1)
    {
      isConsumable = 0;
      goto LABEL_7;
    }

    [(SBDashBoardPluginViewController *)self _updateLegibility];
  }

  isConsumable = [eventCopy isConsumable];
LABEL_7:

  return isConsumable;
}

- (void)_updateLegibility
{
  controller = [(SBLockScreenPlugin *)self->_plugin controller];
  if (objc_opt_respondsToSelector())
  {
    activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    legibilitySettings = [activeAppearance legibilitySettings];
    [controller setLegibilitySettings:legibilitySettings];
  }
}

- (int64_t)_presentationPriority
{
  name = [(SBLockScreenPlugin *)self->_plugin name];
  v4 = [name isEqualToString:@"FindMyiPhoneLockScreen"];

  v5 = [(SBLockScreenPlugin *)self->_plugin isCapabilityRestricted:8];
  if (v4)
  {
    if (v5)
    {
      return 560;
    }

    else
    {
      return 540;
    }
  }

  else if (v5)
  {
    return 530;
  }

  else
  {
    appearance = [(SBLockScreenPlugin *)self->_plugin appearance];
    notificationBehavior = [appearance notificationBehavior];

    if (notificationBehavior == 3)
    {
      return 3;
    }

    else
    {
      return 6;
    }
  }
}

@end