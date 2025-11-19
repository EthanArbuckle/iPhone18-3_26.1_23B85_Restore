@interface SBUISystemApertureElementSource
+ (void)_addSource:(id)a3;
+ (void)_removeSource:(id)a3;
- (BOOL)_elementIsInAWindow;
- (BOOL)_elementRequiresConstraintBasedLayout;
- (BOOL)_elementSupportsDynamicResizing;
- (BOOL)_handleSceneResizeAction:(id)a3;
- (BOOL)_isPresentationPossibleAndSceneForeground;
- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture;
- (BOOL)_mustHaveUniqueElementIdentity;
- (BOOL)_performElementUpdateWithActions:(id)a3;
- (BOOL)_performElementUpdateWithActionsIfPossible:(id)a3;
- (BOOL)isBeingRemoved;
- (CGRect)anchorFrameForDetachedMinimalView;
- (CGRect)anchorFrameForLeadingView;
- (CGRect)anchorFrameForMinimalView;
- (CGRect)anchorFrameForTrailingView;
- (FBSSceneIdentityToken)identityToken;
- (NSString)associatedScenePersistenceIdentifier;
- (SBUISystemApertureElement)_elementViewController;
- (SBUISystemApertureElementConfiguration)mutableConfiguration;
- (SBUISystemApertureElementProviding)systemApertureElementViewControllerProvider;
- (SBUISystemApertureElementSource)init;
- (SBUISystemApertureElementSource)initWithScene:(id)a3;
- (UIView)containerView;
- (UIView)layoutGuideRootView;
- (UIWindowScene)windowScene;
- (id)_FBSScene;
- (id)_constraintsForLayoutMode:(int64_t)a3;
- (id)_elementIdentifierIfExists;
- (id)_sceneSettings;
- (id)_settingsDiffActionsForScene:(id)a3;
- (id)containerViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)requestAlertingAssertionWithOptions:(unint64_t)a3;
- (id)succinctDescription;
- (id)systemApertureElementViewController;
- (int64_t)layoutMode;
- (void)_activateConstraintsForActiveLayoutModeIfNeeded:(int64_t)a3;
- (void)_activateConstraintsForLayoutMode:(int64_t)a3;
- (void)_animateWithSceneResizeAction:(id)a3;
- (void)_ensureAccessoryView:(id)a3 hasLayoutFrame:(CGRect)a4;
- (void)_ensureAccessoryViewLayoutForTransitionWithAnimator:(id)a3;
- (void)_ensureElementViewControllerIsInAWindow;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_handleAlertingAction:(id)a3;
- (void)_handleClientErrorNonUniqueElementAction;
- (void)_handleGestureDependencyChange:(id)a3;
- (void)_handleSecureFlipBookAction:(id)a3;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_sendActionForCommand:(int64_t)a3;
- (void)_setScene:(id)a3;
- (void)_updateElementCanRequestAlertingAssertion;
- (void)_updateTraitCollectionForElementIfNeeded;
- (void)_windowDidAttachToContext:(id)a3;
- (void)addObserver:(id)a3;
- (void)addTransitionContext:(id)a3;
- (void)elementDidDismissMenu;
- (void)elementWillPresentMenu;
- (void)registerWithScene:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeTransitionContext:(id)a3;
- (void)requestTransitionToMaximumSupportedLayoutMode;
- (void)requestTransitionToPreferredLayoutMode;
- (void)setElementNeedsLayoutUpdateWithOptions:(unint64_t)a3 coordinatedAnimations:(id)a4;
- (void)setElementNeedsUpdate;
- (void)setLastKnownOtherSettings:(id)a3;
- (void)setPresentationPossible:(BOOL)a3;
- (void)setSystemApertureElementProvider:(id)a3;
- (void)setSystemApertureElementViewControllerProvider:(id)a3;
- (void)unregisterFromScene;
- (void)validateConfiguration;
@end

@implementation SBUISystemApertureElementSource

- (BOOL)_isPresentationPossibleAndSceneForeground
{
  v3 = [(SBUISystemApertureElementSource *)self _scene];
  v4 = [v3 activationState];

  result = [(SBUISystemApertureElementSource *)self isPresentationPossible];
  if (v4 >= 2)
  {
    return 0;
  }

  return result;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBUISystemApertureElementProviding)systemApertureElementViewControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureElementViewControllerProvider);

  return WeakRetained;
}

- (BOOL)_elementSupportsDynamicResizing
{
  v2 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (int64_t)layoutMode
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  v3 = [v2 SBUISA_layoutMode];

  return v3;
}

- (id)_sceneSettings
{
  v2 = [(SBUISystemApertureElementSource *)self _FBSScene];
  v3 = [v2 settings];

  return v3;
}

- (id)_FBSScene
{
  v2 = [(SBUISystemApertureElementSource *)self _scene];
  v3 = [v2 _FBSScene];

  return v3;
}

- (id)systemApertureElementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__elementViewController);
  if (!WeakRetained)
  {
    v4 = [(SBUISystemApertureElementSource *)self systemApertureElementViewControllerProvider];
    WeakRetained = [v4 systemApertureElementViewController];

    objc_storeWeak(&self->__elementViewController, WeakRetained);
  }

  return WeakRetained;
}

- (void)_ensureElementViewControllerIsInAWindow
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBUISystemApertureElementConfiguration)mutableConfiguration
{
  mutableConfiguration = self->_mutableConfiguration;
  if (!mutableConfiguration)
  {
    v4 = objc_alloc_init(SBUISystemApertureElementConfiguration);
    v5 = self->_mutableConfiguration;
    self->_mutableConfiguration = v4;

    mutableConfiguration = self->_mutableConfiguration;
  }

  return mutableConfiguration;
}

- (void)_updateTraitCollectionForElementIfNeeded
{
  v20 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  v3 = [v20 traitCollection];
  v4 = [(SBUISystemApertureElementSource *)self containerViewController];
  v5 = [v4 overrideTraitCollectionForChildViewController:v20];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  v9 = [(SBUISystemApertureElementSource *)self containerViewController];
  v10 = [v9 traitCollection];

  v11 = [v10 sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:{-[SBUISystemApertureElementSource layoutMode](self, "layoutMode") == 4}];
  v12 = [(SBUISystemApertureElementSource *)self _isPresentedAsBannerInsteadOfSystemAperture];
  v13 = [v3 preferredContentSizeCategory];
  if (!BSEqualStrings())
  {

    goto LABEL_9;
  }

  if (v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = [v3 userInterfaceStyle];

  if (v14 != 2)
  {
LABEL_9:
    v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    if (v8)
    {
      v15 = MEMORY[0x1E695DF70];
      v16 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
      v17 = [v15 arrayWithObjects:{v8, v16, 0}];

      if (!v12)
      {
        [v17 addObject:v13];
      }

      v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v17];

      v19 = [(SBUISystemApertureElementSource *)self containerViewController];
      [v19 setOverrideTraitCollection:v18 forChildViewController:v20];

      v8 = v18;
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)containerViewController
{
  v2 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v3 = [v2 containerViewController];

  return v3;
}

- (UIView)layoutGuideRootView
{
  v2 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];

  return v4;
}

- (BOOL)_elementRequiresConstraintBasedLayout
{
  v3 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v4 = [v3 view];

  v5 = (![v4 translatesAutoresizingMaskIntoConstraints] || objc_msgSend(objc_opt_class(), "requiresConstraintBasedLayout")) && -[SBUISystemApertureElementSource _elementSupportsDynamicResizing](self, "_elementSupportsDynamicResizing");
  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBUISystemApertureElementSource *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)_elementIsInAWindow
{
  v3 = [(SBUISystemApertureElementSource *)self containerViewController];
  v4 = [v3 viewIfLoaded];

  v5 = [(SBUISystemApertureElementSource *)self _elementViewController];
  v6 = [v5 viewIfLoaded];

  if ([v6 _isInAWindow])
  {
    v7 = [v6 isDescendantOfView:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBUISystemApertureElement)_elementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__elementViewController);

  return WeakRetained;
}

- (void)_updateElementCanRequestAlertingAssertion
{
  v3 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  if ([(SBUISystemApertureElementSource *)self elementCanRequestAlertingAssertion]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 setCanRequestAlertingAssertion:{-[SBUISystemApertureElementSource elementCanRequestAlertingAssertion](self, "elementCanRequestAlertingAssertion")}];
  }
}

- (void)validateConfiguration
{
  v2 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  [v2 validateConfiguration];
}

+ (void)_addSource:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    v3 = [SBUISystemApertureElementSourceOpenSources containsObject:v3];
    v4 = v9;
    if ((v3 & 1) == 0)
    {
      v5 = SBUISystemApertureElementSourceOpenSources;
      if (!SBUISystemApertureElementSourceOpenSources)
      {
        v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v7 = SBUISystemApertureElementSourceOpenSources;
        SBUISystemApertureElementSourceOpenSources = v6;

        v5 = SBUISystemApertureElementSourceOpenSources;
      }

      [v5 addObject:v9];
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"SBUISystemApertureElementSourceDidConnectNotification" object:v9];

      v4 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (void)_removeSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [SBUISystemApertureElementSourceOpenSources removeObject:v4];
  }

  if (![SBUISystemApertureElementSourceOpenSources count])
  {
    v3 = SBUISystemApertureElementSourceOpenSources;
    SBUISystemApertureElementSourceOpenSources = 0;
  }
}

