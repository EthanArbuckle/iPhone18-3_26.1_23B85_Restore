@interface SBSystemApertureViewController
- (BOOL)_collapseExpandedElementIfPossible;
- (BOOL)_doesElementHaveValidRequiredPriorityAssertion:(id)assertion;
- (BOOL)_doesElementHaveValidUrgencyAssertion:(id)assertion;
- (BOOL)_handleButtonEventWithTest:(id)test handler:(id)handler;
- (BOOL)_handleCalloutBlockAction:(id)action;
- (BOOL)_handleContainerPressAction:(id)action;
- (BOOL)_handleContainerResizeAction:(id)action;
- (BOOL)_handleContainerTapAction:(id)action;
- (BOOL)_handleImpactFeedbackAction:(id)action;
- (BOOL)_handlePreferencesDidChangeAction:(id)action;
- (BOOL)_isAnimatedTransitionInProgress;
- (BOOL)_isAnyGestureRecognizerActive;
- (BOOL)_isBlobEnabled;
- (BOOL)_isInteractiveHidingSupportedByElement:(id)element;
- (BOOL)_isProperty:(id)property ofObject:(id)object equalToDescription:(id)description;
- (BOOL)_isSystemGesture:(id)gesture;
- (BOOL)_longPressGestureInhibitedByElement;
- (BOOL)_panGestureInhibitedByElement;
- (BOOL)_reachabilityActiveOrAnimating;
- (BOOL)_shouldPerformTransitionOfProperty:(id)property ofObject:(id)object withDescription:(id)description fromPreferences:(id)preferences context:(id)context;
- (BOOL)_shouldSuppressElement:(id)element allowsSuppressionForSystemChromeSuppression:(BOOL)suppression reason:(int64_t *)reason;
- (BOOL)_systemApertureManagedIndicatorEnabled;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isTransitionTargetForSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (BOOL)systemApertureApertureElementAuthority:(id)authority isActivityElementAlerting:(id)alerting;
- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementExpandedDueToUserInteraction:(id)interaction;
- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementRequiredPriority:(id)priority;
- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementUrgentlyVisible:(id)visible;
- (BOOL)systemApertureManagerShouldUseOrderedElementViewControllers:(id)controllers;
- (BOOL)systemApertureProximityBacklightPolicy:(id)policy isSystemApertureElementVisibleAtPoint:(CGPoint)point;
- (BOOL)systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:(id)inert;
- (CGPoint)containerParentCenter;
- (CGRect)_boundsForAdjunctContainerViewWithPreferredEdgeOutsets:(NSDirectionalEdgeInsets)outsets layoutDirection:(int64_t)direction;
- (CGRect)_frameForSensorRegionInBounds:(CGRect)bounds;
- (CGRect)_interSensorRegionMatchMovePositionSourceViewFrame;
- (CGRect)_portraitFrameForPrimaryContainerViewInBounds:(CGRect)bounds withPreferredEdgeOutsets:(NSDirectionalEdgeInsets)outsets layoutDirection:(int64_t)direction;
- (CGRect)frameForIndicatorPortalViewWithSourceView:(id)view;
- (CGRect)frameForSystemAperturePortalView;
- (CGRect)interSensorRegionInContentView:(id)view;
- (CGRect)minimumSensorRegionFrame;
- (CGRect)sensorRegionInContentView:(id)view fromViewProvider:(id)provider;
- (CGRect)sensorRegionObstructingViewProvider:(id)provider inContentView:(id)view;
- (CGRect)systemApertureContainerView:(id)view hitRectForBounds:(CGRect)bounds debugColor:(id *)color;
- (CGSize)_adjunctContainerMinimalViewSize;
- (CGSize)_preferredMinSizeForCustomLayout:(int64_t)layout elementInterfaceOrientation:(int64_t)orientation;
- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)view fromViewProvider:(id)provider;
- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)view fromViewProvider:(id)provider;
- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)view fromViewProvider:(id)provider;
- (NSArray)stateDump;
- (NSDirectionalEdgeInsets)_applySymmetryToPreferredLayoutOutsets:(NSDirectionalEdgeInsets)outsets;
- (NSDirectionalEdgeInsets)_hostSuggestedOutsetsForElement:(id)element;
- (NSDirectionalEdgeInsets)_maximumContainerViewOutsetsInBounds:(CGRect)bounds inLayoutMode:(int64_t)mode;
- (NSDirectionalEdgeInsets)_validatedEdgeOutsetsForPreferredOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (SBSystemApertureBacklightSessionAggregator)backlightSessionAggregator;
- (SBSystemApertureViewController)initWithActiveWindowScene:(id)scene;
- (SBSystemApertureViewControllerVisibilityDelegate)visibilityDelegate;
- (SBSystemApertureWindowScene)activeWindowScene;
- (double)_yOffsetForCustomLayout:(int64_t)layout;
- (double)alertingDurationForHost:(id)host;
- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider;
- (id)_activeSnapshotAssertionForElementIdentity:(id)identity;
- (id)_animatablePropertyWithProgressMilestones:(id)milestones block:(id)block;
- (id)_associatedWindowScene;
- (id)_childElementViewControllerWithIdentity:(id)identity;
- (id)_containerViewForGesture:(id)gesture initialLocationInContainerView:(CGPoint *)view;
- (id)_containerViewForLayoutSpecifier:(id)specifier;
- (id)_containerViewForScrollEvent:(id)event ofGestureRecognizer:(id)recognizer initialLocation:(CGPoint *)location;
- (id)_containerViewForTouch:(id)touch ofGestureRecognizer:(id)recognizer initialLocation:(CGPoint *)location;
- (id)_containerViewForViewController:(id)controller includingOutgoing:(BOOL)outgoing;
- (id)_containerViewWithInterfaceElementIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary;
- (id)_containerViewWithRank:(unint64_t)rank creatingIfNecessary:(BOOL)necessary;
- (id)_contextWithOrderedElementViewControllers:(id)controllers;
- (id)_currentFirstElement;
- (id)_defaultsContextForDefaults;
- (id)_elementContextsForOrderedElementViewControllers:(id)controllers;
- (id)_elementForContainerView:(id)view;
- (id)_elementViewControllerForLayoutSpecifyingOverrider:(id)overrider;
- (id)_elementViewControllerForSizeTransitionWithDescription:(id)description fromPreferences:(id)preferences;
- (id)_feedbackGeneratorForStyle:(int64_t)style;
- (id)_floatAnimatablePropertyForTransitionIdentifier:(id)identifier;
- (id)_flushActiveRequests;
- (id)_flushElapsedTimerDescriptions;
- (id)_flushMaintainedPreferences;
- (id)_flushPendingInteractionResults;
- (id)_flushPendingTransitionResults;
- (id)_flushSignificantUpdateTransitionAssertions;
- (id)_gestureRecognizerForDescription:(id)description;
- (id)_indicatorElementContext;
- (id)_keyPathForProperty:(id)property;
- (id)_layoutAssertionWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason creatingIfNecessary:(BOOL)necessary;
- (id)_layoutSpecifyingOverriderForContainerView:(id)view;
- (id)_newContainerViewWithInterfaceElementIdentifier:(id)identifier;
- (id)_persistentAssertionForElement:(id)element withType:(int64_t)type;
- (id)_platformMetricsContext;
- (id)_popActiveGestureDescriptions;
- (id)_propertyUpdateBlockArrayForPropertyIdentity:(id)identity ofObject:(id)object withDescription:(id)description withTransitionDescription:(id)transitionDescription forceSingle:(BOOL)single behaviorSettingsArray:(id *)array updateDescriptionsArray:(id *)descriptionsArray;
- (id)_secureElementContextsForOrderedElementViewControllers:(id)controllers;
- (id)_systemApertureRepresentationSuppressionAssertionForReason:(unint64_t)reason;
- (id)_valueForProperty:(id)property ofDescription:(id)description;
- (id)element:(id)element requestsPersistentAnimationOfType:(int64_t)type;
- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (id)overrideContainerRenderingStyleAssertion:(int64_t)assertion;
- (id)registerElement:(id)element;
- (id)requireCaptureBoundsDefiningViewWithBounds:(CGRect)bounds reason:(id)reason;
- (id)requireClearBackgroundRenderingForCapture:(id)capture;
- (id)requireHeavyShadowAssertionForTransition;
- (id)requireKeyLineAssertionForTransition;
- (id)requireUserInterfaceLayoutDirection:(int64_t)direction reason:(id)reason;
- (id)restrictSystemApertureToDefaultLayoutWithReason:(id)reason;
- (id)scenesForBacklightSession;
- (int64_t)_activeElementInterfaceOrientation;
- (int64_t)_effectiveOverrideRenderingStyle;
- (int64_t)_mostRestrictiveLayoutModeFromActiveLayoutAssertions;
- (int64_t)systemApertureApertureElementAuthority:(id)authority preferredLayoutModeForElement:(id)element;
- (unint64_t)_maximumNumberOfSimultaneouslyVisibleElements;
- (unint64_t)_systemGestureTypeForGesture:(id)gesture systemGestureManager:(id)manager;
- (void)_RTLOverrideChanged;
- (void)_addActiveRequest:(id)request;
- (void)_addActiveSnapshotAssertion:(id)assertion;
- (void)_addFloatAnimatablePropertyForTransitionDescriptionIfNecessary:(id)necessary propertyIdentity:(id)identity milestones:(id)milestones;
- (void)_addMitosisBlobEffects;
- (void)_addPendingTransitionResult:(id)result;
- (void)_addRunLoopObserverIfNecessary;
- (void)_addTimerIfNecessaryForDescription:(id)description;
- (void)_addZoomAnimationAssertion;
- (void)_animatedTransitionDidReachMilestone:(double)milestone description:(id)description propertyIdentity:(id)identity finished:(BOOL)finished retargeted:(BOOL)retargeted;
- (void)_axLayoutSpecifierRequestsDiminishment:(id)diminishment;
- (void)_axRegisterForZoomUpdatesIfNecessary;
- (void)_axRevealHiddenElementIfPossible;
- (void)_axZoomLevelOrStandbyModeChanged;
- (void)_beginRequiringBacklightAssertionForReason:(id)reason;
- (void)_cancelExternalGesturesForReason:(id)reason;
- (void)_cleanupViewController:(id)controller;
- (void)_configureGesturesIfNecessary;
- (void)_configureInteractionLongPressIfNecessary;
- (void)_configureLongPressGestureIfNecessary;
- (void)_configurePreferencesStackIfNecessary;
- (void)_configureResizeGestureIfNecessary;
- (void)_configureVariableBlur;
- (void)_didRegisterNewIndicatorViewController:(id)controller needsMatchMove:(BOOL)move;
- (void)_elementKeyColorWasInvalidated:(id)invalidated;
- (void)_endRequiringBacklightAssertionForReason:(id)reason;
- (void)_flushDidSettleHandlersIfNecessary;
- (void)_flushIndicatorDidSettleHandlersIfNecessary;
- (void)_handleActionsFromPreferences:(id)preferences;
- (void)_handleAnyContentsDidChangePreferences:(id)preferences context:(id)context;
- (void)_handleBackgroundUpdatesFromPreferences:(id)preferences context:(id)context;
- (void)_handleContainerAndElementUpdatesFromPreferences:(id)preferences orderedElementViewControllers:(id)controllers context:(id)context;
- (void)_handleContainerDefaultPressGesture:(id)gesture;
- (void)_handleContainerParentUpdatesFromPreferences:(id)preferences context:(id)context;
- (void)_handleContainerResizeGesture:(id)gesture;
- (void)_handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged:(BOOL)changed;
- (void)_handleCurtainUpdatesFromPreferences:(id)preferences;
- (void)_handleDebuggingUtilityWithPreferences:(id)preferences context:(id)context withStackDepiction:(id)depiction andQueryIteration:(unint64_t)iteration;
- (void)_handleGestureUpdatesFromPreferences:(id)preferences;
- (void)_handleHitTestingUpdatesWithContext:(id)context;
- (void)_handleInteractionLongPress:(id)press;
- (void)_handleMitosisBlobUpdatesFromPreferences:(id)preferences;
- (void)_handleResizePan:(id)pan;
- (void)_handleResizeResult:(int64_t)result withContainerView:(id)view;
- (void)_handleSecureElementUpdatesFromPreferences:(id)preferences;
- (void)_handleSystemApertureCurtainPortalToSuperHighLevelScene:(BOOL)scene;
- (void)_handleTimerUpdatesFromPreferences:(id)preferences;
- (void)_invalidateAndRemoveFloatAnimatableProperty:(id)property forTransitionIdentifier:(id)identifier;
- (void)_kickCurtainIndicatorViewFrameForContainerView:(id)view;
- (void)_moveSystemGestureRecognizerIfNecessary:(id)necessary withSystemGestureType:(unint64_t)type fromSystemGestureManager:(id)manager toSystemGestureManager:(id)gestureManager;
- (void)_popActiveGestureDescriptions;
- (void)_postLayoutDidChangeNotificationIfNecessary;
- (void)_promote:(BOOL)_promote gestureRecognizer:(id)recognizer toSystemGestureWithManager:(id)manager type:(unint64_t)type;
- (void)_pushGestureDescription:(id)description;
- (void)_pushPendingInteractionResultForElementIdentity:(id)identity interactionSource:(unint64_t)source viewInteractionResult:(int64_t)result;
- (void)_reevaluateElementSuppression;
- (void)_removeActiveSnapshotAssertion:(id)assertion;
- (void)_removeContainerViewsExceptingThoseWithDescriptions:(id)descriptions;
- (void)_removeElementViewControllersExceptingThoseWithDescriptions:(id)descriptions;
- (void)_removeLayoutAssertionAndReevaluate:(id)reevaluate;
- (void)_removeMitosisBlobEffects;
- (void)_setBlobEnabled:(BOOL)enabled;
- (void)_setBlobRadius:(double)radius;
- (void)_startTrackingShakeAnimationIfRequired;
- (void)_stopTrackingShakeAnimation;
- (void)_updateElementOrientationTo:(int64_t)to withTransitionCoordinator:(id)coordinator;
- (void)_updateObject:(id)object withDescription:(id)description fromPreferences:(id)preferences conditionalAnimations:(id)animations conditionalCompletion:(id)completion context:(id)context;
- (void)_updatePreferencesForReasonAccessibility:(unsigned int)accessibility updates:(id)updates;
- (void)_updatePreferencesForReasonActiveDisplayChanged:(unsigned int)changed updates:(id)updates;
- (void)_updatePreferencesForReasonAnimatedPropertyUpdateBegin:(unsigned int)begin updates:(id)updates;
- (void)_updatePreferencesForReasonAnimatedPropertyUpdateEnd:(unsigned int)end updates:(id)updates;
- (void)_updatePreferencesForReasonCloningOrRenderingStyle:(unsigned int)style updates:(id)updates;
- (void)_updatePreferencesForReasonDynamicsAnimation:(unsigned int)animation updates:(id)updates;
- (void)_updatePreferencesForReasonElementRequested:(unsigned int)requested updates:(id)updates;
- (void)_updatePreferencesForReasonGestures:(unsigned int)gestures updates:(id)updates;
- (void)_updatePreferencesForReasonInitOrDefaults:(unsigned int)defaults updates:(id)updates;
- (void)_updatePreferencesForReasonLumaSampling:(unsigned int)sampling updates:(id)updates;
- (void)_updatePreferencesForReasonLuminanceLevelChanged:(unsigned int)changed updates:(id)updates;
- (void)_updatePreferencesForReasonMilestoneReached:(unsigned int)reached updates:(id)updates;
- (void)_updatePreferencesForReasonOrientation:(unsigned int)orientation updates:(id)updates;
- (void)_updatePreferencesForReasonReachabilityChanged:(unsigned int)changed updates:(id)updates;
- (void)_updatePreferencesForReasonSecureElementCoordinator:(unsigned int)coordinator updates:(id)updates;
- (void)_updatePreferencesForReasonStackInitiated:(unsigned int)initiated updates:(id)updates;
- (void)_updatePreferencesForReasonSystemApertureManager:(unsigned int)manager updates:(id)updates;
- (void)_updatePreferencesForReasonTimerExpired:(unsigned int)expired updates:(id)updates;
- (void)_updatePreferencesForReasonTransitionEffectAssertion:(unsigned int)assertion updates:(id)updates;
- (void)_updatePreferencesIfNecessary;
- (void)_updatePreferredContentSizeCategoryForAllElements:(id)elements;
- (void)_updatePreferredContentSizeCategoryForElementViewController:(id)controller;
- (void)_updateProperty:(id)property ofObject:(id)object withDescription:(id)description fromPreferences:(id)preferences conditionalAnimations:(id)animations conditionalCompletion:(id)completion context:(id)context;
- (void)_updateStatusBarAvoidanceFrameWithAnimationSettings:(id)settings;
- (void)_updateWithPreferencesFromStackForValidationReason:(unsigned int)reason;
- (void)animateTransitionAcceptanceBounceWithVelocityVector:(CGPoint)vector triggeredBlock:(id)block;
- (void)animateTransitionEjectionStretchWithVelocityVector:(CGPoint)vector;
- (void)dealloc;
- (void)element:(id)element requestsDiscreteAnimationOfType:(int64_t)type;
- (void)elementRequestsCancellingResizeGesture:(id)gesture;
- (void)elementRequestsSignificantUpdateTransition:(id)transition;
- (void)elementViewControllingDidAppear:(id)appear;
- (void)elementViewControllingDidDisappear:(id)disappear;
- (void)elementViewControllingWillAppear:(id)appear;
- (void)elementViewControllingWillDisappear:(id)disappear;
- (void)hostOrientationDidChangeTo:(int64_t)to withPreviousOrientation:(int64_t)orientation context:(id)context;
- (void)invalidateElementUrgencyPreferences;
- (void)performAction:(id)action withCompletionUponAnimationSettling:(id)settling;
- (void)performAction:(id)action withCompletionUponIndicatorSettling:(id)settling;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)setActiveWindowScene:(id)scene;
- (void)setCloningStyle:(int64_t)style;
- (void)setContainerParentCenter:(CGPoint)center;
- (void)setCurtainViewHoster:(id)hoster;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)systemApertureDebuggingUtility:(id)utility shouldCreateDebuggingLabel:(BOOL)label;
- (void)systemApertureDebuggingUtility:(id)utility updateUIForConnectionState:(int)state;
- (void)systemApertureProximityBacklightPolicy:(id)policy embedProximityTouchTrackingView:(id)view touchBlockingView:(id)blockingView;
- (void)systemApertureProximityBacklightPolicy:(id)policy removeProximityTouchTrackingView:(id)view touchBlockingView:(id)blockingView;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBSystemApertureViewController

- (void)_reevaluateElementSuppression
{
  v54 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = self->_systemApertureSuppressionAssertions;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v9 |= [v12 suppressForCoverSheetVisible];
        v8 |= [v12 suppressForLiquidDetectionVisible];
        v5 |= [v12 suppressForProximityReaderVisible];
        v6 |= [v12 suppressForSystemChromeSuppression];
        v7 |= [v12 suppressForSecureElementCapture];
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
  }

  associatedSceneIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipant *)self->_zStackParticipant associatedSceneIdentifiersToSuppressInSystemAperture];
  v14 = [associatedSceneIdentifiersToSuppressInSystemAperture count];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    associatedSceneIdentifiersToSuppressInSystemAperture2 = [(SBFZStackParticipant *)self->_zStackParticipant associatedSceneIdentifiersToSuppressInSystemAperture];
    v35 = v15;
    [v15 unionSet:associatedSceneIdentifiersToSuppressInSystemAperture2];
  }

  else
  {
    v35 = 0;
  }

  associatedBundleIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipant *)self->_zStackParticipant associatedBundleIdentifiersToSuppressInSystemAperture];
  v18 = [associatedBundleIdentifiersToSuppressInSystemAperture count];

  if (v18)
  {
    v19 = [MEMORY[0x277CBEB58] set];
    associatedBundleIdentifiersToSuppressInSystemAperture2 = [(SBFZStackParticipant *)self->_zStackParticipant associatedBundleIdentifiersToSuppressInSystemAperture];
    v34 = v19;
    [v19 unionSet:associatedBundleIdentifiersToSuppressInSystemAperture2];
  }

  else
  {
    v34 = 0;
  }

  v32 = BSEqualSets();
  v21 = BSEqualSets();
  prefersSuppressionOfElementsDueToCoversheetVisibility = self->_prefersSuppressionOfElementsDueToCoversheetVisibility;
  prefersSuppressionOfElementsDueToLiquidDetectionVisibility = self->_prefersSuppressionOfElementsDueToLiquidDetectionVisibility;
  v31 = v21;
  prefersSuppressionOfElementsDueToSystemChromeSuppression = self->_prefersSuppressionOfElementsDueToSystemChromeSuppression;
  prefersSuppressionOfElementsDueToProximityReaderVisibility = self->_prefersSuppressionOfElementsDueToProximityReaderVisibility;
  prefersSuppressionOfElementsDueToActivelyCapturingSecureElement = self->_prefersSuppressionOfElementsDueToActivelyCapturingSecureElement;
  v22 = [v35 copy];
  sceneIDsPreferringSuppression = self->_sceneIDsPreferringSuppression;
  self->_sceneIDsPreferringSuppression = v22;

  v24 = [v34 copy];
  bundleIDsPreferringSuppression = self->_bundleIDsPreferringSuppression;
  self->_bundleIDsPreferringSuppression = v24;

  self->_prefersSuppressionOfElementsDueToCoversheetVisibility = v9 & 1;
  self->_prefersSuppressionOfElementsDueToLiquidDetectionVisibility = v8 & 1;
  self->_prefersSuppressionOfElementsDueToProximityReaderVisibility = v5 & 1;
  self->_prefersSuppressionOfElementsDueToSystemChromeSuppression = v6 & 1;
  self->_prefersSuppressionOfElementsDueToActivelyCapturingSecureElement = v7 & 1;
  if (prefersSuppressionOfElementsDueToCoversheetVisibility != (v9 & 1) || !v32 || !v31 || prefersSuppressionOfElementsDueToLiquidDetectionVisibility != (v8 & 1) || prefersSuppressionOfElementsDueToProximityReaderVisibility != (v5 & 1) || prefersSuppressionOfElementsDueToSystemChromeSuppression != (v6 & 1) || prefersSuppressionOfElementsDueToActivelyCapturingSecureElement != (v7 & 1))
  {
    v26 = SBLogSystemApertureController();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110402;
      v42 = v9 & 1;
      v43 = 1024;
      v44 = v8 & 1;
      v45 = 1024;
      v46 = v5 & 1;
      v47 = 1024;
      v48 = v6 & 1;
      v49 = 2114;
      v50 = v34;
      v51 = 2114;
      v52 = v35;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Invalidating promoted elements with coversheet suppression %{BOOL}u liquid detection suppression %{BOOL}u proximity reader suppression %{BOOL}u system chrome suppression %{BOOL}u bundleIDs %{public}@ sceneIds %{public}@", buf, 0x2Eu);
    }

    [(SAUISystemApertureManager *)self->_systemApertureManager invalidatePromotedElements];
  }
}

void __64__SBSystemApertureViewController__addRunLoopObserverIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePreferencesIfNecessary];
}

- (void)_updatePreferencesIfNecessary
{
  *a2 = 138412290;
  *(a2 + 4) = self;
  OUTLINED_FUNCTION_10_2(&dword_21ED4E000, a3, a3, "Updating preferences for reason(s): %@", a2);
}

uint64_t __63__SBSystemApertureViewController__updatePreferencesIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateWithPreferencesFromStackForValidationReason:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(a1 + 32);

  return [v2 _postLayoutDidChangeNotificationIfNecessary];
}

- (unint64_t)_maximumNumberOfSimultaneouslyVisibleElements
{
  if ((self->_activeElementInterfaceOrientation - 3) < 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_defaultsContextForDefaults
{
  v3 = objc_alloc_init(SBSADefaultsContext);
  v4 = [(SBSADefaultsContext *)v3 copyBySettingSuppressDynamicIslandCompletely:[(SBSystemApertureDefaults *)self->_systemApertureDefaults suppressDynamicIslandCompletely]];

  v5 = ([(SBSystemApertureDefaults *)self->_systemApertureDefaults alwaysShowSystemApertureInSnapshots]& 1) != 0 || [(SBSystemApertureSettings *)self->_settings suppressHidingInSnapshotsWhileEmpty];
  v6 = [v4 copyBySettingAlwaysShowSystemApertureInSnapshots:v5];

  v7 = [v6 copyBySettingNeverRenderSystemApertureFillOnGPU:{-[SBSystemApertureDefaults neverRenderSystemApertureFillOnGPU](self->_systemApertureDefaults, "neverRenderSystemApertureFillOnGPU")}];
  v8 = [v7 copyBySettingAlwaysRenderSystemApertureFillOnGPU:{-[SBSystemApertureDefaults alwaysRenderSystemApertureFillOnGPU](self->_systemApertureDefaults, "alwaysRenderSystemApertureFillOnGPU")}];

  v9 = ([(SBSystemApertureDefaults *)self->_systemApertureDefaults alwaysShowSystemApertureOnClonedDisplays]& 1) != 0 || [(SBSystemApertureSettings *)self->_settings suppressHidingOnClonedDisplayWhileEmpty];
  v10 = [v8 copyBySettingAlwaysShowSystemApertureOnClonedDisplays:v9];

  return v10;
}

- (CGRect)minimumSensorRegionFrame
{
  _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics sensorRegionSize];

  SBRectWithSize();
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  v20 = v6;
  UIRectCenteredXInRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _layoutMetrics2 = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics2 minimumScreenEdgeInsets];
  v15 = v14;

  v16 = v8;
  v17 = v15;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_platformMetricsContext
{
  v4 = objc_alloc_init(SBSAPlatformMetricsContext);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBSystemApertureViewController__platformMetricsContext__block_invoke;
  v7[3] = &unk_2783A93E8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [(SBSAPlatformMetricsContext *)v4 copyWithBlock:v7];

  return v5;
}

void __57__SBSystemApertureViewController__platformMetricsContext__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = objc_opt_self();
    v4 = v10;
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

    if (!v6)
    {
      __57__SBSystemApertureViewController__platformMetricsContext__block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) _layoutMetrics];
  [v7 maximumContinuousCornerRadius];
  [v6 setMaximumCornerRadius:?];

  [v6 setCustomLayoutSquareCornerRadius:39.0];
  v8 = [*(a1 + 32) _layoutMetrics];
  [v8 maximumContinuousCornerRadius];
  [v6 setCustomLayoutSquareLargeCornerRadius:?];

  [v6 setCustomLayoutOvalCornerRadius:90.0];
  [*(*(a1 + 32) + 1120) tallRectCornerRadius];
  [v6 setCustomLayoutTallRectCornerRadius:?];
  [v6 setMinimumEdgePadding:4.0];
  v9 = [*(a1 + 32) traitCollection];
  [v9 displayCornerRadius];
  [v6 setDisplayCornerRadius:?];
}

- (int64_t)_effectiveOverrideRenderingStyle
{
  allObjects = [(NSCountedSet *)self->_overrideRenderingStyleRequests allObjects];
  v3 = [allObjects sortedArrayUsingSelector:sel_compare_];

  firstObject = [v3 firstObject];
  if (firstObject)
  {
    firstObject2 = [v3 firstObject];
    integerValue = [firstObject2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (id)_indicatorElementContext
{
  indicatorElementViewController = [(SAUISystemApertureManager *)self->_systemApertureManager indicatorElementViewController];
  v5 = indicatorElementViewController;
  if (indicatorElementViewController)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SBSystemApertureViewController__indicatorElementContext__block_invoke;
    v8[3] = &unk_2783AD750;
    v10 = a2;
    v8[4] = self;
    v9 = indicatorElementViewController;
    v6 = [SBSAIndicatorElementContext instanceWithBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isAnimatedTransitionInProgress
{
  anyObject = [(NSCountedSet *)self->_backlightAssertionRequiringReasons anyObject];
  v3 = anyObject != 0;

  return v3;
}

- (BOOL)_reachabilityActiveOrAnimating
{
  v3 = +[SBReachabilityManager sharedInstance];
  v4 = ([v3 reachabilityModeActive] & 1) != 0 || (objc_msgSend(v3, "reachabilityModeAnimating") & 1) != 0 || self->_reachabilityManagerReportedReachabilityWillAnimate;

  return v4;
}

- (CGPoint)containerParentCenter
{
  [(SBFTouchPassThroughView *)self->_containerParent center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_flushPendingInteractionResults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_pendingInteractionResults copy];
  [(NSMutableArray *)selfCopy->_pendingInteractionResults removeAllObjects];
  v4 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;

  objc_sync_exit(selfCopy);

  return v5;
}

- (id)_flushPendingTransitionResults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pendingTransitionResults;
  pendingTransitionResults = selfCopy->_pendingTransitionResults;
  selfCopy->_pendingTransitionResults = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_flushElapsedTimerDescriptions
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableDictionary *)selfCopy->_timerIdentifiersToDescriptionRecords copy];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)selfCopy->_timerIdentifiersToDescriptionRecords objectForKey:v8];
        if ([v9 isTimerDescriptionElapsed])
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          timerDescription = [v9 timerDescription];
          [v4 addObject:timerDescription];

          [(NSMutableDictionary *)selfCopy->_timerIdentifiersToDescriptionRecords removeObjectForKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)_popActiveGestureDescriptions
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_longPressGestureUpdateQueue count]|| [(NSMutableArray *)self->_resizeGestureUpdateQueue count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    resizeGestureUpdateQueue = self->_resizeGestureUpdateQueue;
    v19[0] = self->_longPressGestureUpdateQueue;
    v19[1] = resizeGestureUpdateQueue;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{2, 0}];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          firstObject = [v10 firstObject];
          if (firstObject)
          {
            [array addObject:firstObject];
            [v10 removeObjectAtIndex:0];
          }

          if ([v10 count])
          {
            [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:1024];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = array;
    v13 = SBLogSystemAperturePreferencesStackGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _popActiveGestureDescriptions];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_flushSignificantUpdateTransitionAssertions
{
  v29 = *MEMORY[0x277D85DE8];
  [(NSPointerArray *)self->_significantUpdateTransitionAssertions sa_compact];
  _primaryContainerView = [(SBSystemApertureViewController *)self _primaryContainerView];
  elementViewController = [_primaryContainerView elementViewController];
  elementViewProvider = [elementViewController elementViewProvider];
  element = [elementViewProvider element];

  v7 = SAUILayoutSpecifyingOverriderForElement();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = 1256;
  selfCopy = self;
  v8 = self->_significantUpdateTransitionAssertions;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 isValid])
        {
          element2 = [v14 element];

          if (element2 == element)
          {
            if ([v7 layoutMode] == 3)
            {
              v18 = v14;

              v11 = v18;
              continue;
            }

            v16 = v14;
            v17 = @"element not in custom layout mode";
          }

          else
          {
            v16 = v14;
            v17 = @"element not in primary container";
          }

          [v16 invalidateWithReason:v17];
        }
      }

      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  v11 = 0;
LABEL_17:

  v19 = *(&selfCopy->super.super.super.super.isa + v22);
  *(&selfCopy->super.super.super.super.isa + v22) = 0;

  v20 = v11;
  return v11;
}

- (id)_flushActiveRequests
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeRequests;
  activeRequests = selfCopy->_activeRequests;
  selfCopy->_activeRequests = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_flushMaintainedPreferences
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastMaintainedPreferences;
  lastMaintainedPreferences = selfCopy->_lastMaintainedPreferences;
  selfCopy->_lastMaintainedPreferences = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_isBlobEnabled
{
  layer = [(UIView *)self->_containerBackgroundParent layer];
  filters = [layer filters];
  v4 = [filters count] != 0;

  return v4;
}

- (void)_flushDidSettleHandlersIfNecessary
{
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_10_2(&dword_21ED4E000, a3, a3, "Flushing %lu didSettle handlers", self);
}

- (void)_postLayoutDidChangeNotificationIfNecessary
{
  v59 = *MEMORY[0x277D85DE8];
  [(SBSystemApertureViewController *)self minimumSensorRegionFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v55, 0, sizeof(v55));
  view = [(SBSystemApertureViewController *)self view];
  window = [view window];
  v13 = window;
  if (window)
  {
    [window transform];
  }

  else
  {
    memset(&v55, 0, sizeof(v55));
  }

  array = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = self->_orderedContainerViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v51 + 1) + 8 * i);
        window2 = [v20 window];
        [v20 bounds];
        [window2 convertRect:v20 fromView:?];
        x = v22;
        y = v24;
        width = v26;
        height = v28;

        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        if (!CGRectIsEmpty(v60))
        {
          v50 = v55;
          if (!CGAffineTransformIsIdentity(&v50))
          {
            v50 = v55;
            v61.origin.x = x;
            v61.origin.y = y;
            v61.size.width = width;
            v61.size.height = height;
            v62 = CGRectApplyAffineTransform(v61, &v50);
            x = v62.origin.x;
            y = v62.origin.y;
            width = v62.size.width;
            height = v62.size.height;
          }

          *v49 = x;
          *&v49[1] = y;
          *&v49[2] = width;
          *&v49[3] = height;
          v30 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [array addObject:v30];

          v63.origin.x = v4;
          v63.origin.y = v6;
          v63.size.width = v8;
          v63.size.height = v10;
          v67.origin.x = x;
          v67.origin.y = y;
          v67.size.width = width;
          v67.size.height = height;
          v64 = CGRectUnion(v63, v67);
          v4 = v64.origin.x;
          v6 = v64.origin.y;
          v8 = v64.size.width;
          v10 = v64.size.height;
        }
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v17);
  }

  if (![array count])
  {
    *v48 = v4;
    *&v48[1] = v6;
    *&v48[2] = v8;
    *&v48[3] = v10;
    v31 = [MEMORY[0x277CCAE60] valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [array addObject:v31];
  }

  v65.origin.x = v4;
  v65.origin.y = v6;
  v65.size.width = v8;
  v65.size.height = v10;
  MaxY = 0.0;
  if (!CGRectIsNull(v65))
  {
    v66.origin.x = v4;
    v66.origin.y = v6;
    v66.size.width = v8;
    v66.size.height = v10;
    MaxY = CGRectGetMaxY(v66);
  }

  orderedElementViewControllers = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
  v34 = [orderedElementViewControllers bs_map:&__block_literal_global_697];

  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  associatedWindowScene = [WeakRetained associatedWindowScene];
  if ([associatedWindowScene isMainDisplayWindowScene])
  {
    v37 = 1;
  }

  else
  {
    v37 = [(SBSystemApertureViewController *)self _systemApertureManagedIndicatorEnabled]^ 1;
  }

  v38 = MEMORY[0x277CBEB38];
  v56[0] = @"SBSystemApertureEdgeInsets";
  v39 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{MaxY, 0.0, 0.0, 0.0}];
  v57[0] = v39;
  v56[1] = @"SBSystemApertureFrames";
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  v57[1] = v40;
  v57[2] = v34;
  v56[2] = @"SBSystemApertureVisibleElementIdentifiers";
  v56[3] = @"SBSystemApertureCanRegisterRecordingIndicator";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:v37];
  v57[3] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
  v43 = [v38 dictionaryWithDictionary:v42];

  associatedWindowScene2 = [WeakRetained associatedWindowScene];
  _sbDisplayConfiguration = [associatedWindowScene2 _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];

  if (identity)
  {
    [v43 setObject:identity forKey:@"SBSystemApertureOriginatingDisplayIdentity"];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_cachedLayoutDidChangeUserInfo, v43);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBSystemApertureLayoutDidChangeNotification" object:self userInfo:self->_cachedLayoutDidChangeUserInfo];
  }
}

