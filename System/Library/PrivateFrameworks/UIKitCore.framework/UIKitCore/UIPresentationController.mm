@interface UIPresentationController
+ (BOOL)_shouldDeferTransitions;
+ (UIEdgeInsets)_statusBarOverlapAndMarginInfoForView:(id)a3 inWindow:(id)a4;
+ (void)_scheduleTransition:(id)a3;
+ (void)initialize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- (BOOL)_canPresentInSeparateScene;
- (BOOL)_containerViewShouldIgnoreDirectTouchEvents;
- (BOOL)_gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)_isAdapted;
- (BOOL)_isModal;
- (BOOL)_isPresentedInFullScreen;
- (BOOL)_presentedViewControllerProvidesContentScrollView;
- (BOOL)_presentingOrPresented;
- (BOOL)_shouldAdaptFromTraitCollection:(id)a3 toTraitCollection:(id)a4;
- (BOOL)_shouldCallAppearanceCallbacksFor:(id)a3;
- (BOOL)_shouldDismiss;
- (BOOL)_shouldGrabPresentersView;
- (BOOL)_shouldPerformWillTransitionToTraitCollectionForParent:(id)a3;
- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance;
- (BOOL)_shouldRespectDefinesPresentationContext;
- (CGAffineTransform)transformOfPresentedViewInContainerView;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3 inWindow:(id)a4;
- (CGRect)_frameOfPresentedViewControllerViewInSuperview;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)sourceRect;
- (CGSize)_preferredContentSize;
- (CGSize)preferredContentSize;
- (NSArray)preferredFocusEnvironments;
- (UIBarButtonItem)barButtonItem;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4;
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
- (id)_adaptiveWillTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (id)_appearanceContainer;
- (id)_childPresentationController;
- (id)_compatibleParentTraitEnvironment;
- (id)_currentContextPresentationSuperview;
- (id)_descriptionForPrintingViewControllerHierarchy;
- (id)_fullscreenPresentationSuperview;
- (id)_parentPresentationControllerImmediate:(BOOL)a3;
- (id)_parentTraitCollection;
- (id)_parentTraitEnvironment;
- (id)_preferredAnimationControllerForDismissal;
- (id)_preferredAnimationControllerForPresentation;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (id)_presentedViewControllerForPresentationController:(id)a3 traitCollection:(id)a4;
- (id)_registerForTraitTokenChanges:(id)a3 withHandler:(id)a4;
- (id)_registerForTraitTokenChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5;
- (id)_rootPresentingViewControllerForNestedPresentation;
- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)a3;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)_traitCollectionForPresentedViewController:(id)a3 defaultTraitCollectionForChildEnvironment:(id)a4;
- (id)_viewsParticipatingInNavigationControllerTransition;
- (id)delegate;
- (id)presentedContentContainer;
- (id)registerForTraitChanges:(id)a3 withAction:(SEL)a4;
- (id)registerForTraitChanges:(id)a3 withHandler:(id)a4;
- (id)registerForTraitChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (void)_applyDefaultTraitCollectionOverridesWithProvider:(id)a3 mutableTraitCollectionProvider:(id)a4;
- (void)_beginOcclusionIfNecessary:(BOOL)a3;
- (void)_beginSubduing;
- (void)_beginSubduingIfNecessary:(BOOL)a3;
- (void)_childTraitTransformDidChange;
- (void)_cleanup;
- (void)_collectExistingTraitCollectionsForTraitTracking:(id)a3;
- (void)_compatibleUpdateTraitsIfNecessary;
- (void)_containedViewControllerModalStateChanged;
- (void)_containerViewDidLayoutSubviewsWithObservationTracking;
- (void)_containerViewWillLayoutSubviews;
- (void)_containerViewWillLayoutSubviewsWithObservationTracking;
- (void)_coverWithSnapshot;
- (void)_disableMenuPressForBackGesture;
- (void)_dismissWithAnimationController:(id)a3 interactionController:(id)a4 animated:(BOOL)a5 handoffData:(id)a6;
- (void)_dismissalTransitionDidEnd:(void *)a1;
- (void)_dismissalTransitionWillBegin;
- (void)_enableOcclusion:(BOOL)a3;
- (void)_enableSubduing:(BOOL)a3;
- (void)_endSubduing;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_initViewHierarchyForPresentationSuperview:(id)a3 inWindow:(id)a4;
- (void)_invalidateTraitCollectionsOfDescendants:(void *)a1;
- (void)_parent:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_performBackGesture:(id)a3;
- (void)_populateInitialTraitCollection;
- (void)_prepareForWindowDeallocRecursively:(BOOL)a3;
- (void)_presentWithAnimationController:(id)a3 inWindow:(id)a4 interactionController:(id)a5 animated:(BOOL)a6 handoffData:(id)a7;
- (void)_presentationTransitionDidEnd:(void *)a1;
- (void)_presentationTransitionWillBegin;
- (void)_recordTraitUsage:(__int128 *)a3 trackedStateDiff:(unint64_t)a4 insideMethod:(const char *)a5 withInvalidationAction:;
- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)a3;
- (void)_releaseSnapshot;
- (void)_sendDelegateWillPresentWithAdaptiveStyle:(int64_t)a3 transitionCoordinator:(id)a4;
- (void)_sendDidAttemptToDismiss;
- (void)_sendDidDismiss;
- (void)_sendDismissalsAsNeeded;
- (void)_sendPresentationControllerNotification:(id)a3 userInfo:(id)a4;
- (void)_sendWillDismiss;
- (void)_setContainerIgnoresDirectTouchEvents:(BOOL)a3;
- (void)_setInternalOverrideTraitCollection:(id)a3;
- (void)_setPendingFocusEnvironmentUnlock:(id)a3;
- (void)_setPreferredContentSize:(CGSize)a3;
- (void)_setPresentedViewController:(id)a3;
- (void)_setPresentedViewControllerStoredWeakly:(BOOL)a3;
- (void)_setPresentingViewController:(id)a3;
- (void)_setRealSourceView:(id)a3;
- (void)_traitOverrides;
- (void)_traitOverridesDidChange;
- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_transplantView:(id)a3 toSuperview:(id)a4;
- (void)_transplantView:(id)a3 toSuperview:(id)a4 atIndex:(unint64_t)a5;
- (void)_updateRealSourceView;
- (void)_updateTraitsIfNecessaryInitiatingPropagation:(BOOL)a3;
- (void)_window:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_windowSceneDidUpdateEffectiveGeometry:(id)a3;
- (void)completeCurrentTransitionImmediately;
- (void)dealloc;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)runTransitionForCurrentStateAnimated:(BOOL)a3 handoffData:(id)a4;
- (void)setNeedsFocusUpdate;
- (void)setOverrideTraitCollection:(UITraitCollection *)overrideTraitCollection;
- (void)setSourceItem:(id)a3;
- (void)setSourceView:(id)a3;
- (void)transitionDidFinish:(BOOL)a3;
- (void)transitionDidStart;
- (void)updateFocusIfNeeded;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIPresentationController

- (UITraitCollection)traitCollection
{
  TraitCollectionTSD = GetTraitCollectionTSD();
  v4 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  v5 = [(UIPresentationController *)self _parentTraitCollection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__UIPresentationController_traitCollection__block_invoke;
  v8[3] = &unk_1E7101B20;
  v8[4] = self;
  v6 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v8];
  *(GetTraitCollectionTSD() + 9) = v4;
  _UITraitEnvironmentGeneratedTraitCollection(self, v6);

  return v6;
}

