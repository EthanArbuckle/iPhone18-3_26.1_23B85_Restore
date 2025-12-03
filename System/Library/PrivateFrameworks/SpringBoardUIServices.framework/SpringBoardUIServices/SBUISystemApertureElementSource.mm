@interface SBUISystemApertureElementSource
+ (void)_addSource:(id)source;
+ (void)_removeSource:(id)source;
- (BOOL)_elementIsInAWindow;
- (BOOL)_elementRequiresConstraintBasedLayout;
- (BOOL)_elementSupportsDynamicResizing;
- (BOOL)_handleSceneResizeAction:(id)action;
- (BOOL)_isPresentationPossibleAndSceneForeground;
- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture;
- (BOOL)_mustHaveUniqueElementIdentity;
- (BOOL)_performElementUpdateWithActions:(id)actions;
- (BOOL)_performElementUpdateWithActionsIfPossible:(id)possible;
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
- (SBUISystemApertureElementSource)initWithScene:(id)scene;
- (UIView)containerView;
- (UIView)layoutGuideRootView;
- (UIWindowScene)windowScene;
- (id)_FBSScene;
- (id)_constraintsForLayoutMode:(int64_t)mode;
- (id)_elementIdentifierIfExists;
- (id)_sceneSettings;
- (id)_settingsDiffActionsForScene:(id)scene;
- (id)containerViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)requestAlertingAssertionWithOptions:(unint64_t)options;
- (id)succinctDescription;
- (id)systemApertureElementViewController;
- (int64_t)layoutMode;
- (void)_activateConstraintsForActiveLayoutModeIfNeeded:(int64_t)needed;
- (void)_activateConstraintsForLayoutMode:(int64_t)mode;
- (void)_animateWithSceneResizeAction:(id)action;
- (void)_ensureAccessoryView:(id)view hasLayoutFrame:(CGRect)frame;
- (void)_ensureAccessoryViewLayoutForTransitionWithAnimator:(id)animator;
- (void)_ensureElementViewControllerIsInAWindow;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_handleAlertingAction:(id)action;
- (void)_handleClientErrorNonUniqueElementAction;
- (void)_handleGestureDependencyChange:(id)change;
- (void)_handleSecureFlipBookAction:(id)action;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_sendActionForCommand:(int64_t)command;
- (void)_setScene:(id)scene;
- (void)_updateElementCanRequestAlertingAssertion;
- (void)_updateTraitCollectionForElementIfNeeded;
- (void)_windowDidAttachToContext:(id)context;
- (void)addObserver:(id)observer;
- (void)addTransitionContext:(id)context;
- (void)elementDidDismissMenu;
- (void)elementWillPresentMenu;
- (void)registerWithScene:(id)scene;
- (void)removeObserver:(id)observer;
- (void)removeTransitionContext:(id)context;
- (void)requestTransitionToMaximumSupportedLayoutMode;
- (void)requestTransitionToPreferredLayoutMode;
- (void)setElementNeedsLayoutUpdateWithOptions:(unint64_t)options coordinatedAnimations:(id)animations;
- (void)setElementNeedsUpdate;
- (void)setLastKnownOtherSettings:(id)settings;
- (void)setPresentationPossible:(BOOL)possible;
- (void)setSystemApertureElementProvider:(id)provider;
- (void)setSystemApertureElementViewControllerProvider:(id)provider;
- (void)unregisterFromScene;
- (void)validateConfiguration;
@end

@implementation SBUISystemApertureElementSource

- (BOOL)_isPresentationPossibleAndSceneForeground
{
  _scene = [(SBUISystemApertureElementSource *)self _scene];
  activationState = [_scene activationState];

  result = [(SBUISystemApertureElementSource *)self isPresentationPossible];
  if (activationState >= 2)
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
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (int64_t)layoutMode
{
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  sBUISA_layoutMode = [_sceneSettings SBUISA_layoutMode];

  return sBUISA_layoutMode;
}

- (id)_sceneSettings
{
  _FBSScene = [(SBUISystemApertureElementSource *)self _FBSScene];
  settings = [_FBSScene settings];

  return settings;
}

- (id)_FBSScene
{
  _scene = [(SBUISystemApertureElementSource *)self _scene];
  _FBSScene = [_scene _FBSScene];

  return _FBSScene;
}

- (id)systemApertureElementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__elementViewController);
  if (!WeakRetained)
  {
    systemApertureElementViewControllerProvider = [(SBUISystemApertureElementSource *)self systemApertureElementViewControllerProvider];
    WeakRetained = [systemApertureElementViewControllerProvider systemApertureElementViewController];

    objc_storeWeak(&self->__elementViewController, WeakRetained);
  }

  return WeakRetained;
}

- (void)_ensureElementViewControllerIsInAWindow
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
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
  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  traitCollection = [systemApertureElement traitCollection];
  containerViewController = [(SBUISystemApertureElementSource *)self containerViewController];
  v5 = [containerViewController overrideTraitCollectionForChildViewController:systemApertureElement];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = traitCollection;
  }

  v8 = v7;

  containerViewController2 = [(SBUISystemApertureElementSource *)self containerViewController];
  traitCollection2 = [containerViewController2 traitCollection];

  v11 = [traitCollection2 sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:{-[SBUISystemApertureElementSource layoutMode](self, "layoutMode") == 4}];
  _isPresentedAsBannerInsteadOfSystemAperture = [(SBUISystemApertureElementSource *)self _isPresentedAsBannerInsteadOfSystemAperture];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (!BSEqualStrings())
  {

    goto LABEL_9;
  }

  if (_isPresentedAsBannerInsteadOfSystemAperture)
  {
LABEL_13:

    goto LABEL_14;
  }

  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != 2)
  {
LABEL_9:
    preferredContentSizeCategory = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    if (v8)
    {
      v15 = MEMORY[0x1E695DF70];
      v16 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
      v17 = [v15 arrayWithObjects:{v8, v16, 0}];

      if (!_isPresentedAsBannerInsteadOfSystemAperture)
      {
        [v17 addObject:preferredContentSizeCategory];
      }

      v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v17];

      containerViewController3 = [(SBUISystemApertureElementSource *)self containerViewController];
      [containerViewController3 setOverrideTraitCollection:v18 forChildViewController:systemApertureElement];

      v8 = v18;
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)containerViewController
{
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  containerViewController = [mutableConfiguration containerViewController];

  return containerViewController;
}

- (UIView)layoutGuideRootView
{
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  viewIfLoaded = [systemApertureElementViewController viewIfLoaded];
  window = [viewIfLoaded window];

  return window;
}

- (BOOL)_elementRequiresConstraintBasedLayout
{
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  view = [systemApertureElementViewController view];

  v5 = (![view translatesAutoresizingMaskIntoConstraints] || objc_msgSend(objc_opt_class(), "requiresConstraintBasedLayout")) && -[SBUISystemApertureElementSource _elementSupportsDynamicResizing](self, "_elementSupportsDynamicResizing");
  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBUISystemApertureElementSource *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)_elementIsInAWindow
{
  containerViewController = [(SBUISystemApertureElementSource *)self containerViewController];
  viewIfLoaded = [containerViewController viewIfLoaded];

  _elementViewController = [(SBUISystemApertureElementSource *)self _elementViewController];
  viewIfLoaded2 = [_elementViewController viewIfLoaded];

  if ([viewIfLoaded2 _isInAWindow])
  {
    v7 = [viewIfLoaded2 isDescendantOfView:viewIfLoaded];
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
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  if ([(SBUISystemApertureElementSource *)self elementCanRequestAlertingAssertion]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [systemApertureElementViewController setCanRequestAlertingAssertion:{-[SBUISystemApertureElementSource elementCanRequestAlertingAssertion](self, "elementCanRequestAlertingAssertion")}];
  }
}

- (void)validateConfiguration
{
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  [mutableConfiguration validateConfiguration];
}

+ (void)_addSource:(id)source
{
  sourceCopy = source;
  v4 = sourceCopy;
  if (sourceCopy)
  {
    v9 = sourceCopy;
    sourceCopy = [SBUISystemApertureElementSourceOpenSources containsObject:sourceCopy];
    v4 = v9;
    if ((sourceCopy & 1) == 0)
    {
      v5 = SBUISystemApertureElementSourceOpenSources;
      if (!SBUISystemApertureElementSourceOpenSources)
      {
        weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v7 = SBUISystemApertureElementSourceOpenSources;
        SBUISystemApertureElementSourceOpenSources = weakObjectsHashTable;

        v5 = SBUISystemApertureElementSourceOpenSources;
      }

      [v5 addObject:v9];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SBUISystemApertureElementSourceDidConnectNotification" object:v9];

      v4 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](sourceCopy, v4);
}

+ (void)_removeSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    [SBUISystemApertureElementSourceOpenSources removeObject:sourceCopy];
  }

  if (![SBUISystemApertureElementSourceOpenSources count])
  {
    v3 = SBUISystemApertureElementSourceOpenSources;
    SBUISystemApertureElementSourceOpenSources = 0;
  }
}