- (void)setLastKnownOtherSettings:(id)a3
{
  v6 = a3;
  if (([(BSSettings *)self->_lastKnownOtherSettings isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    lastKnownOtherSettings = self->_lastKnownOtherSettings;
    self->_lastKnownOtherSettings = v4;
  }
}

- (SBUISystemApertureElementSource)init
{
  v7.receiver = self;
  v7.super_class = SBUISystemApertureElementSource;
  v2 = [(SBUISystemApertureElementSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_SBUISystemApertureElementSourceAnimationContext);
    animationContext = v2->_animationContext;
    v2->_animationContext = v3;

    [SBUISystemApertureElementSource performSelector:sel__addSource_ withObject:v2 afterDelay:0.0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__windowDidAttachToContext_ name:*MEMORY[0x1E69DEB08] object:0];
  }

  return v2;
}

- (SBUISystemApertureElementSource)initWithScene:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureElementSource *)self init];
  if (v5)
  {
    v6 = [v4 session];
    v7 = [v6 role];
    v8 = [v7 isEqualToString:@"SBUISystemApertureSceneSessionRole"];

    if ((v8 & 1) == 0)
    {
      [SBUISystemApertureElementSource initWithScene:];
    }

    [(SBUISystemApertureElementSource *)v5 _setScene:v4];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (NSString)associatedScenePersistenceIdentifier
{
  v2 = [(SBUISystemApertureElementSource *)self _FBSScene];
  v3 = [v2 clientSettings];
  v4 = [v3 SBUISA_associatedScenePersistenceIdentifier];

  return v4;
}

- (FBSSceneIdentityToken)identityToken
{
  v2 = [(SBUISystemApertureElementSource *)self _FBSScene];
  v3 = [v2 identityToken];

  return v3;
}

- (void)setSystemApertureElementProvider:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(SBUISystemApertureElementSource *)self setSystemApertureElementViewControllerProvider:v4];
  }
}

- (void)setSystemApertureElementViewControllerProvider:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureElementViewControllerProvider);

  objc_storeWeak(&self->_systemApertureElementViewControllerProvider, v4);
  if (WeakRetained != v4)
  {

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (UIView)containerView
{
  v2 = [(SBUISystemApertureElementSource *)self containerViewController];
  v3 = [v2 viewIfLoaded];

  return v3;
}

- (void)requestTransitionToMaximumSupportedLayoutMode
{
  if (self->_alertingAssertion)
  {
    alertingAssertion = self->_alertingAssertion;

    [(_SBUISystemApertureAlertingAssertion *)alertingAssertion resetAutomaticInvalidationTimer];
  }

  else
  {
    v5 = [(SBUISystemApertureElementSource *)self requestAlertingAssertion:v2];
  }
}

- (void)requestTransitionToPreferredLayoutMode
{
  v3 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v4 = [v3 preferredLayoutMode];

  if (v4 == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [(SBUISystemApertureElementSource *)self _sendActionForCommand:v5];
}

- (id)requestAlertingAssertionWithOptions:(unint64_t)a3
{
  if (!self->_alertingAssertion)
  {
    v4 = a3;
    if ([(SBUISystemApertureElementSource *)self elementCanRequestAlertingAssertion])
    {
      v5 = [[_SBUISystemApertureAlertingAssertion alloc] initWithElementSource:self];
      alertingAssertion = self->_alertingAssertion;
      self->_alertingAssertion = v5;

      objc_initWeak(&location, self);
      v7 = self->_alertingAssertion;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __71__SBUISystemApertureElementSource_requestAlertingAssertionWithOptions___block_invoke;
      v16 = &unk_1E789FCC0;
      objc_copyWeak(&v17, &location);
      [(_SBUISystemApertureAlertingAssertion *)v7 addInvalidationBlock:&v13];
      alertingAssertionsAwaitingActions = self->_alertingAssertionsAwaitingActions;
      if (alertingAssertionsAwaitingActions)
      {
        [(NSMutableArray *)alertingAssertionsAwaitingActions addObject:self->_alertingAssertion, v13, v14, v15, v16];
      }

      else
      {
        v9 = [MEMORY[0x1E695DF70] arrayWithObject:{self->_alertingAssertion, v13, v14, v15, v16}];
        v10 = self->_alertingAssertionsAwaitingActions;
        self->_alertingAssertionsAwaitingActions = v9;
      }

      [(SBUISystemApertureElementSource *)self _sendActionForCommand:v4 & 1 | 6];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  v11 = self->_alertingAssertion;

  return v11;
}

void __71__SBUISystemApertureElementSource_requestAlertingAssertionWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _alertingAssertion];

  if (v4 == v3)
  {
    [WeakRetained _setAlertingAssertion:0];
  }
}

- (void)elementWillPresentMenu
{
  if (![(SBUISystemApertureElementSource *)self elementHasMenuPresentation])
  {
    [(SBUISystemApertureElementSource *)self setElementHasMenuPresentation:1];

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (void)elementDidDismissMenu
{
  if ([(SBUISystemApertureElementSource *)self elementHasMenuPresentation])
  {
    [(SBUISystemApertureElementSource *)self setElementHasMenuPresentation:0];

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (void)setPresentationPossible:(BOOL)a3
{
  if (self->_presentationPossible != a3)
  {
    self->_presentationPossible = a3;
    if (a3)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __59__SBUISystemApertureElementSource_setPresentationPossible___block_invoke;
      v5[3] = &unk_1E789FCE8;
      v5[4] = self;
      [(SBUISystemApertureElementSource *)self _enumerateObserversRespondingToSelector:sel_systemApertureElementContextPresentationDidBecomePossible_ usingBlock:v5];
      [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
    }

    else
    {
      v4 = [(SBUISystemApertureElementSource *)self systemApertureOwnedWindow];
      [v4 setHidden:1];

      [(SBUISystemApertureElementSource *)self setSystemApertureOwnedWindow:0];
    }
  }
}

- (void)setElementNeedsUpdate
{
  if ([(SBUISystemApertureElementSource *)self isPresentationPossible])
  {

    [(SBUISystemApertureElementSource *)self _performElementUpdate];
  }
}

- (void)setElementNeedsLayoutUpdateWithOptions:(unint64_t)a3 coordinatedAnimations:(id)a4
{
  v4 = a3;
  v15 = a4;
  if (![(SBUISystemApertureElementSource *)self _isPresentationPossibleAndSceneForeground]|| ![(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions];
    v15[2]();
    goto LABEL_6;
  }

  v6 = [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext hasPendingCoordinatedAnimations];
  v7 = [(SBUISystemApertureElementSource *)self transitionContext];
  if (v7)
  {
    v8 = [(SBUISystemApertureElementSource *)self transitionContext];
    v9 = [v8 fromLayoutMode];
    v10 = v9 == [(SBUISystemApertureElementSource *)self layoutMode];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(SBUISystemApertureElementSource *)self layoutMode];
  [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext addPendingAnimation:v15];
  if ((v4 & 1) == 0 || ([(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions], v11 != 4 || !v10))
  {
    if (!v6 && ![(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext hasTransientLocalResizeAction])
    {
      v13 = [(SBUISystemApertureElementSource *)self localSceneResizeParameters];
      v14 = [SBUISystemApertureSceneResizeAction transientLocalResizeSceneActionWithAnimationParameters:v13];
      [(SBUISystemApertureElementSource *)self _handleSceneResizeAction:v14];
      goto LABEL_17;
    }

LABEL_6:
    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
    goto LABEL_7;
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = [[SBUISystemApertureSceneAction alloc] initWithCommand:4];
  v14 = [v12 setWithObject:v13];
  [(SBUISystemApertureElementSource *)self _performElementUpdateWithActions:v14];
LABEL_17:

LABEL_7:
}

- (BOOL)_performElementUpdateWithActionsIfPossible:(id)a3
{
  v4 = a3;
  if (![(SBUISystemApertureElementSource *)self isPresentationPossible])
  {
    goto LABEL_7;
  }

  v5 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  if (!v5 || [(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {

    goto LABEL_7;
  }

  v6 = [(SBUISystemApertureElementSource *)self _scene];

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(SBUISystemApertureElementSource *)self _performElementUpdateWithActions:v4];
LABEL_8:

  return v7;
}

- (BOOL)_performElementUpdateWithActions:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {
    [SBUISystemApertureElementSource _performElementUpdateWithActions:];
  }

  v5 = [(SBUISystemApertureElementSource *)self _scene];

  if (!v5)
  {
    [SBUISystemApertureElementSource _performElementUpdateWithActions:];
  }

  [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
  v6 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v7 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 elementIdentifier];
    [v7 setElementIdentifier:v8];
  }

  [v7 setContentRole:{objc_msgSend(v6, "contentRole")}];
  [v7 setPreferredLayoutMode:{objc_msgSend(v6, "preferredLayoutMode")}];
  [v7 setMaximumLayoutMode:{objc_msgSend(v6, "maximumLayoutMode")}];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 minimumLayoutMode] > 1 || (v9 = objc_msgSend(v6, "minimumLayoutMode"), v9 == objc_msgSend(v6, "maximumLayoutMode"))) && objc_msgSend(v7, "contentRole") == 2)
  {
    v10 = [v6 minimumLayoutMode];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 leadingView];
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 trailingView];
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v6 minimalView];
      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }

    if (v12 || v14 || [v6 maximumLayoutMode] < 3)
    {
      if (v16 && [v6 maximumLayoutMode] == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = 4 * ([v6 maximumLayoutMode] == 4);
      }
    }

    else if ([v7 contentRole] == 2 && v16)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }
  }

  [v7 setMinimumLayoutMode:v10];
  if (objc_opt_respondsToSelector())
  {
    v17 = [v6 preventsInteractiveDismissal];
  }

  else
  {
    v17 = [v7 contentRole] == 2;
  }

  [v7 setPreventsInteractiveDismissal:v17];
  if ([v7 contentRole] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [v6 preventsAutomaticDismissal];
  }

  else
  {
    v18 = 0;
  }

  [v7 setPreventsAutomaticDismissal:v18];
  [(SBUISystemApertureElementSource *)self _updateElementCanRequestAlertingAssertion];
  if ([v7 minimumLayoutMode] != 4)
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [v6 leadingView];
      [v7 setLeadingView:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v6 trailingView];
      [v7 setTrailingView:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v6 minimalView];
      [v7 setMinimalView:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v6 detachedMinimalView];
      [v7 setDetachedMinimalView:v22];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v6 associatedScenePersistenceIdentifier];
    [v7 setAssociatedScenePersistenceIdentifier:v23];
  }

  else
  {
    [v7 setAssociatedScenePersistenceIdentifier:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 setPresentationBehaviors:{objc_msgSend(v6, "presentationBehaviors")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [v6 associatedAppBundleIdentifier];
    [v7 setAssociatedAppBundleIdentifier:v24];
LABEL_53:

    goto LABEL_57;
  }

  if (([v7 presentationBehaviors] & 0x1000) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAE8] mainBundle];
    v62 = [v24 bundleIdentifier];
    [v7 setAssociatedAppBundleIdentifier:v62];

    goto LABEL_53;
  }

  [v7 setAssociatedAppBundleIdentifier:0];
LABEL_57:
  if (objc_opt_respondsToSelector())
  {
    v25 = [v6 launchURL];
  }

  else
  {
    v25 = 0;
  }

  [v7 setLaunchURL:v25];
  if (objc_opt_respondsToSelector())
  {
    v26 = [v6 launchAction];
  }

  else
  {
    v26 = 0;
  }

  [v7 setLaunchAction:v26];
  if (objc_opt_respondsToSelector())
  {
    v27 = [v6 backgroundActivitiesToSuppress];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_68;
    }

    v27 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides([v6 statusBarStyleOverridesToSuppress]);
  }

  v28 = v27;
  [v7 setBackgroundActivitiesToSuppress:v27];

