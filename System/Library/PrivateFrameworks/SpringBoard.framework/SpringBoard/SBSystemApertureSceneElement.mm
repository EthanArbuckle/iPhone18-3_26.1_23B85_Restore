@interface SBSystemApertureSceneElement
+ (FBSceneWorkspace)sceneWorkspace;
+ (NSSet)scenesForBacklightSession;
+ (id)activePlaceholderElementPassingTest:(id)test;
+ (id)defaultAnimationParameters;
+ (void)addActiveElement:(id)element;
+ (void)addElementReadyForPresentation:(id)presentation;
+ (void)hostedScenesDidChange;
+ (void)removeActiveElement:(id)element;
+ (void)removeElementReadyForPresentation:(id)presentation;
- (BOOL)_activateCorrespondingAppSceneIfPossible:(int64_t)possible;
- (BOOL)_calculateRequiresSuppressionFromSystemAperture;
- (BOOL)_handleAction:(id)action;
- (BOOL)_handleLaunchAction;
- (BOOL)_hasPresentationBehavior:(unint64_t)behavior;
- (BOOL)_isAssociatedWithBundleIdentifier:(id)identifier;
- (BOOL)_isAssociatedWithSceneWithPersistenceIdentifier:(id)identifier;
- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture;
- (BOOL)_isValidAlertingSource:(int64_t)source;
- (BOOL)_ownsScene;
- (BOOL)_requiresForegroundScene;
- (BOOL)_sceneDisplayConfigurationValid;
- (BOOL)_shouldHandleLaunchAction;
- (BOOL)_shouldSuppressBackgroundActivities;
- (BOOL)_supportsMenuPresentations;
- (BOOL)_tryMovingToPlaceholderElementWithClientSettingsDiff:(id)diff forScene:(id)scene oldClientSettings:(id)settings transitionContext:(id)context;
- (BOOL)_updateRequiresSuppressionFromSystemAperture;
- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)identifier ofBundleId:(id)id;
- (BOOL)handleElementViewEvent:(int64_t)event;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasActivityBehavior;
- (BOOL)hasAlertBehavior;
- (BOOL)isAlerting;
- (BOOL)isBiometricKit;
- (BOOL)isDeactivating;
- (BOOL)isFaceIDLocalAuth;
- (BOOL)isFixedInOrientation;
- (BOOL)isInteractiveDismissalEnabled;
- (BOOL)isMinimalPresentationPossible;
- (BOOL)isPassbookWallet;
- (BOOL)isRegisteredForCapture;
- (BOOL)isRequestingMenuPresentation;
- (BOOL)isSecureFlipBookElement;
- (BOOL)isSymmetricalForUILayoutDirectionInConfiguration:(id)configuration orientation:(int64_t)orientation;
- (BOOL)overridesConcentricPaddingForView:(id)view inLayoutMode:(int64_t)mode;
- (BOOL)preventsInteractiveGestures;
- (BOOL)shouldIgnoreSystemChromeSuppressionWhilePresentingAppWithBundleId:(id)id;
- (BOOL)shouldSuppressElementWhileOnContinuityDisplay;
- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)id;
- (BOOL)shouldSuppressElementWhilePresentingSceneWithIdentifier:(id)identifier;
- (BOOL)shouldSuppressElementWhileProximityReaderPresent;
- (CGRect)_frameForSceneViewInContainerView:(id)view;
- (CGRect)_frameInSceneContainerForView:(id)view;
- (CGRect)_obstructedAreaFrame;
- (CGSize)_sizeForSceneView;
- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (NSMutableDictionary)userInfo;
- (NSSet)representedBackgroundActivityIdentifiers;
- (NSString)clientIdentifier;
- (NSString)elementIdentifier;
- (NSString)preferredConfiguration;
- (SAActivityHosting)activityHost;
- (SAAlertHosting)alertHost;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBSecureFlipBookElementHost)secureElementHost;
- (SBSystemApertureBackgroundActivitiesSuppressing)statusBarBackgroundActivitiesSuppresser;
- (SBSystemApertureGestureHandling)gestureHandler;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (SBSystemApertureSceneElement)initWithScene:(id)scene placeholderContentProvider:(id)provider statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler;
- (SBSystemApertureSceneElement)initWithScene:(id)scene statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler;
- (SBSystemApertureSceneElement)initWithSceneSpecification:(id)specification sceneClientIdentity:(id)identity statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler;
- (SBSystemApertureSceneElementAccessoryView)leadingView;
- (SBSystemApertureSceneElementAccessoryView)minimalView;
- (SBSystemApertureSceneElementAccessoryView)trailingView;
- (SBSystemApertureSceneElementConfiguration)configuration;
- (SBSystemApertureSceneElementLaunchActionHandling)launchActionHandler;
- (SBSystemApertureSceneElementPlaceholderContentProviding)placeholderContentProvider;
- (UIColor)keyColor;
- (double)concentricPaddingOverrideForView:(id)view inLayoutMode:(int64_t)mode;
- (id)_bundleIdForLaunchTargetWithScenePersistenceIdentifier:(id)identifier;
- (id)_existingAlertingAssertion;
- (id)_inferredElementIdentifier;
- (id)_proposeTransitionParametersForTransitionToFrameInSceneView:(CGRect)view excludingParametersAssociatedWithReasons:(unint64_t)reasons usingCurrentAnimationParameters:(BOOL)parameters;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)requestAlertingAssertionImplicitlyDismissable:(BOOL)dismissable;
- (id)sceneClientSettings;
- (id)sceneSettings;
- (id)succinctDescription;
- (int64_t)_clientLayoutModeForLayoutMode:(int64_t)mode;
- (int64_t)_layoutModeForClientLayoutMode:(int64_t)mode;
- (int64_t)customLayoutRequestingSpecialFlowerBoundsResizingAnimation;
- (int64_t)maximumSupportedLayoutMode;
- (int64_t)minimumSupportedLayoutMode;
- (int64_t)preferredLayoutMode;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (unint64_t)_effectivePresentationBehaviors;
- (unint64_t)_updateReasonsForTransitionWithProposedParameters:(id)parameters excludingReasons:(unint64_t)reasons;
- (void)_acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded;
- (void)_activateSceneWithInitialOtherSettings:(id)settings clientSettings:(id)clientSettings initialLayoutMode:(int64_t)mode;
- (void)_applyTransitionParameters:(id)parameters;
- (void)_commonInitWithScene:(id)scene placeholderContentProvider:(id)provider statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler;
- (void)_finishDeactivationIfNeeded;
- (void)_handleAlertingAssertionRequestForReason:(id)reason implicitlyDismissable:(BOOL)dismissable;
- (void)_layoutHostMayNotPerformLayoutUpdateWithReasonsToExclude:(unint64_t)exclude;
- (void)_layoutSceneViewInContainerView:(id)view;
- (void)_scene:(id)_scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)_setupSceneViewInContainerView:(id)view;
- (void)_updateActiveElementsAndAssociatedApplication;
- (void)_updateAlertAssertionIfNecessary;
- (void)_updateMutableSceneSettings:(id)settings withParameters:(id)parameters;
- (void)_updatePortalViews;
- (void)_updateReadyForPresentationIfNeeded;
- (void)_updateRecordingMode;
- (void)_updateRequiredPriorityAssertion;
- (void)_updateScene:(id)scene activatingIfNeeded:(BOOL)needed settingsWithTransitionBlock:(id)block;
- (void)_updateSceneBackgroundStateIfNeeded;
- (void)_updateSceneWithTransitionParameters:(id)parameters;
- (void)activateWithInitialOtherSceneSettings:(id)settings clientSettings:(id)clientSettings transitionRequestHandler:(id)handler;
- (void)activateWithPostActivationPlaceholderTest:(id)test foundPlaceholderHandler:(id)handler;
- (void)addElementLayoutSpecifierObserver:(id)observer;
- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)deactivateWhenRemovedWithHandler:(id)handler;
- (void)dealloc;
- (void)element:(id)element visibilityDidChange:(BOOL)change;
- (void)element:(id)element visibilityWillChange:(BOOL)change;
- (void)invalidate;
- (void)placeholderWrapperViewDidChangeContentView:(id)view;
- (void)removeElementLayoutSpecifierObserver:(id)observer;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setActivated:(BOOL)activated;
- (void)setActiveComponentStates:(id)states;
- (void)setActiveConfiguration:(id)configuration;
- (void)setActivityHost:(id)host;
- (void)setAffiliatedWithSessionMonitor:(BOOL)monitor;
- (void)setAlertHost:(id)host;
- (void)setBacklightIsOrWillBecomeActive:(BOOL)active;
- (void)setConfiguration:(id)configuration;
- (void)setElementAppearState:(int)state;
- (void)setElementProviderPrefersSuppression:(BOOL)suppression;
- (void)setExpanding:(BOOL)expanding;
- (void)setHasBeenRemoved:(BOOL)removed;
- (void)setLayoutHost:(id)host;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setPreviewing:(BOOL)previewing;
- (void)setProminent:(BOOL)prominent;
- (void)setReadyForPresentation:(BOOL)presentation;
- (void)setSecureElementHost:(id)host;
- (void)setSuppressed:(BOOL)suppressed;
- (void)setSuppressedByProximityReader:(BOOL)reader;
- (void)setUrgent:(BOOL)urgent;
- (void)updateWithConnectedScene:(id)scene configuration:(id)configuration elementAssertionAcquisitionHandler:(id)handler;
@end

@implementation SBSystemApertureSceneElement

+ (id)activePlaceholderElementPassingTest:(id)test
{
  testCopy = test;
  activeElements = [self activeElements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__SBSystemApertureSceneElement_activePlaceholderElementPassingTest___block_invoke;
  v9[3] = &unk_2783C2898;
  v10 = testCopy;
  v6 = testCopy;
  v7 = [activeElements bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __68__SBSystemApertureSceneElement_activePlaceholderElementPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 placeholderContentProvider];
  if (v4)
  {
    v5 = [v3 scene];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSSet)scenesForBacklightSession
{
  activeElements = [self activeElements];
  v3 = [activeElements bs_mapNoNulls:&__block_literal_global_411];

  if (v3)
  {
    [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

+ (void)addActiveElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v4 = SBSystemApertureSceneElementActiveElements;
    if (!SBSystemApertureSceneElementActiveElements)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = SBSystemApertureSceneElementActiveElements;
      SBSystemApertureSceneElementActiveElements = weakObjectsHashTable;

      v4 = SBSystemApertureSceneElementActiveElements;
    }

    [v4 addObject:elementCopy];
  }

  [self hostedScenesDidChange];
}

+ (void)removeActiveElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    [SBSystemApertureSceneElementActiveElements removeObject:elementCopy];
  }

  if (![SBSystemApertureSceneElementActiveElements count])
  {
    v4 = SBSystemApertureSceneElementActiveElements;
    SBSystemApertureSceneElementActiveElements = 0;
  }

  [self hostedScenesDidChange];
}

+ (void)addElementReadyForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentationCopy)
  {
    v4 = SBSystemApertureSceneElementsReadyForPresentation;
    v7 = presentationCopy;
    if (!SBSystemApertureSceneElementsReadyForPresentation)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = SBSystemApertureSceneElementsReadyForPresentation;
      SBSystemApertureSceneElementsReadyForPresentation = weakObjectsHashTable;

      v4 = SBSystemApertureSceneElementsReadyForPresentation;
    }

    [v4 addObject:v7];
    presentationCopy = v7;
  }
}

+ (void)removeElementReadyForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentationCopy)
  {
    [SBSystemApertureSceneElementsReadyForPresentation removeObject:presentationCopy];
  }

  if (![SBSystemApertureSceneElementsReadyForPresentation count])
  {
    v3 = SBSystemApertureSceneElementsReadyForPresentation;
    SBSystemApertureSceneElementsReadyForPresentation = 0;
  }
}

+ (void)hostedScenesDidChange
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  if (objc_opt_respondsToSelector())
  {
    [systemApertureControllerForMainDisplay hostedScenesDidChange];
  }
}

+ (FBSceneWorkspace)sceneWorkspace
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBSystemApertureSceneElement_sceneWorkspace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sceneWorkspace_onceToken_0 != -1)
  {
    dispatch_once(&sceneWorkspace_onceToken_0, block);
  }

  v2 = sceneWorkspace_sceneWorkspace_0;

  return v2;
}

void __46__SBSystemApertureSceneElement_sceneWorkspace__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D0AAE8]);
  v5 = [*(a1 + 32) sceneWorkspaceIdentifier];
  v3 = [v2 initWithIdentifier:v5];
  v4 = sceneWorkspace_sceneWorkspace_0;
  sceneWorkspace_sceneWorkspace_0 = v3;
}

+ (id)defaultAnimationParameters
{
  if (defaultAnimationParameters_onceToken != -1)
  {
    +[SBSystemApertureSceneElement defaultAnimationParameters];
  }

  v3 = defaultAnimationParameters_params;

  return v3;
}

void __58__SBSystemApertureSceneElement_defaultAnimationParameters__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D67DC0]);
  v5 = +[SBSystemApertureDomain rootSettings];
  v1 = [v5 defaultInterfaceElementTransitionSettings];
  v2 = [v1 boundsBehaviorSettings];
  v3 = [v0 initWithFluidBehaviorSettings:v2 tracking:0 retargeted:0];
  v4 = defaultAnimationParameters_params;
  defaultAnimationParameters_params = v3;
}

- (SBSystemApertureSceneElement)initWithSceneSpecification:(id)specification sceneClientIdentity:(id)identity statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler
{
  specificationCopy = specification;
  identityCopy = identity;
  handlerCopy = handler;
  suppresserCopy = suppresser;
  sceneWorkspace = [objc_opt_class() sceneWorkspace];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __147__SBSystemApertureSceneElement_initWithSceneSpecification_sceneClientIdentity_statusBarBackgroundActivitiesSuppresser_readyForPresentationHandler___block_invoke;
  v21[3] = &unk_2783C28E0;
  v22 = specificationCopy;
  v23 = identityCopy;
  selfCopy = self;
  v24 = selfCopy;
  v16 = identityCopy;
  v17 = specificationCopy;
  v18 = [sceneWorkspace createScene:v21];

  v19 = [(SBSystemApertureSceneElement *)selfCopy initWithScene:v18 statusBarBackgroundActivitiesSuppresser:suppresserCopy readyForPresentationHandler:handlerCopy];
  return v19;
}

void __147__SBSystemApertureSceneElement_initWithSceneSpecification_sceneClientIdentity_statusBarBackgroundActivitiesSuppresser_readyForPresentationHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSpecification:v3];
  [v4 setClientIdentity:*(a1 + 40)];
  v5 = [objc_opt_class() sceneWorkspace];
  v9 = [v5 identifier];

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v9, v7];
  [v4 setIdentifier:v8];
}

- (SBSystemApertureSceneElement)initWithScene:(id)scene statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler
{
  sceneCopy = scene;
  suppresserCopy = suppresser;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = SBSystemApertureSceneElement;
  v11 = [(SBSystemApertureSceneElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SBSystemApertureSceneElement *)v11 _commonInitWithScene:sceneCopy placeholderContentProvider:0 statusBarBackgroundActivitiesSuppresser:suppresserCopy readyForPresentationHandler:handlerCopy];
  }

  return v12;
}

- (SBSystemApertureSceneElement)initWithScene:(id)scene placeholderContentProvider:(id)provider statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler
{
  sceneCopy = scene;
  providerCopy = provider;
  suppresserCopy = suppresser;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = SBSystemApertureSceneElement;
  v14 = [(SBSystemApertureSceneElement *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(SBSystemApertureSceneElement *)v14 _commonInitWithScene:sceneCopy placeholderContentProvider:providerCopy statusBarBackgroundActivitiesSuppresser:suppresserCopy readyForPresentationHandler:handlerCopy];
  }

  return v15;
}

- (void)_commonInitWithScene:(id)scene placeholderContentProvider:(id)provider statusBarBackgroundActivitiesSuppresser:(id)suppresser readyForPresentationHandler:(id)handler
{
  sceneCopy = scene;
  providerCopy = provider;
  objc_storeStrong(&self->_scene, scene);
  handlerCopy = handler;
  suppresserCopy = suppresser;
  objc_storeWeak(&self->_placeholderContentProvider, providerCopy);
  v14 = [handlerCopy copy];

  readyHandler = self->_readyHandler;
  self->_readyHandler = v14;

  objc_storeWeak(&self->_statusBarBackgroundActivitiesSuppresser, suppresserCopy);
  v16 = objc_alloc_init(MEMORY[0x277D67988]);
  leadingView = self->_leadingView;
  self->_leadingView = v16;

  v18 = objc_alloc_init(MEMORY[0x277D67988]);
  trailingView = self->_trailingView;
  self->_trailingView = v18;

  v20 = objc_alloc_init(MEMORY[0x277D67988]);
  minimalView = self->_minimalView;
  self->_minimalView = v20;

  if (providerCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    deferredSceneActions = self->_deferredSceneActions;
    self->_deferredSceneActions = array;
  }

  leadingView = [providerCopy leadingView];
  if (leadingView)
  {
    v25 = [[SBSystemApertureSceneElementPlaceholderWrapperView alloc] initWithContentView:leadingView];
    leadingWrapperView = self->_leadingWrapperView;
    self->_leadingWrapperView = v25;

    [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_leadingWrapperView setDelegate:self];
  }

  trailingView = [providerCopy trailingView];
  if (trailingView)
  {
    v28 = [[SBSystemApertureSceneElementPlaceholderWrapperView alloc] initWithContentView:trailingView];
    trailingWrapperView = self->_trailingWrapperView;
    self->_trailingWrapperView = v28;

    [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_trailingWrapperView setDelegate:self];
  }

  minimalView = [providerCopy minimalView];
  if (minimalView)
  {
    v31 = [SBSystemApertureSceneElementPlaceholderWrapperView alloc];
    if (minimalView == leadingView)
    {
      v32 = 0;
    }

    else
    {
      v32 = minimalView;
    }

    v33 = [(SBSystemApertureSceneElementPlaceholderWrapperView *)v31 initWithContentView:v32];
    minimalWrapperView = self->_minimalWrapperView;
    self->_minimalWrapperView = v33;

    [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_minimalWrapperView setDelegate:self];
  }

  self->_obstructionEdge = 1;
  v35 = [[SBSystemActionElementPreviewingCoordinator alloc] initWithElement:?];
  previewingCoordinator = self->_previewingCoordinator;
  self->_previewingCoordinator = v35;
}

- (void)deactivateWhenRemovedWithHandler:(id)handler
{
  handlerCopy = handler;
  BSDispatchQueueAssertMain();
  if ([(SBSystemApertureSceneElement *)self isDeactivating])
  {
    [SBSystemApertureSceneElement deactivateWhenRemovedWithHandler:];
  }

  if (![(SBSystemApertureSceneElement *)self isActivated])
  {
    [SBSystemApertureSceneElement deactivateWhenRemovedWithHandler:];
  }

  [(SBSystemApertureSceneElement *)self _addActivationAttribute:8];
  scene = [(SBSystemApertureSceneElement *)self scene];
  if (![scene isActive])
  {
    goto LABEL_8;
  }

  scene2 = [(SBSystemApertureSceneElement *)self scene];
  clientHandle = [scene2 clientHandle];
  processHandle = [clientHandle processHandle];
  currentState = [processHandle currentState];
  isRunning = [currentState isRunning];

  if (isRunning)
  {
    scene = [(SBSystemApertureSceneElement *)self scene];
    [scene performUpdate:&__block_literal_global_68_1];
LABEL_8:
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SBSystemApertureSceneElement_deactivateWhenRemovedWithHandler___block_invoke_2;
  v15[3] = &unk_2783C2908;
  v16 = handlerCopy;
  v11 = handlerCopy;
  [(SBSystemApertureSceneElement *)self setDeactivationHandler:v15];
  [(SBSystemApertureSceneElement *)self _finishDeactivationIfNeeded];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SBSystemApertureSceneElement_deactivateWhenRemovedWithHandler___block_invoke_3;
  v12[3] = &unk_2783A9CE8;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __65__SBSystemApertureSceneElement_deactivateWhenRemovedWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 otherSettings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setObject:MEMORY[0x277CBEC38] forSetting:3213017];
}