- (void)setLastKnownOtherSettings:(id)settings
{
  settingsCopy = settings;
  if (([(BSSettings *)self->_lastKnownOtherSettings isEqual:?]& 1) == 0)
  {
    v4 = [settingsCopy copy];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__windowDidAttachToContext_ name:*MEMORY[0x1E69DEB08] object:0];
  }

  return v2;
}

- (SBUISystemApertureElementSource)initWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(SBUISystemApertureElementSource *)self init];
  if (v5)
  {
    session = [sceneCopy session];
    role = [session role];
    v8 = [role isEqualToString:@"SBUISystemApertureSceneSessionRole"];

    if ((v8 & 1) == 0)
    {
      [SBUISystemApertureElementSource initWithScene:];
    }

    [(SBUISystemApertureElementSource *)v5 _setScene:sceneCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (NSString)associatedScenePersistenceIdentifier
{
  _FBSScene = [(SBUISystemApertureElementSource *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  sBUISA_associatedScenePersistenceIdentifier = [clientSettings SBUISA_associatedScenePersistenceIdentifier];

  return sBUISA_associatedScenePersistenceIdentifier;
}

- (FBSSceneIdentityToken)identityToken
{
  _FBSScene = [(SBUISystemApertureElementSource *)self _FBSScene];
  identityToken = [_FBSScene identityToken];

  return identityToken;
}

- (void)setSystemApertureElementProvider:(id)provider
{
  providerCopy = provider;
  if (objc_opt_respondsToSelector())
  {
    [(SBUISystemApertureElementSource *)self setSystemApertureElementViewControllerProvider:providerCopy];
  }
}

- (void)setSystemApertureElementViewControllerProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureElementViewControllerProvider);

  objc_storeWeak(&self->_systemApertureElementViewControllerProvider, providerCopy);
  if (WeakRetained != providerCopy)
  {

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (UIView)containerView
{
  containerViewController = [(SBUISystemApertureElementSource *)self containerViewController];
  viewIfLoaded = [containerViewController viewIfLoaded];

  return viewIfLoaded;
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
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  preferredLayoutMode = [systemApertureElementViewController preferredLayoutMode];

  if (preferredLayoutMode == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [(SBUISystemApertureElementSource *)self _sendActionForCommand:v5];
}

- (id)requestAlertingAssertionWithOptions:(unint64_t)options
{
  if (!self->_alertingAssertion)
  {
    optionsCopy = options;
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

      [(SBUISystemApertureElementSource *)self _sendActionForCommand:optionsCopy & 1 | 6];
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

- (void)setPresentationPossible:(BOOL)possible
{
  if (self->_presentationPossible != possible)
  {
    self->_presentationPossible = possible;
    if (possible)
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
      systemApertureOwnedWindow = [(SBUISystemApertureElementSource *)self systemApertureOwnedWindow];
      [systemApertureOwnedWindow setHidden:1];

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

- (void)setElementNeedsLayoutUpdateWithOptions:(unint64_t)options coordinatedAnimations:(id)animations
{
  optionsCopy = options;
  animationsCopy = animations;
  if (![(SBUISystemApertureElementSource *)self _isPresentationPossibleAndSceneForeground]|| ![(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions];
    animationsCopy[2]();
    goto LABEL_6;
  }

  hasPendingCoordinatedAnimations = [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext hasPendingCoordinatedAnimations];
  transitionContext = [(SBUISystemApertureElementSource *)self transitionContext];
  if (transitionContext)
  {
    transitionContext2 = [(SBUISystemApertureElementSource *)self transitionContext];
    fromLayoutMode = [transitionContext2 fromLayoutMode];
    v10 = fromLayoutMode == [(SBUISystemApertureElementSource *)self layoutMode];
  }

  else
  {
    v10 = 1;
  }

  layoutMode = [(SBUISystemApertureElementSource *)self layoutMode];
  [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext addPendingAnimation:animationsCopy];
  if ((optionsCopy & 1) == 0 || ([(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions], layoutMode != 4 || !v10))
  {
    if (!hasPendingCoordinatedAnimations && ![(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext hasTransientLocalResizeAction])
    {
      localSceneResizeParameters = [(SBUISystemApertureElementSource *)self localSceneResizeParameters];
      v14 = [SBUISystemApertureSceneResizeAction transientLocalResizeSceneActionWithAnimationParameters:localSceneResizeParameters];
      [(SBUISystemApertureElementSource *)self _handleSceneResizeAction:v14];
      goto LABEL_17;
    }

LABEL_6:
    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
    goto LABEL_7;
  }

  v12 = MEMORY[0x1E695DFD8];
  localSceneResizeParameters = [[SBUISystemApertureSceneAction alloc] initWithCommand:4];
  v14 = [v12 setWithObject:localSceneResizeParameters];
  [(SBUISystemApertureElementSource *)self _performElementUpdateWithActions:v14];
LABEL_17:

LABEL_7:
}

- (BOOL)_performElementUpdateWithActionsIfPossible:(id)possible
{
  possibleCopy = possible;
  if (![(SBUISystemApertureElementSource *)self isPresentationPossible])
  {
    goto LABEL_7;
  }

  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  if (!systemApertureElement || [(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {

    goto LABEL_7;
  }

  _scene = [(SBUISystemApertureElementSource *)self _scene];

  if (!_scene)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(SBUISystemApertureElementSource *)self _performElementUpdateWithActions:possibleCopy];
LABEL_8:

  return v7;
}

- (BOOL)_performElementUpdateWithActions:(id)actions
{
  v93 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {
    [SBUISystemApertureElementSource _performElementUpdateWithActions:];
  }

  _scene = [(SBUISystemApertureElementSource *)self _scene];

  if (!_scene)
  {
    [SBUISystemApertureElementSource _performElementUpdateWithActions:];
  }

  [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  if (objc_opt_respondsToSelector())
  {
    elementIdentifier = [systemApertureElementViewController elementIdentifier];
    [mutableConfiguration setElementIdentifier:elementIdentifier];
  }

  [mutableConfiguration setContentRole:{objc_msgSend(systemApertureElementViewController, "contentRole")}];
  [mutableConfiguration setPreferredLayoutMode:{objc_msgSend(systemApertureElementViewController, "preferredLayoutMode")}];
  [mutableConfiguration setMaximumLayoutMode:{objc_msgSend(systemApertureElementViewController, "maximumLayoutMode")}];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([systemApertureElementViewController minimumLayoutMode] > 1 || (v9 = objc_msgSend(systemApertureElementViewController, "minimumLayoutMode"), v9 == objc_msgSend(systemApertureElementViewController, "maximumLayoutMode"))) && objc_msgSend(mutableConfiguration, "contentRole") == 2)
  {
    minimumLayoutMode = [systemApertureElementViewController minimumLayoutMode];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      leadingView = [systemApertureElementViewController leadingView];
      v12 = leadingView == 0;
    }

    else
    {
      v12 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      trailingView = [systemApertureElementViewController trailingView];
      v14 = trailingView == 0;
    }

    else
    {
      v14 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      minimalView = [systemApertureElementViewController minimalView];
      v16 = minimalView != 0;
    }

    else
    {
      v16 = 0;
    }

    if (v12 || v14 || [systemApertureElementViewController maximumLayoutMode] < 3)
    {
      if (v16 && [systemApertureElementViewController maximumLayoutMode] == 2)
      {
        minimumLayoutMode = 2;
      }

      else
      {
        minimumLayoutMode = 4 * ([systemApertureElementViewController maximumLayoutMode] == 4);
      }
    }

    else if ([mutableConfiguration contentRole] == 2 && v16)
    {
      minimumLayoutMode = 2;
    }

    else
    {
      minimumLayoutMode = 3;
    }
  }

  [mutableConfiguration setMinimumLayoutMode:minimumLayoutMode];
  if (objc_opt_respondsToSelector())
  {
    preventsInteractiveDismissal = [systemApertureElementViewController preventsInteractiveDismissal];
  }

  else
  {
    preventsInteractiveDismissal = [mutableConfiguration contentRole] == 2;
  }

  [mutableConfiguration setPreventsInteractiveDismissal:preventsInteractiveDismissal];
  if ([mutableConfiguration contentRole] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    preventsAutomaticDismissal = [systemApertureElementViewController preventsAutomaticDismissal];
  }

  else
  {
    preventsAutomaticDismissal = 0;
  }

  [mutableConfiguration setPreventsAutomaticDismissal:preventsAutomaticDismissal];
  [(SBUISystemApertureElementSource *)self _updateElementCanRequestAlertingAssertion];
  if ([mutableConfiguration minimumLayoutMode] != 4)
  {
    if (objc_opt_respondsToSelector())
    {
      leadingView2 = [systemApertureElementViewController leadingView];
      [mutableConfiguration setLeadingView:leadingView2];
    }

    if (objc_opt_respondsToSelector())
    {
      trailingView2 = [systemApertureElementViewController trailingView];
      [mutableConfiguration setTrailingView:trailingView2];
    }

    if (objc_opt_respondsToSelector())
    {
      minimalView2 = [systemApertureElementViewController minimalView];
      [mutableConfiguration setMinimalView:minimalView2];
    }

    if (objc_opt_respondsToSelector())
    {
      detachedMinimalView = [systemApertureElementViewController detachedMinimalView];
      [mutableConfiguration setDetachedMinimalView:detachedMinimalView];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    associatedScenePersistenceIdentifier = [systemApertureElementViewController associatedScenePersistenceIdentifier];
    [mutableConfiguration setAssociatedScenePersistenceIdentifier:associatedScenePersistenceIdentifier];
  }

  else
  {
    [mutableConfiguration setAssociatedScenePersistenceIdentifier:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [mutableConfiguration setPresentationBehaviors:{objc_msgSend(systemApertureElementViewController, "presentationBehaviors")}];
  }

  if (objc_opt_respondsToSelector())
  {
    associatedAppBundleIdentifier = [systemApertureElementViewController associatedAppBundleIdentifier];
    [mutableConfiguration setAssociatedAppBundleIdentifier:associatedAppBundleIdentifier];
LABEL_53:

    goto LABEL_57;
  }

  if (([mutableConfiguration presentationBehaviors] & 0x1000) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    associatedAppBundleIdentifier = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [associatedAppBundleIdentifier bundleIdentifier];
    [mutableConfiguration setAssociatedAppBundleIdentifier:bundleIdentifier];

    goto LABEL_53;
  }

  [mutableConfiguration setAssociatedAppBundleIdentifier:0];
LABEL_57:
  if (objc_opt_respondsToSelector())
  {
    launchURL = [systemApertureElementViewController launchURL];
  }

  else
  {
    launchURL = 0;
  }

  [mutableConfiguration setLaunchURL:launchURL];
  if (objc_opt_respondsToSelector())
  {
    launchAction = [systemApertureElementViewController launchAction];
  }

  else
  {
    launchAction = 0;
  }

  [mutableConfiguration setLaunchAction:launchAction];
  if (objc_opt_respondsToSelector())
  {
    backgroundActivitiesToSuppress = [systemApertureElementViewController backgroundActivitiesToSuppress];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_68;
    }

    backgroundActivitiesToSuppress = soft_STUIBackgroundActivityIdentifiersForStyleOverrides([systemApertureElementViewController statusBarStyleOverridesToSuppress]);
  }

  v28 = backgroundActivitiesToSuppress;
  [mutableConfiguration setBackgroundActivitiesToSuppress:backgroundActivitiesToSuppress];

LABEL_68:
  if (objc_opt_respondsToSelector())
  {
    [mutableConfiguration setPreferredCustomLayout:{objc_msgSend(systemApertureElementViewController, "preferredCustomLayout")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [systemApertureElementViewController preferredCustomAspectRatio];
    [mutableConfiguration setPreferredCustomAspectRatio:?];
  }

  if (objc_opt_respondsToSelector())
  {
    keyColor = [systemApertureElementViewController keyColor];
    [mutableConfiguration setKeyColor:keyColor];
  }

  [mutableConfiguration setHasMenuPresentation:{-[SBUISystemApertureElementSource elementHasMenuPresentation](self, "elementHasMenuPresentation")}];
  [mutableConfiguration setAppliedLayoutMode:{-[SBUISystemApertureElementSource layoutModeAsFarAsClientsAreConcerned](self, "layoutModeAsFarAsClientsAreConcerned")}];
  if (objc_opt_respondsToSelector())
  {
    attachedMinimalViewRequiresZeroPadding = [systemApertureElementViewController attachedMinimalViewRequiresZeroPadding];
  }

  else
  {
    attachedMinimalViewRequiresZeroPadding = 0;
  }

  [mutableConfiguration setAttachedMinimalViewRequiresZeroPadding:attachedMinimalViewRequiresZeroPadding];
  if (objc_opt_respondsToSelector())
  {
    prefersFixedPortraitOrientation = [systemApertureElementViewController prefersFixedPortraitOrientation];
  }

  else
  {
    prefersFixedPortraitOrientation = 0;
  }

  [mutableConfiguration setPrefersFixedPortraitOrientation:prefersFixedPortraitOrientation];
  if (_os_feature_enabled_impl())
  {
    if ([systemApertureElementViewController conformsToProtocol:&unk_1F1E1C0C8])
    {
      v32 = systemApertureElementViewController;
      [mutableConfiguration setIsSecureFlipBookElement:{objc_msgSend(v32, "isSecureFlipBookElement")}];
    }

    if ([systemApertureElementViewController conformsToProtocol:&unk_1F1E255E0])
    {
      v66 = launchAction;
      v67 = launchURL;
      selfCopy = self;
      v33 = systemApertureElementViewController;
      array = [MEMORY[0x1E695DF70] array];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      recordableConfigurations = [v33 recordableConfigurations];
      v35 = [recordableConfigurations countByEnumeratingWithState:&v86 objects:v92 count:16];
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
              objc_enumerationMutation(recordableConfigurations);
            }

            v39 = [[SBUISystemApertureSecureFlipBookClientConfiguration alloc] initWithConfiguration:*(*(&v86 + 1) + 8 * i)];
            [array addObject:v39];
          }

          v36 = [recordableConfigurations countByEnumeratingWithState:&v86 objects:v92 count:16];
        }

        while (v36);
      }

      v40 = [array copy];
      [mutableConfiguration setRecordableConfigurations:v40];

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (objc_opt_respondsToSelector())
      {
        v63 = mutableConfiguration;
        v64 = systemApertureElementViewController;
        v65 = actionsCopy;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        obj = array;
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

              configurationName = [*(*(&v82 + 1) + 8 * j) configurationName];
              array2 = [MEMORY[0x1E695DF70] array];
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
                    if ([v33 isSymmetricalForUILayoutDirectionInConfiguration:configurationName orientation:{objc_msgSend(v50, "integerValue")}])
                    {
                      [array2 addObject:v50];
                    }
                  }

                  v47 = [&unk_1F1DB5C20 countByEnumeratingWithState:&v78 objects:v90 count:16];
                }

                while (v47);
              }

              [dictionary setObject:array2 forKey:configurationName];
            }

            v42 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
          }

          while (v42);
        }

        systemApertureElementViewController = v64;
        actionsCopy = v65;
        mutableConfiguration = v63;
      }

      [mutableConfiguration setSymmetricalConfigurations:dictionary];
      isRegisteredForCapture = [v33 isRegisteredForCapture];
      [mutableConfiguration setIsRegisteredForCapture:isRegisteredForCapture];
      launchAction = v66;
      launchURL = v67;
      if ((isRegisteredForCapture & 1) == 0 && [v33 conformsToProtocol:&unk_1F1E25640])
      {
        v52 = v33;
        preferredConfiguration = [v52 preferredConfiguration];
        [mutableConfiguration setPreferredConfiguration:preferredConfiguration];

        preferredComponentStates = [v52 preferredComponentStates];
        [mutableConfiguration setPreferredComponentStates:preferredComponentStates];
      }

      self = selfCopy;
    }
  }

  [mutableConfiguration refreshViewSizingPreferences];
  [(SBUISystemApertureElementSource *)self validateConfiguration];
  otherSceneClientSettingsRepresentation = [mutableConfiguration otherSceneClientSettingsRepresentation];
  lastKnownOtherSettings = [(SBUISystemApertureElementSource *)self lastKnownOtherSettings];
  v57 = [lastKnownOtherSettings isEqual:otherSceneClientSettingsRepresentation];

  if (!v57 || [actionsCopy count])
  {
    [(SBUISystemApertureElementSource *)self setLastKnownOtherSettings:otherSceneClientSettingsRepresentation];
    v58 = [actionsCopy count];
    _FBSScene = [(SBUISystemApertureElementSource *)self _FBSScene];
    if (v58)
    {
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke;
      v75[3] = &unk_1E789FD10;
      v60 = &v76;
      v76 = otherSceneClientSettingsRepresentation;
      v77 = actionsCopy;
      [_FBSScene updateClientSettingsWithTransitionBlock:v75];

      _FBSScene = v77;
    }

    else
    {
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __68__SBUISystemApertureElementSource__performElementUpdateWithActions___block_invoke_2;
      v73[3] = &unk_1E789FD38;
      v60 = &v74;
      v74 = otherSceneClientSettingsRepresentation;
      [_FBSScene updateClientSettingsWithBlock:v73];
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

- (void)_handleGestureDependencyChange:(id)change
{
  if ([change state] == 3)
  {

    [(SBUISystemApertureElementSource *)self _sendActionForCommand:5];
  }
}

- (CGRect)anchorFrameForLeadingView
{
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [_sceneSettings SBUISA_resolvedLeadingViewFrame];
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
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [_sceneSettings SBUISA_resolvedTrailingViewFrame];
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
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [_sceneSettings SBUISA_resolvedMinimalViewFrame];
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
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  [_sceneSettings SBUISA_resolvedDetachedMinimalViewFrame];
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

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_opt_class();
  v8 = sceneCopy;
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

- (id)_settingsDiffActionsForScene:(id)scene
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v81 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  contextCopy = context;
  settings = [sScene settings];
  v14 = [settings SBUI_systemApertureDescriptionOfDiffFromSettings:settingsCopy];

  if (v14)
  {
    v15 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBUISystemApertureElementSource *)self succinctDescription];
      *buf = 138543618;
      v78 = succinctDescription;
      v79 = 2114;
      v80 = v14;
      _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ received scene settings update with changes: %{public}@", buf, 0x16u);
    }
  }

  layoutMode = [(SBUISystemApertureElementSource *)self layoutMode];
  sBUISA_layoutMode = [settingsCopy SBUISA_layoutMode];
  if (sBUISA_layoutMode != [(SBUISystemApertureElementSource *)self layoutMode])
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext disableSkippingSceneResizeActions];
  }

  [(SBUISystemApertureElementSource *)self setPresentationPossible:(layoutMode - 1) < 0xFFFFFFFFFFFFFFFELL];
  actions = [contextCopy actions];
  v20 = [actions bs_firstObjectPassingTest:&__block_literal_global_289];

  actions2 = [contextCopy actions];
  v22 = [actions2 bs_filter:&__block_literal_global_291];

  actions3 = [contextCopy actions];
  v24 = [actions3 bs_firstObjectPassingTest:&__block_literal_global_293];

  actions4 = [contextCopy actions];
  v26 = [actions4 bs_firstObjectPassingTest:&__block_literal_global_296];

  v68 = v24;
  v69 = v26;
  v67 = v22;
  if (v20 || [v22 count] || v24 || v26)
  {
    actions5 = [contextCopy actions];
    v28 = [actions5 mutableCopy];

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

    [contextCopy setActions:v28];
    v65 = contextCopy;
    v64 = v14;
    v63 = v28;
    if (v20)
    {
      if (![v20 isTransientLocal])
      {
        v66 = [(SBUISystemApertureElementSource *)self _handleSceneResizeAction:v20];
LABEL_25:
        systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
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

              command = [*(*(&v72 + 1) + 8 * i) command];
              if (command > 12)
              {
                if (command == 13)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [systemApertureElement handleCompactOrMinimalViewTapEvent];
                  }
                }

                else if (command == 14)
                {
                  [(SBUISystemApertureElementSource *)self _handleClientErrorNonUniqueElementAction];
                }
              }

              else if (command == 11)
              {
                if (objc_opt_respondsToSelector())
                {
                  [systemApertureElement handleCustomViewLongPressEvent];
                }
              }

              else if (command == 12)
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

        windowScene = [(SBUISystemApertureElementSource *)self windowScene];
        contextCopy = v65;
        if (v20 && ![v20 isTransientLocal])
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      animationParameters = [v20 animationParameters];
      [(SBUISystemApertureElementSource *)self setLocalSceneResizeParameters:animationParameters];
    }

    v66 = 0;
    goto LABEL_25;
  }

  windowScene = [(SBUISystemApertureElementSource *)self windowScene];
  v66 = 0;
LABEL_49:
  if ([(SBUISystemApertureElementSource *)self layoutMode]== 1)
  {
    systemApertureElement2 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    activeLayoutMode = [systemApertureElement2 activeLayoutMode];

    if (!activeLayoutMode)
    {
      systemApertureElement3 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      [systemApertureElement3 loadViewIfNeeded];

      systemApertureElement4 = [(SBUISystemApertureElementSource *)self systemApertureElement];
LABEL_58:
      systemApertureElement5 = systemApertureElement4;
      [systemApertureElement4 setActiveLayoutMode:1];
      goto LABEL_59;
    }
  }

LABEL_51:
  if ([(SBUISystemApertureElementSource *)self layoutMode]== 1)
  {
    systemApertureElement5 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    if ([systemApertureElement5 activeLayoutMode] == 1)
    {
LABEL_59:

      goto LABEL_60;
    }

    if ([windowScene activationState] == 2)
    {

LABEL_57:
      systemApertureElement4 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
      goto LABEL_58;
    }

    activationState = [windowScene activationState];

    if (activationState == -1)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  layoutMode2 = [(SBUISystemApertureElementSource *)self layoutMode];
  if ((layoutMode2 == 2) == ([settingsCopy SBUISA_layoutMode] != 2) && !v66)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __145__SBUISystemApertureElementSource__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_5;
    v70[3] = &unk_1E789DA60;
    v70[4] = self;
    v71 = layoutMode2 == 2;
    [MEMORY[0x1E69DD250] SBUISA_performWithoutAnimationOrRetargeting:v70];
  }

  if (_os_feature_enabled_impl())
  {
    _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
    sBUISA_isSecureFlipBookInRecordingMode = [_sceneSettings SBUISA_isSecureFlipBookInRecordingMode];

    if (sBUISA_isSecureFlipBookInRecordingMode != [settingsCopy SBUISA_isSecureFlipBookInRecordingMode])
    {
      systemApertureElement6 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      v48 = [systemApertureElement6 conformsToProtocol:&unk_1F1E1C0C8];

      if (v48)
      {
        systemApertureElement7 = [(SBUISystemApertureElementSource *)self systemApertureElement];
        [systemApertureElement7 recordingModeChanged:sBUISA_isSecureFlipBookInRecordingMode];
      }
    }

    systemApertureElement8 = [(SBUISystemApertureElementSource *)self systemApertureElement];
    v51 = [systemApertureElement8 conformsToProtocol:&unk_1F1E255E0];

    v24 = v68;
    if (v51)
    {
      systemApertureElement9 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      if (([systemApertureElement9 isRegisteredForCapture] & 1) == 0)
      {
        systemApertureElement10 = [(SBUISystemApertureElementSource *)self systemApertureElement];
        v54 = [systemApertureElement10 conformsToProtocol:&unk_1F1E25640];

        if (v54)
        {
          systemApertureElement11 = [(SBUISystemApertureElementSource *)self systemApertureElement];
          _sceneSettings2 = [(SBUISystemApertureElementSource *)self _sceneSettings];
          sBUISA_secureFlipBookActiveConfiguration = [_sceneSettings2 SBUISA_secureFlipBookActiveConfiguration];
          v58 = v20;
          v59 = sBUISA_secureFlipBookActiveConfiguration;
          if (sBUISA_secureFlipBookActiveConfiguration)
          {
            v60 = sBUISA_secureFlipBookActiveConfiguration;
          }

          else
          {
            v60 = &stru_1F1D7ED48;
          }

          [systemApertureElement11 setActiveConfiguration:v60];

          v20 = v58;
          _sceneSettings3 = [(SBUISystemApertureElementSource *)self _sceneSettings];
          sBUISA_secureFlipBookActiveComponentStates = [_sceneSettings3 SBUISA_secureFlipBookActiveComponentStates];
          [systemApertureElement11 setActiveComponentStates:sBUISA_secureFlipBookActiveComponentStates];
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

- (void)addTransitionContext:(id)context
{
  contextCopy = context;
  transitionContexts = self->_transitionContexts;
  v8 = contextCopy;
  if (!transitionContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_transitionContexts;
    self->_transitionContexts = array;

    contextCopy = v8;
    transitionContexts = self->_transitionContexts;
  }

  [(NSMutableArray *)transitionContexts addObject:contextCopy];
  -[SBUISystemApertureElementSource setLayoutModeAsFarAsClientsAreConcerned:](self, "setLayoutModeAsFarAsClientsAreConcerned:", [v8 fromLayoutMode]);
}

- (void)removeTransitionContext:(id)context
{
  [(NSMutableArray *)self->_transitionContexts removeObject:context];
  [(SBUISystemApertureElementSource *)self setLayoutModeAsFarAsClientsAreConcerned:[(SBUISystemApertureElementSource *)self layoutMode]];
  if (![(NSMutableArray *)self->_transitionContexts count])
  {
    transitionContexts = self->_transitionContexts;
    self->_transitionContexts = 0;
  }
}

- (void)_activateConstraintsForActiveLayoutModeIfNeeded:(int64_t)needed
{
  if ([(SBUISystemApertureElementSource *)self isPresentationPossible]&& [(SBUISystemApertureElementSource *)self _elementIsInAWindow]&& [(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout]&& [(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {

    [(SBUISystemApertureElementSource *)self _activateConstraintsForLayoutMode:needed];
  }

  else
  {
    _activeConstraintsForLayoutMode = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
    [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:0];
    if ([_activeConstraintsForLayoutMode count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:_activeConstraintsForLayoutMode];
    }
  }
}

- (void)_activateConstraintsForLayoutMode:(int64_t)mode
{
  v15 = [(SBUISystemApertureElementSource *)self _constraintsForLayoutMode:mode];
  _activeConstraintsForLayoutMode = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
  v5 = [v15 isEqualToArray:_activeConstraintsForLayoutMode];

  if ((v5 & 1) == 0)
  {
    systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
    [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
    minimalView = [systemApertureElementViewController minimalView];
    if (objc_opt_respondsToSelector())
    {
      detachedMinimalView = [systemApertureElementViewController detachedMinimalView];
    }

    else
    {
      detachedMinimalView = 0;
    }

    leadingView = [systemApertureElementViewController leadingView];
    trailingView = [systemApertureElementViewController trailingView];
    view = [systemApertureElementViewController view];
    if (minimalView && ([minimalView isDescendantOfView:view] & 1) == 0)
    {
      [view addSubview:minimalView];
    }

    if (detachedMinimalView && ([detachedMinimalView isDescendantOfView:view] & 1) == 0)
    {
      [view addSubview:detachedMinimalView];
    }

    if (leadingView && ([leadingView isDescendantOfView:view] & 1) == 0)
    {
      [view addSubview:leadingView];
    }

    if (trailingView && ([trailingView isDescendantOfView:view] & 1) == 0)
    {
      [view addSubview:trailingView];
    }

    maximumLeadingViewWidthConstraint = self->__maximumLeadingViewWidthConstraint;
    [leadingView SBUISA_maximumAccessoryViewWidth];
    [(NSLayoutConstraint *)maximumLeadingViewWidthConstraint setConstant:?];
    maximumTrailingViewWidthConstraint = self->__maximumTrailingViewWidthConstraint;
    [trailingView SBUISA_maximumAccessoryViewWidth];
    [(NSLayoutConstraint *)maximumTrailingViewWidthConstraint setConstant:?];
    _activeConstraintsForLayoutMode2 = [(SBUISystemApertureElementSource *)self _activeConstraintsForLayoutMode];
    [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:0];
    if ([_activeConstraintsForLayoutMode2 count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:_activeConstraintsForLayoutMode2];
    }

    if ([v15 count])
    {
      [(SBUISystemApertureElementSource *)self set_activeConstraintsForLayoutMode:v15];
      [MEMORY[0x1E696ACD8] activateConstraints:v15];
    }
  }
}

- (id)_constraintsForLayoutMode:(int64_t)mode
{
  selfCopy = self;
  v152[12] = *MEMORY[0x1E69E9840];
  _elementViewController = [(SBUISystemApertureElementSource *)self _elementViewController];
  view = [_elementViewController view];

  containerViewController = [(SBUISystemApertureElementSource *)selfCopy containerViewController];
  view2 = [containerViewController view];

  mutableConfiguration = [(SBUISystemApertureElementSource *)selfCopy mutableConfiguration];
  leadingView = [mutableConfiguration leadingView];

  mutableConfiguration2 = [(SBUISystemApertureElementSource *)selfCopy mutableConfiguration];
  minimalView = [mutableConfiguration2 minimalView];

  mutableConfiguration3 = [(SBUISystemApertureElementSource *)selfCopy mutableConfiguration];
  detachedMinimalView = [mutableConfiguration3 detachedMinimalView];

  mutableConfiguration4 = [(SBUISystemApertureElementSource *)selfCopy mutableConfiguration];
  trailingView = [mutableConfiguration4 trailingView];

  sBUISA_systemApertureObstructedAreaLayoutGuide = [view2 SBUISA_systemApertureObstructedAreaLayoutGuide];
  window = [view2 window];
  sBUISA_systemApertureMinimumContentSizeLayoutGuide = [window SBUISA_systemApertureMinimumContentSizeLayoutGuide];

  window2 = [view2 window];
  sBUISA_systemApertureMaximumContentSizeLayoutGuide = [window2 SBUISA_systemApertureMaximumContentSizeLayoutGuide];

  constraintsByLayoutMode = selfCopy->_constraintsByLayoutMode;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v21 = [(NSMutableDictionary *)constraintsByLayoutMode objectForKeyedSubscript:v20];

  if (v21)
  {
    goto LABEL_8;
  }

  v136 = trailingView;
  v137 = selfCopy;
  v138 = detachedMinimalView;
  v139 = leadingView;
  v142 = minimalView;
  v143 = MEMORY[0x1E695DF70];
  centerXAnchor = [view centerXAnchor];
  centerXAnchor2 = [view2 centerXAnchor];
  v123 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v152[0] = v123;
  topAnchor = [view topAnchor];
  v135 = view2;
  topAnchor2 = [view2 topAnchor];
  v117 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v152[1] = v117;
  widthAnchor = [view widthAnchor];
  widthAnchor2 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide widthAnchor];
  v111 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  LODWORD(v22) = 1.0;
  v109 = [v111 SBUISA_withPriority:v22];
  v152[2] = v109;
  heightAnchor = [view heightAnchor];
  heightAnchor2 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide heightAnchor];
  v103 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  LODWORD(v23) = 1.0;
  v101 = [v103 SBUISA_withPriority:v23];
  v152[3] = v101;
  topAnchor3 = [view topAnchor];
  topAnchor4 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide topAnchor];
  v95 = [topAnchor3 constraintLessThanOrEqualToAnchor:topAnchor4];
  v152[4] = v95;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide leadingAnchor];
  v90 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
  v152[5] = v90;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide bottomAnchor];
  v87 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v152[6] = v87;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide trailingAnchor];
  v84 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v152[7] = v84;
  topAnchor5 = [view topAnchor];
  topAnchor6 = [sBUISA_systemApertureMaximumContentSizeLayoutGuide topAnchor];
  v81 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v152[8] = v81;
  leadingAnchor3 = [view leadingAnchor];
  leadingAnchor4 = [sBUISA_systemApertureMaximumContentSizeLayoutGuide leadingAnchor];
  v26 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v152[9] = v26;
  bottomAnchor3 = [view bottomAnchor];
  bottomAnchor4 = [sBUISA_systemApertureMaximumContentSizeLayoutGuide bottomAnchor];
  [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v29 = v140 = mode;
  v152[10] = v29;
  trailingAnchor3 = [view trailingAnchor];
  trailingAnchor4 = [sBUISA_systemApertureMaximumContentSizeLayoutGuide trailingAnchor];
  [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v32 = v141 = view;
  v152[11] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:12];
  v144 = [v143 arrayWithArray:v33];

  v34 = v140;
  if ((v140 + 1) >= 3)
  {
    if (v140 == 2)
    {
      view = v141;
      minimalView = v142;
      if (v142)
      {
        centerXAnchor3 = [v142 centerXAnchor];
        centerXAnchor4 = [v141 centerXAnchor];
        v125 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v150[0] = v125;
        centerYAnchor = [v142 centerYAnchor];
        centerYAnchor2 = [v141 centerYAnchor];
        v67 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v150[1] = v67;
        leadingAnchor5 = [v142 leadingAnchor];
        leadingAnchor6 = [v141 leadingAnchor];
        v70 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
        v150[2] = v70;
        topAnchor7 = [v142 topAnchor];
        topAnchor8 = [v141 topAnchor];
        v73 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8];
        v150[3] = v73;
        v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
        [v144 addObjectsFromArray:v74];

        v34 = v140;
        view = v141;

        minimalView = v142;
      }

      detachedMinimalView = v138;
      leadingView = v139;
      if (!v138 || v138 == minimalView)
      {
        goto LABEL_5;
      }

      centerXAnchor5 = [v138 centerXAnchor];
      centerXAnchor6 = [view centerXAnchor];
      v130 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v149[0] = v130;
      centerYAnchor3 = [v138 centerYAnchor];
      centerYAnchor4 = [view centerYAnchor];
      v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v149[1] = v40;
      leadingAnchor7 = [v138 leadingAnchor];
      leadingAnchor8 = [view leadingAnchor];
      v76 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
      v149[2] = v76;
      topAnchor9 = [v138 topAnchor];
      topAnchor10 = [view topAnchor];
      v79 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10];
      v149[3] = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:4];
      [v144 addObjectsFromArray:v80];

      v34 = v140;
      view = v141;

      v37 = v130;
      widthAnchor6 = centerXAnchor6;

      widthAnchor5 = centerXAnchor5;
    }

    else
    {
      view = v141;
      minimalView = v142;
      detachedMinimalView = v138;
      leadingView = v139;
      if (v140 != 3 || !v139)
      {
        goto LABEL_5;
      }

      widthAnchor3 = [v139 widthAnchor];
      [v139 SBUISA_maximumAccessoryViewWidth];
      v53 = [widthAnchor3 constraintLessThanOrEqualToConstant:?];
      maximumLeadingViewWidthConstraint = v137->__maximumLeadingViewWidthConstraint;
      v137->__maximumLeadingViewWidthConstraint = v53;

      widthAnchor4 = [v136 widthAnchor];
      [v136 SBUISA_maximumAccessoryViewWidth];
      v56 = [widthAnchor4 constraintLessThanOrEqualToConstant:?];
      maximumTrailingViewWidthConstraint = v137->__maximumTrailingViewWidthConstraint;
      v137->__maximumTrailingViewWidthConstraint = v56;

      leadingAnchor9 = [v139 leadingAnchor];
      leadingAnchor10 = [v141 leadingAnchor];
      v128 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:leadingAnchor10];
      v148[0] = v128;
      centerYAnchor3 = [v139 topAnchor];
      centerYAnchor4 = [v141 topAnchor];
      v40 = [centerYAnchor3 constraintGreaterThanOrEqualToAnchor:centerYAnchor4];
      v148[1] = v40;
      leadingAnchor7 = [v139 centerYAnchor];
      centerYAnchor5 = [v141 centerYAnchor];
      v120 = [leadingAnchor7 constraintEqualToAnchor:centerYAnchor5];
      v148[2] = v120;
      trailingAnchor5 = [v139 trailingAnchor];
      leadingAnchor11 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
      v114 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor11];
      v58 = v137->__maximumLeadingViewWidthConstraint;
      v148[3] = v114;
      v148[4] = v58;
      leadingAnchor12 = [v136 leadingAnchor];
      trailingAnchor6 = [sBUISA_systemApertureObstructedAreaLayoutGuide trailingAnchor];
      v108 = [leadingAnchor12 constraintGreaterThanOrEqualToAnchor:trailingAnchor6];
      v148[5] = v108;
      topAnchor11 = [v136 topAnchor];
      topAnchor12 = [v141 topAnchor];
      v102 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:topAnchor12];
      v148[6] = v102;
      centerYAnchor6 = [v136 centerYAnchor];
      centerYAnchor7 = [v141 centerYAnchor];
      v96 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
      v148[7] = v96;
      trailingAnchor7 = [v136 trailingAnchor];
      trailingAnchor8 = [v141 trailingAnchor];
      v59 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
      v60 = v137->__maximumTrailingViewWidthConstraint;
      v148[8] = v59;
      v148[9] = v60;
      heightAnchor3 = [v141 heightAnchor];
      heightAnchor4 = [sBUISA_systemApertureObstructedAreaLayoutGuide heightAnchor];
      v63 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
      v148[10] = v63;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:11];
      [v144 addObjectsFromArray:v64];

      widthAnchor6 = leadingAnchor10;
      view = v141;

      v37 = v128;
      widthAnchor5 = leadingAnchor9;

      v34 = v140;
    }
  }

  else
  {
    view = v141;
    widthAnchor5 = [v141 widthAnchor];
    widthAnchor6 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide widthAnchor];
    v37 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v151[0] = v37;
    centerYAnchor3 = [v141 heightAnchor];
    centerYAnchor4 = [sBUISA_systemApertureMinimumContentSizeLayoutGuide heightAnchor];
    v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v151[1] = v40;
    leadingAnchor7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:2];
    [v144 addObjectsFromArray:leadingAnchor7];
  }

  detachedMinimalView = v138;
  leadingView = v139;
  minimalView = v142;