- (id)_parentTraitCollection
{
  v3 = [(UIPresentationController *)self _parentTraitEnvironment];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _traitCollectionForChildEnvironment:self];
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
  if (objc_opt_class() != a1)
  {
    v3 = objc_opt_self();
    [v3 instanceMethodForSelector:sel_traitCollection];
    v4 = dyld_image_header_containing_address();
    [a1 instanceMethodForSelector:sel_traitCollection];
    v5 = dyld_image_header_containing_address();

    if (v4 != v5)
    {
      v6 = *(__UILogGetCategoryCachedImpl("TraitCollection", &initialize___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = NSStringFromClass(a1);
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

    LOBYTE(v3) = [a1 _allowsDeferredTransitions];
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

- (id)_traitCollectionForPresentedViewController:(id)a3 defaultTraitCollectionForChildEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(UIPresentationController *)v8 _traitCollectionForCherryPickingToPresentedViewController:v6];
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

  v15 = [(UITraitCollection *)v7 _traitCollectionByModifyingTraitsCopyOnWrite:v14];
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

  v7 = v15;
LABEL_6:

  return v7;
}

- (_BYTE)_presentedViewWithReentrancyGuard
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[9];
    if (v3)
    {
      a1 = 0;
    }

    else
    {
      a1[9] = 1;
      a1 = [a1 presentedView];
      v2[9] = v3;
    }

    v1 = vars8;
  }

  return a1;
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
    v3 = [(UIPresentationController *)self presentedViewController];
    v4 = [v3 viewIfLoaded];

    if (v4)
    {
      v5 = [(UIPresentationController *)self _presentedViewWithReentrancyGuard];
      v6 = v5;
      if (v5 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5;
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
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = [v2 _presentationController];

  return v3;
}

- (BOOL)_shouldGrabPresentersView
{
  v3 = [(UIPresentationController *)self shouldRemovePresentersView];
  if (dyld_program_sdk_at_least())
  {
    v4 = [(UIPresentationController *)self presentingViewController];
    v5 = [v4 _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];

    if (v5 && [(UIPresentationController *)self shouldPresentInFullscreen])
    {
      v6 = [v5 _mayChildGrabPresentedViewControllerView];
      if (v6)
      {
        LOBYTE(v6) = [v5 shouldPresentInFullscreen];
      }

      v3 &= v6;
    }
  }

  return v3;
}

- (_UITypedStorage)_typedStorage
{
  if (a1)
  {
    v2 = *(a1 + 136);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      v3 = *(a1 + 136);
      *(a1 + 136) = v2;
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
      v3 = [(UIPresentationController *)self presentedViewController];
      [v3 _updateLayoutForStatusBarAndInterfaceOrientation];
    }

    [(UIPresentationController *)self containerViewWillLayoutSubviews];
  }
}

- (void)_containerViewWillLayoutSubviewsWithObservationTracking
{
  v2 = self;
  sub_188ADE68C();
}

- (_UITraitOverrides)_internalTraitOverrides
{
  v2 = [(UIPresentationController *)self _traitOverrides];
  v3 = [(_UITraitOverrides *)v2 _overridesAppliedBefore];

  return v3;
}

- (void)_traitOverrides
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:a1];
      v5 = v2[3];
      v2[3] = v4;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_presentationTransitionWillBegin
{
  if (a1)
  {
    [a1 presentationTransitionWillBegin];
    v2 = [a1 _transitionDelegate];
    [v2 _presentationControllerWillBeginPresentationTransition:a1];
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
  v2 = self;
  sub_188AE32B0();
}

- (UIViewControllerTransitionCoordinator)_definiteTransitionCoordinator
{
  v3 = [(UIPresentationController *)self _transitionCoordinator];
  if (!v3)
  {
    v4 = [_UIViewControllerImmediateAnimationTransitionCoordinator alloc];
    v5 = [(UIPresentationController *)self containerView];
    v3 = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)v4 initWithContainerView:v5];
  }

  return v3;
}

- (BOOL)_isPresentedInFullScreen
{
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 superview];
  v5 = [(UIPresentationController *)self containerView];
  v6 = [v5 window];
  v7 = v4 == v6;

  return v7;
}

