@interface SBMenuBarViewController
- (BOOL)_addOverflowMenuToContainerIfNeededForcingViewLayout:(BOOL)a3;
- (NSArray)additionalKeyboardShortcutActionsForSession;
- (SBMenuBarMainMenuView)previouslyPresentedMenu;
- (SBMenuBarViewController)initWithScene:(id)a3 delegate:(id)a4 animateInitialPresentation:(BOOL)a5 loadCompletion:(id)a6;
- (SBMenuBarViewControllerDelegate)delegate;
- (_UISceneFocusSystemController)focusSystemController;
- (double)desiredBlurWidth;
- (double)yOffsetForPresentedMenuForMainMenuView:(id)a3;
- (id)_createMainMenuViewForUIMainMenu:(id)a3 type:(int64_t)a4;
- (id)_mainMenuViewPassingTest:(id)a3;
- (id)_systemHelpMenus;
- (id)_uiDeferredMenuElementForMainMenuDeferredElement:(id)a3 parentState:(id)a4;
- (id)_uiMenuElementForChildMainMenuElement:(id)a3 parentMenuState:(id)a4;
- (id)_uiMenuElementsForMainMenuElements:(id)a3 parentMenuState:(id)a4;
- (id)_uiMenuForMainMenu:(id)a3 menuState:(id)a4;
- (id)_uiMenuLeafForMainMenuCommand:(id)a3 parentMenuState:(id)a4;
- (id)beginSceneFocusSystemActivationAssertionForMainMenuView:(id)a3;
- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a3;
- (id)hostKeyboardShortcutsForMainMenu:(id)a3;
- (id)menuBarHelpMenuProviderDemoMenuProvider:(id)a3;
- (id)overrideClientNameForMainMenu:(id)a3;
- (void)_adjustPresentedMenuForPointerOverViewInContainer:(id)a3 forPanGesture:(BOOL)a4;
- (void)_applyStyleAttributes:(id)a3;
- (void)_cancelEndSessionTimer;
- (void)_clearSessionState;
- (void)_createHelpMenuProviderIfNeeded;
- (void)_createWindowControlsPlaceholderViewForViewController:(id)a3;
- (void)_handleMenuPanGesture:(id)a3;
- (void)_loadAllMainMenusWithCompletion:(id)a3;
- (void)_movePresentedMenuViewToPreviouslyPresented;
- (void)_navigateToNextMenuHeaderForArrowKeyPress:(id)a3;
- (void)_performMainMenuCommandInvocationRequestForCommand:(id)a3 withAuthenticationMessage:(id)a4;
- (void)_possiblyFlashMenuViewPassingTest:(id)a3;
- (void)_presentMenuViewNonInteractively:(id)a3 forPointerHover:(BOOL)a4;
- (void)_runCommandFromContext:(id)a3;
- (void)_scheduleEndSessionTimer;
- (void)_updateWindowControlsPosition;
- (void)addAlongsidePresentationAnimations:(id)a3;
- (void)addPresentationCompletionBlock:(id)a3;
- (void)addWindowControlsAlongsideAnimations:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didPresentContextMenuForMainMenuView:(id)a3;
- (void)dismissAnimated:(BOOL)a3 alongsideAnimations:(id)a4 completion:(id)a5;
- (void)flashMainMenuIfPossible:(id)a3;
- (void)loadMenuElementsForMainMenus:(id)a3 handler:(id)a4;
- (void)loadView;
- (void)mainMenuDidInvalidate:(id)a3;
- (void)mainMenuProvider:(id)a3 didReceiveCommandInvocationNotification:(id)a4;
- (void)menuBarHelpMenuProvider:(id)a3 handleOpenApplicationTipWithURL:(id)a4;
- (void)noteSearchUsedInMenuBarHelpMenuProvider:(id)a3;
- (void)openApplicationMenu;
- (void)openHelpMenu;
- (void)setMenuBarContentIsLight:(BOOL)a3;
- (void)testInvalidation;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)willDismissContextMenuForMainMenuView:(id)a3 forPointerClick:(BOOL)a4;
- (void)willLoadMenuElementsForMainMenuView:(id)a3;
- (void)willPresentContextMenuForMainMenuView:(id)a3 forPointerClick:(BOOL)a4;
@end

@implementation SBMenuBarViewController

- (SBMenuBarViewController)initWithScene:(id)a3 delegate:(id)a4 animateInitialPresentation:(BOOL)a5 loadCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SBMenuBarViewController;
  v14 = [(SBMenuBarViewController *)&v22 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_menuProvidingScene, a3);
    objc_storeWeak(&v15->_delegate, v12);
    v16 = +[SBMenuBarDomain rootSettings];
    menuBarSettings = v15->_menuBarSettings;
    v15->_menuBarSettings = v16;

    v15->_animateInitialPresentation = a5;
    v18 = [(FBScene *)v15->_menuProvidingScene mainMenuProvider];
    mainMenuProvider = v15->_mainMenuProvider;
    v15->_mainMenuProvider = v18;

    [(_UISceneMainMenuProviding *)v15->_mainMenuProvider setHost:v15];
    v20 = [(FBScene *)v15->_menuProvidingScene focusSystemController];
    objc_storeWeak(&v15->_focusSystemController, v20);

    [(SBMenuBarViewController *)v15 _loadAllMainMenusWithCompletion:v13];
  }

  return v15;
}

- (void)dealloc
{
  [(_UISceneMainMenuProviding *)self->_mainMenuProvider setHost:0];
  v3.receiver = self;
  v3.super_class = SBMenuBarViewController;
  [(SBMenuBarViewController *)&v3 dealloc];
}

- (void)setMenuBarContentIsLight:(BOOL)a3
{
  if (self->_menuBarContentIsLight != a3)
  {
    self->_menuBarContentIsLight = a3;
    gradientView = self->_gradientView;
    if (gradientView)
    {
      [(SBMenuBarBackgroundGradientView *)gradientView setMenuBarContentIsLight:?];
    }
  }
}

- (void)addAlongsidePresentationAnimations:(id)a3
{
  v4 = [a3 copy];
  alongsidePresentationAnimations = self->_alongsidePresentationAnimations;
  self->_alongsidePresentationAnimations = v4;
}

- (void)addPresentationCompletionBlock:(id)a3
{
  v4 = a3;
  presentationCompletionBlocks = self->_presentationCompletionBlocks;
  v9 = v4;
  if (!presentationCompletionBlocks)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_presentationCompletionBlocks;
    self->_presentationCompletionBlocks = v6;

    presentationCompletionBlocks = self->_presentationCompletionBlocks;
  }

  v8 = MEMORY[0x223D6F7F0]();
  [(NSMutableArray *)presentationCompletionBlocks addObject:v8];
}

- (void)dismissAnimated:(BOOL)a3 alongsideAnimations:(id)a4 completion:(id)a5
{
  v6 = a3;
  v49[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SBMenuBarMainMenuView *)self->_presentedMainMenuView contextMenuInteraction];
  [v10 dismissMenu];

  presentedMainMenuView = self->_presentedMainMenuView;
  self->_presentedMainMenuView = 0;

  v12 = objc_alloc_init(MEMORY[0x277D76108]);
  [v12 setSessionToEnd:self->_session];
  [(_UISceneMainMenuProviding *)self->_mainMenuProvider performSessionRequest:v12 handler:0];
  [(SBMenuBarViewController *)self _clearSessionState];
  if (v6 && [(UIView *)self->_backgroundEffectContainerView _isInAWindow])
  {
    v13 = [SBMenuBarAppearanceTransitionBackdropLayerView alloc];
    v14 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v15 = [(UIView *)self->_backgroundEffectContainerView window];
    [v15 insertSubview:v14 atIndex:0];

    [(SBMenuBarAppearanceTransitionBackdropLayerView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = MEMORY[0x277CCAAD0];
    v41 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v14 centerXAnchor];
    v40 = [(UIView *)self->_backgroundEffectContainerView centerXAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v49[0] = v39;
    v38 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v14 topAnchor];
    v37 = [(UIView *)self->_backgroundEffectContainerView topAnchor];
    v35 = [v38 constraintEqualToAnchor:v37];
    v49[1] = v35;
    v34 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v14 widthAnchor];
    v16 = [(UIView *)self->_backgroundEffectContainerView widthAnchor];
    v17 = [v34 constraintEqualToAnchor:v16];
    v49[2] = v17;
    [(SBMenuBarAppearanceTransitionBackdropLayerView *)v14 heightAnchor];
    v18 = v42 = v8;
    [(UIView *)self->_backgroundEffectContainerView heightAnchor];
    v19 = v43 = v9;
    v20 = [v18 constraintEqualToAnchor:v19 constant:15.0];
    v49[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v36 activateConstraints:v21];

    v9 = v43;
    v8 = v42;
  }

  else
  {
    v14 = 0;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __74__SBMenuBarViewController_dismissAnimated_alongsideAnimations_completion___block_invoke;
  v47[3] = &unk_2783A98A0;
  v47[4] = self;
  v22 = v8;
  v48 = v22;
  v23 = MEMORY[0x223D6F7F0](v47);
  v24 = v23;
  self->_dismissed = 1;
  if (v6)
  {
    v25 = MEMORY[0x277D75D18];
    [(SBMenuBarSettings *)self->_menuBarSettings entryAnimationDuration];
    v27 = v26;
    [(SBMenuBarSettings *)self->_menuBarSettings entryAnimationMass];
    v29 = v28;
    [(SBMenuBarSettings *)self->_menuBarSettings entryAnimationStiffness];
    v31 = v30;
    [(SBMenuBarSettings *)self->_menuBarSettings entryAnimationDamping];
    v33 = v32;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__SBMenuBarViewController_dismissAnimated_alongsideAnimations_completion___block_invoke_2;
    v44[3] = &unk_2783B3B78;
    v46 = v9;
    v45 = v14;
    [v25 _animateUsingSpringWithDuration:0 delay:v24 options:v44 mass:v27 stiffness:0.0 damping:v29 initialVelocity:v31 animations:v33 completion:0.0];
  }

  else
  {
    (*(v23 + 16))(v23);
    (*(v9 + 2))(v9, 1);
  }
}

