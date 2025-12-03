@interface UIPresentationController
+ (BOOL)_shouldDeferTransitions;
+ (UIEdgeInsets)_statusBarOverlapAndMarginInfoForView:(id)view inWindow:(id)window;
+ (void)_scheduleTransition:(id)transition;
+ (void)initialize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- (BOOL)_canPresentInSeparateScene;
- (BOOL)_containerViewShouldIgnoreDirectTouchEvents;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_isAdapted;
- (BOOL)_isModal;
- (BOOL)_isPresentedInFullScreen;
- (BOOL)_presentedViewControllerProvidesContentScrollView;
- (BOOL)_presentingOrPresented;
- (BOOL)_shouldAdaptFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection;
- (BOOL)_shouldCallAppearanceCallbacksFor:(id)for;
- (BOOL)_shouldDismiss;
- (BOOL)_shouldGrabPresentersView;
- (BOOL)_shouldPerformWillTransitionToTraitCollectionForParent:(id)parent;
- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance;
- (BOOL)_shouldRespectDefinesPresentationContext;
- (CGAffineTransform)transformOfPresentedViewInContainerView;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview inWindow:(id)window;
- (CGRect)_frameOfPresentedViewControllerViewInSuperview;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)sourceRect;
- (CGSize)_preferredContentSize;
- (CGSize)preferredContentSize;
- (NSArray)preferredFocusEnvironments;
- (UIBarButtonItem)barButtonItem;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItemContainer)focusItemContainer;
- (UIModalPresentationStyle)adaptivePresentationStyle;
- (UIModalPresentationStyle)adaptivePresentationStyleForTraitCollection:(UITraitCollection *)traitCollection;
- (UIModalPresentationStyle)presentationStyle;
- (UIPresentationController)init;
- (UIPresentationController)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController;
- (UITraitCollection)_internalOverrideTraitCollection;
- (UITraitCollection)traitCollection;
- (UIView)_currentPresentationSuperview;
- (UIView)_presentedViewForOverrideTraits;
- (UIView)_realSourceView;
- (UIView)_viewForRemoteTextEffectsWindowMatchAnimation;
- (UIView)preferredFocusedView;
- (UIView)presentedView;
- (UIViewController)_sourceViewController;
- (UIViewController)presentedViewController;
- (UIViewControllerTransitionCoordinator)_definiteTransitionCoordinator;
- (UIViewControllerTransitionCoordinator)_transitionCoordinator;
- (_BYTE)_presentedViewWithReentrancyGuard;
- (_UIPresentationControllerTransitionDelegate)_transitionDelegate;
- (_UITraitOverrides)_internalTraitOverrides;
- (_UITypedStorage)_typedStorage;
- (_UIViewControllerTransitionContext)_transitionContext;
- (id)_activePresentationController;
- (id)_adaptiveWillTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (id)_appearanceContainer;
- (id)_childPresentationController;
- (id)_compatibleParentTraitEnvironment;
- (id)_currentContextPresentationSuperview;
- (id)_descriptionForPrintingViewControllerHierarchy;
- (id)_fullscreenPresentationSuperview;
- (id)_parentPresentationControllerImmediate:(BOOL)immediate;
- (id)_parentTraitCollection;
- (id)_parentTraitEnvironment;
- (id)_preferredAnimationControllerForDismissal;
- (id)_preferredAnimationControllerForPresentation;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (id)_presentedViewControllerForPresentationController:(id)controller traitCollection:(id)collection;
- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler;
- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (id)_rootPresentingViewControllerForNestedPresentation;
- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)controller;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_traitCollectionForPresentedViewController:(id)controller defaultTraitCollectionForChildEnvironment:(id)environment;
- (id)_viewsParticipatingInNavigationControllerTransition;
- (id)delegate;
- (id)presentedContentContainer;
- (id)registerForTraitChanges:(id)changes withAction:(SEL)action;
- (id)registerForTraitChanges:(id)changes withHandler:(id)handler;
- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (void)_applyDefaultTraitCollectionOverridesWithProvider:(id)provider mutableTraitCollectionProvider:(id)collectionProvider;
- (void)_beginOcclusionIfNecessary:(BOOL)necessary;
- (void)_beginSubduing;
- (void)_beginSubduingIfNecessary:(BOOL)necessary;
- (void)_childTraitTransformDidChange;
- (void)_cleanup;
- (void)_collectExistingTraitCollectionsForTraitTracking:(id)tracking;
- (void)_compatibleUpdateTraitsIfNecessary;
- (void)_containedViewControllerModalStateChanged;
- (void)_containerViewDidLayoutSubviewsWithObservationTracking;
- (void)_containerViewWillLayoutSubviews;
- (void)_containerViewWillLayoutSubviewsWithObservationTracking;
- (void)_coverWithSnapshot;
- (void)_disableMenuPressForBackGesture;
- (void)_dismissWithAnimationController:(id)controller interactionController:(id)interactionController animated:(BOOL)animated handoffData:(id)data;
- (void)_dismissalTransitionDidEnd:(void *)end;
- (void)_dismissalTransitionWillBegin;
- (void)_enableOcclusion:(BOOL)occlusion;
- (void)_enableSubduing:(BOOL)subduing;
- (void)_endSubduing;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_initViewHierarchyForPresentationSuperview:(id)superview inWindow:(id)window;
- (void)_invalidateTraitCollectionsOfDescendants:(void *)descendants;
- (void)_parent:(id)_parent willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_performBackGesture:(id)gesture;
- (void)_populateInitialTraitCollection;
- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively;
- (void)_presentWithAnimationController:(id)controller inWindow:(id)window interactionController:(id)interactionController animated:(BOOL)animated handoffData:(id)data;
- (void)_presentationTransitionDidEnd:(void *)end;
- (void)_presentationTransitionWillBegin;
- (void)_recordTraitUsage:(__int128 *)usage trackedStateDiff:(unint64_t)diff insideMethod:(const char *)method withInvalidationAction:;
- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations;
- (void)_releaseSnapshot;
- (void)_sendDelegateWillPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)_sendDidAttemptToDismiss;
- (void)_sendDidDismiss;
- (void)_sendDismissalsAsNeeded;
- (void)_sendPresentationControllerNotification:(id)notification userInfo:(id)info;
- (void)_sendWillDismiss;
- (void)_setContainerIgnoresDirectTouchEvents:(BOOL)events;
- (void)_setInternalOverrideTraitCollection:(id)collection;
- (void)_setPendingFocusEnvironmentUnlock:(id)unlock;
- (void)_setPreferredContentSize:(CGSize)size;
- (void)_setPresentedViewController:(id)controller;
- (void)_setPresentedViewControllerStoredWeakly:(BOOL)weakly;
- (void)_setPresentingViewController:(id)controller;
- (void)_setRealSourceView:(id)view;
- (void)_traitOverrides;
- (void)_traitOverridesDidChange;
- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator;
- (void)_transplantView:(id)view toSuperview:(id)superview;
- (void)_transplantView:(id)view toSuperview:(id)superview atIndex:(unint64_t)index;
- (void)_updateRealSourceView;
- (void)_updateTraitsIfNecessaryInitiatingPropagation:(BOOL)propagation;
- (void)_window:(id)_window willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_windowSceneDidUpdateEffectiveGeometry:(id)geometry;
- (void)completeCurrentTransitionImmediately;
- (void)dealloc;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)runTransitionForCurrentStateAnimated:(BOOL)animated handoffData:(id)data;
- (void)setNeedsFocusUpdate;
- (void)setOverrideTraitCollection:(UITraitCollection *)overrideTraitCollection;
- (void)setSourceItem:(id)item;
- (void)setSourceView:(id)view;
- (void)transitionDidFinish:(BOOL)finish;
- (void)transitionDidStart;
- (void)updateFocusIfNeeded;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UIPresentationController

- (UITraitCollection)traitCollection
{
  TraitCollectionTSD = GetTraitCollectionTSD();
  v4 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  _parentTraitCollection = [(UIPresentationController *)self _parentTraitCollection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__UIPresentationController_traitCollection__block_invoke;
  v8[3] = &unk_1E7101B20;
  v8[4] = self;
  v6 = [(UITraitCollection *)_parentTraitCollection _traitCollectionByModifyingTraitsCopyOnWrite:v8];
  *(GetTraitCollectionTSD() + 9) = v4;
  _UITraitEnvironmentGeneratedTraitCollection(self, v6);

  return v6;
}

- (id)_parentTraitCollection
{
  _parentTraitEnvironment = [(UIPresentationController *)self _parentTraitEnvironment];
  v4 = _parentTraitEnvironment;
  if (_parentTraitEnvironment)
  {
    v5 = [_parentTraitEnvironment _traitCollectionForChildEnvironment:self];
  }

  else if (dyld_program_sdk_at_least())
  {
    v5 = self->_lastNotifiedTraitCollection;
  }

  else
  {
    v5 = +[UITraitCollection _defaultTraitCollection];
  }

  v6 = v5;

  return v6;
}

- (id)_parentTraitEnvironment
{
  if (_UIPresentationControllersInheritTraitsFromViewHierarchy())
  {
    [(UIPresentationController *)self containerView];
  }

  else
  {
    [(UIPresentationController *)self _compatibleParentTraitEnvironment];
  }
  v3 = ;

  return v3;
}

void __43__UIPresentationController_traitCollection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v7 = v6;
  if (v6)
  {
    [(_UITraitOverrides *)v6 _applyTransformsUsingTraitCollectionProvider:v13 mutableTraitCollectionProvider:v5];
  }

  if ([*(a1 + 32) _inheritsPresentingViewControllerThemeLevel])
  {
    v8 = v13[2]();
    v9 = [(UITraitCollection *)v8 _incrementedBackgroundLevel];

    v10 = (v13[2])(v13);
    v11 = [v10 userInterfaceLevel];

    if (v11 != v9)
    {
      v12 = v5[2](v5);
      [v12 setUserInterfaceLevel:v9];
    }
  }

  [*(a1 + 32) _applyDefaultTraitCollectionOverridesWithProvider:v13 mutableTraitCollectionProvider:v5];
  if (v7)
  {
    [(_UITraitOverrides *)v7 _applyOverridesUsingTraitCollectionProvider:v13 mutableTraitCollectionProvider:v5];
  }
}

+ (void)initialize
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    v3 = objc_opt_self();
    [v3 instanceMethodForSelector:sel_traitCollection];
    v4 = dyld_image_header_containing_address();
    [self instanceMethodForSelector:sel_traitCollection];
    v5 = dyld_image_header_containing_address();

    if (v4 != v5)
    {
      v6 = *(__UILogGetCategoryCachedImpl("TraitCollection", &initialize___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = NSStringFromClass(self);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Class %@ overrides the -traitCollection getter, which is not supported. If you're trying to override traits, you must use the appropriate API.", &v9, 0xCu);
      }
    }
  }
}

- (void)_populateInitialTraitCollection
{
  if (dyld_program_sdk_at_least())
  {
    v3 = +[UITraitCollection _fallbackTraitCollection];
    lastNotifiedTraitCollection = self->_lastNotifiedTraitCollection;
    self->_lastNotifiedTraitCollection = v3;
  }

  self->_traitInitializationComplete = 1;
}

+ (BOOL)_shouldDeferTransitions
{
  v3 = +[UIViewController _shouldDeferTransitions];
  if (v3)
  {

    LOBYTE(v3) = [self _allowsDeferredTransitions];
  }

  return v3;
}

- (UIViewController)presentedViewController
{
  if (self->__presentedViewControllerStoredWeakly)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakPresentedViewController);
  }

  else
  {
    WeakRetained = self->_presentedViewController;
  }

  return WeakRetained;
}

- (id)_traitCollectionForPresentedViewController:(id)controller defaultTraitCollectionForChildEnvironment:(id)environment
{
  controllerCopy = controller;
  environmentCopy = environment;
  selfCopy = self;
  v9 = [(UIPresentationController *)selfCopy _traitCollectionForCherryPickingToPresentedViewController:controllerCopy];
  if (!v9)
  {

    goto LABEL_6;
  }

  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v18[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_188AE0FD4;
  *(v12 + 24) = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188AE0530;
  *(v13 + 24) = v12;
  aBlock[4] = sub_188AE0538;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188AE041C;
  aBlock[3] = &block_descriptor_90;
  v14 = _Block_copy(aBlock);

  v15 = [(UITraitCollection *)environmentCopy _traitCollectionByModifyingTraitsCopyOnWrite:v14];
  _Block_release(v14);
  if (!v15)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_10;
  }

  environmentCopy = v15;
LABEL_6:

  return environmentCopy;
}

- (_BYTE)_presentedViewWithReentrancyGuard
{
  if (self)
  {
    selfCopy = self;
    v3 = self[9];
    if (v3)
    {
      self = 0;
    }

    else
    {
      self[9] = 1;
      self = [self presentedView];
      selfCopy[9] = v3;
    }

    v1 = vars8;
  }

  return self;
}

- (UIView)_currentPresentationSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->__currentPresentationSuperview);

  return WeakRetained;
}

- (UIView)_presentedViewForOverrideTraits
{
  if (dyld_program_sdk_at_least())
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    viewIfLoaded = [presentedViewController viewIfLoaded];

    if (viewIfLoaded)
    {
      _presentedViewWithReentrancyGuard = [(UIPresentationController *)self _presentedViewWithReentrancyGuard];
      v6 = _presentedViewWithReentrancyGuard;
      if (_presentedViewWithReentrancyGuard == viewIfLoaded)
      {
        v7 = 0;
      }

      else
      {
        v7 = _presentedViewWithReentrancyGuard;
      }

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

  return v8;
}

- (BOOL)_shouldRespectDefinesPresentationContext
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    LOBYTE(v3) = ![(UIPresentationController *)self shouldPresentInFullscreen];
  }

  return v3;
}

- (id)_childPresentationController
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _presentationController = [presentedViewController _presentationController];

  return _presentationController;
}

- (BOOL)_shouldGrabPresentersView
{
  shouldRemovePresentersView = [(UIPresentationController *)self shouldRemovePresentersView];
  if (dyld_program_sdk_at_least())
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    v5 = [presentingViewController _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];

    if (v5 && [(UIPresentationController *)self shouldPresentInFullscreen])
    {
      _mayChildGrabPresentedViewControllerView = [v5 _mayChildGrabPresentedViewControllerView];
      if (_mayChildGrabPresentedViewControllerView)
      {
        LOBYTE(_mayChildGrabPresentedViewControllerView) = [v5 shouldPresentInFullscreen];
      }

      shouldRemovePresentersView &= _mayChildGrabPresentedViewControllerView;
    }
  }

  return shouldRemovePresentersView;
}

- (_UITypedStorage)_typedStorage
{
  if (self)
  {
    v2 = *(self + 136);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      v3 = *(self + 136);
      *(self + 136) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_containerViewWillLayoutSubviews
{
  if (![(UIPresentationController *)self dismissing]&& ![(UIPresentationController *)self _transitioningFrom])
  {
    if (!self->_didUpdateLayoutForStatusBarAndInterfaceOrientation)
    {
      self->_didUpdateLayoutForStatusBarAndInterfaceOrientation = 1;
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      [presentedViewController _updateLayoutForStatusBarAndInterfaceOrientation];
    }

    [(UIPresentationController *)self containerViewWillLayoutSubviews];
  }
}

- (void)_containerViewWillLayoutSubviewsWithObservationTracking
{
  selfCopy = self;
  sub_188ADE68C();
}

- (_UITraitOverrides)_internalTraitOverrides
{
  _traitOverrides = [(UIPresentationController *)self _traitOverrides];
  _overridesAppliedBefore = [(_UITraitOverrides *)_traitOverrides _overridesAppliedBefore];

  return _overridesAppliedBefore;
}

- (void)_traitOverrides
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:self];
      v5 = selfCopy[3];
      selfCopy[3] = v4;

      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_presentationTransitionWillBegin
{
  if (self)
  {
    [self presentationTransitionWillBegin];
    _transitionDelegate = [self _transitionDelegate];
    [_transitionDelegate _presentationControllerWillBeginPresentationTransition:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIPresentationControllerTransitionDelegate)_transitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__transitionDelegate);

  return WeakRetained;
}

- (void)_containerViewDidLayoutSubviewsWithObservationTracking
{
  selfCopy = self;
  sub_188AE32B0();
}

- (UIViewControllerTransitionCoordinator)_definiteTransitionCoordinator
{
  _transitionCoordinator = [(UIPresentationController *)self _transitionCoordinator];
  if (!_transitionCoordinator)
  {
    v4 = [_UIViewControllerImmediateAnimationTransitionCoordinator alloc];
    containerView = [(UIPresentationController *)self containerView];
    _transitionCoordinator = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)v4 initWithContainerView:containerView];
  }

  return _transitionCoordinator;
}

- (BOOL)_isPresentedInFullScreen
{
  containerView = [(UIPresentationController *)self containerView];
  superview = [containerView superview];
  containerView2 = [(UIPresentationController *)self containerView];
  window = [containerView2 window];
  v7 = superview == window;

  return v7;
}