void __58__SBSystemApertureViewController__indicatorElementContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v42 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v42;
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

    v3 = v42;
    if (!v7)
    {
      __58__SBSystemApertureViewController__indicatorElementContext__block_invoke_cold_1();
      v3 = v42;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) elementViewProvider];
  v9 = [v8 element];
  v10 = [SBSAElementIdentification alloc];
  v11 = [v9 clientIdentifier];
  v12 = [v9 elementIdentifier];
  v13 = [(SBSAElementIdentification *)v10 initWithClientIdentifier:v11 elementIdentifier:v12];

  v14 = [(SBSAElementIdentification *)v13 clientIdentifier];
  [v7 setClientIdentifier:v14];

  v15 = [(SBSAElementIdentification *)v13 elementIdentifier];
  [v7 setElementIdentifier:v15];

  v16 = (a1 + 32);
  v17 = [*(*(a1 + 32) + 1080) elementViewControllerForElement:v9];
  LOBYTE(v12) = SBSAIsElementViewControllerFixedInOrientation(v17);

  if (v12)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(*v16 + 148);
  }

  [v7 setInterfaceOrientation:v18];
  v19 = [v8 fixedIndicatorView];
  v20 = [*v16 _systemApertureManagedIndicatorEnabled];
  v21 = v8;
  if (!v21)
  {
    __58__SBSystemApertureViewController__indicatorElementContext__block_invoke_cold_2();
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [*(a1 + 40) view];
    [v21 sizeThatFitsSize:v22 forProvidedView:{1.79769313e308, 1.79769313e308}];
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v22 = [v21 fixedIndicatorView];
    [v22 bounds];
    v24 = v27;
    v26 = v28;
  }

  v29 = +[SBSystemApertureDomain rootSettings];
  [v29 indicatorContainerMinimumOutset];
  v31 = v30;

  if (objc_opt_respondsToSelector())
  {
    [v21 preferredIndicatorEdgeOutsets];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
  }

  else
  {
    v33 = -v31;
    v35 = v33;
    v37 = v33;
    v39 = v33;
  }

  [v7 setIndicatorSize:{v24, v26}];
  [v7 setPreferredEdgeOutsets:{v33, v35, v37, v39}];
  if (objc_opt_respondsToSelector())
  {
    v40 = [v21 indicatorNeedsDisplayWellKnownLocation];
  }

  else
  {
    v40 = 1;
  }

  if (v19)
  {
    v41 = v20;
  }

  else
  {
    v41 = 0;
  }

  [v7 setIndicatorNeedsDisplayWellKnownLocation:v40 & 1 | ((v41 & 1) == 0)];
  [v7 setSupportsMicroIndicatorPosition:v41];
}

- (BOOL)_systemApertureManagedIndicatorEnabled
{
  if (_systemApertureManagedIndicatorEnabled_onceToken_0 != -1)
  {
    [SBSystemApertureViewController _systemApertureManagedIndicatorEnabled];
  }

  return _systemApertureManagedIndicatorEnabled_systemApertureManagedIndicatorEnabled_0;
}

- (int64_t)_activeElementInterfaceOrientation
{
  result = self->_activeElementInterfaceOrientation;
  if (!result)
  {
    v4 = SBLogSystemApertureOrientation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SBSystemApertureViewController _activeElementInterfaceOrientation];
    }

    return self->_activeElementInterfaceOrientation;
  }

  return result;
}

- (CGRect)frameForSystemAperturePortalView
{
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
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

- (BOOL)_collapseExpandedElementIfPossible
{
  orderedElementViewControllers = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
  firstObject = [orderedElementViewControllers firstObject];
  v4 = SAUILayoutSpecifyingOverriderForElementViewController();

  if (v4 && ([v4 isRequestingMenuPresentation] & 1) == 0)
  {
    preferredLayoutModeAssertion = [v4 preferredLayoutModeAssertion];
    if ([preferredLayoutModeAssertion preferredLayoutMode] == 3 && objc_msgSend(preferredLayoutModeAssertion, "layoutModePreferenceMayBeImplicitlyInvalidated"))
    {
      [preferredLayoutModeAssertion invalidateWithReason:@"dimming view user interaction"];
      v5 = 1;
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

  return v5;
}

- (int64_t)_mostRestrictiveLayoutModeFromActiveLayoutAssertions
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = selfCopy->_reasonsToLayoutAssertions;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = 3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)selfCopy->_reasonsToLayoutAssertions objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        maximumPermittedLayoutMode = [v8 maximumPermittedLayoutMode];

        if (maximumPermittedLayoutMode < v6)
        {
          v6 = maximumPermittedLayoutMode;
        }
      }

      v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 3;
  }

  objc_sync_exit(selfCopy);
  return v6;
}

id __77__SBSystemApertureViewController__postLayoutDidChangeNotificationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];
  v4 = [v3 elementIdentifier];

  return v4;
}

- (id)_associatedWindowScene
{
  view = [(SBSystemApertureViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v5 = objc_opt_class();
  v6 = windowScene;
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

  associatedWindowScene = [v8 associatedWindowScene];

  return associatedWindowScene;
}

- (BOOL)_isAnyGestureRecognizerActive
{
  if ([(SBSystemApertureViewController *)self _isResizePanGestureActive])
  {
    return 1;
  }

  return [(SBSystemApertureViewController *)self _isInteractionLongPressGestureActive];
}

void __45__SBSystemApertureViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [v5 traitCollection];
    v9 = [v8 _backlightLuminance];
    v10 = [v6 _backlightLuminance];

    if (v9 != v10)
    {
      v11 = [v5 traitCollection];
      v12 = [v11 _backlightLuminance];

      if (v12 == 1)
      {
        v13 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__SBSystemApertureViewController_viewDidLoad__block_invoke_2;
        block[3] = &unk_2783A8C18;
        block[4] = WeakRetained;
        dispatch_after(v13, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v14 = [WeakRetained backlightSessionAggregator];
        [v14 hostedScenesDidChange];
      }

      [*(a1 + 32) _invalidatePreferencesForReason:0x20000];
    }
  }
}

- (SBSystemApertureBacklightSessionAggregator)backlightSessionAggregator
{
  WeakRetained = objc_loadWeakRetained(&self->_backlightSessionAggregator);

  return WeakRetained;
}

- (id)scenesForBacklightSession
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  associatedWindowScene = [WeakRetained associatedWindowScene];
  if ([associatedWindowScene isMainDisplayWindowScene])
  {
    traitCollection = [(SBSystemApertureViewController *)self traitCollection];
    _backlightLuminance = [traitCollection _backlightLuminance];

    if (_backlightLuminance == 1)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = self->_orderedContainerViews;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            v14 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:v13, v19];
            if ([v14 layoutMode] >= 1)
            {
              v15 = [(SBSystemApertureViewController *)self _elementForContainerView:v13];
              if (objc_opt_respondsToSelector())
              {
                scene = [v15 scene];
                if (scene)
                {
                  [v3 addObject:scene];
                }
              }
            }
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      v17 = +[SBSystemApertureSceneElement scenesForBacklightSession];
      [v3 unionSet:v17];
    }
  }

  else
  {
  }

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v49 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = SBSystemApertureViewController;
  [(SBSystemApertureViewController *)&v46 viewWillLayoutSubviews];
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  containerBackgroundParent = self->_containerBackgroundParent;
  v47[0] = self->_containerSubBackgroundParent;
  v47[1] = containerBackgroundParent;
  v47[2] = self->_containerParent;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v42 + 1) + 8 * i) setBounds:{v5, v7, v9, v11}];
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v15);
  }

  view2 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self->_secureElementOverlayViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  v21 = v20;

  [(SAUISystemApertureManager *)self->_systemApertureManager hostWillPerformLayout];
  interSensorRegionMatchMovePositionSourceView = self->_interSensorRegionMatchMovePositionSourceView;
  [(SBSystemApertureViewController *)self _interSensorRegionMatchMovePositionSourceViewFrame];
  [(UIView *)interSensorRegionMatchMovePositionSourceView setFrame:?];
  [(SBSystemApertureViewController *)self minimumSensorRegionFrame];
  v41 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  magiciansCurtainView = self->_magiciansCurtainView;
  [(SBSystemApertureGainMapBackedRendering *)magiciansCurtainView sizeThatFits:v26, v28];
  BSRectWithSize();
  [(SBSystemApertureViewController *)self minimumSensorRegionFrame];
  UIRectCenteredIntegralRectScale();
  [(SBSystemApertureGainMapBackedRendering *)magiciansCurtainView setFrame:v21];
  superview = [(SBSystemApertureGainMapBackedRendering *)self->_highLevelMagiciansCurtainView superview];
  view3 = [(SBSystemApertureViewController *)self view];
  [superview convertRect:view3 fromView:{v41, v25, v27, v29}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  [(SBSystemApertureGainMapBackedRendering *)self->_highLevelMagiciansCurtainView setFrame:v34, v36, v38, v40];
}

- (CGRect)_interSensorRegionMatchMovePositionSourceViewFrame
{
  view = [(SBSystemApertureViewController *)self view];
  [(SBSystemApertureViewController *)self interSensorRegionInContentView:view];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetHeight(v22);
  UIRectGetCenter();
  BSRectWithSize();
  traitCollection = [view traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_configureInteractionLongPressIfNecessary
{
  if (!self->_interactionLongPressGesture)
  {
    v3 = [[SBSystemApertureLongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleInteractionLongPress_];
    interactionLongPressGesture = self->_interactionLongPressGesture;
    self->_interactionLongPressGesture = &v3->super;

    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setName:@"longPressSystemAperture"];
    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setDelaysTouchesBegan:0];
    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setDelaysTouchesEnded:0];
    [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture setDelegate:self];
    view = [(SBSystemApertureViewController *)self view];
    [view addGestureRecognizer:self->_interactionLongPressGesture];
  }
}

- (void)_promote:(BOOL)_promote gestureRecognizer:(id)recognizer toSystemGestureWithManager:(id)manager type:(unint64_t)type
{
  _promoteCopy = _promote;
  v20 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  managerCopy = manager;
  v12 = managerCopy;
  if (recognizerCopy)
  {
    v13 = [managerCopy isSystemGestureRecognizer:recognizerCopy];
    if (v12 && type && _promoteCopy && (v13 & 1) == 0)
    {
      v14 = SBLogSystemApertureController();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = recognizerCopy;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizer priority to system: gestureRecognizer: %{public}@", &v18, 0xCu);
      }

      view = [recognizerCopy view];
      [view removeGestureRecognizer:recognizerCopy];

      [v12 addGestureRecognizer:recognizerCopy withType:type];
    }

    else if (!_promoteCopy && ((v13 ^ 1) & 1) == 0)
    {
      v16 = SBLogSystemApertureController();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = recognizerCopy;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizer priority to default: gestureRecognizer: %{public}@", &v18, 0xCu);
      }

      [v12 removeGestureRecognizer:recognizerCopy];
      view2 = [(SBSystemApertureViewController *)self view];
      [view2 addGestureRecognizer:recognizerCopy];
    }
  }
}

- (SBSystemApertureViewController)initWithActiveWindowScene:(id)scene
{
  v64[6] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v62.receiver = self;
  v62.super_class = SBSystemApertureViewController;
  v5 = [(SBSystemApertureViewController *)&v62 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = +[SBDefaults localDefaults];
    systemApertureDefaults = [v6 systemApertureDefaults];
    systemApertureDefaults = v5->_systemApertureDefaults;
    v5->_systemApertureDefaults = systemApertureDefaults;

    objc_initWeak(&location, v5);
    v9 = v5->_systemApertureDefaults;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysRenderSystemApertureFillOnGPU"];
    v64[0] = v10;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"neverRenderSystemApertureFillOnGPU"];
    v64[1] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"suppressDynamicIslandCompletely"];
    v64[2] = v12;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysShowSystemApertureOnClonedDisplays"];
    v64[3] = v13;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysShowSystemApertureInSnapshots"];
    v64[4] = v14;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableSystemApertureStateCollection"];
    v64[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:6];
    v17 = MEMORY[0x277D85CD0];
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __60__SBSystemApertureViewController_initWithActiveWindowScene___block_invoke;
    v59 = &unk_2783A8C68;
    objc_copyWeak(&v60, &location);
    v18 = [(SBSystemApertureDefaults *)v9 observeDefaults:v16 onQueue:MEMORY[0x277D85CD0] withBlock:&v56];

    v19 = [MEMORY[0x277CCA940] set];
    backlightAssertionRequiringReasons = v5->_backlightAssertionRequiringReasons;
    v5->_backlightAssertionRequiringReasons = v19;

    v21 = [MEMORY[0x277CCA940] set];
    overrideRenderingStyleRequests = v5->_overrideRenderingStyleRequests;
    v5->_overrideRenderingStyleRequests = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    transitionShadowAssertions = v5->_transitionShadowAssertions;
    v5->_transitionShadowAssertions = v23;

    v25 = [MEMORY[0x277CBEB58] set];
    transitionKeyLineAssertions = v5->_transitionKeyLineAssertions;
    v5->_transitionKeyLineAssertions = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    dynamicPersistentAnimationAssertions = v5->_dynamicPersistentAnimationAssertions;
    v5->_dynamicPersistentAnimationAssertions = v27;

    v29 = [[SBSystemApertureResizeGestureRecognizer alloc] initWithTarget:v5 action:sel__handleResizePan_];
    resizePanGesture = v5->_resizePanGesture;
    v5->_resizePanGesture = &v29->super;

    [(UIPanGestureRecognizer *)v5->_resizePanGesture setName:@"resizeSystemAperture"];
    [(UIPanGestureRecognizer *)v5->_resizePanGesture setCancelsTouchesInView:0];
    [(UIPanGestureRecognizer *)v5->_resizePanGesture setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v5->_resizePanGesture setDelegate:v5];
    array = [MEMORY[0x277CBEB18] array];
    longPressGestureUpdateQueue = v5->_longPressGestureUpdateQueue;
    v5->_longPressGestureUpdateQueue = array;

    array2 = [MEMORY[0x277CBEB18] array];
    resizeGestureUpdateQueue = v5->_resizeGestureUpdateQueue;
    v5->_resizeGestureUpdateQueue = array2;

    associatedWindowScene = [sceneCopy associatedWindowScene];
    systemGestureManager = [associatedWindowScene systemGestureManager];
    [systemGestureManager addGestureRecognizer:v5->_resizePanGesture withType:135];
    zStackResolver = [associatedWindowScene zStackResolver];
    v38 = [zStackResolver acquireParticipantWithIdentifier:26 delegate:v5];
    zStackParticipant = v5->_zStackParticipant;
    v5->_zStackParticipant = v38;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__elementKeyColorWasInvalidated_ name:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0];

    v5->_zoomServicesReportedAXisZooming = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _SBSystemApertureZoomPreferencesDidChange, *MEMORY[0x277D81EE0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    zoomAnimationAssertions = v5->_zoomAnimationAssertions;
    v5->_zoomAnimationAssertions = v42;

    [(SBSystemApertureViewController *)v5 _axRegisterForZoomUpdatesIfNecessary];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v5 selector:sel__invertColorsChanged_ name:*MEMORY[0x277D76480] object:0];

    v46 = objc_alloc_init(SBSystemApertureKeyLineColorValidator);
    colorValidator = v5->_colorValidator;
    v5->_colorValidator = v46;

    v48 = objc_opt_self();
    v63 = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v50 = [(SBSystemApertureViewController *)v5 registerForTraitChanges:v49 withTarget:v5 action:sel__updatePreferredContentSizeCategoryForAllElements_];
    contentSizeCategoryTraitChangeRegistration = v5->_contentSizeCategoryTraitChangeRegistration;
    v5->_contentSizeCategoryTraitChangeRegistration = v50;

    v52 = [[SBSystemApertureDebuggingUtility alloc] initWithDelegate:v5];
    debuggingUtility = v5->_debuggingUtility;
    v5->_debuggingUtility = v52;

    v54 = +[SBReachabilityManager sharedInstance];
    [v54 addObserver:v5];

    [(SBSystemApertureViewController *)v5 setActiveWindowScene:sceneCopy];
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __60__SBSystemApertureViewController_initWithActiveWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidatePreferencesForReason:2];
}

- (void)dealloc
{
  [(SBSystemApertureViewController *)self unregisterForTraitChanges:self->_contentSizeCategoryTraitChangeRegistration];
  if (self->_zoomRegistrationIdentifier)
  {
    mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
    [mEMORY[0x277D7EA38] removeZoomAttributesChangedHandler:self->_zoomRegistrationIdentifier];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D81EE0], 0);
  [(BSInvalidatable *)self->_suppressTouchCancellationAssertion invalidate];
  v5 = +[SBReachabilityManager sharedInstance];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SBSystemApertureViewController;
  [(SBSystemApertureViewController *)&v6 dealloc];
}

- (void)setCurtainViewHoster:(id)hoster
{
  hosterCopy = hoster;
  [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setCurtainView:0];
  objc_storeStrong(&self->_curtainViewHoster, hoster);
  curtainViewHoster = self->_curtainViewHoster;
  if (curtainViewHoster)
  {
    [(SBSystemApertureCurtainViewHoster *)curtainViewHoster setDelegate:self];
    if (self->_highLevelMagiciansCurtainView)
    {
      [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setCurtainView:?];
    }
  }
}

- (SBSystemApertureViewControllerVisibilityDelegate)visibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);

  return WeakRetained;
}

- (BOOL)isTransitionTargetForSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  registeredElements = [(SAUISystemApertureManager *)self->_systemApertureManager registeredElements];
  v9 = [registeredElements countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(registeredElements);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = SAUILayoutSpecifyingOverriderForElement();
        if ([v13 preferredLayoutMode] >= 1 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v12, "acceptsFullScreenTransitionFromSceneWithIdentifier:ofBundleId:", identifierCopy, bundleIdentifierCopy))
        {

          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v9 = [registeredElements countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (void)animateTransitionAcceptanceBounceWithVelocityVector:(CGPoint)vector triggeredBlock:(id)block
{
  x = vector.x;
  settings = self->_settings;
  blockCopy = block;
  [(SBSystemApertureSettings *)settings acceptanceSideBounceXVelocityThreshold];
  if (x >= -v8)
  {
    if (x > v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = [[SBSABounceRequest alloc] initWithStyle:v9 triggeredBlock:blockCopy];

  [(SBSystemApertureViewController *)self _addActiveRequest:v10];

  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:256];
}

- (void)animateTransitionEjectionStretchWithVelocityVector:(CGPoint)vector
{
  v4 = [(SBSystemApertureViewController *)self _currentFirstElement:vector.x];
  [(SBSystemApertureViewController *)self animateDiscreteAnimationStyle:4 toElement:v4];
}

- (void)setCloningStyle:(int64_t)style
{
  if (self->_cloningStyle != style)
  {
    self->_cloningStyle = style;
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:16];
  }
}

- (id)overrideContainerRenderingStyleAssertion:(int64_t)assertion
{
  if (assertion < 0)
  {
    [SBSystemApertureViewController overrideContainerRenderingStyleAssertion:];
  }

  overrideRenderingStyleRequests = self->_overrideRenderingStyleRequests;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:assertion];
  [(NSCountedSet *)overrideRenderingStyleRequests addObject:v7];

  v8 = objc_alloc_init(MEMORY[0x277D6B898]);
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SBSystemApertureViewController_overrideContainerRenderingStyleAssertion___block_invoke;
  v10[3] = &unk_2783B8528;
  objc_copyWeak(v11, &location);
  v11[1] = assertion;
  v11[2] = a2;
  v10[4] = self;
  [v8 addInvalidationBlock:v10];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:16];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v8;
}

void __75__SBSystemApertureViewController_overrideContainerRenderingStyleAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  if (![WeakRetained[146] countForObject:v2])
  {
    __75__SBSystemApertureViewController_overrideContainerRenderingStyleAssertion___block_invoke_cold_1(a1);
  }

  v3 = WeakRetained[146];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v3 removeObject:v4];

  [WeakRetained _invalidatePreferencesForReason:16];
}

- (id)_systemApertureRepresentationSuppressionAssertionForReason:(unint64_t)reason
{
  v5 = [_SBSystemApertureRepresentationSuppressionAssertion alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__SBSystemApertureViewController__systemApertureRepresentationSuppressionAssertionForReason___block_invoke;
  v8[3] = &unk_2783B8550;
  v8[4] = self;
  v6 = [(_SBSystemApertureRepresentationSuppressionAssertion *)v5 initWithReason:reason invalidationBlock:v8];
  [(NSMutableSet *)self->_systemApertureSuppressionAssertions addObject:v6];
  [(SBSystemApertureViewController *)self _reevaluateElementSuppression];

  return v6;
}

uint64_t __93__SBSystemApertureViewController__systemApertureRepresentationSuppressionAssertionForReason___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 1128) removeObject:a2];
  v3 = *(a1 + 32);

  return [v3 _reevaluateElementSuppression];
}

- (id)restrictSystemApertureToDefaultLayoutWithReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  _primaryContainerView = [(SBSystemApertureViewController *)self _primaryContainerView];
  elementViewController = [_primaryContainerView elementViewController];
  elementViewProvider = [elementViewController elementViewProvider];

  element = [elementViewProvider element];
  v8 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:_primaryContainerView];
  if (v8)
  {
    if ([(SBSystemApertureViewController *)self _doesElementHaveValidRequiredPriorityAssertion:element])
    {
      preferredLayoutModeAssertion = SBLogSystemApertureController();
      if (os_log_type_enabled(preferredLayoutModeAssertion, OS_LOG_TYPE_DEFAULT))
      {
        clientIdentifier = [element clientIdentifier];
        elementIdentifier = [element elementIdentifier];
        v15 = 138543618;
        v16 = clientIdentifier;
        v17 = 2114;
        v18 = elementIdentifier;
        _os_log_impl(&dword_21ED4E000, preferredLayoutModeAssertion, OS_LOG_TYPE_DEFAULT, "Ignoring request to collapse SystemAperture to default layout due to element required secure visibility: (%{public}@-%{public}@)", &v15, 0x16u);
      }
    }

    else
    {
      preferredLayoutModeAssertion = [v8 preferredLayoutModeAssertion];
      if ([preferredLayoutModeAssertion preferredLayoutMode]== 3 && [preferredLayoutModeAssertion layoutModeChangeReason]!= 2)
      {
        [preferredLayoutModeAssertion invalidateWithReason:@"collapse to compact layout"];
      }
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277D6B898]);
  v13 = SBLogSystemApertureController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Acquired empty restrict to default layout assertion: %{public}@", &v15, 0xCu);
  }

  [v12 addInvalidationBlock:&__block_literal_global_201];

  return v12;
}

void __82__SBSystemApertureViewController_restrictSystemApertureToDefaultLayoutWithReason___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = SBLogSystemApertureController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidated empty restrict to default layout assertion: %{public}@", &v4, 0xCu);
  }
}

- (id)requireHeavyShadowAssertionForTransition
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D6B898]);
  objc_initWeak(&from, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SBSystemApertureViewController_requireHeavyShadowAssertionForTransition__block_invoke;
  v5[3] = &unk_2783B8598;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5[4] = self;
  [v3 addInvalidationBlock:v5];
  [(NSMutableSet *)self->_transitionShadowAssertions addObject:v3];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:512];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v3;
}

void __74__SBSystemApertureViewController_requireHeavyShadowAssertionForTransition__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = WeakRetained[151];
  v3 = objc_loadWeakRetained(a1 + 6);
  [v2 removeObject:v3];

  [a1[4] _invalidatePreferencesForReason:512];
}

- (id)requireKeyLineAssertionForTransition
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D6B898]);
  objc_initWeak(&from, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBSystemApertureViewController_requireKeyLineAssertionForTransition__block_invoke;
  v5[3] = &unk_2783B8598;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5[4] = self;
  [v3 addInvalidationBlock:v5];
  [(NSMutableSet *)self->_transitionKeyLineAssertions addObject:v3];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:512];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v3;
}

void __70__SBSystemApertureViewController_requireKeyLineAssertionForTransition__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = WeakRetained[152];
  v3 = objc_loadWeakRetained(a1 + 6);
  [v2 removeObject:v3];

  [a1[4] _invalidatePreferencesForReason:512];
}

- (void)viewDidLoad
{
  v49[1] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = SBSystemApertureViewController;
  [(SBSystemApertureViewController *)&v48 viewDidLoad];
  v3 = [MEMORY[0x277CBEB58] set];
  systemApertureSuppressionAssertions = self->_systemApertureSuppressionAssertions;
  self->_systemApertureSuppressionAssertions = v3;

  v5 = +[SBSystemApertureDomain rootSettings];
  settings = self->_settings;
  self->_settings = v5;

  [(PTSettings *)self->_settings addKeyObserver:self];
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x277D75D18]);
  view2 = [(SBSystemApertureViewController *)self view];
  [(SBSystemApertureViewController *)self interSensorRegionInContentView:view2];
  v18 = [v16 initWithFrame:?];
  interSensorRegionMatchMovePositionSourceView = self->_interSensorRegionMatchMovePositionSourceView;
  self->_interSensorRegionMatchMovePositionSourceView = v18;

  [(UIView *)self->_interSensorRegionMatchMovePositionSourceView setUserInteractionEnabled:0];
  view3 = [(SBSystemApertureViewController *)self view];
  [view3 addSubview:self->_interSensorRegionMatchMovePositionSourceView];

  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v11, v13, v15}];
  containerSubBackgroundParent = self->_containerSubBackgroundParent;
  self->_containerSubBackgroundParent = v21;

  [(UIView *)self->_containerSubBackgroundParent setUserInteractionEnabled:0];
  layer = [(UIView *)self->_containerSubBackgroundParent layer];
  [layer setDisableUpdateMask:32];

  view4 = [(SBSystemApertureViewController *)self view];
  [view4 addSubview:self->_containerSubBackgroundParent];

  v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v11, v13, v15}];
  containerBackgroundParent = self->_containerBackgroundParent;
  self->_containerBackgroundParent = v25;

  [(UIView *)self->_containerBackgroundParent setUserInteractionEnabled:0];
  view5 = [(SBSystemApertureViewController *)self view];
  [view5 addSubview:self->_containerBackgroundParent];

  v28 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v9, v11, v13, v15}];
  containerParent = self->_containerParent;
  self->_containerParent = v28;

  view6 = [(SBSystemApertureViewController *)self view];
  [view6 addSubview:self->_containerParent];

  v31 = SBCreateSystemApertureMagiciansView();
  magiciansCurtainView = self->_magiciansCurtainView;
  self->_magiciansCurtainView = v31;

  v33 = SBCreateSystemApertureMagiciansView();
  highLevelMagiciansCurtainView = self->_highLevelMagiciansCurtainView;
  self->_highLevelMagiciansCurtainView = v33;

  [(UIView *)self->_containerBackgroundParent addSubview:self->_magiciansCurtainView];
  [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setCurtainView:self->_highLevelMagiciansCurtainView];
  v35 = objc_alloc_init(SBSystemApertureElementAuthority);
  elementAuthority = self->_elementAuthority;
  self->_elementAuthority = v35;

  [(SBSystemApertureElementAuthority *)self->_elementAuthority setElementAuthorityDelegate:self];
  if (_os_feature_enabled_impl())
  {
    v37 = [[SBSystemApertureSecureElementCoordinator alloc] initWithElementHostingViewController:self];
    secureElementCoordinator = self->_secureElementCoordinator;
    self->_secureElementCoordinator = v37;

    v39 = [[SBSystemApertureSecureElementRenderingOverlayViewController alloc] initWithDelegate:self->_secureElementCoordinator];
    secureElementOverlayViewController = self->_secureElementOverlayViewController;
    self->_secureElementOverlayViewController = v39;

    [(SBSystemApertureViewController *)self bs_addChildViewController:self->_secureElementOverlayViewController];
  }

  v41 = [objc_alloc(MEMORY[0x277D6B8D0]) initWithElementAuthority:self->_elementAuthority];
  systemApertureManager = self->_systemApertureManager;
  self->_systemApertureManager = v41;

  [(SAUISystemApertureManager *)self->_systemApertureManager setDelegate:self];
  [(SBSystemApertureViewController *)self _configureVariableBlur];
  [(SBSystemApertureViewController *)self _configurePreferencesStackIfNecessary];
  [(SBSystemApertureViewController *)self _configureGesturesIfNecessary];
  objc_initWeak(&location, self);
  v49[0] = objc_opt_class();
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __45__SBSystemApertureViewController_viewDidLoad__block_invoke;
  v45[3] = &unk_2783B85C0;
  objc_copyWeak(&v46, &location);
  v45[4] = self;
  v44 = [(SBSystemApertureViewController *)self registerForTraitChanges:v43 withHandler:v45];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void __45__SBSystemApertureViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) backlightSessionAggregator];
  [v1 hostedScenesDidChange];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v15.receiver = self;
  v15.super_class = SBSystemApertureViewController;
  [(SBSystemApertureViewController *)&v15 viewIsAppearing:appearing];
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIView *)self->_containerSubBackgroundParent setFrame:v6, v8, v10, v12];
  [(UIView *)self->_containerBackgroundParent setFrame:v6, v8, v10, v12];
  [(SBFTouchPassThroughView *)self->_containerParent setFrame:v6, v8, v10, v12];
  view2 = [(SBSystemApertureViewController *)self view];
  [view2 setNeedsLayout];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__SBSystemApertureViewController_viewIsAppearing___block_invoke;
  v14[3] = &unk_2783A8C18;
  v14[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v14];
}

void __50__SBSystemApertureViewController_viewIsAppearing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)setActiveWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  if (WeakRetained != obj)
  {
    associatedWindowScene = [WeakRetained associatedWindowScene];
    systemGestureManager = [associatedWindowScene systemGestureManager];

    [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
    objc_storeWeak(&self->_activeWindowScene, obj);
    associatedWindowScene2 = [obj associatedWindowScene];
    systemGestureManager2 = [associatedWindowScene2 systemGestureManager];

    [(SBSystemApertureViewController *)self _moveSystemGestureRecognizerIfNecessary:self->_interactionLongPressGesture withSystemGestureType:136 fromSystemGestureManager:systemGestureManager toSystemGestureManager:systemGestureManager2];
    [(SBSystemApertureViewController *)self _moveSystemGestureRecognizerIfNecessary:self->_resizePanGesture withSystemGestureType:135 fromSystemGestureManager:systemGestureManager toSystemGestureManager:systemGestureManager2];
    associatedWindowScene3 = [obj associatedWindowScene];
    zStackResolver = [associatedWindowScene3 zStackResolver];
    v11 = [zStackResolver acquireParticipantWithIdentifier:26 delegate:self];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = v11;

    [(SBSystemApertureViewController *)self zStackParticipantDidChange:self->_zStackParticipant];
    [(SAUISystemApertureManager *)self->_systemApertureManager invalidatePromotedElements];
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x8000];
  }
}

- (void)_moveSystemGestureRecognizerIfNecessary:(id)necessary withSystemGestureType:(unint64_t)type fromSystemGestureManager:(id)manager toSystemGestureManager:(id)gestureManager
{
  necessaryCopy = necessary;
  managerCopy = manager;
  gestureManagerCopy = gestureManager;
  if ([managerCopy isSystemGestureRecognizer:necessaryCopy])
  {
    [managerCopy removeGestureRecognizer:necessaryCopy];
    [gestureManagerCopy addGestureRecognizer:necessaryCopy withType:type];
  }
}

- (void)_addRunLoopObserverIfNecessary
{
  if (!self->_beforeCARunLoopObserver)
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x277CBECE8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__SBSystemApertureViewController__addRunLoopObserverIfNecessary__block_invoke;
    v5[3] = &unk_2783B85E8;
    objc_copyWeak(&v6, &location);
    self->_beforeCARunLoopObserver = CFRunLoopObserverCreateWithHandler(v3, 0xA0uLL, 1u, 1999000, v5);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, self->_beforeCARunLoopObserver, *MEMORY[0x277CBF048]);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_configurePreferencesStackIfNecessary
{
  if (!self->_rootPreferencesProvider)
  {
    v3 = objc_alloc_init(SBSARootPreferencesProvider);
    rootPreferencesProvider = self->_rootPreferencesProvider;
    self->_rootPreferencesProvider = v3;

    [(SBSystemApertureViewController *)self _addRunLoopObserverIfNecessary];

    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:2];
  }
}

- (void)_addPendingTransitionResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v9 = resultCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    pendingTransitionResults = selfCopy->_pendingTransitionResults;
    if (!pendingTransitionResults)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = selfCopy->_pendingTransitionResults;
      selfCopy->_pendingTransitionResults = v7;

      pendingTransitionResults = selfCopy->_pendingTransitionResults;
    }

    [(NSMutableArray *)pendingTransitionResults addObject:v9];
    objc_sync_exit(selfCopy);

    resultCopy = v9;
  }
}

- (void)_addTimerIfNecessaryForDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timerIdentifiersToDescriptionRecords = selfCopy->_timerIdentifiersToDescriptionRecords;
  timerDescriptionIdentifier = [descriptionCopy timerDescriptionIdentifier];
  v8 = [(NSMutableDictionary *)timerIdentifiersToDescriptionRecords objectForKey:timerDescriptionIdentifier];

  if (!v8)
  {
    objc_initWeak(&location, selfCopy);
    if (!selfCopy->_timerIdentifiersToDescriptionRecords)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = selfCopy->_timerIdentifiersToDescriptionRecords;
      selfCopy->_timerIdentifiersToDescriptionRecords = v9;
    }

    v11 = [[_SBSATimerAndDescriptionRecord alloc] initWithTimerDescription:descriptionCopy];
    v12 = selfCopy->_timerIdentifiersToDescriptionRecords;
    timerDescriptionIdentifier2 = [descriptionCopy timerDescriptionIdentifier];
    [(NSMutableDictionary *)v12 setObject:v11 forKey:timerDescriptionIdentifier2];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SBSystemApertureViewController__addTimerIfNecessaryForDescription___block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    [(_SBSATimerAndDescriptionRecord *)v11 schedule:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __69__SBSystemApertureViewController__addTimerIfNecessaryForDescription___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidatePreferencesForReason:32];
    WeakRetained = v2;
  }
}

- (void)_pushPendingInteractionResultForElementIdentity:(id)identity interactionSource:(unint64_t)source viewInteractionResult:(int64_t)result
{
  identityCopy = identity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingInteractionResults = selfCopy->_pendingInteractionResults;
  if (!pendingInteractionResults)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = selfCopy->_pendingInteractionResults;
    selfCopy->_pendingInteractionResults = array;

    pendingInteractionResults = selfCopy->_pendingInteractionResults;
  }

  v12 = [[SBSAElementViewInteractionResult alloc] initWithIdentity:identityCopy interactionSource:source viewInteractionResult:result];
  [(NSMutableArray *)pendingInteractionResults addObject:v12];

  objc_sync_exit(selfCopy);
}