void __74__SBMenuBarViewController_dismissAnimated_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  [*(*(a1 + 32) + 1176) setAlpha:0.0];
  memset(&v8, 0, sizeof(v8));
  [WeakRetained containerHeightForMenuBarViewController:*(a1 + 32)];
  CGAffineTransformMakeTranslation(&v8, 0.0, -v3);
  v4 = *(*(a1 + 32) + 1144);
  v7 = v8;
  [v4 setTransform:&v7];
  v5 = [WeakRetained windowControlsWrapperView];
  v7 = v8;
  [v5 setTransform:&v7];

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t __74__SBMenuBarViewController_dismissAnimated_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 removeFromSuperview];
}

- (void)addWindowControlsAlongsideAnimations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained windowControlsViewController];

  [v9 setContextMenuContainerView:self->_contextMenuContainerView];
  [(SBMenuBarViewController *)self _createWindowControlsPlaceholderViewForViewController:v9];
  [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView prependMenuView:self->_windowControlsPlaceholderView];
  [(UIView *)self->_windowControlsPlaceholderView layoutIfNeeded];
  [(SBMenuBarViewController *)self _updateWindowControlsPosition];
  v10 = [(SBMenuBarViewController *)self _addOverflowMenuToContainerIfNeededForcingViewLayout:0];
  v11 = objc_loadWeakRetained(&self->_delegate);
  memset(&v23, 0, sizeof(v23));
  [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView frame];
  MinX = CGRectGetMinX(v24);
  [v11 containerHeightForMenuBarViewController:self];
  CGAffineTransformMakeTranslation(&v23, MinX, -v13);
  v14 = [v11 windowControlsWrapperView];
  v22 = v23;
  [v14 setTransform:&v22];

  if (v10)
  {
    [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView layoutIfNeeded];
  }

  v15 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__SBMenuBarViewController_addWindowControlsAlongsideAnimations_completion___block_invoke;
  v18[3] = &unk_2783A9C20;
  v20 = self;
  v21 = v6;
  v19 = v11;
  v16 = v11;
  v17 = v6;
  [v15 _animateUsingDefaultTimingWithOptions:0 animations:v18 completion:v7];
}

void __75__SBMenuBarViewController_addWindowControlsAlongsideAnimations_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) windowControlsWrapperView];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];

  v4 = [*(a1 + 40) view];
  [v4 layoutIfNeeded];
}

- (void)openApplicationMenu
{
  v2 = [(SBMenuBarViewController *)self _mainMenuViewPassingTest:&__block_literal_global_265];
  if (v2)
  {
    v3 = v2;
    [v2 performPrimaryAction];
    v2 = v3;
  }
}

- (void)openHelpMenu
{
  v2 = [(SBMenuBarViewController *)self _mainMenuViewPassingTest:&__block_literal_global_14_2];
  if (v2)
  {
    v3 = v2;
    [v2 performPrimaryAction];
    v2 = v3;
  }
}

uint64_t __39__SBMenuBarViewController_openHelpMenu__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mainMenu];
  v3 = [v2 identifier];
  v4 = [v3 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76CF8]];

  return v4;
}

- (void)flashMainMenuIfPossible:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBMenuBarViewController_flashMainMenuIfPossible___block_invoke;
  v6[3] = &unk_2783BCE48;
  v7 = v4;
  v5 = v4;
  [(SBMenuBarViewController *)self _possiblyFlashMenuViewPassingTest:v6];
}

uint64_t __51__SBMenuBarViewController_flashMainMenuIfPossible___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mainMenu];
  v4 = [v3 identifier];
  v5 = [v4 isEquivalentToUIMenuIdentifier:*(a1 + 32)];

  return v5;
}

- (void)_adjustPresentedMenuForPointerOverViewInContainer:(id)a3 forPanGesture:(BOOL)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  presentedMainMenuView = self->_presentedMainMenuView;
  if (presentedMainMenuView)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [(SBMenuBarMainMenuView *)presentedMainMenuView setDismissingMenuForPointerHover:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__SBMenuBarViewController__adjustPresentedMenuForPointerOverViewInContainer_forPanGesture___block_invoke;
    v14[3] = &unk_2783A8C18;
    v14[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v14];
    goto LABEL_16;
  }

  if (v10 && ![(SBMenuBarMainMenuView *)v10 isTransitioningMenuForPointerInteraction])
  {
    v13 = self->_presentedMainMenuView;
    if (v13)
    {
      if (v13 != v10)
      {
LABEL_14:
        [(SBMenuBarMainMenuView *)v13 setDismissingMenuForPointerHover:1];
        [(SBMenuBarViewController *)self _presentMenuViewNonInteractively:v10 forPointerHover:1];
      }
    }

    else if (self->_menuSessionIsActiveForPointer || a4)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
}

void __91__SBMenuBarViewController__adjustPresentedMenuForPointerOverViewInContainer_forPanGesture___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1160) contextMenuInteraction];
  [v1 dismissMenu];
}

- (NSArray)additionalKeyboardShortcutActionsForSession
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = self->_appKeyboardShortcutActionsForSession;
  if (self->_leftArrowNavigationAction && self->_rightArrowNavigationAction)
  {
    v4 = [(SBMenuBarMainMenuView *)self->_presentedMainMenuView mainMenu];
    v5 = [v4 identifier];
    if ([v5 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76CF8]])
    {
      v6 = [(SBMenuBarViewController *)self menuBarHelpMenuProvider];
      v7 = [v6 searchTextField];
      v8 = [v7 text];
      v9 = [v8 length];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    rightArrowNavigationAction = self->_rightArrowNavigationAction;
    v14[0] = self->_leftArrowNavigationAction;
    v14[1] = rightArrowNavigationAction;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v12 = [v11 arrayByAddingObjectsFromArray:v3];

    v3 = v12;
  }

LABEL_8:

  return v3;
}

- (void)testInvalidation
{
  v3 = objc_alloc_init(MEMORY[0x277D76108]);
  [v3 setSessionToEnd:self->_session];
  objc_initWeak(&location, self);
  mainMenuProvider = self->_mainMenuProvider;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SBMenuBarViewController_testInvalidation__block_invoke;
  v5[3] = &unk_2783BCE70;
  objc_copyWeak(&v6, &location);
  [(_UISceneMainMenuProviding *)mainMenuProvider performSessionRequest:v3 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__SBMenuBarViewController_testInvalidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mainMenuProvider];
  [WeakRetained mainMenuDidInvalidate:v1];
}