- (_UIViewControllerTransitionContext)_transitionContext
{
  _currentTransitionController = [(UIPresentationController *)self _currentTransitionController];
  if (_currentTransitionController)
  {
    v3 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_currentTransitionController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)_traitOverridesDidChange
{
  if (self->_traitInitializationComplete)
  {
    if (_UIPresentationControllersInheritTraitsFromViewHierarchy())
    {

      [(UIPresentationController *)self _updateTraitsIfNecessary];
    }

    else
    {

      [(UIPresentationController *)self _compatibleUpdateTraitsIfNecessary];
    }
  }
}

- (void)_dismissalTransitionWillBegin
{
  if (self)
  {
    [self dismissalTransitionWillBegin];
    _transitionDelegate = [self _transitionDelegate];
    [_transitionDelegate _presentationControllerWillBeginDismissalTransition:self];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);

  if (WeakRetained)
  {
    v4 = objc_opt_class();
    Name = class_getName(v4);
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    v7 = objc_opt_class();
    class_getName(v7);

    presentedViewController = [(UIPresentationController *)self presentedViewController];
    v9 = objc_opt_class();
    class_getName(v9);

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state: deallocating presentation controller while still ignoring interaction events: <%s: %p>", Name, self];
    v11 = *(__UILogGetCategoryCachedImpl("Presentation", &dealloc___s_category_3) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12 = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);
    [v12 _endIgnoringInteractionEventsForReason:v10];

    objc_storeWeak(&self->_windowSceneIgnoringEvents, 0);
  }

  [(UIPresentationController *)self _releaseSnapshot];
  [(UIPresentationController *)self _setPendingFocusEnvironmentUnlock:0];
  v13.receiver = self;
  v13.super_class = UIPresentationController;
  [(UIPresentationController *)&v13 dealloc];
}

- (void)_cleanup
{
  self->_state = 0;
  [(UIPresentationController *)self _setCurrentPresentationSuperview:0];
  [(UIPresentationController *)self _setPresentationView:0];
  [(UIPresentationController *)self set_transitionViewForCurrentTransition:0];
  [(UIPresentationController *)self _setPendingFocusEnvironmentUnlock:0];
  [(UIPresentationController *)self set_computeToEndFrameForCurrentTransition:0];
  [(UIPresentationController *)self set_currentTransitionDidComplete:0];
  [(UIPresentationController *)self set_fromViewForCurrentTransition:0];
  [(UIPresentationController *)self set_toViewForCurrentTransition:0];
  [(UIPresentationController *)self set_customFromViewForCurrentTransition:0];
  [(UIPresentationController *)self set_customToViewForCurrentTransition:0];
  [(UIPresentationController *)self _setAdaptiveTransitionContext:0];
  [(UIPresentationController *)self _setAdaptiveTransitionCoordinator:0];
  self->_didUpdateLayoutForStatusBarAndInterfaceOrientation = 0;
}

- (void)_releaseSnapshot
{
  [(UIView *)self->_snapshotOverlayView removeFromSuperview];
  snapshotOverlayView = self->_snapshotOverlayView;
  self->_snapshotOverlayView = 0;
}

- (id)_fullscreenPresentationSuperview
{
  _containerSuperviewForCurrentTransition = [(UIPresentationController *)self _containerSuperviewForCurrentTransition];

  if (!_containerSuperviewForCurrentTransition || ([(UIPresentationController *)self _containerSuperviewForCurrentTransition], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), window = objc_claimAutoreleasedReturnValue(), v4, !window))
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    view = [presentingViewController view];
    window = [view window];
  }

  return window;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];

  v6 = dyld_program_sdk_at_least();
  v7 = v6;
  if (window)
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    view = [window rootViewController];
    if ((presentingViewController != view) | v7 & 1)
    {
      __sizeClassPair = [window __sizeClassPair];
      v10 = v9;
LABEL_7:

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    __sizeClassPair = [0 __sizeClassPair];
    v10 = v11;
    goto LABEL_8;
  }

  presentingViewController2 = [(UIPresentationController *)self presentingViewController];
  __sizeClassPair = [presentingViewController2 __sizeClassPair];
  v10 = v13;

  if (window)
  {
    goto LABEL_7;
  }

LABEL_8:

  v14 = __sizeClassPair;
  v15 = v10;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)_containedViewControllerModalStateChanged
{
  _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
  [_parentPresentationController _containedViewControllerModalStateChanged];
}

- (UIViewControllerTransitionCoordinator)_transitionCoordinator
{
  _transitionContext = [(UIPresentationController *)self _transitionContext];
  _transitionCoordinator = [_transitionContext _transitionCoordinator];

  return _transitionCoordinator;
}

- (id)_currentContextPresentationSuperview
{
  _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
  v4 = _parentPresentationController;
  if (_parentPresentationController)
  {
    [_parentPresentationController _presentationView];
  }

  else
  {
    [(UIPresentationController *)self _fullscreenPresentationSuperview];
  }
  v5 = ;

  return v5;
}

- (id)_rootPresentingViewControllerForNestedPresentation
{
  v3 = self->_presentingViewController;
  v4 = [(UIViewController *)self->_presentingViewController _existingPresentationControllerImmediate:0 effective:1];
  if (v4)
  {
    v5 = v4;
    do
    {
      presentingViewController = [v5 presentingViewController];

      v7 = [(UIViewController *)presentingViewController _existingPresentationControllerImmediate:0 effective:1];

      v5 = v7;
      v3 = presentingViewController;
    }

    while (v7);
  }

  else
  {
    presentingViewController = v3;
  }

  return presentingViewController;
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
  v4 = 0.0;
  if (_parentPresentationController)
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (![(UIPresentationController *)self shouldPresentInFullscreen])
    {
      [_parentPresentationController _additionalSafeAreaInsets];
      v7 = v8;
      v6 = v9;
      v5 = v10;
      v4 = v11;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v12 = v7;
  v13 = v6;
  v14 = v5;
  v15 = v4;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)_beginSubduing
{
  containerView = [(UIPresentationController *)self containerView];
  superview = [containerView superview];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  subduingInvalidation = self->_subduingInvalidation;
  if (has_internal_diagnostics)
  {
    if (subduingInvalidation)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "_subduingInvalidation is non-nil, should be nil", buf, 2u);
      }
    }
  }

  else if (subduingInvalidation)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &_beginSubduing___s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "_subduingInvalidation is non-nil, should be nil", v12, 2u);
    }
  }

  containerView2 = [(UIPresentationController *)self containerView];
  v8 = [superview setSubduesSiblings:1 belowView:containerView2];
  v9 = self->_subduingInvalidation;
  self->_subduingInvalidation = v8;
}

- (id)presentedContentContainer
{
  _childPresentationController = [(UIPresentationController *)self _childPresentationController];
  v4 = _childPresentationController;
  if (_childPresentationController)
  {
    presentedViewController = _childPresentationController;
  }

  else
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
  }

  v6 = presentedViewController;

  return v6;
}

- (UIView)presentedView
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  return view;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
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

- (CGAffineTransform)transformOfPresentedViewInContainerView
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (BOOL)_containerViewShouldIgnoreDirectTouchEvents
{
  _transitionContext = [(UIPresentationController *)self _transitionContext];
  _animator = [_transitionContext _animator];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [_animator prefersPreemptionEnabledForPresentations] && -[UIPresentationController dismissing](self, "dismissing") && (objc_msgSend(_transitionContext, "isInteractive") & 1) == 0)
  {
    v5 = [_transitionContext transitionWasCancelled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (UIView)_realSourceView
{
  sourceItem = [(UIPresentationController *)self sourceItem];
  v4 = _UIPopoverPresentationControllerSourceItemUpCast(sourceItem);

  if (v4)
  {
    containerView = [(UIPresentationController *)self containerView];
    _window = [containerView _window];
    v7 = [v4 _sourceViewForPresentationInWindow:_window];

    if (v7 != self->_observedRealSourceView)
    {
      [(UIPresentationController *)self _updateRealSourceView];
    }
  }

  observedRealSourceView = self->_observedRealSourceView;
  v9 = observedRealSourceView;

  return observedRealSourceView;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)_isAdapted
{
  selfCopy = self;
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _presentationController = [presentingViewController _presentationController];
  LOBYTE(selfCopy) = _presentationController != selfCopy;

  return selfCopy;
}

- (UIBarButtonItem)barButtonItem
{
  sourceItem = [(UIPresentationController *)self sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = sourceItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateRealSourceView
{
  v12 = *MEMORY[0x1E69E9840];
  sourceItem = [(UIPresentationController *)self sourceItem];
  v4 = _UIPopoverPresentationControllerSourceItemUpCast(sourceItem);

  if (v4)
  {
    containerView = [(UIPresentationController *)self containerView];
    _window = [containerView _window];

    sourceView = [v4 _sourceViewForPresentationInWindow:_window];
    if (_window)
    {
      if (os_variant_has_internal_diagnostics())
      {
        if (!sourceView)
        {
          v8 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            v10 = 138412290;
            v11 = v4;
            _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Assuming %@'s view exists", &v10, 0xCu);
          }
        }
      }

      else if (!sourceView)
      {
        v9 = *(__UILogGetCategoryCachedImpl("Assert", &_updateRealSourceView___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Assuming %@'s view exists", &v10, 0xCu);
        }
      }
    }
  }

  else
  {
    sourceView = [(UIPresentationController *)self sourceView];
  }

  [(UIPresentationController *)self _setRealSourceView:sourceView];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  containerView = [(UIPresentationController *)self containerView];
  superview = [containerView superview];

  return superview;
}

- (void)_applyDefaultTraitCollectionOverridesWithProvider:(id)provider mutableTraitCollectionProvider:(id)collectionProvider
{
  v6 = _Block_copy(provider);
  v10 = v6;
  v8 = _Block_copy(collectionProvider);
  selfCopy = self;
  sub_189071A30(sub_188A854F4, v9, sub_188A7A460);
  _Block_release(v8);
  _Block_release(v6);
}

- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_189071728(controllerCopy);

  return v6;
}

- (void)setSourceView:(id)view
{
  viewCopy = view;
  v9 = viewCopy;
  if (viewCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    viewCopy = v9;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:193 description:{@"Tried to set %@ as sourceView of %@, even though it is not a kind of UIView.", v9, self}];

      viewCopy = v9;
    }
  }

  if (self->_sourceView != viewCopy)
  {
    objc_storeStrong(&self->_sourceView, view);
    [(UIPresentationController *)self _updateRealSourceView];
    viewCopy = v9;
  }
}

- (void)setSourceItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v6 = itemCopy;
    v9 = _UIPopoverPresentationControllerSourceItemUpCast(itemCopy);

    v7 = v9;
    if (v9)
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:208 description:{@"Tried to set %@ as sourceItem of %@, which is not a supported class", 0, self}];
  }

  v7 = 0;
LABEL_5:
  if (self->_sourceItem != v7)
  {
    v10 = v7;
    objc_storeStrong(&self->_sourceItem, v7);
    [(UIPresentationController *)self _updateRealSourceView];
    v7 = v10;
  }
}

- (void)_setRealSourceView:(id)view
{
  viewCopy = view;
  p_observedRealSourceView = &self->_observedRealSourceView;
  observedRealSourceView = self->_observedRealSourceView;
  if (observedRealSourceView != viewCopy)
  {
    v10 = viewCopy;
    v8 = observedRealSourceView;
    objc_storeStrong(&self->_observedRealSourceView, view);
    if (v8)
    {
      [(UIView *)v8 _removeGeometryChangeObserver:?];
    }

    if (*p_observedRealSourceView)
    {
      [(UIView *)*p_observedRealSourceView _addGeometryChangeObserver:?];
      v9 = self->_observedRealSourceView;
    }

    else
    {
      v9 = 0;
    }

    [(UIPresentationController *)self _realSourceViewDidChangeFromView:v8 toView:v9];

    viewCopy = v10;
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  v5 = [(UIPresentationController *)self containerView:changed];
  [v5 setNeedsLayout];

  [(UIPresentationController *)self _realSourceViewGeometryDidChange];
}

- (UIPresentationController)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController
{
  v6 = presentedViewController;
  v7 = presentingViewController;
  v16.receiver = self;
  v16.super_class = UIPresentationController;
  v8 = [(UIPresentationController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(UIPresentationController *)v8 _populateInitialTraitCollection];
    [(UIPresentationController *)v9 _setPresentingViewController:v7];
    [(UIPresentationController *)v9 _setPresentedViewController:v6];
    v10 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
    v11 = [(UIPresentationController *)v9 _createVisualStyleForProvider:v10];
    visualStyle = v9->_visualStyle;
    v9->_visualStyle = v11;

    v9->_isDisconnectedRoot = 0;
    v9->__shouldSuppressHDRDuringPresentation = 1;
    v13 = __systemLayoutFittingSizeCallbackIMP;
    if (!__systemLayoutFittingSizeCallbackIMP)
    {
      v13 = [UIPresentationController instanceMethodForSelector:sel_systemLayoutFittingSizeDidChangeForChildContentContainer_];
      __systemLayoutFittingSizeCallbackIMP = v13;
    }

    if (v13 != [objc_opt_class() instanceMethodForSelector:sel_systemLayoutFittingSizeDidChangeForChildContentContainer_])
    {
      v9->_monitorsSystemLayoutFittingSize = 1;
    }

    v14 = v9;
  }

  return v9;
}

- (UIPresentationController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIPresentationController init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (void)_transplantView:(id)view toSuperview:(id)superview atIndex:(unint64_t)index
{
  viewCopy = view;
  superviewCopy = superview;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__UIPresentationController__transplantView_toSuperview_atIndex___block_invoke;
  v13[3] = &unk_1E7101900;
  v14 = viewCopy;
  v15 = superviewCopy;
  indexCopy = index;
  v9 = superviewCopy;
  v10 = viewCopy;
  _window = [v10 _window];
  windowScene = [_window windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:v13 forScene:windowScene];
}

uint64_t __64__UIPresentationController__transplantView_toSuperview_atIndex___block_invoke(uint64_t a1)
{
  v2 = _frameIgnoringLayerTransformOnOrAfterYukon(*(a1 + 32));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) superview];
  [v9 convertPoint:*(a1 + 40) toView:{v2, v4}];
  v11 = v10;
  v13 = v12;

  _setFrameIgnoringLayerTransformOnOrAfterYukon(*(a1 + 32), v11, v13, v6, v8);
  [*(a1 + 40) insertSubview:*(a1 + 32) atIndex:*(a1 + 48)];
  return 0;
}

- (void)_transplantView:(id)view toSuperview:(id)superview
{
  viewCopy = view;
  superviewCopy = superview;
  v11 = MEMORY[0x1E69E9820];
  v12 = viewCopy;
  v13 = superviewCopy;
  v7 = superviewCopy;
  v8 = viewCopy;
  _window = [v8 _window];
  windowScene = [_window windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:windowScene forScene:?];
}

uint64_t __56__UIPresentationController__transplantView_toSuperview___block_invoke(uint64_t a1)
{
  v2 = _frameIgnoringLayerTransformOnOrAfterYukon(*(a1 + 32));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) superview];
  [v9 convertPoint:*(a1 + 40) toView:{v2, v4}];
  v11 = v10;
  v13 = v12;

  _setFrameIgnoringLayerTransformOnOrAfterYukon(*(a1 + 32), v11, v13, v6, v8);
  [*(a1 + 40) addSubview:*(a1 + 32)];
  return 0;
}

- (void)transitionDidStart
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (-[UIPresentationController _shouldMakePresentedViewControllerFirstResponder](self, "_shouldMakePresentedViewControllerFirstResponder") && ([presentedViewController _containsFirstResponder] & 1) == 0)
  {
    [presentedViewController becomeFirstResponder];
  }
}

- (BOOL)_presentingOrPresented
{
  if ([(UIPresentationController *)self presenting])
  {
    return 1;
  }

  return [(UIPresentationController *)self presented];
}

- (id)_activePresentationController
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _presentationController = [presentingViewController _presentationController];

  return _presentationController;
}

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  if (-[UIPresentationController shouldPresentInFullscreen](self, "shouldPresentInFullscreen") || (-[UIPresentationController presentingViewController](self, "presentingViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _existingPresentationControllerImmediate:0 effective:1 includesRoot:1], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {

    return [(UIPresentationController *)self shouldRemovePresentersView];
  }

  else
  {
    _shouldPresentedViewControllerControlStatusBarAppearance = [v4 _shouldPresentedViewControllerControlStatusBarAppearance];

    return _shouldPresentedViewControllerControlStatusBarAppearance;
  }
}

- (void)transitionDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v50 = *MEMORY[0x1E69E9840];
  presenting = [(UIPresentationController *)self presenting];
  dismissing = [(UIPresentationController *)self dismissing];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (presenting)
  {
    v9 = presentedViewController;
  }

  else
  {
    v9 = presentingViewController;
  }

  v33 = presentedViewController;
  if (presenting)
  {
    v10 = presentingViewController;
  }

  else
  {
    v10 = presentedViewController;
  }

  v11 = v9;
  v12 = v10;
  _transitionContext = [(UIPresentationController *)self _transitionContext];
  _currentTransitionDidComplete = [(UIPresentationController *)self _currentTransitionDidComplete];
  v31 = _currentTransitionDidComplete;
  if (_currentTransitionDidComplete)
  {
    (*(_currentTransitionDidComplete + 16))(_currentTransitionDidComplete, finishCopy);
    if (!finishCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v30 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = presentingViewController;
      _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "self._currentTransitionDidComplete is nil! for self: %@; presentedViewController: %@; presentingViewController: %@", buf, 0x20u);
    }

    if (finishCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1048) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = presentingViewController;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "self._currentTransitionDidComplete is nil! for self: %@; presentedViewController: %@; presentingViewController: %@", buf, 0x20u);
    }

    if (finishCopy)
    {
LABEL_14:
      if (presenting)
      {
        view = [v33 view];
        superview = [view superview];
        [(UIPresentationController *)self _setPresentationView:superview];
      }

      else if (dismissing)
      {
        [(UIPresentationController *)self _setPresentationView:0, v31];
      }
    }
  }