void __65__SBSystemApertureSceneElement_deactivateWhenRemovedWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 invalidate];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __65__SBSystemApertureSceneElement_deactivateWhenRemovedWithHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() removeElementReadyForPresentation:WeakRetained];
    WeakRetained = v2;
  }
}

- (void)_finishDeactivationIfNeeded
{
  isDeactivating = [(SBSystemApertureSceneElement *)self isDeactivating];
  v4 = [(SBSystemApertureSceneElement *)self _hasActivationAttribute:1];
  v5 = [(SBSystemApertureSceneElement *)self _hasActivationAttribute:2];
  v6 = [(SBSystemApertureSceneElement *)self _hasActivationAttribute:4];
  v7 = [(SBSystemApertureSceneElement *)self layoutMode]== -1 && (v6 && v5 || !v5);
  if (!v4)
  {
    v7 = 1;
  }

  if ((isDeactivating & v7) == 1)
  {
    deactivationHandler = [(SBSystemApertureSceneElement *)self deactivationHandler];
    [(SBSystemApertureSceneElement *)self setDeactivationHandler:0];
    v8 = deactivationHandler;
    if (deactivationHandler)
    {
      (*(deactivationHandler + 16))(deactivationHandler, self);
      v8 = deactivationHandler;
    }
  }
}

- (BOOL)isDeactivating
{
  v3 = [(SBSystemApertureSceneElement *)self _hasActivationAttribute:8];
  if (v3)
  {

    LOBYTE(v3) = [(SBSystemApertureSceneElement *)self isActivated];
  }

  return v3;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __42__SBSystemApertureSceneElement_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 otherSettings];
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

  [v2 setForeground:0];
  [v7 SBUISA_setLayoutMode:-1 forSetting:3213009];
}

void __42__SBSystemApertureSceneElement_invalidate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 otherSettings];
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

  [v2 setForeground:0];
  [v7 SBUISA_setLayoutMode:-1 forSetting:3213009];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBSystemApertureSceneElementConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    v4 = objc_alloc_init(SBSystemApertureSceneElementConfiguration);
    v5 = self->_configuration;
    self->_configuration = v4;

    configuration = self->_configuration;
  }

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(SBSystemApertureSceneElement *)self isActivated])
  {
    [SBSystemApertureSceneElement setConfiguration:];
  }

  v4 = [configurationCopy copy];
  configuration = self->_configuration;
  self->_configuration = v4;
}

- (void)activateWithInitialOtherSceneSettings:(id)settings clientSettings:(id)clientSettings transitionRequestHandler:(id)handler
{
  handlerCopy = handler;
  clientSettingsCopy = clientSettings;
  settingsCopy = settings;
  if ([(SBSystemApertureSceneElement *)self isActivated])
  {
    [SBSystemApertureSceneElement activateWithInitialOtherSceneSettings:clientSettings:transitionRequestHandler:];
  }

  [(SBSystemApertureSceneElement *)self setActivated:1];
  [(SBSystemApertureSceneElement *)self _acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded];
  v11 = MEMORY[0x223D6F7F0](handlerCopy);

  transitionRequestHandler = self->_transitionRequestHandler;
  self->_transitionRequestHandler = v11;

  [(SBSystemApertureSceneElement *)self _activateSceneWithInitialOtherSettings:settingsCopy clientSettings:clientSettingsCopy initialLayoutMode:1];

  [(SBSystemApertureSceneElement *)self _updateReadyForPresentationIfNeeded];
}

- (void)activateWithPostActivationPlaceholderTest:(id)test foundPlaceholderHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [test copy];
  postSceneActivationPlaceholderTest = self->_postSceneActivationPlaceholderTest;
  self->_postSceneActivationPlaceholderTest = v7;

  v9 = [handlerCopy copy];
  postSceneActivationPlaceholderElementFoundHandler = self->_postSceneActivationPlaceholderElementFoundHandler;
  self->_postSceneActivationPlaceholderElementFoundHandler = v9;

  [(SBSystemApertureSceneElement *)self activate];
}

- (void)updateWithConnectedScene:(id)scene configuration:(id)configuration elementAssertionAcquisitionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  configurationCopy = configuration;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  if (![(SBSystemApertureSceneElement *)self isActivated]|| !WeakRetained)
  {
    [SBSystemApertureSceneElement updateWithConnectedScene:configuration:elementAssertionAcquisitionHandler:];
  }

  objc_storeStrong(&self->_scene, scene);
  if (configurationCopy)
  {
    v13 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v13;
  }

  [(SBSystemApertureSceneElement *)self _activateSceneWithInitialOtherSettings:0 clientSettings:0 initialLayoutMode:[(SBSystemApertureSceneElement *)self _clientLayoutModeForLayoutMode:[(SBSystemApertureSceneElement *)self layoutMode]]];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_deferredSceneActions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v25 + 1) + 8 * v19) + 16))(*(*(&v25 + 1) + 8 * v19));
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  deferredSceneActions = self->_deferredSceneActions;
  self->_deferredSceneActions = 0;

  [WeakRetained noteSceneClientWantsControlOfElementWithAssertionTransferBlock:{handlerCopy, v25}];
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  [sceneSettings SBUISA_containerViewFrame];
  v22 = [(SBSystemApertureSceneElement *)self _proposeTransitionParametersForTransitionToFrameInSceneView:128 excludingParametersAssociatedWithReasons:0 usingCurrentAnimationParameters:?];

  [(SBSystemApertureSceneElement *)self _applyTransitionParameters:v22];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = @"SBSystemApertureNotificationUserInfoElementKey";
  selfCopy = self;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v29 count:1];
  [defaultCenter postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v24];
}

- (void)_activateSceneWithInitialOtherSettings:(id)settings clientSettings:(id)clientSettings initialLayoutMode:(int64_t)mode
{
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  scene = [(SBSystemApertureSceneElement *)self scene];
  [scene addObserver:self];

  scene2 = [(SBSystemApertureSceneElement *)self scene];
  layerManager = [scene2 layerManager];
  [layerManager addObserver:self];

  v13 = objc_alloc_init(SBSystemApertureSceneElementTransitionParameters);
  if ([(SBSystemApertureSceneElement *)self _requiresForegroundScene])
  {
    [(SBSystemApertureSceneElementTransitionParameters *)v13 setWantsForeground:1];
  }

  else
  {
    scene3 = [(SBSystemApertureSceneElement *)self scene];
    settings = [scene3 settings];
    -[SBSystemApertureSceneElementTransitionParameters setWantsForeground:](v13, "setWantsForeground:", [settings isForeground]);
  }

  [(SBSystemApertureSceneElementTransitionParameters *)v13 setShouldSetForeground:[(SBSystemApertureSceneElementTransitionParameters *)v13 wantsForeground]];
  v16 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v16 SBUISA_setLayoutMode:mode forSetting:3213009];
  [(SBSystemApertureSceneElement *)self _obstructedAreaFrame];
  [v16 SBUISA_setCGRect:3213015 forSetting:?];
  if (settingsCopy)
  {
    [v16 applySettings:settingsCopy];
  }

  v39 = settingsCopy;
  v17 = clientSettingsCopy;
  [(SBSystemApertureSceneElement *)self _sizeForSceneView];
  [(SBSystemApertureSceneElementTransitionParameters *)v13 setSceneSize:?];
  [(SBSystemApertureSceneElementTransitionParameters *)v13 setOtherSystemApertureSceneSettingsToApply:v16];
  transitionContext = [MEMORY[0x277D75188] transitionContext];
  v19 = MEMORY[0x277CBEB98];
  v20 = MEMORY[0x277D67E38];
  defaultAnimationParameters = [objc_opt_class() defaultAnimationParameters];
  v22 = [v20 transientLocalResizeSceneActionWithAnimationParameters:defaultAnimationParameters];
  v23 = [v19 setWithObject:v22];

  [transitionContext setActions:v23];
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  if (-[SBSystemApertureSceneElement _ownsScene](self, "_ownsScene") || (-[SBSystemApertureSceneElement scene](self, "scene"), (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, -[SBSystemApertureSceneElement scene](self, "scene"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isActive], v27, v26, (v28 & 1) == 0))
  {
    scene4 = [(SBSystemApertureSceneElement *)self scene];
    isActive = [scene4 isActive];

    if (isActive)
    {
      [SBSystemApertureSceneElement _activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:];
    }

    scene5 = [(SBSystemApertureSceneElement *)self scene];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke;
    v40[3] = &unk_2783C2978;
    v40[4] = self;
    v41 = v13;
    v42 = v17;
    v43 = WeakRetained;
    [scene5 configureParameters:v40];

    scene6 = [(SBSystemApertureSceneElement *)self scene];
    [scene6 activateWithTransitionContext:transitionContext];
  }

  else
  {
    scene7 = [(SBSystemApertureSceneElement *)self scene];
    isActive2 = [scene7 isActive];

    if ((isActive2 & 1) == 0 && !WeakRetained)
    {
      [SBSystemApertureSceneElement _activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:];
    }

    [(SBSystemApertureSceneElementTransitionParameters *)v13 setTransitionContext:transitionContext];
    [(SBSystemApertureSceneElement *)self _updateSceneWithTransitionParameters:v13];
  }

  scene8 = [(SBSystemApertureSceneElement *)self scene];
  if (scene8)
  {
    v36 = scene8;
    _sceneDisplayConfigurationValid = [(SBSystemApertureSceneElement *)self _sceneDisplayConfigurationValid];

    if (!_sceneDisplayConfigurationValid)
    {
      [SBSystemApertureSceneElement _activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:];
    }
  }
}

void __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke_2;
  v9[3] = &unk_2783B90C8;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  [v3 updateSettingsWithBlock:v9];
  v5 = *(a1 + 48);
  if (v5 || *(a1 + 56))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke_3;
    v6[3] = &unk_2783C2950;
    v7 = v5;
    v8 = *(a1 + 56);
    [v3 updateClientSettingsWithBlock:v6];
  }
}

void __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterfaceOrientation:1];
  v4 = [MEMORY[0x277D0AA90] mainConfiguration];
  [v3 setDisplayConfiguration:v4];

  v5 = [SBApp windowSceneManager];
  v6 = [v5 embeddedDisplayWindowScene];
  v7 = [v6 _fbsDisplayConfiguration];

  [v3 sb_setDisplayConfigurationForSceneManagers:v7];
  [*(a1 + 32) _updateMutableSceneSettings:v3 withParameters:*(a1 + 40)];
}

void __104__SBSystemApertureSceneElement__activateSceneWithInitialOtherSettings_clientSettings_initialLayoutMode___block_invoke_3(uint64_t a1, void *a2)
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

  v8 = v6;

  if (*(a1 + 32))
  {
    [v8 applySettings:?];
  }

  v7 = [*(a1 + 40) contentRole];
  if (v7)
  {
    [v8 SBUISA_setContentRole:v7 forSetting:3213021];
  }
}

- (BOOL)_sceneDisplayConfigurationValid
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  settings = [scene settings];
  displayConfiguration = [settings displayConfiguration];
  identity = [displayConfiguration identity];

  if ([identity isMainDisplay])
  {
    isContinuityDisplay = 1;
  }

  else
  {
    isContinuityDisplay = [identity isContinuityDisplay];
  }

  return isContinuityDisplay;
}

- (id)_existingAlertingAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    alertingActivityAssertion = [WeakRetained alertingActivityAssertion];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_alertHost);
    alertingActivityAssertion = [v6 alertAssertion];
  }

  return alertingActivityAssertion;
}

- (BOOL)_isValidAlertingSource:(int64_t)source
{
  v21 = *MEMORY[0x277D85DE8];
  if (!source)
  {
    [(SBSystemApertureSceneElement *)a2 _isValidAlertingSource:?];
  }

  alertingSource = self->_alertingSource;
  if (alertingSource != source)
  {
    v6 = alertingSource == 0;
    if (alertingSource)
    {
      v7 = SBLogSystemApertureHosting();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
        v9 = self->_alertingSource;
        v10 = @"[invalid]";
        v11 = @"[invalid]";
        if (v9 <= 2)
        {
          v11 = off_2783C2B88[v9];
        }

        if (source == 1)
        {
          v10 = @"SAUIAlertingSourceHost";
        }

        if (source == 2)
        {
          v10 = @"SAUIAlertingSourceClient";
        }

        v12 = v10;
        v15 = 138543874;
        v16 = succinctDescription;
        v17 = 2114;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        _os_log_error_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Changing alerting source is not allowed. Attempting to change alerting source from %{public}@ to %{public}@", &v15, 0x20u);
LABEL_19:
      }
    }

    else
    {
      self->_alertingSource = source;
      v7 = SBLogSystemApertureHosting();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
        v13 = @"[invalid]";
        if (source == 1)
        {
          v13 = @"SAUIAlertingSourceHost";
        }

        if (source == 2)
        {
          v13 = @"SAUIAlertingSourceClient";
        }

        v12 = v13;
        v15 = 138543618;
        v16 = succinctDescription;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting alerting to %{public}@", &v15, 0x16u);
        goto LABEL_19;
      }
    }

    return v6;
  }

  return 1;
}

- (void)_handleAlertingAssertionRequestForReason:(id)reason implicitlyDismissable:(BOOL)dismissable
{
  dismissableCopy = dismissable;
  reasonCopy = reason;
  if (([(SBUISystemApertureAlertingAction *)self->_alertingAction isValid]& 1) == 0)
  {
    _existingAlertingAssertion = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
    if (([_existingAlertingAssertion isValid] & 1) == 0 && -[SBSystemApertureSceneElement hasActivityBehavior](self, "hasActivityBehavior"))
    {
      WeakRetained = objc_loadWeakRetained(&self->_activityHost);
      v9 = [WeakRetained alertWithReason:reasonCopy implicitlyDismissable:dismissableCopy];
      alertingActivityAssertion = self->_alertingActivityAssertion;
      self->_alertingActivityAssertion = v9;

      objc_initWeak(&location, self);
      objc_initWeak(&from, self->_alertingActivityAssertion);
      v11 = self->_alertingActivityAssertion;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke;
      v36[3] = &unk_2783AD5F0;
      objc_copyWeak(&v37, &location);
      objc_copyWeak(&v38, &from);
      [(SAAutomaticallyInvalidatable *)v11 addInvalidationBlock:v36];
      objc_destroyWeak(&v38);
      objc_destroyWeak(&v37);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    objc_initWeak(&v35, self);
    location = 0;
    p_location = &location;
    v31 = 0x3042000000;
    v32 = __Block_byref_object_copy__132;
    v33 = __Block_byref_object_dispose__132;
    v34 = 0;
    from = 0;
    p_from = &from;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__123;
    v27 = __Block_byref_object_dispose__124;
    v12 = MEMORY[0x277CF0B60];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke_126;
    v21[3] = &unk_2783C29C8;
    objc_copyWeak(&v22, &v35);
    v21[4] = &location;
    v28 = [v12 responderWithHandler:v21];
    v13 = objc_alloc(MEMORY[0x277D67DB8]);
    v14 = [v13 initWithInfo:0 responder:p_from[5]];
    alertingAction = self->_alertingAction;
    self->_alertingAction = v14;

    objc_storeWeak(p_location + 5, self->_alertingAction);
    _existingAlertingAssertion2 = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke_3;
    v19[3] = &unk_2783C29F0;
    v19[4] = &location;
    v19[5] = &from;
    objc_copyWeak(&v20, &v35);
    [_existingAlertingAssertion2 addInvalidationBlock:v19];

    if (self->_alertingSource == 2)
    {
      scene = self->_scene;
      v18 = [MEMORY[0x277CBEB98] setWithObjects:{self->_alertingAction, 0}];
      [(FBScene *)scene sendActions:v18];
    }

    objc_destroyWeak(&v20);
    _Block_object_dispose(&from, 8);

    objc_destroyWeak(&v22);
    _Block_object_dispose(&location, 8);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v35);
  }
}

void __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[44];
    v6 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 40));

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = v6[44];
      v6[44] = 0;

      WeakRetained = v6;
    }
  }
}

void __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke_126(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 40));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v10 = v2;
  if (v2)
  {
    v3 = [v2 localizedDescription];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = [*(a1 + 32) info];
    v3 = [v4 objectForSetting:0];

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _existingAlertingAssertion];

  if ([v6 isValid])
  {
    [v6 invalidateWithReason:v3];
  }

LABEL_8:
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 _alertingAction];
  v9 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));

  if (v8 == v9)
  {
    [v7 _setAlertingAction:0];
  }
}

void __95__SBSystemApertureSceneElement__handleAlertingAssertionRequestForReason_implicitlyDismissable___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [*(*(*(a1 + 40) + 8) + 40) annul];
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [v2 _alertingAction];

  if (v3 == WeakRetained)
  {
    [v2 _setAlertingAction:0];
  }
}

- (id)sceneSettings
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  settings = [scene settings];
  v4 = objc_opt_self();
  v5 = settings;
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

  return v6;
}

- (id)sceneClientSettings
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  clientSettings = [scene clientSettings];
  v4 = objc_opt_self();
  v5 = clientSettings;
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

  return v6;
}

- (void)setActivated:(BOOL)activated
{
  if (self->_activated != activated)
  {
    activatedCopy = activated;
    self->_activated = activated;
    v6 = +[SBBacklightController sharedInstanceIfExists];
    self->_backlightIsOrWillBecomeActive = [v6 backlightState] != 4;

    [(SBSystemApertureSceneElement *)self _updateActiveElementsAndAssociatedApplication];
    v7 = +[SBBacklightController sharedInstanceIfExists];
    v8 = v7;
    if (activatedCopy)
    {
      [v7 addObserver:self];
    }

    else
    {
      [v7 removeObserver:self];
    }
  }
}