- (void)loadView
{
  v3 = [[SBStatusBarMenuBarView alloc] initWithMenuBarController:self];
  menuBarView = self->_menuBarView;
  self->_menuBarView = v3;

  [(SBStatusBarMenuBarView *)self->_menuBarView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBStatusBarMenuBarView *)self->_menuBarView setUserInteractionEnabled:1];
  [(SBMenuBarViewController *)self setView:self->_menuBarView];
  v5 = [[SBMenuBarPointerTrackingPanGestureRecognizer alloc] initWithMenuBarViewController:self];
  [(SBMenuBarPointerTrackingPanGestureRecognizer *)v5 setDelegate:self];
  [(SBMenuBarPointerTrackingPanGestureRecognizer *)v5 _setKeepTouchesOnContinuation:1];
  [(SBStatusBarMenuBarView *)self->_menuBarView addGestureRecognizer:v5];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v100[8] = *MEMORY[0x277D85DE8];
  v97.receiver = self;
  v97.super_class = SBMenuBarViewController;
  [(SBMenuBarViewController *)&v97 viewIsAppearing:a3];
  v4 = [(SBMenuBarViewController *)self delegate];
  v88 = [(SBMenuBarViewController *)self view];
  v5 = [v88 window];
  backgroundEffectContainerView = self->_backgroundEffectContainerView;
  v7 = MEMORY[0x277CBF3A0];
  v8 = 0x277CBE000;
  v89 = v4;
  v90 = v5;
  if (!backgroundEffectContainerView)
  {
    v9 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v10 = self->_backgroundEffectContainerView;
    self->_backgroundEffectContainerView = v9;

    v11 = [[SBMenuBarBackgroundGradientView alloc] initWithMenuBarContentIsLight:self->_menuBarContentIsLight];
    gradientView = self->_gradientView;
    self->_gradientView = v11;

    [(UIView *)self->_backgroundEffectContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMenuBarBackgroundGradientView *)self->_gradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 insertSubview:self->_backgroundEffectContainerView atIndex:0];
    [(UIView *)self->_backgroundEffectContainerView addSubview:self->_gradientView];
    v63 = MEMORY[0x277CCAAD0];
    v85 = [(UIView *)self->_backgroundEffectContainerView centerXAnchor];
    v82 = [v5 centerXAnchor];
    v79 = [v85 constraintEqualToAnchor:v82];
    v100[0] = v79;
    v76 = [(UIView *)self->_backgroundEffectContainerView topAnchor];
    v73 = [v5 topAnchor];
    v70 = [v76 constraintEqualToAnchor:v73];
    v100[1] = v70;
    v68 = [(UIView *)self->_backgroundEffectContainerView widthAnchor];
    v66 = [v5 widthAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v100[2] = v64;
    v62 = [(UIView *)self->_backgroundEffectContainerView heightAnchor];
    [v4 containerHeightForMenuBarViewController:self];
    v61 = [v62 constraintEqualToConstant:v13 + v13];
    v100[3] = v61;
    v60 = [(SBMenuBarBackgroundGradientView *)self->_gradientView centerXAnchor];
    v59 = [(UIView *)self->_backgroundEffectContainerView centerXAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v100[4] = v58;
    v57 = [(SBMenuBarBackgroundGradientView *)self->_gradientView centerYAnchor];
    v56 = [(UIView *)self->_backgroundEffectContainerView centerYAnchor];
    v14 = [v57 constraintEqualToAnchor:v56];
    v100[5] = v14;
    v15 = [(SBMenuBarBackgroundGradientView *)self->_gradientView heightAnchor];
    v16 = [(UIView *)self->_backgroundEffectContainerView heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v100[6] = v17;
    v18 = [(SBMenuBarBackgroundGradientView *)self->_gradientView widthAnchor];
    v19 = [(UIView *)self->_backgroundEffectContainerView widthAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v100[7] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:8];
    [v63 activateConstraints:v21];

    v8 = 0x277CBE000;
    v7 = MEMORY[0x277CBF3A0];

    v5 = v90;
    v4 = v89;

    backgroundEffectContainerView = self->_backgroundEffectContainerView;
  }

  v22 = [(UIView *)backgroundEffectContainerView layer];
  [v22 setAllowsGroupOpacity:0];

  v23 = [(UIView *)self->_backgroundEffectContainerView layer];
  [v23 setAllowsGroupBlending:0];

  if (!self->_variableBlurView && [(SBMenuBarViewController *)self variableBlurNeeded])
  {
    v24 = [[SBMenuBarBackgroundVariableBlurView alloc] initWithDelegate:self];
    variableBlurView = self->_variableBlurView;
    self->_variableBlurView = v24;

    [(SBMenuBarBackgroundVariableBlurView *)self->_variableBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_backgroundEffectContainerView insertSubview:self->_variableBlurView atIndex:0];
    v71 = MEMORY[0x277CCAAD0];
    v86 = [(SBMenuBarBackgroundVariableBlurView *)self->_variableBlurView centerXAnchor];
    v83 = [(UIView *)self->_backgroundEffectContainerView centerXAnchor];
    v80 = [v86 constraintEqualToAnchor:v83];
    v99[0] = v80;
    v77 = [(SBMenuBarBackgroundVariableBlurView *)self->_variableBlurView topAnchor];
    v74 = [(UIView *)self->_backgroundEffectContainerView topAnchor];
    v69 = [v77 constraintEqualToAnchor:v74];
    v99[1] = v69;
    v67 = [(SBMenuBarBackgroundVariableBlurView *)self->_variableBlurView heightAnchor];
    v65 = [(UIView *)self->_backgroundEffectContainerView heightAnchor];
    v26 = [v67 constraintEqualToAnchor:v65 constant:15.0];
    v99[2] = v26;
    v27 = [(SBMenuBarBackgroundVariableBlurView *)self->_variableBlurView widthAnchor];
    v28 = [(UIView *)self->_backgroundEffectContainerView widthAnchor];
    [v27 constraintEqualToAnchor:v28];
    v30 = v29 = v4;
    v99[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:4];
    [v71 activateConstraints:v31];

    v4 = v29;
    v5 = v90;

    v8 = 0x277CBE000uLL;
  }

  [(UIView *)self->_backgroundEffectContainerView setAlpha:0.0];
  [(SBMenuBarViewController *)self _updateWindowControlsPosition];
  memset(&v96, 0, sizeof(v96));
  [v4 containerHeightForMenuBarViewController:self];
  CGAffineTransformMakeTranslation(&v96, 0.0, -v32);
  menuHeaderContainerView = self->_menuHeaderContainerView;
  v95 = v96;
  [(SBMenuBarHeaderContainerView *)menuHeaderContainerView setTransform:&v95];
  v34 = [v4 windowControlsWrapperView];
  v95 = v96;
  [v34 setTransform:&v95];

  v35 = [[SBMenuBarAppearanceTransitionBackdropLayerView alloc] initWithFrame:*v7, v7[1], v7[2], v7[3]];
  [v5 insertSubview:v35 atIndex:0];
  [(SBMenuBarAppearanceTransitionBackdropLayerView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = MEMORY[0x277CCAAD0];
  v87 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v35 centerXAnchor];
  v84 = [(UIView *)self->_backgroundEffectContainerView centerXAnchor];
  v81 = [v87 constraintEqualToAnchor:v84];
  v98[0] = v81;
  v78 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v35 topAnchor];
  v75 = [(UIView *)self->_backgroundEffectContainerView topAnchor];
  v36 = [v78 constraintEqualToAnchor:v75];
  v98[1] = v36;
  v37 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v35 widthAnchor];
  v38 = [(UIView *)self->_backgroundEffectContainerView widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v98[2] = v39;
  v40 = [(SBMenuBarAppearanceTransitionBackdropLayerView *)v35 heightAnchor];
  v41 = [(UIView *)self->_backgroundEffectContainerView heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];
  v98[3] = v42;
  v43 = [*(v8 + 2656) arrayWithObjects:v98 count:4];
  [v72 activateConstraints:v43];

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __43__SBMenuBarViewController_viewIsAppearing___block_invoke;
  v93[3] = &unk_2783A92D8;
  v93[4] = self;
  v44 = v89;
  v94 = v44;
  v45 = MEMORY[0x223D6F7F0](v93);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __43__SBMenuBarViewController_viewIsAppearing___block_invoke_2;
  v91[3] = &unk_2783A8BF0;
  v91[4] = self;
  v46 = v35;
  v92 = v46;
  v47 = MEMORY[0x223D6F7F0](v91);
  if (self->_animateInitialPresentation)
  {
    v48 = MEMORY[0x277D75D18];
    [(SBMenuBarSettings *)self->_menuBarSettings exitAnimationDuration];
    v50 = v49;
    [(SBMenuBarSettings *)self->_menuBarSettings exitAnimationMass];
    v52 = v51;
    [(SBMenuBarSettings *)self->_menuBarSettings exitAnimationStiffness];
    v54 = v53;
    [(SBMenuBarSettings *)self->_menuBarSettings exitAnimationDamping];
    [v48 _animateUsingSpringWithDuration:2 delay:v45 options:v47 mass:v50 stiffness:0.0 damping:v52 initialVelocity:v54 animations:v55 completion:0.0];
  }

  else
  {
    v45[2](v45);
    v47[2](v47, 1);
  }
}

void __43__SBMenuBarViewController_viewIsAppearing___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1176) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1144);
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  v9 = v10;
  v11 = v8;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = v12;
  [v2 setTransform:&v10];
  v3 = [*(a1 + 40) windowControlsWrapperView];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v3 setTransform:&v10];

  if (*(*(a1 + 32) + 1008))
  {
    v4 = MEMORY[0x223D6F7F0]();
    v5 = *(a1 + 32);
    v6 = *(v5 + 1008);
    *(v5 + 1008) = 0;

    v4[2](v4);
  }
}

uint64_t __43__SBMenuBarViewController_viewIsAppearing___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1016);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 1016);
    *(v8 + 1016) = 0;
  }

  return [*(a1 + 40) removeFromSuperview];
}