LABEL_5:
  v21 = [v144 copy];
  selfCopy = v137;
  v42 = v137->_constraintsByLayoutMode;
  if (!v42)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v44 = v137->_constraintsByLayoutMode;
    v137->_constraintsByLayoutMode = dictionary;

    v42 = v137->_constraintsByLayoutMode;
  }

  v45 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
  [(NSMutableDictionary *)v42 setObject:v21 forKeyedSubscript:v45];

  view2 = v135;
  trailingView = v136;
LABEL_8:
  windowScene = [(SBUISystemApertureElementSource *)selfCopy windowScene];
  v47 = windowScene;
  if (windowScene)
  {
    v48 = v21;
    v49 = sBUISA_systemApertureMinimumContentSizeLayoutGuide;
    if ([windowScene activationState])
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
    v49 = sBUISA_systemApertureMinimumContentSizeLayoutGuide;
  }

  v50 = v48;

  return v48;
}

- (BOOL)_handleSceneResizeAction:(id)action
{
  v57 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext addSceneResizeAction:actionCopy];
  if ([(SBUISystemApertureElementSource *)self isPresentationPossible])
  {
    [(SBUISystemApertureElementSource *)self _ensureElementViewControllerIsInAWindow];
  }

  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  view = [systemApertureElementViewController view];

  [view frame];
  UISizeRoundToScale();
  v9 = v8;
  v11 = v10;
  [_sceneSettings SBUISA_containerViewFrame];
  UISizeRoundToScale();
  v14 = v11 == v13 && v9 == v12;
  animationParameters = [actionCopy animationParameters];
  localSceneResizeParameters = [(SBUISystemApertureElementSource *)self localSceneResizeParameters];
  v17 = [SBUISystemApertureAnimationParameters areParams:animationParameters equivalentTo:localSceneResizeParameters];

  if (([actionCopy isTransientLocal] & 1) != 0 || !-[_SBUISystemApertureElementSourceAnimationContext canSkipRemoteSceneResizeActions](self->_animationContext, "canSkipRemoteSceneResizeActions"))
  {
    v31 = 1;
    goto LABEL_27;
  }

  v18 = v14 && v17;
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  minimalView = [mutableConfiguration minimalView];
  detachedMinimalView = [mutableConfiguration detachedMinimalView];
  leadingView = [mutableConfiguration leadingView];
  trailingView = [mutableConfiguration trailingView];
  if (v18 == 1)
  {
    layoutMode = [(SBUISystemApertureElementSource *)self layoutMode];
    if (layoutMode == 3)
    {
      [leadingView frame];
      v39 = v38;
      v41 = v40;
      [_sceneSettings SBUISA_resolvedLeadingViewFrame];
      v31 = v41 != v43 || v39 != v42;
      [trailingView frame];
      v33 = v44;
      v35 = v45;
      [_sceneSettings SBUISA_resolvedTrailingViewFrame];
      goto LABEL_22;
    }

    if (layoutMode == 2)
    {
      [minimalView frame];
      v26 = v25;
      v28 = v27;
      [_sceneSettings SBUISA_resolvedMinimalViewFrame];
      v31 = v28 != v30 || v26 != v29;
      if (detachedMinimalView)
      {
        [detachedMinimalView frame];
        v33 = v32;
        v35 = v34;
        [_sceneSettings SBUISA_resolvedDetachedMinimalViewFrame];
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
  if (([actionCopy isTransientLocal] & 1) == 0)
  {
    v47 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBUISystemApertureElementSource *)self succinctDescription];
      canSkipRemoteSceneResizeActions = [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext canSkipRemoteSceneResizeActions];
      v51 = 138412802;
      v52 = succinctDescription;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = canSkipRemoteSceneResizeActions;
      _os_log_impl(&dword_1A9A79000, v47, OS_LOG_TYPE_DEFAULT, "Handling remote resize action for %@ will animate %{BOOL}u animationContext allows skipping: %{BOOL}u", &v51, 0x18u);
    }
  }

  if (v31)
  {
    [(SBUISystemApertureElementSource *)self _animateWithSceneResizeAction:actionCopy];
  }

  else
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self->_animationContext removeSceneResizeAction:actionCopy];
  }

  return v31;
}