- (void)setBacklightIsOrWillBecomeActive:(BOOL)active
{
  if (self->_backlightIsOrWillBecomeActive != active)
  {
    self->_backlightIsOrWillBecomeActive = active;
    [(SBSystemApertureSceneElement *)self _updateSceneBackgroundStateIfNeeded];
  }
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (BOOL)handleElementViewEvent:(int64_t)event
{
  if (event < 4)
  {
    if ([(SBSystemApertureSceneElement *)self _shouldHandleLaunchAction])
    {

      LOBYTE(v4) = [(SBSystemApertureSceneElement *)self _handleLaunchAction];
      return v4;
    }

    if ([(SBSystemApertureSceneElement *)self layoutMode]== 1 || [(SBSystemApertureSceneElement *)self layoutMode]== 2)
    {
      [(SBSystemApertureSceneElement *)self _updateScene:self->_scene activatingIfNeeded:0 settingsWithTransitionBlock:&__block_literal_global_135_0];
    }

LABEL_12:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (event != 4)
  {
    goto LABEL_12;
  }

  v4 = [(SBSystemApertureSceneElement *)self _hasPresentationBehavior:128];
  if (v4)
  {
    [(SBSystemApertureSceneElement *)self _updateScene:self->_scene activatingIfNeeded:0 settingsWithTransitionBlock:&__block_literal_global_138_0];
    LOBYTE(v4) = 1;
  }

  return v4;
}

id __55__SBSystemApertureSceneElement_handleElementViewEvent___block_invoke()
{
  v0 = [MEMORY[0x277D75188] transitionContext];
  v1 = MEMORY[0x277CBEB98];
  v2 = [objc_alloc(MEMORY[0x277D67E30]) initWithCommand:13];
  v3 = [v1 setWithObject:v2];

  [v0 setActions:v3];

  return v0;
}

id __55__SBSystemApertureSceneElement_handleElementViewEvent___block_invoke_2()
{
  v0 = [MEMORY[0x277D75188] transitionContext];
  v1 = MEMORY[0x277CBEB98];
  v2 = [objc_alloc(MEMORY[0x277D67E30]) initWithCommand:11];
  v3 = [v1 setWithObject:v2];

  [v0 setActions:v3];

  return v0;
}

- (BOOL)_shouldHandleLaunchAction
{
  v3 = [(SBSystemApertureSceneElement *)self layoutMode]== 1 || [(SBSystemApertureSceneElement *)self layoutMode]== 2;
  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:16])
  {
    return 0;
  }

  else
  {
    return ![(SBSystemApertureSceneElement *)self _hasPresentationBehavior:32]|| !v3;
  }
}

- (BOOL)_handleLaunchAction
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];

  sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedScenePersistenceIdentifier = [sceneClientSettings2 SBUISA_associatedScenePersistenceIdentifier];

  if (!(sBUISA_associatedAppBundleIdentifier | sBUISA_associatedScenePersistenceIdentifier))
  {
    sBUISA_associatedScenePersistenceIdentifier = [(SBApplicationSceneHandle *)self->_associatedApplicationSceneHandle persistenceIdentifier];
  }

  launchActionHandler = [(SBSystemApertureSceneElement *)self launchActionHandler];
  v8 = [launchActionHandler sceneElement:self decisionForLaunchActionOfAppWithBundleIdentifier:sBUISA_associatedAppBundleIdentifier persistenceIdentifier:sBUISA_associatedScenePersistenceIdentifier];

  v9 = v8 != 1 && [(SBSystemApertureSceneElement *)self _activateCorrespondingAppSceneIfPossible:v8];
  v10 = v8 == 1 || v9;

  return v10;
}

- (id)_bundleIdForLaunchTargetWithScenePersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__123;
  v22 = __Block_byref_object_dispose__124;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];

  if (identifierCopy)
  {
    v6 = +[SBSceneManagerCoordinator sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__SBSystemApertureSceneElement__bundleIdForLaunchTargetWithScenePersistenceIdentifier___block_invoke;
    v15[3] = &unk_2783B7178;
    v16 = identifierCopy;
    v17 = &v18;
    [v6 enumerateSceneManagersWithBlock:v15];
  }

  v7 = v19[5];
  if (!v7)
  {
    sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_launchURL = [sceneClientSettings2 SBUISA_launchURL];

    if (sBUISA_launchURL)
    {
      v10 = SBWorkspaceApplicationForURLWithError(sBUISA_launchURL, 0, 0);
      bundleIdentifier = [v10 bundleIdentifier];
      v12 = v19[5];
      v19[5] = bundleIdentifier;
    }

    v7 = v19[5];
  }

  v13 = v7;
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __87__SBSystemApertureSceneElement__bundleIdForLaunchTargetWithScenePersistenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 existingSceneHandleForPersistenceIdentifier:*(a1 + 32)];
  v3 = [v5 application];
  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }
}

- (BOOL)_activateCorrespondingAppSceneIfPossible:(int64_t)possible
{
  if (possible == 2)
  {
    sBUISA_associatedScenePersistenceIdentifier = 0;
  }

  else
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_associatedScenePersistenceIdentifier = [sceneClientSettings SBUISA_associatedScenePersistenceIdentifier];
  }

  v6 = [(SBSystemApertureSceneElement *)self _bundleIdForLaunchTargetWithScenePersistenceIdentifier:sBUISA_associatedScenePersistenceIdentifier];
  sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_launchURL = [sceneClientSettings2 SBUISA_launchURL];

  sceneClientSettings3 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_launchAction = [sceneClientSettings3 SBUISA_launchAction];

  if (v6 && (+[SBApplicationController sharedInstanceIfExists](SBApplicationController, "sharedInstanceIfExists"), v11 = objc_claimAutoreleasedReturnValue(), [v11 applicationWithBundleIdentifier:v6], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v13 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v13 setSource:24];
    [(SBLockScreenUnlockRequest *)v13 setIntent:3];
    [(SBLockScreenUnlockRequest *)v13 setName:@"Launch App from System Aperture Unlock"];
    [(SBLockScreenUnlockRequest *)v13 setWantsBiometricPresentation:1];
    _sbWindowScene = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView _sbWindowScene];
    [(SBLockScreenUnlockRequest *)v13 setWindowScene:_sbWindowScene];
    objc_initWeak(&location, self);
    v15 = +[SBLockScreenManager sharedInstance];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke;
    v22 = &unk_2783C2A38;
    v23 = v6;
    objc_copyWeak(&v29, &location);
    v16 = _sbWindowScene;
    v24 = v16;
    v25 = sBUISA_associatedScenePersistenceIdentifier;
    v26 = sBUISA_launchURL;
    v27 = sBUISA_launchAction;
    selfCopy = self;
    [v15 unlockWithRequest:v13 completion:&v19];

    [(SBSystemApertureSceneElement *)self setHasHandledLaunchAction:1, v19, v20, v21, v22];
    [(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture];
    if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:512])
    {
      [(SBSystemApertureSceneElement *)self setAffiliatedWithSessionMonitor:0];
      if ([(SAAutomaticallyInvalidatable *)self->_alertingActivityAssertion isValid])
      {
        [(SAAutomaticallyInvalidatable *)self->_alertingActivityAssertion invalidateWithReason:@"Dismissing upon handling launch action"];
      }
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    return;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.InCallService"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v5 = [WeakRetained isActivated];

    if (!v5)
    {
      return;
    }
  }

  v6 = [*(a1 + 40) sceneManager];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:*(a1 + 32)];

  v9 = *(a1 + 48);
  if (v9)
  {
    v2 = [v6 displayIdentity];
    v10 = [SBDeviceApplicationSceneEntity entityWithApplication:v8 scenePersistenceIdentifier:v9 sceneHandleProvider:v6 displayIdentity:v2];
  }

  else
  {
    v11 = [SBDeviceApplicationSceneEntity alloc];
    v12 = __sb__runningInSpringBoard();
    v13 = v12;
    if (v12)
    {
      v14 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v2 userInterfaceIdiom] == 1;
    }

    v15 = [v6 displayIdentity];
    v10 = [(SBDeviceApplicationSceneEntity *)v11 initWithApplication:v8 generatingNewPrimarySceneIfRequired:v14 sceneHandleProvider:v6 displayIdentity:v15];

    if (v13)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  if (*(a1 + 56))
  {
    v16 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:*(a1 + 56)];
  }

  else
  {
    v16 = *(a1 + 64);
  }

  v17 = v16;
  if (v16)
  {
    v18 = [MEMORY[0x277CBEB98] setWithObject:v16];
    [(SBApplicationSceneEntity *)v10 addActions:v18];
  }

  v19 = [*(*(a1 + 72) + 232) _fbsDisplayConfiguration];
  v20 = +[SBWorkspace mainWorkspace];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke_2;
  v22[3] = &unk_2783A98F0;
  v23 = v10;
  v21 = v10;
  [v20 requestTransitionWithOptions:0 displayConfiguration:v19 builder:v22 validator:&__block_literal_global_158_0];
}

void __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:61];
  [v3 setEventLabel:@"LaunchFromSystemAperture"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __73__SBSystemApertureSceneElement__activateCorrespondingAppSceneIfPossible___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFlag:1 forActivationSetting:63];
  [v4 setActivatingEntity:*(a1 + 32)];
}

- (id)_inferredElementIdentifier
{
  v3 = *MEMORY[0x277D68038];
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.MusicUIService"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.MediaRemoteUI"))
  {
    v6 = MEMORY[0x277D68008];
LABEL_4:
    v7 = *v6;

    v3 = v7;
    goto LABEL_5;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.VoiceMemos"])
  {
    v6 = MEMORY[0x277D68040];
    goto LABEL_4;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.ReplayKit.ReplayKitAngel"])
  {
    v6 = MEMORY[0x277D68018];
    goto LABEL_4;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.InCallService"])
  {
    v6 = MEMORY[0x277D67FD0];
    goto LABEL_4;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.Sharing.AirDropUI"])
  {
    v6 = MEMORY[0x277D67FC8];
    goto LABEL_4;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.Maps"])
  {
    v6 = MEMORY[0x277D68030];
    goto LABEL_4;
  }

  if ([(SBSystemApertureSceneElement *)self hasActivityBehavior])
  {
    v6 = MEMORY[0x277D67FF0];
    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

- (NSString)elementIdentifier
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_elementIdentifier = [sceneClientSettings SBUISA_elementIdentifier];

  if (!sBUISA_elementIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained elementIdentifier];
    }

    else
    {
      [(SBSystemApertureSceneElement *)self _inferredElementIdentifier];
    }
    sBUISA_elementIdentifier = ;
  }

  return sBUISA_elementIdentifier;
}

- (NSString)clientIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  v4 = WeakRetained;
  if (WeakRetained && !self->_scene)
  {
    clientIdentifier = [WeakRetained clientIdentifier];
  }

  else
  {
    clientIdentifier = self->_clientIdentifier;
    if (!clientIdentifier)
    {
      clientHandle = [(FBScene *)self->_scene clientHandle];
      bundleIdentifier = [clientHandle bundleIdentifier];
      v8 = self->_clientIdentifier;
      self->_clientIdentifier = bundleIdentifier;

      clientIdentifier = self->_clientIdentifier;
    }

    clientIdentifier = clientIdentifier;
  }

  v10 = clientIdentifier;

  return v10;
}

- (void)setReadyForPresentation:(BOOL)presentation
{
  if (self->_readyForPresentation != presentation)
  {
    presentationCopy = presentation;
    self->_readyForPresentation = presentation;
    [(SBSystemApertureSceneElement *)self _updateActiveElementsAndAssociatedApplication];
    if (presentationCopy)
    {
      [(SBSystemApertureSceneElement *)self _addActivationAttribute:16];
    }

    if (self->_readyHandler)
    {
      v6 = MEMORY[0x223D6F7F0]();
      readyHandler = self->_readyHandler;
      self->_readyHandler = 0;

      [objc_opt_class() addElementReadyForPresentation:self];
      v6[2](v6, self, 1);
    }
  }
}

- (void)setLayoutHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_layoutHost, obj);
    self->_initialPreferredLayoutMode = [(SBSystemApertureSceneElement *)self preferredLayoutMode];
    [(SBSystemApertureSceneElement *)self _acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded];
    v5 = obj;
  }
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v44 = *MEMORY[0x277D85DE8];
  layoutMode = self->_layoutMode;
  if (layoutMode == mode)
  {
    return;
  }

  if (mode == -1)
  {
    [(SBSystemApertureSceneElement *)self setHasBeenRemoved:1];
    layoutMode = self->_layoutMode;
  }

  self->_mostRecentLayoutModeChangeReason = reason;
  v8 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
    v10 = SAUIStringFromElementViewLayoutMode();
    v11 = SAUIStringFromElementViewLayoutMode();
    *buf = 138543874;
    v39 = succinctDescription;
    v40 = 2114;
    v41 = v10;
    v42 = 2114;
    v43 = v11;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ layoutMode: %{public}@ -> %{public}@", buf, 0x20u);
  }

  self->_layoutMode = mode;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  _layoutObservers = [(SBSystemApertureSceneElement *)self _layoutObservers];
  v13 = [_layoutObservers copy];

  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v33 + 1) + 8 * i) elementLayoutSpecifier:self layoutModeDidChange:layoutMode reason:reason];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  if (mode < 1)
  {
    if (mode == -1)
    {
      [(SBSystemApertureSceneElement *)self _finishDeactivationIfNeeded];
    }

    goto LABEL_31;
  }

  [(SBSystemApertureSceneElement *)self _addActivationAttribute:1];
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  if (mode == 2)
  {
    leadingWrapperView = self->_leadingWrapperView;
    if (!leadingWrapperView)
    {
      goto LABEL_30;
    }

    contentView = [(SBSystemApertureSceneElementPlaceholderWrapperView *)leadingWrapperView contentView];
    leadingView = self->_leadingView;

    if (contentView == leadingView)
    {
      goto LABEL_30;
    }

    p_leadingWrapperView = &self->_leadingWrapperView;
    leadingView = [WeakRetained leadingView];
    if (!leadingView)
    {
      goto LABEL_29;
    }

    minimalView = [WeakRetained minimalView];

    if (minimalView != leadingView)
    {
      goto LABEL_29;
    }

    v25 = 288;
    goto LABEL_28;
  }

  if (mode != 1)
  {
    goto LABEL_30;
  }

  minimalWrapperView = self->_minimalWrapperView;
  if (!minimalWrapperView)
  {
    goto LABEL_30;
  }

  contentView2 = [(SBSystemApertureSceneElementPlaceholderWrapperView *)minimalWrapperView contentView];
  minimalView = self->_minimalView;

  if (contentView2 == minimalView)
  {
    goto LABEL_30;
  }

  p_leadingWrapperView = &self->_minimalWrapperView;
  leadingView = [WeakRetained minimalView];
  if (leadingView)
  {
    leadingView2 = [WeakRetained leadingView];

    if (leadingView2 == leadingView)
    {
      v25 = 272;
LABEL_28:
      [*(&self->super.isa + v25) setContentView:0];
    }
  }

LABEL_29:
  [(SBSystemApertureSceneElementPlaceholderWrapperView *)*p_leadingWrapperView setContentView:leadingView];

LABEL_30:
LABEL_31:
  if (layoutMode == 3)
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_hasMenuPresentation = [sceneClientSettings SBUISA_hasMenuPresentation];

    if (sBUISA_hasMenuPresentation)
    {
      layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
      [layoutHost menuPresentationRequestDidChangeForLayoutSpecifier:self];
    }
  }

  [(SBSystemApertureSceneElement *)self _updateSceneBackgroundStateIfNeeded];
  [(SBSystemApertureSceneElement *)self _updateActiveElementsAndAssociatedApplication];
  [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
}

- (int64_t)_layoutModeForClientLayoutMode:(int64_t)mode
{
  if (mode > 1)
  {
    switch(mode)
    {
      case 4:
        return 3;
      case 3:
        return 2;
      case 2:
        return 1;
    }

    return 0;
  }

  if (mode == -1)
  {
    return mode;
  }

  if (mode)
  {
    return 0;
  }

  if ([(SBSystemApertureSceneElement *)self isActivated]&& ![(SBSystemApertureSceneElement *)self isDeactivating]&& (self->_leadingWrapperView || self->_trailingWrapperView))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_clientLayoutModeForLayoutMode:(int64_t)mode
{
  if ((mode + 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_21F8A8818[mode + 1];
  }
}

- (int64_t)preferredLayoutMode
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  v4 = -[SBSystemApertureSceneElement _layoutModeForClientLayoutMode:](self, "_layoutModeForClientLayoutMode:", [sceneClientSettings SBUISA_preferredLayoutMode]);
  maximumSupportedLayoutMode = [(SBSystemApertureSceneElement *)self maximumSupportedLayoutMode];

  if (v4 >= maximumSupportedLayoutMode)
  {
    return maximumSupportedLayoutMode;
  }

  else
  {
    return v4;
  }
}

- (int64_t)minimumSupportedLayoutMode
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  v4 = -[SBSystemApertureSceneElement _layoutModeForClientLayoutMode:](self, "_layoutModeForClientLayoutMode:", [sceneClientSettings SBUISA_minimumLayoutMode]);
  maximumSupportedLayoutMode = [(SBSystemApertureSceneElement *)self maximumSupportedLayoutMode];

  if (v4 >= maximumSupportedLayoutMode)
  {
    return maximumSupportedLayoutMode;
  }

  else
  {
    return v4;
  }
}

- (int64_t)maximumSupportedLayoutMode
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  v4 = -[SBSystemApertureSceneElement _layoutModeForClientLayoutMode:](self, "_layoutModeForClientLayoutMode:", [sceneClientSettings SBUISA_maximumLayoutMode]);

  elementIdentifier = [(SBSystemApertureSceneElement *)self elementIdentifier];
  v6 = [elementIdentifier isEqualToString:*MEMORY[0x277D68008]];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = v4;
  }

  if ([(SBSystemApertureSceneElement *)self hasBeenRemoved])
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (BOOL)isRequestingMenuPresentation
{
  if ([(SBSystemApertureSceneElement *)self layoutMode]!= 3)
  {
    return 0;
  }

  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  if ([sceneClientSettings SBUISA_hasMenuPresentation])
  {
    _supportsMenuPresentations = [(SBSystemApertureSceneElement *)self _supportsMenuPresentations];
  }

  else
  {
    _supportsMenuPresentations = 0;
  }

  return _supportsMenuPresentations;
}

- (void)setHasBeenRemoved:(BOOL)removed
{
  if (self->_hasBeenRemoved != removed)
  {
    self->_hasBeenRemoved = removed;
    if ([(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture])
    {
      layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
      [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    }
  }
}

- (void)setSuppressedByProximityReader:(BOOL)reader
{
  if (self->_suppressedByProximityReader != reader)
  {
    self->_suppressedByProximityReader = reader;
    [(SBSystemApertureSceneElement *)self _acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded];
  }
}

- (BOOL)_isPresentedAsBannerInsteadOfSystemAperture
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);
  if (WeakRetained)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_layoutHost);
    v4 = v5 != 0;
  }

  return v4;
}

- (void)setPreviewing:(BOOL)previewing
{
  if (self->_previewing != previewing)
  {
    self->_previewing = previewing;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setUrgent:(BOOL)urgent
{
  if (self->_urgent != urgent)
  {
    self->_urgent = urgent;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)expanding
{
  if (self->_expanding != expanding)
  {
    self->_expanding = expanding;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)prominent
{
  if (self->_prominent != prominent)
  {
    self->_prominent = prominent;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setSuppressed:(BOOL)suppressed
{
  if (!suppressed)
  {
    [(SBSystemApertureSceneElement *)self setSuppressedByProximityReader:0];
  }
}

- (BOOL)_isAssociatedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];
  v7 = [sBUISA_associatedAppBundleIdentifier isEqualToString:identifierCopy];

  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:4096])
  {
    v8 = 0;
  }

  else
  {
    application = [(SBApplicationSceneHandle *)self->_associatedApplicationSceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    v8 = [bundleIdentifier isEqualToString:identifierCopy];
  }

  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:4096])
  {
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    clientIdentifier = [WeakRetained clientIdentifier];
    v11 = [clientIdentifier isEqualToString:identifierCopy];
  }

  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:4096])
  {
    v14 = 0;
  }

  else
  {
    clientHandle = [(FBScene *)self->_scene clientHandle];
    bundleIdentifier2 = [clientHandle bundleIdentifier];
    v14 = [bundleIdentifier2 isEqualToString:identifierCopy];
  }

  return v8 | v7 | v11 | v14;
}