LABEL_68:
  if (objc_opt_respondsToSelector())
  {
    [v7 setPreferredCustomLayout:{objc_msgSend(v6, "preferredCustomLayout")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 preferredCustomAspectRatio];
    [v7 setPreferredCustomAspectRatio:?];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v6 keyColor];
    [v7 setKeyColor:v29];
  }

  [v7 setHasMenuPresentation:{-[SBUISystemApertureElementSource elementHasMenuPresentation](self, "elementHasMenuPresentation")}];
  [v7 setAppliedLayoutMode:{-[SBUISystemApertureElementSource layoutModeAsFarAsClientsAreConcerned](self, "layoutModeAsFarAsClientsAreConcerned")}];
  if (objc_opt_respondsToSelector())
  {
    v30 = [v6 attachedMinimalViewRequiresZeroPadding];
  }

  else
  {
    v30 = 0;
  }

  [v7 setAttachedMinimalViewRequiresZeroPadding:v30];
  if (objc_opt_respondsToSelector())
  {
    v31 = [v6 prefersFixedPortraitOrientation];
  }

  else
  {
    v31 = 0;
  }

  [v7 setPrefersFixedPortraitOrientation:v31];
  if (_os_feature_enabled_impl())
  {
    if ([v6 conformsToProtocol:&unk_1F1E1C0C8])
    {
      v32 = v6;
      [v7 setIsSecureFlipBookElement:{objc_msgSend(v32, "isSecureFlipBookElement")}];
    }

    if ([v6 conformsToProtocol:&unk_1F1E255E0])
    {
      v66 = v26;
      v67 = v25;
      v68 = self;
      v33 = v6;
      v72 = [MEMORY[0x1E695DF70] array];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v34 = [v33 recordableConfigurations];
      v35 = [v34 countByEnumeratingWithState:&v86 objects:v92 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v87;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v87 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [[SBUISystemApertureSecureFlipBookClientConfiguration alloc] initWithConfiguration:*(*(&v86 + 1) + 8 * i)];
            [v72 addObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v86 objects:v92 count:16];
        }

        while (v36);
      }

      v40 = [v72 copy];
      [v7 setRecordableConfigurations:v40];

      v71 = [MEMORY[0x1E695DF90] dictionary];
      if (objc_opt_respondsToSelector())
      {
        v63 = v7;
        v64 = v6;
        v65 = v4;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        obj = v72;
        v41 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
        if (v41)
        {
          v42 = v41;
          v70 = *v83;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v83 != v70)
              {
                objc_enumerationMutation(obj);
              }

              v44 = [*(*(&v82 + 1) + 8 * j) configurationName];
              v45 = [MEMORY[0x1E695DF70] array];
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v46 = [&unk_1F1DB5C20 countByEnumeratingWithState:&v78 objects:v90 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v79;
                do
                {
                  for (k = 0; k != v47; ++k)
                  {
                    if (*v79 != v48)
                    {
                      objc_enumerationMutation(&unk_1F1DB5C20);
                    }

                    v50 = *(*(&v78 + 1) + 8 * k);
                    if ([v33 isSymmetricalForUILayoutDirectionInConfiguration:v44 orientation:{objc_msgSend(v50, "integerValue")}])
                    {
                      [v45 addObject:v50];
                    }
                  }

                  v47 = [&unk_1F1DB5C20 countByEnumeratingWithState:&v78 objects:v90 count:16];
                }

                while (v47);
              }

              [v71 setObject:v45 forKey:v44];
            }

            v42 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
          }

          while (v42);
        }

        v6 = v64;
        v4 = v65;
        v7 = v63;
      }

      [v7 setSymmetricalConfigurations:v71];
      v51 = [v33 isRegisteredForCapture];
      [v7 setIsRegisteredForCapture:v51];
      v26 = v66;
      v25 = v67;
      if ((v51 & 1) == 0 && [v33 conformsToProtocol:&unk_1F1E25640])
      {
        v52 = v33;
        v53 = [v52 preferredConfiguration];
        [v7 setPreferredConfiguration:v53];

        v54 = [v52 preferredComponentStates];
        [v7 setPreferredComponentStates:v54];
      }

      self = v68;
    }
  }

  [v7 refreshViewSizingPreferences];
  [(SBUISystemApertureElementSource *)self validateConfiguration];
  v55 = [v7 otherSceneClientSettingsRepresentation];
  v56 = [(SBUISystemApertureElementSource *)self lastKnownOtherSettings];
  v57 = [v56 isEqual:v55];

  if (!v57 || [v4 count])
  {
    [(SBUISystemApertureElementSource *)self setLastKnownOtherSettings:v55];
    v58 = [v4 count];
    v59 = [(SBUISystemApertureElementSource *)self _FBSScene];
    if (v58)
    {
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke;
      v75[3] = &unk_1E789FD10;
      v60 = &v76;
      v76 = v55;
      v77 = v4;
      [v59 updateClientSettingsWithTransitionBlock:v75];

      v59 = v77;
    }

    else
    {
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke_2;
      v73[3] = &unk_1E789FD38;
      v60 = &v74;
      v74 = v55;
      [v59 updateClientSettingsWithBlock:v73];
    }
  }

  return v57 ^ 1;
}

id __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 otherSettings];
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

  [v7 applySettings:*(a1 + 32)];
  v8 = [MEMORY[0x1E69DC6A0] transitionContext];
  [v8 setActions:*(a1 + 40)];

  return v8;
}

void __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 otherSettings];
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

  [v7 applySettings:*(a1 + 32)];
}

- (void)_handleGestureDependencyChange:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SBUISystemApertureElementSource *)self _sendActionForCommand:5];
  }
}

- (CGRect)anchorFrameForLeadingView
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [v2 SBUISA_resolvedLeadingViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)anchorFrameForTrailingView
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [v2 SBUISA_resolvedTrailingViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)anchorFrameForMinimalView
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [v2 SBUISA_resolvedMinimalViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)anchorFrameForDetachedMinimalView
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [v2 SBUISA_resolvedDetachedMinimalViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_setScene:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
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

  [(SBUISystemApertureElementSource *)self setWindowScene:v7];
  [SBUISystemApertureElementSource _addSource:self];
}