- (void)viewDidAppear:(BOOL)a3
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBMenuBarViewController;
  [(SBMenuBarViewController *)&v29 viewDidAppear:a3];
  v4 = objc_alloc(MEMORY[0x277D65F80]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  contextMenuContainerView = self->_contextMenuContainerView;
  self->_contextMenuContainerView = v5;

  v7 = self->_contextMenuContainerView;
  v8 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v7 setBackgroundColor:v8];

  [(UIView *)self->_contextMenuContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(SBMenuBarViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 rootViewController];
  v12 = [v11 view];

  [v12 insertSubview:self->_contextMenuContainerView atIndex:0];
  v23 = MEMORY[0x277CCAAD0];
  v28 = [(UIView *)self->_contextMenuContainerView widthAnchor];
  v27 = [v12 widthAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v30[0] = v26;
  v25 = [(UIView *)self->_contextMenuContainerView heightAnchor];
  v24 = [v12 heightAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v30[1] = v22;
  v13 = [(UIView *)self->_contextMenuContainerView centerXAnchor];
  v14 = [v12 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v30[2] = v15;
  v16 = [(UIView *)self->_contextMenuContainerView centerYAnchor];
  v17 = [v12 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v30[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v23 activateConstraints:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = [WeakRetained windowControlsViewController];
  [v21 setContextMenuContainerView:self->_contextMenuContainerView];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBMenuBarViewController;
  [(SBMenuBarViewController *)&v4 viewDidDisappear:a3];
  [(_UISceneMainMenuProviding *)self->_mainMenuProvider setHost:0];
}

- (void)_loadAllMainMenusWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  mainMenuProvider = self->_mainMenuProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke;
  v7[3] = &unk_2783BCE98;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(_UISceneMainMenuProviding *)mainMenuProvider getBaseMainMenu:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v57[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (WeakRetained[128] & 1) == 0 && ([v3 children], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v46 = a1;
    [v5 setBaseMainMenu:v3];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = objc_loadWeakRetained(v5 + 132);
    v10 = [v9 windowControlsViewController];
    if (v10)
    {
      [v5 _createWindowControlsPlaceholderViewForViewController:v10];
      [v8 addObject:v5[124]];
    }

    v47 = v10;
    v50 = v3;
    v11 = [v3 children];
    if ([v11 count])
    {
      v12 = 0;
      do
      {
        v13 = [v11 objectAtIndex:v12];
        v14 = objc_opt_class();
        v15 = v13;
        if (v14)
        {
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (v17)
        {
          v18 = [v5 _createMainMenuViewForUIMainMenu:v17 type:v12 == 0];
          [v8 addObject:v18];
        }

        ++v12;
      }

      while (v12 < [v11 count]);
    }

    v19 = v5[143];
    v20 = [SBMenuBarHeaderContainerView alloc];
    [v9 containerHeightForMenuBarViewController:v5];
    v49 = v8;
    v21 = [(SBMenuBarHeaderContainerView *)v20 initWithMenuHeaderViews:v8 contentHeight:?];
    [(SBMenuBarHeaderContainerView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMenuBarHeaderContainerView *)v21 sizeToFit];
    [(SBMenuBarHeaderContainerView *)v21 setUserInteractionEnabled:1];
    objc_storeStrong(v5 + 143, v21);
    v22 = [v5 view];
    [v22 addSubview:v21];
    v48 = v9;
    v23 = [v9 windowControlsViewController];
    [v23 didMoveToParentViewController:v5];

    v45 = v19;
    if (v19)
    {
      v24 = [v5 currentStyleAttributes];

      if (v24)
      {
        [v5 _addOverflowMenuToContainerIfNeededForcingViewLayout:1];
      }
    }

    v38 = MEMORY[0x277CCAAD0];
    v43 = [v22 heightAnchor];
    v42 = [(SBMenuBarHeaderContainerView *)v21 heightAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v57[0] = v41;
    v40 = [v22 widthAnchor];
    v39 = [(SBMenuBarHeaderContainerView *)v21 widthAnchor];
    v37 = [v40 constraintEqualToAnchor:v39];
    v57[1] = v37;
    v25 = [v22 centerXAnchor];
    v26 = [(SBMenuBarHeaderContainerView *)v21 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v57[2] = v27;
    v44 = v22;
    v28 = [v22 centerYAnchor];
    v29 = [(SBMenuBarHeaderContainerView *)v21 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v57[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
    [v38 activateConstraints:v31];

    if (v45)
    {
      [v5 _updateWindowControlsPosition];
      [(SBMenuBarHeaderContainerView *)v21 setAlpha:0.0];
      v32 = MEMORY[0x277D75D18];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke_2;
      v54[3] = &unk_2783A92D8;
      v55 = v45;
      v56 = v21;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke_3;
      v51[3] = &unk_2783A9C98;
      v52 = v55;
      v53 = *(v46 + 32);
      [v32 _animateUsingDefaultTimingWithOptions:0 animations:v54 completion:v51];

      v33 = v49;
      v3 = v50;
      v34 = v48;
    }

    else
    {
      v36 = *(v46 + 32);
      v33 = v49;
      v3 = v50;
      v34 = v48;
      if (v36)
      {
        (*(v36 + 16))(v36, 1);
      }
    }
  }

  else
  {
    v35 = *(a1 + 32);
    if (v35)
    {
      (*(v35 + 16))(v35, 0);
    }
  }
}

uint64_t __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __59__SBMenuBarViewController__loadAllMainMenusWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_createMainMenuViewForUIMainMenu:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [[SBMenuBarMainMenuView alloc] initWithMainMenu:v6 type:a4 delegate:self];
  [(SBMenuBarMainMenuView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(SBMenuBarMainMenuView *)v7 layer];
  [v8 setHitTestsAsOpaque:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained shouldDisableMenusForAppRestrictionForViewController:self];

  if (v10)
  {
    [(SBMenuBarMainMenuView *)v7 setEnabled:0];
  }

  else
  {
    [(SBMenuBarMainMenuView *)v7 setShowsMenuAsPrimaryAction:1];
    [(SBMenuBarMainMenuView *)v7 setContextMenuInteractionEnabled:1];
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __65__SBMenuBarViewController__createMainMenuViewForUIMainMenu_type___block_invoke;
  v15 = &unk_2783BCEC0;
  objc_copyWeak(&v16, &location);
  [(SBMenuBarMainMenuView *)v7 setConfigurationUpdateHandler:&v12];
  [(SBMenuBarMainMenuView *)v7 sizeToFit:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v7;
}

void __65__SBMenuBarViewController__createMainMenuViewForUIMainMenu_type___block_invoke(uint64_t a1, void *a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_opt_class();
    v6 = v3;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [v8 configuration];
      if (([v8 isHeld] & 1) != 0 || objc_msgSend(v8, "isSelected"))
      {
        v10 = [MEMORY[0x277D75230] tintedButtonConfiguration];

        v9 = [MEMORY[0x277D751C0] clearConfiguration];
        v11 = [MEMORY[0x277D26718] materialViewWithRecipe:1];
        if ([WeakRetained menuBarContentIsLight])
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        [v11 setOverrideUserInterfaceStyle:v12];
        [v9 setCustomView:v11];
        v13 = [WeakRetained delegate];
        [v13 containerHeightForMenuBarViewController:WeakRetained];
        v15 = v14;
        [v13 contentHeightForMenuBarViewController:WeakRetained];
        [v9 setBackgroundInsets:{(v15 - v16) * 0.5, 0.0, (v15 - v16) * 0.5, 0.0}];
        [v10 setBackground:v9];
        [v10 setCornerStyle:4];
      }

      else
      {
        v10 = [MEMORY[0x277D75230] plainButtonConfiguration];
      }

      v17 = [WeakRetained currentStyleAttributes];
      v18 = [v17 textColor];
      if (([v8 isEnabled] & 1) == 0)
      {
        v19 = [v18 colorWithAlphaComponent:0.5];

        v18 = v19;
      }

      if ([WeakRetained menuBarContentIsLight])
      {
        [MEMORY[0x277D75348] systemBlackColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemWhiteColor];
      }
      v20 = ;
      if (v17)
      {
        v29[0] = *MEMORY[0x277D740A8];
        if ([v8 type] == 1)
        {
          [v17 emphasizedFont];
        }

        else
        {
          [v17 font];
        }
        v22 = ;
        v30[0] = v22;
        v29[1] = *MEMORY[0x277D740C0];
        if ([v6 isHeld])
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        v30[1] = v23;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      }

      else
      {
        v21 = 0;
      }

      v24 = objc_alloc(MEMORY[0x277CCA898]);
      v25 = [v8 displayTitleWithAttributes:v21];
      v26 = [v24 initWithAttributedString:v25];

      [v10 setAttributedTitle:v26];
      [WeakRetained[129] menuTitleSpacing];
      v28 = v27;
      if ([v8 type] != 2)
      {
        [v10 setContentInsets:{0.0, v28 * 0.5, 0.0, v28 * 0.5}];
      }

      [v8 setConfiguration:v10];
    }
  }
}

- (void)_applyStyleAttributes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(STUIStatusBarStyleAttributes *)self->_currentStyleAttributes isEqual:v5]& 1) == 0)
  {
    currentStyleAttributes = self->_currentStyleAttributes;
    objc_storeStrong(&self->_currentStyleAttributes, a3);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView menuHeaderViews];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_opt_class();
          v14 = v12;
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          [v16 setNeedsUpdateConfiguration];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if (!currentStyleAttributes)
    {
      [(SBMenuBarViewController *)self _addOverflowMenuToContainerIfNeededForcingViewLayout:1];
    }
  }
}

- (BOOL)_addOverflowMenuToContainerIfNeededForcingViewLayout:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained maximumContentWidthForMenuBarViewController:self];
  v7 = v6;

  if (BSFloatIsZero())
  {
    return 0;
  }

  if (v3)
  {
    [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView layoutIfNeeded];
  }

  [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView contentWidth];
  if (v8 <= v7)
  {
    return 0;
  }

  v9 = [(SBMenuBarViewController *)self _createMainMenuViewForUIMainMenu:0 type:2];
  [v9 sizeToFit];
  [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView appendOverflowMenuView:v9 fittingMaximumContentWidth:v7];

  return 1;
}

- (void)_updateWindowControlsPosition
{
  v17[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained windowControlsWrapperView];

  if (v4 && self->_windowControlsPlaceholderView)
  {
    v5 = [v4 window];
    v6 = [(UIView *)self->_windowControlsPlaceholderView window];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && BSEqualObjects())
    {
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = MEMORY[0x277CCAAD0];
      v9 = [v4 centerXAnchor];
      v10 = [(UIView *)self->_windowControlsPlaceholderView centerXAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v17[0] = v11;
      v12 = [v4 centerYAnchor];
      v13 = [(UIView *)self->_windowControlsPlaceholderView centerYAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v17[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      [v16 activateConstraints:v15];
    }
  }
}

- (void)_handleMenuPanGesture:(id)a3
{
  v13 = a3;
  if ([v13 state] == 2)
  {
    [v13 locationInView:self->_menuHeaderContainerView];
    v5 = v4;
    v7 = v6;
    [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView bounds];
    if (v7 <= CGRectGetMaxY(v15))
    {
      v8 = [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView hitTest:0 withEvent:v5, v7];
      v9 = objc_opt_class();
      v10 = v8;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      [(SBMenuBarViewController *)self _adjustPresentedMenuForPointerOverViewInContainer:v12 forPanGesture:1];
    }
  }
}

- (void)menuBarHelpMenuProvider:(id)a3 handleOpenApplicationTipWithURL:(id)a4
{
  v5 = a4;
  v6 = [(UIViewController *)self _sbDisplayConfiguration];
  SBWorkspaceActivateApplicationFromURLWithDisplayConfiguration(v5, v6, 0, &__block_literal_global_40_2);
}

- (id)menuBarHelpMenuProviderDemoMenuProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained menuBarDemoMenuProvider];

  return v4;
}

- (void)noteSearchUsedInMenuBarHelpMenuProvider:(id)a3
{
  v3 = [(UIViewController *)self _sbWindowScene];
  v4 = [v3 isExternalDisplayWindowScene];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277D65DD0] sharedInstance];
    [v5 emitEvent:71 withPayload:0];
  }
}