- (_UIViewControllerTransitionContext)_transitionContext
{
  v2 = [(UIPresentationController *)self _currentTransitionController];
  if (v2)
  {
    v3 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:v2];
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
  if (a1)
  {
    [a1 dismissalTransitionWillBegin];
    v2 = [a1 _transitionDelegate];
    [v2 _presentationControllerWillBeginDismissalTransition:a1];
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
    v6 = [(UIPresentationController *)self presentingViewController];
    v7 = objc_opt_class();
    class_getName(v7);

    v8 = [(UIPresentationController *)self presentedViewController];
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
  v3 = [(UIPresentationController *)self _containerSuperviewForCurrentTransition];

  if (!v3 || ([(UIPresentationController *)self _containerSuperviewForCurrentTransition], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(UIPresentationController *)self presentingViewController];
    v7 = [v6 view];
    v5 = [v7 window];
  }

  return v5;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  v3 = [(UIPresentationController *)self presentingViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  v6 = dyld_program_sdk_at_least();
  v7 = v6;
  if (v5)
  {
    v3 = [(UIPresentationController *)self presentingViewController];
    v4 = [v5 rootViewController];
    if ((v3 != v4) | v7 & 1)
    {
      v8 = [v5 __sizeClassPair];
      v10 = v9;
LABEL_7:

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v8 = [0 __sizeClassPair];
    v10 = v11;
    goto LABEL_8;
  }

  v12 = [(UIPresentationController *)self presentingViewController];
  v8 = [v12 __sizeClassPair];
  v10 = v13;

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:

  v14 = v8;
  v15 = v10;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)_containedViewControllerModalStateChanged
{
  v2 = [(UIPresentationController *)self _parentPresentationController];
  [v2 _containedViewControllerModalStateChanged];
}

- (UIViewControllerTransitionCoordinator)_transitionCoordinator
{
  v2 = [(UIPresentationController *)self _transitionContext];
  v3 = [v2 _transitionCoordinator];

  return v3;
}

- (id)_currentContextPresentationSuperview
{
  v3 = [(UIPresentationController *)self _parentPresentationController];
  v4 = v3;
  if (v3)
  {
    [v3 _presentationView];
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
      v6 = [v5 presentingViewController];

      v7 = [(UIViewController *)v6 _existingPresentationControllerImmediate:0 effective:1];

      v5 = v7;
      v3 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  v3 = [(UIPresentationController *)self _parentPresentationController];
  v4 = 0.0;
  if (v3)
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (![(UIPresentationController *)self shouldPresentInFullscreen])
    {
      [v3 _additionalSafeAreaInsets];
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
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 superview];

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

  v7 = [(UIPresentationController *)self containerView];
  v8 = [v4 setSubduesSiblings:1 belowView:v7];
  v9 = self->_subduingInvalidation;
  self->_subduingInvalidation = v8;
}

- (id)presentedContentContainer
{
  v3 = [(UIPresentationController *)self _childPresentationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIPresentationController *)self presentedViewController];
  }

  v6 = v5;

  return v6;
}

- (UIView)presentedView
{
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = [v2 view];

  return v3;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = [(UIPresentationController *)self containerView];
  [v2 bounds];
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
  v3 = [(UIPresentationController *)self _transitionContext];
  v4 = [v3 _animator];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 prefersPreemptionEnabledForPresentations] && -[UIPresentationController dismissing](self, "dismissing") && (objc_msgSend(v3, "isInteractive") & 1) == 0)
  {
    v5 = [v3 transitionWasCancelled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (UIView)_realSourceView
{
  v3 = [(UIPresentationController *)self sourceItem];
  v4 = _UIPopoverPresentationControllerSourceItemUpCast(v3);

  if (v4)
  {
    v5 = [(UIPresentationController *)self containerView];
    v6 = [v5 _window];
    v7 = [v4 _sourceViewForPresentationInWindow:v6];

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
  v2 = self;
  v3 = [(UIPresentationController *)self presentingViewController];
  v4 = [v3 _presentationController];
  LOBYTE(v2) = v4 != v2;

  return v2;
}

- (UIBarButtonItem)barButtonItem
{
  v2 = [(UIPresentationController *)self sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v3 = [(UIPresentationController *)self sourceItem];
  v4 = _UIPopoverPresentationControllerSourceItemUpCast(v3);

  if (v4)
  {
    v5 = [(UIPresentationController *)self containerView];
    v6 = [v5 _window];

    v7 = [v4 _sourceViewForPresentationInWindow:v6];
    if (v6)
    {
      if (os_variant_has_internal_diagnostics())
      {
        if (!v7)
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

      else if (!v7)
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
    v7 = [(UIPresentationController *)self sourceView];
  }

  [(UIPresentationController *)self _setRealSourceView:v7];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  v2 = [(UIPresentationController *)self containerView];
  v3 = [v2 superview];

  return v3;
}

- (void)_applyDefaultTraitCollectionOverridesWithProvider:(id)a3 mutableTraitCollectionProvider:(id)a4
{
  v6 = _Block_copy(a3);
  v10 = v6;
  v8 = _Block_copy(a4);
  v7 = self;
  sub_189071A30(sub_188A854F4, v9, sub_188A7A460);
  _Block_release(v8);
  _Block_release(v6);
}

- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_189071728(v4);

  return v6;
}

- (void)setSourceView:(id)a3
{
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:193 description:{@"Tried to set %@ as sourceView of %@, even though it is not a kind of UIView.", v9, self}];

      v6 = v9;
    }
  }

  if (self->_sourceView != v6)
  {
    objc_storeStrong(&self->_sourceView, a3);
    [(UIPresentationController *)self _updateRealSourceView];
    v6 = v9;
  }
}

- (void)setSourceItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v9 = _UIPopoverPresentationControllerSourceItemUpCast(v5);

    v7 = v9;
    if (v9)
    {
      goto LABEL_5;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:208 description:{@"Tried to set %@ as sourceItem of %@, which is not a supported class", 0, self}];
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

- (void)_setRealSourceView:(id)a3
{
  v5 = a3;
  p_observedRealSourceView = &self->_observedRealSourceView;
  observedRealSourceView = self->_observedRealSourceView;
  if (observedRealSourceView != v5)
  {
    v10 = v5;
    v8 = observedRealSourceView;
    objc_storeStrong(&self->_observedRealSourceView, a3);
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

    v5 = v10;
  }
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v5 = [(UIPresentationController *)self containerView:a3];
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

- (void)_transplantView:(id)a3 toSuperview:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__UIPresentationController__transplantView_toSuperview_atIndex___block_invoke;
  v13[3] = &unk_1E7101900;
  v14 = v7;
  v15 = v8;
  v16 = a5;
  v9 = v8;
  v10 = v7;
  v11 = [v10 _window];
  v12 = [v11 windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:v13 forScene:v12];
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

- (void)_transplantView:(id)a3 toSuperview:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [v8 _window];
  v10 = [v9 windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:v10 forScene:?];
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
  v3 = [(UIPresentationController *)self presentedViewController];
  if (-[UIPresentationController _shouldMakePresentedViewControllerFirstResponder](self, "_shouldMakePresentedViewControllerFirstResponder") && ([v3 _containsFirstResponder] & 1) == 0)
  {
    [v3 becomeFirstResponder];
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
  v2 = [(UIPresentationController *)self presentingViewController];
  v3 = [v2 _presentationController];

  return v3;
}

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  if (-[UIPresentationController shouldPresentInFullscreen](self, "shouldPresentInFullscreen") || (-[UIPresentationController presentingViewController](self, "presentingViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _existingPresentationControllerImmediate:0 effective:1 includesRoot:1], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {

    return [(UIPresentationController *)self shouldRemovePresentersView];
  }

  else
  {
    v5 = [v4 _shouldPresentedViewControllerControlStatusBarAppearance];

    return v5;
  }
}

- (void)transitionDidFinish:(BOOL)a3
{
  v3 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v5 = [(UIPresentationController *)self presenting];
  v6 = [(UIPresentationController *)self dismissing];
  v7 = [(UIPresentationController *)self presentingViewController];
  v8 = [(UIPresentationController *)self presentedViewController];
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v33 = v8;
  if (v5)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = v9;
  v12 = v10;
  v13 = [(UIPresentationController *)self _transitionContext];
  v14 = [(UIPresentationController *)self _currentTransitionDidComplete];
  v31 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
    if (!v3)
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
      v45 = self;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = v7;
      _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "self._currentTransitionDidComplete is nil! for self: %@; presentedViewController: %@; presentingViewController: %@", buf, 0x20u);
    }

    if (v3)
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
      v45 = self;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "self._currentTransitionDidComplete is nil! for self: %@; presentedViewController: %@; presentingViewController: %@", buf, 0x20u);
    }

    if (v3)
    {
LABEL_14:
      if (v5)
      {
        v16 = [v33 view];
        v17 = [v16 superview];
        [(UIPresentationController *)self _setPresentationView:v17];
      }

      else if (v6)
      {
        [(UIPresentationController *)self _setPresentationView:0, v31];
      }
    }
  }

LABEL_18:
  [v13 _setContainerView:{0, v31}];
  [(UIPresentationController *)self _setCurrentInteractionController:0];
  v18 = [v7 _completionBlock];
  if (v7)
  {
    if (v3)
    {
      if (v5)
      {
        [v7 _didFinishPresentTransition];
      }

      else
      {
        [v7 _didFinishDismissTransition];
      }
    }

    else if (v5)
    {
      [v7 _didCancelPresentTransition:v13];
    }

    else
    {
      [v7 _didCancelDismissTransition:v13];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIPresentationController_transitionDidFinish___block_invoke;
  aBlock[3] = &unk_1E7101950;
  aBlock[4] = self;
  v19 = v11;
  v38 = v19;
  v20 = v7;
  v39 = v20;
  v21 = v13;
  v40 = v21;
  v42 = v3;
  v22 = v12;
  v41 = v22;
  v43 = v5;
  v23 = _Block_copy(aBlock);
  if (([objc_opt_class() _allowsDeferredTransitions] & 1) != 0 || !+[UIApplication _isCertainCheckpointInAppLaunchReached](UIApplication, "_isCertainCheckpointInAppLaunchReached"))
  {
    v23[2](v23);
    if (!v18)
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

  if (v18)
  {
LABEL_31:
    v18[2](v18, v3);
  }

LABEL_32:
  [(UIPresentationController *)self executeTransitionCompletionBlock];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v25 = 0;
    if ([(UIPresentationController *)self dismissing]&& v3)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (![(UIPresentationController *)self presenting]|| v3)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v25 = [(UIPresentationController *)self forcePresentationControllerDelegate];
  if (![(UIPresentationController *)self dismissing]|| !v3)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v25 forcePresentationControllerDidDismiss:self];
  }

LABEL_43:
  [(UIPresentationController *)self _setCurrentTransitionController:0];
  if ([(UIPresentationController *)self dismissing]&& v3 || [(UIPresentationController *)self presenting]&& !v3)
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

- (void)_setPendingFocusEnvironmentUnlock:(id)a3
{
  aBlock = a3;
  pendingFocusEnvironmentUnlock = self->__pendingFocusEnvironmentUnlock;
  if (pendingFocusEnvironmentUnlock)
  {
    pendingFocusEnvironmentUnlock[2]();
  }

  v5 = _Block_copy(aBlock);
  v6 = self->__pendingFocusEnvironmentUnlock;
  self->__pendingFocusEnvironmentUnlock = v5;
}

- (void)_prepareForWindowDeallocRecursively:(BOOL)a3
{
  v3 = a3;
  v9 = [(UIPresentationController *)self presentedViewController];
  v5 = [(UIPresentationController *)self containerView];
  if (v3)
  {
    [v9 _prepareForWindowDealloc];
  }

  if (v9 && (v9[94] & 3u) - 1 <= 1)
  {
    [v9 beginAppearanceTransition:0 animated:0];
    v6 = [v9 view];
    [v6 removeFromSuperview];

    [v9 endAppearanceTransition];
  }

  v7 = [(UIPresentationController *)self presentingViewController];
  v8 = [v7 _originalPresentationController];
  [v8 _setPresentingViewController:0];

  [(UIPresentationController *)self _setPresentingViewController:0];
}

- (void)_setContainerIgnoresDirectTouchEvents:(BOOL)a3
{
  if (self->_containerIgnoresDirectTouchEvents != a3)
  {
    self->_containerIgnoresDirectTouchEvents = a3;
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

- (void)_presentWithAnimationController:(id)a3 inWindow:(id)a4 interactionController:(id)a5 animated:(BOOL)a6 handoffData:(id)a7
{
  v33 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v31 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_opt_class();
  if (v15 == objc_opt_class())
  {
    [v12 setDelegate:self];
  }

  [(UIPresentationController *)self _setCurrentTransitionController:v12, v31];
  [(UIPresentationController *)self _setCurrentInteractionController:v13];
  if (self->_state)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v30 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v35 = self;
        _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "Trying to present the presentation controller while transitioning already. (%@)", buf, 0xCu);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &_presentWithAnimationController_inWindow_interactionController_animated_handoffData____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = self;
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
    v17 = [(UIPresentationController *)self presentingViewController];
    if (v17)
    {
      do
      {
        if ([v17 definesPresentationContext])
        {
          break;
        }

        v18 = [v17 parentViewController];

        v17 = v18;
      }

      while (v18);
    }

    if ([v17 definesPresentationContext])
    {
      v19 = [v17 view];
      v20 = [v19 superview];

      if (!v20)
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"UIPresentationController.m" lineNumber:808 description:@"The view defining presentation context doesn't have a superview"];
      }

      v21 = [v17 view];
      v22 = [v21 superview];

      v16 = v22;
    }
  }

  [(UIPresentationController *)self _setCurrentPresentationSuperview:v16];
  v23 = [(UIPresentationController *)self presentingViewController];
  v24 = [v23 _existingView];
  v25 = [v24 window];
  v26 = [(UIPresentationController *)self presentedViewController];
  v27 = [(UIPresentationController *)self presentingViewController];
  [(UIPresentationController *)self _adjustOrientationIfNecessaryInWindow:v25 forViewController:v26 preservingViewController:v27];

  [(UIPresentationController *)self _initViewHierarchyForPresentationSuperview:v16 inWindow:v32];
  [(UIPresentationController *)self runTransitionForCurrentStateAnimated:v33 handoffData:v14];
}