LABEL_18:
  [_transitionContext _setContainerView:{0, v31}];
  [(UIPresentationController *)self _setCurrentInteractionController:0];
  _completionBlock = [presentingViewController _completionBlock];
  if (presentingViewController)
  {
    if (finishCopy)
    {
      if (presenting)
      {
        [presentingViewController _didFinishPresentTransition];
      }

      else
      {
        [presentingViewController _didFinishDismissTransition];
      }
    }

    else if (presenting)
    {
      [presentingViewController _didCancelPresentTransition:_transitionContext];
    }

    else
    {
      [presentingViewController _didCancelDismissTransition:_transitionContext];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIPresentationController_transitionDidFinish___block_invoke;
  aBlock[3] = &unk_1E7101950;
  aBlock[4] = self;
  v19 = v11;
  v38 = v19;
  v20 = presentingViewController;
  v39 = v20;
  v21 = _transitionContext;
  v40 = v21;
  v42 = finishCopy;
  v22 = v12;
  v41 = v22;
  v43 = presenting;
  v23 = _Block_copy(aBlock);
  if (([objc_opt_class() _allowsDeferredTransitions] & 1) != 0 || !+[UIApplication _isCertainCheckpointInAppLaunchReached](UIApplication, "_isCertainCheckpointInAppLaunchReached"))
  {
    v23[2](v23);
    if (!_completionBlock)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v24 = dyld_program_sdk_at_least();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIPresentationController_transitionDidFinish___block_invoke_2;
  block[3] = &unk_1E7101B70;
  v36 = v24 ^ 1;
  v35 = v23;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  if (_completionBlock)
  {
LABEL_31:
    _completionBlock[2](_completionBlock, finishCopy);
  }

LABEL_32:
  [(UIPresentationController *)self executeTransitionCompletionBlock];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    forcePresentationControllerDelegate = 0;
    if ([(UIPresentationController *)self dismissing]&& finishCopy)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (![(UIPresentationController *)self presenting]|| finishCopy)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  forcePresentationControllerDelegate = [(UIPresentationController *)self forcePresentationControllerDelegate];
  if (![(UIPresentationController *)self dismissing]|| !finishCopy)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (forcePresentationControllerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [forcePresentationControllerDelegate forcePresentationControllerDidDismiss:self];
  }

LABEL_43:
  [(UIPresentationController *)self _setCurrentTransitionController:0];
  if ([(UIPresentationController *)self dismissing]&& finishCopy || [(UIPresentationController *)self presenting]&& !finishCopy)
  {
    [(UIPresentationController *)self _cleanup];
  }

  else
  {
    self->_state = 2;
    [v22 setNeedsFocusUpdate];
    [(UIPresentationController *)self setNeedsFocusUpdate];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIPresentationController", &qword_1ED49D728);
  v27 = *(CategoryCachedImpl + 8);
  v28 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = v28;
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v27, OS_SIGNPOST_INTERVAL_END, v29, "ModalTransition", " enableTelemetry=YES ", buf, 2u);
    }
  }
}

void __48__UIPresentationController_transitionDidFinish___block_invoke(uint64_t a1)
{
  _UIQOSExcludeCommitFromGlitchTrackingIfUnmanaged();
  if ([*(a1 + 32) _shouldCallAppearanceCallbacksFor:*(a1 + 40)])
  {
    v2 = *(a1 + 40);
    if (v2 == *(a1 + 48))
    {
      [v2 setInAnimatedVCTransition:{objc_msgSend(*(a1 + 56), "isAnimated")}];
      v2 = *(a1 + 40);
    }

    [v2 setFinishingModalTransition:1];
    v3 = *(a1 + 40);
    if (*(a1 + 72) == 1)
    {
      [v3 endAppearanceTransition];
      [*(a1 + 40) setAppearanceTransitionsAreDisabled:0];
    }

    else
    {
      [v3 cancelBeginAppearanceTransition];
    }

    [*(a1 + 40) setFinishingModalTransition:0];
  }

  if ([*(a1 + 32) _shouldCallAppearanceCallbacksFor:*(a1 + 64)])
  {
    v4 = *(a1 + 64);
    if (v4 == *(a1 + 48))
    {
      [v4 setInAnimatedVCTransition:{objc_msgSend(*(a1 + 56), "isAnimated")}];
      v4 = *(a1 + 64);
    }

    if (*(a1 + 72) == 1)
    {
      [v4 endAppearanceTransition];
    }

    else
    {
      [v4 cancelBeginAppearanceTransition];
    }
  }

  [*(a1 + 64) setPerformingModalTransition:0];
  [*(a1 + 40) setPerformingModalTransition:0];
  if (*(*(a1 + 32) + 144))
  {
    if (*(a1 + 73) == 1)
    {
      v5 = *(a1 + 40);
      if (*(a1 + 72))
      {
        [v5 _presentingViewControllerDidChange:*(a1 + 64)];
        v8 = [(UIViewController *)*(a1 + 64) _modalPreservedFirstResponder];
        [v8 _becomeFirstResponderWhenPossible];

        return;
      }

      [v5 _presentingViewControllerWillChange:0];
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 64);
      if (!*(a1 + 72))
      {
        [v6 _presentingViewControllerWillChange:*(a1 + 40)];
        v6 = *(a1 + 64);
        v7 = *(a1 + 40);
LABEL_25:

        [v6 _presentingViewControllerDidChange:v7];
        return;
      }
    }

    v7 = 0;
    goto LABEL_25;
  }
}

- (void)_setPendingFocusEnvironmentUnlock:(id)unlock
{
  aBlock = unlock;
  pendingFocusEnvironmentUnlock = self->__pendingFocusEnvironmentUnlock;
  if (pendingFocusEnvironmentUnlock)
  {
    pendingFocusEnvironmentUnlock[2]();
  }

  v5 = _Block_copy(aBlock);
  v6 = self->__pendingFocusEnvironmentUnlock;
  self->__pendingFocusEnvironmentUnlock = v5;
}

- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  containerView = [(UIPresentationController *)self containerView];
  if (recursivelyCopy)
  {
    [presentedViewController _prepareForWindowDealloc];
  }

  if (presentedViewController && (presentedViewController[94] & 3u) - 1 <= 1)
  {
    [presentedViewController beginAppearanceTransition:0 animated:0];
    view = [presentedViewController view];
    [view removeFromSuperview];

    [presentedViewController endAppearanceTransition];
  }

  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _originalPresentationController = [presentingViewController _originalPresentationController];
  [_originalPresentationController _setPresentingViewController:0];

  [(UIPresentationController *)self _setPresentingViewController:0];
}

- (void)_setContainerIgnoresDirectTouchEvents:(BOOL)events
{
  if (self->_containerIgnoresDirectTouchEvents != events)
  {
    self->_containerIgnoresDirectTouchEvents = events;
    if (self->_containerView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        containerIgnoresDirectTouchEvents = self->_containerIgnoresDirectTouchEvents;
        containerView = self->_containerView;

        [(UIView *)containerView setIgnoreDirectTouchEvents:containerIgnoresDirectTouchEvents];
      }
    }
  }
}

- (void)_presentWithAnimationController:(id)controller inWindow:(id)window interactionController:(id)interactionController animated:(BOOL)animated handoffData:(id)data
{
  animatedCopy = animated;
  v36 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  windowCopy = window;
  interactionControllerCopy = interactionController;
  dataCopy = data;
  v15 = objc_opt_class();
  if (v15 == objc_opt_class())
  {
    [controllerCopy setDelegate:self];
  }

  [(UIPresentationController *)self _setCurrentTransitionController:controllerCopy, windowCopy];
  [(UIPresentationController *)self _setCurrentInteractionController:interactionControllerCopy];
  if (self->_state)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v30 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "Trying to present the presentation controller while transitioning already. (%@)", buf, 0xCu);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &_presentWithAnimationController_inWindow_interactionController_animated_handoffData____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Trying to present the presentation controller while transitioning already. (%@)", buf, 0xCu);
      }
    }
  }

  self->_state = 1;
  if ([(UIPresentationController *)self shouldPresentInFullscreen])
  {
    [(UIPresentationController *)self _fullscreenPresentationSuperview];
  }

  else
  {
    [(UIPresentationController *)self _currentContextPresentationSuperview];
  }
  v16 = ;
  if ([(UIPresentationController *)self _shouldRespectDefinesPresentationContext])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    if (presentingViewController)
    {
      do
      {
        if ([presentingViewController definesPresentationContext])
        {
          break;
        }

        parentViewController = [presentingViewController parentViewController];

        presentingViewController = parentViewController;
      }

      while (parentViewController);
    }

    if ([presentingViewController definesPresentationContext])
    {
      view = [presentingViewController view];
      superview = [view superview];

      if (!superview)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:808 description:@"The view defining presentation context doesn't have a superview"];
      }

      view2 = [presentingViewController view];
      superview2 = [view2 superview];

      v16 = superview2;
    }
  }

  [(UIPresentationController *)self _setCurrentPresentationSuperview:v16];
  presentingViewController2 = [(UIPresentationController *)self presentingViewController];
  _existingView = [presentingViewController2 _existingView];
  window = [_existingView window];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  presentingViewController3 = [(UIPresentationController *)self presentingViewController];
  [(UIPresentationController *)self _adjustOrientationIfNecessaryInWindow:window forViewController:presentedViewController preservingViewController:presentingViewController3];

  [(UIPresentationController *)self _initViewHierarchyForPresentationSuperview:v16 inWindow:v32];
  [(UIPresentationController *)self runTransitionForCurrentStateAnimated:animatedCopy handoffData:dataCopy];
}

- (void)_dismissWithAnimationController:(id)controller interactionController:(id)interactionController animated:(BOOL)animated handoffData:(id)data
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dataCopy = data;
  interactionControllerCopy = interactionController;
  if (objc_opt_respondsToSelector())
  {
    forcePresentationControllerDelegate = [(UIPresentationController *)self forcePresentationControllerDelegate];
    if (forcePresentationControllerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [forcePresentationControllerDelegate forcePresentationControllerWillDismiss:self];
    }
  }

  else
  {
    forcePresentationControllerDelegate = 0;
  }

  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    [controllerCopy setDelegate:self];
  }

  [(UIPresentationController *)self _setCurrentTransitionController:controllerCopy];
  [(UIPresentationController *)self _setCurrentInteractionController:interactionControllerCopy];

  if (self->_state != 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Trying to dismiss the presentation controller while transitioning already. (%@)", &v22, 0xCu);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissWithAnimationController_interactionController_animated_handoffData____s_category) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Trying to dismiss the presentation controller while transitioning already. (%@)", &v22, 0xCu);
      }
    }
  }

  self->_state = 3;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _existingView = [presentedViewController _existingView];
  window = [_existingView window];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  [(UIPresentationController *)self _adjustOrientationIfNecessaryInWindow:window forViewController:presentingViewController preservingViewController:presentedViewController2];

  [(UIPresentationController *)self runTransitionForCurrentStateAnimated:animatedCopy handoffData:dataCopy];
}

- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator
{
  v70 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  [(UIPresentationController *)self completeCurrentTransitionImmediately];
  if (!self->_state)
  {
    goto LABEL_46;
  }

  v49 = coordinatorCopy;
  self->_state = 4;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  presentedViewController2 = [controllerCopy presentedViewController];

  _changedPresentingViewControllerDuringAdaptation = [(UIPresentationController *)self _changedPresentingViewControllerDuringAdaptation];
  [(UIPresentationController *)self _setChangedPresentingViewControllerDuringAdaptation:0];
  if (_changedPresentingViewControllerDuringAdaptation)
  {
    if (([controllerCopy shouldRemovePresentersView] & 1) == 0)
    {
      presentingViewController = [(UIPresentationController *)self presentingViewController];
      _changedPresentingViewControllerDuringAdaptation = presentingViewController;
      v13 = 1;
LABEL_7:
      [presentingViewController beginAppearanceTransition:v13 animated:1];

      v47 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    _changedPresentingViewControllerDuringAdaptation = [(UIPresentationController *)self shouldRemovePresentersView];
    if (_changedPresentingViewControllerDuringAdaptation != [controllerCopy shouldRemovePresentersView])
    {
      _changedPresentingViewControllerDuringAdaptation = [(UIPresentationController *)self presentingViewController];
      v13 = [controllerCopy shouldRemovePresentersView] ^ 1;
      presentingViewController = _changedPresentingViewControllerDuringAdaptation;
      goto LABEL_7;
    }
  }

  v47 = 0;
LABEL_9:
  if (presentedViewController == presentedViewController2)
  {
    v17 = 0;
    LOBYTE(v48) = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_37;
  }

  presentedViewController3 = [(UIPresentationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    _changedPresentingViewControllerDuringAdaptation = [presentedViewController2 topViewController];
    presentedViewController4 = [controllerCopy presentedViewController];
    v16 = _changedPresentingViewControllerDuringAdaptation == presentedViewController4;
  }

  else
  {
    v16 = 0;
  }

  presentedViewController5 = [controllerCopy presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v48 = v16;
  if (isKindOfClass)
  {
    presentedViewController2 = [controllerCopy presentedViewController];
    _changedPresentingViewControllerDuringAdaptation = [presentedViewController2 topViewController];
    presentedViewController6 = [(UIPresentationController *)self presentedViewController];
    v4 = presentedViewController6;
    if (_changedPresentingViewControllerDuringAdaptation == presentedViewController6)
    {

      goto LABEL_26;
    }
  }

  presentedViewController7 = [(UIPresentationController *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    if (isKindOfClass)
    {
    }

    v17 = 0;
LABEL_27:

    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  presentedViewController8 = [(UIPresentationController *)self presentedViewController];
  topViewController = [presentedViewController8 topViewController];

  if (isKindOfClass)
  {
  }

  if (!topViewController)
  {
LABEL_26:
    presentedViewController5 = [controllerCopy presentedViewController];
    v17 = 1;
    [presentedViewController5 _setIsWrappingDuringAdaptation:1];
    v16 = v48;
    goto LABEL_27;
  }

  v17 = 0;
  LOBYTE(v16) = v48;
  if (v48)
  {
LABEL_28:
    presentedViewController9 = [(UIPresentationController *)self presentedViewController];
    [presentedViewController9 _setIsWrappingDuringAdaptation:1];
  }

LABEL_29:
  _childPresentationController = [(UIPresentationController *)self _childPresentationController];

  v18 = _childPresentationController != 0;
  if (_childPresentationController)
  {
    _childPresentationController2 = [(UIPresentationController *)self _childPresentationController];
    [_childPresentationController2 _setChangedPresentingViewControllerDuringAdaptation:1];
LABEL_34:
    v19 = _childPresentationController == 0;

    goto LABEL_35;
  }

  if (!v16)
  {
    _childPresentationController2 = [controllerCopy presentedViewController];
    [_childPresentationController2 beginAppearanceTransition:1 animated:1];
    goto LABEL_34;
  }

  v19 = 0;
LABEL_35:
  _childPresentationController3 = [(UIPresentationController *)self _childPresentationController];
  if (!_childPresentationController3 || (v30 = _childPresentationController3, -[UIPresentationController _childPresentationController](self, "_childPresentationController"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 shouldRemovePresentersView], v31, v30, (v32 & 1) == 0))
  {
    if (v17)
    {
      v33 = 0;
      v17 = 1;
    }

    else
    {
      presentedViewController10 = [(UIPresentationController *)self presentedViewController];
      v33 = 1;
      [presentedViewController10 beginAppearanceTransition:0 animated:1];

      v17 = 0;
    }

    goto LABEL_41;
  }

LABEL_37:
  v33 = 0;
LABEL_41:
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  _transitionViewForCurrentTransition = [(UIPresentationController *)self _transitionViewForCurrentTransition];

  if (has_internal_diagnostics)
  {
    if (!_transitionViewForCurrentTransition)
    {
      v45 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v45, OS_LOG_TYPE_FAULT, "transitionViewForCurrentTransition is not set! (%@)", buf, 0xCu);
      }
    }
  }

  else if (!_transitionViewForCurrentTransition)
  {
    v46 = *(__UILogGetCategoryCachedImpl("Assert", &_transitionToPresentationController_withTransitionCoordinator____s_category) + 8);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "transitionViewForCurrentTransition is not set! (%@)", buf, 0xCu);
    }
  }

  _transitionViewForCurrentTransition2 = [(UIPresentationController *)self _transitionViewForCurrentTransition];

  if (_transitionViewForCurrentTransition2)
  {
    _transitionViewForCurrentTransition3 = [(UIPresentationController *)self _transitionViewForCurrentTransition];
    v39 = _transitionViewForCurrentTransition3[2]();

    [controllerCopy setState:5];
    _currentPresentationSuperview = [(UIPresentationController *)self _currentPresentationSuperview];
    [controllerCopy _setCurrentPresentationSuperview:_currentPresentationSuperview];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke;
    v62[3] = &unk_1E70F43C8;
    v41 = controllerCopy;
    v63 = v41;
    v42 = _currentPresentationSuperview;
    v66 = v18;
    v67 = v48;
    v64 = v42;
    selfCopy3 = self;
    [UIView performWithoutAnimation:v62];
    coordinatorCopy = v49;
    [(_UIPresentationControllerVisualStyle *)self->_visualStyle runAlongsideTransitionToPresentationController:v41 transitionCoordinator:v49];
    _visualStyle = [v41 _visualStyle];
    [_visualStyle runAlongsideTransitionFromPresentationController:self transitionCoordinator:v49];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_2;
    v58[3] = &unk_1E7101978;
    v59 = v41;
    v60 = v42;
    selfCopy4 = self;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_4;
    v50[3] = &unk_1E71019A0;
    v51 = v59;
    selfCopy5 = self;
    v53 = v19;
    v54 = v33;
    v55 = v47;
    v56 = v17;
    v57 = v48;
    v44 = v42;
    [v49 _animateAlongsideTransitionInView:0 systemAnimation:0 systemCompletion:1 animation:v58 completion:v50];
  }

  else
  {
    NSLog(&cfstr_NullTransition.isa, "[UIPresentationController _transitionToPresentationController:withTransitionCoordinator:]");
    coordinatorCopy = v49;
  }

LABEL_46:
}

void __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initViewHierarchyForPresentationSuperview:*(a1 + 40)];
  v2 = [*(a1 + 32) _transitionViewForCurrentTransition];
  v3 = v2[2]();

  v4 = [*(a1 + 32) _toViewForCurrentTransition];
  v30 = v4[2]();

  v5 = [*(a1 + 32) _computeToEndFrameForCurrentTransition];
  v6 = v5[2]();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _setFrameIgnoringLayerTransformOnOrAfterYukon(v30, v6, v8, v10, v12);
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1)
  {
    v13 = [*(a1 + 32) presentedViewController];
    [v13 setPerformingModalTransition:1];
  }

  v14 = [*(a1 + 32) containerView];
  [v14 addSubview:v30];

  v15 = [*(a1 + 48) _childPresentationController];
  v16 = *(a1 + 32);
  v17 = [v16 presentedViewController];
  v18 = [v17 view];
  v19 = [v18 superview];
  [v16 _setPresentationView:v19];

  if (v15 && ([v15 shouldPresentInFullscreen] & 1) == 0)
  {
    v20 = [v15 containerView];
    v21 = [*(a1 + 32) _presentationView];
    [v21 bounds];
    _setFrameIgnoringLayerTransformOnOrAfterYukon(v20, v22, v23, v24, v25);

    v26 = [*(a1 + 32) _presentationView];
    v27 = [v15 containerView];
    [v26 addSubview:v27];
  }

  if (*(a1 + 56) == 1)
  {
    v28 = [*(a1 + 32) presentedViewController];
    [v28 setPerformingModalTransition:0];
  }

  v29 = [*(a1 + 32) containerView];
  [v29 setAlpha:0.0];
}