void __56__SBUISystemApertureElementSource__sceneWillInvalidate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) performPendingCoordinatedAnimations];
  v2 = [*(a1 + 32) systemApertureElementViewController];
  v3 = [v2 activeLayoutMode];

  if (v3 != -1)
  {
    v4 = [*(a1 + 32) systemApertureElementViewController];
    [v4 setActiveLayoutMode:-1];
  }

  [SBUISystemApertureElementSource _removeSource:*(a1 + 32)];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:*(a1 + 32)];
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v81 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v13 = [a4 settings];
  v14 = [v13 SBUI_systemApertureDescriptionOfDiffFromSettings:v11];

  if (v14)
  {
    v15 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SBUISystemApertureElementSource *)self succinctDescription];
      *buf = 138543618;
      v78 = v16;
      v79 = 2114;
      v80 = v14;
      _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ received scene settings update with changes: %{public}@", buf, 0x16u);
    }
  }

  v17 = [(SBUISystemApertureElementSource *)self layoutMode];
  v18 = [v11 SBUISA_layoutMode];
  if (v18 != [(SBUISystemApertureElementSource *)self layoutMode])
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions];
  }

  [(SBUISystemApertureElementSource *)self setPresentationPossible:(v17 - 1) < 0xFFFFFFFFFFFFFFFELL];
  v19 = [v12 actions];
  v20 = [v19 bs_firstObjectPassingTest:&__block_literal_global_289];

  v21 = [v12 actions];
  v22 = [v21 bs_filter:&__block_literal_global_291];

  v23 = [v12 actions];
  v24 = [v23 bs_firstObjectPassingTest:&__block_literal_global_293];

  v25 = [v12 actions];
  v26 = [v25 bs_firstObjectPassingTest:&__block_literal_global_296];

  v68 = v24;
  v69 = v26;
  v67 = v22;
  if (v20 || [v22 count] || v24 || v26)
  {
    v27 = [v12 actions];
    v28 = [v27 mutableCopy];

    if (v20)
    {
      [v28 removeObject:v20];
    }

    if ([v22 count])
    {
      [v28 minusSet:v22];
    }

    if (v24)
    {
      [v28 removeObject:v24];
    }

    if (v26)
    {
      [v28 removeObject:v26];
    }

    [v12 setActions:v28];
    v65 = v12;
    v64 = v14;
    v63 = v28;
    if (v20)
    {
      if (![v20 isTransientLocal])
      {
        v66 = [(SBUISystemApertureElementSource *)self _handleSceneResizeAction:v20];
LABEL_25:
        v31 = [(SBUISystemApertureElementSource *)self systemApertureElement];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v32 = v22;
        v33 = [v32 countByEnumeratingWithState:&v72 objects:v76 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v73;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v73 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [*(*(&v72 + 1) + 8 * i) command];
              if (v37 > 12)
              {
                if (v37 == 13)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [v31 handleCompactOrMinimalViewTapEvent];
                  }
                }

                else if (v37 == 14)
                {
                  [(SBUISystemApertureElementSource *)self _handleClientErrorNonUniqueElementAction];
                }
              }

              else if (v37 == 11)
              {
                if (objc_opt_respondsToSelector())
                {
                  [v31 handleCustomViewLongPressEvent];
                }
              }

              else if (v37 == 12)
              {
                [(SBUISystemApertureElementSource *)self setElementCanRequestAlertingAssertion:1];
                [(SBUISystemApertureElementSource *)self _updateElementCanRequestAlertingAssertion];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v72 objects:v76 count:16];
          }

          while (v34);
        }

        v24 = v68;
        if (v68)
        {
          [(SBUISystemApertureElementSource *)self _handleAlertingAction:v68];
        }

        v14 = v64;
        if (v69)
        {
          [(SBUISystemApertureElementSource *)self _handleSecureFlipBookAction:?];
        }

        v30 = [(SBUISystemApertureElementSource *)self windowScene];
        v12 = v65;
        if (v20 && ![v20 isTransientLocal])
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v29 = [v20 animationParameters];
      [(SBUISystemApertureElementSource *)self setLocalSceneResizeParameters:v29];
    }

    v66 = 0;
    goto LABEL_25;
  }

  v30 = [(SBUISystemApertureElementSource *)self windowScene];
  v66 = 0;
LABEL_49:
  if ([(SBUISystemApertureElementSource *)self layoutMode]== 1)
  {
    v38 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    v39 = [v38 activeLayoutMode];

    if (!v39)
    {
      v41 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      [v41 loadViewIfNeeded];

      v42 = [(SBUISystemApertureElementSource *)self systemApertureElement];
LABEL_58:
      v40 = v42;
      [v42 setActiveLayoutMode:1];
      goto LABEL_59;
    }
  }

LABEL_51:
  if ([(SBUISystemApertureElementSource *)self layoutMode]== 1)
  {
    v40 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    if ([v40 activeLayoutMode] == 1)
    {
LABEL_59:

      goto LABEL_60;
    }

    if ([v30 activationState] == 2)
    {

LABEL_57:
      v42 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
      goto LABEL_58;
    }

    v43 = [v30 activationState];

    if (v43 == -1)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  v44 = [(SBUISystemApertureElementSource *)self layoutMode];
  if ((v44 == 2) == ([v11 SBUISA_layoutMode] != 2) && !v66)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_5;
    v70[3] = &unk_1E789DA60;
    v70[4] = self;
    v71 = v44 == 2;
    [MEMORY[0x1E69DD250] SBUISA_performWithoutAnimationOrRetargeting:v70];
  }

  if (_os_feature_enabled_impl())
  {
    v45 = [(SBUISystemApertureElementSource *)self _sceneSettings];
    v46 = [v45 SBUISA_isSecureFlipBookInRecordingMode];

    if (v46 != [v11 SBUISA_isSecureFlipBookInRecordingMode])
    {
      v47 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      v48 = [v47 conformsToProtocol:&unk_1F1E1C0C8];

      if (v48)
      {
        v49 = [(SBUISystemApertureElementSource *)self systemApertureElement];
        [v49 recordingModeChanged:v46];
      }
    }

    v50 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    v51 = [v50 conformsToProtocol:&unk_1F1E255E0];

    v24 = v68;
    if (v51)
    {
      v52 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      if (([v52 isRegisteredForCapture] & 1) == 0)
      {
        v53 = [(SBUISystemApertureElementSource *)self systemApertureElement];
        v54 = [v53 conformsToProtocol:&unk_1F1E25640];

        if (v54)
        {
          v55 = [(SBUISystemApertureElementSource *)self systemApertureElement];
          v56 = [(SBUISystemApertureElementSource *)self _sceneSettings];
          v57 = [v56 SBUISA_secureFlipBookActiveConfiguration];
          v58 = v20;
          v59 = v57;
          if (v57)
          {
            v60 = v57;
          }

          else
          {
            v60 = &stru_1F1D7ED48;
          }

          [v55 setActiveConfiguration:v60];

          v20 = v58;
          v61 = [(SBUISystemApertureElementSource *)self _sceneSettings];
          v62 = [v61 SBUISA_secureFlipBookActiveComponentStates];
          [v55 setActiveComponentStates:v62];
        }
      }

      v24 = v68;
    }
  }
}

uint64_t __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConfiguration];
  v5 = [v2 detachedMinimalView];

  v3 = [*(a1 + 32) mutableConfiguration];
  v4 = [v3 minimalView];

  [v5 setHidden:(*(a1 + 40) & 1) == 0];
  if (*(a1 + 40) == 1)
  {
    [v4 setHidden:0];
  }
}

- (void)addTransitionContext:(id)a3
{
  v4 = a3;
  transitionContexts = self->_transitionContexts;
  v8 = v4;
  if (!transitionContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_transitionContexts;
    self->_transitionContexts = v6;

    v4 = v8;
    transitionContexts = self->_transitionContexts;
  }

  [(NSMutableArray *)transitionContexts addObject:v4];
  -[SBUISystemApertureElementSource setLayoutModeAsFarAsClientsAreConcerned:](self, "setLayoutModeAsFarAsClientsAreConcerned:", [v8 fromLayoutMode]);
}

- (void)removeTransitionContext:(id)a3
{
  [(NSMutableArray *)self->_transitionContexts removeObject:a3];
  [(SBUISystemApertureElementSource *)self setLayoutModeAsFarAsClientsAreConcerned:[(SBUISystemApertureElementSource *)self layoutMode]];
  if (![(NSMutableArray *)self->_transitionContexts count])
  {
    transitionContexts = self->_transitionContexts;
    self->_transitionContexts = 0;
  }
}