- (void)_dismissWithAnimationController:(id)a3 interactionController:(id)a4 animated:(BOOL)a5 handoffData:(id)a6
{
  v7 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a4;
  if (objc_opt_respondsToSelector())
  {
    v13 = [(UIPresentationController *)self forcePresentationControllerDelegate];
    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 forcePresentationControllerWillDismiss:self];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    [v10 setDelegate:self];
  }

  [(UIPresentationController *)self _setCurrentTransitionController:v10];
  [(UIPresentationController *)self _setCurrentInteractionController:v12];

  if (self->_state != 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = 138412290;
        v23 = self;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Trying to dismiss the presentation controller while transitioning already. (%@)", &v22, 0xCu);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissWithAnimationController_interactionController_animated_handoffData____s_category) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = self;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Trying to dismiss the presentation controller while transitioning already. (%@)", &v22, 0xCu);
      }
    }
  }

  self->_state = 3;
  v15 = [(UIPresentationController *)self presentedViewController];
  v16 = [v15 _existingView];
  v17 = [v16 window];
  v18 = [(UIPresentationController *)self presentingViewController];
  v19 = [(UIPresentationController *)self presentedViewController];
  [(UIPresentationController *)self _adjustOrientationIfNecessaryInWindow:v17 forViewController:v18 preservingViewController:v19];

  [(UIPresentationController *)self runTransitionForCurrentStateAnimated:v7 handoffData:v11];
}

- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(UIPresentationController *)self completeCurrentTransitionImmediately];
  if (!self->_state)
  {
    goto LABEL_46;
  }

  v49 = v8;
  self->_state = 4;
  v9 = [(UIPresentationController *)self presentedViewController];
  v10 = [v7 presentedViewController];

  v11 = [(UIPresentationController *)self _changedPresentingViewControllerDuringAdaptation];
  [(UIPresentationController *)self _setChangedPresentingViewControllerDuringAdaptation:0];
  if (v11)
  {
    if (([v7 shouldRemovePresentersView] & 1) == 0)
    {
      v12 = [(UIPresentationController *)self presentingViewController];
      v11 = v12;
      v13 = 1;
LABEL_7:
      [v12 beginAppearanceTransition:v13 animated:1];

      v47 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(UIPresentationController *)self shouldRemovePresentersView];
    if (v11 != [v7 shouldRemovePresentersView])
    {
      v11 = [(UIPresentationController *)self presentingViewController];
      v13 = [v7 shouldRemovePresentersView] ^ 1;
      v12 = v11;
      goto LABEL_7;
    }
  }

  v47 = 0;
LABEL_9:
  if (v9 == v10)
  {
    v17 = 0;
    LOBYTE(v48) = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_37;
  }

  v14 = [(UIPresentationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(UIPresentationController *)self presentedViewController];
    v11 = [v10 topViewController];
    v15 = [v7 presentedViewController];
    v16 = v11 == v15;
  }

  else
  {
    v16 = 0;
  }

  v20 = [v7 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v48 = v16;
  if (isKindOfClass)
  {
    v10 = [v7 presentedViewController];
    v11 = [v10 topViewController];
    v22 = [(UIPresentationController *)self presentedViewController];
    v4 = v22;
    if (v11 == v22)
    {

      goto LABEL_26;
    }
  }

  v23 = [(UIPresentationController *)self presentedViewController];
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

  v24 = [(UIPresentationController *)self presentedViewController];
  v25 = [v24 topViewController];

  if (isKindOfClass)
  {
  }

  if (!v25)
  {
LABEL_26:
    v20 = [v7 presentedViewController];
    v17 = 1;
    [v20 _setIsWrappingDuringAdaptation:1];
    v16 = v48;
    goto LABEL_27;
  }

  v17 = 0;
  LOBYTE(v16) = v48;
  if (v48)
  {
LABEL_28:
    v26 = [(UIPresentationController *)self presentedViewController];
    [v26 _setIsWrappingDuringAdaptation:1];
  }

LABEL_29:
  v27 = [(UIPresentationController *)self _childPresentationController];

  v18 = v27 != 0;
  if (v27)
  {
    v28 = [(UIPresentationController *)self _childPresentationController];
    [v28 _setChangedPresentingViewControllerDuringAdaptation:1];
LABEL_34:
    v19 = v27 == 0;

    goto LABEL_35;
  }

  if (!v16)
  {
    v28 = [v7 presentedViewController];
    [v28 beginAppearanceTransition:1 animated:1];
    goto LABEL_34;
  }

  v19 = 0;
LABEL_35:
  v29 = [(UIPresentationController *)self _childPresentationController];
  if (!v29 || (v30 = v29, -[UIPresentationController _childPresentationController](self, "_childPresentationController"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 shouldRemovePresentersView], v31, v30, (v32 & 1) == 0))
  {
    if (v17)
    {
      v33 = 0;
      v17 = 1;
    }

    else
    {
      v34 = [(UIPresentationController *)self presentedViewController];
      v33 = 1;
      [v34 beginAppearanceTransition:0 animated:1];

      v17 = 0;
    }

    goto LABEL_41;
  }

LABEL_37:
  v33 = 0;
LABEL_41:
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v36 = [(UIPresentationController *)self _transitionViewForCurrentTransition];

  if (has_internal_diagnostics)
  {
    if (!v36)
    {
      v45 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v69 = self;
        _os_log_fault_impl(&dword_188A29000, v45, OS_LOG_TYPE_FAULT, "transitionViewForCurrentTransition is not set! (%@)", buf, 0xCu);
      }
    }
  }

  else if (!v36)
  {
    v46 = *(__UILogGetCategoryCachedImpl("Assert", &_transitionToPresentationController_withTransitionCoordinator____s_category) + 8);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v69 = self;
      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "transitionViewForCurrentTransition is not set! (%@)", buf, 0xCu);
    }
  }

  v37 = [(UIPresentationController *)self _transitionViewForCurrentTransition];

  if (v37)
  {
    v38 = [(UIPresentationController *)self _transitionViewForCurrentTransition];
    v39 = v38[2]();

    [v7 setState:5];
    v40 = [(UIPresentationController *)self _currentPresentationSuperview];
    [v7 _setCurrentPresentationSuperview:v40];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke;
    v62[3] = &unk_1E70F43C8;
    v41 = v7;
    v63 = v41;
    v42 = v40;
    v66 = v18;
    v67 = v48;
    v64 = v42;
    v65 = self;
    [UIView performWithoutAnimation:v62];
    v8 = v49;
    [(_UIPresentationControllerVisualStyle *)self->_visualStyle runAlongsideTransitionToPresentationController:v41 transitionCoordinator:v49];
    v43 = [v41 _visualStyle];
    [v43 runAlongsideTransitionFromPresentationController:self transitionCoordinator:v49];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_2;
    v58[3] = &unk_1E7101978;
    v59 = v41;
    v60 = v42;
    v61 = self;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __90__UIPresentationController__transitionToPresentationController_withTransitionCoordinator___block_invoke_4;
    v50[3] = &unk_1E71019A0;
    v51 = v59;
    v52 = self;
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
    v8 = v49;
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

- (id)_parentPresentationControllerImmediate:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPresentationController *)self presentingViewController];
  v5 = [v4 _existingPresentationControllerImmediate:v3 effective:1 includesRoot:1];

  return v5;
}

- (BOOL)_presentedViewControllerProvidesContentScrollView
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = [v3 _isTVSearchControllerContainer];

  if (v4)
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