void __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _frameForTransitionViewInPresentationSuperview:*(a1 + 40)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_3;
  v12[3] = &unk_1E70F3B20;
  v13 = *(a1 + 32);
  v14 = v3;
  v15 = v5;
  v16 = v7;
  v17 = v9;
  [UIView performWithoutAnimation:v12];
  v10 = [*(a1 + 32) containerView];
  [v10 setAlpha:1.0];

  v11 = [*(a1 + 48) containerView];
  [v11 setAlpha:0.0];
}

void __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) containerView];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) containerView];
  [v7 layoutBelowIfNeeded];
}

void __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _currentTransitionDidComplete];

  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v27 = *(a1 + 32);
      v26 = *(a1 + 40);
      v18 = [v26 presentedViewController];
      v19 = [*(a1 + 40) presentingViewController];
      v30 = 138413058;
      v31 = v27;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "toPresentationController._currentTransitionDidComplete is nil! for toPresentationController : %@, self : %@, presentedViewController : %@, presentingViewController : %@", &v30, 0x2Au);
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D730) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v14;
      v18 = [v15 presentedViewController];
      v19 = [*(a1 + 40) presentingViewController];
      v30 = 138413058;
      v31 = v16;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "toPresentationController._currentTransitionDidComplete is nil! for toPresentationController : %@, self : %@, presentedViewController : %@, presentingViewController : %@", &v30, 0x2Au);
    }

LABEL_21:
  }

LABEL_2:
  v3 = [*(a1 + 40) _currentTransitionDidComplete];

  if (!v3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v24 = [v28 presentedViewController];
      v25 = [*(a1 + 40) presentingViewController];
      v30 = 138413058;
      v31 = v29;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "self._currentTransitionDidComplete is nil! for toPresentationController : %@, self : %@ presentedViewController : %@, presentingViewController : %@", &v30, 0x2Au);
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D738) + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = v20;
      v24 = [v21 presentedViewController];
      v25 = [*(a1 + 40) presentingViewController];
      v30 = 138413058;
      v31 = v22;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "self._currentTransitionDidComplete is nil! for toPresentationController : %@, self : %@ presentedViewController : %@, presentingViewController : %@", &v30, 0x2Au);
    }

LABEL_26:
  }

LABEL_3:
  v4 = [*(a1 + 32) _currentTransitionDidComplete];

  if (v4)
  {
    v5 = [*(a1 + 40) _currentTransitionDidComplete];

    if (v5)
    {
      v6 = [*(a1 + 32) _currentTransitionDidComplete];
      v6[2](v6, 1);

      v7 = [*(a1 + 40) _currentTransitionDidComplete];
      v7[2](v7, 1);

      if (*(a1 + 48) == 1)
      {
        v8 = [*(a1 + 32) presentedViewController];
        [v8 endAppearanceTransition];
      }

      if (*(a1 + 49) == 1)
      {
        v9 = [*(a1 + 40) presentedViewController];
        [v9 endAppearanceTransition];
      }

      if (*(a1 + 50) == 1)
      {
        v10 = [*(a1 + 40) presentingViewController];
        [v10 endAppearanceTransition];
      }

      if (*(a1 + 51) == 1)
      {
        v11 = [*(a1 + 32) presentedViewController];
        [v11 _setIsWrappingDuringAdaptation:0];
      }

      if (*(a1 + 52) == 1)
      {
        v12 = [*(a1 + 40) presentedViewController];
        [v12 _setIsWrappingDuringAdaptation:0];
      }

      v13 = [*(a1 + 32) presentedViewController];
      [v13 setPerformingModalTransition:0];

      [*(a1 + 32) setState:2];
      [*(a1 + 40) _cleanup];
      [*(a1 + 32) _setAdaptiveTransitionCoordinator:0];
      [*(a1 + 32) _setAdaptiveTransitionContext:0];
    }
  }
}

- (id)_parentPresentationControllerImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v5 = [presentingViewController _existingPresentationControllerImmediate:immediateCopy effective:1 includesRoot:1];

  return v5;
}

- (BOOL)_presentedViewControllerProvidesContentScrollView
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _isTVSearchControllerContainer = [presentedViewController _isTVSearchControllerContainer];

  if (_isTVSearchControllerContainer)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = _UIBarsApplyChromelessEverywhere();
    if (v5)
    {
      if ([(UIPresentationController *)self shouldPresentInFullscreen])
      {
        LOBYTE(v5) = 0;
      }

      else
      {

        LOBYTE(v5) = [(UIPresentationController *)self _shouldRespectDefinesPresentationContext];
      }
    }
  }

  return v5;
}

- (void)_windowSceneDidUpdateEffectiveGeometry:(id)geometry
{
  geometryCopy = geometry;
  object = [geometryCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = geometryCopy;
  if (isKindOfClass)
  {
    object2 = [geometryCopy object];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    if ([presentingViewController isViewLoaded])
    {
      presentingViewController2 = [(UIPresentationController *)self presentingViewController];
      view = [presentingViewController2 view];
      _window = [view _window];
      windowScene = [_window windowScene];

      if (windowScene == object2)
      {
        [(UIPresentationController *)self _presentingViewControllerWindowSceneDidUpdateEffectiveGeometry:object2];
      }
    }

    else
    {
    }

    presentedViewController = [(UIPresentationController *)self presentedViewController];
    if ([presentedViewController isViewLoaded])
    {
      presentedViewController2 = [(UIPresentationController *)self presentedViewController];
      view2 = [presentedViewController2 view];
      _window2 = [view2 _window];
      windowScene2 = [_window2 windowScene];

      if (windowScene2 == object2)
      {
        [(UIPresentationController *)self _presentedViewControllerWindowSceneDidUpdateEffectiveGeometry:object2];
      }
    }

    else
    {
    }

    v6 = geometryCopy;
  }
}

+ (UIEdgeInsets)_statusBarOverlapAndMarginInfoForView:(id)view inWindow:(id)window
{
  viewCopy = view;
  windowCopy = window;
  traitCollection = [viewCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  windowScene = [windowCopy windowScene];
  _usesSceneSettingBasedSafeAreaInsets = [windowScene _usesSceneSettingBasedSafeAreaInsets];

  if (windowCopy)
  {
    v11 = *&__SplashBoardOverrideStatusBarHeight;
    if (*&__SplashBoardOverrideStatusBarHeight != 1.79769313e308)
    {
      goto LABEL_26;
    }
  }

  else
  {
    _appAdoptsUISceneLifecycle = [UIApp _appAdoptsUISceneLifecycle];
    if (*&__SplashBoardOverrideStatusBarHeight == 1.79769313e308)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *&__SplashBoardOverrideStatusBarHeight;
    }

    if (*&__SplashBoardOverrideStatusBarHeight != 1.79769313e308 || (_appAdoptsUISceneLifecycle & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  v11 = 0.0;
  if (([UIApp _isStatusBarEffectivelyHiddenForContentOverlayInsetsForWindow:windowCopy] & 1) == 0 && userInterfaceIdiom != 3)
  {
    __viewDelegate = [(UIView *)viewCopy __viewDelegate];
    v14 = __viewDelegate;
    if (__viewDelegate)
    {
      [__viewDelegate _viewFrameInWindowForContentOverlayInsetsCalculation];
    }

    else
    {
      [viewCopy bounds];
      [viewCopy convertRect:windowCopy toView:?];
    }

    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    windowScene2 = [windowCopy windowScene];
    [windowScene2 _safeAreaInsetsForInterfaceOrientation:1];
    v25 = v24;

    if (_UIViewControllerModernContentOverlayInsetsPropagation())
    {
      if ((_usesSceneSettingBasedSafeAreaInsets & 1) == 0)
      {
        v26 = __UIStatusBarManagerForWindow(windowCopy);
        [v26 statusBarHeight];
        v25 = v27;
      }

      v39.origin.x = v19;
      v39.origin.y = v20;
      v39.size.width = v21;
      v39.size.height = v22;
      v11 = fmax(fmin(v25 - CGRectGetMinY(v39), v25), 0.0);
    }

    else
    {
      v40.origin.x = v19;
      v40.origin.y = v20;
      v40.size.width = v21;
      v40.size.height = v22;
      MinY = CGRectGetMinY(v40);
      [windowCopy bounds];
      if (MinY >= CGRectGetMinY(v41))
      {
        v42.origin.x = v19;
        v42.origin.y = v20;
        v42.size.width = v21;
        v42.size.height = v22;
        MaxY = CGRectGetMaxY(v42);
        [windowCopy bounds];
        if (MaxY <= CGRectGetMaxY(v43))
        {
          if ((_usesSceneSettingBasedSafeAreaInsets & 1) == 0)
          {
            v30 = __UIStatusBarManagerForWindow(windowCopy);
            [v30 statusBarHeight];
            v25 = v31;
          }

          v44.origin.x = v19;
          v44.origin.y = v20;
          v44.size.width = v21;
          v44.size.height = v22;
          v32 = v25 - CGRectGetMinY(v44);
          if (v32 >= 0.0)
          {
            v11 = v32;
          }

          else
          {
            v11 = 0.0;
          }
        }
      }
    }
  }

LABEL_26:
  [UIViewController _horizontalContentMarginForView:viewCopy];
  v34 = v33;

  v35 = 0.0;
  v36 = v11;
  v37 = v34;
  v38 = v34;
  result.right = v38;
  result.bottom = v35;
  result.left = v37;
  result.top = v36;
  return result;
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  _rootPresentingViewControllerForNestedPresentation = [(UIPresentationController *)self _rootPresentingViewControllerForNestedPresentation];
  if ([_rootPresentingViewControllerForNestedPresentation _providesCustomBasePresentationInsets])
  {
    presentedViewController = _rootPresentingViewControllerForNestedPresentation;
  }

  else
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
  }

  v9 = presentedViewController;
  presentedView = [(UIPresentationController *)self presentedView];
  window = [presentedView window];
  v12 = window;
  if (window)
  {
    _window = window;
  }

  else
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    _window = [presentingViewController _window];
  }

  v15 = _UIPresentationControllerBaseContentInsetsForControllersAndViewInWindow(self, v9, presentedView, _window, margin, rightMargin);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ([(UIPresentationController *)self _ignoresLeftAndRightSafeAreaInsets])
  {
    v17 = 0.0;
    v21 = 0.0;
  }

  [(UIPresentationController *)self _additionalSafeAreaInsets];
  v23 = v15 + v22;
  v25 = v17 + v24;
  v27 = v19 + v26;
  v29 = v21 + v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.right = v33;
  result.bottom = v32;
  result.left = v31;
  result.top = v30;
  return result;
}

- (void)runTransitionForCurrentStateAnimated:(BOOL)animated handoffData:(id)data
{
  animatedCopy = animated;
  v87 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ((self->_state | 2) == 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v56 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *v84 = self;
        _os_log_fault_impl(&dword_188A29000, v56, OS_LOG_TYPE_FAULT, "Presentation controller state was changed while the transition was in progress. (%@)", buf, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D740) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v84 = self;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Presentation controller state was changed while the transition was in progress. (%@)", buf, 0xCu);
      }
    }
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  state = self->_state;
  v57 = state == 1;
  if (state == 1)
  {
    v65 = presentedViewController;
    presentingViewController = self->_presentingViewController;
  }

  else
  {
    v65 = self->_presentingViewController;
    presentingViewController = presentedViewController;
  }

  v66 = presentingViewController;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIPresentationController", &qword_1ED49D748);
  v10 = *(CategoryCachedImpl + 8);
  v11 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = objc_opt_class();
      v16 = class_getName(v15);
      *buf = 67240706;
      *v84 = 1;
      *&v84[4] = 2082;
      *&v84[6] = Name;
      v85 = 2082;
      v86 = v16;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ModalTransition", " enableTelemetry=YES  isAnimation=YES custom=%{signpost.telemetry:number1,signpost.description:attribute,public}u, from=%{signpost.telemetry:string1,public}s to=%{signpost.telemetry:string2,public}s", buf, 0x1Cu);
    }
  }

  v63 = objc_opt_class();
  v62 = objc_opt_class();
  if (v63 == v62)
  {
    [(UIViewControllerAnimatedTransitioning *)self->_currentTransitionController setDelegate:self];
  }

  v17 = state == 1;
  _window = [(UIViewController *)v66 _window];
  _delegateViewController = [_window _delegateViewController];
  if (v17)
  {
    presentingViewController = [(UIViewController *)self->_presentingViewController presentingViewController];
    if (presentingViewController)
    {
      self->_isDisconnectedRoot = 0;
      p_isDisconnectedRoot = &self->_isDisconnectedRoot;
    }

    else
    {
      _rootAncestorViewController = [(UIViewController *)self->_presentingViewController _rootAncestorViewController];
      if (_delegateViewController == _rootAncestorViewController)
      {
        isKindOfClass = 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      self->_isDisconnectedRoot = isKindOfClass & 1;
      p_isDisconnectedRoot = &self->_isDisconnectedRoot;
    }

    if (*p_isDisconnectedRoot)
    {
      splitViewController = [presentedViewController splitViewController];
      v26 = splitViewController == 0;

      if (v26)
      {
        if (*p_isDisconnectedRoot)
        {
          v27 = _delegateViewController;
          [_window _addRotationViewController:v27];
          if (presentedViewController)
          {
            objc_storeWeak((presentedViewController + 120), v27);
          }

          [_window _setDelegateViewController:?];
          v27[47] &= ~0x80uLL;

          *(presentedViewController + 376) |= 0x80uLL;
        }
      }

      else
      {
        *p_isDisconnectedRoot = 0;
      }
    }
  }

  else if (self->_isDisconnectedRoot)
  {
    v21 = presentedViewController;
    if (_delegateViewController == presentedViewController)
    {
      _previousRootViewController = [(UIViewController *)presentedViewController _previousRootViewController];
      [_window _removeRotationViewController:_previousRootViewController];
      [_window _setDelegateViewController:_previousRootViewController];
      if (_previousRootViewController)
      {
        _previousRootViewController[47] |= 0x80uLL;
      }

      v21 = presentedViewController;
    }

    if (v21)
    {
      objc_storeWeak((v21 + 120), 0);
      v21 = presentedViewController;
    }

    *(v21 + 376) &= ~0x80uLL;
  }

  v28 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  [(_UIViewControllerTransitionContext *)v28 _setAnimator:self->_currentTransitionController];
  [(_UIViewControllerTransitionContext *)v28 _setIsAnimated:animatedCopy];
  [(_UIViewControllerOneToOneTransitionContext *)v28 _setFromViewController:v66];
  [(_UIViewControllerOneToOneTransitionContext *)v28 _setToViewController:v65];
  _currentInteractionController = [(UIPresentationController *)self _currentInteractionController];
  [(_UIViewControllerTransitionContext *)v28 _setInteractor:_currentInteractionController];

  [(_UIViewControllerTransitionContext *)v28 _setPresentationStyle:[(UIPresentationController *)self presentationStyle]];
  -[_UIViewControllerOneToOneTransitionContext _setIsDeferred:](v28, "_setIsDeferred:", [objc_opt_class() _shouldDeferTransitions]);
  _currentInteractionController2 = [(UIPresentationController *)self _currentInteractionController];
  v61 = _currentInteractionController2 != 0;

  v31 = objc_opt_class();
  v59 = class_getName(v31);
  if (v61 | ![(UIPresentationController *)self _shouldDisableInteractionDuringTransitions])
  {
    v32 = 0;
  }

  else
  {
    windowScene = [_window windowScene];
    objc_storeWeak(&self->_windowSceneIgnoringEvents, windowScene);

    v34 = objc_opt_class();
    v35 = class_getName(v34);
    v36 = objc_opt_class();
    v37 = class_getName(v36);
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p> beginning transition for presentation", v59, self];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"from: <%s: %p> to: <%s: %p>", v35, v66, v37, v65];;
    v39 = MEMORY[0x1E696AEC0];
    v40 = v38;
    uTF8String = [v38 UTF8String];
    v42 = v32;
    v43 = [v39 stringWithFormat:@"%s %s", uTF8String, objc_msgSend(v32, "UTF8String")];
    WeakRetained = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);
    [WeakRetained _beginIgnoringInteractionEventsForReason:v43];
  }

  [_window beginDisablingInterfaceAutorotation];
  windowScene2 = [_window windowScene];
  v46 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:windowScene2];

  [v46 beginDisablingInterfaceAutorotation];
  objc_initWeak(buf, v46);
  [(UIPresentationController *)self _willRunTransitionForCurrentStateDeferred:[(_UIViewControllerOneToOneTransitionContext *)v28 _isDeferred]];
  if ([(UIPresentationController *)self dismissing]&& [(UIPresentationController *)self _shouldRestoreFirstResponder])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    aBlock[4] = self;
    v82 = v66;
    v47 = _Block_copy(aBlock);
    if ([(_UIViewControllerTransitionContext *)v28 isInteractive])
    {
      _transitionCoordinator = [(_UIViewControllerTransitionContext *)v28 _transitionCoordinator];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_2;
      v78[3] = &unk_1E7101880;
      v79 = v28;
      v80 = v47;
      [_transitionCoordinator notifyWhenInteractionChangesUsingBlock:v78];
    }

    else
    {
      v47[2](v47);
    }
  }

  v49 = objc_opt_class();
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_3;
  v67[3] = &unk_1E7101A10;
  v67[4] = self;
  v50 = v28;
  v68 = v50;
  v51 = _window;
  v69 = v51;
  v52 = v66;
  v70 = v52;
  v53 = v65;
  v75 = v63 != v62;
  v76 = v61;
  v71 = v53;
  v74[1] = v59;
  v54 = v32;
  v72 = v54;
  objc_copyWeak(v74, buf);
  v77 = v57;
  v55 = dataCopy;
  v73 = v55;
  [v49 _scheduleTransition:v67];

  objc_destroyWeak(v74);
  objc_destroyWeak(buf);
}