- (BOOL)_isAssociatedWithSceneWithPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (-[SBSystemApertureSceneElement _isAssociatedWithBundleIdentifier:](self, "_isAssociatedWithBundleIdentifier:", @"com.apple.InCallService") && ([identifierCopy isEqualToString:@"SBAmbientFullScreenPresentationInCallSceneIdentifier"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v7 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:identifierCopy];

    settings = [v7 settings];
    v9 = objc_opt_class();
    v10 = settings;
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

    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_associatedScenePersistenceIdentifier = [sceneClientSettings SBUISA_associatedScenePersistenceIdentifier];
    persistenceIdentifier = [v12 persistenceIdentifier];
    if ([sBUISA_associatedScenePersistenceIdentifier isEqualToString:persistenceIdentifier])
    {
      v5 = 1;
    }

    else
    {
      persistenceIdentifier2 = [(SBApplicationSceneHandle *)self->_associatedApplicationSceneHandle persistenceIdentifier];
      persistenceIdentifier3 = [v12 persistenceIdentifier];
      v5 = [persistenceIdentifier2 isEqualToString:persistenceIdentifier3];
    }
  }

  return v5;
}

- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)identifier ofBundleId:(id)id
{
  identifierCopy = identifier;
  idCopy = id;
  if ([(SBSystemApertureSceneElement *)self requiresSuppressionFromSystemAperture]|| [(SBSystemApertureSceneElement *)self _hasPresentationBehavior:1024])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(SBSystemApertureSceneElement *)self _isAssociatedWithBundleIdentifier:idCopy]|| [(SBSystemApertureSceneElement *)self _isAssociatedWithSceneWithPersistenceIdentifier:identifierCopy];
  }

  return v8;
}

- (BOOL)shouldSuppressElementWhilePresentingSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  LOBYTE(v5) = ![(SBSystemApertureSceneElement *)self _hasPresentationBehavior:4]&& [(SBSystemApertureSceneElement *)self _isAssociatedWithSceneWithPersistenceIdentifier:identifierCopy];
  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:1024])
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_associatedScenePersistenceIdentifier = [sceneClientSettings SBUISA_associatedScenePersistenceIdentifier];

    if (sBUISA_associatedScenePersistenceIdentifier)
    {
      v5 = ![(SBSystemApertureSceneElement *)self _isAssociatedWithSceneWithPersistenceIdentifier:identifierCopy];
    }
  }

  return v5;
}

- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)id
{
  idCopy = id;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];

  sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedScenePersistenceIdentifier = [sceneClientSettings2 SBUISA_associatedScenePersistenceIdentifier];

  if (sBUISA_associatedAppBundleIdentifier | sBUISA_associatedScenePersistenceIdentifier)
  {
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    clientIdentifier = [WeakRetained clientIdentifier];
    v11 = clientIdentifier == 0;
  }

  LOBYTE(v12) = 0;
  if (![(SBSystemApertureSceneElement *)self _hasPresentationBehavior:2]&& !v11)
  {
    LOBYTE(v12) = (BSEqualStrings() & 1) == 0 && [(SBSystemApertureSceneElement *)self _isAssociatedWithBundleIdentifier:idCopy];
  }

  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:1024])
  {
    v12 = ![(SBSystemApertureSceneElement *)self _isAssociatedWithBundleIdentifier:idCopy];
  }

  return v12;
}

- (BOOL)shouldSuppressElementWhileOnContinuityDisplay
{
  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:2048])
  {
    return 1;
  }

  associatedApplicationSceneHandle = [(SBSystemApertureSceneElement *)self associatedApplicationSceneHandle];
  application = [associatedApplicationSceneHandle application];
  bundleIdentifier = [application bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v7;
}

- (BOOL)shouldSuppressElementWhileProximityReaderPresent
{
  if ([(SBSystemApertureSceneElement *)self isFaceIDLocalAuth])
  {
    return 0;
  }

  else
  {
    return ![(SBSystemApertureSceneElement *)self isPassbookWallet];
  }
}

- (BOOL)shouldIgnoreSystemChromeSuppressionWhilePresentingAppWithBundleId:(id)id
{
  idCopy = id;
  if ([(SBSystemApertureSceneElement *)self _hasPresentationBehavior:2])
  {
    v5 = [(SBSystemApertureSceneElement *)self _isAssociatedWithBundleIdentifier:idCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_updateRequiresSuppressionFromSystemAperture
{
  requiresSuppressionFromSystemAperture = [(SBSystemApertureSceneElement *)self requiresSuppressionFromSystemAperture];
  _calculateRequiresSuppressionFromSystemAperture = [(SBSystemApertureSceneElement *)self _calculateRequiresSuppressionFromSystemAperture];
  self->_requiresSuppressionFromSystemAperture = _calculateRequiresSuppressionFromSystemAperture;
  return requiresSuppressionFromSystemAperture ^ _calculateRequiresSuppressionFromSystemAperture;
}

- (BOOL)_calculateRequiresSuppressionFromSystemAperture
{
  if ([(SBSystemApertureSceneElement *)self isAffiliatedWithSessionMonitor])
  {
    hasBeenRemoved = [(SBSystemApertureSceneElement *)self hasBeenRemoved];
    if (!hasBeenRemoved)
    {
      return hasBeenRemoved;
    }
  }

  v4 = [(SBSystemApertureSceneElement *)self preferredLayoutMode]<= 0 && ![(SBSystemApertureSceneElement *)self requiresSuppressionFromSystemAperture]|| [(SBSystemApertureSceneElement *)self maximumSupportedLayoutMode]< 1;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];

  v7 = [(SBSystemApertureSceneElement *)self _hasPresentationBehavior:256];
  if (sBUISA_associatedAppBundleIdentifier)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v4 || v8;
  elementIdentifier = [(SBSystemApertureSceneElement *)self elementIdentifier];
  if (![elementIdentifier isEqualToString:*MEMORY[0x277D68008]])
  {
    goto LABEL_12;
  }

  v11 = [sBUISA_associatedAppBundleIdentifier isEqualToString:@"com.apple.VoiceMemos"];

  if (v11)
  {
    elementIdentifier = +[SBSystemApertureSceneElement activeElements];
    v9 |= [elementIdentifier bs_containsObjectPassingTest:&__block_literal_global_188_0];
LABEL_12:
  }

  if (([(SAAutomaticallyInvalidatable *)self->_alertingActivityAssertion isValid]& 1) == 0)
  {
    v9 |= [(SAAssertion *)self->_elementHostPrefersSuppressionAssertion isValid];
  }

  if ([(SBSystemApertureSceneElement *)self hasHandledLaunchAction])
  {
    v12 = [(SBSystemApertureSceneElement *)self _hasPresentationBehavior:512];
  }

  else
  {
    v12 = 0;
  }

  hasBeenRemoved2 = [(SBSystemApertureSceneElement *)self hasBeenRemoved];

  LOBYTE(hasBeenRemoved) = (hasBeenRemoved2 || v12) | v9;
  return hasBeenRemoved;
}

uint64_t __79__SBSystemApertureSceneElement__calculateRequiresSuppressionFromSystemAperture__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 elementIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D68040]];

  return v3;
}

- (BOOL)isInteractiveDismissalEnabled
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  if (scene)
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    v5 = [sceneClientSettings SBUISA_preventsInteractiveDismissal] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isMinimalPresentationPossible
{
  if ([(SBSystemApertureSceneElement *)self hasAlertBehavior])
  {
    return self->_minimalView != 0;
  }

  configuration = [(SBSystemApertureSceneElement *)self configuration];
  if ([configuration isMinimalPresentationPossible])
  {
    v3 = self->_minimalView != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)_effectivePresentationBehaviors
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_presentationBehaviors = [sceneClientSettings SBUISA_presentationBehaviors];

  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  v6 = WeakRetained;
  if (self->_scene)
  {
    v7 = 1;
  }

  else
  {
    v7 = WeakRetained == 0;
  }

  if (!v7)
  {
    sBUISA_presentationBehaviors = [WeakRetained presentationBehaviors];
  }

  return sBUISA_presentationBehaviors;
}

- (BOOL)_hasPresentationBehavior:(unint64_t)behavior
{
  LOBYTE(v5) = (behavior & ~[(SBSystemApertureSceneElement *)self _effectivePresentationBehaviors]) == 0;
  if ([(SBSystemApertureSceneElement *)self alwaysAllowTapToAppForBodyTaps])
  {
    if (behavior == 16)
    {
      LOBYTE(v5) = 0;
    }

    else if (behavior == 32)
    {
      sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
      v5 = ([sceneClientSettings SBUISA_presentationBehaviors] >> 4) & 1;
    }
  }

  return v5;
}

- (UIColor)keyColor
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  if (WeakRetained && !self->_scene && (objc_opt_respondsToSelector() & 1) != 0)
  {
    keyColor = [WeakRetained keyColor];
  }

  else
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    keyColor = [sceneClientSettings SBUISA_keyColor];
  }

  return keyColor;
}

- (BOOL)preventsInteractiveGestures
{
  if ([(SBSystemApertureSceneElement *)self isFaceIDLocalAuth])
  {
    return 1;
  }

  return [(SBSystemApertureSceneElement *)self isPassbookWallet];
}

- (void)setAffiliatedWithSessionMonitor:(BOOL)monitor
{
  monitorCopy = monitor;
  if ([(SBSystemApertureSceneElement *)self hasHandledLaunchAction])
  {
    monitorCopy &= ~[(SBSystemApertureSceneElement *)self _hasPresentationBehavior:512];
  }

  if (monitorCopy != [(SBSystemApertureSceneElement *)self isAffiliatedWithSessionMonitor])
  {
    if (monitorCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activityHost);
      if (objc_opt_respondsToSelector())
      {
        v6 = [WeakRetained systemManagedAlertingActivityAssertionWithReason:@"affiliated with session monitor"];
        sessionMonitorAssertion = self->_sessionMonitorAssertion;
        self->_sessionMonitorAssertion = v6;
      }
    }

    else
    {
      [(SAAutomaticallyInvalidatable *)self->_sessionMonitorAssertion invalidateWithReason:@"no longer associated with session monitor"];
    }

    if ([(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture])
    {
      layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
      [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    }
  }
}

- (BOOL)isAlerting
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);
  alertingActivityAssertion = [WeakRetained alertingActivityAssertion];
  isValid = [alertingActivityAssertion isValid];

  return isValid;
}

- (id)requestAlertingAssertionImplicitlyDismissable:(BOOL)dismissable
{
  dismissableCopy = dismissable;
  if ([(SBSystemApertureSceneElement *)self _isValidAlertingSource:1])
  {
    [(SBSystemApertureSceneElement *)self _handleAlertingAssertionRequestForReason:@"Scene Element - SBSystemApertureContextAccepting Request" implicitlyDismissable:dismissableCopy];
    _existingAlertingAssertion = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
    if ([(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture])
    {
      layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
      [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    }
  }

  else
  {
    _existingAlertingAssertion = 0;
  }

  return _existingAlertingAssertion;
}

- (void)setElementProviderPrefersSuppression:(BOOL)suppression
{
  elementHostPrefersSuppressionAssertion = self->_elementHostPrefersSuppressionAssertion;
  if (suppression)
  {
    if (![(SAAssertion *)elementHostPrefersSuppressionAssertion isValid])
    {
      v5 = objc_alloc_init(MEMORY[0x277D6B898]);
      v6 = self->_elementHostPrefersSuppressionAssertion;
      self->_elementHostPrefersSuppressionAssertion = v5;

      objc_initWeak(&location, self);
      objc_initWeak(&from, self->_elementHostPrefersSuppressionAssertion);
      v7 = self->_elementHostPrefersSuppressionAssertion;
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __69__SBSystemApertureSceneElement_setElementProviderPrefersSuppression___block_invoke;
      v12 = &unk_2783AD5F0;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(&v14, &from);
      [(SAAssertion *)v7 addInvalidationBlock:&v9];
      if ([(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture:v9])
      {
        layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
        [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [(SAAssertion *)elementHostPrefersSuppressionAssertion invalidateWithReason:@"setElementProviderPrefersSuppression called with NO"];
  }
}

void __69__SBSystemApertureSceneElement_setElementProviderPrefersSuppression___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 53);
    v9 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 40));

    v3 = v9;
    if (v4 == v5)
    {
      v6 = v9[53];
      v9[53] = 0;

      v7 = [v9 _updateRequiresSuppressionFromSystemAperture];
      v3 = v9;
      if (v7)
      {
        v8 = [v9 layoutHost];
        [v8 preferredLayoutModeDidInvalidateForLayoutSpecifier:v9];

        v3 = v9;
      }
    }
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  isProminent = [(SBSystemApertureSceneElement *)self isProminent];
  trailingWrapperView = self->_trailingWrapperView;
  if (trailingWrapperView)
  {
    contentView = [(SBSystemApertureSceneElementPlaceholderWrapperView *)trailingWrapperView contentView];
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    trailingView = [WeakRetained trailingView];
    if (contentView == trailingView)
    {
      [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_trailingWrapperView bounds];
      v8 = v10 == 0.0 && v9 == 0.0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      return isProminent | 2;
    }
  }

  return isProminent;
}

- (BOOL)overridesConcentricPaddingForView:(id)view inLayoutMode:(int64_t)mode
{
  viewCopy = view;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  v8 = sceneClientSettings;
  if (mode == 2)
  {
    if ([sceneClientSettings SBUISA_specifiesPreferredPaddingForCompactLayout])
    {
      leadingView = [(SBSystemApertureSceneElement *)self leadingView];
      if (leadingView == viewCopy)
      {
        v10 = 1;
      }

      else
      {
        trailingView = [(SBSystemApertureSceneElement *)self trailingView];
        v10 = trailingView == viewCopy;
      }

      goto LABEL_10;
    }
  }

  else if (mode == 1 && [sceneClientSettings SBUISA_attachedMinimalViewRequiresZeroPadding])
  {
    leadingView = [(SBSystemApertureSceneElement *)self minimalView];
    v10 = leadingView == viewCopy;
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (double)concentricPaddingOverrideForView:(id)view inLayoutMode:(int64_t)mode
{
  viewCopy = view;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  leadingView = [(SBSystemApertureSceneElement *)self leadingView];

  if (leadingView == viewCopy)
  {
    [sceneClientSettings SBUISA_preferredPaddingForCompactLayout];
    v9 = v10;
  }

  else
  {
    trailingView = [(SBSystemApertureSceneElement *)self trailingView];

    if (trailingView == viewCopy)
    {
      [sceneClientSettings SBUISA_preferredPaddingForCompactLayout];
      v9 = v11;
    }

    else
    {
      [(SBSystemApertureSceneElement *)self minimalView];

      v9 = 0.0;
    }
  }

  return v9;
}

- (BOOL)isFixedInOrientation
{
  if ([(SBSystemApertureSceneElement *)self wantsSpecialFlowerBoundsResizingAnimationForWallet])
  {
    return 1;
  }

  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_prefersFixedPortraitOrientation = [sceneClientSettings SBUISA_prefersFixedPortraitOrientation];

  return sBUISA_prefersFixedPortraitOrientation;
}

- (void)_layoutHostMayNotPerformLayoutUpdateWithReasonsToExclude:(unint64_t)exclude
{
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  [sceneSettings SBUISA_containerViewFrame];
  v6 = [(SBSystemApertureSceneElement *)self _proposeTransitionParametersForTransitionToFrameInSceneView:exclude excludingParametersAssociatedWithReasons:0 usingCurrentAnimationParameters:?];

  if ([(SBSystemApertureSceneElement *)self _updateReasonsForTransitionWithProposedParameters:v6 excludingReasons:exclude])
  {
    self->_wantsLayoutPassForClientUpdate = 0;
    [(SBSystemApertureSceneElement *)self _applyTransitionParameters:v6];
  }
}

- (BOOL)_requiresForegroundScene
{
  if ([(SBSystemApertureSceneElement *)self backlightIsOrWillBecomeActive])
  {
    return [(SBSystemApertureSceneElement *)self elementAppearState]|| [(SBSystemApertureSceneElement *)self layoutMode]> 0;
  }

  else
  {
    configuration = [(SBSystemApertureSceneElement *)self configuration];
    if ([configuration entersBackgroundWhenBacklightIsOff])
    {
      v3 = 0;
    }

    else if ([(SBSystemApertureSceneElement *)self elementAppearState])
    {
      v3 = 1;
    }

    else
    {
      v3 = [(SBSystemApertureSceneElement *)self layoutMode]> 0;
    }
  }

  return v3;
}

- (void)_updateSceneBackgroundStateIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  [sceneSettings SBUISA_containerViewFrame];
  v4 = [(SBSystemApertureSceneElement *)self _proposeTransitionParametersForTransitionToFrameInSceneView:-129 excludingParametersAssociatedWithReasons:0 usingCurrentAnimationParameters:?];

  if ([(SBSystemApertureSceneElement *)self _updateReasonsForTransitionWithProposedParameters:v4 excludingReasons:-129])
  {
    v5 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
      v7 = 138543618;
      v8 = succinctDescription;
      v9 = 1024;
      wantsForeground = [v4 wantsForeground];
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ updating to foreground %{BOOL}u", &v7, 0x12u);
    }

    [(SBSystemApertureSceneElement *)self _applyTransitionParameters:v4];
  }
}

- (BOOL)isBiometricKit
{
  presentable = [(SBSystemApertureSceneElement *)self presentable];
  requesterIdentifier = [presentable requesterIdentifier];
  v4 = [requesterIdentifier isEqualToString:@"com.apple.BiometricKitUI"];

  return v4;
}

- (BOOL)isFaceIDLocalAuth
{
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.CoreAuthUI"];

  return v4;
}

- (BOOL)isPassbookWallet
{
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.PassbookUISceneService"];

  return v4;
}

- (int64_t)customLayoutRequestingSpecialFlowerBoundsResizingAnimation
{
  if ([(SBSystemApertureSceneElement *)self isBiometricKit])
  {
    return 3;
  }

  if ([(SBSystemApertureSceneElement *)self wantsSpecialFlowerBoundsResizingAnimationForWallet])
  {
    return 3;
  }

  return 0;
}

- (NSSet)representedBackgroundActivityIdentifiers
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_backgroundActivitiesToSuppress = [sceneClientSettings SBUISA_backgroundActivitiesToSuppress];

  associatedApplication = [(SBSystemApertureSceneElement *)self associatedApplication];
  if (associatedApplication)
  {
    v6 = associatedApplication;
    nowLocatingApps = [SBApp nowLocatingApps];
    associatedApplication2 = [(SBSystemApertureSceneElement *)self associatedApplication];
    v9 = [nowLocatingApps containsObject:associatedApplication2];

    if (v9)
    {
      v10 = [sBUISA_backgroundActivitiesToSuppress setByAddingObject:*MEMORY[0x277D6BC00]];

      sBUISA_backgroundActivitiesToSuppress = v10;
    }
  }

  return sBUISA_backgroundActivitiesToSuppress;
}

- (BOOL)handleVolumeUpButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_associatedApplicationSceneHandle preferredHardwareButtonEventTypes]& 2) == 0)
  {
    return 0;
  }

  associatedApplicationSceneHandle = self->_associatedApplicationSceneHandle;

  return [(SBDeviceApplicationSceneHandle *)associatedApplicationSceneHandle handleHardwareButtonEventType:1];
}