- (void)_windowSceneDidUpdateEffectiveGeometry:(id)a3
{
  v18 = a3;
  v4 = [v18 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v18;
  if (isKindOfClass)
  {
    v7 = [v18 object];
    v8 = [(UIPresentationController *)self presentingViewController];
    if ([v8 isViewLoaded])
    {
      v9 = [(UIPresentationController *)self presentingViewController];
      v10 = [v9 view];
      v11 = [v10 _window];
      v12 = [v11 windowScene];

      if (v12 == v7)
      {
        [(UIPresentationController *)self _presentingViewControllerWindowSceneDidUpdateEffectiveGeometry:v7];
      }
    }

    else
    {
    }

    v13 = [(UIPresentationController *)self presentedViewController];
    if ([v13 isViewLoaded])
    {
      v14 = [(UIPresentationController *)self presentedViewController];
      v15 = [v14 view];
      v16 = [v15 _window];
      v17 = [v16 windowScene];

      if (v17 == v7)
      {
        [(UIPresentationController *)self _presentedViewControllerWindowSceneDidUpdateEffectiveGeometry:v7];
      }
    }

    else
    {
    }

    v6 = v18;
  }
}

+ (UIEdgeInsets)_statusBarOverlapAndMarginInfoForView:(id)a3 inWindow:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = [v6 windowScene];
  v10 = [v9 _usesSceneSettingBasedSafeAreaInsets];

  if (v6)
  {
    v11 = *&__SplashBoardOverrideStatusBarHeight;
    if (*&__SplashBoardOverrideStatusBarHeight != 1.79769313e308)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = [UIApp _appAdoptsUISceneLifecycle];
    if (*&__SplashBoardOverrideStatusBarHeight == 1.79769313e308)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *&__SplashBoardOverrideStatusBarHeight;
    }

    if (*&__SplashBoardOverrideStatusBarHeight != 1.79769313e308 || (v12 & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  v11 = 0.0;
  if (([UIApp _isStatusBarEffectivelyHiddenForContentOverlayInsetsForWindow:v6] & 1) == 0 && v8 != 3)
  {
    v13 = [(UIView *)v5 __viewDelegate];
    v14 = v13;
    if (v13)
    {
      [v13 _viewFrameInWindowForContentOverlayInsetsCalculation];
    }

    else
    {
      [v5 bounds];
      [v5 convertRect:v6 toView:?];
    }

    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = [v6 windowScene];
    [v23 _safeAreaInsetsForInterfaceOrientation:1];
    v25 = v24;

    if (_UIViewControllerModernContentOverlayInsetsPropagation())
    {
      if ((v10 & 1) == 0)
      {
        v26 = __UIStatusBarManagerForWindow(v6);
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
      [v6 bounds];
      if (MinY >= CGRectGetMinY(v41))
      {
        v42.origin.x = v19;
        v42.origin.y = v20;
        v42.size.width = v21;
        v42.size.height = v22;
        MaxY = CGRectGetMaxY(v42);
        [v6 bounds];
        if (MaxY <= CGRectGetMaxY(v43))
        {
          if ((v10 & 1) == 0)
          {
            v30 = __UIStatusBarManagerForWindow(v6);
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
  [UIViewController _horizontalContentMarginForView:v5];
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

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4
{
  v7 = [(UIPresentationController *)self _rootPresentingViewControllerForNestedPresentation];
  if ([v7 _providesCustomBasePresentationInsets])
  {
    v8 = v7;
  }

  else
  {
    v8 = [(UIPresentationController *)self presentedViewController];
  }

  v9 = v8;
  v10 = [(UIPresentationController *)self presentedView];
  v11 = [v10 window];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(UIPresentationController *)self presentingViewController];
    v13 = [v14 _window];
  }

  v15 = _UIPresentationControllerBaseContentInsetsForControllersAndViewInWindow(self, v9, v10, v13, a3, a4);
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

- (void)runTransitionForCurrentStateAnimated:(BOOL)a3 handoffData:(id)a4
{
  v4 = a3;
  v87 = *MEMORY[0x1E69E9840];
  v58 = a4;
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

  v64 = [(UIPresentationController *)self presentedViewController];
  state = self->_state;
  v57 = state == 1;
  if (state == 1)
  {
    v65 = v64;
    presentingViewController = self->_presentingViewController;
  }

  else
  {
    v65 = self->_presentingViewController;
    presentingViewController = v64;
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
  v18 = [(UIViewController *)v66 _window];
  v60 = [v18 _delegateViewController];
  if (v17)
  {
    v19 = [(UIViewController *)self->_presentingViewController presentingViewController];
    if (v19)
    {
      self->_isDisconnectedRoot = 0;
      p_isDisconnectedRoot = &self->_isDisconnectedRoot;
    }

    else
    {
      v23 = [(UIViewController *)self->_presentingViewController _rootAncestorViewController];
      if (v60 == v23)
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
      v25 = [v64 splitViewController];
      v26 = v25 == 0;

      if (v26)
      {
        if (*p_isDisconnectedRoot)
        {
          v27 = v60;
          [v18 _addRotationViewController:v27];
          if (v64)
          {
            objc_storeWeak((v64 + 120), v27);
          }

          [v18 _setDelegateViewController:?];
          v27[47] &= ~0x80uLL;

          *(v64 + 376) |= 0x80uLL;
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
    v21 = v64;
    if (v60 == v64)
    {
      v22 = [(UIViewController *)v64 _previousRootViewController];
      [v18 _removeRotationViewController:v22];
      [v18 _setDelegateViewController:v22];
      if (v22)
      {
        v22[47] |= 0x80uLL;
      }

      v21 = v64;
    }

    if (v21)
    {
      objc_storeWeak((v21 + 120), 0);
      v21 = v64;
    }

    *(v21 + 376) &= ~0x80uLL;
  }

  v28 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  [(_UIViewControllerTransitionContext *)v28 _setAnimator:self->_currentTransitionController];
  [(_UIViewControllerTransitionContext *)v28 _setIsAnimated:v4];
  [(_UIViewControllerOneToOneTransitionContext *)v28 _setFromViewController:v66];
  [(_UIViewControllerOneToOneTransitionContext *)v28 _setToViewController:v65];
  v29 = [(UIPresentationController *)self _currentInteractionController];
  [(_UIViewControllerTransitionContext *)v28 _setInteractor:v29];

  [(_UIViewControllerTransitionContext *)v28 _setPresentationStyle:[(UIPresentationController *)self presentationStyle]];
  -[_UIViewControllerOneToOneTransitionContext _setIsDeferred:](v28, "_setIsDeferred:", [objc_opt_class() _shouldDeferTransitions]);
  v30 = [(UIPresentationController *)self _currentInteractionController];
  v61 = v30 != 0;

  v31 = objc_opt_class();
  v59 = class_getName(v31);
  if (v61 | ![(UIPresentationController *)self _shouldDisableInteractionDuringTransitions])
  {
    v32 = 0;
  }

  else
  {
    v33 = [v18 windowScene];
    objc_storeWeak(&self->_windowSceneIgnoringEvents, v33);

    v34 = objc_opt_class();
    v35 = class_getName(v34);
    v36 = objc_opt_class();
    v37 = class_getName(v36);
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p> beginning transition for presentation", v59, self];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"from: <%s: %p> to: <%s: %p>", v35, v66, v37, v65];;
    v39 = MEMORY[0x1E696AEC0];
    v40 = v38;
    v41 = [v38 UTF8String];
    v42 = v32;
    v43 = [v39 stringWithFormat:@"%s %s", v41, objc_msgSend(v32, "UTF8String")];
    WeakRetained = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);
    [WeakRetained _beginIgnoringInteractionEventsForReason:v43];
  }

  [v18 beginDisablingInterfaceAutorotation];
  v45 = [v18 windowScene];
  v46 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v45];

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
      v48 = [(_UIViewControllerTransitionContext *)v28 _transitionCoordinator];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __77__UIPresentationController_runTransitionForCurrentStateAnimated_handoffData___block_invoke_2;
      v78[3] = &unk_1E7101880;
      v79 = v28;
      v80 = v47;
      [v48 notifyWhenInteractionChangesUsingBlock:v78];
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
  v51 = v18;
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
  v55 = v58;
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

- (BOOL)_shouldCallAppearanceCallbacksFor:(id)a3
{
  v4 = a3;
  v5 = [(UIPresentationController *)self presentedViewController];

  if (v5 == v4)
  {
    v8 = [(UIPresentationController *)self _shouldDisableAppearanceCallbacksForPresentedViewController];
LABEL_6:
    v7 = !v8;
    goto LABEL_7;
  }

  v6 = [(UIPresentationController *)self presentingViewController];

  if (v6 == v4)
  {
    v8 = [(UIPresentationController *)self _shouldDisablePresentersAppearanceCallbacks];
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
    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"<%@: %p>", v6, v4];
  }

  else
  {
    v7 = @"(nil)";
  }

  v8 = [v2 stringWithString:v7];

  return v8;
}

- (void)_enableOcclusion:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(UIPresentationController *)self presentedViewController];
  v6 = [v5 view];

  v7 = [(UIPresentationController *)self presentingViewController];
  v8 = [v7 view];

  v9 = [(UIPresentationController *)self _parentPresentationController];
  v10 = [v9 presentingViewController];

  if (v10)
  {
    [v8 setTintAdjustmentMode:!v3];
    v11 = +[_UIHDRUsageCoordinator sharedInstance];
    [(_UIHDRUsageCoordinator *)v11 enableHDRSuppression:v3 inViewHierarchy:v8];
  }

  else if (v3)
  {
    [v8 _beginOcclusion:self suppressHDRIfNecessary:{-[UIPresentationController _shouldSuppressHDRDuringPresentation](self, "_shouldSuppressHDRDuringPresentation")}];
  }

  else
  {
    [v8 _endOcclusion:self];
  }

  [v6 setTintAdjustmentMode:v3];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [(UIPresentationController *)self _passthroughViews];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) setTintAdjustmentMode:v3];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)_beginOcclusionIfNecessary:(BOOL)a3
{
  v3 = a3;
  if ([(UIPresentationController *)self _shouldOccludeDuringPresentation])
  {
    v5 = [(UIPresentationController *)self presentingViewController];
    v6 = [v5 _transitionCoordinator];

    if (v6)
    {
      v7 = [(UIPresentationController *)self presentingViewController];
      v8 = [v7 view];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__UIPresentationController__beginOcclusionIfNecessary___block_invoke;
      v11[3] = &unk_1E71018A8;
      v11[4] = self;
      v12 = v3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__UIPresentationController__beginOcclusionIfNecessary___block_invoke_2;
      v9[3] = &unk_1E71018A8;
      v9[4] = self;
      v10 = v3;
      [v6 animateAlongsideTransitionInView:v8 animation:v11 completion:v9];
    }

    else
    {
      [(UIPresentationController *)self _enableOcclusion:v3];
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
  v3 = [(UIPresentationController *)self _presentationView];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];
  snapshotOverlayView = self->_snapshotOverlayView;
  self->_snapshotOverlayView = v4;

  v6 = [(UIPresentationController *)self _presentationView];
  [v6 addSubview:self->_snapshotOverlayView];
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3
{
  [(UIPresentationController *)self _frameForTransitionViewInPresentationSuperview:a3 inWindow:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3 inWindow:(id)a4
{
  [a3 bounds];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_initViewHierarchyForPresentationSuperview:(id)a3 inWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPresentationController *)self presentingViewController];
  v9 = [v8 view];

  v10 = [v9 superview];
  v11 = [v10 subviews];
  v25 = [v11 indexOfObjectIdenticalTo:v9];

  v12 = [UITransitionView alloc];
  v24 = v6;
  [(UIPresentationController *)self _frameForTransitionViewInPresentationSuperview:v6 inWindow:v7];
  v13 = [(UITransitionView *)v12 initWithFrame:?];
  [(UITransitionView *)v13 setDelegate:self];
  [(UIView *)v13 setAutoresizingMask:18];
  [(UITransitionView *)v13 setIgnoreDirectTouchEvents:[(UIPresentationController *)self _containerIgnoresDirectTouchEvents]];
  [(UIView *)v13 setClipsToBounds:0];
  [(UIView *)v13 _setCanBeParentTraitEnvironment:0];
  v23 = v7;
  objc_initWeak(location, v7);
  objc_initWeak(&from, self);
  objc_initWeak(&v32, v10);
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(UIPresentationController *)self description];
  v16 = [(UIPresentationController *)self presentedViewController];
  v17 = [v16 description];
  v18 = [(UIPresentationController *)self presentingViewController];
  v19 = [v18 description];
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

- (void)_presentationTransitionDidEnd:(void *)a1
{
  if (a1)
  {
    [a1 presentationTransitionDidEnd:a2];
    v4 = [a1 _transitionDelegate];
    [v4 _presentationControllerDidEndPresentationTransition:a1 completed:a2];
  }
}

- (void)_dismissalTransitionDidEnd:(void *)a1
{
  if (a1)
  {
    [a1 dismissalTransitionDidEnd:a2];
    v4 = [a1 _transitionDelegate];
    [v4 _presentationControllerDidEndDismissalTransition:a1 completed:a2];
  }
}

- (void)_sendPresentationControllerNotification:(id)a3 userInfo:(id)a4
{
  v6 = MEMORY[0x1E696AD88];
  v7 = a4;
  v8 = a3;
  v10 = [v6 defaultCenter];
  v9 = [(UIPresentationController *)self presentedViewController];
  [v10 postNotificationName:v8 object:v9 userInfo:v7];
}

- (CGRect)_frameOfPresentedViewControllerViewInSuperview
{
  v2 = [(UIPresentationController *)self _presentationView];
  [v2 bounds];
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
  v2 = [(UIPresentationController *)self _visualStyle];
  v3 = [v2 preferredAnimationControllerForPresentation:1];

  return v3;
}

- (id)_preferredAnimationControllerForDismissal
{
  v2 = [(UIPresentationController *)self _visualStyle];
  v3 = [v2 preferredAnimationControllerForPresentation:0];

  return v3;
}

- (UIModalPresentationStyle)presentationStyle
{
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 modalPresentationStyle];
  }

  else
  {
    v4 = UIModalPresentationNone;
  }

  return v4;
}

- (UIModalPresentationStyle)adaptivePresentationStyle
{
  v3 = [(UIPresentationController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v4 = [v3 adaptivePresentationStyleForPresentationController:self], (v4 + 1) <= 6) ? (v5 = ((1 << (v4 + 1)) & 0x43) == 0) : (v5 = 1), v5))
  {
    v6 = [(UIPresentationController *)self traitCollection];
    v7 = [v6 traitCollectionByModifyingTraits:&__block_literal_global_149];

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
  v5 = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 adaptivePresentationStyleForPresentationController:self traitCollection:v4] + 1;
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

  v8 = [v5 adaptivePresentationStyleForPresentationController:self];
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

- (BOOL)_shouldAdaptFromTraitCollection:(id)a3 toTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dyld_program_sdk_at_least())
  {
    v8 = [(UIPresentationController *)self adaptivePresentationStyleForTraitCollection:v7];
    if (([(UIPresentationController *)self _isAdapted]^ (v8 != UIModalPresentationNone)))
    {
      v9 = 1;
    }

    else
    {
      v11 = [(UIPresentationController *)self _activePresentationController];
      v9 = v8 != [v11 presentationStyle];
    }
  }

  else
  {
    v10 = [v6 horizontalSizeClass];
    v9 = v10 != [v7 horizontalSizeClass];
  }

  return v9;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v19 = a4;
  v7 = [(UIPresentationController *)self presentedViewController];
  v8 = v7;
  if ((*(v7 + 382) & 0x20) != 0)
  {
    v11 = [v7 _existingView];
    [v11 frame];
    v9 = v12;
    v10 = v13;
  }

  else
  {
    v9 = *(v7 + 440);
    v10 = *(v7 + 448);
  }

  [(UIPresentationController *)self sizeForChildContentContainer:v8 withParentContainerSize:width, height];
  v16 = v15;
  v17 = v14;
  if (v9 != v15 || v10 != v14)
  {
    goto LABEL_13;
  }

  if (v19)
  {
    [v19 targetTransform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  if (!CGAffineTransformIsIdentity(&v20))
  {
LABEL_13:
    [v8 viewWillTransitionToSize:v19 withTransitionCoordinator:{v16, v17}];
    *(v8 + 55) = v16;
    *(v8 + 56) = v17;
  }
}

- (void)_setPreferredContentSize:(CGSize)a3
{
  if (self->_preferredContentSize.width != a3.width || self->_preferredContentSize.height != a3.height)
  {
    self->_preferredContentSize = a3;
    v6 = [(UIPresentationController *)self _parentPresentationController];
    if (v6)
    {
      v8 = v6;
      v7 = [(UIPresentationController *)self shouldPresentInFullscreen];
      v6 = v8;
      if (!v7)
      {
        [v8 preferredContentSizeDidChangeForChildContentContainer:self];
        v6 = v8;
      }
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = [(UIPresentationController *)self presentedContentContainer];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (![(UIPresentationController *)self shouldRemovePresentersView])
  {
    v9 = [(UIPresentationController *)self presentingViewController];
    [v9 preferredContentSize];
    v11 = v10;
    v13 = v12;

    if (v11 == *MEMORY[0x1E695F060] && v13 == *(MEMORY[0x1E695F060] + 8))
    {
      v15 = [(UIPresentationController *)self presentingViewController];
      v16 = [v15 view];
      [v16 bounds];
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

- (void)_setPresentingViewController:(id)a3
{
  v5 = a3;
  if (self->_presentingViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_presentingViewController, a3);
    [(UIPresentationController *)self _updateTraitsIfNecessary];
    v5 = v6;
  }
}

- (void)_setPresentedViewController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->__presentedViewControllerStoredWeakly)
  {
    objc_storeWeak(&self->_weakPresentedViewController, v5);
  }

  else
  {
    objc_storeStrong(&self->_presentedViewController, a3);
  }
}

- (void)_setPresentedViewControllerStoredWeakly:(BOOL)a3
{
  if (self->__presentedViewControllerStoredWeakly != a3)
  {
    self->__presentedViewControllerStoredWeakly = a3;
    if (a3)
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

- (id)_presentationControllerForTraitCollection:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    v5 = [(UIPresentationController *)self adaptivePresentationStyleForTraitCollection:v4];
  }

  else
  {
    v6 = [v4 horizontalSizeClass];

    if (v6 != 1)
    {
LABEL_25:
      v7 = self;
      goto LABEL_26;
    }

    v5 = [(UIPresentationController *)self adaptivePresentationStyle];
  }

  if (v5 == UIModalPresentationNone || [(UIPresentationController *)self presentationStyle]== UIModalPresentationFullScreen || [(UIPresentationController *)self presentationStyle]== UIModalPresentationOverFullScreen || [(UIPresentationController *)self presentationStyle]== 17)
  {
    goto LABEL_25;
  }

  v7 = 0;
  if (v5 > UIModalPresentationCustom)
  {
    if (v5 != UIModalPresentationOverFullScreen && v5 != 17)
    {
      goto LABEL_24;
    }

    v12 = _UIOverFullscreenPresentationController;
    goto LABEL_18;
  }

  if (v5 == UIModalPresentationFullScreen)
  {
    v12 = _UIFullscreenPresentationController;
LABEL_18:
    v13 = [v12 alloc];
    v14 = [(UIPresentationController *)self presentedViewController];
    v15 = [(UIPresentationController *)self presentingViewController];
    v7 = [v13 initWithPresentedViewController:v14 presentingViewController:v15];
    goto LABEL_19;
  }

  if (v5 != UIModalPresentationFormSheet)
  {
    goto LABEL_24;
  }

  v8 = [(UIPresentationController *)self _adaptiveFormSheetPresentationController];
  if (!v8)
  {
    v22 = [_UIFormSheetPresentationController alloc];
    v15 = [(UIPresentationController *)self presentedViewController];
    v23 = [(UIPresentationController *)self presentingViewController];
    v7 = [(UISheetPresentationController *)v22 initWithPresentedViewController:v15 presentingViewController:v23];

    v14 = 0;
LABEL_19:

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_24:

    goto LABEL_25;
  }

  v9 = v8;
  v10 = [(UIPresentationController *)self presentingViewController];
  [v9 _setPresentingViewController:v10];

  v11 = [(UIPresentationController *)self presentedViewController];
  [v9 _setPresentedViewController:v11];

  v7 = v9;
LABEL_20:
  v16 = [(UIPresentationController *)self shouldPresentInFullscreen];
  if (v16 != [(UIPresentationController *)v7 shouldPresentInFullscreen])
  {
    goto LABEL_24;
  }

  v17 = objc_opt_class();
  if (v17 == objc_opt_class())
  {
    goto LABEL_24;
  }

  v18 = [(UIPresentationController *)self _sourceViewController];
  [(UIPresentationController *)v7 _setSourceViewController:v18];

  v19 = [(UIPresentationController *)self delegate];
  [(UIPresentationController *)v7 setDelegate:v19];
  v20 = [(UIPresentationController *)self presentedViewController];
  [v20 _presentationController:self prepareAdaptivePresentationController:v7];

  if (objc_opt_respondsToSelector())
  {
    [v19 presentationController:self prepareAdaptivePresentationController:v7];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v19 _presentationController:self prepareAdaptivePresentationController:v7];
  }

LABEL_26:

  return v7;
}

- (void)_sendDelegateWillPresentWithAdaptiveStyle:(int64_t)a3 transitionCoordinator:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentationController:self willPresentWithAdaptiveStyle:a3 transitionCoordinator:v7];
  }
}

- (id)_presentedViewControllerForPresentationController:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained presentationController:self viewControllerForAdaptivePresentationStyle:{objc_msgSend(v5, "presentationStyle")}], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(UIPresentationController *)self presentedViewController];
  }

  return v7;
}