void __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 _restoreInputViewsForPresentation];

  v3 = [*(a1 + 40) view];
  [v3 endEditing:1];
}

uint64_t __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) transitionWasCancelled];
  if ((result & 1) == 0)
  {
    v3 = UIApp;
    v4 = *(a1 + 40);

    return [v3 _performBlockAfterCATransactionCommits:v4];
  }

  return result;
}

void __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_3(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _transitionViewForCurrentTransition];

  if (!v3)
  {
    NSLog(&cfstr_NullTransition_0.isa);
    return;
  }

  v102 = _UISetCurrentFallbackEnvironment(*(a1 + 32));
  v4 = [*(a1 + 32) presenting];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 32) presentedViewController];
    [v5 preferredContentSizeDidChangeForChildContentContainer:v6];
  }

  else
  {
    v7 = [*(a1 + 32) _parentPresentationController];
    v6 = v7;
    if (v7 && !v7[5])
    {
      v8 = [v7 presentedViewController];
      [v6 preferredContentSizeDidChangeForChildContentContainer:v8];
    }
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v10 = [*(a1 + 32) _transitionViewForCurrentTransition];

  if (has_internal_diagnostics)
  {
    if (!v10)
    {
      v93 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        v100 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v100;
        _os_log_fault_impl(&dword_188A29000, v93, OS_LOG_TYPE_FAULT, "transitionViewForCurrentTransition is not set, presentation controller was dismissed during the presentation? (%@)", buf, 0xCu);
      }
    }
  }

  else if (!v10)
  {
    v94 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D750) + 8);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v95;
      _os_log_impl(&dword_188A29000, v94, OS_LOG_TYPE_ERROR, "transitionViewForCurrentTransition is not set, presentation controller was dismissed during the presentation? (%@)", buf, 0xCu);
    }
  }

  v11 = [*(a1 + 32) _transitionViewForCurrentTransition];
  v105 = v11[2]();

  v12 = [*(a1 + 32) _fromViewForCurrentTransition];

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) _fromViewForCurrentTransition];
    v15 = v14[2]();
    [v13 _setFromView:v15];
  }

  v16 = [*(a1 + 32) _toViewForCurrentTransition];

  if (v16)
  {
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) _toViewForCurrentTransition];
    v19 = v18[2]();
    [v17 _setToView:v19];
  }

  v104 = [*(a1 + 48) windowScene];
  v20 = [v104 keyboardSceneDelegate];
  if (v20)
  {
    v21 = [_UIViewControllerKeyboardAnimationStyle animationStyleWithContext:*(a1 + 40) useCustomTransition:1];
    [v20 pushAnimationStyle:v21];
  }

  else
  {
    v21 = 0;
  }

  if (dyld_program_sdk_at_least())
  {
    v22 = [*(a1 + 40) isAnimated];
  }

  else
  {
    v22 = +[UIView areAnimationsEnabled];
  }

  v23 = v22;
  if ([*(a1 + 32) _shouldCallAppearanceCallbacksFor:*(a1 + 56)])
  {
    [*(a1 + 56) beginAppearanceTransition:0 animated:v23];
  }

  v24 = [*(a1 + 64) _popoverController];
  if (v24)
  {
    v25 = [*(a1 + 64) _popoverController];
    v26 = [v25 _isDismissing];
  }

  else
  {
    v26 = 0;
  }

  [*(a1 + 64) setAppearanceTransitionsAreDisabled:v26];
  if ([*(a1 + 32) _shouldCallAppearanceCallbacksFor:*(a1 + 64)])
  {
    v27 = [v105 window];
    [*(a1 + 64) _setExpectedWindow:v27];
    [*(a1 + 64) beginAppearanceTransition:1 animated:v23];
    [*(a1 + 64) _setExpectedWindow:0];
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    [*(a1 + 40) _setCompletionCurve:7];
  }

  v28 = [*(a1 + 32) presentedViewController];
  v29 = _UISheetPresentationControllerStylesSheetsAsCards(v28);

  if (v29)
  {
    [*(a1 + 32) frameOfPresentedViewInContainerView];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
  }

  else
  {
    v38 = [*(a1 + 56) view];
    [v38 frame];
    v31 = v39;
    v33 = v40;
    v35 = v41;
    v37 = v42;
  }

  [*(a1 + 40) _setContainerView:v105];
  [*(a1 + 40) _setFromStartFrame:{v31, v33, v35, v37}];
  v43 = *(a1 + 40);
  v44 = [*(a1 + 32) _shouldGrabPresentersView];
  v45 = MEMORY[0x1E695F058];
  if (v44 && [*(a1 + 32) presenting])
  {
    v46 = 0;
    v47 = *v45;
    v48 = v45[1];
    v49 = v45[2];
    v50 = v45[3];
  }

  else
  {
    v1 = [*(a1 + 56) view];
    [v1 frame];
    v46 = 1;
  }

  [v43 _setFromEndFrame:{v47, v48, v49, v50}];
  if (v46)
  {
  }

  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_106;
  v106[3] = &unk_1E71019C8;
  v51 = *(a1 + 40);
  v106[4] = *(a1 + 32);
  v103 = v21;
  v107 = v103;
  v52 = v20;
  v112 = *(a1 + 105);
  v53 = *(a1 + 96);
  v101 = v52;
  v108 = v52;
  v111[1] = v53;
  v109 = *(a1 + 72);
  v110 = *(a1 + 48);
  objc_copyWeak(v111, (a1 + 88));
  [v51 _setCompletionHandler:v106];
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {
    v54 = +[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled];
    if (!v54)
    {
      v55 = +[UIViewPropertyAnimator _startTrackingAnimations];
    }

    v56 = +[UIViewPropertyAnimator _currentTrackedAnimationsUUID];
    v57 = !v54;
  }

  else
  {
    v56 = +[UIView _startAnimationTracking];
    v57 = 1;
  }

  v58 = *(a1 + 32);
  v59 = *(v58 + 56);
  *(v58 + 56) = v56;

  v60 = [*(a1 + 32) _computeToEndFrameForCurrentTransition];
  v61 = v60[2]();
  v63 = v62;
  v65 = v64;
  v67 = v66;

  [*(a1 + 40) _setToEndFrame:{v61, v63, v65, v67}];
  [*(a1 + 40) _setToStartFrame:{*v45, v45[1], v45[2], v45[3]}];
  v68 = *(a1 + 32);
  v69 = *(a1 + 40);
  if (v68)
  {
    [v68 transformOfPresentedViewInContainerView];
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
    *buf = 0u;
  }

  [v69 _setToEndTransform:buf];
  [*(*(a1 + 32) + 184) transitionDuration:*(a1 + 40)];
  [*(a1 + 40) _setDuration:?];
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) transitionDidStart];
  }

  v70 = *(*(a1 + 32) + 128);
  v71 = *(a1 + 106);
  v72 = [*(a1 + 40) _transitionCoordinator];
  [v70 runAlongsidePresentation:v71 transitionCoordinator:v72];

  v73 = *(*(a1 + 32) + 128);
  v74 = *(a1 + 106);
  v75 = [*(a1 + 40) _transitionCoordinator];
  v76 = [*(a1 + 40) fromViewController];
  v77 = [v76 _window];
  v78 = [*(a1 + 40) toViewController];
  v79 = [v78 _window];
  [v73 runAlongsidePresentation:v74 transitionCoordinator:v75 fromViewControllerWindow:v77 toViewControllerWindow:v79];

  v80 = [_UIViewControllerTransitionRequest alloc];
  v81 = *(a1 + 40);
  v82 = [*(a1 + 32) _currentTransitionController];
  v83 = [*(a1 + 32) _currentInteractionController];
  v84 = -[_UIViewControllerTransitionRequest initWithTransitionContext:animator:interactor:interactiveUpdateHandler:keyboardShouldAnimateAlongsideForInteractiveTransitions:keyboardAnimationStyle:pinningInputViewsResponder:extraPinningInputViewsBlock:handoffData:](v80, "initWithTransitionContext:animator:interactor:interactiveUpdateHandler:keyboardShouldAnimateAlongsideForInteractiveTransitions:keyboardAnimationStyle:pinningInputViewsResponder:extraPinningInputViewsBlock:handoffData:", v81, v82, v83, &__block_literal_global_131, [*(a1 + 32) _keyboardShouldAnimateAlongsideForInteractiveTransitions], v103, *(a1 + 64), 0, *(a1 + 80));

  _UIViewControllerTransitioningRunCustomTransitionWithRequest(v84);
  if (v57)
  {
    if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
    {
      +[UIViewPropertyAnimator _finishTrackingAnimations];
    }

    else
    {
      +[UIView _finishAnimationTracking];
    }
  }

  v85 = [*(a1 + 40) _state];
  v86 = [*(a1 + 40) _animator];
  v87 = v86 == 0;

  if (!v87)
  {
    [*(a1 + 40) _setTransitionIsInFlight:1];
  }

  if (v85 == 3)
  {
    v88 = [*(a1 + 40) _interactor];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v88)
      {
        v97 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v97, OS_LOG_TYPE_FAULT, "Got a deferred interactive finish when we don't have an interactor", buf, 2u);
        }
      }
    }

    else if (!v88)
    {
      v99 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D760) + 8);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v99, OS_LOG_TYPE_ERROR, "Got a deferred interactive finish when we don't have an interactor", buf, 2u);
      }
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v92 = v88;
    if ((isKindOfClass & 1) == 0)
    {
      v92 = *(a1 + 40);
    }

    [v92 finishInteractiveTransition];
    goto LABEL_66;
  }

  if (v85 == 2)
  {
    v88 = [*(a1 + 40) _interactor];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v88)
      {
        v96 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v96, OS_LOG_TYPE_FAULT, "Got a deferred interactive cancellation when we don't have an interactor", buf, 2u);
        }
      }
    }

    else if (!v88)
    {
      v98 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D758) + 8);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v98, OS_LOG_TYPE_ERROR, "Got a deferred interactive cancellation when we don't have an interactor", buf, 2u);
      }
    }

    objc_opt_class();
    v89 = objc_opt_isKindOfClass();
    v90 = v88;
    if ((v89 & 1) == 0)
    {
      v90 = *(a1 + 40);
    }

    [v90 cancelInteractiveTransition];
LABEL_66:
  }

  _UIRestorePreviousFallbackEnvironment(v102);

  objc_destroyWeak(v111);
}

void __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_106(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setIsCurrentStateCancelled:a3 ^ 1];
  [*(a1 + 40) setContext:0];
  [*(a1 + 48) popAnimationStyle];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  if (WeakRetained && [*(a1 + 32) _shouldDisableInteractionDuringTransitions])
  {
    v7 = *(a1 + 88);

    if (v7)
    {
      goto LABEL_6;
    }

    WeakRetained = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p> completing transition for presentation", *(a1 + 80), *(a1 + 32)];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s", objc_msgSend(WeakRetained, "UTF8String"), objc_msgSend(*(a1 + 56), "UTF8String")];
    v9 = objc_loadWeakRetained((*(a1 + 32) + 80));
    [v9 _endIgnoringInteractionEventsForReason:v8];

    objc_storeWeak((*(a1 + 32) + 80), 0);
  }

LABEL_6:
  v10 = [*(a1 + 32) _shouldAnimateReenablingOfAutorotation];
  if (dyld_program_sdk_at_least())
  {
    [*(a1 + 64) endDisablingInterfaceAutorotationAnimated:v10];
    v11 = objc_loadWeakRetained((a1 + 72));
    [v11 endDisablingInterfaceAutorotationAnimated:v10];

    [*(a1 + 32) transitionDidFinish:a3];
  }

  else
  {
    [*(a1 + 32) transitionDidFinish:a3];
    [*(a1 + 64) endDisablingInterfaceAutorotationAnimated:v10];
    v12 = objc_loadWeakRetained((a1 + 72));
    [v12 endDisablingInterfaceAutorotationAnimated:v10];
  }

  v15 = v5;
  v13 = [v15 _postInteractiveCompletionHandler];

  if (v13)
  {
    v14 = [v15 _postInteractiveCompletionHandler];
    v14[2]();

    [v15 _setPostInteractiveCompletionHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 184) animationEnded:a3];
  }

  [v15 _setTransitionIsInFlight:0];
  [v15 _setInteractor:0];
  [v15 _setAnimator:0];
}