- (void)_flushIndicatorDidSettleHandlersIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  indicatorAppearanceStateContext = [(SBSAMaintainedPreferences *)selfCopy->_lastMaintainedPreferences indicatorAppearanceStateContext];
  isSettled = [indicatorAppearanceStateContext isSettled];

  if ((([(NSMutableArray *)selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks count]!= 0) & isSettled) == 1 && !selfCopy->_preferencesInvalidationReasons)
  {
    v5 = selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks;
    systemApertureIndicatorDidSettleCompletionBlocks = selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks;
    if (systemApertureIndicatorDidSettleCompletionBlocks)
    {
      selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks = 0;

      v7 = SBLogSystemApertureController();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SBSystemApertureViewController *)v17 _flushDidSettleHandlersIfNecessary];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v8 = v5;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v9)
      {
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v8);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_floatAnimatablePropertyForTransitionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties objectForKey:identifierCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invalidateAndRemoveFloatAnimatableProperty:(id)property forTransitionIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  identifierCopy = identifier;
  if (!(propertyCopy | identifierCopy))
  {
    v8 = 0;
    propertyCopy = 0;
    goto LABEL_10;
  }

  v8 = identifierCopy;
  if (propertyCopy || ([(SBSystemApertureViewController *)self _floatAnimatablePropertyForTransitionIdentifier:identifierCopy], (propertyCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (([propertyCopy isInvalidated] & 1) == 0)
    {
      [propertyCopy invalidate];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      allKeys = [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties allKeys];
      v11 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v11)
      {

        v8 = 0;
        goto LABEL_8;
      }

      v8 = 0;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties objectForKey:v14];
          if (v15 == propertyCopy)
          {
            v16 = v14;

            v8 = v16;
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties removeObjectForKey:v8];
LABEL_8:
    objc_sync_exit(selfCopy);
  }

LABEL_10:
}

- (void)_animatedTransitionDidReachMilestone:(double)milestone description:(id)description propertyIdentity:(id)identity finished:(BOOL)finished retargeted:(BOOL)retargeted
{
  descriptionCopy = description;
  identityCopy = identity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  animatedTransitionIdentifier = [descriptionCopy animatedTransitionIdentifier];
  if (milestone != 1.79769313e308)
  {
    v17 = [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties objectForKey:animatedTransitionIdentifier];

    if (!v17)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SBSystemApertureViewController.m" lineNumber:1018 description:{@"Unknown transition: %@", descriptionCopy}];
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __120__SBSystemApertureViewController__animatedTransitionDidReachMilestone_description_propertyIdentity_finished_retargeted___block_invoke;
  v22[3] = &unk_2783B8610;
  v25 = a2;
  v22[4] = selfCopy;
  v19 = animatedTransitionIdentifier;
  v23 = v19;
  v20 = identityCopy;
  v24 = v20;
  milestoneCopy = milestone;
  finishedCopy = finished;
  retargetedCopy = retargeted;
  v21 = [SBSAAnimatedTransitionResultDescription instanceWithBlock:v22];
  [(SBSystemApertureViewController *)selfCopy _addPendingTransitionResult:v21];

  [(SBSystemApertureViewController *)selfCopy _invalidatePreferencesForReason:64];
  objc_sync_exit(selfCopy);
}

void __120__SBSystemApertureViewController__animatedTransitionDidReachMilestone_description_propertyIdentity_finished_retargeted___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
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

    if (!v6)
    {
      __120__SBSystemApertureViewController__animatedTransitionDidReachMilestone_description_propertyIdentity_finished_retargeted___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setAnimatedTransitionIdentifier:*(a1 + 40)];
  [v6 setAssociatedInterfaceElementPropertyIdentity:*(a1 + 48)];
  [v6 setTargetedMilestone:*(a1 + 64)];
  [v6 setTransitionEndTargeted:*(a1 + 64) == 1.79769313e308];
  [v6 setFinished:*(a1 + 72)];
  [v6 setRetargeted:*(a1 + 73)];
}

- (void)_addFloatAnimatablePropertyForTransitionDescriptionIfNecessary:(id)necessary propertyIdentity:(id)identity milestones:(id)milestones
{
  necessaryCopy = necessary;
  identityCopy = identity;
  milestonesCopy = milestones;
  v11 = milestonesCopy;
  if (necessaryCopy && identityCopy && [milestonesCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    animatedTransitionIdentifier = [necessaryCopy animatedTransitionIdentifier];
    v14 = [(NSMutableDictionary *)selfCopy->_transitionIdentifiersToFloatAnimatableProperties objectForKey:animatedTransitionIdentifier];

    if (!v14)
    {
      objc_initWeak(&location, selfCopy);
      v15 = MEMORY[0x277D75D38];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __125__SBSystemApertureViewController__addFloatAnimatablePropertyForTransitionDescriptionIfNecessary_propertyIdentity_milestones___block_invoke;
      v23 = &unk_2783B8638;
      objc_copyWeak(&v26, &location);
      v24 = necessaryCopy;
      v25 = identityCopy;
      v16 = [v15 sbf_animatablePropertyWithProgressMilestones:v11 block:&v20];
      transitionIdentifiersToFloatAnimatableProperties = selfCopy->_transitionIdentifiersToFloatAnimatableProperties;
      if (!transitionIdentifiersToFloatAnimatableProperties)
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v19 = selfCopy->_transitionIdentifiersToFloatAnimatableProperties;
        selfCopy->_transitionIdentifiersToFloatAnimatableProperties = v18;

        transitionIdentifiersToFloatAnimatableProperties = selfCopy->_transitionIdentifiersToFloatAnimatableProperties;
      }

      [(NSMutableDictionary *)transitionIdentifiersToFloatAnimatableProperties setObject:v16 forKey:animatedTransitionIdentifier, v20, v21, v22, v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }
}

void __125__SBSystemApertureViewController__addFloatAnimatablePropertyForTransitionDescriptionIfNecessary_propertyIdentity_milestones___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _animatedTransitionDidReachMilestone:*(a1 + 32) description:*(a1 + 40) propertyIdentity:1 finished:0 retargeted:a2];
}

- (id)_keyPathForProperty:(id)property
{
  propertyCopy = property;
  interfaceElementProperty = [propertyCopy interfaceElementProperty];
  if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"IDCornerRadius";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"transform";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"scalingContentView.transform";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"scalingContentView.center";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"scalingContentView.bounds";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"variableBlurView.hidden";
  }

  else if (BSEqualStrings())
  {
    associatedInterfaceElementIdentifier = interfaceElementProperty;
    interfaceElementProperty = @"variableBlurView.frame";
  }

  else
  {
    associatedInterfaceElementIdentifier = [propertyCopy associatedInterfaceElementIdentifier];
    if (BSEqualObjects())
    {
      v6 = BSEqualStrings();

      if (!v6)
      {
        goto LABEL_19;
      }

      associatedInterfaceElementIdentifier = interfaceElementProperty;
      interfaceElementProperty = @"containerParentCenter";
    }
  }

LABEL_19:

  return interfaceElementProperty;
}

- (id)_valueForProperty:(id)property ofDescription:(id)description
{
  descriptionCopy = description;
  propertyCopy = property;
  interfaceElementProperty = [propertyCopy interfaceElementProperty];
  v8 = [descriptionCopy valueForKey:interfaceElementProperty];

  interfaceElementProperty2 = [propertyCopy interfaceElementProperty];

  if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    [v8 CGSizeValue];
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    SBSAAffineTransformFromContentScale(&v15, v10, v11);
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v12 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:v14];

    v8 = v12;
  }

  return v8;
}

- (BOOL)_isProperty:(id)property ofObject:(id)object equalToDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  propertyCopy = property;
  interfaceElementProperty = [propertyCopy interfaceElementProperty];
  v12 = [(SBSystemApertureViewController *)self _keyPathForProperty:propertyCopy];
  v13 = [(SBSystemApertureViewController *)self _valueForProperty:propertyCopy ofDescription:descriptionCopy];

  if ((BSEqualStrings() & 1) != 0 || (BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    v14 = [objectCopy valueForKeyPath:v12];
    [v14 CGRectValue];
    [v13 CGRectValue];
    v15 = SBSARectApproximatelyEqualToRect();
  }

  else if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    v14 = [objectCopy valueForKeyPath:v12];
    [v14 CGPointValue];
    [v13 CGPointValue];
    v15 = SBSAPointApproximatelyEqualToPoint();
  }

  else
  {
    v14 = [objectCopy valueForKeyPath:v12];
    v15 = BSEqualObjects();
  }

  v16 = v15;

  return v16;
}

- (id)_elementViewControllerForSizeTransitionWithDescription:(id)description fromPreferences:(id)preferences
{
  descriptionCopy = description;
  preferencesCopy = preferences;
  if ([preferencesCopy isCollisionImminent] && (objc_msgSend(preferencesCopy, "elementLayoutTransition"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "initialElementContexts"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10 > 1) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    elementViewController = 0;
  }

  else
  {
    interfaceElementIdentifier = [descriptionCopy interfaceElementIdentifier];
    v12 = [(SBSystemApertureViewController *)self _containerViewWithInterfaceElementIdentifier:interfaceElementIdentifier creatingIfNecessary:0];
    elementViewController = [v12 elementViewController];
  }

  return elementViewController;
}

- (BOOL)_shouldPerformTransitionOfProperty:(id)property ofObject:(id)object withDescription:(id)description fromPreferences:(id)preferences context:(id)context
{
  v71 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  objectCopy = object;
  descriptionCopy = description;
  preferencesCopy = preferences;
  contextCopy = context;
  v17 = objc_opt_class();
  v18 = propertyCopy;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  isContentBoundsProperty = [v20 isContentBoundsProperty];
  if (!isContentBoundsProperty)
  {
LABEL_22:
    if (![(SBSystemApertureViewController *)self _isProperty:v18 ofObject:objectCopy equalToDescription:descriptionCopy])
    {
      v41 = 1;
      goto LABEL_46;
    }

    v42 = objc_opt_class();
    v43 = objectCopy;
    if (v42)
    {
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;

    if (!v45)
    {
      v41 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v58 = preferencesCopy;
    v60 = contextCopy;
    v46 = [preferencesCopy effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:v18];
    v57 = [(NSMutableDictionary *)self->_lastAppliedPropertyIdentitiesToTransitionDescriptions objectForKey:v18];
    behaviorSettings = [v57 behaviorSettings];
    behaviorSettings2 = [v46 behaviorSettings];
    v49 = BSEqualObjects();

    if ((v49 & 1) == 0)
    {
      v50 = [(SBSystemApertureViewController *)self _keyPathForProperty:v18];
      contextCopy = v60;
      if (isContentBoundsProperty)
      {
        v51 = SBLogSystemAperturePreferencesStack();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349570;
          queryIteration = [v60 queryIteration];
          v67 = 2112;
          v68 = v50;
          v69 = 2112;
          v70 = v45;
          _os_log_debug_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEBUG, "[%{public}lu] [NOTE]: Performing transition due to updated behavior settings for UNSUPPORTED '%@' keypath of view '%@'", buf, 0x20u);
        }
      }

      if ([v45 sbsa_isPropertyActivelyC2AnimatingForKeyPath:v50])
      {
        v52 = MEMORY[0x277D75D18];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __118__SBSystemApertureViewController__shouldPerformTransitionOfProperty_ofObject_withDescription_fromPreferences_context___block_invoke;
        v61[3] = &unk_2783A8ED8;
        v62 = v45;
        v63 = v50;
        v64 = v60;
        v53 = v50;
        [v52 performWithoutAnimation:v61];

        preferencesCopy = v58;
        goto LABEL_42;
      }
    }

    milestones = [v46 milestones];
    v55 = [milestones count];

    if (!v55)
    {
      v41 = 0;
      preferencesCopy = v58;
      contextCopy = v60;
      goto LABEL_44;
    }

    v53 = SBLogSystemAperturePreferencesStack();
    preferencesCopy = v58;
    contextCopy = v60;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _shouldPerformTransitionOfProperty:ofObject:withDescription:fromPreferences:context:];
    }

LABEL_42:

    v41 = 1;
LABEL_44:

    goto LABEL_45;
  }

  v22 = objc_opt_class();
  v23 = objectCopy;
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  elementViewController = [v25 elementViewController];
  v27 = elementViewController;
  if (elementViewController)
  {
    elementViewProvider = [elementViewController elementViewProvider];
  }

  else
  {
    [v25 outgoingElementViewController];
    v59 = v18;
    v29 = isContentBoundsProperty;
    v30 = preferencesCopy;
    selfCopy = self;
    v32 = objectCopy;
    v33 = descriptionCopy;
    v35 = v34 = contextCopy;
    elementViewProvider = [v35 elementViewProvider];

    contextCopy = v34;
    descriptionCopy = v33;
    objectCopy = v32;
    self = selfCopy;
    preferencesCopy = v30;
    isContentBoundsProperty = v29;
    v18 = v59;
  }

  if (!elementViewProvider || (objc_opt_respondsToSelector() & 1) == 0 || ![elementViewProvider isRequestingLayoutUpdateForHostedClient])
  {

    goto LABEL_22;
  }

  v36 = contextCopy;
  element = [elementViewProvider element];
  v38 = SAUILayoutSpecifyingOverriderForElement();
  behaviorOverridingTarget = [v38 behaviorOverridingTarget];

  if (objc_opt_respondsToSelector())
  {
    layoutHost = [behaviorOverridingTarget layoutHost];
    [layoutHost preferredComponentViewSizeDidInvalidateForLayoutSpecifier:behaviorOverridingTarget];
  }

  v41 = 1;
  contextCopy = v36;
LABEL_46:

  return v41;
}

void __118__SBSystemApertureViewController__shouldPerformTransitionOfProperty_ofObject_withDescription_fromPreferences_context___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sbsa_presentationModifierValueForKeyPath:*(a1 + 40)];
  v3 = SBLogSystemAperturePreferencesStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 48) queryIteration];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 134349826;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v2;
    _os_log_debug_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updating '%@' keypath of view '%@' to presentation value '%@' in order to retarget animation parameters of in-progress animation", &v7, 0x2Au);
  }

  [*(a1 + 32) setValue:v2 forKeyPath:*(a1 + 40)];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
}

- (id)_propertyUpdateBlockArrayForPropertyIdentity:(id)identity ofObject:(id)object withDescription:(id)description withTransitionDescription:(id)transitionDescription forceSingle:(BOOL)single behaviorSettingsArray:(id *)array updateDescriptionsArray:(id *)descriptionsArray
{
  singleCopy = single;
  descriptionsArrayCopy2 = descriptionsArray;
  identityCopy = identity;
  objectCopy = object;
  descriptionCopy = description;
  transitionDescriptionCopy = transitionDescription;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v59 = [(SBSystemApertureViewController *)self _keyPathForProperty:identityCopy];
  v19 = [objectCopy _independentlyAnimatableMemberKeyPathsForPropertyKeyPath:?];
  v20 = MEMORY[0x277CBEB98];
  keyPathsWithAuxillaryBehaviorSettings = [transitionDescriptionCopy keyPathsWithAuxillaryBehaviorSettings];
  v22 = [v20 setWithArray:keyPathsWithAuxillaryBehaviorSettings];

  v60 = v22;
  v57 = v19;
  if ([v22 count] && ((objc_opt_self(), v23 = objc_claimAutoreleasedReturnValue(), v24 = objectCopy, !v23) ? (v25 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v25 = 0) : (v25 = v24), (v24, v23, v25) && objc_msgSend(v19, "intersectsSet:", v60) && !singleCopy))
  {
    v55 = objectCopy;
    keyPathsWithAuxillaryBehaviorSettings2 = [transitionDescriptionCopy keyPathsWithAuxillaryBehaviorSettings];
    v27 = v19;
    v28 = keyPathsWithAuxillaryBehaviorSettings2;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_2;
    v85[3] = &unk_2783B5428;
    v29 = v27;
    v86 = v29;
    v30 = [v28 bs_filter:v85];
    v31 = [v30 mutableCopy];

    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_3;
    v83[3] = &unk_2783A8B78;
    v32 = array;
    v33 = v31;
    v84 = v33;
    v34 = [v29 bs_filter:v83];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_4;
    v77[3] = &unk_2783B5058;
    v77[4] = selfCopy;
    v56 = identityCopy;
    v35 = identityCopy;
    v78 = v35;
    v54 = descriptionCopy;
    v63 = descriptionCopy;
    v79 = v63;
    v62 = v24;
    v80 = v62;
    v53 = v34;
    v81 = v53;
    v36 = v59;
    v82 = v36;
    v37 = MEMORY[0x223D6F7F0](v77);
    v66 = v32;
    [v32 addObject:v37];

    behaviorSettings = [transitionDescriptionCopy behaviorSettings];
    [array2 addObject:behaviorSettings];

    [array3 addObject:@"Base"];
    v64 = transitionDescriptionCopy;
    if ([v33 count])
    {
      do
      {
        lastObject = [v33 lastObject];
        [v33 removeLastObject];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_5;
        v75[3] = &unk_2783A8B78;
        v40 = v33;
        v76 = v40;
        v41 = [v29 bs_filter:v75];
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_6;
        v69[3] = &unk_2783B5058;
        v69[4] = selfCopy;
        v70 = v35;
        v71 = v63;
        v72 = v62;
        v73 = v41;
        v74 = v36;
        v42 = v41;
        v43 = v35;
        v44 = MEMORY[0x223D6F7F0](v69);
        [v66 addObject:v44];

        v45 = [v64 auxillaryBehaviorSettingsForKeyPath:lastObject];
        [array2 addObject:v45];

        v35 = v43;
        [array3 addObject:lastObject];
      }

      while ([v40 count]);
    }

    objectCopy = v55;
    identityCopy = v56;
    descriptionsArrayCopy2 = descriptionsArray;
    descriptionCopy = v54;
    transitionDescriptionCopy = v64;
    array = v66;
    arrayCopy2 = array;
    v47 = array2;
  }

  else
  {
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke;
    v87[3] = &unk_2783A9BD8;
    v87[4] = selfCopy;
    v88 = identityCopy;
    v89 = descriptionCopy;
    v90 = objectCopy;
    v48 = MEMORY[0x223D6F7F0](v87);
    [array addObject:v48];

    v47 = array2;
    if (transitionDescriptionCopy)
    {
      behaviorSettings2 = [transitionDescriptionCopy behaviorSettings];
      [array2 addObject:behaviorSettings2];
    }

    [array3 addObject:@"Only update block"];

    arrayCopy2 = array;
  }

  if (arrayCopy2)
  {
    v50 = [v47 count];
    if (v50 != [array count] && objc_msgSend(array, "count") >= 2)
    {
      [SBSystemApertureViewController _propertyUpdateBlockArrayForPropertyIdentity:ofObject:withDescription:withTransitionDescription:forceSingle:behaviorSettingsArray:updateDescriptionsArray:];
    }

    *arrayCopy2 = [MEMORY[0x277CBEA60] arrayWithArray:{v47, v53}];
  }

  if (descriptionsArrayCopy2)
  {
    *descriptionsArrayCopy2 = [MEMORY[0x277CBEA60] arrayWithArray:array3];
  }

  v51 = [MEMORY[0x277CBEA60] arrayWithArray:{array, v53}];

  return v51;
}

void __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _valueForProperty:*(a1 + 40) ofDescription:*(a1 + 48)];
  v2 = [*(a1 + 32) _keyPathForProperty:*(a1 + 40)];
  [*(a1 + 56) setValue:v8 forKeyPath:v2];
  v3 = *(a1 + 56);
  v4 = objc_opt_self();
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

  [v7 layoutIfNeeded];
}

void __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_4(uint64_t a1)
{
  v7 = [*(a1 + 32) _valueForProperty:*(a1 + 40) ofDescription:*(a1 + 48)];
  [*(a1 + 56) _setValue:? byUpdatingMemberKeypaths:? forKeyPath:?];
  v2 = *(a1 + 56);
  v3 = objc_opt_self();
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

  [v6 layoutIfNeeded];
}

void __188__SBSystemApertureViewController__propertyUpdateBlockArrayForPropertyIdentity_ofObject_withDescription_withTransitionDescription_forceSingle_behaviorSettingsArray_updateDescriptionsArray___block_invoke_6(uint64_t a1)
{
  v7 = [*(a1 + 32) _valueForProperty:*(a1 + 40) ofDescription:*(a1 + 48)];
  [*(a1 + 56) _setValue:? byUpdatingMemberKeypaths:? forKeyPath:?];
  v2 = *(a1 + 56);
  v3 = objc_opt_self();
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

  [v6 layoutIfNeeded];
}

- (void)_updateProperty:(id)property ofObject:(id)object withDescription:(id)description fromPreferences:(id)preferences conditionalAnimations:(id)animations conditionalCompletion:(id)completion context:(id)context
{
  v137 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  objectCopy = object;
  descriptionCopy = description;
  preferencesCopy = preferences;
  animationsCopy = animations;
  completionCopy = completion;
  contextCopy = context;
  v92 = propertyCopy;
  if (propertyCopy && objectCopy && descriptionCopy && preferencesCopy && [(SBSystemApertureViewController *)self _shouldPerformTransitionOfProperty:propertyCopy ofObject:objectCopy withDescription:descriptionCopy fromPreferences:preferencesCopy context:contextCopy])
  {
    v80 = [preferencesCopy effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:propertyCopy];
    if (v80 && ((v15 = objc_opt_class(), v16 = propertyCopy, !v15) ? (v17 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v17 = 0) : (v17 = v16), v18 = v17, v16, v19 = [v18 isContentBoundsProperty], v18, v19))
    {
      v20 = [(SBSystemApertureViewController *)self _elementViewControllerForSizeTransitionWithDescription:descriptionCopy fromPreferences:preferencesCopy];
    }

    else
    {
      v20 = 0;
    }

    v78 = v20;
    v134 = 0;
    v135 = 0;
    v79 = [SBSystemApertureViewController _propertyUpdateBlockArrayForPropertyIdentity:"_propertyUpdateBlockArrayForPropertyIdentity:ofObject:withDescription:withTransitionDescription:forceSingle:behaviorSettingsArray:updateDescriptionsArray:" ofObject:propertyCopy withDescription:objectCopy withTransitionDescription:descriptionCopy forceSingle:&v134 behaviorSettingsArray:? updateDescriptionsArray:?];
    v77 = v135;
    v76 = v134;
    if (v80)
    {
      behaviorSettings = [v80 behaviorSettings];
      isUnanimated = [behaviorSettings isUnanimated];

      if ((isUnanimated & 1) == 0)
      {
        lastAppliedPropertyIdentitiesToTransitionDescriptions = self->_lastAppliedPropertyIdentitiesToTransitionDescriptions;
        if (!lastAppliedPropertyIdentitiesToTransitionDescriptions)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v35 = self->_lastAppliedPropertyIdentitiesToTransitionDescriptions;
          self->_lastAppliedPropertyIdentitiesToTransitionDescriptions = v34;

          lastAppliedPropertyIdentitiesToTransitionDescriptions = self->_lastAppliedPropertyIdentitiesToTransitionDescriptions;
        }

        [(NSMutableDictionary *)lastAppliedPropertyIdentitiesToTransitionDescriptions setObject:v80 forKey:propertyCopy];
        milestones = [v80 milestones];
        if ([milestones containsObject:0x28336F620])
        {
          objc_initWeak(&location, self);
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke;
          v129[3] = &unk_2783AEB60;
          objc_copyWeak(&v132, &location);
          v130 = v80;
          v131 = propertyCopy;
          v75 = MEMORY[0x223D6F7F0](v129);
          v37 = [milestones mutableCopy];
          [v37 removeObject:0x28336F620];

          objc_destroyWeak(&v132);
          objc_destroyWeak(&location);
          v38 = v37;
        }

        else
        {
          v75 = 0;
          v38 = milestones;
        }

        v74 = v38;
        [(SBSystemApertureViewController *)self _addFloatAnimatablePropertyForTransitionDescriptionIfNecessary:v80 propertyIdentity:v92 milestones:?];
        animatedTransitionIdentifier = [v80 animatedTransitionIdentifier];
        v89 = [(SBSystemApertureViewController *)self _floatAnimatablePropertyForTransitionIdentifier:animatedTransitionIdentifier];

        v40 = [(SBSystemApertureViewController *)self _keyPathForProperty:v92];
        v41 = [objectCopy _independentlyAnimatableMemberKeyPathsForPropertyKeyPath:v40];
        v87 = [v41 count] > 1;

        array = [MEMORY[0x277CBEB18] array];
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v43 = v79;
        v44 = [v43 countByEnumeratingWithState:&v125 objects:v136 count:16];
        if (v44)
        {
          v45 = *v126;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v126 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = *(*(&v125 + 1) + 8 * i);
              if ([array count])
              {
                v118[0] = MEMORY[0x277D85DD0];
                v118[1] = 3221225472;
                v118[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_5;
                v118[3] = &unk_2783A9348;
                v118[4] = v47;
                v48 = MEMORY[0x223D6F7F0](v118);
                [array addObject:v48];
              }

              else
              {
                v119[0] = MEMORY[0x277D85DD0];
                v119[1] = 3221225472;
                v119[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_2;
                v119[3] = &unk_2783B8660;
                v124 = v87;
                v120 = v89;
                v122 = v47;
                v123 = animationsCopy;
                v121 = v92;
                v49 = MEMORY[0x223D6F7F0](v119);
                [array addObject:v49];
              }
            }

            v44 = [v43 countByEnumeratingWithState:&v125 objects:v136 count:16];
          }

          while (v44);
        }

        objc_initWeak(&location, self);
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_7;
        v115[3] = &unk_2783A9CE8;
        objc_copyWeak(&v117, &location);
        v88 = v89;
        v116 = v88;
        v50 = MEMORY[0x223D6F7F0](v115);
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_8;
        v111[3] = &unk_2783B00B0;
        objc_copyWeak(&v114, &location);
        v51 = v92;
        v112 = v51;
        v52 = v80;
        v113 = v52;
        v53 = MEMORY[0x223D6F7F0](v111);
        v54 = MEMORY[0x277CCACA8];
        associatedInterfaceElementIdentifier = [v51 associatedInterfaceElementIdentifier];
        uUIDString = [associatedInterfaceElementIdentifier UUIDString];
        interfaceElementProperty = [v51 interfaceElementProperty];
        v58 = [v54 stringWithFormat:@"animated property update: %@ - %@", uUIDString, interfaceElementProperty];

        [(SBSystemApertureViewController *)self _beginRequiringBacklightAssertionForReason:v58];
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_9;
        v103[3] = &unk_2783B8688;
        v72 = v50;
        v106 = v72;
        v73 = v53;
        v107 = v73;
        v28 = v75;
        v108 = v28;
        v109 = completionCopy;
        v59 = v51;
        v104 = v59;
        objc_copyWeak(&v110, &location);
        v60 = v58;
        v105 = v60;
        v90 = MEMORY[0x223D6F7F0](v103);
        if (v78)
        {
          v61 = [SBSystemApertureFluidAnimator alloc];
          behaviorSettings2 = [v52 behaviorSettings];
          v63 = [(SBSystemApertureFluidAnimator *)v61 initWithSettings:behaviorSettings2];

          v64 = objc_alloc_init(MEMORY[0x277D763A0]);
          [v64 _setIsAnimated:1];
          [v64 _setContainerView:self->_containerParent];
          [v64 _setAnimator:v63];
          _transitionCoordinator = [v64 _transitionCoordinator];
          if ([preferencesCopy isCollisionImminent] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [_transitionCoordinator setPerformingSystemApertureInertTransition:1];
          }

          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_10;
          v101[3] = &unk_2783A9488;
          v102 = array;
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_11;
          v99[3] = &unk_2783B86B0;
          v100 = v90;
          [_transitionCoordinator animateAlongsideTransition:v101 completion:v99];
          v66 = [(SBSystemApertureViewController *)self _valueForProperty:v59 ofDescription:descriptionCopy];
          [v66 CGRectValue];
          [v78 viewWillTransitionToSize:_transitionCoordinator withTransitionCoordinator:{v67, v68}];

          [(SBSystemApertureAnimator *)v63 animateTransition:v64];
        }

        else if ([array count] < 2)
        {
          v70 = MEMORY[0x277D75D18];
          v63 = [v77 objectAtIndexedSubscript:0];
          v71 = [array objectAtIndexedSubscript:0];
          [v70 sb_animateWithSettings:v63 mode:3 animations:v71 completion:v90];
        }

        else
        {
          v69 = MEMORY[0x277D65DA0];
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_12;
          v95[3] = &unk_2783AE908;
          v96 = array;
          v97 = v77;
          v98 = v76;
          [v69 perform:v95 finalCompletion:v90];

          v63 = v96;
        }

        objc_destroyWeak(&v110);
        objc_destroyWeak(&v114);

        objc_destroyWeak(&v117);
        objc_destroyWeak(&location);

        v32 = v74;
        goto LABEL_47;
      }

      behaviorSettings3 = [v80 behaviorSettings];
      isUnanimated2 = [behaviorSettings3 isUnanimated];

      if (isUnanimated2)
      {
        milestones2 = [v80 milestones];
        v26 = [milestones2 count];

        if (v26)
        {
          [(SBSystemApertureViewController *)self _animatedTransitionDidReachMilestone:v80 description:propertyCopy propertyIdentity:1 finished:0 retargeted:1.79769313e308];
        }
      }
    }

    v27 = [(NSMutableDictionary *)self->_lastAppliedPropertyIdentitiesToTransitionDescriptions objectForKey:propertyCopy];
    v28 = v27;
    if (v27)
    {
      animatedTransitionIdentifier2 = [v27 animatedTransitionIdentifier];
      v30 = [(SBSystemApertureViewController *)self _floatAnimatablePropertyForTransitionIdentifier:animatedTransitionIdentifier2];

      [(SBSystemApertureViewController *)self _animatedTransitionDidReachMilestone:v28 description:propertyCopy propertyIdentity:1 finished:1 retargeted:1.79769313e308];
      [(SBSystemApertureViewController *)self _invalidateAndRemoveFloatAnimatableProperty:v30 forTransitionIdentifier:0];
      [(NSMutableDictionary *)self->_lastAppliedPropertyIdentitiesToTransitionDescriptions removeObjectForKey:propertyCopy];
    }

    v31 = MEMORY[0x277D75D18];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_13;
    v93[3] = &unk_2783A8C18;
    v94 = v79;
    [v31 _performWithoutRetargetingAnimations:v93];
    v32 = v94;
LABEL_47:
  }
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _animatedTransitionDidReachMilestone:*(a1 + 32) description:*(a1 + 40) propertyIdentity:a2 finished:a3 retargeted:1.79769313e308];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_3;
  v9[3] = &unk_2783B4968;
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = *(&v8 + 1);
  v6 = *(a1 + 40);
  *&v7 = v4;
  *(&v7 + 1) = v6;
  v10 = v7;
  v11 = v8;
  [v2 _modifyAnimationsByDecomposingGeometricTypes:v3 animations:v9];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_4;
  v7[3] = &unk_2783A8C18;
  v8 = *(a1 + 32);
  LODWORD(v3) = *MEMORY[0x277CD9DD0];
  LODWORD(v4) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v7 animations:{v3, v4, v5}];
  (*(*(a1 + 48) + 16))();
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 40));
  }
}

uint64_t __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_6;
  v2[3] = &unk_2783A9348;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _modifyAnimationsByDecomposingGeometricTypes:1 animations:v2];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateAndRemoveFloatAnimatableProperty:*(a1 + 32) forTransitionIdentifier:0];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained[165] objectForKey:*(a1 + 32)];
    v4 = [v3 animatedTransitionIdentifier];
    v5 = [*(a1 + 40) animatedTransitionIdentifier];
    v6 = BSEqualObjects();

    WeakRetained = v7;
    if (v6)
    {
      [v7[165] removeObjectForKey:*(a1 + 32)];
      WeakRetained = v7;
    }
  }
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 32), a2, a3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _endRequiringBacklightAssertionForReason:*(a1 + 40)];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) firstObject];
  v1[2]();
}

uint64_t __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u, 0);
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_12(id *a1, void *a2)
{
  v9 = a2;
  if ([a1[4] count])
  {
    v3 = 0;
    do
    {
      v4 = MEMORY[0x277D75D18];
      v5 = [a1[5] objectAtIndexedSubscript:v3];
      v6 = [a1[4] objectAtIndexedSubscript:v3];
      v7 = [a1[6] objectAtIndexedSubscript:v3];
      v8 = v9[2](v9, v7);
      [v4 sb_animateWithSettings:v5 mode:3 animations:v6 completion:v8];

      ++v3;
    }

    while (v3 < [a1[4] count]);
  }
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_13(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_14;
  v2[3] = &unk_2783A8C18;
  v3 = *(a1 + 32);
  [v1 _modifyAnimationsByDecomposingGeometricTypes:1 animations:v2];
}

void __143__SBSystemApertureViewController__updateProperty_ofObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke_14(uint64_t a1)
{
  v1 = [*(a1 + 32) sbsa_onlyObjectOrNilAssert];
  v1[2]();
}

- (void)_updateObject:(id)object withDescription:(id)description fromPreferences:(id)preferences conditionalAnimations:(id)animations conditionalCompletion:(id)completion context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  descriptionCopy = description;
  preferencesCopy = preferences;
  animationsCopy = animations;
  completionCopy = completion;
  contextCopy = context;
  v30 = preferencesCopy;
  propertiesWithAnimatedTransitionDescriptions = [preferencesCopy propertiesWithAnimatedTransitionDescriptions];
  v17 = [propertiesWithAnimatedTransitionDescriptions sortedArrayUsingComparator:&__block_literal_global_545];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        associatedInterfaceElementIdentifier = [v23 associatedInterfaceElementIdentifier];
        interfaceElementIdentifier = [descriptionCopy interfaceElementIdentifier];
        v26 = BSEqualObjects();

        if (v26)
        {
          [(SBSystemApertureViewController *)self _updateProperty:v23 ofObject:objectCopy withDescription:descriptionCopy fromPreferences:v30 conditionalAnimations:animationsCopy conditionalCompletion:completionCopy context:contextCopy];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }
}

uint64_t __132__SBSystemApertureViewController__updateObject_withDescription_fromPreferences_conditionalAnimations_conditionalCompletion_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 isContentBoundsProperty];
  if (v10 && ((v11 = objc_opt_class(), v12 = v5, !v11) ? (v13 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v13 = 0) : (v13 = v12), v14 = v13, v12, v15 = [v14 isContentBoundsProperty], v14, !v15))
  {
    v21 = 1;
  }

  else
  {
    v16 = objc_opt_class();
    v17 = v7;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
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

    v19 = v18;

    v20 = [v19 isContentBoundsProperty];
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v22 = objc_opt_class();
      v23 = v5;
      if (v22)
      {
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = [v25 isContentBoundsProperty];
      v21 = v26 << 63 >> 63;
    }
  }

  return v21;
}

- (id)_containerViewWithInterfaceElementIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    orderedContainerViews = selfCopy->_orderedContainerViews;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __99__SBSystemApertureViewController__containerViewWithInterfaceElementIdentifier_creatingIfNecessary___block_invoke;
    v16[3] = &unk_2783B86F8;
    v9 = identifierCopy;
    v17 = v9;
    v10 = [(NSMutableArray *)orderedContainerViews bs_firstObjectPassingTest:v16];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = !necessaryCopy;
    }

    if (!v11)
    {
      v10 = [(SBSystemApertureViewController *)selfCopy _newContainerViewWithInterfaceElementIdentifier:v9];
      v12 = selfCopy->_orderedContainerViews;
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v14 = selfCopy->_orderedContainerViews;
        selfCopy->_orderedContainerViews = v13;

        v12 = selfCopy->_orderedContainerViews;
      }

      [(NSMutableArray *)v12 addObject:v10];
      [(SBFTouchPassThroughView *)selfCopy->_containerParent insertSubview:v10 belowSubview:selfCopy->_magiciansCurtainView];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __99__SBSystemApertureViewController__containerViewWithInterfaceElementIdentifier_creatingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 interfaceElementIdentifier];
  if (BSEqualObjects())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 interfaceElementIdentifier];
    v4 = v5 == 0;
  }

  return v4;
}

- (id)_childElementViewControllerWithIdentity:(id)identity
{
  v21 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  childViewControllers = [(SBSystemApertureViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = v10;
          elementViewProvider = [v11 elementViewProvider];
          element = [elementViewProvider element];
          v14 = SAElementIdentityEqualToIdentity();

          if (v14)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)_removeElementViewControllersExceptingThoseWithDescriptions:(id)descriptions
{
  v22 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childViewControllers = [(SBSystemApertureViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = v9;
          elementViewProvider = [v10 elementViewProvider];
          element = [elementViewProvider element];

          if (element)
          {
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __94__SBSystemApertureViewController__removeElementViewControllersExceptingThoseWithDescriptions___block_invoke;
            v15[3] = &unk_2783B8720;
            v16 = element;
            if (([descriptionsCopy bs_containsObjectPassingTest:v15] & 1) == 0)
            {
              [(SBSystemApertureViewController *)self _cleanupViewController:v10];
              v13 = [(SBSystemApertureViewController *)self _containerViewForViewController:v10];
              [v13 setElementViewController:0];
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

uint64_t __94__SBSystemApertureViewController__removeElementViewControllersExceptingThoseWithDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

- (void)_removeContainerViewsExceptingThoseWithDescriptions:(id)descriptions
{
  v18 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = &selfCopy->super.super.super.super.isa;
  v6 = [(NSMutableArray *)selfCopy->_orderedContainerViews copy];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __86__SBSystemApertureViewController__removeContainerViewsExceptingThoseWithDescriptions___block_invoke;
        v12[3] = &unk_2783B0210;
        v12[4] = v10;
        if (([descriptionsCopy bs_containsObjectPassingTest:v12] & 1) == 0)
        {
          [v10 removeFromSuperview];
          [obj[134] removeObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
}

uint64_t __86__SBSystemApertureViewController__removeContainerViewsExceptingThoseWithDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

- (void)_addActiveSnapshotAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v9 = assertionCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    snapshotAssertions = selfCopy->_snapshotAssertions;
    if (!snapshotAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = selfCopy->_snapshotAssertions;
      selfCopy->_snapshotAssertions = weakObjectsHashTable;

      snapshotAssertions = selfCopy->_snapshotAssertions;
    }

    [(NSHashTable *)snapshotAssertions addObject:v9];
    objc_sync_exit(selfCopy);

    assertionCopy = v9;
  }
}

- (void)_removeActiveSnapshotAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v6 = assertionCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_snapshotAssertions removeObject:v6];
    objc_sync_exit(selfCopy);

    assertionCopy = v6;
  }
}

- (id)_activeSnapshotAssertionForElementIdentity:(id)identity
{
  v17 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = selfCopy->_snapshotAssertions;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (SAElementIdentityEqualToIdentity())
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_elementContextsForOrderedElementViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    viewIfLoaded = [(SBSystemApertureViewController *)self viewIfLoaded];
    [viewIfLoaded bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(controllersCopy, "count")}];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke;
    v19[3] = &unk_2783B8770;
    v16 = v15;
    selfCopy = self;
    v22 = a2;
    v20 = v16;
    v23 = v8;
    v24 = v10;
    v25 = v12;
    v26 = v14;
    [controllersCopy enumerateObjectsUsingBlock:v19];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke_2;
  v10[3] = &unk_2783B8748;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v10[4] = v5;
  v7 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v7;
  v8 = v3;
  v9 = [SBSAElementContext instanceWithBlock:v10];
  [v6 addObject:v9];
}

void __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke_2(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = a1;
    v5 = objc_opt_self();
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

    a1 = v4;
    if (!v8)
    {
      __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke_2_cold_1();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 40) elementViewProvider];
  v10 = [v9 element];
  v11 = [SBSAElementIdentification alloc];
  v12 = [v10 clientIdentifier];
  v13 = [v10 elementIdentifier];
  v14 = [(SBSAElementIdentification *)v11 initWithClientIdentifier:v12 elementIdentifier:v13];

  v15 = v10;
  v16 = [v10 clientIdentifier];
  [v8 setClientIdentifier:v16];

  v17 = [v10 elementIdentifier];
  [v8 setElementIdentifier:v17];

  v18 = SAUILayoutSpecifyingOverriderForElement();
  v19 = [v18 layoutMode];
  [v8 setLayoutMode:v19];
  v20 = SAUILayoutSpecifyingOverriderForElementViewController();
  [v8 setRequestingMenuPresentation:{objc_msgSend(v20, "isRequestingMenuPresentation")}];

  [*(a1 + 32) _maximumContainerViewOutsetsInBounds:v19 inLayoutMode:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _hostSuggestedOutsetsForElement:v15];
  v95 = v19;
  v96 = v18;
  [v18 preferredEdgeOutsetsForLayoutMode:v19 suggestedOutsets:? maximumOutsets:?];
  [v8 setPreferredEdgeOutsets:?];
  v21 = *(*(a1 + 32) + 1080);
  v22 = [*(a1 + 40) elementViewProvider];
  v23 = [v22 element];
  v24 = [v21 elementViewControllerForElement:v23];
  LOBYTE(v18) = SBSAIsElementViewControllerFixedInOrientation(v24);

  if (v18)
  {
    v25 = 1;
  }

  else
  {
    v25 = *(*(a1 + 32) + 1184);
  }

  [v8 setInterfaceOrientation:v25];
  if (objc_opt_respondsToSelector())
  {
    v26 = [v9 systemApertureCustomLayout];
  }

  else
  {
    v26 = 0;
  }

  [v8 setSystemApertureCustomLayout:v26];
  if (objc_opt_respondsToSelector())
  {
    v27 = [v9 customLayoutRequestingSpecialFlowerBoundsResizingAnimation];
  }

  else
  {
    v27 = 0;
  }

  [v8 setSystemApertureCustomLayoutCustomAnimationStyle:v27];
  v99 = v3;
  v97 = v15;
  if (objc_opt_respondsToSelector())
  {
    v28 = [v9 systemApertureLayoutCustomizingOptions];
  }

  else
  {
    v28 = 0;
  }

  [v8 setSystemApertureLayoutCustomizingOptions:v28];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v98 = a1;
  v29 = *(*(a1 + 32) + 1224);
  v30 = [v29 countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v105;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v105 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v104 + 1) + 8 * i);
        v35 = [v34 elementIdentity];
        v36 = SAElementIdentityEqualToIdentity();

        if (v36)
        {
          [v8 setActiveDynamicAnimation:{objc_msgSend(v34, "animationType")}];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v104 objects:v108 count:16];
    }

    while (v31);
  }

  if (objc_opt_respondsToSelector())
  {
    v37 = [v97 keyColor];
    [v8 setKeyColor:v37];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 setPreventsInteractiveGestures:{objc_msgSend(v97, "preventsInteractiveGestures")}];
  }

  v38 = *MEMORY[0x277CBF3A0];
  v39 = *(MEMORY[0x277CBF3A0] + 8);
  v40 = *(MEMORY[0x277CBF3A0] + 16);
  v41 = *(MEMORY[0x277CBF3A0] + 24);
  v42 = v9;
  v43 = [v42 systemApertureLayoutSpecifyingOverrider];
  v44 = objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v102 = v39;
    v103 = v38;
    v100 = v41;
    v101 = v40;
    v56 = v41;
    v57 = v40;
    v58 = v39;
    v59 = v38;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_45;
    }

    v100 = v41;
    v101 = v40;
    v102 = v39;
    v103 = v38;
    if (v44)
    {
      goto LABEL_41;
    }

LABEL_43:
    v61 = [v42 trailingView];
    [v61 bounds];
    v59 = v76;
    v58 = v77;
    v57 = v78;
    v56 = v79;
    goto LABEL_44;
  }

  if ((v44 & 1) == 0)
  {
    v71 = [v42 leadingView];
    [v71 bounds];
    v102 = v73;
    v103 = v72;
    v100 = v75;
    v101 = v74;

    v56 = v41;
    v57 = v40;
    v58 = v39;
    v59 = v38;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v45 = *(v98 + 32);
  v46 = [v42 leadingView];
  [v45 maximumAvailableSizeForProvidedLeadingView:v46 fromViewProvider:v42];
  v48 = v47;
  v50 = v49;
  v51 = [v42 leadingView];
  [v43 sizeThatFitsSize:v51 forProvidedView:v95 inLayoutMode:{v48, v50}];
  BSRectWithSize();
  v102 = v53;
  v103 = v52;
  v100 = v55;
  v101 = v54;

  v56 = v41;
  v57 = v40;
  v58 = v39;
  v59 = v38;
  if (objc_opt_respondsToSelector())
  {
LABEL_41:
    v60 = *(v98 + 32);
    v61 = [v42 trailingView];
    [v60 maximumAvailableSizeForProvidedTrailingView:v61 fromViewProvider:v42];
    v63 = v62;
    v65 = v64;
    v66 = [v42 leadingView];
    [v43 sizeThatFitsSize:v66 forProvidedView:v95 inLayoutMode:{v63, v65}];
    BSRectWithSize();
    v59 = v67;
    v58 = v68;
    v57 = v69;
    v56 = v70;

LABEL_44:
  }

LABEL_45:
  if (objc_opt_respondsToSelector())
  {
    if (v44)
    {
      v80 = *(v98 + 32);
      v81 = [v42 minimalView];
      [v80 maximumAvailableSizeForProvidedMinimalView:v81 fromViewProvider:v42];
      v83 = v82;
      v85 = v84;
      v86 = [v42 leadingView];
      [v43 sizeThatFitsSize:v86 forProvidedView:v95 inLayoutMode:{v83, v85}];
      BSRectWithSize();
      v38 = v87;
      v39 = v88;
      v40 = v89;
      v41 = v90;
    }

    else
    {
      v81 = [v42 minimalView];
      [v81 bounds];
      v38 = v91;
      v39 = v92;
      v40 = v93;
      v41 = v94;
    }
  }

  [v8 setPreferredLeadingBounds:{v103, v102, v101, v100}];
  [v8 setPreferredTrailingBounds:{v59, v58, v57, v56}];
  [v8 setPreferredMinimalBounds:{v38, v39, v40, v41}];
  [v8 setViewControllerAppearState:{objc_msgSend(*(v98 + 40), "_appearState")}];
}

- (id)_secureElementContextsForOrderedElementViewControllers:(id)controllers
{
  v23 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = controllersCopy;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        elementViewProvider = [*(*(&v18 + 1) + 8 * i) elementViewProvider];
        element = [elementViewProvider element];

        if (objc_opt_respondsToSelector())
        {
          v11 = element;
          if ([v11 isSecureFlipBookElement] && ((objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v11, "isRegisteredForCapture") || (objc_opt_respondsToSelector() & 1) == 0) && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v12 = v11;
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __89__SBSystemApertureViewController__secureElementContextsForOrderedElementViewControllers___block_invoke;
            v16[3] = &unk_2783B8798;
            v17 = v12;
            v13 = [(SBSAAbstractDictionaryBackedContext *)SBSASecureFlipBookElementContext instanceWithBlock:v16];
            [array addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return array;
}

void __89__SBSystemApertureViewController__secureElementContextsForOrderedElementViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 clientIdentifier];
  [v4 setClientIdentifier:v5];

  v6 = [*(a1 + 32) elementIdentifier];
  [v4 setElementIdentifier:v6];

  v7 = [*(a1 + 32) preferredConfiguration];
  [v4 setRequestedConfigurationName:v7];

  v8 = [*(a1 + 32) preferredComponentStates];
  [v4 setRequestedComponentsToStates:v8];
}

uint64_t __72__SBSystemApertureViewController__systemApertureManagedIndicatorEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  _systemApertureManagedIndicatorEnabled_systemApertureManagedIndicatorEnabled_0 = result;
  return result;
}

- (void)_setBlobEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _isBlobEnabled = [(SBSystemApertureViewController *)self _isBlobEnabled];
  if (enabledCopy)
  {
    if (!_isBlobEnabled)
    {

      [(SBSystemApertureViewController *)self _addMitosisBlobEffects];
    }
  }

  else if (_isBlobEnabled)
  {

    [(SBSystemApertureViewController *)self _removeMitosisBlobEffects];
  }
}

- (void)_setBlobRadius:(double)radius
{
  if (self->_blobRadius != radius)
  {
    self->_blobRadius = radius;
    if ([(SBSystemApertureViewController *)self _isBlobEnabled])
    {
      layer = [(UIView *)self->_containerBackgroundParent layer];
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
      [layer setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    }
  }
}

- (BOOL)_handlePreferencesDidChangeAction:(id)action
{
  if (action)
  {
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:1];
  }

  return action != 0;
}

- (BOOL)_handleContainerTapAction:(id)action
{
  if (action)
  {
    associatedInterfaceElementIdentifier = [action associatedInterfaceElementIdentifier];
    v6 = [(SBSystemApertureViewController *)self _containerViewWithInterfaceElementIdentifier:associatedInterfaceElementIdentifier creatingIfNecessary:0];
    elementViewController = [v6 elementViewController];

    elementViewProvider = [elementViewController elementViewProvider];
    element = [elementViewProvider element];

    v10 = [elementViewController handleElementTap:self->_interactionLongPressGesture];
    [(SBSystemApertureViewController *)self _pushPendingInteractionResultForElementIdentity:element interactionSource:1 viewInteractionResult:v10];
    clientIdentifier = [element clientIdentifier];
    elementIdentifier = [element elementIdentifier];
    [SBSystemApertureTelemetryEmitter logTelemetryForInteractionTap:v10 != 0 clientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
  }

  return action != 0;
}

- (BOOL)_handleContainerPressAction:(id)action
{
  if (action)
  {
    associatedInterfaceElementIdentifier = [action associatedInterfaceElementIdentifier];
    v6 = [(SBSystemApertureViewController *)self _containerViewWithInterfaceElementIdentifier:associatedInterfaceElementIdentifier creatingIfNecessary:0];
    elementViewController = [v6 elementViewController];

    elementViewProvider = [elementViewController elementViewProvider];
    element = [elementViewProvider element];

    v10 = [elementViewController handleElementLongPress:self->_interactionLongPressGesture];
    [(SBSystemApertureViewController *)self _pushPendingInteractionResultForElementIdentity:element interactionSource:2 viewInteractionResult:v10];
    clientIdentifier = [element clientIdentifier];
    elementIdentifier = [element elementIdentifier];
    [SBSystemApertureTelemetryEmitter logTelemetryForInteractionLongPress:v10 != 0 clientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
  }

  return action != 0;
}

- (id)_feedbackGeneratorForStyle:(int64_t)style
{
  impactFeedbackStylesToGenerators = self->_impactFeedbackStylesToGenerators;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)impactFeedbackStylesToGenerators objectForKey:v6];

  if (!v7)
  {
    if (style == 2)
    {
      v7 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:2];
      v8 = self->_impactFeedbackStylesToGenerators;
      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = self->_impactFeedbackStylesToGenerators;
        self->_impactFeedbackStylesToGenerators = v9;

        v8 = self->_impactFeedbackStylesToGenerators;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      [(NSMutableDictionary *)v8 setObject:v7 forKey:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_handleImpactFeedbackAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (actionCopy)
  {
    v6 = -[SBSystemApertureViewController _feedbackGeneratorForStyle:](self, "_feedbackGeneratorForStyle:", [actionCopy impactFeedbackStyle]);
    if (v6)
    {
      if ([v5 prepareOnly])
      {
        [v6 prepare];
      }

      else
      {
        [v6 impactOccurred];
      }
    }
  }

  return v5 != 0;
}

- (BOOL)_handleContainerResizeAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    resizeActionResult = [actionCopy resizeActionResult];
    associatedInterfaceElementIdentifier = [actionCopy associatedInterfaceElementIdentifier];

    v8 = [(SBSystemApertureViewController *)self _containerViewWithInterfaceElementIdentifier:associatedInterfaceElementIdentifier creatingIfNecessary:0];
    [(SBSystemApertureViewController *)self _handleResizeResult:resizeActionResult withContainerView:v8];
  }

  return action != 0;
}

- (BOOL)_handleCalloutBlockAction:(id)action
{
  if (action)
  {
    calloutBlock = [action calloutBlock];
    v5 = calloutBlock;
    if (calloutBlock)
    {
      (*(calloutBlock + 16))(calloutBlock);
    }
  }

  return action != 0;
}

- (void)_handleContainerDefaultPressGesture:(id)gesture
{
  gestureCopy = gesture;
  v6 = gestureCopy;
  activeContainerDefaultPressGestureDescription = self->_activeContainerDefaultPressGestureDescription;
  if (activeContainerDefaultPressGestureDescription)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__SBSystemApertureViewController__handleContainerDefaultPressGesture___block_invoke;
    v10[3] = &unk_2783AD750;
    v12 = a2;
    v10[4] = self;
    v11 = gestureCopy;
    v8 = [(SBSAGestureDescription *)activeContainerDefaultPressGestureDescription copyWithBlock:v10];
    v9 = self->_activeContainerDefaultPressGestureDescription;
    self->_activeContainerDefaultPressGestureDescription = v8;

    [(SBSystemApertureViewController *)self _pushGestureDescription:self->_activeContainerDefaultPressGestureDescription];
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:1024];
  }
}

void __70__SBSystemApertureViewController__handleContainerDefaultPressGesture___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
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

    if (!v6)
    {
      __70__SBSystemApertureViewController__handleContainerDefaultPressGesture___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setGestureRecognizerState:{objc_msgSend(*(a1 + 40), "state")}];
}

- (void)_handleContainerResizeGesture:(id)gesture
{
  gestureCopy = gesture;
  v6 = gestureCopy;
  activeContainerResizeGestureDescription = self->_activeContainerResizeGestureDescription;
  if (activeContainerResizeGestureDescription)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SBSystemApertureViewController__handleContainerResizeGesture___block_invoke;
    v10[3] = &unk_2783AD750;
    v12 = a2;
    v10[4] = self;
    v11 = gestureCopy;
    v8 = [(SBSAGestureDescription *)activeContainerResizeGestureDescription copyWithBlock:v10];
    v9 = self->_activeContainerResizeGestureDescription;
    self->_activeContainerResizeGestureDescription = v8;

    [(SBSystemApertureViewController *)self _pushGestureDescription:self->_activeContainerResizeGestureDescription];
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:1024];
  }
}

void __64__SBSystemApertureViewController__handleContainerResizeGesture___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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

    if (!v6)
    {
      __64__SBSystemApertureViewController__handleContainerResizeGesture___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setGestureRecognizerState:{objc_msgSend(*(a1 + 40), "state")}];
  v7 = [*(a1 + 32) view];
  _UISystemGestureTranslationInView();
  [v6 setTranslation:?];
}

- (void)_pushGestureDescription:(id)description
{
  descriptionCopy = description;
  v5 = SBLogSystemAperturePreferencesStackGestures();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemApertureViewController _pushGestureDescription:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &OBJC_IVAR___SBSystemApertureViewController__longPressGestureUpdateQueue;
LABEL_7:
    v7 = *(&self->super.super.super.super.isa + *v6);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &OBJC_IVAR___SBSystemApertureViewController__resizeGestureUpdateQueue;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  lastObject = [v7 lastObject];
  v9 = BSEqualObjects();

  if ((v9 & 1) == 0)
  {
    [v7 addObject:descriptionCopy];
  }
}

- (void)_configureLongPressGestureIfNecessary
{
  if (!self->_activeContainerDefaultPressGestureDescription)
  {
    [(SBSystemApertureViewController *)self _configureInteractionLongPressIfNecessary];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SBSystemApertureViewController__configureLongPressGestureIfNecessary__block_invoke;
    v6[3] = &unk_2783A93E8;
    v6[4] = self;
    v6[5] = a2;
    v4 = [(SBSAGestureDescription *)SBSAContainerLongPressGestureDescription instanceWithBlock:v6];
    activeContainerDefaultPressGestureDescription = self->_activeContainerDefaultPressGestureDescription;
    self->_activeContainerDefaultPressGestureDescription = v4;
  }
}

void __71__SBSystemApertureViewController__configureLongPressGestureIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v2 = objc_opt_self();
    v3 = v7;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
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

    v5 = v4;

    if (!v5)
    {
      __71__SBSystemApertureViewController__configureLongPressGestureIfNecessary__block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  [v5 setGestureIdentifier:v6];
}

- (void)_configureResizeGestureIfNecessary
{
  if (!self->_activeContainerResizeGestureDescription)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__SBSystemApertureViewController__configureResizeGestureIfNecessary__block_invoke;
    v5[3] = &unk_2783A93E8;
    v5[4] = self;
    v5[5] = a2;
    v3 = [(SBSAGestureDescription *)SBSAContainerPanGestureDescription instanceWithBlock:v5];
    activeContainerResizeGestureDescription = self->_activeContainerResizeGestureDescription;
    self->_activeContainerResizeGestureDescription = v3;
  }
}

void __68__SBSystemApertureViewController__configureResizeGestureIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v2 = objc_opt_self();
    v3 = v7;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
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

    v5 = v4;

    if (!v5)
    {
      __68__SBSystemApertureViewController__configureResizeGestureIfNecessary__block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  [v5 setGestureIdentifier:v6];
}

- (void)_configureGesturesIfNecessary
{
  [(SBSystemApertureViewController *)self _configureLongPressGestureIfNecessary];

  [(SBSystemApertureViewController *)self _configureResizeGestureIfNecessary];
}

- (id)_contextWithOrderedElementViewControllers:(id)controllers
{
  controllersCopy = controllers;
  queryIteration = self->_queryIteration;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke;
  v10[3] = &unk_2783AD750;
  v11 = controllersCopy;
  v12 = a2;
  v10[4] = self;
  v7 = controllersCopy;
  v8 = [SBSAContext instanceWithQueryIteration:queryIteration block:v10];

  return v8;
}

void __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
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

    if (!v7)
    {
      __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) _defaultsContextForDefaults];
  [v7 setDefaultsContext:v8];

  v9 = [*(a1 + 32) traitCollection];
  [v9 displayScale];
  [v7 setDisplayScale:?];
  [v7 setMaximumNumberOfElements:{objc_msgSend(*(a1 + 32), "_maximumNumberOfSimultaneouslyVisibleElements")}];
  [*(a1 + 32) minimumSensorRegionFrame];
  [v7 setInertContainerFrame:?];
  [*(*(a1 + 32) + 1040) bounds];
  [v7 setSystemContainerBounds:?];
  v10 = [*(a1 + 32) _platformMetricsContext];
  [v7 setPlatformMetrics:v10];

  [v7 setLayoutDirection:{objc_msgSend(v9, "layoutDirection")}];
  [v7 setBacklightLuminanceLevel:{objc_msgSend(v9, "_backlightLuminance")}];
  [v7 setLandscapeScreenEdgeInsets:{24.0, 21.0, 24.0, 21.0}];
  [v7 setAccessibilityZoomActiveAndEnabled:{objc_msgSend(*(a1 + 32), "_axZoomActiveAndEnabled")}];
  [v7 setReduceTransparencyEnabled:SBReduceTransparency()];
  [v7 setOverrideRenderingStyle:{objc_msgSend(*(a1 + 32), "_effectiveOverrideRenderingStyle")}];
  [v7 setCloningStyle:*(*(a1 + 32) + 1240)];
  v11 = [*(a1 + 32) _indicatorElementContext];
  [v7 setIndicatorElementContext:v11];

  [v7 setMinimumNumberOfContainers:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1544));
  v13 = [WeakRetained associatedWindowScene];
  [v7 setActiveDisplay:{objc_msgSend(v13, "isMainDisplayWindowScene") ^ 1}];

  [v7 setAnimatedTransitionInProgress:{objc_msgSend(*(a1 + 32), "_isAnimatedTransitionInProgress")}];
  [v7 setHeavyShadowRequiredForTransition:{objc_msgSend(*(*(a1 + 32) + 1208), "count") != 0}];
  [v7 setKeyLineRequiredForTransition:{objc_msgSend(*(*(a1 + 32) + 1216), "count") != 0}];
  [v7 setClearModeEnabled:{objc_msgSend(*(*(a1 + 32) + 1472), "count") != 0}];
  [v7 setReachabilityActiveOrAnimating:{objc_msgSend(*(a1 + 32), "_reachabilityActiveOrAnimating")}];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_2;
  v33[3] = &unk_2783A93E8;
  v14 = *(a1 + 48);
  v33[4] = *(a1 + 32);
  v33[5] = v14;
  v15 = [SBSAViewDescription instanceWithBlock:v33];
  [v7 setContainerParentViewDescription:v15];

  v16 = [*(a1 + 32) _elementContextsForOrderedElementViewControllers:*(a1 + 40)];
  [v7 setElementContexts:v16];

  v17 = [*(a1 + 32) _flushPendingInteractionResults];
  [v7 setElementInteractionResults:v17];

  v18 = [*(*(a1 + 32) + 1408) allObjects];
  v19 = [v18 bs_mapNoNulls:&__block_literal_global_636];
  [v7 setElementSnapshotContexts:v19];

  if (_os_feature_enabled_impl())
  {
    v20 = [*(a1 + 32) _secureElementContextsForOrderedElementViewControllers:*(a1 + 40)];
    [v7 setSecureFlipBookElementContexts:v20];

    v21 = [*(*(a1 + 32) + 1456) currentSecureFlipBookRenderingContext];
    [v7 setSecureFlipBookRenderingContext:v21];
  }

  v22 = [*(a1 + 32) _flushPendingTransitionResults];
  [v7 setAnimatedTransitionResults:v22];

  v23 = [*(a1 + 32) _flushElapsedTimerDescriptions];
  [v7 setElapsedTimerDescriptions:v23];

  v24 = [*(a1 + 32) _popActiveGestureDescriptions];
  [v7 setGestureDescriptions:v24];

  v25 = [*(*(a1 + 32) + 1072) bs_firstObjectPassingTest:&__block_literal_global_639];
  v26 = [v25 containerViewDescription];
  [v7 setIndicatorContainerViewDescription:v26];

  v27 = [*(*(a1 + 32) + 1072) bs_mapNoNulls:&__block_literal_global_642];
  [v7 setContainerViewDescriptions:v27];

  v28 = [*(a1 + 32) _flushSignificantUpdateTransitionAssertions];
  if (v28)
  {
    v29 = *(a1 + 32);
    v30 = objc_alloc_init(SBSACollisionRequest);
    [v29 _addActiveRequest:v30];

    [v28 invalidateWithReason:@"Added to context"];
  }

  v31 = [*(a1 + 32) _flushActiveRequests];
  [v7 setRequests:v31];

  v32 = [*(a1 + 32) _flushMaintainedPreferences];
  [v7 setMaintainedPreferences:v32];
}

void __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v12;
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

    v3 = v12;
    if (!v7)
    {
      __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_2_cold_1();
      v3 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 32) + 1312);
  if (!v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = *(a1 + 32);
    v11 = *(v10 + 1312);
    *(v10 + 1312) = v9;

    v8 = *(*(a1 + 32) + 1312);
  }

  [v7 setInterfaceElementIdentifier:v8];
  [*(a1 + 32) containerParentCenter];
  [v7 setCenter:?];
}

SBSAElementSnapshotContext *__76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBSAElementSnapshotContext alloc] initWithSnapshotIdentity:v2];

  return v3;
}

uint64_t __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 elementViewController];
  v4 = v3;
  if (!v3)
  {
    v4 = [v2 outgoingElementViewController];
  }

  v5 = [v4 elementViewProvider];
  v6 = [v5 element];
  v7 = SAHasIndicatorBehavior();

  if (!v3)
  {
  }

  return v7;
}

id __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 elementViewController];
  v4 = v3;
  if (!v3)
  {
    v4 = [v2 outgoingElementViewController];
  }

  v5 = [v4 elementViewProvider];
  v6 = [v5 element];
  if (SAHasIndicatorBehavior())
  {
    v7 = 0;
  }

  else
  {
    v7 = [v2 containerViewDescription];
  }

  if (!v3)
  {
  }

  return v7;
}

- (void)_addActiveRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v9 = requestCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeRequests = selfCopy->_activeRequests;
    if (!activeRequests)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = selfCopy->_activeRequests;
      selfCopy->_activeRequests = v7;

      activeRequests = selfCopy->_activeRequests;
    }

    [(NSMutableArray *)activeRequests addObject:v9];
    objc_sync_exit(selfCopy);

    requestCopy = v9;
  }
}

- (void)setContainerParentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(UIView *)self->_containerSubBackgroundParent setCenter:?];
  [(UIView *)self->_containerBackgroundParent setCenter:x, y];
  containerParent = self->_containerParent;

  [(SBFTouchPassThroughView *)containerParent setCenter:x, y];
}

- (void)_handleContainerParentUpdatesFromPreferences:(id)preferences context:(id)context
{
  contextCopy = context;
  preferencesCopy = preferences;
  containerParentViewDescription = [preferencesCopy containerParentViewDescription];
  [(SBSystemApertureViewController *)self _updateObject:self withDescription:containerParentViewDescription fromPreferences:preferencesCopy conditionalAnimations:0 conditionalCompletion:0 context:contextCopy];
}

- (void)_handleContainerAndElementUpdatesFromPreferences:(id)preferences orderedElementViewControllers:(id)controllers context:(id)context
{
  v113[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  controllersCopy = controllers;
  contextCopy = context;
  elementDescriptions = [preferencesCopy elementDescriptions];
  indicatorElementDescription = [preferencesCopy indicatorElementDescription];
  if (indicatorElementDescription)
  {
    if (elementDescriptions)
    {
      v9 = [elementDescriptions arrayByAddingObject:indicatorElementDescription];

      elementDescriptions = v9;
    }

    else
    {
      v113[0] = indicatorElementDescription;
      elementDescriptions = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:1];
    }
  }

  [(SBSystemApertureViewController *)self _removeElementViewControllersExceptingThoseWithDescriptions:elementDescriptions];
  v72 = elementDescriptions;
  v69 = [elementDescriptions mutableCopy];
  indicatorContainerViewDescription = [preferencesCopy indicatorContainerViewDescription];
  containerViewDescriptions = [preferencesCopy containerViewDescriptions];
  v78 = preferencesCopy;
  if (indicatorContainerViewDescription)
  {
    indicatorContainerViewDescription2 = [preferencesCopy indicatorContainerViewDescription];
    v13 = [containerViewDescriptions arrayByAddingObject:indicatorContainerViewDescription2];

    containerViewDescriptions = v13;
    preferencesCopy = v78;
  }

  selfCopy2 = self;
  [(SBSystemApertureViewController *)self _removeContainerViewsExceptingThoseWithDescriptions:containerViewDescriptions];
  [(SBSystemApertureViewController *)self _updateContainerViewRanks];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = containerViewDescriptions;
  v74 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v74)
  {
    v73 = *v100;
    do
    {
      v15 = 0;
      do
      {
        if (*v100 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v99 + 1) + 8 * v15);
        interfaceElementIdentifier = [v16 interfaceElementIdentifier];
        v18 = [(SBSystemApertureViewController *)selfCopy2 _containerViewWithInterfaceElementIdentifier:interfaceElementIdentifier creatingIfNecessary:1];

        associatedSystemApertureElementIdentity = [v16 associatedSystemApertureElementIdentity];
        v20 = associatedSystemApertureElementIdentity;
        if (associatedSystemApertureElementIdentity && (v97[0] = MEMORY[0x277D85DD0], v97[1] = 3221225472, v97[2] = __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke, v97[3] = &unk_2783B8820, v98 = associatedSystemApertureElementIdentity, [controllersCopy bs_firstObjectPassingTest:v97], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = v21;
          [v18 setElementViewController:v21];
          log = 1;
          v23 = v22;
        }

        else
        {
          elementViewController = [v18 elementViewController];
          elementViewProvider = [elementViewController elementViewProvider];
          element = [elementViewProvider element];
          v27 = SAElementIdentityEqualToIdentity();

          if (v27)
          {
            v22 = elementViewController;
          }

          else
          {
            v22 = 0;
          }

          [v18 setElementViewController:0];
          v23 = 0;
          log = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          if (!v20)
          {
            goto LABEL_31;
          }
        }

        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_2;
        v95[3] = &unk_2783B8720;
        v96 = v20;
        v31 = [v72 bs_firstObjectPassingTest:v95];
        v29 = v31;
        v30 = 0;
        v28 = v31 != 0;
        if (v22 && v31)
        {
          if (objc_opt_respondsToSelector())
          {
            v29 = v29;
            snapshotReason = [v29 snapshotReason];
            if (snapshotReason && (objc_opt_respondsToSelector() & 1) != 0 && ([v22 beginRequiringSnapshotForReason:snapshotReason], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v34 = v33;
              v81 = v22;
              associatedSystemApertureElementIdentity2 = [v29 associatedSystemApertureElementIdentity];
              v36 = [(SBSystemApertureViewController *)self _activeSnapshotAssertionForElementIdentity:associatedSystemApertureElementIdentity2];

              v30 = v34;
              if (v34 == v36)
              {

                v30 = 0;
              }

              else
              {
                [(SBSystemApertureViewController *)self _removeActiveSnapshotAssertion:v36];
                [(SBSystemApertureViewController *)self _addActiveSnapshotAssertion:v34];
              }

              v22 = v81;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          v28 = 1;
        }

LABEL_31:
        v80 = v30;
        v82 = v22;
        elementViewProvider2 = [v23 elementViewProvider];
        element2 = [elementViewProvider2 element];
        v39 = SAHasIndicatorBehavior();

        if (log && v28)
        {
          [v69 removeObject:v29];
          parentViewController = [v23 parentViewController];

          if (parentViewController != self)
          {
            [(SBSystemApertureViewController *)self addChildViewController:v23];
            if (objc_opt_respondsToSelector())
            {
              [v23 addElementViewControllingObserver:self];
            }

            if (v39)
            {
              -[SBSystemApertureViewController _didRegisterNewIndicatorViewController:needsMatchMove:](self, "_didRegisterNewIndicatorViewController:needsMatchMove:", v23, [indicatorElementDescription needsMatchMoveAnimationBetweenCurtainAndJindoViews]);
            }

            [v23 didMoveToParentViewController:self];
          }

          view = [v23 view];
          superview = [view superview];
          v43 = [superview isDescendantOfView:v18];

          if ((v43 & 1) == 0)
          {
            view2 = [v23 view];
            [v18 addContentSubview:view2];
          }

          _appearState = [v23 _appearState];
          appearState = [v29 appearState];
          if (_appearState != appearState)
          {
            v47 = appearState;
            if (appearState > 1)
            {
              if (appearState == 3)
              {
                [v23 bs_beginAppearanceTransition:0 animated:1];
                if (_appearState)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                if (appearState != 2)
                {
                  goto LABEL_55;
                }

                [v23 bs_endAppearanceTransition];
                if (_appearState == 1)
                {
                  goto LABEL_55;
                }
              }
            }

            else if (appearState)
            {
              if (appearState != 1)
              {
                goto LABEL_55;
              }

              [v23 bs_beginAppearanceTransition:1 animated:1];
              if (_appearState != 2)
              {
                goto LABEL_55;
              }
            }

            v48 = SBLogSystemApertureController();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              SBSAStringFromUIViewControllerAppearState(_appearState);
              v52 = loga = v48;
              v53 = SBSAStringFromUIViewControllerAppearState(v47);
              v54 = [v20 description];
              queryIteration = [contextCopy queryIteration];
              *buf = 138544130;
              v105 = v52;
              v106 = 2114;
              v107 = v53;
              v108 = 2114;
              v109 = v54;
              v110 = 2048;
              v111 = queryIteration;
              _os_log_error_impl(&dword_21ED4E000, loga, OS_LOG_TYPE_ERROR, "Unexpected view controller appearance state transition (%{public}@) -> (%{public}@) for %{public}@ during query iteration: %lu", buf, 0x2Au);

              v48 = loga;
            }
          }
        }

LABEL_55:
        [v18 setContentClippingEnabled:{objc_msgSend(v16, "isContentClippingEnabled")}];
        [v18 setUserInteractionEnabled:{objc_msgSend(v16, "isUserInteractionEnabled")}];
        preferencesCopy = v78;
        if (v39)
        {
          [v18 addContainerViewGeometryObserver:self];
          elementViewProvider3 = [v23 elementViewProvider];
          if (!elementViewProvider3)
          {
            [SBSystemApertureViewController _handleContainerAndElementUpdatesFromPreferences:orderedElementViewControllers:context:];
          }

          if (objc_opt_respondsToSelector())
          {
            [v18 addContainerViewGeometryObserver:elementViewProvider3];
          }

          -[SBSystemApertureViewController _handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged:](self, "_handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged:", [indicatorElementDescription needsMatchMoveAnimationBetweenCurtainAndJindoViews]);
        }

        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_659;
        v92[3] = &unk_2783B8848;
        v94 = v39;
        v92[4] = self;
        v50 = v78;
        v93 = v50;
        [(SBSystemApertureViewController *)self _updateObject:v18 withDescription:v16 fromPreferences:v50 conditionalAnimations:v92 conditionalCompletion:0 context:contextCopy];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_2_661;
        v90[3] = &unk_2783B8870;
        v91 = v80;
        v51 = v80;
        [(SBSystemApertureViewController *)self _updateObject:v82 withDescription:v29 fromPreferences:v50 conditionalAnimations:0 conditionalCompletion:v90 context:contextCopy];

        if (v20)
        {

          v23 = v98;
        }

        else
        {
        }

        ++v15;
        selfCopy2 = self;
      }

      while (v74 != v15);
      v56 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
      v74 = v56;
    }

    while (v56);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v57 = v69;
  v58 = [v57 countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v87;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v87 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v86 + 1) + 8 * i);
        associatedSystemApertureElementIdentity3 = [v62 associatedSystemApertureElementIdentity];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_3;
        v84[3] = &unk_2783B8820;
        v64 = associatedSystemApertureElementIdentity3;
        v85 = v64;
        v65 = [controllersCopy bs_firstObjectPassingTest:v84];
        v66 = v65;
        if (v65)
        {
          v67 = v65;
        }

        else
        {
          v67 = [(SBSystemApertureViewController *)self _childElementViewControllerWithIdentity:v64];
        }

        v68 = v67;

        if ([v62 appearState] == 3)
        {
          [v68 bs_beginAppearanceTransition:0 animated:1];
        }

        preferencesCopy = v78;
        [(SBSystemApertureViewController *)self _updateObject:v68 withDescription:v62 fromPreferences:v78 conditionalAnimations:0 conditionalCompletion:0 context:contextCopy];
      }

      v59 = [v57 countByEnumeratingWithState:&v86 objects:v103 count:16];
    }

    while (v59);
  }
}