- (id)_appearanceContainer
{
  if ([(UIPresentationController *)self shouldPresentInFullscreen])
  {
    v3 = [(UIPresentationController *)self containerView];
    v4 = [v3 _window];
  }

  else
  {
    v4 = [(UIPresentationController *)self presentingViewController];
  }

  return v4;
}

- (void)_collectExistingTraitCollectionsForTraitTracking:(id)a3
{
  if (self->_lastNotifiedTraitCollection)
  {
    (*(a3 + 2))(a3);
  }
}

- (id)_compatibleParentTraitEnvironment
{
  if ([(UIPresentationController *)self shouldPresentInFullscreen])
  {
    v3 = [(UIPresentationController *)self presentedViewController];
    v4 = [v3 _window];
  }

  else
  {
    v4 = [(UIPresentationController *)self presentingViewController];
  }

  return v4;
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(UIPresentationController *)self traitCollection];
  if (dyld_program_sdk_at_least())
  {
    if ([v4 __isKindOfUIViewController])
    {
      v6 = [(UIPresentationController *)self presentedViewController];

      if (v6 == v4)
      {
        v7 = [(UIPresentationController *)self _traitCollectionForPresentedViewController:v4 defaultTraitCollectionForChildEnvironment:v5];

        v5 = v7;
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
    v11 = v4;
    v8 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v10];

    v5 = v8;
  }

  return v5;
}