- (BOOL)_shouldCallAppearanceCallbacksFor:(id)for
{
  forCopy = for;
  presentedViewController = [(UIPresentationController *)self presentedViewController];

  if (presentedViewController == forCopy)
  {
    _shouldDisableAppearanceCallbacksForPresentedViewController = [(UIPresentationController *)self _shouldDisableAppearanceCallbacksForPresentedViewController];
LABEL_6:
    v7 = !_shouldDisableAppearanceCallbacksForPresentedViewController;
    goto LABEL_7;
  }

  presentingViewController = [(UIPresentationController *)self presentingViewController];

  if (presentingViewController == forCopy)
  {
    _shouldDisableAppearanceCallbacksForPresentedViewController = [(UIPresentationController *)self _shouldDisablePresentersAppearanceCallbacks];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)completeCurrentTransitionImmediately
{
  if ([(UIPresentationController *)self presenting]|| [(UIPresentationController *)self dismissing])
  {
    v3 = [UIViewPropertyAnimator _containsAnimatorForTrackedAnimationsUUID:self->_currentRunningAnimationsUUID];
    currentRunningAnimationsUUID = self->_currentRunningAnimationsUUID;
    if (v3)
    {
      v5 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:currentRunningAnimationsUUID];
      [v5 stopAnimation:0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64__UIPresentationController_completeCurrentTransitionImmediately__block_invoke;
      v8[3] = &unk_1E70F3590;
      v9 = v5;
      v6 = v5;
      [UIViewController _performWithoutDeferringTransitions:v8];
    }

    else
    {
      [UIView _stopAnimationWithUUID:currentRunningAnimationsUUID];
      v7 = self->_currentRunningAnimationsUUID;

      [UIView _finalizeStoppedAnimationWithUUID:v7 reverseAnimation:0 state:0 performCompletionsImmediately:1];
    }
  }
}

- (id)_descriptionForPrintingViewControllerHierarchy
{
  v2 = MEMORY[0x1E696AD60];
  if (self)
  {
    v3 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    selfCopy = [v3 stringWithFormat:@"<%@: %p>", v6, selfCopy];
  }

  else
  {
    selfCopy = @"(nil)";
  }

  v8 = [v2 stringWithString:selfCopy];

  return v8;
}

- (void)_enableOcclusion:(BOOL)occlusion
{
  occlusionCopy = occlusion;
  v22 = *MEMORY[0x1E69E9840];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  presentingViewController = [(UIPresentationController *)self presentingViewController];
  view2 = [presentingViewController view];

  _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
  presentingViewController2 = [_parentPresentationController presentingViewController];

  if (presentingViewController2)
  {
    [view2 setTintAdjustmentMode:!occlusionCopy];
    v11 = +[_UIHDRUsageCoordinator sharedInstance];
    [(_UIHDRUsageCoordinator *)v11 enableHDRSuppression:occlusionCopy inViewHierarchy:view2];
  }

  else if (occlusionCopy)
  {
    [view2 _beginOcclusion:self suppressHDRIfNecessary:{-[UIPresentationController _shouldSuppressHDRDuringPresentation](self, "_shouldSuppressHDRDuringPresentation")}];
  }

  else
  {
    [view2 _endOcclusion:self];
  }

  [view setTintAdjustmentMode:occlusionCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _passthroughViews = [(UIPresentationController *)self _passthroughViews];
  v13 = [_passthroughViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(_passthroughViews);
        }

        [*(*(&v17 + 1) + 8 * v16++) setTintAdjustmentMode:occlusionCopy];
      }

      while (v14 != v16);
      v14 = [_passthroughViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)_beginOcclusionIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if ([(UIPresentationController *)self _shouldOccludeDuringPresentation])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    _transitionCoordinator = [presentingViewController _transitionCoordinator];

    if (_transitionCoordinator)
    {
      presentingViewController2 = [(UIPresentationController *)self presentingViewController];
      view = [presentingViewController2 view];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__UIPresentationController__beginOcclusionIfNecessary___block_invoke;
      v11[3] = &unk_1E71018A8;
      v11[4] = self;
      v12 = necessaryCopy;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__UIPresentationController__beginOcclusionIfNecessary___block_invoke_2;
      v9[3] = &unk_1E71018A8;
      v9[4] = self;
      v10 = necessaryCopy;
      [_transitionCoordinator animateAlongsideTransitionInView:view animation:v11 completion:v9];
    }

    else
    {
      [(UIPresentationController *)self _enableOcclusion:necessaryCopy];
    }
  }
}

uint64_t __55__UIPresentationController__beginOcclusionIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) & 1) == 0;

    return [v4 _enableOcclusion:v5];
  }

  return result;
}

- (void)_coverWithSnapshot
{
  _presentationView = [(UIPresentationController *)self _presentationView];
  v4 = [_presentationView snapshotViewAfterScreenUpdates:0];
  snapshotOverlayView = self->_snapshotOverlayView;
  self->_snapshotOverlayView = v4;

  _presentationView2 = [(UIPresentationController *)self _presentationView];
  [_presentationView2 addSubview:self->_snapshotOverlayView];
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview
{
  [(UIPresentationController *)self _frameForTransitionViewInPresentationSuperview:superview inWindow:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview inWindow:(id)window
{
  [superview bounds];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_initViewHierarchyForPresentationSuperview:(id)superview inWindow:(id)window
{
  superviewCopy = superview;
  windowCopy = window;
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  view = [presentingViewController view];

  superview = [view superview];
  subviews = [superview subviews];
  v25 = [subviews indexOfObjectIdenticalTo:view];

  v12 = [UITransitionView alloc];
  v24 = superviewCopy;
  [(UIPresentationController *)self _frameForTransitionViewInPresentationSuperview:superviewCopy inWindow:windowCopy];
  v13 = [(UITransitionView *)v12 initWithFrame:?];
  [(UITransitionView *)v13 setDelegate:self];
  [(UIView *)v13 setAutoresizingMask:18];
  [(UITransitionView *)v13 setIgnoreDirectTouchEvents:[(UIPresentationController *)self _containerIgnoresDirectTouchEvents]];
  [(UIView *)v13 setClipsToBounds:0];
  [(UIView *)v13 _setCanBeParentTraitEnvironment:0];
  v23 = windowCopy;
  objc_initWeak(location, windowCopy);
  objc_initWeak(&from, self);
  objc_initWeak(&v32, superview);
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(UIPresentationController *)self description];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v17 = [presentedViewController description];
  presentingViewController2 = [(UIPresentationController *)self presentingViewController];
  v19 = [presentingViewController2 description];
  v20 = [v14 stringWithFormat:@"presentationController : %@ presentedViewController : %@ presentingViewController : %@", v15, v17, v19];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke;
  v26[3] = &unk_1E7101AD8;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &v32);
  v21 = v13;
  v27 = v21;
  v22 = v20;
  v28 = v22;
  v31[1] = v25;
  objc_copyWeak(v31, location);
  [(UIPresentationController *)self set_transitionViewForCurrentTransition:v26];
  objc_destroyWeak(v31);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

id __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v79 = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained presentingViewController];
  v4 = [WeakRetained presentedViewController];
  v5 = [v3 view];
  v78 = [v4 view];
  if ([WeakRetained presenting])
  {
    v6 = 1;
    v7 = v4;
    v8 = v3;
  }

  else
  {
    v9 = [WeakRetained _transitioningTo];
    v6 = v9;
    if (v9)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    if (v9)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  v83 = v7;
  v77 = v8;
  v82 = [v77 view];
  v81 = [v83 view];
  [WeakRetained _setContainerView:*(a1 + 32)];
  if ([WeakRetained dismissing] && objc_msgSend(WeakRetained, "shouldRemovePresentersView"))
  {
    v10 = [WeakRetained _shouldGrabPresentersView] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  if (([WeakRetained _transitioningFrom] & 1) != 0 || v10)
  {
    v11 = [WeakRetained _parentPresentationController];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v13 = [WeakRetained _computeToEndFrameForCurrentTransition];

    if (has_internal_diagnostics)
    {
      if (!v13)
      {
        v72 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          v75 = *(a1 + 40);
          *location = 138412546;
          *&location[4] = WeakRetained;
          v109 = 2112;
          v110 = v75;
          _os_log_fault_impl(&dword_188A29000, v72, OS_LOG_TYPE_FAULT, "The _computeToEndFrameForCurrentTransition block is nil inside the _transitionViewForCurrentTransition block, value of outerStrongSelf currently : %@. This most likely indicates that an adaptation is happening after a transtion cleared out _computeToEndFrameForCurrentTransition. Captured debug information outside block: %@", location, 0x16u);
        }
      }
    }

    else if (!v13)
    {
      v73 = *(__UILogGetCategoryCachedImpl("Assert", &UIPresentationControllerDismissalTransitionDidEndCompletedKey_block_invoke_3___s_category) + 8);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = *(a1 + 40);
        *location = 138412546;
        *&location[4] = WeakRetained;
        v109 = 2112;
        v110 = v74;
        _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_ERROR, "The _computeToEndFrameForCurrentTransition block is nil inside the _transitionViewForCurrentTransition block, value of outerStrongSelf currently : %@. This most likely indicates that an adaptation is happening after a transtion cleared out _computeToEndFrameForCurrentTransition. Captured debug information outside block: %@", location, 0x16u);
      }
    }

    v14 = [WeakRetained _computeToEndFrameForCurrentTransition];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = [WeakRetained _computeToEndFrameForCurrentTransition];
      v17 = v16[2]();
      _setFrameIgnoringLayerTransformOnOrAfterYukon(v5, v17, v18, v19, v20);
    }

    if (v11)
    {
      v21 = [v11 _presentationView];
      [WeakRetained _transplantView:v5 toSuperview:v21];

      [v11 _frameOfPresentedViewControllerViewInSuperview];
      _setFrameIgnoringLayerTransformOnOrAfterYukon(v5, v22, v23, v24, v25);
    }

    else
    {
      [WeakRetained _transplantView:v5 toSuperview:v79 atIndex:*(a1 + 72)];
    }

    if ([WeakRetained _transitioningFrom])
    {
      v26 = [WeakRetained _childPresentationController];
      if (v26)
      {
        v27 = [WeakRetained _childPresentationController];
        v28 = [v27 containerView];
      }

      else
      {
        v28 = v78;
      }

      v29 = [WeakRetained _presentationView];
      v30 = [v28 snapshotViewAfterScreenUpdates:0];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_131;
      v104[3] = &unk_1E70F6228;
      v80 = v30;
      v105 = v80;
      v106 = v28;
      v107 = v29;
      v31 = v29;
      v32 = v28;
      [UIView performWithoutAnimation:v104];
      [v31 addSubview:v80];
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
  }

  if (v6)
  {
    v33 = [WeakRetained containerView];
    [v33 _setPresentationControllerToNotifyOnLayoutSubviews:WeakRetained];

    v34 = [WeakRetained _currentPresentationSuperview];
    v35 = [*(a1 + 32) superview];
    v36 = v35 == 0;

    if (v36)
    {
      v37 = objc_loadWeakRetained((a1 + 64));
      [WeakRetained _frameForTransitionViewInPresentationSuperview:v34 inWindow:v37];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      _setFrameIgnoringLayerTransformOnOrAfterYukon(*(a1 + 32), v39, v41, v43, v45);
    }

    v46 = [v5 superview];
    v47 = v46 == v34;

    if (v47)
    {
      [v34 insertSubview:*(a1 + 32) aboveSubview:v5];
    }

    else
    {
      v48 = [WeakRetained _childPresentationController];
      if (v48 && ([WeakRetained _childPresentationController], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "containerView"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "superview"), v51 = objc_claimAutoreleasedReturnValue(), v52 = v51 == v34, v51, v50, v49, v48, v52))
      {
        v53 = *(a1 + 32);
        v54 = [WeakRetained _childPresentationController];
        v55 = [v54 containerView];
        [v34 insertSubview:v53 belowSubview:v55];
      }

      else
      {
        [v34 addSubview:*(a1 + 32)];
      }
    }

    if ([WeakRetained presenting] && objc_msgSend(WeakRetained, "_shouldGrabPresentersView"))
    {
      [WeakRetained _transplantView:v5 toSuperview:*(a1 + 32)];
    }
  }

  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_2;
  v101[3] = &unk_1E7101A38;
  objc_copyWeak(&v102, (a1 + 48));
  objc_copyWeak(&v103, (a1 + 56));
  [WeakRetained set_computeToEndFrameForCurrentTransition:v101];
  v56 = [WeakRetained _customFromViewForCurrentTransition];

  if (v56)
  {
    v57 = [WeakRetained _customFromViewForCurrentTransition];
    [WeakRetained set_fromViewForCurrentTransition:v57];
  }

  else
  {
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_3;
    v98[3] = &unk_1E7101A60;
    objc_copyWeak(&v100, (a1 + 48));
    v99 = v82;
    [WeakRetained set_fromViewForCurrentTransition:v98];

    objc_destroyWeak(&v100);
  }

  v58 = [WeakRetained _customToViewForCurrentTransition];

  if (v58)
  {
    v59 = [WeakRetained _customToViewForCurrentTransition];
    [WeakRetained set_toViewForCurrentTransition:v59];
  }

  else
  {
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_4;
    v95[3] = &unk_1E7101A60;
    objc_copyWeak(&v97, (a1 + 48));
    v96 = v81;
    [WeakRetained set_toViewForCurrentTransition:v95];

    objc_destroyWeak(&v97);
  }

  v60 = [v3 _focusSystem];
  [v60 _lockEnvironment:v4];
  [v60 _lockEnvironment:v3];
  objc_initWeak(location, v60);
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_5;
  v91[3] = &unk_1E7101A88;
  objc_copyWeak(&v94, location);
  v61 = v4;
  v92 = v61;
  v76 = v3;
  v93 = v76;
  [WeakRetained _setPendingFocusEnvironmentUnlock:v91];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_6;
  v84[3] = &unk_1E7101AB0;
  objc_copyWeak(&v89, (a1 + 48));
  objc_copyWeak(v90, (a1 + 56));
  v62 = v80;
  v85 = v62;
  v63 = v78;
  v86 = v63;
  v64 = v5;
  v65 = *(a1 + 72);
  v87 = v64;
  v90[1] = v65;
  v88 = *(a1 + 32);
  [WeakRetained set_currentTransitionDidComplete:v84];
  if (![WeakRetained presenting])
  {
    if ([WeakRetained dismissing])
    {
      [(UIPresentationController *)WeakRetained _dismissalTransitionWillBegin];
      [WeakRetained _sendPresentationControllerNotification:@"UIPresentationControllerDismissalTransitionWillBeginNotification" userInfo:0];
    }

    else
    {
      if (![WeakRetained _transitioningFrom])
      {
        if (![WeakRetained _transitioningTo])
        {
          goto LABEL_58;
        }

        [WeakRetained _transitionToWillBegin];
        goto LABEL_51;
      }

      [WeakRetained _transitionFromWillBegin];
    }

    [WeakRetained _beginOcclusionIfNecessary:0];
    v66 = 0;
    goto LABEL_57;
  }

  [(UIPresentationController *)WeakRetained _presentationTransitionWillBegin];
  [WeakRetained _sendPresentationControllerNotification:@"UIPresentationControllerPresentationTransitionWillBeginNotification" userInfo:0];
LABEL_51:
  v66 = 1;
  [WeakRetained _beginOcclusionIfNecessary:1];
LABEL_57:
  [WeakRetained _beginSubduingIfNecessary:v66];
LABEL_58:
  if ([WeakRetained _shouldContinueTouchesOnTargetViewController] && objc_msgSend(WeakRetained, "presenting"))
  {
    v67 = [WeakRetained _customViewForTouchContinuation];
    v68 = [v67 window];

    if (v68)
    {
      v69 = [UIApp _gestureEnvironment];
      [(UIGestureEnvironment *)v69 _performTouchContinuationWithOverrideHitTestedView:v67];
    }
  }

  v70 = *(a1 + 32);

  objc_destroyWeak(v90);
  objc_destroyWeak(&v89);

  objc_destroyWeak(&v94);
  objc_destroyWeak(location);

  objc_destroyWeak(&v103);
  objc_destroyWeak(&v102);

  return v70;
}

uint64_t __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_131(void *a1)
{
  v2 = a1[5];
  [v2 bounds];
  [v2 convertRect:a1[6] toView:?];
  v3 = a1[4];

  return [v3 setFrame:?];
}

double __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained presenting] & 1) == 0 && !objc_msgSend(WeakRetained, "_transitioningTo"))
  {
    if (([WeakRetained dismissing] & 1) == 0 && !objc_msgSend(WeakRetained, "_transitioningFrom") || !objc_msgSend(WeakRetained, "_shouldGrabPresentersView"))
    {
      goto LABEL_15;
    }

    v6 = [WeakRetained _parentPresentationControllerImmediate:1];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [WeakRetained presentingViewController];
      v7 = [v8 parentViewController];

      if (!v7)
      {
        v9 = [WeakRetained presentingViewController];
        v10 = [v9 _popoverController];
        v7 = [v10 _managingSplitViewController];

        if (!v7)
        {
LABEL_14:

LABEL_15:
          v7 = [WeakRetained containerView];
          [v7 bounds];
          v5 = v21;
LABEL_16:

          goto LABEL_17;
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained presentingViewController];
      [v7 _frameForChildContentContainer:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v7 _presentationView];
      }

      else
      {
        v20 = v3;
      }

      v23 = v20;
      v24 = [WeakRetained containerView];
      [v23 convertRect:v24 toView:{v13, v15, v17, v19}];
      v5 = v25;

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  [WeakRetained frameOfPresentedViewInContainerView];
  v5 = v4;
LABEL_17:

  return v5;
}

id __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained presenting])
  {
    if ([WeakRetained _shouldGrabPresentersView])
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = [WeakRetained presentedView];
  }

  v5 = v4;

  return v5;
}

id __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained dismissing])
  {
    if ([WeakRetained _shouldGrabPresentersView])
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = [WeakRetained presentedView];
  }

  v5 = v4;

  return v5;
}

void __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _unlockEnvironment:*(a1 + 32)];
  [WeakRetained _unlockEnvironment:*(a1 + 40)];
}