uint64_t __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];
  v4 = SAElementIdentityEqualToIdentity();

  return v4;
}

uint64_t __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_659(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 interfaceElementProperty];
  v4 = BSEqualStrings();

  if (*(a1 + 48) == 1)
  {
    v5 = [v10 interfaceElementProperty];
    v6 = BSEqualStrings();
  }

  else
  {
    v6 = 0;
  }

  if ((v4 | v6))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) effectiveMilestoneProvidingAnimatedTransitionDescriptionForProperty:v10];
    v9 = [v8 behaviorSettings];
    [v7 _updateStatusBarAvoidanceFrameWithAnimationSettings:v9];
  }
}

uint64_t __121__SBSystemApertureViewController__handleContainerAndElementUpdatesFromPreferences_orderedElementViewControllers_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];
  v4 = SAElementIdentityEqualToIdentity();

  return v4;
}

- (void)_handleSecureElementUpdatesFromPreferences:(id)preferences
{
  secureElementOverlayViewController = self->_secureElementOverlayViewController;
  secureFlipBookElementPreferences = [preferences secureFlipBookElementPreferences];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)secureElementOverlayViewController handleUpdatesForSecureElementPreferences:secureFlipBookElementPreferences];
}

- (void)_didRegisterNewIndicatorViewController:(id)controller needsMatchMove:(BOOL)move
{
  controllerCopy = controller;
  elementViewProvider = [controllerCopy elementViewProvider];
  fixedIndicatorView = [elementViewProvider fixedIndicatorView];
  indicatorView = [elementViewProvider indicatorView];
  v10 = indicatorView;
  if (fixedIndicatorView)
  {
    v11 = fixedIndicatorView;
  }

  else
  {
    v11 = indicatorView;
  }

  v12 = v11;
  objc_initWeak(&location, self);
  if (v12)
  {
    layer = [v12 layer];
    v14 = [layer animationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.fixedIndicatorMatchMoveAnimation"];

    if (!v14)
    {
      v15 = SBApp;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __88__SBSystemApertureViewController__didRegisterNewIndicatorViewController_needsMatchMove___block_invoke;
      v25[3] = &unk_2783A9CE8;
      objc_copyWeak(&v27, &location);
      v26 = v12;
      [v15 sb_performBlockAfterCATransactionSynchronizedCommit:v25];

      objc_destroyWeak(&v27);
    }
  }

  v16 = SBApp;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__SBSystemApertureViewController__didRegisterNewIndicatorViewController_needsMatchMove___block_invoke_2;
  v19[3] = &unk_2783B8898;
  objc_copyWeak(&v23, &location);
  v17 = v10;
  v20 = v17;
  v18 = fixedIndicatorView;
  v21 = v18;
  selfCopy = self;
  moveCopy = move;
  [v16 sb_performBlockAfterCATransactionSynchronizedCommit:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __88__SBSystemApertureViewController__didRegisterNewIndicatorViewController_needsMatchMove___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = _SBSystemApertureViewControllerPinViewToOtherView(WeakRetained[128], *(a1 + 32), @"com.apple.SpringBoard.SBSystemApertureViewController.fixedIndicatorMatchMoveAnimation");
    WeakRetained = v4;
  }
}

void __88__SBSystemApertureViewController__didRegisterNewIndicatorViewController_needsMatchMove___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WeakRetained[131];
    [v3 addPortalForIndicatorSourceView:*(a1 + 32)];
    if (*(a1 + 40))
    {
      [v3 addPortalForIndicatorSourceView:?];
    }

    [*(a1 + 48) _handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged:*(a1 + 64)];

    WeakRetained = v4;
  }
}

- (void)_handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged:(BOOL)changed
{
  changedCopy = changed;
  v22 = [(NSMutableArray *)self->_orderedContainerViews bs_firstObjectPassingTest:&__block_literal_global_664];
  outgoingElementViewController = [v22 outgoingElementViewController];
  v6 = outgoingElementViewController;
  if (outgoingElementViewController)
  {
    elementViewController = outgoingElementViewController;
  }

  else
  {
    elementViewController = [v22 elementViewController];
  }

  v8 = elementViewController;

  elementViewProvider = [v8 elementViewProvider];
  v10 = elementViewProvider;
  if (elementViewProvider)
  {
    fixedIndicatorView = [elementViewProvider fixedIndicatorView];
    v12 = [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster portalViewForIndicatorSourceView:fixedIndicatorView];
    indicatorView = [v10 indicatorView];
    v14 = [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster portalViewForIndicatorSourceView:indicatorView];
    if (changedCopy)
    {
      layer = [indicatorView layer];
      v16 = [layer animationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];

      if (!v16)
      {
        v17 = _SBSystemApertureViewControllerPinViewToOtherView(indicatorView, v14, @"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation");
        [v17 setAppliesY:0];
      }

      if (!fixedIndicatorView)
      {
        goto LABEL_13;
      }

      layer2 = [fixedIndicatorView layer];
      v19 = [layer2 animationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];

      if (v19)
      {
        goto LABEL_13;
      }

      layer4 = _SBSystemApertureViewControllerPinViewToOtherView(fixedIndicatorView, v12, @"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation");
      [layer4 setAppliesY:0];
    }

    else
    {
      layer3 = [v12 layer];
      [layer3 removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];

      layer4 = [v14 layer];
      [layer4 removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];
    }

LABEL_13:
  }
}

uint64_t __103__SBSystemApertureViewController__handleCurtainIndicatorPortalsNeedIndicatorMatchMoveAnimationChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 outgoingElementViewController];
  v4 = v3;
  if (!v3)
  {
    v4 = [v2 elementViewController];
  }

  v5 = [v4 elementViewProvider];
  v6 = [v5 element];
  v7 = SAHasIndicatorBehavior();

  if (!v3)
  {
  }

  return v7;
}

- (void)_handleBackgroundUpdatesFromPreferences:(id)preferences context:(id)context
{
  preferencesCopy = preferences;
  contextCopy = context;
  backgroundBlurDescription = [preferencesCopy backgroundBlurDescription];
  if (backgroundBlurDescription)
  {
    [(SBSystemApertureViewController *)self _updateObject:self withDescription:backgroundBlurDescription fromPreferences:preferencesCopy conditionalAnimations:0 conditionalCompletion:0 context:contextCopy];
  }
}

- (void)_handleCurtainUpdatesFromPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = preferencesCopy;
  magiciansCurtainView = self->_magiciansCurtainView;
  if (preferencesCopy)
  {
    [preferencesCopy curtainRenderingConfiguration];
    [(SBSystemApertureGainMapBackedRendering *)magiciansCurtainView setRenderingConfiguration:&v8];
    highLevelMagiciansCurtainView = self->_highLevelMagiciansCurtainView;
    [v5 highLevelCurtainRenderingConfiguration];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    [(SBSystemApertureGainMapBackedRendering *)magiciansCurtainView setRenderingConfiguration:&v8];
    highLevelMagiciansCurtainView = self->_highLevelMagiciansCurtainView;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  [(SBSystemApertureGainMapBackedRendering *)highLevelMagiciansCurtainView setRenderingConfiguration:&v8];
}

- (void)_handleAnyContentsDidChangePreferences:(id)preferences context:(id)context
{
  v5 = SBSAContextAndPreferencesRepresentAnyContentVisible(context, preferences);
  WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);
  if (self->_systemApertureContainsAnyContent != v5)
  {
    self->_systemApertureContainsAnyContent = v5;
    v7 = WeakRetained;
    [WeakRetained systemApertureViewController:self containsAnyContent:v5];
    WeakRetained = v7;
  }
}

- (void)_handleTimerUpdatesFromPreferences:(id)preferences
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  timerDescriptions = [preferences timerDescriptions];
  v5 = [timerDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(timerDescriptions);
        }

        [(SBSystemApertureViewController *)self _addTimerIfNecessaryForDescription:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [timerDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_gestureRecognizerForDescription:(id)description
{
  descriptionCopy = description;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = &OBJC_IVAR___SBSystemApertureViewController__interactionLongPressGesture;
LABEL_5:
    v6 = *(&self->super.super.super.super.isa + *v5);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = &OBJC_IVAR___SBSystemApertureViewController__resizePanGesture;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_handleGestureUpdatesFromPreferences:(id)preferences
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  gestureDescriptions = [preferences gestureDescriptions];
  v5 = [gestureDescriptions countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138412290;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(gestureDescriptions);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 gestureRecognizerState] == 4)
        {
          v11 = [(SBSystemApertureViewController *)self _gestureRecognizerForDescription:v10];
          if ([v11 state] >= 1)
          {
            v12 = SBLogSystemAperturePreferencesStackGestures();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = v13;
              v19 = v11;
              _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "Cancelling guesture from stack request: %@", buf, 0xCu);
            }

            [v11 sb_cancel];
          }
        }
      }

      v7 = [gestureDescriptions countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_handleHitTestingUpdatesWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  elementContexts = [context elementContexts];
  firstObject = [elementContexts firstObject];
  layoutMode = [firstObject layoutMode];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_orderedContainerViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        layer = [*(*(&v17 + 1) + 8 * v11) layer];
        [layer setAllowsHitTesting:layoutMode > 0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  interactionLongPressGesture = self->_interactionLongPressGesture;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  associatedWindowScene = [WeakRetained associatedWindowScene];
  systemGestureManager = [associatedWindowScene systemGestureManager];
  [(SBSystemApertureViewController *)self _promote:layoutMode < 1 gestureRecognizer:interactionLongPressGesture toSystemGestureWithManager:systemGestureManager type:136];
}

- (void)_handleMitosisBlobUpdatesFromPreferences:(id)preferences
{
  preferencesCopy = preferences;
  -[SBSystemApertureViewController _setBlobEnabled:](self, "_setBlobEnabled:", [preferencesCopy isBlobEnabled]);
  [preferencesCopy blobRadius];
  v6 = v5;

  [(SBSystemApertureViewController *)self _setBlobRadius:v6];
}

- (void)_handleActionsFromPreferences:(id)preferences
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  actions = [preferences actions];
  v5 = [actions countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [(SBSystemApertureViewController *)self _handlePreferencesDidChangeAction:v13];
        if (!v14)
        {
          v15 = objc_opt_class();
          v16 = v11;
          if (v15)
          {
            v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v16 : 0;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [(SBSystemApertureViewController *)self _handleContainerTapAction:v18];
          if (!v19)
          {
            v20 = objc_opt_class();
            v21 = v16;
            if (v20)
            {
              v22 = (objc_opt_isKindOfClass() & 1) != 0 ? v21 : 0;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            v24 = [(SBSystemApertureViewController *)self _handleContainerPressAction:v23];
            if (!v24)
            {
              v25 = objc_opt_class();
              v26 = v21;
              if (v25)
              {
                v27 = (objc_opt_isKindOfClass() & 1) != 0 ? v26 : 0;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              v29 = [(SBSystemApertureViewController *)self _handleImpactFeedbackAction:v28];
              if (!v29)
              {
                v30 = objc_opt_class();
                v31 = v26;
                if (v30)
                {
                  v32 = (objc_opt_isKindOfClass() & 1) != 0 ? v31 : 0;
                }

                else
                {
                  v32 = 0;
                }

                v33 = v32;

                v34 = [(SBSystemApertureViewController *)self _handleContainerResizeAction:v33];
                if (!v34)
                {
                  v35 = objc_opt_class();
                  v36 = v31;
                  if (v35)
                  {
                    if (objc_opt_isKindOfClass())
                    {
                      v37 = v36;
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v38 = v37;

                  [(SBSystemApertureViewController *)self _handleCalloutBlockAction:v38];
                }
              }
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v6);
  }
}

- (void)_handleDebuggingUtilityWithPreferences:(id)preferences context:(id)context withStackDepiction:(id)depiction andQueryIteration:(unint64_t)iteration
{
  [(SBSystemApertureDebuggingUtility *)self->_debuggingUtility updatedPreferences:preferences context:context withStackDepiction:depiction andQueryIteration:self->_queryIteration];
  registeredElements = [(SAUISystemApertureManager *)self->_systemApertureManager registeredElements];
  v9 = [registeredElements count];

  if (!v9)
  {
    [(SBSystemApertureDebuggingUtility *)self->_debuggingUtility clearBufferEntries];
  }

  queryIterationLabel = self->_queryIterationLabel;
  if (queryIterationLabel)
  {
    iteration = [MEMORY[0x277CCACA8] stringWithFormat:@"System Aperture Query Iteration: %li", iteration];
    [(UILabel *)queryIterationLabel setText:iteration];
  }
}

- (void)_updateWithPreferencesFromStackForValidationReason:(unsigned int)reason
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:];
  }

  if (self->_rootPreferencesProvider)
  {
    [(SAUISystemApertureManager *)self->_systemApertureManager hostWillPerformLayout];
    orderedElementViewControllers = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
    ++self->_queryIteration;
    v6 = [(SBSystemApertureViewController *)self _contextWithOrderedElementViewControllers:orderedElementViewControllers];
    v7 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:v6];
    }

    v8 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:v6];
    }

    v9 = SBLogSystemAperturePreferencesStack();
    SBSALogDictionaryDescribableDebug(v9, v6, v6);

    v10 = [(SBSARootPreferencesProvider *)self->_rootPreferencesProvider preferencesFromContext:v6];
    v11 = objc_opt_class();
    v12 = v10;
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

    v15 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:v6];
    }

    v16 = SBLogSystemAperturePreferencesStack();
    SBSALogDictionaryDescribableDebug(v16, v6, v14);

    stackDepiction = [(SBSABasePreferencesProvider *)self->_rootPreferencesProvider stackDepiction];
    v18 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:];
    }

    v19 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureViewController _updateWithPreferencesFromStackForValidationReason:v6];
    }

    [(SBSystemApertureViewController *)self _handleContainerParentUpdatesFromPreferences:v14 context:v6];
    indicatorElementViewController = [(SAUISystemApertureManager *)self->_systemApertureManager indicatorElementViewController];
    if (indicatorElementViewController)
    {
      indicatorElementViewController2 = [(SAUISystemApertureManager *)self->_systemApertureManager indicatorElementViewController];
      v22 = [orderedElementViewControllers arrayByAddingObject:indicatorElementViewController2];
      [(SBSystemApertureViewController *)self _handleContainerAndElementUpdatesFromPreferences:v14 orderedElementViewControllers:v22 context:v6];
    }

    else
    {
      [(SBSystemApertureViewController *)self _handleContainerAndElementUpdatesFromPreferences:v14 orderedElementViewControllers:orderedElementViewControllers context:v6];
    }

    if (_os_feature_enabled_impl())
    {
      [(SBSystemApertureViewController *)self _handleSecureElementUpdatesFromPreferences:v14];
    }

    [(SBSystemApertureViewController *)self _handleAnyContentsDidChangePreferences:v14 context:v6];
    -[SBSystemApertureViewController _handleSystemApertureCurtainPortalToSuperHighLevelScene:](self, "_handleSystemApertureCurtainPortalToSuperHighLevelScene:", [v14 isSystemApertureForcedToHardwareAdjacentPosition]);
    [(SBSystemApertureViewController *)self _handleCurtainUpdatesFromPreferences:v14];
    [(SBSystemApertureViewController *)self _handleBackgroundUpdatesFromPreferences:v14 context:v6];
    [(SBSystemApertureViewController *)self _handleTimerUpdatesFromPreferences:v14];
    [(SBSystemApertureViewController *)self _handleGestureUpdatesFromPreferences:v14];
    [(SBSystemApertureViewController *)self _handleHitTestingUpdatesWithContext:v6];
    [(SBSystemApertureViewController *)self _handleMitosisBlobUpdatesFromPreferences:v14];
    [(SBSystemApertureViewController *)self _handleActionsFromPreferences:v14];
    [(SBSystemApertureViewController *)self _handleTelemetryLoggingFromContext:v6];
    v23 = SBSAStringFromPreferencesInvalidationReason(reason);
    v24 = [v23 stringByAppendingFormat:@"\n\n%@", stackDepiction];
    [(SBSystemApertureViewController *)self _handleDebuggingUtilityWithPreferences:v14 context:v6 withStackDepiction:v24 andQueryIteration:self->_queryIteration];

    maintainedPreferences = [v14 maintainedPreferences];
    lastMaintainedPreferences = self->_lastMaintainedPreferences;
    self->_lastMaintainedPreferences = maintainedPreferences;

    [(SBSystemApertureViewController *)self _flushDidSettleHandlersIfNecessary];
    [(SBSystemApertureViewController *)self _flushIndicatorDidSettleHandlersIfNecessary];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"statusBarAvoidanceFrameDebuggingEnabled"])
  {
    unanimatedBehaviorSettings = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
    [(SBSystemApertureViewController *)self _updateStatusBarAvoidanceFrameWithAnimationSettings:unanimatedBehaviorSettings];
  }

  else if ([keyCopy isEqualToString:@"forceRTLLayout"])
  {
    [(SBSystemApertureViewController *)self _RTLOverrideChanged];
  }

  else
  {
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:2];
  }
}

- (void)_RTLOverrideChanged
{
  forceRTLLayout = [(SBSystemApertureSettings *)self->_settings forceRTLLayout];
  lastObject = [(NSMutableArray *)self->_rtlOverrideAssertions lastObject];
  v13 = lastObject;
  if (lastObject)
  {
    identifier = [lastObject identifier];
    v6 = SBSAStringFromUIUserInterfaceLayoutDirection(1);
    v7 = [identifier isEqualToString:v6];

LABEL_5:
    traitOverrides = [(SBSystemApertureViewController *)self traitOverrides];
    [traitOverrides setLayoutDirection:v7];
LABEL_6:

    goto LABEL_7;
  }

  if (forceRTLLayout)
  {
    v7 = 1;
    goto LABEL_5;
  }

  traitOverrides2 = [(SBSystemApertureViewController *)self traitOverrides];
  v10 = objc_opt_self();
  v11 = [traitOverrides2 containsTrait:v10];

  if (v11)
  {
    traitOverrides = [(SBSystemApertureViewController *)self traitOverrides];
    v12 = objc_opt_self();
    [traitOverrides removeTrait:v12];

    goto LABEL_6;
  }

LABEL_7:
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:2];
}

uint64_t __51__SBSystemApertureViewController__hasSecureElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 outgoingElementViewController];
  v4 = v3;
  if (!v3)
  {
    v4 = [v2 elementViewController];
  }

  v5 = [v4 elementViewProvider];
  v6 = [v5 element];

  if (!v3)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 isSecureFlipBookElement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleSystemApertureCurtainPortalToSuperHighLevelScene:(BOOL)scene
{
  curtainViewHoster = self->_curtainViewHoster;
  if (scene)
  {
    [(SBSystemApertureCurtainViewHoster *)curtainViewHoster addPortalForSystemApertureViewController:self];
  }

  else
  {
    [(SBSystemApertureCurtainViewHoster *)curtainViewHoster removePortalForSystemApertureViewController:self];
  }
}

- (void)_elementKeyColorWasInvalidated:(id)invalidated
{
  v18 = *MEMORY[0x277D85DE8];
  userInfo = [invalidated userInfo];
  v5 = [userInfo objectForKey:@"SBSystemApertureNotificationUserInfoElementKey"];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_orderedContainerViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(SBSystemApertureViewController *)self _elementForContainerView:*(*(&v13 + 1) + 8 * v10), v13];
          v12 = [v5 isEqual:v11];

          if (v12)
          {

            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x2000];
  }
}

- (id)_elementForContainerView:(id)view
{
  elementViewController = [view elementViewController];
  elementViewProvider = [elementViewController elementViewProvider];
  element = [elementViewProvider element];

  return element;
}

- (id)_elementViewControllerForLayoutSpecifyingOverrider:(id)overrider
{
  systemApertureManager = self->_systemApertureManager;
  v4 = SATargetElementFromBehaviorOverrider();
  v5 = [(SAUISystemApertureManager *)systemApertureManager elementViewControllerForElement:v4];

  return v5;
}

- (id)_layoutSpecifyingOverriderForContainerView:(id)view
{
  elementViewController = [view elementViewController];
  v4 = SAUILayoutSpecifyingOverriderForElementViewController();

  return v4;
}

- (id)_containerViewForViewController:(id)controller includingOutgoing:(BOOL)outgoing
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (controllerCopy)
  {
    orderedContainerViews = self->_orderedContainerViews;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__SBSystemApertureViewController__containerViewForViewController_includingOutgoing___block_invoke;
    v11[3] = &unk_2783B88E0;
    v12 = controllerCopy;
    outgoingCopy = outgoing;
    v9 = [(NSMutableArray *)orderedContainerViews bs_firstObjectPassingTest:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __84__SBSystemApertureViewController__containerViewForViewController_includingOutgoing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 elementViewController];
  if (v4 == *(a1 + 32))
  {
    v6 = 1;
  }

  else if (*(a1 + 40) == 1)
  {
    v5 = [v3 outgoingElementViewController];
    v6 = v5 == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_cleanupViewController:(id)controller
{
  controllerCopy = controller;
  elementViewProvider = [controllerCopy elementViewProvider];
  element = [elementViewProvider element];
  v6 = SAHasIndicatorBehavior();

  if (v6)
  {
    elementViewProvider2 = [controllerCopy elementViewProvider];
    indicatorView = [elementViewProvider2 indicatorView];
    v9 = [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster portalViewForIndicatorSourceView:indicatorView];
    layer = [v9 layer];
    [layer removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];

    [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster removePortalForIndicatorSourceView:indicatorView];
    fixedIndicatorView = [elementViewProvider2 fixedIndicatorView];
    if (fixedIndicatorView)
    {
      v12 = [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster portalViewForIndicatorSourceView:fixedIndicatorView];
      layer2 = [v12 layer];
      [layer2 removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.curtainIndicatorMatchMoveAnimation"];

      [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster removePortalForIndicatorSourceView:fixedIndicatorView];
    }
  }

  [controllerCopy bs_endAppearanceTransition:0];
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy removeElementViewControllingObserver:self];
  }
}

- (id)_animatablePropertyWithProgressMilestones:(id)milestones block:(id)block
{
  v23[1] = *MEMORY[0x277D85DE8];
  milestonesCopy = milestones;
  blockCopy = block;
  v7 = [milestonesCopy count];
  v8 = 0;
  if (blockCopy && v7)
  {
    v9 = [milestonesCopy mutableCopy];
    v8 = objc_alloc_init(MEMORY[0x277D75D38]);
    [v8 setValue:0.0];
    objc_initWeak(&location, v8);
    v10 = MEMORY[0x277D75D18];
    v23[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __82__SBSystemApertureViewController__animatablePropertyWithProgressMilestones_block___block_invoke;
    v18 = &unk_2783AACB8;
    objc_copyWeak(&v21, &location);
    v12 = v9;
    v19 = v12;
    v13 = blockCopy;
    v20 = v13;
    [v10 _createTransformerWithInputAnimatableProperties:v11 presentationValueChangedCallback:&v15];

    if ([v12 containsObject:{&unk_28336F370, v15, v16, v17, v18}])
    {
      (*(v13 + 2))(v13, v8, 0.0);
      [v12 removeObject:&unk_28336F370];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __82__SBSystemApertureViewController__animatablePropertyWithProgressMilestones_block___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained isInvalidated];
    [v3 presentationValue];
    v6 = v5;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          [v13 bs_CGFloatValue];
          if ((v4 & 1) == 0 && BSFloatLessThanOrEqualToFloat())
          {
            (*(*(a1 + 40) + 16))(v6);
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
            }

            [v10 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(a1 + 32) removeObject:{*(*(&v19 + 1) + 8 * j), v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (NSDirectionalEdgeInsets)_maximumContainerViewOutsetsInBounds:(CGRect)bounds inLayoutMode:(int64_t)mode
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics sensorRegionSize];
  v12 = v11;
  v26 = v13;

  _layoutMetrics2 = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics2 minimumScreenEdgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v21 = v18 + (v12 - CGRectGetWidth(v27)) * 0.5;
  if (mode < 2)
  {
    v23 = *MEMORY[0x277D75060];
    v22 = *(MEMORY[0x277D75060] + 16);
    v24 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v22 = v26 + v20 - CGRectGetHeight(v28);
    v23 = -v16;
    v24 = v21;
  }

  v25 = v21;
  result.trailing = v24;
  result.bottom = v22;
  result.leading = v25;
  result.top = v23;
  return result;
}

- (NSDirectionalEdgeInsets)_validatedEdgeOutsetsForPreferredOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  if (maximumOutsets.top >= outsets.top)
  {
    outsets.top = maximumOutsets.top;
  }

  v4 = fmin(outsets.top, 0.0);
  if (maximumOutsets.leading >= outsets.leading)
  {
    outsets.leading = maximumOutsets.leading;
  }

  v5 = fmin(outsets.leading, 0.0);
  if (maximumOutsets.bottom >= outsets.bottom)
  {
    outsets.bottom = maximumOutsets.bottom;
  }

  v6 = fmin(outsets.bottom, 0.0);
  if (maximumOutsets.trailing >= outsets.trailing)
  {
    outsets.trailing = maximumOutsets.trailing;
  }

  v7 = fmin(outsets.trailing, 0.0);
  result.trailing = v7;
  result.bottom = v6;
  result.leading = v5;
  result.top = v4;
  return result;
}

- (CGSize)_adjunctContainerMinimalViewSize
{
  _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics sensorRegionSize];
  v4 = v3;

  v5 = v4;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGRect)_frameForSensorRegionInBounds:(CGRect)bounds
{
  _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics sensorRegionSize];
  BSRectWithSize();

  _layoutMetrics2 = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics2 minimumScreenEdgeInsets];

  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRectCenteredXInRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_portraitFrameForPrimaryContainerViewInBounds:(CGRect)bounds withPreferredEdgeOutsets:(NSDirectionalEdgeInsets)outsets layoutDirection:(int64_t)direction
{
  [(SBSystemApertureViewController *)self _frameForSensorRegionInBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRectRoundToScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_boundsForAdjunctContainerViewWithPreferredEdgeOutsets:(NSDirectionalEdgeInsets)outsets layoutDirection:(int64_t)direction
{
  [(SBSystemApertureViewController *)self _adjunctContainerMinimalViewSize];
  BSRectWithSize();
  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRectRoundToScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_configureVariableBlur
{
  v3 = MEMORY[0x277D26718];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v3 materialViewWithRecipeNamed:@"systemApertureBackgroundVariableBlur-D73" inBundle:v4 options:0 initialWeighting:0 scaleAdjustment:1.0];

  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  [v8 setFrame:{0.0, -360.0, CGRectGetWidth(v10), 360.0}];

  [v8 bs_setHitTestingDisabled:1];
  [v8 setAutoresizingMask:2];
  [v8 setHidden:1];
  layer = [v8 layer];
  [layer setDisableUpdateMask:32];

  [(SBSystemApertureViewController *)self setVariableBlurView:v8];
  view2 = [(SBSystemApertureViewController *)self view];
  [view2 insertSubview:v8 belowSubview:self->_containerSubBackgroundParent];
}

- (void)_addMitosisBlobEffects
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_blobRadius];
  [v3 setValue:v4 forKey:@"inputRadius"];

  v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA260]];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v5 setValue:objc_msgSend(blackColor forKey:{"CGColor"), @"inputColor"}];

  [v5 setValue:0 forKey:@"inputAmount"];
  v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B8]];
  [v7 setValue:MEMORY[0x277CBEC38] forKey:@"inputReversed"];
  layer = [(UIView *)self->_containerBackgroundParent layer];
  v10[0] = v3;
  v10[1] = v5;
  v10[2] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  [layer setFilters:v9];
}

- (void)_removeMitosisBlobEffects
{
  layer = [(UIView *)self->_containerBackgroundParent layer];
  [layer setFilters:MEMORY[0x277CBEBF8]];
}

- (void)_updatePreferredContentSizeCategoryForAllElements:(id)elements
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers:elements];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBSystemApertureViewController *)self _updatePreferredContentSizeCategoryForElementViewController:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updatePreferredContentSizeCategoryForElementViewController:(id)controller
{
  controllerCopy = controller;
  v8 = SAUILayoutSpecifyingOverriderForElementViewController();
  layoutMode = [v8 layoutMode];
  v5 = SBSACustomLayoutForBehaviorOverrider();
  v6 = SBSABehavesLikeCustom(layoutMode, v5);
  viewIfLoaded = [controllerCopy viewIfLoaded];

  [viewIfLoaded sbui_systemApertureApplyMinimumAndMaximumContentSizeCategoryForCustomLayoutMode:v6];
}

- (void)_beginRequiringBacklightAssertionForReason:(id)reason
{
  v16[3] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBSystemApertureViewController _beginRequiringBacklightAssertionForReason:];
  }

  [(NSCountedSet *)self->_backlightAssertionRequiringReasons addObject:reasonCopy];
  if (!self->_liveUpdatingAssertion)
  {
    view = [(SBSystemApertureViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"System Aperture inactive content update: <%@>", reasonCopy];
      v9 = MEMORY[0x277CF0868];
      v10 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:windowScene];
      v16[0] = v10;
      v11 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:windowScene];
      v16[1] = v11;
      ignoreWhenBacklightInactivates = [MEMORY[0x277CF09E8] ignoreWhenBacklightInactivates];
      v16[2] = ignoreWhenBacklightInactivates;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
      v14 = [v9 acquireWithExplanation:reasonCopy observer:0 attributes:v13];
      liveUpdatingAssertion = self->_liveUpdatingAssertion;
      self->_liveUpdatingAssertion = v14;

      [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:2048];
    }
  }
}

- (void)_endRequiringBacklightAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v9 = reasonCopy;
  if (!reasonCopy)
  {
    [SBSystemApertureViewController _endRequiringBacklightAssertionForReason:];
    reasonCopy = 0;
  }

  [(NSCountedSet *)self->_backlightAssertionRequiringReasons removeObject:reasonCopy];
  anyObject = [(NSCountedSet *)self->_backlightAssertionRequiringReasons anyObject];

  v6 = v9;
  if (!anyObject)
  {
    if (self->_liveUpdatingAssertion)
    {
      [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:4096];
      liveUpdatingAssertion = self->_liveUpdatingAssertion;
    }

    else
    {
      liveUpdatingAssertion = 0;
    }

    [(BSInvalidatable *)liveUpdatingAssertion invalidate];
    v8 = self->_liveUpdatingAssertion;
    self->_liveUpdatingAssertion = 0;

    v6 = v9;
  }
}