- (void)_animateWithSceneResizeAction:(id)action
{
  v78 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  _elementSupportsDynamicResizing = [(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing];
  _elementRequiresConstraintBasedLayout = [(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout];
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  v45 = _elementSupportsDynamicResizing;
  [mutableConfiguration setShouldDeferViewSizingPreferenceUpdates:_elementSupportsDynamicResizing];

  layoutGuideRootView = [(SBUISystemApertureElementSource *)self layoutGuideRootView];
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  view = [systemApertureElementViewController view];

  if ([actionCopy isTransientLocal])
  {
    v11 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBUISystemApertureElementSource *)self succinctDescription];
      *buf = 138412290;
      v77 = succinctDescription;
      _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Performing transient local action for %@", buf, 0xCu);
    }
  }

  v13 = [SBUISystemApertureElementSourceAnimator alloc];
  animationParameters = [actionCopy animationParameters];
  [view window];
  v15 = v40 = view;
  v16 = [(SBUISystemApertureElementSourceAnimator *)v13 initWithSettings:animationParameters window:v15];

  v43 = objc_alloc_init(MEMORY[0x1E69DD808]);
  [v43 _setAnimator:v16];
  animationParameters2 = [actionCopy animationParameters];
  [v43 _setIsAnimated:{objc_msgSend(animationParameters2, "isAnimated")}];

  _transitionCoordinator = [v43 _transitionCoordinator];
  v19 = objc_alloc_init(SBUISystemApertureElementTransitionContext);
  systemApertureElementViewController2 = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  [(SBUISystemApertureElementTransitionContext *)v19 setTransitionCoordinator:_transitionCoordinator];
  [(SBUISystemApertureElementTransitionContext *)v19 setFromLayoutMode:[(SBUISystemApertureElementSource *)self layoutModeAsFarAsClientsAreConcerned]];
  -[SBUISystemApertureElementTransitionContext setUserInitiated:](v19, "setUserInitiated:", [actionCopy isUserInitiated]);
  [(SBUISystemApertureElementSource *)self addTransitionContext:v19];
  [_sceneSettings SBUISA_containerViewFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sBUISA_layoutMode = [_sceneSettings SBUISA_layoutMode];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke;
  v64[3] = &unk_1E789FD80;
  v70 = sBUISA_layoutMode;
  v30 = systemApertureElementViewController2;
  v65 = v30;
  selfCopy = self;
  v67 = _sceneSettings;
  v31 = layoutGuideRootView;
  v75 = v45;
  v68 = v31;
  v69 = _transitionCoordinator;
  v71 = v22;
  v72 = v24;
  v73 = v26;
  v74 = v28;
  v42 = _transitionCoordinator;
  v41 = _sceneSettings;
  [(SBUISystemApertureElementSourceAnimator *)v16 addPreflightAction:v64];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __65__SBUISystemApertureElementSource__animateWithSceneResizeAction___block_invoke_2;
  v54[3] = &unk_1E789FDA8;
  v63 = _elementRequiresConstraintBasedLayout;
  v54[4] = self;
  v58 = v22;
  v59 = v24;
  v60 = v26;
  v61 = v28;
  v32 = v30;
  v55 = v32;
  v56 = v40;
  v62 = sBUISA_layoutMode;
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
  v35 = actionCopy;
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

- (void)_ensureAccessoryViewLayoutForTransitionWithAnimator:(id)animator
{
  animatorCopy = animator;
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  view = [systemApertureElement view];

  minimalView = [mutableConfiguration minimalView];
  detachedMinimalView = [mutableConfiguration detachedMinimalView];
  leadingView = [mutableConfiguration leadingView];
  trailingView = [mutableConfiguration trailingView];
  if ([view effectiveUserInterfaceLayoutDirection])
  {
    [mutableConfiguration leadingView];
  }

  else
  {
    [mutableConfiguration trailingView];
  }
  v10 = ;
  if ([(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing]&& ![(SBUISystemApertureElementSource *)self _elementRequiresConstraintBasedLayout])
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke;
    v58[3] = &unk_1E789FDF8;
    v58[4] = self;
    v59 = view;
    v60 = v10;
    v29 = trailingView;
    v11 = MEMORY[0x1AC58E960](v58);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_2;
    v52[3] = &unk_1E789FE20;
    v57 = v11;
    v12 = minimalView;
    v53 = v12;
    v13 = detachedMinimalView;
    v54 = v13;
    v27 = v10;
    v14 = leadingView;
    v55 = v14;
    v28 = view;
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
    view = v28;
    v50 = v19;
    v20 = v17;
    trailingView = v29;
    v21 = v20;
    v51 = v20;
    [animatorCopy addPreAlongsideAnimation:v46];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_5;
    v44[3] = &unk_1E789E340;
    v44[4] = self;
    v45 = v21;
    v22 = v21;
    [animatorCopy addPostAlongsideAnimation:v44];
  }

  if (![(SBUISystemApertureElementSource *)self _elementSupportsDynamicResizing])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_6;
    v39[3] = &unk_1E789FE98;
    v39[4] = self;
    v40 = minimalView;
    v41 = detachedMinimalView;
    v42 = leadingView;
    v43 = trailingView;
    v23 = MEMORY[0x1AC58E960](v39);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_7;
    v37[3] = &unk_1E789E340;
    v24 = v23;
    v37[4] = self;
    v38 = v24;
    [animatorCopy addPreAlongsideAnimation:v37];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_8;
    v35[3] = &unk_1E789E340;
    v35[4] = self;
    v36 = v24;
    v25 = v24;
    [animatorCopy addPostAlongsideAnimation:v35];
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __87__SBUISystemApertureElementSource__ensureAccessoryViewLayoutForTransitionWithAnimator___block_invoke_9;
  v32[3] = &unk_1E789DD98;
  v33 = detachedMinimalView;
  selfCopy = self;
  v26 = detachedMinimalView;
  [animatorCopy addPreAlongsideAnimation:v32];
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

- (void)_handleAlertingAction:(id)action
{
  actionCopy = action;
  v6 = [(NSMutableArray *)self->_alertingAssertionsAwaitingActions count];
  alertingAssertionsAwaitingActions = self->_alertingAssertionsAwaitingActions;
  if (v6 < 2)
  {
    [(NSMutableArray *)alertingAssertionsAwaitingActions removeAllObjects];
    if ([(SBUISystemApertureAssertion *)self->_alertingAssertion isValid])
    {
      alertingAction = [(_SBUISystemApertureAlertingAssertion *)self->_alertingAssertion alertingAction];

      if (alertingAction)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBUISystemApertureElementSource.m" lineNumber:1362 description:{@"Alerting assertion already has an alerting action: %@", self->_alertingAssertion}];
      }

      [(_SBUISystemApertureAlertingAssertion *)self->_alertingAssertion setAlertingAction:actionCopy];
    }

    else
    {
      [actionCopy invalidateWithReason:@"no alerting assertion"];
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

- (void)_handleSecureFlipBookAction:(id)action
{
  v48 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  if ([systemApertureElement conformsToProtocol:&unk_1F1E255E0])
  {
    v31 = systemApertureElement;
    v6 = systemApertureElement;
    toState = [actionCopy toState];
    configurationName = [actionCopy configurationName];
    flipBookName = [actionCopy flipBookName];
    layoutMode = [actionCopy layoutMode];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v6;
    recordableConfigurations = [v6 recordableConfigurations];
    v10 = [recordableConfigurations countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(recordableConfigurations);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          configurationName2 = [v14 configurationName];
          v16 = [configurationName2 isEqualToString:configurationName];

          if (v16)
          {
            layoutModesToComponentFlipBookDescriptions = [v14 layoutModesToComponentFlipBookDescriptions];
            v18 = [layoutModesToComponentFlipBookDescriptions objectForKey:layoutMode];

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
              v29 = actionCopy;
LABEL_13:
              v23 = 0;
              while (1)
              {
                if (*v39 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v38 + 1) + 8 * v23);
                flipBookName2 = [v24 flipBookName];
                v26 = [flipBookName2 isEqualToString:flipBookName];

                if (v26)
                {
                  break;
                }

                if (v21 == ++v23)
                {
                  v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  actionCopy = v29;
                  if (v21)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_25;
                }
              }

              actionCopy = v29;
              type = [v29 type];
              if (type == 1)
              {
                v34[0] = MEMORY[0x1E69E9820];
                v34[1] = 3221225472;
                v34[2] = __63__SBUISystemApertureElementSource__handleSecureFlipBookAction___block_invoke_2;
                v34[3] = &unk_1E789DA38;
                v35 = v29;
                [v24 transitionToState:toState completion:v34];
                v28 = v35;
              }

              else
              {
                if (type)
                {
                  goto LABEL_25;
                }

                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __63__SBUISystemApertureElementSource__handleSecureFlipBookAction___block_invoke;
                v36[3] = &unk_1E789DD98;
                v36[4] = v24;
                v37 = v29;
                [v24 resetToState:toState completion:v36];
                v28 = v37;
              }
            }

LABEL_25:

            goto LABEL_26;
          }
        }

        v11 = [recordableConfigurations countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    systemApertureElement = v31;
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

- (void)_ensureAccessoryView:(id)view hasLayoutFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  view = [systemApertureElementViewController view];

  if (([viewCopy isDescendantOfView:view] & 1) == 0)
  {
    [view addSubview:viewCopy];
  }

  [viewCopy setAlpha:1.0];
  [viewCopy setHidden:0];
  if ([viewCopy translatesAutoresizingMaskIntoConstraints])
  {
    windowScene = [(SBUISystemApertureElementSource *)self windowScene];
    coordinateSpace = [windowScene coordinateSpace];
    superview = [viewCopy superview];
    [coordinateSpace convertRect:superview toCoordinateSpace:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [viewCopy setAutoresizingMask:0];
    v23 = *(MEMORY[0x1E695EFD0] + 16);
    v24[0] = *MEMORY[0x1E695EFD0];
    v24[1] = v23;
    v24[2] = *(MEMORY[0x1E695EFD0] + 32);
    [viewCopy setTransform:v24];
    [viewCopy setFrame:{v16, v18, v20, v22}];
    [viewCopy setNeedsLayout];
  }
}

- (void)_windowDidAttachToContext:(id)context
{
  object = [context object];
  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  view = [systemApertureElement view];
  window = [view window];
  v8 = [object isEqual:window];

  if (v8)
  {

    [(SBUISystemApertureElementSource *)self setElementNeedsUpdate];
  }
}

- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture
{
  systemApertureElementViewController = [(SBUISystemApertureElementSource *)self systemApertureElementViewController];
  if ((SBSIsSystemApertureAvailable() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = 0;
  }

  else
  {
    associatedAppBundleIdentifier = [systemApertureElementViewController associatedAppBundleIdentifier];
    v4 = [associatedAppBundleIdentifier isEqualToString:@"com.apple.ActivityProgress.ActivityProgressUI"];
  }

  return v4;
}

- (void)registerWithScene:(id)scene
{
  sceneCopy = scene;
  [(SBUISystemApertureElementSource *)self unregisterFromScene];
  [sceneCopy _registerSceneComponent:self forKey:@"SBUISystemApertureElementSourceKey"];
}

- (void)unregisterFromScene
{
  _scene = [(SBUISystemApertureElementSource *)self _scene];
  [_scene _unregisterSceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    _observers = [(SBUISystemApertureElementSource *)self _observers];

    if (!_observers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = self->__observers;
      self->__observers = weakObjectsHashTable;
    }

    _observers2 = [(SBUISystemApertureElementSource *)self _observers];
    [_observers2 addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    _observers = [(SBUISystemApertureElementSource *)self _observers];
    [_observers removeObject:observerCopy];
  }

  _observers2 = [(SBUISystemApertureElementSource *)self _observers];
  v6 = [_observers2 count];

  if (!v6)
  {
    observers = self->__observers;
    self->__observers = 0;
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(NSHashTable *)self->__observers count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _observers = [(SBUISystemApertureElementSource *)self _observers];
    v7 = [_observers copy];

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
            blockCopy[2](blockCopy, v12);
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
  _sceneSettings = [(SBUISystemApertureElementSource *)self _sceneSettings];
  sBUISA_isBeingRemoved = [_sceneSettings SBUISA_isBeingRemoved];

  return sBUISA_isBeingRemoved;
}

- (BOOL)_mustHaveUniqueElementIdentity
{
  if ([(SBUISystemApertureElementSource *)self isBeingRemoved]|| [(SBUISystemApertureElementSource *)self layoutMode]== -1)
  {
    return 0;
  }

  systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
  v4 = systemApertureElement != 0;

  return v4;
}

- (id)_elementIdentifierIfExists
{
  mutableConfiguration = [(SBUISystemApertureElementSource *)self mutableConfiguration];
  elementIdentifier = [mutableConfiguration elementIdentifier];

  if (!elementIdentifier)
  {
    systemApertureElement = [(SBUISystemApertureElementSource *)self systemApertureElement];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      systemApertureElement2 = [(SBUISystemApertureElementSource *)self systemApertureElement];
      elementIdentifier = [systemApertureElement2 elementIdentifier];
    }

    else
    {
      elementIdentifier = 0;
    }
  }

  return elementIdentifier;
}

- (void)_handleClientErrorNonUniqueElementAction
{
  v8 = *MEMORY[0x1E69E9840];
  _elementIdentifierIfExists = [self _elementIdentifierIfExists];
  v4 = _elementIdentifierIfExists;
  v5 = @"Default/Inferred";
  if (_elementIdentifierIfExists)
  {
    v5 = _elementIdentifierIfExists;
  }

  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "*** Client SPI Misuse: Invalid attempt to post two elements in jindo with the same elementIdentifier, << %{public}@ >>. If the elements are functionally equivalent, never post a duplicate element. If they are functionally distinct, talk with SpringBoard about providing a unique elementIdentifier for your functional use case. ***", &v6, 0xCu);
}

- (void)_sendActionForCommand:(int64_t)command
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [[SBUISystemApertureSceneAction alloc] initWithCommand:command];
  v5 = [v4 setWithObject:v6];
  [(SBUISystemApertureElementSource *)self _sendActions:v5];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBUISystemApertureElementSource *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBUISystemApertureElementSource *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SBUISystemApertureElementSource_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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