- (void)_childTraitTransformDidChange
{
  [(UIPresentationController *)self _invalidateTraitCollectionsOfDescendants:?];
  traitChangeRegistry = self->_traitChangeRegistry;

  [(_UITraitChangeRegistry *)traitChangeRegistry invalidateAuxiliaryChildren];
}

- (void)_invalidateTraitCollectionsOfDescendants:(void *)a1
{
  if (!a1)
  {
    return;
  }

  v14 = [a1 _presentedViewForOverrideTraits];
  if (v14)
  {
    _UIViewInvalidateTraitCollectionAndSchedulePropagation(v14, 0, v4, v5);
  }

  v6 = [a1 presentedViewController];
  v7 = [v6 _existingView];
  if (v7)
  {
    v10 = a2 ^ 1;
    if (!v14)
    {
      v10 = 0;
    }

    if (v7 == v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    _UIViewInvalidateTraitCollectionAndSchedulePropagation(v7, v11, v8, v9);
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  [(UIViewController *)v6 _updateTraitsIfNecessarySchedulingPropagation:?];
  if (a2)
  {
LABEL_13:
    if (v14)
    {
      v12 = [(int8x16_t *)v14 _window];

      if (v12)
      {
        [(UIView *)v14 _updateTraitsIfNeededWithBehavior:?];
      }
    }

    if (v7)
    {
      if (v7 != v14)
      {
        v13 = [(int8x16_t *)v7 _window];

        if (v13)
        {
          [(UIView *)v7 _updateTraitsIfNeededWithBehavior:?];
        }
      }
    }
  }

LABEL_20:
}

- (void)_recordTraitUsage:(__int128 *)a3 trackedStateDiff:(unint64_t)a4 insideMethod:(const char *)a5 withInvalidationAction:
{
  if (a1)
  {
    if (!a1[4])
    {
      if (_UITraitTokenSetCount(a2))
      {
        v10 = objc_alloc_init(_UITraitChangeRegistry);
        v11 = a1[4];
        a1[4] = v10;
      }
    }

    [(_UITraitChangeRegistry *)a1[4] recordTraitUsage:a2 forTraitEnvironment:a1 insideMethod:a4 withInvalidationAction:a5];
    v12 = *a3;
    v13 = *(a3 + 2);
    _UILogStateTracking(a2, a1, &v12, a4, a5);
  }
}

- (id)registerForTraitChanges:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v8 = [(UIPresentationController *)self _registerForTraitTokenChanges:v7 withHandler:v6];

  return v8;
}

- (id)registerForTraitChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v10 = [(UIPresentationController *)self _registerForTraitTokenChanges:v9 withTarget:v8 action:a5];

  return v10;
}

- (id)registerForTraitChanges:(id)a3 withAction:(SEL)a4
{
  v6 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v7 = [(UIPresentationController *)self _registerForTraitTokenChanges:v6 withTarget:self action:a4];

  return v7;
}

- (id)_registerForTraitTokenChanges:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v9 = objc_alloc_init(_UITraitChangeRegistry);
    v10 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v9;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v11 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:v6 withHandler:v7];

  return v11;
}

- (id)_registerForTraitTokenChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v11 = objc_alloc_init(_UITraitChangeRegistry);
    v12 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v11;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v13 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:v8 withTarget:v9 action:a5 targetIsSender:v9 == self];

  return v13;
}

- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)a3
{
  v4 = a3;
  traitChangeRegistry = self->_traitChangeRegistry;
  v8 = v4;
  if (!traitChangeRegistry)
  {
    v6 = objc_alloc_init(_UITraitChangeRegistry);
    v7 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v6;

    v4 = v8;
    traitChangeRegistry = self->_traitChangeRegistry;
  }

  [(_UITraitChangeRegistry *)traitChangeRegistry registerAuxiliaryChildEnvironmentForTraitInvalidations:v4];
}