- (void)_activateConstraintsForActiveLayoutModeIfNeeded:(int64_t)a3
{
  if ([(SBUISystemApertureElementSource *)self isPresentationPossible]&& [(SBUISystemApertureElementSource *)self _elementIsInAWindow]&& [(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout]&& [(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {

    [(SBUISystemApertureElementSource *)self _activateConstraintsForLayoutMode:a3];
  }

  else
  {
    v5 = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
    [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:0];
    if ([v5 count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:v5];
    }
  }
}

- (void)_activateConstraintsForLayoutMode:(int64_t)a3
{
  v15 = [(SBUISystemApertureElementSource *)self _constraintsForLayoutMode:a3];
  v4 = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
  v5 = [v15 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
    [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
    v7 = [v6 minimalView];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 detachedMinimalView];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 leadingView];
    v10 = [v6 trailingView];
    v11 = [v6 view];
    if (v7 && ([v7 isDescendantOfView:v11] & 1) == 0)
    {
      [v11 addSubview:v7];
    }

    if (v8 && ([v8 isDescendantOfView:v11] & 1) == 0)
    {
      [v11 addSubview:v8];
    }

    if (v9 && ([v9 isDescendantOfView:v11] & 1) == 0)
    {
      [v11 addSubview:v9];
    }

    if (v10 && ([v10 isDescendantOfView:v11] & 1) == 0)
    {
      [v11 addSubview:v10];
    }

    maximumLeadingViewWidthConstraint = self->__maximumLeadingViewWidthConstraint;
    [v9 SBUISA_maximumAccessoryViewWidth];
    [(NSLayoutConstraint *)maximumLeadingViewWidthConstraint setConstant:?];
    maximumTrailingViewWidthConstraint = self->__maximumTrailingViewWidthConstraint;
    [v10 SBUISA_maximumAccessoryViewWidth];
    [(NSLayoutConstraint *)maximumTrailingViewWidthConstraint setConstant:?];
    v14 = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
    [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:0];
    if ([v14 count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:v14];
    }

    if ([v15 count])
    {
      [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:v15];
      [MEMORY[0x1E696ACD8] activateConstraints:v15];
    }
  }
}

- (id)_constraintsForLayoutMode:(int64_t)a3
{
  v4 = self;
  v152[12] = *MEMORY[0x1E69E9840];
  v5 = [(SBUISystemApertureElementSource *)self _elementViewController];
  v6 = [v5 view];

  v7 = [(SBUISystemApertureElementSource *)v4 containerViewController];
  v8 = [v7 view];

  v9 = [(SBUISystemApertureElementSource *)v4 mutableConfiguration];
  v10 = [v9 leadingView];

  v11 = [(SBUISystemApertureElementSource *)v4 mutableConfiguration];
  v12 = [v11 minimalView];

  v13 = [(SBUISystemApertureElementSource *)v4 mutableConfiguration];
  v14 = [v13 detachedMinimalView];

  v15 = [(SBUISystemApertureElementSource *)v4 mutableConfiguration];
  v16 = [v15 trailingView];

  v145 = [v8 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v17 = [v8 window];
  v147 = [v17 SBUISA_systemApertureMinimumContentSizeLayoutGuide];

  v18 = [v8 window];
  v146 = [v18 SBUISA_systemApertureMaximumContentSizeLayoutGuide];

  constraintsByLayoutMode = v4->_constraintsByLayoutMode;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v21 = [(NSMutableDictionary *)constraintsByLayoutMode objectForKeyedSubscript:v20];

  if (v21)
  {
    goto LABEL_8;
  }

  v136 = v16;
  v137 = v4;
  v138 = v14;
  v139 = v10;
  v142 = v12;
  v143 = MEMORY[0x1E695DF70];
  v131 = [v6 centerXAnchor];
  v127 = [v8 centerXAnchor];
  v123 = [v131 constraintEqualToAnchor:v127];
  v152[0] = v123;
  v121 = [v6 topAnchor];
  v135 = v8;
  v119 = [v8 topAnchor];
  v117 = [v121 constraintEqualToAnchor:v119];
  v152[1] = v117;
  v115 = [v6 widthAnchor];
  v113 = [v147 widthAnchor];
  v111 = [v115 constraintEqualToAnchor:v113];
  LODWORD(v22) = 1.0;
  v109 = [v111 SBUISA_withPriority:v22];
  v152[2] = v109;
  v107 = [v6 heightAnchor];
  v105 = [v147 heightAnchor];
  v103 = [v107 constraintEqualToAnchor:v105];
  LODWORD(v23) = 1.0;
  v101 = [v103 SBUISA_withPriority:v23];
  v152[3] = v101;
  v99 = [v6 topAnchor];
  v97 = [v147 topAnchor];
  v95 = [v99 constraintLessThanOrEqualToAnchor:v97];
  v152[4] = v95;
  v93 = [v6 leadingAnchor];
  v91 = [v147 leadingAnchor];
  v90 = [v93 constraintLessThanOrEqualToAnchor:v91];
  v152[5] = v90;
  v89 = [v6 bottomAnchor];
  v88 = [v147 bottomAnchor];
  v87 = [v89 constraintGreaterThanOrEqualToAnchor:v88];
  v152[6] = v87;
  v86 = [v6 trailingAnchor];
  v85 = [v147 trailingAnchor];
  v84 = [v86 constraintGreaterThanOrEqualToAnchor:v85];
  v152[7] = v84;
  v83 = [v6 topAnchor];
  v82 = [v146 topAnchor];
  v81 = [v83 constraintGreaterThanOrEqualToAnchor:v82];
  v152[8] = v81;
  v24 = [v6 leadingAnchor];
  v25 = [v146 leadingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
  v152[9] = v26;
  v27 = [v6 bottomAnchor];
  v28 = [v146 bottomAnchor];
  [v27 constraintLessThanOrEqualToAnchor:v28];
  v29 = v140 = a3;
  v152[10] = v29;
  v30 = [v6 trailingAnchor];
  v31 = [v146 trailingAnchor];
  [v30 constraintLessThanOrEqualToAnchor:v31];
  v32 = v141 = v6;
  v152[11] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:12];
  v144 = [v143 arrayWithArray:v33];

  v34 = v140;
  if ((v140 + 1) >= 3)
  {
    if (v140 == 2)
    {
      v6 = v141;
      v12 = v142;
      if (v142)
      {
        v133 = [v142 centerXAnchor];
        v129 = [v141 centerXAnchor];
        v125 = [v133 constraintEqualToAnchor:v129];
        v150[0] = v125;
        v65 = [v142 centerYAnchor];
        v66 = [v141 centerYAnchor];
        v67 = [v65 constraintEqualToAnchor:v66];
        v150[1] = v67;
        v68 = [v142 leadingAnchor];
        v69 = [v141 leadingAnchor];
        v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];
        v150[2] = v70;
        v71 = [v142 topAnchor];
        v72 = [v141 topAnchor];
        v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72];
        v150[3] = v73;
        v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
        [v144 addObjectsFromArray:v74];

        v34 = v140;
        v6 = v141;

        v12 = v142;
      }

      v14 = v138;
      v10 = v139;
      if (!v138 || v138 == v12)
      {
        goto LABEL_5;
      }

      v134 = [v138 centerXAnchor];
      v126 = [v6 centerXAnchor];
      v130 = [v134 constraintEqualToAnchor:v126];
      v149[0] = v130;
      v38 = [v138 centerYAnchor];
      v39 = [v6 centerYAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      v149[1] = v40;
      v41 = [v138 leadingAnchor];
      v75 = [v6 leadingAnchor];
      v76 = [v41 constraintGreaterThanOrEqualToAnchor:v75];
      v149[2] = v76;
      v77 = [v138 topAnchor];
      v78 = [v6 topAnchor];
      v79 = [v77 constraintGreaterThanOrEqualToAnchor:v78];
      v149[3] = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:4];
      [v144 addObjectsFromArray:v80];

      v34 = v140;
      v6 = v141;

      v37 = v130;
      v36 = v126;

      v35 = v134;
    }

    else
    {
      v6 = v141;
      v12 = v142;
      v14 = v138;
      v10 = v139;
      if (v140 != 3 || !v139)
      {
        goto LABEL_5;
      }

      v52 = [v139 widthAnchor];
      [v139 SBUISA_maximumAccessoryViewWidth];
      v53 = [v52 constraintLessThanOrEqualToConstant:?];
      maximumLeadingViewWidthConstraint = v137->__maximumLeadingViewWidthConstraint;
      v137->__maximumLeadingViewWidthConstraint = v53;

      v55 = [v136 widthAnchor];
      [v136 SBUISA_maximumAccessoryViewWidth];
      v56 = [v55 constraintLessThanOrEqualToConstant:?];
      maximumTrailingViewWidthConstraint = v137->__maximumTrailingViewWidthConstraint;
      v137->__maximumTrailingViewWidthConstraint = v56;

      v132 = [v139 leadingAnchor];
      v124 = [v141 leadingAnchor];
      v128 = [v132 constraintGreaterThanOrEqualToAnchor:v124];
      v148[0] = v128;
      v38 = [v139 topAnchor];
      v39 = [v141 topAnchor];
      v40 = [v38 constraintGreaterThanOrEqualToAnchor:v39];
      v148[1] = v40;
      v41 = [v139 centerYAnchor];
      v122 = [v141 centerYAnchor];
      v120 = [v41 constraintEqualToAnchor:v122];
      v148[2] = v120;
      v118 = [v139 trailingAnchor];
      v116 = [v145 leadingAnchor];
      v114 = [v118 constraintLessThanOrEqualToAnchor:v116];
      v58 = v137->__maximumLeadingViewWidthConstraint;
      v148[3] = v114;
      v148[4] = v58;
      v112 = [v136 leadingAnchor];
      v110 = [v145 trailingAnchor];
      v108 = [v112 constraintGreaterThanOrEqualToAnchor:v110];
      v148[5] = v108;
      v106 = [v136 topAnchor];
      v104 = [v141 topAnchor];
      v102 = [v106 constraintGreaterThanOrEqualToAnchor:v104];
      v148[6] = v102;
      v100 = [v136 centerYAnchor];
      v98 = [v141 centerYAnchor];
      v96 = [v100 constraintEqualToAnchor:v98];
      v148[7] = v96;
      v94 = [v136 trailingAnchor];
      v92 = [v141 trailingAnchor];
      v59 = [v94 constraintLessThanOrEqualToAnchor:v92];
      v60 = v137->__maximumTrailingViewWidthConstraint;
      v148[8] = v59;
      v148[9] = v60;
      v61 = [v141 heightAnchor];
      v62 = [v145 heightAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      v148[10] = v63;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:11];
      [v144 addObjectsFromArray:v64];

      v36 = v124;
      v6 = v141;

      v37 = v128;
      v35 = v132;

      v34 = v140;
    }
  }

  else
  {
    v6 = v141;
    v35 = [v141 widthAnchor];
    v36 = [v147 widthAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v151[0] = v37;
    v38 = [v141 heightAnchor];
    v39 = [v147 heightAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v151[1] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:2];
    [v144 addObjectsFromArray:v41];
  }

  v14 = v138;
  v10 = v139;
  v12 = v142;
LABEL_5:
  v21 = [v144 copy];
  v4 = v137;
  v42 = v137->_constraintsByLayoutMode;
  if (!v42)
  {
    v43 = [MEMORY[0x1E695DF90] dictionary];
    v44 = v137->_constraintsByLayoutMode;
    v137->_constraintsByLayoutMode = v43;

    v42 = v137->_constraintsByLayoutMode;
  }

  v45 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
  [(NSMutableDictionary *)v42 setObject:v21 forKeyedSubscript:v45];

  v8 = v135;
  v16 = v136;
LABEL_8:
  v46 = [(SBUISystemApertureElementSource *)v4 windowScene];
  v47 = v46;
  if (v46)
  {
    v48 = v21;
    v49 = v147;
    if ([v46 activationState])
    {
      if ([v47 activationState] == 1)
      {
        v48 = v21;
      }

      else
      {
        v48 = 0;
      }
    }
  }

  else
  {
    v48 = 0;
    v49 = v147;
  }

  v50 = v48;

  return v48;
}

- (BOOL)_handleSceneResizeAction:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext addSceneResizeAction:v4];
  if ([(SBUISystemApertureElementSource *)self isPresentationPossible])
  {
    [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
  }

  v5 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  v6 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v7 = [v6 view];

  [v7 frame];
  UISizeRoundToScale();
  v9 = v8;
  v11 = v10;
  [v5 SBUISA_containerViewFrame];
  UISizeRoundToScale();
  v14 = v11 == v13 && v9 == v12;
  v15 = [v4 animationParameters];
  v16 = [(SBUISystemApertureElementSource *)self localSceneResizeParameters];
  v17 = [SBUISystemApertureAnimationParameters areParams:v15 equivalentTo:v16];

  if (([v4 isTransientLocal] & 1) != 0 || !-[_SBUISystemApertureElementSourceAnimationContext canSkipRemoteSceneResizeActions](self->_animationContext, "canSkipRemoteSceneResizeActions"))
  {
    v31 = 1;
    goto LABEL_27;
  }

  v18 = v14 && v17;
  v19 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v20 = [v19 minimalView];
  v21 = [v19 detachedMinimalView];
  v22 = [v19 leadingView];
  v23 = [v19 trailingView];
  if (v18 == 1)
  {
    v24 = [(SBUISystemApertureElementSource *)self layoutMode];
    if (v24 == 3)
    {
      [v22 frame];
      v39 = v38;
      v41 = v40;
      [v5 SBUISA_resolvedLeadingViewFrame];
      v31 = v41 != v43 || v39 != v42;
      [v23 frame];
      v33 = v44;
      v35 = v45;
      [v5 SBUISA_resolvedTrailingViewFrame];
      goto LABEL_22;
    }

    if (v24 == 2)
    {
      [v20 frame];
      v26 = v25;
      v28 = v27;
      [v5 SBUISA_resolvedMinimalViewFrame];
      v31 = v28 != v30 || v26 != v29;
      if (v21)
      {
        [v21 frame];
        v33 = v32;
        v35 = v34;
        [v5 SBUISA_resolvedDetachedMinimalViewFrame];
LABEL_22:
        v46 = v33 != v36;
        if (v35 != v37)
        {
          v46 = 1;
        }

        v31 |= v46;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
  }

LABEL_27:
  if (([v4 isTransientLocal] & 1) == 0)
  {
    v47 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(SBUISystemApertureElementSource *)self succinctDescription];
      v49 = [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext canSkipRemoteSceneResizeActions];
      v51 = 138412802;
      v52 = v48;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v49;
      _os_log_impl(&dword_1A9A79000, v47, OS_LOG_TYPE_DEFAULT, "Handling remote resize action for %@ will animate %{BOOL}u animationContext allows skipping: %{BOOL}u", &v51, 0x18u);
    }
  }

  if (v31)
  {
    [(SBUISystemApertureElementSource *)self _animateWithSceneResizeAction:v4];
  }

  else
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext removeSceneResizeAction:v4];
  }

  return v31;
}