void __80__UIPresentationController__initViewHierarchyForPresentationSuperview_inWindow___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_loadWeakRetained((a1 + 72));
  if ([WeakRetained presenting])
  {
    [(UIPresentationController *)WeakRetained _presentationTransitionDidEnd:a2];
    v32 = @"UIPresentationControllerPresentationTransitionDidEndCompletedKey";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v33[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v8 = @"UIPresentationControllerPresentationTransitionDidEndNotification";
LABEL_5:
    [WeakRetained _sendPresentationControllerNotification:v8 userInfo:v7];

    goto LABEL_6;
  }

  if ([WeakRetained dismissing])
  {
    [(UIPresentationController *)WeakRetained _dismissalTransitionDidEnd:a2];
    v30 = @"UIPresentationControllerDismissalTransitionDidEndCompletedKey";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v31 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = @"UIPresentationControllerDismissalTransitionDidEndNotification";
    goto LABEL_5;
  }

  if ([WeakRetained _transitioningTo])
  {
    [WeakRetained _transitionToDidEnd];
  }

  else if ([WeakRetained _transitioningFrom])
  {
    [*(a1 + 32) removeFromSuperview];
    [WeakRetained _transitionFromDidEnd];
  }

LABEL_6:
  [WeakRetained _setPendingFocusEnvironmentUnlock:0];
  if ([WeakRetained dismissing] && (a2 & 1) != 0 || objc_msgSend(WeakRetained, "presenting") && (a2 & 1) == 0)
  {
    v9 = [WeakRetained containerView];
    [v9 _setPresentationControllerToNotifyOnLayoutSubviews:0];

    [*(a1 + 40) removeFromSuperview];
    if ([WeakRetained _shouldGrabPresentersView])
    {
      v10 = [WeakRetained _parentPresentationController];
      if (v10 && ([WeakRetained presentingViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "presentedViewController"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12))
      {
        v17 = *(a1 + 48);
        v18 = [v10 _presentationView];
        [WeakRetained _transplantView:v17 toSuperview:v18];

        v19 = objc_opt_respondsToSelector();
        v20 = *(a1 + 48);
        if (v19)
        {
          v21 = [WeakRetained presentingViewController];
          [v10 _frameForChildContentContainer:v21];
          _setFrameIgnoringLayerTransformOnOrAfterYukon(v20, v22, v23, v24, v25);
        }

        else
        {
          [v10 _frameOfPresentedViewControllerViewInSuperview];
          _setFrameIgnoringLayerTransformOnOrAfterYukon(v20, v26, v27, v28, v29);
        }
      }

      else
      {
        [WeakRetained _transplantView:*(a1 + 48) toSuperview:v5 atIndex:*(a1 + 80)];
      }
    }

    [WeakRetained _releaseSnapshot];
    [*(a1 + 56) removeFromSuperview];
    [WeakRetained[27] removeFromSuperview];
    v13 = [WeakRetained containerView];
    [v13 _setPresentationControllerToNotifyOnLayoutSubviews:0];

    [WeakRetained _setContainerView:0];
    [WeakRetained[19] removeFromSuperview];
    [WeakRetained set_computeToEndFrameForCurrentTransition:0];
    [WeakRetained set_currentTransitionDidComplete:0];
    goto LABEL_16;
  }

  if ([WeakRetained presenting])
  {
    if (!a2)
    {
      goto LABEL_26;
    }

LABEL_24:
    if ([WeakRetained shouldRemovePresentersView])
    {
      [*(a1 + 48) removeFromSuperview];
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if ([WeakRetained _transitioningTo] && (a2 & 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  if ([WeakRetained _transitioningFrom])
  {
    v14 = [WeakRetained _presentationView];
    v15 = *(a1 + 40);

    if (v14 != v15)
    {
      [WeakRetained[27] removeFromSuperview];
    }

    v16 = [WeakRetained containerView];
    [v16 _setPresentationControllerToNotifyOnLayoutSubviews:0];

    [WeakRetained[19] removeFromSuperview];
    [WeakRetained _setContainerView:0];
  }

LABEL_16:
}

- (void)_presentationTransitionDidEnd:(void *)end
{
  if (end)
  {
    [end presentationTransitionDidEnd:a2];
    _transitionDelegate = [end _transitionDelegate];
    [_transitionDelegate _presentationControllerDidEndPresentationTransition:end completed:a2];
  }
}

- (void)_dismissalTransitionDidEnd:(void *)end
{
  if (end)
  {
    [end dismissalTransitionDidEnd:a2];
    _transitionDelegate = [end _transitionDelegate];
    [_transitionDelegate _presentationControllerDidEndDismissalTransition:end completed:a2];
  }
}

- (void)_sendPresentationControllerNotification:(id)notification userInfo:(id)info
{
  v6 = MEMORY[0x1E696AD88];
  infoCopy = info;
  notificationCopy = notification;
  defaultCenter = [v6 defaultCenter];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [defaultCenter postNotificationName:notificationCopy object:presentedViewController userInfo:infoCopy];
}

- (CGRect)_frameOfPresentedViewControllerViewInSuperview
{
  _presentationView = [(UIPresentationController *)self _presentationView];
  [_presentationView bounds];
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

- (id)_preferredAnimationControllerForPresentation
{
  _visualStyle = [(UIPresentationController *)self _visualStyle];
  v3 = [_visualStyle preferredAnimationControllerForPresentation:1];

  return v3;
}

- (id)_preferredAnimationControllerForDismissal
{
  _visualStyle = [(UIPresentationController *)self _visualStyle];
  v3 = [_visualStyle preferredAnimationControllerForPresentation:0];

  return v3;
}

- (UIModalPresentationStyle)presentationStyle
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v3 = presentedViewController;
  if (presentedViewController)
  {
    modalPresentationStyle = [presentedViewController modalPresentationStyle];
  }

  else
  {
    modalPresentationStyle = UIModalPresentationNone;
  }

  return modalPresentationStyle;
}

- (UIModalPresentationStyle)adaptivePresentationStyle
{
  delegate = [(UIPresentationController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v4 = [delegate adaptivePresentationStyleForPresentationController:self], (v4 + 1) <= 6) ? (v5 = ((1 << (v4 + 1)) & 0x43) == 0) : (v5 = 1), v5))
  {
    traitCollection = [(UIPresentationController *)self traitCollection];
    v7 = [traitCollection traitCollectionByModifyingTraits:&__block_literal_global_149];

    v4 = [(UIPresentationController *)self _defaultPresentationStyleForTraitCollection:v7];
  }

  return v4;
}

void __53__UIPresentationController_adaptivePresentationStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setHorizontalSizeClass:1];
  [v2 setVerticalSizeClass:2];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate adaptivePresentationStyleForPresentationController:self traitCollection:v4] + 1;
    if (v6 < 7 && ((0x4Bu >> v6) & 1) != 0)
    {
      v7 = qword_18A6791E0[v6];
      goto LABEL_10;
    }

LABEL_9:
    v7 = [(UIPresentationController *)self _defaultPresentationStyleForTraitCollection:v4];
    goto LABEL_10;
  }

  if ([(UITraitCollection *)v4 horizontalSizeClass]!= UIUserInterfaceSizeClassCompact)
  {
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [delegate adaptivePresentationStyleForPresentationController:self];
  if ((v8 + 1) > 6)
  {
    goto LABEL_9;
  }

  v7 = v8;
  if (((1 << (v8 + 1)) & 0x43) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (BOOL)_shouldAdaptFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  if (dyld_program_sdk_at_least())
  {
    v8 = [(UIPresentationController *)self adaptivePresentationStyleForTraitCollection:traitCollectionCopy];
    if (([(UIPresentationController *)self _isAdapted]^ (v8 != UIModalPresentationNone)))
    {
      v9 = 1;
    }

    else
    {
      _activePresentationController = [(UIPresentationController *)self _activePresentationController];
      v9 = v8 != [_activePresentationController presentationStyle];
    }
  }

  else
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];
    v9 = horizontalSizeClass != [traitCollectionCopy horizontalSizeClass];
  }

  return v9;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v8 = presentedViewController;
  if ((*(presentedViewController + 382) & 0x20) != 0)
  {
    _existingView = [presentedViewController _existingView];
    [_existingView frame];
    v9 = v12;
    v10 = v13;
  }

  else
  {
    v9 = *(presentedViewController + 440);
    v10 = *(presentedViewController + 448);
  }

  [(UIPresentationController *)self sizeForChildContentContainer:v8 withParentContainerSize:width, height];
  v16 = v15;
  v17 = v14;
  if (v9 != v15 || v10 != v14)
  {
    goto LABEL_13;
  }

  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  if (!CGAffineTransformIsIdentity(&v20))
  {
LABEL_13:
    [v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{v16, v17}];
    *(v8 + 55) = v16;
    *(v8 + 56) = v17;
  }
}

- (void)_setPreferredContentSize:(CGSize)size
{
  if (self->_preferredContentSize.width != size.width || self->_preferredContentSize.height != size.height)
  {
    self->_preferredContentSize = size;
    _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
    if (_parentPresentationController)
    {
      v8 = _parentPresentationController;
      shouldPresentInFullscreen = [(UIPresentationController *)self shouldPresentInFullscreen];
      _parentPresentationController = v8;
      if (!shouldPresentInFullscreen)
      {
        [v8 preferredContentSizeDidChangeForChildContentContainer:self];
        _parentPresentationController = v8;
      }
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  presentedContentContainer = [(UIPresentationController *)self presentedContentContainer];
  [presentedContentContainer preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (![(UIPresentationController *)self shouldRemovePresentersView])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    [presentingViewController preferredContentSize];
    v11 = v10;
    v13 = v12;

    if (v11 == *MEMORY[0x1E695F060] && v13 == *(MEMORY[0x1E695F060] + 8))
    {
      presentingViewController2 = [(UIPresentationController *)self presentingViewController];
      view = [presentingViewController2 view];
      [view bounds];
      v18 = v17;
      v20 = v19;

      [(UIPresentationController *)self _additionalSafeAreaInsets];
      v13 = v20 - (v22 + v21);
      v11 = v18 - (v23 + v24);
    }

    if (v6 < v11)
    {
      v6 = v11;
    }

    if (v8 < v13)
    {
      v8 = v13;
    }
  }

  [(UIPresentationController *)self _setPreferredContentSize:v6, v8];
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_presentingViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_presentingViewController, controller);
    [(UIPresentationController *)self _updateTraitsIfNecessary];
    controllerCopy = v6;
  }
}

- (void)_setPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (self->__presentedViewControllerStoredWeakly)
  {
    objc_storeWeak(&self->_weakPresentedViewController, controllerCopy);
  }

  else
  {
    objc_storeStrong(&self->_presentedViewController, controller);
  }
}

- (void)_setPresentedViewControllerStoredWeakly:(BOOL)weakly
{
  if (self->__presentedViewControllerStoredWeakly != weakly)
  {
    self->__presentedViewControllerStoredWeakly = weakly;
    if (weakly)
    {
      objc_storeWeak(&self->_weakPresentedViewController, self->_presentedViewController);
      presentedViewController = self->_presentedViewController;
      self->_presentedViewController = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_weakPresentedViewController);
      v6 = self->_presentedViewController;
      self->_presentedViewController = WeakRetained;

      objc_storeWeak(&self->_weakPresentedViewController, 0);
    }
  }
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (dyld_program_sdk_at_least())
  {
    adaptivePresentationStyle = [(UIPresentationController *)self adaptivePresentationStyleForTraitCollection:collectionCopy];
  }

  else
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];

    if (horizontalSizeClass != 1)
    {
LABEL_25:
      selfCopy = self;
      goto LABEL_26;
    }

    adaptivePresentationStyle = [(UIPresentationController *)self adaptivePresentationStyle];
  }

  if (adaptivePresentationStyle == UIModalPresentationNone || [(UIPresentationController *)self presentationStyle]== UIModalPresentationFullScreen || [(UIPresentationController *)self presentationStyle]== UIModalPresentationOverFullScreen || [(UIPresentationController *)self presentationStyle]== 17)
  {
    goto LABEL_25;
  }

  selfCopy = 0;
  if (adaptivePresentationStyle > UIModalPresentationCustom)
  {
    if (adaptivePresentationStyle != UIModalPresentationOverFullScreen && adaptivePresentationStyle != 17)
    {
      goto LABEL_24;
    }

    v12 = _UIOverFullscreenPresentationController;
    goto LABEL_18;
  }

  if (adaptivePresentationStyle == UIModalPresentationFullScreen)
  {
    v12 = _UIFullscreenPresentationController;
LABEL_18:
    v13 = [v12 alloc];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    selfCopy = [v13 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];
    goto LABEL_19;
  }

  if (adaptivePresentationStyle != UIModalPresentationFormSheet)
  {
    goto LABEL_24;
  }

  _adaptiveFormSheetPresentationController = [(UIPresentationController *)self _adaptiveFormSheetPresentationController];
  if (!_adaptiveFormSheetPresentationController)
  {
    v22 = [_UIFormSheetPresentationController alloc];
    presentingViewController = [(UIPresentationController *)self presentedViewController];
    presentingViewController2 = [(UIPresentationController *)self presentingViewController];
    selfCopy = [(UISheetPresentationController *)v22 initWithPresentedViewController:presentingViewController presentingViewController:presentingViewController2];

    presentedViewController = 0;
LABEL_19:

    if (selfCopy)
    {
      goto LABEL_20;
    }

LABEL_24:

    goto LABEL_25;
  }

  v9 = _adaptiveFormSheetPresentationController;
  presentingViewController3 = [(UIPresentationController *)self presentingViewController];
  [v9 _setPresentingViewController:presentingViewController3];

  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  [v9 _setPresentedViewController:presentedViewController2];

  selfCopy = v9;
LABEL_20:
  shouldPresentInFullscreen = [(UIPresentationController *)self shouldPresentInFullscreen];
  if (shouldPresentInFullscreen != [(UIPresentationController *)selfCopy shouldPresentInFullscreen])
  {
    goto LABEL_24;
  }

  v17 = objc_opt_class();
  if (v17 == objc_opt_class())
  {
    goto LABEL_24;
  }

  _sourceViewController = [(UIPresentationController *)self _sourceViewController];
  [(UIPresentationController *)selfCopy _setSourceViewController:_sourceViewController];

  delegate = [(UIPresentationController *)self delegate];
  [(UIPresentationController *)selfCopy setDelegate:delegate];
  presentedViewController3 = [(UIPresentationController *)self presentedViewController];
  [presentedViewController3 _presentationController:self prepareAdaptivePresentationController:selfCopy];

  if (objc_opt_respondsToSelector())
  {
    [delegate presentationController:self prepareAdaptivePresentationController:selfCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate _presentationController:self prepareAdaptivePresentationController:selfCopy];
  }

LABEL_26:

  return selfCopy;
}

- (void)_sendDelegateWillPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentationController:self willPresentWithAdaptiveStyle:style transitionCoordinator:coordinatorCopy];
  }
}

- (id)_presentedViewControllerForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained presentationController:self viewControllerForAdaptivePresentationStyle:{objc_msgSend(controllerCopy, "presentationStyle")}], (presentedViewController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
  }

  return presentedViewController;
}

- (id)_appearanceContainer
{
  if ([(UIPresentationController *)self shouldPresentInFullscreen])
  {
    containerView = [(UIPresentationController *)self containerView];
    _window = [containerView _window];
  }

  else
  {
    _window = [(UIPresentationController *)self presentingViewController];
  }

  return _window;
}

- (void)_collectExistingTraitCollectionsForTraitTracking:(id)tracking
{
  if (self->_lastNotifiedTraitCollection)
  {
    (*(tracking + 2))(tracking);
  }
}

- (id)_compatibleParentTraitEnvironment
{
  if ([(UIPresentationController *)self shouldPresentInFullscreen])
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    _window = [presentedViewController _window];
  }

  else
  {
    _window = [(UIPresentationController *)self presentingViewController];
  }

  return _window;
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  traitCollection = [(UIPresentationController *)self traitCollection];
  if (dyld_program_sdk_at_least())
  {
    if ([environmentCopy __isKindOfUIViewController])
    {
      presentedViewController = [(UIPresentationController *)self presentedViewController];

      if (presentedViewController == environmentCopy)
      {
        v7 = [(UIPresentationController *)self _traitCollectionForPresentedViewController:environmentCopy defaultTraitCollectionForChildEnvironment:traitCollection];

        traitCollection = v7;
      }
    }
  }

  if (self->_traitOverrides)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__UIPresentationController__traitCollectionForChildEnvironment___block_invoke;
    v10[3] = &unk_1E7101B48;
    v10[4] = self;
    v11 = environmentCopy;
    v8 = [(UITraitCollection *)traitCollection _traitCollectionByModifyingTraitsCopyOnWrite:v10];

    traitCollection = v8;
  }

  return traitCollection;
}

- (void)_childTraitTransformDidChange
{
  [(UIPresentationController *)self _invalidateTraitCollectionsOfDescendants:?];
  traitChangeRegistry = self->_traitChangeRegistry;

  [(_UITraitChangeRegistry *)traitChangeRegistry invalidateAuxiliaryChildren];
}