- (BOOL)_shouldSuppressElement:(id)element allowsSuppressionForSystemChromeSuppression:(BOOL)suppression reason:(int64_t *)reason
{
  suppressionCopy = suppression;
  v77 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  secureElementCoordinator = self->_secureElementCoordinator;
  if (!secureElementCoordinator || ![(SBSystemApertureSecureElementCoordinator *)secureElementCoordinator doesElementNeedSuppressionForActiveSecureCaptureSession:elementCopy])
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = suppressionCopy;
      reasonCopy2 = reason;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      selfCopy2 = self;
      v14 = self->_sceneIDsPreferringSuppression;
      v15 = [(NSSet *)v14 countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v70;
        v10 = 1;
LABEL_7:
        v18 = 0;
        while (1)
        {
          if (*v70 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([elementCopy shouldSuppressElementWhilePresentingSceneWithIdentifier:*(*(&v69 + 1) + 8 * v18)])
          {
            goto LABEL_29;
          }

          if (v16 == ++v18)
          {
            v16 = [(NSSet *)v14 countByEnumeratingWithState:&v69 objects:v76 count:16];
            if (v16)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      reason = reasonCopy2;
      self = selfCopy2;
      suppressionCopy = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = suppressionCopy;
      reasonCopy2 = reason;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      selfCopy2 = self;
      v14 = self->_bundleIDsPreferringSuppression;
      v20 = [(NSSet *)v14 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v66;
        v10 = 2;
LABEL_17:
        v23 = 0;
        while (1)
        {
          if (*v66 != v22)
          {
            objc_enumerationMutation(v14);
          }

          if ([elementCopy shouldSuppressElementWhilePresentingAppWithBundleId:*(*(&v65 + 1) + 8 * v23)])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [(NSSet *)v14 countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v21)
            {
              goto LABEL_17;
            }

            goto LABEL_23;
          }
        }

LABEL_29:

        reason = reasonCopy2;
        self = selfCopy2;
        goto LABEL_30;
      }

LABEL_23:

      reason = reasonCopy2;
      self = selfCopy2;
      suppressionCopy = v19;
    }

    if (!-[NSSet count](self->_sceneIDsPreferringSuppression, "count") && !-[NSSet count](self->_bundleIDsPreferringSuppression, "count") && (objc_opt_respondsToSelector() & 1) != 0 && ([elementCopy shouldSuppressElementWhilePresentingNoAppsOrScenes] & 1) != 0)
    {
      v10 = 3;
      goto LABEL_30;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [elementCopy shouldSuppressElementWhileOtherElementsPresent])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      selfCopy3 = self;
      orderedElementViewControllers = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
      v27 = [orderedElementViewControllers countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v27)
      {
        v28 = v27;
        obj = orderedElementViewControllers;
        v53 = suppressionCopy;
        reasonCopy3 = reason;
        v29 = 0;
        v30 = *v62;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v61 + 1) + 8 * i);
            elementViewProvider = [v32 elementViewProvider];
            element = [elementViewProvider element];
            v35 = element;
            if (element == elementCopy)
            {
            }

            else
            {
              elementViewProvider2 = [v32 elementViewProvider];
              [elementViewProvider2 systemApertureLayoutSpecifyingOverrider];
              v38 = v37 = elementCopy;
              layoutMode = [v38 layoutMode];

              elementCopy = v37;
              if (layoutMode > 0)
              {
                ++v29;
              }
            }
          }

          v28 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
        }

        while (v28);

        reason = reasonCopy3;
        self = selfCopy3;
        suppressionCopy = v53;
        if (v29)
        {
          v10 = 4;
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [elementCopy shouldSuppressElementWhileOnCoversheet] && self->_prefersSuppressionOfElementsDueToCoversheetVisibility)
    {
      v10 = 5;
      goto LABEL_30;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [elementCopy shouldSuppressElementWhileOverLiquidDetectionCriticalUI] && self->_prefersSuppressionOfElementsDueToLiquidDetectionVisibility)
    {
      v10 = 6;
      goto LABEL_30;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [elementCopy shouldSuppressElementWhileProximityReaderPresent] && self->_prefersSuppressionOfElementsDueToProximityReaderVisibility)
    {
      v10 = 7;
      goto LABEL_30;
    }

    if (((objc_opt_respondsToSelector() & 1) == 0 || ([elementCopy shouldIgnoreSystemChromeSuppression] & 1) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(elementCopy, "shouldIgnoreSystemChromeSuppression") & 1) == 0))
    {
      if (objc_opt_respondsToSelector())
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        selfCopy4 = self;
        v41 = self->_bundleIDsPreferringSuppression;
        v42 = [(NSSet *)v41 countByEnumeratingWithState:&v57 objects:v73 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = suppressionCopy;
          reasonCopy4 = reason;
          v46 = *v58;
          while (2)
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v58 != v46)
              {
                objc_enumerationMutation(v41);
              }

              if ([elementCopy shouldIgnoreSystemChromeSuppressionWhilePresentingAppWithBundleId:*(*(&v57 + 1) + 8 * j)])
              {
                v48 = 0;
                goto LABEL_77;
              }
            }

            v43 = [(NSSet *)v41 countByEnumeratingWithState:&v57 objects:v73 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }

          v48 = 1;
LABEL_77:
          reason = reasonCopy4;
          suppressionCopy = v44;
        }

        else
        {
          v48 = 1;
        }

        self = selfCopy4;
      }

      else
      {
        v48 = 1;
      }

      if (v48 && suppressionCopy && self->_suppressForSystemChromeSuppressionAssertion)
      {
        v10 = 8;
        goto LABEL_30;
      }
    }

    selfCopy5 = self;
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
      associatedWindowScene = [WeakRetained associatedWindowScene];
      if ([associatedWindowScene isContinuityDisplayWindowScene])
      {
        shouldSuppressElementWhileOnContinuityDisplay = [elementCopy shouldSuppressElementWhileOnContinuityDisplay];

        if (shouldSuppressElementWhileOnContinuityDisplay)
        {
          v10 = 10;
LABEL_92:
          self = selfCopy5;
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([elementCopy requiresSuppressionFromSystemAperture] & 1) == 0)
    {
      v10 = 0;
      LOBYTE(v24) = 0;
      goto LABEL_31;
    }

    v10 = 9;
    goto LABEL_92;
  }

  v10 = 11;
LABEL_30:
  v24 = ![(SBSystemApertureViewController *)self _doesElementHaveValidRequiredPriorityAssertion:elementCopy];
LABEL_31:
  *reason = v10;

  return v24;
}

- (id)registerElement:(id)element
{
  elementCopy = element;
  viewProvider = [elementCopy viewProvider];
  systemApertureLayoutSpecifyingOverrider = [viewProvider systemApertureLayoutSpecifyingOverrider];
  [systemApertureLayoutSpecifyingOverrider addBehaviorOverridingParticipant:self];

  v7 = [(SAUISystemApertureManager *)self->_systemApertureManager registerElement:elementCopy];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [elementCopy setGestureHandler:self];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [[SBSystemAperturePlatformElementHost alloc] initWithElement:elementCopy delegate:self];
      [elementCopy setPlatformElementHost:v8];
      objc_setAssociatedObject(elementCopy, "com.apple.SpringBoard.SystemApertureViewController.platformElementHost", v8, 1);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50__SBSystemApertureViewController_registerElement___block_invoke;
      v15[3] = &unk_2783AFCF8;
      v16 = elementCopy;
      [v7 addInvalidationBlock:v15];
    }

    if (self->_secureElementCoordinator)
    {
      if (objc_opt_respondsToSelector())
      {
        [elementCopy setSecureElementHost:self->_secureElementCoordinator];
      }

      [(SBSystemApertureSecureElementCoordinator *)self->_secureElementCoordinator element:elementCopy registeredWithAssertion:v7];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__SBSystemApertureViewController_registerElement___block_invoke_2;
      v12[3] = &unk_2783B4B88;
      objc_copyWeak(&v13, &location);
      [v7 addInvalidationBlock:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    if (objc_opt_respondsToSelector())
    {
      [elementCopy systemApertureElementAssertionAcquired];
      objc_initWeak(&location, elementCopy);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__SBSystemApertureViewController_registerElement___block_invoke_3;
      v10[3] = &unk_2783B4B88;
      objc_copyWeak(&v11, &location);
      [v7 addInvalidationBlock:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

void __50__SBSystemApertureViewController_registerElement___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[181] elementAssertionInvalidated:v5];
  }
}

void __50__SBSystemApertureViewController_registerElement___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained systemApertureElementAssertionInvalidated];
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  overriderCopy = overrider;
  layoutMode = [overriderCopy layoutMode];
  v9 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
  [v9 setLayoutMode:mode reason:reason forTargetWithOverrider:overriderCopy];

  layoutMode2 = [overriderCopy layoutMode];
  if (layoutMode != layoutMode2)
  {
    v11 = layoutMode2;
    v12 = [(SBSystemApertureViewController *)self _elementViewControllerForLayoutSpecifyingOverrider:overriderCopy];
    if (v12)
    {
      [(SBSystemApertureViewController *)self _updatePreferredContentSizeCategoryForElementViewController:v12];
    }

    v13 = SATargetElementFromBehaviorOverrider();
    if (SAHasAlertBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      alertAssertion = [v12 alertAssertion];
    }

    else
    {
      if (!SAHasActivityBehavior() || (objc_opt_respondsToSelector() & 1) == 0)
      {
        v15 = 0;
LABEL_12:
        if (![v15 isValid])
        {
LABEL_26:

          goto LABEL_27;
        }

        if (SAHasAlertBehavior())
        {
          if (!v11)
          {
LABEL_25:
            [v15 setAutomaticallyInvalidatable:v11];
            goto LABEL_26;
          }

          v16 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:v12 thatRespondsToSelector:sel_layoutModePreferenceForTargetWithOverrider_isDefaultValue_];
          preferredLayoutModeAssertion2 = [v16 layoutModePreferenceForTargetWithOverrider:overriderCopy isDefaultValue:0];

          if (v11 <= [preferredLayoutModeAssertion2 preferredLayoutMode])
          {
            v11 = 1;
          }

          else
          {
            preferredLayoutModeAssertion = [overriderCopy preferredLayoutModeAssertion];
            v11 = [preferredLayoutModeAssertion layoutModeChangeReason] != 3;
          }
        }

        else
        {
          v19 = objc_opt_class();
          v20 = v15;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          preferredLayoutModeAssertion2 = [v22 preferredLayoutModeAssertion];

          v11 = v11 == [preferredLayoutModeAssertion2 preferredLayoutMode];
        }

        goto LABEL_25;
      }

      alertAssertion = [v12 alertingActivityAssertion];
    }

    v15 = alertAssertion;
    goto LABEL_12;
  }

LABEL_27:

  MEMORY[0x2821F9730]();
}

- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  v6 = SATargetElementFromBehaviorOverrider();
  v7 = SAHasAlertBehavior();
  v8 = [(SAUISystemApertureManager *)self->_systemApertureManager elementViewControllerForElement:v6];
  v29 = v8;
  if (SAHasActivityBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    temporallyOrderedAlertingActivityAssertions = [v8 temporallyOrderedAlertingActivityAssertions];
    v10 = [temporallyOrderedAlertingActivityAssertions bs_containsObjectPassingTest:&__block_literal_global_785] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:{sel_layoutModePreferenceForTargetWithOverrider_isDefaultValue_, v29}];
  v12 = [v11 layoutModePreferenceForTargetWithOverrider:overriderCopy isDefaultValue:0];
  preferredLayoutMode = [v12 preferredLayoutMode];
  v14 = SBSACustomLayoutForBehaviorOverrider();
  v15 = SBSABehavesLikeCustom(preferredLayoutMode, v14);
  v16 = [(SBSystemApertureViewController *)self _doesElementHaveValidUrgencyAssertion:v6];
  v17 = [(SBSystemApertureViewController *)self _doesElementHaveValidRequiredPriorityAssertion:v6];
  v18 = v16 && preferredLayoutMode > 0;
  v19 = preferredLayoutMode > 0 && v17;
  v31 = 0;
  if ([(SBSystemApertureViewController *)self _shouldSuppressElement:v6 allowsSuppressionForSystemChromeSuppression:v10 & ~((v15 || v19 || v18) | v7) & 1 reason:&v31])
  {
    v20 = v30;
    if (objc_opt_respondsToSelector())
    {
      [v6 suppressForReason:v31];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v6 setSuppressed:1];
    }

    v22 = 0;
    v23 = 4;
  }

  else
  {
    layoutModeChangeReason = [v12 layoutModeChangeReason];
    if (v19)
    {
      v22 = preferredLayoutMode;
    }

    else
    {
      v24 = preferredLayoutMode;
      if (preferredLayoutMode <= 2)
      {
        if (([(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]- 3) > 1)
        {
          isMinimalPresentationPossible = 3;
        }

        else if (objc_opt_respondsToSelector())
        {
          isMinimalPresentationPossible = [overriderCopy isMinimalPresentationPossible];
        }

        else
        {
          isMinimalPresentationPossible = 0;
        }

        if (preferredLayoutMode >= isMinimalPresentationPossible)
        {
          v24 = isMinimalPresentationPossible;
        }

        else
        {
          v24 = preferredLayoutMode;
        }
      }

      _mostRestrictiveLayoutModeFromActiveLayoutAssertions = [(SBSystemApertureViewController *)self _mostRestrictiveLayoutModeFromActiveLayoutAssertions];
      if (v24 >= _mostRestrictiveLayoutModeFromActiveLayoutAssertions)
      {
        v22 = _mostRestrictiveLayoutModeFromActiveLayoutAssertions;
      }

      else
      {
        v22 = v24;
      }
    }

    v20 = v30;
    if (v22 == preferredLayoutMode)
    {
      v23 = layoutModeChangeReason;
    }

    else
    {
      v23 = 4;
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSuppressed:0];
    }
  }

  v27 = [objc_alloc(MEMORY[0x277D6B8C8]) initWithPreferredLayoutMode:v22 reason:v23];

  return v27;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  trailing = maximumOutsets.trailing;
  bottom = maximumOutsets.bottom;
  leading = maximumOutsets.leading;
  top = maximumOutsets.top;
  v12 = outsets.trailing;
  v13 = outsets.bottom;
  v14 = outsets.leading;
  v15 = outsets.top;
  overriderCopy = overrider;
  v19 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_preferredEdgeOutsetsForLayoutMode_suggestedOutsets_maximumOutsets_forTargetWithOverrider_isDefaultValue_];
  [v19 preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:overriderCopy maximumOutsets:value forTargetWithOverrider:v15 isDefaultValue:{v14, v13, v12, top, leading, bottom, trailing}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [(SBSystemApertureViewController *)self _maximumContainerViewOutsetsInBounds:mode inLayoutMode:v30, v32, v34, v36];
  [(SBSystemApertureViewController *)self _validatedEdgeOutsetsForPreferredOutsets:v21 maximumOutsets:v23, v25, v27, v37, v38, v39, v40];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = SBSACustomLayoutForBehaviorOverrider();
  if (!SBSABehavesLikeCustom(mode, v49))
  {
    if (SBSABehavesLikeMinimal(mode, v49))
    {
      if (([(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]- 3) < 2 || ([(SBSystemApertureViewController *)self _elementViewControllerForLayoutSpecifyingOverrider:overriderCopy], v60 = objc_claimAutoreleasedReturnValue(), [(SBSystemApertureViewController *)self _containerViewForViewController:v60], v61 = objc_claimAutoreleasedReturnValue(), [(SBSystemApertureViewController *)self _primaryContainerView], v62 = objc_claimAutoreleasedReturnValue(), v62, v61, v60, v61 != v62))
      {
        [(SBSystemApertureViewController *)self _adjunctContainerMinimalViewSize];
        if (v44 > -v63)
        {
          v44 = -v63;
        }

        goto LABEL_24;
      }
    }

    else if (!SBSABehavesLikeCompact(mode, v49))
    {
      goto LABEL_24;
    }

    [(SBSystemApertureViewController *)self _applySymmetryToPreferredLayoutOutsets:v42, v44, v46, v48];
    v42 = v64;
    v44 = v65;
    v46 = v66;
    v48 = v67;
    goto LABEL_24;
  }

  v50 = SBSACustomLayoutForBehaviorOverrider();
  if (!SBSAIsCustomLayout(v50))
  {
    goto LABEL_24;
  }

  v83 = v42;
  v84 = v48;
  [(SBSystemApertureViewController *)self _preferredMinSizeForCustomLayout:v50 elementInterfaceOrientation:[(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]];
  v52 = v51;
  v54 = v53;
  [(SBSystemApertureViewController *)self _yOffsetForCustomLayout:v50];
  v85 = v55;
  v81 = v54;
  v82 = v52;
  [(SBSystemApertureViewController *)self edgeOutsetsForSize:v52, v54];
  if (v46 <= v58)
  {
    traitCollection = [(SBSystemApertureViewController *)self traitCollection];
    v42 = v83;
    v48 = v84;
    -[SBSystemApertureViewController _portraitFrameForPrimaryContainerViewInBounds:withPreferredEdgeOutsets:layoutDirection:](self, "_portraitFrameForPrimaryContainerViewInBounds:withPreferredEdgeOutsets:layoutDirection:", [traitCollection layoutDirection], v30, v32, v34, v36, v83, v44, v46, v84);
    v70 = v69;

    if (v50 == 4)
    {
LABEL_22:
      v76 = v85;
      v42 = v42 - v85;
      goto LABEL_23;
    }

    [(SBSystemApertureViewController *)self edgeOutsetsForSize:v70, v81 / v82 * v70];
    v42 = v71;
    v44 = v72;
    v46 = v73;
    v48 = v74;
  }

  else
  {
    v42 = v56;
    v44 = v57;
    v48 = v59;
    v46 = v58;
  }

  switch(v50)
  {
    case 4:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 1:
      v75 = -v44;
      if (v44 >= 0.0)
      {
        v75 = v44;
      }

      if (v75 < 39.0)
      {
LABEL_21:
        v76 = v85;
        v42 = -v85;
LABEL_23:
        v46 = v76 + v46;
      }

      break;
  }

LABEL_24:

  v77 = v42;
  v78 = v44;
  v79 = v46;
  v80 = v48;
  result.trailing = v80;
  result.bottom = v79;
  result.leading = v78;
  result.top = v77;
  return result;
}

- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  v25 = *MEMORY[0x277D85DE8];
  overriderCopy = overrider;
  v7 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_isRequestingMenuPresentationForTargetWithOverrider_isDefaultValue_];
  LODWORD(value) = [v7 isRequestingMenuPresentationForTargetWithOverrider:overriderCopy isDefaultValue:value];

  if (value)
  {
    if ([overriderCopy layoutMode] == 3)
    {
      v8 = SATargetElementFromBehaviorOverrider();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = self->_orderedContainerViews;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [(SBSystemApertureViewController *)self _elementForContainerView:v14, v20];

          if (v15 == v8)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v17 = v14;

        if (!v17)
        {
          goto LABEL_18;
        }

        v16 = 1;
      }

      else
      {
LABEL_11:

LABEL_18:
        v18 = SBLogSystemApertureController();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SBSystemApertureViewController isRequestingMenuPresentationForTargetWithOverrider:isDefaultValue:];
        }

        v17 = 0;
        v16 = 0;
      }
    }

    else
    {
      v8 = SBLogSystemApertureController();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBSystemApertureViewController isRequestingMenuPresentationForTargetWithOverrider:isDefaultValue:];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSDirectionalEdgeInsets)_hostSuggestedOutsetsForElement:(id)element
{
  v3 = *MEMORY[0x277D75060];
  v4 = *(MEMORY[0x277D75060] + 8);
  v5 = *(MEMORY[0x277D75060] + 16);
  v6 = *(MEMORY[0x277D75060] + 24);
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x2000];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_orderedContainerViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setNeedsLayout];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x2000];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_orderedContainerViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setNeedsLayout];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *MEMORY[0x277D75060];
  if (size.width == 0.0 && size.height == 0.0)
  {
    v7 = *(MEMORY[0x277D75060] + 8);
    v8 = *(MEMORY[0x277D75060] + 16);
    v9 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    view = [(SBSystemApertureViewController *)self view];
    [view bounds];
    v29 = v11;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
    [_layoutMetrics sensorRegionSize];
    v20 = v19;
    v22 = v21;

    [(SBSystemApertureViewController *)self _maximumContainerViewOutsetsInBounds:3 inLayoutMode:v29, v13, v15, v17];
    [(SBSystemApertureViewController *)self _validatedEdgeOutsetsForPreferredOutsets:v6 maximumOutsets:(v20 - width) * 0.5, v22 - height, (v20 - width) * 0.5, v23, v24, v25, v26];
    v6 = v27;
  }

  v28 = v6;
  result.trailing = v9;
  result.bottom = v8;
  result.leading = v7;
  result.top = v28;
  return result;
}

- (CGRect)interSensorRegionInContentView:(id)view
{
  viewCopy = view;
  _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
  [_layoutMetrics interSensorRegionInWindowSpace];
  [viewCopy convertRect:0 fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider
{
  v47 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  providerCopy = provider;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = self->_orderedContainerViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v42 + 1) + 8 * v12);
      elementViewController = [v13 elementViewController];
      elementViewProvider = [elementViewController elementViewProvider];

      if (elementViewProvider == providerCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v13;

    if (!v16)
    {
      goto LABEL_28;
    }

    systemApertureLayoutSpecifyingOverrider = [providerCopy systemApertureLayoutSpecifyingOverrider];
    layoutMode = [systemApertureLayoutSpecifyingOverrider layoutMode];
    behaviorOverridingTarget = [systemApertureLayoutSpecifyingOverrider behaviorOverridingTarget];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [behaviorOverridingTarget overridesConcentricPaddingForView:viewCopy inLayoutMode:layoutMode])
    {
      [behaviorOverridingTarget concentricPaddingOverrideForView:viewCopy inLayoutMode:layoutMode];
    }

    else
    {
      _primaryContainerView = [(SBSystemApertureViewController *)self _primaryContainerView];

      if (v16 == _primaryContainerView || layoutMode == 3)
      {
        if (layoutMode != 3)
        {
          traitCollection = [(SBSystemApertureViewController *)self traitCollection];
          [traitCollection displayScale];
        }

        [viewCopy bounds];
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        if (CGRectIsEmpty(v48))
        {
          [(NSMutableArray *)v16 bounds];
          [viewCopy sizeThatFits:{v32, v33}];
          BSRectWithSize();
          x = v34;
          y = v35;
          width = v36;
          height = v37;
        }

        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        CGRectGetMidX(v49);
      }

      else
      {
        [(SBSystemApertureViewController *)self _adjunctContainerMinimalViewSize];
        v22 = v21;
        v24 = v23;
        [systemApertureLayoutSpecifyingOverrider sizeThatFitsSize:viewCopy forProvidedView:layoutMode inLayoutMode:?];
        if (v26 == 0.0 && v25 == 0.0)
        {
          [viewCopy sizeThatFits:{v22, v24}];
        }
      }
    }
  }

  else
  {
LABEL_9:
    v16 = v8;
  }

LABEL_28:
  traitCollection2 = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection2 displayScale];
  UIRoundToScale();
  v40 = v39;

  return v40;
}

- (CGRect)sensorRegionObstructingViewProvider:(id)provider inContentView:(id)view
{
  providerCopy = provider;
  viewCopy = view;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  if (([(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]- 1) <= 1)
  {
    orderedElementViewControllers = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
    firstObject = [orderedElementViewControllers firstObject];
    elementViewProvider = [firstObject elementViewProvider];
    v15 = elementViewProvider;
    if (elementViewProvider == providerCopy)
    {
    }

    else
    {
      firstObject2 = [(NSMutableArray *)self->_orderedContainerViews firstObject];
      v17 = [viewCopy isDescendantOfView:firstObject2];

      if (!v17)
      {
        goto LABEL_7;
      }
    }

    [(SBSystemApertureViewController *)self sensorRegionInContentView:viewCopy fromViewProvider:providerCopy];
    v8 = v18;
    v9 = v19;
    v10 = v20;
    v11 = v21;
  }

LABEL_7:

  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)sensorRegionInContentView:(id)view fromViewProvider:(id)provider
{
  v6 = self->_containerParent;
  viewCopy = view;
  [(SBFTouchPassThroughView *)v6 bounds];
  [(SBSystemApertureViewController *)self _frameForSensorRegionInBounds:?];
  [viewCopy convertRect:v6 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)view fromViewProvider:(id)provider
{
  v4 = [(SBSystemApertureViewController *)self _layoutMetrics:view];
  [v4 maximumHorizontalMinimalViewSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)view fromViewProvider:(id)provider
{
  v4 = [(SBSystemApertureViewController *)self _layoutMetrics:view];
  [v4 maximumLeadingTrailingViewSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)view fromViewProvider:(id)provider
{
  v4 = [(SBSystemApertureViewController *)self _layoutMetrics:view];
  [v4 maximumLeadingTrailingViewSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (NSDirectionalEdgeInsets)_applySymmetryToPreferredLayoutOutsets:(NSDirectionalEdgeInsets)outsets
{
  trailing = outsets.trailing;
  bottom = outsets.bottom;
  leading = outsets.leading;
  top = outsets.top;
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [mEMORY[0x277D67E28] sensorRegionSize];
  BSRectWithSize();
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  UIRectCenteredXInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  v18 = CGRectGetMinX(v29);
  [(SBSystemApertureSettings *)self->_settings paddingFromScreenEdgeRequiringSymmetricLayout];
  v20 = v19;
  [(SBSystemApertureSettings *)self->_settings minimumRequiredSymmetryInCompactLayoutMode];
  if (leading >= trailing || leading + MinX <= v20)
  {
    if (trailing >= leading || trailing + v18 <= v20)
    {
      if (trailing < leading)
      {
        leading = trailing;
      }

      trailing = leading;
    }

    else
    {
      UIRoundToScale();
      leading = v22;
    }
  }

  else
  {
    UIRoundToScale();
    trailing = v21;
  }

  v23 = top;
  v24 = leading;
  v25 = bottom;
  v26 = trailing;
  result.trailing = v26;
  result.bottom = v25;
  result.leading = v24;
  result.top = v23;
  return result;
}

- (double)alertingDurationForHost:(id)host
{
  hostCopy = host;
  if (objc_opt_respondsToSelector())
  {
    v4 = hostCopy;
  }

  else
  {
    v4 = 0;
  }

  elementViewProvider = [v4 elementViewProvider];
  element = [elementViewProvider element];
  elementIdentifier = [element elementIdentifier];
  if ([elementIdentifier isEqualToString:*MEMORY[0x277D68030]])
  {
    v8 = 7.0;
  }

  else
  {
    v8 = 3.0;
  }

  if (objc_opt_respondsToSelector())
  {
    [elementViewProvider preferredAlertingDuration:v8];
    v8 = v9;
  }

  return v8;
}

- (void)elementRequestsSignificantUpdateTransition:(id)transition
{
  transitionCopy = transition;
  v8 = [[_SBSystemApertureSignificantUpdateTransitionAssertion alloc] initWithElement:transitionCopy];

  significantUpdateTransitionAssertions = self->_significantUpdateTransitionAssertions;
  if (!significantUpdateTransitionAssertions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAC18]);
    v7 = self->_significantUpdateTransitionAssertions;
    self->_significantUpdateTransitionAssertions = v6;

    significantUpdateTransitionAssertions = self->_significantUpdateTransitionAssertions;
  }

  [(NSPointerArray *)significantUpdateTransitionAssertions addPointer:v8];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x2000];
}

- (void)elementRequestsCancellingResizeGesture:(id)gesture
{
  [(UIPanGestureRecognizer *)self->_resizePanGesture sb_cancel];
  interactionLongPressGesture = self->_interactionLongPressGesture;

  [(UILongPressGestureRecognizer *)interactionLongPressGesture sb_cancel];
}

- (BOOL)_panGestureInhibitedByElement
{
  _currentFirstElement = [(SBSystemApertureViewController *)self _currentFirstElement];
  if (objc_opt_respondsToSelector())
  {
    inhibitSystemPanGesture = [_currentFirstElement inhibitSystemPanGesture];
  }

  else
  {
    inhibitSystemPanGesture = 0;
  }

  return inhibitSystemPanGesture;
}

- (BOOL)_longPressGestureInhibitedByElement
{
  _currentFirstElement = [(SBSystemApertureViewController *)self _currentFirstElement];
  if (objc_opt_respondsToSelector())
  {
    inhibitSystemLongPressGesture = [_currentFirstElement inhibitSystemLongPressGesture];
  }

  else
  {
    inhibitSystemLongPressGesture = 0;
  }

  return inhibitSystemLongPressGesture;
}

- (void)element:(id)element requestsDiscreteAnimationOfType:(int64_t)type
{
  elementCopy = element;
  v7 = elementCopy;
  if (type > 2)
  {
    if (type == 3)
    {
      if ([(SBSystemApertureSettings *)self->_settings pulseIndicatorEnabled])
      {

        v15 = [SBSAPulseRequest alloc];
        v16 = [[SBSAElementIdentification alloc] initWithElementIdentification:0];
        v17 = [(SBSAPulseRequest *)v15 initWithParticipantIdentifier:v16 pulseStyle:1];
        [(SBSystemApertureViewController *)self _addActiveRequest:v17];

        [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:256];
        v7 = 0;
      }
    }

    else if (type == 4)
    {
      v11 = objc_alloc_init(SBSAEjectRequest);
      [(SBSystemApertureViewController *)self _addActiveRequest:v11];

      goto LABEL_8;
    }
  }

  else if (type == 1)
  {
    if (!elementCopy)
    {
      [SBSystemApertureViewController element:requestsDiscreteAnimationOfType:];
    }

    [(SBSystemApertureViewController *)self _startTrackingShakeAnimationIfRequired];
    objc_initWeak(&location, self);
    v12 = [SBSAShakeRequest alloc];
    v13 = [[SBSAElementIdentification alloc] initWithElementIdentification:v7];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __74__SBSystemApertureViewController_element_requestsDiscreteAnimationOfType___block_invoke;
    v21 = &unk_2783A8C68;
    objc_copyWeak(&v22, &location);
    v14 = [(SBSAShakeRequest *)v12 initWithParticipantIdentifier:v13 triggeredBlock:&v18];
    [(SBSystemApertureViewController *)self _addActiveRequest:v14, v18, v19, v20, v21];

    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:256];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else if (type == 2)
  {
    v8 = [SBSAPulseRequest alloc];
    v9 = [[SBSAElementIdentification alloc] initWithElementIdentification:v7];
    v10 = [(SBSAPulseRequest *)v8 initWithParticipantIdentifier:v9 pulseStyle:0];
    [(SBSystemApertureViewController *)self _addActiveRequest:v10];

LABEL_8:
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:256];
  }
}

void __74__SBSystemApertureViewController_element_requestsDiscreteAnimationOfType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopTrackingShakeAnimation];
}

- (id)element:(id)element requestsPersistentAnimationOfType:(int64_t)type
{
  elementCopy = element;
  if ((type - 1) >= 2)
  {
    if (!type)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureViewController.m" lineNumber:3357 description:@"Can't request No-OP animation"];
    }

    v8 = 0;
  }

  else
  {
    v8 = [(SBSystemApertureViewController *)self _persistentAssertionForElement:elementCopy withType:type];
    [(NSMutableSet *)self->_dynamicPersistentAnimationAssertions addObject:v8];
  }

  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:256];

  return v8;
}

- (id)_persistentAssertionForElement:(id)element withType:(int64_t)type
{
  elementCopy = element;
  v7 = [SBSAElementIdentification alloc];
  clientIdentifier = [elementCopy clientIdentifier];
  elementIdentifier = [elementCopy elementIdentifier];
  v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];

  v11 = [[_SBSADynamicPersistentAnimationAssertion alloc] initWithElementIdentity:v10 animation:type];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SBSystemApertureViewController__persistentAssertionForElement_withType___block_invoke;
  v13[3] = &unk_2783B8928;
  objc_copyWeak(&v14, &location);
  [(SAAssertion *)v11 addInvalidationBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

void __74__SBSystemApertureViewController__persistentAssertionForElement_withType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[153] removeObject:v5];
    [v4 _invalidatePreferencesForReason:256];
  }
}

- (void)invalidateElementUrgencyPreferences
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  registeredElements = [(SAUISystemApertureManager *)self->_systemApertureManager registeredElements];
  v4 = [registeredElements countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(registeredElements);
        }

        v6 = v6 || [(SBSystemApertureViewController *)self _doesElementHaveValidRequiredPriorityAssertion:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [registeredElements countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (self->_elementHasRequiredPriority != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);
    self->_elementHasRequiredPriority = v6;
    [WeakRetained systemApertureViewController:self isDisplayingAnyRequiredPriorityElements:v6];
  }

  [(SAUISystemApertureManager *)self->_systemApertureManager invalidatePromotedElements];
}

- (void)performAction:(id)action withCompletionUponAnimationSettling:(id)settling
{
  actionCopy = action;
  settlingCopy = settling;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (actionCopy)
  {
    actionCopy[2]();
  }

  if (settlingCopy)
  {
    systemApertureDidSettleCompletionBlocks = selfCopy->_systemApertureDidSettleCompletionBlocks;
    if (systemApertureDidSettleCompletionBlocks)
    {
      v9 = MEMORY[0x223D6F7F0](settlingCopy);
      [(NSMutableArray *)systemApertureDidSettleCompletionBlocks addObject:v9];
    }

    else
    {
      v10 = MEMORY[0x277CBEB18];
      v9 = MEMORY[0x223D6F7F0](settlingCopy);
      v11 = [v10 arrayWithObject:v9];
      v12 = selfCopy->_systemApertureDidSettleCompletionBlocks;
      selfCopy->_systemApertureDidSettleCompletionBlocks = v11;
    }
  }

  [(SBSystemApertureViewController *)selfCopy _flushDidSettleHandlersIfNecessary];
  objc_sync_exit(selfCopy);
}

- (void)performAction:(id)action withCompletionUponIndicatorSettling:(id)settling
{
  actionCopy = action;
  settlingCopy = settling;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (actionCopy)
  {
    actionCopy[2]();
  }

  if (settlingCopy)
  {
    systemApertureIndicatorDidSettleCompletionBlocks = selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks;
    if (systemApertureIndicatorDidSettleCompletionBlocks)
    {
      v9 = MEMORY[0x223D6F7F0](settlingCopy);
      [(NSMutableArray *)systemApertureIndicatorDidSettleCompletionBlocks addObject:v9];
    }

    else
    {
      v10 = MEMORY[0x277CBEB18];
      v9 = MEMORY[0x223D6F7F0](settlingCopy);
      v11 = [v10 arrayWithObject:v9];
      v12 = selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks;
      selfCopy->_systemApertureIndicatorDidSettleCompletionBlocks = v11;
    }
  }

  [(SBSystemApertureViewController *)selfCopy _flushIndicatorDidSettleHandlersIfNecessary];
  objc_sync_exit(selfCopy);
}