- (void)_animateWithSceneResizeAction:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  v6 = [(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing];
  v44 = [(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout];
  v7 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v45 = v6;
  [v7 setShouldDeferViewSizingPreferenceUpdates:v6];

  v8 = [(SBUISystemApertureElementSource *)self layoutGuideRootView];
  v9 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v10 = [v9 view];

  if ([v4 isTransientLocal])
  {
    v11 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SBUISystemApertureElementSource *)self succinctDescription];
      *buf = 138412290;
      v77 = v12;
      _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Performing transient local action for %@", buf, 0xCu);
    }
  }

  v13 = [SBUISystemApertureElementSourceAnimator alloc];
  v14 = [v4 animationParameters];
  [v10 window];
  v15 = v40 = v10;
  v16 = [(SBUISystemApertureElementSourceAnimator *)v13 initWithSettings:v14 window:v15];

  v43 = objc_alloc_init(MEMORY[0x1E69DD808]);
  [v43 _setAnimator:v16];
  v17 = [v4 animationParameters];
  [v43 _setIsAnimated:{objc_msgSend(v17, "isAnimated")}];

  v18 = [v43 _transitionCoordinator];
  v19 = objc_alloc_init(SBUISystemApertureElementTransitionContext);
  v20 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  [(SBUISystemApertureElementTransitionContext *)v19 setTransitionCoordinator:v18];
  [(SBUISystemApertureElementTransitionContext *)v19 setFromLayoutMode:[(SBUISystemApertureElementSource *)self layoutModeAsFarAsClientsAreConcerned]];
  -[SBUISystemApertureElementTransitionContext setUserInitiated:](v19, "setUserInitiated:", [v4 isUserInitiated]);
  [(SBUISystemApertureElementSource *)self addTransitionContext:v19];
  [v5 SBUISA_containerViewFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v5 SBUISA_layoutMode];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke;
  v64[3] = &unk_1E789FD80;
  v70 = v29;
  v30 = v20;
  v65 = v30;
  v66 = self;
  v67 = v5;
  v31 = v8;
  v75 = v45;
  v68 = v31;
  v69 = v18;
  v71 = v22;
  v72 = v24;
  v73 = v26;
  v74 = v28;
  v42 = v18;
  v41 = v5;
  [(SBUISystemApertureElementSourceAnimator *)v16 addPreflightAction:v64];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_2;
  v54[3] = &unk_1E789FDA8;
  v63 = v44;
  v54[4] = self;
  v58 = v22;
  v59 = v24;
  v60 = v26;
  v61 = v28;
  v32 = v30;
  v55 = v32;
  v56 = v40;
  v62 = v29;
  v33 = v31;
  v57 = v33;
  v34 = v40;
  [(SBUISystemApertureElementSourceAnimator *)v16 addPreAlongsideAnimation:v54];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_3;
  v50[3] = &unk_1E789FDD0;
  v50[4] = self;
  v51 = v19;
  v52 = v32;
  v35 = v4;
  v53 = v35;
  v36 = v32;
  v37 = v19;
  [(SBUISystemApertureElementSourceAnimator *)v16 addPostflightAction:v50];
  [(SBUISystemApertureElementSource *)self _ensureAccessoryViewLayoutForTransitionWithAnimator:v16];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_4;
  v46[3] = &unk_1E789EDC0;
  v49 = v45;
  v46[4] = self;
  v47 = v33;
  v48 = v35;
  v38 = v35;
  v39 = v33;
  [(SBUISystemApertureElementSourceAnimator *)v16 addPostAlongsideAnimation:v46];
  [(SBUISystemApertureElementSourceAnimator *)v16 animateTransition:v43];
}

void __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) >= 2 && [*(a1 + 32) bs_isDisappearingOrDisappeared])
  {
    [*(a1 + 32) beginAppearanceTransition:1 animated:0];
    [*(a1 + 32) endAppearanceTransition];
  }

  v2 = [*(a1 + 40) systemApertureElementViewController];
  [v2 setActiveLayoutMode:*(a1 + 72)];

  v3 = [*(a1 + 40) systemApertureElementViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 48) SBUISA_minimalViewLayoutAxis];
    v6 = [*(a1 + 40) systemApertureElementViewController];
    v7 = [v6 minimalViewLayoutAxis];

    if (v5 != v7)
    {
      v8 = [*(a1 + 40) systemApertureElementViewController];
      [v8 setMinimalViewLayoutAxis:{objc_msgSend(*(a1 + 48), "SBUISA_minimalViewLayoutAxis")}];
    }
  }

  if ([SBUISystemApertureLayoutGuide prepareLayoutGuidesForViewControllerIfNeeded:*(a1 + 32) onlyIfEmpty:1])
  {
    [*(a1 + 56) setNeedsLayout];
    [*(a1 + 56) layoutIfNeeded];
  }

  v9 = *(a1 + 112);
  v10 = [*(a1 + 40) systemApertureElementViewController];
  v11 = v10;
  if (v9 == 1)
  {
    [v10 viewWillLayoutSubviewsWithTransitionCoordinator:*(a1 + 64)];
  }

  else
  {
    [v10 viewWillTransitionToSize:*(a1 + 64) withTransitionCoordinator:{*(a1 + 96), *(a1 + 104)}];
  }
}