- (void)willLoadMenuElementsForMainMenuView:(id)a3
{
  v4 = a3;
  [(SBMenuBarViewController *)self _cancelEndSessionTimer];
  presentedMainMenuView = self->_presentedMainMenuView;

  if (presentedMainMenuView)
  {
    v6 = presentedMainMenuView == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    [(SBMenuBarViewController *)self _movePresentedMenuViewToPreviouslyPresented];
  }
}

- (void)loadMenuElementsForMainMenus:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke;
  v25[3] = &unk_2783BCEE8;
  v8 = v6;
  v26 = v8;
  v27 = self;
  objc_copyWeak(&v29, location);
  v9 = v7;
  v28 = v9;
  v10 = MEMORY[0x223D6F7F0](v25);
  v11 = [v8 bs_map:&__block_literal_global_58_2];
  v12 = [v11 bs_containsObjectPassingTest:&__block_literal_global_61_2];
  if (self->_session)
  {
    v13 = objc_alloc(MEMORY[0x277D76110]);
    v14 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v15 = [v13 initWithMenuIdentifiers:v14 session:self->_session];

    if (((self->_uncategorizedMenuState == 0) & v12) == 1)
    {
      [v15 setIncludeUncategorizedMenuState:1];
    }

    mainMenuProvider = self->_mainMenuProvider;
    v17 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_12;
    v21[3] = &unk_2783BCFA0;
    v18 = &v22;
    objc_copyWeak(&v22, location);
    v21[4] = v10;
    [(_UISceneMainMenuProviding *)mainMenuProvider performMainMenuStateRequest:v15 responseHandler:v21];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277D76108]);
    [v15 setBeginNewSession:1];
    [v15 setRequiresHostSideInvokableKeyboardShortcuts:1];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v11];
    [v15 setInitialMenuStateIdentifiers:v19];

    if (((self->_uncategorizedMenuState == 0) & v12) == 1)
    {
      [v15 setIncludeUncategorizedMenuState:1];
    }

    v20 = self->_mainMenuProvider;
    v17 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_7;
    v23[3] = &unk_2783BCF78;
    v18 = &v24;
    objc_copyWeak(&v24, location);
    v23[4] = v10;
    [(_UISceneMainMenuProviding *)v20 performSessionRequest:v15 handler:v23];
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&v29);

  objc_destroyWeak(location);
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = &off_21F8A5000;
  v31 = v3;
  if (v3)
  {
    v32 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v5)
    {
      v6 = *v39;
      v7 = *MEMORY[0x277D76CF8];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v38 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v31 objectForKey:v10];

          v12 = [*(a1 + 32) count] == 1;
          v13 = [*(a1 + 40) _uiMenuForMainMenu:v9 menuState:v11];
          v14 = v13;
          if (v12)
          {
            v15 = [v13 children];
            [v32 addObjectsFromArray:v15];
          }

          else
          {
            [v32 addObject:v13];
          }

          v16 = [v9 identifier];
          v17 = [v16 isEquivalentToUIMenuIdentifier:v7];

          if (v17)
          {
            [*(a1 + 40) _createHelpMenuProviderIfNeeded];
            v18 = *(a1 + 40);
            v42 = v18[137];
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_2;
            v36[3] = &unk_2783AC1F0;
            objc_copyWeak(&v37, (a1 + 56));
            [v18 loadMenuElementsForMainMenus:v19 handler:v36];

            objc_destroyWeak(&v37);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v5);
    }

    if ([v32 count] && (objc_msgSend(MEMORY[0x277D75710], "menuWithChildren:", v32), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "_hasVisibleChildren"), v20, (v21 & 1) != 0))
    {
      v4 = &off_21F8A5000;
      v22 = v32;
    }

    else
    {
      v23 = MEMORY[0x277D750C8];
      v24 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [v24 localizedStringForKey:@"EMPTY_MENU_PLACEHOLDER" value:&stru_283094718 table:@"SpringBoard"];
      v26 = [v23 actionWithTitle:v25 image:0 identifier:0 handler:&__block_literal_global_54_0];

      [v26 setAttributes:1];
      v22 = [MEMORY[0x277CBEB18] arrayWithObject:v26];

      v4 = &off_21F8A5000;
    }
  }

  else
  {
    v22 = 0;
  }

  v27 = MEMORY[0x277D75D18];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = *(v4 + 93);
  v33[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_4;
  v33[3] = &unk_2783B1320;
  v28 = *(a1 + 48);
  v33[4] = *(a1 + 40);
  v34 = v22;
  v35 = v28;
  v29 = v22;
  [v27 performWithoutAnimation:v33];
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = [v5 systemWindowArrangementMenuWithOptions:1792];
    if (v6)
    {
      v7 = [v13 arrayByAddingObject:v6];

      v13 = v7;
    }

    v8 = [v5 systemHideMenuWithOptions:1792];
    if (v8)
    {
      v9 = [v13 arrayByAddingObject:v8];

      v10 = v9;
    }

    else
    {
      v10 = v13;
    }

    v13 = v10;
    v11 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:1792 children:v10];
    v12 = [v4 menuBarHelpMenuProvider];
    [v12 setSearchableMenu:v11];
  }
}

