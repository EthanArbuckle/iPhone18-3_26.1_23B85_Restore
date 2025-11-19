@interface SBDashBoardPluginViewController
- (BOOL)handleEvent:(id)a3;
- (SBDashBoardPluginViewController)initWithLockScreenPlugin:(id)a3;
- (id)_newDisplayLayoutElement;
- (id)coverSheetIdentifier;
- (id)succinctDescriptionBuilder;
- (id)view;
- (int64_t)_presentationPriority;
- (int64_t)presentationStyle;
- (int64_t)presentationTransition;
- (int64_t)presentationType;
- (void)_updateLegibility;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (void)pluginAppearanceDidChange:(id)a3;
- (void)updateForPresentation:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToPresented:(BOOL)a3;
@end

@implementation SBDashBoardPluginViewController

- (SBDashBoardPluginViewController)initWithLockScreenPlugin:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(CSCoverSheetViewControllerBase *)self initWithNibName:0 bundle:0];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_plugin, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = SBDashBoardPluginViewController;
  v2 = [(SBDashBoardPluginViewController *)&v4 view];

  return v2;
}

- (void)viewDidLoad
{
  v3 = [(SBLockScreenPlugin *)self->_plugin viewController];
  v4 = v3;
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SBDashBoardPluginViewController_viewDidLoad__block_invoke;
    v7[3] = &unk_2783A9460;
    v8 = v3;
    v9 = self;
    [(SBDashBoardPluginViewController *)self bs_addChildViewController:v8 animated:0 transitionBlock:v7];
  }

  v5 = [(SBDashBoardPluginViewController *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:v5 forRole:2];

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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:a3];
  [(SBLockScreenPlugin *)self->_plugin setDelegate:self];
  [(SBDashBoardPluginViewController *)self _updateLegibility];
  v4 = [(SBDashBoardPluginViewController *)self view];
  v5 = [(SBLockScreenPlugin *)self->_plugin appearance];
  [v5 presentationRegion];
  [v4 setPresentationRegion:?];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(SBLockScreenPlugin *)self->_plugin setDelegate:0];
  v5.receiver = self;
  v5.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:v3];
}

- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBLockScreenPlugin *)self->_plugin viewController];

  if (v10)
  {
    v11 = [(SBLockScreenPlugin *)self->_plugin viewController];
    v12 = [v11 pluginAnimateAppearanceTransition:v6 withCompletion:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBDashBoardPluginViewController;
    [(CSCoverSheetViewControllerBase *)&v13 performCustomTransitionToVisible:v6 withAnimationSettings:v8 completion:v9];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SBDashBoardPluginViewController;
  v7 = a4;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBDashBoardPluginViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A9488;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
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
  v3 = [(CSCoverSheetViewControllerBase *)&v7 succinctDescriptionBuilder];
  v4 = [(SBLockScreenPlugin *)self->_plugin name];
  v5 = [v3 appendObject:v4 withName:@"plugin"];

  return v3;
}

- (void)aggregateAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateAppearance:v4];
  v5 = [(SBLockScreenPlugin *)self->_plugin coverSheetAppearance:v6.receiver];
  [v4 unionAppearance:v5];
}

- (void)aggregateBehavior:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBDashBoardPluginViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:v4];
  v5 = [(SBLockScreenPlugin *)self->_plugin coverSheetBehavior:v6.receiver];
  [v4 unionBehavior:v5];

  [v4 setIdleTimerDuration:12];
  [v4 setIdleTimerMode:2];
  [v4 setIdleWarnMode:1];
}

- (void)updateForPresentation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 regions];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v18 + 1) + 8 * i) role] == 2)
        {
          v7 = 0.0;
          goto LABEL_11;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [(SBDashBoardPluginViewController *)self view];
  [v11 setAlpha:v7];

  v12 = [(SBLockScreenPlugin *)self->_plugin controller];
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_alloc_init(MEMORY[0x277D67968]);
    v14 = [MEMORY[0x277D67948] defaultSettings];
    [v13 setLegibilitySettings:v14];

    v15 = [(SBDashBoardPluginViewController *)self view];
    [v15 bounds];
    [v4 suggestedInsetsForPreferredContentFrame:?];
    [v13 setSuggestedContentInsets:?];

    v16 = [v13 copy];
    [v12 updateForPresentation:v16];
  }

  v17.receiver = self;
  v17.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v17 updateForPresentation:v4];
}

- (id)_newDisplayLayoutElement
{
  v2 = [(SBDashBoardPluginViewController *)self plugin];
  v3 = [v2 name];
  v4 = [v3 isEqualToString:@"MapsLockScreen"];

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

- (void)willTransitionToPresented:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SBDashBoardPluginViewController;
  [(CSCoverSheetViewControllerBase *)&v9 willTransitionToPresented:?];
  if (!a3)
  {
    v5 = [(SBLockScreenPlugin *)self->_plugin viewController];
    [(SBDashBoardPluginViewController *)self bs_removeChildViewController:v5];

    [(SBDashBoardPluginViewController *)self setView:0];
    v6 = [(CSCoverSheetViewControllerBase *)self kitPresentedViewController];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 presentingViewController];
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (int64_t)presentationStyle
{
  v2 = [(SBLockScreenPlugin *)self->_plugin appearance];
  v3 = [v2 presentationStyle];

  if (v3 == 1)
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
  v2 = [(SBLockScreenPlugin *)self->_plugin viewController];
  v3 = [v2 pluginAnimatesAppearanceTransition:1] && (objc_opt_respondsToSelector() & 1) != 0;

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
  v6 = [(SBLockScreenPlugin *)self->_plugin name];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (void)pluginAppearanceDidChange:(id)a3
{
  v5 = [(SBDashBoardPluginViewController *)self viewIfLoaded];
  v4 = [(SBLockScreenPlugin *)self->_plugin appearance];
  [v4 presentationRegion];
  [v5 setPresentationRegion:?];

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDashBoardPluginViewController;
  if ((!-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0) && !-[SBLockScreenPlugin handleDashBoardEvent:](self->_plugin, "handleDashBoardEvent:", v4))
  {
    if ([v4 type] != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    [(SBDashBoardPluginViewController *)self _updateLegibility];
  }

  v5 = [v4 isConsumable];
LABEL_7:

  return v5;
}

- (void)_updateLegibility
{
  v5 = [(SBLockScreenPlugin *)self->_plugin controller];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    v4 = [v3 legibilitySettings];
    [v5 setLegibilitySettings:v4];
  }
}

- (int64_t)_presentationPriority
{
  v3 = [(SBLockScreenPlugin *)self->_plugin name];
  v4 = [v3 isEqualToString:@"FindMyiPhoneLockScreen"];

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
    v7 = [(SBLockScreenPlugin *)self->_plugin appearance];
    v8 = [v7 notificationBehavior];

    if (v8 == 3)
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