- (id)_containerViewWithRank:(unint64_t)rank creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v7 = [(NSMutableArray *)self->_orderedContainerViews count];
  if (v7 <= rank)
  {
    if (necessaryCopy)
    {
      v9 = v7;
      if (!self->_orderedContainerViews)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        orderedContainerViews = self->_orderedContainerViews;
        self->_orderedContainerViews = v10;
      }

      v8 = 0;
      do
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        v13 = [(SBSystemApertureViewController *)self _newContainerViewWithInterfaceElementIdentifier:uUID];

        [(NSMutableArray *)self->_orderedContainerViews setObject:v13 atIndexedSubscript:v9];
        if (rank == v9)
        {
          v14 = v13;

          v8 = v14;
        }

        ++v9;
      }

      while (v9 <= rank);
      [(SBSystemApertureViewController *)self _updateContainerViewRanks];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [(NSMutableArray *)self->_orderedContainerViews objectAtIndexedSubscript:rank];
  }

  return v8;
}

- (BOOL)systemApertureManagerShouldUseOrderedElementViewControllers:(id)controllers
{
  if (systemApertureManagerShouldUseOrderedElementViewControllers__onceToken != -1)
  {
    [SBSystemApertureViewController systemApertureManagerShouldUseOrderedElementViewControllers:];
  }

  return 1;
}

void __94__SBSystemApertureViewController_systemApertureManagerShouldUseOrderedElementViewControllers___block_invoke()
{
  v0 = SBLogSystemApertureController();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "**Using ordered element view controllers**", v1, 2u);
  }
}

- (id)requireCaptureBoundsDefiningViewWithBounds:(CGRect)bounds reason:(id)reason
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  reasonCopy = reason;
  if (self->_secureFlipBookCaptureBoundsDefiningView)
  {
    [SBSystemApertureViewController requireCaptureBoundsDefiningViewWithBounds:reason:];
  }

  height = [[SBSystemApertureSecureElementCaptureBoundsView alloc] initWithFrame:x, y, width, height];
  secureFlipBookCaptureBoundsDefiningView = self->_secureFlipBookCaptureBoundsDefiningView;
  self->_secureFlipBookCaptureBoundsDefiningView = height;

  v12 = self->_secureFlipBookCaptureBoundsDefiningView;
  redColor = [MEMORY[0x277D75348] redColor];
  [(SBSystemApertureSecureElementCaptureBoundsView *)v12 setDebugOutlineColor:redColor];

  objc_initWeak(&location, self);
  v14 = [_SBSystemApertureCaptureBoundsDefiningViewAssertion alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v17 = self->_secureFlipBookCaptureBoundsDefiningView;
  v18 = MEMORY[0x277D85CD0];
  v19 = MEMORY[0x277D85CD0];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __84__SBSystemApertureViewController_requireCaptureBoundsDefiningViewWithBounds_reason___block_invoke;
  v26 = &unk_2783B8970;
  objc_copyWeak(&v27, &location);
  v20 = [(_SBSystemApertureCaptureBoundsDefiningViewAssertion *)v14 initWithReason:reasonCopy identifier:uUIDString boundsDefiningView:v17 requiredInvalidationQueue:v18 deallocPolicy:0 invalidatedWithContextBlock:&v23];

  v21 = [(SBSystemApertureViewController *)self view:v23];
  [v21 addSubview:self->_secureFlipBookCaptureBoundsDefiningView];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v20;
}

void __84__SBSystemApertureViewController_requireCaptureBoundsDefiningViewWithBounds_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[187] removeFromSuperview];
    v2 = v3[187];
    v3[187] = 0;

    WeakRetained = v3;
  }
}

- (id)requireUserInterfaceLayoutDirection:(int64_t)direction reason:(id)reason
{
  reasonCopy = reason;
  if (!self->_rtlOverrideAssertions)
  {
    array = [MEMORY[0x277CBEB18] array];
    rtlOverrideAssertions = self->_rtlOverrideAssertions;
    self->_rtlOverrideAssertions = array;
  }

  v9 = SBSAStringFromUIUserInterfaceLayoutDirection(direction);
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __77__SBSystemApertureViewController_requireUserInterfaceLayoutDirection_reason___block_invoke;
  v18 = &unk_2783B8970;
  objc_copyWeak(&v19, &location);
  v13 = [v10 initWithReason:reasonCopy identifier:v9 requiredInvalidationQueue:v11 deallocPolicy:0 invalidatedWithContextBlock:&v15];

  [(NSMutableArray *)self->_rtlOverrideAssertions addObject:v13, v15, v16, v17, v18];
  [(SBSystemApertureViewController *)self _RTLOverrideChanged];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __77__SBSystemApertureViewController_requireUserInterfaceLayoutDirection_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[183];
  v5 = [v3 assertion];

  [v4 removeObject:v5];
  [WeakRetained _RTLOverrideChanged];
}

- (id)requireClearBackgroundRenderingForCapture:(id)capture
{
  captureCopy = capture;
  if (!self->_clearBackgroundAssertions)
  {
    array = [MEMORY[0x277CBEB18] array];
    clearBackgroundAssertions = self->_clearBackgroundAssertions;
    self->_clearBackgroundAssertions = array;
  }

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __76__SBSystemApertureViewController_requireClearBackgroundRenderingForCapture___block_invoke;
  v17 = &unk_2783B8970;
  objc_copyWeak(&v18, &location);
  v12 = [v7 initWithReason:captureCopy identifier:uUIDString requiredInvalidationQueue:v10 deallocPolicy:0 invalidatedWithContextBlock:&v14];

  [(NSMutableArray *)self->_clearBackgroundAssertions addObject:v12, v14, v15, v16, v17];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x40000];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

void __76__SBSystemApertureViewController_requireClearBackgroundRenderingForCapture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[184];
  v5 = [v3 assertion];

  [v4 removeObject:v5];
  [WeakRetained _invalidatePreferencesForReason:0x40000];
}

- (void)_startTrackingShakeAnimationIfRequired
{
  v22[1] = *MEMORY[0x277D85DE8];
  secureFlipBookCaptureBoundsDefiningView = self->_secureFlipBookCaptureBoundsDefiningView;
  if (secureFlipBookCaptureBoundsDefiningView)
  {
    layer = [(SBSystemApertureSecureElementCaptureBoundsView *)secureFlipBookCaptureBoundsDefiningView layer];
    firstObject = [(NSMutableArray *)self->_orderedContainerViews firstObject];
    layer2 = [firstObject layer];

    v7 = objc_alloc_init(MEMORY[0x277CD9EE8]);
    [v7 setSourceLayer:layer2];
    [v7 setDuration:INFINITY];
    [v7 setFillMode:*MEMORY[0x277CDA230]];
    [v7 setRemovedOnCompletion:0];
    [layer position];
    v9 = v8;
    v11 = v10;
    [layer2 position];
    v13 = v12;
    v15 = v14;
    [layer2 bounds];
    v18 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{v16 * 0.5 - (v13 - v9), v17 * 0.5 - (v15 - v11)}];
    v22[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v7 setSourcePoints:v19];

    [v7 setUsesNormalizedCoordinates:0];
    [v7 setAppliesScale:0];
    [v7 setAppliesRotation:0];
    [layer addAnimation:v7 forKey:@"com.apple.SpringBoard.SBSystemApertureViewController.captureShakeMatchMoveAnimation"];
    v20 = self->_secureFlipBookCaptureBoundsDefiningView;
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    [(SBSystemApertureSecureElementCaptureBoundsView *)v20 setDebugOutlineColor:yellowColor];
  }
}

- (void)_stopTrackingShakeAnimation
{
  layer = [(SBSystemApertureSecureElementCaptureBoundsView *)self->_secureFlipBookCaptureBoundsDefiningView layer];
  [layer removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureViewController.captureShakeMatchMoveAnimation"];
  secureFlipBookCaptureBoundsDefiningView = self->_secureFlipBookCaptureBoundsDefiningView;
  redColor = [MEMORY[0x277D75348] redColor];
  [(SBSystemApertureSecureElementCaptureBoundsView *)secureFlipBookCaptureBoundsDefiningView setDebugOutlineColor:redColor];
}

- (void)systemApertureDebuggingUtility:(id)utility updateUIForConnectionState:(int)state
{
  view = [(SBSystemApertureViewController *)self view];
  layer = [view layer];

  if (state <= 1)
  {
    if (!state)
    {
      goto LABEL_9;
    }

    if (state != 1)
    {
      goto LABEL_13;
    }

LABEL_8:
    clearColor = [MEMORY[0x277D75348] clearColor];
    v7 = 0.0;
LABEL_12:
    [layer setBorderColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setBorderWidth:v7];
    goto LABEL_13;
  }

  switch(state)
  {
    case 2:
      systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
      goto LABEL_11;
    case 5:
      goto LABEL_8;
    case 4:
LABEL_9:
      systemGreenColor = [MEMORY[0x277D75348] systemYellowColor];
LABEL_11:
      clearColor = systemGreenColor;
      v7 = 5.0;
      goto LABEL_12;
  }

LABEL_13:
}

- (void)systemApertureDebuggingUtility:(id)utility shouldCreateDebuggingLabel:(BOOL)label
{
  labelCopy = label;
  v30[2] = *MEMORY[0x277D85DE8];
  utilityCopy = utility;
  queryIterationLabel = self->_queryIterationLabel;
  if (labelCopy)
  {
    if (!queryIterationLabel)
    {
      v8 = objc_alloc_init(MEMORY[0x277D756B8]);
      v9 = self->_queryIterationLabel;
      self->_queryIterationLabel = v8;

      [(UILabel *)self->_queryIterationLabel setText:@"System Aperture Query Iteration: "];
      layer = [(UILabel *)self->_queryIterationLabel layer];
      [layer setAllowsHitTesting:0];

      [(UILabel *)self->_queryIterationLabel setNumberOfLines:1];
      [(UILabel *)self->_queryIterationLabel setTextAlignment:1];
      [(UILabel *)self->_queryIterationLabel setUserInteractionEnabled:0];
      v11 = self->_queryIterationLabel;
      v12 = MEMORY[0x277D74300];
      [MEMORY[0x277D74300] labelFontSize];
      v13 = [v12 systemFontOfSize:?];
      [(UILabel *)v11 setFont:v13];

      v14 = self->_queryIterationLabel;
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [(UILabel *)v14 setTextColor:systemWhiteColor];

      v16 = self->_queryIterationLabel;
      systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
      [(UILabel *)v16 setBackgroundColor:systemBlackColor];

      view = [(SBSystemApertureViewController *)self view];
      [view addSubview:self->_queryIterationLabel];

      [(UILabel *)self->_queryIterationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      centerXAnchor = [(UILabel *)self->_queryIterationLabel centerXAnchor];
      view2 = [(SBSystemApertureViewController *)self view];
      centerXAnchor2 = [view2 centerXAnchor];
      v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      centerYAnchor = [(UILabel *)self->_queryIterationLabel centerYAnchor];
      view3 = [(SBSystemApertureViewController *)self view];
      centerYAnchor2 = [view3 centerYAnchor];
      v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      v27 = MEMORY[0x277CCAAD0];
      v30[0] = v22;
      v30[1] = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      [v27 activateConstraints:v28];
    }
  }

  else if (queryIterationLabel)
  {
    [(UILabel *)queryIterationLabel removeFromSuperview];
    v29 = self->_queryIterationLabel;
    self->_queryIterationLabel = 0;
  }
}

- (void)elementViewControllingWillAppear:(id)appear
{
  elementViewProvider = [appear elementViewProvider];
  element = [elementViewProvider element];

  if (objc_opt_respondsToSelector())
  {
    [element element:element visibilityWillChange:1];
  }
}

- (void)elementViewControllingDidAppear:(id)appear
{
  elementViewProvider = [appear elementViewProvider];
  element = [elementViewProvider element];

  if (objc_opt_respondsToSelector())
  {
    [element element:element visibilityDidChange:1];
  }
}

- (void)elementViewControllingWillDisappear:(id)disappear
{
  elementViewProvider = [disappear elementViewProvider];
  element = [elementViewProvider element];

  if (objc_opt_respondsToSelector())
  {
    [element element:element visibilityWillChange:0];
  }
}

- (void)elementViewControllingDidDisappear:(id)disappear
{
  elementViewProvider = [disappear elementViewProvider];
  element = [elementViewProvider element];

  if (objc_opt_respondsToSelector())
  {
    [element element:element visibilityDidChange:0];
  }
}

- (CGRect)systemApertureContainerView:(id)view hitRectForBounds:(CGRect)bounds debugColor:(id *)color
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  v13 = [systemYellowColor colorWithAlphaComponent:0.5];

  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [view safeAreaInsets];
  v91 = v20;
  v92 = v18;
  v90 = v22;
  UIRectInset();
  v24 = v23;
  v88 = v25;
  v27 = v26;
  rect = v28;
  [viewCopy convertRect:view toView:{x, y, width, height}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if (([(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]- 1) >= 2)
  {
    v53 = v13;
  }

  else
  {
    v84 = v16;
    v85 = v32;
    [(SBSystemApertureSettings *)self->_settings containerHitRectTopMarginDefault];
    v38 = v37;
    v95.origin.x = v24;
    v95.origin.y = v88;
    v95.size.width = v27;
    v95.size.height = rect;
    MinY = CGRectGetMinY(v95);
    v96.origin.x = v30;
    v96.origin.y = v38;
    v96.size.width = v34;
    v96.size.height = v36;
    MaxY = CGRectGetMaxY(v96);
    [(SBSystemApertureSettings *)self->_settings containerHitRectTopMarginDefault];
    v42 = MaxY + v41;
    if (MinY < v42)
    {
      MinY = v42;
    }

    v97.origin.x = v30;
    v97.origin.y = v38;
    v97.size.width = v34;
    v83 = v36;
    v97.size.height = v36;
    v98.size.height = MinY - CGRectGetMinY(v97);
    v98.origin.x = v30;
    v86 = v38;
    v87 = v98.size.height;
    v98.origin.y = v38;
    v98.size.width = v34;
    MinX = CGRectGetMinX(v98);
    v99.origin.x = v24;
    v99.origin.y = v88;
    v99.size.width = v27;
    v99.size.height = rect;
    v44 = MinX - CGRectGetMinX(v99);
    [(SBSystemApertureSettings *)self->_settings containerHitRectHorizontalMarginLimit];
    settings = self->_settings;
    if (v44 >= v46)
    {
      [(SBSystemApertureSettings *)settings containerHitRectHorizontalMargin];
      recta = v30 - v54;
      [(SBSystemApertureSettings *)self->_settings containerHitRectHorizontalMargin];
      v89 = v34 + v55 * 2.0;
      v52 = v83;
      v51 = v84;
    }

    else
    {
      [(SBSystemApertureSettings *)settings containerHitRectHorizontalLimit];
      if (v44 >= v47)
      {
        recta = v30;
        v89 = v34;
      }

      else
      {
        v100.origin.x = v24;
        v100.origin.y = v88;
        v100.size.width = v27;
        v100.size.height = rect;
        v48 = CGRectGetMinX(v100);
        v101.origin.x = v24;
        v101.origin.y = v88;
        v101.size.width = v27;
        v101.size.height = rect;
        v49 = CGRectGetWidth(v101);
        [(SBSystemApertureSettings *)self->_settings containerHitRectTopMarginWide];
        v102.origin.y = v50;
        recta = v48;
        v102.origin.x = v48;
        v86 = v102.origin.y;
        v89 = v49;
        v102.size.width = v49;
        v102.size.height = v87;
        v87 = MinY - CGRectGetMinY(v102);
      }

      v52 = v83;
      v51 = v84;
    }

    [(SBSystemApertureViewController *)self _frameForSensorRegionInBounds:v51, v92, v91, v90, *&MinY];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v103.origin.x = v30;
    v103.origin.y = v85;
    v103.size.width = v34;
    v103.size.height = v52;
    v110.origin.x = v57;
    v110.origin.y = v59;
    v110.size.width = v61;
    v110.size.height = v63;
    if (CGRectIntersectsRect(v103, v110))
    {
      v53 = v13;
    }

    else
    {
      systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
      v53 = [systemGreenColor colorWithAlphaComponent:0.5];

      v104.origin.x = v57;
      v104.origin.y = v59;
      v104.size.width = v61;
      v104.size.height = v63;
      v65 = v52;
      MaxX = CGRectGetMaxX(v104);
      v105.origin.x = v30;
      v105.origin.y = v85;
      v105.size.width = v34;
      v105.size.height = v65;
      v67 = CGRectGetMinX(v105);
      v106.origin.x = recta;
      v106.origin.y = v86;
      v106.size.width = v89;
      v106.size.height = v87;
      CGRectGetMaxX(v106);
      if (MaxX < v67)
      {
        v107.origin.x = v30;
        v107.origin.y = v85;
        v107.size.width = v34;
        v107.size.height = v65;
        v108.origin.x = CGRectGetMinX(v107) + -4.0;
        v108.origin.y = v86;
        v108.size.width = v89;
        v108.size.height = v87;
        CGRectGetMinX(v108);
      }
    }
  }

  isContainerHitRectVisible = [(SBSystemApertureSettings *)self->_settings isContainerHitRectVisible];
  if (color && isContainerHitRectVisible)
  {
    v69 = v53;
    *color = v53;
  }

  traitCollection = [(SBSystemApertureViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRectRoundToScale();
  [view convertRect:viewCopy toView:?];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v79 = v72;
  v80 = v74;
  v81 = v76;
  v82 = v78;
  result.size.height = v82;
  result.size.width = v81;
  result.origin.y = v80;
  result.origin.x = v79;
  return result;
}

- (void)_kickCurtainIndicatorViewFrameForContainerView:(id)view
{
  viewCopy = view;
  elementViewController = [viewCopy elementViewController];
  v5 = elementViewController;
  if (elementViewController)
  {
    elementViewProvider = [elementViewController elementViewProvider];
  }

  else
  {
    outgoingElementViewController = [viewCopy outgoingElementViewController];
    elementViewProvider = [outgoingElementViewController elementViewProvider];
  }

  indicatorView = [elementViewProvider indicatorView];
  if (objc_opt_respondsToSelector())
  {
    [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setIndicatorPortalViewFrameChangedForIndicatorSourceView:indicatorView];
  }
}

- (BOOL)_doesElementHaveValidUrgencyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (objc_opt_respondsToSelector())
  {
    platformElementHost = [assertionCopy platformElementHost];
    urgentAndImportantAssertion = [platformElementHost urgentAndImportantAssertion];
    isValid = [urgentAndImportantAssertion isValid];
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (BOOL)_doesElementHaveValidRequiredPriorityAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (objc_opt_respondsToSelector())
  {
    platformElementHost = [assertionCopy platformElementHost];
    requiredPriorityAssertion = [platformElementHost requiredPriorityAssertion];
    isValid = [requiredPriorityAssertion isValid];
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (int64_t)systemApertureApertureElementAuthority:(id)authority preferredLayoutModeForElement:(id)element
{
  v4 = SAUILayoutSpecifyingOverriderForElement();
  preferredLayoutMode = [v4 preferredLayoutMode];

  return preferredLayoutMode;
}

- (BOOL)systemApertureApertureElementAuthority:(id)authority isActivityElementAlerting:(id)alerting
{
  alertingCopy = alerting;
  if (SAHasActivityBehavior())
  {
    v6 = [(SAUISystemApertureManager *)self->_systemApertureManager elementViewControllerForElement:alertingCopy];
    if (objc_opt_respondsToSelector())
    {
      temporallyOrderedAlertingActivityAssertions = [v6 temporallyOrderedAlertingActivityAssertions];
      v8 = [temporallyOrderedAlertingActivityAssertions bs_containsObjectPassingTest:&__block_literal_global_846];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementExpandedDueToUserInteraction:(id)interaction
{
  v4 = SAUILayoutSpecifyingOverriderForElement();
  preferredLayoutModeAssertion = [v4 preferredLayoutModeAssertion];
  v6 = [preferredLayoutModeAssertion layoutModeChangeReason] == 3;

  return v6;
}

- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementUrgentlyVisible:(id)visible
{
  visibleCopy = visible;
  if ([(SBSystemApertureViewController *)self _doesElementHaveValidUrgencyAssertion:visibleCopy])
  {
    v6 = SAUILayoutSpecifyingOverriderForElement();
    v7 = [v6 preferredLayoutMode] > 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)systemApertureApertureElementAuthority:(id)authority isElementRequiredPriority:(id)priority
{
  priorityCopy = priority;
  if ([(SBSystemApertureViewController *)self _doesElementHaveValidRequiredPriorityAssertion:priorityCopy])
  {
    v6 = SAUILayoutSpecifyingOverriderForElement();
    v7 = [v6 preferredLayoutMode] > 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)zStackParticipantDidChange:(id)change
{
  systemApertureSuppressedForSystemChromeSuppression = [change systemApertureSuppressedForSystemChromeSuppression];
  suppressForSystemChromeSuppressionAssertion = self->_suppressForSystemChromeSuppressionAssertion;
  if (systemApertureSuppressedForSystemChromeSuppression)
  {
    if (suppressForSystemChromeSuppressionAssertion)
    {
      goto LABEL_6;
    }

    systemApertureRepresentationSuppressionAssertionForSystemChromeSuppression = [(SBSystemApertureViewController *)self systemApertureRepresentationSuppressionAssertionForSystemChromeSuppression];
    v7 = self->_suppressForSystemChromeSuppressionAssertion;
    self->_suppressForSystemChromeSuppressionAssertion = systemApertureRepresentationSuppressionAssertionForSystemChromeSuppression;
  }

  else
  {
    self->_suppressForSystemChromeSuppressionAssertion = 0;
    v7 = suppressForSystemChromeSuppressionAssertion;

    [(BSInvalidatable *)v7 invalidate];
  }

LABEL_6:

  [(SBSystemApertureViewController *)self _reevaluateElementSuppression];
}

- (id)_containerViewForGesture:(id)gesture initialLocationInContainerView:(CGPoint *)view
{
  v22 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_orderedContainerViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        _UISystemGestureLocationInView();
        v13 = v12;
        v15 = v14;
        if ([v11 pointInside:0 withEvent:v17])
        {
          v8 = v11;
          if (view)
          {
            view->x = v13;
            view->y = v15;
          }

          goto LABEL_12;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

- (BOOL)_isSystemGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = gestureCopy;
  if (self->_resizePanGesture == gestureCopy)
  {
    v6 = 1;
  }

  else if (self->_interactionLongPressGesture == gestureCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
    associatedWindowScene = [WeakRetained associatedWindowScene];
    systemGestureManager = [associatedWindowScene systemGestureManager];
    v6 = [systemGestureManager isSystemGestureRecognizer:self->_interactionLongPressGesture];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_containerViewForTouch:(id)touch ofGestureRecognizer:(id)recognizer initialLocation:(CGPoint *)location
{
  v35 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  recognizerCopy = recognizer;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_orderedContainerViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    locationCopy = location;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([(SBSystemApertureViewController *)self _isSystemGesture:recognizerCopy])
        {
          _UISystemGestureLocationForTouchInView();
          v17 = v16;
          v19 = v18;
          v20 = +[SBReachabilityManager sharedInstance];
          [v20 effectiveReachabilityYOffset];
          v22 = v19 - v21;
        }

        else
        {
          [touchCopy locationInView:v15];
          v17 = v23;
          v22 = v24;
        }

        if ([v15 pointInside:0 withEvent:{v17, v22}])
        {
          v25 = v15;
          if (locationCopy)
          {
            locationCopy->x = v17;
            locationCopy->y = v22;
          }

          goto LABEL_15;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_15:

  if ([v25 _isInAWindow])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

- (id)_containerViewForScrollEvent:(id)event ofGestureRecognizer:(id)recognizer initialLocation:(CGPoint *)location
{
  v35 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  recognizerCopy = recognizer;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_orderedContainerViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    locationCopy = location;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([(SBSystemApertureViewController *)self _isSystemGesture:recognizerCopy])
        {
          _UISystemGestureLocationForScrollEventInView();
          v17 = v16;
          v19 = v18;
          v20 = +[SBReachabilityManager sharedInstance];
          [v20 effectiveReachabilityYOffset];
          v22 = v19 - v21;
        }

        else
        {
          [eventCopy locationInView:v15];
          v17 = v23;
          v22 = v24;
        }

        if ([v15 pointInside:0 withEvent:{v17, v22}])
        {
          v25 = v15;
          if (locationCopy)
          {
            locationCopy->x = v17;
            locationCopy->y = v22;
          }

          goto LABEL_15;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_15:

  if ([v25 _isInAWindow])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  v9 = eventCopy;
  if (self->_resizePanGesture != recognizerCopy && self->_interactionLongPressGesture != recognizerCopy)
  {
    goto LABEL_12;
  }

  type = [eventCopy type];
  if (type)
  {
    if (type == 10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = *MEMORY[0x277CBF348];
        v11 = [(SBSystemApertureViewController *)self _containerViewForScrollEvent:v9 ofGestureRecognizer:recognizerCopy initialLocation:&v22];
        if (v11)
        {
          v12 = v11;
          if (self->_resizePanGesture == recognizerCopy)
          {
            activeContainerResizeGestureDescription = self->_activeContainerResizeGestureDescription;
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveEvent___block_invoke;
            v18[3] = &unk_2783B8998;
            v20 = a2;
            v18[4] = self;
            v19 = v11;
            v21 = v22;
            v14 = [(SBSAGestureDescription *)activeContainerResizeGestureDescription copyWithBlock:v18];
            v15 = self->_activeContainerResizeGestureDescription;
            self->_activeContainerResizeGestureDescription = v14;
          }

          goto LABEL_10;
        }
      }

      [(SBSystemApertureViewController *)self _collapseExpandedElementIfPossible];
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v16 = 1;
LABEL_13:

  return v16;
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveEvent___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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

    if (!v6)
    {
      __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveEvent___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) interfaceElementIdentifier];
  [v6 setAssociatedInterfaceElementIdentifier:v7];

  [v6 setInitialLocation:{*(a1 + 56), *(a1 + 64)}];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_resizePanGesture == recognizerCopy || self->_interactionLongPressGesture == recognizerCopy)
  {
    v28 = *MEMORY[0x277CBF348];
    v9 = [(SBSystemApertureViewController *)self _containerViewForTouch:touchCopy ofGestureRecognizer:recognizerCopy initialLocation:&v28];
    if (v9)
    {
      v10 = v9;
      if (self->_interactionLongPressGesture == recognizerCopy)
      {
        v11 = 1376;
        activeContainerDefaultPressGestureDescription = self->_activeContainerDefaultPressGestureDescription;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke;
        v26[3] = &unk_2783AD750;
        v27[1] = a2;
        v26[4] = self;
        v13 = v27;
        v27[0] = v9;
        v14 = v26;
      }

      else
      {
        if (self->_resizePanGesture != recognizerCopy)
        {
LABEL_10:

          v15 = 1;
          goto LABEL_11;
        }

        v11 = 1384;
        activeContainerDefaultPressGestureDescription = self->_activeContainerResizeGestureDescription;
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_2;
        v22 = &unk_2783B8998;
        v24[1] = a2;
        selfCopy = self;
        v13 = v24;
        v24[0] = v9;
        v25 = v28;
        v14 = &v19;
      }

      v16 = [activeContainerDefaultPressGestureDescription copyWithBlock:{v14, v19, v20, v21, v22, selfCopy, v24[0]}];
      v17 = *(&self->super.super.super.super.isa + v11);
      *(&self->super.super.super.super.isa + v11) = v16;

      goto LABEL_10;
    }
  }

  [(SBSystemApertureViewController *)self _collapseExpandedElementIfPossible];
  v15 = 0;
LABEL_11:

  return v15;
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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

    if (!v6)
    {
      __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) interfaceElementIdentifier];
  [v6 setAssociatedInterfaceElementIdentifier:v7];
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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

    if (!v6)
    {
      __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) interfaceElementIdentifier];
  [v6 setAssociatedInterfaceElementIdentifier:v7];

  [v6 setInitialLocation:{*(a1 + 56), *(a1 + 64)}];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_interactionLongPressGesture == beginCopy && self->_activeContainerDefaultPressGestureDescription)
  {
    view = [(UIPanGestureRecognizer *)beginCopy view];
    [(UIPanGestureRecognizer *)v5 locationInView:view];
    v8 = [view hitTest:0 withEvent:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = ![(SBSystemApertureViewController *)self _longPressGestureInhibitedByElement];
    }
  }

  else if (self->_resizePanGesture == beginCopy && self->_activeContainerResizeGestureDescription)
  {
    v6 = ![(SBSystemApertureViewController *)self _panGestureInhibitedByElement];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)_systemGestureTypeForGesture:(id)gesture systemGestureManager:(id)manager
{
  gestureCopy = gesture;
  managerCopy = manager;
  v8 = managerCopy;
  if (self->_resizePanGesture == gestureCopy)
  {
    v9 = 135;
  }

  else if (self->_interactionLongPressGesture == gestureCopy)
  {
    v9 = 136;
  }

  else
  {
    v9 = [managerCopy typeOfSystemGesture:gestureCopy];
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v22 = *MEMORY[0x277D85DE8];
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  associatedWindowScene = [WeakRetained associatedWindowScene];
  systemGestureManager = [associatedWindowScene systemGestureManager];

  v11 = [(SBSystemApertureViewController *)self _systemGestureTypeForGesture:recognizerCopy systemGestureManager:systemGestureManager];
  v12 = [(SBSystemApertureViewController *)self _systemGestureTypeForGesture:gestureRecognizerCopy systemGestureManager:systemGestureManager];

  if ((v11 - 135) >= 2 && v11 != 39 || (v13 = 1, (v12 - 135) >= 2) && v12 != 39)
  {
    v14 = SBLogSystemGesture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = SBSystemGestureTypeDebugName(v11);
      v16 = SBSystemGestureTypeDebugName(v12);
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "disallowing simultaneous (%{public}@) and (%{public}@)", &v18, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_cancelExternalGesturesForReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  associatedWindowScene = [WeakRetained associatedWindowScene];
  systemGestureManager = [associatedWindowScene systemGestureManager];

  [systemGestureManager cancelGestureRecognizerOfType:1 reason:reasonCopy];
  [systemGestureManager cancelGestureRecognizerOfType:57 reason:reasonCopy];
  [systemGestureManager cancelGestureRecognizerOfType:39 reason:reasonCopy];
}

- (void)_handleResizePan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] == 1)
  {
    [(SBSystemApertureViewController *)self _cancelExternalGesturesForReason:@"SAResizePan"];
  }

  [(SBSystemApertureViewController *)self _handleContainerResizeGesture:panCopy];
}

- (void)_handleResizeResult:(int64_t)result withContainerView:(id)view
{
  viewCopy = view;
  v7 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:viewCopy];
  elementViewController = [viewCopy elementViewController];

  layoutMode = [v7 layoutMode];
  v10 = layoutMode;
  if (result != 1)
  {
    if (result != -1)
    {
      goto LABEL_42;
    }

    minimumSupportedLayoutMode = [v7 minimumSupportedLayoutMode];
    elementViewProvider = [elementViewController elementViewProvider];
    element = [elementViewProvider element];
    v14 = [(SBSystemApertureViewController *)self _isInteractiveHidingSupportedByElement:element];

    v15 = 2;
    if (minimumSupportedLayoutMode > 2)
    {
      v15 = minimumSupportedLayoutMode;
    }

    if (!v14)
    {
      v15 = minimumSupportedLayoutMode;
    }

    if (v10 - 1 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v10 - 1;
    }

    if (v10 <= v15)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 isInteractiveDismissalEnabled])
      {
        v16 = -1;
      }

      else if (v14)
      {
        v16 = 0;
      }
    }

    goto LABEL_29;
  }

  if (layoutMode <= 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = layoutMode;
  }

  v17 = layoutMode + 1;
  maximumSupportedLayoutMode = [v7 maximumSupportedLayoutMode];
  if (v17 < maximumSupportedLayoutMode)
  {
    v19 = v10 + 1;
  }

  else
  {
    v19 = maximumSupportedLayoutMode;
  }

  if (v19 < v16)
  {
    v16 = v19;
  }

  if (v10 != v16)
  {
LABEL_29:
    if (v10 != v16)
    {
      elementViewProvider2 = [elementViewController elementViewProvider];
      element2 = [elementViewProvider2 element];

      if (v16 == -1)
      {
        v30 = [(SAUISystemApertureManager *)self->_systemApertureManager elementAssertionForElement:element2];
        v31 = v30;
        if (v30 && [v30 isValid])
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            [SBSystemApertureViewController _handleResizeResult:withContainerView:];
          }

          [v31 invalidateWithReason:@"removed via pan gesture" layoutModeChangeReason:3];
        }

        else
        {
          v32 = SBLogSystemApertureController();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [SBSystemApertureViewController _handleResizeResult:withContainerView:];
          }
        }
      }

      else
      {
        [v7 setPreferredLayoutMode:v16 reason:3];
      }

      clientIdentifier = [element2 clientIdentifier];
      elementIdentifier = [element2 elementIdentifier];
      [SBSystemApertureTelemetryEmitter logTelemetryForInteractionPanGesture:v16 handled:1 clientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];

      view = [(SBSystemApertureViewController *)self view];
      [view setNeedsLayout];
    }

    goto LABEL_42;
  }

  registeredElements = [(SAUISystemApertureManager *)self->_systemApertureManager registeredElements];
  v21 = [registeredElements bs_compactMap:&__block_literal_global_856];

  if ([v21 count])
  {
    firstObject = [v21 firstObject];
    v23 = [v21 bs_reduce:firstObject block:&__block_literal_global_859];

    if (v23)
    {
      [v23 invalidateWithReason:@"User Unhide"];
      representedElement = [v23 representedElement];
      clientIdentifier2 = [representedElement clientIdentifier];
      elementIdentifier2 = [representedElement elementIdentifier];
      [SBSystemApertureTelemetryEmitter logTelemetryForInteractionPanGesture:2 handled:1 clientIdentifier:clientIdentifier2 elementIdentifier:elementIdentifier2];

      view2 = [(SBSystemApertureViewController *)self view];
      [view2 setNeedsLayout];
    }
  }

LABEL_42:
}

void *__72__SBSystemApertureViewController__handleResizeResult_withContainerView___block_invoke()
{
  v0 = SAUILayoutSpecifyingOverriderForElement();
  v1 = [v0 preferredLayoutModeAssertion];
  if ([v1 layoutModeChangeReason] == 3)
  {
    if ([v1 preferredLayoutMode])
    {
      v2 = 0;
    }

    else
    {
      v2 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *__72__SBSystemApertureViewController__handleResizeResult_withContainerView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 creationDate];
  v7 = [v4 creationDate];
  if ([v6 compare:v7] == -1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (BOOL)_isInteractiveHidingSupportedByElement:(id)element
{
  elementCopy = element;
  if (!SAHasActivityBehavior() || (objc_opt_respondsToSelector() & 1) != 0 && ([MEMORY[0x277D75A98] getStyleOverrides], STUIBackgroundActivityIdentifiersForStyleOverrides(), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(elementCopy, "representedBackgroundActivityIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "intersectsSet:", v5), v5, v4, (v6 & 1) != 0))
  {
    LOBYTE(v7) = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = [elementCopy preventsSwipeToHide] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_handleInteractionLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [(SBSystemApertureViewController *)self _cancelExternalGesturesForReason:@"SAInteractionLongPress"];
  }

  [(SBSystemApertureViewController *)self _handleContainerDefaultPressGesture:pressCopy];
}

- (BOOL)_handleButtonEventWithTest:(id)test handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  testCopy = test;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (testCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemApertureViewController _handleButtonEventWithTest:handler:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBSystemApertureViewController _handleButtonEventWithTest:handler:];
LABEL_3:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  registeredElements = [(SAUISystemApertureManager *)self->_systemApertureManager registeredElements];
  v10 = [registeredElements countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(registeredElements);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (testCopy[2](testCopy, v13) && (v8[2](v8, v13) & 1) != 0)
        {
          LOBYTE(v10) = 1;
          goto LABEL_14;
        }
      }

      v10 = [registeredElements countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBSystemApertureViewController_handleHeadsetButtonPress___block_invoke_2;
  v4[3] = &__block_descriptor_33_e21_B16__0___SAElement__8l;
  pressCopy = press;
  return [(SBSystemApertureViewController *)self _handleButtonEventWithTest:&__block_literal_global_887 handler:v4];
}

- (void)_axRegisterForZoomUpdatesIfNecessary
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (self->_zoomRegistrationIdentifier || !_AXSZoomTouchEnabled())
  {

    [(SBSystemApertureViewController *)self _axZoomLevelOrStandbyModeChanged];
  }

  else
  {
    mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
    [mEMORY[0x277D7EA38] registerInterestInZoomAttributes];

    objc_initWeak(&location, self);
    mEMORY[0x277D7EA38]2 = [MEMORY[0x277D7EA38] sharedInstance];
    v5 = *MEMORY[0x277D7EA48];
    v12[0] = *MEMORY[0x277D7EA58];
    v12[1] = v5;
    v12[2] = *MEMORY[0x277D7EA50];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__SBSystemApertureViewController__axRegisterForZoomUpdatesIfNecessary__block_invoke;
    v9[3] = &unk_2783B8A40;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v7 = [mEMORY[0x277D7EA38]2 registerForZoomAttributes:v6 onDisplay:0 updatesImmediatelyWithChangedHandler:v9];
    zoomRegistrationIdentifier = self->_zoomRegistrationIdentifier;
    self->_zoomRegistrationIdentifier = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __70__SBSystemApertureViewController__axRegisterForZoomUpdatesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 objectForKey:*MEMORY[0x277D7EA58]];
    [v5 bs_CGFloatValue];
    v7 = v6;

    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      v8 = SBLogSystemApertureAccessibility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 1520);
        v19 = 134218240;
        *v20 = v9;
        *&v20[8] = 2048;
        v21 = v7;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "AXZoom ZoomServices reported ZWAttributeKeyZoomLevel: (%f) -> (%f)", &v19, 0x16u);
      }

      *(*(a1 + 32) + 1520) = v7;
    }

    v10 = [v3 objectForKey:*MEMORY[0x277D7EA48]];
    v11 = [v10 BOOLValue];

    if (*(*(a1 + 32) + 1530) != v11)
    {
      v12 = SBLogSystemApertureAccessibility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 1530);
        v19 = 67109376;
        *v20 = v13;
        *&v20[4] = 1024;
        *&v20[6] = v11;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "AXZoom ZoomServices reported ZWAttributeKeyInStandbyMode: (%{BOOL}d) -> (%{BOOL}d)", &v19, 0xEu);
      }

      *(*(a1 + 32) + 1530) = v11;
    }

    v14 = [v3 objectForKey:*MEMORY[0x277D7EA50]];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      [*(a1 + 32) _addZoomAnimationAssertion];
    }

    if (*(*(a1 + 32) + 1531) != v15)
    {
      v16 = SBLogSystemApertureAccessibility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 32) + 1531);
        v19 = 67109376;
        *v20 = v17;
        *&v20[4] = 1024;
        *&v20[6] = v15;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "AXZoom ZoomServices reported ZWAttributeKeyIsAnimating: (%{BOOL}d) -> (%{BOOL}d)", &v19, 0xEu);
      }

      *(*(a1 + 32) + 1531) = v15;
    }

    if (v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = BSFloatEqualToFloat() ^ 1;
    }

    if (WeakRetained[1529] != v18)
    {
      WeakRetained[1529] = v18;
      [WeakRetained _axZoomLevelOrStandbyModeChanged];
    }
  }
}