- (void)_invalidateTraitCollectionsOfDescendants:(void *)descendants
{
  if (!descendants)
  {
    return;
  }

  _presentedViewForOverrideTraits = [descendants _presentedViewForOverrideTraits];
  if (_presentedViewForOverrideTraits)
  {
    _UIViewInvalidateTraitCollectionAndSchedulePropagation(_presentedViewForOverrideTraits, 0, v4, v5);
  }

  presentedViewController = [descendants presentedViewController];
  _existingView = [presentedViewController _existingView];
  if (_existingView)
  {
    v10 = a2 ^ 1;
    if (!_presentedViewForOverrideTraits)
    {
      v10 = 0;
    }

    if (_existingView == _presentedViewForOverrideTraits)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    _UIViewInvalidateTraitCollectionAndSchedulePropagation(_existingView, v11, v8, v9);
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  [(UIViewController *)presentedViewController _updateTraitsIfNecessarySchedulingPropagation:?];
  if (a2)
  {
LABEL_13:
    if (_presentedViewForOverrideTraits)
    {
      _window = [(int8x16_t *)_presentedViewForOverrideTraits _window];

      if (_window)
      {
        [(UIView *)_presentedViewForOverrideTraits _updateTraitsIfNeededWithBehavior:?];
      }
    }

    if (_existingView)
    {
      if (_existingView != _presentedViewForOverrideTraits)
      {
        _window2 = [(int8x16_t *)_existingView _window];

        if (_window2)
        {
          [(UIView *)_existingView _updateTraitsIfNeededWithBehavior:?];
        }
      }
    }
  }

LABEL_20:
}

- (void)_recordTraitUsage:(__int128 *)usage trackedStateDiff:(unint64_t)diff insideMethod:(const char *)method withInvalidationAction:
{
  if (self)
  {
    if (!self[4])
    {
      if (_UITraitTokenSetCount(a2))
      {
        v10 = objc_alloc_init(_UITraitChangeRegistry);
        v11 = self[4];
        self[4] = v10;
      }
    }

    [(_UITraitChangeRegistry *)self[4] recordTraitUsage:a2 forTraitEnvironment:self insideMethod:diff withInvalidationAction:method];
    v12 = *usage;
    v13 = *(usage + 2);
    _UILogStateTracking(a2, self, &v12, diff, method);
  }
}

- (id)registerForTraitChanges:(id)changes withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v8 = [(UIPresentationController *)self _registerForTraitTokenChanges:v7 withHandler:handlerCopy];

  return v8;
}

- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v10 = [(UIPresentationController *)self _registerForTraitTokenChanges:v9 withTarget:targetCopy action:action];

  return v10;
}

- (id)registerForTraitChanges:(id)changes withAction:(SEL)action
{
  v6 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v7 = [(UIPresentationController *)self _registerForTraitTokenChanges:v6 withTarget:self action:action];

  return v7;
}

- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v9 = objc_alloc_init(_UITraitChangeRegistry);
    v10 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v9;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v11 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withHandler:handlerCopy];

  return v11;
}

- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  changesCopy = changes;
  targetCopy = target;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v11 = objc_alloc_init(_UITraitChangeRegistry);
    v12 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v11;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v13 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withTarget:targetCopy action:action targetIsSender:targetCopy == self];

  return v13;
}

- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations
{
  invalidationsCopy = invalidations;
  traitChangeRegistry = self->_traitChangeRegistry;
  v8 = invalidationsCopy;
  if (!traitChangeRegistry)
  {
    v6 = objc_alloc_init(_UITraitChangeRegistry);
    v7 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v6;

    invalidationsCopy = v8;
    traitChangeRegistry = self->_traitChangeRegistry;
  }

  [(_UITraitChangeRegistry *)traitChangeRegistry registerAuxiliaryChildEnvironmentForTraitInvalidations:invalidationsCopy];
}

- (void)_compatibleUpdateTraitsIfNecessary
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (presentedViewController && dyld_program_sdk_at_least())
  {
    _presentedViewForOverrideTraits = [(UIPresentationController *)self _presentedViewForOverrideTraits];
    [(UIView *)_presentedViewForOverrideTraits _invalidateTraitCollectionAsRoot];

    selfCopy = presentedViewController;
  }

  else
  {
    selfCopy = self;
  }

  [(UIPresentationController *)selfCopy _updateTraitsIfNecessary];
}

- (void)_updateTraitsIfNecessaryInitiatingPropagation:(BOOL)propagation
{
  propagationCopy = propagation;
  v21 = *MEMORY[0x1E69E9840];
  p_lastNotifiedTraitCollection = &self->_lastNotifiedTraitCollection;
  v6 = self->_lastNotifiedTraitCollection;
  traitCollection = [(UIPresentationController *)self traitCollection];
  v8 = traitCollection;
  if (v6 != traitCollection && ![(UITraitCollection *)traitCollection isEqual:v6])
  {
    objc_storeStrong(p_lastNotifiedTraitCollection, v8);
    v9 = _UISetCurrentFallbackEnvironment(self);
    v10 = +[UITraitCollection _currentTraitCollectionIfExists];
    [UITraitCollection setCurrentTraitCollection:v8];
    if (v6)
    {
      *v18 = 0;
      memset(v17, 0, sizeof(v17));
      [(UITraitCollection *)v6 _createTraitTokenSetForChangesFromTraitCollection:v8, v17];
      [(_UITraitChangeRegistry *)self->_traitChangeRegistry traitsDidChange:v17 forTraitEnvironment:self withPreviousTraitCollection:v6];
      if (*&v17[0])
      {
      }
    }

    v11 = objc_opt_self();
    v12 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v11, self, sel_traitCollectionDidChange_);

    if (v12)
    {
      v13 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_updateTraitsIfNecessaryInitiatingPropagation____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = NSStringFromSelector(sel_traitCollectionDidChange_);
        v16 = [UITraitCollection _descriptionForChangeFromTraitCollection:v6 toTraitCollection:v8];
        LODWORD(v17[0]) = 138413314;
        *(v17 + 4) = v15;
        WORD6(v17[0]) = 2112;
        *(v17 + 14) = self;
        WORD3(v17[1]) = 2112;
        *(&v17[1] + 1) = v16;
        *v18 = 2112;
        *&v18[2] = v6;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", v17, 0x34u);
      }
    }

    [(UIPresentationController *)self traitCollectionDidChange:v6];
    [UITraitCollection setCurrentTraitCollection:v10];
    _UIRestorePreviousFallbackEnvironment(v9);
    if (_UIPresentationControllersInheritTraitsFromViewHierarchy())
    {
      [(UIPresentationController *)self _invalidateTraitCollectionsOfDescendants:propagationCopy];
    }
  }
}

- (void)setOverrideTraitCollection:(UITraitCollection *)overrideTraitCollection
{
  v4 = overrideTraitCollection;
  if (v4 || self->_traitOverrides)
  {
    v6 = v4;
    _traitOverrides = [(UIPresentationController *)self _traitOverrides];
    [(_UITraitOverrides *)_traitOverrides _replaceOverrideTraitCollection:v6];

    v4 = v6;
  }
}

- (void)_setInternalOverrideTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy || self->_traitOverrides)
  {
    v7 = collectionCopy;
    _traitOverrides = [(UIPresentationController *)self _traitOverrides];
    _overridesAppliedBefore = [(_UITraitOverrides *)_traitOverrides _overridesAppliedBefore];
    [(_UITraitOverrides *)_overridesAppliedBefore _replaceOverrideTraitCollection:v7];

    collectionCopy = v7;
  }
}

- (UITraitCollection)_internalOverrideTraitCollection
{
  _overridesAppliedBefore = [(_UITraitOverrides *)&self->_traitOverrides->super.isa _overridesAppliedBefore];
  _content = [(_UILabelConfiguration *)_overridesAppliedBefore _content];

  return _content;
}

- (BOOL)_shouldPerformWillTransitionToTraitCollectionForParent:(id)parent
{
  parentCopy = parent;
  _parentTraitEnvironment = [(UIPresentationController *)self _parentTraitEnvironment];

  if (_parentTraitEnvironment == parentCopy)
  {
    v7 = 1;
  }

  else if (_UIPresentationControllersInheritTraitsFromViewHierarchy())
  {
    _compatibleParentTraitEnvironment = [(UIPresentationController *)self _compatibleParentTraitEnvironment];
    v7 = _compatibleParentTraitEnvironment == parentCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_parent:(id)_parent willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if ([(UIPresentationController *)self _shouldPerformWillTransitionToTraitCollectionForParent:_parent])
  {
    v9 = [(UIPresentationController *)self _adaptiveWillTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  }
}

- (void)_window:(id)_window willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  _windowCopy = _window;
  if ([(UIPresentationController *)self _shouldPerformWillTransitionToTraitCollectionForParent:_windowCopy])
  {
    [(UIPresentationController *)self _adaptiveWillTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  }

  else
  {
    [(UIPresentationController *)self _childPresentationController];
  }
  v11 = ;
  [v11 _window:_windowCopy willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (id)_adaptiveWillTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  traitCollection = [(UIPresentationController *)self traitCollection];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v10 = [presentingViewController _adaptedPresentationControllerForTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];

  if (v10)
  {
    selfCopy = v10;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;
  v13 = collectionCopy;
  p_isa = &v12->_traitOverrides->super.isa;
  v15 = v13;
  if (p_isa)
  {
    v15 = [(_UITraitOverrides *)p_isa _traitCollectionByApplyingOverridesToTraitCollection:v13];
  }

  if (v15 != traitCollection && ([traitCollection isEqual:v15] & 1) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __95__UIPresentationController__adaptiveWillTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v21 = &unk_1E70F6B40;
    v22 = v12;
    v23 = traitCollection;
    v24 = v15;
    v25 = coordinatorCopy;
    [UIViewController _performWithoutDeferringTransitions:&v18];
  }

  v16 = [(UIPresentationController *)v12 presentedViewController:v18];

  return v16;
}

uint64_t __95__UIPresentationController__adaptiveWillTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v2, a1[4], sel_willTransitionToTraitCollection_withTransitionCoordinator_);

  if (v3)
  {
    v5 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_UIInternalPreference_MaterialPresentationsEnabled_block_invoke_4___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel_willTransitionToTraitCollection_withTransitionCoordinator_);
      v8 = a1[4];
      v9 = [UITraitCollection _descriptionForChangeFromTraitCollection:a1[5] toTraitCollection:a1[6]];
      v10 = a1[5];
      v11 = a1[6];
      v12 = 138413314;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► current: %@\n\t► new: %@", &v12, 0x34u);
    }
  }

  return [a1[4] willTransitionToTraitCollection:a1[6] withTransitionCoordinator:a1[7]];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController _parent:self willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (id)_viewsParticipatingInNavigationControllerTransition
{
  v6[1] = *MEMORY[0x1E69E9840];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  v6[0] = view;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (UIFocusItemContainer)focusItemContainer
{
  containerView = [(UIPresentationController *)self containerView];
  superview = [containerView superview];

  return superview;
}

- (UIView)preferredFocusedView
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  preferredFocusedView = [presentedViewController preferredFocusedView];

  return preferredFocusedView;
}

- (int64_t)_subclassPreferredFocusedViewPrioritizationType
{
  if (!qword_1ED49D768)
  {
    qword_1ED49D768 = [UIPresentationController instanceMethodForSelector:sel_preferredFocusedView];
    qword_1ED49D770 = [UIPresentationController instanceMethodForSelector:sel_preferredFocusEnvironments];
  }

  v3 = [(UIPresentationController *)self methodForSelector:sel_preferredFocusedView];
  v4 = [(UIPresentationController *)self methodForSelector:sel_preferredFocusEnvironments];
  if (v3)
  {
    v5 = v3 == qword_1ED49D768;
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
    v7 = v4 == qword_1ED49D770;
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

- (NSArray)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x1E69E9840];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = presentedViewController;
  if (presentedViewController)
  {
    v8[0] = presentedViewController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v5, [(UIPresentationController *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v6;
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  v9 = self->_backGestureRecognizer == recognizerCopy && ([gestureRecognizerCopy _isGestureType:8] & 1) != 0;

  return v9;
}

- (void)_performBackGesture:(id)gesture
{
  containerView = [(UIPresentationController *)self containerView];
  _window = [containerView _window];
  _focusResponder = [_window _focusResponder];

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  LODWORD(_window) = [presentedViewController _containsResponder:_focusResponder];

  if (_window)
  {
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_disableMenuPressForBackGesture
{
  view = [(UIGestureRecognizer *)self->_backGestureRecognizer view];
  [view removeGestureRecognizer:self->_backGestureRecognizer];

  backGestureRecognizer = self->_backGestureRecognizer;
  self->_backGestureRecognizer = 0;
}

- (BOOL)_isModal
{
  _childPresentationController = [(UIPresentationController *)self _childPresentationController];
  v4 = _childPresentationController;
  if (!_childPresentationController || ![_childPresentationController _presentingOrPresented])
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
LABEL_6:
    v7 = presentedViewController;
    isModalInPresentation = [presentedViewController isModalInPresentation];

    goto LABEL_7;
  }

  if (([v4 _isModal] & 1) == 0)
  {
    if ([(UIPresentationController *)self shouldRemovePresentersView])
    {
      isModalInPresentation = 0;
      goto LABEL_7;
    }

    presentedViewController = [(UIPresentationController *)self presentingViewController];
    goto LABEL_6;
  }

  isModalInPresentation = 1;
LABEL_7:

  return isModalInPresentation;
}

- (void)_sendDismissalsAsNeeded
{
  [(UIPresentationController *)self _sendWillDismiss];
  _definiteTransitionCoordinator = [(UIPresentationController *)self _definiteTransitionCoordinator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__UIPresentationController__sendDismissalsAsNeeded__block_invoke;
  v4[3] = &unk_1E70F3B98;
  v4[4] = self;
  [_definiteTransitionCoordinator animateAlongsideTransition:0 completion:v4];
}

uint64_t __51__UIPresentationController__sendDismissalsAsNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 _sendDidDismiss];
  }

  return result;
}

- (BOOL)_shouldDismiss
{
  if ([(UIPresentationController *)self _isModal])
  {
    return 0;
  }

  delegate = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIPresentationController *)self delegate];
    v7 = [delegate2 presentationControllerShouldDismiss:self];

    return v7;
  }

  else
  {

    return [(UIPresentationController *)self _fallbackShouldDismiss];
  }
}

- (void)_sendWillDismiss
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController _presentationControllerWillDismiss:self];

  delegate = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIPresentationController *)self delegate];
    [delegate2 presentationControllerWillDismiss:self];
  }

  else
  {

    [(UIPresentationController *)self _sendFallbackWillDismiss];
  }
}

- (void)_sendDidDismiss
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController _presentationControllerDidDismiss:self];

  delegate = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIPresentationController *)self delegate];
    [delegate2 presentationControllerDidDismiss:self];
  }

  else
  {

    [(UIPresentationController *)self _sendFallbackDidDismiss];
  }
}

- (void)_sendDidAttemptToDismiss
{
  delegate = [(UIPresentationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIPresentationController *)self delegate];
    [delegate2 presentationControllerDidAttemptToDismiss:self];
  }
}

+ (void)_scheduleTransition:(id)transition
{
  transitionCopy = transition;
  if ([self _shouldDeferTransitions])
  {
    [UIViewController _scheduleTransition:transitionCopy];
  }

  else
  {
    transitionCopy[2]();
  }
}

- (BOOL)_canPresentInSeparateScene
{
  if (_UIApplicationIsExtension())
  {
    return 0;
  }

  else
  {
    return ![(UIPresentationController *)self _forcePresentationInPresenterScene];
  }
}

- (void)_endSubduing
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  subduingInvalidation = self->_subduingInvalidation;
  if (has_internal_diagnostics)
  {
    if (!subduingInvalidation)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "_subduingInvalidation is nil, should be non-nil", buf, 2u);
      }
    }
  }

  else if (!subduingInvalidation)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_endSubduing___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "_subduingInvalidation is nil, should be non-nil", v8, 2u);
    }
  }

  [(_UIViewSubduingInvalidation *)self->_subduingInvalidation endSubduing];
  v5 = self->_subduingInvalidation;
  self->_subduingInvalidation = 0;
}

- (void)_enableSubduing:(BOOL)subduing
{
  if (subduing)
  {
    [(UIPresentationController *)self _beginSubduing];
  }

  else
  {
    [(UIPresentationController *)self _endSubduing];
  }
}

- (void)_beginSubduingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (_UISolariumEnabled() && [(UIPresentationController *)self _shouldSubduePresentingViewControllerDuringPresentation])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    _transitionCoordinator = [presentingViewController _transitionCoordinator];

    if (_transitionCoordinator)
    {
      presentingViewController2 = [(UIPresentationController *)self presentingViewController];
      view = [presentingViewController2 view];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__UIPresentationController__beginSubduingIfNecessary___block_invoke;
      v11[3] = &unk_1E71018A8;
      v11[4] = self;
      v12 = necessaryCopy;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__UIPresentationController__beginSubduingIfNecessary___block_invoke_2;
      v9[3] = &unk_1E71018A8;
      v9[4] = self;
      v10 = necessaryCopy;
      [_transitionCoordinator animateAlongsideTransitionInView:view animation:v11 completion:v9];
    }

    else
    {
      [(UIPresentationController *)self _enableSubduing:necessaryCopy];
    }
  }
}

uint64_t __54__UIPresentationController__beginSubduingIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) & 1) == 0;

    return [v4 _enableSubduing:v5];
  }

  return result;
}

- (CGSize)_preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIViewController)_sourceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__sourceViewController);

  return WeakRetained;
}

- (UIView)_viewForRemoteTextEffectsWindowMatchAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->__viewForRemoteTextEffectsWindowMatchAnimation);

  return WeakRetained;
}

@end