- (void)_compatibleUpdateTraitsIfNecessary
{
  v7 = [(UIPresentationController *)self presentedViewController];
  if (v7 && dyld_program_sdk_at_least())
  {
    v3 = [(UIPresentationController *)self _presentedViewForOverrideTraits];
    [(UIView *)v3 _invalidateTraitCollectionAsRoot];

    v6 = v7;
  }

  else
  {
    v6 = self;
  }

  [(UIPresentationController *)v6 _updateTraitsIfNecessary];
}

- (void)_updateTraitsIfNecessaryInitiatingPropagation:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  p_lastNotifiedTraitCollection = &self->_lastNotifiedTraitCollection;
  v6 = self->_lastNotifiedTraitCollection;
  v7 = [(UIPresentationController *)self traitCollection];
  v8 = v7;
  if (v6 != v7 && ![(UITraitCollection *)v7 isEqual:v6])
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
      [(UIPresentationController *)self _invalidateTraitCollectionsOfDescendants:v3];
    }
  }
}

- (void)setOverrideTraitCollection:(UITraitCollection *)overrideTraitCollection
{
  v4 = overrideTraitCollection;
  if (v4 || self->_traitOverrides)
  {
    v6 = v4;
    v5 = [(UIPresentationController *)self _traitOverrides];
    [(_UITraitOverrides *)v5 _replaceOverrideTraitCollection:v6];

    v4 = v6;
  }
}

- (void)_setInternalOverrideTraitCollection:(id)a3
{
  v4 = a3;
  if (v4 || self->_traitOverrides)
  {
    v7 = v4;
    v5 = [(UIPresentationController *)self _traitOverrides];
    v6 = [(_UITraitOverrides *)v5 _overridesAppliedBefore];
    [(_UITraitOverrides *)v6 _replaceOverrideTraitCollection:v7];

    v4 = v7;
  }
}

- (UITraitCollection)_internalOverrideTraitCollection
{
  v2 = [(_UITraitOverrides *)&self->_traitOverrides->super.isa _overridesAppliedBefore];
  v3 = [(_UILabelConfiguration *)v2 _content];

  return v3;
}

- (BOOL)_shouldPerformWillTransitionToTraitCollectionForParent:(id)a3
{
  v4 = a3;
  v5 = [(UIPresentationController *)self _parentTraitEnvironment];

  if (v5 == v4)
  {
    v7 = 1;
  }

  else if (_UIPresentationControllersInheritTraitsFromViewHierarchy())
  {
    v6 = [(UIPresentationController *)self _compatibleParentTraitEnvironment];
    v7 = v6 == v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_parent:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  v10 = a4;
  v8 = a5;
  if ([(UIPresentationController *)self _shouldPerformWillTransitionToTraitCollectionForParent:a3])
  {
    v9 = [(UIPresentationController *)self _adaptiveWillTransitionToTraitCollection:v10 withTransitionCoordinator:v8];
  }
}

- (void)_window:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([(UIPresentationController *)self _shouldPerformWillTransitionToTraitCollectionForParent:v10])
  {
    [(UIPresentationController *)self _adaptiveWillTransitionToTraitCollection:v9 withTransitionCoordinator:v8];
  }

  else
  {
    [(UIPresentationController *)self _childPresentationController];
  }
  v11 = ;
  [v11 _window:v10 willTransitionToTraitCollection:v9 withTransitionCoordinator:v8];
}

- (id)_adaptiveWillTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPresentationController *)self traitCollection];
  v9 = [(UIPresentationController *)self presentingViewController];
  v10 = [v9 _adaptedPresentationControllerForTraitCollection:v6 withTransitionCoordinator:v7];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;
  v13 = v6;
  p_isa = &v12->_traitOverrides->super.isa;
  v15 = v13;
  if (p_isa)
  {
    v15 = [(_UITraitOverrides *)p_isa _traitCollectionByApplyingOverridesToTraitCollection:v13];
  }

  if (v15 != v8 && ([v8 isEqual:v15] & 1) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __95__UIPresentationController__adaptiveWillTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v21 = &unk_1E70F6B40;
    v22 = v12;
    v23 = v8;
    v24 = v15;
    v25 = v7;
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIPresentationController *)self presentedViewController];
  [v8 _parent:self willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
}

- (id)_viewsParticipatingInNavigationControllerTransition
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = [v2 view];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (UIFocusItemContainer)focusItemContainer
{
  v2 = [(UIPresentationController *)self containerView];
  v3 = [v2 superview];

  return v3;
}

- (UIView)preferredFocusedView
{
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = [v2 preferredFocusedView];

  return v3;
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
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = v3;
  if (v3)
  {
    v8[0] = v3;
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

- (BOOL)_gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = self->_backGestureRecognizer == v6 && ([v7 _isGestureType:8] & 1) != 0;

  return v9;
}

- (void)_performBackGesture:(id)a3
{
  v4 = [(UIPresentationController *)self containerView];
  v5 = [v4 _window];
  v8 = [v5 _focusResponder];

  v6 = [(UIPresentationController *)self presentedViewController];
  LODWORD(v5) = [v6 _containsResponder:v8];

  if (v5)
  {
    v7 = [(UIPresentationController *)self presentedViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_disableMenuPressForBackGesture
{
  v3 = [(UIGestureRecognizer *)self->_backGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_backGestureRecognizer];

  backGestureRecognizer = self->_backGestureRecognizer;
  self->_backGestureRecognizer = 0;
}

- (BOOL)_isModal
{
  v3 = [(UIPresentationController *)self _childPresentationController];
  v4 = v3;
  if (!v3 || ![v3 _presentingOrPresented])
  {
    v6 = [(UIPresentationController *)self presentedViewController];
LABEL_6:
    v7 = v6;
    v5 = [v6 isModalInPresentation];

    goto LABEL_7;
  }

  if (([v4 _isModal] & 1) == 0)
  {
    if ([(UIPresentationController *)self shouldRemovePresentersView])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v6 = [(UIPresentationController *)self presentingViewController];
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:

  return v5;
}

- (void)_sendDismissalsAsNeeded
{
  [(UIPresentationController *)self _sendWillDismiss];
  v3 = [(UIPresentationController *)self _definiteTransitionCoordinator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__UIPresentationController__sendDismissalsAsNeeded__block_invoke;
  v4[3] = &unk_1E70F3B98;
  v4[4] = self;
  [v3 animateAlongsideTransition:0 completion:v4];
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

  v4 = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIPresentationController *)self delegate];
    v7 = [v6 presentationControllerShouldDismiss:self];

    return v7;
  }

  else
  {

    return [(UIPresentationController *)self _fallbackShouldDismiss];
  }
}

- (void)_sendWillDismiss
{
  v3 = [(UIPresentationController *)self presentedViewController];
  [v3 _presentationControllerWillDismiss:self];

  v4 = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIPresentationController *)self delegate];
    [v6 presentationControllerWillDismiss:self];
  }

  else
  {

    [(UIPresentationController *)self _sendFallbackWillDismiss];
  }
}

- (void)_sendDidDismiss
{
  v3 = [(UIPresentationController *)self presentedViewController];
  [v3 _presentationControllerDidDismiss:self];

  v4 = [(UIPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIPresentationController *)self delegate];
    [v6 presentationControllerDidDismiss:self];
  }

  else
  {

    [(UIPresentationController *)self _sendFallbackDidDismiss];
  }
}

- (void)_sendDidAttemptToDismiss
{
  v3 = [(UIPresentationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIPresentationController *)self delegate];
    [v5 presentationControllerDidAttemptToDismiss:self];
  }
}

+ (void)_scheduleTransition:(id)a3
{
  v4 = a3;
  if ([a1 _shouldDeferTransitions])
  {
    [UIViewController _scheduleTransition:v4];
  }

  else
  {
    v4[2]();
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

- (void)_enableSubduing:(BOOL)a3
{
  if (a3)
  {
    [(UIPresentationController *)self _beginSubduing];
  }

  else
  {
    [(UIPresentationController *)self _endSubduing];
  }
}

- (void)_beginSubduingIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled() && [(UIPresentationController *)self _shouldSubduePresentingViewControllerDuringPresentation])
  {
    v5 = [(UIPresentationController *)self presentingViewController];
    v6 = [v5 _transitionCoordinator];

    if (v6)
    {
      v7 = [(UIPresentationController *)self presentingViewController];
      v8 = [v7 view];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__UIPresentationController__beginSubduingIfNecessary___block_invoke;
      v11[3] = &unk_1E71018A8;
      v11[4] = self;
      v12 = v3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__UIPresentationController__beginSubduingIfNecessary___block_invoke_2;
      v9[3] = &unk_1E71018A8;
      v9[4] = self;
      v10 = v3;
      [v6 animateAlongsideTransitionInView:v8 animation:v11 completion:v9];
    }

    else
    {
      [(UIPresentationController *)self _enableSubduing:v3];
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