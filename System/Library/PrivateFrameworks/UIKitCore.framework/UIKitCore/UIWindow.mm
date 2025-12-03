@interface UIWindow
+ (BOOL)_prefersStatusBarHiddenInWindow:(id)window animationProvider:(id *)provider;
+ (BOOL)_temporary_shouldSizeWindowsAutomaticallyPlistOverrideSet;
+ (NSArray)restrictedSplashboardClasses;
+ (id)_applicationKeyWindow;
+ (id)_findWindowForControllingOverallAppearance;
+ (id)_findWindowForControllingOverallAppearanceInWindowScene:(id)scene;
+ (id)_findWithDisplayPoint:(CGPoint)point;
+ (id)_globalHitTestForLocation:(CGPoint)location sceneLocationZ:(double)z inWindowServerHitTestWindow:(id)window withEvent:(id)event;
+ (id)_hitTestToPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window;
+ (id)_topVisibleWindowPassingTest:(id)test;
+ (id)_windowWithContextId:(unsigned int)id;
+ (id)allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows forScreen:(id)screen;
+ (int)_preferredStatusBarVisibilityForWindow:(id)window targetOrientation:(int64_t)orientation animationProvider:(id *)provider;
+ (int64_t)_preferredStatusBarStyleInWindow:(id)window resolvedStyle:(int64_t *)style withPartStyles:(id *)styles animationProvider:(id *)provider;
+ (uint64_t)_checkPreCommitHandlersAfterCAFlush;
+ (unsigned)_synchronizeDrawingAcrossProcesses;
+ (void)_executeDeferredOrientationUpdates;
+ (void)_noteStatusBarHeightChanged:(double)changed oldHeight:(double)height;
+ (void)_setAllWindowsKeepContextInBackground:(BOOL)background;
+ (void)_synchronizeDrawingAcrossProcessesOverPort:(unsigned int)port;
+ (void)_synchronizeDrawingAcrossProcessesOverPort:(unsigned int)port withPreCommitHandler:(id)handler;
+ (void)_synchronizeDrawingWithCAFence:(id)fence preCommitHandler:(id)handler;
+ (void)_synchronizeDrawingWithFence:(id)fence preCommitHandler:(id)handler;
+ (void)_synchronizeDrawingWithPreCommitHandler:(id)handler;
+ (void)_unregisterChargedView:(id)view;
+ (void)adjustFocusForAccessibilityIfNeeded:(id)needed;
+ (void)adjustForAccessibilityIfNeeded:(id)needed;
+ (void)createIOSurfaceFromDisplayConfiguration:(id)configuration;
+ (void)createIOSurfaceFromScreen:(id)screen;
+ (void)createIOSurfaceOnScreen:(id)screen withContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame baseTransform:(CGAffineTransform *)transform;
+ (void)createIOSurfaceOnScreen:(id)screen withContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame usePurpleGfx:(BOOL)gfx outTransform:(CGAffineTransform *)transform;
+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame;
+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame outTransform:(CGAffineTransform *)transform;
+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame usePurpleGfx:(BOOL)gfx outTransform:(CGAffineTransform *)transform;
+ (void)createScreenIOSurface;
+ (void)initialize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- ($706CF31DF3EBD1610FB422704D6694BE)_bindingDescription;
- (BOOL)_definesDynamicTintColor;
- (BOOL)_focusEventRecognizer:(id)recognizer didRecognizeFocusMovementRequest:(id)request;
- (BOOL)_guardSizeTransitionFromAnimations;
- (BOOL)_hasContext;
- (BOOL)_isApplicationKeyWindow;
- (BOOL)_isConstrainedByScreenJail;
- (BOOL)_isLoweringAnchoringConstraints;
- (BOOL)_isScrollingEnabledForView:(id)view;
- (BOOL)_isSecure;
- (BOOL)_isTextEffectsWindowHosting;
- (BOOL)_isTextEffectsWindowNotificationOwner;
- (BOOL)_prefersFocusContainment;
- (BOOL)_resizeWindowFrameToSceneBoundsIfNecessary;
- (BOOL)_shouldAdjustSizeClassesAndResizeWindow;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation checkForDismissal:(BOOL)dismissal isRotationDisabled:(BOOL *)disabled;
- (BOOL)_shouldControlAutorotation;
- (BOOL)_shouldCreateContextAsSecure;
- (BOOL)_shouldDelayTouchForSystemGestures:(id)gestures;
- (BOOL)_shouldInstallRootPresentationController;
- (BOOL)_shouldRecognizeEventsInFocusEventRecognizer:(id)recognizer;
- (BOOL)_shouldUseRemoteContext;
- (BOOL)_wantsFocusEngine;
- (BOOL)_windowCanDynamicallySpecifySupportedInterfaceOrientations;
- (BOOL)_windowOwnsInterfaceOrientation;
- (BOOL)_windowOwnsInterfaceOrientationTransform;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)hasAmbiguousLayout;
- (BOOL)inhibitManualTransform;
- (BOOL)inhibitSetupOrientation;
- (BOOL)inhibitTextEffectsRotation;
- (BOOL)isInterfaceAutorotationDisabled;
- (BOOL)isInternalWindow;
- (BOOL)isKeyWindow;
- (BOOL)isTrackingKeyboard;
- (BOOL)isTransparentFocusItem;
- (BOOL)moveKeyboardLayoutGuideOverEdge:(unint64_t)edge layoutViews:(BOOL)views;
- (CAContext)_boundContext;
- (CGAffineTransform)_viewTransformForInterfaceOrientation:(SEL)orientation;
- (CGPoint)_constrainTouchLocationToScene:(CGPoint)scene;
- (CGPoint)_convertOffset:(CGPoint)offset fromWindow:(id)window;
- (CGPoint)_convertOffset:(CGPoint)offset toWindow:(id)window;
- (CGPoint)_convertOffsetFromSceneReferenceSpace:(CGPoint)space;
- (CGPoint)_convertOffsetToSceneReferenceSpace:(CGPoint)space;
- (CGPoint)_convertPointFromSceneReferenceSpace:(CGPoint)space;
- (CGPoint)_convertPointToSceneReferenceSpace:(CGPoint)space;
- (CGPoint)_transformDisplayToWindowCoordinates:(CGPoint)coordinates;
- (CGPoint)convertDeviceToWindow:(CGPoint)window;
- (CGPoint)convertPoint:(CGPoint)point fromWindow:(UIWindow *)window;
- (CGPoint)convertPoint:(CGPoint)point toWindow:(UIWindow *)window;
- (CGPoint)convertWindowToDevice:(CGPoint)device;
- (CGPoint)warpPoint:(CGPoint)point;
- (CGRect)_convertRectFromSceneReferenceSpace:(CGRect)space;
- (CGRect)_convertRectToSceneReferenceSpace:(CGRect)space;
- (CGRect)_referenceFrameFromSceneUsingScreenBounds:(BOOL)bounds;
- (CGRect)_sceneBounds;
- (CGRect)_sceneBoundsInWindowOrientation;
- (CGRect)_sceneReferenceBounds;
- (CGRect)_usableBounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect fromWindow:(UIWindow *)window;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toWindow:(UIWindow *)window;
- (Class)_intelligenceBaseClass;
- (UIActivityItemsConfigurationReading)_activityItemsConfigurationForScene;
- (UIEdgeInsets)_normalizedSafeAreaInsets;
- (UIEdgeInsets)_overlayInsets;
- (UIEdgeInsets)_sceneSafeAreaInsetsIncludingStatusBar:(BOOL)bar;
- (UIEdgeInsets)safeAreaInsets;
- (UIFocusItem)_rememberedFocusedItem;
- (UIKeyboardLayoutGuide)_primaryKeyboardTrackingGuide;
- (UILayoutGuide)safeAreaAspectFitLayoutGuide;
- (UIResponder)_focusResponder;
- (UIResponder)_lastFirstResponder;
- (UIResponder)_lastNextResponder;
- (UIScreen)screen;
- (UIViewController)_delegateViewController;
- (UIWindow)init;
- (UIWindow)initWithCoder:(id)coder;
- (UIWindow)initWithContentRect:(CGRect)rect;
- (UIWindow)initWithWindowScene:(UIWindowScene *)windowScene;
- (UIWindowScene)windowScene;
- (_UIContextBinder)_contextBinder;
- (_UICornerInsets)_normalizedCornerSafeAreaInsets;
- (_UICornerInsets)_safeAreaCornerInsets;
- (_UICornerInsets)_sceneSafeAreaCornerInsets;
- (_UIForcedOrientationTransactionToken)_orientationTransactionToken;
- (_UITraitEnvironmentInternal)_overrideParentTraitEnvironment;
- (double)_adjustedWindowLevelFromLevel:(double)level;
- (double)_classicOffset;
- (double)_rotationDuration;
- (double)_systemReferenceAngle;
- (double)_touchSloppinessFactor;
- (double)insetForDismissedKeyboardGuide;
- (double)keyboardLayoutGuideScrollViewOffset;
- (id)__clientsForRotationCallbacks;
- (id)_accessibilityHUDContainerViewForView:(id)view;
- (id)_acquireOrientationLockAssertionWithReason:(void *)reason;
- (id)_appearanceContainer;
- (id)_bindingLayer;
- (id)_boundingPath;
- (id)_centerExpressionInContainer:(id)container vertical:(BOOL)vertical contentInsetScale:(double)scale engine:(id)engine;
- (id)_clientsForRotation;
- (id)_contextOptionsWithInitialOptions:(id)options;
- (id)_createForcedOrientationTransactionTokenWithSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation forImmediateCommit:(BOOL)commit reason:(id)reason;
- (id)_debugName;
- (id)_deepestActionResponder;
- (id)_descendantWithAmbiguousLayout;
- (id)_eventRoutingScene;
- (id)_fbsScene;
- (id)_focusMovementSystemForFocusEventRecognizer:(id)recognizer;
- (id)_hitTestLocation:(CGPoint)location sceneLocationZ:(double)z inScene:(id)scene withWindowServerHitTestWindow:(id)window event:(id)event;
- (id)_hostingHandle;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name displayConfiguration:(id)configuration;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name scene:(id)scene attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene;
- (id)_initWithOrientation:(int64_t)orientation;
- (id)_keyboardSceneSettings;
- (id)_layoutEngineCreateIfNecessary;
- (id)_layoutEngineIfAvailable;
- (id)_normalInheritedTintColor;
- (id)_obtainKeyboardLayoutGuideTransitionAssertionForReason:(id)reason;
- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix;
- (id)_overridingPreferredFocusEnvironment;
- (id)_parentTraitEnvironment;
- (id)_redundantConstraints;
- (id)_registeredScrollToTopViews;
- (id)_remoteContentParent;
- (id)_responderForKeyEvents;
- (id)_rootForKeyResponderCycle;
- (id)_rootViewConstraintsUpdateIfNecessaryForView:(id)view;
- (id)_rotationViewControllers;
- (id)_subtreeMonitorsForView:(id)view;
- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)point withEvent:(id)event excludingWindow:(id)window;
- (id)_targetWindowForPathIndex:(int64_t)index atPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)_touchData;
- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection;
- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection traitOverrideApplicator:(id)applicator;
- (id)_traitCollectionWhenRotated;
- (id)_uiWindowSceneFromFBSScene:(id)scene;
- (id)_uiib_candidateRedundantConstraints;
- (id)_undoManagerForValidatingUndoRedoCommands;
- (id)_windowHostingSceneTraitCollection;
- (id)_windowParentTraitCollection;
- (id)contentView;
- (id)firstResponder;
- (id)nextResponder;
- (id)parentFocusEnvironment;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)restorationIdentifier;
- (id)traitCollection;
- (id)undoManager;
- (int64_t)_initialGuessInterfaceOrientation;
- (int64_t)_interfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation;
- (int64_t)_orientationInSceneSpace;
- (int64_t)_overriddenInterfaceOrientation;
- (int64_t)_preferredInterfaceOrientationForRootViewController;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_windowInterfaceOrientation;
- (int64_t)interfaceOrientation;
- (uint64_t)_cancelEnqueuedDeferredOrientationUpdateIfNeeded;
- (unint64_t)_edgeForTouch:(id)touch;
- (unint64_t)_edgesForSystemGesturesTouchDelay;
- (unint64_t)_expectedWindowInternalConstraintsCount;
- (unint64_t)_supportedInterfaceOrientationsConsultingApp:(BOOL)app;
- (unint64_t)_systemReferenceAngleMode;
- (unsigned)_contextId;
- (void)__setWindowHostingScene:(uint64_t)scene;
- (void)_addLayoutRuleRegistration:(id)registration;
- (void)_addRotationViewController:(id)controller;
- (void)_addWindowLevelChangedObserver:(id)observer;
- (void)_addWindowTopTapRegion;
- (void)_adjustFramePositionIfNecessary;
- (void)_adjustSizeClassesAndResizeWindowToFrame:(CGRect)frame;
- (void)_autolayout_windowDidChangeBoundsFrom:(CGRect)from;
- (void)_autolayout_windowDidChangeCenterFrom:(CGPoint)from;
- (void)_cleanupOrientationTransactionIfNecessary;
- (void)_clearSizeClassesForStateRestoration;
- (void)_commonInit;
- (void)_commonInitAttachedWindow:(BOOL)window debugName:(id)name scene:(id)scene;
- (void)_commonInitDebugName:(id)name uiScene:(id)scene;
- (void)_configurePassthroughInteractionIfNeeded;
- (void)_configureRootLayer:(id)layer sceneTransformLayer:(id)transformLayer transformLayer:(id)a5;
- (void)_constraints_subviewWillChangeSuperview:(id)superview;
- (void)_createKeyboardDismissalGestureRecognizer;
- (void)_createOtherSystemGateGestureRecognizersIfNeeded;
- (void)_createSystemGestureGateGestureRecognizerIfNeeded;
- (void)_didBecomeApplicationKeyWindowWithOldApplicationKeyWindow:(void *)window;
- (void)_didCreateRootPresentationController;
- (void)_didMoveFromScene:(id)scene toScene:(id)toScene;
- (void)_didMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_dismissAccessibilityHUD;
- (void)_executeDeferredOrientationUpdate;
- (void)_finishedFirstHalfRotation:(id)rotation finished:(BOOL)finished context:(id)context;
- (void)_finishedFullRotation:(BOOL)rotation context:(id)context skipNotification:(BOOL)notification;
- (void)_forceTwoPartRotationAnimation:(BOOL)animation;
- (void)_forwardFocusMovementAction:(id)action;
- (void)_handleDeviceOrientationChange:(id)change;
- (void)_handleSBActiveInterfaceOrientationChange:(id)change;
- (void)_initializeLayoutEngineDiscardingOldIfNeeded:(BOOL)needed;
- (void)_insertLiveResizeSnapshot:(id *)snapshot;
- (void)_installFocusEventRecognizer;
- (void)_installFocusIfNeededForFocusSystemSceneComponent:(id)component;
- (void)_internal_setRotatableViewOrientation:(uint64_t)orientation updateStatusBar:(uint64_t)bar duration:(double)duration force:;
- (void)_invalidateDeferredOrientationUpdate;
- (void)_invalidateWindowInternalConstraints;
- (void)_keyboardDismissalGestureRecognized:(id)recognized;
- (void)_legacySetRotatableViewOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration force:(BOOL)force;
- (void)_mainQueue_makeKeyAndVisible;
- (void)_makeKeyWindowIgnoringOldKeyWindow:(char)window transferringScenes:;
- (void)_matchDeviceOrientation;
- (void)_moveWithEvent:(id)event;
- (void)_noteOverlayInsetsDidChange;
- (void)_notifyRotatableViewOrientation:(int64_t)orientation duration:(double)duration;
- (void)_parentWillTransitionToTraitCollection:(id)collection;
- (void)_performTouchContinuationWithOverrideHitTestedView:(id)view;
- (void)_populateInitialTraitCollection:(id)collection;
- (void)_positionHeaderView:(id)view andFooterView:(id)footerView outsideContentViewForInterfaceOrientation:(int64_t)orientation;
- (void)_prepareHierarchyForWindowHostingSceneRemoval;
- (void)_propagateTraitCollectionChangedForStateRestorationWithTransitionCoordinator:(id)coordinator;
- (void)_registerChargedView:(id)view;
- (void)_registerScrollToTopView:(id)view;
- (void)_registerSubtreeMonitor:(id)monitor;
- (void)_removeAllViewControllersFromWindowHierarchyFromDealloc:(BOOL)dealloc;
- (void)_removeFocusEventRecognizer;
- (void)_removeFocusIfNeededForFocusSystemSceneComponent:(id)component;
- (void)_removeLiveResizeSnapshot:(uint64_t)snapshot;
- (void)_removeWindowLevelChangedObserver:(id)observer;
- (void)_resignApplicationKeyWindowStatus;
- (void)_resizeWindowToFullScreenIfNecessary;
- (void)_restoreFirstResponder;
- (void)_retryHandleStatusBarChangeIfNecessary;
- (void)_rotateToBounds:(CGRect)bounds withAnimator:(id)animator transitionContext:(id)context;
- (void)_rotateWindowToOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration skipCallbacks:(BOOL)callbacks;
- (void)_sceneBoundsDidChange;
- (void)_sceneSettingsSafeAreaCornerInsetsDidChange;
- (void)_sceneSettingsSafeAreaInsetsDidChange;
- (void)_scrollToTopViewsUnderScreenPointIfNecessary:(CGPoint)necessary resultHandler:(id)handler;
- (void)_sendButtonsForEvent:(id)event;
- (void)_sendTouchesForEvent:(id)event;
- (void)_setBoundContext:(id)context;
- (void)_setDelegateViewController:(id)controller;
- (void)_setExclusiveTouchView:(id)view;
- (void)_setFBSScene:(void *)scene;
- (void)_setFirstResponder:(id)responder;
- (void)_setHidden:(BOOL)hidden forced:(BOOL)forced;
- (void)_setIsLoweringAnchoringConstraints:(BOOL)constraints;
- (void)_setIsResigningFirstResponderFromHost:(BOOL)host;
- (void)_setIsSettingFirstResponder:(BOOL)responder;
- (void)_setNeedsBoundingPathUpdate;
- (void)_setOverrideParentTraitEnvironment:(id)environment;
- (void)_setRotatableClient:(id)client toOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration force:(BOOL)force isRotating:(BOOL)rotating;
- (void)_setSecure:(BOOL)secure;
- (void)_setShouldDisableTransformLayerScalingForSnapshotting:(BOOL)snapshotting;
- (void)_setStateRestorationVerticalSizeClass:(int64_t)class horizontalSizeClass:(int64_t)sizeClass;
- (void)_setSystemGestureRecognitionIsPossible:(BOOL)possible andTouchesAreCancelled:(BOOL)cancelled;
- (void)_setTraitCollectionChangeTransitionCoordinator:(id)coordinator;
- (void)_setWantsSuperlayerSecurityAnalysis:(BOOL)analysis;
- (void)_setWindowControlsStatusBarOrientation:(BOOL)orientation;
- (void)_setWindowHostingScene:(id)scene;
- (void)_showAccessibilityHUDItem:(id)item forView:(id)view;
- (void)_slideHeaderView:(id)view andFooterView:(id)footerView offScreen:(BOOL)screen forInterfaceOrientation:(int64_t)orientation;
- (void)_switchToLayoutEngine:(id)engine;
- (void)_tintColorDidChange;
- (void)_traitOverridesDidChange;
- (void)_traitOverridesWillChange:(id)change withApplicator:(id)applicator;
- (void)_unregisterChargedView:(id)view;
- (void)_unregisterScrollToTopView:(id)view;
- (void)_unregisterSubtreeMonitor:(id)monitor;
- (void)_updateAutorotationResponse:(BOOL)response;
- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)notifications;
- (void)_updateInterfaceOrientationFromActiveInterfaceOrientation:(BOOL)orientation;
- (void)_updateInterfaceOrientationFromActiveInterfaceOrientationIfRotationEnabled:(BOOL)enabled;
- (void)_updateInterfaceOrientationFromDeviceOrientation:(BOOL)orientation;
- (void)_updateInterfaceOrientationFromDeviceOrientationIfRotationEnabled:(BOOL)enabled;
- (void)_updateIsSceneSizedFlag;
- (void)_updateLayerOrderingAndSetLayerHidden:(BOOL)hidden actionBlock:(id)block;
- (void)_updateOrientationPreferencesAnimated:(BOOL)animated;
- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight;
- (void)_updateSystemConstraints;
- (void)_updateToInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)_updateToInterfaceOrientation:(int64_t)viewOrientation duration:(double)duration force:(BOOL)force;
- (void)_updateToNotificationProvidedInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)_updateTransformLayer;
- (void)_updateWindowEngineHostConstraintsWithSizing:(BOOL)sizing;
- (void)_updateWindowTraits;
- (void)_updateWindowTraitsAndNotify:(BOOL)notify;
- (void)_willChangeToSize:(CGSize)size orientation:(int64_t)orientation screen:(id)screen withTransitionCoordinator:(id)coordinator;
- (void)_willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_willUpdateFocusInContext:(id)context;
- (void)_windowInternalConstraints_centerDidChange;
- (void)_windowInternalConstraints_sizeDidChange;
- (void)_writeLayerTreeToPath:(id)path;
- (void)addKeyboardLayoutGuideIfNeeded:(id)needed;
- (void)addRootViewControllerViewIfPossible;
- (void)awakeFromNib;
- (void)beginDisablingInterfaceAutorotation;
- (void)cancelOrientationTransaction:(id)transaction;
- (void)commitOrientationTransaction:(id)transaction animated:(BOOL)animated;
- (void)createIOSurface;
- (void)createIOSurfaceWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)endDisablingInterfaceAutorotationAnimated:(BOOL)animated;
- (void)exerciseAmbiguityInLayout;
- (void)handleStatusBarChangeFromHeight:(double)height toHeight:(double)toHeight;
- (void)keyboardDidHide;
- (void)layoutSubviews;
- (void)layoutViewsForTrackedGuides;
- (void)makeKeyAndOrderFront:(id)front;
- (void)makeKeyAndVisible;
- (void)matchDeviceOrientation:(id)orientation;
- (void)orderFront:(id)front;
- (void)redo:(id)redo;
- (void)removeKeyboardLayoutGuideIfNeeded:(id)needed;
- (void)sendEvent:(UIEvent *)event;
- (void)setAutorotates:(BOOL)autorotates forceUpdateInterfaceOrientation:(BOOL)orientation;
- (void)setBecomeKeyOnOrderFront:(BOOL)front;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setContentView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setKeepContextInBackground:(BOOL)background;
- (void)setResizesToFullScreen:(BOOL)screen;
- (void)setRestorationIdentifier:(id)identifier;
- (void)setRootViewController:(UIViewController *)rootViewController;
- (void)setScreen:(UIScreen *)screen;
- (void)setWindowLevel:(UIWindowLevel)windowLevel;
- (void)setWindowScene:(UIWindowScene *)windowScene;
- (void)setupForOrientation:(int64_t)orientation;
- (void)traitCollectionDidChange:(id)change;
- (void)undo:(id)undo;
- (void)updateGuideForKeyboardPlacement:(id)placement;
@end

@implementation UIWindow

- (int64_t)interfaceOrientation
{
  if (self->_viewOrientation)
  {
    return self->_viewOrientation;
  }

  _windowHostingScene = [(UIWindow *)self _windowHostingScene];
  _interfaceOrientation = [_windowHostingScene _interfaceOrientation];

  return _interfaceOrientation;
}

- (id)traitCollection
{
  if (!self->_traitCollection && (*(&self->super._viewFlags + 1) & 8) == 0)
  {
    if (dyld_program_sdk_at_least())
    {
      v3 = +[UITraitCollection _fallbackTraitCollection];
      traitCollection = self->_traitCollection;
      self->_traitCollection = v3;

      _UITraitEnvironmentGeneratedTraitCollection(self, self->_traitCollection);
    }

    else
    {
      [(UIWindow *)self _updateWindowTraitsAndNotify:0];
    }
  }

  v5 = self->_traitCollection;

  return v5;
}

- (UIScreen)screen
{
  _screen = [(_UISceneUIWindowHosting *)self->_windowHostingScene _screen];
  v3 = _screen;
  if (_screen)
  {
    v4 = _screen;
  }

  else
  {
    v4 = +[UIScreen mainScreen];
  }

  v5 = v4;

  return v5;
}

- (UIWindowScene)windowScene
{
  if ((*(&self->_windowFlags + 4) & 8) != 0)
  {
    return self->_windowHostingScene;
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)safeAreaInsets
{
  if ((*(&self->_windowFlags + 4) & 4) == 0 && [(UIWindow *)self _updatesSafeAreaInsetsOnRead])
  {
    *&self->_windowFlags |= 0x400000000uLL;
    [(UIWindow *)self _normalizedSafeAreaInsets];
    [(UIView *)self setSafeAreaInsets:?];
    *&self->_windowFlags &= ~0x400000000uLL;
  }

  v7.receiver = self;
  v7.super_class = UIWindow;
  [(UIView *)&v7 safeAreaInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)_normalizedSafeAreaInsets
{
  if (dyld_program_sdk_at_least())
  {
    windowScene = [(UIWindow *)self windowScene];
    v4 = [windowScene _usesSceneSettingBasedSafeAreaInsets] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(UIWindow *)self _sceneSafeAreaInsetsIncludingStatusBar:v4];
  v8 = v5;
  v50 = v9;
  v51 = v6;
  v10 = v7;
  if (v9 == 0.0 && v5 == 0.0 && v7 == 0.0 && v6 == 0.0)
  {
    screen = [(UIWindow *)self screen];
    [screen overscanCompensationInsets];
    v8 = v12;
    v50 = v13;
    v51 = v14;
    v10 = v15;
  }

  v49 = v10;
  [(UIWindow *)self _sceneReferenceBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Width = v22;
  v24 = *MEMORY[0x1E695EFF8];
  v25 = *(MEMORY[0x1E695EFF8] + 8);
  if (([(UIWindow *)self interfaceOrientation]- 3) <= 1)
  {
    v52.origin.x = v17;
    v52.origin.y = v19;
    v52.size.width = v21;
    v52.size.height = Width;
    v26 = v25;
    v27 = v24;
    Height = CGRectGetHeight(v52);
    v53.origin.x = v17;
    v53.origin.y = v19;
    v53.size.width = v21;
    v53.size.height = Width;
    Width = CGRectGetWidth(v53);
    v21 = Height;
    v24 = v27;
    v25 = v26;
  }

  [(UIView *)self frame];
  v64.origin.x = v29;
  v64.origin.y = v30;
  v64.size.width = v31;
  v64.size.height = v32;
  v54.origin.x = v24;
  v54.origin.y = v25;
  v54.size.width = v21;
  v54.size.height = Width;
  if (CGRectContainsRect(v54, v64))
  {
    [(UIView *)self frame];
    v33 = v24;
    v46 = v55.size.width;
    v47 = v8;
    v45 = v55.size.height;
    x = v55.origin.x;
    y = v55.origin.y;
    v36 = v55.size.width;
    MinY = CGRectGetMinY(v55);
    v56.origin.x = v33;
    v56.origin.y = v25;
    v56.size.width = v21;
    v56.size.height = Width;
    v48 = fmax(v47 - fmax(MinY - CGRectGetMinY(v56), 0.0), 0.0);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v36;
    v57.size.height = v45;
    MinX = CGRectGetMinX(v57);
    v58.origin.x = v33;
    v58.origin.y = v25;
    v58.size.width = v21;
    v58.size.height = Width;
    v50 = fmax(v50 - fmax(MinX - CGRectGetMinX(v58), 0.0), 0.0);
    v59.origin.x = v33;
    v59.origin.y = v25;
    v59.size.width = v21;
    v59.size.height = Width;
    MaxY = CGRectGetMaxY(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = v46;
    v60.size.height = v45;
    v51 = fmax(v51 - fmax(MaxY - CGRectGetMaxY(v60), 0.0), 0.0);
    v61.origin.x = v33;
    v61.origin.y = v25;
    v61.size.width = v21;
    v61.size.height = Width;
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v8 = v48;
    v62.size.width = v46;
    v62.size.height = v45;
    v41 = fmax(v49 - fmax(MaxX - CGRectGetMaxX(v62), 0.0), 0.0);
  }

  else
  {
    v41 = v49;
  }

  v42 = v8;
  v43 = v50;
  v44 = v51;
  result.right = v41;
  result.bottom = v44;
  result.left = v43;
  result.top = v42;
  return result;
}

- (CGRect)_sceneReferenceBounds
{
  if (self->_windowHostingScene)
  {
    [(_UISceneUIWindowHosting *)self->_windowHostingScene _referenceBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    screen = [(UIWindow *)self screen];
    [screen _unjailedReferenceBounds];
    v3 = v11;
    v5 = v12;
    v7 = v13;
    v9 = v14;
  }

  v15 = v3;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_eventRoutingScene
{
  if ([(_UISceneUIWindowHosting *)self->_windowHostingScene _allowsEventUIWindowRouting])
  {
    windowHostingScene = self->_windowHostingScene;
  }

  else
  {
    windowHostingScene = 0;
  }

  return windowHostingScene;
}

- (int64_t)_windowInterfaceOrientation
{
  _transformLayerRotationsAreEnabled = [objc_opt_class() _transformLayerRotationsAreEnabled];
  if (self->_viewOrientation <= 1uLL)
  {
    viewOrientation = 1;
  }

  else
  {
    viewOrientation = self->_viewOrientation;
  }

  if (_transformLayerRotationsAreEnabled)
  {
    return self->_viewOrientation;
  }

  else
  {
    return viewOrientation;
  }
}

- (id)_layoutEngineIfAvailable
{
  if (qword_1ED4981D8 != -1)
  {
    dispatch_once(&qword_1ED4981D8, &__block_literal_global_56_3);
  }

  if (byte_1ED4981AA == 1)
  {

    return [(UIWindow *)self _layoutEngineCreateIfNecessary];
  }

  else
  {

    return [(UIView *)self _layoutEngine];
  }
}

- (BOOL)_windowOwnsInterfaceOrientation
{
  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  v3 = _FBSScene;
  if (_FBSScene && ([_FBSScene uiCanReceiveDeviceOrientationEvents] & 1) == 0)
  {
    uiSettings = [v3 uiSettings];
    v4 = [uiSettings interfaceOrientationMode] == 100;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_noteOverlayInsetsDidChange
{
  if ([(UIWindow *)self allowsWeakReference])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v4 = selfCopy;
  v5 = v4;
  if (v4 && !v4->_notedOverlayInsetChange)
  {
    v4->_notedOverlayInsetChange = 1;
    objc_initWeak(&location, v4);
    v6 = UIApp;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__UIWindow__noteOverlayInsetsDidChange__block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [v6 _performBlockAfterCATransactionCommits:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)_normalInheritedTintColor
{
  _interactionTintColor = [(UIView *)self _interactionTintColor];

  if (_interactionTintColor)
  {
    _interactionTintColor2 = [(UIView *)self _interactionTintColor];
  }

  else
  {
    _interactionTintColor2 = 0;
  }

  return _interactionTintColor2;
}

- (BOOL)_windowCanDynamicallySpecifySupportedInterfaceOrientations
{
  if ([(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    return 1;
  }

  windowScene = [(UIWindow *)self windowScene];
  _canDynamicallySpecifySupportedInterfaceOrientations = [windowScene _canDynamicallySpecifySupportedInterfaceOrientations];

  return _canDynamicallySpecifySupportedInterfaceOrientations;
}

- (void)addRootViewControllerViewIfPossible
{
  v83 = *MEMORY[0x1E69E9840];
  [(UIWindow *)self _resizeWindowToFullScreenIfNecessary];
  if ([(UIWindow *)self _shouldInstallRootPresentationController])
  {
    _rootPresentationController = [(UIWindow *)self _rootPresentationController];
    presented = [_rootPresentationController presented];

    if ((presented & 1) == 0)
    {
      rootViewController = [(UIWindow *)self rootViewController];
      view = [rootViewController view];
      superview = [view superview];

      if (superview)
      {
        v8 = *(__UILogGetCategoryCachedImpl("Window", &qword_1EA968E10) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Manually adding the rootViewController's view to the view hierarchy is no longer supported. Please allow UIWindow to add the rootViewController's view to the view hierarchy itself.", buf, 2u);
        }
      }

      windowScene = [(UIWindow *)self windowScene];
      [windowScene _installLocalSheetPresentationControllerForWindow:self];

      v10 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];
      _rootPresentationController2 = [(UIWindow *)self _rootPresentationController];
      [_rootPresentationController2 _presentWithAnimationController:v10 inWindow:self interactionController:0 animated:0 handoffData:0];

      if ([(UIViewController *)self->_rootViewController _tryBecomeRootViewControllerInWindow:?])
      {
        [(UIViewController *)self->_rootViewController setNeedsFocusUpdate];
      }
    }

LABEL_30:
    [(UIWindow *)self _resizeWindowFrameToSceneBoundsIfNecessary];
    rootViewController = self->_rootViewController;
    if (rootViewController)
    {
      [(UIViewController *)rootViewController _invalidatePreferences:128 excluding:?];
    }

    windowScene2 = [(UIWindow *)self windowScene];
    _interfaceOrientation = [windowScene2 _interfaceOrientation];

    if (_interfaceOrientation)
    {
      windowScene3 = [(UIWindow *)self windowScene];
      if ([windowScene3 _canDynamicallySpecifySupportedInterfaceOrientations])
      {
        v34 = self->_rootViewController == 0;

        if (!v34)
        {
          _viewControllerForSupportedInterfaceOrientations = [(UIViewController *)self->_rootViewController _viewControllerForSupportedInterfaceOrientations];
          [_viewControllerForSupportedInterfaceOrientations _ignoreAppSupportedOrientations];
          v36 = [(UIWindow *)self _supportedInterfaceOrientationsConsultingApp:1];
          if (_interfaceOrientation > 4 || (v37 = v36, (v36 | qword_18A681418[_interfaceOrientation - 1]) == 0xFFFFFFFFFFFFFFFFLL))
          {
            [(UIWindow *)self _updateOrientationPreferencesAnimated:0];
          }

          else
          {
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &qword_1EA968E18);
            if (*CategoryCachedImpl)
            {
              v62 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v63 = MEMORY[0x1E696AEC0];
                selfCopy = self;
                v65 = objc_opt_class();
                v66 = NSStringFromClass(v65);
                selfCopy = [v63 stringWithFormat:@"<%@: %p>", v66, selfCopy];

                v78 = selfCopy;
                v68 = self->_rootViewController;
                if (v68)
                {
                  v69 = MEMORY[0x1E696AEC0];
                  v70 = v68;
                  v71 = objc_opt_class();
                  v72 = NSStringFromClass(v71);
                  v73 = [v69 stringWithFormat:@"<%@: %p>", v72, v70];
                }

                else
                {
                  v73 = @"(nil)";
                }

                v74 = v73;
                v75 = BSInterfaceOrientationDescription();
                v76 = BSInterfaceOrientationMaskDescription();
                *buf = 138413058;
                *&buf[4] = v78;
                *&buf[12] = 2112;
                *&buf[14] = v73;
                *&buf[22] = 2112;
                v81 = v75;
                LOWORD(v82) = 2112;
                *(&v82 + 2) = v76;
                _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "%@: Adding root vc %@ that does not support the scene's current orientation (%@). Root vc supported orientations: %@. We will force a transaction", buf, 0x2Au);
              }
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v81 = __Block_byref_object_copy__168;
            *&v82 = __Block_byref_object_dispose__168;
            *(&v82 + 1) = 0;
            v39 = MEMORY[0x1E696AEC0];
            v40 = self->_rootViewController;
            if (v40)
            {
              v41 = MEMORY[0x1E696AEC0];
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              v44 = [v41 stringWithFormat:@"<%@: %p>", v43, v40];
            }

            else
            {
              v44 = @"(nil)";
            }

            v45 = [v39 stringWithFormat:@"Root View Controller Setup: %@", v44];

            v46 = [(UIWindow *)self _createForcedOrientationTransactionTokenWithSupportedOrientations:v37 preferredOrientation:0 forImmediateCommit:1 reason:v45];
            v47 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v46;

            v48 = *(*&buf[8] + 40);
            v79[0] = MEMORY[0x1E69E9820];
            v79[1] = 3221225472;
            v79[2] = __47__UIWindow_addRootViewControllerViewIfPossible__block_invoke;
            v79[3] = &unk_1E70F2F20;
            v79[4] = buf;
            [v48 commitAnimated:0 completionBlock:v79];

            _Block_object_dispose(buf, 8);
          }
        }
      }

      else
      {
      }
    }

    return;
  }

  view2 = [(UIViewController *)self->_rootViewController view];
  if (!view2 || (-[UIViewController view](self->_rootViewController, "view"), v13 = objc_claimAutoreleasedReturnValue(), [v13 superview], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, view2, v14))
  {
LABEL_27:
    view3 = [(UIViewController *)self->_rootViewController view];
    superview2 = [view3 superview];

    if (superview2 == self && [(UIViewController *)self->_rootViewController _tryBecomeRootViewControllerInWindow:?])
    {
      [(UIViewController *)self->_rootViewController setNeedsFocusUpdate];
    }

    goto LABEL_30;
  }

  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  if ([UIApp isFrontBoard])
  {
    goto LABEL_16;
  }

  screen = [(UIWindow *)self screen];
  if (![screen _isMainScreen])
  {
    goto LABEL_15;
  }

  _mainScene = [UIApp _mainScene];
  if (_FBSScene != _mainScene)
  {

LABEL_15:
LABEL_16:
    [(UIView *)self bounds];
    goto LABEL_17;
  }

  [(UIWindow *)self _sceneBounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  [(UIView *)self frame];
  v86.origin.x = v57;
  v86.origin.y = v58;
  v86.size.width = v59;
  v86.size.height = v60;
  v85.origin.x = v50;
  v85.origin.y = v52;
  v85.size.width = v54;
  v85.size.height = v56;
  v61 = CGRectEqualToRect(v85, v86);

  if (!v61)
  {
    goto LABEL_16;
  }

  [(UIViewController *)self->_rootViewController _defaultInitialViewFrame];
LABEL_17:
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  view4 = [(UIViewController *)self->_rootViewController view];
  [view4 setFrame:{v21, v22, v23, v24}];

  if (([(UIViewController *)self->_rootViewController _isPresentingInWindow:?]& 1) == 0)
  {
    view5 = [(UIViewController *)self->_rootViewController view];
    [(UIView *)self addSubview:view5];
    if ([view5 translatesAutoresizingMaskIntoConstraints])
    {
      if (!+[UIWindow _transformLayerRotationsAreEnabled])
      {
LABEL_26:

        goto LABEL_27;
      }

      view6 = [(UIViewController *)self->_rootViewController view];
      [view6 setAutoresizingMask:18];
    }

    else
    {
      view6 = [(UIWindow *)self _rootViewConstraintsUpdateIfNecessaryForView:view5];
      [(UIView *)self addConstraints:view6];
    }

    goto LABEL_26;
  }
}

- (void)makeKeyAndVisible
{
  if ((dyld_program_sdk_at_least() & 1) != 0 || pthread_main_np() == 1)
  {

    [(UIWindow *)self _mainQueue_makeKeyAndVisible];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__UIWindow_makeKeyAndVisible__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (UIViewController)_delegateViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);

  return WeakRetained;
}

- (CGRect)_sceneBoundsInWindowOrientation
{
  [(UIWindow *)self _sceneBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _orientationForRootTransform = [(UIWindow *)self _orientationForRootTransform];
  _orientationForViewTransform = [(UIWindow *)self _orientationForViewTransform];
  if (_orientationForRootTransform)
  {
    v13 = _orientationForViewTransform;
    if (_orientationForViewTransform)
    {
      if (![(UIWindow *)self _windowOwnsInterfaceOrientation]&& [(UIWindow *)self _windowOwnsInterfaceOrientationTransform])
      {
        v4 = _UIConvertRectFromOrientationToOrientation(_orientationForRootTransform, v13, v4, v6, v8, v10, v8, v10);
        v6 = v14;
        v8 = v15;
        v10 = v16;
      }
    }
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_sceneBounds
{
  _windowHostingScene = [(UIWindow *)self _windowHostingScene];
  if (!_windowHostingScene || self->_viewOrientation && [(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    [(UIWindow *)self _sceneReferenceBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIWindow *)self _sceneReferenceBounds];
    v14 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(self->_viewOrientation, v5, v7, v9, v11, v12, v13);
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    _coordinateSpace = [_windowHostingScene _coordinateSpace];
    [_coordinateSpace bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  v26 = v14;
  v27 = v16;
  v28 = v18;
  v29 = v20;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)isInternalWindow
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  v4 = _UIKitBundle();
  v5 = [v3 isEqual:v4];

  return v5;
}

- (_UIForcedOrientationTransactionToken)_orientationTransactionToken
{
  WeakRetained = objc_loadWeakRetained(&self->__orientationTransactionToken);

  return WeakRetained;
}

- (void)_updateWindowTraits
{
  if ([(UIWindow *)self _shouldPropagateTraitCollectionChanges])
  {

    [(UIWindow *)self _updateWindowTraitsAndNotify:1];
  }
}

- (id)_windowHostingSceneTraitCollection
{
  v3 = self->_windowHostingScene;
  if (objc_opt_respondsToSelector())
  {
    [(_UISceneUIWindowHosting *)v3 _traitCollectionForChildEnvironment:self];
  }

  else
  {
    [(_UISceneUIWindowHosting *)v3 _traitCollection];
  }
  v4 = ;

  return v4;
}

- (id)firstResponder
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  firstResponder = self->_firstResponder;
  if (isKindOfClass)
  {
    textField = [(UIResponder *)firstResponder textField];
  }

  else
  {
    textField = firstResponder;
  }

  return textField;
}

- (CAContext)_boundContext
{
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);

  return WeakRetained;
}

- (BOOL)_shouldCreateContextAsSecure
{
  if (*(&self->_windowFlags + 3) & 0x20) != 0 || ([objc_opt_class() _isSecure])
  {
    LOBYTE(_isSystemWindow) = 1;
  }

  else
  {
    _isSystemWindow = [objc_opt_class() _isSystemWindow];
    if (_isSystemWindow)
    {
      v3 = UIApp;

      LOBYTE(_isSystemWindow) = [v3 _areSystemWindowsSecure];
    }
  }

  return _isSystemWindow;
}

- (void)_resizeWindowToFullScreenIfNecessary
{
  if ([(UIWindow *)self resizesToFullScreen])
  {
    windowFlags = self->_windowFlags;
    if ((*&windowFlags & 0x8000000) == 0)
    {
      self->_windowFlags = (*&windowFlags | 0x8000000);
      [(UIWindow *)self _sceneBounds];

      [(UIWindow *)self setFrame:?];
    }
  }
}

- (BOOL)_shouldInstallRootPresentationController
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    if (([UIApp _isSpringBoard] & 1) != 0 || -[UIWindow _preventsRootPresentationController](self, "_preventsRootPresentationController"))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_InstallsRootPresentation, @"InstallsRootPresentation", _UIInternalPreferenceUpdateBool);
      if (byte_1ED48B4CC)
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (BOOL)_resizeWindowFrameToSceneBoundsIfNecessary
{
  _transformLayerRotationsAreEnabled = [objc_opt_class() _transformLayerRotationsAreEnabled];
  if (_transformLayerRotationsAreEnabled)
  {
    _transformLayerRotationsAreEnabled = [(UIWindow *)self _shouldResizeWithScene];
    if (_transformLayerRotationsAreEnabled)
    {
      if ((*(&self->_windowFlags + 3) & 0x40) == 0 || [(UIWindow *)self _isHostedInAnotherProcess]|| ([(UIWindow *)self _sceneBoundsInWindowOrientation], v5 = v4, v7 = v6, v9 = v8, v11 = v10, [(UIView *)self frame], v18.origin.x = v12, v18.origin.y = v13, v18.size.width = v14, v18.size.height = v15, v17.origin.x = v5, v17.origin.y = v7, v17.size.width = v9, v17.size.height = v11, CGRectEqualToRect(v17, v18)))
      {
        LOBYTE(_transformLayerRotationsAreEnabled) = 0;
      }

      else
      {
        [(UIWindow *)self _adjustSizeClassesAndResizeWindowToFrame:v5, v7, v9, v11];
        LOBYTE(_transformLayerRotationsAreEnabled) = 1;
      }
    }
  }

  return _transformLayerRotationsAreEnabled;
}

- (id)_windowParentTraitCollection
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 104);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      _windowHostingSceneTraitCollection = [WeakRetained _traitCollectionForChildEnvironment:self];
      if (!_windowHostingSceneTraitCollection)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__windowParentTraitCollection object:self file:@"UIWindow.m" lineNumber:6535 description:{@"UIKit internal inconsistency: overrideParentTraitEnvironment returned a nil traitCollection: %@", v3}];

        _windowHostingSceneTraitCollection = 0;
      }
    }

    else
    {
      _windowHostingSceneTraitCollection = [self _windowHostingSceneTraitCollection];
    }
  }

  else
  {
    _windowHostingSceneTraitCollection = 0;
  }

  return _windowHostingSceneTraitCollection;
}

- (void)_resignApplicationKeyWindowStatus
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = [_UIEditMenuSceneComponent sceneComponentForView:selfCopy];
    [v2 dismissCurrentMenu];

    firstResponder = [selfCopy firstResponder];
    [firstResponder _windowResignedKey];

    _focusSystem = [selfCopy _focusSystem];
    if ([_focusSystem _focusedItemIsContainedInEnvironment:selfCopy includeSelf:1])
    {
      focusedItem = [_focusSystem focusedItem];
      [selfCopy _setRememberedFocusedItem:focusedItem];
    }

    if (([selfCopy _windowOwnsInterfaceOrientation] & 1) == 0 && objc_msgSend(selfCopy, "_windowOwnsInterfaceOrientationTransform") && (objc_msgSend(selfCopy, "isHidden") & 1) == 0)
    {
      windowScene = [selfCopy windowScene];
      v8[0] = selfCopy;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [windowScene _computeMetricsForWindows:v7 animated:0];
    }
  }
}

+ (id)_applicationKeyWindow
{
  v2 = +[_UIKeyWindowEvaluator sharedEvaluator];
  applicationKeyWindow = [(_UIKeyWindowEvaluator *)v2 applicationKeyWindow];

  return applicationKeyWindow;
}

- (BOOL)isTrackingKeyboard
{
  if (self->_primaryKeyboardTrackingGuide)
  {
    currentKeyboardTrackingLayoutGuides = self->_currentKeyboardTrackingLayoutGuides;
    if (currentKeyboardTrackingLayoutGuides)
    {
      LOBYTE(currentKeyboardTrackingLayoutGuides) = [(NSMutableArray *)currentKeyboardTrackingLayoutGuides count]!= 0;
    }
  }

  else
  {
    LOBYTE(currentKeyboardTrackingLayoutGuides) = 0;
  }

  return currentKeyboardTrackingLayoutGuides;
}

- (void)_mainQueue_makeKeyAndVisible
{
  if ([(UIView *)self isHidden])
  {
    [(UIWindow *)self _orderFrontWithoutMakingKey];
  }

  else
  {
    [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:0];
  }

  v3 = +[_UIKeyWindowEvaluator sharedEvaluator];
  applicationKeyWindow = [(_UIKeyWindowEvaluator *)v3 applicationKeyWindow];

  if (applicationKeyWindow != self)
  {

    [(UIWindow *)self makeKeyWindow];
  }
}

- (_UIContextBinder)_contextBinder
{
  WeakRetained = objc_loadWeakRetained(&self->_contextBinder);

  return WeakRetained;
}

- ($706CF31DF3EBD1610FB422704D6694BE)_bindingDescription
{
  screen = [(UIWindow *)self screen];
  retstr->var0 = [screen displayIdentity];
  retstr->var1 = 0;
  retstr->var2 = [(UIWindow *)self _ignoresHitTest];
  retstr->var3 = [(UIWindow *)self _shouldCreateContextAsSecure];
  retstr->var4 = [(UIWindow *)self _shouldUseRemoteContext];
  retstr->var5 = [(UIWindow *)self _alwaysGetsContexts];
  retstr->var6 = [(UIWindow *)self _isWindowServerHostingManaged];
  retstr->var7 = [(UIWindow *)self keepContextInBackground];
  retstr->var8 = [(UIWindow *)self _isHostingPortalViews];
  retstr->var9 = [(UIWindow *)self _allowsOcclusionDetectionOverride];
  retstr->var10 = [(UIWindow *)self _wantsSuperlayerSecurityAnalysis];

  return result;
}

- (BOOL)_shouldUseRemoteContext
{
  result = UIApp;
  if (UIApp)
  {
    return [objc_opt_class() rendersLocally] ^ 1;
  }

  return result;
}

- (unsigned)_contextId
{
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  contextId = [WeakRetained contextId];

  return contextId;
}

- (BOOL)becomeFirstResponder
{
  rootViewController = [(UIWindow *)self rootViewController];
  becomeFirstResponder = [rootViewController becomeFirstResponder];

  if (becomeFirstResponder)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIWindow;
  return [(UIView *)&v6 becomeFirstResponder];
}

- (int64_t)_overriddenInterfaceOrientation
{
  rootViewController = [(UIWindow *)self rootViewController];
  _overrideInterfaceOrientationMechanics = [rootViewController _overrideInterfaceOrientationMechanics];

  if (_overrideInterfaceOrientationMechanics)
  {
    return _overrideInterfaceOrientationMechanics;
  }

  return [(UIWindow *)self interfaceOrientation];
}

- (BOOL)_shouldControlAutorotation
{
  _canAffectStatusBarAppearance = [(UIWindow *)self _canAffectStatusBarAppearance];
  if (_canAffectStatusBarAppearance)
  {

    LOBYTE(_canAffectStatusBarAppearance) = [(UIWindow *)self _appearsInLoupe];
  }

  return _canAffectStatusBarAppearance;
}

- (BOOL)_isApplicationKeyWindow
{
  v3 = +[_UIKeyWindowEvaluator sharedEvaluator];
  applicationKeyWindow = [(_UIKeyWindowEvaluator *)v3 applicationKeyWindow];
  LOBYTE(self) = applicationKeyWindow == self;

  return self;
}

+ (uint64_t)_checkPreCommitHandlersAfterCAFlush
{
  objc_opt_self();
  if ((byte_1EA968DCE & 1) == 0)
  {
    result = [qword_1EA968EA0 count];
    if (result)
    {
      goto LABEL_7;
    }

    if ((byte_1EA968DCE & 1) == 0)
    {
      return result;
    }
  }

  result = [MEMORY[0x1E6979518] currentState];
  if ((result & 3) == 0)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    [qword_1EA968EA0 count];
    [MEMORY[0x1E6979518] currentState];
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    _os_crash();
    __break(1u);
  }

  return result;
}

void __39__UIWindow__noteOverlayInsetsDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [UIApp delegate];
    v3 = objc_opt_respondsToSelector();

    if ((v3 & 1) == 0 || ([UIApp delegate], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
    {
      v5 = +[UIWindow _applicationKeyWindow];
    }

    if (v5 == WeakRetained)
    {
      v6 = [WeakRetained _windowHostingScene];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __39__UIWindow__noteOverlayInsetsDidChange__block_invoke_2;
      v7[3] = &unk_1E70F44D8;
      v7[4] = WeakRetained;
      [v6 _updateUIClientSettingsWithBlock:v7];
    }
  }
}

void __39__UIWindow__noteOverlayInsetsDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _overlayInsets];
  [v4 setPrimaryWindowOverlayInsets:?];

  *(*(a1 + 32) + 432) = 0;
}

- (UIEdgeInsets)_overlayInsets
{
  rootViewController = self->_rootViewController;
  if (rootViewController)
  {
    _existingView = [(UIViewController *)rootViewController _existingView];
    window = [_existingView window];

    v6 = self->_rootViewController;
    v7 = 0uLL;
    if (window == self)
    {
      if (v6)
      {
        [(UIViewController *)v6 _cumulativeOverlayInsetsInView:self];
        v23 = 0uLL;
        v24 = 0uLL;
        v7 = 0uLL;
        v25 = 0uLL;
        v6 = self->_rootViewController;
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
      }

      v26 = v7;
    }

    else
    {
      v25 = 0uLL;
      v26 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
    }

    v10 = v6;
    presentedViewController = [(UIViewController *)v10 presentedViewController];

    if (presentedViewController)
    {
      do
      {
        v12 = v10;
        v10 = [(UIViewController *)v10 presentedViewController:*&v23];

        v13 = [(UIViewController *)v10 _existingPresentationControllerImmediate:0 effective:1];
        presentationStyle = [v13 presentationStyle];
        if (presentationStyle <= 5 && ((1 << presentationStyle) & 0x23) != 0)
        {
          v16 = 0uLL;
          if (v10)
          {
            [(UIViewController *)v10 _cumulativeOverlayInsetsInView:self];
            v18 = 0u;
            v17 = 0u;
            v16 = 0u;
            v19 = 0u;
          }

          else
          {
            v19 = 0uLL;
            v18 = 0uLL;
            v17 = 0uLL;
          }

          v23 = vmaxnmq_f64(v23, v17);
          v24 = vmaxnmq_f64(v24, v18);
          v25 = vaddq_f64(v25, v19);
          v26 = vaddq_f64(v26, v16);
        }

        presentedViewController2 = [(UIViewController *)v10 presentedViewController];
      }

      while (presentedViewController2);
    }

    v9 = vmaxnmq_f64(vaddq_f64(v25, v23), 0);
    v8 = vmaxnmq_f64(vaddq_f64(v26, v24), 0);
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v21 = v8.f64[1];
  v22 = v9.f64[1];
  result.bottom = v9.f64[0];
  result.top = v8.f64[0];
  result.right = v22;
  result.left = v21;
  return result;
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__UIWindow_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_once != -1)
  {
    dispatch_once(&initialize_once, block);
  }
}

void __22__UIWindow_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_adjustForAccessibilityIfNeeded_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_adjustForAccessibilityIfNeeded_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_adjustForAccessibilityIfNeeded_ name:@"UIAccessibilitySingleSystemColorChangedNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_adjustForAccessibilityIfNeeded_ name:@"UIAccessibilityInvertColorsChanged" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_adjustFocusForAccessibilityIfNeeded_ name:@"UIAccessibilityFullKeyboardAccessStatusDidChangeNotification" object:0];
}

- (id)nextResponder
{
  if (self->_windowHostingScene)
  {
    return self->_windowHostingScene;
  }

  else
  {
    return UIApp;
  }
}

+ (void)_executeDeferredOrientationUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v5 + 1) + 8 * v4++) _executeDeferredOrientationUpdate];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }
}

- (BOOL)_hasContext
{
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)_setNeedsBoundingPathUpdate
{
  if (![(UIWindow *)self _isHostedInAnotherProcess])
  {
    *&self->_windowFlags |= 0x200000000uLL;
  }
}

- (id)_fbsScene
{
  if (self)
  {
    self = [self[103] _FBSScene];
    v1 = vars8;
  }

  return self;
}

- (void)_cleanupOrientationTransactionIfNecessary
{
  if ((*(&self->_windowFlags + 4) & 0x80) != 0)
  {
    _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];
    state = [_orientationTransactionToken state];

    if (state == 2)
    {
      *&self->_windowFlags &= ~0x8000000000uLL;
      _orientationTransactionToken2 = [(UIWindow *)self _orientationTransactionToken];
      [_orientationTransactionToken2 didCommitOrientation];

      [(UIWindow *)self _setOrientationTransactionToken:0];
      *&self->_windowFlags |= 0x400000000uLL;
      windowScene = [(UIWindow *)self windowScene];
      statusBarManager = [windowScene statusBarManager];
      [statusBarManager updateStatusBarAppearance];

      *&self->_windowFlags &= ~0x400000000uLL;
      viewOrientation = self->_viewOrientation;

      [(UIWindow *)self _notifyRotatableViewOrientation:viewOrientation duration:0.0];
    }
  }
}

- (void)_invalidateDeferredOrientationUpdate
{
  if (result)
  {
    v1 = result;
    _deferredOrientationUpdate = [result _deferredOrientationUpdate];
    [(_UIWindowOrientationUpdate *)_deferredOrientationUpdate invalidateFences];

    [(UIWindow *)v1 _cancelEnqueuedDeferredOrientationUpdateIfNeeded];

    return [v1 _setDeferredOrientationUpdate:0];
  }

  return result;
}

- (uint64_t)_cancelEnqueuedDeferredOrientationUpdateIfNeeded
{
  if (result)
  {
    v1 = result;
    if ((*(result + 580) & 0x20) != 0)
    {
      result = [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:result selector:sel__executeDeferredOrientationUpdate object:0];
      *(v1 + 576) &= ~0x2000000000uLL;
    }
  }

  return result;
}

- (void)_retryHandleStatusBarChangeIfNecessary
{
  v3 = __UIStatusBarManagerForWindow(self);
  [v3 statusBarHeight];
  v5 = v4;

  if (v5 != self->_lastPropagatedStatusBarHeight)
  {

    [UIWindow handleStatusBarChangeFromHeight:"handleStatusBarChangeFromHeight:toHeight:" toHeight:?];
  }
}

- (void)_updateIsSceneSizedFlag
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  [(UIWindow *)self _sceneBoundsInWindowOrientation];
  v9 = v8 == v6 && v7 == v4;
  v10 = 0x40000000;
  if (!v9)
  {
    v10 = 0;
  }

  self->_windowFlags = (v10 | *&self->_windowFlags & 0xFFFFFFFFBFFFFFFFLL);
}

- (void)_updateTransformLayer
{
  _screen = [(_UISceneUIWindowHosting *)self->_windowHostingScene _screen];
  rootLayer = self->_rootLayer;
  v19 = _screen;
  if (rootLayer)
  {
    if (_screen)
    {
      [(CALayer *)rootLayer rasterizationScale];
      v6 = v5;
      [v19 scale];
      if (v6 != v7)
      {
        v8 = self->_rootLayer;
        [v19 scale];
        [(CALayer *)v8 setRasterizationScale:?];
      }
    }
  }

  else
  {
    v9 = objc_alloc_init(UIWindowLayer);
    v10 = self->_rootLayer;
    self->_rootLayer = &v9->super;

    v11 = +[_UIWindowTransformLayer layer];
    sceneTransformLayer = self->_sceneTransformLayer;
    self->_sceneTransformLayer = v11;

    v13 = +[_UIWindowTransformLayer layer];
    transformLayer = self->_transformLayer;
    self->_transformLayer = v13;

    self->_rootLayer[1].super.isa = self;
    self->_sceneTransformLayer[1].super.isa = self;
    self->_transformLayer[1].super.isa = self;
    if (v19)
    {
      v15 = self->_rootLayer;
      [v19 scale];
      [(CALayer *)v15 setRasterizationScale:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_layerContext);
    [WeakRetained setLayer:self->_rootLayer];

    [(CALayer *)self->_rootLayer addSublayer:self->_sceneTransformLayer];
    [(CALayer *)self->_sceneTransformLayer addSublayer:self->_transformLayer];
    v17 = self->_transformLayer;
    layer = [(UIView *)self layer];
    [(CALayer *)v17 addSublayer:layer];
  }

  [(UIWindow *)self _configureRootLayer:self->_rootLayer sceneTransformLayer:self->_sceneTransformLayer transformLayer:self->_transformLayer];
}

- (BOOL)_windowOwnsInterfaceOrientationTransform
{
  if (-[UIWindow _windowOwnsInterfaceOrientation](self, "_windowOwnsInterfaceOrientation") || (-[UIWindow _orientationTransactionToken](self, "_orientationTransactionToken"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 state], v3, (v4 - 1) < 2))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    windowHostingScene = self->_windowHostingScene;
    if (windowHostingScene && [(_UISceneUIWindowHosting *)windowHostingScene _canDynamicallySpecifySupportedInterfaceOrientations])
    {
      v8 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:self->_windowHostingScene];
      v9 = v8;
      if (v8)
      {
        v10 = v8 == self;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [(UIWindow *)self isEqual:v8]^ 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_sceneBoundsDidChange
{
  if ([objc_opt_class() _transformLayerRotationsAreEnabled])
  {
    [(UIWindow *)self _setNeedsBoundingPathUpdate];
    [(UIWindow *)self _updateTransformLayer];
    if (![(UIWindow *)self _resizeWindowFrameToSceneBoundsIfNecessary])
    {
      [(UIWindow *)self _updateIsSceneSizedFlag];
    }

    _fbsScene = [(UIWindow *)&self->super.super.super.isa _fbsScene];
    v18 = 0;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = 64;
    v19 = _fbsScene;
    v20 = 0;
    [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
    [(UIWindow *)self _cleanupOrientationTransactionIfNecessary];
    [(UIWindow *)self _retryHandleStatusBarChangeIfNecessary];
  }
}

- (void)_createSystemGestureGateGestureRecognizerIfNeeded
{
  if (!self->_systemGestureGateForGestures)
  {
    v3 = [[_UISystemGestureGateGestureRecognizer alloc] initWithWindow:self type:1];
    systemGestureGateForGestures = self->_systemGestureGateForGestures;
    self->_systemGestureGateForGestures = v3;

    v5 = [[_UISystemGestureGateGestureRecognizer alloc] initWithWindow:self type:0];
    systemGestureGateForTouches = self->_systemGestureGateForTouches;
    self->_systemGestureGateForTouches = v5;

    [(UIView *)self addGestureRecognizer:self->_systemGestureGateForGestures];
    v7 = self->_systemGestureGateForTouches;

    [(UIView *)self addGestureRecognizer:v7];
  }
}

- (void)_createOtherSystemGateGestureRecognizersIfNeeded
{
  if (+[_UIHomeAffordanceGateGestureRecognizer isAvailable]&& !self->_systemGestureGateForHomeAffordance && ![(UIWindow *)self _isSystemGestureWindow])
  {
    v3 = objc_opt_new();
    systemGestureGateForHomeAffordance = self->_systemGestureGateForHomeAffordance;
    self->_systemGestureGateForHomeAffordance = v3;

    [(UIView *)self addGestureRecognizer:self->_systemGestureGateForHomeAffordance];
  }

  if (_UIApplicationSupportsGlobalEdgeSwipeTouches() && !self->_systemGateForGESTouches)
  {
    v5 = [[_UIGESGateGestureRecognizer alloc] initWithTarget:0 action:0];
    systemGateForGESTouches = self->_systemGateForGESTouches;
    self->_systemGateForGESTouches = v5;

    [(UIView *)self addGestureRecognizer:self->_systemGateForGESTouches];
    v7 = UIApp;

    [v7 _setApplicationWantsGESEvents:1];
  }
}

- (void)_createKeyboardDismissalGestureRecognizer
{
  v4 = objc_opt_new();
  [v4 attachToObjectLifecycle:self];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__keyboardDismissalGestureRecognized_];
  [(UIGestureRecognizer *)v3 setDelegate:v4];
  [(UIGestureRecognizer *)v3 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  [(UITapGestureRecognizer *)v3 setAllowedPressTypes:&unk_1EFE2D3C0];
  [(UIView *)self addGestureRecognizer:v3];
}

- (void)_configurePassthroughInteractionIfNeeded
{
  if (!self)
  {
    return;
  }

  if (([objc_opt_class() _needsPassthroughInteraction] & 1) == 0)
  {
    if (!self[90])
    {
      return;
    }

LABEL_14:
    [self removeInteraction:?];
    v7 = self[90];
    self[90] = 0;

    return;
  }

  windowScene = [self windowScene];
  _supportsPassthroughInteractions = [windowScene _supportsPassthroughInteractions];

  v4 = self[90];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _supportsPassthroughInteractions == 0;
  }

  if (!v5)
  {
    v8 = objc_alloc_init(_UIPassthroughScrollInteraction);
    v9 = self[90];
    self[90] = v8;

    [self[90] setDelegate:self];
    [self[90] setConfiguredForInactiveInteractionEventsOnly:1];
    v10 = self[90];

    [self addInteraction:v10];
    return;
  }

  if (v4)
  {
    v6 = _supportsPassthroughInteractions;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }
}

- (int64_t)_initialGuessInterfaceOrientation
{
  if ([UIApp _frontMostAppInterfaceOrientationIsSignificant])
  {
    v3 = UIApp;

    return [v3 _carefulChoiceOrientationForWindow:self];
  }

  else
  {
    windowHostingScene = self->_windowHostingScene;

    return [(_UISceneUIWindowHosting *)windowHostingScene _interfaceOrientation];
  }
}

- (void)_didCreateRootPresentationController
{
  _rootPresentationController = [(UIWindow *)self _rootPresentationController];
  [_rootPresentationController _setWantsFullScreen:1];
}

- (id)_bindingLayer
{
  rootLayer = self->_rootLayer;
  if (!rootLayer)
  {
    rootLayer = self->_sceneTransformLayer;
    if (!rootLayer)
    {
      rootLayer = self->_transformLayer;
    }
  }

  return rootLayer;
}

- (id)_boundingPath
{
  if (self && (*(&self->super._viewFlags + 1) & 8) != 0)
  {
    _boundingPath = 0;
  }

  else
  {
    [(UIView *)self transform3D];
    v3 = CATransform3DIsIdentity(&v11);
    v10.receiver = self;
    v10.super_class = UIWindow;
    _boundingPath = [(UIView *)&v10 _boundingPath];
    if (!_boundingPath || (*(&self->_windowFlags + 4) & 2) != 0 || !v3)
    {
      if (v3)
      {
        screen = [(UIWindow *)self screen];
        _boundingPathUtilities = [screen _boundingPathUtilities];
        v7 = [_boundingPathUtilities boundingPathForWindow:self];

        *&self->_windowFlags &= ~0x200000000uLL;
        _boundingPath = screen;
      }

      else
      {
        v8 = [_UIRectangularBoundingPath alloc];
        [(UIView *)self bounds];
        v7 = [(_UIRectangularBoundingPath *)v8 initWithCoordinateSpace:self boundingRect:?];
      }

      [(UIView *)self _setBoundingPath:v7];
      _boundingPath = v7;
    }
  }

  return _boundingPath;
}

- (BOOL)isInterfaceAutorotationDisabled
{
  _systemShellOwnsInterfaceOrientation = [(UIScene *)self->_windowHostingScene _systemShellOwnsInterfaceOrientation];
  v4 = *&self->_windowFlags & 0xF000;
  if (_systemShellOwnsInterfaceOrientation)
  {
    LOBYTE(v5) = v4 != 0;
  }

  else if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [(_UISceneUIWindowHosting *)self->_windowHostingScene _referenceBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    screen = [(UIWindow *)self screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v22.origin.x = v16;
    v22.origin.y = v17;
    v22.size.width = v18;
    v22.size.height = v19;
    v21.origin.x = v7;
    v21.origin.y = v9;
    v21.size.width = v11;
    v21.size.height = v13;
    v5 = !CGRectEqualToRect(v21, v22);
  }

  return v5;
}

- (int64_t)_preferredInterfaceOrientationForRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    _viewControllerForSupportedInterfaceOrientations = [WeakRetained _viewControllerForSupportedInterfaceOrientations];
    presentedViewController = [_viewControllerForSupportedInterfaceOrientations presentedViewController];
    isBeingDismissed = [presentedViewController isBeingDismissed];

    if (isBeingDismissed)
    {
      presentedViewController2 = [_viewControllerForSupportedInterfaceOrientations presentedViewController];
      modalPresentationStyle = [presentedViewController2 modalPresentationStyle];

      if (modalPresentationStyle)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (([_viewControllerForSupportedInterfaceOrientations isBeingPresented] & 1) == 0)
      {
        presentingViewController = [_viewControllerForSupportedInterfaceOrientations presentingViewController];

        if (!presentingViewController)
        {

          goto LABEL_12;
        }
      }

      modalPresentationStyle2 = [_viewControllerForSupportedInterfaceOrientations modalPresentationStyle];

      if (modalPresentationStyle2)
      {
        goto LABEL_11;
      }
    }

    if ([_viewControllerForSupportedInterfaceOrientations _hasPreferredInterfaceOrientationForPresentation])
    {
      presentingViewController = [_viewControllerForSupportedInterfaceOrientations preferredInterfaceOrientationForPresentation];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    presentingViewController = 0;
    goto LABEL_12;
  }

  presentingViewController = 0;
LABEL_13:

  return presentingViewController;
}

- (BOOL)_guardSizeTransitionFromAnimations
{
  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  LOBYTE(v3) = 0;
  if (([UIApp _isSpringBoard] & 1) == 0 && _FBSScene)
  {
    v3 = [_FBSScene uiCanReceiveDeviceOrientationEvents] ^ 1;
  }

  return v3;
}

- (void)_removeFocusEventRecognizer
{
  [(_UIFocusEventRecognizer *)self->_focusEventRecognizer reset];
  focusEventRecognizer = self->_focusEventRecognizer;
  self->_focusEventRecognizer = 0;
}

- (void)_sceneSettingsSafeAreaInsetsDidChange
{
  [(UIWindow *)self _normalizedSafeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = _UIFloatingBarEnabled();
  [(UIView *)self _setSafeAreaInsets:v11 updateSubviewsDuringNextLayoutPass:v4, v6, v8, v10];
  [(UIView *)self _recursiveEagerlyUpdateSafeAreaInsetsUntilViewController];
  rootViewController = [(UIWindow *)self rootViewController];
  [rootViewController _sceneSettingsSafeAreaInsetsDidChangeForWindow:self];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIWindow;
  [(UIView *)&v5 layoutSubviews];
  windowScene = [(UIWindow *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  if (([statusBarManager isStatusBarHidden] & 1) == 0)
  {
    [(UIWindow *)self safeAreaInsets];
  }

  [(UIView *)self bounds];
  [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setRect:0.0, 0.0];
}

- (id)_rotationViewControllers
{
  v3 = MEMORY[0x1E695DF70];
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  v5 = [v3 arrayWithObjects:{WeakRetained, 0}];

  if ([(NSMutableArray *)self->_rotationViewControllers count])
  {
    v6 = [v5 arrayByAddingObjectsFromArray:self->_rotationViewControllers];

    v5 = v6;
  }

  return v5;
}

- (void)_tintColorDidChange
{
  if ((*(&self->_windowFlags + 4) & 0x40) == 0)
  {
    [(UIWindow *)self _updateWindowTraits];
  }

  v3.receiver = self;
  v3.super_class = UIWindow;
  [(UIView *)&v3 _tintColorDidChange];
}

- (id)_remoteContentParent
{
  _windowHostingScene = [(UIWindow *)self _windowHostingScene];
  _childRemoteContentRegistry = [_windowHostingScene _childRemoteContentRegistry];

  if (_childRemoteContentRegistry)
  {
    v5 = _windowHostingScene;
LABEL_5:
    _settingsScene = v5;
    _remoteContentParent = v5;
    goto LABEL_6;
  }

  _windowHostingScene2 = [(UIWindow *)self _windowHostingScene];
  _settingsScene = [_windowHostingScene2 _settingsScene];

  _childRemoteContentRegistry2 = [_settingsScene _childRemoteContentRegistry];

  if (_childRemoteContentRegistry2)
  {
    v5 = _settingsScene;
    goto LABEL_5;
  }

  windowScene = [(UIWindow *)self windowScene];
  _keyWindow = [(UIWindowScene *)windowScene _keyWindow];

  if (!_keyWindow || _keyWindow == self || ![(UIWindow *)_keyWindow _isHostedInAnotherProcess])
  {
    if ([(UIWindow *)self _isRemoteKeyboardWindow]&& +[_UIRemoteKeyboards wantsUnassociatedWindowSceneForKeyboardWindow])
    {
      v13 = +[UIWindow _applicationKeyWindow];
      v14 = v13;
      if (v13 != self)
      {
        _remoteContentParent = [(UIWindow *)v13 _remoteContentParent];

        goto LABEL_19;
      }
    }

    _remoteContentParent = 0;
    goto LABEL_19;
  }

  _remoteContentParent = [(UIWindow *)_keyWindow _remoteContentParent];
LABEL_19:

LABEL_6:

  return _remoteContentParent;
}

- (id)parentFocusEnvironment
{
  windowScene = [(UIWindow *)self windowScene];
  _focusSystemSceneComponent = [windowScene _focusSystemSceneComponent];
  focusSystem = [_focusSystemSceneComponent focusSystem];

  return focusSystem;
}

- (id)_layoutEngineCreateIfNecessary
{
  result = [(UIView *)self _layoutEngine];
  if (!result)
  {
    [(UIWindow *)self _initializeLayoutEngine];

    return [(UIView *)self _layoutEngine];
  }

  return result;
}

- (void)_invalidateWindowInternalConstraints
{
  _windowInternalConstraints = [(UIWindow *)self _windowInternalConstraints];
  if (_windowInternalConstraints)
  {
    [(UIView *)self removeConstraints:_windowInternalConstraints];
    [(UIWindow *)self _setWindowInternalConstraints:0];

    [(UIView *)self _setNeedsUpdateConstraints];
  }
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    v5 = self->_undoManager;
    self->_undoManager = v4;

    undoManager = self->_undoManager;
  }

  return undoManager;
}

- (void)_executeDeferredOrientationUpdate
{
  [(UIWindow *)self _cancelEnqueuedDeferredOrientationUpdateIfNeeded];
  _deferredOrientationUpdate = [(UIWindow *)self _deferredOrientationUpdate];
  v4 = _deferredOrientationUpdate;
  if (_deferredOrientationUpdate)
  {
    v5 = _deferredOrientationUpdate[4];
    if (v5)
    {
      v6 = _deferredOrientationUpdate[3];
      if (v6)
      {
        v7 = MEMORY[0x1E698E608];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __45__UIWindow__executeDeferredOrientationUpdate__block_invoke;
        v11[3] = &unk_1E70F5AC0;
        v12 = _deferredOrientationUpdate;
        [v7 tryAnimatingWithSettings:v6 actions:v11 completion:0];
      }

      else
      {
        v8 = _deferredOrientationUpdate[2];
        v9 = UIApp;
        v10 = v5;
        v5[2](v10, v8, [v9 _expectedViewOrientation]);
      }

      [(UIWindow *)self _setDeferredOrientationUpdate:0];
    }
  }
}

- (void)_traitOverridesDidChange
{
  if ((*(&self->super._viewFlags + 24) & 2) == 0)
  {
    [(UIWindow *)self _updateWindowTraits];
  }
}

- (id)_appearanceContainer
{
  screen = [(UIWindow *)self screen];
  [screen _userInterfaceIdiom];
  v3 = _UIAppearanceContainerForUserInterfaceIdiom();

  v4 = objc_alloc_init(v3);

  return v4;
}

- (double)_rotationDuration
{
  if (dyld_program_sdk_at_least())
  {
    v3 = [UIApp _hasApplicationCalledLaunchDelegate] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    v4 = [(_UISceneUIWindowHosting *)self->_windowHostingScene activationState]> 1;
  }

  else
  {
    v4 = 0;
  }

  if ((v3 | v4))
  {
    return 0.0;
  }

  v6 = UIApp;

  [v6 windowRotationDuration];
  return result;
}

- (BOOL)_shouldAdjustSizeClassesAndResizeWindow
{
  rootViewController = [(UIWindow *)self rootViewController];
  isViewLoaded = [rootViewController isViewLoaded];

  return isViewLoaded;
}

- (UIWindow)init
{
  if (dyld_program_sdk_at_least())
  {
    v3 = -[UIWindow _initWithOrientation:](self, "_initWithOrientation:", [UIApp _carefulChoiceOrientation]);
    v4 = v3;
    if (v3)
    {
      *&v3->_windowFlags &= ~0x20uLL;
      *(&v3->super._viewFlags + 3) &= ~0x100uLL;
      v5 = +[UIColor _windowBackgroundColor];
      [(UIView *)v4 setBackgroundColor:v5];

      [(UIWindow *)v4 setResizesToFullScreen:1];
      [(UIWindow *)v4 _resizeWindowToFullScreenIfNecessary];
      *&v4->_windowFlags |= 0x20uLL;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIWindow;
    v4 = [(UIView *)&v8 init];
  }

  v6 = v4;

  return v6;
}

- (id)_keyboardSceneSettings
{
  v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  if ([v3 snapshotting])
  {
    windowScene = [(UIWindow *)self windowScene];
    [windowScene _effectiveSettings];
  }

  else
  {
    windowScene = [(UIWindow *)&self->super.super.super.isa _fbsScene];
    [windowScene settings];
  }
  v5 = ;

  return v5;
}

- (void)_adjustFramePositionIfNecessary
{
  windowScene = [(UIWindow *)self windowScene];
  v26 = windowScene;
  if (!windowScene)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:1491 description:@"Expected non-nil windowScene"];

    windowScene = 0;
  }

  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarHeight];
  v7 = v6;

  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  screen = [v26 screen];
  [screen bounds];
  v19 = v18 - v7;
  if (v9 >= 0.0)
  {
    v20 = v9;
  }

  else
  {
    v20 = 0.0;
  }

  if (v11 >= v7)
  {
    v21 = v11;
  }

  else
  {
    v21 = v7;
  }

  v22 = v17 + 0.0 - v13;
  if (v13 + v20 <= v17)
  {
    v22 = v20;
  }

  v23 = v7 + v19;
  if (v15 + v21 <= v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23 - v15;
  }

  [(UIWindow *)self setFrame:v22, v24, v13, v15];
}

- (UIKeyboardLayoutGuide)_primaryKeyboardTrackingGuide
{
  v31[4] = *MEMORY[0x1E69E9840];
  primaryKeyboardTrackingGuide = self->_primaryKeyboardTrackingGuide;
  if (!primaryKeyboardTrackingGuide)
  {
    v4 = objc_alloc_init(UIKeyboardLayoutGuide);
    v5 = self->_primaryKeyboardTrackingGuide;
    self->_primaryKeyboardTrackingGuide = v4;

    [(UIView *)self addLayoutGuide:self->_primaryKeyboardTrackingGuide];
    [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _setAllowsNegativeDimensions:1];
    [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide setIdentifier:@"UIWindow_KeyboardLayoutGuide"];
    [(UIKeyboardLayoutGuide *)self->_primaryKeyboardTrackingGuide setWindowGuide:1];
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v6 addWindowForTracking:self];

    primaryKeyboardTrackingGuide = self->_primaryKeyboardTrackingGuide;
  }

  _systemConstraints = [(UILayoutGuide *)primaryKeyboardTrackingGuide _systemConstraints];
  v8 = [_systemConstraints count];

  if (v8 <= 3)
  {
    v9 = self->_primaryKeyboardTrackingGuide;
    selfCopy = self;
    widthAnchor = [(UILayoutGuide *)v9 widthAnchor];
    [(UIView *)selfCopy bounds];
    v13 = [widthAnchor constraintEqualToConstant:v12];

    [v13 setIdentifier:@"UIKeyboardLayoutGuide-width"];
    leftAnchor = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide leftAnchor];
    leftAnchor2 = [(UIView *)selfCopy leftAnchor];
    v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

    [v16 setIdentifier:@"UIKeyboardLayoutGuide-leftOffset"];
    bottomAnchor = [(UIView *)selfCopy bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [v19 setIdentifier:@"UIKeyboardLayoutGuide-bottomOffset"];
    heightAnchor = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide heightAnchor];
    [(UIWindow *)selfCopy insetForDismissedKeyboardGuide];
    v21 = [heightAnchor constraintEqualToConstant:?];

    [v21 setIdentifier:@"UIKeyboardLayoutGuide-height"];
    v22 = self->_primaryKeyboardTrackingGuide;

    v31[0] = v13;
    v31[1] = v16;
    v31[2] = v19;
    v31[3] = v21;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [(UILayoutGuide *)v22 _setSystemConstraints:v23];
  }

  _systemConstraints2 = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _systemConstraints];
  firstObject = [_systemConstraints2 firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v27 = MEMORY[0x1E69977A0];
    _systemConstraints3 = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _systemConstraints];
    [v27 activateConstraints:_systemConstraints3];
  }

  v29 = self->_primaryKeyboardTrackingGuide;

  return v29;
}

- (double)insetForDismissedKeyboardGuide
{
  v3 = 0.0;
  if ([(UIWindow *)self isTrackingKeyboard]&& ![(UIKeyboardLayoutGuide *)self->_primaryKeyboardTrackingGuide ignoresSafeArea])
  {
    [(UIWindow *)self safeAreaInsets];
    return v4;
  }

  return v3;
}

- (BOOL)inhibitSetupOrientation
{
  rootViewController = [(UIWindow *)self rootViewController];
  shouldAutorotate = [rootViewController shouldAutorotate];

  return shouldAutorotate;
}

- (BOOL)inhibitTextEffectsRotation
{
  if ([(UIWindow *)self inhibitSetupOrientation])
  {
    return 1;
  }

  return [(UIWindow *)self inhibitManualTransform];
}

- (BOOL)isKeyWindow
{
  if (qword_1EA968DD8[0] != -1)
  {
    dispatch_once(qword_1EA968DD8, &__block_literal_global_488);
  }

  if (_MergedGlobals_172 == 1)
  {
    windowScene = [(UIWindow *)self windowScene];
    _keyWindow = [(UIWindowScene *)windowScene _keyWindow];
    v5 = _keyWindow == self;

    return v5;
  }

  else
  {

    return [(UIWindow *)self _isApplicationKeyWindow];
  }
}

- (BOOL)_definesDynamicTintColor
{
  _interactionTintColor = [(UIView *)self _interactionTintColor];

  if (_interactionTintColor)
  {
    v7.receiver = self;
    v7.super_class = UIWindow;
    return [(UIView *)&v7 _definesDynamicTintColor];
  }

  else
  {
    v5 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [-[UIWindow _screen](self "_screen")]);
    _isDynamic = [v5 _isDynamic];

    return _isDynamic;
  }
}

- (void)_updateSystemConstraints
{
  [(UIWindow *)self _updateWindowEngineHostConstraintsWithSizing:(*&self->super._viewFlags & 0x10000000000000) == 0];
  [(UIWindow *)self _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];
  v3.receiver = self;
  v3.super_class = UIWindow;
  [(UIView *)&v3 _updateSystemConstraints];
}

- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_rootViewConstraints;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * i) setConstant:{0.0, v22}];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v8 = [UIApp _statusBarOrientationForWindow:self];
  v9 = __UIStatusBarManagerForWindow(self);
  [v9 defaultStatusBarHeightInOrientation:v8];
  v11 = v10;

  v12 = __UIStatusBarManagerForWindow(self);
  [v12 defaultStatusBarHeightInOrientation:1];
  v14 = v13;

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      rootViewConstraints = self->_rootViewConstraints;
      v16 = 3;
LABEL_18:
      v19 = [(NSArray *)rootViewConstraints objectAtIndex:v16, v22];
      v20 = v19;
      v21 = v14 - v11;
      goto LABEL_19;
    }

    if (v8 != 4)
    {
      return;
    }

    v17 = self->_rootViewConstraints;
    v18 = 1;
  }

  else
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        return;
      }

      rootViewConstraints = self->_rootViewConstraints;
      v16 = 2;
      goto LABEL_18;
    }

    v17 = self->_rootViewConstraints;
    v18 = 0;
  }

  v19 = [(NSArray *)v17 objectAtIndex:v18, v22];
  v20 = v19;
  v21 = v11 - v14;
LABEL_19:
  if (v11 == 0.0)
  {
    v21 = 0.0;
  }

  [v19 setConstant:v21];
}

- (void)_restoreFirstResponder
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_lastFirstResponder);

  if (WeakRetained)
  {
    firstResponder = [(UIWindow *)self firstResponder];
    v5 = objc_loadWeakRetained(&self->_lastNextResponder);

    if (firstResponder == v5)
    {
      v10 = objc_loadWeakRetained(&self->_lastFirstResponder);
      [UIResponder _callBecomeFirstResponder:v10 withIntent:2];

      v11 = objc_loadWeakRetained(&self->_lastFirstResponder);
      LOBYTE(v10) = objc_opt_respondsToSelector();

      if (v10)
      {
        v12 = objc_loadWeakRetained(&self->_lastFirstResponder);
        [v12 setInteractionState:self->_lastFirstResponderInteractionState];
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("FirstResponderRestoration", &qword_1EA968EC8);
      if (*CategoryCachedImpl)
      {
        v15 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v17 = objc_loadWeakRetained(&self->_lastFirstResponder);
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Restoring the previous firstResponder: %@", &v18, 0xCu);
        }
      }
    }

    else
    {
      v6 = __UILogGetCategoryCachedImpl("FirstResponderRestoration", &qword_1EA968ED0);
      if (*v6)
      {
        v7 = *(v6 + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v18) = 0;
          v8 = "Not restoring the previous firstResponder since the _lastNextResponder and current firstResponder differ";
LABEL_9:
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, v8, &v18, 2u);
        }
      }
    }
  }

  else
  {
    v9 = __UILogGetCategoryCachedImpl("FirstResponderRestoration", &qword_1EA968ED8);
    if (*v9)
    {
      v7 = *(v9 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        v8 = "Can't restore firstResponder since _lastFirstResponder is nil";
        goto LABEL_9;
      }
    }
  }

  objc_storeWeak(&self->_lastFirstResponder, 0);
  lastFirstResponderInteractionState = self->_lastFirstResponderInteractionState;
  self->_lastFirstResponderInteractionState = 0;

  objc_storeWeak(&self->_lastNextResponder, 0);
}

- (void)beginDisablingInterfaceAutorotation
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(UIWindow *)self _windowCanDynamicallySpecifySupportedInterfaceOrientations])
  {
    if ((*(&self->_windowFlags + 1) & 0xF0) == 0)
    {
      windowScene = [(UIWindow *)self windowScene];
      _canDynamicallySpecifySupportedInterfaceOrientations = [windowScene _canDynamicallySpecifySupportedInterfaceOrientations];

      if (_canDynamicallySpecifySupportedInterfaceOrientations)
      {
        windowScene2 = [(UIWindow *)self windowScene];
        _interfaceOrientation = [windowScene2 _interfaceOrientation];

        windowScene3 = [(UIWindow *)self windowScene];
        _systemAppearanceManager = [windowScene3 _systemAppearanceManager];
        v9 = _systemAppearanceManager;
        if (_interfaceOrientation > 4)
        {
          v10 = 0;
        }

        else
        {
          v10 = qword_18A681438[_interfaceOrientation];
        }

        [_systemAppearanceManager window:self didUpdateSupportedOrientations:v10 preferredOrientation:0 prefersAnimation:0];
      }
    }

    if ((~*&self->_windowFlags & 0xF000) != 0)
    {
      self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFFFF0FFFLL | ((((*&self->_windowFlags + 4096) >> 12) & 0xF) << 12));
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("AutoRotation", &beginDisablingInterfaceAutorotation___s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = 136315650;
        v16 = "[UIWindow beginDisablingInterfaceAutorotation]";
        v17 = 2112;
        v18 = v14;
        v19 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s overflow on <%@: %p>. Ignoring.", &v15, 0x20u);
      }
    }
  }
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  traitCollection = [(UIWindow *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v5 = horizontalSizeClass;
  v6 = verticalSizeClass;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)_touchData
{
  touchData = self->_touchData;
  if (!touchData)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_touchData;
    self->_touchData = v4;

    touchData = self->_touchData;
  }

  return touchData;
}

- (double)_touchSloppinessFactor
{
  screen = [(UIWindow *)self screen];
  v3 = 1.0;
  if ([screen _userInterfaceIdiom] == 3)
  {
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIExternalTouchSloppinessFactor, @"UIExternalTouchSloppinessFactor", _UIInternalPreferenceUpdateDouble))
    {
      v3 = 2.0;
    }

    else
    {
      v3 = *&qword_1EA95E628;
    }
  }

  return v3;
}

- (id)_responderForKeyEvents
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  syncsFocusAndResponder = [_focusBehavior syncsFocusAndResponder];

  if (syncsFocusAndResponder)
  {
    _focusSystem = [(UIView *)self _focusSystem];
    _preferredFirstResponder = [_focusSystem _preferredFirstResponder];

    _responderWindow = [_preferredFirstResponder _responderWindow];

    if (_responderWindow == self)
    {
      if (_preferredFirstResponder)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if (_AXSFullKeyboardAccessEnabled())
  {
    if (!_AXSFullKeyboardAccessPassthroughModeEnabled())
    {
      selfCopy = [(UIWindow *)self _focusResponder];
      if (selfCopy)
      {
        goto LABEL_10;
      }
    }
  }

  firstResponder = [(UIWindow *)self firstResponder];
  _preferredFirstResponder = [firstResponder _responderForEditing];

  if (!_preferredFirstResponder)
  {
    _deepestActionResponder = [(UIWindow *)self _deepestActionResponder];
    _preferredFirstResponder = [_deepestActionResponder _responderForEditing];

    if (!_preferredFirstResponder)
    {
      selfCopy = self;
LABEL_10:
      _preferredFirstResponder = selfCopy;
    }
  }

LABEL_12:

  return _preferredFirstResponder;
}

- (id)_deepestActionResponder
{
  rootViewController = [(UIWindow *)self rootViewController];
  if ([rootViewController _hasDeepestActionResponder])
  {
    rootViewController2 = [(UIWindow *)self rootViewController];
    _deepestActionResponder = [rootViewController2 _deepestActionResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIWindow;
    _deepestActionResponder = [(UIResponder *)&v7 _deepestActionResponder];
  }

  return _deepestActionResponder;
}

- (unint64_t)_edgesForSystemGesturesTouchDelay
{
  screen = [(UIWindow *)self screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  if (!_isEmbeddedScreen)
  {
    return 0;
  }

  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || !+[UIDevice _hasHomeButton])
  {
    v9 = 15;
  }

  else
  {
    traitCollection = [(UIWindow *)self traitCollection];
    forceTouchCapability = [traitCollection forceTouchCapability];

    if (forceTouchCapability == 2)
    {
      if ([UIApp userInterfaceLayoutDirection])
      {
        v9 = 13;
      }

      else
      {
        v9 = 7;
      }
    }

    else
    {
      v9 = 5;
    }
  }

  windowScene = [(UIWindow *)self windowScene];
  _systemAppearanceManager = [windowScene _systemAppearanceManager];

  if (_systemAppearanceManager)
  {
    v9 &= ~[_systemAppearanceManager screenEdgesDeferringSystemGestures];
  }

  return v9;
}

- (BOOL)_isTextEffectsWindowHosting
{
  _isTextEffectsWindow = [(UIWindow *)self _isTextEffectsWindow];
  if (_isTextEffectsWindow)
  {
    windowScene = [(UIWindow *)self windowScene];
    v5 = [UITextEffectsHostingInfo hostingInfoForWindowScene:windowScene];
    useHostedInstance = [v5 useHostedInstance];

    LOBYTE(_isTextEffectsWindow) = useHostedInstance;
  }

  return _isTextEffectsWindow;
}

- (void)layoutViewsForTrackedGuides
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_currentKeyboardTrackingLayoutGuides copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        owningView = [*(*(&v9 + 1) + 8 * v7) owningView];
        [owningView layoutIfNeeded];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_isTextEffectsWindowNotificationOwner
{
  _isTextEffectsWindow = [(UIWindow *)self _isTextEffectsWindow];
  if (_isTextEffectsWindow)
  {
    windowScene = [(UIWindow *)self windowScene];
    v5 = [UITextEffectsHostingInfo hostingInfoForWindowScene:windowScene];
    useHostedInstance = [v5 useHostedInstance];

    if ((useHostedInstance & 1) == 0)
    {
      if ([UIApp _isSpringBoard])
      {
        LOBYTE(_isTextEffectsWindow) = 1;
        return _isTextEffectsWindow;
      }

      if (([(UIWindow *)self isForViewService]& 1) == 0)
      {
        windowScene2 = [(UIWindow *)self windowScene];
        _isKeyWindowScene = [windowScene2 _isKeyWindowScene];

        LOBYTE(_isTextEffectsWindow) = _isKeyWindowScene;
        return _isTextEffectsWindow;
      }
    }

    LOBYTE(_isTextEffectsWindow) = 0;
  }

  return _isTextEffectsWindow;
}

- (id)_overridingPreferredFocusEnvironment
{
  _rememberedFocusedItem = [(UIWindow *)self _rememberedFocusedItem];
  if (!_rememberedFocusedItem)
  {
    v5 = 0;
    goto LABEL_13;
  }

  rootViewController = [(UIWindow *)self rootViewController];
  if (rootViewController)
  {
    if (dyld_program_sdk_at_least())
    {
      if ([rootViewController _canRestoreFocusAfterTransitionToItem:_rememberedFocusedItem])
      {
        goto LABEL_11;
      }
    }

    else if ([rootViewController restoresFocusAfterTransition])
    {
LABEL_11:
      v5 = _rememberedFocusedItem;
      goto LABEL_12;
    }
  }

  else if (_UIFocusEnvironmentIsAncestorOfEnvironment(self, _rememberedFocusedItem) && _UIFocusItemIsFocusedOrFocusable(_rememberedFocusedItem))
  {
    goto LABEL_11;
  }

  [(UIWindow *)self _setRememberedFocusedItem:0];
  v5 = 0;
LABEL_12:

LABEL_13:

  return v5;
}

- (UIFocusItem)_rememberedFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_rememberedFocusedItem);

  return WeakRetained;
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x1E69E9840];
  rootViewController = [(UIWindow *)self rootViewController];
  v4 = rootViewController;
  if (rootViewController)
  {
    v8[0] = rootViewController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v5, [(UIWindow *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v6;
}

- (int64_t)_subclassPreferredFocusedViewPrioritizationType
{
  if (!qword_1EA968EB8)
  {
    qword_1EA968EB8 = [UIWindow instanceMethodForSelector:sel_preferredFocusedView];
    qword_1EA968EC0 = [UIWindow instanceMethodForSelector:sel_preferredFocusEnvironments];
  }

  v3 = [(UIWindow *)self methodForSelector:sel_preferredFocusedView];
  v4 = [(UIWindow *)self methodForSelector:sel_preferredFocusEnvironments];
  if (v3)
  {
    v5 = v3 == qword_1EA968EB8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4)
  {
    v7 = v4 == qword_1EA968EC0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isTransparentFocusItem
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  supportsMultipleWindows = [_focusBehavior supportsMultipleWindows];

  if (supportsMultipleWindows)
  {

    return _UIViewIsTransparentFocusItem(self);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIWindow;
    return [(UIView *)&v6 isTransparentFocusItem];
  }
}

- (void)_installFocusEventRecognizer
{
  if ([(UIWindow *)self _supportsFocus]&& !self->_focusEventRecognizer && [(UIWindow *)self allowsWeakReference])
  {
    v3 = [[_UIFocusEventRecognizer alloc] initWithOwningView:self];
    [(_UIFocusEventRecognizer *)v3 setDelegate:self];
    focusEventRecognizer = self->_focusEventRecognizer;
    self->_focusEventRecognizer = v3;
  }
}

- (BOOL)_wantsFocusEngine
{
  if (![objc_opt_class() _isSystemWindow] || (v3 = -[UIWindow _isTextEffectsWindow](self, "_isTextEffectsWindow")))
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)dealloc
{
  v36[3] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  layer = [(UIView *)self layer];
  v6 = layer;
  if (layer && ([layer isHidden] & 1) == 0)
  {
    _focusSystem = [(UIView *)self _focusSystem];
    [_focusSystem _focusEnvironmentWillDisappear:self];
  }

  windowHostingScene = self->_windowHostingScene;
  if (windowHostingScene && ([(_UISceneUIWindowHosting *)windowHostingScene _hasInvalidated]& 1) == 0)
  {
    _eventDeferringManager = [(_UISceneUIWindowHosting *)self->_windowHostingScene _eventDeferringManager];
    [(_UIEventDeferringManager *)_eventDeferringManager removeEventDeferringRulesIfNeededForDeallocatingWindow:?];

    [(UIWindow *)self _prepareHierarchyForWindowHostingSceneRemoval];
  }

  [(UIView *)self _prepareDescendantsForWindowDealloc];
  *&self->_windowFlags &= ~0x200000000uLL;
  [(UIView *)&self->super.super.super.isa _layoutConstraintCleanup];
  if (dyld_program_sdk_at_least())
  {
    [(UIWindow *)self _removeAllViewControllersFromWindowHierarchyFromDealloc:1];
  }

  rootViewConstraints = self->_rootViewConstraints;
  self->_rootViewConstraints = 0;

  [(UIWindow *)self _setWindowInternalConstraints:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v36[0] = @"UIDeviceOrientationDidChangeNotification";
  v36[1] = @"UIApplicationDidChangeStatusBarOrientationNotification";
  v36[2] = @"_UIAppActiveInterfaceOrientationDidChangeNotification";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v12 names:?];

  [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:1];
  firstResponder = [(UIWindow *)self firstResponder];
  [firstResponder resignFirstResponder];

  [(UIWindow *)self _setDelegateViewController:0];
  [UIWindowController windowWillBeDeallocated:self];
  ClearSpecialViews(self, &qword_1EA968E00);
  ClearSpecialViews(self, &qword_1EA968E08);
  windowScene = [(UIWindow *)self windowScene];
  v15 = windowScene;
  if (windowScene)
  {
    v16 = *(windowScene + 376);

    if (v16 == self)
    {
      [(UIWindowScene *)v15 _keyWindowWillDeallocate:?];
    }
  }

  if (qword_1EA968DE8 == self)
  {
    qword_1EA968DE8 = 0;
  }

  touchData = self->_touchData;
  self->_touchData = 0;

  undoManager = self->_undoManager;
  self->_undoManager = 0;

  rotationViewControllers = self->_rotationViewControllers;
  self->_rotationViewControllers = 0;

  firstResponder = self->_firstResponder;
  self->_firstResponder = 0;

  subtreeMonitors = self->_subtreeMonitors;
  self->_subtreeMonitors = 0;

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  systemGestureGateForGestures = self->_systemGestureGateForGestures;
  self->_systemGestureGateForGestures = 0;

  systemGestureGateForTouches = self->_systemGestureGateForTouches;
  self->_systemGestureGateForTouches = 0;

  systemGateForGESTouches = self->_systemGateForGESTouches;
  self->_systemGateForGESTouches = 0;

  traitCollection = self->_traitCollection;
  self->_traitCollection = 0;

  destinationTraitCollection = self->_destinationTraitCollection;
  self->_destinationTraitCollection = 0;

  [(UIWindow *)self _setTraitCollectionChangeTransitionCoordinator:0];
  debugName = self->_debugName;
  self->_debugName = 0;

  focusEventRecognizer = self->_focusEventRecognizer;
  self->_focusEventRecognizer = 0;

  _focusSystemSceneComponent = [v15 _focusSystemSceneComponent];
  activeSceneObserver = [_focusSystemSceneComponent activeSceneObserver];
  [activeSceneObserver stopMonitoringContextChangesForWindow:self];

  [(_UISceneUIWindowHosting *)self->_windowHostingScene _detachWindow:self];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v6[6] == self)
    {
      v6[6] = 0;
    }
  }

  rootLayer = self->_rootLayer;
  if (rootLayer && rootLayer[1].super.isa == self)
  {
    rootLayer[1].super.isa = 0;
  }

  sceneTransformLayer = self->_sceneTransformLayer;
  if (sceneTransformLayer && sceneTransformLayer[1].super.isa == self)
  {
    sceneTransformLayer[1].super.isa = 0;
  }

  transformLayer = self->_transformLayer;
  if (transformLayer && transformLayer[1].super.isa == self)
  {
    transformLayer[1].super.isa = 0;
  }

  objc_autoreleasePoolPop(v3);
  v35.receiver = self;
  v35.super_class = UIWindow;
  [(UIView *)&v35 dealloc];
}

- (void)_prepareHierarchyForWindowHostingSceneRemoval
{
  selfCopy = self;
  if (selfCopy)
  {
    p_isa = &selfCopy->super.super.super.isa;
    _focusSystemSceneComponent = [(_UISceneUIWindowHosting *)selfCopy->_windowHostingScene _focusSystemSceneComponent];
    [p_isa _removeFocusIfNeededForFocusSystemSceneComponent:_focusSystemSceneComponent];

    [p_isa _prepareForWindowHostingSceneRemoval];
    [(UIView *)p_isa _prepareDescendantsForWindowHostingSceneRemoval];
    if (UIApp)
    {
      [(UIEventEnvironment *)*(*(UIApp + 160) + 8) _enqueueClearEventsOfRetainedWindow:?];
      v5 = UIApp;
    }

    else
    {
      v5 = 0;
    }

    [objc_msgSend(v5 _touchesEventForWindow:{p_isa), "_invalidateGestureRecognizerForWindowCache"}];
    -[_UIPencilEvent unregisterAllInteractionsForWindow:]([UIApp _pencilEventForWindow:p_isa], p_isa);
    _existingPhysicalButtonInteractionArbiter = [p_isa[103] _existingPhysicalButtonInteractionArbiter];
    [(_UIPhysicalButtonInteractionArbiter *)_existingPhysicalButtonInteractionArbiter _unregisterAllPhysicalButtonInteractionsForDetachingWindow:?];
    _existingHomeAffordanceSceneNotifier = [p_isa[103] _existingHomeAffordanceSceneNotifier];
    [_existingHomeAffordanceSceneNotifier cleanupForDetachingWindow:p_isa];
    [(UIWindow *)p_isa _cancelEnqueuedDeferredOrientationUpdateIfNeeded];
    [(UIWindow *)p_isa _invalidateDeferredOrientationUpdate];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIWindowWillMoveToNilSceneNotification" object:p_isa userInfo:0];

    selfCopy = p_isa;
  }
}

- (Class)_intelligenceBaseClass
{
  sub_188E3FED0();

  return swift_getObjCClassFromMetadata();
}

- (UIActivityItemsConfigurationReading)_activityItemsConfigurationForScene
{
  _focusResponder = [(UIWindow *)self _focusResponder];
  if (!_focusResponder)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v3 = _focusResponder;
  while (1)
  {
    nextResponder = [v3 nextResponder];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = nextResponder;
      goto LABEL_10;
    }

    v5 = v3;
    presentingViewController = [v5 presentingViewController];
    if (!presentingViewController || (v7 = presentingViewController, v8 = [v5 modalPresentationStyle], v7, v8 == 5) || !v8)
    {
      _effectiveActivityItemsConfiguration = [v5 _effectiveActivityItemsConfiguration];
      if (_effectiveActivityItemsConfiguration)
      {
        break;
      }
    }

    v10 = nextResponder;

LABEL_10:
    v3 = nextResponder;
    if (!nextResponder)
    {
      goto LABEL_11;
    }
  }

  v12 = _effectiveActivityItemsConfiguration;

LABEL_12:

  return v12;
}

+ (BOOL)_prefersStatusBarHiddenInWindow:(id)window animationProvider:(id *)provider
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  LODWORD(provider) = [self _preferredStatusBarVisibilityForWindow:windowCopy targetOrientation:objc_msgSend(windowScene animationProvider:{"_interfaceOrientation"), provider}];

  return provider == 1;
}

+ (int)_preferredStatusBarVisibilityForWindow:(id)window targetOrientation:(int64_t)orientation animationProvider:(id *)provider
{
  windowCopy = window;
  _windowHostingScene = [windowCopy _windowHostingScene];
  _viewControllerAppearanceComponent = [_windowHostingScene _viewControllerAppearanceComponent];

  if (orientation)
  {
    windowScene = [windowCopy windowScene];
    statusBarManager = [windowScene statusBarManager];
    if (statusBarManager)
    {
      v12 = statusBarManager;
      windowScene2 = [windowCopy windowScene];
      statusBarManager2 = [windowScene2 statusBarManager];
      [statusBarManager2 defaultStatusBarHeightInOrientation:orientation];
      v16 = v15;

      if (v16 == 0.0 && !_viewControllerAppearanceComponent)
      {
        _preferredStatusBarVisibility = 1;
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  if ([UIApp _viewControllerBasedStatusBarAppearance])
  {
    rootViewController = [windowCopy rootViewController];
    _effectiveStatusBarHiddenViewController = [rootViewController _effectiveStatusBarHiddenViewController];

    if (_effectiveStatusBarHiddenViewController)
    {
      _preferredStatusBarVisibility = [_effectiveStatusBarHiddenViewController _preferredStatusBarVisibility];
      if (provider)
      {
        v20 = _effectiveStatusBarHiddenViewController;
        *provider = _effectiveStatusBarHiddenViewController;
      }
    }

    else
    {
      _rootPresentationController = [windowCopy _rootPresentationController];

      if (_rootPresentationController)
      {
        _rootPresentationController2 = [windowCopy _rootPresentationController];
        _preferredStatusBarVisibility = [_rootPresentationController2 _preferredStatusBarVisibility];

        if (provider)
        {
          *provider = [windowCopy _rootPresentationController];
        }
      }

      else if (dyld_program_sdk_at_least())
      {
        _preferredStatusBarVisibility = 0;
      }

      else
      {
        _preferredStatusBarVisibility = 2;
      }
    }
  }

  else
  {
    _preferredStatusBarVisibility = [UIApp _isStatusBarHiddenForOrientation:orientation];
  }

LABEL_19:

  return _preferredStatusBarVisibility;
}

+ (int64_t)_preferredStatusBarStyleInWindow:(id)window resolvedStyle:(int64_t *)style withPartStyles:(id *)styles animationProvider:(id *)provider
{
  v69[4] = *MEMORY[0x1E69E9840];
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  _effectiveUISettings = [windowScene _effectiveUISettings];
  forcedStatusBarStyle = [_effectiveUISettings forcedStatusBarStyle];

  if (forcedStatusBarStyle)
  {
    _effectiveUISettings2 = [windowScene _effectiveUISettings];
    forcedStatusBarStyle2 = [_effectiveUISettings2 forcedStatusBarStyle];
    integerValue = [forcedStatusBarStyle2 integerValue];

    v16 = 2 * (integerValue == 3);
    v17 = integerValue == 1;
    goto LABEL_18;
  }

  if ([UIApp _viewControllerBasedStatusBarAppearance])
  {
    rootViewController = [windowCopy rootViewController];
    _effectiveStatusBarStyleViewController = [rootViewController _effectiveStatusBarStyleViewController];

    _rootPresentationController = [windowCopy _rootPresentationController];
    v21 = _rootPresentationController;
    if (!_effectiveStatusBarStyleViewController)
    {
      if (_rootPresentationController)
      {
        integerValue = [_rootPresentationController preferredStatusBarStyle];
        v36 = v21;
        traitCollection = [v36 traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];

        if (userInterfaceIdiom == 3)
        {
          if (dyld_program_sdk_at_least())
          {
            traitCollection2 = [v36 traitCollection];
            userInterfaceStyle = [traitCollection2 userInterfaceStyle];

            v41 = 3;
            if (userInterfaceStyle == 2)
            {
              v41 = 1;
            }

            if (userInterfaceStyle)
            {
              v42 = integerValue == 0;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = integerValue == 0;
            v41 = 3;
          }

          if (v42)
          {
            integerValue = v41;
          }
        }

        preferredStatusBarStyle = [v36 preferredStatusBarStyle];
        if (preferredStatusBarStyle == 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = 2 * (preferredStatusBarStyle == 3);
        }

        v34 = _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(v59, v36);
        if (provider)
        {
          *provider = [windowCopy _rootPresentationController];
        }
      }

      else
      {
        v34 = 0;
        integerValue = 0;
      }

LABEL_62:

      if (!style)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    preferredStatusBarStyle2 = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    v23 = _effectiveStatusBarStyleViewController;
    v67 = v23;
    if (!preferredStatusBarStyle2)
    {
      parentViewController2 = v23;
      _parentTraitEnvironment = [v23 _parentTraitEnvironment];
      if (_parentTraitEnvironment)
      {
LABEL_9:

        v23 = parentViewController2;
      }

      else
      {
        while (1)
        {
          parentViewController = [v23 parentViewController];

          if (!parentViewController)
          {
            break;
          }

          parentViewController2 = [v23 parentViewController];

          _parentTraitEnvironment = [parentViewController2 _parentTraitEnvironment];
          v23 = parentViewController2;
          if (_parentTraitEnvironment)
          {
            goto LABEL_9;
          }
        }
      }
    }

    providerCopy = provider;
    v66 = v21;
    v27 = v23;
    traitCollection3 = [v27 traitCollection];
    userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

    integerValue = preferredStatusBarStyle2;
    if (userInterfaceIdiom2 == 3)
    {
      if (dyld_program_sdk_at_least())
      {
        traitCollection4 = [v27 traitCollection];
        userInterfaceStyle2 = [traitCollection4 userInterfaceStyle];

        v32 = 3;
        if (userInterfaceStyle2 == 2)
        {
          v32 = 1;
        }

        if (userInterfaceStyle2)
        {
          v33 = preferredStatusBarStyle2 == 0;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = preferredStatusBarStyle2 == 0;
        v32 = 3;
      }

      if (v33)
      {
        integerValue = v32;
      }

      else
      {
        integerValue = preferredStatusBarStyle2;
      }
    }

    if (preferredStatusBarStyle2 == 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2 * (preferredStatusBarStyle2 == 3);
    }

    v34 = _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(v43, v27);
    if (!styles)
    {
LABEL_59:
      v21 = v66;
      if (providerCopy)
      {
        *providerCopy = v67;
      }

      goto LABEL_62;
    }

    v63 = v27;
    v44 = _viewControllerIfStatusBarPartStyleProviding(v67);
    preferredTrafficLightStyle = [v67 preferredTrafficLightStyle];
    v62 = v44;
    v64 = _effectiveStatusBarStyleViewController;
    if (v44)
    {
      preferredLeadingStatusBarStyle = [v44 preferredLeadingStatusBarStyle];
      if (v43 == preferredLeadingStatusBarStyle)
      {
        v60 = 4;
      }

      else
      {
        v60 = _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(preferredLeadingStatusBarStyle, v44);
      }

      preferredTrailingStatusBarStyle = [v44 preferredTrailingStatusBarStyle];
      if (v43 == preferredTrailingStatusBarStyle)
      {
        v51 = 4;
      }

      else
      {
        v51 = _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(preferredTrailingStatusBarStyle, v44);
      }

      preferredCenterStatusBarStyle = [v44 preferredCenterStatusBarStyle];
      if (v43 == preferredCenterStatusBarStyle)
      {
        v53 = 4;
      }

      else
      {
        v53 = _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(preferredCenterStatusBarStyle, v44);
      }

      v47 = v51;
      v46 = v60;
      if (v60 != 4 && v60 == v51)
      {
        v49 = v60;
        if (v60 == v53 || v53 == 4)
        {
          integerValue = _UIStatusBarStyleFromResolvedStyle(v60);
          v46 = 4;
          v47 = 4;
          v48 = 4;
          goto LABEL_58;
        }

        v47 = v60;
      }

      v49 = v34;
      v48 = v53;
    }

    else
    {
      v46 = 4;
      v47 = 4;
      v48 = 4;
      v49 = v34;
    }

LABEL_58:
    v68[0] = @"leadingPartIdentifier";
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
    v69[0] = v54;
    v68[1] = @"trailingPartIdentifier";
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
    v69[1] = v55;
    v68[2] = @"centerPartIdentifier";
    v56 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
    v69[2] = v56;
    v68[3] = @"trafficLightPartIdentifier";
    v57 = [MEMORY[0x1E696AD98] numberWithInteger:preferredTrafficLightStyle];
    v69[3] = v57;
    *styles = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:4];

    v34 = v49;
    v27 = v63;
    _effectiveStatusBarStyleViewController = v64;
    goto LABEL_59;
  }

  integerValue = [UIApp statusBarStyle];
  v16 = 2 * (integerValue == 3);
  v17 = integerValue == 1;
LABEL_18:
  if (v17)
  {
    v34 = 1;
  }

  else
  {
    v34 = v16;
  }

  if (style)
  {
LABEL_22:
    *style = v34;
  }

LABEL_23:

  return integerValue;
}

- (void)addKeyboardLayoutGuideIfNeeded:(id)needed
{
  neededCopy = needed;
  currentKeyboardTrackingLayoutGuides = self->_currentKeyboardTrackingLayoutGuides;
  v11 = neededCopy;
  if (!currentKeyboardTrackingLayoutGuides)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_currentKeyboardTrackingLayoutGuides;
    self->_currentKeyboardTrackingLayoutGuides = v6;

    neededCopy = v11;
    currentKeyboardTrackingLayoutGuides = self->_currentKeyboardTrackingLayoutGuides;
  }

  if (([(NSMutableArray *)currentKeyboardTrackingLayoutGuides containsObject:neededCopy]& 1) == 0)
  {
    _primaryKeyboardTrackingGuide = [(UIWindow *)self _primaryKeyboardTrackingGuide];
    [v11 setConstrainedToWindowGuide:1];
    [v11 constrainToReference:_primaryKeyboardTrackingGuide];
    [(UITrackingLayoutGuide *)self->_primaryKeyboardTrackingGuide trackConstraintsFromViewBasedGuide:v11];
    [(UIKeyboardLayoutGuide *)self->_primaryKeyboardTrackingGuide inheritOptionsFromGuide:v11];
    [(NSMutableArray *)self->_currentKeyboardTrackingLayoutGuides addObject:v11];
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v9 addWindowForTracking:self];

    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v10 refreshKeyboardLayoutGuide];
  }
}

- (void)removeKeyboardLayoutGuideIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(NSMutableArray *)self->_currentKeyboardTrackingLayoutGuides containsObject:?])
  {
    [(UITrackingLayoutGuide *)self->_primaryKeyboardTrackingGuide removeTrackedConstraintsFromViewBasedGuide:neededCopy];
    _systemConstraints = [neededCopy _systemConstraints];
    v5 = [_systemConstraints count];

    if (v5)
    {
      v6 = MEMORY[0x1E69977A0];
      _systemConstraints2 = [neededCopy _systemConstraints];
      [v6 deactivateConstraints:_systemConstraints2];
    }

    [(NSMutableArray *)self->_currentKeyboardTrackingLayoutGuides removeObject:neededCopy];
  }

  if ([neededCopy isEqual:self->_primaryKeyboardTrackingGuide] && !-[NSMutableArray count](self->_currentKeyboardTrackingLayoutGuides, "count"))
  {
    [(UITrackingLayoutGuide *)self->_primaryKeyboardTrackingGuide removeAllTrackedConstraints];
    v8 = MEMORY[0x1E69977A0];
    _systemConstraints3 = [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _systemConstraints];
    [v8 deactivateConstraints:_systemConstraints3];

    [(UILayoutGuide *)self->_primaryKeyboardTrackingGuide _setLockedToOwningView:0];
    [(UIView *)self removeLayoutGuide:self->_primaryKeyboardTrackingGuide];
    primaryKeyboardTrackingGuide = self->_primaryKeyboardTrackingGuide;
    self->_primaryKeyboardTrackingGuide = 0;
  }
}

- (double)keyboardLayoutGuideScrollViewOffset
{
  if (![(UIWindow *)self isTrackingKeyboard])
  {
    return 0.0;
  }

  primaryKeyboardTrackingGuide = self->_primaryKeyboardTrackingGuide;

  [(UIKeyboardLayoutGuide *)primaryKeyboardTrackingGuide keyboardDismissPadding];
  return result;
}

- (BOOL)moveKeyboardLayoutGuideOverEdge:(unint64_t)edge layoutViews:(BOOL)views
{
  viewsCopy = views;
  if ([(UIWindow *)self isTrackingKeyboard])
  {
    primaryKeyboardTrackingGuide = self->_primaryKeyboardTrackingGuide;
    if (edge)
    {
      v8 = [(UIKeyboardLayoutGuide *)primaryKeyboardTrackingGuide moveGuideOffscreenAtEdge:edge];
      v9 = v8;
      if (v8 && viewsCopy)
      {
        [(UIWindow *)self layoutViewsForTrackedGuides];
      }

      if (v9)
      {
        return 1;
      }
    }

    else
    {
      [(UIKeyboardLayoutGuide *)primaryKeyboardTrackingGuide resetGuideForCancelledDismissInteraction];
    }
  }

  return 0;
}

- (id)_obtainKeyboardLayoutGuideTransitionAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if ([(UIWindow *)self isTrackingKeyboard])
  {
    v5 = [(UIKeyboardLayoutGuide *)self->_primaryKeyboardTrackingGuide _obtainTransitionAssertionForReason:reasonCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateGuideForKeyboardPlacement:(id)placement
{
  placementCopy = placement;
  if ([placementCopy isVisible])
  {
    if ([placementCopy isFloating])
    {
      v4 = 3;
    }

    else if ([placementCopy isCompactAssistantView])
    {
      v4 = 6;
    }

    else if ([placementCopy isFloatingAssistantView])
    {
      v4 = 5;
    }

    else if ([placementCopy isUndocked])
    {
      v4 = 4;
    }

    else if ([placementCopy showsInputOrAssistantViews])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    _primaryKeyboardTrackingGuide = [(UIWindow *)self _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide setCurrentKeyboardVisualState:v4];
  }
}

- (UILayoutGuide)safeAreaAspectFitLayoutGuide
{
  v3 = objc_getAssociatedObject(self, &_UIWindowSafeAreaAspectFitLayoutGuideID);
  if (!v3)
  {
    v3 = objc_alloc_init(_UIWindowSafeAreaAspectFitLayoutGuide);
    [(UIView *)self addLayoutGuide:v3];
    [(UILayoutGuide *)v3 _setLockedToOwningView:1];
    [(UILayoutGuide *)v3 setIdentifier:@"UIWindowSafeAreaAspectFitLayoutGuide"];
    objc_setAssociatedObject(self, &_UIWindowSafeAreaAspectFitLayoutGuideID, v3, 1);
  }

  return v3;
}

+ (void)adjustForAccessibilityIfNeeded:(id)needed
{
  name = [needed name];
  v5 = [name isEqualToString:@"UIAccessibilityInvertColorsChanged"];

  if (v5)
  {
    v6 = 12;
  }

  else
  {
    v6 = 4;
  }

  v7 = _AXSUseSingleSystemColor();
  v8 = (v7 | byte_1EA968DCA) != 0;
  if (v7 | byte_1EA968DCA)
  {
    byte_1EA968DCA = _AXSUseSingleSystemColor() != 0;
  }

  v9 = _AXDarkenSystemColors() != 0;
  if (byte_1EA968DC9 != v9)
  {
    byte_1EA968DC9 = v9;
    v8 = 1;
  }

  v10 = _AXSInvertColorsEnabled() != 0;
  if (byte_1EA968DCB != v10)
  {
    byte_1EA968DCB = v10;
    goto LABEL_12;
  }

  if (v8)
  {
LABEL_12:
    v11 = [self allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__UIWindow_adjustForAccessibilityIfNeeded___block_invoke;
    v12[3] = &__block_descriptor_40_e25_v32__0__UIWindow_8Q16_B24l;
    v12[4] = v6;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

void __43__UIWindow_adjustForAccessibilityIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(UIView *)a2 _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
  }
}

+ (void)adjustFocusForAccessibilityIfNeeded:(id)needed
{
  v3 = [self allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
  v4 = _AXSFullKeyboardAccessEnabled();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__UIWindow_adjustFocusForAccessibilityIfNeeded___block_invoke;
  v5[3] = &__block_descriptor_33_e25_v32__0__UIWindow_8Q16_B24l;
  v6 = v4 != 0;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __48__UIWindow_adjustFocusForAccessibilityIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 screen];
  v4 = [v3 _isCarScreen];

  if ((v4 & 1) == 0 && *(a1 + 32) == 1)
  {
    [v5 _installFocusEventRecognizer];
  }
}

- (id)_debugName
{
  v2 = [(NSString *)self->_debugName copy];

  return v2;
}

- (void)_setFBSScene:(void *)scene
{
  v3 = a2;
  v4 = v3;
  if (scene)
  {
    v17 = v3;
    if (!v3)
    {
      screen = [scene screen];
      v7 = [UIWindowScene _placeholderWindowSceneForScreen:screen create:0];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        mainScreen = [objc_opt_self() mainScreen];
        v9 = [UIWindowScene _unassociatedWindowSceneForScreen:mainScreen create:1];
      }

      [v9 _attachWindow:scene];
LABEL_12:
      [scene _updateTransformLayer];
      v4 = v17;
      goto LABEL_13;
    }

    v5 = [(UIScene *)UIWindowScene _sceneForFBSScene:v3];
    if (!v5)
    {
      if ([UIApp _appAdoptsUISceneLifecycle])
      {
        v5 = 0;
      }

      else
      {
        uiSettings = [v17 uiSettings];
        displayIdentity = [uiSettings displayIdentity];
        v13 = [UIScreen _screenWithFBSDisplayIdentity:displayIdentity];
        v5 = [UIWindowScene _placeholderWindowSceneForScreen:v13 create:1];
      }
    }

    [v5 _attachWindow:scene];

    v14 = scene[52];
    settings = [v17 settings];
    interfaceOrientation = [settings interfaceOrientation];

    v4 = v17;
    if (v14 != interfaceOrientation)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_commonInitAttachedWindow:(BOOL)window debugName:(id)name scene:(id)scene
{
  nameCopy = name;
  v8 = [(UIWindow *)self _uiWindowSceneFromFBSScene:scene];
  [(UIWindow *)self _commonInitDebugName:nameCopy uiScene:v8];
}

- (void)_populateInitialTraitCollection:(id)collection
{
  v14 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  traitCollection = self->_traitCollection;
  if (has_internal_diagnostics)
  {
    if (traitCollection)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Window was already initialized: %@", buf, 0xCu);
      }
    }
  }

  else if (traitCollection)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_populateInitialTraitCollection____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Window was already initialized: %@", buf, 0xCu);
    }
  }

  v7 = self->_traitCollection;
  self->_traitCollection = collectionCopy;
  v8 = collectionCopy;

  v11.receiver = self;
  v11.super_class = UIWindow;
  [(UIView *)&v11 _populateInitialTraitCollection:v8];
}

- (void)_addWindowTopTapRegion
{
  traitCollection = [(UIWindow *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = _os_feature_enabled_impl();
  if (userInterfaceIdiom == 1)
  {
    if (v5)
    {
      v6 = objc_alloc_init(_UIDoubleTapInteraction);
      topTapInteraction = self->_topTapInteraction;
      self->_topTapInteraction = v6;

      [(_UIDoubleTapInteraction *)self->_topTapInteraction setIgnoresUIControls:1];
      [(_UIDoubleTapInteraction *)self->_topTapInteraction setNeverRecognizeSimultaneouslyWithOtherGestures:1];
      [(_UIDoubleTapInteraction *)self->_topTapInteraction setHeightFromTopToAcceptTouches:64.0];
      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__UIWindow__addWindowTopTapRegion__block_invoke;
      v10[3] = &unk_1E7106120;
      objc_copyWeak(&v11, &location);
      [(_UIDoubleTapInteraction *)self->_topTapInteraction setDidDoubleTap:v10];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __34__UIWindow__addWindowTopTapRegion__block_invoke_2;
      v8[3] = &unk_1E7106120;
      objc_copyWeak(&v9, &location);
      [(_UIDoubleTapInteraction *)self->_topTapInteraction setDidTimeOut:v8];
      [(UIView *)self addInteraction:self->_topTapInteraction];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __34__UIWindow__addWindowTopTapRegion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[579] & 0x40) != 0)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained windowScene];
    v3 = [v2 _FBSScene];
    v4 = [v3 _ui_layoutPreferencesController];
    [v4 didRecognizeDoubleTapInDraggableArea];

    WeakRetained = v5;
  }
}

void __34__UIWindow__addWindowTopTapRegion__block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[579] & 0x40) != 0)
  {
    v7 = WeakRetained;
    v4 = [[UIStatusBarTapAction alloc] initWithType:0 xPosition:a2];
    v5 = [v7 windowScene];
    v6 = [v5 statusBarManager];
    [v6 handleTapAction:v4];

    WeakRetained = v7;
  }
}

- (void)_commonInitDebugName:(id)name uiScene:(id)scene
{
  sceneCopy = scene;
  _ensureDebugName(self, name);
  _isSecure = [objc_opt_class() _isSecure];
  v8 = 0x20000000;
  if (!_isSecure)
  {
    v8 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFDFFFFFFFLL | v8);
  if (!self->_traitCollection && dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:1265 description:@"UIWindow was improperly initialized without calling into a designated initializer on UIView"];
  }

  [sceneCopy _attachWindow:self];
  layer = [(UIView *)self layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    layer2 = [(UIView *)self layer];
    layer2[6] = self;
  }

  if ((*(&self->_windowFlags + 3) & 0x40) == 0)
  {
    screen = [sceneCopy screen];
    [screen bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(UIView *)self frame];
    v54.origin.x = v21;
    v54.origin.y = v22;
    v54.size.width = v23;
    v54.size.height = v24;
    v52.origin.x = v14;
    v52.origin.y = v16;
    v52.size.width = v18;
    v52.size.height = v20;
    if (CGRectEqualToRect(v52, v54))
    {
      v25 = 0x40000000;
    }

    else
    {
      v25 = 0;
    }

    self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFBFFFFFFFLL | v25);

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [(UIView *)self frame];
    v55.origin.x = v35;
    v55.origin.y = v36;
    v55.size.width = v37;
    v55.size.height = v38;
    v53.origin.x = v28;
    v53.origin.y = v30;
    v53.size.width = v32;
    v53.size.height = v34;
    v39 = CGRectEqualToRect(v53, v55);
    windowFlags = self->_windowFlags;
    if (v39 | (*&windowFlags >> 30) & 1)
    {
      v41 = 0x40000000;
    }

    else
    {
      v41 = 0;
    }

    self->_windowFlags = (v41 | *&windowFlags & 0xFFFFFFFFBFFFFFFFLL);
  }

  [(UIWindow *)self _addWindowTopTapRegion];
  _interfaceOrientation = [sceneCopy _interfaceOrientation];
  if ([(UIScene *)sceneCopy _systemShellOwnsInterfaceOrientation]&& _interfaceOrientation)
  {
    self->_viewOrientation = _interfaceOrientation;
  }

  [(UIWindow *)self _updateTransformLayer];
  [(UIWindow *)self _sceneBoundsDidChange];
  [(UIWindow *)self _createSystemGestureGateGestureRecognizerIfNeeded];
  [(UIWindow *)self _createOtherSystemGateGestureRecognizersIfNeeded];
  v43 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v43 userInterfaceIdiom];

  if (userInterfaceIdiom <= 1)
  {
    [(UIWindow *)self _createKeyboardDismissalGestureRecognizer];
  }

  *&self->_windowFlags |= 0x10000000uLL;
  *(&self->super._viewFlags + 3) &= ~0x100uLL;
  v45 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
  scrollPocketCollectorInteraction = self->_scrollPocketCollectorInteraction;
  self->_scrollPocketCollectorInteraction = v45;

  [(UIView *)self addInteraction:self->_scrollPocketCollectorInteraction];
  v47 = [[_UIScrollPocketInteraction alloc] initWithStyle:4];
  topSafeAreaInsetScrollPocketInteraction = self->_topSafeAreaInsetScrollPocketInteraction;
  self->_topSafeAreaInsetScrollPocketInteraction = v47;

  [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setEdge:1];
  [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
  if (qword_1EA968DF0 != -1)
  {
    dispatch_once(&qword_1EA968DF0, &__block_literal_global_356_1);
  }

  [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setRequiresPocket:byte_1EA968DCC];
  [(UIView *)self addInteraction:self->_topSafeAreaInsetScrollPocketInteraction];
}

+ (BOOL)_temporary_shouldSizeWindowsAutomaticallyPlistOverrideSet
{
  if (qword_1EA968DF8 != -1)
  {
    dispatch_once(&qword_1EA968DF8, &__block_literal_global_373_2);
  }

  return byte_1EA968DCD;
}

void __69__UIWindow__temporary_shouldSizeWindowsAutomaticallyPlistOverrideSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v4 = [v1 objectForKeyedSubscript:@"NSWindowAutomaticSizing"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue];
    v2 = v4;
  }

  else
  {
    v3 = 0;
  }

  byte_1EA968DCD = v3;
}

- (id)_uiWindowSceneFromFBSScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    firstObject = [(UIScene *)UIWindowScene _sceneForFBSScene:sceneCopy];
    if (firstObject)
    {
      goto LABEL_27;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    displayConfiguration = currentHandler;
    v9 = @"Attempting to on-demand create a UIScene instance without previously informing UIKit of the backing FBSScene. This is a fatal error outside system apps.";
    v10 = a2;
    selfCopy2 = self;
    v12 = 1381;
LABEL_4:
    [currentHandler handleFailureInMethod:v10 object:selfCopy2 file:@"UIWindow.m" lineNumber:v12 description:v9];
LABEL_26:

    goto LABEL_27;
  }

  if ([UIApp isFrontBoard] && (objc_msgSend(UIApp, "disablesFrontBoardImplicitWindowScenes") & 1) == 0)
  {
    if ([(UIWindow *)self _isWindowServerHostingManaged])
    {
      screen = [(UIWindow *)self screen];
      displayConfiguration = [screen displayConfiguration];

      v20 = [UIApp _newSceneForWindow:self oldDisplay:displayConfiguration newDisplay:displayConfiguration];
      if (v20)
      {
        firstObject = [(UIScene *)UIWindowScene _sceneForFBSScene:v20];
      }

      else
      {
        mainScreen = [objc_opt_self() mainScreen];
        firstObject = [UIWindowScene _unassociatedWindowSceneForScreen:mainScreen create:1];
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if ([objc_opt_class() _isSystemUIService])
  {
    v13 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      goto LABEL_27;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    displayConfiguration = currentHandler;
    v9 = @"SystemUIService creating windows without first creating a scene. They should know better. Aborting.";
    v10 = a2;
    selfCopy2 = self;
    v12 = 1393;
    goto LABEL_4;
  }

  if (![(UIWindow *)self _wantsSceneAssociation]|| ![(UIWindow *)self _isWindowServerHostingManaged])
  {
    goto LABEL_24;
  }

  if (!UIApp)
  {
    if (![(UIWindow *)self _alwaysGetsContexts])
    {
      goto LABEL_30;
    }

LABEL_24:
    displayConfiguration = [objc_opt_self() mainScreen];
    v18 = [UIWindowScene _unassociatedWindowSceneForScreen:displayConfiguration create:1];
    goto LABEL_25;
  }

  v14 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v14 applicationInitializationContext];
  defaultSceneToken = [applicationInitializationContext defaultSceneToken];

  if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
  {
    if (!defaultSceneToken)
    {
      displayConfiguration = [(UIWindow *)self screen];
      v18 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:displayConfiguration];
      goto LABEL_25;
    }

    _defaultSceneIfExists = [UIApp _defaultSceneIfExists];
    firstObject = [(UIScene *)UIWindowScene _sceneForFBSScene:_defaultSceneIfExists];

    if (firstObject)
    {
      goto LABEL_27;
    }

    if ((_UIApplicationIsExtension() & 1) == 0)
    {
      displayConfiguration = [(UIWindow *)self screen];
      v18 = [UIWindowScene _placeholderWindowSceneForScreen:displayConfiguration create:1];
LABEL_25:
      firstObject = v18;
      goto LABEL_26;
    }
  }

LABEL_30:
  firstObject = 0;
LABEL_27:

  return firstObject;
}

- (void)_commonInit
{
  v3 = [(UIWindow *)self _uiWindowSceneFromFBSScene:0];
  [(UIWindow *)self _commonInitDebugName:0 uiScene:v3];
}

- (UIWindow)initWithWindowScene:(UIWindowScene *)windowScene
{
  v4 = windowScene;
  _coordinateSpace = [(UIWindowScene *)v4 _coordinateSpace];
  [_coordinateSpace bounds];
  v6 = [(UIWindow *)self _initWithFrame:0 debugName:v4 windowScene:?];

  return v6;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name scene:(id)scene attached:(BOOL)attached
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  nameCopy = name;
  _ensureDebugName(self, nameCopy);
  v14 = [(UIWindow *)self _uiWindowSceneFromFBSScene:sceneCopy];

  height = [(UIWindow *)self _initWithFrame:nameCopy debugName:v14 windowScene:x, y, width, height];
  return height;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name displayConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  nameCopy = name;
  _ensureDebugName(self, nameCopy);
  v13 = [UIApp _mainSceneForDisplay:configurationCopy];

  v14 = [(UIScene *)UIWindowScene _sceneForFBSScene:v13];

  height = [(UIWindow *)self _initWithFrame:nameCopy debugName:v14 windowScene:x, y, width, height];
  return height;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  sceneCopy = scene;
  v13 = sceneCopy;
  if (sceneCopy)
  {
    v14 = _UISetCurrentFallbackEnvironment(sceneCopy);
    v20.receiver = self;
    v20.super_class = UIWindow;
    height = [(UIView *)&v20 initWithFrame:x, y, width, height];
    _UIRestorePreviousFallbackEnvironment(v14);
    if (!height)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UIWindow;
    height = [(UIView *)&v19 initWithFrame:x, y, width, height];
    if (!height)
    {
      goto LABEL_9;
    }
  }

  layer = [(UIView *)height layer];
  [layer setHidden:1];

  if (v13)
  {
    [(UIWindow *)height _commonInitDebugName:nameCopy uiScene:v13];
  }

  else
  {
    v17 = [(UIWindow *)height _uiWindowSceneFromFBSScene:0];
    [(UIWindow *)height _commonInitDebugName:nameCopy uiScene:v17];
  }

  [(UIWindow *)height _updateLayerOrderingAndSetLayerHidden:1];
  *&height->_windowFlags |= 0x20uLL;
LABEL_9:

  return height;
}

- (UIWindow)initWithContentRect:(CGRect)rect
{
  v3 = [(UIWindow *)self initWithFrame:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4 = v3;
  if (v3)
  {
    windowScene = [(UIWindow *)v3 windowScene];

    if (windowScene)
    {
      [(UIWindow *)v4 _adjustFramePositionIfNecessary];
    }

    else
    {
      *&v4->_windowFlags |= 0x1000000000uLL;
    }
  }

  return v4;
}

- (UIWindow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UIWindow;
  v5 = [(UIView *)&v13 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UIWindow *)v5 _commonInit];
    isHidden = [(UIView *)v6 isHidden];
    v8 = 0x2000000;
    if (isHidden)
    {
      v8 = 0;
    }

    v6->_windowFlags = (*&v6->_windowFlags & 0xFFFFFFFFFDFFFFFFLL | v8);
    [(UIWindow *)v6 setHidden:isHidden];
    *&v6->_windowFlags &= ~0x2000000uLL;
    v9 = [coderCopy decodeBoolForKey:@"UIResizesToFullScreen"];
    v10 = 0x800000;
    if (!v9)
    {
      v10 = 0;
    }

    v6->_windowFlags = (*&v6->_windowFlags & 0xFFFFFFFFFF7FFFFFLL | v10);
    v11 = [coderCopy decodeObjectForKey:@"UIRootViewController"];
    if (v11)
    {
      [(UIWindow *)v6 setRootViewController:v11];
    }

    *&v6->_windowFlags |= 0x20uLL;
  }

  return v6;
}

- (id)_initWithOrientation:(int64_t)orientation
{
  self->_viewOrientation = orientation;
  v4.receiver = self;
  v4.super_class = UIWindow;
  return [(UIView *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UIWindow;
  [(UIView *)&v6 encodeWithCoder:coderCopy];
  if ((*(&self->_windowFlags + 2) & 0x80) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIResizesToFullScreen"];
  }

  rootViewController = self->_rootViewController;
  if (rootViewController)
  {
    [coderCopy encodeConditionalObject:rootViewController forKey:@"UIRootViewController"];
  }
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = UIWindow;
  [&v5 awakeFromNib];
  if (!self->_viewOrientation)
  {
    v3 = UIApp;
    window = [(UIView *)self window];
    self->_viewOrientation = [v3 _safeInterfaceOrientationForWindowIfExists:window];
  }

  [(UIWindow *)self _resizeWindowToFullScreenIfNecessary];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  subviews = [(UIView *)self subviews];
  if ([subviews count])
  {
    v5 = [subviews objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  if (v5 != viewCopy)
  {
    [v5 removeFromSuperview];
    [(UIView *)self bounds];
    [viewCopy setSize:{v6, v7}];
    [(UIView *)self addSubview:viewCopy];
    [viewCopy setAutoresizingMask:18];
  }
}

- (void)_setShouldDisableTransformLayerScalingForSnapshotting:(BOOL)snapshotting
{
  if (self->_shouldDisableTransformLayerScalingForSnapshotting != snapshotting)
  {
    self->_shouldDisableTransformLayerScalingForSnapshotting = snapshotting;
    [(UIWindow *)self _updateTransformLayer];
  }
}

- (BOOL)_isConstrainedByScreenJail
{
  if (_isConstrainedByScreenJail_once != -1)
  {
    dispatch_once(&_isConstrainedByScreenJail_once, &__block_literal_global_407_0);
  }

  return 1;
}

void __38__UIWindow__isConstrainedByScreenJail__block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Window", &_UIInternalPreference_ForceTopSafeAreaInsetRequiresPocket_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "The value returned from this method is no longer trustworthy. Please contact the UIKit team to discuss your needs with this method.", v1, 2u);
  }
}

- (CGAffineTransform)_viewTransformForInterfaceOrientation:(SEL)orientation
{
  switch(a4)
  {
    case 1:
      v5 = 0.0;
      break;
    case 3:
      v5 = 1.57079633;
      break;
    case 4:
      v5 = -1.57079633;
      break;
    default:
      v5 = 3.14159265;
      if (a4 != 2)
      {
        v5 = 0.0;
      }

      break;
  }

  result = CGAffineTransformMakeRotation(&v8, v5);
  v7 = vrndaq_f64(*&v8.c);
  *&v8.a = vrndaq_f64(*&v8.a);
  *&v8.tx = vrndaq_f64(*&v8.tx);
  *&retstr->a = *&v8.a;
  *&retstr->c = v7;
  *&retstr->tx = *&v8.tx;
  return result;
}

- (void)_configureRootLayer:(id)layer sceneTransformLayer:(id)transformLayer transformLayer:(id)a5
{
  layerCopy = layer;
  transformLayerCopy = transformLayer;
  v10 = a5;
  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  settings = [_FBSScene settings];
  interfaceOrientation = [settings interfaceOrientation];

  _orientationForRootTransform = [(UIWindow *)self _orientationForRootTransform];
  self->_previousSceneOrientationForCounterRotation = 0;
  if ((interfaceOrientation - 1) >= 4)
  {
    v15 = 1;
  }

  else
  {
    v15 = interfaceOrientation;
  }

  self->_sceneOrientation = v15;
  clientSettings = [_FBSScene clientSettings];
  if ([clientSettings isUISubclass])
  {
    windowScene = [(UIWindow *)self windowScene];
    _windowsIgnoreSceneClientOrientation = [windowScene _windowsIgnoreSceneClientOrientation];

    if (_windowsIgnoreSceneClientOrientation)
    {
      interfaceOrientation2 = 1;
      goto LABEL_10;
    }

    clientSettings = [_FBSScene uiClientSettings];
    interfaceOrientation2 = [clientSettings interfaceOrientation];
  }

  else
  {
    interfaceOrientation2 = 1;
  }

LABEL_10:
  if ((interfaceOrientation2 - 1) >= 4)
  {
    v20 = 1;
  }

  else
  {
    v20 = interfaceOrientation2;
  }

  self->_sceneClientOrientation = v20;
  if (![(UIWindow *)self _windowOwnsInterfaceOrientationTransform]|| ![(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    [(UIWindow *)self _sceneBounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v29 = v35 + v39 * 0.5;
    v30 = v37 + v41 * 0.5;
    v63 = *(MEMORY[0x1E695EFD0] + 16);
    *&v70.a = *MEMORY[0x1E695EFD0];
    v65 = *&v70.a;
    *&v70.c = v63;
    *&v70.tx = *(MEMORY[0x1E695EFD0] + 32);
    v61 = *&v70.tx;
    [layerCopy setAffineTransform:&v70];
    [layerCopy setBounds:{v36, v38, v40, v42}];
    [layerCopy setPosition:{v29, v30}];
    *&v70.a = v65;
    *&v70.c = v63;
    *&v70.tx = v61;
    [transformLayerCopy setAffineTransform:&v70];
    [transformLayerCopy setBounds:{v36, v38, v40, v42}];
    [transformLayerCopy setPosition:{v29, v30}];
    _orientationForRootTransform2 = [(UIWindow *)self _orientationForRootTransform];
    _orientationForViewTransform = [(UIWindow *)self _orientationForViewTransform];
    if (_orientationForViewTransform && _orientationForRootTransform2 && (v45 = _orientationForViewTransform, [(UIWindow *)self _windowOwnsInterfaceOrientationTransform]))
    {
      self->_previousSceneOrientationForCounterRotation = _orientationForRootTransform;
      v46 = 0.0;
      v47 = 0.0;
      if (v45 != 1)
      {
        if (v45 == 3)
        {
          v47 = 1.57079633;
        }

        else if (v45 == 4)
        {
          v47 = -1.57079633;
        }

        else
        {
          v47 = 3.14159265;
          if (v45 != 2)
          {
            v47 = 0.0;
          }
        }
      }

      if (_orientationForRootTransform2 != 1)
      {
        if (_orientationForRootTransform2 == 3)
        {
          v46 = 1.57079633;
        }

        else if (_orientationForRootTransform2 == 4)
        {
          v46 = -1.57079633;
        }

        else
        {
          v46 = 3.14159265;
          if (_orientationForRootTransform2 != 2)
          {
            v46 = 0.0;
          }
        }
      }

      CGAffineTransformMakeRotation(&v70, v47 - v46);
      *&v70.a = vrndaq_f64(*&v70.a);
      *&v70.c = vrndaq_f64(*&v70.c);
      *&v70.tx = vrndaq_f64(*&v70.tx);
      v69 = v70;
      [v10 setAffineTransform:&v69];
      v49 = _UIConvertRectFromOrientationToOrientation(_orientationForRootTransform2, v45, v36, v38, v40, v42, v40, v42);
      v48 = v10;
    }

    else
    {
      *&v70.a = v65;
      *&v70.c = v63;
      *&v70.tx = v61;
      [v10 setAffineTransform:&v70];
      v48 = v10;
      v49 = v36;
      v50 = v38;
      v51 = v40;
      v52 = v42;
    }

    [v48 setBounds:{v49, v50, v51, v52}];
    goto LABEL_59;
  }

  [(UIWindow *)self _sceneReferenceBounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v21 + v25 * 0.5;
  v30 = v23 + v27 * 0.5;
  _orientationForViewTransform2 = [(UIWindow *)self _orientationForViewTransform];
  _orientationForRootTransform3 = [(UIWindow *)self _orientationForRootTransform];
  _orientationForSceneTransform = [(UIWindow *)self _orientationForSceneTransform];
  switch(_orientationForRootTransform3)
  {
    case 1:
      v34 = 0.0;
      break;
    case 3:
      v34 = 1.57079633;
      break;
    case 4:
      v34 = -1.57079633;
      break;
    default:
      v34 = 3.14159265;
      if (_orientationForRootTransform3 != 2)
      {
        v34 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v69, -v34);
  *&v69.a = vrndaq_f64(*&v69.a);
  *&v69.c = vrndaq_f64(*&v69.c);
  *&v70.c = *&v69.c;
  *&v70.tx = vrndaq_f64(*&v69.tx);
  *&v69.tx = *&v70.tx;
  *&v70.a = *&v69.a;
  [layerCopy setAffineTransform:&v69];
  [layerCopy setBounds:{v22, v24, v26, v28}];
  v53 = v28 - v30;
  if (_orientationForRootTransform3 == 4)
  {
    v54 = v28 - v30;
  }

  else
  {
    v54 = v29;
  }

  if (_orientationForRootTransform3 == 4)
  {
    v55 = v29;
  }

  else
  {
    v55 = v30;
  }

  if (_orientationForRootTransform3 == 3)
  {
    v54 = v30;
    v55 = v26 - v29;
  }

  if (_orientationForRootTransform3 == 2)
  {
    v54 = v26 - v29;
    v55 = v28 - v30;
  }

  [layerCopy setPosition:{v54, v55}];
  if (![objc_opt_class() _transformLayerRotationsAreEnabled])
  {
    v64 = *(MEMORY[0x1E695EFD0] + 16);
    *&v69.a = *MEMORY[0x1E695EFD0];
    v66 = *&v69.a;
    *&v69.c = v64;
    *&v69.tx = *(MEMORY[0x1E695EFD0] + 32);
    v62 = *&v69.tx;
    [transformLayerCopy setAffineTransform:&v69];
    [transformLayerCopy setBounds:{v22, v24, v26, v28}];
    *&v69.a = v66;
    *&v69.c = v64;
    *&v69.tx = v62;
    [v10 setAffineTransform:&v69];
    [v10 setBounds:{v22, v24, v26, v28}];
    [(UIWindow *)self _sceneReferenceBounds];
    [(UIWindow *)self setFrame:?];
    [transformLayerCopy setPosition:{v29, v30}];
LABEL_59:
    v58 = v10;
    v59 = v29;
    v60 = v30;
    goto LABEL_60;
  }

  memset(&v69, 0, sizeof(v69));
  [(UIWindow *)self _viewTransformForInterfaceOrientation:_orientationForSceneTransform];
  v68 = v69;
  [transformLayerCopy setAffineTransform:&v68];
  [transformLayerCopy setBounds:{_UIWindowConvertRectFromOrientationToOrientation(1, _orientationForSceneTransform, v22, v24, v26, v28, v26, v28)}];
  v56 = 0.0;
  v57 = 0.0;
  if (_orientationForViewTransform2 != 1)
  {
    if (_orientationForViewTransform2 == 3)
    {
      v57 = 1.57079633;
    }

    else if (_orientationForViewTransform2 == 4)
    {
      v57 = -1.57079633;
    }

    else
    {
      v57 = 3.14159265;
      if (_orientationForViewTransform2 != 2)
      {
        v57 = 0.0;
      }
    }
  }

  if (_orientationForSceneTransform != 1)
  {
    if (_orientationForSceneTransform == 3)
    {
      v56 = 1.57079633;
    }

    else if (_orientationForSceneTransform == 4)
    {
      v56 = -1.57079633;
    }

    else
    {
      v56 = 3.14159265;
      if (_orientationForSceneTransform != 2)
      {
        v56 = 0.0;
      }
    }
  }

  CGAffineTransformMakeRotation(&v68, v57 - v56);
  *&v68.a = vrndaq_f64(*&v68.a);
  *&v68.c = vrndaq_f64(*&v68.c);
  *&v68.tx = vrndaq_f64(*&v68.tx);
  v67 = v68;
  [v10 setAffineTransform:&v67];
  [v10 setBounds:{_UIWindowConvertRectFromOrientationToOrientation(1, _orientationForViewTransform2, v22, v24, v26, v28, v26, v28)}];
  [transformLayerCopy setPosition:{v29, v30}];
  if (_orientationForSceneTransform == 2)
  {
    v53 = v26 - v29;
    v29 = v28 - v30;
  }

  else if (_orientationForSceneTransform == 3)
  {
    v53 = v30;
    v29 = v26 - v29;
  }

  else if (_orientationForSceneTransform != 4)
  {
    v53 = v29;
    v29 = v30;
  }

  v58 = v10;
  v59 = v53;
  v60 = v29;
LABEL_60:
  [v58 setPosition:{v59, v60}];
}

- (void)setWindowScene:(UIWindowScene *)windowScene
{
  if (windowScene && (*&self->_windowFlags & 0x1000000000) != 0)
  {
    windowHostingScene = self->_windowHostingScene;
    v6 = windowScene;
    v7 = _UISetCurrentFallbackEnvironment(self);
    [(UIWindow *)self _setWindowHostingScene:v6];

    _UIRestorePreviousFallbackEnvironment(v7);
    if (windowHostingScene != windowScene)
    {
      *&self->_windowFlags &= ~0x1000000000uLL;

      [(UIWindow *)self _adjustFramePositionIfNecessary];
    }
  }

  else
  {
    v8 = windowScene;
    v9 = _UISetCurrentFallbackEnvironment(self);
    [(UIWindow *)self _setWindowHostingScene:v8];

    _UIRestorePreviousFallbackEnvironment(v9);
  }
}

- (void)__setWindowHostingScene:(uint64_t)scene
{
  v3 = a2;
  if (scene && *(scene + 824) != v3)
  {
    *(scene + 824) = v3;
    v6 = v3;
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) == 0;
    v3 = v6;
    v5 = 0x800000000;
    if (v4)
    {
      v5 = 0;
    }

    *(scene + 576) = *(scene + 576) & 0xFFFFFFF7FFFFFFFFLL | v5;
  }
}

- (void)_setWindowHostingScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy || !self->_windowHostingScene)
  {
    if (sceneCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIWindowWillMoveToSceneNotification" object:self userInfo:0];
    }
  }

  else
  {
    [(UIWindow *)self _prepareHierarchyForWindowHostingSceneRemoval];
    [(_UISceneUIWindowHosting *)self->_windowHostingScene _detachWindow:self];
  }

  [sceneCopy _attachWindow:self];
}

- (void)_insertLiveResizeSnapshot:(id *)snapshot
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (snapshot)
  {
    v5 = snapshot[89];
    if (v5)
    {
      superview = [v5 superview];

      if (superview != snapshot)
      {
        v7 = *(__UILogGetCategoryCachedImpl("Window", &_insertLiveResizeSnapshot____s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = snapshot[89];
          v9 = v7;
          superview2 = [v8 superview];
          v12 = 138412546;
          snapshotCopy = snapshot;
          v14 = 2112;
          v15 = superview2;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "A live resize snapshot was removed from its owning window %@ and is now a subview of %@.", &v12, 0x16u);
        }

        v11 = snapshot[89];
        snapshot[89] = 0;
      }
    }

    if (snapshot[89])
    {
      [snapshot insertSubview:v4 belowSubview:?];
    }

    else
    {
      [snapshot addSubview:v4];
    }

    objc_storeStrong(snapshot + 89, a2);
  }
}

- (void)_removeLiveResizeSnapshot:(uint64_t)snapshot
{
  v3 = a2;
  if (snapshot)
  {
    v4 = *(snapshot + 712);
    v5 = v3;
    if (v4 == v3)
    {
      *(snapshot + 712) = 0;
    }

    [v5 removeFromSuperview];
    v3 = v5;
  }
}

- (void)_didMoveFromScene:(id)scene toScene:(id)toScene
{
  v24[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  toSceneCopy = toScene;
  if (sceneCopy == toSceneCopy)
  {
    goto LABEL_20;
  }

  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(UIWindow *)self _updateAutorotationResponse:1];
    v24[0] = self;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [toSceneCopy _computeMetricsForWindows:v10 animated:0];

    [(UIViewController *)self->_rootViewController _updateContentOverlayInsetsForSelfAndChildren];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIWindowDidMoveToSceneNotification" object:self userInfo:0];

  if (sceneCopy)
  {
    _screen = [sceneCopy _screen];
    _screen2 = [toSceneCopy _screen];
    [(UIWindow *)self _didMoveFromScreen:_screen toScreen:_screen2];
  }

  if (![(UIView *)self isHidden])
  {
    [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:0];
  }

  _focusSystemSceneComponent = [sceneCopy _focusSystemSceneComponent];
  activeSceneObserver = [_focusSystemSceneComponent activeSceneObserver];
  [activeSceneObserver stopMonitoringContextChangesForWindow:self];

  _focusSystemSceneComponent2 = [toSceneCopy _focusSystemSceneComponent];
  activeSceneObserver2 = [_focusSystemSceneComponent2 activeSceneObserver];
  [activeSceneObserver2 beginMonitoringContextChangesForWindow:self];

  if (self->_focusEventRecognizer)
  {
    goto LABEL_9;
  }

  _focusSystemSceneComponent3 = [toSceneCopy _focusSystemSceneComponent];
  focusSystem = [_focusSystemSceneComponent3 focusSystem];

  if (focusSystem)
  {
    [(UIWindow *)self _installFocusEventRecognizer];
  }

  else if (self->_focusEventRecognizer)
  {
LABEL_9:
    _focusSystemSceneComponent4 = [toSceneCopy _focusSystemSceneComponent];
    focusSystem2 = [_focusSystemSceneComponent4 focusSystem];

    if (focusSystem2)
    {
      focusEventRecognizer = self->_focusEventRecognizer;
      if (focusEventRecognizer)
      {
        [(_UIFocusEventRecognizer *)focusEventRecognizer reset];
      }
    }

    else
    {
      [(UIWindow *)self _removeFocusEventRecognizer];
    }
  }

  if (sceneCopy && self->_passthroughScrollInteraction)
  {
    [(UIView *)self removeInteraction:?];
    passthroughScrollInteraction = self->_passthroughScrollInteraction;
    self->_passthroughScrollInteraction = 0;
  }

  if (toSceneCopy)
  {
    [(UIWindow *)&self->super.super.super.isa _configurePassthroughInteractionIfNeeded];
  }

LABEL_20:
}

- (void)_setBoundContext:(id)context
{
  v12[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _contextId = [(UIWindow *)self _contextId];
  objc_storeWeak(&self->_layerContext, contextCopy);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = defaultCenter;
  if (contextCopy)
  {
    [defaultCenter postNotificationName:_UIWindowDidAttachContextNotification object:self];
  }

  else
  {
    v7 = _UIWindowDidDetachContextNotification;
    v11 = @"contextId";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_contextId];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v10 postNotificationName:v7 object:self userInfo:v9];
  }
}

- (id)_contextOptionsWithInitialOptions:(id)options
{
  v4 = [options mutableCopy];
  [(UIWindow *)self _configureContextOptions:v4];

  return v4;
}

+ (void)_setAllWindowsKeepContextInBackground:(BOOL)background
{
  backgroundCopy = background;
  v14 = *MEMORY[0x1E69E9840];
  __allWindowsKeepContextInBackground = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
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

        [*(*(&v9 + 1) + 8 * v8++) _setKeepContextAssociationInBackground:backgroundCopy];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateLayerOrderingAndSetLayerHidden:(BOOL)hidden actionBlock:(id)block
{
  hiddenCopy = hidden;
  blockCopy = block;
  layer = [(UIView *)self layer];
  v7 = [layer isHidden] ^ hiddenCopy;

  layer2 = [(UIView *)self layer];
  [layer2 setHidden:hiddenCopy];

  if ((v7 & 1) != 0 || ([(_UISceneUIWindowHosting *)self->_windowHostingScene _windowIsFront:self]& 1) == 0)
  {
    [(_UISceneUIWindowHosting *)self->_windowHostingScene _windowUpdatedVisibility:self];
  }

  else
  {
    [(_UISceneUIWindowHosting *)self->_windowHostingScene _windowUpdatedProperties:self];
  }

  v9 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v9 = blockCopy;
  }

  if (v7)
  {
    windowScene = [(UIWindow *)self windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager updateStatusBarAppearance];

    windowScene2 = [(UIWindow *)self windowScene];
    _systemAppearanceManager = [windowScene2 _systemAppearanceManager];
    [_systemAppearanceManager updateUserInterfaceStyle];

    v9 = blockCopy;
  }
}

- (id)_rootViewConstraintsUpdateIfNecessaryForView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (superview != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:2473 description:@"Trying to create rootViewConstraints for a view that isn't a subview of the window"];
  }

  _rootViewConstraints = [(UIWindow *)self _rootViewConstraints];
  if (!_rootViewConstraints)
  {
    goto LABEL_8;
  }

  v8 = _rootViewConstraints;
  lastObject = [_rootViewConstraints lastObject];
  v10 = lastObject;
  if (lastObject)
  {
    lastObject = [objc_msgSend(lastObject "firstItem")];
  }

  v11 = lastObject;

  if (v11 != viewCopy)
  {
    [(UIWindow *)self _setRootViewConstraints:0];

LABEL_8:
    v12 = MEMORY[0x1E695DEC8];
    v13 = [MEMORY[0x1E69977A0] constraintWithItem:viewCopy attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
    v14 = [MEMORY[0x1E69977A0] constraintWithItem:viewCopy attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:0.0];
    v15 = [MEMORY[0x1E69977A0] constraintWithItem:viewCopy attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    v16 = [MEMORY[0x1E69977A0] constraintWithItem:viewCopy attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
    v8 = [v12 arrayWithObjects:{v13, v14, v15, v16, 0}];

    [(UIWindow *)self _setRootViewConstraints:v8];
  }

  [(UIWindow *)self _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];

  return v8;
}

void __47__UIWindow_addRootViewControllerViewIfPossible__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_setHidden:(BOOL)hidden forced:(BOOL)forced
{
  hiddenCopy = hidden;
  windowFlags = self->_windowFlags;
  if ((*&windowFlags & 0x2000000) != 0)
  {
    self->_windowFlags = (*&windowFlags & 0xFFFFFFFFFDFFFFFFLL);
    v8 = 1;
    if (hidden)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  forcedCopy = forced;
  v8 = [(UIView *)self isHidden]^ hidden;
  *&self->_windowFlags &= ~0x2000000uLL;
  if ((v8 & 1) != 0 || forcedCopy)
  {
    if (hiddenCopy)
    {
LABEL_5:
      [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:1];
      if (qword_1EA968DE8 == self)
      {
        qword_1EA968DE8 = 0;
        if (!v8)
        {
          return;
        }
      }

      else if (!v8)
      {
        return;
      }

      _UIViewRecursivelyApplyBlockToSubtreesWithMotionEffects(self, &__block_literal_global_1463_0);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIWindowDidBecomeHiddenNotification" object:self];

      _focusSystem = [(UIView *)self _focusSystem];
      [_focusSystem _focusEnvironmentWillDisappear:self];

LABEL_27:
      if ((*(&self->super._viewFlags + 28) & 2) == 0)
      {
        [(UIView *)self _notifySubtreeVisibilityDidChange:1 isRoot:?];
      }

      return;
    }

LABEL_9:
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __30__UIWindow__setHidden_forced___block_invoke;
    v22[3] = &unk_1E70FCDA0;
    v22[4] = self;
    v22[5] = &v23;
    [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:0 actionBlock:v22];
    if (*(v24 + 24) == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);

      if (WeakRetained)
      {
        _deferredOrientationUpdate = [(UIWindow *)self _deferredOrientationUpdate];

        if (!_deferredOrientationUpdate)
        {
          -[UIWindow _updateToInterfaceOrientation:duration:force:](self, "_updateToInterfaceOrientation:duration:force:", [UIApp _statusBarOrientationForWindow:self], 1, 0.0);
        }
      }
    }

    if (v8)
    {
      [(UIWindow *)self _updateWindowTraits];
      _UIViewRecursivelyApplyBlockToSubtreesWithMotionEffects(self, &__block_literal_global_1467_0);
      _UIPencilEventRequestBarrelFocusIfAbleForWindow(self, 1);
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"UIWindowDidBecomeVisibleNotification" object:self];
    }

    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    _eventDeferringManager = [_windowHostingScene _eventDeferringManager];

    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    v15 = [(_UIEventDeferringManager *)_eventDeferringManager fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:keyboardFocusEnvironment];

    screen = [(UIWindow *)self screen];
    _isMainLikeScreen = [screen _isMainLikeScreen];
    if (v15 == self)
    {
      v18 = _isMainLikeScreen;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (![(UIView *)self _shouldInformFocusAboutBecomingVisible])
      {
        goto LABEL_23;
      }

      _focusSystem2 = [(UIView *)self _focusSystem];
      [_focusSystem2 _focusEnvironmentDidAppear:self];
    }

    else
    {
      _focusSystem2 = [(UIView *)self _focusSystem];
      [_focusSystem2 setNeedsFocusUpdate];
    }

LABEL_23:
    _Block_object_dispose(&v23, 8);
    if (!v8)
    {
      return;
    }

    goto LABEL_27;
  }
}

uint64_t __30__UIWindow__setHidden_forced___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 440));
  if (WeakRetained)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1 + 32) + 560) != 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = *(a1 + 32);

  return [v4 addRootViewControllerViewIfPossible];
}

- (void)makeKeyAndOrderFront:(id)front
{
  [(UIWindow *)self setHidden:0];

  [(UIWindow *)self makeKeyWindow];
}

- (void)orderFront:(id)front
{
  [(UIWindow *)self setHidden:0];
  if ((*&self->_windowFlags & 0x40) == 0)
  {

    [(UIWindow *)self makeKeyWindow];
  }
}

- (void)_removeAllViewControllersFromWindowHierarchyFromDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  v29 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    if (deallocCopy)
    {
      rootViewController = [(UIWindow *)self rootViewController];
      [rootViewController _prepareForWindowDealloc];
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__UIWindow__removeAllViewControllersFromWindowHierarchyFromDealloc___block_invoke;
      v27[3] = &unk_1E70F3590;
      v27[4] = self;
      [UIViewController _performWithoutDeferringTransitions:v27];
    }
  }

  _rootPresentationController = [(UIWindow *)self _rootPresentationController];

  if (_rootPresentationController)
  {
    _rootPresentationController2 = [(UIWindow *)self _rootPresentationController];
    presented = [_rootPresentationController2 presented];

    if (presented)
    {
      if (deallocCopy)
      {
        _rootPresentationController3 = [(UIWindow *)self _rootPresentationController];
        [_rootPresentationController3 _prepareForWindowDeallocRecursively:0];
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __68__UIWindow__removeAllViewControllersFromWindowHierarchyFromDealloc___block_invoke_2;
        v26[3] = &unk_1E70F3590;
        v26[4] = self;
        [UIViewController _performWithoutDeferringTransitions:v26];
      }
    }

    [(UIWindow *)self _setRootPresentationController:0];
  }

  else if ([(UIViewController *)self->_rootViewController isViewLoaded])
  {
    view = [(UIViewController *)self->_rootViewController view];
    superview = [view superview];

    if (superview == self)
    {
      view2 = [(UIViewController *)self->_rootViewController view];
      [view2 removeFromSuperview];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  rootViewController = self->_rootViewController;

  if (WeakRetained == rootViewController)
  {
    [(UIWindow *)self _setDelegateViewController:0];
  }

  subviews = [(UIView *)self subviews];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [subviews countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(subviews);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        v21 = [UIViewController viewControllerForView:v20];
        if (v21)
        {
        }

        else
        {
          NSClassFromString(&cfstr_Uidimmingview.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        [v20 removeFromSuperview];
      }

      v17 = [subviews countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v17);
  }
}

void __68__UIWindow__removeAllViewControllersFromWindowHierarchyFromDealloc___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __68__UIWindow__removeAllViewControllersFromWindowHierarchyFromDealloc___block_invoke_2(uint64_t a1)
{
  v3 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];
  v2 = [*(a1 + 32) _rootPresentationController];
  [v2 _dismissWithAnimationController:v3 interactionController:0 animated:0 handoffData:0];
}

- (void)setRootViewController:(UIViewController *)rootViewController
{
  v5 = rootViewController;
  if (self->_rootViewController != v5)
  {
    v18 = v5;
    v6 = [(UIViewController *)v5 _preferredInterfaceOrientationGivenCurrentOrientation:[(UIWindow *)self _initialGuessInterfaceOrientation]];
    _existingView = [(UIViewController *)v18 _existingView];
    if (_existingView)
    {
      _lastKnownInterfaceOrientation = [(UIViewController *)v18 _lastKnownInterfaceOrientation];
    }

    else
    {
      _lastKnownInterfaceOrientation = 0;
    }

    [(UIWindow *)self _removeAllViewControllersFromWindowHierarchyFromDealloc:0];
    v9 = self->_rootViewController;
    v10 = objc_opt_self();
    v11 = self->_rootViewController;
    if (v11)
    {
      objc_storeWeak(&v11->_windowOfRootViewController, 0);
    }

    screen = [(UIWindow *)self screen];
    _userInterfaceIdiom = [screen _userInterfaceIdiom];
    screen2 = [(UIWindow *)self screen];
    [(UIViewController *)v18 __willChangeToIdiom:_userInterfaceIdiom onScreen:screen2];

    objc_storeStrong(&self->_rootViewController, rootViewController);
    v15 = self->_rootViewController;
    if (v15)
    {
      objc_storeWeak(&v15->_windowOfRootViewController, self);
    }

    if ([(UIWindow *)self _shouldInstallRootPresentationController])
    {
      v16 = [[_UIRootPresentationController alloc] initWithPresentedViewController:v18 presentingWindow:self];
      [(UIWindow *)self _setRootPresentationController:v16];

      [(UIWindow *)self _didCreateRootPresentationController];
    }

    if ([(UIView *)self isHidden])
    {
      if (dyld_program_sdk_at_least())
      {
        [(UIViewController *)self->_rootViewController _tryBecomeRootViewControllerInWindow:?];
      }
    }

    else
    {
      [(UIWindow *)self addRootViewControllerViewIfPossible];
    }

    if (v6 != _lastKnownInterfaceOrientation)
    {
      _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];

      if (!_orientationTransactionToken)
      {
        [(UIWindow *)self _updateToInterfaceOrientation:v6 duration:1 force:0.0];
      }
    }

    [(UIResponder *)self _didChangeDeepestActionResponder];
    v5 = v18;
  }
}

- (_UICornerInsets)_normalizedCornerSafeAreaInsets
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  [(UIWindow *)self _sceneSafeAreaCornerInsets];
  [(UIWindow *)self _sceneReferenceBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  Width = v11;
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  if (([(UIWindow *)self interfaceOrientation]- 3) <= 1)
  {
    v32.origin.x = v6;
    v32.origin.y = v8;
    v32.size.width = v10;
    v32.size.height = Width;
    Height = CGRectGetHeight(v32);
    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = Width;
    Width = CGRectGetWidth(v33);
    v10 = Height;
  }

  retstr->bottomRight = 0u;
  retstr->topRight = 0u;
  retstr->topLeft = 0u;
  retstr->bottomLeft = 0u;
  [(UIView *)self frame];
  v35.origin.x = v16;
  v35.origin.y = v17;
  v35.size.width = v18;
  v35.size.height = v19;
  v34.origin.x = v13;
  v34.origin.y = v14;
  v34.size.width = v10;
  v34.size.height = Width;
  result = CGRectContainsRect(v34, v35);
  if (result)
  {
    [(UIView *)self frame];
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    v27[3] = v31;
    _UICornerInsetsPropagatedToChildRect(v27, retstr, v13, v14, v10, Width, v21, v22, v23, v24);
  }

  else
  {
    v25 = v29;
    retstr->topLeft = v28;
    retstr->bottomLeft = v25;
    v26 = v31;
    retstr->bottomRight = v30;
    retstr->topRight = v26;
  }

  return result;
}

- (_UICornerInsets)_safeAreaCornerInsets
{
  if ((*(&self->_windowFlags + 4) & 4) == 0 && [(UIWindow *)self _updatesSafeAreaInsetsOnRead])
  {
    *&self->_windowFlags |= 0x400000000uLL;
    [(UIWindow *)self _normalizedCornerSafeAreaInsets];
    [(UIView *)self _setSafeAreaCornerInsets:v6];
    *&self->_windowFlags &= ~0x400000000uLL;
  }

  v5.receiver = self;
  v5.super_class = UIWindow;
  return [(_UICornerInsets *)&v5 _safeAreaCornerInsets];
}

- (UIEdgeInsets)_sceneSafeAreaInsetsIncludingStatusBar:(BOOL)bar
{
  if (!self->_windowHostingScene)
  {
    v13 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v7 = 0.0;
    goto LABEL_11;
  }

  barCopy = bar;
  v5 = [(UIWindow *)self _interfaceOrientationForSceneSafeAreaInsetsIncludingStatusBar:?];
  [(_UISceneUIWindowHosting *)self->_windowHostingScene _safeAreaInsetsForInterfaceOrientation:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (![(UIWindow *)self _isHostedInAnotherProcess])
  {
    traitCollection = [(UIWindow *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] != 3)
    {
      windowScene = [(UIWindow *)self windowScene];
      if (v5 == [windowScene _interfaceOrientation])
      {
        v16 = [UIApp _isStatusBarEffectivelyHiddenForContentOverlayInsetsForWindow:self];

        if (barCopy && (v16 & 1) == 0)
        {
          v17 = __UIStatusBarManagerForWindow(self);
          [v17 statusBarHeight];
          v19 = v18;

          v7 = fmax(v7, v19);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  v20 = v7;
  v21 = v9;
  v22 = v11;
  v23 = v13;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (_UICornerInsets)_sceneSafeAreaCornerInsets
{
  if (*&self[12].topRight.height)
  {
    selfCopy = self;
    _orientationForViewTransform = [(_UICornerInsets *)self _orientationForViewTransform];
    retstr->topLeft = 0u;
    retstr->bottomLeft = 0u;
    retstr->bottomRight = 0u;
    retstr->topRight = 0u;
    self = *&selfCopy[12].topRight.height;
    if (self)
    {

      return [(_UICornerInsets *)self _safeAreaCornerInsetsForInterfaceOrientation:_orientationForViewTransform];
    }
  }

  else
  {
    retstr->bottomRight = 0u;
    retstr->topRight = 0u;
    retstr->topLeft = 0u;
    retstr->bottomLeft = 0u;
  }

  return self;
}

- (CGRect)_usableBounds
{
  [(UIWindow *)self _usableSceneBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIWindow *)self _sceneSafeAreaInsetsIncludingStatusBar:1];
  [(UIWindow *)self convertRect:0 fromWindow:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UIView *)self bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v34 = v22;

  return CGRectIntersection(*&v31, *&v24);
}

- (void)_sceneSettingsSafeAreaCornerInsetsDidChange
{
  [(UIWindow *)self _normalizedCornerSafeAreaInsets];
  [(UIView *)self _setSafeAreaCornerInsets:&v4 updateSubviewsDuringNextLayoutPass:_UIFloatingBarEnabled()];
  [(UIView *)self _recursiveEagerlyUpdateSafeAreaInsetsUntilViewController];
  rootViewController = [(UIWindow *)self rootViewController];
  [rootViewController _sceneSettingsSafeAreaInsetsDidChangeForWindow:self];
}

- (CGPoint)warpPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!qword_1EA968E00)
  {
    goto LABEL_70;
  }

  Value = CFDictionaryGetValue(qword_1EA968E00, self);
  if (!Value)
  {
    goto LABEL_70;
  }

  v7 = Value;
  if (!CFArrayGetCount(Value))
  {
    goto LABEL_70;
  }

  [(UIWindow *)self _chargeMultiplicationFactor];
  v9 = v8;
  Count = CFArrayGetCount(v7);
  v11 = Count;
  if (!Count)
  {
    goto LABEL_70;
  }

  v12 = 0;
  v13 = 0;
  v66 = v9 * 40.0;
  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v62 = -(v9 * 15.0);
  v63 = v9 * 15.0;
  v68 = y;
  v69 = x;
  v67 = v9;
  v64 = v15;
  v65 = *MEMORY[0x1E695F060];
  while (1)
  {
    v16 = v13;
    v13 = CFArrayGetValueAtIndex(v7, v12);

    if (![v13 _isChargeEnabled])
    {
      goto LABEL_68;
    }

    if (![(UIView *)v13 _isAlphaHittableAndHasAlphaHittableAncestors])
    {
      goto LABEL_68;
    }

    if ([v13 isHiddenOrHasHiddenAncestor])
    {
      goto LABEL_68;
    }

    [v13 bounds];
    if (v18 == v14 && v17 == v15)
    {
      goto LABEL_68;
    }

    superview = [v13 superview];
    [v13 frame];
    [superview convertRect:0 toView:?];
    v21 = v20;
    v23 = v22;
    width = v24;
    height = v26;

    [v13 charge];
    v29 = v9 * v28;
    if (v29 <= 0.0)
    {
      v32 = 500.0;
    }

    else
    {
      v30 = width <= height ? width : height;
      v31 = v29 * (v30 * 0.5);
      v72.origin.x = v21;
      v72.origin.y = v23;
      v72.size.width = width;
      v72.size.height = height;
      v73 = CGRectInset(v72, v31, v31);
      v21 = v73.origin.x;
      v23 = v73.origin.y;
      width = v73.size.width;
      height = v73.size.height;
      v32 = 350.0;
    }

    v74.origin.x = v21;
    v74.origin.y = v23;
    v74.size.width = width;
    v74.size.height = height;
    v71.x = x;
    v71.y = y;
    if (CGRectContainsPoint(v74, v71))
    {
      break;
    }

    v33 = v29 * v32;
    UIDistanceBetweenPointAndRect(x, y, v21, v23, width, height);
    if (v33 <= 0.0 || v34 <= 2.0)
    {
      v36 = fabs(v34);
      v38 = v33 < 0.0 && v36 >= 2.22044605e-16 && v34 < v66;
    }

    else
    {
      v38 = v34 < v66;
    }

    v9 = v67;
    if (v38)
    {
      v39 = v34;
      v40 = v33 / v39;
      v41 = fabs(v40);
      v42 = v62;
      if (v40 >= 0.0)
      {
        v42 = v63;
      }

      if (v41 <= v63)
      {
        v43 = v40;
      }

      else
      {
        v43 = v42;
      }

      if (y <= height + v23)
      {
        v45 = 0.0;
        if (y <= v23)
        {
          v48 = width + v21;
          if (x <= v21 || (v45 = 1.0, x >= v48))
          {
            v46 = y - v23;
            if (x <= v21)
            {
              goto LABEL_46;
            }

            v47 = x - v48;
LABEL_47:
            v49 = v46 / v47;
            v45 = atanf(fabsf(v49)) / 1.57079633;
          }
        }
      }

      else
      {
        v44 = width + v21;
        if (x <= v21 || (v45 = 1.0, x >= v44))
        {
          v46 = y - (height + v23);
          if (x > v21)
          {
            v47 = x - v44;
            goto LABEL_47;
          }

LABEL_46:
          v47 = x - v21;
          goto LABEL_47;
        }
      }

      v50 = v43 * (1.0 - v45);
      v51 = v43 * v45;
      v52 = width * 0.5 + v21;
      v53 = height * 0.5 + v23;
      if (v50 >= v52 - v69)
      {
        v54 = v50;
      }

      else
      {
        v54 = v52 - v69;
      }

      v55 = fmin(v54, 0.0);
      v56 = -v50;
      if (v52 - v69 <= v56)
      {
        v56 = v52 - v69;
      }

      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      if (x >= v52)
      {
        v56 = v55;
      }

      if (v51 >= v53 - v68)
      {
        v57 = v51;
      }

      else
      {
        v57 = v53 - v68;
      }

      v58 = fmin(v57, 0.0);
      v59 = -v51;
      if (v53 - v68 <= v59)
      {
        v59 = v53 - v68;
      }

      if (v59 < 0.0)
      {
        v59 = 0.0;
      }

      if (y >= v53)
      {
        v59 = v58;
      }

      v68 = v68 + v59;
      v69 = v69 + v56;
    }

    v15 = v64;
    v14 = v65;
LABEL_68:
    if (v11 == ++v12)
    {
      goto LABEL_69;
    }
  }

  v68 = y;
  v69 = x;
LABEL_69:

  y = v68;
  x = v69;
LABEL_70:
  v60 = x;
  v61 = y;
  result.y = v61;
  result.x = v60;
  return result;
}

- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)point withEvent:(id)event excludingWindow:(id)window
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  windowCopy = window;
  [(UIWindow *)self convertPoint:0 toWindow:x, y];
  [(UIWindow *)self convertPoint:0 fromWindow:_UIAdjustedLocationForScreenTouchLocation(self, v11)];
  v13 = v12;
  v15 = v14;

  if (windowCopy == self)
  {
    v17 = 0;
  }

  else
  {
    v16 = [(UIView *)self hitTest:eventCopy withEvent:v13, v15];
    [v16 convertPoint:self fromView:{v13, v15}];
    if ([v16 _canHandleStatusBarTouchAtLocation:?])
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)_isScrollingEnabledForView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    isScrollEnabled = [viewCopy isScrollEnabled];
  }

  else
  {
    NSLog(&cfstr_ViewRegistered.isa, viewCopy);
    isScrollEnabled = 0;
  }

  return isScrollEnabled;
}

- (void)_scrollToTopViewsUnderScreenPointIfNecessary:(CGPoint)necessary resultHandler:(id)handler
{
  y = necessary.y;
  x = necessary.x;
  v75 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (qword_1EA968E08)
  {
    v45 = handlerCopy;
    selfCopy = self;
    [(UIWindow *)selfCopy _registeredScrollToTopViews];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v8 = v70 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v9)
    {
      v46 = 0;
      v10 = *v70;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v70 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v69 + 1) + 8 * i);
          v13 = [UIViewController _viewControllerForFullScreenPresentationFromView:v12];
          activePresentationController = [v13 activePresentationController];
          if (activePresentationController)
          {
            while (1)
            {
              activePresentationController2 = [v13 activePresentationController];
              _shouldPresentedViewControllerServeAsBaseForScrollToTop = [activePresentationController2 _shouldPresentedViewControllerServeAsBaseForScrollToTop];

              if (_shouldPresentedViewControllerServeAsBaseForScrollToTop)
              {
                break;
              }

              presentingViewController = [v13 presentingViewController];

              activePresentationController = [presentingViewController activePresentationController];
              v13 = presentingViewController;
              if (!activePresentationController)
              {
                goto LABEL_12;
              }
            }
          }

          presentingViewController = v13;
LABEL_12:
          _viewControllerForAncestor = [v12 _viewControllerForAncestor];
          if (_viewControllerForAncestor)
          {
            while (_viewControllerForAncestor != presentingViewController)
            {
              parentViewController = [_viewControllerForAncestor parentViewController];
              v20 = parentViewController;
              if (parentViewController)
              {
                presentingViewController2 = parentViewController;
              }

              else
              {
                presentingViewController2 = [_viewControllerForAncestor presentingViewController];
              }

              v22 = presentingViewController2;

              _viewControllerForAncestor = v22;
              if (!v22)
              {
                goto LABEL_23;
              }
            }

            if (v46)
            {
              [v46 addObject:v12];
            }

            else
            {
              v46 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
            }
          }

LABEL_23:
        }

        v9 = [v8 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v9);
    }

    else
    {
      v46 = 0;
    }

    if ([v46 count])
    {
      v23 = v46;

      v8 = v23;
    }

    array = [MEMORY[0x1E695DF70] array];
    [(UIWindow *)selfCopy convertPoint:0 fromWindow:x, y];
    v26 = v25;
    v28 = v27;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v29 = v8;
    v30 = 0;
    v31 = [v29 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v31)
    {
      v32 = *v66;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v66 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v65 + 1) + 8 * j);
          if ([(UIView *)v34 _isInVisibleHierarchy])
          {
            if ([(UIWindow *)selfCopy _isScrollingEnabledForView:v34])
            {
              [v34 convertPoint:0 fromView:{v26, v28}];
              v36 = v35;
              [v34 bounds];
              ++v30;
              if (v37 <= v36)
              {
                [v34 bounds];
                if (v38 + v39 >= v36)
                {
                  [array addObject:v34];
                }
              }
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v31);
    }

    v40 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v40 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || v30 == 1 || dyld_program_sdk_at_least())
    {
      if (v30 >= 2)
      {
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __71__UIWindow__scrollToTopViewsUnderScreenPointIfNecessary_resultHandler___block_invoke;
        v64[3] = &unk_1E711E578;
        v64[4] = selfCopy;
        *&v64[5] = v26;
        *&v64[6] = v28;
        [array sortUsingComparator:v64];
      }

      objectEnumerator = [array objectEnumerator];
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x3032000000;
      v62[3] = __Block_byref_object_copy__168;
      v62[4] = __Block_byref_object_dispose__168;
      v63 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x3042000000;
      v59 = __Block_byref_object_copy__451;
      v60 = __Block_byref_object_dispose__452;
      v61 = 0;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __71__UIWindow__scrollToTopViewsUnderScreenPointIfNecessary_resultHandler___block_invoke_453;
      v48[3] = &unk_1E711E5A0;
      v51 = v45;
      v52 = v62;
      v43 = objectEnumerator;
      v49 = v43;
      v54 = x;
      v55 = y;
      v50 = selfCopy;
      v53 = &v56;
      v44 = [v48 copy];
      objc_storeWeak(v57 + 5, v44);
      v44[2](v44, 0);

      _Block_object_dispose(&v56, 8);
      objc_destroyWeak(&v61);
      _Block_object_dispose(v62, 8);
    }

    handlerCopy = v45;
  }
}

uint64_t __71__UIWindow__scrollToTopViewsUnderScreenPointIfNecessary_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 superview];
  [v5 frame];
  [v8 convertRect:*(a1 + 32) toView:?];
  [v7 convertRect:0 toWindow:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *(a1 + 32);
  v18 = [v6 superview];
  [v6 frame];
  [v18 convertRect:*(a1 + 32) toView:?];
  [v17 convertRect:0 toWindow:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (+[UIWindow _transformLayerRotationsAreEnabled])
  {
    [v5 frame];
    v28 = v27;
    v30 = v29;
    [v5 safeAreaInsets];
    v32 = v28 + v31;
    v34 = v30 - (v31 + v33);
    [v6 frame];
    v36 = v35;
    v38 = v37;
    [v6 safeAreaInsets];
    v40 = v36 + v39;
    v42 = v38 - (v39 + v41);
    v43 = *(a1 + 40);
    v44 = v32 <= v43;
    if (v32 + v34 < v43)
    {
      v44 = 0;
    }

    v45 = v40 > v43;
    if (v40 + v42 < v43)
    {
      v45 = 1;
    }

    if (v12 >= v22)
    {
      v46 = v45 && v44;
    }

    else
    {
      v46 = v44 || v45;
    }
  }

  else
  {
    v47 = [UIApp _statusBarOrientationForWindow:*(a1 + 32)];
    v46 = v10 < v20;
    v48 = v10 + v14 > v20 + v24;
    v49 = v12 < v22;
    if (v47 == 2)
    {
      v49 = v12 + v16 > v22 + v26;
    }

    if (v47 != 3)
    {
      v48 = v49;
    }

    if (v47 != 4)
    {
      v46 = v48;
    }
  }

  if (v46)
  {
    v50 = -1;
  }

  else
  {
    v50 = 1;
  }

  return v50;
}

void __71__UIWindow__scrollToTopViewsUnderScreenPointIfNecessary_resultHandler___block_invoke_453(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    v4 = *(v3 + 16);
LABEL_11:

    v4();
    return;
  }

  v5 = [*(a1 + 32) nextObject];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (!v8)
  {
    v12 = *(a1 + 48);
    if (!v12)
    {
      return;
    }

    v4 = *(v12 + 16);
    goto LABEL_11;
  }

  v9 = [v8 window];
  v10 = *(a1 + 40);

  if (v9 == v10)
  {
    v11 = *(*(*(a1 + 56) + 8) + 40);
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
    [v11 _scrollToTopFromTouchAtScreenLocation:WeakRetained resultHandler:{*(a1 + 72), *(a1 + 80)}];
  }
}

- (void)_sendTouchesForEvent:(id)event
{
  v89 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E20);
  if (*CategoryCachedImpl)
  {
    v67 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "UIWindow sendEvent:", buf, 2u);
    }
  }

  v6 = &UIApp;
  _responderBasedEventDeliverer = [UIApp _responderBasedEventDeliverer];
  v8 = [eventCopy _respondersForWindow:self];
  v9 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E28);
  if (*v9)
  {
    v68 = *(v9 + 8);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = v8;
      _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_ERROR, "\tviews: %@", buf, 0xCu);
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v78;
    *&v12 = 134218498;
    v69 = v12;
    v70 = _responderBasedEventDeliverer;
    v71 = *v78;
    do
    {
      v15 = 0;
      v72 = v13;
      do
      {
        if (*v78 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v77 + 1) + 8 * v15);
        if (_responderBasedEventDeliverer)
        {
          [_responderBasedEventDeliverer deliverTouchesEvent:eventCopy toResponder:*(*(&v77 + 1) + 8 * v15)];
        }

        else
        {
          v17 = [eventCopy _touchesForResponder:*(*(&v77 + 1) + 8 * v15) withPhase:0];
          v18 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E30);
          if (*v18)
          {
            v38 = *(v18 + 8);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = v38;
              v40 = [v17 count];
              *buf = 67109120;
              LODWORD(v83) = v40;
              _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "\t\tBegan touch count: %d", buf, 8u);
            }
          }

          if ([v17 count])
          {
            v19 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E38);
            if (*v19)
            {
              v50 = *(v19 + 8);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v51 = v50;
                v52 = objc_opt_class();
                v53 = NSStringFromClass(v52);
                *buf = v69;
                v83 = v16;
                v84 = 2112;
                v85 = v53;
                v86 = 2112;
                v87 = v17;
                _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "\t\tCalling touchesBegan:withEvent: on view: %p (%@) with touches: %@", buf, 0x20u);
              }
            }

            [v16 touchesBegan:v17 withEvent:eventCopy];
            [*v6 _registerEstimatedTouches:v17 event:eventCopy forTouchable:v16];
          }

          v20 = [eventCopy _touchesForResponder:v16 withPhase:1];

          v21 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E40);
          if (*v21)
          {
            v41 = *(v21 + 8);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = v41;
              v43 = [v20 count];
              *buf = 67109120;
              LODWORD(v83) = v43;
              _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "\t\tMoved touch count: %d", buf, 8u);
            }
          }

          if ([v20 count])
          {
            v22 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E48);
            if (*v22)
            {
              v54 = *(v22 + 8);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = v54;
                v56 = objc_opt_class();
                v57 = NSStringFromClass(v56);
                *buf = v69;
                v83 = v16;
                v84 = 2112;
                v85 = v57;
                v86 = 2112;
                v87 = v20;
                _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "\t\tCalling touchesMoved:withEvent: on view: %p (%@) with touches: %@", buf, 0x20u);
              }
            }

            [v16 touchesMoved:v20 withEvent:eventCopy];
            [*v6 _registerEstimatedTouches:v20 event:eventCopy forTouchable:v16];
            [v16 _completeForwardingTouches:v20 phase:1 event:eventCopy];
          }

          v23 = [eventCopy _touchesForResponder:v16 withPhase:3];

          v24 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E50);
          if (*v24)
          {
            v44 = *(v24 + 8);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = v44;
              v46 = [v23 count];
              *buf = 67109120;
              LODWORD(v83) = v46;
              _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "\t\tEnded touch count: %d", buf, 8u);
            }
          }

          if ([v23 count])
          {
            v25 = v10;
            v26 = v6;
            v27 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E58);
            if (*v27)
            {
              v58 = *(v27 + 8);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v59 = v58;
                v60 = objc_opt_class();
                v61 = NSStringFromClass(v60);
                *buf = v69;
                v83 = v16;
                v84 = 2112;
                v85 = v61;
                v86 = 2112;
                v87 = v23;
                _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_ERROR, "\t\tCalling touchesEnded:withEvent: on view: %p (%@) with touches: %@", buf, 0x20u);
              }
            }

            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v28 = v23;
            v29 = [v28 countByEnumeratingWithState:&v73 objects:v81 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v74;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v74 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v73 + 1) + 8 * i);
                  if (v33)
                  {
                    v34 = *(v33 + 236);
                    if ((v34 & 8) == 0)
                    {
                      *(v33 + 236) = v34 | 8;
                    }
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v73 objects:v81 count:16];
              }

              while (v30);
            }

            [v16 touchesEnded:v28 withEvent:eventCopy];
            v6 = v26;
            [*v26 _registerEstimatedTouches:v28 event:eventCopy forTouchable:v16];
            [v16 _completeForwardingTouches:v28 phase:3 event:eventCopy];
            v10 = v25;
            _responderBasedEventDeliverer = v70;
          }

          v35 = [eventCopy _touchesForResponder:v16 withPhase:4];

          v36 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E60);
          v14 = v71;
          if (*v36)
          {
            v47 = *(v36 + 8);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = v47;
              v49 = [v35 count];
              *buf = 67109120;
              LODWORD(v83) = v49;
              _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "\t\tCanceled touch count: %d", buf, 8u);
            }
          }

          if ([v35 count])
          {
            v37 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA968E68);
            if (*v37)
            {
              v62 = *(v37 + 8);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v63 = v62;
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                *buf = v69;
                v83 = v16;
                v84 = 2112;
                v85 = v65;
                v86 = 2112;
                v87 = v35;
                _os_log_impl(&dword_188A29000, v63, OS_LOG_TYPE_ERROR, "\t\tCalling touchesCancelled on view: %p (%@) with touches: %@", buf, 0x20u);

                v14 = v71;
              }
            }

            [v16 touchesCancelled:v35 withEvent:eventCopy];
            [*v6 _registerEstimatedTouches:v35 event:eventCopy forTouchable:v16];
            [v16 _completeForwardingTouches:v35 phase:4 event:eventCopy];
          }

          v13 = v72;
        }

        ++v15;
      }

      while (v15 != v13);
      v66 = [v10 countByEnumeratingWithState:&v77 objects:v88 count:16];
      v13 = v66;
    }

    while (v66);
  }
}

- (void)_sendButtonsForEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _responderBasedEventDeliverer = [UIApp _responderBasedEventDeliverer];
  v6 = [eventCopy _respondersForWindow:self];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v24 = v6;
    v25 = _responderBasedEventDeliverer;
    v23 = *v32;
    do
    {
      v10 = 0;
      v26 = v8;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        if (_responderBasedEventDeliverer)
        {
          [_responderBasedEventDeliverer deliverPressesEvent:eventCopy toResponder:*(*(&v31 + 1) + 8 * v10)];
        }

        else
        {
          v12 = +[_UIResponderIntegrityProtection rip];
          v13 = [eventCopy _pressesForResponder:v11 withPhase:0];
          if ([v13 count])
          {
            [v12 startDeliveringPresses:v13 inPhase:0 withEvent:eventCopy];
            [v11 pressesBegan:v13 withEvent:eventCopy];
            [v12 finishedDeliveringPresses];
          }

          v14 = [eventCopy _pressesForResponder:v11 withPhase:{1, v23, v24, v25}];

          if ([v14 count])
          {
            [v12 startDeliveringPresses:v14 inPhase:1 withEvent:eventCopy];
            [v11 pressesChanged:v14 withEvent:eventCopy];
            [v12 finishedDeliveringPresses];
          }

          v15 = [eventCopy _pressesForResponder:v11 withPhase:3];

          if ([v15 count])
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v28;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v28 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v27 + 1) + 8 * i);
                  if (([v21 sentPressesEnded] & 1) == 0)
                  {
                    [v21 setSentPressesEnded:1];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v18);
            }

            [v12 startDeliveringPresses:v16 inPhase:3 withEvent:eventCopy];
            [v11 pressesEnded:v16 withEvent:eventCopy];
            [v11 _completeForwardingTouches:v16 phase:3 event:eventCopy];
            [v12 finishedDeliveringPresses];
            v6 = v24;
            _responderBasedEventDeliverer = v25;
            v9 = v23;
            v8 = v26;
          }

          v22 = [eventCopy _pressesForResponder:v11 withPhase:4];

          if ([v22 count])
          {
            [v12 startDeliveringPresses:v22 inPhase:4 withEvent:eventCopy];
            [v11 pressesCancelled:v22 withEvent:eventCopy];
            [v11 _completeForwardingTouches:v22 phase:4 event:eventCopy];
            [v12 finishedDeliveringPresses];
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }
}

- (void)sendEvent:(UIEvent *)event
{
  v130 = *MEMORY[0x1E69E9840];
  v4 = event;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDispatch", &qword_1EA968E70);
  if (*CategoryCachedImpl)
  {
    v79 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = v79;
      type = [(UIEvent *)v4 type];
      subtype = [(UIEvent *)v4 subtype];
      v83 = objc_opt_class();
      *buf = 134219010;
      v121 = type;
      v122 = 2048;
      v123 = subtype;
      v124 = 2082;
      Name = class_getName(v83);
      v126 = 2048;
      selfCopy = self;
      v128 = 1026;
      _contextId = [(UIWindow *)self _contextId];
      _os_log_impl(&dword_188A29000, v80, OS_LOG_TYPE_DEFAULT, "Sending UIEvent type: %li; subtype: %li; to window: <%{public}s: %p>; contextId: 0x%{public}X", buf, 0x30u);
    }
  }

  v6 = _UISetCurrentFallbackEnvironment(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = v6;
    v89 = v4;
    selfCopy2 = self;
    v8 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_171, @"ShowTouches", _UIInternalPreferenceUpdateBool);
    if (byte_1EA95E634)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    v10 = _UIInternalPreferenceUsesDefault(&dword_1EA95E638, @"ShowTouchesForAllProcesses", _UIInternalPreferenceUpdateBool);
    if (byte_1EA95E63C)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if (qword_1EA968F00 != -1)
    {
      dispatch_once(&qword_1EA968F00, &__block_literal_global_1574);
    }

    v85 = v4;
    if (v9)
    {
      if (qword_1EA968EF8)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v12 = qword_1EA968EF8;
        v13 = [v12 countByEnumeratingWithState:&v116 objects:buf count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v117;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v117 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v116 + 1) + 8 * i) removeFromSuperview];
            }

            v14 = [v12 countByEnumeratingWithState:&v116 objects:buf count:16];
          }

          while (v14);
        }

        v17 = qword_1EA968EE8;
        qword_1EA968EE8 = 0;

        v18 = qword_1EA968EF0;
        qword_1EA968EF0 = 0;

        allTouches = qword_1EA968EF8;
        qword_1EA968EF8 = 0;
LABEL_67:
      }

LABEL_68:

      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obja = [(UIEvent *)v89 _viewsForWindow:selfCopy2];
      v61 = [obja countByEnumeratingWithState:&v93 objects:v115 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v94;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v94 != v63)
            {
              objc_enumerationMutation(obja);
            }

            v65 = *(*(&v93 + 1) + 8 * j);
            v66 = [(UIEvent *)v89 _touchesForView:v65 withPhase:0, v84];
            v67 = [v66 count];

            if (v67)
            {
              v68 = v65;
              v69 = v65;
              if (v69)
              {
                superview = v69;
                do
                {
                  layer = [superview layer];
                  animationKeys = [layer animationKeys];
                  v90[0] = MEMORY[0x1E69E9820];
                  v90[1] = 3221225472;
                  v90[2] = __22__UIWindow_sendEvent___block_invoke;
                  v90[3] = &unk_1E70FF4D0;
                  v91 = superview;
                  v92 = layer;
                  v73 = layer;
                  v74 = superview;
                  [animationKeys enumerateObjectsUsingBlock:v90];

                  superview = [v74 superview];
                }

                while (superview);
              }
            }
          }

          v62 = [obja countByEnumeratingWithState:&v93 objects:v115 count:16];
        }

        while (v62);
      }

      _gestureEnvironment = [UIApp _gestureEnvironment];
      [(UIGestureEnvironment *)_gestureEnvironment _updateForEvent:v89 window:selfCopy2];

      [(UIWindow *)selfCopy2 _sendTouchesForEvent:v89];
      [(UIEvent *)v89 timestamp];
      selfCopy2->_lastTouchTimestamp = v76;

      v6 = v84;
      v4 = v85;
      goto LABEL_90;
    }

    if (byte_1EA968DD1 & v11)
    {
      goto LABEL_68;
    }

    v21 = &beginUpdates___s_category[28];
    if (!qword_1EA968EE8)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v23 = qword_1EA968EE8;
      qword_1EA968EE8 = weakToStrongObjectsMapTable;

      v24 = [MEMORY[0x1E695DFA8] set];
      v25 = qword_1EA968EF0;
      qword_1EA968EF0 = v24;

      v26 = [MEMORY[0x1E695DFA8] set];
      v27 = qword_1EA968EF8;
      qword_1EA968EF8 = v26;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    allTouches = [(UIEvent *)v89 allTouches];
    v28 = [allTouches countByEnumeratingWithState:&v109 objects:buf count:16];
    if (!v28)
    {
      goto LABEL_67;
    }

    v29 = v28;
    obj = *v110;
    v86 = allTouches;
LABEL_29:
    v30 = 0;
    while (1)
    {
      if (*v110 != obj)
      {
        objc_enumerationMutation(allTouches);
      }

      v31 = *(*(&v109 + 1) + 8 * v30);
      phase = [v31 phase];
      [v31 force];
      v34 = v33;
      v35 = v33 * 0.6 + 0.4;
      if (v34 <= 0.0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v35;
      }

      if ([v31 type] == 2)
      {
        v36 = v34 * 0.4 / 4.2 + 0.2;
      }

      memset(&v108, 0, sizeof(v108));
      CGAffineTransformMakeScale(&v108, v36, v36);
      [v31 locationInView:selfCopy2];
      v38 = v37;
      v40 = v39;
      if (phase)
      {
        v41 = [v21[477] objectForKey:v31];
        if (v41)
        {
          v42 = v41;
          if ((phase - 3) > 1)
          {
            v114 = v108;
            [(UIView *)v41 setTransform:&v114];
            [(UIView *)v42 setCenter:v38, v40];
            superview2 = [(UIView *)v42 superview];

            if (superview2 == selfCopy2)
            {
              [(UIView *)selfCopy2 bringSubviewToFront:v42];
            }

            else
            {
              [(UIView *)selfCopy2 addSubview:v42];
            }
          }

          else
          {
            v103[0] = MEMORY[0x1E69E9820];
            v103[1] = 3221225472;
            v103[2] = ____updateTouchVisualisation_block_invoke_2;
            v103[3] = &unk_1E70F3590;
            v104 = v41;
            v101[0] = MEMORY[0x1E69E9820];
            v101[1] = 3221225472;
            v101[2] = ____updateTouchVisualisation_block_invoke_3;
            v101[3] = &unk_1E70F5AC0;
            v42 = v104;
            v102 = v42;
            [UIView animateWithDuration:4 delay:v103 options:v101 animations:0.12 completion:0.0];
            [qword_1EA968EF8 removeObject:v42];
            [qword_1EA968EE8 removeObjectForKey:v31];
            objectEnumerator = [qword_1EA968EE8 objectEnumerator];
            nextObject = [objectEnumerator nextObject];
            if (nextObject)
            {

              goto LABEL_42;
            }

            v48 = [qword_1EA968EF8 count];

            if (v48)
            {
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              objectEnumerator = qword_1EA968EF8;
              v49 = [objectEnumerator countByEnumeratingWithState:&v97 objects:&v116 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v98;
                do
                {
                  for (k = 0; k != v50; ++k)
                  {
                    if (*v98 != v51)
                    {
                      objc_enumerationMutation(objectEnumerator);
                    }

                    v53 = *(*(&v97 + 1) + 8 * k);
                    [v53 removeFromSuperview];
                    [qword_1EA968EF0 addObject:v53];
                  }

                  v50 = [objectEnumerator countByEnumeratingWithState:&v97 objects:&v116 count:16];
                }

                while (v50);
                v21 = beginUpdates___s_category + 224;
                allTouches = v86;
              }

LABEL_42:
            }
          }

LABEL_64:
        }
      }

      else
      {
        NSClassFromString(&cfstr_Uirootwindow.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          anyObject = [qword_1EA968EF0 anyObject];
          if (anyObject)
          {
            v46 = anyObject;
            [qword_1EA968EF0 removeObject:anyObject];
          }

          else
          {
            v54 = [_UITouchVisualizationView alloc];
            v131.size.width = 0.0;
            v131.size.height = 0.0;
            v131.origin.x = v38;
            v131.origin.y = v40;
            v132 = CGRectInset(v131, -22.0, -22.0);
            v46 = [(UIView *)v54 initWithFrame:v132.origin.x, v132.origin.y, v132.size.width, v132.size.height];
            [(UIView *)v46 setUserInteractionEnabled:0];
            layer2 = [(UIView *)v46 layer];
            [layer2 setAllowsHitTesting:0];
            [layer2 setBorderWidth:2.0];
            [layer2 setCornerRadius:22.0];
          }

          if ([v31 type] == 2)
          {
            v56 = [UIColor colorWithHue:0.95 saturation:0.46 brightness:0.99 alpha:0.4];
            [(UIView *)v46 setBackgroundColor:v56];

            [UIColor colorWithHue:0.95 saturation:0.46 brightness:0.5 alpha:0.8];
          }

          else
          {
            v57 = [UIColor colorWithWhite:1.0 alpha:0.6];
            [(UIView *)v46 setBackgroundColor:v57];

            [UIColor colorWithWhite:0.0 alpha:0.6];
          }
          v58 = ;
          cGColor = [v58 CGColor];
          layer3 = [(UIView *)v46 layer];
          [layer3 setBorderColor:cGColor];

          CGAffineTransformMakeScale(&v114, 0.001, 0.001);
          v113 = v114;
          [(UIView *)v46 setTransform:&v113];
          [(UIView *)v46 setAlpha:0.0];
          [(UIView *)v46 setCenter:v38, v40];
          [(UIView *)selfCopy2 addSubview:v46];
          [qword_1EA968EE8 setObject:v46 forKey:v31];
          [qword_1EA968EF8 addObject:v46];
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v107 = v108;
          v105[2] = ____updateTouchVisualisation_block_invoke_1589;
          v105[3] = &unk_1E70F3DC8;
          v106 = v46;
          v42 = v46;
          [UIView animateWithDuration:v105 animations:0.12];

          allTouches = v86;
          goto LABEL_64;
        }
      }

      if (++v30 == v29)
      {
        v29 = [allTouches countByEnumeratingWithState:&v109 objects:buf count:16];
        if (!v29)
        {
          goto LABEL_67;
        }

        goto LABEL_29;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(UIView *)self isUserInteractionEnabled])
    {
      _gestureEnvironment2 = [UIApp _gestureEnvironment];
      [(UIGestureEnvironment *)_gestureEnvironment2 _updateForEvent:v4 window:self];

      [(UIWindow *)self _sendButtonsForEvent:v4];
    }

    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _focusResponder = [(UIWindow *)self _focusResponder];
    [(UIEvent *)v4 _sendEventToResponder:_focusResponder];
LABEL_89:

    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_88:
    _focusResponder = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)_focusResponder _updateForEvent:v4 window:self];
    goto LABEL_89;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIEvent *)v4 setNeedsUpdateForWindow:self];
    goto LABEL_88;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_88;
  }

  firstResponder = [(UIWindow *)self firstResponder];
  if (!firstResponder)
  {
    firstResponder = [(UIWindow *)self _deepestActionResponder];
  }

  [(UIEvent *)v4 _sendEventToResponder:firstResponder];

LABEL_90:
  _UIRestorePreviousFallbackEnvironment(v6);
}

void __22__UIWindow_sendEvent___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  CanBeConsideredFinished = _UIViewLayerAnimationCanBeConsideredFinished(*(a1 + 32), v9);
  v4 = v9;
  if (CanBeConsideredFinished)
  {
    v5 = [*(a1 + 40) animationForKey:v9];
    v6 = [v5 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v5 delegate];
      [v8 _acceptEarlyAnimationCutoff:v5];
    }

    v4 = v9;
  }
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (space && space != self)
  {
    v10 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      _window = [space _window];

      if (_window == self)
      {
        v43.receiver = self;
        v43.super_class = UIWindow;
        [(UIView *)&v43 convertRect:space toCoordinateSpace:x, y, width, height];
LABEL_12:
        x = v12;
        y = v13;
        width = v14;
        height = v15;
        goto LABEL_13;
      }
    }

    else
    {
    }

    windowHostingScene = self->_windowHostingScene;
    _coordinateSpace = [(_UISceneUIWindowHosting *)windowHostingScene _coordinateSpace];
    layer = [(UIView *)self layer];
    _layerForCoordinateSpaceConversion = [(UIWindow *)self _layerForCoordinateSpaceConversion];
    [layer convertRect:_layerForCoordinateSpaceConversion toLayer:{x, y, width, height}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    _settingsScene = [(_UISceneUIWindowHosting *)windowHostingScene _settingsScene];
    _FBSScene = [_settingsScene _FBSScene];
    if (_FBSScene)
    {
    }

    else
    {
      _FBSScene2 = [(_UISceneUIWindowHosting *)windowHostingScene _FBSScene];

      if (_FBSScene2)
      {
        goto LABEL_11;
      }

      [(UIWindow *)self _sceneReferenceBounds];
      v36 = v35;
      v38 = v37;
      viewOrientation = self->_viewOrientation;
      _settingsScene = [(_UISceneUIWindowHosting *)windowHostingScene _effectiveSettings];
      v21 = _UIWindowConvertRectFromOrientationToOrientation(viewOrientation, [_settingsScene interfaceOrientation], v21, v23, v25, v27, v36, v38);
      v23 = v40;
      v25 = v41;
      v27 = v42;
    }

LABEL_11:
    [_coordinateSpace convertRect:space toCoordinateSpace:{v21, v23, v25, v27}];
    goto LABEL_12;
  }

LABEL_13:
  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (space && space != self)
  {
    v10 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      _window = [space _window];

      if (_window == self)
      {
        v45.receiver = self;
        v45.super_class = UIWindow;
        [(UIView *)&v45 convertRect:space fromCoordinateSpace:x, y, width, height];
        x = v12;
        y = v13;
        width = v14;
        height = v15;
        goto LABEL_12;
      }
    }

    else
    {
    }

    windowHostingScene = self->_windowHostingScene;
    [-[_UISceneUIWindowHosting _coordinateSpace](windowHostingScene "_coordinateSpace")];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    _settingsScene = [(_UISceneUIWindowHosting *)windowHostingScene _settingsScene];
    _FBSScene = [_settingsScene _FBSScene];
    if (_FBSScene)
    {
    }

    else
    {
      _FBSScene2 = [(_UISceneUIWindowHosting *)windowHostingScene _FBSScene];

      if (_FBSScene2)
      {
        goto LABEL_11;
      }

      [(UIWindow *)self _sceneReferenceBounds];
      v39 = v38;
      v41 = v40;
      _settingsScene = [(_UISceneUIWindowHosting *)windowHostingScene _effectiveSettings];
      v18 = _UIWindowConvertRectFromOrientationToOrientation([_settingsScene interfaceOrientation], self->_viewOrientation, v18, v20, v22, v24, v39, v41);
      v20 = v42;
      v22 = v43;
      v24 = v44;
    }

LABEL_11:
    layer = [(UIView *)self layer];
    _layerForCoordinateSpaceConversion = [(UIWindow *)self _layerForCoordinateSpaceConversion];
    [layer convertRect:_layerForCoordinateSpaceConversion fromLayer:{v18, v20, v22, v24}];
    x = v30;
    y = v31;
    width = v32;
    height = v33;
  }

LABEL_12:
  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toWindow:(UIWindow *)window
{
  y = point.y;
  x = point.x;
  if (window)
  {

    [UIView convertPoint:"convertPoint:toCoordinateSpace:" toCoordinateSpace:?];
  }

  else
  {
    layer = [(UIView *)self layer];
    [layer convertPoint:self->_transformLayer toLayer:{x, y}];
    v11 = v10;
    v13 = v12;

    v7 = v11;
    v8 = v13;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromWindow:(UIWindow *)window
{
  y = point.y;
  x = point.x;
  if (window)
  {

    [UIView convertPoint:"convertPoint:fromCoordinateSpace:" fromCoordinateSpace:?];
  }

  else
  {
    layer = [(UIView *)self layer];
    [layer convertPoint:self->_transformLayer fromLayer:{x, y}];
    v11 = v10;
    v13 = v12;

    v7 = v11;
    v8 = v13;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toWindow:(UIWindow *)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (window)
  {
    [(UIWindow *)self convertRect:rect.origin.x toCoordinateSpace:rect.origin.y, rect.size.width, rect.size.height];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    layer = [(UIView *)self layer];
    [layer convertRect:self->_transformLayer toLayer:{x, y, width, height}];
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
  }

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromWindow:(UIWindow *)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (window)
  {
    [(UIWindow *)self convertRect:rect.origin.x fromCoordinateSpace:rect.origin.y, rect.size.width, rect.size.height];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    layer = [(UIView *)self layer];
    [layer convertRect:self->_transformLayer fromLayer:{x, y, width, height}];
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
  }

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPoint)_convertOffset:(CGPoint)offset toWindow:(id)window
{
  y = offset.y;
  x = offset.x;
  windowCopy = window;
  [(UIWindow *)self convertPoint:windowCopy toWindow:x, y];
  v9 = v8;
  v11 = v10;
  [(UIWindow *)self convertPoint:windowCopy toWindow:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v13 = v12;
  v15 = v14;

  v16 = v9 - v13;
  v17 = v11 - v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertOffset:(CGPoint)offset fromWindow:(id)window
{
  y = offset.y;
  x = offset.x;
  windowCopy = window;
  [(UIWindow *)self convertPoint:windowCopy fromWindow:x, y];
  v9 = v8;
  v11 = v10;
  [(UIWindow *)self convertPoint:windowCopy fromWindow:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v13 = v12;
  v15 = v14;

  v16 = v9 - v13;
  v17 = v11 - v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertOffsetToSceneReferenceSpace:(CGPoint)space
{
  [(UIWindow *)self _convertPointToSceneReferenceSpace:space.x, space.y];
  v5 = v4;
  v7 = v6;
  [(UIWindow *)self _convertPointToSceneReferenceSpace:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v9 = v5 - v8;
  v11 = v7 - v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (CGPoint)_convertOffsetFromSceneReferenceSpace:(CGPoint)space
{
  [(UIWindow *)self _convertPointFromSceneReferenceSpace:space.x, space.y];
  v5 = v4;
  v7 = v6;
  [(UIWindow *)self _convertPointFromSceneReferenceSpace:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v9 = v5 - v8;
  v11 = v7 - v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (void)_setExclusiveTouchView:(id)view
{
  viewCopy = view;
  if (self->_exclusiveTouchView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_exclusiveTouchView, view);
    viewCopy = v6;
  }
}

- (id)_rootForKeyResponderCycle
{
  rootViewController = [(UIWindow *)self rootViewController];
  view = [rootViewController view];

  if (view)
  {
    rootViewController2 = [(UIWindow *)self rootViewController];
    view2 = [rootViewController2 view];
    selfCopy = [view2 _rootForKeyResponderCycle];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (CGPoint)convertWindowToDevice:(CGPoint)device
{
  y = device.y;
  x = device.x;
  [(UIView *)self frame];
  v6 = x + v5;
  v8 = y + v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)convertDeviceToWindow:(CGPoint)window
{
  y = window.y;
  x = window.x;
  [(UIView *)self frame];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (void)setBecomeKeyOnOrderFront:(BOOL)front
{
  v3 = 64;
  if (front)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)_slideHeaderView:(id)view andFooterView:(id)footerView offScreen:(BOOL)screen forInterfaceOrientation:(int64_t)orientation
{
  screenCopy = screen;
  viewCopy = view;
  footerViewCopy = footerView;
  [viewCopy center];
  v13 = v12;
  v15 = v14;
  [footerViewCopy center];
  v37 = v16;
  v38 = v17;
  [viewCopy bounds];
  v19 = v18;
  [footerViewCopy bounds];
  v21 = v20;
  windowScene = [(UIWindow *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (viewCopy)
  {
    [viewCopy transform];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  v40.origin.x = v25;
  v40.origin.y = v27;
  v40.size.width = v29;
  v40.size.height = v31;
  v41 = CGRectApplyAffineTransform(v40, &v39);
  v32 = v19 + v41.size.height;
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      if (!screenCopy)
      {
        v32 = -v32;
      }

      v13 = v13 + v32;
      v34 = -v21;
      if (!screenCopy)
      {
        v34 = v21;
      }
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_18;
      }

      if (screenCopy)
      {
        v32 = -v32;
      }

      v13 = v13 + v32;
      v34 = -v21;
      if (screenCopy)
      {
        v34 = v21;
      }
    }

    v35 = v38;
    v36 = v37 + v34;
    goto LABEL_29;
  }

  if (orientation == 1)
  {
    if (screenCopy)
    {
      v32 = -v32;
    }

    v15 = v15 + v32;
    v33 = -v21;
    if (screenCopy)
    {
      v33 = v21;
    }

    goto LABEL_23;
  }

  if (orientation == 2)
  {
    if (!screenCopy)
    {
      v32 = -v32;
    }

    v15 = v15 + v32;
    v33 = -v21;
    if (!screenCopy)
    {
      v33 = v21;
    }

LABEL_23:
    v36 = v37;
    v35 = v38 + v33;
    goto LABEL_29;
  }

LABEL_18:
  v36 = v37;
  v35 = v38;
LABEL_29:
  [viewCopy setCenter:{v13, v15, v41.size.width}];
  [footerViewCopy setCenter:{v36, v35}];
}

- (void)_positionHeaderView:(id)view andFooterView:(id)footerView outsideContentViewForInterfaceOrientation:(int64_t)orientation
{
  footerViewCopy = footerView;
  viewCopy = view;
  superview = [viewCopy superview];
  [superview bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v48 = v15;

  superview2 = [footerViewCopy superview];
  [superview2 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [viewCopy bounds];
  v26 = v25;
  [footerViewCopy bounds];
  v27 = v26 * 0.5;
  v29 = v28 * 0.5;
  v30 = *MEMORY[0x1E695EFF8];
  v31 = v10 + v14 + v26 * 0.5;
  v32 = v12 + v48 * 0.5;
  v33 = v18 - v29;
  v34 = v20 + v24 * 0.5;
  v35 = v10 - v26 * 0.5;
  v36 = v18 + v22 + v29;
  if (orientation == 4)
  {
    v37 = v12 + v48 * 0.5;
  }

  else
  {
    v35 = *MEMORY[0x1E695EFF8];
    v37 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation == 4)
  {
    v38 = v20 + v24 * 0.5;
  }

  else
  {
    v36 = *MEMORY[0x1E695EFF8];
    v38 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation != 3)
  {
    v31 = v35;
    v32 = v37;
    v33 = v36;
    v34 = v38;
  }

  v39 = v12 - v27;
  v40 = v20 + v24 + v29;
  v41 = v12 + v48 + v27;
  v42 = v20 - v29;
  if (orientation == 2)
  {
    v43 = v10 + v14 * 0.5;
  }

  else
  {
    v43 = *MEMORY[0x1E695EFF8];
  }

  if (orientation == 2)
  {
    v30 = v18 + v22 * 0.5;
  }

  else
  {
    v41 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation != 2)
  {
    v42 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation == 1)
  {
    v44 = v10 + v14 * 0.5;
  }

  else
  {
    v44 = v43;
  }

  if (orientation == 1)
  {
    v41 = v39;
    v30 = v18 + v22 * 0.5;
    v42 = v40;
  }

  if (orientation <= 2)
  {
    v45 = v44;
  }

  else
  {
    v45 = v31;
  }

  if (orientation <= 2)
  {
    v46 = v30;
  }

  else
  {
    v41 = v32;
    v46 = v33;
  }

  if (orientation <= 2)
  {
    v47 = v42;
  }

  else
  {
    v47 = v34;
  }

  [viewCopy setCenter:{v45, v41, v42, v30, v44, *&v48}];

  [footerViewCopy setCenter:{v46, v47}];
}

- (id)_clientsForRotation
{
  v18 = *MEMORY[0x1E69E9840];
  _rotationViewControllers = [(UIWindow *)self _rotationViewControllers];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_rotationViewControllers, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _rotationViewControllers;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 shouldWindowUseOnePartInterfaceRotationAnimation:{self, v13}])
        {
          _viewControllerForRotation = [v10 _viewControllerForRotation];
          [v4 addObject:_viewControllerForRotation];
        }

        else
        {
          [v4 addObject:{v10, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)__clientsForRotationCallbacks
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _viewControllersForRotationCallbacks = [WeakRetained _viewControllersForRotationCallbacks];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_rotationViewControllers;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        v19 = v6;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * v8);
          if (([_viewControllersForRotationCallbacks containsObject:v9] & 1) == 0)
          {
            _viewControllersForRotationCallbacks2 = [v9 _viewControllersForRotationCallbacks];
            indexSet = [MEMORY[0x1E696AD50] indexSet];
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = _viewControllersForRotationCallbacks2;
            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = 0;
              v16 = *v22;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v22 != v16)
                  {
                    objc_enumerationMutation(v12);
                  }

                  if ([_viewControllersForRotationCallbacks indexOfObjectIdenticalTo:*(*(&v21 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [indexSet addIndex:v15];
                  }

                  ++v15;
                }

                v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v14);
            }

            if ([indexSet count])
            {
              [v12 removeObjectsAtIndexes:indexSet];
            }

            v6 = v19;
            if ([v12 count])
            {
              [_viewControllersForRotationCallbacks addObjectsFromArray:v12];
            }
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }
  }

  else
  {
    _viewControllersForRotationCallbacks = [(UIWindow *)self _clientsForRotation];
  }

  return _viewControllersForRotationCallbacks;
}

- (void)_addRotationViewController:(id)controller
{
  rotationViewControllers = self->_rotationViewControllers;
  if (rotationViewControllers)
  {
    controllerCopy = controller;
    [(NSMutableArray *)rotationViewControllers addObject:controllerCopy];
    v4 = controllerCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695DF70];
    controllerCopy2 = controller;
    v8 = [[v6 alloc] initWithObjects:{controllerCopy2, 0}];

    v4 = self->_rotationViewControllers;
    self->_rotationViewControllers = v8;
  }
}

- (unint64_t)_supportedInterfaceOrientationsConsultingApp:(BOOL)app
{
  appCopy = app;
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  v6 = WeakRetained;
  if (!WeakRetained || ([WeakRetained _viewControllerForSupportedInterfaceOrientations], v7 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __57__UIWindow__supportedInterfaceOrientationsConsultingApp___block_invoke, v20[3] = &unk_1E711E5C8, v23 = appCopy, v21 = v7, v22 = self, v8 = v7, OrientationMask = _UISafelyGetOrientationMask(v20), v21, v8, !OrientationMask))
  {
    OrientationMask = appCopy ? [(UIApplication *)UIApp _defaultSupportedInterfaceOrientations]: 30;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_supportedInterfaceOrientationsConsultingApp____s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v13 = MEMORY[0x1E696AEC0];
          selfCopy = self;
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          selfCopy = [v13 stringWithFormat:@"<%@: %p>", v16, selfCopy];
        }

        else
        {
          selfCopy = @"(nil)";
        }

        v18 = selfCopy;
        v19 = BSInterfaceOrientationMaskDescription();
        *buf = 138412546;
        v25 = selfCopy;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Using default supported orientations: %@", buf, 0x16u);
      }
    }
  }

  return OrientationMask;
}

uint64_t __57__UIWindow__supportedInterfaceOrientationsConsultingApp___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 __supportedInterfaceOrientations];
  }

  else
  {
    v4 = [v3 supportedInterfaceOrientations];
  }

  v5 = v4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UIInternalPreference_ShowTouchesForAllProcesses_block_invoke_4___s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = v9;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];
      }

      else
      {
        v14 = @"(nil)";
      }

      v15 = v14;
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = v16;
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v17 stringWithFormat:@"<%@: %p>", v20, v18];
      }

      else
      {
        v21 = @"(nil)";
      }

      v22 = v21;
      v23 = v21;
      v24 = BSInterfaceOrientationMaskDescription();
      v25 = NSStringFromBOOL();
      *buf = 138413058;
      v27 = v15;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%@: Rotation view controller (%@) provided supported orientations: %@; consultedApplication=%@", buf, 0x2Au);
    }
  }

  return v5;
}

- (void)_updateOrientationPreferencesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  windowScene = [(UIWindow *)self windowScene];
  _effectiveUISettings = [windowScene _effectiveUISettings];
  interfaceOrientationMode = [_effectiveUISettings interfaceOrientationMode];

  if (interfaceOrientationMode != 100)
  {
    if ([(UIWindow *)self isInterfaceAutorotationDisabled])
    {
      *&self->_windowFlags |= 0x10000uLL;
    }

    else
    {
      v8 = [(UIWindow *)self _supportedInterfaceOrientationsConsultingApp:1];
      _preferredInterfaceOrientationForRootViewController = [(UIWindow *)self _preferredInterfaceOrientationForRootViewController];
      if (((1 << _preferredInterfaceOrientationForRootViewController) & ~v8) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = _preferredInterfaceOrientationForRootViewController;
      }

      if (_preferredInterfaceOrientationForRootViewController)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      windowScene2 = [(UIWindow *)self windowScene];
      _systemAppearanceManager = [windowScene2 _systemAppearanceManager];
      [_systemAppearanceManager window:self didUpdateSupportedOrientations:v8 preferredOrientation:v11 prefersAnimation:animatedCopy];
    }
  }
}

- (id)_createForcedOrientationTransactionTokenWithSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation forImmediateCommit:(BOOL)commit reason:(id)reason
{
  commitCopy = commit;
  v70 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  windowScene = [(UIWindow *)self windowScene];
  _canDynamicallySpecifySupportedInterfaceOrientations = [windowScene _canDynamicallySpecifySupportedInterfaceOrientations];

  if (!_canDynamicallySpecifySupportedInterfaceOrientations)
  {
    v27 = 0;
    goto LABEL_19;
  }

  _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];
  v14 = _orientationTransactionToken;
  if (_orientationTransactionToken)
  {
    state = [(__CFString *)_orientationTransactionToken state];
    _windowInterfaceOrientation = [(UIWindow *)self _windowInterfaceOrientation];
    windowScene2 = [(UIWindow *)self windowScene];
    _interfaceOrientation = [windowScene2 _interfaceOrientation];

    if (state != 1 && _windowInterfaceOrientation == _interfaceOrientation)
    {
LABEL_5:
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &qword_1EA968E88);
      if (*CategoryCachedImpl)
      {
        v41 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v42 = MEMORY[0x1E696AEC0];
            selfCopy = self;
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            selfCopy = [v42 stringWithFormat:@"<%@: %p>", v45, selfCopy];
          }

          else
          {
            selfCopy = @"(nil)";
          }

          *buf = 138412546;
          v61 = selfCopy;
          v62 = 2112;
          v63 = v14;
          _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "%@: Cleaning up previous orientation transaction: %@", buf, 0x16u);
        }
      }

      [(UIWindow *)self _cleanupOrientationTransactionIfNecessary];
      goto LABEL_7;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v37 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v38 = _UIInterfaceOrientationDebugDescription(_windowInterfaceOrientation);
      v39 = _UIInterfaceOrientationDebugDescription(_interfaceOrientation);
      *buf = 138413058;
      v61 = reasonCopy;
      v62 = 2112;
      v63 = v38;
      v64 = 2112;
      v65 = v39;
      v66 = 2112;
      v67 = v14;
      _os_log_fault_impl(&dword_188A29000, v37, OS_LOG_TYPE_FAULT, "A new orientation transaction token is being requested while a valid one already exists. reason=%@; windowOrientation=%@; sceneOrientation=%@; existingTransaction=%@", buf, 0x2Au);
    }

    else
    {
      v36 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA968E78) + 8);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v37 = v36;
      v38 = _UIInterfaceOrientationDebugDescription(_windowInterfaceOrientation);
      v39 = _UIInterfaceOrientationDebugDescription(_interfaceOrientation);
      *buf = 138413058;
      v61 = reasonCopy;
      v62 = 2112;
      v63 = v38;
      v64 = 2112;
      v65 = v39;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "A new orientation transaction token is being requested while a valid one already exists. reason=%@; windowOrientation=%@; sceneOrientation=%@; existingTransaction=%@", buf, 0x2Au);
    }

LABEL_29:
LABEL_30:
    if (state == 1)
    {
      v40 = __UILogGetCategoryCachedImpl("OrientationTransaction", &qword_1EA968E80);
      if (*v40)
      {
        v52 = *(v40 + 8);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v53 = MEMORY[0x1E696AEC0];
            selfCopy2 = self;
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            selfCopy2 = [v53 stringWithFormat:@"<%@: %p>", v56, selfCopy2];
          }

          else
          {
            selfCopy2 = @"(nil)";
          }

          *buf = 138412546;
          v61 = selfCopy2;
          v62 = 2112;
          v63 = v14;
          _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "%@: Cancelling previous orientation transaction because a new one was requested: %@", buf, 0x16u);
        }
      }

      [(__CFString *)v14 cancel];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_7:
  _windowInterfaceOrientation2 = [(UIWindow *)self _windowInterfaceOrientation];
  if ([(UIWindow *)self isInterfaceAutorotationDisabled])
  {
    v21 = __UILogGetCategoryCachedImpl("OrientationTransaction", &qword_1EA968E90);
    if (*v21)
    {
      v22 = *(v21 + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v23 = MEMORY[0x1E696AEC0];
          selfCopy3 = self;
          v25 = objc_opt_class();
          v58 = NSStringFromClass(v25);
          selfCopy3 = [v23 stringWithFormat:@"<%@: %p>", v58, selfCopy3];
        }

        else
        {
          selfCopy3 = @"(nil)";
        }

        v59 = selfCopy3;
        v51 = _UIInterfaceOrientationDebugDescription(_windowInterfaceOrientation2);
        *buf = 138412546;
        v61 = selfCopy3;
        v62 = 2112;
        v63 = v51;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "%@: Window autorotation is already disabled. Will use the current window orientation (%@) as the target orientation.", buf, 0x16u);
      }
    }
  }

  else
  {
    [(UIWindow *)self _executeDeferredOrientationUpdate];
    _windowInterfaceOrientation2 = [(UIWindow *)self _interfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation];
  }

  v27 = [[_UIForcedOrientationTransactionToken alloc] initWithOriginalOrientation:[(UIWindow *)self _windowInterfaceOrientation] handler:self reason:reasonCopy disablingInterfaceAutorotation:!commitCopy];

  [(UIWindow *)self _setOrientationTransactionToken:v27];
  if (!commitCopy)
  {
    [(UIWindow *)self beginDisablingInterfaceAutorotation];
  }

  if (_windowInterfaceOrientation2 != [(UIWindow *)self _windowInterfaceOrientation])
  {
    [(UIWindow *)&self->super.super.super.isa _internal_setRotatableViewOrientation:_windowInterfaceOrientation2 updateStatusBar:1 duration:1 force:0.0];
  }

  v28 = __UILogGetCategoryCachedImpl("OrientationTransaction", &qword_1EA968E98);
  if (*v28)
  {
    v30 = *(v28 + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v31 = MEMORY[0x1E696AEC0];
        selfCopy4 = self;
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        selfCopy4 = [v31 stringWithFormat:@"<%@: %p>", v34, selfCopy4];
      }

      else
      {
        selfCopy4 = @"(nil)";
      }

      v47 = selfCopy4;
      v48 = _UIInterfaceOrientationDebugDescription(_windowInterfaceOrientation2);
      v49 = _UIInterfaceOrientationDebugDescription(orientation);
      v50 = _UIInterfaceOrientationMaskDebugDescription(orientations);
      *buf = 138413314;
      v61 = selfCopy4;
      v62 = 2112;
      v63 = reasonCopy;
      v64 = 2112;
      v65 = v48;
      v66 = 2112;
      v67 = v49;
      v68 = 2112;
      v69 = v50;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "%@: Orientation transaction issued for reason: %@. targetOrientation=%@; preferredOrientation=%@; supportedOrientations=[%@].", buf, 0x34u);
    }
  }

LABEL_19:

  return v27;
}

- (void)_internal_setRotatableViewOrientation:(uint64_t)orientation updateStatusBar:(uint64_t)bar duration:(double)duration force:
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 55);
    if (WeakRetained)
    {
      [self _setRotatableClient:WeakRetained toOrientation:a2 updateStatusBar:orientation duration:bar force:1 isRotating:duration];
      [(UIViewController *)WeakRetained _updateLastKnownInterfaceOrientationOnPresentionStack:a2];
    }

    [self _notifyRotatableViewOrientation:a2 duration:duration];
  }
}

- (void)commitOrientationTransaction:(id)transaction animated:(BOOL)animated
{
  animatedCopy = animated;
  transactionCopy = transaction;
  _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];

  if (_orientationTransactionToken != transactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _orientationTransactionToken2 = [(UIWindow *)self _orientationTransactionToken];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:4457 description:{@"Unexpected orientation transaction token. Expected: %@; Received: %@", _orientationTransactionToken2, transactionCopy}];
  }

  if ([transactionCopy disablesInterfaceAutorotation])
  {
    [(UIWindow *)self endDisablingInterfaceAutorotationAnimated:animatedCopy];
  }

  else
  {
    [(UIWindow *)self _updateOrientationPreferencesAnimated:animatedCopy];
  }

  *&self->_windowFlags |= 0x8000000000uLL;
  _orientationTransactionToken3 = [(UIWindow *)self _orientationTransactionToken];
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIWindow_commitOrientationTransaction_animated___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v16, &location);
  v15 = _orientationTransactionToken3;
  v11 = _orientationTransactionToken3;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __50__UIWindow_commitOrientationTransaction_animated___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _orientationTransactionToken];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &_UIInternalPreference_ShowTouchesForAllProcesses_block_invoke_5___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = WeakRetained;
        v14 = v7;
        if (v7)
        {
          v8 = MEMORY[0x1E696AEC0];
          v9 = v7;
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];
        }

        else
        {
          v12 = @"(nil)";
        }

        v13 = *(a1 + 32);
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@: Commit of orientation transaction timed-out. Proceeding with cleanup. token=%@", buf, 0x16u);
      }
    }

    [WeakRetained _cleanupOrientationTransactionIfNecessary];
  }
}

- (void)cancelOrientationTransaction:(id)transaction
{
  transactionCopy = transaction;
  _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];

  if (_orientationTransactionToken != transactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _orientationTransactionToken2 = [(UIWindow *)self _orientationTransactionToken];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:4487 description:{@"Unexpected orientation transaction token. Expected: %@; Received: %@", _orientationTransactionToken2, transactionCopy}];
  }

  [(UIWindow *)self _setOrientationTransactionToken:0];
  if ([transactionCopy disablesInterfaceAutorotation])
  {
    [(UIWindow *)self endDisablingInterfaceAutorotationAnimated:0];
  }

  else
  {
    [(UIWindow *)self _updateOrientationPreferencesAnimated:0];
  }

  -[UIWindow _internal_setRotatableViewOrientation:updateStatusBar:duration:force:](&self->super.super.super.isa, [transactionCopy originalInterfaceOrientation], 1, 1, 0.0);
}

- (int64_t)_interfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation
{
  _interfaceOrientationMapResolver = [(UIWindow *)self _interfaceOrientationMapResolver];

  if (_interfaceOrientationMapResolver)
  {
    _interfaceOrientationMapResolver2 = [(UIWindow *)self _interfaceOrientationMapResolver];
    v9 = [_interfaceOrientationMapResolver2 interfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation];
LABEL_5:
    v11 = v9;

    return v11;
  }

  windowScene = [(UIWindow *)self windowScene];

  if (windowScene)
  {
    _interfaceOrientationMapResolver2 = [(UIWindow *)self windowScene];
    v9 = [_interfaceOrientationMapResolver2 _interfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation];
    goto LABEL_5;
  }

  v13 = UIApp;
  _windowInterfaceOrientation = [(UIWindow *)self _windowInterfaceOrientation];

  return [v13 _fallbackInterfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation currentOrientation:_windowInterfaceOrientation];
}

- (id)_acquireOrientationLockAssertionWithReason:(void *)reason
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    v4 = MEMORY[0x1E696AEC0];
    reasonCopy = reason;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    reasonCopy = [v4 stringWithFormat:@"<%@: %p>", v7, reasonCopy];

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_acquireOrientationLockAssertionWithReason____s_category);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *location = 138412546;
        *&location[4] = reasonCopy;
        v24 = 2112;
        v25 = v3;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "%@: Issuing orientation lock assertion for reason: %@", location, 0x16u);
      }
    }

    [reasonCopy beginDisablingInterfaceAutorotation];
    objc_initWeak(location, reasonCopy);
    v10 = [_UIDeallocInvalidatable alloc];
    v11 = reasonCopy;
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__UIWindow__acquireOrientationLockAssertionWithReason___block_invoke;
    v20[3] = &unk_1E711E5F0;
    v16 = reasonCopy;
    v21 = v16;
    objc_copyWeak(&v22, location);
    v17 = [(_UIDeallocInvalidatable *)v10 initWithIdentifier:v15 faultForDeallocInvalidation:0 invalidationBlock:v20];
    objc_destroyWeak(&v22);

    objc_destroyWeak(location);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __55__UIWindow__acquireOrientationLockAssertionWithReason___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UIInternalPreference_ShowTouchesForAllProcesses_block_invoke_6___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@: Invalidating orientation lock assertion.", &v6, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained endDisablingInterfaceAutorotation];
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation checkForDismissal:(BOOL)dismissal isRotationDisabled:(BOOL *)disabled
{
  dismissalCopy = dismissal;
  if (disabled)
  {
    *disabled = 0;
  }

  if (![(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    return 1;
  }

  _shouldPreventRotationHook = [(UIWindow *)self _shouldPreventRotationHook];
  if (_shouldPreventRotationHook && (v10 = _shouldPreventRotationHook, [(UIWindow *)self _shouldPreventRotationHook], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](), v11, v10, v12))
  {
    v13 = 0;
    if (disabled)
    {
      *disabled = 1;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
    rootViewController = [WeakRetained _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:dismissalCopy];

    if (!rootViewController)
    {
      rootViewController = [(UIWindow *)self rootViewController];
    }

    _viewControllersWhoseOrientationsMustCoincide = [rootViewController _viewControllersWhoseOrientationsMustCoincide];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__UIWindow__shouldAutorotateToInterfaceOrientation_checkForDismissal_isRotationDisabled___block_invoke;
    aBlock[3] = &__block_descriptor_40_e29_B24__0__UIViewController_8q16l;
    aBlock[4] = disabled;
    v17 = _Block_copy(aBlock);
    v18 = v17;
    if (_viewControllersWhoseOrientationsMustCoincide)
    {
      v19 = [UIViewController _allViewControllersInArray:_viewControllersWhoseOrientationsMustCoincide allowAutorotationToInterfaceOrientation:orientation predicate:v17];
    }

    else
    {
      v19 = (*(v17 + 2))(v17, rootViewController, orientation);
    }

    v13 = v19;
  }

  return v13;
}

BOOL __89__UIWindow__shouldAutorotateToInterfaceOrientation_checkForDismissal_isRotationDisabled___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 shouldAutorotate];
  v7 = *(a1 + 32);
  if (v7 && (v6 & 1) == 0)
  {
    *v7 = 1;
  }

  if (v6)
  {
    v8 = [(UIViewController *)v5 __withSupportedInterfaceOrientation:a3 apply:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v5 = +[UIWindow _transformLayerRotationsAreEnabled];

  return [(UIWindow *)self _shouldAutorotateToInterfaceOrientation:orientation checkForDismissal:v5 isRotationDisabled:0];
}

- (void)_setWindowControlsStatusBarOrientation:(BOOL)orientation
{
  v3 = 0x10000000;
  if (!orientation)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFEFFFFFFFLL | v3);
}

void __45__UIWindow__executeDeferredOrientationUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = UIApp;
  v5 = v2;
  (v2)[2](v5, v3, [v4 _expectedViewOrientation]);
}

- (void)_rotateToBounds:(CGRect)bounds withAnimator:(id)animator transitionContext:(id)context
{
  height = bounds.size.height;
  width = bounds.size.width;
  contextCopy = context;
  animatorCopy = animator;
  skipCallbacks = [animatorCopy skipCallbacks];
  _toWindowOrientation = [(UIWindow *)self _toWindowOrientation];
  windowScene = [(UIWindow *)self windowScene];
  _systemShellOwnsInterfaceOrientation = [(UIScene *)windowScene _systemShellOwnsInterfaceOrientation];

  if ((_systemShellOwnsInterfaceOrientation & 1) == 0)
  {
    [(UIWindow *)self beginDisablingInterfaceAutorotation];
  }

  kdebug_trace();
  screen = [(UIWindow *)self screen];
  _transitionCoordinator = [contextCopy _transitionCoordinator];
  [(UIWindow *)self _willChangeToSize:_toWindowOrientation orientation:screen screen:_transitionCoordinator withTransitionCoordinator:width, height];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UIWindow__rotateToBounds_withAnimator_transitionContext___block_invoke;
  aBlock[3] = &unk_1E711E638;
  v28 = skipCallbacks;
  aBlock[4] = self;
  v25 = width;
  v26 = height;
  v17 = contextCopy;
  v24 = v17;
  v27 = _toWindowOrientation;
  v18 = _Block_copy(aBlock);
  if ([(UIWindow *)self _guardSizeTransitionFromAnimations])
  {
    [UIView performWithoutAnimation:v18];
  }

  else
  {
    v18[2](v18);
  }

  kdebug_trace();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__UIWindow__rotateToBounds_withAnimator_transitionContext___block_invoke_2;
  v22[3] = &unk_1E7104C08;
  v22[4] = self;
  [v17 _setCompletionHandler:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__UIWindow__rotateToBounds_withAnimator_transitionContext___block_invoke_3;
  v19[3] = &unk_1E711E660;
  v19[4] = self;
  v20 = skipCallbacks;
  v21 = _systemShellOwnsInterfaceOrientation ^ 1;
  [v17 _setDidCompleteHandler:v19];
  [animatorCopy animateTransition:v17];
}

void __59__UIWindow__rotateToBounds_withAnimator_transitionContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = +[UIWindow _transformLayerRotationsAreEnabled];
    v3 = *(a1 + 32);
    if (v2)
    {
      v3[72] |= 0x400uLL;
      return;
    }

    v11 = [v3 rootViewController];
    [v11 window:*(a1 + 32) setupWithInterfaceOrientation:*(a1 + 64)];
  }

  else
  {
    v4 = [*(a1 + 32) rootViewController];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _transitionCoordinator];
    [v4 _window:v5 viewWillTransitionToSize:v6 withTransitionCoordinator:{*(a1 + 48), *(a1 + 56)}];

    *(*(a1 + 32) + 576) |= 0x400uLL;
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *(a1 + 32);
    v8 = MEMORY[0x1E695DF20];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
    v10 = [v8 dictionaryWithObjectsAndKeys:{v9, @"UIWindowNewOrientationUserInfoKey", 0}];
    [v11 postNotificationName:@"UIWindowWillRotateNotification" object:v7 userInfo:v10];
  }
}

void __59__UIWindow__rotateToBounds_withAnimator_transitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 888);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, @"UIWindowOldOrientationUserInfoKey", 0}];
    [v4 postNotificationName:@"UIWindowDidRotateNotification" object:v5 userInfo:v8];
  }

  *(*(a1 + 32) + 888) = *(*(a1 + 32) + 880);
  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) endDisablingInterfaceAutorotation];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    if (([v9 _windowOwnsInterfaceOrientation] & 1) != 0 || (*(v9 + 580) & 0x20) != 0 || (objc_msgSend(v9, "_deferredOrientationUpdate"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || ((v11 = v10, objc_msgSend(v9, "_deferredOrientationUpdate"), (v12 = objc_claimAutoreleasedReturnValue()) == 0) ? (v13 = 0) : (v13 = v12[2]), v14 = *(v9 + 888), v12, v11, v13 == v14))
    {
      v15 = [v9 _deferredOrientationUpdate];

      if (v15)
      {
        [(UIWindow *)v9 _cancelEnqueuedDeferredOrientationUpdateIfNeeded];
        v16 = [v9 _deferredOrientationUpdate];
        v17 = [v9 _windowHostingScene];
        [(_UIWindowOrientationUpdate *)v16 synchronizeDrawingWithFencesOnScene:v17];

        [v9 _setDeferredOrientationUpdate:0];
      }
    }

    else
    {
      *(v9 + 576) |= 0x2000000000uLL;
      [v9 performSelector:sel__executeDeferredOrientationUpdate withObject:0 afterDelay:0.0];
    }
  }
}

- (void)_adjustSizeClassesAndResizeWindowToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rootViewController = [(UIWindow *)self rootViewController];
  [(UIView *)self frame];
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (!CGRectEqualToRect(v33, v34) && [(UIWindow *)self _shouldAdjustSizeClassesAndResizeWindow]&& +[UIWindow _transformLayerRotationsAreEnabled])
  {
    kdebug_trace();
    v13 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
    [(_UIViewControllerTransitionContext *)v13 _setIsAnimated:1];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setFromViewController:rootViewController];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setToViewController:rootViewController];
    [(_UIViewControllerTransitionContext *)v13 _setContainerView:self];
    [(UIView *)self frame];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setFromStartFrame:?];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setToEndFrame:x, y, width, height];
    [(UIView *)self frame];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setToStartFrame:?];
    [(_UIViewControllerOneToOneTransitionContext *)v13 _setFromEndFrame:x, y, width, height];
    [(_UIViewControllerTransitionContext *)v13 _setCompletionCurve:7];
    v14 = [_UIWindowAnimationController animationControllerWithWindow:self];
    [(_UIViewControllerTransitionContext *)v13 _setIsAnimated:+[UIView _isInAnimationBlock]];
    [(_UIViewControllerTransitionContext *)v13 _setAnimator:v14];
    [(_UIViewControllerTransitionContext *)v13 _setCompletionCurve:5];
    [(UIView *)self frame];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __53__UIWindow__adjustSizeClassesAndResizeWindowToFrame___block_invoke;
    v24 = &unk_1E711E688;
    selfCopy = self;
    v17 = v16 != height || v15 != width;
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;
    v18 = v13;
    v26 = v18;
    v32 = v17;
    v27 = rootViewController;
    v19 = _Block_copy(&v21);
    if ([(UIWindow *)self _guardSizeTransitionFromAnimations:v21])
    {
      [UIView performWithoutAnimation:v19];
    }

    else
    {
      v19[2](v19);
    }

    _animator = [(_UIViewControllerTransitionContext *)v18 _animator];
    [_animator animateTransition:v18];

    kdebug_trace();
  }
}

uint64_t __53__UIWindow__adjustSizeClassesAndResizeWindowToFrame___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = [v2 interfaceOrientation];
  v4 = [*(a1 + 32) screen];
  v5 = [*(a1 + 40) _transitionCoordinator];
  [v2 _willChangeToSize:v3 orientation:v4 screen:v5 withTransitionCoordinator:{*(a1 + 72), *(a1 + 80)}];

  v6 = [*(a1 + 40) _transitionCoordinator];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__UIWindow__adjustSizeClassesAndResizeWindowToFrame___block_invoke_2;
  v11[3] = &unk_1E70F3B98;
  v11[4] = *(a1 + 32);
  [v6 animateAlongsideTransition:v11 completion:0];

  if (*(a1 + 88) == 1)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) _transitionCoordinator];
    [v7 _window:v8 viewWillTransitionToSize:v9 withTransitionCoordinator:{*(a1 + 72), *(a1 + 80)}];
  }

  return kdebug_trace();
}

- (void)_handleDeviceOrientationChange:(id)change
{
  if (change)
  {
    userInfo = [change userInfo];
    v5 = [userInfo objectForKey:@"UIDeviceOrientationRotateAnimatedUserInfoKey"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(UIWindow *)self _updateInterfaceOrientationFromDeviceOrientationIfRotationEnabled:bOOLValue];
}

- (void)_handleSBActiveInterfaceOrientationChange:(id)change
{
  if (change)
  {
    userInfo = [change userInfo];
    v5 = [userInfo objectForKey:@"_UIAppActiveInterfaceOrientationRotateAnimatedUserInfoKey"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(UIWindow *)self _updateInterfaceOrientationFromActiveInterfaceOrientationIfRotationEnabled:bOOLValue];
}

- (void)_updateToInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v6 = 0.0;
  if (animated)
  {
    [(UIWindow *)self _rotationDuration];
  }

  [(UIWindow *)self _updateToInterfaceOrientation:orientation duration:0 force:v6];
}

- (void)_updateToInterfaceOrientation:(int64_t)viewOrientation duration:(double)duration force:(BOOL)force
{
  v67 = *MEMORY[0x1E69E9840];
  _orientationTransactionToken = [(UIWindow *)self _orientationTransactionToken];
  state = [_orientationTransactionToken state];

  if (state == 1)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &_updateToInterfaceOrientation_duration_force____s_category);
    if (*CategoryCachedImpl)
    {
      v31 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v32 = MEMORY[0x1E696AEC0];
          selfCopy = self;
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          selfCopy = [v32 stringWithFormat:@"<%@: %p>", v35, selfCopy];
        }

        else
        {
          selfCopy = @"(nil)";
        }

        v37 = selfCopy;
        v38 = BSInterfaceOrientationDescription();
        v39 = BSInterfaceOrientationDescription();
        [(UIWindow *)self _orientationTransactionToken];
        *location = 138413058;
        *&location[4] = selfCopy;
        v61 = 2112;
        v62 = v38;
        v63 = 2112;
        v64 = v39;
        v66 = v65 = 2112;
        v40 = v66;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "%@: _updateToInterfaceOrientation called while a forced orientation transaction is active. Overriding the requested orientation to preserve the forced orientation. requested=%@; forced=%@; token=%@", location, 0x2Au);
      }
    }

    viewOrientation = self->_viewOrientation;
    force = 1;
  }

  if ((*(&self->_windowFlags + 4) & 0x20) != 0)
  {
    [(UIWindow *)self _cancelEnqueuedDeferredOrientationUpdateIfNeeded];
    _deferredOrientationUpdate = [(UIWindow *)self _deferredOrientationUpdate];
    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    [(_UIWindowOrientationUpdate *)_deferredOrientationUpdate synchronizeDrawingWithFencesOnScene:_windowHostingScene];

    [(UIWindow *)self _setDeferredOrientationUpdate:0];
  }

  v14 = self->_viewOrientation;
  v15 = viewOrientation;
  if (self->_rootViewController)
  {
    v15 = viewOrientation;
    if ([(UIWindow *)self _windowOwnsInterfaceOrientation])
    {
      viewControllerForRotation = [(UIViewController *)self->_rootViewController viewControllerForRotation];
      v17 = viewControllerForRotation == self->_rootViewController;

      v15 = viewOrientation;
      if (v17)
      {
        v15 = [(UIViewController *)self->_rootViewController _preferredInterfaceOrientationGivenCurrentOrientation:viewOrientation];
      }
    }
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__UIWindow__updateToInterfaceOrientation_duration_force___block_invoke;
  aBlock[3] = &unk_1E711E6B8;
  objc_copyWeak(v58, location);
  forceCopy = force;
  v58[1] = *&duration;
  v58[2] = v14;
  v18 = _Block_copy(aBlock);
  if (!UIApp || ([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(UIApp, "_hasNormalRestorationCompleted") & 1) != 0)
  {
    _windowHostingScene2 = [(UIWindow *)self _windowHostingScene];
    v20 = [_windowHostingScene2 _shouldDeferInitialWindowUpdateBeforeConnectionAndTrackIfNeeded:self];

    if (v20)
    {
      _deferredOrientationUpdate2 = [(UIWindow *)self _deferredOrientationUpdate];
      v22 = _deferredOrientationUpdate2 == 0;

      if (v22)
      {
        v23 = [[_UIWindowOrientationUpdate alloc] initWithOrientation:v15 transitionAnimationSettings:0 updateBlock:v18];
        [(UIWindow *)self _setDeferredOrientationUpdate:v23];
LABEL_30:
      }
    }

    else
    {
      if ([UIApp _hasApplicationCalledLaunchDelegate] && objc_msgSend(UIApp, "_hasNormalRestorationCompleted") && self->_viewOrientation && !-[UIWindow _windowOwnsInterfaceOrientation](self, "_windowOwnsInterfaceOrientation") && -[UIWindow isRotating](self, "isRotating"))
      {
        v24 = +[UIView _currentAnimationSettings];
        v25 = [[_UIWindowOrientationUpdate alloc] initWithOrientation:v15 transitionAnimationSettings:v24 updateBlock:v18];
        v26 = [UIApp _systemAnimationFenceCreatingIfNecessary:0];
        if (v26)
        {
          [(_UIWindowOrientationUpdate *)v25 trackFence:v26];
        }

        [(_UIWindowOrientationUpdate *)v25 trackFence:v26];
        _deferredOrientationUpdate3 = [(UIWindow *)self _deferredOrientationUpdate];

        if (_deferredOrientationUpdate3)
        {
          _deferredOrientationUpdate4 = [(UIWindow *)self _deferredOrientationUpdate];
          [(_UIWindowOrientationUpdate *)_deferredOrientationUpdate4 transferFencesToUpdate:v25];
        }

        [(UIWindow *)self _setDeferredOrientationUpdate:v25];
      }

      else
      {
        (*(v18 + 2))(v18, v15, viewOrientation);
      }

      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 4096;
      v56 = 0;
      *&v54 = v14;
      [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
    }
  }

  else
  {
    _deferredOrientationUpdate5 = [(UIWindow *)self _deferredOrientationUpdate];
    v30 = _deferredOrientationUpdate5 == 0;

    if (v30)
    {
      v23 = [[_UIWindowOrientationUpdate alloc] initWithOrientation:v15 transitionAnimationSettings:0 updateBlock:v18];
      [(UIWindow *)self _setDeferredOrientationUpdate:v23];
      [UIApp _setExpectedViewOrientation:viewOrientation];
      goto LABEL_30;
    }
  }

  objc_destroyWeak(v58);
  objc_destroyWeak(location);
}

void __57__UIWindow__updateToInterfaceOrientation_duration_force___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _deferredOrientationUpdate];
    v9 = [v7 _windowHostingScene];
    [(_UIWindowOrientationUpdate *)v8 synchronizeDrawingWithFencesOnScene:v9];

    if ((v7[62] != a2 || a2 && *(a1 + 56) == 1) && [v7 _shouldAutorotateToInterfaceOrientation:a2])
    {
      [(UIWindow *)v7 _internal_setRotatableViewOrientation:a2 updateStatusBar:1 duration:*(a1 + 56) force:*(a1 + 40)];
    }

    else
    {
      v10 = objc_loadWeakRetained(v7 + 55);
      v11 = v10;
      if (v10 && ([v10 _isViewControllerInWindowHierarchy] & 1) == 0)
      {
        [(UIViewController *)v11 _updateLastKnownInterfaceOrientationOnPresentionStack:a2];
      }
    }

    if (!v7[62])
    {
      v12 = [v7 rootViewController];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__UIWindow__updateToInterfaceOrientation_duration_force___block_invoke_2;
      v18[3] = &unk_1E70F9B38;
      v18[4] = v7;
      v18[5] = a2;
      [(UIViewController *)v12 __withSupportedInterfaceOrientation:a2 apply:v18];
    }

    if ([v7 _windowControlsStatusBarOrientation])
    {
      if (([v7 _isStatusBarWindow] & 1) == 0)
      {
        v13 = [v7 _windowHostingScene];
        v14 = [v13 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

        if ((v14 & 1) == 0)
        {
          v15 = *(a1 + 48);
          if (v7[62] != v15 || v15 == 0)
          {
            v17 = v7[62];
          }

          else
          {
            v17 = a3;
          }

          [UIApp _setExpectedViewOrientation:v17];
        }
      }
    }
  }
}

uint64_t __57__UIWindow__updateToInterfaceOrientation_duration_force___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    *(*(result + 32) + 496) = *(result + 40);
    result = [*(result + 32) _isHostedInAnotherProcess];
    if ((result & 1) == 0)
    {
      v3 = *(v2 + 32);

      return [v3 _updateTransformLayer];
    }
  }

  return result;
}

- (void)_updateInterfaceOrientationFromDeviceOrientationIfRotationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIWindow *)self isInterfaceAutorotationDisabled])
  {
    *&self->_windowFlags |= 0x10000uLL;
  }

  else
  {

    [(UIWindow *)self _updateInterfaceOrientationFromDeviceOrientation:enabledCopy];
  }
}

- (void)_updateInterfaceOrientationFromDeviceOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  if ([(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    v5 = +[UIDevice currentDevice];
    orientation = [v5 orientation];

    if ((orientation - 1) <= 3)
    {

      [(UIWindow *)self _updateToNotificationProvidedInterfaceOrientation:orientation animated:orientationCopy];
    }
  }

  else
  {

    [(UIWindow *)self _updateOrientationPreferencesAnimated:orientationCopy];
  }
}

- (void)_updateToNotificationProvidedInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_viewOrientation == orientation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
    if (WeakRetained)
    {
      if ([objc_opt_class() _transformLayerRotationsAreEnabled])
      {
        if (([WeakRetained _isViewControllerInWindowHierarchy] & 1) == 0)
        {
          [(UIViewController *)WeakRetained _updateLastKnownInterfaceOrientationOnPresentionStack:orientation];
        }
      }

      else
      {
        v8 = WeakRetained;
        v9 = v8;
        if (orientation == 2)
        {
          v10 = 3.14159265;
        }

        else
        {
          v10 = 0.0;
        }

        v11 = v8;
        do
        {
          presentedViewController = [v11 presentedViewController];
          if (!presentedViewController)
          {
            break;
          }

          v13 = presentedViewController;
          _lastKnownInterfaceOrientation = [v11 _lastKnownInterfaceOrientation];
          viewOrientation = self->_viewOrientation;

          if (_lastKnownInterfaceOrientation == viewOrientation)
          {
            break;
          }

          if ([v11 modalPresentationStyle] != 16 && objc_msgSend(v11, "modalPresentationStyle") != 2 && objc_msgSend(v11, "modalPresentationStyle") != 4 && objc_msgSend(v11, "_isViewControllerInWindowHierarchy") && -[UIViewController __withSupportedInterfaceOrientation:apply:](v11, orientation, 0))
          {
            presentedViewController2 = [v11 presentedViewController];
            _isViewControllerInWindowHierarchy = [presentedViewController2 _isViewControllerInWindowHierarchy];

            _lastKnownInterfaceOrientation2 = [v11 _lastKnownInterfaceOrientation];
            if (_isViewControllerInWindowHierarchy)
            {
              [v11 window:self willRotateToInterfaceOrientation:orientation duration:0.0];
            }

            memset(&v23, 0, sizeof(v23));
            if (orientation == 1)
            {
              v19 = 0.0;
            }

            else if (orientation == 3)
            {
              v19 = 1.57079633;
            }

            else
            {
              v19 = v10;
              if (orientation == 4)
              {
                v19 = -1.57079633;
              }
            }

            CGAffineTransformMakeRotation(&v23, v19);
            *&v23.a = vrndaq_f64(*&v23.a);
            *&v23.c = vrndaq_f64(*&v23.c);
            *&v23.tx = vrndaq_f64(*&v23.tx);
            v20 = [v11 rotatingContentViewForWindow:self];
            v22 = v23;
            [v20 setTransform:&v22];
            [v11 _centerForOrientation:orientation];
            [v20 setCenter:?];
            [v11 _boundsForOrientation:orientation];
            [v20 setBounds:?];
            if (_isViewControllerInWindowHierarchy)
            {
              [v11 window:self willAnimateRotationToInterfaceOrientation:orientation duration:0.0];
              [v11 window:self didRotateFromInterfaceOrientation:_lastKnownInterfaceOrientation2];
            }
          }

          presentedViewController3 = [v11 presentedViewController];

          v11 = presentedViewController3;
        }

        while (presentedViewController3);
        [(UIViewController *)v9 _updateLastKnownInterfaceOrientationOnPresentionStack:orientation];
      }

      if ([(UIWindow *)self _windowControlsStatusBarOrientation])
      {
        [UIApp _setExpectedViewOrientation:self->_viewOrientation];
      }
    }
  }

  else
  {
    v7 = 0.0;
    if (animated)
    {
      [(UIWindow *)self _rotationDuration];
    }

    [(UIWindow *)self _updateToInterfaceOrientation:orientation duration:0 force:v7];
  }
}

- (void)endDisablingInterfaceAutorotationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  if ([(UIWindow *)self _windowCanDynamicallySpecifySupportedInterfaceOrientations])
  {
    windowFlags = self->_windowFlags;
    if ((*&windowFlags & 0xF000) != 0)
    {
      self->_windowFlags = (*&windowFlags & 0xFFFFFFFFFFFF0FFFLL | ((((*&windowFlags + 61440) >> 12) & 0xF) << 12));
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("AutoRotation", &endDisablingInterfaceAutorotationAnimated____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 136315650;
        v19 = "[UIWindow endDisablingInterfaceAutorotationAnimated:]";
        v20 = 2112;
        v21 = v9;
        v22 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s called on <%@: %p> without matching -beginDisablingInterfaceAutorotation. Ignoring.", buf, 0x20u);
      }
    }

    if (![(UIWindow *)self isInterfaceAutorotationDisabled])
    {
      windowScene = [(UIWindow *)self windowScene];
      _canDynamicallySpecifySupportedInterfaceOrientations = [windowScene _canDynamicallySpecifySupportedInterfaceOrientations];

      if (_canDynamicallySpecifySupportedInterfaceOrientations)
      {
        [(UIWindow *)self _updateOrientationPreferencesAnimated:animatedCopy];
      }

      else if (*(&self->_windowFlags + 2))
      {
        v12 = objc_alloc(MEMORY[0x1E695DF20]);
        v13 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
        v14 = [v12 initWithObjectsAndKeys:{v13, @"UIDeviceOrientationRotateAnimatedUserInfoKey", 0}];

        v15 = MEMORY[0x1E696AD80];
        v16 = +[UIDevice currentDevice];
        v17 = [v15 notificationWithName:@"UIDeviceOrientationDidChangeNotification" object:v16 userInfo:v14];

        [(UIWindow *)self performSelector:sel__handleDeviceOrientationChange_ withObject:v17 afterDelay:0.0];
      }

      *&self->_windowFlags &= ~0x10000uLL;
    }
  }
}

- (void)_updateAutorotationResponse:(BOOL)response
{
  responseCopy = response;
  windowFlags = self->_windowFlags;
  if ((*&windowFlags & 0x100) != 0)
  {
    if ([UIApp isFrontBoard])
    {
      _canReceiveDeviceOrientationEvents = 1;
    }

    else
    {
      windowScene = [(UIWindow *)self windowScene];
      _canReceiveDeviceOrientationEvents = [windowScene _canReceiveDeviceOrientationEvents];
    }
  }

  else
  {
    _canReceiveDeviceOrientationEvents = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if ((*&windowFlags & 0x200) != 0 || !_canReceiveDeviceOrientationEvents)
  {
    if (!(((*&windowFlags & 0x200) == 0) | _canReceiveDeviceOrientationEvents & 1))
    {
      *&self->_windowFlags &= ~0x200uLL;
      [defaultCenter removeObserver:self name:@"UIDeviceOrientationDidChangeNotification" object:0];
      [defaultCenter removeObserver:self name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];
      if ([UIApp _isSpringBoard])
      {
        [defaultCenter removeObserver:self name:@"_UIAppActiveInterfaceOrientationDidChangeNotification" object:0];
      }
    }
  }

  else
  {
    *&self->_windowFlags |= 0x200uLL;
    [defaultCenter addObserver:self selector:sel__handleDeviceOrientationChange_ name:@"UIDeviceOrientationDidChangeNotification" object:0];
    [defaultCenter addObserver:self selector:sel__handleStatusBarOrientationChange_ name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];
    if ([UIApp _isSpringBoard])
    {
      [defaultCenter addObserver:self selector:sel__handleSBActiveInterfaceOrientationChange_ name:@"_UIAppActiveInterfaceOrientationDidChangeNotification" object:0];
    }

    if (responseCopy)
    {
      _currentExpectedInterfaceOrientation = [UIApp _currentExpectedInterfaceOrientation];
      if ((_currentExpectedInterfaceOrientation - 1) >= 4)
      {
        _currentExpectedInterfaceOrientation = [UIApp _statusBarOrientationForWindow:self];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
      v10 = [WeakRetained _preferredInterfaceOrientationGivenCurrentOrientation:_currentExpectedInterfaceOrientation];

      viewOrientation = self->_viewOrientation;
      if (!viewOrientation && v10 != 1)
      {
        [(UIWindow *)self _updateToInterfaceOrientation:v10 duration:1 force:0.0];
LABEL_21:
        [(UIViewController *)self->_rootViewController _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
        goto LABEL_22;
      }

      [(UIWindow *)self _updateToInterfaceOrientation:v10 duration:1 force:0.0];
      if (viewOrientation && viewOrientation != v10)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (void)setAutorotates:(BOOL)autorotates forceUpdateInterfaceOrientation:(BOOL)orientation
{
  if (((((*&self->_windowFlags & 0x100) == 0) ^ autorotates) & 1) == 0)
  {
    v16 = v6;
    v17 = v5;
    v18 = v4;
    orientationCopy = orientation;
    autorotatesCopy = autorotates;
    v13 = 256;
    if (!autorotates)
    {
      v13 = 0;
    }

    self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFFFFFEFFLL | v13);
    v14 = [UIDevice currentDevice:v7];
    v15 = v14;
    if (autorotatesCopy)
    {
      [v14 beginGeneratingDeviceOrientationNotifications];
    }

    else
    {
      [v14 endGeneratingDeviceOrientationNotifications];
    }

    [(UIWindow *)self _updateAutorotationResponse:orientationCopy];
  }
}

- (void)_forceTwoPartRotationAnimation:(BOOL)animation
{
  v3 = 0x20000;
  if (!animation)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)_notifyRotatableViewOrientation:(int64_t)orientation duration:(double)duration
{
  v12[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"_UIWindowContentWillRotateOrientationUserInfoKey";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  v11[1] = @"_UIWindowContentWillRotateDurationUserInfoKey";
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [defaultCenter postNotificationName:@"_UIWindowContentWillRotateNotification" object:self userInfo:v10];
}

- (void)_legacySetRotatableViewOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration force:(BOOL)force
{
  forceCopy = force;
  barCopy = bar;
  if ([(UIWindow *)self _windowOwnsInterfaceOrientation])
  {

    [(UIWindow *)&self->super.super.super.isa _internal_setRotatableViewOrientation:orientation updateStatusBar:barCopy duration:forceCopy force:duration];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Cannot set the orientation of a window that does not own its interface orientation.", buf, 2u);
    }
  }

  else
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &_legacySetRotatableViewOrientation_updateStatusBar_duration_force____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Cannot set the orientation of a window that does not own its interface orientation.", v13, 2u);
    }
  }
}

- (int64_t)_orientationInSceneSpace
{
  windowScene = [(UIWindow *)self windowScene];
  _cachedInterfaceOrientation = [windowScene _cachedInterfaceOrientation];
  windowScene2 = [(UIWindow *)self windowScene];
  v6 = windowScene2;
  if (_cachedInterfaceOrientation)
  {
    _cachedInterfaceOrientation2 = [windowScene2 _cachedInterfaceOrientation];
    integerValue = [_cachedInterfaceOrientation2 integerValue];
  }

  else
  {
    _cachedInterfaceOrientation2 = [windowScene2 _effectiveSettings];
    integerValue = [_cachedInterfaceOrientation2 interfaceOrientation];
  }

  v9 = integerValue;

  return v9;
}

- (void)_rotateWindowToOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration skipCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  v10 = *&self->_windowFlags & 0x40000000;
  if (bar)
  {
    v11 = [UIApp _statusBarOrientationFollowsWindow:self];
  }

  else
  {
    v11 = 0;
  }

  _windowOwnsInterfaceOrientation = [(UIWindow *)self _windowOwnsInterfaceOrientation];
  if (v10)
  {
    v13 = _windowOwnsInterfaceOrientation;
  }

  else
  {
    v13 = 1;
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x4010000000;
  v78 = "";
  v79 = 0u;
  v80 = 0u;
  _hasApplicationCalledLaunchDelegate = [UIApp _hasApplicationCalledLaunchDelegate];
  viewOrientation = self->_viewOrientation;
  if (!((viewOrientation != 0) | _hasApplicationCalledLaunchDelegate & 1))
  {
    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    _interfaceOrientation = [_windowHostingScene _interfaceOrientation];

    if (_interfaceOrientation != orientation)
    {
      goto LABEL_9;
    }

LABEL_14:
    [(UIView *)self frame];
    v42 = v76;
    v76[4] = v43;
    v42[5] = v44;
    v42[6] = v45;
    v42[7] = v46;
    [(UIView *)self bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    goto LABEL_17;
  }

  if (!viewOrientation)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v13)
  {
    if (!self->_viewOrientation)
    {
      screen = [(UIWindow *)self screen];
      self->_viewOrientation = [screen _interfaceOrientation];
    }

    [(UIView *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
    [(UIWindow *)self convertRect:_coordinateSpace toCoordinateSpace:v18, v20, v22, v24];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [(_UISceneUIWindowHosting *)self->_windowHostingScene _referenceBounds];
    v36 = _UIWindowConvertRectFromOrientationToOrientation([(UIWindow *)self _orientationInSceneSpace], orientation, v27, v29, v31, v33, v34, v35);
  }

  else
  {
    [(UIWindow *)self _sceneReferenceBounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [(UIWindow *)self _sceneReferenceBounds];
    v36 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(orientation, v56, v58, v60, v62, v63, v64);
  }

  v48 = v36;
  v50 = v37;
  v52 = v38;
  v54 = v39;
  v65 = v76;
  *(v76 + 4) = v36;
  v65[5] = v37;
  v65[6] = v38;
  v65[7] = v39;
LABEL_17:
  self->_fromWindowOrientation = self->_viewOrientation;
  self->_toWindowOrientation = orientation;
  v66 = 0.0;
  if (!callbacksCopy)
  {
    [UIView _durationForRotationFromInterfaceOrientation:self->_fromWindowOrientation toInterfaceOrientation:orientation withBaseDuration:duration];
    v66 = v67;
  }

  v68 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  v69 = [(_UIWindowAnimationController *)_UIWindowRotationAnimationController animationControllerWithWindow:self];
  [(_UIViewControllerTransitionContext *)v68 _setDuration:v66];
  [v69 setDuration:v66];
  [v69 setSkipCallbacks:callbacksCopy];
  [v69 setUpdateStatusBarIfNecessary:v11];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __78__UIWindow__rotateWindowToOrientation_updateStatusBar_duration_skipCallbacks___block_invoke;
  v71[3] = &unk_1E711E6E0;
  v71[4] = self;
  v71[5] = &v75;
  v71[6] = orientation;
  v72 = v11;
  *&v71[7] = v66;
  v73 = v10 >> 30;
  v74 = callbacksCopy;
  [v69 setAnimations:v71];
  [(_UIViewControllerTransitionContext *)v68 _setIsAnimated:v66 > 0.0];
  [(_UIViewControllerTransitionContext *)v68 _setRotating:1];
  rootViewController = [(UIWindow *)self rootViewController];
  [(_UIViewControllerOneToOneTransitionContext *)v68 _setFromViewController:rootViewController];

  [(_UIViewControllerOneToOneTransitionContext *)v68 _setToViewController:0];
  [(_UIViewControllerTransitionContext *)v68 _setContainerView:self];
  [(UIView *)self frame];
  [(_UIViewControllerOneToOneTransitionContext *)v68 _setFromStartFrame:?];
  [(_UIViewControllerOneToOneTransitionContext *)v68 _setToEndFrame:v48, v50, v52, v54];
  [(UIView *)self frame];
  [(_UIViewControllerOneToOneTransitionContext *)v68 _setToStartFrame:?];
  [(_UIViewControllerOneToOneTransitionContext *)v68 _setFromEndFrame:v48, v50, v52, v54];
  [(_UIViewControllerTransitionContext *)v68 _setAnimator:v69];
  [(UIWindow *)self _rotateToBounds:v69 withAnimator:v68 transitionContext:v48, v50, v52, v54];

  _Block_object_dispose(&v75, 8);
}

void __78__UIWindow__rotateWindowToOrientation_updateStatusBar_duration_skipCallbacks___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 496) = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__UIWindow__rotateWindowToOrientation_updateStatusBar_duration_skipCallbacks___block_invoke_2;
  v11[3] = &unk_1E70FE3F8;
  v12 = *(a1 + 32);
  v2 = _Block_copy(v11);
  v3 = v2;
  if (*(a1 + 64) == 1 && *(*(a1 + 32) + 888) != *(a1 + 48))
  {
    v4 = [[UIStatusBarOrientationAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarOrientationAnimationParameters *)v4 setOrientationAnimation:2];
    [(UIStatusBarAnimationParameters *)v4 setDuration:*(a1 + 56)];
    v5 = UIApp;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = v7[111];
    v9 = [v7 windowScene];
    [v5 setStatusBarOrientation:v6 fromOrientation:v8 windowScene:v9 animationParameters:v4 updateBlock:v3];
  }

  else
  {
    (*(v2 + 2))(v2);
  }

  *(*(a1 + 32) + 576) = *(*(a1 + 32) + 576) & 0xFFFFFFFFBFFFFFFFLL | ((*(a1 + 65) & 1) << 30);
  if (*(a1 + 65) == 1)
  {
    [*(a1 + 32) _resizeWindowFrameToSceneBoundsIfNecessary];
  }

  if (*(a1 + 66) == 1)
  {
    v10 = [*(a1 + 32) rootViewController];
    [v10 window:*(a1 + 32) setupWithInterfaceOrientation:*(a1 + 48)];
  }
}

uint64_t __78__UIWindow__rotateWindowToOrientation_updateStatusBar_duration_skipCallbacks___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateTransformLayer];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];

  return [v2 setFrame:{v4, v5, v6, v7}];
}

- (void)_setRotatableClient:(id)client toOrientation:(int64_t)orientation updateStatusBar:(BOOL)bar duration:(double)duration force:(BOOL)force isRotating:(BOOL)rotating
{
  rotatingCopy = rotating;
  forceCopy = force;
  barCopy = bar;
  v116 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  v16 = WeakRetained == clientCopy && rotatingCopy;

  selfCopy = self;
  viewOrientation = self->_viewOrientation;
  if (dyld_program_sdk_at_least())
  {
    rootViewController = [(UIWindow *)self rootViewController];
    v18 = [rootViewController isViewLoaded] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  if (forceCopy)
  {
    v19 = 1;
  }

  else
  {
    v19 = [UIApp _hasApplicationCalledLaunchDelegate] ^ 1 | v18;
  }

  v69 = v19 & 1;
  if (barCopy)
  {
    v20 = [UIApp _statusBarOrientationFollowsWindow:selfCopy];
  }

  else
  {
    v20 = 0;
  }

  if (![objc_opt_class() _transformLayerRotationsAreEnabled] || !v16)
  {
    if (v16)
    {
      _clientsForRotation = [(UIWindow *)selfCopy _clientsForRotation];
      __clientsForRotationCallbacks = [(UIWindow *)selfCopy __clientsForRotationCallbacks];
    }

    else
    {
      __clientsForRotationCallbacks = [MEMORY[0x1E695DEC8] arrayWithObject:clientCopy];
      _clientsForRotation = __clientsForRotationCallbacks;
    }

    v70 = __clientsForRotationCallbacks;
    if ([_clientsForRotation count] == 1)
    {
      lastObject = [_clientsForRotation lastObject];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        lastObject2 = [_clientsForRotation lastObject];
        viewOrientation = [lastObject2 _lastKnownInterfaceOrientation];
      }
    }

    if (!v16 && (v20 & 1) == 0 && !forceCopy)
    {
      goto LABEL_91;
    }

    if (viewOrientation != orientation || forceCopy)
    {
      v64 = v20;
      v65 = v16;
      v67 = clientCopy;
      v63 = [UIView _degreesToRotateFromInterfaceOrientation:viewOrientation toInterfaceOrientation:orientation];
      v27 = 0.0;
      if ((v69 & 1) == 0)
      {
        [UIView _durationForRotationFromInterfaceOrientation:viewOrientation toInterfaceOrientation:orientation withBaseDuration:duration];
        v27 = v28;
      }

      orientationCopy = orientation;
      v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_clientsForRotation, "count")}];
      v30 = selfCopy;
      v71 = (*&selfCopy->_windowFlags & 0x20000) == 0;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v66 = _clientsForRotation;
      v31 = _clientsForRotation;
      v32 = [v31 countByEnumeratingWithState:&v109 objects:v115 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v110;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v110 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v109 + 1) + 8 * i);
            v37 = [[UIClientRotationContext alloc] initWithClient:v36 toOrientation:orientationCopy duration:v30 andWindow:v27];
            contentView = [(UIClientRotationContext *)v37 contentView];

            if (contentView)
            {
              if (objc_opt_respondsToSelector())
              {
                v30 = selfCopy;
                v71 &= [v36 shouldWindowUseOnePartInterfaceRotationAnimation:selfCopy];
              }

              else
              {
                v71 = 0;
                v30 = selfCopy;
              }

              [v29 addObject:v37];
            }

            else
            {
              v30 = selfCopy;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v109 objects:v115 count:16];
        }

        while (v33);
      }

      if ((v71 & 1) != 0 || (NSLog(&cfstr_TwoStageRotati.isa), v65) && [v29 count] < 2)
      {
        clientCopy = v67;
        if ([v29 count])
        {
          [(UIWindow *)v30 beginDisablingInterfaceAutorotation];
          if (v65)
          {
            v39 = 2048;
            if ((v71 & 1) == 0)
            {
              v39 = 0;
            }

            v30->_windowFlags = (*&v30->_windowFlags & 0xFFFFFFFFFFFFF7FFLL | v39);
          }

          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v40 = v29;
          v41 = [v40 countByEnumeratingWithState:&v105 objects:v114 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v106;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v106 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v105 + 1) + 8 * j);
                rotatingClient = [v45 rotatingClient];
                v47 = [v70 containsObject:rotatingClient];
                v48 = 1;
                if (v47 && (v69 & 1) == 0)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [rotatingClient window:selfCopy willRotateToInterfaceOrientation:orientationCopy duration:v27];
                    v48 = 0;
                  }

                  else
                  {
                    v48 = 1;
                  }
                }

                [v45 setSkipClientRotationCallbacks:v48];
              }

              v42 = [v40 countByEnumeratingWithState:&v105 objects:v114 count:16];
            }

            while (v42);
          }

          if (((!v65 | v69) & 1) == 0)
          {
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v50 = MEMORY[0x1E695DF20];
            v51 = [MEMORY[0x1E696AD98] numberWithInt:orientationCopy];
            v52 = [v50 dictionaryWithObjectsAndKeys:{v51, @"UIWindowNewOrientationUserInfoKey", 0}];
            [defaultCenter postNotificationName:@"UIWindowWillRotateNotification" object:selfCopy userInfo:v52];
          }

          v53 = selfCopy;
          *&selfCopy->_windowFlags |= 0x400uLL;
          if (v71)
          {
            if (v27 > 0.0)
            {
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v54 = v40;
              v55 = [v54 countByEnumeratingWithState:&v89 objects:v113 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v90;
                do
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v90 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v89 + 1) + 8 * k);
                    rotatingClient2 = [v59 rotatingClient];
                    v61 = [v70 containsObject:rotatingClient2];

                    v53 = selfCopy;
                    if (v61)
                    {
                      [v59 setupRotationOrderingKeyboardInAfterRotation:(*&selfCopy->_windowFlags >> 18) & 1];
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v89 objects:v113 count:16];
                }

                while (v56);
              }
            }

            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 3221225472;
            v88[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_4;
            v88[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
            *&v88[4] = v27;
            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_5;
            v78[3] = &unk_1E711E730;
            v82 = orientationCopy;
            v79 = v40;
            v84 = v27 > 0.0;
            v80 = v70;
            v81 = v53;
            v85 = v64;
            v83 = v27;
            v86 = v69;
            v87 = v65;
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_7;
            v74[3] = &unk_1E70F8A38;
            v74[4] = v53;
            v75 = v79;
            v76 = v27 > 0.0;
            v77 = v69;
            [UIView conditionallyAnimate:v27 > 0.0 withAnimation:v88 layout:v78 completion:v74];

            lastObject3 = v79;
            clientCopy = v67;
          }

          else
          {
            lastObject3 = [v40 lastObject];
            v104[0] = MEMORY[0x1E69E9820];
            v104[1] = 3221225472;
            v104[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke;
            v104[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
            *&v104[4] = v27;
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_2;
            v95[3] = &unk_1E711E708;
            v103 = v27 > 0.0;
            v96 = v40;
            clientCopy = v67;
            v99 = viewOrientation;
            v102 = v63;
            v97 = v67;
            v98 = selfCopy;
            v100 = orientationCopy;
            v101 = v27;
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 3221225472;
            v93[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_3;
            v93[3] = &unk_1E70F3C60;
            v93[4] = selfCopy;
            v94 = v96;
            [UIView conditionallyAnimate:v27 > 0.0 withAnimation:v104 layout:v95 completion:v93];
          }

          _clientsForRotation = v66;
          goto LABEL_91;
        }
      }

      else
      {
        NSLog(&cfstr_UsingTwoStageR.isa);
        clientCopy = v67;
      }
    }

    else if ([UIApp _statusBarOrientationForWindow:selfCopy] != orientation)
    {
      selfCopy->_viewOrientation = orientation;
      if ([UIApp _statusBarOrientationFollowsWindow:?])
      {
        [UIApp setStatusBarOrientation:orientation animation:2 duration:0.0];
      }
    }

LABEL_91:

    goto LABEL_92;
  }

  if (viewOrientation == orientation && !forceCopy)
  {
    if ([UIApp _statusBarOrientationForWindow:selfCopy] != orientation)
    {
      selfCopy->_viewOrientation = orientation;
      if ([UIApp _statusBarOrientationFollowsWindow:selfCopy])
      {
        [UIApp setStatusBarOrientation:orientation animation:2 duration:0.0];
      }
    }
  }

  else
  {
    [(UIWindow *)selfCopy _rotateWindowToOrientation:orientation updateStatusBar:v20 duration:v69 skipCallbacks:duration];
  }

LABEL_92:
}

uint64_t __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 84) == 1)
  {
    v2 = [*(a1 + 32) lastObject];
    [v2 slideHeaderViewAndFooterViewOffScreen:1 forInterfaceOrientation:*(a1 + 56)];
    v3 = *(a1 + 56);
    switch(v3)
    {
      case 1:
        v4 = 0.0;
        break;
      case 3:
        v4 = 90.0;
        break;
      case 4:
        v4 = -90.0;
        break;
      default:
        v4 = 180.0;
        if (v3 != 2)
        {
          v4 = 0.0;
        }

        break;
    }

    v5 = v4 + vcvtd_n_f64_s32(*(a1 + 80), 1uLL);
    v6 = [v2 contentView];
    CGAffineTransformMakeRotation(&v8, v5 * 0.0174532925);
    [v6 setTransform:&v8];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 40) window:*(a1 + 48) willAnimateFirstHalfOfRotationToInterfaceOrientation:*(a1 + 64) duration:*(a1 + 72) * 0.5];
  }

  return result;
}

void __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_5(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  switch(v2)
  {
    case 1:
      v3 = 0.0;
      break;
    case 3:
      v3 = 1.57079633;
      break;
    case 4:
      v3 = -1.57079633;
      break;
    default:
      v3 = 3.14159265;
      if (v2 != 2)
      {
        v3 = 0.0;
      }

      break;
  }

  memset(&v58, 0, sizeof(v58));
  CGAffineTransformMakeRotation(&v58, v3);
  *&v58.a = vrndaq_f64(*&v58.a);
  *&v58.c = vrndaq_f64(*&v58.c);
  *&v58.tx = vrndaq_f64(*&v58.tx);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v55;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v55 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v54 + 1) + 8 * i);
        if (*(a1 + 72) == 1 && (v10 = *(a1 + 40), [*(*(&v54 + 1) + 8 * i) rotatingClient], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "containsObject:", v11), v11, !v10))
        {
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v52 = v58;
          v51[2] = __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_6;
          v51[3] = &unk_1E70F3DC8;
          v51[4] = v9;
          [UIView performWithoutAnimation:v51];
        }

        else
        {
          v12 = *(a1 + 48);
          if ((dyld_program_sdk_at_least() & 1) != 0 || v12 && [v12 _forceLayoutEngineSolutionInRationalEdges])
          {
            v53 = v58;
            if (!CGAffineTransformIsIdentity(&v53))
            {
              v13 = [v9 contentView];
              [v13 _setHostsLayoutEngine:1];
            }
          }

          v14 = [v9 contentView];
          v53 = v58;
          [v14 setTransform:&v53];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v6);
  }

  *(*(a1 + 48) + 496) = *(a1 + 56);
  v15 = [UIApp _statusBarOrientationForWindow:*(a1 + 48)];
  v16 = v15;
  if (*(a1 + 73) == 1 && *(a1 + 56) != v15)
  {
    v17 = [[UIStatusBarOrientationAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarOrientationAnimationParameters *)v17 setOrientationAnimation:2];
    [(UIStatusBarAnimationParameters *)v17 setDuration:*(a1 + 64)];
    v18 = UIApp;
    v19 = *(a1 + 56);
    v20 = [*(a1 + 48) windowScene];
    [v18 setStatusBarOrientation:v19 fromOrientation:v16 windowScene:v20 animationParameters:v17 updateBlock:0];
  }

  v42 = v16;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = *(a1 + 32);
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v47 + 1) + 8 * j) rotatingClient];
        v27 = [*(a1 + 40) containsObject:v26];
        if (*(a1 + 74) & 1) == 0 && v27 && (objc_opt_respondsToSelector())
        {
          [v26 window:*(a1 + 48) willAnimateRotationToInterfaceOrientation:*(a1 + 56) duration:*(a1 + 64)];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v26 window:*(a1 + 48) setupWithInterfaceOrientation:*(a1 + 56)];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v23);
  }

  if (*(a1 + 75) == 1 && (*(a1 + 74) & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = *(a1 + 48);
    v30 = MEMORY[0x1E695DF20];
    v31 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    v32 = [v30 dictionaryWithObjectsAndKeys:{v31, @"UIWindowNewOrientationUserInfoKey", 0}];
    [v28 postNotificationName:@"UIWindowWillAnimateRotationNotification" object:v29 userInfo:v32];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = *(a1 + 32);
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v44;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v43 + 1) + 8 * k);
          v39 = *(a1 + 40);
          v40 = [v38 rotatingClient];
          LODWORD(v39) = [v39 containsObject:v40];

          if (v39)
          {
            [v38 rotateSnapshots];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v35);
    }
  }

  if (*(a1 + 56) != v42)
  {
    v41 = [*(a1 + 48) windowScene];
    [v41 _updateClientSettingsToInterfaceOrientation:*(a1 + 56) withAnimationDuration:*(a1 + 64)];
  }
}

void __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  v4[2] = *(a1 + 72);
  [v2 setTransform:v4];
}

uint64_t __88__UIWindow__setRotatableClient_toOrientation_updateStatusBar_duration_force_isRotating___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 49);
  }

  return [v3 _finishedFullRotation:a2 context:*(a1 + 40) skipNotification:v4];
}

- (void)_finishedFirstHalfRotation:(id)rotation finished:(BOOL)finished context:(id)context
{
  contextCopy = context;
  lastObject = [contextCopy lastObject];
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained window:self didAnimateFirstHalfOfRotationToInterfaceOrientation:{objc_msgSend(lastObject, "toOrientation")}];
  }

  memset(&v27, 0, sizeof(v27));
  toOrientation = [lastObject toOrientation];
  v10 = 0.0;
  if (toOrientation != 1)
  {
    if ([lastObject toOrientation] == 4)
    {
      v10 = -1.57079633;
    }

    else if ([lastObject toOrientation] == 3)
    {
      v10 = 1.57079633;
    }

    else
    {
      toOrientation2 = [lastObject toOrientation];
      v10 = 3.14159265;
      if (toOrientation2 != 2)
      {
        v10 = 0.0;
      }
    }
  }

  CGAffineTransformMakeRotation(&v27, v10);
  *&v27.a = vrndaq_f64(*&v27.a);
  *&v27.c = vrndaq_f64(*&v27.c);
  *&v27.tx = vrndaq_f64(*&v27.tx);
  [lastObject duration];
  v13 = v12;
  if (v12 > 0.0)
  {
    [lastObject finishFirstHalfRotation];
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__UIWindow__finishedFirstHalfRotation_finished_context___block_invoke;
  v25[3] = &unk_1E7103420;
  v26 = lastObject;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__UIWindow__finishedFirstHalfRotation_finished_context___block_invoke_2;
  v19[3] = &unk_1E711E758;
  v24 = v13 > 0.0;
  v20 = v26;
  selfCopy = self;
  v22 = WeakRetained;
  v23 = v27;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__UIWindow__finishedFirstHalfRotation_finished_context___block_invoke_3;
  v17[3] = &unk_1E70F3C60;
  v17[4] = self;
  v18 = contextCopy;
  v14 = v26;
  v15 = WeakRetained;
  v16 = contextCopy;
  [UIView conditionallyAnimate:v13 > 0.0 withAnimation:v25 layout:v19 completion:v17];
}

void __56__UIWindow__finishedFirstHalfRotation_finished_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = a2;
  [v4 duration];
  [UIView animateWithDuration:0x20000 delay:v7 options:v5 animations:v6 * 0.5 completion:0.0];
}

void __56__UIWindow__finishedFirstHalfRotation_finished_context___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) slideHeaderViewAndFooterViewOffScreen:0 forInterfaceOrientation:{objc_msgSend(*(a1 + 32), "toOrientation")}];
  }

  *(*(a1 + 40) + 496) = [*(a1 + 32) toOrientation];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = [*(a1 + 32) fromOrientation];
    [*(a1 + 32) duration];
    [v2 window:v3 willAnimateSecondHalfOfRotationFromInterfaceOrientation:v4 duration:v5 * 0.5];
  }

  v6 = [*(a1 + 32) contentView];
  v7 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v7;
  v8[2] = *(a1 + 88);
  [v6 setTransform:v8];
}

- (void)_finishedFullRotation:(BOOL)rotation context:(id)context skipNotification:(BOOL)notification
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [contextCopy countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(contextCopy);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if (([v11 skipClientRotationCallbacks] & 1) == 0)
        {
          [v11 finishFullRotateUsingOnePartAnimation:(*&self->_windowFlags >> 11) & 1];
        }
      }

      v8 = [contextCopy countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  *&self->_windowFlags &= 0xFFFFFFFFFFFFF3FFLL;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = contextCopy;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        if (([v17 skipClientRotationCallbacks] & 1) == 0)
        {
          rotatingClient = [v17 rotatingClient];
          v19 = objc_opt_respondsToSelector();

          if (v19)
          {
            rotatingClient2 = [v17 rotatingClient];
            [rotatingClient2 window:self didRotateFromInterfaceOrientation:{objc_msgSend(v17, "fromOrientation")}];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v14);
  }

  if ([v12 count] > 1 || (objc_msgSend(v12, "lastObject"), v21 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_delegateViewController), v23 = v21 == WeakRetained, WeakRetained, v21, !v23))
  {
    if (!notification)
    {
      lastObject = [v12 lastObject];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = MEMORY[0x1E695DF20];
      v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(lastObject, "fromOrientation")}];
      v28 = [v26 dictionaryWithObjectsAndKeys:{v27, @"UIWindowOldOrientationUserInfoKey", 0}];
      [defaultCenter postNotificationName:@"UIWindowDidRotateNotification" object:self userInfo:v28];
    }
  }

  [(UIWindow *)self endDisablingInterfaceAutorotation];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = UIWindow;
  [(UIView *)&v10 traitCollectionDidChange:changeCopy];
  _focusSystemSceneComponent = [(_UISceneUIWindowHosting *)self->_windowHostingScene _focusSystemSceneComponent];
  focusSystem = [_focusSystemSceneComponent focusSystem];

  if (focusSystem)
  {
    traitCollection = [(UIWindow *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    userInterfaceIdiom2 = [changeCopy userInterfaceIdiom];

    if (userInterfaceIdiom != userInterfaceIdiom2 || !self->_focusEventRecognizer)
    {
      [(UIWindow *)self _removeFocusEventRecognizer];
      [(UIWindow *)self _installFocusEventRecognizer];
    }
  }

  else
  {
    [(UIWindow *)self _removeFocusEventRecognizer];
  }

  [(UIWindow *)&self->super.super.super.isa _configurePassthroughInteractionIfNeeded];
}

+ (void)_synchronizeDrawingWithPreCommitHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [UIApp _cachedSystemAnimationFenceCreatingIfNecessary:0];
  if (v4)
  {
    [self _synchronizeDrawingWithFence:v4 preCommitHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    newFenceFromDefaultServer = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
    [self _synchronizeDrawingWithCAFence:newFenceFromDefaultServer preCommitHandler:handlerCopy];
    [newFenceFromDefaultServer invalidate];
  }

  else
  {
    [MEMORY[0x1E6979518] batch];
  }
}

+ (unsigned)_synchronizeDrawingAcrossProcesses
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[UIScene _synchronizedDrawingFence];
  cAFenceHandle = [v2 CAFenceHandle];
  copyPort = [cAFenceHandle copyPort];

  if (copyPort - 1 <= 0xFFFFFFFD)
  {
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Fence", &_synchronizeDrawingAcrossProcesses___s_category);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = MEMORY[0x1E696AF00];
          v9 = v7;
          callStackSymbols = [v8 callStackSymbols];
          v11[0] = 67109378;
          v11[1] = copyPort;
          v12 = 2114;
          v13 = callStackSymbols;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "returning a raw fence port (%x) from deprecated UIWindow SPI %{public}@", v11, 0x12u);
        }
      }
    }
  }

  [v2 invalidate];

  return copyPort;
}

+ (void)_synchronizeDrawingAcrossProcessesOverPort:(unsigned int)port
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Fence", &_synchronizeDrawingAcrossProcessesOverPort____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AF00];
        v11 = v9;
        callStackSymbols = [v10 callStackSymbols];
        v13[0] = 67109378;
        v13[1] = port;
        v14 = 2114;
        v15 = callStackSymbols;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "fencing on port (%x) using deprecated UIWindow SPI %{public}@", v13, 0x12u);
      }
    }
  }

  v5 = MEMORY[0x1E6979370];
  if (BSMachSendRightRetain())
  {
    portCopy = port;
  }

  else
  {
    portCopy = 0;
  }

  v7 = [v5 handleForPort:portCopy fenceId:0];
  [self _synchronizeDrawingWithCAFence:v7 preCommitHandler:0];
  [v7 invalidate];
}

+ (void)_synchronizeDrawingAcrossProcessesOverPort:(unsigned int)port withPreCommitHandler:(id)handler
{
  v6 = MEMORY[0x1E6979370];
  handlerCopy = handler;
  if (BSMachSendRightRetain())
  {
    portCopy = port;
  }

  else
  {
    portCopy = 0;
  }

  v9 = [v6 handleForPort:portCopy fenceId:0];
  [self _synchronizeDrawingWithCAFence:v9 preCommitHandler:handlerCopy];

  [v9 invalidate];
}

+ (void)_synchronizeDrawingWithCAFence:(id)fence preCommitHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  fenceCopy = fence;
  handlerCopy = handler;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:5949 description:@"fencing must be performed on the main thread"];
  }

  if ([fenceCopy isUsable])
  {
    if (__caCommitState == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Fence", &qword_1EA968EA8);
        if (*CategoryCachedImpl)
        {
          v10 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "if we're snapshotting then just ignore fence requests - we'll synchronize anyway so that'll have to be close enough", buf, 2u);
          }
        }
      }

      goto LABEL_23;
    }

    [UIApp _beginFenceTaskIfNecessary];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = __windowsWithContexts();
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (!v12)
    {
LABEL_22:

      goto LABEL_23;
    }

    v13 = v12;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        WeakRetained = objc_loadWeakRetained((*(*(&v27 + 1) + 8 * i) + 464));
        v18 = [WeakRetained addFence:fenceCopy];

        v14 |= v18;
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v13);

    if (v14)
    {
      if (!handlerCopy)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v19 = *(__UILogGetCategoryCachedImpl("Fence", &qword_1EA968EB0) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = MEMORY[0x1E6979518];
        v11 = v19;
        currentPhase = [v20 currentPhase];
        *buf = 67109120;
        *&buf[4] = currentPhase;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "failed to register fence : current transaction phase %i", buf, 8u);
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  if (!handlerCopy)
  {
    goto LABEL_31;
  }

LABEL_24:
  v22 = [handlerCopy copy];
  if (qword_1EA968EA0)
  {
    [qword_1EA968EA0 addObject:v22];
  }

  else
  {
    v23 = [MEMORY[0x1E695DF70] arrayWithObject:v22];
    v24 = qword_1EA968EA0;
    qword_1EA968EA0 = v23;
  }

LABEL_28:
  if ((byte_1EA968DCE & 1) == 0)
  {
    byte_1EA968DCE = [MEMORY[0x1E6979518] addCommitHandler:&__block_literal_global_550_0 forPhase:3];
    if ((byte_1EA968DCE & 1) == 0)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      currentPhase2 = [MEMORY[0x1E6979518] currentPhase];
      v31 = 67109120;
      v32 = currentPhase2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    [MEMORY[0x1E6979518] activate];
  }

LABEL_31:
}

+ (void)_synchronizeDrawingWithFence:(id)fence preCommitHandler:(id)handler
{
  v6 = UIApp;
  handlerCopy = handler;
  fenceCopy = fence;
  [v6 _trackSystemAnimationFence:fenceCopy];
  cAFenceHandle = [fenceCopy CAFenceHandle];

  [self _synchronizeDrawingWithCAFence:cAFenceHandle preCommitHandler:handlerCopy];
}

- (void)_setSystemGestureRecognitionIsPossible:(BOOL)possible andTouchesAreCancelled:(BOOL)cancelled
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(self + 656);
  if ((v4 & 1) != possible)
  {
    cancelledCopy = cancelled;
    *(self + 656) = v4 & 0xFE | possible;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"_UIWindowSystemGestureCancellingTouchesUserInfoKey";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:cancelledCopy];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"_UIWindowSystemGestureStateChangedNotification" object:self userInfo:v9];
  }
}

- (BOOL)_shouldDelayTouchForSystemGestures:(id)gestures
{
  v8 = ([v4 _edgeType] - 1) <= 3 && (+[UIPeripheralHost sharedInstance](UIPeripheralHost, "sharedInstance"), v5 = v4 = gestures;

  return v8;
}

- (unint64_t)_edgeForTouch:(id)touch
{
  touchCopy = touch;
  window = [touchCopy window];
  [touchCopy locationInView:0];
  [window convertPoint:0 toWindow:?];
  v7 = v6;
  v9 = v8;

  screen = [(UIWindow *)self screen];
  [screen bounds];
  v15 = UIRectEdgeRegionForLocation(v11, v12, v13, v14, v7, v9, 30.0);

  if (!+[UIWindow _transformLayerRotationsAreEnabled])
  {
    window2 = [touchCopy window];
    windowScene = [window2 windowScene];
    _interfaceOrientation = [windowScene _interfaceOrientation];
    v19 = 90;
    v20 = -90;
    v21 = 180;
    if (_interfaceOrientation != 2)
    {
      v21 = 0;
    }

    if (_interfaceOrientation != 4)
    {
      v20 = v21;
    }

    if (_interfaceOrientation != 3)
    {
      v19 = v20;
    }

    if (_interfaceOrientation == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    v15 = _rotatedEdgesGivenOrientationInDegrees(v15, v22);
  }

  return v15;
}

- (void)_keyboardDismissalGestureRecognized:(id)recognized
{
  _firstResponder = [(UIWindow *)self _firstResponder];
  [_firstResponder resignFirstResponder];
}

- (void)handleStatusBarChangeFromHeight:(double)height toHeight:(double)toHeight
{
  [(UIView *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v9 == 0.0 || (dyld_program_sdk_at_least() & 1) != 0)
  {
    windowScene = [(UIWindow *)self windowScene];
    if (![windowScene _interfaceOrientation] || (v16 = objc_msgSend(windowScene, "_interfaceOrientation"), v16 == -[UIWindow interfaceOrientation](self, "interfaceOrientation")))
    {
      _coordinateSpace = [windowScene _coordinateSpace];
      [_coordinateSpace bounds];
      v41.origin.x = v8;
      v41.origin.y = v10;
      v41.size.width = v12;
      v41.size.height = v14;
      v18 = CGRectEqualToRect(v40, v41);

      if (v18)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);
        self->_lastPropagatedStatusBarHeight = toHeight;
        if (WeakRetained)
        {
          if (objc_opt_respondsToSelector())
          {
            if (WeakRetained == self->_rootViewController)
            {
              [(UIViewController *)WeakRetained window:self statusBarWillChangeFromHeight:height toHeight:toHeight];
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            [(UIView *)self bounds];
            v24 = v23;
            v26 = v25 + 0.0;
            v28 = v27 + height;
            v30 = v29 - (height + 0.0);
            [(UIView *)self bounds];
            [(UIViewController *)WeakRetained window:self willAnimateFromContentFrame:v26 toContentFrame:v28, v24, v30, v31 + 0.0, v32 + toHeight, v34, v33 - (toHeight + 0.0)];
          }
        }
      }
    }
  }

  else
  {
    v20 = __UIStatusBarManagerForWindow(self);
    [v20 statusBarHeight];
    v22 = v21;

    [(UIWindow *)self setFrame:v8, v10 + v22 - v10, v12, v14 - (v22 - v10)];
  }

  [(UIView *)self setNeedsLayout];
  if (dyld_program_sdk_at_least())
  {
    if ([(UIViewController *)self->_rootViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_rootViewController view];
      if (view)
      {
        v36 = view;
        view2 = [(UIViewController *)self->_rootViewController view];
        translatesAutoresizingMaskIntoConstraints = [view2 translatesAutoresizingMaskIntoConstraints];

        if ((translatesAutoresizingMaskIntoConstraints & 1) == 0)
        {
          [(UIView *)self _setNeedsUpdateConstraints];

          [(UIView *)self layoutIfNeeded];
        }
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v10 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = *(__UILogGetCategoryCachedImpl("Window", &setDelegate____s_category_0) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = delegateCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "[UIWindow setDelegate:] no longer supports non-UIViewControllers. The delegate should always be the window's rootViewController. Window: %@, delegate: %@", &v6, 0x16u);
    }
  }

  else
  {
    [(UIWindow *)self _setDelegateViewController:delegateCopy];
  }
}

- (void)_setDelegateViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegateViewController);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegateViewController, obj);
    if (objc_opt_respondsToSelector())
    {
      isInWillRotateCallback = [obj isInWillRotateCallback];
    }

    else
    {
      isInWillRotateCallback = 0;
    }

    v7 = 0;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (isInWillRotateCallback & 1) == 0)
    {
      if (dyld_program_sdk_at_least() && -[UIView isHidden](self, "isHidden") && (-[UIWindow rootViewController](self, "rootViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isViewLoaded], v8, !v9))
      {
        rootViewController = [(UIWindow *)self rootViewController];
        _window = [rootViewController _window];
      }

      else
      {
        rootViewController = [obj rotatingContentViewForWindow:self];
        _window = [rootViewController superview];
      }

      v7 = _window == self;
    }

    _screen = [(_UISceneUIWindowHosting *)self->_windowHostingScene _screen];
    v13 = _screen;
    if (_screen && [_screen _userInterfaceIdiom] == 3)
    {
      selfCopy2 = self;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = obj != 0;
      selfCopy2 = self;
      v16 = v7;
    }

    [(UIWindow *)selfCopy2 setAutorotates:v15 forceUpdateInterfaceOrientation:v16];

    v5 = obj;
  }
}

- (void)setScreen:(UIScreen *)screen
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = screen;
  if ([objc_opt_class() _shouldSoftAssertOnSetScreen] && objc_msgSend(UIApp, "_appAdoptsUISceneLifecycle"))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v26 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v29 = "[UIWindow setScreen:]";
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle. Call [UIWindow setWindowScene:] instead.", buf, 0xCu);
      }
    }

    else
    {
      v24 = *(__UILogGetCategoryCachedImpl("Assert", &setScreen____s_category) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "[UIWindow setScreen:]";
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle. Call [UIWindow setWindowScene:] instead.", buf, 0xCu);
      }
    }
  }

  screen = [(UIWindow *)self screen];
  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  v8 = _FBSScene;
  if (screen != v5 || ([_FBSScene settings], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "displayIdentity"), v10 = objc_claimAutoreleasedReturnValue(), -[UIScreen displayIdentity](v5, "displayIdentity"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v9, (v12 & 1) == 0))
  {
    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = +[UIScreen mainScreen];
    }

    v14 = v13;
    v15 = screen;
    if (![(UIWindow *)self _wantsSceneAssociation])
    {
      goto LABEL_21;
    }

    if (![(UIWindow *)self _isWindowServerHostingManaged])
    {
LABEL_23:
      [(UIWindow *)self _didMoveFromScreen:v15 toScreen:v5];

      goto LABEL_24;
    }

    if (![UIApp isFrontBoard] || (objc_msgSend(UIApp, "disablesFrontBoardImplicitWindowScenes") & 1) != 0)
    {
      displayIdentity = [(UIScreen *)v14 displayIdentity];
      if (!displayIdentity)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:6356 description:{@"Attempting to attach a window (%@) to a screen with a nil FBSDisplayIdentity", self}];
      }

      if (([UIApp _appAdoptsUISceneLifecycle] & 1) != 0 || !-[UIWindow _isWindowServerHostingManaged](self, "_isWindowServerHostingManaged"))
      {
        v17 = 0;
      }

      else
      {
        v17 = __UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle(displayIdentity, 1);
      }

      [(UIWindow *)self _setFBSScene:v17];

      goto LABEL_22;
    }

    if (v8 && ([v8 settings], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "displayConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), -[UIScreen displayConfiguration](v14, "displayConfiguration"), v20 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v19, "isEqual:", v20), v20, v19, v18, (v27 & 1) == 0))
    {
      v21 = UIApp;
      displayIdentity = [(UIScreen *)v15 displayConfiguration];
      displayConfiguration = [(UIScreen *)v14 displayConfiguration];
      v23 = [v21 _newSceneForWindow:self oldDisplay:displayIdentity newDisplay:displayConfiguration];
      [(UIWindow *)self _setFBSScene:v23];
    }

    else
    {
LABEL_21:
      displayIdentity = [UIWindowScene _unassociatedWindowSceneForScreen:v14 create:1];
      [displayIdentity _attachWindow:self];
    }

LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_didMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  screenCopy = screen;
  toScreenCopy = toScreen;
  _FBSScene = [(_UISceneUIWindowHosting *)self->_windowHostingScene _FBSScene];
  if (screenCopy != toScreenCopy || ([_FBSScene settings], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayIdentity"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(toScreenCopy, "displayIdentity"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v8, (v11 & 1) == 0))
  {
    if (toScreenCopy)
    {
      v12 = toScreenCopy;
    }

    else
    {
      v12 = +[UIScreen mainScreen];
    }

    v13 = v12;
    [(UIWindow *)self _sceneBounds];
    [(UIWindow *)self _willChangeToSize:[(UIWindow *)self interfaceOrientation] orientation:v13 screen:0 withTransitionCoordinator:v14, v15];
    rootViewController = [(UIWindow *)self rootViewController];
    [rootViewController __willChangeToIdiom:objc_msgSend(toScreenCopy onScreen:{"_userInterfaceIdiom"), toScreenCopy}];

    [(UIView *)self _willChangeToIdiomOnScreen:toScreenCopy traverseHierarchy:1];
    if ([(UIWindow *)self _shouldPrepareScreenForWindow])
    {
      [v13 _prepareForWindow];
    }

    _isHostedInAnotherProcess = [(UIWindow *)self _isHostedInAnotherProcess];
    session = [(_UISceneUIWindowHosting *)self->_windowHostingScene session];
    role = [session role];
    v20 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

    if (!_isHostedInAnotherProcess && v20)
    {
      [v13 bounds];
      [(UIWindow *)self setFrame:?];
      *&self->_windowFlags |= 0x40000000uLL;
    }

    [(UIWindow *)self _sceneBoundsDidChange];
    if (!-[UIView isHidden](self, "isHidden") && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
    {
      [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:0];
    }

    [screenCopy scale];
    v22 = v21;
    [toScreenCopy scale];
    if (v22 != v23)
    {
      _layoutEngine = [(UIView *)self _layoutEngine];

      if (_layoutEngine)
      {
        [(UIView *)self _rebuildLayoutFromScratch];
      }
    }

    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (_sceneSessionRoleIsCarPlayOrNonInteractiveExternal)
    {
      _UIViewRecursivelyApplyBlockToSubtreesWithMotionEffects(self, &__block_literal_global_1463_0);
    }

    else
    {
      [(UIView *)self _recursivelyConsiderResumingMotionEffects];
    }

    [(UIWindow *)self _updateWindowTraitsAndNotify:1];
    [(UIView *)self _didChangeFromIdiomOnScreen:screenCopy traverseHierarchy:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{toScreenCopy, @"UIWindowNewScreenUserInfoKey", 0}];
    [defaultCenter postNotificationName:@"UIWindowDidMoveToScreenNotification" object:self userInfo:v28];

    _UIPencilEventRequestBarrelFocusIfAbleForWindow(self, 1);
    if ([toScreenCopy _userInterfaceIdiom] == 3)
    {
      [(UIWindow *)self setAutorotates:0 forceUpdateInterfaceOrientation:0];
    }
  }
}

- (void)_setOverrideParentTraitEnvironment:(id)environment
{
  obj = environment;
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained _unregisterAuxiliaryChildEnvironmentForTraitInvalidations:self];
    }

    objc_storeWeak(&self->_overrideParentTraitEnvironment, obj);
    if (obj)
    {
      [obj _registerAuxiliaryChildEnvironmentForTraitInvalidations:self];
    }

    [(UIWindow *)self _invalidateAuxiliaryChildTraits];
  }
}

- (id)_parentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);
  windowHostingScene = WeakRetained;
  if (!WeakRetained)
  {
    windowHostingScene = self->_windowHostingScene;
  }

  v5 = windowHostingScene;

  return windowHostingScene;
}

- (id)_traitCollectionWhenRotated
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  interfaceOrientation = [(UIWindow *)self interfaceOrientation];
  v8 = +[UIWindow _transformLayerRotationsAreEnabled];
  v9 = (interfaceOrientation - 1) < 2 || v8;
  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (!v9)
  {
    v4 = v6;
  }

  _windowParentTraitCollection = [(UIWindow *)&self->super.super.super.isa _windowParentTraitCollection];
  v12 = [(UIWindow *)self _traitCollectionForSize:_windowParentTraitCollection parentCollection:v10, v4];

  return v12;
}

- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIWindow__traitCollectionForSize_parentCollection___block_invoke;
  v6[3] = &unk_1E711E780;
  v6[4] = self;
  v4 = [(UIWindow *)self _traitCollectionForSize:collection parentCollection:v6 traitOverrideApplicator:size.width, size.height];

  return v4;
}

id __53__UIWindow__traitCollectionForSize_parentCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(UIView *)*(a1 + 32) _traitOverridesIfExist];
  v5 = v4;
  if (v4)
  {
    v6 = [(_UITraitOverrides *)v4 _traitCollectionByApplyingOverridesToTraitCollection:v3];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection traitOverrideApplicator:(id)applicator
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  applicatorCopy = applicator;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v53 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  p_viewFlags = &self->super._viewFlags;
  v54 = *(&self->super._viewFlags + 3);
  *(&self->super._viewFlags + 3) = v54 | 2;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(UIView *)self bounds];
    height = v15;
    v17 = v16;
    interfaceOrientation = [(UIWindow *)self interfaceOrientation];
    v19 = +[UIWindow _transformLayerRotationsAreEnabled];
    v20 = (interfaceOrientation - 1) < 2 || v19;
    width = v20 ? height : v17;
    if (v20)
    {
      height = v17;
    }
  }

  if (collectionCopy)
  {
    v21 = collectionCopy;
    goto LABEL_22;
  }

  if (dyld_program_sdk_at_least())
  {
    traitCollection = self->_traitCollection;
    if (traitCollection)
    {
      v21 = traitCollection;
      goto LABEL_22;
    }

    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:6593 description:@"Trait collection is being accessed too early"];
    }
  }

  v21 = +[UITraitCollection _emptyTraitCollection];
LABEL_22:
  v24 = v21;
  horizontalSizeClassStateRestorationOverride = self->_horizontalSizeClassStateRestorationOverride;
  if (!horizontalSizeClassStateRestorationOverride)
  {
    horizontalSizeClassStateRestorationOverride = _UIUserInterfaceSizeClassForWidth(width);
  }

  verticalSizeClassStateRestorationOverride = self->_verticalSizeClassStateRestorationOverride;
  if (!verticalSizeClassStateRestorationOverride)
  {
    verticalSizeClassStateRestorationOverride = _UIUserInterfaceSizeClassForHeight(height);
  }

  if ([UIApp _effectiveUserInterfaceStyle])
  {
    +[UIDevice currentDevice];
  }

  else
  {
    windowScene = [(UIWindow *)self windowScene];
    traitCollection = [windowScene traitCollection];

    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    _effectiveUISettings = [_windowHostingScene _effectiveUISettings];

    v31 = traitCollection;
    if (traitCollection || (v31 = _effectiveUISettings) != 0)
    {
      userInterfaceStyle = [v31 userInterfaceStyle];
    }

    else
    {
      userInterfaceStyle = 0;
    }

    +[UIDevice currentDevice];
  }
  v32 = ;
  userInterfaceIdiom = [v32 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([UIApp _isSpringBoard] & 1) == 0 && dyld_program_sdk_at_least())
  {
    screen = [(UIWindow *)self screen];
    coordinateSpace = [screen coordinateSpace];

    _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
    v37 = _coordinateSpace;
    v38 = -1;
    if (coordinateSpace && _coordinateSpace)
    {
      [coordinateSpace bounds];
      v40 = v39;
      v42 = v41;
      [v37 bounds];
      [v37 convertRect:coordinateSpace toCoordinateSpace:?];
      v38 = v44 < v42 || v43 < v40;
    }
  }

  else
  {
    v38 = -1;
  }

  if ([collectionCopy userInterfaceIdiom] == 3)
  {
    windowScene2 = [(UIWindow *)self windowScene];
    _effectiveUISettings2 = [windowScene2 _effectiveUISettings];

    if (_effectiveUISettings2)
    {
      accessibilityContrast = [_effectiveUISettings2 accessibilityContrast];
    }

    else
    {
      accessibilityContrast = -1;
    }
  }

  else
  {
    accessibilityContrast = -1;
  }

  [(UIView *)self _evaluateLayoutRulesForParentTraitCollection:v24];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __77__UIWindow__traitCollectionForSize_parentCollection_traitOverrideApplicator___block_invoke;
  v55[3] = &unk_1E711E7A8;
  v55[4] = self;
  v55[5] = horizontalSizeClassStateRestorationOverride;
  v55[6] = verticalSizeClassStateRestorationOverride;
  v55[7] = v51;
  v55[8] = v38;
  v55[9] = accessibilityContrast;
  v56 = (v54 & 2) != 0;
  v48 = [(UITraitCollection *)v24 _traitCollectionByModifyingTraitsCopyOnWrite:v55];
  if (applicatorCopy)
  {
    v49 = applicatorCopy[2](applicatorCopy, v48);

    v48 = v49;
  }

  *(p_viewFlags + 3) = *(p_viewFlags + 3) & 0xFFFFFFFFFFFFFFFDLL | (2 * ((v54 >> 1) & 1));
  *(GetTraitCollectionTSD() + 9) = v53;

  return v48;
}

void __77__UIWindow__traitCollectionForSize_parentCollection_traitOverrideApplicator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v5 = a3;
  v6 = [(UIView *)*(a1 + 32) _traitOverridesIfExist];
  v7 = v6;
  if (v6)
  {
    [(_UITraitOverrides *)v6 _applyTransformsUsingTraitCollectionProvider:v37 mutableTraitCollectionProvider:v5];
  }

  if (*(a1 + 40))
  {
    v8 = v37[2]();
    v9 = [v8 horizontalSizeClass];
    v10 = *(a1 + 40);

    if (v9 != v10)
    {
      v11 = *(a1 + 40);
      v12 = v5[2](v5);
      [v12 setHorizontalSizeClass:v11];
    }
  }

  if (*(a1 + 48))
  {
    v13 = v37[2]();
    v14 = [v13 verticalSizeClass];
    v15 = *(a1 + 48);

    if (v14 != v15)
    {
      v16 = *(a1 + 48);
      v17 = v5[2](v5);
      [v17 setVerticalSizeClass:v16];
    }
  }

  if (*(a1 + 56))
  {
    v18 = v37[2]();
    v19 = [v18 userInterfaceStyle];
    v20 = *(a1 + 56);

    if (v19 != v20)
    {
      v21 = *(a1 + 56);
      v22 = v5[2](v5);
      [v22 setUserInterfaceStyle:v21];
    }
  }

  if (*(a1 + 64) != -1)
  {
    v23 = v37[2]();
    v24 = [v23 userInterfaceLevel];
    v25 = *(a1 + 64);

    if (v24 != v25)
    {
      v26 = *(a1 + 64);
      v27 = v5[2](v5);
      [v27 setUserInterfaceLevel:v26];
    }
  }

  if (*(a1 + 72) != -1)
  {
    v28 = v37[2]();
    v29 = [v28 accessibilityContrast];
    v30 = *(a1 + 72);

    if (v29 != v30)
    {
      v31 = *(a1 + 72);
      v32 = v5[2](v5);
      [v32 setAccessibilityContrast:v31];
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v33 = [(UIView *)*(a1 + 32) __tintColor];
    if (v33)
    {
      v34 = v37[2]();
      v35 = [v34 _tintColor];

      if (v35 != v33)
      {
        v36 = v5[2](v5);
        [v36 _setTintColor:v33];
      }
    }
  }
}

- (void)_traitOverridesWillChange:(id)change withApplicator:(id)applicator
{
  applicatorCopy = applicator;
  if ((*(&self->super._viewFlags + 24) & 2) == 0)
  {
    v9 = applicatorCopy;
    _shouldPropagateTraitCollectionChanges = [(UIWindow *)self _shouldPropagateTraitCollectionChanges];
    applicatorCopy = v9;
    if (_shouldPropagateTraitCollectionChanges)
    {
      _windowParentTraitCollection = [(UIWindow *)&self->super.super.super.isa _windowParentTraitCollection];
      v8 = [(UIWindow *)self _traitCollectionForSize:_windowParentTraitCollection parentCollection:v9 traitOverrideApplicator:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

      [(UIWindow *)self _willTransitionToTraitCollection:v8 withTransitionCoordinator:0];
      applicatorCopy = v9;
    }
  }
}

- (void)_updateWindowTraitsAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  if ((*&self->_windowFlags & 0x20) != 0 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = self->_traitCollection;
    _windowParentTraitCollection = [(UIWindow *)&self->super.super.super.isa _windowParentTraitCollection];
    v7 = [(UIWindow *)self _traitCollectionForSize:_windowParentTraitCollection parentCollection:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    objc_storeStrong(&self->_traitCollection, v7);
    _UITraitEnvironmentGeneratedTraitCollection(self, v7);
    if (notifyCopy)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      _UICreateTraitCollectionChangeDescription(v5, v7, &v12);
      if ((BYTE8(v15) & 1) == 0)
      {
        _UIViewInvalidateTraitCollectionAndSchedulePropagation(self, 0, v8, v9);
        [(UIView *)self _traitCollectionDidChangeInternal:&v12];
        [(UIView *)self _invalidateTraitCollectionAndSchedulePropagationForSubviews];
        v10 = 0x4000000000;
        if (!BYTE11(v15))
        {
          v10 = 0;
        }

        self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFBFFFFFFFFFLL | v10);
        [(UIView *)self _traitCollectionDidChangeOnSubtreeInternal:&v12];
        *&self->_windowFlags &= ~0x4000000000uLL;
        [(_UIViewControllerNullAnimationTransitionCoordinator *)self->_traitCollectionChangeTransitionCoordinator _runAlongsideAnimations];
        [(UIWindow *)self _setTraitCollectionChangeTransitionCoordinator:0];
        destinationTraitCollection = self->_destinationTraitCollection;
        self->_destinationTraitCollection = 0;
      }

      if (v13)
      {
      }
    }
  }
}

- (void)_addLayoutRuleRegistration:(id)registration
{
  v4.receiver = self;
  v4.super_class = UIWindow;
  [(UIView *)&v4 _addLayoutRuleRegistration:registration];
  [(UIWindow *)self _updateWindowTraitsAndNotify:1];
}

- (void)_willChangeToSize:(CGSize)size orientation:(int64_t)orientation screen:(id)screen withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(UIWindow *)self _shouldPropagateTraitCollectionChanges]&& ((*&self->_windowFlags & 0x20) != 0 || (dyld_program_sdk_at_least() & 1) == 0))
  {
    v10 = +[UIWindow _transformLayerRotationsAreEnabled];
    v11 = (orientation - 1) < 2 || v10;
    if (v11)
    {
      v12 = width;
    }

    else
    {
      v12 = height;
    }

    if (!v11)
    {
      height = width;
    }

    _windowParentTraitCollection = [(UIWindow *)&self->super.super.super.isa _windowParentTraitCollection];
    height = [(UIWindow *)self _traitCollectionForSize:_windowParentTraitCollection parentCollection:v12, height];

    [(UIWindow *)self _willTransitionToTraitCollection:height withTransitionCoordinator:coordinatorCopy];
  }

  [(UIWindow *)self _setNeedsBoundingPathUpdate];
}

- (void)_parentWillTransitionToTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(UIWindow *)self _shouldPropagateTraitCollectionChanges])
  {
    v4 = [(UIWindow *)self _traitCollectionForSize:collectionCopy parentCollection:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UIWindow *)self _willTransitionToTraitCollection:v4 withTransitionCoordinator:0];
  }
}

- (void)_willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  traitCollection = [(UIWindow *)self traitCollection];
  if (traitCollection == collectionCopy)
  {
    v9 = 1;
  }

  else
  {
    traitCollection2 = [(UIWindow *)self traitCollection];
    v9 = [traitCollection2 isEqual:collectionCopy];
  }

  destinationTraitCollection = self->_destinationTraitCollection;
  if (destinationTraitCollection != collectionCopy && ((v9 | [(UITraitCollection *)destinationTraitCollection isEqual:collectionCopy]) & 1) == 0)
  {
    if (!coordinatorCopy)
    {
      v11 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      [(UIWindow *)self _setTraitCollectionChangeTransitionCoordinator:v11];

      coordinatorCopy = self->_traitCollectionChangeTransitionCoordinator;
      [(_UIViewControllerNullAnimationTransitionCoordinator *)self->_traitCollectionChangeTransitionCoordinator setContainerView:self];
    }

    v12 = [(UITraitCollection *)collectionCopy copy];
    v13 = self->_destinationTraitCollection;
    self->_destinationTraitCollection = v12;

    if ([(UIWindow *)self _shouldInstallRootPresentationController])
    {
      [(UIWindow *)self _rootPresentationController];
    }

    else
    {
      rootViewController = [(UIWindow *)self rootViewController];
      [rootViewController _parent:self willTransitionToTraitCollection:self->_destinationTraitCollection withTransitionCoordinator:coordinatorCopy];

      [(UIWindow *)self rootViewController];
    }
    v15 = ;
    [v15 _window:self willTransitionToTraitCollection:self->_destinationTraitCollection withTransitionCoordinator:coordinatorCopy];
  }
}

- (void)_propagateTraitCollectionChangedForStateRestorationWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  _windowParentTraitCollection = [(UIWindow *)&self->super.super.super.isa _windowParentTraitCollection];
  v6 = [(UIWindow *)self _traitCollectionForSize:_windowParentTraitCollection parentCollection:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(UIWindow *)self _willTransitionToTraitCollection:v6 withTransitionCoordinator:coordinatorCopy];

  [(UIWindow *)self _updateWindowTraitsAndNotify:1];
}

- (void)_setStateRestorationVerticalSizeClass:(int64_t)class horizontalSizeClass:(int64_t)sizeClass
{
  self->_verticalSizeClassStateRestorationOverride = class;
  self->_horizontalSizeClassStateRestorationOverride = sizeClass;
  if (dyld_program_sdk_at_least())
  {
    v5 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
    [(_UIViewControllerNullAnimationTransitionCoordinator *)v5 setContainerView:self];
    [(UIWindow *)self _propagateTraitCollectionChangedForStateRestorationWithTransitionCoordinator:v5];
    if (v5)
    {
      [(_UIViewControllerNullAnimationTransitionCoordinator *)v5 _runAlongsideAnimations];
      [(_UIViewControllerNullAnimationTransitionCoordinator *)v5 _runAlongsideCompletions];
    }
  }

  else
  {

    [(UIWindow *)self _propagateTraitCollectionChangedForStateRestorationWithTransitionCoordinator:0];
  }
}

- (void)_clearSizeClassesForStateRestoration
{
  self->_verticalSizeClassStateRestorationOverride = 0;
  self->_horizontalSizeClassStateRestorationOverride = 0;
  [(UIWindow *)self _propagateTraitCollectionChangedForStateRestorationWithTransitionCoordinator:0];
}

- (void)_setTraitCollectionChangeTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  traitCollectionChangeTransitionCoordinator = self->_traitCollectionChangeTransitionCoordinator;
  if (traitCollectionChangeTransitionCoordinator != coordinatorCopy)
  {
    v7 = coordinatorCopy;
    [(_UIViewControllerNullAnimationTransitionCoordinator *)traitCollectionChangeTransitionCoordinator _runAlongsideCompletionsAfterCommit];
    objc_storeStrong(&self->_traitCollectionChangeTransitionCoordinator, coordinator);
    coordinatorCopy = v7;
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  interfaceOrientation = [(UIWindow *)self interfaceOrientation];
  screen = [(UIWindow *)self screen];
  [(UIWindow *)self _willChangeToSize:interfaceOrientation orientation:screen screen:0 withTransitionCoordinator:width, height];

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = self;
  v18.super_class = UIWindow;
  [(UIView *)&v18 setBounds:x, y, width, height];
  [(UIWindow *)self _updateIsSceneSizedFlag];
  [(UIWindow *)self _autolayout_windowDidChangeBoundsFrom:v11, v13, v15, v17];
  [(UIWindow *)self _updateWindowTraitsAndNotify:1];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v30 = frame.size.height;
  v4 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layer = [(UIView *)self layer];
  layer2 = [(UIView *)self layer];
  superlayer = [layer2 superlayer];
  [layer convertRect:superlayer fromLayer:{x, y, v4, height}];
  v12 = v11;
  v14 = v13;

  interfaceOrientation = [(UIWindow *)self interfaceOrientation];
  screen = [(UIWindow *)self screen];
  [(UIWindow *)self _willChangeToSize:interfaceOrientation orientation:screen screen:0 withTransitionCoordinator:v12, v14];

  [(UIView *)self bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(UIView *)self center];
  v26 = v25;
  v28 = v27;
  v31.receiver = self;
  v31.super_class = UIWindow;
  [(UIView *)&v31 setFrame:x, y, width, v30];
  [(UIWindow *)self _updateIsSceneSizedFlag];
  [(UIWindow *)self _autolayout_windowDidChangeBoundsFrom:v18, v20, v22, v24];
  [(UIWindow *)self _autolayout_windowDidChangeCenterFrom:v26, v28];
  [(UIWindow *)self _updateWindowTraitsAndNotify:1];
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(UIView *)self center];
  v7 = v6;
  v9 = v8;
  v10.receiver = self;
  v10.super_class = UIWindow;
  [(UIView *)&v10 setCenter:x, y];
  [(UIWindow *)self _autolayout_windowDidChangeCenterFrom:v7, v9];
}

- (double)_adjustedWindowLevelFromLevel:(double)level
{
  windowScene = [(UIWindow *)self windowScene];
  v6 = windowScene;
  levelCopy = level;
  if (windowScene)
  {
    [windowScene _adjustedLevelForWindow:self preferredLevel:level];
    levelCopy = v8;
  }

  if (dyld_program_sdk_at_least() && (_UIApplicationIsSystemApplication() & 1) == 0 && ([UIApp _isSpringBoard] & 1) == 0 && !_AXSProcessDrawsAssistiveUI())
  {
    levelCopy = fmin(fmax(level, -10000000.0), 10000000.0);
  }

  return levelCopy;
}

- (void)setWindowLevel:(UIWindowLevel)windowLevel
{
  v21 = *MEMORY[0x1E69E9840];
  [(UIWindow *)self _adjustedWindowLevelFromLevel:windowLevel];
  v5 = self->_windowLevel;
  if (v5 != v4)
  {
    v6 = v4;
    self->_windowLevel = v4;
    WeakRetained = objc_loadWeakRetained(&self->_layerContext);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_layerContext);
      *&v9 = v6;
      [v8 setLevel:v9];

      if (![(UIView *)self isHidden])
      {
        [(UIWindow *)self _updateLayerOrderingAndSetLayerHidden:0];
        windowScene = [(UIWindow *)self windowScene];
        [windowScene _updateVisibleWindowOrderWithTest:0];
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [(NSHashTable *)self->_windowLevelObservers copy];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) window:self changedFromLevel:v5 toLevel:self->_windowLevel];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)_addWindowLevelChangedObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    windowLevelObservers = self->_windowLevelObservers;
    v8 = observerCopy;
    if (!windowLevelObservers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_windowLevelObservers;
      self->_windowLevelObservers = weakObjectsHashTable;

      windowLevelObservers = self->_windowLevelObservers;
    }

    [(NSHashTable *)windowLevelObservers addObject:v8];
    observerCopy = v8;
  }
}

- (void)_removeWindowLevelChangedObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    [(NSHashTable *)self->_windowLevelObservers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_windowLevelObservers count];
    observerCopy = v7;
    if (!v5)
    {
      windowLevelObservers = self->_windowLevelObservers;
      self->_windowLevelObservers = 0;

      observerCopy = v7;
    }
  }
}

- (void)_makeKeyWindowIgnoringOldKeyWindow:(char)window transferringScenes:
{
  if (!self)
  {
    return;
  }

  v6 = self[103];
  if (!v6 || ([v6 session], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "role"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"UIWindowSceneSessionRoleCarPlay"), v8, v7, !v9))
  {
    v11 = 0;
    if (window)
    {
      goto LABEL_11;
    }

LABEL_10:
    if ([self _isApplicationKeyWindow])
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow, @"AllowCarPlayScenesToCallMakeKeyWindow", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E0C4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((window & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!(v11 & 1 | (([self canBecomeKeyWindow] & 1) == 0)))
  {
    windowScene = [self windowScene];
    [(UIWindowScene *)windowScene _pushKeyWindow:self ignoringOldKeyWindow:a2];
  }
}

- (void)_didBecomeApplicationKeyWindowWithOldApplicationKeyWindow:(void *)window
{
  v25 = a2;
  if (window)
  {
    firstResponder = [window firstResponder];

    if (firstResponder)
    {
      firstResponder2 = [window firstResponder];
      [firstResponder2 _windowBecameKey];
    }

    else
    {
      [window becomeFirstResponder];
      windowScene = [window windowScene];
      firstResponder2 = [windowScene keyboardSceneDelegate];

      if (dyld_program_sdk_at_least())
      {
        firstResponder3 = [window firstResponder];
        if (firstResponder3)
        {
        }

        else
        {
          screen = [window screen];
          windowScene2 = [v25 windowScene];
          screen2 = [windowScene2 screen];

          if (screen == screen2)
          {
            [firstResponder2 _reloadInputViewsForResponder:0];
          }
        }
      }
    }

    windowScene3 = [window windowScene];
    _focusSystemSceneComponent = [windowScene3 _focusSystemSceneComponent];
    focusSystem = [_focusSystemSceneComponent focusSystem];
    [focusSystem setNeedsFocusUpdate];

    _windowHostingScene = [v25 _windowHostingScene];
    _windowHostingScene2 = [window _windowHostingScene];
    LODWORD(focusSystem) = [_windowHostingScene isEqual:_windowHostingScene2];

    if (focusSystem)
    {
      if ([window _windowOwnsInterfaceOrientation])
      {
        isFrontBoard = [UIApp isFrontBoard];
        if (isFrontBoard)
        {
          _overriddenInterfaceOrientation = [v25 _overriddenInterfaceOrientation];
          _overriddenInterfaceOrientation2 = [window _overriddenInterfaceOrientation];
          _overriddenInterfaceOrientation3 = _overriddenInterfaceOrientation2;
        }

        else
        {
          _overriddenInterfaceOrientation = [v25 interfaceOrientation];
          _overriddenInterfaceOrientation3 = [window _overriddenInterfaceOrientation];
          _overriddenInterfaceOrientation2 = [window interfaceOrientation];
        }

        if (_overriddenInterfaceOrientation == _overriddenInterfaceOrientation2)
        {
          if (_overriddenInterfaceOrientation3)
          {
            v24 = isFrontBoard;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1)
          {
            [window _notifyRotatableViewOrientation:_overriddenInterfaceOrientation3 duration:0.0];
          }

          goto LABEL_24;
        }

        rootViewController = [window rootViewController];
        interfaceOrientation = [rootViewController interfaceOrientation];
      }

      else
      {
        _windowInterfaceOrientation = [window _windowInterfaceOrientation];
        _windowHostingScene3 = [window _windowHostingScene];
        _interfaceOrientation = [_windowHostingScene3 _interfaceOrientation];

        if (_windowInterfaceOrientation == _interfaceOrientation)
        {
          goto LABEL_24;
        }

        rootViewController = [window _windowHostingScene];
        interfaceOrientation = [rootViewController _interfaceOrientation];
      }

      [(UIWindow *)window _internal_setRotatableViewOrientation:interfaceOrientation updateStatusBar:1 duration:1 force:0.0];
    }
  }

LABEL_24:
}

- (id)contentView
{
  subviews = [(UIView *)self subviews];
  if ([subviews count])
  {
    v3 = [subviews objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_registerChargedView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  value = viewCopy;
  if (qword_1EA968E00)
  {
    Mutable = CFDictionaryGetValue(qword_1EA968E00, selfCopy);
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  else
  {
    qword_1EA968E00 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  Mutable = CFArrayCreateMutable(0, 0, 0);
  CFDictionarySetValue(qword_1EA968E00, selfCopy, Mutable);
  CFRelease(Mutable);
LABEL_6:
  v9.length = CFArrayGetCount(Mutable);
  v9.location = 0;
  if (!CFArrayContainsValue(Mutable, v9, value))
  {
    CFArrayAppendValue(Mutable, value);
  }
}

- (void)_unregisterChargedView:(id)view
{
  viewCopy = view;
  v5 = qword_1EA968E00;
  selfCopy = self;
  value = viewCopy;
  if (v5)
  {
    v7 = CFDictionaryGetValue(v5, selfCopy);
    if (v7)
    {
      v8 = v7;
      v12.length = CFArrayGetCount(v7);
      v12.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v12, value);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(v8, FirstIndexOfValue);
      }
    }
  }
}

+ (void)_unregisterChargedView:(id)view
{
  viewCopy = view;
  v4 = qword_1EA968E00;
  value = viewCopy;
  if (!v4)
  {
    goto LABEL_14;
  }

  Count = CFDictionaryGetCount(v4);
  v6 = Count;
  v7 = qword_1EA968F10;
  if (Count > qword_1EA968F08)
  {
    qword_1EA968F08 = Count;
    v7 = malloc_type_realloc(qword_1EA968F10, 8 * Count, 0xC0040B8AA526DuLL);
    qword_1EA968F10 = v7;
  }

  CFDictionaryGetKeysAndValues(v4, 0, v7);
  if (v6 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      while (1)
      {
        v10 = *(qword_1EA968F10 + 8 * i);
        v16.length = CFArrayGetCount(v10);
        v16.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v16, value);
        if (FirstIndexOfValue == -1)
        {
          break;
        }

        for (j = FirstIndexOfValue; j != -1; j = CFArrayGetFirstIndexOfValue(v10, v17, value))
        {
          CFArrayRemoveValueAtIndex(v10, j);
          v17.length = CFArrayGetCount(v10);
          v17.location = 0;
        }

        v8 = 1;
        if (v6 - 1 == i++)
        {

LABEL_16:
          NSLog(&cfstr_ChargedViewPWa.isa, value);
          goto LABEL_17;
        }
      }
    }

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_17:
}

- (id)_registeredScrollToTopViews
{
  if (qword_1EA968E08)
  {
    v2 = CFDictionaryGetValue(qword_1EA968E08, self);
    [v2 compact];
    allObjects = [v2 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (void)_registerScrollToTopView:(id)view
{
  viewCopy = view;
  if (qword_1EA968E08)
  {
    weakObjectsPointerArray = CFDictionaryGetValue(qword_1EA968E08, self);
    if (weakObjectsPointerArray)
    {
      goto LABEL_6;
    }
  }

  else
  {
    qword_1EA968E08 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  CFDictionarySetValue(qword_1EA968E08, self, weakObjectsPointerArray);
LABEL_6:
  allObjects = [weakObjectsPointerArray allObjects];
  v6 = [allObjects indexOfObject:viewCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [weakObjectsPointerArray addPointer:viewCopy];
  }
}

- (void)_unregisterScrollToTopView:(id)view
{
  viewCopy = view;
  if (qword_1EA968E08)
  {
    v9 = viewCopy;
    v5 = CFDictionaryGetValue(qword_1EA968E08, self);
    v6 = v5;
    if (v5)
    {
      allObjects = [v5 allObjects];
      v8 = [allObjects indexOfObject:v9];

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v6 removePointerAtIndex:v8];
      }
    }

    viewCopy = v9;
  }
}

- (void)_setFirstResponder:(id)responder
{
  v18 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v6 = self->_firstResponder;
  if (v6 != responderCopy)
  {
    [UIView _setIsResponderAncestorOfFirstResponder:v6 startingAtFirstResponder:?];
    if (_IsKindOfUIView(v6))
    {
      *&v6[5]._responderFlags &= ~0x4000uLL;
    }

    objc_storeStrong(&self->_firstResponder, responder);
    if (_IsKindOfUIView(responderCopy))
    {
      *&responderCopy[5]._responderFlags |= 0x4000uLL;
    }

    [UIView _setIsResponderAncestorOfFirstResponder:responderCopy startingAtFirstResponder:?];
    v17 = xmmword_1E711E7D8;
    v16[0] = [MEMORY[0x1E696AD98] numberWithInt:*(&self->_windowFlags + 1) & 1];
    v7 = responderCopy;
    v16[1] = v7;
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v17 count:v8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIWindowFirstResponderDidChangeNotification" object:self userInfo:v9];

    _windowHostingScene = [(UIWindow *)self _windowHostingScene];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __31__UIWindow__setFirstResponder___block_invoke;
    v14[3] = &unk_1E70F44D8;
    v15 = v7;
    [_windowHostingScene _updateUIClientSettingsWithBlock:v14];

    for (i = 1; i != -1; --i)
    {
    }

    for (j = 8; j != -8; j -= 8)
    {
    }
  }
}

void __31__UIWindow__setFirstResponder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 editingInteractionConfiguration];
  }

  else
  {
    v4 = 1;
  }

  [v5 setEditingInteractionConfiguration:v4];
}

- (void)_setIsResigningFirstResponderFromHost:(BOOL)host
{
  v3 = 0x100000000;
  if (!host)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)_setIsSettingFirstResponder:(BOOL)responder
{
  v3 = 0x4000000;
  if (!responder)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)_undoManagerForValidatingUndoRedoCommands
{
  firstResponder = [(UIWindow *)self firstResponder];
  undoManager = [firstResponder undoManager];
  v5 = undoManager;
  if (undoManager)
  {
    _undoManagerForValidatingUndoRedoCommands = undoManager;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIWindow;
    _undoManagerForValidatingUndoRedoCommands = [(UIResponder *)&v9 _undoManagerForValidatingUndoRedoCommands];
  }

  v7 = _undoManagerForValidatingUndoRedoCommands;

  return v7;
}

- (void)undo:(id)undo
{
  firstResponder = [(UIWindow *)self firstResponder];
  undoManager = [firstResponder undoManager];
  [undoManager undo];
}

- (void)redo:(id)redo
{
  firstResponder = [(UIWindow *)self firstResponder];
  undoManager = [firstResponder undoManager];
  [undoManager redo];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_undo_ == action)
  {
    firstResponder = [(UIWindow *)self firstResponder];
    undoManager = [firstResponder undoManager];
    canUndo = [undoManager canUndo];
LABEL_6:
    v7 = canUndo;

    goto LABEL_7;
  }

  if (sel_redo_ == action)
  {
    firstResponder = [(UIWindow *)self firstResponder];
    undoManager = [firstResponder undoManager];
    canUndo = [undoManager canRedo];
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = UIWindow;
  v7 = [(UIView *)&v12 canPerformAction:action withSender:senderCopy];
LABEL_7:

  return v7;
}

+ (void)_noteStatusBarHeightChanged:(double)changed oldHeight:(double)height
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [v11 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:{0, 0}];
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v18 + 1) + 8 * j);
              if (([v17 _isStatusBarWindow] & 1) == 0)
              {
                [v17 handleStatusBarChangeFromHeight:height toHeight:changed];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }
}

+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = +[UIScreen mainScreen];
  v13 = [self createIOSurfaceOnScreen:v12 withContextIds:ids count:count frame:0 usePurpleGfx:0 outTransform:{x, y, width, height}];

  return v13;
}

+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame outTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14 = +[UIScreen mainScreen];
  v15 = [self createIOSurfaceOnScreen:v14 withContextIds:ids count:count frame:0 usePurpleGfx:transform outTransform:{x, y, width, height}];

  return v15;
}

+ (void)createIOSurfaceWithContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame usePurpleGfx:(BOOL)gfx outTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = [UIScreen mainScreen:ids];
  v16 = [self createIOSurfaceOnScreen:v15 withContextIds:ids count:count frame:0 usePurpleGfx:transform outTransform:{x, y, width, height}];

  return v16;
}

+ (void)createIOSurfaceOnScreen:(id)screen withContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame usePurpleGfx:(BOOL)gfx outTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenCopy = screen;
  [screenCopy scale];
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v17, v17);
  v22 = v23;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v25 = CGRectApplyAffineTransform(v24, &v22);
  if (transform)
  {
    v18 = MEMORY[0x1E695EFD0];
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform->a = *MEMORY[0x1E695EFD0];
    *&transform->c = v19;
    *&transform->tx = *(v18 + 32);
  }

  v22 = v23;
  v20 = [self createIOSurfaceOnScreen:screenCopy withContextIds:ids count:count frame:&v22 baseTransform:{v25.origin.x, v25.origin.y, v25.size.width, v25.size.height}];

  return v20;
}

+ (void)createIOSurfaceOnScreen:(id)screen withContextIds:(const unsigned int *)ids count:(unint64_t)count frame:(CGRect)frame baseTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v45[2] = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  memset(&v41, 0, sizeof(v41));
  v15 = *&transform->c;
  *&m.a = *&transform->a;
  *&m.c = v15;
  *&m.tx = *&transform->tx;
  CATransform3DMakeAffineTransform(&v41, &m);
  v16 = _UIRenderingBufferCreate(0, width, height);
  v17 = v16;
  if (v16)
  {
    v37 = v16;
    v38 = screenCopy;
    v18 = objc_opt_new();
    v19 = 0x1E695D000uLL;
    if (count)
    {
      v20 = *MEMORY[0x1E6979F40];
      v21 = *MEMORY[0x1E697A000];
      do
      {
        v44[0] = v20;
        v22 = *ids++;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v22, v37, v38}];
        v44[1] = v21;
        v45[0] = v23;
        v39 = v41;
        v24 = [MEMORY[0x1E696B098] valueWithBytes:&v39 objCType:"{CATransform3D=dddddddddddddddd}"];
        v45[1] = v24;
        [*(v19 + 3872) dictionaryWithObjects:v45 forKeys:v44 count:2];
        v26 = v25 = v19;
        [v18 addObject:v26];

        v19 = v25;
        --count;
      }

      while (count);
    }

    v27 = *MEMORY[0x1E6979FC8];
    v28 = *MEMORY[0x1E6979F50];
    v42[0] = *MEMORY[0x1E6979FB0];
    v42[1] = v28;
    v17 = v37;
    screenCopy = v38;
    v43[0] = v27;
    v43[1] = v37;
    v42[2] = *MEMORY[0x1E6979F68];
    _name = [v38 _name];
    v43[2] = _name;
    v42[3] = *MEMORY[0x1E6979FE0];
    v30 = x;
    v31 = [MEMORY[0x1E696AD98] numberWithLong:llroundf(v30)];
    v43[3] = v31;
    v42[4] = *MEMORY[0x1E6979FE8];
    v32 = y;
    v33 = [MEMORY[0x1E696AD98] numberWithLong:llroundf(v32)];
    v42[5] = *MEMORY[0x1E6979F48];
    v43[4] = v33;
    v43[5] = v18;
    v34 = [*(v19 + 3872) dictionaryWithObjects:v43 forKeys:v42 count:6];
    v35 = [(UIScreen *)screenCopy _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v34];

    CARenderServerSnapshot();
  }

  return v17;
}

+ (void)createScreenIOSurface
{
  v2 = +[UIScreen mainScreen];
  v3 = [UIWindow createIOSurfaceFromScreen:v2];

  return v3;
}

+ (void)createIOSurfaceFromDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identity = [configurationCopy identity];
  v6 = [UIScreen _screenWithFBSDisplayIdentity:identity];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [[UIScreen alloc] initWithDisplayConfiguration:configurationCopy];
  }

  v9 = v8;

  [(UIScreen *)v9 _updateDisplayConfiguration:configurationCopy];
  v10 = [self createIOSurfaceFromScreen:v9];

  return v10;
}

+ (void)createIOSurfaceFromScreen:(id)screen
{
  v9[2] = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  [screenCopy _scale];
  v8[0] = @"src-screen";
  v8[1] = @"dst-scale";
  v9[0] = screenCopy;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = _UIRenderDisplay(v5, &__block_literal_global_640_0);
  return v6;
}

- (void)createIOSurfaceWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  contextId = [WeakRetained contextId];

  v12 = contextId;
  mainScreen = [objc_opt_self() mainScreen];
  height = [UIWindow createIOSurfaceOnScreen:mainScreen withContextIds:&v12 count:1 frame:0 usePurpleGfx:0 outTransform:x, y, width, height];

  return height;
}

- (void)createIOSurface
{
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  layer = [WeakRetained layer];

  if (layer)
  {
    [layer frame];
    v5 = [(UIWindow *)self createIOSurfaceWithFrame:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)_convertPointFromSceneReferenceSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  [(UIWindow *)self _sceneReferenceBounds];
  v7 = v6;
  v9 = v8;
  _effectiveSettings = [(_UISceneUIWindowHosting *)self->_windowHostingScene _effectiveSettings];
  interfaceOrientation = [_effectiveSettings interfaceOrientation];
  v12 = +[UIWindow _transformLayerRotationsAreEnabled];
  v13 = v7 - x;
  v14 = v9 - y;
  if (interfaceOrientation == 4)
  {
    v15 = v9 - y;
  }

  else
  {
    v15 = x;
  }

  if (interfaceOrientation == 4)
  {
    v16 = x;
  }

  else
  {
    v16 = y;
  }

  if (interfaceOrientation == 3)
  {
    v15 = y;
    v16 = v7 - x;
  }

  if (interfaceOrientation != 2)
  {
    v13 = v15;
    v14 = v16;
  }

  if (v12)
  {
    x = v13;
    y = v14;
  }

  _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
  [(UIView *)self convertPoint:_coordinateSpace fromCoordinateSpace:x, y];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)_convertPointToSceneReferenceSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
  [(UIView *)self convertPoint:_coordinateSpace toCoordinateSpace:x, y];
  v8 = v7;
  v10 = v9;

  [(UIWindow *)self _sceneReferenceBounds];
  v12 = v11;
  v14 = v13;
  _effectiveSettings = [(_UISceneUIWindowHosting *)self->_windowHostingScene _effectiveSettings];
  interfaceOrientation = [_effectiveSettings interfaceOrientation];
  if (+[UIWindow _transformLayerRotationsAreEnabled])
  {
    if (interfaceOrientation == 2)
    {
      v17 = v12 - v8;
      v8 = v14 - v10;
    }

    else if (interfaceOrientation == 3)
    {
      v17 = v12 - v10;
    }

    else
    {
      if (interfaceOrientation == 4)
      {
        v17 = v10;
      }

      else
      {
        v17 = v8;
      }

      if (interfaceOrientation == 4)
      {
        v8 = v14 - v8;
      }

      else
      {
        v8 = v10;
      }
    }
  }

  else
  {
    v17 = v8;
    v8 = v10;
  }

  v18 = v17;
  v19 = v8;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGRect)_convertRectFromSceneReferenceSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  [(UIWindow *)self _sceneReferenceBounds];
  v9 = v8;
  v11 = v10;
  _effectiveSettings = [(_UISceneUIWindowHosting *)self->_windowHostingScene _effectiveSettings];
  v13 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace([_effectiveSettings interfaceOrientation], x, y, width, height, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
  [(UIWindow *)self convertRect:_coordinateSpace fromCoordinateSpace:v13, v15, v17, v19];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)_convertRectToSceneReferenceSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  _coordinateSpace = [(_UISceneUIWindowHosting *)self->_windowHostingScene _coordinateSpace];
  [(UIWindow *)self convertRect:_coordinateSpace toCoordinateSpace:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(UIWindow *)self _sceneReferenceBounds];
  v18 = v17;
  v20 = v19;
  _effectiveSettings = [(_UISceneUIWindowHosting *)self->_windowHostingScene _effectiveSettings];
  v22 = _UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace([_effectiveSettings interfaceOrientation], v10, v12, v14, v16, v18, v20);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGPoint)_constrainTouchLocationToScene:(CGPoint)scene
{
  y = scene.y;
  x = scene.x;
  _fbsScene = [(UIWindow *)&self->super.super.super.isa _fbsScene];
  screen = [(UIWindow *)self screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  if (_fbsScene)
  {
    settings = [_fbsScene settings];
    [settings frame];
  }

  else
  {
    settings = [(UIWindow *)self screen];
    [settings _referenceBounds];
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;

  [(UIView *)self convertPoint:fixedCoordinateSpace toCoordinateSpace:x, y];
  v19 = v18;
  v21 = v20;
  v22 = fmax(v14, fmin(v18, nextafter(v14 + v16, -1.79769313e308)));
  v23 = fmax(v15, fmin(v21, nextafter(v15 + v17, -1.79769313e308)));
  v24 = vabdd_f64(v23, v21);
  if (vabdd_f64(v22, v19) >= 0.00000011920929 || v24 >= 0.00000011920929)
  {
    UIFloorToViewScale(self);
    v22 = v26;
    UIFloorToViewScale(self);
    v23 = v27;
  }

  [(UIView *)self convertPoint:fixedCoordinateSpace fromCoordinateSpace:v22, v23];
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.y = v33;
  result.x = v32;
  return result;
}

- (CGRect)_referenceFrameFromSceneUsingScreenBounds:(BOOL)bounds
{
  if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:7950 description:@"Incorrect code path when app does not use UIScene lifecycle API"];
  }

  windowScene = [(UIWindow *)self windowScene];
  [windowScene _referenceBoundsForOrientation:{objc_msgSend(windowScene, "_interfaceOrientation")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = 0.0;
  if (!bounds)
  {
    v16 = __UIStatusBarManagerForWindow(self);
    [v16 defaultStatusBarHeightInOrientation:1];
    v15 = v17;
  }

  screen = [(UIWindow *)self screen];
  if ([screen _userInterfaceIdiom] == 3 && +[UIScreen _shouldDisableJail](UIScreen, "_shouldDisableJail"))
  {
    [(UIStatusBar_Base *)UIStatusBar heightForStyle:400 orientation:1 inWindow:self];
    v14 = v14 - v19;
  }

  else if (v15 > 0.0)
  {
    v20 = __UIStatusBarManagerForWindow(self);
    isStatusBarHidden = [v20 isStatusBarHidden];

    if ((isStatusBarHidden & 1) == 0)
    {
      _windowHostingScene = [(UIWindow *)self _windowHostingScene];
      _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

      v19 = v10 + v15;
      if ((_sceneSessionRoleIsCarPlayOrNonInteractiveExternal & 1) == 0)
      {
        v14 = v14 - v15;
        v10 = v10 + v15;
      }
    }
  }

  if ([screen overscanCompensation] == 2 && _UIDeviceNativeUserInterfaceIdiom() != 2)
  {
    [screen overscanCompensationInsets];
    v8 = v8 + v24;
    v10 = v10 + v25;
    v12 = v12 - (v24 + v26);
    v14 = v14 - (v25 + v27);
  }

  v28 = v8;
  v29 = v10;
  v30 = v12;
  v31 = v14;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

+ (id)_topVisibleWindowPassingTest:(id)test
{
  v22 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v11 = v7;
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [*(*(&v17 + 1) + 8 * i) _topVisibleWindowPassingTest:testCopy];

        if (v7)
        {
          if (!v8 || ([v7 windowLevel], v13 = v12, objc_msgSend(v8, "windowLevel"), v13 > v14))
          {
            if (!testCopy || testCopy[2](testCopy, v7))
            {
              v15 = v7;

              v8 = v15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8;
}

+ (id)_hitTestToPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  windowCopy = window;
  _fbsScene = [(UIWindow *)windowCopy _fbsScene];
  _windowHostingScene = [windowCopy _windowHostingScene];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__UIWindow__hitTestToPoint_scenePointZ_forEvent_windowServerHitTestWindow___block_invoke;
  v19[3] = &unk_1E711E830;
  v23 = x;
  v24 = y;
  zCopy = z;
  v20 = _fbsScene;
  v21 = windowCopy;
  v22 = eventCopy;
  v14 = eventCopy;
  v15 = windowCopy;
  v16 = _fbsScene;
  v17 = [_windowHostingScene _topVisibleWindowEnumeratingAsCopy:1 passingTest:v19];

  return v17;
}

BOOL __75__UIWindow__hitTestToPoint_scenePointZ_forEvent_windowServerHitTestWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _ignoresHitTest])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 _hitTestLocation:*(a1 + 32) sceneLocationZ:*(a1 + 40) inScene:*(a1 + 48) withWindowServerHitTestWindow:*(a1 + 56) event:{*(a1 + 64), *(a1 + 72)}];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)_globalHitTestForLocation:(CGPoint)location sceneLocationZ:(double)z inWindowServerHitTestWindow:(id)window withEvent:(id)event
{
  y = location.y;
  x = location.x;
  windowCopy = window;
  eventCopy = event;
  _fbsScene = [(UIWindow *)windowCopy _fbsScene];
  if (![windowCopy _usesWindowServerHitTesting] || (objc_msgSend(windowCopy, "_hitTestLocation:sceneLocationZ:inScene:withWindowServerHitTestWindow:event:", _fbsScene, windowCopy, eventCopy, x, y, z), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [self _hitTestToPoint:eventCopy scenePointZ:windowCopy forEvent:x windowServerHitTestWindow:{y, z}];
    v16 = v15;
    if (v15)
    {
      v14 = [v15 _hitTestLocation:_fbsScene sceneLocationZ:windowCopy inScene:eventCopy withWindowServerHitTestWindow:x event:{y, z}];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)_hitTestLocation:(CGPoint)location sceneLocationZ:(double)z inScene:(id)scene withWindowServerHitTestWindow:(id)window event:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  windowCopy = window;
  v14 = [(UIView *)self _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:_UIConvertScenePoint3DToWindow(scene, self, x, y)];

  return v14;
}

- (id)_targetWindowForPathIndex:(int64_t)index atPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  windowCopy = window;
  if (index == -1 || ([UIApp _mainEventEnvironment], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[UIEventEnvironment _touchMapForWindow:](v15, self), CFDictionaryGetValue(v16, index), v17 = objc_claimAutoreleasedReturnValue(), v15, objc_msgSend(v17, "window"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v18 = [UIWindow _hitTestToPoint:eventCopy scenePointZ:windowCopy forEvent:x windowServerHitTestWindow:y, z];
  }

  return v18;
}

+ (id)_findWindowForControllingOverallAppearance
{
  _mainScene = [UIApp _mainScene];
  v4 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];

  if (v4)
  {
    v5 = [self _findWindowForControllingOverallAppearanceInWindowScene:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_findWindowForControllingOverallAppearanceInWindowScene:(id)scene
{
  sceneCopy = scene;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIWindow__findWindowForControllingOverallAppearanceInWindowScene___block_invoke_2;
  v9[3] = &__block_descriptor_40_e18_B16__0__UIWindow_8lu32l8;
  v9[4] = &__block_literal_global_651_0;
  v4 = [sceneCopy _topVisibleWindowPassingTest:v9];
  if (!v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__UIWindow__findWindowForControllingOverallAppearanceInWindowScene___block_invoke_3;
    v8[3] = &__block_descriptor_40_e18_B16__0__UIWindow_8lu32l8;
    v8[4] = &__block_literal_global_651_0;
    v4 = [sceneCopy _topVisibleWindowPassingTest:v8];
    if (!v4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__UIWindow__findWindowForControllingOverallAppearanceInWindowScene___block_invoke_4;
      v7[3] = &__block_descriptor_40_e18_B16__0__UIWindow_8lu32l8;
      v7[4] = &__block_literal_global_651_0;
      v4 = [sceneCopy _topVisibleWindowPassingTest:v7];
    }
  }

  v5 = v4;

  return v5;
}

uint64_t __68__UIWindow__findWindowForControllingOverallAppearanceInWindowScene___block_invoke(uint64_t a1, void *a2, char a3, char a4)
{
  v6 = a2;
  v7 = v6[72];
  v8 = v6[11];
  v9 = 0;
  if ([v6 _canAffectStatusBarAppearance])
  {
    if ((v7 & 0x40000000) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    if ((v8 & 0x200) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4;
    }

    if ((v10 & 1) == 0 && (v11 & 1) == 0)
    {
      v9 = [v6 _isHostedInAnotherProcess] ^ 1;
    }
  }

  return v9;
}

+ (id)allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows forScreen:(id)screen
{
  visibleWindowsCopy = visibleWindows;
  windowsCopy = windows;
  screenCopy = screen;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __76__UIWindow_allWindowsIncludingInternalWindows_onlyVisibleWindows_forScreen___block_invoke;
  v18 = &unk_1E711AE08;
  v19 = screenCopy;
  v10 = v9;
  v20 = v10;
  v11 = screenCopy;
  [self _enumerateWindowsIncludingInternalWindows:windowsCopy onlyVisibleWindows:visibleWindowsCopy allowMutation:0 withBlock:&v15];
  [v10 sortUsingFunction:_UIWindowCompareWindowsUsingLevel context:{0, v15, v16, v17, v18}];
  v12 = v20;
  v13 = v10;

  return v10;
}

void __76__UIWindow_allWindowsIncludingInternalWindows_onlyVisibleWindows_forScreen___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 32) || ([a2 screen], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 32), v4, v4 == v5))
  {
    v6 = *(a1 + 40);

    [v6 addObject:a2];
  }
}

+ (id)_findWithDisplayPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;
  [v6 _rotation];
  v10 = v9;
  [v6 _unjailedReferenceBoundsInPixels];
  v12 = _UIScreenConvertFromCAScreen(x, y, v8, v10, v11);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__UIWindow__findWithDisplayPoint___block_invoke;
  v17[3] = &unk_1E711E898;
  v18 = v6;
  v19 = v12;
  v20 = v13;
  v14 = v6;
  v15 = [self _topVisibleWindowPassingTest:v17];

  return v15;
}

BOOL __34__UIWindow__findWithDisplayPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 screen];
  v5 = *(a1 + 32);
  v6 = 0;
  if (([v3 _ignoresHitTest] & 1) == 0 && v4 == v5)
  {
    v7 = [v3 _hitTestLocation:0 sceneLocationZ:0 inScene:0 withWindowServerHitTestWindow:*(a1 + 40) event:{*(a1 + 48), 0.0}];
    v6 = v7 != 0;
  }

  return v6;
}

- (CGPoint)_transformDisplayToWindowCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  screen = [(UIWindow *)self screen];
  [screen scale];
  v8 = v7;
  [screen _rotation];
  v10 = v9;
  [screen _unjailedReferenceBoundsInPixels];
  v12 = _UIScreenConvertFromCAScreen(x, y, v8, v10, v11);
  v14 = _UIConvertScenePoint3DToWindow(0, self, v12, v13);
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)setResizesToFullScreen:(BOOL)screen
{
  v3 = 0x800000;
  if (!screen)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setKeepContextInBackground:(BOOL)background
{
  v3 = 0x1000000;
  if (!background)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFFEFFFFFFLL | v3);
  if (background)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layerContext);

    if (!WeakRetained)
    {

      [UIWindowScene _updateVisibleSceneAndWindowOrderWithTest:0];
    }
  }
}

- (void)_registerSubtreeMonitor:(id)monitor
{
  monitorCopy = monitor;
  subtreeMonitors = self->_subtreeMonitors;
  v8 = monitorCopy;
  if (!subtreeMonitors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_subtreeMonitors;
    self->_subtreeMonitors = v6;

    monitorCopy = v8;
    subtreeMonitors = self->_subtreeMonitors;
  }

  [(NSMutableSet *)subtreeMonitors addObject:monitorCopy];
}

- (void)_unregisterSubtreeMonitor:(id)monitor
{
  [(NSMutableSet *)self->_subtreeMonitors removeObject:monitor];
  if (![(NSMutableSet *)self->_subtreeMonitors count])
  {
    subtreeMonitors = self->_subtreeMonitors;
    self->_subtreeMonitors = 0;
  }
}

- (id)_subtreeMonitorsForView:(id)view
{
  viewCopy = view;
  subtreeMonitors = self->_subtreeMonitors;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__UIWindow__subtreeMonitorsForView___block_invoke;
  v9[3] = &unk_1E711E8C0;
  v10 = viewCopy;
  v6 = viewCopy;
  v7 = [(NSMutableSet *)subtreeMonitors objectsPassingTest:v9];

  return v7;
}

- (void)_writeLayerTreeToPath:(id)path
{
  pathCopy = path;
  layer = [(UIView *)self layer];
  context = [layer context];
  layer2 = [context layer];

  v7 = MEMORY[0x1E69792B0];
  *MEMORY[0x1E6979278] = @"public.png";
  *v7 = 1;
  *MEMORY[0x1E69792C0] = 1;
  [pathCopy fileSystemRepresentation];

  CAEncodeLayerTreeToFile();
}

- (void)_moveWithEvent:(id)event
{
  eventCopy = event;
  _focusSystem = [(UIView *)self _focusSystem];

  if (_focusSystem)
  {
    _focusEventRecognizer = [(UIWindow *)self _focusEventRecognizer];
    [_focusEventRecognizer _moveWithEvent:eventCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIWindow;
    [(UIResponder *)&v7 _moveWithEvent:eventCopy];
  }
}

- (void)_setSecure:(BOOL)secure
{
  secureCopy = secure;
  v4 = 0x20000000;
  if (!secure)
  {
    v4 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFFFFDFFFFFFFLL | v4);
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  [WeakRetained setSecure:secureCopy];
}

- (BOOL)_isSecure
{
  WeakRetained = objc_loadWeakRetained(&self->_layerContext);
  isSecure = [WeakRetained isSecure];

  return isSecure;
}

- (void)_setWantsSuperlayerSecurityAnalysis:(BOOL)analysis
{
  v3 = 0x10000000000;
  if (!analysis)
  {
    v3 = 0;
  }

  self->_windowFlags = (*&self->_windowFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

+ (id)_windowWithContextId:(unsigned int)id
{
  v3 = [MEMORY[0x1E6979320] contextWithId:*&id];
  v4 = _UIWindowFromRootLayer([v3 layer]);

  return v4;
}

- (id)_accessibilityHUDContainerViewForView:(id)view
{
  viewCopy = view;
  [(UIView *)self bounds];
  superview = viewCopy;
  if (viewCopy != self)
  {
    v8 = v5;
    v9 = v6;
    v10 = viewCopy;
    while (1)
    {
      [(UIView *)v10 bounds];
      if (v11 == v8 && v12 == v9)
      {
        break;
      }

      if (v11 == v9 && v12 == v8)
      {
        break;
      }

      superview = [(UIView *)v10 superview];

      v10 = superview;
      if (superview == self)
      {
        goto LABEL_14;
      }
    }

    superview = v10;
  }

LABEL_14:

  return superview;
}

- (void)_showAccessibilityHUDItem:(id)item forView:(id)view
{
  viewCopy = view;
  accessibilityHUD = self->_accessibilityHUD;
  itemCopy = item;
  if (accessibilityHUD)
  {
    [(UIAccessibilityHUDView *)accessibilityHUD setItem:itemCopy];
  }

  else
  {
    v8 = [[UIAccessibilityHUDView alloc] initWithHUDItem:itemCopy];

    v9 = self->_accessibilityHUD;
    self->_accessibilityHUD = v8;

    itemCopy = [(UIWindow *)self _accessibilityHUDContainerViewForView:viewCopy];
    v10 = self->_accessibilityHUD;
    [itemCopy bounds];
    [(UIAccessibilityHUDView *)v10 sizeThatFits:v11, v12];
    v14 = v13;
    v16 = v15;
    [itemCopy bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    screen = [(UIWindow *)self screen];
    [screen scale];
    v27 = UIRectCenteredIntegralRectScale(0.0, 0.0, v14, v16, v18, v20, v22, v24, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [(UIView *)self->_accessibilityHUD setFrame:v27, v29, v31, v33];
    [itemCopy addSubview:self->_accessibilityHUD];
    [(UIAccessibilityHUDView *)self->_accessibilityHUD showAnimated:1 completion:0];
  }
}

- (void)_dismissAccessibilityHUD
{
  v3 = self->_accessibilityHUD;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__UIWindow__dismissAccessibilityHUD__block_invoke;
  v6[3] = &unk_1E70F3590;
  v7 = v3;
  v4 = v3;
  [(UIAccessibilityHUDView *)v4 dismissAnimated:1 completion:v6];
  accessibilityHUD = self->_accessibilityHUD;
  self->_accessibilityHUD = 0;
}

- (unint64_t)_systemReferenceAngleMode
{
  _windowHostingScene = [(UIWindow *)self _windowHostingScene];
  _effectiveUISettings = [_windowHostingScene _effectiveUISettings];
  hostReferenceAngleMode = [_effectiveUISettings hostReferenceAngleMode];

  return hostReferenceAngleMode;
}

- (double)_systemReferenceAngle
{
  _windowHostingScene = [(UIWindow *)self _windowHostingScene];
  _effectiveUISettings = [_windowHostingScene _effectiveUISettings];
  [_effectiveUISettings angleFromHostReferenceUprightDirection];
  v5 = v4;

  return v5;
}

- (void)_removeFocusIfNeededForFocusSystemSceneComponent:(id)component
{
  activeSceneObserver = [component activeSceneObserver];
  [activeSceneObserver stopMonitoringContextChangesForWindow:self];

  [(UIWindow *)self _removeFocusEventRecognizer];
}

- (void)_installFocusIfNeededForFocusSystemSceneComponent:(id)component
{
  componentCopy = component;
  activeSceneObserver = [componentCopy activeSceneObserver];
  [activeSceneObserver beginMonitoringContextChangesForWindow:self];

  focusEventRecognizer = self->_focusEventRecognizer;
  if (focusEventRecognizer)
  {
    goto LABEL_2;
  }

  focusSystem = [componentCopy focusSystem];

  if (focusSystem)
  {
    [(UIWindow *)self _installFocusEventRecognizer];
  }

  else
  {
    focusEventRecognizer = self->_focusEventRecognizer;
    if (focusEventRecognizer)
    {
LABEL_2:
      [(_UIFocusEventRecognizer *)focusEventRecognizer reset];
    }
  }
}

- (UIResponder)_focusResponder
{
  _focusSystem = [(UIView *)self _focusSystem];
  _preferredFirstResponder = [_focusSystem _preferredFirstResponder];
  _responderWindow = [_preferredFirstResponder _responderWindow];

  if (_responderWindow == self)
  {
    if (_preferredFirstResponder)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  _preferredFirstResponder = [(UIWindow *)self firstResponder];
  if (_preferredFirstResponder)
  {
    goto LABEL_39;
  }

  _deepestPreferredFocusEnvironment = [_focusSystem _deepestPreferredFocusEnvironment];
  v7 = _deepestPreferredFocusEnvironment;
  if (!_deepestPreferredFocusEnvironment)
  {
    goto LABEL_8;
  }

  v8 = _UIFirstResponderCandidateForEnvironment(_deepestPreferredFocusEnvironment);
  if (v8 && ![(UIResponder *)self _containsResponder:v8])
  {

LABEL_8:
    v8 = 0;
  }

  _deepestActionResponder = [(UIWindow *)self _deepestActionResponder];
  v10 = _deepestActionResponder;
  if (v8)
  {
    if (_deepestActionResponder)
    {
      v11 = _UIResponderModallyPresentedViewControllerContainingResponder(v8);
      v12 = _UIResponderModallyPresentedViewControllerContainingResponder(v10);
      if (v11 != v12)
      {
        _preferredFirstResponder = v10;
LABEL_37:

        goto LABEL_38;
      }

      v14 = _UITreeFirstCommonAncestor(v8, v10, sel_nextResponder);
      v15 = v14;
      if (v14 == v8)
      {
        v17 = v10;
      }

      else
      {
        if (v14 != v10)
        {
          if (objc_opt_respondsToSelector())
          {
            _viewControllerForAncestor = [v8 _viewControllerForAncestor];
          }

          else
          {
            _viewControllerForAncestor = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            _viewControllerForAncestor2 = [v10 _viewControllerForAncestor];
          }

          else
          {
            _viewControllerForAncestor2 = 0;
          }

          v24 = _viewControllerForAncestor2;
          v19 = _UITreeFirstCommonAncestor(_viewControllerForAncestor, _viewControllerForAncestor2, sel_parentViewController);
          v20 = v19;
          if (v19 != _viewControllerForAncestor || v19 == 0)
          {
            v22 = v8;
          }

          else
          {
            v22 = v10;
          }

          _preferredFirstResponder = v22;

          goto LABEL_36;
        }

        v17 = v8;
      }

      _preferredFirstResponder = v17;
LABEL_36:

      goto LABEL_37;
    }

    v13 = v8;
  }

  else
  {
    v13 = _deepestActionResponder;
  }

  _preferredFirstResponder = v13;
LABEL_38:

LABEL_39:

  return _preferredFirstResponder;
}

- (BOOL)_shouldRecognizeEventsInFocusEventRecognizer:(id)recognizer
{
  _focusSystem = [(UIView *)self _focusSystem];
  behavior = [_focusSystem behavior];
  requiresLegacyScreenBasedWindowLookup = [behavior requiresLegacyScreenBasedWindowLookup];

  if (requiresLegacyScreenBasedWindowLookup)
  {
    screen = [(UIWindow *)self screen];
    _preferredFocusedWindow = [screen _preferredFocusedWindow];
    v9 = _preferredFocusedWindow == self;

    return v9;
  }

  else
  {

    return [(UIWindow *)self isKeyWindow];
  }
}

- (id)_focusMovementSystemForFocusEventRecognizer:(id)recognizer
{
  _focusSystem = [(UIView *)self _focusSystem];
  _preferredFirstResponderFocusSystem = [_focusSystem _preferredFirstResponderFocusSystem];

  return _preferredFirstResponderFocusSystem;
}

- (BOOL)_focusEventRecognizer:(id)recognizer didRecognizeFocusMovementRequest:(id)request
{
  requestCopy = request;
  _focusSystem = [(UIView *)self _focusSystem];
  _preferredFirstResponderFocusSystem = [_focusSystem _preferredFirstResponderFocusSystem];
  v8 = [_preferredFirstResponderFocusSystem _performFocusMovement:requestCopy];

  return v8;
}

- (void)_forwardFocusMovementAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindow.m" lineNumber:9034 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  if ([(UIWindow *)self _isHostedInAnotherProcess])
  {
    rootViewController = [(UIWindow *)self rootViewController];
    if (objc_opt_respondsToSelector())
    {
      [rootViewController _forwardFocusMovementAction:actionCopy];
    }
  }

  else
  {
    rootViewController = [(UIWindow *)&self->super.super.super.isa _fbsScene];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
    [rootViewController sendActions:v6];
  }
}

- (void)_willUpdateFocusInContext:(id)context
{
  v5.receiver = self;
  v5.super_class = UIWindow;
  [(UIView *)&v5 _willUpdateFocusInContext:context];
  _focusEventRecognizer = [(UIWindow *)self _focusEventRecognizer];
  [_focusEventRecognizer _resetMotionEffects];
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(self, nextFocusedItem);

  if (IsAncestorOfEnvironment)
  {
    [(UIWindow *)self _setRememberedFocusedItem:0];
  }

  v7.receiver = self;
  v7.super_class = UIWindow;
  [(UIView *)&v7 _didUpdateFocusInContext:contextCopy];
}

- (BOOL)_prefersFocusContainment
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  supportsMultipleWindows = [_focusBehavior supportsMultipleWindows];

  return supportsMultipleWindows ^ 1;
}

- (id)preferredFocusedView
{
  _rememberedFocusedItem = [(UIWindow *)self _rememberedFocusedItem];
  if (_IsKindOfUIView(_rememberedFocusedItem))
  {
    v4 = _rememberedFocusedItem;
  }

  else
  {
    rootViewController = [(UIWindow *)self rootViewController];
    preferredFocusedView = [rootViewController preferredFocusedView];
    v7 = preferredFocusedView;
    if (preferredFocusedView)
    {
      preferredFocusedView2 = preferredFocusedView;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = UIWindow;
      preferredFocusedView2 = [(UIView *)&v10 preferredFocusedView];
    }

    v4 = preferredFocusedView2;
  }

  return v4;
}

- (id)restorationIdentifier
{
  v7.receiver = self;
  v7.super_class = UIWindow;
  restorationIdentifier = [(UIResponder *)&v7 restorationIdentifier];
  if (!restorationIdentifier)
  {
    if ((*(&self->_windowFlags + 3) & 0x80) != 0 || !dyld_program_sdk_at_least())
    {
      restorationIdentifier = 0;
    }

    else
    {
      rootViewController = [(UIWindow *)self rootViewController];
      restorationIdentifier2 = [rootViewController restorationIdentifier];

      if (restorationIdentifier2)
      {
        restorationIdentifier = [@"_UIWindow+" stringByAppendingString:restorationIdentifier2];
      }

      else
      {
        restorationIdentifier = 0;
      }
    }
  }

  return restorationIdentifier;
}

- (void)setRestorationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (dyld_program_sdk_at_least())
  {
    *&self->_windowFlags |= 0x80000000uLL;
  }

  v5.receiver = self;
  v5.super_class = UIWindow;
  [(UIResponder *)&v5 setRestorationIdentifier:identifierCopy];
}

- (_UITraitEnvironmentInternal)_overrideParentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);

  return WeakRetained;
}

- (UIResponder)_lastFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_lastFirstResponder);

  return WeakRetained;
}

- (UIResponder)_lastNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_lastNextResponder);

  return WeakRetained;
}

+ (NSArray)restrictedSplashboardClasses
{
  v2 = _restrictedSplashboardClasses;
  if (!_restrictedSplashboardClasses)
  {
    _restrictedSplashboardClasses = MEMORY[0x1E695E0F0];
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)_updateInterfaceOrientationFromActiveInterfaceOrientationIfRotationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIWindow *)self isInterfaceAutorotationDisabled])
  {
    *&self->_windowFlags |= 0x10000uLL;
  }

  else
  {

    [(UIWindow *)self _updateInterfaceOrientationFromActiveInterfaceOrientation:enabledCopy];
  }
}

- (void)_updateInterfaceOrientationFromActiveInterfaceOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  if ([(UIWindow *)self _windowOwnsInterfaceOrientation])
  {
    activeInterfaceOrientation = [UIApp activeInterfaceOrientation];
    if (activeInterfaceOrientation)
    {

      [(UIWindow *)self _updateToNotificationProvidedInterfaceOrientation:activeInterfaceOrientation animated:orientationCopy];
    }
  }
}

- (void)_performTouchContinuationWithOverrideHitTestedView:(id)view
{
  v3 = UIApp;
  viewCopy = view;
  _gestureEnvironment = [v3 _gestureEnvironment];
  [(UIGestureEnvironment *)_gestureEnvironment _performTouchContinuationWithOverrideHitTestedView:viewCopy];
}

- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v7 = [v6 ui_appendInterfaceOrientation:-[UIWindow interfaceOrientation](self withName:{"interfaceOrientation"), @"orientation"}];
  activeMultilinePrefix = [v6 activeMultilinePrefix];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__UIWindow_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __94__UIWindow_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isHidden"), @"hidden"}];
  v3 = *(a1 + 32);
  [*(a1 + 40) frame];
  v4 = [v3 appendRect:@"frame" withName:?];
  v5 = *(a1 + 32);
  [*(a1 + 40) bounds];
  v6 = [v5 appendRect:@"bounds" withName:?];
  v7 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_windowOwnsInterfaceOrientation"), @"ownsOrientation"}];
  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_windowOwnsInterfaceOrientationTransform"), @"ownsOrientationTransform"}];
  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isInterfaceAutorotationDisabled"), @"autorotationDisabled"}];
  v10 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"_windowInterfaceOrientation"), @"windowInterfaceOrientation"}];
  v11 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"_orientationForRootTransform"), @"rootTransformOrientation"}];
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 40) + 544);
  if (v13)
  {
    [v13 affineTransform];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v14 = [v12 ui_appendTransform:&v25 withName:@"rootTransform" skipIfIdentity:1];
  v15 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"_orientationForViewTransform"), @"viewTransformOrientation"}];
  v16 = *(a1 + 32);
  v17 = *(*(a1 + 40) + 536);
  if (v17)
  {
    [v17 affineTransform];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v18 = [v16 ui_appendTransform:&v25 withName:@"viewTransform" skipIfIdentity:1];
  v19 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isInterfaceAutorotationDisabled"), @"autorotationDisabled"}];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) _orientationTransactionToken];
  v22 = [v20 appendObject:v21 withName:@"orientationTransaction" skipIfNil:1];

  v23 = [*(a1 + 40) _delegateViewController];
  v24 = [v23 _viewControllerForSupportedInterfaceOrientations];

  [*(a1 + 32) ui_appendOrientationDebugDescription:v24 withName:@"orientationVC" skipIfNil:1];
}

- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIWindow *)self _orientationDebugDescriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (BOOL)inhibitManualTransform
{
  rootViewController = [(UIWindow *)self rootViewController];
  if ([rootViewController shouldAutorotate])
  {
    _transformLayerRotationsAreEnabled = [objc_opt_class() _transformLayerRotationsAreEnabled];
  }

  else
  {
    _transformLayerRotationsAreEnabled = 0;
  }

  return _transformLayerRotationsAreEnabled;
}

- (void)setupForOrientation:(int64_t)orientation
{
  if (![(UIWindow *)self inhibitSetupOrientation])
  {
    screen = [(UIWindow *)self screen];
    mainScreen = [objc_opt_self() mainScreen];

    if (screen == mainScreen)
    {
      screen2 = [(UIWindow *)self screen];
      [screen2 _referenceBounds];
      v9 = v8;
      v11 = v10;

      v12 = *(MEMORY[0x1E695EFD0] + 16);
      *&v29.a = *MEMORY[0x1E695EFD0];
      *&v29.c = v12;
      *&v29.tx = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)self setTransform:&v29];
      if ((orientation - 1) < 2)
      {
        v13 = v9;
        v14 = v11;
      }

      else
      {
        if ((orientation - 3) > 1)
        {
          goto LABEL_8;
        }

        v13 = v11;
        v14 = v9;
      }

      [(UIWindow *)self setBounds:0.0, 0.0, v13, v14];
LABEL_8:
      [(UIView *)self bounds];
      v16 = v15 * 0.5;
      [(UIView *)self bounds];
      [(UIWindow *)self setCenter:v16, v17 * 0.5];
      if ([(UIWindow *)self _isHostedInAnotherProcess]&& ![(UIWindow *)self _isTextEffectsWindowHosting]|| [(UIWindow *)self inhibitManualTransform]|| ![(UIWindow *)self _windowOwnsInterfaceOrientation])
      {
        goto LABEL_28;
      }

      [(UIView *)self center];
      v19 = -v18;
      [(UIView *)self center];
      CGAffineTransformMakeTranslation(&v29, v19, -v20);
      switch(orientation)
      {
        case 1:
          v21 = 0.0;
          break;
        case 3:
          v21 = 1.57079633;
          break;
        case 4:
          v21 = -1.57079633;
          break;
        default:
          v21 = 3.14159265;
          if (orientation != 2)
          {
            v21 = 0.0;
          }

          break;
      }

      v27 = v29;
      CGAffineTransformRotate(&v28, &v27, v21);
      v29 = v28;
      [(UIView *)self center];
      v23 = v22;
      [(UIView *)self center];
      v27 = v29;
      CGAffineTransformTranslate(&v28, &v27, v23, v24);
      v29 = v28;
      switch(orientation)
      {
        case 4:
          v25 = -v11;
          v27 = v29;
          v26 = 0.0;
          break;
        case 3:
          v26 = -v9;
          v27 = v29;
          v25 = 0.0;
          break;
        case 2:
          v25 = -v9;
          v26 = -v11;
          v27 = v29;
          break;
        default:
LABEL_27:
          *&v28.a = vrndaq_f64(*&v29.a);
          *&v28.c = vrndaq_f64(*&v29.c);
          *&v28.tx = vrndaq_f64(*&v29.tx);
          [(UIView *)self setTransform:&v28, *&v27.a, *&v27.c, *&v27.tx];
LABEL_28:
          self->_viewOrientation = orientation;
          return;
      }

      CGAffineTransformTranslate(&v28, &v27, v25, v26);
      v29 = v28;
      goto LABEL_27;
    }
  }
}

- (void)keyboardDidHide
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];

  [(UIWindow *)self _matchDeviceOrientation];
}

- (void)matchDeviceOrientation:(id)orientation
{
  v4 = +[UIPeripheralHost sharedInstance];
  v5 = [v4 _shouldDelayRotationForWindow:self];

  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_keyboardDidHide name:@"UIKeyboardDidHideNotification" object:0];
  }

  else
  {

    [(UIWindow *)self _matchDeviceOrientation];
  }
}

- (double)_classicOffset
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _unjailedReferenceBounds];
  v5 = v4;
  v7 = v6;

  screen = [(UIWindow *)self screen];
  [screen bounds];
  v10 = v9;
  v12 = v11;

  result = 0.0;
  if (v5 / v7 < v10 / v12)
  {
    return (v7 - v12 * (v5 / v10)) * 0.5;
  }

  return result;
}

- (void)_matchDeviceOrientation
{
  _keyboardOrientation = [(UIView *)self _keyboardOrientation];

  [(UIWindow *)self setupForOrientation:_keyboardOrientation];
}

- (id)_hostingHandle
{
  _contextId = [(UIWindow *)self _contextId];
  transformLayer = self->_transformLayer;
  if (transformLayer)
  {
    [(CALayer *)transformLayer affineTransform];
    transformLayer = self->_transformLayer;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  [(CALayer *)transformLayer frame:v7];
  v5 = [_UIHostedWindowHostingHandle hostedWindowHostingHandleWithContextID:_contextId rootLayerTransform:&v7 rootLayerFrame:?];

  return v5;
}

- (id)_centerExpressionInContainer:(id)container vertical:(BOOL)vertical contentInsetScale:(double)scale engine:(id)engine
{
  verticalCopy = vertical;
  containerCopy = container;
  engineCopy = engine;
  if ([(UIWindow *)self _isLoweringAnchoringConstraints])
  {
    v12 = [objc_alloc(MEMORY[0x1E6997790]) initWithEngine:engineCopy];
    [(UIView *)self _addCenterExpressionToExpression:v12 isVertical:verticalCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIWindow;
    v12 = [(UIView *)&v14 _centerExpressionInContainer:containerCopy vertical:verticalCopy contentInsetScale:engineCopy engine:scale];
  }

  return v12;
}

- (void)_setIsLoweringAnchoringConstraints:(BOOL)constraints
{
  if (constraints)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    objc_setAssociatedObject(self, &_UIWindowIsLoweringAnchoringConstraints, v4, 1);
  }

  else
  {

    objc_setAssociatedObject(self, &_UIWindowIsLoweringAnchoringConstraints, 0, 0);
  }
}

- (BOOL)_isLoweringAnchoringConstraints
{
  v2 = objc_getAssociatedObject(self, &_UIWindowIsLoweringAnchoringConstraints);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)_switchToLayoutEngine:(id)engine
{
  [(UIWindow *)self _invalidateWindowInternalConstraints];
  v5.receiver = self;
  v5.super_class = UIWindow;
  [(UIView *)&v5 _switchToLayoutEngine:engine];
}

- (void)_initializeLayoutEngineDiscardingOldIfNeeded:(BOOL)needed
{
  if (needed || ![(UIView *)self _layoutEngine])
  {
    [(UIView *)self setAutoresizingMask:18];
    v4 = objc_alloc_init(MEMORY[0x1E6997788]);
    [v4 setEngineScalingCoefficients:-[UIView _preferredLayoutEngineToUserScalingCoefficients](self)];
    if (qword_1ED4981E8 != -1)
    {
      dispatch_once(&qword_1ED4981E8, &__block_literal_global_61_4);
    }

    if (byte_1ED4981AB == 1)
    {
      [+[UIDevice currentDevice](UIDevice _playSystemSound:"_playSystemSound:", 1150];
    }

    [v4 setDelegate:self];
    [(UIWindow *)self _switchToLayoutEngine:v4];

    if ((*(&self->super._viewFlags + 5) & 0x10) == 0)
    {

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (id)_uiib_candidateRedundantConstraints
{
  _layoutEngineCreateIfNecessary = [(UIWindow *)self _layoutEngineCreateIfNecessary];

  return [_layoutEngineCreateIfNecessary candidateRedundantConstraints];
}

- (id)_redundantConstraints
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _uiib_candidateRedundantConstraints = [(UIWindow *)self _uiib_candidateRedundantConstraints];
  v5 = [_uiib_candidateRedundantConstraints countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_uiib_candidateRedundantConstraints);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 _nsib_isRedundant])
        {
          [array addObject:v9];
        }
      }

      v6 = [_uiib_candidateRedundantConstraints countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)notifications
{
  if ((~*&self->super._viewFlags & 0x180000000000) != 0)
  {
    v8 = v3;
    v9 = v4;
    [(UIWindow *)self _layoutEngineCreateIfNecessary];
    v7.receiver = self;
    v7.super_class = UIWindow;
    [(UIView *)&v7 _updateConstraintsIfNeededWithViewForVariableChangeNotifications:notifications];
  }
}

- (id)_descendantWithAmbiguousLayout
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _allSubviews = [(UIView *)self _allSubviews];
  result = [_allSubviews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(_allSubviews);
      }

      result = [*(*(&v7 + 1) + 8 * v6) _descendantWithAmbiguousLayout];
      if (result)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [_allSubviews countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (BOOL)hasAmbiguousLayout
{
  v9 = *MEMORY[0x1E69E9840];
  _hasAmbiguousLayout = [(UIWindow *)self _hasAmbiguousLayout];
  if (_hasAmbiguousLayout)
  {
    _descendantWithAmbiguousLayout = [(UIWindow *)self _descendantWithAmbiguousLayout];
    v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &hasAmbiguousLayout___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = [_descendantWithAmbiguousLayout _autolayoutTraceRecursively:0];
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Window has a view with an ambiguous layout. See Auto Layout Guide: Ambiguous Layouts for help debugging. Displaying synopsis from invoking [UIView _autolayoutTrace] to provide additional detail.\n%@", &v7, 0xCu);
    }
  }

  return _hasAmbiguousLayout;
}

- (void)exerciseAmbiguityInLayout
{
  _descendantWithAmbiguousLayout = [(UIWindow *)self _descendantWithAmbiguousLayout];
  if (_descendantWithAmbiguousLayout == self)
  {
    v4.receiver = self;
    v4.super_class = UIWindow;
    [(UIView *)&v4 exerciseAmbiguityInLayout];
  }

  else
  {

    [(UIWindow *)_descendantWithAmbiguousLayout exerciseAmbiguityInLayout];
  }
}

- (void)_updateWindowEngineHostConstraintsWithSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  v48 = *MEMORY[0x1E69E9840];
  _windowInternalConstraints = [(UIWindow *)self _windowInternalConstraints];
  if (!_windowInternalConstraints)
  {
    if ((dyld_program_sdk_at_least() & 1) != 0 || self && [(UIView *)self _forceLayoutEngineSolutionInRationalEdges])
    {
      v6 = MEMORY[0x1E695DF70];
      v7 = [_UIWindowAnchoringConstraint constraintWithItem:self attribute:32 relatedBy:0 constant:0.0];
      v8 = 0.0;
      selfCopy2 = self;
      v10 = 33;
    }

    else
    {
      [(UIView *)self center];
      v12 = v11;
      v6 = MEMORY[0x1E695DF70];
      v7 = [_UIWindowAnchoringConstraint constraintWithItem:self attribute:34 relatedBy:0 constant:?];
      selfCopy2 = self;
      v10 = 35;
      v8 = v12;
    }

    _windowInternalConstraints = [v6 arrayWithObjects:{v7, +[_UIWindowAnchoringConstraint constraintWithItem:attribute:relatedBy:constant:](_UIWindowAnchoringConstraint, "constraintWithItem:attribute:relatedBy:constant:", selfCopy2, v10, 0, v8), 0}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = [(NSArray *)_windowInternalConstraints countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(_windowInternalConstraints);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          if (v17)
          {
            v17[10] = self;
          }

          [(UIView *)self _layoutEngine_didAddLayoutConstraint:v17 roundingAdjustment:0 mutuallyExclusiveConstraints:0.0];
        }

        v14 = [(NSArray *)_windowInternalConstraints countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v14);
    }

    [(UIWindow *)self _setWindowInternalConstraints:_windowInternalConstraints];
  }

  if ([(NSArray *)_windowInternalConstraints count]== 4 && !sizingCopy)
  {
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{-[NSArray objectAtIndex:](_windowInternalConstraints, "objectAtIndex:", 2), -[NSArray objectAtIndex:](_windowInternalConstraints, "objectAtIndex:", 3), 0}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(UIView *)self _layoutEngine_willRemoveLayoutConstraint:?];
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v20);
    }

    _windowInternalConstraints = [(NSArray *)_windowInternalConstraints arrayByExcludingObjectsInArray:v18];
    [(UIWindow *)self _setWindowInternalConstraints:_windowInternalConstraints];
  }

  if ([(NSArray *)_windowInternalConstraints count]== 2 && sizingCopy)
  {
    [(UIView *)self bounds];
    v24 = v23;
    v25 = MEMORY[0x1E695DEC8];
    v27 = [MEMORY[0x1E6997770] constraintWithItem:self attribute:7 relatedBy:0 constant:v26];
    v28 = [v25 arrayWithObjects:{v27, objc_msgSend(MEMORY[0x1E6997770], "constraintWithItem:attribute:relatedBy:constant:", self, 8, 0, v24), 0}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v34;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [(UIView *)self _layoutEngine_didAddLayoutConstraint:0 roundingAdjustment:0.0 mutuallyExclusiveConstraints:?];
        }

        v30 = [v28 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v30);
    }

    [(UIWindow *)self _setWindowInternalConstraints:[(NSArray *)_windowInternalConstraints arrayByAddingObjectsFromArray:v28]];
  }
}

- (unint64_t)_expectedWindowInternalConstraintsCount
{
  if ((*(&self->super._viewFlags + 6) & 0x10) != 0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

- (void)_windowInternalConstraints_sizeDidChange
{
  if ((*(&self->super._viewFlags + 6) & 0x10) == 0)
  {
    _windowInternalConstraints = [(UIWindow *)self _windowInternalConstraints];
    v4 = [(NSArray *)_windowInternalConstraints count];
    if (v4 == [(UIWindow *)self _expectedWindowInternalConstraintsCount])
    {
      [(UIView *)self bounds];
      v6 = v5;
      [-[NSArray objectAtIndex:](_windowInternalConstraints objectAtIndex:{2), "setConstant:", v7}];
      v8 = [(NSArray *)_windowInternalConstraints objectAtIndex:3];

      [v8 setConstant:v6];
    }

    else
    {

      [(UIWindow *)self _invalidateWindowInternalConstraints];
    }
  }
}

- (void)_windowInternalConstraints_centerDidChange
{
  _windowInternalConstraints = [(UIWindow *)self _windowInternalConstraints];
  v4 = [(NSArray *)_windowInternalConstraints count];
  if (v4 == [(UIWindow *)self _expectedWindowInternalConstraintsCount])
  {
    if ((dyld_program_sdk_at_least() & 1) == 0 && (!self || ![(UIView *)self _forceLayoutEngineSolutionInRationalEdges]))
    {
      [(UIView *)self center];
      v6 = v5;
      [-[NSArray objectAtIndex:](_windowInternalConstraints objectAtIndex:{0), "setConstant:", v7}];
      v8 = [(NSArray *)_windowInternalConstraints objectAtIndex:1];

      [v8 setConstant:v6];
    }
  }

  else
  {

    [(UIWindow *)self _invalidateWindowInternalConstraints];
  }
}

- (void)_autolayout_windowDidChangeBoundsFrom:(CGRect)from
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    height = from.size.height;
    width = from.size.width;
    [(UIView *)self bounds:from.origin.x];
    if (v7 != width || v6 != height)
    {

      [(UIWindow *)self _windowInternalConstraints_sizeDidChange];
    }
  }
}

- (void)_autolayout_windowDidChangeCenterFrom:(CGPoint)from
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    y = from.y;
    x = from.x;
    [(UIView *)self center];
    if (v7 != x || v6 != y)
    {

      [(UIWindow *)self _windowInternalConstraints_centerDidChange];
    }
  }
}

- (void)_constraints_subviewWillChangeSuperview:(id)superview
{
  [(UIWindow *)self _setRootViewConstraints:0];
  v5.receiver = self;
  v5.super_class = UIWindow;
  [(UIView *)&v5 _constraints_subviewWillChangeSuperview:superview];
}

@end