- (void)_addZoomAnimationAssertion
{
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CF0CE8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SBSystemApertureViewController__addZoomAnimationAssertion__block_invoke;
  v14[3] = &unk_2783A9070;
  objc_copyWeak(&v15, &location);
  v6 = [v3 initWithIdentifier:uUIDString forReason:@"Zoom Animating" invalidationBlock:v14];

  if (![(NSMutableArray *)self->_zoomAnimationAssertions count])
  {
    v7 = SBLogSystemApertureAccessibility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "AXZoom Animating Began (assertion count > 0)", buf, 2u);
    }
  }

  [(NSMutableArray *)self->_zoomAnimationAssertions addObject:v6];
  v8 = dispatch_time(0, 200000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBSystemApertureViewController__addZoomAnimationAssertion__block_invoke_938;
  v10[3] = &unk_2783A92D8;
  v11 = v6;
  selfCopy = self;
  v9 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __60__SBSystemApertureViewController__addZoomAnimationAssertion__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained[159] count])
  {
    [v4[159] removeObject:v5];
  }
}

uint64_t __60__SBSystemApertureViewController__addZoomAnimationAssertion__block_invoke_938(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = [*(*(a1 + 40) + 1272) count];
  if (!result)
  {
    v3 = SBLogSystemApertureAccessibility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "AXZoom Animating Ended (assertion count = 0)", v4, 2u);
    }

    return [*(a1 + 40) _axZoomLevelOrStandbyModeChanged];
  }

  return result;
}

- (void)_axZoomLevelOrStandbyModeChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SBLogSystemApertureAccessibility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _axZoomActiveAndEnabled = [(SBSystemApertureViewController *)self _axZoomActiveAndEnabled];
    v5 = _AXSZoomTouchEnabled();
    v6 = [(NSMutableArray *)self->_zoomAnimationAssertions count];
    zoomServicesReportedAXisZooming = self->_zoomServicesReportedAXisZooming;
    v8[0] = 67109888;
    v8[1] = _axZoomActiveAndEnabled;
    v9 = 1024;
    v10 = v5;
    v11 = 1024;
    v12 = v6 != 0;
    v13 = 1024;
    v14 = zoomServicesReportedAXisZooming;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "AXZoom Level Or Standby Mode Changed. _axZoomActiveAndEnabled: %{BOOL}d, AXSZoomTouchEnabled(): %{BOOL}d, _zoomAnimationAssertions: %{BOOL}d, _zoomSerficesReportedAXisZooming: %{BOOL}d", v8, 0x1Au);
  }

  [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setIndicatorPortalViewFramesChanged];
  [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setIndicatorPortalViewsHidesSourceViewChanged];
  [(SBSystemApertureCurtainViewHoster *)self->_curtainViewHoster setSystemAperturePortalViewsHidesSourceViewChanged];
  [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:128];
}

- (void)_axRevealHiddenElementIfPossible
{
  _primaryContainerView = [(SBSystemApertureViewController *)self _primaryContainerView];
  [(SBSystemApertureViewController *)self _handleResizeResult:1 withContainerView:_primaryContainerView];
}

- (void)_axLayoutSpecifierRequestsDiminishment:(id)diminishment
{
  v4 = [(SBSystemApertureViewController *)self _containerViewForLayoutSpecifier:diminishment];
  [(SBSystemApertureViewController *)self _handleResizeResult:-1 withContainerView:v4];
}

- (CGRect)frameForIndicatorPortalViewWithSourceView:(id)view
{
  viewCopy = view;
  v5 = MEMORY[0x277CBF3A0];
  v6 = [(NSMutableArray *)self->_orderedContainerViews bs_firstObjectPassingTest:&__block_literal_global_940];
  elementViewController = [v6 elementViewController];
  v8 = elementViewController;
  if (elementViewController)
  {
    elementViewProvider = [elementViewController elementViewProvider];
  }

  else
  {
    outgoingElementViewController = [v6 outgoingElementViewController];
    elementViewProvider = [outgoingElementViewController elementViewProvider];
  }

  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  v14 = v5[3];

  if (viewCopy)
  {
    if (elementViewProvider)
    {
      indicatorView = [elementViewProvider indicatorView];
      fixedIndicatorView = [elementViewProvider fixedIndicatorView];
      v17 = fixedIndicatorView;
      if (indicatorView == viewCopy)
      {
        if (fixedIndicatorView)
        {
          [v6 bounds];
          [v6 center];
          SBUnintegralizedRectCenteredAboutPoint();
LABEL_18:
          v11 = v19;
          v12 = v20;
          v13 = v21;
          v14 = v22;
LABEL_19:

          goto LABEL_20;
        }
      }

      else if (fixedIndicatorView != viewCopy)
      {
        v18 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SBSystemApertureViewController frameForIndicatorPortalViewWithSourceView:];
        }

        goto LABEL_19;
      }

      [(UIView *)self->_interSensorRegionMatchMovePositionSourceView frame];
      goto LABEL_18;
    }

    indicatorView = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(indicatorView, OS_LOG_TYPE_ERROR))
    {
      [SBSystemApertureViewController frameForIndicatorPortalViewWithSourceView:];
    }
  }

  else
  {
    indicatorView = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(indicatorView, OS_LOG_TYPE_ERROR))
    {
      [SBSystemApertureViewController frameForIndicatorPortalViewWithSourceView:];
    }
  }

LABEL_20:

  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

uint64_t __76__SBSystemApertureViewController_frameForIndicatorPortalViewWithSourceView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 elementViewController];
  v4 = v3;
  if (!v3)
  {
    v4 = [v2 outgoingElementViewController];
  }

  v5 = [v4 elementViewProvider];
  v6 = [v5 element];
  v7 = SAHasIndicatorBehavior();

  if (!v3)
  {
  }

  return v7;
}

- (id)_newContainerViewWithInterfaceElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[SBSystemApertureContainerView alloc] initWithInterfaceElementIdentifier:identifierCopy];

  [(SBSystemApertureContainerView *)v5 setDelegate:self];
  [(SBSystemApertureContainerView *)v5 setElementOrientationAuthority:self];
  return v5;
}

- (id)_containerViewForLayoutSpecifier:(id)specifier
{
  v24 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_orderedContainerViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:v10, v19];
        v12 = v11;
        if (v11 == specifierCopy)
        {
          v17 = v10;
LABEL_17:

          goto LABEL_18;
        }

        v13 = [v11 behaviorOverridingParticipantSubordinateToParticipant:self];
        if (v13)
        {
          v14 = v13;
          while (v14 != specifierCopy)
          {
            v15 = [v12 behaviorOverridingParticipantSubordinateToParticipant:v14];

            v14 = v15;
            if (!v15)
            {
              goto LABEL_13;
            }
          }

          v16 = v10;

          if (v16)
          {
            goto LABEL_17;
          }
        }

LABEL_13:
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (void)_updateStatusBarAvoidanceFrameWithAnimationSettings:(id)settings
{
  v43 = *MEMORY[0x277D85DE8];
  bSAnimationSettings = [settings BSAnimationSettings];
  _associatedWindowScene = [(SBSystemApertureViewController *)self _associatedWindowScene];
  statusBarManager = [_associatedWindowScene statusBarManager];

  [(SBSystemApertureViewController *)self minimumSensorRegionFrame];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  if (([(SBSystemApertureViewController *)self _activeElementInterfaceOrientation]- 1) <= 1)
  {
    v35 = statusBarManager;
    v36 = bSAnimationSettings;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = self->_orderedContainerViews;
    v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:v19];
          if ([v20 layoutMode] > 0 || (objc_msgSend(v19, "elementViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "elementViewProvider"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "element"), v23 = objc_claimAutoreleasedReturnValue(), v24 = SAHasIndicatorBehavior(), v23, v22, v21, (v24 & 1) != 0) || !-[UILongPressGestureRecognizer state](self->_interactionLongPressGesture, "state") || -[UIPanGestureRecognizer state](self->_resizePanGesture, "state") >= 1)
          {
            window = [v19 window];
            [v19 bounds];
            [window convertRect:v19 fromView:?];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v44.origin.x = v27;
            v44.origin.y = v29;
            v44.size.width = v31;
            v44.size.height = v33;
            if (!CGRectIsEmpty(v44))
            {
              v45.origin.x = x;
              v45.origin.y = y;
              v45.size.width = width;
              v45.size.height = height;
              v47.origin.x = v27;
              v47.origin.y = v29;
              v47.size.width = v31;
              v47.size.height = v33;
              v46 = CGRectUnion(v45, v47);
              x = v46.origin.x;
              y = v46.origin.y;
              width = v46.size.width;
              height = v46.size.height;
            }
          }
        }

        v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v16);
    }

    statusBarManager = v35;
    bSAnimationSettings = v36;
  }

  if ([(SBSystemApertureViewController *)self _isAnyGestureRecognizerActive])
  {
    v34 = 3;
  }

  else
  {
    v34 = 2;
  }

  [statusBarManager setAvoidanceFrame:@"SBSystemApertureViewController" reason:0 statusBar:bSAnimationSettings animationSettings:v34 options:{x, y, width, height}];
}

- (void)_removeLayoutAssertionAndReevaluate:(id)reevaluate
{
  reevaluateCopy = reevaluate;
  if (reevaluateCopy)
  {
    v9 = reevaluateCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    reason = [v9 reason];
    v7 = [(NSMapTable *)selfCopy->_reasonsToLayoutAssertions objectForKey:reason];

    if (!v7 || (v8 = [(SBSystemApertureViewController *)selfCopy _mostRestrictiveLayoutModeFromActiveLayoutAssertions], [(NSMapTable *)selfCopy->_reasonsToLayoutAssertions removeObjectForKey:reason], [(SBSystemApertureViewController *)selfCopy _mostRestrictiveLayoutModeFromActiveLayoutAssertions]!= v8))
    {
      [(SAUISystemApertureManager *)selfCopy->_systemApertureManager invalidatePromotedElements];
    }

    objc_sync_exit(selfCopy);
    reevaluateCopy = v9;
  }
}

- (id)_layoutAssertionWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  reasonCopy = reason;
  if ([reasonCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = [(NSMapTable *)selfCopy->_reasonsToLayoutAssertions objectForKey:reasonCopy];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = !necessaryCopy;
    }

    if (!v11)
    {
      objc_initWeak(&location, selfCopy);
      v12 = [SBSystemApertureLayoutAssertion alloc];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __108__SBSystemApertureViewController__layoutAssertionWithMaximumPermittedLayoutMode_reason_creatingIfNecessary___block_invoke;
      v24 = &unk_2783B8A68;
      objc_copyWeak(&v25, &location);
      v10 = [(SBSystemApertureLayoutAssertion *)v12 initWithMaximumPermittedLayoutMode:mode reason:reasonCopy invalidationHandler:&v21];
      if (!selfCopy->_reasonsToLayoutAssertions)
      {
        strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
        reasonsToLayoutAssertions = selfCopy->_reasonsToLayoutAssertions;
        selfCopy->_reasonsToLayoutAssertions = strongToWeakObjectsMapTable;
      }

      v15 = [(SBSystemApertureViewController *)selfCopy _mostRestrictiveLayoutModeFromActiveLayoutAssertions:v21];
      [(NSMapTable *)selfCopy->_reasonsToLayoutAssertions setObject:v10 forKey:reasonCopy];
      _mostRestrictiveLayoutModeFromActiveLayoutAssertions = [(SBSystemApertureViewController *)selfCopy _mostRestrictiveLayoutModeFromActiveLayoutAssertions];
      if (_mostRestrictiveLayoutModeFromActiveLayoutAssertions != v15)
      {
        _primaryContainerView = [(SBSystemApertureViewController *)selfCopy _primaryContainerView];
        v18 = [(SBSystemApertureViewController *)selfCopy _layoutSpecifyingOverriderForContainerView:_primaryContainerView];

        preferredLayoutModeAssertion = [v18 preferredLayoutModeAssertion];
        if ([preferredLayoutModeAssertion preferredLayoutMode] > _mostRestrictiveLayoutModeFromActiveLayoutAssertions && objc_msgSend(preferredLayoutModeAssertion, "layoutModeChangeReason") == 3)
        {
          [preferredLayoutModeAssertion invalidateWithReason:@"more restrictive layout assertion"];
        }

        [(SAUISystemApertureManager *)selfCopy->_systemApertureManager invalidatePromotedElements];
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __108__SBSystemApertureViewController__layoutAssertionWithMaximumPermittedLayoutMode_reason_creatingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeLayoutAssertionAndReevaluate:v3];
}

- (CGSize)_preferredMinSizeForCustomLayout:(int64_t)layout elementInterfaceOrientation:(int64_t)orientation
{
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (layout <= 2)
  {
    if (layout != 1)
    {
      if (layout == 2)
      {
        _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
        [_layoutMetrics minimumScreenEdgeInsets];
        v10 = v9;
        v12 = v11;

        view = [(SBSystemApertureViewController *)self view];
        [view bounds];
        v15 = v14;

        v7 = v15 - v10 - v12;
        if (BSSizeEqualToSize())
        {
          v6 = 465.0;
        }

        else if (BSSizeEqualToSize())
        {
          v6 = 432.0;
        }

        else if (BSSizeEqualToSize())
        {
          v6 = 467.0;
        }

        else
        {
          v19 = BSSizeEqualToSize();
          v6 = 446.0;
          if (!v19)
          {
            v6 = 423.0;
          }
        }
      }

      goto LABEL_17;
    }

    v17 = (orientation - 3) >= 2;
    v16 = 143.666667;
    v6 = 144.666667;
    goto LABEL_10;
  }

  if (layout == 3)
  {
    v7 = 250.0;
    v6 = 180.0;
    goto LABEL_17;
  }

  if (layout == 4)
  {
    [(SBSystemApertureSettings *)self->_settings tallRectWidth];
    v17 = (orientation - 3) >= 2;
    v6 = 220.0;
LABEL_10:
    if (v17)
    {
      v7 = v16;
    }

    else
    {
      v7 = v6;
    }

    if (!v17)
    {
      v6 = v16;
    }
  }

LABEL_17:
  v18 = v7;
  result.height = v6;
  result.width = v18;
  return result;
}

- (double)_yOffsetForCustomLayout:(int64_t)layout
{
  v3 = 0.0;
  if (layout <= 2)
  {
    if (layout == 2)
    {
      v6 = 4.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (layout == 1)
    {
      return 4.0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    switch(layout)
    {
      case 3:
        return 4.0;
      case 4:
        return 6.0;
      case 5:
        _layoutMetrics = [(SBSystemApertureViewController *)self _layoutMetrics];
        [_layoutMetrics minimumScreenEdgeInsets];
        v3 = v5;

        break;
    }
  }

  return v3;
}

- (SBSystemApertureWindowScene)activeWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);

  return WeakRetained;
}

- (NSArray)stateDump
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", *MEMORY[0x277D67888]];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", *MEMORY[0x277D67890]];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", *MEMORY[0x277D67898]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(SAUISystemApertureManager *)self->_systemApertureManager orderedElementViewControllers];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = SAUILayoutSpecifyingOverriderForElementViewController();
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        elementViewProvider = [v8 elementViewProvider];
        element = [elementViewProvider element];
        clientIdentifier = [element clientIdentifier];
        [v10 setValue:clientIdentifier forKey:v21];

        elementViewProvider2 = [v8 elementViewProvider];
        element2 = [elementViewProvider2 element];
        elementIdentifier = [element2 elementIdentifier];
        [v10 setValue:elementIdentifier forKey:v20];

        [v9 layoutMode];
        v17 = SAUIStringFromElementViewLayoutMode();
        [v10 setValue:v17 forKey:v3];

        [v22 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  return v22;
}

- (void)hostOrientationDidChangeTo:(int64_t)to withPreviousOrientation:(int64_t)orientation context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  activeElementInterfaceOrientation = self->_activeElementInterfaceOrientation;
  v10 = SBLogSystemApertureOrientation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = BSInterfaceOrientationDescription();
    v25 = 138412290;
    v26 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "System Aperture Orientation settings did change to: %@", &v25, 0xCu);
  }

  if (activeElementInterfaceOrientation)
  {
    v12 = activeElementInterfaceOrientation == orientation;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!to)
    {
      goto LABEL_17;
    }

LABEL_9:
    if (!contextCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v16 = SBLogSystemApertureOrientation();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SBSystemApertureViewController(Private) hostOrientationDidChangeTo:withPreviousOrientation:context:];
  }

  if (to)
  {
    goto LABEL_9;
  }

LABEL_17:
  v18 = SBLogSystemApertureOrientation();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SBSystemApertureViewController(Private) hostOrientationDidChangeTo:withPreviousOrientation:context:];
  }

  if (!contextCopy)
  {
LABEL_20:
    unanimatedBehaviorSettings = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
    bSAnimationSettings = [unanimatedBehaviorSettings BSAnimationSettings];

    if (bSAnimationSettings)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_10:
  bSAnimationSettings = [SBAnimationUtilities animationSettingsForRotationFromOrientation:activeElementInterfaceOrientation toOrientation:to withContext:contextCopy];
  if (bSAnimationSettings)
  {
    goto LABEL_11;
  }

LABEL_21:
  [SBSystemApertureViewController(Private) hostOrientationDidChangeTo:withPreviousOrientation:context:];
LABEL_11:
  if (activeElementInterfaceOrientation == to)
  {
    v14 = SBLogSystemApertureOrientation();
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      v15 = BSInterfaceOrientationDescription();
      v25 = 138412290;
      v26 = v15;
      _os_log_impl(&dword_21ED4E000, &v14->super, OS_LOG_TYPE_DEFAULT, "Not applying orientation update to SBSystemApertureViewController because new orientation:(%@) matches current orientation", &v25, 0xCu);
    }
  }

  else
  {
    v14 = [[SBSystemApertureAnimator alloc] initWithSettings:bSAnimationSettings];
    v20 = [[SBSystemApertureViewControllerRotationTransitionContext alloc] initWithTargetOrientation:to];
    [(_UIViewControllerTransitionContext *)v20 _setIsAnimated:1];
    [(_UIViewControllerTransitionContext *)v20 _setAnimator:v14];
    _transitionCoordinator = [(_UIViewControllerTransitionContext *)v20 _transitionCoordinator];
    [(SBSystemApertureViewController *)self _updateElementOrientationTo:to withTransitionCoordinator:_transitionCoordinator];

    view = [(SBSystemApertureViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    [windowScene _synchronizeDrawing];

    [(SBSystemApertureAnimator *)v14 animateTransition:v20];
  }
}

- (void)_updateElementOrientationTo:(int64_t)to withTransitionCoordinator:(id)coordinator
{
  v29 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v7 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = SBSAStringFromUIInterfaceOrientation(to);
  v11 = [v7 stringWithFormat:@"[%@] begin rotation to %@", uUIDString, v10];
  v12 = [(SBSystemApertureViewController *)self _layoutAssertionWithMaximumPermittedLayoutMode:1 reason:v11 creatingIfNecessary:1];

  view = [(SBSystemApertureViewController *)self view];
  [view layoutIfNeeded];

  if (self->_activeElementInterfaceOrientation != to)
  {
    self->_activeElementInterfaceOrientation = to;
    [(SBSystemApertureViewController *)self _invalidatePreferencesForReason:0x4000];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_orderedContainerViews;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v24 + 1) + 8 * i) elementOrientationDidChangeWithTransitionCoordinator:coordinatorCopy];
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__SBSystemApertureViewController_Private___updateElementOrientationTo_withTransitionCoordinator___block_invoke;
  v22[3] = &unk_2783A9488;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__SBSystemApertureViewController_Private___updateElementOrientationTo_withTransitionCoordinator___block_invoke_2;
  v19[3] = &unk_2783B8A90;
  v18 = v12;
  v20 = v18;
  v21[1] = to;
  objc_copyWeak(v21, &location);
  [coordinatorCopy animateAlongsideTransition:v22 completion:v19];
  objc_destroyWeak(v21);

  objc_destroyWeak(&location);
}

void __97__SBSystemApertureViewController_Private___updateElementOrientationTo_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 1072);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) layoutIfNeeded];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __97__SBSystemApertureViewController_Private___updateElementOrientationTo_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = SBSAStringFromUIInterfaceOrientation(*(a1 + 48));
  v5 = [v3 stringWithFormat:@"end rotation to %@", v4];
  [v2 invalidateWithReason:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained view];
  [v6 layoutIfNeeded];
}

- (id)_currentFirstElement
{
  firstObject = [(NSMutableArray *)self->_orderedContainerViews firstObject];
  v4 = [(SBSystemApertureViewController *)self _elementForContainerView:firstObject];

  return v4;
}

- (BOOL)systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:(id)inert
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_orderedContainerViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:*(*(&v13 + 1) + 8 * i), v13];
        layoutMode = [v9 layoutMode];

        if (layoutMode > 0)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)systemApertureProximityBacklightPolicy:(id)policy isSystemApertureElementVisibleAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_orderedContainerViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(SBSystemApertureViewController *)self _layoutSpecifyingOverriderForContainerView:v12, v21];
        if ([v13 layoutMode] >= 1)
        {
          view = [(SBSystemApertureViewController *)self view];
          [view convertPoint:v12 toView:{x, y}];
          v16 = v15;
          v18 = v17;

          if ([v12 pointInside:0 withEvent:{v16, v18}])
          {

            v19 = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (void)systemApertureProximityBacklightPolicy:(id)policy embedProximityTouchTrackingView:(id)view touchBlockingView:(id)blockingView
{
  blockingViewCopy = blockingView;
  viewCopy = view;
  view = [(SBSystemApertureViewController *)self view];
  [view bounds];
  [viewCopy setFrame:?];
  [view bounds];
  [blockingViewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];
  [blockingViewCopy setAutoresizingMask:18];
  [view insertSubview:blockingViewCopy atIndex:0];

  [view addSubview:viewCopy];
  [(UILongPressGestureRecognizer *)self->_interactionLongPressGesture sb_cancel];
  [(UIPanGestureRecognizer *)self->_resizePanGesture sb_cancel];
}

- (void)systemApertureProximityBacklightPolicy:(id)policy removeProximityTouchTrackingView:(id)view touchBlockingView:(id)blockingView
{
  blockingViewCopy = blockingView;
  [view removeFromSuperview];
  [blockingViewCopy removeFromSuperview];
}

- (void)_updatePreferencesForReasonStackInitiated:(unsigned int)initiated updates:(id)updates
{
  updatesCopy = updates;
  v7 = initiated & 0xFFFFFFFE;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonInitOrDefaults:(unsigned int)defaults updates:(id)updates
{
  updatesCopy = updates;
  v7 = defaults & 0xFFFFFFFD;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonLumaSampling:(unsigned int)sampling updates:(id)updates
{
  updatesCopy = updates;
  v7 = sampling & 0xFFFFFFFB;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonSystemApertureManager:(unsigned int)manager updates:(id)updates
{
  updatesCopy = updates;
  v7 = manager & 0xFFFFFFF7;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonCloningOrRenderingStyle:(unsigned int)style updates:(id)updates
{
  updatesCopy = updates;
  v7 = style & 0xFFFFFFEF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonTimerExpired:(unsigned int)expired updates:(id)updates
{
  updatesCopy = updates;
  v7 = expired & 0xFFFFFFDF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonMilestoneReached:(unsigned int)reached updates:(id)updates
{
  updatesCopy = updates;
  v7 = reached & 0xFFFFFFBF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonAccessibility:(unsigned int)accessibility updates:(id)updates
{
  updatesCopy = updates;
  v7 = accessibility & 0xFFFFFF7F;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonDynamicsAnimation:(unsigned int)animation updates:(id)updates
{
  updatesCopy = updates;
  v7 = animation & 0xFFFFFEFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonTransitionEffectAssertion:(unsigned int)assertion updates:(id)updates
{
  updatesCopy = updates;
  v7 = assertion & 0xFFFFFDFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonGestures:(unsigned int)gestures updates:(id)updates
{
  updatesCopy = updates;
  v7 = gestures & 0xFFFFFBFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonAnimatedPropertyUpdateBegin:(unsigned int)begin updates:(id)updates
{
  updatesCopy = updates;
  v7 = begin & 0xFFFFF7FF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonAnimatedPropertyUpdateEnd:(unsigned int)end updates:(id)updates
{
  updatesCopy = updates;
  v7 = end & 0xFFFFEFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonElementRequested:(unsigned int)requested updates:(id)updates
{
  updatesCopy = updates;
  v7 = requested & 0xFFFFDFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonOrientation:(unsigned int)orientation updates:(id)updates
{
  updatesCopy = updates;
  v7 = orientation & 0xFFFFBFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonActiveDisplayChanged:(unsigned int)changed updates:(id)updates
{
  updatesCopy = updates;
  v7 = changed & 0xFFFF7FFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonReachabilityChanged:(unsigned int)changed updates:(id)updates
{
  updatesCopy = updates;
  v7 = changed & 0xFFFEFFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonLuminanceLevelChanged:(unsigned int)changed updates:(id)updates
{
  updatesCopy = updates;
  v7 = changed & 0xFFFDFFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x40000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSecureElementCoordinator:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_updatePreferencesForReasonSecureElementCoordinator:(unsigned int)coordinator updates:(id)updates
{
  updatesCopy = updates;
  v7 = coordinator & 0xFFFBFFFF;
  selfCopy = self;
  v9 = updatesCopy;
  v12 = v9;
  if (v7)
  {
    if (v7)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonStackInitiated:v7 updates:v9];
    }

    else if ((v7 & 2) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonInitOrDefaults:v7 updates:v9];
    }

    else if ((v7 & 4) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLumaSampling:v7 updates:v9];
    }

    else if ((v7 & 8) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonSystemApertureManager:v7 updates:v9];
    }

    else if ((v7 & 0x10) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonCloningOrRenderingStyle:v7 updates:v9];
    }

    else if ((v7 & 0x20) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTimerExpired:v7 updates:v9];
    }

    else if ((v7 & 0x40) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonMilestoneReached:v7 updates:v9];
    }

    else if ((v7 & 0x80) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAccessibility:v7 updates:v9];
    }

    else if ((v7 & 0x100) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonDynamicsAnimation:v7 updates:v9];
    }

    else if ((v7 & 0x200) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonTransitionEffectAssertion:v7 updates:v9];
    }

    else if ((v7 & 0x400) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonGestures:v7 updates:v9];
    }

    else if ((v7 & 0x800) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateBegin:v7 updates:v9];
    }

    else if ((v7 & 0x1000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonAnimatedPropertyUpdateEnd:v7 updates:v9];
    }

    else if ((v7 & 0x2000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonElementRequested:v7 updates:v9];
    }

    else if ((v7 & 0x4000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonOrientation:v7 updates:v9];
    }

    else if ((v7 & 0x8000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonActiveDisplayChanged:v7 updates:v9];
    }

    else if ((v7 & 0x10000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonReachabilityChanged:v7 updates:v9];
    }

    else if ((v7 & 0x20000) != 0)
    {
      [(SBSystemApertureViewController *)selfCopy _updatePreferencesForReasonLuminanceLevelChanged:v7 updates:v9];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBSAUpdatePreferencesForReason(SBSystemApertureViewController * _Nonnull __strong, SBSAPreferencesInvalidationReason, BSBlock  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"SBSystemApertureViewController+PreferencesValidationTracing.h" lineNumber:113 description:@"Unhandled SBSAPreferencesInvalidationReason; update PreferencesValidationTracing code."];
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)overrideContainerRenderingStyleAssertion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"overrideRenderingStyle > SBSystemApertureContainerRenderingStyleUnspecified" object:? file:? lineNumber:? description:?];
}

void __75__SBSystemApertureViewController_overrideContainerRenderingStyleAssertion___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"SBSystemApertureViewController.m" lineNumber:621 description:@"Trying to decrement nonexistant rendering request"];
}

void __120__SBSystemApertureViewController__animatedTransitionDidReachMilestone_description_propertyIdentity_finished_retargeted___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaanimatedtr_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_shouldPerformTransitionOfProperty:ofObject:withDescription:fromPreferences:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_propertyUpdateBlockArrayForPropertyIdentity:ofObject:withDescription:withTransitionDescription:forceSingle:behaviorSettingsArray:updateDescriptionsArray:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __83__SBSystemApertureViewController__elementContextsForOrderedElementViewControllers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaelementcon_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __58__SBSystemApertureViewController__indicatorElementContext__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatore_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __58__SBSystemApertureViewController__indicatorElementContext__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"SBSystemApertureViewController.m" lineNumber:1631 description:{@"Invalid parameter not satisfying: %@", @"indicatorLayoutSpecifying"}];
}

void __70__SBSystemApertureViewController__handleContainerDefaultPressGesture___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerl.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __64__SBSystemApertureViewController__handleContainerResizeGesture___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerp_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_pushGestureDescription:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_10_2(&dword_21ED4E000, v0, v1, "Gesture Updated: %@", v2);
}

- (void)_popActiveGestureDescriptions
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_10_2(&dword_21ED4E000, v0, v1, "Sending Gesture Update to Stack: %@", v2);
}

void __71__SBSystemApertureViewController__configureLongPressGestureIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12_2();
  NSClassFromString(&cfstr_Sbsacontainerl.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __68__SBSystemApertureViewController__configureResizeGestureIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12_2();
  NSClassFromString(&cfstr_Sbsacontainerp_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __57__SBSystemApertureViewController__platformMetricsContext__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12_2();
  NSClassFromString(&cfstr_Sbsaplatformme.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __76__SBSystemApertureViewController__contextWithOrderedElementViewControllers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12_2();
  NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_handleContainerAndElementUpdatesFromPreferences:orderedElementViewControllers:context:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"indicatorViewProvider" object:? file:? lineNumber:? description:?];
}

- (void)_updateWithPreferencesFromStackForValidationReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateWithPreferencesFromStackForValidationReason:(void *)a1 .cold.2(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_updateWithPreferencesFromStackForValidationReason:(void *)a1 .cold.3(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_updateWithPreferencesFromStackForValidationReason:(void *)a1 .cold.4(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_updateWithPreferencesFromStackForValidationReason:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_updateWithPreferencesFromStackForValidationReason:(void *)a1 .cold.6(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_beginRequiringBacklightAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_endRequiringBacklightAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)isRequestingMenuPresentationForTargetWithOverrider:isDefaultValue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isRequestingMenuPresentationForTargetWithOverrider:isDefaultValue:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)element:requestsDiscreteAnimationOfType:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"element != nil" object:? file:? lineNumber:? description:?];
}

- (void)requireCaptureBoundsDefiningViewWithBounds:reason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerp_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerl.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __71__SBSystemApertureViewController_gestureRecognizer_shouldReceiveTouch___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerp_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_handleResizeResult:withContainerView:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)_handleResizeResult:withContainerView:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x223D6CED0]();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v1, v2, "Attempting to remove element via pan gesture, but no valid assertion was found: element: %@; assertion: %@", v3, v4, v5, v6, v7);
}

- (void)_handleButtonEventWithTest:handler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"test" object:? file:? lineNumber:? description:?];
}

- (void)_handleButtonEventWithTest:handler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)frameForIndicatorPortalViewWithSourceView:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)frameForIndicatorPortalViewWithSourceView:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end