- (BOOL)handleVolumeDownButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_associatedApplicationSceneHandle preferredHardwareButtonEventTypes]& 4) == 0)
  {
    return 0;
  }

  associatedApplicationSceneHandle = self->_associatedApplicationSceneHandle;

  return [(SBDeviceApplicationSceneHandle *)associatedApplicationSceneHandle handleHardwareButtonEventType:2];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  preferredHardwareButtonEventTypes = [(SBDeviceApplicationSceneHandle *)self->_associatedApplicationSceneHandle preferredHardwareButtonEventTypes];
  if (!pressCopy)
  {
    if ((preferredHardwareButtonEventTypes & 8) != 0)
    {
      v6 = 3;
      goto LABEL_7;
    }

    return 0;
  }

  if ((preferredHardwareButtonEventTypes & 0x10) == 0)
  {
    return 0;
  }

  v6 = 4;
LABEL_7:
  associatedApplicationSceneHandle = self->_associatedApplicationSceneHandle;

  return [(SBDeviceApplicationSceneHandle *)associatedApplicationSceneHandle handleHardwareButtonEventType:v6];
}

- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if (state != 4)
  {
    [(SBSystemApertureSceneElement *)self setBacklightIsOrWillBecomeActive:1, state, source];
  }
}

- (void)_updatePortalViews
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  clientSettings = [scene clientSettings];
  sBUISA_contextId = [clientSettings SBUISA_contextId];
  if ([scene contentState] == 2)
  {
    layerManager = [scene layerManager];
    layers = [layerManager layers];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __50__SBSystemApertureSceneElement__updatePortalViews__block_invoke;
    v28[3] = &__block_descriptor_36_e22_B16__0__FBSceneLayer_8l;
    v29 = sBUISA_contextId;
    v8 = [layers bs_firstObjectPassingTest:v28];
    contextID = [v8 contextID];
  }

  else
  {
    contextID = 0;
  }

  sBUISA_leadingViewRenderingId = [clientSettings SBUISA_leadingViewRenderingId];
  leadingView = self->_leadingView;
  [clientSettings SBUISA_preferredLeadingViewSize];
  [(SBSystemApertureSceneElementAccessoryView *)leadingView setPreferredSize:?];
  [(SBSystemApertureSceneElementAccessoryView *)self->_leadingView setSourceLayerRenderingId:sBUISA_leadingViewRenderingId contextId:contextID];
  v12 = self->_leadingView;
  sBUISA_leadingViewAccessibilityLabel = [clientSettings SBUISA_leadingViewAccessibilityLabel];
  [(SBSystemApertureSceneElementAccessoryView *)v12 setAccessibilityLabel:sBUISA_leadingViewAccessibilityLabel];

  sBUISA_trailingViewRenderingId = [clientSettings SBUISA_trailingViewRenderingId];
  trailingView = self->_trailingView;
  [clientSettings SBUISA_preferredTrailingViewSize];
  [(SBSystemApertureSceneElementAccessoryView *)trailingView setPreferredSize:?];
  [(SBSystemApertureSceneElementAccessoryView *)self->_trailingView setSourceLayerRenderingId:sBUISA_trailingViewRenderingId contextId:contextID];
  v16 = self->_trailingView;
  sBUISA_trailingViewAccessibilityLabel = [clientSettings SBUISA_trailingViewAccessibilityLabel];
  [(SBSystemApertureSceneElementAccessoryView *)v16 setAccessibilityLabel:sBUISA_trailingViewAccessibilityLabel];

  sBUISA_minimalViewRenderingId = [clientSettings SBUISA_minimalViewRenderingId];
  minimalView = self->_minimalView;
  [clientSettings SBUISA_preferredMinimalViewSize];
  [(SBSystemApertureSceneElementAccessoryView *)minimalView setPreferredSize:?];
  [(SBSystemApertureSceneElementAccessoryView *)self->_minimalView setSourceLayerRenderingId:sBUISA_minimalViewRenderingId contextId:contextID];
  v20 = self->_minimalView;
  sBUISA_minimalViewAccessibilityLabel = [clientSettings SBUISA_minimalViewAccessibilityLabel];
  [(SBSystemApertureSceneElementAccessoryView *)v20 setAccessibilityLabel:sBUISA_minimalViewAccessibilityLabel];

  sBUISA_detachedMinimalViewRenderingId = [clientSettings SBUISA_detachedMinimalViewRenderingId];
  if (sBUISA_detachedMinimalViewRenderingId && !self->_detachedMinimalView)
  {
    v23 = objc_alloc_init(MEMORY[0x277D67988]);
    detachedMinimalView = self->_detachedMinimalView;
    self->_detachedMinimalView = v23;
  }

  v25 = self->_detachedMinimalView;
  [clientSettings SBUISA_preferredDetachedMinimalViewSize];
  [(SBSystemApertureSceneElementAccessoryView *)v25 setPreferredSize:?];
  [(SBSystemApertureSceneElementAccessoryView *)self->_detachedMinimalView setSourceLayerRenderingId:sBUISA_detachedMinimalViewRenderingId contextId:contextID];
  v26 = self->_detachedMinimalView;
  sBUISA_detachedMinimalViewAccessibilityLabel = [clientSettings SBUISA_detachedMinimalViewAccessibilityLabel];
  [(SBSystemApertureSceneElementAccessoryView *)v26 setAccessibilityLabel:sBUISA_detachedMinimalViewAccessibilityLabel];
}

BOOL __50__SBSystemApertureSceneElement__updatePortalViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type] == 1 && objc_msgSend(v3, "contextID") == *(a1 + 32);

  return v4;
}

- (BOOL)_tryMovingToPlaceholderElementWithClientSettingsDiff:(id)diff forScene:(id)scene oldClientSettings:(id)settings transitionContext:(id)context
{
  diffCopy = diff;
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  if (self->_postSceneActivationPlaceholderTest)
  {
    v14 = [objc_opt_class() activePlaceholderElementPassingTest:self->_postSceneActivationPlaceholderTest];
    postSceneActivationPlaceholderTest = self->_postSceneActivationPlaceholderTest;
    self->_postSceneActivationPlaceholderTest = 0;

    if (self->_postSceneActivationPlaceholderElementFoundHandler)
    {
      v16 = MEMORY[0x223D6F7F0]();
      postSceneActivationPlaceholderElementFoundHandler = self->_postSceneActivationPlaceholderElementFoundHandler;
      self->_postSceneActivationPlaceholderElementFoundHandler = 0;

      v18 = v14 != 0;
      if (v14)
      {
        readyHandler = self->_readyHandler;
        self->_readyHandler = 0;

        self->_invalidatingForMoveToPlaceholderElement = 1;
        (v16)[2](v16, v14);
        [v14 _scene:sceneCopy didUpdateClientSettingsWithDiff:diffCopy oldClientSettings:settingsCopy transitionContext:contextCopy];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  [(SBSystemApertureSceneElement *)self _scene:sceneCopy didUpdateClientSettingsWithDiff:settingsDiff oldClientSettings:previousSettings transitionContext:transitionContext];
}

- (void)_scene:(id)_scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v169 = *MEMORY[0x277D85DE8];
  _sceneCopy = _scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  clientSettings = [_sceneCopy clientSettings];
  v15 = [clientSettings SBUI_systemApertureDescriptionOfDiffFromSettings:settingsCopy];

  if (!v15)
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    goto LABEL_7;
  }

  v16 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
    *buf = 138543618;
    v166 = succinctDescription;
    v167 = 2114;
    v168 = v15;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ received clientSettings update with changes: %{public}@", buf, 0x16u);
  }

  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  if (![(SBSystemApertureSceneElement *)self _tryMovingToPlaceholderElementWithClientSettingsDiff:diffCopy forScene:_sceneCopy oldClientSettings:settingsCopy transitionContext:contextCopy])
  {
LABEL_7:
    v151 = v15;
    v152 = diffCopy;
    v157 = contextCopy;
    layoutMode = [(SBSystemApertureSceneElement *)self layoutMode];
    [(SBSystemApertureSceneElement *)self _updatePortalViews];
    [(SBSystemApertureSceneElement *)self _updateReadyForPresentationIfNeeded];
    layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
    sBUISA_preferredLayoutMode = [settingsCopy SBUISA_preferredLayoutMode];
    sBUISA_preferredLayoutMode2 = [sceneClientSettings SBUISA_preferredLayoutMode];
    v23 = sBUISA_preferredLayoutMode != sBUISA_preferredLayoutMode2;
    if (([(SBSystemApertureSceneElement *)self layoutMode]& 0x8000000000000000) == 0)
    {
      maximumSupportedLayoutMode = [(SBSystemApertureSceneElement *)self maximumSupportedLayoutMode];
      layoutMode2 = [(SBSystemApertureSceneElement *)self layoutMode];
      v23 = sBUISA_preferredLayoutMode != sBUISA_preferredLayoutMode2 || maximumSupportedLayoutMode < layoutMode2;
    }

    sBUISA_associatedAppBundleIdentifier = [settingsCopy SBUISA_associatedAppBundleIdentifier];
    sBUISA_associatedAppBundleIdentifier2 = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];
    v29 = BSEqualStrings();

    sBUISA_associatedScenePersistenceIdentifier = [settingsCopy SBUISA_associatedScenePersistenceIdentifier];
    sBUISA_associatedScenePersistenceIdentifier2 = [sceneClientSettings SBUISA_associatedScenePersistenceIdentifier];
    v148 = BSEqualStrings();

    LODWORD(sBUISA_associatedScenePersistenceIdentifier) = [settingsCopy SBUISA_presentationBehaviors];
    if ((([sceneClientSettings SBUISA_presentationBehaviors] ^ sBUISA_associatedScenePersistenceIdentifier) & 0x40ELL) != 0)
    {
      v23 = 1;
    }

    v149 = v29;
    if ((v29 & 1) == 0)
    {
      [(SBSystemApertureSceneElement *)self _updateActiveElementsAndAssociatedApplication];
    }

    [settingsCopy SBUISA_customLayoutPreferredOutsetsFromUnsafeArea];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [sceneClientSettings SBUISA_customLayoutPreferredOutsetsFromUnsafeArea];
    v43 = v35 != v42;
    if (v33 != v44)
    {
      v43 = 1;
    }

    if (v39 != v41)
    {
      v43 = 1;
    }

    v45 = v37 != v40 || v43;
    sBUISA_preferredCustomLayout = [settingsCopy SBUISA_preferredCustomLayout];
    sBUISA_preferredCustomLayout2 = [sceneClientSettings SBUISA_preferredCustomLayout];
    v153 = _sceneCopy;
    v150 = v23;
    if (sBUISA_preferredCustomLayout2 == 3)
    {
      [(SBSystemApertureSceneElement *)self setWantsSpecialFlowerBoundsResizingAnimationForWallet:1];
      v48 = sBUISA_preferredCustomLayout != 3;
      v49 = 3;
      goto LABEL_41;
    }

    v50 = sBUISA_preferredCustomLayout == sBUISA_preferredCustomLayout2;
    v48 = sBUISA_preferredCustomLayout != sBUISA_preferredCustomLayout2;
    if (!sBUISA_preferredCustomLayout2 && v50)
    {
      [settingsCopy SBUISA_preferredCustomAspectRatio];
      v52 = v51;
      v54 = v53;
      [sceneClientSettings SBUISA_preferredCustomAspectRatio];
      v49 = 0;
      v48 = v54 != v56 || v52 != v55;
      if (v55 == 1.0 && v56 == 1.0)
      {
        goto LABEL_38;
      }
    }

    else if (sBUISA_preferredCustomLayout2 == 2)
    {
      v49 = 2;
    }

    else
    {
      if (sBUISA_preferredCustomLayout2 == 1)
      {
LABEL_38:
        v49 = 1;
        goto LABEL_41;
      }

      v49 = 0;
    }

LABEL_41:
    self->_systemApertureCustomLayout = v49;
    [settingsCopy SBUISA_preferredLeadingViewSize];
    v154 = v58;
    v155 = v57;
    [sceneClientSettings SBUISA_preferredLeadingViewSize];
    v60 = v59;
    v62 = v61;
    [settingsCopy SBUISA_preferredTrailingViewSize];
    v64 = v63;
    v66 = v65;
    [sceneClientSettings SBUISA_preferredTrailingViewSize];
    v68 = v67;
    v70 = v69;
    [settingsCopy SBUISA_preferredMinimalViewSize];
    v72 = v71;
    v74 = v73;
    [sceneClientSettings SBUISA_preferredMinimalViewSize];
    v77 = v154 == v62 && v155 == v60;
    v142 = v70;
    v143 = v76;
    v144 = v66;
    v145 = v72;
    v78 = v66 == v70 && v64 == v68;
    v146 = v74;
    v147 = v75;
    v79 = v74 != v76 || v72 != v75;
    if (layoutMode == 3 && ((v45 | v48) & 1) != 0)
    {
      goto LABEL_67;
    }

    if ([(SBSystemApertureSceneElement *)self layoutMode]== 2)
    {
      [settingsCopy SBUISA_preferredPaddingForCompactLayout];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      [sceneClientSettings SBUISA_preferredPaddingForCompactLayout];
      if (v83 != v91 || v81 != v88 || v87 != v90 || !v77 || !v78 || v85 != v89)
      {
LABEL_60:
        if (!v77 || !v78)
        {
          v92 = +[SBSystemApertureDomain rootSettings];
          [v92 minimumRequiredSymmetryInCompactLayoutMode];
          v94 = v93;

          if (v77)
          {
            if (v78 || v64 < v155 * v94 == v68 >= v60 * v94)
            {
              goto LABEL_67;
            }
          }

          else if (v155 < v64 * v94 != v60 < v68 * v94 && (v78 || v64 < v155 * v94 == v68 >= v60 * v94))
          {
            goto LABEL_67;
          }

          self->_wantsLayoutPassForClientUpdate = 1;
        }

LABEL_67:
        [layoutHost preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:{self, *&v142}];
      }
    }

    else if ([(SBSystemApertureSceneElement *)self layoutMode]== 1 && v79)
    {
      goto LABEL_60;
    }

    sBUISA_contextId = [settingsCopy SBUISA_contextId];
    v97 = sBUISA_contextId != [sceneClientSettings SBUISA_contextId] && objc_msgSend(settingsCopy, "SBUISA_contextId") == 0;
    if (self->_leadingWrapperView)
    {
      v98 = !v77 && v154 == *(MEMORY[0x277CBF3A8] + 8) && v155 == *MEMORY[0x277CBF3A8];
      sBUISA_leadingViewRenderingId = [settingsCopy SBUISA_leadingViewRenderingId];
      v100 = sBUISA_leadingViewRenderingId != [sceneClientSettings SBUISA_leadingViewRenderingId] && objc_msgSend(settingsCopy, "SBUISA_leadingViewRenderingId") == 0;
      if (v98 || v100 || v97)
      {
        v96 = *MEMORY[0x277CBF3A8];
        if (v60 != *MEMORY[0x277CBF3A8] || (v96 = *(MEMORY[0x277CBF3A8] + 8), v62 != v96))
        {
          if ([sceneClientSettings SBUISA_leadingViewRenderingId] && objc_msgSend(sceneClientSettings, "SBUISA_contextId"))
          {
            [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_leadingWrapperView setContentView:self->_leadingView];
          }
        }
      }
    }

    if (self->_trailingWrapperView)
    {
      v101 = !v78 && v144 == *(MEMORY[0x277CBF3A8] + 8) && v64 == *MEMORY[0x277CBF3A8];
      sBUISA_trailingViewRenderingId = [settingsCopy SBUISA_trailingViewRenderingId];
      v103 = sBUISA_trailingViewRenderingId != [sceneClientSettings SBUISA_trailingViewRenderingId] && objc_msgSend(settingsCopy, "SBUISA_trailingViewRenderingId") == 0;
      if (v101 || v103 || v97)
      {
        v96 = *MEMORY[0x277CBF3A8];
        v104 = v68;
        if (v68 != *MEMORY[0x277CBF3A8] || (v96 = *(MEMORY[0x277CBF3A8] + 8), v104 = v142, v142 != v96))
        {
          if ([sceneClientSettings SBUISA_trailingViewRenderingId] && objc_msgSend(sceneClientSettings, "SBUISA_contextId"))
          {
            [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_trailingWrapperView setContentView:self->_trailingView];
          }
        }
      }
    }

    if (self->_minimalWrapperView)
    {
      if (v79)
      {
        v96 = v146;
        v105 = v146 == *(MEMORY[0x277CBF3A8] + 8) && v145 == *MEMORY[0x277CBF3A8];
      }

      else
      {
        v105 = 0;
      }

      sBUISA_minimalViewRenderingId = [settingsCopy SBUISA_minimalViewRenderingId];
      v107 = sBUISA_minimalViewRenderingId != [sceneClientSettings SBUISA_minimalViewRenderingId] && objc_msgSend(settingsCopy, "SBUISA_minimalViewRenderingId") == 0;
      if (v105 || v107 || v97)
      {
        v108 = *MEMORY[0x277CBF3A8];
        v109 = v147;
        if (v147 != *MEMORY[0x277CBF3A8] || (v108 = *(MEMORY[0x277CBF3A8] + 8), v109 = v143, v143 != v108))
        {
          if ([sceneClientSettings SBUISA_minimalViewRenderingId] && objc_msgSend(sceneClientSettings, "SBUISA_contextId"))
          {
            [(SBSystemApertureSceneElementPlaceholderWrapperView *)self->_minimalWrapperView setContentView:self->_minimalView];
          }
        }
      }
    }

    sBUISA_backgroundActivitiesToSuppress = [settingsCopy SBUISA_backgroundActivitiesToSuppress];
    sBUISA_backgroundActivitiesToSuppress2 = [sceneClientSettings SBUISA_backgroundActivitiesToSuppress];
    v112 = BSEqualSets();

    if ((v112 & 1) == 0)
    {
      [(SBSystemApertureSceneElement *)self _acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded];
    }

    sBUISA_hasMenuPresentation = [settingsCopy SBUISA_hasMenuPresentation];
    if (sBUISA_hasMenuPresentation != [(SBSystemApertureSceneElement *)self isRequestingMenuPresentation])
    {
      [layoutHost menuPresentationRequestDidChangeForLayoutSpecifier:self];
    }

    v156 = layoutHost;
    sBUISA_preventsAutomaticDismissal = [settingsCopy SBUISA_preventsAutomaticDismissal];
    if (sBUISA_preventsAutomaticDismissal != [sceneClientSettings SBUISA_preventsAutomaticDismissal])
    {
      [(SBSystemApertureSceneElement *)self _updateAlertAssertionIfNecessary];
    }

    sBUISA_keyColor = [settingsCopy SBUISA_keyColor];
    sBUISA_keyColor2 = [sceneClientSettings SBUISA_keyColor];
    v117 = BSEqualObjects();

    if ((v117 & 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v163 = @"SBSystemApertureNotificationUserInfoElementKey";
      selfCopy = self;
      v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v163 count:1];
      [defaultCenter postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v119];
    }

    v120 = v149 & v148 ^ 1;
    actions = [v157 actions];
    v122 = [actions count];

    if (v122)
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      actions2 = [v157 actions];
      v124 = [actions2 countByEnumeratingWithState:&v158 objects:v162 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = 0;
        v127 = *v159;
        do
        {
          for (i = 0; i != v125; ++i)
          {
            if (*v159 != v127)
            {
              objc_enumerationMutation(actions2);
            }

            v129 = *(*(&v158 + 1) + 8 * i);
            if ([(SBSystemApertureSceneElement *)self _handleAction:v129])
            {
              if (v126)
              {
                [v126 addObject:v129];
              }

              else
              {
                v126 = [MEMORY[0x277CBEB58] setWithObject:v129];
              }
            }
          }

          v125 = [actions2 countByEnumeratingWithState:&v158 objects:v162 count:16];
        }

        while (v125);
      }

      else
      {
        v126 = 0;
      }

      if ([v126 count])
      {
        actions3 = [v157 actions];
        v131 = [actions3 mutableCopy];

        [v131 minusSet:v126];
        [v157 setActions:v131];
      }

      v120 = v149 & v148 ^ 1;
    }

    v132 = v150 | v120;
    sBUISA_secureFlipBookPreferredComponentStates = [settingsCopy SBUISA_secureFlipBookPreferredComponentStates];
    sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_secureFlipBookPreferredComponentStates2 = [sceneClientSettings2 SBUISA_secureFlipBookPreferredComponentStates];

    v136 = [sBUISA_secureFlipBookPreferredComponentStates isEqualToDictionary:sBUISA_secureFlipBookPreferredComponentStates2];
    sBUISA_secureFlipBookPreferredConfiguration = [settingsCopy SBUISA_secureFlipBookPreferredConfiguration];
    sceneClientSettings3 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_secureFlipBookPreferredConfiguration2 = [sceneClientSettings3 SBUISA_secureFlipBookPreferredConfiguration];

    v140 = [sBUISA_secureFlipBookPreferredConfiguration isEqualToString:sBUISA_secureFlipBookPreferredConfiguration2];
    if (!v136 || (v140 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_secureElementHost);
      [WeakRetained preferredRecordedStateDidInvalidateForLayoutSpecifier:self];

      [(SBSystemApertureSceneElement *)self _updateRequiredPriorityAssertion];
    }

    if ((v132 | [(SBSystemApertureSceneElement *)self _updateRequiresSuppressionFromSystemAperture]) == 1)
    {
      [v156 preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    }

    diffCopy = v152;
    _sceneCopy = v153;
    contextCopy = v157;
    v15 = v151;
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  [(SBSystemApertureSceneElement *)self _updateReadyForPresentationIfNeeded];

  [(SBSystemApertureSceneElement *)self _updatePortalViews];
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v6 = [(SBSystemApertureSceneElement *)self sceneInvalidationHandler:invalidate];
  [(SBSystemApertureSceneElement *)self setSceneInvalidationHandler:0];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, self);
    v5 = v6;
  }
}