uint64_t __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 104) & 1) == 0)
  {
    if ([*(a1 + 32) _elementSupportsDynamicResizing] && objc_msgSend(*(a1 + 32), "layoutMode") == 4 && (objc_msgSend(*(a1 + 32), "mutableConfiguration"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "preferredCustomLayout"), v2, !v3))
    {
      v9 = *(a1 + 64);
      v8 = *(a1 + 72);
      v10 = [*(a1 + 32) mutableConfiguration];
      [v10 preferredContentSizeClampedToMaximumExpandedSize];
      v12 = v11;
      v14 = v13;

      v15 = [*(a1 + 40) parentViewController];
      v16 = [v15 view];
      v17 = [v16 SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v17 layoutFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v30.origin.x = v9;
      v30.origin.y = v8;
      v30.size.width = v12;
      v26 = v12;
      v30.size.height = v14;
      CGRectGetWidth(v30);
      v31.origin.x = v19;
      v31.origin.y = v21;
      v31.size.width = v23;
      v31.size.height = v25;
      CGRectGetWidth(v31);
      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      MinX = CGRectGetMinX(v32);
      UIRoundToScale();
      [*(a1 + 48) setFrame:{MinX - v28, v8, v26, v14}];
    }

    else
    {
      [*(a1 + 48) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    }
  }

  [*(a1 + 32) _activateConstraintsForActiveLayoutModeIfNeeded:*(a1 + 96)];
  v4 = [SBUISystemApertureLayoutGuide prepareLayoutGuidesForViewControllerIfNeeded:*(a1 + 40) onlyIfEmpty:0];
  if (*(a1 + 104) == 1 && v4)
  {
    [*(a1 + 56) setNeedsLayout];
    [*(a1 + 56) layoutIfNeeded];
  }

  result = [*(a1 + 32) _elementSupportsDynamicResizing];
  if (result)
  {
    [*(a1 + 32) _updateTraitCollectionForElementIfNeeded];
    v7 = *(*(a1 + 32) + 160);

    return [v7 performPendingCoordinatedAnimations];
  }

  return result;
}

uint64_t __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_3(uint64_t a1, int a2)
{
  [*(a1 + 32) removeTransitionContext:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (a2)
  {
    [v4 _performElementUpdate];
    result = [*(a1 + 32) layoutMode];
    if (result <= 1)
    {
      result = [*(a1 + 48) bs_isAppearingOrAppeared];
      if (result)
      {
        [*(a1 + 48) beginAppearanceTransition:0 animated:0];
        v6 = *(a1 + 48);

        return [v6 endAppearanceTransition];
      }
    }
  }

  else
  {
    v7 = [v4 mutableConfiguration];
    [v7 setShouldDeferViewSizingPreferenceUpdates:0];

    [*(*(a1 + 32) + 160) removeSceneResizeAction:*(a1 + 56)];
    v8 = *(*(a1 + 32) + 160);

    return [v8 disableSkippingSceneResizeActions];
  }

  return result;
}

uint64_t __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mutableConfiguration];
  [v2 setShouldDeferViewSizingPreferenceUpdates:0];

  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 32) mutableConfiguration];
    v4 = [v3 leadingView];
    [v4 setNeedsLayout];

    v5 = [*(a1 + 32) mutableConfiguration];
    v6 = [v5 trailingView];
    [v6 setNeedsLayout];

    v7 = [*(a1 + 32) mutableConfiguration];
    v8 = [v7 minimalView];
    [v8 setNeedsLayout];

    v9 = [*(a1 + 32) mutableConfiguration];
    v10 = [v9 detachedMinimalView];
    [v10 setNeedsLayout];

    v11 = [*(a1 + 32) mutableConfiguration];
    v12 = [v11 elementViewController];
    v13 = [v12 view];
    [v13 setNeedsLayout];

    v14 = [*(a1 + 32) mutableConfiguration];
    v15 = [v14 elementViewController];
    v16 = [v15 view];
    [v16 updateConstraintsIfNeeded];

    [*(a1 + 40) setNeedsLayout];
    [*(a1 + 40) layoutIfNeeded];
    [*(*(a1 + 32) + 160) removeSceneResizeAction:*(a1 + 48)];
    [*(*(a1 + 32) + 160) performPendingCoordinatedAnimations];
    v17 = [*(a1 + 32) _performElementUpdate];
    result = [*(a1 + 48) isTransientLocal];
    if (result)
    {
      v19 = SBLogSystemApertureHosting();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 32) succinctDescription];
        v23[0] = 67109378;
        v23[1] = v17;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_1A9A79000, v19, OS_LOG_TYPE_DEFAULT, "didUpdate %{BOOL}u for transient local action for %@", v23, 0x12u);
      }

      v21 = *(*(a1 + 32) + 160);
      if (v17)
      {
        return [v21 noteIsExpectingRemoteSceneResizeAction];
      }

      else
      {
        return [v21 disableSkippingSceneResizeActions];
      }
    }
  }

  else
  {
    [*(a1 + 40) setNeedsLayout];
    v22 = *(a1 + 40);

    return [v22 layoutIfNeeded];
  }

  return result;
}

- (void)_ensureAccessoryViewLayoutForTransitionWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v6 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  v7 = [v6 view];

  v31 = [v5 minimalView];
  v8 = [v5 detachedMinimalView];
  v30 = [v5 leadingView];
  v9 = [v5 trailingView];
  if ([v7 effectiveUserInterfaceLayoutDirection])
  {
    [v5 leadingView];
  }

  else
  {
    [v5 trailingView];
  }
  v10 = ;
  if ([(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing]&& ![(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout])
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke;
    v58[3] = &unk_1E789FDF8;
    v58[4] = self;
    v59 = v7;
    v60 = v10;
    v29 = v9;
    v11 = MEMORY[0x1AC58E960](v58);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_2;
    v52[3] = &unk_1E789FE20;
    v57 = v11;
    v12 = v31;
    v53 = v12;
    v13 = v8;
    v54 = v13;
    v27 = v10;
    v14 = v30;
    v55 = v14;
    v28 = v7;
    v15 = v29;
    v56 = v15;
    v16 = v11;
    v17 = MEMORY[0x1AC58E960](v52);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_3;
    v46[3] = &unk_1E789FE70;
    v46[4] = self;
    v47 = v12;
    v48 = v13;
    v18 = v14;
    v10 = v27;
    v49 = v18;
    v19 = v15;
    v7 = v28;
    v50 = v19;
    v20 = v17;
    v9 = v29;
    v21 = v20;
    v51 = v20;
    [v4 addPreAlongsideAnimation:v46];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_5;
    v44[3] = &unk_1E789E340;
    v44[4] = self;
    v45 = v21;
    v22 = v21;
    [v4 addPostAlongsideAnimation:v44];
  }

  if (![(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_6;
    v39[3] = &unk_1E789FE98;
    v39[4] = self;
    v40 = v31;
    v41 = v8;
    v42 = v30;
    v43 = v9;
    v23 = MEMORY[0x1AC58E960](v39);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_7;
    v37[3] = &unk_1E789E340;
    v24 = v23;
    v37[4] = self;
    v38 = v24;
    [v4 addPreAlongsideAnimation:v37];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_8;
    v35[3] = &unk_1E789E340;
    v35[4] = self;
    v36 = v24;
    v25 = v24;
    [v4 addPostAlongsideAnimation:v35];
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_9;
  v32[3] = &unk_1E789DD98;
  v33 = v8;
  v34 = self;
  v26 = v8;
  [v4 addPreAlongsideAnimation:v32];
}

void __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a2;
  v5 = [*(a1 + 32) mutableConfiguration];
  [v5 maximumAccessoryViewSizeForLayoutMode:a3];
  v7 = v6;
  v9 = v8;

  v10 = *(a1 + 40);
  [v35 bounds];
  [v10 convertRect:v35 fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (objc_opt_respondsToSelector())
  {
    [v35 sizeThatFits:a3 forLayoutMode:{v7, v9}];
  }

  else
  {
    [v35 sizeThatFits:{v7, v9}];
  }

  v21 = v19;
  v22 = v20;
  v23 = v35;
  if (*(a1 + 48) == v35)
  {
    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = v12;
    v38.origin.y = v14;
    v38.size.width = v21;
    v38.size.height = v22;
    v25 = CGRectGetMaxX(v38);
    v23 = v35;
    v12 = v12 + MaxX - v25;
  }

  v26 = [v23 superview];
  [v26 convertRect:*(a1 + 40) fromView:{v12, v14, v21, v22}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v35 setFrame:{v28, v30, v32, v34}];
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 2 || a2 == 3)
  {
    (*(*(result + 64) + 16))();
    v3 = *(*(v2 + 64) + 16);

    return v3();
  }

  return result;
}

void __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_4;
  v8[3] = &unk_1E789FE48;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v2 performWithoutAnimation:v8];
  (*(*(a1 + 72) + 16))(*(a1 + 72), [*(a1 + 32) layoutMode]);
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutMode];
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    v4 = *(a1 + 40);
    [*(a1 + 32) anchorFrameForMinimalView];
    [v3 _ensureAccessoryView:v4 hasLayoutFrame:?];
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    [v5 anchorFrameForDetachedMinimalView];
  }

  else
  {
    if ([*(a1 + 32) layoutMode] != 3)
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    [v7 anchorFrameForLeadingView];
    [v7 _ensureAccessoryView:v8 hasLayoutFrame:?];
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    [v5 anchorFrameForTrailingView];
  }

  [v5 _ensureAccessoryView:v6 hasLayoutFrame:?];