uint64_t __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1168));
  v3 = [WeakRetained contextMenuInteraction];
  [v3 dismissMenu];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (WeakRetained[128] & 1) == 0)
  {
    v6 = [v3 session];
    objc_storeStrong(v5 + 136, v6);
    v7 = [v3 menuStateResponse];
    v8 = [v7 uncategorizedMenuState];

    if (v8)
    {
      v9 = [v7 uncategorizedMenuState];
      v10 = v5[138];
      v5[138] = v9;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_8;
    v24[3] = &unk_2783BCF50;
    objc_copyWeak(&v25, (a1 + 40));
    v11 = [v6 hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler:v24];
    v12 = v5[139];
    v5[139] = v11;

    v13 = [v5 menuHeaderContainerView];
    v14 = [v13 menuHeaderViews];
    v15 = [v14 count];

    if (v15 >= 2)
    {
      v22[1] = MEMORY[0x277D85DD0];
      v22[2] = 3221225472;
      v22[3] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_10;
      v22[4] = &unk_2783ADB30;
      objc_copyWeak(&v23, (a1 + 40));
      v16 = _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput();
      v17 = v5[140];
      v5[140] = v16;

      objc_copyWeak(v22, (a1 + 40));
      v18 = _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput();
      v19 = v5[141];
      v5[141] = v18;

      objc_destroyWeak(v22);
      objc_destroyWeak(&v23);
    }

    v20 = *(a1 + 32);
    v21 = [v7 menuStates];
    (*(v20 + 16))(v20, v21);

    objc_destroyWeak(&v25);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runCommandFromContext:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_9;
  v8[3] = &unk_2783BCE48;
  v9 = v3;
  v5 = v3;
  [WeakRetained _possiblyFlashMenuViewPassingTest:v8];
  v6 = [WeakRetained presentedMainMenuView];
  v7 = [v6 contextMenuInteraction];
  [v7 dismissMenu];

  [WeakRetained setPresentedMainMenuView:0];
}

uint64_t __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = [a2 mainMenu];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) categoryMenuIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _navigateToNextMenuHeaderForArrowKeyPress:*MEMORY[0x277D76B48]];
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _navigateToNextMenuHeaderForArrowKeyPress:*MEMORY[0x277D76B60]];
}

void __64__SBMenuBarViewController_loadMenuElementsForMainMenus_handler___block_invoke_12(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[128] & 1) == 0)
  {
    v5 = [v10 uncategorizedMenuState];

    if (v5)
    {
      v6 = [v10 uncategorizedMenuState];
      v7 = v4[138];
      v4[138] = v6;
    }

    v8 = *(a1 + 32);
    v9 = [v10 menuStates];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (double)yOffsetForPresentedMenuForMainMenuView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerHeightForMenuBarViewController:self];
  v6 = v5;
  [WeakRetained contentHeightForMenuBarViewController:self];
  v8 = v6 - v7;

  return v8;
}

- (void)willPresentContextMenuForMainMenuView:(id)a3 forPointerClick:(BOOL)a4
{
  v4 = a4;
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 isPresentingMenuForPointerHover])
  {
    [(SBMenuBarMainMenuView *)self->_presentedMainMenuView setDismissingMenuForPointerHover:1];
  }

  v8 = [(SBMenuBarMainMenuView *)self->_presentedMainMenuView contextMenuInteraction];
  [v8 dismissMenu];

  [(SBMenuBarViewController *)self _cancelEndSessionTimer];
  objc_storeStrong(&self->_presentedMainMenuView, a3);
  if (v4)
  {
    self->_menuSessionIsActiveForPointer = 1;
  }

  v9 = [v7 mainMenu];
  v10 = [v9 identifier];
  v11 = [v10 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76CF8]];

  if (v11)
  {
    v12 = [(SBMenuBarViewController *)self menuBarHelpMenuProvider];
    v13 = [v7 contextMenuInteraction];
    [v12 setContextMenuInteraction:v13];
  }

  v14 = [(UIViewController *)self _sbWindowScene];
  v15 = [v14 isExternalDisplayWindowScene];

  if ((v15 & 1) == 0)
  {
    v16 = [v7 mainMenu];
    if (v16)
    {
      v17 = [v7 mainMenu];
      v18 = [v17 uiMenu];
      v19 = [v18 title];

      if (!v19)
      {
        v19 = @"Unknown";
      }
    }

    else
    {
      v19 = @"Overflow";
    }

    v25 = *MEMORY[0x277D675E8];
    v26[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = MEMORY[0x277D65DD0];
    v22 = v20;
    v23 = [v21 sharedInstance];
    [v23 emitEvent:70 withPayload:v22];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained menuWillPresentForViewController:self];
}

- (void)didPresentContextMenuForMainMenuView:(id)a3
{
  v9 = a3;
  if ([(SBMenuBarMainMenuView *)self->_presentedMainMenuView isEqual:?])
  {
    v4 = [v9 mainMenu];
    v5 = [v4 identifier];
    v6 = [v5 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76CF8]];

    if (v6)
    {
      v7 = [(SBMenuBarViewController *)self menuBarHelpMenuProvider];
      v8 = [v7 searchTextField];
      [v8 becomeFirstResponder];
    }
  }
}

- (void)willDismissContextMenuForMainMenuView:(id)a3 forPointerClick:(BOOL)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_previouslyPresentedMenu);

  v6 = v8;
  if (WeakRetained == v8)
  {
    objc_storeWeak(&self->_previouslyPresentedMenu, 0);
    v6 = v8;
  }

  if ([(SBMenuBarMainMenuView *)self->_presentedMainMenuView isEqual:v6])
  {
    presentedMainMenuView = self->_presentedMainMenuView;
    self->_presentedMainMenuView = 0;

    [(SBMenuBarViewController *)self _scheduleEndSessionTimer];
    if (([v8 isDismissingMenuForPointerHover] & 1) == 0)
    {
      self->_menuSessionIsActiveForPointer = 0;
    }
  }
}

- (id)beginSceneFocusSystemActivationAssertionForMainMenuView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystemController);
  v4 = [WeakRetained beginFocusSystemActivationAssertionWithReason:@"SBMenuBar"];

  return v4;
}

- (id)_uiMenuForMainMenu:(id)a3 menuState:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [v6 identifier];
  v11 = *MEMORY[0x277D76D98];
  v12 = [v10 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76D98]];

  v13 = MEMORY[0x277D76CF8];
  if (v12)
  {
    v14 = [WeakRetained systemWindowArrangementMenuWithOptions:1792];
LABEL_3:
    v15 = v14;
    [v9 addObject:v14];
LABEL_13:

    goto LABEL_14;
  }

  v16 = [v6 identifier];
  v17 = [v16 isEquivalentToUIMenuIdentifier:*v13];

  if (v17)
  {
    [(SBMenuBarViewController *)self _createHelpMenuProviderIfNeeded];
    v18 = [(SBMenuBarHelpMenuProvider *)self->_menuBarHelpMenuProvider searchTextField];
    [v18 setText:0];

    v15 = [(SBMenuBarViewController *)self _systemHelpMenus];
    [v9 addObjectsFromArray:v15];
    goto LABEL_13;
  }

  v19 = [v6 identifier];
  v20 = [v19 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76D18]];

  if (v20)
  {
    v21 = [(FBScene *)self->_menuProvidingScene clientHandle];
    v15 = [v21 bundleIdentifier];

    if (v15)
    {
      recentDocumentsMenuProvider = self->_recentDocumentsMenuProvider;
      if (!recentDocumentsMenuProvider)
      {
        v49 = objc_alloc(MEMORY[0x277D66280]);
        v23 = [MEMORY[0x277CCAD78] UUID];
        v24 = [v49 initWithUniqueIdentifier:v23];
        v25 = self->_recentDocumentsMenuProvider;
        self->_recentDocumentsMenuProvider = v24;

        recentDocumentsMenuProvider = self->_recentDocumentsMenuProvider;
      }

      v26 = [(SBHRecentDocumentsContextMenuProvider *)recentDocumentsMenuProvider contextMenuSectionsForBundleIdentifier:v15];
      if ([v26 count])
      {
        v27 = [v26 firstObject];
        [v9 addObject:v27];
      }
    }

    goto LABEL_13;
  }

  v47 = [v6 identifier];
  v48 = [v47 isEquivalentToUIMenuIdentifier:*MEMORY[0x277D76D00]];

  if (v48)
  {
    v14 = [WeakRetained systemHideMenuWithOptions:1792];
    goto LABEL_3;
  }