- (BOOL)_supportsMenuPresentations
{
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v4;
}

- (BOOL)_handleAction:(id)action
{
  v34 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = objc_opt_class();
  v6 = actionCopy;
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

  layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
  elementHost = [(SBSystemApertureSceneElement *)self elementHost];
  if (!v8)
  {
    goto LABEL_48;
  }

  v11 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
    v13 = [v8 description];
    v30 = 138543618;
    v31 = succinctDescription;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received command %{public}@", &v30, 0x16u);
  }

  command = [v8 command];
  if (command > 5)
  {
    if (command <= 7)
    {
      if (command == 6)
      {
        if (![(SBSystemApertureSceneElement *)self _isValidAlertingSource:2])
        {
          goto LABEL_48;
        }

        selfCopy2 = self;
        v20 = 0;
      }

      else
      {
        if (![(SBSystemApertureSceneElement *)self _isValidAlertingSource:2])
        {
          goto LABEL_48;
        }

        selfCopy2 = self;
        v20 = 1;
      }

      [(SBSystemApertureSceneElement *)selfCopy2 _handleAlertingAssertionRequestForReason:@"Scene Element - Client SBUISystemApertureCommandRequest" implicitlyDismissable:v20];
      goto LABEL_48;
    }

    if (command == 8)
    {
      WeakRetained = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
      clientIdentifier = [(SBSystemApertureSceneElement *)self clientIdentifier];
      v26 = @"client requests disable automatic invalidation";
      v27 = WeakRetained;
      v28 = 0;
    }

    else
    {
      if (command != 9)
      {
        if (command == 10)
        {
          _existingAlertingAssertion = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
          [_existingAlertingAssertion resetAutomaticInvalidationTimer];
        }

        goto LABEL_48;
      }

      WeakRetained = [(SBSystemApertureSceneElement *)self _existingAlertingAssertion];
      clientIdentifier = [(SBSystemApertureSceneElement *)self clientIdentifier];
      v26 = @"client requests enable automatic invalidation";
      v27 = WeakRetained;
      v28 = 1;
    }

    [v27 setAutomaticallyInvalidatable:v28 lockingWithKey:clientIdentifier reason:v26];
LABEL_46:

    goto LABEL_47;
  }

  if (command <= 2)
  {
    if (command == 1)
    {
      preferredLayoutMode = [(SBSystemApertureSceneElement *)self preferredLayoutMode];
      layoutMode = [(SBSystemApertureSceneElement *)self layoutMode];
      v23 = [(SBSystemApertureSceneElement *)self _hasActivationAttribute:1];
      v24 = 0;
      if (preferredLayoutMode != layoutMode && !v23)
      {
        v24 = self->_initialPreferredLayoutMode != 0;
      }

      if (preferredLayoutMode != layoutMode && !v24)
      {
        if ([(SAAutomaticallyInvalidatable *)self->_alertingActivityAssertion isValid])
        {
          [(SAAutomaticallyInvalidatable *)self->_alertingActivityAssertion invalidateWithReason:@"requestTransitionToPreferredLayoutMode"];
        }

        else
        {
          [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
        }
      }
    }

    else if (command == 2)
    {
      [elementHost elementRequestsNegativeResponse:self];
    }

    goto LABEL_48;
  }

  if (command == 3)
  {
    WeakRetained = [(SBSystemApertureSceneElement *)self clientInvalidationRequestHandler];
    [(SBSystemApertureSceneElement *)self setClientInvalidationRequestHandler:0];
    if (WeakRetained)
    {
      (WeakRetained)[2](WeakRetained, self);
LABEL_47:

      goto LABEL_48;
    }

    clientIdentifier = SBLogSystemApertureHosting();
    if (os_log_type_enabled(clientIdentifier, OS_LOG_TYPE_ERROR))
    {
      [SBSystemApertureSceneElement _handleAction:clientIdentifier];
    }

    goto LABEL_46;
  }

  if (command != 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_gestureHandler);
    if (objc_opt_respondsToSelector())
    {
      v16 = SBLogSystemApertureHosting();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription2 = [(SBSystemApertureSceneElement *)self succinctDescription];
        v30 = 138543362;
        v31 = succinctDescription2;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Requesting cancellation of resize gesture for %{public}@.", &v30, 0xCu);
      }

      [WeakRetained elementRequestsCancellingResizeGesture:self];
    }

    goto LABEL_47;
  }

  if ([(SBSystemApertureSceneElement *)self layoutMode]== 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [elementHost elementRequestsSignificantUpdateTransition:self];
    [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    WeakRetained = [objc_alloc(MEMORY[0x277D67E30]) initWithCommand:5];
    [(SBSystemApertureSceneElement *)self _handleAction:WeakRetained];
    goto LABEL_47;
  }

LABEL_48:

  return v8 != 0;
}

- (BOOL)_ownsScene
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  workspaceIdentifier = [scene workspaceIdentifier];
  sceneWorkspaceIdentifier = [objc_opt_class() sceneWorkspaceIdentifier];
  v5 = [workspaceIdentifier isEqualToString:sceneWorkspaceIdentifier];

  return v5;
}

- (CGRect)_obstructedAreaFrame
{
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [mEMORY[0x277D67E28] sensorRegionSize];

  [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  SBRectWithSize();
  UIRectCenteredXInRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  window = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  [fixedCoordinateSpace convertRect:self->_sceneView fromCoordinateSpace:{v5, v7, v9, v11}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  systemApertureCustomLayout = [(SBSystemApertureSceneElement *)self systemApertureCustomLayout];
  if ((systemApertureCustomLayout | 2) == 3)
  {
    v30 = systemApertureCustomLayout;
    mEMORY[0x277D67E28]2 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    [mEMORY[0x277D67E28]2 minimumScreenEdgeInsets];
    v33 = v32;
    v71.origin.x = v22;
    v71.origin.y = v24;
    v71.size.width = v26;
    v71.size.height = v28;
    v34 = v33 - CGRectGetMinY(v71);

    v35 = fmax(v34, 0.0);
    if (v30 == 1 && (![(SBSystemApertureSceneElement *)self obstructionEdge]|| [(SBSystemApertureSceneElement *)self obstructionEdge]== 2))
    {
      superview = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView superview];
      superview2 = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView superview];
      [superview2 bounds];
      [superview convertRect:self->_sceneView toView:?];
      rect_24 = v39;
      v69 = v38;
      rect_8 = v41;
      rect_16 = v40;

      superview3 = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView superview];
      superview4 = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView superview];
      [superview4 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      window2 = [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView window];
      [superview3 convertRect:window2 toView:{v45, v47, v49, v51}];
      rect = v53;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      if ([(SBSystemApertureSceneElement *)self obstructionEdge])
      {
        v72.origin.y = rect_24;
        v72.origin.x = v69;
        v72.size.height = rect_8;
        v72.size.width = rect_16;
        CGRectGetMaxX(v72);
        v73.origin.x = v13;
        v73.origin.y = v35;
        v73.size.width = v15;
        v73.size.height = v17;
        CGRectGetMinY(v73);
        v74.origin.x = v13;
        v74.origin.y = v35;
        v74.size.width = v17;
        v74.size.height = v15;
        CGRectGetWidth(v74);
      }

      else
      {
        v76.origin.y = rect_24;
        v76.origin.x = v69;
        v76.size.height = rect_8;
        v76.size.width = rect_16;
        CGRectGetMinX(v76);
      }

      mEMORY[0x277D67E28]3 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
      [mEMORY[0x277D67E28]3 interSensorRegionInWindowSpace];
      v75.origin.x = rect;
      v75.origin.y = v55;
      v75.size.width = v57;
      v75.size.height = v59;
      CGRectGetMinY(v75);

      v77.origin.y = rect_24;
      v77.origin.x = v69;
      v77.size.height = rect_8;
      v77.size.width = rect_16;
      CGRectGetMidY(v77);
      v78.origin.x = v13;
      v78.origin.y = v35;
      v78.size.width = v15;
      v78.size.height = v17;
      CGRectGetWidth(v78);
    }
  }

  UIRectRoundToScale();
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (BOOL)hasAlertBehavior
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_contentRole = [sceneClientSettings SBUISA_contentRole];

  if (!sBUISA_contentRole)
  {
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    sBUISA_contentRole = [WeakRetained contentRole];
  }

  return sBUISA_contentRole == 1;
}

- (void)setAlertHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  if (WeakRetained != hostCopy)
  {
    objc_storeWeak(&self->_alertHost, hostCopy);
    if (hostCopy)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __45__SBSystemApertureSceneElement_setAlertHost___block_invoke;
      v14 = &unk_2783A8C68;
      objc_copyWeak(&v15, &location);
      v6 = MEMORY[0x223D6F7F0](&v11);
      v7 = v6;
      if (self->_scene)
      {
        v6[2](v6);
      }

      else
      {
        deferredSceneActions = self->_deferredSceneActions;
        v9 = [v6 copy];
        v10 = MEMORY[0x223D6F7F0]();
        [(NSMutableArray *)deferredSceneActions addObject:v10];
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __45__SBSystemApertureSceneElement_setAlertHost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[20];
    v3 = MEMORY[0x277CBEB98];
    v6 = WeakRetained;
    v4 = [objc_alloc(MEMORY[0x277D67E30]) initWithCommand:12];
    v5 = [v3 setWithObject:v4];
    [v2 sendActions:v5];

    [v6 _updateAlertAssertionIfNecessary];
    WeakRetained = v6;
  }
}

- (BOOL)hasActivityBehavior
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_contentRole = [sceneClientSettings SBUISA_contentRole];

  if (!sBUISA_contentRole)
  {
    WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
    sBUISA_contentRole = [WeakRetained contentRole];
  }

  return sBUISA_contentRole == 2;
}

- (void)setActivityHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);

  if (WeakRetained != hostCopy)
  {
    objc_storeWeak(&self->_activityHost, hostCopy);
    if (hostCopy)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __48__SBSystemApertureSceneElement_setActivityHost___block_invoke;
      v14 = &unk_2783A8C68;
      objc_copyWeak(&v15, &location);
      v6 = MEMORY[0x223D6F7F0](&v11);
      v7 = v6;
      if (self->_scene)
      {
        v6[2](v6);
      }

      else
      {
        deferredSceneActions = self->_deferredSceneActions;
        v9 = [v6 copy];
        v10 = MEMORY[0x223D6F7F0]();
        [(NSMutableArray *)deferredSceneActions addObject:v10];
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __48__SBSystemApertureSceneElement_setActivityHost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[20];
    v3 = MEMORY[0x277CBEB98];
    v6 = WeakRetained;
    v4 = [objc_alloc(MEMORY[0x277D67E30]) initWithCommand:12];
    v5 = [v3 setWithObject:v4];
    [v2 sendActions:v5];

    [v6 _updateAlertAssertionIfNecessary];
    WeakRetained = v6;
  }
}

- (CGRect)_frameInSceneContainerForView:(id)view
{
  viewCopy = view;
  [(SBSystemApertureSceneElementAccessoryView *)viewCopy bounds];
  [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView convertRect:viewCopy fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  leadingView = [(SBSystemApertureSceneElement *)self leadingView];
  if (leadingView == viewCopy || self->_minimalView == viewCopy && [(SBSystemApertureSceneElement *)self layoutAxis]== 1)
  {

LABEL_6:
    [(SBSystemApertureSceneElement *)self _obstructedAreaFrame];
    UIRectGetCenter();
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    CGRectGetHeight(v20);
    UIRoundToViewScale();
    v8 = v15;
    goto LABEL_7;
  }

  trailingView = [(SBSystemApertureSceneElement *)self trailingView];

  if (trailingView == viewCopy)
  {
    goto LABEL_6;
  }

LABEL_7:

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  self->_wantsLayoutPassForClientUpdate = 0;
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  v10 = [sceneSettings SBUISA_layoutMode] > 1 || -[SBSystemApertureSceneElement layoutMode](self, "layoutMode") < 1;

  v11 = [(SBSystemApertureSceneElement *)self _hasPresentationBehavior:64];
  if (!v10 && v11)
  {
    v12 = +[SBLockScreenManager sharedInstance];
    v13 = v12;
    if (self->_clientIdentifier)
    {
      clientIdentifier = self->_clientIdentifier;
    }

    else
    {
      clientIdentifier = @"<unknown client ID>";
    }

    [v12 requestUserAttentionScreenWakeFromSource:35 reason:clientIdentifier];
  }

  v15 = MEMORY[0x277D75D18];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v41[3] = &unk_2783A92D8;
  v41[4] = self;
  v16 = viewCopy;
  v42 = v16;
  [v15 _performWithoutRetargetingAnimations:v41];
  [(SBSystemApertureSceneElement *)self _frameInSceneContainerForView:v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([(SBSystemApertureSceneElement *)self wantsSpecialFlowerBoundsResizingAnimationForWallet])
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    v26 = [sceneClientSettings SBUISA_appliedLayoutMode] == 4;
  }

  else
  {
    v26 = 0;
  }

  sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  if ([sceneClientSettings2 SBUISA_appliedLayoutMode] == 3)
  {
    sceneSettings2 = [(SBSystemApertureSceneElement *)self sceneSettings];
    v29 = [sceneSettings2 SBUISA_layoutMode] == 3 && -[SBSystemApertureSceneElement layoutMode](self, "layoutMode") == 2;
  }

  else
  {
    v29 = 0;
  }

  hasCompletedInitialPresentation = [(SBSystemApertureSceneElement *)self hasCompletedInitialPresentation];
  if (objc_opt_respondsToSelector())
  {
    v31 = [coordinatorCopy isPerformingSystemApertureCustomContentTransition] ^ 1 | (v26 || hasCompletedInitialPresentation && v29);
  }

  else
  {
    v31 = 1;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v34[3] = &unk_2783C2AA0;
  v34[4] = self;
  v35 = v16;
  v40 = v31 & 1;
  v36 = v18;
  v37 = v20;
  v38 = v22;
  v39 = v24;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_244;
  v33[3] = &unk_2783A9488;
  v33[4] = self;
  v32 = v16;
  [coordinatorCopy animateAlongsideTransition:v34 completion:v33];
}

uint64_t __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupSceneViewInContainerView:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _layoutSceneViewInContainerView:v3];
}

void __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v35[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _layoutSceneViewInContainerView:*(a1 + 40)];
  [*(a1 + 32) _frameInSceneContainerForView:*(a1 + 40)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) _clientLayoutModeForLayoutMode:{objc_msgSend(*(a1 + 32), "layoutMode")}] + 1;
  if (v10 > 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_21F8A8840[v10];
  }

  v12 = [*(a1 + 32) _proposeTransitionParametersForTransitionToFrameInSceneView:v11 excludingParametersAssociatedWithReasons:*(a1 + 80) usingCurrentAnimationParameters:{v3, v5, v7, v9}];
  v13 = [*(a1 + 32) _updateReasonsForTransitionWithProposedParameters:v12 excludingReasons:v11];
  v14 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) succinctDescription];
    v16 = *(a1 + 64);
    v31[0] = *(a1 + 48);
    v31[1] = v16;
    v17 = [MEMORY[0x277CCAE60] valueWithBytes:v31 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *v30 = v3;
    *&v30[1] = v5;
    *&v30[2] = v7;
    *&v30[3] = v9;
    v18 = [MEMORY[0x277CCAE60] valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v19 = v18;
    if (v13)
    {
      v27 = v18;
      v28 = v17;
      v29 = v15;
      v20 = [MEMORY[0x277CBEB18] array];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __SBSystemApertureSceneUpdateReasonsDescription_block_invoke;
      v34 = &unk_2783A95A0;
      v21 = v20;
      v35[0] = v21;
      v22 = buf;
      v23 = 0;
      v32 = 0;
      v24 = vcnt_s8(v13);
      v24.i16[0] = vaddlv_u8(v24);
      v25 = v24.i32[0];
      do
      {
        if (((1 << v23) & *&v13) != 0)
        {
          (*&buf[16])(v22);
          if (v32)
          {
            break;
          }

          --v25;
        }

        if (v23 > 0x3E)
        {
          break;
        }

        ++v23;
      }

      while (v25 > 0);

      v26 = [v21 componentsJoinedByString:{@", "}];

      v17 = v28;
      v15 = v29;
      v19 = v27;
    }

    else
    {
      v26 = @"none";
    }

    *buf = 138544130;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v34 = v19;
    LOWORD(v35[0]) = 2112;
    *(v35 + 2) = v26;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition from %@ to %@ -- Applying because parameters needed updates for reason %@", buf, 0x2Au);
  }

  [*(a1 + 32) _applyTransitionParameters:v12];
}

void __106__SBSystemApertureSceneElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_244(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];
  v3 = [v2 clientSettings];
  v4 = [v3 SBUISA_appliedLayoutMode];

  if (v4 >= 2)
  {
    v5 = *(a1 + 32);

    [v5 setHasCompletedInitialPresentation:1];
  }
}