LABEL_6:
  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) layoutMode] != 2;

  return [v9 setHidden:v10];
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) layoutMode];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void *__87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_6(void *result, uint64_t a2)
{
  v2 = result;
  if (a2 == 3)
  {
    v7 = result[4];
    v8 = result[7];
    [v7 anchorFrameForLeadingView];
    [v7 _ensureAccessoryView:v8 hasLayoutFrame:?];
    v5 = v2[4];
    v6 = v2[8];
    [v5 anchorFrameForTrailingView];
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v3 = result[4];
    v4 = result[5];
    [v3 anchorFrameForMinimalView];
    [v3 _ensureAccessoryView:v4 hasLayoutFrame:?];
    v5 = v2[4];
    v6 = v2[6];
    [v5 anchorFrameForDetachedMinimalView];
  }

  return [v5 _ensureAccessoryView:v6 hasLayoutFrame:?];
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) layoutMode];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) layoutMode];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) layoutMode] != 2;

  return [v1 setHidden:v2];
}

- (void)_handleAlertingAction:(id)a3
{
  v5 = a3;
  v6 = [(NSMutableArray *)self->_alertingAssertionsAwaitingActions count];
  alertingAssertionsAwaitingActions = self->_alertingAssertionsAwaitingActions;
  if (v6 < 2)
  {
    [(NSMutableArray *)alertingAssertionsAwaitingActions removeAllObjects];
    if ([(SBUISystemApertureAssertion *)self->_alertingAssertion isValid])
    {
      v9 = [(_SBUISystemApertureAlertingAssertion *)self->_alertingAssertion alertingAction];

      if (v9)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"SBUISystemApertureElementSource.m" lineNumber:1362 description:{@"Alerting assertion already has an alerting action: %@", self->_alertingAssertion}];
      }

      [(_SBUISystemApertureAlertingAssertion *)self->_alertingAssertion setAlertingAction:v5];
    }

    else
    {
      [v5 invalidateWithReason:@"no alerting assertion"];
    }
  }

  else
  {
    [(NSMutableArray *)alertingAssertionsAwaitingActions removeObjectAtIndex:0];
    v8 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "_handleAlertingAction: Ignoring this action because we have an invalid assertion awaiting action.", buf, 2u);
    }
  }
}

- (void)_handleSecureFlipBookAction:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  if ([v5 conformsToProtocol:&unk_1F1E255E0])
  {
    v31 = v5;
    v6 = v5;
    v32 = [v4 toState];
    v7 = [v4 configurationName];
    v8 = [v4 flipBookName];
    v33 = [v4 layoutMode];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v6;
    v9 = [v6 recordableConfigurations];
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [v14 configurationName];
          v16 = [v15 isEqualToString:v7];

          if (v16)
          {
            v17 = [v14 layoutModesToComponentFlipBookDescriptions];
            v18 = [v17 objectForKey:v33];

            v41 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v39;
              v29 = v4;
LABEL_13:
              v23 = 0;
              while (1)
              {
                if (*v39 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v38 + 1) + 8 * v23);
                v25 = [v24 flipBookName];
                v26 = [v25 isEqualToString:v8];

                if (v26)
                {
                  break;
                }

                if (v21 == ++v23)
                {
                  v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  v4 = v29;
                  if (v21)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_25;
                }
              }

              v4 = v29;
              v27 = [v29 type];
              if (v27 == 1)
              {
                v34[0] = MEMORY[0x1E69E9820];
                v34[1] = 3221225472;
                v34[2] = __63__SBUISystemApertureElementSource__handleSecureFlipBookAction___block_invoke_2;
                v34[3] = &unk_1E789DA38;
                v35 = v29;
                [v24 transitionToState:v32 completion:v34];
                v28 = v35;
              }

              else
              {
                if (v27)
                {
                  goto LABEL_25;
                }

                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __63__SBUISystemApertureElementSource__handleSecureFlipBookAction___block_invoke;
                v36[3] = &unk_1E789DD98;
                v36[4] = v24;
                v37 = v29;
                [v24 resetToState:v32 completion:v36];
                v28 = v37;
              }
            }

LABEL_25:

            goto LABEL_26;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    v5 = v31;
  }
}

void __63__SBUISystemApertureElementSource__handleSecureFlipBookAction___block_invoke(uint64_t a1)
{
  v21 = [*(a1 + 32) referenceView];
  [*(a1 + 32) captureBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v21 window];
  v11 = [v10 windowScene];
  v12 = [v11 coordinateSpace];
  [v12 convertRect:v21 fromCoordinateSpace:{v3, v5, v7, v9}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [*(a1 + 40) markCompleteWithUpdateCaptureBounds:{v14, v16, v18, v20}];
}

- (void)_ensureAccessoryView:(id)a3 hasLayoutFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v11 = [v10 view];

  if (([v9 isDescendantOfView:v11] & 1) == 0)
  {
    [v11 addSubview:v9];
  }

  [v9 setAlpha:1.0];
  [v9 setHidden:0];
  if ([v9 translatesAutoresizingMaskIntoConstraints])
  {
    v12 = [(SBUISystemApertureElementSource *)self windowScene];
    v13 = [v12 coordinateSpace];
    v14 = [v9 superview];
    [v13 convertRect:v14 toCoordinateSpace:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [v9 setAutoresizingMask:0];
    v23 = *(MEMORY[0x1E695EFD0] + 16);
    v24[0] = *MEMORY[0x1E695EFD0];
    v24[1] = v23;
    v24[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v9 setTransform:v24];
    [v9 setFrame:{v16, v18, v20, v22}];
    [v9 setNeedsLayout];
  }
}

- (void)_windowDidAttachToContext:(id)a3
{
  v4 = [a3 object];
  v5 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  v6 = [v5 view];
  v7 = [v6 window];
  v8 = [v4 isEqual:v7];

  if (v8)
  {

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture
{
  v2 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  if ((SBSIsSystemApertureAvailable() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v2 associatedAppBundleIdentifier];
    v4 = [v3 isEqualToString:@"com.apple.ActivityProgress.ActivityProgressUI"];
  }

  return v4;
}

- (void)registerWithScene:(id)a3
{
  v4 = a3;
  [(SBUISystemApertureElementSource *)self unregisterFromScene];
  [v4 _registerSceneComponent:self forKey:@"SBUISystemApertureElementSourceKey"];
}

- (void)unregisterFromScene
{
  v2 = [(SBUISystemApertureElementSource *)self _scene];
  [v2 _unregisterSceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBUISystemApertureElementSource *)self _observers];

    if (!v5)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = self->__observers;
      self->__observers = v6;
    }

    v8 = [(SBUISystemApertureElementSource *)self _observers];
    [v8 addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(SBUISystemApertureElementSource *)self _observers];
    [v4 removeObject:v8];
  }

  v5 = [(SBUISystemApertureElementSource *)self _observers];
  v6 = [v5 count];

  if (!v6)
  {
    observers = self->__observers;
    self->__observers = 0;
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(NSHashTable *)self->__observers count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(SBUISystemApertureElementSource *)self _observers];
    v7 = [v6 copy];

    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v5[2](v5, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isBeingRemoved
{
  v2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
  v3 = [v2 SBUISA_isBeingRemoved];

  return v3;
}

- (BOOL)_mustHaveUniqueElementIdentity
{
  if ([(SBUISystemApertureElementSource *)self isBeingRemoved]|| [(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {
    return 0;
  }

  v3 = [(SBUISystemApertureElementSource *)self systemApertureElement];
  v4 = v3 != 0;

  return v4;
}

- (id)_elementIdentifierIfExists
{
  v3 = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v4 = [v3 elementIdentifier];

  if (!v4)
  {
    v5 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      v4 = [v7 elementIdentifier];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_handleClientErrorNonUniqueElementAction
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 _elementIdentifierIfExists];
  v4 = v3;
  v5 = @"Default/Inferred";
  if (v3)
  {
    v5 = v3;
  }

  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "*** Client SPI Misuse: Invalid attempt to post two elements in jindo with the same elementIdentifier, << %{public}@ >>. If the elements are functionally equivalent, never post a duplicate element. If they are functionally distinct, talk with SpringBoard about providing a unique elementIdentifier for your functional use case. ***", &v6, 0xCu);
}

- (void)_sendActionForCommand:(int64_t)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [[SBUISystemApertureSceneAction alloc] initWithCommand:a3];
  v5 = [v4 setWithObject:v6];
  [(SBUISystemApertureElementSource *)self _sendActions:v5];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUISystemApertureElementSource *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureElementSource *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SBUISystemApertureElementSource_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __73__SBUISystemApertureElementSource_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 identifier];
  [v2 appendString:v5 withName:@"sceneIdentifier"];

  v6 = *(a1 + 32);
  v7 = SBUISystemApertureLayoutModeDescription([*(a1 + 40) layoutMode]);
  [v6 appendString:v7 withName:@"layoutMode"];
}

- (void)initWithScene:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[[[scene session] role] isEqualToString:kSBUISystemApertureSceneSessionRole]" object:? file:? lineNumber:? description:?];
}

- (void)_performElementUpdateWithActions:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_performElementUpdateWithActions:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end