LABEL_14:
  v28 = [v6 children];
  v29 = [(SBMenuBarViewController *)self _uiMenuElementsForMainMenuElements:v28 parentMenuState:v7];

  [v9 addObjectsFromArray:v29];
  v30 = [v6 identifier];
  v31 = [v30 isEquivalentToUIMenuIdentifier:v11];

  if (v31)
  {
    v32 = [(FBScene *)self->_menuProvidingScene clientHandle];
    v33 = [v32 bundleIdentifier];

    if (v33)
    {
      v34 = objc_alloc(MEMORY[0x277D66268]);
      v35 = [MEMORY[0x277CCAD78] UUID];
      v36 = [v34 initWithUniqueIdentifier:v35];

      [v36 setDelegate:self];
      v37 = [v36 contextMenuSectionsForBundleIdentifier:v33];
      if (![v37 count])
      {
LABEL_23:

        goto LABEL_24;
      }

      v38 = [v37 firstObject];
      [v9 addObject:v38];
LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v39 = [v6 identifier];
  v40 = [v39 isEquivalentToUIMenuIdentifier:*v13];

  if (v40 && self->_uncategorizedMenuState)
  {
    v41 = [(_UIMainMenuSession *)self->_session uncategorizedMenu];
    v33 = [(SBMenuBarViewController *)self _uiMenuForMainMenu:v41 menuState:self->_uncategorizedMenuState];

    if ([v33 _hasVisibleChildren])
    {
      v50 = MEMORY[0x277D75710];
      v36 = [MEMORY[0x277CCA8D8] mainBundle];
      v37 = [v36 localizedStringForKey:@"KEYBOARD_SHORTCUT_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v38 = [MEMORY[0x277D755B8] systemImageNamed:@"command.square"];
      v42 = [v33 children];
      v43 = [v50 menuWithTitle:v37 image:v38 identifier:0 options:1792 children:v42];
      [v9 addObject:v43];

      goto LABEL_22;
    }

LABEL_24:
  }

  v44 = [v6 uiMenu];
  v45 = [v44 _menuByReplacingChildren:v9 additionalOptions:1792];

  return v45;
}

- (id)_uiMenuElementsForMainMenuElements:(id)a3 parentMenuState:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SBMenuBarViewController *)self _uiMenuElementForChildMainMenuElement:*(*(&v16 + 1) + 8 * i) parentMenuState:v7, v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_uiMenuElementForChildMainMenuElement:(id)a3 parentMenuState:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v7 childMenuStates];
    v10 = [v8 identifier];
    v11 = [v9 objectForKey:v10];

    v12 = [(SBMenuBarViewController *)self _uiMenuForMainMenu:v8 menuState:v11];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(SBMenuBarViewController *)self _uiMenuLeafForMainMenuCommand:v6 parentMenuState:v7];
LABEL_7:
    v12 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(SBMenuBarViewController *)self _uiDeferredMenuElementForMainMenuDeferredElement:v6 parentState:v7];
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_uiMenuLeafForMainMenuCommand:(id)a3 parentMenuState:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  session = self->_session;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SBMenuBarViewController__uiMenuLeafForMainMenuCommand_parentMenuState___block_invoke;
  v11[3] = &unk_2783BCF50;
  objc_copyWeak(&v12, &location);
  v9 = [v6 uiMenuLeafForCommandAndAlternatesForSession:session parentState:v7 primaryActionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __73__SBMenuBarViewController__uiMenuLeafForMainMenuCommand_parentMenuState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runCommandFromContext:v3];
}

- (id)_uiDeferredMenuElementForMainMenuDeferredElement:(id)a3 parentState:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SBMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke;
  v12[3] = &unk_2783BCFF0;
  objc_copyWeak(&v15, &location);
  v8 = v7;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v10 = [v9 uiDeferredMenuElementForProvider:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __88__SBMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__96;
  v21 = __Block_byref_object_dispose__96;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v18[5])
  {
    v4 = [a1[4] fulfilledDeferredElementStates];
    v5 = [a1[5] identifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = v18[5];
      v8 = [v6 providedElements];
      v9 = [v7 _uiMenuElementsForMainMenuElements:v8 parentMenuState:v6];
      v3[2](v3, v9);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277D760F8]);
      v11 = [a1[5] identifier];
      v8 = [v10 initWithDeferredElementIdentifier:v11 session:*(v18[5] + 1088)];

      v12 = *(v18[5] + 1072);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __88__SBMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke_88;
      v13[3] = &unk_2783BCFC8;
      v15 = &v17;
      objc_copyWeak(&v16, a1 + 6);
      v14 = v3;
      [v12 performMainMenuDeferredElementRequest:v8 responseHandler:v13];

      objc_destroyWeak(&v16);
    }
  }

  else
  {
    v3[2](v3, MEMORY[0x277CBEBF8]);
  }

  _Block_object_dispose(&v17, 8);
}

void __88__SBMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = WeakRetained;

  v12 = [v3 deferredElementState];

  v7 = *(a1 + 32);
  if (!v3 || ((v8 = *(*(*(a1 + 40) + 8) + 40)) != 0 ? (v9 = v12 == 0) : (v9 = 1), v9))
  {
    (*(v7 + 16))(v7, MEMORY[0x277CBEBF8]);
  }

  else
  {
    v10 = [v12 providedElements];
    v11 = [v8 _uiMenuElementsForMainMenuElements:v10 parentMenuState:v12];
    (*(v7 + 16))(v7, v11);
  }
}

- (void)_runCommandFromContext:(id)a3
{
  v4 = a3;
  v5 = [v4 command];
  if ([v4 needsAuthenticationMessage])
  {
    v6 = [(FBScene *)self->_menuProvidingScene clientHandle];
    v7 = [v6 processHandle];
    v8 = v7;
    if (v7)
    {
      [v7 auditToken];
    }

    else
    {
      *location = 0u;
      v15 = 0u;
    }

    v9 = BSVersionedPIDForAuditToken();

    objc_initWeak(location, self);
    v10 = [MEMORY[0x277D75810] generalPasteboard];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__SBMenuBarViewController__runCommandFromContext___block_invoke;
    v11[3] = &unk_2783BD018;
    objc_copyWeak(&v13, location);
    v12 = v5;
    [v10 _requestSecurePasteAuthenticationMessageWithContext:0x2602B97B3B8E05C3 forClientVersionedPID:v9 completionBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    [(SBMenuBarViewController *)self _performMainMenuCommandInvocationRequestForCommand:v5 withAuthenticationMessage:0];
  }
}

void __50__SBMenuBarViewController__runCommandFromContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = SBLogMenuBar();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__SBMenuBarViewController__runCommandFromContext___block_invoke_cold_1(WeakRetained, v6, v8);
    }
  }

  v10 = *(a1 + 32);
  v11 = v5;
  v9 = v5;
  BSDispatchMain();
}

- (void)_performMainMenuCommandInvocationRequestForCommand:(id)a3 withAuthenticationMessage:(id)a4
{
  v6 = MEMORY[0x277D760E0];
  v7 = a4;
  v8 = a3;
  v10 = [[v6 alloc] initWithCommand:v8 session:self->_session];

  v9 = objc_alloc_init(MEMORY[0x277D76108]);
  [v9 setSessionToEnd:self->_session];
  [v10 setSessionRequest:v9];
  [(SBMenuBarViewController *)self _clearSessionState];
  [v10 setAuthenticationMessage:v7];

  [(_UISceneMainMenuProviding *)self->_mainMenuProvider performMainMenuCommandInvocationRequest:v10 responseHandler:0];
}

- (void)mainMenuDidInvalidate:(id)a3
{
  if (!self->_dismissed)
  {
    [(SBMenuBarViewController *)self _clearSessionState];
    v5 = [(SBMenuBarMainMenuView *)self->_presentedMainMenuView contextMenuInteraction];
    [v5 dismissMenu];

    presentedMainMenuView = self->_presentedMainMenuView;
    self->_presentedMainMenuView = 0;

    objc_storeWeak(&self->_previouslyPresentedMenu, 0);
    menuBarHelpMenuProvider = self->_menuBarHelpMenuProvider;
    self->_menuBarHelpMenuProvider = 0;

    baseMainMenu = self->_baseMainMenu;
    self->_baseMainMenu = 0;

    [(SBMenuBarViewController *)self _loadAllMainMenusWithCompletion:0];
  }
}

- (id)hostKeyboardShortcutsForMainMenu:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [SBApp registeredSystemKeyboardShortcuts];
  v4 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v25)
  {
    v24 = *v34;
    *&v5 = 134217984;
    v22 = v5;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [v7 modifierFlags];
        v9 = [v7 input];
        if (![(__CFString *)v9 length])
        {
          v10 = [v7 _keyCodes];
          if ([v10 count])
          {
            v11 = [v10 firstIndex];
            if (v11 == 32)
            {
              v13 = v9;
              v9 = @"3";
            }

            else
            {
              v12 = v11;
              if (v11 == 33)
              {
                v13 = v9;
                v9 = @"4";
              }

              else
              {
                v13 = SBLogMenuBar();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  *buf = v22;
                  v39 = v12;
                  _os_log_error_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_ERROR, "menu bar failed to recognize system key shortcut with keyCode %lx", buf, 0xCu);
                }
              }
            }
          }
        }

        if ([(__CFString *)v9 length])
        {
          v28 = i;
          v27 = [MEMORY[0x277D760E8] shortcutWithModifierFlags:v8 keyEquivalent:v9];
          v26 = [objc_alloc(MEMORY[0x277D76100]) initWithKeyboardShortcut:v27];
          [v4 addObject:?];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v14 = [v7 alternates];
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [MEMORY[0x277D760E8] shortcutWithModifierFlags:objc_msgSend(*(*(&v29 + 1) + 8 * j) keyEquivalent:{"modifierFlags") | v8, v9}];
                v20 = [objc_alloc(MEMORY[0x277D76100]) initWithKeyboardShortcut:v19];
                [v4 addObject:v20];
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v16);
          }

          i = v28;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v25);
  }

  return v4;
}