- (void)_setupSceneViewInContainerView:(id)view
{
  viewCopy = view;
  if (!self->_sceneView)
  {
    v5 = objc_alloc(MEMORY[0x277D67990]);
    [(SBSystemApertureSceneElement *)self _frameForSceneViewInContainerView:viewCopy];
    v6 = [v5 initWithFrame:?];
    sceneView = self->_sceneView;
    self->_sceneView = v6;

    [(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView setAutoresizingMask:5];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __63__SBSystemApertureSceneElement__setupSceneViewInContainerView___block_invoke;
    v16 = &unk_2783A8C68;
    objc_copyWeak(&v17, &location);
    v8 = MEMORY[0x223D6F7F0](&v13);
    v9 = [(SBSystemApertureSceneElement *)self scene:v13];

    if (v9)
    {
      v8[2](v8);
    }

    else
    {
      deferredSceneActions = self->_deferredSceneActions;
      v11 = [v8 copy];
      v12 = MEMORY[0x223D6F7F0]();
      [(NSMutableArray *)deferredSceneActions addObject:v12];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  if (viewCopy && ([(SBSystemApertureSceneElementScenePresenterView *)self->_sceneView isDescendantOfView:viewCopy]& 1) == 0)
  {
    [viewCopy insertSubview:self->_sceneView atIndex:0];
  }
}

void __63__SBSystemApertureSceneElement__setupSceneViewInContainerView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[29];
    v4 = WeakRetained;
    v3 = [WeakRetained scene];
    [v2 setScene:v3];

    WeakRetained = v4;
  }
}

- (void)_layoutSceneViewInContainerView:(id)view
{
  viewCopy = view;
  sceneView = [(SBSystemApertureSceneElement *)self sceneView];
  [(SBSystemApertureSceneElement *)self _frameForSceneViewInContainerView:viewCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [sceneView setFrame:{v6, v8, v10, v12}];
}

- (CGRect)_frameForSceneViewInContainerView:(id)view
{
  viewCopy = view;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  [(SBSystemApertureSceneElement *)self _sizeForSceneView];
  v8 = v7;
  v10 = v9;
  if (viewCopy)
  {
    [viewCopy bounds];
    UIRectCenteredIntegralRectScale();
    v5 = v11;
    v8 = v12;
    v10 = v13;
    v6 = 0.0;
  }

  v14 = v5;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)_sizeForSceneView
{
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  if ([(SBSystemApertureSceneElement *)self _supportsMenuPresentations])
  {
    [mEMORY[0x277D67E28] maximumPossibleSizeWhilePresentingMenu];
  }

  else
  {
    [mEMORY[0x277D67E28] maximumExpandedSize];
  }

  v6 = v4;
  v7 = v5;
  if (![(SBSystemApertureSceneElement *)self _supportsMenuPresentations])
  {
    v7 = v7 * 1.2;
  }

  configuration = self->_configuration;
  if (configuration)
  {
    [(SBSystemApertureSceneElementConfiguration *)configuration maximumHeight];
    if (v9 != *MEMORY[0x277D77260])
    {
      [(SBSystemApertureSceneElementConfiguration *)self->_configuration maximumHeight];
      v7 = v10;
    }
  }

  v11 = v6;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (unint64_t)_updateReasonsForTransitionWithProposedParameters:(id)parameters excludingReasons:(unint64_t)reasons
{
  parametersCopy = parameters;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  otherSystemApertureSceneSettingsToApply = [parametersCopy otherSystemApertureSceneSettingsToApply];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __99__SBSystemApertureSceneElement__updateReasonsForTransitionWithProposedParameters_excludingReasons___block_invoke;
  v34[3] = &unk_2783C2AC8;
  v34[4] = &v35;
  v9 = MEMORY[0x223D6F7F0](v34);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__SBSystemApertureSceneElement__updateReasonsForTransitionWithProposedParameters_excludingReasons___block_invoke_2;
  v30[3] = &unk_2783C2AF0;
  v10 = v9;
  v33 = v10;
  v11 = otherSystemApertureSceneSettingsToApply;
  v31 = v11;
  v12 = sceneSettings;
  v32 = v12;
  v13 = MEMORY[0x223D6F7F0](v30);
  (*(v10 + 2))(v10, 128, [v12 isForeground] ^ objc_msgSend(parametersCopy, "wantsForeground"));
  settings = [v11 objectForSetting:3213016];
  if (settings)
  {
    v4 = [v11 objectForSetting:3213016];
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    v16 = unsignedIntegerValue != [v12 SBUISA_minimalViewLayoutAxis];
  }

  else
  {
    v16 = 0;
  }

  (*(v10 + 2))(v10, 256, v16);
  if (settings)
  {
  }

  v13[2](v13, 2, 3213010);
  if (reasons)
  {
    v23 = 0;
  }

  else
  {
    [(SBSystemApertureSceneElement *)self _sizeForSceneView];
    v18 = v17;
    v20 = v19;
    self = [(SBSystemApertureSceneElement *)self scene];
    settings = [(SBSystemApertureSceneElement *)self settings];
    [settings frame];
    v23 = v20 != v22 || v18 != v21;
  }

  (*(v10 + 2))(v10, 1, v23);
  if ((reasons & 1) == 0)
  {
  }

  v13[2](v13, 4, 3213012);
  v13[2](v13, 8, 3213011);
  v13[2](v13, 16, 3213013);
  v13[2](v13, 512, 3213014);
  v13[2](v13, 32, 3213015);
  v24 = [v11 objectForSetting:3213009];
  if (v24)
  {
    sBUISA_layoutMode = [v12 SBUISA_layoutMode];
    v26 = sBUISA_layoutMode != [v11 SBUISA_layoutModeforSetting:3213009];
  }

  else
  {
    v26 = 0;
  }

  (*(v10 + 2))(v10, 64, v26);

  v27 = v36[3];
  _Block_object_dispose(&v35, 8);

  return v27 & ~reasons;
}

uint64_t __99__SBSystemApertureSceneElement__updateReasonsForTransitionWithProposedParameters_excludingReasons___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) |= a2;
  }

  return result;
}

void __99__SBSystemApertureSceneElement__updateReasonsForTransitionWithProposedParameters_excludingReasons___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v9 = [*(a1 + 32) objectForSetting:?];
  if (v9)
  {
    [*(a1 + 32) SBUISA_CGRectforSetting:a3];
    v7 = [*(a1 + 40) otherSettings];
    [v7 SBUISA_CGRectforSetting:a3];
    v8 = SBFRectApproximatelyEqualToRect();
    (*(v6 + 16))(v6, a2, v8 ^ 1u);
  }

  else
  {
    (*(v6 + 16))(v6, a2, 0);
  }
}