- (void)mainMenuProvider:(id)a3 didReceiveCommandInvocationNotification:(id)a4
{
  v5 = [a4 invokedCommandCategoryMenuIdentifierForSession:self->_session];
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBMenuBarViewController_mainMenuProvider_didReceiveCommandInvocationNotification___block_invoke;
    v7[3] = &unk_2783BCE48;
    v8 = v5;
    [(SBMenuBarViewController *)self _possiblyFlashMenuViewPassingTest:v7];
  }
}

uint64_t __84__SBMenuBarViewController_mainMenuProvider_didReceiveCommandInvocationNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mainMenu];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)overrideClientNameForMainMenu:(id)a3
{
  v4 = [(FBScene *)self->_menuProvidingScene clientHandle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.webapp"];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [(FBScene *)self->_menuProvidingScene identifier];
    v9 = [WeakRetained displayNameForWebAppWithSceneIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a3
{
  v3 = objc_alloc_init(SBOpenApplicationWindowsContextMenuDataSource);

  return v3;
}

- (double)desiredBlurWidth
{
  v3 = [(SBMenuBarViewController *)self view];
  [v3 bounds];
  v5 = v4;
  [(SBMenuBarSettings *)self->_menuBarSettings backgroundBlurContentOverhang];
  v7 = v5 + v6 * 2.0;

  return v7;
}

- (void)_movePresentedMenuViewToPreviouslyPresented
{
  WeakRetained = objc_loadWeakRetained(&self->_previouslyPresentedMenu);

  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__SBMenuBarViewController__movePresentedMenuViewToPreviouslyPresented__block_invoke;
    v5[3] = &unk_2783A8C18;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }

  objc_storeWeak(&self->_previouslyPresentedMenu, self->_presentedMainMenuView);
  presentedMainMenuView = self->_presentedMainMenuView;
  self->_presentedMainMenuView = 0;
}

void __70__SBMenuBarViewController__movePresentedMenuViewToPreviouslyPresented__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1168));
  v1 = [WeakRetained contextMenuInteraction];
  [v1 dismissMenu];
}

- (void)_presentMenuViewNonInteractively:(id)a3 forPointerHover:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SBMenuBarViewController *)self _cancelEndSessionTimer];
  [(SBMenuBarViewController *)self _movePresentedMenuViewToPreviouslyPresented];
  if (v4)
  {
    [(SBMenuBarMainMenuView *)v6 setPresentingMenuForPointerHover:1];
  }

  else
  {
    [(SBMenuBarMainMenuView *)v6 setPresentingMenuForKeyPress:1];
  }

  [(SBMenuBarMainMenuView *)v6 performPrimaryAction];
  presentedMainMenuView = self->_presentedMainMenuView;
  self->_presentedMainMenuView = v6;
}

- (void)_navigateToNextMenuHeaderForArrowKeyPress:(id)a3
{
  v4 = a3;
  if (self->_presentedMainMenuView)
  {
    v18 = v4;
    v5 = [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView menuHeaderViews];
    v6 = [v5 indexOfObject:self->_presentedMainMenuView];
    v7 = [v5 count];
    v8 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v9 = MEMORY[0x277D76B60];
    if (v8 == 1)
    {
      v9 = MEMORY[0x277D76B48];
    }

    if ([v18 isEqualToString:*v9])
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    v11 = v6 + v10;
    do
    {
      v12 = (v11 + v7) % v7;
      v13 = [v5 objectAtIndex:v12];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        break;
      }

      v11 = v12 + v10;
    }

    while (v12 + v10 != v6);
    if (v17)
    {
      [(SBMenuBarViewController *)self _presentMenuViewNonInteractively:v17 forPointerHover:0];
    }

    v4 = v18;
  }
}

- (void)_createWindowControlsPlaceholderViewForViewController:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 view];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  windowControlsPlaceholderView = self->_windowControlsPlaceholderView;
  self->_windowControlsPlaceholderView = v6;

  [(UIView *)self->_windowControlsPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = MEMORY[0x277CCAAD0];
  v9 = [(UIView *)self->_windowControlsPlaceholderView heightAnchor];
  [v4 bounds];
  v11 = [v9 constraintEqualToConstant:v10];
  v18[0] = v11;
  v12 = [(UIView *)self->_windowControlsPlaceholderView widthAnchor];
  [v4 bounds];
  v14 = v13;
  [(SBMenuBarSettings *)self->_menuBarSettings menuTitleSpacing];
  v16 = [v12 constraintEqualToConstant:v14 + v15];
  v18[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v8 activateConstraints:v17];
}

- (id)_mainMenuViewPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(SBMenuBarHeaderContainerView *)self->_menuHeaderContainerView menuHeaderViews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SBMenuBarViewController__mainMenuViewPassingTest___block_invoke;
  v9[3] = &unk_2783BD040;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__SBMenuBarViewController__mainMenuViewPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_possiblyFlashMenuViewPassingTest:(id)a3
{
  v3 = [(SBMenuBarViewController *)self _mainMenuViewPassingTest:a3];
  v4 = v3;
  if (v3)
  {
    [v3 setSelected:1];
    v5 = dispatch_time(0, 90000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SBMenuBarViewController__possiblyFlashMenuViewPassingTest___block_invoke;
    block[3] = &unk_2783A8C18;
    v7 = v4;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }
}

- (void)_scheduleEndSessionTimer
{
  [(SBMenuBarViewController *)self _cancelEndSessionTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __51__SBMenuBarViewController__scheduleEndSessionTimer__block_invoke;
  v10 = &unk_2783AA438;
  objc_copyWeak(&v11, &location);
  v4 = [v3 timerWithTimeInterval:0 repeats:&v7 block:0.5];
  endActiveSessionTimer = self->_endActiveSessionTimer;
  self->_endActiveSessionTimer = v4;

  v6 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v6 addTimer:self->_endActiveSessionTimer forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __51__SBMenuBarViewController__scheduleEndSessionTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_alloc_init(MEMORY[0x277D76108]);
    [v2 setSessionToEnd:*(v3 + 136)];
    [*(v3 + 134) performSessionRequest:v2 handler:0];
    [v3 _cancelEndSessionTimer];
    [v3 _clearSessionState];

    WeakRetained = v3;
  }
}

- (void)_cancelEndSessionTimer
{
  [(NSTimer *)self->_endActiveSessionTimer invalidate];
  endActiveSessionTimer = self->_endActiveSessionTimer;
  self->_endActiveSessionTimer = 0;
}

- (void)_clearSessionState
{
  session = self->_session;
  self->_session = 0;

  uncategorizedMenuState = self->_uncategorizedMenuState;
  self->_uncategorizedMenuState = 0;

  appKeyboardShortcutActionsForSession = self->_appKeyboardShortcutActionsForSession;
  self->_appKeyboardShortcutActionsForSession = 0;

  leftArrowNavigationAction = self->_leftArrowNavigationAction;
  self->_leftArrowNavigationAction = 0;

  rightArrowNavigationAction = self->_rightArrowNavigationAction;
  self->_rightArrowNavigationAction = 0;
}

- (id)_systemHelpMenus
{
  v3 = [(SBMenuBarViewController *)self menuBarHelpMenuProvider];
  v4 = [v3 systemHelpMenusForScene:self->_menuProvidingScene];

  return v4;
}

- (void)_createHelpMenuProviderIfNeeded
{
  if (!self->_menuBarHelpMenuProvider)
  {
    v3 = objc_alloc_init(SBMenuBarHelpMenuProvider);
    menuBarHelpMenuProvider = self->_menuBarHelpMenuProvider;
    self->_menuBarHelpMenuProvider = v3;

    v5 = self->_menuBarHelpMenuProvider;

    [(SBMenuBarHelpMenuProvider *)v5 setDelegate:self];
  }
}

- (SBMenuBarViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UISceneFocusSystemController)focusSystemController
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystemController);

  return WeakRetained;
}

- (SBMenuBarMainMenuView)previouslyPresentedMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_previouslyPresentedMenu);

  return WeakRetained;
}

void __50__SBMenuBarViewController__runCommandFromContext___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 menuProvidingScene];
  v6 = [v5 identifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "failed to get paste authentication request for %{public}@: %{public}@", &v7, 0x16u);
}

@end