- (id)_proposeTransitionParametersForTransitionToFrameInSceneView:(CGRect)view excludingParametersAssociatedWithReasons:(unint64_t)reasons usingCurrentAnimationParameters:(BOOL)parameters
{
  reasonsCopy = reasons;
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  v12 = objc_alloc_init(SBSystemApertureSceneElementTransitionParameters);
  if ((reasonsCopy & 0x40) != 0)
  {
    if ((reasonsCopy & 0x80) != 0)
    {
      goto LABEL_9;
    }

    v16 = 0;
    goto LABEL_7;
  }

  v13 = [(SBSystemApertureSceneElement *)self _clientLayoutModeForLayoutMode:[(SBSystemApertureSceneElement *)self layoutMode]];
  sceneSettings = [(SBSystemApertureSceneElement *)self sceneSettings];
  sBUISA_layoutMode = [sceneSettings SBUISA_layoutMode];
  v16 = v13 != sBUISA_layoutMode;

  if ((reasonsCopy & 0x80) == 0)
  {
LABEL_7:
    _requiresForegroundScene = [(SBSystemApertureSceneElement *)self _requiresForegroundScene];
    sceneSettings2 = [(SBSystemApertureSceneElement *)self sceneSettings];
    v20 = _requiresForegroundScene ^ [sceneSettings2 isForeground];

    if (v16 || (v20 & 1) != 0)
    {
      v17 = reasonsCopy & 0xFF1E;
      if (v20)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_9:
    v17 = reasonsCopy;
    goto LABEL_13;
  }

  if (v13 == sBUISA_layoutMode)
  {
    goto LABEL_9;
  }

  v17 = reasonsCopy & 0xFF1E;
LABEL_11:
  if ([(SBSystemApertureSceneElement *)self _requiresForegroundScene])
  {
    v17 = reasonsCopy & 0xFB1E;
  }

LABEL_13:
  if ((v17 & 0x40) != 0 || !parameters)
  {
    v21 = [objc_alloc(MEMORY[0x277D67DC0]) initWithFluidBehaviorSettings:0 tracking:0 retargeted:0];
  }

  else
  {
    v21 = +[SBSystemApertureFluidAnimator currentAnimationParameters];
  }

  v22 = v21;
  if ((v17 & 0x400) != 0)
  {
    transitionContext = 0;
  }

  else
  {
    transitionContext = [MEMORY[0x277D75188] transitionContext];
  }

  sceneSettings3 = [(SBSystemApertureSceneElement *)self sceneSettings];
  if ([sceneSettings3 SBUISA_layoutMode] != 4)
  {

    goto LABEL_26;
  }

  v25 = [(SBSystemApertureSceneElement *)self _clientLayoutModeForLayoutMode:[(SBSystemApertureSceneElement *)self layoutMode]];

  if ((v17 & 0x400) != 0 || parameters || v25 >= 4)
  {
LABEL_26:
    clientIdentifier = [(SBSystemApertureSceneElement *)self clientIdentifier];
    v27 = [clientIdentifier isEqualToString:@"com.apple.ShortcutsUI"];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  _synchronizedDrawingFence = [MEMORY[0x277D75940] _synchronizedDrawingFence];
  [transitionContext setAnimationFence:_synchronizedDrawingFence];

LABEL_28:
  if ([(SBSystemApertureSceneElement *)self mostRecentLayoutModeChangeReason]== 3)
  {
    [MEMORY[0x277D67E38] userInitiatedSceneResizeActionWithAnimationParameters:v22];
  }

  else
  {
    [MEMORY[0x277D67E38] sceneResizeActionWithAnimationParameters:v22];
  }
  v29 = ;
  v30 = [MEMORY[0x277CBEB98] setWithObject:v29];
  [transitionContext setActions:v30];

  [(SBSystemApertureSceneElementTransitionParameters *)v12 setTransitionContext:transitionContext];
  v31 = objc_alloc_init(MEMORY[0x277CF0C80]);
  if ((v17 & 0x40) != 0)
  {
    if ((v17 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    [v31 SBUISA_setLayoutMode:-[SBSystemApertureSceneElement _clientLayoutModeForLayoutMode:](self forSetting:{"_clientLayoutModeForLayoutMode:", -[SBSystemApertureSceneElement layoutMode](self, "layoutMode")), 3213009}];
    if ((v17 & 0x10) != 0)
    {
LABEL_33:
      if ((v17 & 0x200) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }
  }

  [(SBSystemApertureSceneElement *)self _frameInSceneContainerForView:self->_minimalView];
  [v31 SBUISA_setCGRect:3213013 forSetting:?];
  if ((v17 & 0x200) != 0)
  {
LABEL_34:
    if ((v17 & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_47:
  [(SBSystemApertureSceneElement *)self _frameInSceneContainerForView:self->_detachedMinimalView];
  [v31 SBUISA_setCGRect:3213014 forSetting:?];
  if ((v17 & 8) != 0)
  {
LABEL_35:
    if ((v17 & 4) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_49;
  }

LABEL_48:
  leadingView = [(SBSystemApertureSceneElement *)self leadingView];
  [(SBSystemApertureSceneElement *)self _frameInSceneContainerForView:leadingView];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v31 SBUISA_setCGRect:3213011 forSetting:{v36, v38, v40, v42}];
  if ((v17 & 4) != 0)
  {
LABEL_36:
    if ((v17 & 2) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_49:
  trailingView = [(SBSystemApertureSceneElement *)self trailingView];
  [(SBSystemApertureSceneElement *)self _frameInSceneContainerForView:trailingView];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v31 SBUISA_setCGRect:3213012 forSetting:{v45, v47, v49, v51}];
  if ((v17 & 2) != 0)
  {
LABEL_37:
    if (v17)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v31 SBUISA_setCGRect:3213010 forSetting:{x, y, width, height}];
  if (v17)
  {
LABEL_38:
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  sceneView = [(SBSystemApertureSceneElement *)self sceneView];
  [sceneView frame];
  v54 = v53;
  v56 = v55;

  [(SBSystemApertureSceneElementTransitionParameters *)v12 setSceneSize:v54, v56];
  if ((v17 & 0x80) != 0)
  {
LABEL_39:
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  [(SBSystemApertureSceneElementTransitionParameters *)v12 setWantsForeground:[(SBSystemApertureSceneElement *)self _requiresForegroundScene]];
  [(SBSystemApertureSceneElementTransitionParameters *)v12 setShouldSetForeground:1];
  if ((v17 & 0x20) != 0)
  {
LABEL_40:
    if ((v17 & 0x100) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_53:
  [(SBSystemApertureSceneElement *)self _obstructedAreaFrame];
  [v31 SBUISA_setCGRect:3213015 forSetting:?];
  if ((v17 & 0x100) == 0)
  {
LABEL_41:
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBSystemApertureSceneElement layoutAxis](self, "layoutAxis")}];
    [v31 setObject:v32 forSetting:3213016];
  }

LABEL_42:
  [(SBSystemApertureSceneElementTransitionParameters *)v12 setOtherSystemApertureSceneSettingsToApply:v31];

  return v12;
}

- (void)_applyTransitionParameters:(id)parameters
{
  transitionRequestHandler = self->_transitionRequestHandler;
  if (transitionRequestHandler)
  {
    transitionRequestHandler[2](transitionRequestHandler, self, parameters);
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  trailing = outsets.trailing;
  bottom = outsets.bottom;
  leading = outsets.leading;
  top = outsets.top;
  v11 = [(SBSystemApertureSceneElement *)self sceneClientSettings:outsets.top];
  v12 = v11;
  if (mode == 3)
  {
    [v11 SBUISA_customLayoutPreferredOutsetsFromUnsafeArea];
    top = v24;
    leading = v25;
    bottom = v26;
    trailing = v27;
  }

  else if (mode == 2)
  {
    sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
    sBUISA_specifiesPreferredPaddingForCompactLayout = [sceneClientSettings SBUISA_specifiesPreferredPaddingForCompactLayout];

    if (sBUISA_specifiesPreferredPaddingForCompactLayout)
    {
      sceneClientSettings2 = [(SBSystemApertureSceneElement *)self sceneClientSettings];
      [sceneClientSettings2 SBUISA_preferredPaddingForCompactLayout];
      v17 = v16;
      v19 = v18;

      [v12 SBUISA_preferredLeadingViewSize];
      v21 = v17 + v20;
      [v12 SBUISA_preferredTrailingViewSize];
      v23 = v19 + v22;
      leading = -v21;
      trailing = -v23;
    }
  }

  v28 = top;
  v29 = leading;
  v30 = bottom;
  v31 = trailing;
  result.trailing = v31;
  result.bottom = v30;
  result.leading = v29;
  result.top = v28;
  return result;
}

- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);
  if (mode != 1 || self->_minimalView != viewCopy)
  {
    leadingView = [(SBSystemApertureSceneElement *)self leadingView];

    if (leadingView == viewCopy)
    {
      leadingView2 = [WeakRetained leadingView];
      if (leadingView2 != viewCopy)
      {
        [sceneClientSettings SBUISA_preferredLeadingViewSize];
LABEL_13:
        v14 = v17;
        v15 = v18;

        goto LABEL_16;
      }
    }

    else
    {
      trailingView = [(SBSystemApertureSceneElement *)self trailingView];

      if (trailingView != viewCopy)
      {
        if (self->_detachedMinimalView != viewCopy)
        {
          v14 = *MEMORY[0x277CBF3A8];
          v15 = *(MEMORY[0x277CBF3A8] + 8);
          goto LABEL_16;
        }

        [sceneClientSettings SBUISA_preferredDetachedMinimalViewSize];
        goto LABEL_15;
      }

      leadingView2 = [WeakRetained trailingView];
      if (leadingView2 != viewCopy)
      {
        [sceneClientSettings SBUISA_preferredTrailingViewSize];
        goto LABEL_13;
      }
    }

    [(SBSystemApertureSceneElementAccessoryView *)viewCopy sizeThatFits:width, height];
    goto LABEL_13;
  }

  [sceneClientSettings SBUISA_preferredMinimalViewSize];
LABEL_15:
  v14 = v19;
  v15 = v20;
LABEL_16:
  v21 = fmax(v14, 0.0);
  v22 = fmax(v15, 0.0);
  if (v21 < width)
  {
    width = v21;
  }

  if (v22 < height)
  {
    height = v22;
  }

  v23 = width;
  v24 = height;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)_updateSceneWithTransitionParameters:(id)parameters
{
  parametersCopy = parameters;
  scene = self->_scene;
  if ([parametersCopy wantsForeground])
  {
    shouldSetForeground = [parametersCopy shouldSetForeground];
  }

  else
  {
    shouldSetForeground = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SBSystemApertureSceneElement__updateSceneWithTransitionParameters___block_invoke;
  v8[3] = &unk_2783C2B18;
  v8[4] = self;
  v9 = parametersCopy;
  v7 = parametersCopy;
  [(SBSystemApertureSceneElement *)self _updateScene:scene activatingIfNeeded:shouldSetForeground settingsWithTransitionBlock:v8];
}

uint64_t __69__SBSystemApertureSceneElement__updateSceneWithTransitionParameters___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateMutableSceneSettings:a2 withParameters:*(a1 + 40)];
  v3 = *(a1 + 40);

  return [v3 transitionContext];
}

- (void)_updateScene:(id)scene activatingIfNeeded:(BOOL)needed settingsWithTransitionBlock:(id)block
{
  neededCopy = needed;
  v28 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  blockCopy = block;
  allowsSceneReactivation = [(SBSystemApertureSceneElementConfiguration *)self->_configuration allowsSceneReactivation];
  isActive = [sceneCopy isActive];
  v12 = isActive;
  if (!allowsSceneReactivation)
  {
    if (!isActive)
    {
      goto LABEL_10;
    }

LABEL_9:
    [sceneCopy updateSettingsWithTransitionBlock:blockCopy];
    goto LABEL_13;
  }

  if ([sceneCopy isActive])
  {
    goto LABEL_9;
  }

  if ((v12 & 1) == 0 && neededCopy)
  {
    v13 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBSystemApertureSceneElement *)self succinctDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Activating scene because it's foreground and isn't active and client allows it", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__123;
    v26 = __Block_byref_object_dispose__124;
    v27 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __92__SBSystemApertureSceneElement__updateScene_activatingIfNeeded_settingsWithTransitionBlock___block_invoke;
    v20 = &unk_2783C2B68;
    p_buf = &buf;
    v21 = blockCopy;
    [sceneCopy configureParameters:&v17];
    [sceneCopy activateWithTransitionContext:{*(*(&buf + 1) + 40), v17, v18, v19, v20}];

    _Block_object_dispose(&buf, 8);
    goto LABEL_13;
  }

LABEL_10:
  v15 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription2 = [(SBSystemApertureSceneElement *)self succinctDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = succinctDescription2;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping scene settings update because it's not active and client doesn't allow us to", &buf, 0xCu);
  }

LABEL_13:
}

void __92__SBSystemApertureSceneElement__updateScene_activatingIfNeeded_settingsWithTransitionBlock___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__SBSystemApertureSceneElement__updateScene_activatingIfNeeded_settingsWithTransitionBlock___block_invoke_2;
  v5[3] = &unk_2783C2B40;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 updateSettingsWithBlock:v5];
}

void __92__SBSystemApertureSceneElement__updateScene_activatingIfNeeded_settingsWithTransitionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateMutableSceneSettings:(id)settings withParameters:(id)parameters
{
  settingsCopy = settings;
  parametersCopy = parameters;
  if ([parametersCopy shouldSetForeground])
  {
    [settingsCopy setForeground:{objc_msgSend(parametersCopy, "wantsForeground")}];
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    [parametersCopy sceneSize];
    [settingsCopy setFrame:{v6, v7, v8, v9}];
    [settingsCopy setInterfaceOrientation:1];
  }

  otherSettings = [settingsCopy otherSettings];
  v11 = objc_opt_class();
  v12 = otherSettings;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  otherSystemApertureSceneSettingsToApply = [parametersCopy otherSystemApertureSceneSettingsToApply];
  [v14 applySettings:otherSystemApertureSceneSettingsToApply];
}

- (void)_updateReadyForPresentationIfNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "*** Client SPI Misuse: Invalid attempt to post two elements in jindo with the same elementIdentifier, << %{public}@ >> ***", &v2, 0xCu);
}

uint64_t __67__SBSystemApertureSceneElement__updateReadyForPresentationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _hasActivationAttribute:16] && (objc_msgSend(v3, "isDeactivating") & 1) == 0)
  {
    v5 = [v3 placeholderContentProvider];
    v6 = [*(a1 + 32) placeholderContentProvider];
    if (v5 == v6)
    {
      v4 = SAElementIdentityEqualToIdentity();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldSuppressBackgroundActivities
{
  if ([(SBSystemApertureSceneElement *)self isSuppressedByProximityReader])
  {
    elementIdentifier = [(SBSystemApertureSceneElement *)self elementIdentifier];
    v4 = [elementIdentifier isEqual:*MEMORY[0x277D67FD0]] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  if ([(SBSystemApertureSceneElement *)self isActivated])
  {
    layoutHost = [(SBSystemApertureSceneElement *)self layoutHost];
    v6 = (layoutHost != 0) & v4;
  }

  else
  {
    v6 = 0;
  }

  if ([(SBSystemApertureSceneElement *)self _isPresentedAsBannerInsteadOfSystemAperture])
  {
    return [(SBSystemApertureSceneElement *)self elementAppearState]!= 0 && v6;
  }

  return v6;
}

- (void)_acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded
{
  if ([(SBSystemApertureSceneElement *)self _shouldSuppressBackgroundActivities])
  {
    representedBackgroundActivityIdentifiers = [(SBSystemApertureSceneElement *)self representedBackgroundActivityIdentifiers];
  }

  else
  {
    representedBackgroundActivityIdentifiers = 0;
  }

  v11 = representedBackgroundActivityIdentifiers;
  if ([representedBackgroundActivityIdentifiers count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBarBackgroundActivitiesSuppresser);
    v5 = MEMORY[0x277CCACA8];
    clientHandle = [(FBScene *)self->_scene clientHandle];
    bundleIdentifier = [clientHandle bundleIdentifier];
    v8 = [v5 stringWithFormat:@"%@", bundleIdentifier];
    v9 = [WeakRetained acquireSuppressionAssertionForBackgroundActivities:v11 reason:v8];
  }

  else
  {
    v9 = 0;
  }

  statusBarStyleOverridesSuppressionAssertion = [(SBSystemApertureSceneElement *)self statusBarStyleOverridesSuppressionAssertion];
  [statusBarStyleOverridesSuppressionAssertion invalidate];

  [(SBSystemApertureSceneElement *)self setStatusBarStyleOverridesSuppressionAssertion:v9];
}

- (void)_updateAlertAssertionIfNecessary
{
  if ([(SBSystemApertureSceneElement *)self hasAlertBehavior])
  {
    WeakRetained = objc_loadWeakRetained(&self->_alertHost);
    [WeakRetained alertAssertion];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityHost);
    [WeakRetained alertingActivityAssertion];
  }
  v7 = ;

  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_preventsAutomaticDismissal = [sceneClientSettings SBUISA_preventsAutomaticDismissal];

  if (sBUISA_preventsAutomaticDismissal)
  {
    clientIdentifier = [(SBSystemApertureSceneElement *)self clientIdentifier];
    [v7 setAutomaticallyInvalidatable:0 lockingWithKey:clientIdentifier reason:@"client prevents automatic dismissal"];
  }
}

- (void)_updateActiveElementsAndAssociatedApplication
{
  if ([(SBSystemApertureSceneElement *)self isActivated]&& [(SBSystemApertureSceneElement *)self isReadyForPresentation]&& ([(SBSystemApertureSceneElement *)self _requiresForegroundScene]|| [(SBSystemApertureSceneElement *)self preferredLayoutMode]>= 1))
  {
    [SBSystemApertureSceneElement addActiveElement:self];
    v3 = 1;
  }

  else
  {
    [SBSystemApertureSceneElement removeActiveElement:self];
    v3 = 0;
  }

  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_associatedAppBundleIdentifier = [sceneClientSettings SBUISA_associatedAppBundleIdentifier];
  v6 = sBUISA_associatedAppBundleIdentifier;
  if (sBUISA_associatedAppBundleIdentifier)
  {
    bundleIdentifier2 = sBUISA_associatedAppBundleIdentifier;
  }

  else
  {
    application = [(SBApplicationSceneHandle *)self->_associatedApplicationSceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    v9 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundleIdentifier2 = bundleIdentifier;
    }

    else
    {
      clientHandle = [(FBScene *)self->_scene clientHandle];
      bundleIdentifier2 = [clientHandle bundleIdentifier];
    }
  }

  associatedApplication = [(SBSystemApertureSceneElement *)self associatedApplication];
  bundleIdentifier3 = [associatedApplication bundleIdentifier];
  v13 = BSEqualStrings();

  if ((v13 & 1) == 0)
  {
    v14 = +[SBApplicationController sharedInstanceIfExists];
    v15 = [v14 applicationWithBundleIdentifier:bundleIdentifier2];
    associatedApplication = self->_associatedApplication;
    self->_associatedApplication = v15;
  }

  v17 = self->_associatedApplication;
  if (!v3)
  {
    v19 = bundleIdentifier2;
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v18 = v13 ^ 1;
  if (!v17)
  {
    v18 = 1;
  }

  v19 = bundleIdentifier2;
  if ((v18 & 1) == 0)
  {
    if (self->_activeApplicationElementAssertion)
    {
      goto LABEL_28;
    }

    v20 = 0;
    goto LABEL_25;
  }

  if (!v17)
  {
LABEL_26:
    [(BSInvalidatable *)self->_activeApplicationElementAssertion invalidate];
    activeApplicationElementAssertion = self->_activeApplicationElementAssertion;
    self->_activeApplicationElementAssertion = 0;
    goto LABEL_27;
  }

  v20 = self->_activeApplicationElementAssertion;
LABEL_25:
  [(BSInvalidatable *)v20 invalidate];
  v21 = self->_activeApplicationElementAssertion;
  self->_activeApplicationElementAssertion = 0;

  activeApplicationElementAssertion = objc_loadWeakRetained(&self->_statusBarBackgroundActivitiesSuppresser);
  v23 = [activeApplicationElementAssertion acquireActiveElementAssertionForApplication:self->_associatedApplication reason:@"scene element request"];
  v24 = self->_activeApplicationElementAssertion;
  self->_activeApplicationElementAssertion = v23;

LABEL_27:
  v19 = bundleIdentifier2;
LABEL_28:
}

- (void)_updateRequiredPriorityAssertion
{
  preferredConfiguration = [(SBSystemApertureSceneElement *)self preferredConfiguration];
  v4 = [preferredConfiguration length];

  platformElementHost = [(SBSystemApertureSceneElement *)self platformElementHost];
  requiredPriorityAssertion = self->_requiredPriorityAssertion;
  if (v4)
  {
    if (requiredPriorityAssertion)
    {
      goto LABEL_6;
    }

    v9 = platformElementHost;
    v7 = [platformElementHost requestRequiredPriorityAssertionWithReason:@"Scene Element Secure State"];
  }

  else
  {
    v9 = platformElementHost;
    [(SAInvalidatable *)requiredPriorityAssertion invalidateWithReason:@"Scene Element no longer Secure State"];
    v7 = 0;
  }

  v8 = self->_requiredPriorityAssertion;
  self->_requiredPriorityAssertion = v7;

  platformElementHost = v9;
LABEL_6:
}

- (SBSystemApertureSceneElementAccessoryView)leadingView
{
  leadingWrapperView = self->_leadingWrapperView;
  if (!leadingWrapperView)
  {
    leadingWrapperView = self->_leadingView;
  }

  return leadingWrapperView;
}

- (SBSystemApertureSceneElementAccessoryView)trailingView
{
  trailingWrapperView = self->_trailingWrapperView;
  if (!trailingWrapperView)
  {
    trailingWrapperView = self->_trailingView;
  }

  return trailingWrapperView;
}

- (SBSystemApertureSceneElementAccessoryView)minimalView
{
  minimalWrapperView = self->_minimalWrapperView;
  if (!minimalWrapperView)
  {
    minimalWrapperView = self->_minimalView;
  }

  return minimalWrapperView;
}

- (void)addElementLayoutSpecifierObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    layoutObservers = self->__layoutObservers;
    v8 = observerCopy;
    if (!layoutObservers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->__layoutObservers;
      self->__layoutObservers = weakObjectsHashTable;

      layoutObservers = self->__layoutObservers;
    }

    [(NSHashTable *)layoutObservers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeElementLayoutSpecifierObserver:(id)observer
{
  observerCopy = observer;
  layoutObservers = self->__layoutObservers;
  v7 = observerCopy;
  if (observerCopy && layoutObservers)
  {
    [(NSHashTable *)layoutObservers removeObject:observerCopy];
    layoutObservers = self->__layoutObservers;
  }

  if (![(NSHashTable *)layoutObservers count])
  {
    v6 = self->__layoutObservers;
    self->__layoutObservers = 0;
  }
}

- (void)element:(id)element visibilityWillChange:(BOOL)change
{
  if (change)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  [(SBSystemApertureSceneElement *)self setElementAppearState:v4];
}

- (void)element:(id)element visibilityDidChange:(BOOL)change
{
  if (change)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(SBSystemApertureSceneElement *)self setElementAppearState:v4];
}

- (void)setElementAppearState:(int)state
{
  if (self->_elementAppearState != state)
  {
    self->_elementAppearState = state;
    [(SBSystemApertureSceneElement *)self _updateSceneBackgroundStateIfNeeded];
    [(SBSystemApertureSceneElement *)self _updateActiveElementsAndAssociatedApplication];

    [(SBSystemApertureSceneElement *)self _acquireOrUpdateAppStatusBarSessionsAssertionIfNeeded];
  }
}

- (void)placeholderWrapperViewDidChangeContentView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (void)setSecureElementHost:(id)host
{
  objc_storeWeak(&self->_secureElementHost, host);

  [(SBSystemApertureSceneElement *)self _updateRecordingMode];
}

- (BOOL)isSecureFlipBookElement
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_isSecureFlipBookElement = [sceneClientSettings SBUISA_isSecureFlipBookElement];

  return sBUISA_isSecureFlipBookElement;
}

- (void)_updateRecordingMode
{
  scene = [(SBSystemApertureSceneElement *)self scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SBSystemApertureSceneElement__updateRecordingMode__block_invoke;
  v4[3] = &unk_2783ACB10;
  v4[4] = self;
  [scene updateSettings:v4];
}

void __52__SBSystemApertureSceneElement__updateRecordingMode__block_invoke(uint64_t a1, void *a2)
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

  v8 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v9 = [v8 numberWithBool:{objc_msgSend(WeakRetained, "isInRecordingMode")}];
  [v7 setObject:v9 forSetting:3213018];
}

- (BOOL)isRegisteredForCapture
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_isSecureFlipBookElementRegisteredForCapture = [sceneClientSettings SBUISA_isSecureFlipBookElementRegisteredForCapture];

  return sBUISA_isSecureFlipBookElementRegisteredForCapture;
}

- (NSArray)recordableConfigurations
{
  v21 = *MEMORY[0x277D85DE8];
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_secureFlipBookRecordableConfigurations = [sceneClientSettings SBUISA_secureFlipBookRecordableConfigurations];

  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = sBUISA_secureFlipBookRecordableConfigurations;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [SBSystemApertureSceneElementSecureFlipBookConfiguration alloc];
        v13 = [(SBSystemApertureSceneElementSecureFlipBookConfiguration *)v12 initWithConfiguration:v11 scene:self->_scene delegate:self, v16];
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [array copy];

  return v14;
}

- (BOOL)isSymmetricalForUILayoutDirectionInConfiguration:(id)configuration orientation:(int64_t)orientation
{
  configurationCopy = configuration;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_secureFlipBookSymmetricalConfigurations = [sceneClientSettings SBUISA_secureFlipBookSymmetricalConfigurations];

  v9 = [sBUISA_secureFlipBookSymmetricalConfigurations objectForKey:configurationCopy];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:orientation];
  LOBYTE(configurationCopy) = [v9 containsObject:v10];

  return configurationCopy;
}

- (NSString)preferredConfiguration
{
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_secureFlipBookPreferredConfiguration = [sceneClientSettings SBUISA_secureFlipBookPreferredConfiguration];
  v4 = objc_opt_class();
  v5 = sBUISA_secureFlipBookPreferredConfiguration;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)setActiveConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_activeConfiguration, configuration);
  scene = [(SBSystemApertureSceneElement *)self scene];
  if (([scene isActive] & 1) == 0)
  {
    goto LABEL_4;
  }

  scene2 = [(SBSystemApertureSceneElement *)self scene];
  clientHandle = [scene2 clientHandle];
  processHandle = [clientHandle processHandle];
  currentState = [processHandle currentState];
  isRunning = [currentState isRunning];

  if (isRunning)
  {
    scene = [(SBSystemApertureSceneElement *)self scene];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SBSystemApertureSceneElement_setActiveConfiguration___block_invoke;
    v12[3] = &unk_2783C1638;
    v12[4] = self;
    [scene performUpdate:v12];
LABEL_4:
  }
}

void __55__SBSystemApertureSceneElement_setActiveConfiguration___block_invoke(uint64_t a1, void *a2)
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

  [v7 SBUISA_setString:*(*(a1 + 32) + 144) forSetting:3213019];
}

- (NSDictionary)preferredComponentStates
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  sceneClientSettings = [(SBSystemApertureSceneElement *)self sceneClientSettings];
  sBUISA_secureFlipBookPreferredComponentStates = [sceneClientSettings SBUISA_secureFlipBookPreferredComponentStates];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBSystemApertureSceneElement_preferredComponentStates__block_invoke;
  v7[3] = &unk_2783AD0C0;
  v7[4] = &v8;
  [sBUISA_secureFlipBookPreferredComponentStates enumerateKeysAndObjectsUsingBlock:v7];
  if (*(v9 + 24))
  {
    v4 = sBUISA_secureFlipBookPreferredComponentStates;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__SBSystemApertureSceneElement_preferredComponentStates__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_class();
  v14 = v7;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  v13 = v8;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  if (!v12)
  {
LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)setActiveComponentStates:(id)states
{
  statesCopy = states;
  objc_storeStrong(&self->_activeComponentStates, states);
  scene = [(SBSystemApertureSceneElement *)self scene];
  if (([scene isActive] & 1) == 0)
  {
    goto LABEL_4;
  }

  scene2 = [(SBSystemApertureSceneElement *)self scene];
  clientHandle = [scene2 clientHandle];
  processHandle = [clientHandle processHandle];
  currentState = [processHandle currentState];
  isRunning = [currentState isRunning];

  if (isRunning)
  {
    scene = [(SBSystemApertureSceneElement *)self scene];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SBSystemApertureSceneElement_setActiveComponentStates___block_invoke;
    v12[3] = &unk_2783C1638;
    v12[4] = self;
    [scene performUpdate:v12];
LABEL_4:
  }
}

void __57__SBSystemApertureSceneElement_setActiveComponentStates___block_invoke(uint64_t a1, void *a2)
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

  [v7 SBUISA_setComponentStates:*(*(a1 + 32) + 152) forSetting:3213020];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSystemApertureSceneElement *)self succinctDescriptionBuilder];
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  [succinctDescriptionBuilder appendString:bundleIdentifier withName:@"client"];

  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemApertureSceneElement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSystemApertureSceneElement *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBSystemApertureSceneElement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __70__SBSystemApertureSceneElement_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 160) identifier];
  [v2 appendString:v3 withName:@"sceneIdentifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) elementIdentifier];
  [v4 appendString:v5 withName:@"elementIdentifier"];

  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isReadyForPresentation"), @"isReadyForPresentation"}];
  v7 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isActivated"), @"isActivated"}];
  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 32) description];
  [v8 appendString:v9 withName:@"configuration" skipIfEmpty:1];

  v10 = *(a1 + 32);
  [*(a1 + 40) layoutMode];
  v11 = SAUIStringFromElementViewLayoutMode();
  [v10 appendString:v11 withName:@"layoutMode"];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) scene];
  v14 = [v13 clientHandle];
  v15 = [v14 bundleIdentifier];
  [v12 appendString:v15 withName:@"clientBundleIdentifier" skipIfEmpty:1];

  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) sceneClientSettings];
  v18 = [v17 SBUISA_associatedAppBundleIdentifier];
  [v16 appendString:v18 withName:@"associatedAppBundleIdentifier" skipIfEmpty:1];

  v19 = *(a1 + 32);
  v21 = [*(a1 + 40) sceneClientSettings];
  v20 = [v21 SBUISA_associatedScenePersistenceIdentifier];
  [v19 appendString:v20 withName:@"associatedScenePersistenceIdentifier" skipIfEmpty:1];
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

- (SBSystemApertureGestureHandling)gestureHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureHandler);

  return WeakRetained;
}

- (SAAlertHosting)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

- (SAActivityHosting)activityHost
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SBSecureFlipBookElementHost)secureElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_secureElementHost);

  return WeakRetained;
}

- (SBSystemApertureSceneElementLaunchActionHandling)launchActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_launchActionHandler);

  return WeakRetained;
}

- (SBSystemApertureSceneElementPlaceholderContentProviding)placeholderContentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderContentProvider);

  return WeakRetained;
}

- (SBSystemApertureBackgroundActivitiesSuppressing)statusBarBackgroundActivitiesSuppresser
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarBackgroundActivitiesSuppresser);

  return WeakRetained;
}

- (void)deactivateWhenRemovedWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)deactivateWhenRemovedWithHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)activateWithInitialOtherSceneSettings:clientSettings:transitionRequestHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithConnectedScene:configuration:elementAssertionAcquisitionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_activateSceneWithInitialOtherSettings:clientSettings:initialLayoutMode:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_isValidAlertingSource:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SAUIAlertingSourceUnspecified is an invalid source."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemApertureSceneElement.m";
    v16 = 1024;
    v17 = 696;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end