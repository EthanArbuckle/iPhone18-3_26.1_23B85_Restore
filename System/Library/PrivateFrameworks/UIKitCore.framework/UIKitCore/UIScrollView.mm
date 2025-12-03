@interface UIScrollView
+ (id)_implicitAnimationCulprits;
+ (unint64_t)_defaultEdgesScrollingContentIntoSafeArea;
- (BOOL)__canScrollWithoutBouncingYIncludingAdditionalContentInsetAmount:(double)amount;
- (BOOL)_allowsKeyboardEventsToScroll;
- (BOOL)_beginTrackingWithEvent:(id)event;
- (BOOL)_bounceForCarPlayIfNecessary;
- (BOOL)_canCancelContentTouches:(id)touches;
- (BOOL)_canHandleAsyncScrollEvent;
- (BOOL)_canPerformAsyncScrollDecelerationReturningEvent:(id *)event;
- (BOOL)_canScrollIgnoringAncestorPermissionX;
- (BOOL)_canScrollIgnoringAncestorPermissionY;
- (BOOL)_canScrollWithoutBouncingIncludingRevealableContentPaddingTopY;
- (BOOL)_canScrollWithoutBouncingX;
- (BOOL)_canScrollX;
- (BOOL)_canScrollY;
- (BOOL)_canScrubWithTouch:(id)touch;
- (BOOL)_canSkipTraitsAndOverlayUpdatesForViewControllerToNotifyOnLayoutResetState:(BOOL)state;
- (BOOL)_clipsGlyphPathFrame:(CGRect)frame shouldContinueSuperviewTraversal:(BOOL *)traversal;
- (BOOL)_constraintAffectsContentSize:(id)size;
- (BOOL)_contentOffsetIsAtPagingBoundary:(CGPoint)boundary;
- (BOOL)_contentScrollsAlongXAxis;
- (BOOL)_contentScrollsAlongYAxis;
- (BOOL)_delegateShouldPanGestureTryToBegin;
- (BOOL)_effectiveShouldPreventFocusScrollPastContentSize;
- (BOOL)_effectiveShowsHorizontalScrollIndicator;
- (BOOL)_effectiveShowsVerticalScrollIndicator;
- (BOOL)_evaluateWantsConstrainedContentSize;
- (BOOL)_focusCanScrollX;
- (BOOL)_focusCanScrollY;
- (BOOL)_gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_getBouncingDecelerationOffset:(double *)offset forTimeInterval:(double)interval lastUpdateOffset:(double)updateOffset min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)self0;
- (BOOL)_getPagingDecelerationOffset:(CGPoint *)offset forTimeInterval:(double)interval;
- (BOOL)_hasScrollViewWillEndDraggingInvocationsToPerform;
- (BOOL)_isAnimatingScrollTest;
- (BOOL)_isBouncing;
- (BOOL)_isPoint:(CGPoint)point inExpandedIndicatorForAxis:(unint64_t)axis;
- (BOOL)_isPoint:(CGPoint)point inExpandedIndicatorForAxis:(unint64_t)axis containerRect:(CGRect)rect;
- (BOOL)_isRectFullyVisible:(CGRect)visible;
- (BOOL)_ownsAnimationForKey:(id)key ofView:(id)view;
- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginHorizontallyWithEvent:(id)event;
- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginVerticallyWithEvent:(id)event;
- (BOOL)_prefersSolidColorHardPocketForEdge:(unint64_t)edge;
- (BOOL)_preventsDescendentGestureInteractionForTimeInterval:(double)interval;
- (BOOL)_requiresExplicitLayoutMarginsGuideForAttribute:(int64_t)attribute getAttributeForGuide:(int *)guide;
- (BOOL)_scrollToTopIfPossible:(BOOL)possible;
- (BOOL)_scrollViewWillEndDraggingWithDeceleration:(BOOL)deceleration;
- (BOOL)_shouldAutoScroll;
- (BOOL)_shouldBeginScroll;
- (BOOL)_shouldContentOffsetMaintainRelativeDistanceFromSafeArea;
- (BOOL)_shouldTrackImmediatelyWhileDecelerating;
- (BOOL)_shouldUpdateFocusInContext:(id)context;
- (BOOL)_shouldUseStaticScrollBar;
- (BOOL)_smoothScrollApplyPendingAsyncCompletionResultWithUpdateTime:(uint64_t)time outFinishedDecelerating:(_BYTE *)decelerating;
- (BOOL)_startBeingDraggedByChild:(id)child;
- (BOOL)_stopBeingDraggedByChild:(id)child;
- (BOOL)_subviewPreventsSkipLayout:(id)layout;
- (BOOL)_usesLowFidelityPanning;
- (BOOL)_viewIsInsideNavigationController;
- (BOOL)allowsKeyboardScrolling;
- (BOOL)cancelTouchTracking;
- (BOOL)gestureRecognizer:(id)recognizer canPreventGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isDecelerating;
- (BOOL)isScrollAnimating;
- (BOOL)pressGestureRecognizer:(id)recognizer shouldAllowPress:(id)press;
- (BOOL)touchesShouldCancelInContentView:(UIView *)view;
- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset;
- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset contentSize:(CGSize)size skipsAdjustmentIfScrolling:(BOOL)scrolling;
- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset skipsAdjustmentIfScrolling:(BOOL)scrolling;
- (CGPoint)_animatedOriginalOffset;
- (CGPoint)_animatedTargetOffset;
- (CGPoint)_animationTargetContentOffset;
- (CGPoint)_centeredZoomAnchorPointInScene;
- (CGPoint)_clampScrollOffsetToBounds:(CGPoint)bounds;
- (CGPoint)_contentOffsetForLowFidelityScrollInDirection:(CGPoint)direction duration:(double *)duration;
- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)rect;
- (CGPoint)_contentOffsetForScrollingToTop;
- (CGPoint)_contentOffsetOrDeferredContentOffset;
- (CGPoint)_focusTargetOffset;
- (CGPoint)_maximumContentOffset;
- (CGPoint)_maximumContentOffsetForContentSize:(CGSize)size;
- (CGPoint)_maximumContentPoint;
- (CGPoint)_minimumContentOffset;
- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)animated;
- (CGPoint)_offsetToScrollToForArrowPressType:(int64_t)type;
- (CGPoint)_pageDecelerationTarget;
- (CGPoint)_pagingOrigin;
- (CGPoint)_roundedProposedContentOffset:(CGPoint)result;
- (CGPoint)_rubberBandContentOffsetForOffset:(CGPoint)offset outsideX:(BOOL *)x outsideY:(BOOL *)y;
- (CGPoint)_rubberBandingReversalOffsetForOriginalOffset:(CGPoint)offset velocity:(CGPoint)velocity currentPanTranslation:(CGPoint)translation;
- (CGPoint)_velocityForAnimatedScrollFromOffset:(CGPoint)offset toOffset:(CGPoint)toOffset duration:(double)duration;
- (CGPoint)_zoomAnchorPoint;
- (CGPoint)contentAlignmentPoint;
- (CGPoint)indexBarAccessoryView:(id)view contentOffsetForEntry:(id)entry atIndex:(int64_t)index;
- (CGRect)_focusScrollableContentBounds;
- (CGRect)_intelligenceVisibleBounds;
- (CGRect)_layoutGuide:(id)guide adjustedLayoutFrameForFrame:(CGRect)frame;
- (CGRect)_layoutVerticalScrollIndicatorWithBounds:(CGRect)bounds effectiveInset:(UIEdgeInsets)inset contentOffset:(CGPoint)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(BOOL)indicator showing:(BOOL)self0 recalcSize:(BOOL)self1;
- (CGRect)_rectForPageContainingRect:(CGRect)rect;
- (CGRect)_rectForPageContainingView:(id)view;
- (CGRect)_scrollIndicatorContainerRectForAxis:(unint64_t)axis;
- (CGRect)contentFrameForView:(id)view;
- (CGRect)visibleBounds;
- (CGSize)_contentSizeOrDeferredContentSize;
- (CGSize)_interpageSpacing;
- (CGSize)_nsis_contentSize;
- (CGSize)contentSize;
- (CGSize)visibleSize;
- (Class)_intelligenceBaseClass;
- (NSDirectionalEdgeInsets)_directionalAccessoryEdgeInsets;
- (NSString)description;
- (UIEdgeInsets)_autoScrollTouchInsets;
- (UIEdgeInsets)_baseInsetsForAccessoryOnEdge:(int64_t)edge hasCustomClientInsets:(BOOL)insets accessorySize:(double)size additionalInsetFromEdge:(double)fromEdge;
- (UIEdgeInsets)_cachedHorizontalScrollIndicatorBaseInsets;
- (UIEdgeInsets)_cachedVerticalScrollIndicatorBaseInsets;
- (UIEdgeInsets)_collapsableContentPadding;
- (UIEdgeInsets)_computeBaseInsetsForHorizontalScrollIndicatorWithClientInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)_computeBaseInsetsForVerticalScrollIndicatorWithClientInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)_contentInsetForAccessories;
- (UIEdgeInsets)_contentInsetIncludingDecorations;
- (UIEdgeInsets)_contentScrollInset;
- (UIEdgeInsets)_effectiveGradientMaskLengths;
- (UIEdgeInsets)_effectiveHorizontalScrollIndicatorInsets;
- (UIEdgeInsets)_effectiveVerticalScrollIndicatorInsets;
- (UIEdgeInsets)_focusScrollableAreaInsets;
- (UIEdgeInsets)_gradientMaskEdgeInsets;
- (UIEdgeInsets)_gradientMaskLengths;
- (UIEdgeInsets)_pocketInsets;
- (UIEdgeInsets)_revealableContentPadding;
- (UIEdgeInsets)_revealableContentPaddingIncludingContentWithCollapsedAffinity:(BOOL)affinity;
- (UIEdgeInsets)_safeAreaInsetsConsultingAlternativeTopInsetIfApplicable;
- (UIEdgeInsets)_systemContentInset;
- (UIEdgeInsets)_systemContentInsetIncludingAccessories:(BOOL)accessories;
- (UIEdgeInsets)accessoryInsets;
- (UIEdgeInsets)adjustedContentInset;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)scrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (UIOffset)_firstPageOffset;
- (UIOffset)_offsetForCenterOfPossibleZoomView:(id)view withIncomingBoundsSize:(CGSize)size;
- (UIRefreshControl)_refreshControl;
- (UIScrollView)initWithCoder:(id)coder;
- (UIScrollView)initWithFrame:(CGRect)frame;
- (UIScrollViewContentInsetAdjustmentBehavior)contentInsetAdjustmentBehavior;
- (_UIAutoScrollAssistant)_autoScrollAssistant;
- (_UIScrollViewScrollingAnimator)_scrollingAnimator;
- (double)_adjustedHorizontalOffsetPinnedToScrollableBounds:(double)bounds;
- (double)_adjustedVerticalOffsetPinnedToScrollableBounds:(double)bounds;
- (double)_clampedZoomScale:(double)scale allowRubberbanding:(BOOL)rubberbanding;
- (double)_defaultPagingFriction;
- (double)_horizontalScrollIndicatorHeight;
- (double)_iOS_frameForLayoutHorizontalScrollIndicatorWithBounds:(CGFloat)bounds effectiveInset:(CGFloat)inset indicatorInsets:(CGFloat)insets contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(uint64_t)self0 showing:(uint64_t)self1 recalcSize:(uint64_t)self2 verticalIndicatorFrame:(char)self3;
- (double)_iOS_frameForLayoutVerticalScrollIndicatorWithBounds:(double)bounds effectiveInset:(double)inset indicatorInsets:(float64_t)insets contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(double)self0 showing:(double)self1 recalcSize:(double)self2;
- (double)_maxTopOffset;
- (double)_maxTopOffsetAdjustedForRevealableContentPadding:(double)padding;
- (double)_offsetForRubberBandOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range;
- (double)_offsetWithoutDecorationForRubberBandOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range;
- (double)_rubberBandOffsetForOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside;
- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside;
- (double)_rubberBandingReversalOffsetForOriginalOffset:(double)offset contentMin:(double)min contentMax:(double)max contentOffset:(double)contentOffset velocity:(double)velocity currentDelta:(double)delta rubberBandingCoefficient:(double)coefficient;
- (double)_scrollIndicatorAdditionalInset;
- (double)_systemInsetAdjustmentForAdjustmentTypeIdentifier:(id)identifier;
- (double)_systemInsetAdjustmentSum;
- (double)_verticalScrollIndicatorWidth;
- (double)_zoomRubberBandScaleForScale:(double)result;
- (double)_zoomScaleForRubberBandScale:(double)result;
- (double)_zoomScaleFromPresentationLayer:(BOOL)layer;
- (float)_zoomAnimationDurationForScale:(double)scale;
- (id)_actingParentScrollView;
- (id)_assertionController;
- (id)_asyncDeliveryTargetForScrollEvent:(id)event;
- (id)_backgroundShadowForSlideAnimation;
- (id)_boundingPathForSubtree;
- (id)_constraintsFromContentSize;
- (id)_createStaticScrollBar;
- (id)_edgeEffectForEdge:(unint64_t)edge;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_enclosingViewController;
- (id)_focusFastScrollingIndexBarEntries;
- (id)_focusScrollBoundaryMetricsForItem:(id)item;
- (id)_getDelegateZoomView;
- (id)_keyForAccessoryViewAtEdge:(int64_t)edge;
- (id)_layoutGuideOfType:(int64_t)type createIfNecessary:(BOOL)necessary;
- (id)_layoutVariablesWithAmbiguousValue;
- (id)_observerImplementingWillEndDraggingMethod;
- (id)_overrideGeometryViewForEdge:(unint64_t)edge;
- (id)_parentScrollView;
- (id)_pocketColorForEdge:(unint64_t)edge;
- (id)_pocketDescription;
- (id)_relativePanView;
- (id)_scrollDetentOffsets;
- (id)_scrollTestExtraResults;
- (id)_takeScrollAnimatingAssertionWithReason:(id)reason;
- (id)_uili_existingObservationEligibleLayoutVariables;
- (id)accessoryViewAtEdge:(int64_t)edge;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)nsli_contentHeightVariable;
- (id)nsli_contentWidthVariable;
- (id)nsli_contentXOffsetVariable;
- (id)nsli_contentYOffsetVariable;
- (id)nsli_layoutMarginsItem;
- (int64_t)_effectiveIndicatorStyle;
- (int64_t)_pocketPreferredUserInterfaceStyleForEdge:(unint64_t)edge;
- (int64_t)_pocketStyleForEdge:(unint64_t)edge;
- (int64_t)_scrubbingForPoint:(CGPoint)point touch:(id)touch;
- (int64_t)_scrubbingForPoint:(CGPoint)point touchType:(int64_t)type;
- (uint64_t)_cancelTouchDelayGestureRecognizerIfNecessary;
- (uint64_t)_layoutHorizontalScrollIndicatorWithBounds:(double)bounds effectiveInset:(double)inset contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(double)indicator showing:(uint64_t)self0 recalcSize:(uint64_t)self1 verticalIndicatorFrame:(uint64_t)self2;
- (unint64_t)_abuttedEdgesForContentOffset:(CGPoint)offset;
- (unint64_t)_abuttedPagingEdges;
- (unint64_t)_contentScrollableAxes;
- (unint64_t)_currentlyAbuttedContentEdges;
- (unint64_t)_edgesApplyingBaseInsetsToScrollIndicatorInsets;
- (unint64_t)_edgesApplyingSafeAreaInsetsToContentInsetForContentSize:(CGSize)size;
- (unint64_t)_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets;
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (unint64_t)_edgesScrollingContentIntoSafeArea;
- (unint64_t)_focusScrollOffsetResolverForFocusMovement:(id)movement;
- (unint64_t)_hiddenPocketEdges;
- (unint64_t)_scrollableEdges;
- (void)_accumulateViewConstraintsIntoArray:(id)array;
- (void)_activateZoomFeedback;
- (void)_addContentSubview:(id)subview atBack:(BOOL)back;
- (void)_addRefreshInset:(double)inset;
- (void)_addScrollViewScrollObserver:(id)observer;
- (void)_adjustBackgroundShadowsForContentSizeForcedVisible:(BOOL)visible;
- (void)_adjustBackgroundShadowsForContentSizeForcedVisible:(BOOL)visible withOffset:(double)offset;
- (void)_adjustContentOffsetIfNecessary;
- (void)_adjustContentSizeForView:(id)view atScale:(double)scale;
- (void)_adjustCrossingConstraintsIfNecessaryForOldContentInset:(UIEdgeInsets)inset;
- (void)_adjustForAutomaticKeyboardInfo:(id)info animated:(BOOL)animated lastAdjustment:(double *)adjustment;
- (void)_adjustScrollIndicatorsIfNeeded:(int)needed forceRebuild:;
- (void)_adjustScrollerIndicators:(BOOL)indicators alwaysShowingThem:(BOOL)them;
- (void)_adjustShadowsIfNecessary;
- (void)_adjustShadowsIfNecessaryForOffset:(double)offset;
- (void)_adjustStartOffsetForGrabbedBouncingScrollView;
- (void)_allowsKeyboardScrollingDidUpdate;
- (void)_animateScrollToContentOffset:(CGPoint)offset animationCurve:(int)curve animationAdjustsForContentOffsetDelta:(BOOL)delta animation:(id)animation animationConfigurator:(id)configurator;
- (void)_applyAutomaticAdjustedContentOffset:(CGPoint)offset;
- (void)_applyConstrainedContentSizeIfNecessary;
- (void)_asynchronouslyDeliverScrollEvent:(id)event completion:(id)completion;
- (void)_attemptToDragParent:(id)parent forNewBounds:(CGRect)bounds oldBounds:(CGRect)oldBounds;
- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset;
- (void)_beginActivityTrackingIfNeededForReason:(int64_t)reason;
- (void)_beginDeferredContentOffsetTransitionToOffset:(CGPoint)offset contentSize:(CGSize)size;
- (void)_beginDirectManipulationIfNecessaryWithGestureRecognizer:(id)recognizer;
- (void)_beginRefreshing;
- (void)_beginScrollingCursorOverrideIfNecessary;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_bumpTrackingWatchdogTimer;
- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)offset;
- (void)_clearContentOffsetAnimation;
- (void)_clearContentOffsetAnimation:(id)animation;
- (void)_clearParentAdjustment;
- (void)_commitDeferredContentOffsetTransition;
- (void)_commitScrollBounceStatisticsTrackingState;
- (void)_createGestureRecognizersForCurrentTouchLevel;
- (void)_delegateScrollViewAnimationEnded;
- (void)_didAddDependentConstraint:(id)constraint;
- (void)_didBeginDirectManipulationWithScrubbingDirection:(int64_t)direction;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)direction;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didRemoveDependentConstraint:(id)constraint;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_enableOnlyGestureRecognizersForCurrentTouchLevel;
- (void)_endActivityTrackingIfNeededForReason:(int64_t)reason;
- (void)_endPanNormal:(BOOL)normal;
- (void)_endRefreshingAnimated:(BOOL)animated;
- (void)_endScrollingCursorOverrideIfNecessary;
- (void)_enumerateAllScrollObserversWithBlock:(uint64_t)block;
- (void)_findScrollableAncestorIfNeededWithEvent:(id)event;
- (void)_flashScrollIndicatorsForAxes:(unint64_t)axes persistingPreviousFlashes:(BOOL)flashes;
- (void)_forceDelegateScrollViewDidZoom:(BOOL)zoom;
- (void)_forcePanGestureToEndImmediately;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_getGradientMaskBounds:(CGRect *)bounds startInsets:(UIEdgeInsets *)insets endInsets:(UIEdgeInsets *)endInsets intensities:(UIEdgeInsets *)intensities;
- (void)_getStandardDecelerationOffset:(double *)offset forTimeInterval:(double)interval min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)velocity;
- (void)_handleAutoScroll:(id)scroll;
- (void)_handleDirectionalPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity;
- (void)_handleDirectionalPress:(id)press;
- (void)_handleDirectionalScrollToOffset:(CGPoint)offset clampingToBounds:(BOOL)bounds duration:(double)duration;
- (void)_handleKeyboardScrollingPressGesture:(id)gesture;
- (void)_handleKnobHoverGesture:(id)gesture;
- (void)_handleKnobLongPressGesture:(id)gesture;
- (void)_handleLowFidelitySwipe:(id)swipe;
- (void)_handlePanFailure;
- (void)_handleSwipe:(id)swipe;
- (void)_hideScrollIndicator:(id)indicator afterDelay:(double)delay animated:(BOOL)animated;
- (void)_hideScrollIndicators;
- (void)_hideScrollIndicatorsIfNeededForNewContentSize:(CGSize)size animated:(BOOL)animated;
- (void)_incrementForScrollTest:(id)test;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_layoutDonatedTitleView;
- (void)_lowFidelityScrollInDirection:(CGPoint)direction;
- (void)_markScrollViewAnimationForKey:(id)key ofView:(id)view;
- (void)_notifyAdjustedContentInsetDidChange;
- (void)_notifyAlignedContentMarginChanged;
- (void)_notifyDidScroll;
- (void)_old_updateAutomaticContentSizeConstraintsIfNecessaryWithContentSize:(CGSize)size;
- (void)_performDirectionalBounceFromOffset:(CGPoint)offset toTargetOffset:(CGPoint)targetOffset;
- (void)_performDirectionalScrollAnimationToTargetOffset:(CGPoint)offset;
- (void)_performDirectionalScrollAnimationToTargetOffset:(CGPoint)offset duration:(double)contentOffsetAnimationDuration;
- (void)_performFullScreenScrollTest:(id)test iterations:(int)iterations scrollAxis:(unint64_t)axis;
- (void)_performNaturalScrollTest:(id)test completionHandler:(id)handler;
- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta length:(int)length scrollAxis:(unint64_t)axis extraResultsBlock:(id)block completionBlock:(id)completionBlock;
- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta scrollAxis:(unint64_t)axis;
- (void)_performScrollTestWithParameters:(id)parameters completionBlock:(id)block;
- (void)_performScrollViewWillEndDraggingInvocationsWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset unclampedOriginalTarget:(CGPoint)target;
- (void)_pinContentOffsetToClosestPageBoundary;
- (void)_popTrackingRunLoopModeIfNecessaryForReason:(id)reason;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareToPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity nudgingBoundsWithVelocity:(BOOL)withVelocity performExtraPageIfPastPagingBoundary:(BOOL)boundary;
- (void)_pushTrackingRunLoopModeIfNecessaryForReason:(id)reason;
- (void)_reenableImplicitAnimationsAfterScrollTest;
- (void)_registerAsScrollToTopViewIfPossible;
- (void)_registerForRotation:(BOOL)rotation ofWindow:(id)window;
- (void)_registerForSpringBoardBlankedScreenNotification;
- (void)_removeRefreshInset:(double)inset;
- (void)_removeScrollViewScrollObserver:(id)observer;
- (void)_resetDiscreteFastScroll;
- (void)_resetScrollableAncestor;
- (void)_resetScrollingWithUIEvent:(id)event;
- (void)_resizeWithOldSuperviewSize:(CGSize)size;
- (void)_runLoopModePopped:(id)popped;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDeceleratingForDelegate;
- (void)_scrollViewDidEndDraggingForDelegateWithDeceleration:(BOOL)deceleration;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration;
- (void)_scrollViewDidEndZooming;
- (void)_scrollViewDidLayoutSubviews;
- (void)_scrollViewWillBeginDragging;
- (void)_scrollViewWillBeginZooming;
- (void)_sendAsynchronouslyHandleScrollEvent:(id)event completion:(id)completion;
- (void)_sendDelayedTouchesIfNecessary;
- (void)_sendGeometryAffectingContentBottomChangedToScrollObservers;
- (void)_setAdjustsContentInsetWhenScrollDisabled:(BOOL)disabled;
- (void)_setAdjustsTargetsOnContentOffsetChanges:(BOOL)changes;
- (void)_setAllowedFocusBounceEdges:(unint64_t)edges;
- (void)_setAllowedNavigationOverlapAmount:(double)amount;
- (void)_setAllowedTouchTypesForScrolling:(id)scrolling;
- (void)_setAllowsAsyncScrollEvent:(BOOL)event;
- (void)_setAlwaysAppliesKeyboardBottomInsetAdjustment:(BOOL)adjustment;
- (void)_setAlwaysBounceVertical:(BOOL)vertical;
- (void)_setApplyVerticalSafeAreaInsetsToNonscrollingContent:(BOOL)content;
- (void)_setAutoScrollEnabled:(BOOL)enabled;
- (void)_setAutoScrollTouchInsets:(UIEdgeInsets)insets;
- (void)_setAutomaticContentConstraints:(id)constraints;
- (void)_setAutomaticContentOffsetAdjustmentEnabled:(BOOL)enabled;
- (void)_setAutoscrolling:(BOOL)autoscrolling;
- (void)_setAvoidsJumpOnInterruptedBounce:(BOOL)bounce;
- (void)_setConfigureForObservingByTVSearchController:(BOOL)controller;
- (void)_setContentOffset:(CGPoint)offset animated:(BOOL)animated animationCurve:(int)curve animationAdjustsForContentOffsetDelta:(BOOL)delta animation:(id)animation animationConfigurator:(id)configurator;
- (void)_setContentOffset:(CGPoint)offset duration:(double)duration animationCurve:(int)curve animationConfigurator:(id)configurator;
- (void)_setContentOffsetPinned:(CGPoint)pinned;
- (void)_setContentOffsetPinned:(CGPoint)pinned animated:(BOOL)animated;
- (void)_setContentOffsetRoundingEnabled:(BOOL)enabled;
- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)animation;
- (void)_setContentScrollInset:(UIEdgeInsets)inset;
- (void)_setContentScrollsAlongXAxis:(BOOL)axis;
- (void)_setContentScrollsAlongYAxis:(BOOL)axis;
- (void)_setDefaultShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)_setDefaultShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)_setDonatedTitleView:(id)view;
- (void)_setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:(unint64_t)path;
- (void)_setEdgesScrollingContentIntoSafeArea:(unint64_t)area;
- (void)_setFirstResponderKeyboardAvoidanceEnabled:(BOOL)enabled;
- (void)_setFlipsHorizontalAxis:(BOOL)axis;
- (void)_setFocusFastScrollingDisabled:(BOOL)disabled;
- (void)_setForwardsTouchesUpResponderChain:(BOOL)chain;
- (void)_setGradientMaskLengths:(UIEdgeInsets)lengths;
- (void)_setHiddenPocketEdges:(unint64_t)edges;
- (void)_setIndicatorInsetAdjustmentBehavior:(int64_t)behavior;
- (void)_setIsTransientScrollView:(BOOL)view;
- (void)_setKnobInteractionGestureDelayed:(BOOL)delayed;
- (void)_setMaskView:(id)view;
- (void)_setNeedsLayoutOnVisibleBoundsChange:(BOOL)change;
- (void)_setNeedsUsesStaticScrollBarUpdate;
- (void)_setOverrideGeometryView:(id)view forEdge:(unint64_t)edge;
- (void)_setPagingFriction:(double)friction;
- (void)_setPagingOrigin:(CGPoint)origin;
- (void)_setPagingSpringPull:(double)pull;
- (void)_setPocketColor:(id)color forEdge:(unint64_t)edge;
- (void)_setPocketInsets:(UIEdgeInsets)insets;
- (void)_setPocketPreferredUserInterfaceStyle:(int64_t)style forEdge:(unint64_t)edge;
- (void)_setPocketRelativeSubview:(id)subview isOver:(BOOL)over forKey:(id)key;
- (void)_setPocketStyle:(int64_t)style forEdge:(unint64_t)edge;
- (void)_setPrefersSolidColorHardPocket:(BOOL)pocket forEdge:(unint64_t)edge;
- (void)_setRefreshControl:(id)control;
- (void)_setResetsBoundingPathForSubtree:(BOOL)subtree;
- (void)_setShouldAdjustLayoutToCollapseTopSpacing:(BOOL)spacing;
- (void)_setShouldAdjustLayoutToDrawTopSeparator:(BOOL)separator;
- (void)_setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:(BOOL)change;
- (void)_setShouldPreventFocusScrollPastContentSize:(BOOL)size;
- (void)_setShouldScrollAncestors:(BOOL)ancestors;
- (void)_setShowsBackgroundShadow:(BOOL)shadow;
- (void)_setShowsHorizontalScrollIndicator:(void *)indicator;
- (void)_setShowsHorizontalScrollIndicatorFlag:(BOOL)flag;
- (void)_setShowsVerticalScrollIndicator:(void *)indicator;
- (void)_setShowsVerticalScrollIndicatorFlag:(BOOL)flag;
- (void)_setSkipsContentOffsetAdjustmentsIfScrolling:(BOOL)scrolling;
- (void)_setStaysCenteredDuringPinch:(BOOL)pinch;
- (void)_setSubviewWantsAutolayoutTripWantsAutolayout:(BOOL)autolayout;
- (void)_setSupportsPointerDragScrolling:(BOOL)scrolling;
- (void)_setSystemInsetAdjustment:(double)adjustment forAdjustmentTypeIdentifier:(id)identifier;
- (void)_setTemporaryCoordinatingReplacement:(id)replacement;
- (void)_setTopLayoutInsetForSidebar:(double)sidebar;
- (void)_setTopScrollIndicatorFollowsContentOffset:(BOOL)offset;
- (void)_setTransfersScrollToContainer:(BOOL)container;
- (void)_setUpGradientMaskViewIfNecessary;
- (void)_setUsesStaticScrollBar:(BOOL)bar;
- (void)_setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:(BOOL)inset;
- (void)_setWantsConstrainedContentSize:(BOOL)size;
- (void)_setZoomAnchorPoint:(CGPoint)point;
- (void)_setZoomFeedbackGenerator:(id)generator;
- (void)_simulateGestureWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end;
- (void)_simulateScrollWithTranslation:(CGPoint)translation duration:(double)duration willBeginDragging:(id)dragging didEndDragging:(id)endDragging willBeginDecelerating:(id)decelerating didEndDecelerating:(id)endDecelerating;
- (void)_simulateZoomByScaleFactor:(double)factor duration:(double)duration willBeginZooming:(id)zooming didEndZooming:(id)endZooming;
- (void)_smoothScrollAsyncWithUpdateTime:(double)time state:(id)state;
- (void)_smoothScrollDisplayLink:(id)link;
- (void)_smoothScrollSyncWithUpdateTime:(double)time;
- (void)_smoothScrollWithUpdateTime:(double)time;
- (void)_startDraggingParent:(id)parent;
- (void)_startTimer:(BOOL)timer;
- (void)_stopAutoScrollAssistant;
- (void)_stopDraggingParent:(id)parent;
- (void)_stopScrollDecelerationNotify:(BOOL)notify;
- (void)_stopScrollingAndZoomingAnimationsPinningToContentViewport:(BOOL)viewport tramplingAnimationDependentFlags:(BOOL)flags;
- (void)_stopScrollingNotify:(BOOL)notify pin:(BOOL)pin tramplingAnimationDependentFlags:(BOOL)flags;
- (void)_suppressImplicitAnimationsForScrollTest;
- (void)_switchToLayoutEngine:(id)engine;
- (void)_trackpadInterruptScroll:(id)scroll;
- (void)_traitCollectionDidChangeInternal:(const _UITraitCollectionChangeDescription *)internal;
- (void)_unregisterForSpringBoardBlankedScreenNotification;
- (void)_updateAccessories;
- (void)_updateAccessoriesInset;
- (void)_updateContentFitDisableScrolling;
- (void)_updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:(UIEdgeInsets)inset oldEdgesPropagatingSafeAreaInsets:(unint64_t)insets adjustContentOffsetIfNecessary:(BOOL)necessary;
- (void)_updateForChangedScrollIndicatorRelatedInsets;
- (void)_updateForChangedScrollRelatedInsets;
- (void)_updateGradientMaskView;
- (void)_updateLayoutMarginsGuideConstraintsIfNecessary;
- (void)_updatePagingGestures;
- (void)_updatePagingSwipeGesture;
- (void)_updatePanGesture;
- (void)_updatePanGestureConfiguration;
- (void)_updatePinchGesture;
- (void)_updatePinchGestureForState:(int64_t)state;
- (void)_updatePockets;
- (void)_updateRubberbandingStatisticTrackingState;
- (void)_updateScrollAnimationForChangedTargetOffset:(CGPoint)offset;
- (void)_updateScrollGestureRecognizersEnabled;
- (void)_updateUsesStaticScrollBar;
- (void)_updateZoomGestureRecognizersEnabled;
- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_webCustomViewWillBeRemovedFromSuperview;
- (void)_willMoveToWindow:(id)window;
- (void)_zoomAnimationDidStop;
- (void)_zoomToCenterInternal:(CGPoint)internal scale:(double)scale duration:(double)duration allowRubberbanding:(BOOL)rubberbanding force:(BOOL)force;
- (void)accessoryInsetsDidChange:(UIEdgeInsets)change;
- (void)animator:(id)animator startAnimation:(id)animation;
- (void)animator:(id)animator stopAnimation:(id)animation fraction:(float)fraction;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)handlePan:(id)pan;
- (void)handlePinch:(id)pinch;
- (void)layoutSubviews;
- (void)nsis_valueOfVariable:(id)variable didChangeInEngine:(id)engine;
- (void)performWhileAnimatingAutomaticContentOffsetAdjustments:(id)adjustments;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeFromSuperview;
- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
- (void)setAccessoryView:(id)view atEdge:(int64_t)edge;
- (void)setAllowsKeyboardScrolling:(BOOL)allowsKeyboardScrolling;
- (void)setAllowsMultipleFingers:(BOOL)fingers;
- (void)setAlwaysBounceHorizontal:(BOOL)alwaysBounceHorizontal;
- (void)setAlwaysBounceVertical:(BOOL)alwaysBounceVertical;
- (void)setAutomaticallyAdjustsScrollIndicatorInsets:(BOOL)automaticallyAdjustsScrollIndicatorInsets;
- (void)setBackgroundColor:(id)color;
- (void)setBounces:(BOOL)bounces;
- (void)setBouncesHorizontally:(BOOL)horizontally;
- (void)setBouncesVertically:(BOOL)vertically;
- (void)setBouncesZoom:(BOOL)bouncesZoom;
- (void)setBounds:(CGRect)bounds;
- (void)setCanCancelContentTouches:(BOOL)canCancelContentTouches;
- (void)setCenter:(CGPoint)center;
- (void)setContentAlignmentPoint:(CGPoint)point;
- (void)setContentInset:(UIEdgeInsets)contentInset;
- (void)setContentInsetAdjustmentBehavior:(UIScrollViewContentInsetAdjustmentBehavior)contentInsetAdjustmentBehavior;
- (void)setContentOffset:(CGPoint)contentOffset;
- (void)setContentSize:(CGSize)contentSize;
- (void)setDecelerationRate:(UIScrollViewDecelerationRate)decelerationRate;
- (void)setDelaysContentTouches:(BOOL)delaysContentTouches;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)horizontalScrollIndicatorInsets;
- (void)setIndexDisplayMode:(UIScrollViewIndexDisplayMode)indexDisplayMode;
- (void)setIndicatorStyle:(UIScrollViewIndicatorStyle)indicatorStyle;
- (void)setInteractionActivityTrackingBaseName:(id)name;
- (void)setMaximumZoomScale:(CGFloat)maximumZoomScale;
- (void)setMinimumZoomScale:(CGFloat)minimumZoomScale;
- (void)setNeedsLayout;
- (void)setPagingEnabled:(BOOL)pagingEnabled;
- (void)setPreservesCenterDuringRotation:(BOOL)rotation;
- (void)setProgrammaticScrollEnabled:(BOOL)enabled;
- (void)setRefreshControl:(UIRefreshControl *)refreshControl;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setScrollEnabled:(BOOL)scrollEnabled;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)scrollIndicatorInsets;
- (void)setScrollsToTop:(BOOL)scrollsToTop;
- (void)setTracksImmediatelyWhileDecelerating:(BOOL)decelerating;
- (void)setTransfersHorizontalScrollingToParent:(BOOL)parent;
- (void)setTransfersVerticalScrollingToParent:(BOOL)parent;
- (void)setUpdateInsetBottomDuringKeyboardDismiss:(BOOL)dismiss;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)verticalScrollIndicatorInsets;
- (void)setZoomEnabled:(BOOL)enabled;
- (void)setZoomScale:(CGFloat)scale animated:(BOOL)animated;
- (void)setZoomScale:(double)scale withAnchorPoint:(CGPoint)point allowRubberbanding:(BOOL)rubberbanding animated:(BOOL)animated duration:(double)duration notifyDelegate:(BOOL)delegate force:(BOOL)force;
- (void)startScrollViewMonitoring;
- (void)stopScrollViewMonitoring;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)willAnimateRotationToInterfaceOrientation:(id)orientation;
- (void)willRotateToInterfaceOrientation:(id)orientation;
- (void)withScrollIndicatorsShownForContentOffsetChanges:(id)changes;
- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated;
@end

@implementation UIScrollView

- (void)_commitScrollBounceStatisticsTrackingState
{
  if (*(&self->_scrollViewFlags + 19))
  {
    v3 = +[_UIStatistics scrollBounceCount];
    [v3 incrementValueBy:1];
  }
}

- (CGSize)_interpageSpacing
{
  width = self->_interpageSpacing.width;
  height = self->_interpageSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)_pagingOrigin
{
  x = self->_pagingOrigin.x;
  y = self->_pagingOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_adjustContentOffsetIfNecessary
{
  [(UIScrollView *)self contentOffset];
  [(UIScrollView *)self _adjustedContentOffsetForContentOffset:[(UIScrollView *)self _skipsContentOffsetAdjustmentsIfScrolling] skipsAdjustmentIfScrolling:v3, v4];
  [(UIScrollView *)self _applyAutomaticAdjustedContentOffset:?];
  [(UIScrollView *)self _adjustShadowsIfNecessary];

  [(UIScrollView *)self _updateContentFitDisableScrolling];
}

- (UIEdgeInsets)adjustedContentInset
{
  p_contentInset = &self->_contentInset;
  [(UIScrollView *)self _systemContentInset];
  v4 = p_contentInset->top + v3;
  v6 = v5 + p_contentInset->left;
  v8 = v7 + p_contentInset->bottom;
  v10 = v9 + p_contentInset->right;
  result.right = v10;
  result.bottom = v8;
  result.left = v6;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)_systemContentInset
{
  [(UIScrollView *)self _systemContentInsetIncludingAccessories:1];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)_contentScrollsAlongXAxis
{
  v2 = (*(&self->_scrollViewFlags + 5) << 27) >> 30;
  if (v2 == -1)
  {
    return [(UIScrollView *)self alwaysBounceHorizontal];
  }

  else
  {
    return v2 == 1;
  }
}

- (double)_systemInsetAdjustmentSum
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = dyld_program_sdk_at_least();
  result = 0.0;
  if (v3)
  {
    if ((*(&self->_scrollViewFlags + 12) & 0x8000000000000000) == 0)
    {
      contentInsetAdjustments = self->_contentInsetAdjustments;
      if (contentInsetAdjustments)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = contentInsetAdjustments;
        v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          v10 = 0.0;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v12 = [(NSMutableDictionary *)self->_contentInsetAdjustments objectForKey:*(*(&v14 + 1) + 8 * i), v14];
              [v12 doubleValue];
              v10 = v10 + v13;
            }

            v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v8);
        }

        else
        {
          v10 = 0.0;
        }

        self->_contentInsetAdjustmentsSum = v10;
        *(&self->_scrollViewFlags + 12) |= 0x8000000000000000;
      }
    }

    return self->_contentInsetAdjustmentsSum;
  }

  return result;
}

- (BOOL)_contentScrollsAlongYAxis
{
  v2 = (*(&self->_scrollViewFlags + 5) << 25) >> 30;
  if (v2 == -1)
  {
    return [(UIScrollView *)self alwaysBounceVertical];
  }

  else
  {
    return v2 == 1;
  }
}

- (UIEdgeInsets)accessoryInsets
{
  top = self->_accessoryInsets.top;
  left = self->_accessoryInsets.left;
  bottom = self->_accessoryInsets.bottom;
  right = self->_accessoryInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)contentAlignmentPoint
{
  x = self->_contentAlignmentPoint.x;
  y = self->_contentAlignmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isDecelerating
{
  if (self->_scrollHeartbeat)
  {
    return 1;
  }

  v4 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
  v5 = v4;
  if (v4)
  {
    scrollManager = [v4 scrollManager];
    v2 = [scrollManager isScrollingScrollableContainer:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isScrollAnimating
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);
  if (WeakRetained)
  {
    scrollAnimatingViaAssertion = 1;
  }

  else
  {
    scrollAnimatingViaAssertion = self->_scrollAnimatingViaAssertion;
  }

  return scrollAnimatingViaAssertion;
}

- (void)_adjustShadowsIfNecessary
{
  if (self->_shadows)
  {
    [(UIScrollView *)self _adjustBackgroundShadowsForContentSizeForcedVisible:0];
  }
}

- (void)_updateContentFitDisableScrolling
{
  if ([(UIScrollView *)self _canScrollX])
  {
    v3 = 0;
  }

  else if ([(UIScrollView *)self _canScrollY])
  {
    v3 = 0;
  }

  else
  {
    v3 = ~(*&self->_scrollViewFlags >> 26) & 0x10;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (BOOL)_canScrollX
{
  if ([(UIScrollView *)self _canScrollIgnoringAncestorPermissionX])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (*(&self->_scrollViewFlags + 1) >> 4) & 1;
  }

  return v3;
}

- (BOOL)_canScrollIgnoringAncestorPermissionX
{
  if ([(UIScrollView *)self _canScrollWithoutBouncingX])
  {
    LOBYTE(alwaysBounceHorizontal) = 1;
  }

  else
  {
    alwaysBounceHorizontal = [(UIScrollView *)self alwaysBounceHorizontal];
    if (alwaysBounceHorizontal)
    {
      return (*&self->_scrollViewFlags >> 3) & 1;
    }
  }

  return alwaysBounceHorizontal;
}

- (BOOL)_canScrollWithoutBouncingX
{
  [(UIScrollView *)self _contentFitCanScrollThreshold];
  v4 = v3;
  [(UIScrollView *)self _effectiveContentInset];
  v7 = v6 + v5 + self->_contentSize.width;
  [(UIView *)self bounds];
  return v7 > v4 + v8 + 0.0001;
}

- (BOOL)_canScrollIgnoringAncestorPermissionY
{
  if ([(UIScrollView *)self _canScrollWithoutBouncingY])
  {
    LOBYTE(alwaysBounceVertical) = 1;
  }

  else
  {
    alwaysBounceVertical = [(UIScrollView *)self alwaysBounceVertical];
    if (alwaysBounceVertical)
    {
      return (*&self->_scrollViewFlags >> 2) & 1;
    }
  }

  return alwaysBounceVertical;
}

- (BOOL)_canScrollY
{
  if ([(UIScrollView *)self _canScrollIgnoringAncestorPermissionY])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (*(&self->_scrollViewFlags + 1) >> 5) & 1;
  }

  return v3;
}

- (BOOL)_shouldUseStaticScrollBar
{
  [(UIView *)self bounds];
  v18 = v3;
  [(UIScrollView *)self _effectiveContentInset];
  v4 = *&self->_accuracy;
  v6.f64[0] = v5 + v6.f64[0] + self->_contentSize.height;
  if (*&v4 == 1.0)
  {
    v6.f64[0] = round(v6.f64[0]);
    v8 = round(v18);
  }

  else
  {
    v6.f64[1] = v18;
    v7 = vrndmq_f64(v6);
    v6 = vaddq_f64(v7, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v6, v7), *&v4)), vdupq_lane_s64(v4, 0)));
    v8 = v6.f64[1];
  }

  if (v6.f64[0] <= v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v8 / v6.f64[0];
    v10 = v9 > 0.99;
  }

  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3 && !-[UIScrollView isPagingEnabled](self, "isPagingEnabled"))
  {
    window = [(UIView *)self window];
    _screen = [window _screen];
    v15 = [_screen _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v16 = [v15 integerValue] == 2 || v10;
    v12 = (v16 & 1) == 0 && [(UIScrollView *)self isScrollEnabled];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_updatePockets
{
  v81 = *MEMORY[0x1E69E9840];
  if (_UIScrollPocketEnabled())
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    objectEnumerator = [(NSMapTable *)self->_underPocketSubviews objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v76;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v76 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v8 = *(*(&v75 + 1) + 8 * i);
          superview = [v8 superview];

          if (superview == self)
          {
            [(UIScrollView *)self _addContentSubview:v8 atBack:0];
          }
        }

        v5 = [objectEnumerator countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v5);
    }

    [(UIScrollView *)self _layoutDonatedTitleView];
    needsPockets = [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction needsPockets];
    effectView = [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction effectView];
    v12 = effectView;
    if (needsPockets)
    {
      [(UIScrollView *)self _addScrollPocketAsSubview:effectView];

      captureView = [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction captureView];
      [(UIScrollView *)self _addContentSubview:captureView atBack:1];

      v14 = MEMORY[0x1E695EFF8];
      MinY = *(MEMORY[0x1E695EFF8] + 8);
      [(UIScrollView *)self contentSize];
      v17 = v16;
      v19 = v18;
      _donatedTitleView = [(UIScrollView *)self _donatedTitleView];
      v21 = _donatedTitleView;
      if (_donatedTitleView && [_donatedTitleView contributesToPocketContentRect])
      {
        view = [v21 view];
        [view bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        view2 = [v21 view];
        [(UIView *)self convertRect:view2 fromView:v24, v26, v28, v30];
        MinY = CGRectGetMinY(v82);

        v19 = v19 - MinY;
      }

      v70 = v19;
      v32 = *v14;
      top = self->_pocketInsets.top;
      left = self->_pocketInsets.left;
      v35 = left + self->_pocketInsets.right;
      v36 = top + self->_pocketInsets.bottom;

      if (([(UIGestureRecognizer *)self->_pan state]- 1) > 2)
      {
        [(UIScrollView *)self _effectiveVerticalVelocity];
        v69 = v36;
        v42 = v32;
        v44 = v43;
        [(UIScrollView *)self _effectiveVerticalVelocity];
        v45 = MinY;
        v46 = v17;
        v48 = v44 * v47;
        [(UIScrollView *)self _effectiveHorizontalVelocity];
        v50 = v49;
        [(UIScrollView *)self _effectiveHorizontalVelocity];
        v52 = v50 * v51;
        v32 = v42;
        v36 = v69;
        v40 = v48 + v52;
        v17 = v46;
        MinY = v45;
      }

      else
      {
        [(UIScrollViewPanGestureRecognizer *)self->_pan velocityInView:self];
        v37 = self->_velocityScaleFactor * self->_velocityScaleFactor;
        v40 = v38 * v38 * v37 + v39 * v39 * v37;
      }

      v53 = v32 + left;
      v54 = MinY + top;
      v55 = v17 - v35;
      v56 = v70 - v36;
      v57 = sqrt(v40);
      if ([(UIScrollView *)self isDragging]|| [(UIScrollView *)self isDecelerating]|| [(UIScrollView *)self isScrollAnimating])
      {
        isInteractivelyResizing = 1;
      }

      else
      {
        window = [(UIView *)self window];
        windowScene = [window windowScene];
        effectiveGeometry = [windowScene effectiveGeometry];
        isInteractivelyResizing = [effectiveGeometry isInteractivelyResizing];
      }

      [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction updateWithContentRect:[(UIScrollView *)self isTracking] velocity:isInteractivelyResizing isTracking:v53 shouldAnimateVisibility:v54, v55, v56, v57];
    }

    else
    {
      [effectView removeFromSuperview];

      captureView2 = [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction captureView];
      [captureView2 removeFromSuperview];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    objectEnumerator2 = [(NSMapTable *)self->_overPocketSubviews objectEnumerator];
    v60 = [objectEnumerator2 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v72;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v72 != v62)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          v64 = *(*(&v71 + 1) + 8 * j);
          superview2 = [v64 superview];

          if (superview2 == self)
          {
            [(UIScrollView *)self _addContentSubview:v64 atBack:0];
          }
        }

        v61 = [objectEnumerator2 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v61);
    }
  }
}

- (UIEdgeInsets)_revealableContentPadding
{
  [(UIScrollView *)self _revealableContentPaddingIncludingContentWithCollapsedAffinity:1];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_applyConstrainedContentSizeIfNecessary
{
  if (dyld_program_sdk_at_least() && (*(&self->super._viewFlags + 7) & 4) != 0 && (~*(&self->_scrollViewFlags + 12) & 0x60000000000) == 0)
  {
    [(UIScrollView *)self _nsis_contentSize];
    [(UIScrollView *)self setContentSize:?];
    *(&self->_scrollViewFlags + 12) &= ~0x40000000000uLL;
  }
}

- (void)setNeedsLayout
{
  v2 = *(&self->_scrollViewFlags + 12);
  if ((v2 & 0x40000000000000) == 0)
  {
    *(&self->_scrollViewFlags + 12) = v2 & 0xFF3FFFFFFFFFFFFFLL;
  }

  v3.receiver = self;
  v3.super_class = UIScrollView;
  [(UIView *)&v3 setNeedsLayout];
}

- (unint64_t)_scrollableEdges
{
  [(UIScrollView *)self _revealableContentPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self _minimumContentOffset];
  v12 = v11;
  v14 = v13;
  [(UIScrollView *)self _maximumContentOffset];
  v16 = v15;
  v18 = v17;
  if ([(UIScrollView *)self _canScrollX]&& ([(UIScrollView *)self contentOffset], v19 > v12 - v6 + 0.0001))
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  if ([(UIScrollView *)self _canScrollX])
  {
    [(UIScrollView *)self contentOffset];
    if (v10 + v16 > v21 + 0.0001)
    {
      v20 |= 8uLL;
    }
  }

  if ([(UIScrollView *)self _canScrollY])
  {
    [(UIScrollView *)self contentOffset];
    if (v22 > v14 - v4 + 0.0001)
    {
      v20 |= 1uLL;
    }
  }

  if ([(UIScrollView *)self _canScrollY])
  {
    [(UIScrollView *)self contentOffset];
    if (v8 + v18 > v23 + 0.0001)
    {
      v20 |= 4uLL;
    }
  }

  return v20;
}

- (CGPoint)_minimumContentOffset
{
  [(UIScrollView *)self _effectiveContentInset];
  v3 = *&self->_accuracy;
  v6.f64[0] = self->_firstPageOffset.horizontal - v4;
  v6.f64[1] = self->_firstPageOffset.vertical - v5;
  if (*&v3 == 1.0)
  {
    v8 = vrndaq_f64(v6);
  }

  else
  {
    v7 = vrndmq_f64(v6);
    v8 = vaddq_f64(v7, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v6, v7), *&v3)), vdupq_lane_s64(v3, 0)));
  }

  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  if ((*&self->_scrollViewFlags & 0x300000) == 0x100000)
  {
    return 15;
  }

  else
  {
    return ~[(UIScrollView *)self _edgesApplyingSafeAreaInsetsToContentInset:v2]& 0xF;
  }
}

- (unint64_t)_edgesApplyingBaseInsetsToScrollIndicatorInsets
{
  v2 = (*(&self->_scrollViewFlags + 5) >> 7) & 3;
  if (v2 <= 1)
  {
    if (v2)
    {
      return 15;
    }

    return [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToScrollAccessoryInsets];
  }

  if (v2 == 3)
  {
    return [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToScrollAccessoryInsets];
  }

  return 0;
}

- (void)_updateUsesStaticScrollBar
{
  *(&self->_scrollViewFlags + 5) &= ~0x2000000u;
  _shouldUseStaticScrollBar = [(UIScrollView *)self _shouldUseStaticScrollBar];

  [(UIScrollView *)self _setUsesStaticScrollBar:_shouldUseStaticScrollBar];
}

- (void)_updateGradientMaskView
{
  if ((*(&self->_scrollViewFlags + 18) & 2) != 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    [(UIScrollView *)self _getGradientMaskBounds:&v4 startInsets:&v10 endInsets:&v8 intensities:&v6];
    _safeMaskView = [(UIView *)self _safeMaskView];
    [_safeMaskView updateWithFrame:v4 gradientStartInsets:v5 gradientEndInsets:v10 gradientIntensities:{v11, v8, v9, v6, v7}];
  }
}

- (CGRect)visibleBounds
{
  v23.receiver = self;
  v23.super_class = UIScrollView;
  [(UIView *)&v23 visibleBounds];
  v4 = v3;
  v6 = v5;
  width = v7;
  height = v9;
  if (*(&self->_scrollViewFlags + 23))
  {
    _window = [(UIView *)self _window];
    if (_window && (v12 = _window, [_window bounds], objc_msgSend(v12, "convertRect:toView:", self), v27.origin.x = v13, v27.origin.y = v14, v27.size.width = v15, v27.size.height = v16, v24.origin.x = v4, v24.origin.y = v6, v24.size.width = width, v24.size.height = height, v25 = CGRectIntersection(v24, v27), x = v25.origin.x, y = v25.origin.y, width = v25.size.width, height = v25.size.height, !CGRectIsEmpty(v25)))
    {
      v6 = y;
      v4 = x;
    }

    else
    {
      width = *MEMORY[0x1E695F060];
      height = *(MEMORY[0x1E695F060] + 8);
    }
  }

  v19 = v4;
  v20 = v6;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)_shouldContentOffsetMaintainRelativeDistanceFromSafeArea
{
  if ([(UIScrollView *)self _shouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange])
  {
    return 0;
  }

  if ([(UIScrollView *)self isTracking]|| [(UIScrollView *)self isDecelerating]|| [(UIScrollView *)self isScrollAnimating])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(UIScrollView *)self _isScrollingToTop];
  }

  deferredUpdateTargetIsValid = self->_deferredUpdateTargetIsValid;
  if (([(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewShouldMaintainRelativeDistanceFromSafeArea:self]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return v4 & !deferredUpdateTargetIsValid;
  }
}

- (void)layoutSubviews
{
  if (dyld_program_sdk_at_least())
  {
    [(UIScrollView *)self _applyConstrainedContentSizeIfNecessary];
  }

  v3.receiver = self;
  v3.super_class = UIScrollView;
  [(UIView *)&v3 layoutSubviews];
  [(UIScrollView *)self _applyConstrainedContentSizeIfNecessary];
  [(UIScrollView *)self _centerContentIfNecessary];
  [(UIScrollView *)self _scrollViewDidLayoutSubviews];
}

- (void)_scrollViewDidLayoutSubviews
{
  if ((*(&self->_scrollViewFlags + 23) & 2) != 0)
  {
    [(UIScrollView *)self _updateUsesStaticScrollBar];
  }

  [(UIScrollView *)self _updateGradientMaskView];
  [(UIScrollView *)self _updatePockets];
  layoutObserver = self->_layoutObserver;

  [(_UIScrollViewLayoutObserver *)layoutObserver _scrollViewDidLayoutSubviews:self];
}

- (CGPoint)_maximumContentOffset
{
  [(UIScrollView *)self _maximumContentOffsetForContentSize:self->_contentSize.width, self->_contentSize.height];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_usesLowFidelityPanning
{
  if ([(UIView *)self _userInterfaceIdiom]== 3 && self->_touchLevel == 1)
  {
    return ![(UIScrollView *)self isPagingEnabled];
  }

  else
  {
    return 0;
  }
}

- (void)_updateScrollGestureRecognizersEnabled
{
  _usesLowFidelityPanning = [(UIScrollView *)self _usesLowFidelityPanning];
  [(UIGestureRecognizer *)self->_pan setEnabled:(*&self->_scrollViewFlags & 0x100000) == 0 && !_usesLowFidelityPanning];
  [self->_swipe setEnabled:(*&self->_scrollViewFlags & 0x100000) == 0 && !_usesLowFidelityPanning];
  for (i = 0; i != 4; ++i)
  {
    [(UIGestureRecognizer *)self->_lowFidelitySwipeGestureRecognizers[i] setEnabled:((*&self->_scrollViewFlags & 0x100000) == 0) & _usesLowFidelityPanning];
  }
}

- (void)_resetScrollableAncestor
{
  scrollableAncestor = self->_scrollableAncestor;
  self->_scrollableAncestor = 0;

  *&self->_scrollViewFlags &= ~0x4000uLL;
}

- (BOOL)_effectiveShouldPreventFocusScrollPastContentSize
{
  if ((*(&self->_scrollViewFlags + 18) & 4) != 0)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(&self->_scrollViewFlags + 23) >> 3) & 1;
  }

  return v2;
}

- (void)_setNeedsUsesStaticScrollBarUpdate
{
  staticScrollBar = self->_staticScrollBar;
  if ((((staticScrollBar == 0) ^ [(UIScrollView *)self _shouldUseStaticScrollBar]) & 1) == 0)
  {
    *(&self->_scrollViewFlags + 5) |= 0x2000000u;

    [(UIScrollView *)self setNeedsLayout];
  }
}

- (void)_updateLayoutMarginsGuideConstraintsIfNecessary
{
  v17.receiver = self;
  v17.super_class = UIScrollView;
  [(UIView *)&v17 _updateLayoutMarginsGuideConstraintsIfNecessary];
  _contentMarginsGuideIfExists = [(UIScrollView *)self _contentMarginsGuideIfExists];
  if (_contentMarginsGuideIfExists)
  {
    [(UIView *)self layoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _systemConstraints = [_contentMarginsGuideIfExists _systemConstraints];
    v13 = [_systemConstraints objectAtIndexedSubscript:0];
    [v13 setConstant:v5];

    v14 = [_systemConstraints objectAtIndexedSubscript:1];
    [v14 setConstant:v7];

    v15 = [_systemConstraints objectAtIndexedSubscript:2];
    [v15 setConstant:v9];

    v16 = [_systemConstraints objectAtIndexedSubscript:3];
    [v16 setConstant:v11];
  }
}

- (void)_createGestureRecognizersForCurrentTouchLevel
{
  if (self->_touchLevel != 2)
  {
    if (!self->_touchDelayGestureRecognizer)
    {
      v3 = [(UIGestureRecognizer *)[UIScrollViewDelayedTouchesBeganGestureRecognizer alloc] initWithTarget:self action:sel_delayed_];
      touchDelayGestureRecognizer = self->_touchDelayGestureRecognizer;
      self->_touchDelayGestureRecognizer = v3;

      [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer setDelaysTouchesBegan:1];
      [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer setEnabled:(*&self->_scrollViewFlags & 0x100000) == 0];
      [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
      [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer _setRequiresSystemGesturesToFail:1];
      [(UIView *)self addGestureRecognizer:self->_touchDelayGestureRecognizer];
    }

    if (!self->_pan)
    {
      v5 = -[UIScrollViewPanGestureRecognizer initWithTarget:action:]([UIScrollViewPanGestureRecognizer alloc], "initWithTarget:action:", self, [objc_opt_class() _panGestureAction]);
      pan = self->_pan;
      self->_pan = v5;

      [(UIScrollViewPanGestureRecognizer *)self->_pan setScrollView:self];
      [(UIScrollView *)self _updateScrollGestureRecognizersEnabled];
      [(UIScrollViewPanGestureRecognizer *)self->_pan setDelegate:self];
      [(UIGestureRecognizer *)self->_pan setDelaysTouchesEnded:0];
      [(UIScrollViewPanGestureRecognizer *)self->_pan setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
      [(UIView *)self addGestureRecognizer:self->_pan];
      [(UIScrollView *)self _updatePinchGesture];
      [(UIScrollView *)self _updatePagingGestures];
    }

    if (!self->_knobLongPressGestureRecognizer)
    {
      v7 = [[UIScrollViewKnobLongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleKnobLongPressGesture_];
      knobLongPressGestureRecognizer = self->_knobLongPressGestureRecognizer;
      self->_knobLongPressGestureRecognizer = v7;

      [(UILongPressGestureRecognizer *)self->_knobLongPressGestureRecognizer setMinimumPressDuration:0.1];
      [(UIGestureRecognizer *)self->_knobLongPressGestureRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_knobLongPressGestureRecognizer setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
      [(UIView *)self addGestureRecognizer:self->_knobLongPressGestureRecognizer];
    }

    if (!self->_knobPointerLongPressGestureRecognizer)
    {
      v9 = [[UIScrollViewKnobLongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleKnobLongPressGesture_];
      knobPointerLongPressGestureRecognizer = self->_knobPointerLongPressGestureRecognizer;
      self->_knobPointerLongPressGestureRecognizer = v9;

      [(UIScrollViewKnobLongPressGestureRecognizer *)self->_knobPointerLongPressGestureRecognizer setForPointer:1];
      [(UILongPressGestureRecognizer *)self->_knobPointerLongPressGestureRecognizer setMinimumPressDuration:0.0];
      [(UIGestureRecognizer *)self->_knobPointerLongPressGestureRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_knobPointerLongPressGestureRecognizer setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
      [(UIView *)self addGestureRecognizer:self->_knobPointerLongPressGestureRecognizer];
    }

    if (!self->_knobHoverGestureRecognizer)
    {
      v11 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleKnobHoverGesture_];
      knobHoverGestureRecognizer = self->_knobHoverGestureRecognizer;
      self->_knobHoverGestureRecognizer = v11;

      [(UIView *)self addGestureRecognizer:self->_knobHoverGestureRecognizer];
    }
  }

  if ([(UIScrollView *)self _usesLowFidelityPanning]&& !self->_lowFidelitySwipeGestureRecognizers[0])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__UIScrollView__createGestureRecognizersForCurrentTouchLevel__block_invoke;
    aBlock[3] = &unk_1E7105EF8;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    v13[2](v13, 2);
    v13[2](v13, 1);
    v13[2](v13, 4);
    v13[2](v13, 8);
    [(UIScrollView *)self _updateScrollGestureRecognizersEnabled];
  }

  if (!self->_dragAutoScrollGestureRecognizer)
  {
    v14 = [(UIDragGestureRecognizer *)[_UIDragAutoScrollGestureRecognizer alloc] initWithTarget:self action:sel__handleAutoScroll_];
    dragAutoScrollGestureRecognizer = self->_dragAutoScrollGestureRecognizer;
    self->_dragAutoScrollGestureRecognizer = v14;

    [(UIView *)self addGestureRecognizer:self->_dragAutoScrollGestureRecognizer];
  }

  if ([(UIScrollView *)self _platformUsesGestureRecognizersForKeyboardScrolling])
  {
    if (!self->_keyboardScrollingGestureRecognizer)
    {
      v16 = [(UIGestureRecognizer *)[_UIPressGestureRecognizer alloc] initWithTarget:self action:sel__handleKeyboardScrollingPressGesture_];
      keyboardScrollingGestureRecognizer = self->_keyboardScrollingGestureRecognizer;
      self->_keyboardScrollingGestureRecognizer = v16;

      [(_UIPressGestureRecognizer *)self->_keyboardScrollingGestureRecognizer setDelegate:self];
      [(UIView *)self addGestureRecognizer:self->_keyboardScrollingGestureRecognizer];
    }
  }
}

+ (unint64_t)_defaultEdgesScrollingContentIntoSafeArea
{
  if (_scrollViewConvertSafeAreaToContentInset_onceToken != -1)
  {
    dispatch_once(&_scrollViewConvertSafeAreaToContentInset_onceToken, &__block_literal_global_2000);
  }

  if (_scrollViewConvertSafeAreaToContentInset_convert)
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_effectiveShowsHorizontalScrollIndicator
{
  if (!self || (*(self + 1795) & 1) == 0 || *(self + 504))
  {
    return 0;
  }

  v3 = *(self + 1960);
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:&unk_1EFE33E08];
    if (v4)
    {
      v1 = 0;
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:&unk_1EFE33E20];
      v1 = v5 == 0;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

- (BOOL)_effectiveShowsVerticalScrollIndicator
{
  if (!self || (*(self + 1795) & 2) == 0 || *(self + 504))
  {
    return 0;
  }

  v3 = *(self + 1960);
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:&unk_1EFE33E38];
    if (v4)
    {
      v1 = 0;
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:&unk_1EFE33E50];
      if (v5)
      {
        v1 = 0;
      }

      else
      {
        v6 = [v3 objectForKeyedSubscript:&unk_1EFE33E68];
        if (v6)
        {
          v1 = 0;
        }

        else
        {
          v7 = [v3 objectForKeyedSubscript:&unk_1EFE33E80];
          v1 = v7 == 0;
        }
      }
    }
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

- (void)_updatePinchGesture
{
  pinch = self->_pinch;
  if (self->_minimumZoomScale == self->_maximumZoomScale)
  {
    if (pinch)
    {
      [(UIView *)self removeGestureRecognizer:?];
      v8 = self->_pinch;
      self->_pinch = 0;
    }
  }

  else if (!pinch)
  {
    v4 = -[UIScrollViewPinchGestureRecognizer initWithTarget:action:]([UIScrollViewPinchGestureRecognizer alloc], "initWithTarget:action:", self, [objc_opt_class() _pinchGestureAction]);
    v5 = self->_pinch;
    self->_pinch = v4;

    [(UIScrollViewPinchGestureRecognizer *)self->_pinch setScrollView:self];
    [(UIScrollViewPinchGestureRecognizer *)self->_pinch setDelegate:self];
    [(UIGestureRecognizer *)self->_pinch setDelaysTouchesEnded:0];
    v6 = self->_pinch;
    if ([UIApp _supportsIndirectInputEvents])
    {
      v7 = &unk_1EFE2DF18;
    }

    else
    {
      v7 = &unk_1EFE2DF00;
    }

    [(UIGestureRecognizer *)v6 setAllowedTouchTypes:v7];
    [(UIView *)self _addGestureRecognizer:0 atEnd:?];
  }

  [(UIScrollView *)self _updatePanGestureConfiguration];
}

- (void)_updatePanGestureConfiguration
{
  if (self->_minimumZoomScale == self->_maximumZoomScale)
  {
    v5 = 1;
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    isEnabled = [(UIGestureRecognizer *)self->_pinch isEnabled];
    v4 = 0xFFFFFFFFLL;
    if (isEnabled)
    {
      v4 = 2;
    }

    v5 = !isEnabled;
  }

  if ((*(&self->_scrollViewFlags + 12) & 0x8000) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  [(UIPanGestureRecognizer *)self->_pan setMaximumNumberOfTouches:v6];
  pan = self->_pan;

  [(UIPanGestureRecognizer *)pan _setIgnoresStationaryTouches:v5 & 1];
}

- (void)_updatePagingGestures
{
  [(UIScrollView *)self _updatePagingSwipeGesture];
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {

    [(UIScrollView *)self _updateScrollGestureRecognizersEnabled];
  }
}

- (void)_updatePagingSwipeGesture
{
  swipe = self->_swipe;
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    if (swipe)
    {
      return;
    }

    v5 = [(UIGestureRecognizer *)[UIScrollViewPagingSwipeGestureRecognizer alloc] initWithTarget:self action:sel__handleSwipe_];
    v6 = self->_swipe;
    self->_swipe = v5;
    v7 = v5;

    [(UIScrollViewPagingSwipeGestureRecognizer *)v7 setScrollView:self];
    [(UIGestureRecognizer *)v7 setDelegate:self];
    [(UIGestureRecognizer *)v7 setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
    [(UIView *)self addGestureRecognizer:self->_swipe];
    [(UIGestureRecognizer *)self->_pan requireGestureRecognizerToFail:self->_swipe];
    v4 = v7;
  }

  else
  {
    if (!swipe)
    {
      return;
    }

    [(UIView *)self removeGestureRecognizer:?];
    v4 = self->_swipe;
    self->_swipe = 0;
  }
}

- (void)_notifyAlignedContentMarginChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__UIScrollView__notifyAlignedContentMarginChanged__block_invoke;
  v2[3] = &unk_1E712A710;
  v2[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v2];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendGeometryAffectingContentBottomChangedToScrollObservers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __75__UIScrollView__sendGeometryAffectingContentBottomChangedToScrollObservers__block_invoke;
  v2[3] = &unk_1E712A710;
  v2[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v2];
}

- (void)_enableOnlyGestureRecognizersForCurrentTouchLevel
{
  [(UIScrollView *)self _createGestureRecognizersForCurrentTouchLevel];
  [(UIScrollView *)self _updateZoomGestureRecognizersEnabled];

  [(UIScrollView *)self _updateScrollGestureRecognizersEnabled];
}

- (void)_updateZoomGestureRecognizersEnabled
{
  pinch = self->_pinch;
  v4 = (*(&self->_scrollViewFlags + 2) & 0x40) == 0 && self->_touchLevel == 0;
  [(UIGestureRecognizer *)pinch setEnabled:v4];
}

- (void)_registerAsScrollToTopViewIfPossible
{
  if ((*(&self->_scrollViewFlags + 13) & 0x10) == 0 && [(UIView *)self isUserInteractionEnabled])
  {
    window = [(UIView *)self window];
    [window _registerScrollToTopView:self];
  }
}

uint64_t __50__UIScrollView__notifyAlignedContentMarginChanged__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewAlignedContentMarginDidChange:v5];
  }

  return result;
}

- (_UIAutoScrollAssistant)_autoScrollAssistant
{
  autoScrollAssistant = self->_autoScrollAssistant;
  if (!autoScrollAssistant)
  {
    v4 = [[_UIAutoScrollAssistant alloc] initWithScrollView:self];
    v5 = self->_autoScrollAssistant;
    self->_autoScrollAssistant = v4;

    autoScrollAssistant = self->_autoScrollAssistant;
  }

  return autoScrollAssistant;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_uili_existingObservationEligibleLayoutVariables
{
  v7.receiver = self;
  v7.super_class = UIScrollView;
  _uili_existingObservationEligibleLayoutVariables = [(UIView *)&v7 _uili_existingObservationEligibleLayoutVariables];
  array = _uili_existingObservationEligibleLayoutVariables;
  contentWidthVariable = self->_contentWidthVariable;
  if (contentWidthVariable || self->_contentHeightVariable)
  {
    if (!_uili_existingObservationEligibleLayoutVariables)
    {
      array = [MEMORY[0x1E695DF70] array];
      contentWidthVariable = self->_contentWidthVariable;
    }

    if (contentWidthVariable)
    {
      [array addObject:?];
    }

    if (self->_contentHeightVariable)
    {
      [array addObject:?];
    }
  }

  return array;
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  v2 = *&self->_verticalScrollIndicatorInsets.top;
  v3 = *&self->_verticalScrollIndicatorInsets.bottom;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v2, v4), vceqq_f64(v3, v4))))))
  {
    left = self->_verticalScrollIndicatorInsets.left;
    right = self->_verticalScrollIndicatorInsets.right;
  }

  else
  {
    v3.f64[0] = self->_scrollIndicatorInset.bottom;
    right = self->_scrollIndicatorInset.right;
    v2.f64[0] = self->_scrollIndicatorInset.top;
    left = self->_scrollIndicatorInset.left;
  }

  result.bottom = v3.f64[0];
  result.top = v2.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  v2 = *&self->_horizontalScrollIndicatorInsets.top;
  v3 = *&self->_horizontalScrollIndicatorInsets.bottom;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v2, v4), vceqq_f64(v3, v4))))))
  {
    left = self->_horizontalScrollIndicatorInsets.left;
    right = self->_horizontalScrollIndicatorInsets.right;
  }

  else
  {
    v3.f64[0] = self->_scrollIndicatorInset.bottom;
    right = self->_scrollIndicatorInset.right;
    v2.f64[0] = self->_scrollIndicatorInset.top;
    left = self->_scrollIndicatorInset.left;
  }

  result.bottom = v3.f64[0];
  result.top = v2.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (id)_observerImplementingWillEndDraggingMethod
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__243;
  v9 = __Block_byref_object_dispose__243;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__UIScrollView__observerImplementingWillEndDraggingMethod__block_invoke;
  v4[3] = &unk_1E712A780;
  v4[4] = &v5;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __58__UIScrollView__observerImplementingWillEndDraggingMethod__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (objc_opt_respondsToSelector())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_updateAccessories
{
  if ([(NSMutableDictionary *)self->_accessoryViews count])
  {
    [(UIScrollView *)self _contentInsetForAccessories];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self bounds];
    accessoryViews = self->_accessoryViews;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__UIScrollView__updateAccessories__block_invoke;
    v16[3] = &unk_1E712A738;
    v16[4] = self;
    *&v16[5] = v6 + v12;
    *&v16[6] = v4 + v13;
    *&v16[7] = v14 - (v6 + v10);
    *&v16[8] = v15 - (v4 + v8);
    [(NSMutableDictionary *)accessoryViews enumerateKeysAndObjectsUsingBlock:v16];
  }

  [(UIScrollView *)self _updateAccessoriesInset];
}

- (void)_updateAccessoriesInset
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_accessoryViews objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        [v12 alpha];
        if (v13 > 0.0 && ([v12 overlay] & 1) == 0)
        {
          edge = [v12 edge];
          if ([(UIView *)self _isRenderedHorizontallyFlipped])
          {
            if (edge > 3)
            {
              if (edge != 4)
              {
                if (edge != 5)
                {
                  goto LABEL_8;
                }

LABEL_21:
                [v12 frame];
                v9 = v9 + CGRectGetWidth(v29);
                goto LABEL_8;
              }

LABEL_26:
              [v12 frame];
              v8 = v8 + CGRectGetHeight(v32);
              goto LABEL_8;
            }

            if (edge == 2)
            {
              goto LABEL_25;
            }

            if (edge == 3)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (edge > 3)
            {
              if (edge != 4)
              {
                if (edge != 5)
                {
                  goto LABEL_8;
                }

LABEL_24:
                [v12 frame];
                v7 = v7 + CGRectGetWidth(v30);
                goto LABEL_8;
              }

              goto LABEL_26;
            }

            if (edge == 2)
            {
LABEL_25:
              [v12 frame];
              v10 = v10 + CGRectGetHeight(v31);
              goto LABEL_8;
            }

            if (edge == 3)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_8:
        ++v11;
      }

      while (v5 != v11);
      v15 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      v5 = v15;
      if (!v15)
      {
        goto LABEL_30;
      }
    }
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
LABEL_30:

  [(UIScrollView *)self accessoryInsets];
  self->_accessoryInsets.top = v10;
  self->_accessoryInsets.left = v9;
  self->_accessoryInsets.bottom = v8;
  self->_accessoryInsets.right = v7;
  if (v19 != v9 || v16 != v10 || v18 != v7 || v17 != v8)
  {
    [(UIScrollView *)self accessoryInsetsDidChange:?];
  }
}

- (id)_enclosingViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    while (1)
    {
      v4 = [UIViewController viewControllerForView:v3];
      if (v4)
      {
        break;
      }

      superview = [(UIView *)v3 superview];

      v3 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    superview = v4;
  }

  else
  {
    superview = 0;
  }

LABEL_8:

  return superview;
}

- (BOOL)_isAnimatingScrollTest
{
  scrollTestParameters = [(UIScrollView *)self scrollTestParameters];
  v3 = scrollTestParameters != 0;

  return v3;
}

- (UIEdgeInsets)_contentInsetIncludingDecorations
{
  [(UIScrollView *)self _effectiveContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _refreshControl = [(UIScrollView *)self _refreshControl];
  if ([_refreshControl _areInsetsBeingApplied] && (objc_msgSend(_refreshControl, "_hostAdjustsContentOffset") & 1) == 0)
  {
    [_refreshControl _appliedInsets];
    v4 = v4 - v12;
    v8 = v8 - v13;
    v10 = v10 - v14;
    v6 = v6 - v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIRefreshControl)_refreshControl
{
  refreshControl = [(UIScrollView *)self refreshControl];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = refreshControl;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_effectiveIndicatorStyle
{
  v2 = (*&self->_scrollViewFlags >> 28) & 3;
  if (!v2)
  {
    traitCollection = [(UIView *)self traitCollection];
    v4 = [traitCollection userInterfaceStyle] == 2;

    return 2 * v4;
  }

  return v2;
}

- (void)_notifyDidScroll
{
  if ((*(&self->_scrollViewFlags + 14) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scrollViewDidScroll:self];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__UIScrollView__notifyDidScroll__block_invoke;
  v4[3] = &unk_1E712A710;
  v4[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v4];
}

- (id)_getDelegateZoomView
{
  zoomView = self->_zoomView;
  if (zoomView)
  {
    v3 = zoomView;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v3 = [WeakRetained viewForZoomingInScrollView:self];
      if (v3 == self)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The view returned from viewForZoomingInScrollView: must be a subview of the scroll view. It can not be the scroll view itself."];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (double)_scrollIndicatorAdditionalInset
{
  _userInterfaceIdiom = [(UIView *)self _userInterfaceIdiom];
  v4 = 3.0;
  if (_userInterfaceIdiom == 3)
  {
    UIRoundToViewScale(self);
  }

  accuracy = self->_accuracy;
  if (accuracy == 1.0)
  {
    return round(v4);
  }

  v6 = floor(v4);
  return v6 + round((v4 - v6) * accuracy) / accuracy;
}

- (UIEdgeInsets)_effectiveVerticalScrollIndicatorInsets
{
  [(UIScrollView *)self verticalScrollIndicatorInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self _cachedVerticalScrollIndicatorBaseInsets];
  if (v14 == 1.79769313e308 && v11 == 1.79769313e308 && v13 == 1.79769313e308 && v12 == 1.79769313e308)
  {
    [(UIScrollView *)self _computeBaseInsetsForVerticalScrollIndicatorWithClientInsets:v4, v6, v8, v10];
    v19 = v26;
    v21 = v27;
    v23 = v28;
    v25 = v29;
    [(UIScrollView *)self _setCachedVerticalScrollIndicatorBaseInsets:?];
  }

  else
  {
    [(UIScrollView *)self _cachedVerticalScrollIndicatorBaseInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  _edgesApplyingBaseInsetsToScrollIndicatorInsets = [(UIScrollView *)self _edgesApplyingBaseInsetsToScrollIndicatorInsets];
  if (_edgesApplyingBaseInsetsToScrollIndicatorInsets)
  {
    v4 = v19 + v4;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 2) != 0)
  {
    v6 = v21 + v6;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 4) != 0)
  {
    v8 = v23 + v8;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 8) != 0)
  {
    v10 = v25 + v10;
  }

  if (dyld_program_sdk_at_least())
  {
    if (self)
    {
      if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
      {
        v32 = 4;
      }

      else
      {
        v32 = 8;
      }

      [(UIView *)self _containerConcentricRadiusForCorner:v31];
      if (v4 < v33)
      {
        v4 = v33;
      }

      [(UIView *)self _containerConcentricRadiusForCorner:v32];
      if (v8 < v34)
      {
        v8 = v34;
      }
    }

    else
    {
      v10 = 0.0;
      v8 = 0.0;
      v6 = 0.0;
      v4 = 0.0;
    }
  }

  v35 = v4;
  v36 = v6;
  v37 = v8;
  v38 = v10;
  result.right = v38;
  result.bottom = v37;
  result.left = v36;
  result.top = v35;
  return result;
}

- (UIEdgeInsets)_cachedVerticalScrollIndicatorBaseInsets
{
  top = self->_cachedVerticalScrollIndicatorBaseInsets.top;
  left = self->_cachedVerticalScrollIndicatorBaseInsets.left;
  bottom = self->_cachedVerticalScrollIndicatorBaseInsets.bottom;
  right = self->_cachedVerticalScrollIndicatorBaseInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_verticalScrollIndicatorWidth
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:traitCollection];
  [v3 staticDimensionSize];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)_safeAreaInsetsConsultingAlternativeTopInsetIfApplicable
{
  v35 = *MEMORY[0x1E69E9840];
  [(UIView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((*(&self->_scrollViewFlags + 19) & 0x40) != 0)
  {
    _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];
    _outermostNavigationController = [navigationController _outermostNavigationController];

    if (!_outermostNavigationController)
    {
      presentingViewController = [_viewControllerForAncestor presentingViewController];
      navigationController2 = [presentingViewController navigationController];
      _outermostNavigationController = [navigationController2 _outermostNavigationController];
    }

    superview = [(UIView *)self superview];
    if (superview && _outermostNavigationController && [(UIScrollView *)self _isScrollViewScrollObserver:_outermostNavigationController])
    {
      isViewLoaded = [_outermostNavigationController isViewLoaded];

      if (isViewLoaded)
      {
        superview2 = [(UIView *)self superview];
        [(UIView *)self frame];
        v20 = v19;
        v22 = v21;
        _existingView = [_outermostNavigationController _existingView];
        [superview2 convertPoint:_existingView toView:{v20, v22}];
        v25 = v24;

        [(UIScrollView *)self _alternativeVerticalScrollIndicatorTopSafeAreaInset];
        v4 = fmax(fmin(v26 - v25, v26), 0.0);
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &_safeAreaInsetsConsultingAlternativeTopInsetIfApplicable___s_category);
    if (*CategoryCachedImpl)
    {
      v32 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "%@ abandoned with _scrollViewFlags.verticalScrollIndicatorUsesAlternativeTopSafeAreaInset on. Turning it off now.", &v33, 0xCu);
      }
    }

    *(&self->_scrollViewFlags + 12) &= ~0x4000000000000000uLL;
    goto LABEL_12;
  }

LABEL_13:
  v28 = v4;
  v29 = v6;
  v30 = v8;
  v31 = v10;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (UIEdgeInsets)_effectiveHorizontalScrollIndicatorInsets
{
  [(UIScrollView *)self horizontalScrollIndicatorInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self _cachedHorizontalScrollIndicatorBaseInsets];
  if (v14 == 1.79769313e308 && v11 == 1.79769313e308 && v13 == 1.79769313e308 && v12 == 1.79769313e308)
  {
    [(UIScrollView *)self _computeBaseInsetsForHorizontalScrollIndicatorWithClientInsets:v4, v6, v8, v10];
    v19 = v26;
    v21 = v27;
    v23 = v28;
    v25 = v29;
    [(UIScrollView *)self _setCachedHorizontalScrollIndicatorBaseInsets:?];
  }

  else
  {
    [(UIScrollView *)self _cachedHorizontalScrollIndicatorBaseInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  _edgesApplyingBaseInsetsToScrollIndicatorInsets = [(UIScrollView *)self _edgesApplyingBaseInsetsToScrollIndicatorInsets];
  if (_edgesApplyingBaseInsetsToScrollIndicatorInsets)
  {
    v4 = v19 + v4;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 2) != 0)
  {
    v6 = v21 + v6;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 4) != 0)
  {
    v8 = v23 + v8;
  }

  if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 8) != 0)
  {
    v10 = v25 + v10;
  }

  if (dyld_program_sdk_at_least())
  {
    if (self)
    {
      [(UIView *)self _containerConcentricRadiusForCorner:4];
      if (v6 < v31)
      {
        v6 = v31;
      }

      [(UIView *)self _containerConcentricRadiusForCorner:8];
      if (v10 < v32)
      {
        v10 = v32;
      }
    }

    else
    {
      v10 = 0.0;
      v8 = 0.0;
      v6 = 0.0;
      v4 = 0.0;
    }
  }

  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (UIEdgeInsets)_cachedHorizontalScrollIndicatorBaseInsets
{
  top = self->_cachedHorizontalScrollIndicatorBaseInsets.top;
  left = self->_cachedHorizontalScrollIndicatorBaseInsets.left;
  bottom = self->_cachedHorizontalScrollIndicatorBaseInsets.bottom;
  right = self->_cachedHorizontalScrollIndicatorBaseInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_horizontalScrollIndicatorHeight
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:traitCollection];
  [v3 staticDimensionSize];
  v5 = v4;

  return v5;
}

- (void)_updateForChangedScrollRelatedInsets
{
  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  [(UIScrollView *)self _updateUsesStaticScrollBar];
  [(UIScrollView *)self _effectiveContentInset];
  v5 = v4;
  v7 = v6;
  v8 = v3;
  x = self->_pageDecelerationTarget.x;
  accuracy = self->_accuracy;
  v12 = self->_firstPageOffset.horizontal - v11;
  if (accuracy == 1.0)
  {
    v14 = round(v12);
    if (x < v14)
    {
      goto LABEL_11;
    }

    v17 = round(v3 + self->_contentSize.width);
  }

  else
  {
    v13 = floor(v12);
    v14 = v13 + round(accuracy * (v12 - v13)) / accuracy;
    if (x < v14)
    {
      goto LABEL_11;
    }

    v15 = v3 + self->_contentSize.width;
    v16 = floor(v15);
    v17 = v16 + round(accuracy * (v15 - v16)) / accuracy;
  }

  [(UIView *)self bounds];
  if (x <= v17 - v18)
  {
    goto LABEL_12;
  }

  v19 = self->_accuracy;
  v20 = v8 + self->_contentSize.width;
  if (v19 == 1.0)
  {
    v22 = round(v20);
  }

  else
  {
    v21 = floor(v20);
    v22 = v21 + round(v19 * (v20 - v21)) / v19;
  }

  [(UIView *)self bounds];
  v14 = v22 - v23;
LABEL_11:
  self->_pageDecelerationTarget.x = v14;
LABEL_12:
  y = self->_pageDecelerationTarget.y;
  v25 = self->_accuracy;
  v26 = self->_firstPageOffset.vertical - v5;
  if (v25 == 1.0)
  {
    v28 = round(v26);
    if (y < v28)
    {
      goto LABEL_22;
    }

    v31 = round(v7 + self->_contentSize.height);
  }

  else
  {
    v27 = floor(v26);
    v28 = v27 + round(v25 * (v26 - v27)) / v25;
    if (y < v28)
    {
      goto LABEL_22;
    }

    v29 = v7 + self->_contentSize.height;
    v30 = floor(v29);
    v31 = v30 + round(v25 * (v29 - v30)) / v25;
  }

  [(UIView *)self bounds];
  if (y <= v31 - v32)
  {
    goto LABEL_23;
  }

  v33 = self->_accuracy;
  v34 = v7 + self->_contentSize.height;
  if (v33 == 1.0)
  {
    v36 = round(v34);
  }

  else
  {
    v35 = floor(v34);
    v36 = v35 + round(v33 * (v34 - v35)) / v33;
  }

  [(UIView *)self bounds];
  v28 = v36 - v37;
LABEL_22:
  self->_pageDecelerationTarget.y = v28;
LABEL_23:

  [(UIScrollView *)self _notifyAdjustedContentInsetDidChange];
}

- (void)_notifyAdjustedContentInsetDidChange
{
  [(UIScrollView *)self adjustedContentInsetDidChange];
  if (*(&self->_scrollViewFlags + 15))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scrollViewDidChangeAdjustedContentInset:self];
  }
}

uint64_t __75__UIScrollView__sendGeometryAffectingContentBottomChangedToScrollObservers__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewGeometryAffectingContentBottomDidChange:v5];
  }

  return result;
}

- (void)_updateForChangedScrollIndicatorRelatedInsets
{
  [(UIScrollView *)self _setCachedVerticalScrollIndicatorBaseInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
  [(UIScrollView *)self _setCachedHorizontalScrollIndicatorBaseInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
  if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
  {
    [(UIScrollView *)self _adjustScrollerIndicators:1 alwaysShowingThem:0];
  }

  [(UIScrollView *)self _updateAccessories];
}

- (UIEdgeInsets)scrollIndicatorInsets
{
  if (dyld_program_sdk_at_least())
  {
    [(UIScrollView *)self verticalScrollIndicatorInsets];
    top = v3;
    left = v5;
    bottom = v7;
    right = v9;
    [(UIScrollView *)self horizontalScrollIndicatorInsets];
    if (left != v14 || top != v11 || right != v13 || bottom != v12)
    {
      left = 0.0;
      top = 0.0;
      bottom = 0.0;
      right = 0.0;
    }
  }

  else
  {
    top = self->_scrollIndicatorInset.top;
    left = self->_scrollIndicatorInset.left;
    bottom = self->_scrollIndicatorInset.bottom;
    right = self->_scrollIndicatorInset.right;
  }

  v18 = top;
  v19 = left;
  v20 = bottom;
  v21 = right;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

void __32__UIScrollView__notifyDidScroll__block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 _observeScrollViewDidScroll:*(a1 + 32)];
  }

  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v4 _didScroll];
  }
}

- (UIEdgeInsets)_autoScrollTouchInsets
{
  _autoScrollAssistant = [(UIScrollView *)self _autoScrollAssistant];
  [_autoScrollAssistant touchInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGPoint)_contentOffsetOrDeferredContentOffset
{
  if (self->_deferredUpdateTargetIsValid)
  {
    x = self->_deferredUpdateTargetContentOffset.x;
    y = self->_deferredUpdateTargetContentOffset.y;
  }

  else
  {
    [(UIScrollView *)self contentOffset:v2];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (id)_boundingPathForSubtree
{
  if ([(UIScrollView *)self _resetsBoundingPathForSubtree])
  {
    _boundingPathForSubtree = objc_getAssociatedObject(self, &_UIScrollViewBoundingPathForSubtreeKey);
    if (!_boundingPathForSubtree)
    {
      v4 = [_UIRectangularBoundingPath alloc];
      [(UIView *)self bounds];
      _boundingPathForSubtree = [(_UIRectangularBoundingPath *)v4 initWithCoordinateSpace:self boundingRect:?];
      objc_setAssociatedObject(self, &_UIScrollViewBoundingPathForSubtreeKey, _boundingPathForSubtree, 1);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIScrollView;
    _boundingPathForSubtree = [(UIView *)&v6 _boundingPathForSubtree];
  }

  return _boundingPathForSubtree;
}

- (NSDirectionalEdgeInsets)_directionalAccessoryEdgeInsets
{
  v2 = *(&self->super._viewFlags + 2);
  top = self->_accessoryInsets.top;
  left = self->_accessoryInsets.left;
  bottom = self->_accessoryInsets.bottom;
  if ((v2 & 0x400000) != 0)
  {
    right = self->_accessoryInsets.right;
  }

  else
  {
    right = self->_accessoryInsets.left;
  }

  if ((v2 & 0x400000) == 0)
  {
    left = self->_accessoryInsets.right;
  }

  result.trailing = left;
  result.bottom = bottom;
  result.leading = right;
  result.top = top;
  return result;
}

- (CGSize)_nsis_contentSize
{
  [(UIView *)self nsli_engineToUserScalingCoefficients];
  v23 = v4;
  v24 = v3;
  [(UIView *)self _currentScreenScale];
  v22 = v5;
  _layoutEngineCreateIfNecessary = [(UIView *)self _layoutEngineCreateIfNecessary];
  _contentWidthVariable = [(UIScrollView *)self _contentWidthVariable];
  [_layoutEngineCreateIfNecessary valueForVariable:_contentWidthVariable];
  v21 = v8;
  _contentHeightVariable = [(UIScrollView *)self _contentHeightVariable];
  [_layoutEngineCreateIfNecessary valueForVariable:_contentHeightVariable];
  v20 = v10;

  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  if (_getDelegateZoomView)
  {
    delegate = [_layoutEngineCreateIfNecessary delegate];
    if ((dyld_program_sdk_at_least() & 1) != 0 || (*&v13 = 1.0, v19 = v13, delegate) && [delegate _forceLayoutEngineSolutionInRationalEdges])
    {
      [_getDelegateZoomView transform];
      *&v19 = v26;
    }

    v14 = *&v19;
  }

  else
  {
    v14 = 1.0;
  }

  v15.f64[0] = v21;
  v15.f64[1] = v20;
  v16.f64[0] = v24;
  v16.f64[1] = v23;
  v25 = vdivq_f64(vmulq_n_f64(vrndaq_f64(vmulq_f64(vmulq_n_f64(v16, *&v22), vrndaq_f64(v15))), v14), vdupq_lane_s64(v22, 0));

  v18 = v25.f64[1];
  v17 = v25.f64[0];
  result.height = v18;
  result.width = v17;
  return result;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = UIScrollView;
  v3 = [(UIView *)&v10 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [(UIScrollView *)self contentOffset];
  v5 = NSStringFromCGPoint(v12);
  [(UIScrollView *)self contentSize];
  v6 = NSStringFromCGSize(v13);
  [(UIScrollView *)self adjustedContentInset];
  v7 = NSStringFromUIEdgeInsets(v14);
  v8 = [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction debugInfoVerbose:0];
  [v4 appendFormat:@"; contentOffset: %@; contentSize: %@; adjustedContentInset: %@%@>", v5, v6, v7, v8];

  return v4;
}

- (id)nsli_contentHeightVariable
{
  contentHeightVariable = self->_contentHeightVariable;
  if (!contentHeightVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, 1, 0);
    v5 = self->_contentHeightVariable;
    self->_contentHeightVariable = v4;

    contentHeightVariable = self->_contentHeightVariable;
  }

  return contentHeightVariable;
}

- (BOOL)_evaluateWantsConstrainedContentSize
{
  if ((*(&self->super._viewFlags + 7) & 4) != 0 && (*(&self->_scrollViewFlags + 17) & 2) == 0)
  {
    _contentWidthVariable = [(UIScrollView *)self _contentWidthVariable];
    if (_contentWidthVariable)
    {

      goto LABEL_6;
    }

    _contentHeightVariable = [(UIScrollView *)self _contentHeightVariable];

    if (_contentHeightVariable)
    {
LABEL_6:
      _layoutEngine = [(UIView *)self _layoutEngine];
      nsli_contentWidthVariable = [(UIScrollView *)self nsli_contentWidthVariable];
      if ([_layoutEngine hasValue:0 forVariable:nsli_contentWidthVariable])
      {
      }

      else
      {
        nsli_contentHeightVariable = [(UIScrollView *)self nsli_contentHeightVariable];
        v8 = [_layoutEngine hasValue:0 forVariable:nsli_contentHeightVariable];

        if (!v8)
        {
LABEL_10:

          return (*(&self->_scrollViewFlags + 17) >> 1) & 1;
        }
      }

      [(UIScrollView *)self _setWantsConstrainedContentSize:1];
      goto LABEL_10;
    }
  }

  return (*(&self->_scrollViewFlags + 17) >> 1) & 1;
}

- (id)nsli_contentWidthVariable
{
  contentWidthVariable = self->_contentWidthVariable;
  if (!contentWidthVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, 1, 0);
    v5 = self->_contentWidthVariable;
    self->_contentWidthVariable = v4;

    contentWidthVariable = self->_contentWidthVariable;
  }

  return contentWidthVariable;
}

- (void)removeFromSuperview
{
  [(UIScrollView *)self _stopScrollingNotify:0 pin:1];
  v3.receiver = self;
  v3.super_class = UIScrollView;
  [(UIView *)&v3 removeFromSuperview];
}

- (id)nsli_contentXOffsetVariable
{
  contentXOffsetVariable = self->_contentXOffsetVariable;
  if (!contentXOffsetVariable)
  {
    v4 = [MEMORY[0x1E6997798] variableWithDelegate:self valueRestriction:0 shouldBeMinimized:0];
    v5 = self->_contentXOffsetVariable;
    self->_contentXOffsetVariable = v4;

    contentXOffsetVariable = self->_contentXOffsetVariable;
  }

  return contentXOffsetVariable;
}

- (id)nsli_contentYOffsetVariable
{
  contentYOffsetVariable = self->_contentYOffsetVariable;
  if (!contentYOffsetVariable)
  {
    v4 = [MEMORY[0x1E6997798] variableWithDelegate:self valueRestriction:0 shouldBeMinimized:0];
    v5 = self->_contentYOffsetVariable;
    self->_contentYOffsetVariable = v4;

    contentYOffsetVariable = self->_contentYOffsetVariable;
  }

  return contentYOffsetVariable;
}

- (UIOffset)_firstPageOffset
{
  horizontal = self->_firstPageOffset.horizontal;
  vertical = self->_firstPageOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (unint64_t)_hiddenPocketEdges
{
  topEdgeEffect = [(UIScrollView *)self topEdgeEffect];
  isHidden = [topEdgeEffect isHidden];

  v5 = isHidden;
  leftEdgeEffect = [(UIScrollView *)self leftEdgeEffect];
  isHidden2 = [leftEdgeEffect isHidden];

  if (isHidden2)
  {
    v5 |= 2uLL;
  }

  bottomEdgeEffect = [(UIScrollView *)self bottomEdgeEffect];
  isHidden3 = [bottomEdgeEffect isHidden];

  if (isHidden3)
  {
    v10 = v5 | 4;
  }

  else
  {
    v10 = v5;
  }

  rightEdgeEffect = [(UIScrollView *)self rightEdgeEffect];
  isHidden4 = [rightEdgeEffect isHidden];

  if (isHidden4)
  {
    return v10 | 8;
  }

  else
  {
    return v10;
  }
}

- (UIScrollViewContentInsetAdjustmentBehavior)contentInsetAdjustmentBehavior
{
  result = self->_contentInsetAdjustmentBehavior;
  if (result == 101)
  {
    return 2;
  }

  if (result == 102)
  {
    return 0;
  }

  return result;
}

- (UIEdgeInsets)_contentInsetForAccessories
{
  [(UIScrollView *)self _systemContentInsetIncludingAccessories:0];
  v4 = v3 + self->_contentInset.top;
  v6 = v5 + self->_contentInset.left;
  v8 = v7 + self->_contentInset.bottom;
  v10 = v9 + self->_contentInset.right;
  [(UIView *)self safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  _edgesApplyingSafeAreaInsetsToScrollAccessoryInsets = [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToScrollAccessoryInsets];
  v20 = fmax(v4, v12);
  if ((_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets & 1) == 0)
  {
    v20 = v4;
  }

  v21 = fmax(v6, v14);
  if ((_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets & 2) == 0)
  {
    v21 = v6;
  }

  v22 = fmax(v8, v16);
  if ((_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets & 4) == 0)
  {
    v22 = v8;
  }

  v23 = fmax(v10, v18);
  if ((_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets & 8) == 0)
  {
    v23 = v10;
  }

  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (unint64_t)_edgesApplyingSafeAreaInsetsToScrollAccessoryInsets
{
  contentInsetAdjustmentBehavior = self->_contentInsetAdjustmentBehavior;
  if (contentInsetAdjustmentBehavior == 101 || contentInsetAdjustmentBehavior == 2)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

void __34__UIScrollView__updateAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a3;
  v5 = _UIScrollAccessoryEffectiveEdge([a2 integerValue], *(a1 + 32));
  [v24 setEdge:v5];
  v6 = [*(a1 + 32) _flipsHorizontalAxis];
  if (v6 != [v24 _flipsHorizontalAxis])
  {
    [v24 _setFlipsHorizontalAxis:v6];
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v24 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  v10 = v9;
  v12 = v11;
  v13 = 0;
  if ([*(a1 + 32) _isRenderedHorizontallyFlipped])
  {
    if (v5 <= 3)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          goto LABEL_20;
        }

LABEL_17:
        MaxX = CGRectGetMaxX(*(a1 + 40));
        v27.origin.x = v8;
        v27.origin.y = v7;
        v27.size.width = v10;
        v27.size.height = v12;
        v8 = MaxX - CGRectGetWidth(v27);
        MinY = CGRectGetMinY(*(a1 + 40));
        Height = CGRectGetHeight(*(a1 + 40));
        v28.origin.x = v8;
        v28.origin.y = v7;
        v28.size.width = v10;
        v28.size.height = v12;
        v7 = MinY + (Height - CGRectGetHeight(v28)) * 0.5;
        v13 = 17;
        goto LABEL_20;
      }

LABEL_18:
      MinX = CGRectGetMinX(*(a1 + 40));
      Width = CGRectGetWidth(*(a1 + 40));
      v29.origin.x = v8;
      v29.origin.y = v7;
      v29.size.width = v10;
      v29.size.height = v12;
      v8 = MinX + (Width - CGRectGetWidth(v29)) * 0.5;
      v13 = 34;
      goto LABEL_20;
    }

    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_19:
    v21 = CGRectGetMinX(*(a1 + 40));
    v22 = CGRectGetWidth(*(a1 + 40));
    v30.origin.x = v8;
    v30.origin.y = v7;
    v30.size.width = v10;
    v30.size.height = v12;
    v8 = v21 + (v22 - CGRectGetWidth(v30)) * 0.5;
    MaxY = CGRectGetMaxY(*(a1 + 40));
    v31.origin.x = v8;
    v31.origin.y = v7;
    v31.size.width = v10;
    v31.size.height = v12;
    v7 = MaxY - CGRectGetHeight(v31);
    v13 = 10;
    goto LABEL_20;
  }

  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v5 == 2)
  {
    goto LABEL_18;
  }

  if (v5 == 3)
  {
LABEL_14:
    v14 = CGRectGetMinY(*(a1 + 40));
    v15 = CGRectGetHeight(*(a1 + 40));
    v26.origin.x = v8;
    v26.origin.y = v7;
    v26.size.width = v10;
    v26.size.height = v12;
    v7 = v14 + (v15 - CGRectGetHeight(v26)) * 0.5;
    v13 = 20;
  }

LABEL_20:
  [v24 setFrame:{v8, v7, v10, v12}];
  [v24 setAutoresizingMask:v13];
  [v24 update];
}

- (BOOL)_isBouncing
{
  if ((*(&self->_scrollViewFlags + 17) & 1) == 0)
  {
    return 0;
  }

  [(UIScrollView *)self contentOffset];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self _effectiveContentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v8;
  accuracy = self->_accuracy;
  v17 = self->_firstPageOffset.horizontal - v11;
  if (accuracy == 1.0)
  {
    if (v5 < round(v17))
    {
      return 1;
    }

    v32 = round(v8 + self->_contentSize.width);
    [(UIView *)self bounds];
    v34 = self->_accuracy;
    v35 = v15 + v12 + self->_contentSize.width;
    if (v34 == 1.0)
    {
      v37 = round(v35);
    }

    else
    {
      v36 = floor(v35);
      v37 = v36 + round(v34 * (v35 - v36)) / v34;
    }

    if (v33 < v37)
    {
      v37 = v33;
    }

    v43 = round(v32 - v37);
  }

  else
  {
    v18 = floor(v17);
    if (v5 < v18 + round(accuracy * (v17 - v18)) / accuracy)
    {
      return 1;
    }

    v19 = v8 + self->_contentSize.width;
    v20 = floor(v19);
    v21 = v20 + round(accuracy * (v19 - v20)) / accuracy;
    [(UIView *)self bounds];
    v23 = self->_accuracy;
    width = self->_contentSize.width;
    v25 = v15 + v12 + width;
    if (v23 == 1.0)
    {
      v38 = round(v25);
      if (v22 < v38)
      {
        v38 = v22;
      }

      v28 = floor(v21 - v38);
      v31 = round(v15 + width);
    }

    else
    {
      v26 = floor(v25);
      v27 = v26 + round(v23 * (v25 - v26)) / v23;
      if (v22 >= v27)
      {
        v22 = v27;
      }

      v28 = floor(v21 - v22);
      v29 = v15 + width;
      v30 = floor(v29);
      v31 = v30 + round(v23 * (v29 - v30)) / v23;
    }

    [(UIView *)self bounds];
    v34 = self->_accuracy;
    v40 = v15 + v12 + self->_contentSize.width;
    if (v34 == 1.0)
    {
      v42 = round(v40);
    }

    else
    {
      v41 = floor(v40);
      v42 = v41 + round(v34 * (v40 - v41)) / v34;
    }

    if (v39 < v42)
    {
      v42 = v39;
    }

    v43 = v28 + round(v34 * (v31 - v42 - v28)) / v34;
  }

  if (v5 > v43)
  {
    return 1;
  }

  v44 = self->_firstPageOffset.vertical - v10;
  if (v34 == 1.0)
  {
    if (v7 >= round(v44))
    {
      v59 = round(v14 + self->_contentSize.height);
      [(UIView *)self bounds];
      v61 = self->_accuracy;
      v62 = v14 + v10 + self->_contentSize.height;
      if (v61 == 1.0)
      {
        v64 = round(v62);
      }

      else
      {
        v63 = floor(v62);
        v64 = v63 + round(v61 * (v62 - v63)) / v61;
      }

      if (v60 < v64)
      {
        v64 = v60;
      }

      v71 = round(v59 - v64);
      return v7 > v71;
    }

    return 1;
  }

  v45 = floor(v44);
  if (v7 < v45 + round(v34 * (v44 - v45)) / v34)
  {
    return 1;
  }

  v46 = v14 + self->_contentSize.height;
  v47 = floor(v46);
  v48 = v47 + round(v34 * (v46 - v47)) / v34;
  [(UIView *)self bounds];
  v50 = self->_accuracy;
  height = self->_contentSize.height;
  v52 = v14 + v10 + height;
  if (v50 == 1.0)
  {
    v65 = round(v52);
    if (v49 < v65)
    {
      v65 = v49;
    }

    v55 = floor(v48 - v65);
    v58 = round(v14 + height);
  }

  else
  {
    v53 = floor(v52);
    v54 = v53 + round(v50 * (v52 - v53)) / v50;
    if (v49 < v54)
    {
      v54 = v49;
    }

    v55 = floor(v48 - v54);
    v56 = v14 + height;
    v57 = floor(v56);
    v58 = v57 + round(v50 * (v56 - v57)) / v50;
  }

  [(UIView *)self bounds];
  v67 = self->_accuracy;
  v68 = v14 + v10 + self->_contentSize.height;
  if (v67 == 1.0)
  {
    v70 = round(v68);
  }

  else
  {
    v69 = floor(v68);
    v70 = v69 + round(v67 * (v68 - v69)) / v67;
  }

  if (v66 < v70)
  {
    v70 = v66;
  }

  v71 = v55 + round(v67 * (v58 - v70 - v55)) / v67;
  return v7 > v71;
}

- (void)_allowsKeyboardScrollingDidUpdate
{
  if (self->_keyboardScrollingAnimator && ![(UIScrollView *)self allowsKeyboardScrolling])
  {
    [(_UIScrollViewScrollingAnimator *)self->_keyboardScrollingAnimator invalidate];
    keyboardScrollingAnimator = self->_keyboardScrollingAnimator;
    self->_keyboardScrollingAnimator = 0;
  }
}

- (UIEdgeInsets)_contentScrollInset
{
  top = self->_contentScrollInset.top;
  left = self->_contentScrollInset.left;
  bottom = self->_contentScrollInset.bottom;
  right = self->_contentScrollInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)dealloc
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [(UIScrollView *)self setDelegate:0];
  [(UIScrollView *)self _stopScrollingAndZoomingAnimationsPinningToContentViewport:0];
  [(UIScrollView *)self setScrollTestParameters:0];
  shadows = self->_shadows;
  if (shadows)
  {
    free(shadows);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScrollViewSpringBoardBlankedScreenNotification" object:0];

  [(UIScrollViewPanGestureRecognizer *)self->_pan setScrollView:0];
  [(UIScrollViewPinchGestureRecognizer *)self->_pinch setScrollView:0];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  gestureRecognizers = [(UIView *)self gestureRecognizers];
  v7 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        [*(*(&v28 + 1) + 8 * i) removeTarget:self action:0];
      }

      v8 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  pan = self->_pan;
  self->_pan = 0;

  pinch = self->_pinch;
  self->_pinch = 0;

  touchDelayGestureRecognizer = self->_touchDelayGestureRecognizer;
  self->_touchDelayGestureRecognizer = 0;

  knobLongPressGestureRecognizer = self->_knobLongPressGestureRecognizer;
  self->_knobLongPressGestureRecognizer = 0;

  knobPointerLongPressGestureRecognizer = self->_knobPointerLongPressGestureRecognizer;
  self->_knobPointerLongPressGestureRecognizer = 0;

  knobHoverGestureRecognizer = self->_knobHoverGestureRecognizer;
  self->_knobHoverGestureRecognizer = 0;

  dragAutoScrollGestureRecognizer = self->_dragAutoScrollGestureRecognizer;
  self->_dragAutoScrollGestureRecognizer = 0;

  autoScrollAssistant = self->_autoScrollAssistant;
  self->_autoScrollAssistant = 0;

  lowFidelitySwipeGestureRecognizers = self->_lowFidelitySwipeGestureRecognizers;
  if (self->_lowFidelitySwipeGestureRecognizers[0])
  {
    for (j = 0; j != 4; ++j)
    {
      v21 = lowFidelitySwipeGestureRecognizers[j];
      if (v21)
      {
        lowFidelitySwipeGestureRecognizers[j] = 0;
      }
    }
  }

  [(NSISVariable *)self->_contentWidthVariable setDelegate:0];
  contentWidthVariable = self->_contentWidthVariable;
  self->_contentWidthVariable = 0;

  [(NSISVariable *)self->_contentHeightVariable setDelegate:0];
  contentHeightVariable = self->_contentHeightVariable;
  self->_contentHeightVariable = 0;

  [(NSISVariable *)self->_contentXOffsetVariable setDelegate:0];
  contentXOffsetVariable = self->_contentXOffsetVariable;
  self->_contentXOffsetVariable = 0;

  [(NSISVariable *)self->_contentYOffsetVariable setDelegate:0];
  contentYOffsetVariable = self->_contentYOffsetVariable;
  self->_contentYOffsetVariable = 0;

  automaticContentConstraints = self->_automaticContentConstraints;
  self->_automaticContentConstraints = 0;

  objc_autoreleasePoolPop(v3);
  v27.receiver = self;
  v27.super_class = UIScrollView;
  [(UIView *)&v27 dealloc];
}

- (CGSize)visibleSize
{
  [(UIView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)_actingParentScrollView
{
  delegate = [(UIScrollView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIScrollView *)self delegate];
    v6 = [delegate2 _actingParentScrollViewForScrollView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_resetDiscreteFastScroll
{
  self->_discreteFastScrollCount = 0;
  self->_discreteFastScrollMultiplier = 1.0;
  self->_discreteFastScrollEndTime = 0.0;
}

- (void)_updatePanGesture
{
  v144 = *MEMORY[0x1E69E9840];
  p_scrollViewFlags = &self->_scrollViewFlags;
  if ((*(&self->_scrollViewFlags + 2) & 0x10) == 0 && (*(&self->_scrollViewFlags + 12) & 0x10) == 0)
  {
    v4 = [(UIGestureRecognizer *)self->_pan _activeEventOfType:10];
    if ([(UIPanGestureRecognizer *)self->_pan numberOfTouches])
    {
      _activeTouches = [(UIPanGestureRecognizer *)&self->_pan->super.super.super.isa _activeTouches];
      firstObject = [_activeTouches firstObject];

      if ([firstObject _isPointerTouch])
      {
        if ((*(p_scrollViewFlags + 21) & 0x78) == 0 && [(UIGestureRecognizer *)self->_pan state]== UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self->_knobPointerLongPressGestureRecognizer state]== UIGestureRecognizerStateBegan)
        {
          [(UIScrollView *)self _beginDirectManipulationIfNecessaryWithGestureRecognizer:self->_knobPointerLongPressGestureRecognizer];
        }

        _supportsPointerDragScrolling = [(UIScrollView *)self _supportsPointerDragScrolling];
        if ((*(p_scrollViewFlags + 21) & 0x78) == 0 && !_supportsPointerDragScrolling)
        {

LABEL_168:
          return;
        }
      }
    }

    if ((*p_scrollViewFlags & 2) == 0)
    {
      v9 = *(p_scrollViewFlags + 12);
      *p_scrollViewFlags |= 2uLL;
      *(p_scrollViewFlags + 12) = v9 & 0xFFF7FEFFFFFFFFFFLL | 0x10000000000;
      if (![(UIPanGestureRecognizer *)self->_pan numberOfTouches])
      {
        *(p_scrollViewFlags + 5) &= 0xFFFF87FF;
      }
    }

    [(UIView *)self bounds];
    v132 = v10;
    v133 = v11;
    *p_scrollViewFlags |= 0x800000uLL;
    if ([(UIGestureRecognizer *)self->_pan state]== UIGestureRecognizerStateBegan)
    {
      if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
      {
        [(UIScrollView *)self _adjustScrollerIndicators:1 alwaysShowingThem:0];
      }

      [(UIScrollView *)self _updateAccessories];
      [(UIScrollView *)self _scrollViewWillBeginDragging];
      [(_UIScrollViewScrollingAnimator *)self->_keyboardScrollingAnimator cancelInteractiveScroll];
      [(UIScrollView *)self _setKnobInteractionGestureDelayed:1];
      if ((*p_scrollViewFlags & 2) == 0)
      {
        goto LABEL_168;
      }
    }

    if (!self->_scrollHeartbeat)
    {
      [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:@"updatePanGesture starting to drag"];
    }

    v12 = v4;
    [(UIScrollView *)self _bumpTrackingWatchdogTimer];
    if ([(UIScrollViewPanGestureRecognizer *)self->_pan _beganCaughtDeceleratingScrollViewAndMoved])
    {
      [(UIScrollView *)self _adjustStartOffsetForGrabbedBouncingScrollView];
    }

    [(UIScrollViewPanGestureRecognizer *)self->_pan translationInView:self];
    v127 = v14;
    v128 = v13;
    v15 = v13;
    v16 = v14;
    v17 = *p_scrollViewFlags;
    alwaysBounceHorizontal = [(UIScrollView *)self alwaysBounceHorizontal];
    alwaysBounceVertical = [(UIScrollView *)self alwaysBounceVertical];
    v137 = 0;
    startOffsetX = self->_startOffsetX;
    startOffsetY = self->_startOffsetY;
    v136 = 0;
    self->_previousHorizontalVelocity = self->_horizontalVelocity;
    self->_previousVerticalVelocity = self->_verticalVelocity;
    [(UIScrollViewPanGestureRecognizer *)self->_pan velocityInView:self];
    v21 = v20;
    v23 = v22;
    self->_horizontalVelocity = -(v20 * self->_velocityScaleFactor);
    self->_verticalVelocity = -(v22 * self->_velocityScaleFactor);
    if (v12 && ![v12 _scrollType])
    {
      if (((_UIInternalPreferenceUsesDefault(&_MergedGlobals_957, @"DiscreteScrollAnimationEnabled", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B6A4) && !_AXSReduceMotionEnabled())
      {
        window = [(UIView *)self window];
        v136 = window != 0;
      }

      else
      {
        v136 = 0;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v125 = v15;
    v126 = v16;
    v25 = startOffsetX - v15;
    v26 = startOffsetY - v16;
    scrollableAncestor = self->_scrollableAncestor;
    if (scrollableAncestor)
    {
      v28 = v16;
      v29 = self->_startOffsetX;
      v30 = v15;
      v31 = self->_startOffsetY;
      v135 = 0;
      [(_UIScrollViewScrollableAncestor *)scrollableAncestor _scrollView:self adjustedUnconstrainedOffsetForUnconstrainedOffset:&self->_horizontalVelocity startOffset:&self->_verticalVelocity horizontalVelocity:&v135 verticalVelocity:v25 animator:v26, v29, v31];
      v33 = v32;
      v35 = v34;
      v131 = v135;
      v36 = v29 - self->_startOffsetX;
      v16 = v28;
      v25 = v33 - v36;
      v37 = v31 - self->_startOffsetY;
      v15 = v30;
      v26 = v35 - v37;
    }

    else
    {
      v131 = 0;
    }

    v38 = (v17 >> 2) & 1;
    v39 = (v17 >> 3) & 1;
    if (![(UIScrollViewPanGestureRecognizer *)self->_pan _caughtDeceleratingScrollView])
    {
      if ((*(p_scrollViewFlags + 21) & 0x78) != 0)
      {
        [(UIScrollView *)self _newScrollOffsetForScrubReturningAnimated:&v136];
        v25 = v40;
        v26 = v41;
LABEL_46:
        v38 = 0;
        LOBYTE(v39) = 0;
        goto LABEL_47;
      }

      if (![(UIScrollViewPanGestureRecognizer *)self->_pan _allowsBounce])
      {
        [(UIScrollView *)self _clampScrollOffsetToBounds:v25, v26];
        v25 = v46;
        v26 = v47;
        [(UIPanGestureRecognizer *)self->_pan setTranslation:self inView:self->_startOffsetX - v46, self->_startOffsetY - v47];
        goto LABEL_46;
      }

      if (self->_currentScrollDeviceCategory == 6)
      {
        [(UIScrollView *)self _rubberBandingReversalOffsetForOriginalOffset:v25 velocity:v26 currentPanTranslation:v21, v23, v128, v127];
        v25 = v25 - v42;
        v26 = v26 - v43;
        v15 = v42 + v125;
        v16 = v43 + v126;
        [(UIPanGestureRecognizer *)self->_pan setTranslation:self inView:v15, v16];
      }

      [(UIScrollView *)self _rubberBandContentOffsetForOffset:&v137 + 1 outsideX:&v137 outsideY:v25, v26];
      v25 = v44;
      v26 = v45;
    }

LABEL_47:
    [(UIScrollView *)self _effectiveContentInset];
    v50 = *&self->_accuracy;
    v53.f64[0] = v52 + v51 + self->_contentSize.width;
    v53.f64[1] = v132;
    if (*&v50 == 1.0)
    {
      v55 = vrndaq_f64(v53);
    }

    else
    {
      v54 = vrndmq_f64(v53);
      v55 = vaddq_f64(v54, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v53, v54), *&v50)), vdupq_lane_s64(v50, 0)));
    }

    if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v55, 1), v55))).u8[0])
    {
      v4 = v12;
    }

    else
    {
      v56 = alwaysBounceHorizontal & v39;
      v4 = v12;
      if ((v56 & 1) == 0)
      {
        self->_horizontalVelocity = 0.0;
        v50 = *&self->_accuracy;
      }
    }

    v57.f64[0] = v49 + v48 + self->_contentSize.height;
    v57.f64[1] = v133;
    v58 = v24;
    if (*&v50 == 1.0)
    {
      v60 = vrndaq_f64(v57);
    }

    else
    {
      v59 = vrndmq_f64(v57);
      v60 = vaddq_f64(v59, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v57, v59), *&v50)), vdupq_lane_s64(v50, 0)));
    }

    if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v60, 1), v60))).u8[0] & 1) == 0 && (alwaysBounceVertical & v38 & 1) == 0)
    {
      self->_verticalVelocity = 0.0;
    }

    v61 = *(p_scrollViewFlags + 12);
    if ((v61 & 0x20) == 0)
    {
      goto LABEL_71;
    }

    if (v15 >= 0.0)
    {
      if (v15 <= 0.0)
      {
LABEL_66:
        if (v16 >= 0.0)
        {
          if (v16 <= 0.0)
          {
            goto LABEL_71;
          }

          v63 = -513;
        }

        else
        {
          v63 = -257;
        }

        v61 &= v63;
        *(p_scrollViewFlags + 12) = v61;
LABEL_71:
        horizontalVelocity = self->_horizontalVelocity;
        if (horizontalVelocity == 0.0)
        {
          verticalVelocity = self->_verticalVelocity;
          if (verticalVelocity == 0.0)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if ((v137 & 0x100) != 0)
          {
            goto LABEL_84;
          }

          v65 = 1.0;
          if (horizontalVelocity < 0.0)
          {
            v65 = 0.0;
          }

          if (v65 != ((v61 >> 10) & 1))
          {
            goto LABEL_84;
          }

          verticalVelocity = self->_verticalVelocity;
          if (verticalVelocity == 0.0)
          {
            goto LABEL_83;
          }
        }

        if ((v137 & 1) == 0)
        {
          v67 = 1.0;
          if (verticalVelocity < 0.0)
          {
            v67 = 0.0;
          }

          if (v67 == ((v61 >> 11) & 1))
          {
LABEL_83:
            if (horizontalVelocity * horizontalVelocity + verticalVelocity * verticalVelocity >= 0.0169)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_84:
        if (self->_fastScrollCount >= 1)
        {
          self->_fastScrollCount = 0;
          self->_fastScrollMultiplier = 1.0;
          v61 = *(p_scrollViewFlags + 12);
        }

        v61 &= 0xFFFFFFFFFFFFFC3FLL;
        *(p_scrollViewFlags + 12) = v61;
        horizontalVelocity = self->_horizontalVelocity;
LABEL_87:
        v68 = horizontalVelocity < 0.0;
        if (horizontalVelocity != 0.0)
        {
          v69 = 1.0;
          if (v68)
          {
            v69 = 0.0;
          }

          v61 = v61 & 0xFFFFFFFFFFFFFBFFLL | ((v69 & 1) << 10);
          *(p_scrollViewFlags + 12) = v61;
        }

        v70 = self->_verticalVelocity;
        v71 = v70 < 0.0;
        if (v70 != 0.0)
        {
          v72 = 1.0;
          if (v71)
          {
            v72 = 0.0;
          }

          *(p_scrollViewFlags + 12) = v61 & 0xFFFFFFFFFFFFF7FFLL | ((v72 & 1) << 11);
        }

        if (!v24)
        {
          fastScrollCount = self->_fastScrollCount;
          if (fastScrollCount < 3)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        [(UIScrollViewPanGestureRecognizer *)self->_pan _velocityIncludingDiscreteScrollInView:self];
        velocityScaleFactor = self->_velocityScaleFactor;
        v75 = v74 * velocityScaleFactor;
        v77 = v76 * velocityScaleFactor;
        *&v74 = v74 * velocityScaleFactor;
        *&v76 = v76 * velocityScaleFactor;
        v78 = hypotf(*&v74, *&v76);
        if (v75 == 0.0)
        {
          v79 = v15;
        }

        else
        {
          v79 = v75;
        }

        if (v77 == 0.0)
        {
          v77 = v16;
        }

        if (v79 == 0.0)
        {
          v80 = 0;
        }

        else if ((v137 & 0x100) != 0)
        {
          v80 = 1;
        }

        else
        {
          v80 = (v79 >= 0.0) ^ ((*(p_scrollViewFlags + 13) & 4) >> 2);
        }

        v82 = v78;
        if (v77 == 0.0)
        {
          v83 = 0;
        }

        else
        {
          if (v137)
          {
            goto LABEL_120;
          }

          v83 = (v77 >= 0.0) ^ ((*(p_scrollViewFlags + 13) & 8) >> 3);
        }

        v85 = v82 < 0.13 && v78 > 0.0;
        if (((v80 | v83) & 1) == 0 && !v85)
        {
LABEL_121:
          if (v79 != 0.0)
          {
            *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFBFFLL | ((v79 >= 0.0) << 10);
          }

          if (v77 != 0.0)
          {
            *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFFFF7FFLL | ((v77 >= 0.0) << 11);
          }

          if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B6A8, @"DiscreteFastScrollEnabled", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B6AC)
          {
            v86 = _UIInternalPreferenceUsesDefault(&unk_1ED48B750, @"DiscreteFastScrollTriggerVelocity", _UIInternalPreferenceUpdateDouble);
            v87 = *&qword_1ED48B758;
            if (v86)
            {
              v87 = 0.6;
            }

            if (v87 <= v82)
            {
              [v4 timestamp];
              v89 = v88;
              discreteFastScrollLastHighVelocityEventTime = self->_discreteFastScrollLastHighVelocityEventTime;
              if (discreteFastScrollLastHighVelocityEventTime != 0.0)
              {
                v91 = _UIInternalPreferenceUsesDefault(&unk_1ED48B740, @"DiscreteFastScrollIntervalBetweenEvents", _UIInternalPreferenceUpdateDouble);
                v92 = *&qword_1ED48B748;
                if (v91)
                {
                  v92 = 0.075;
                }

                if (v89 >= discreteFastScrollLastHighVelocityEventTime + v92)
                {
                  ++self->_discreteFastScrollCount;
                  self->_discreteFastScrollEndTime = v89;
                }
              }

              self->_discreteFastScrollLastHighVelocityEventTime = v89;
            }
          }

          fastScrollCount = self->_fastScrollCount;
          if (fastScrollCount <= 2)
          {
            discreteFastScrollCount = self->_discreteFastScrollCount;
            v109 = discreteFastScrollCount - 3;
            if (discreteFastScrollCount >= 3)
            {
              v110 = hypot(v25 - self->_startOffsetX, v26 - self->_startOffsetY);
              if (v110 > 0.0)
              {
                v111 = v110;
                v112 = vcvtd_n_f64_u64(v109, 1uLL) + 1.0;
                v113 = _UIInternalPreferenceUsesDefault(&unk_1ED48B760, @"DiscreteFastScrollDistanceScale", _UIInternalPreferenceUpdateDouble);
                v114 = *&qword_1ED48B768;
                if (v113)
                {
                  v114 = 240.0;
                }

                v115 = fmin(self->_discreteFastScrollStartMultiplier + v112 * fmin(v111 / v114, 0.9), 16.0);
                if (self->_discreteFastScrollMultiplier != v115)
                {
                  self->_discreteFastScrollMultiplier = v115;
                  [(UIScrollView *)self contentOffset];
                  self->_startOffsetX = v116;
                  [(UIScrollView *)self contentOffset];
                  self->_startOffsetY = v117;
                  [(UIPanGestureRecognizer *)self->_pan setTranslation:self inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
                  [(UIScrollViewPanGestureRecognizer *)self->_pan _setDiscreteFastScrollMultiplier:self->_discreteFastScrollMultiplier];
                }
              }
            }

LABEL_138:
            pinch = self->_pinch;
            v95 = v131;
            if (pinch && [(UIGestureRecognizer *)pinch state]&& [(UIPinchGestureRecognizer *)self->_pinch numberOfTouches]> 1)
            {
              goto LABEL_167;
            }

            if (_effectiveSystemGestureRecognitionIsPossibleForGesture(self, self->_pan))
            {
              v96 = *(__UILogGetCategoryCachedImpl("EventDispatch", &_updatePanGesture___s_category) + 8);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
              {
                v97 = objc_opt_class();
                v98 = NSStringFromClass(v97);
                state = [(UIGestureRecognizer *)self->_pan state];
                *buf = 138543874;
                v139 = v98;
                v140 = 2048;
                selfCopy = self;
                v142 = 2048;
                v143 = state;
                _os_log_impl(&dword_188A29000, v96, OS_LOG_TYPE_DEFAULT, "Scroll view <%{public}@ %p> ignoring pan gesture (state %ld) because system gestures are possible", buf, 0x20u);

                v95 = v131;
              }

              goto LABEL_166;
            }

            v100 = *(p_scrollViewFlags + 12);
            *(p_scrollViewFlags + 12) = v100 | 0x80000;
            if ((v100 & 0x10000000000000) != 0)
            {
              [(UIPanGestureRecognizer *)self->_pan locationInView:self];
              v102 = v101;
              v104 = v103;
              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained _scrollView:self adjustedOffsetForOffset:&self->_horizontalVelocity translation:&self->_verticalVelocity startPoint:v25 locationInView:v26 horizontalVelocity:v128 verticalVelocity:{v127, self->_startOffsetX, self->_startOffsetY, v102, v104}];
              v25 = v106;
              v26 = v107;
            }

            if (v131)
            {
              v134[0] = MEMORY[0x1E69E9820];
              v134[1] = 3221225472;
              v134[2] = __33__UIScrollView__updatePanGesture__block_invoke;
              v134[3] = &unk_1E70F6848;
              v134[4] = self;
              *&v134[5] = v25;
              *&v134[6] = v26;
              [v131 addAnimations:v134];
              [v131 startAnimation];
            }

            else
            {
              if ((v58 & v136) == 1)
              {
                v118 = objc_loadWeakRetained(&self->_animation);

                if (v118)
                {
                  v119 = objc_loadWeakRetained(&self->_animation);
                  v121 = v119[13];
                  v120 = v119[14];

                  if (v25 == v121 && v26 == v120)
                  {
                    goto LABEL_164;
                  }

                  v122 = objc_loadWeakRetained(&self->_animation);
                  v122[153] = 1;
                }

                if (_UIInternalPreferenceUsesDefault(&unk_1ED48B730, @"DiscreteScrollAnimationDuration", _UIInternalPreferenceUpdateDouble))
                {
                  v123 = 0.067;
                }

                else
                {
                  v123 = *&qword_1ED48B738;
                }

                [(UIScrollView *)self _setContentOffset:0 duration:&__block_literal_global_701 animationCurve:v25 animationConfigurator:v26, v123];
                goto LABEL_164;
              }

              [(UIScrollView *)self setContentOffset:v25, v26];
            }

LABEL_164:
            if (([(UIScrollView *)self keyboardDismissMode]- 1) > 3)
            {
LABEL_167:
              self->_lastUpdateTime = CACurrentMediaTime();

              goto LABEL_168;
            }

            v96 = +[UIPeripheralHost sharedInstance];
            [v96 scrollView:self didPanWithGesture:self->_pan];
LABEL_166:

            goto LABEL_167;
          }

LABEL_137:
          v93 = (v25 - self->_startOffsetX) * (v25 - self->_startOffsetX) + (v26 - self->_startOffsetY) * (v26 - self->_startOffsetY);
          self->_fastScrollMultiplier = fmin(self->_fastScrollStartMultiplier + (vcvtd_n_f64_u64(fastScrollCount - 3, 1uLL) + 1.0) * fmin(sqrtf(v93) / 240.0, 0.9), 16.0);
          goto LABEL_138;
        }

LABEL_120:
        [(UIScrollView *)self _resetDiscreteFastScroll];
        goto LABEL_121;
      }

      v62 = -129;
    }

    else
    {
      v62 = -65;
    }

    v61 &= v62;
    *(p_scrollViewFlags + 12) = v61;
    goto LABEL_66;
  }
}

- (id)_relativePanView
{
  WeakRetained = objc_loadWeakRetained(&self->_relativePanView);

  return WeakRetained;
}

- (uint64_t)_cancelTouchDelayGestureRecognizerIfNecessary
{
  if (result)
  {
    v1 = result;
    result = [*(result + 1008) isEnabled];
    if (result)
    {
      result = *(v1 + 1008);
      if (result)
      {
        if ((*(result + 12) & 8) != 0)
        {
          result = [result state];
          if (!result)
          {
            [*(v1 + 1008) setEnabled:0];
            v2 = *(v1 + 1008);

            return [v2 setEnabled:1];
          }
        }
      }
    }
  }

  return result;
}

- (void)_bumpTrackingWatchdogTimer
{
  if ([UIApp _isSpringBoard] && self->_trackingWatchdogTimer)
  {
    v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_SpringBoardTrackingModeWatchdogTimeout, @"SpringBoardTrackingModeWatchdogTimeout", _UIInternalPreferenceUpdateDouble);
    v4 = *&qword_1EA95E810;
    if (v3)
    {
      v4 = 60.0;
    }

    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];
    [(NSTimer *)self->_trackingWatchdogTimer setFireDate:v5];
  }
}

- (id)_parentScrollView
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v3 = superview;
    while (![v3 __isKindOfUIScrollView])
    {
      superview = [v3 superview];
      v3 = superview;
      if (!superview)
      {
        goto LABEL_7;
      }
    }

    superview = v3;
  }

LABEL_7:

  return superview;
}

- (unint64_t)_currentlyAbuttedContentEdges
{
  [(UIView *)self bounds];

  return [(UIScrollView *)self _abuttedEdgesForContentOffset:?];
}

- (BOOL)_delegateShouldPanGestureTryToBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _scrollViewShouldPanGestureTryToBegin:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_handlePanFailure
{
  *(&self->_scrollViewFlags + 12) &= 0xFFFFFFFFFFFFFC3FLL;
  [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
  [(UIScrollView *)self _endPanNormal:0];

  [(UIScrollView *)self _trackingDidEnd];
}

- (void)_sendDelayedTouchesIfNecessary
{
  _scrollViewTouchDelayGesture = [(UIScrollView *)self _scrollViewTouchDelayGesture];
  state = [_scrollViewTouchDelayGesture state];
  v3 = _scrollViewTouchDelayGesture;
  if (_scrollViewTouchDelayGesture && !state && (_scrollViewTouchDelayGesture[12] & 8) != 0)
  {
    [_scrollViewTouchDelayGesture sendDelayedTouches];
    v3 = _scrollViewTouchDelayGesture;
  }
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  interactionActivityTrackingBaseName = [(UIScrollView *)self interactionActivityTrackingBaseName];
  v4 = interactionActivityTrackingBaseName;
  if (interactionActivityTrackingBaseName)
  {
    _effectiveInteractionActivityTrackingBaseName = interactionActivityTrackingBaseName;
  }

  else
  {
    _enclosingViewController = [(UIScrollView *)self _enclosingViewController];
    _effectiveInteractionActivityTrackingBaseName = [_enclosingViewController _effectiveInteractionActivityTrackingBaseName];
  }

  return _effectiveInteractionActivityTrackingBaseName;
}

- (void)_scrollViewWillBeginDragging
{
  self->_telemetryOffsetChangeHighRateDuration = 0.0;
  self->_telemetryOffsetChangeCount = 0;
  self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
  _UIQOSManagedCommitsBegin(self, @"Dragging");
  [(_UIScrollViewVFD *)self->_vfd activateSubreason:?];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690F8);
  v4 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v10 = 0;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  v5 = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA969100);
  v6 = *(v5 + 8);
  if (os_signpost_id_make_with_pointer(*(v5 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v10 = 0;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  [(UIScrollView *)self _beginActivityTrackingIfNeededForReason:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextSelectionWillScroll" object:self];
  [defaultCenter postNotificationName:@"_UIScrollViewWillBeginDraggingNotification" object:self];
  kdebug_trace();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__UIScrollView__scrollViewWillBeginDragging__block_invoke;
  v9[3] = &unk_1E712A710;
  v9[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewWillBeginDragging:self];
  }

  kdebug_trace();
}

- (void)_beginScrollingCursorOverrideIfNecessary
{
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_OverrideCursorDuringScroll, @"OverrideCursorDuringScroll", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B694) && !self->_scrollingPointerRegion)
  {
    [(UIView *)self frame];
    v3 = [UIPointerRegion regionWithRect:@"UIScrollView.scrollingPointerRegion" identifier:?];
    scrollingPointerRegion = self->_scrollingPointerRegion;
    self->_scrollingPointerRegion = v3;

    superview = [(UIView *)self superview];
    [(UIPointerRegion *)self->_scrollingPointerRegion setReferenceView:superview];

    ++self->_scrollingPointerRegionGenerationID;
    [(UIPointerRegion *)self->_scrollingPointerRegion setGenerationID:?];
    v6 = +[_UIPointerArbiter sharedArbiter];
    [v6 beginScrollingWithRegion:self->_scrollingPointerRegion];
  }
}

- (BOOL)_hasScrollViewWillEndDraggingInvocationsToPerform
{
  if ((objc_opt_respondsToSelector() & 1) != 0 || ([(UIScrollView *)self _observerImplementingWillEndDraggingMethod], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (UIEdgeInsets)_collapsableContentPadding
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4010000000;
  v14 = "";
  v15 = 0u;
  v16 = 0u;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__UIScrollView__collapsableContentPadding__block_invoke;
  v10[3] = &unk_1E712A7D0;
  v10[4] = self;
  v10[5] = &v11;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v10];
  v2 = v12[4];
  v3 = v12[5];
  v4 = v12[6];
  v5 = v12[7];
  _Block_object_dispose(&v11, 8);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)_registerForSpringBoardBlankedScreenNotification
{
  if (_registerForSpringBoardBlankedScreenNotification_onceToken[0] != -1)
  {
    dispatch_once(_registerForSpringBoardBlankedScreenNotification_onceToken, &__block_literal_global_566_0);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__springBoardBlankedScreenNotification_ name:@"_UIScrollViewSpringBoardBlankedScreenNotification" object:0];
}

void __64__UIScrollView__registerForSpringBoardBlankedScreenNotification__block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __SpringBoardBlankedScreen, @"com.apple.springboard.hasBlankedScreen", 0, CFNotificationSuspensionBehaviorDrop);
}

- (BOOL)_canHandleAsyncScrollEvent
{
  v2 = *(&self->_scrollViewFlags + 12);
  if ((v2 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000000000) != 0)
  {
    return 1;
  }

  return [(UIScrollView *)self _subclassHandlesAsyncScrollEvent];
}

- (void)_scrollViewDidEndDecelerating
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextSelectionDidScroll" object:self];
  [defaultCenter postNotificationName:@"_UIScrollViewDidEndDeceleratingNotification" object:self];
}

- (void)_unregisterForSpringBoardBlankedScreenNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScrollViewSpringBoardBlankedScreenNotification" object:0];
}

- (void)_endScrollingCursorOverrideIfNecessary
{
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_OverrideCursorDuringScroll, @"OverrideCursorDuringScroll", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B694) && self->_scrollingPointerRegion)
  {
    v3 = +[_UIPointerArbiter sharedArbiter];
    [v3 endScrollingWithRegion:self->_scrollingPointerRegion];

    scrollingPointerRegion = self->_scrollingPointerRegion;
    self->_scrollingPointerRegion = 0;
  }
}

- (void)_scrollViewDidEndDeceleratingForDelegate
{
  [(UIScrollView *)self _scrollViewDidEndDecelerating];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UIScrollView__scrollViewDidEndDeceleratingForDelegate__block_invoke;
  v4[3] = &unk_1E712A710;
  v4[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v4];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDecelerating:self];
  }

  kdebug_trace();
}

- (void)_updateRubberbandingStatisticTrackingState
{
  v2 = *(&self->_scrollViewFlags + 12);
  if ((v2 & 0x100000000000000) == 0 && (*&self->_scrollViewFlags & 0x30) != 0)
  {
    *(&self->_scrollViewFlags + 12) = v2 | 0x100000000000000;
  }
}

- (CGPoint)_animationTargetContentOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_animation);
    v5 = v4[13];
    v6 = v4[14];
  }

  else
  {
    [(UIScrollView *)self contentOffset];
    v5 = v7;
    v6 = v8;
  }

  v9 = v5;
  v10 = v6;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_hideScrollIndicators
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  v3 = *(&self->_scrollViewFlags + 5);
  *(&self->_scrollViewFlags + 5) = v3 & 0xFFBFFFFF;
  if ((v3 & 0x300000) == 0)
  {
    [(UIScrollView *)self _setKnobInteractionGestureDelayed:0];
    *(p_scrollViewFlags + 12) &= 0xFFFFFFFFFFFFFFFCLL;
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = 251658240;
    }

    v8[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__UIScrollView__hideScrollIndicators__block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__UIScrollView__hideScrollIndicators__block_invoke_2;
    v8[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:v7 delay:v9 options:v8 animations:0.5 completion:0.0];
  }
}

uint64_t __37__UIScrollView__hideScrollIndicators__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1536) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1528);

  return [v2 setAlpha:0.0];
}

- (void)_delegateScrollViewAnimationEnded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained scrollViewDidEndScrollingAnimation:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIScrollViewAnimationEndedNotification" object:self];
}

- (void)_clearContentOffsetAnimation
{
  v3 = +[UIAnimator sharedAnimator];
  [v3 removeAnimationsForTarget:self ofKind:objc_opt_class()];

  WeakRetained = objc_loadWeakRetained(&self->_animation);
  [(UIScrollView *)self _clearContentOffsetAnimation:WeakRetained];
}

- (id)_createStaticScrollBar
{
  v2 = [_UIStaticScrollBar alloc];
  v3 = [(_UIStaticScrollBar *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (double)_maxTopOffset
{
  [(UIScrollView *)self _revealableContentPadding];
  v4 = v3;
  [(UIScrollView *)self _effectiveContentInset];
  accuracy = self->_accuracy;
  v7 = self->_firstPageOffset.vertical - v6;
  if (accuracy == 1.0)
  {
    return round(round(v7) - v4);
  }

  v8 = floor(v7);
  v9 = v8 + round(accuracy * (v7 - v8)) / accuracy - v4;
  v10 = floor(v9);
  return v10 + round(accuracy * (v9 - v10)) / accuracy;
}

- (BOOL)_focusCanScrollX
{
  if ([(UIScrollView *)self _canScrollWithoutBouncingX])
  {
    LOBYTE(bouncesHorizontally) = 1;
  }

  else
  {
    bouncesHorizontally = [(UIScrollView *)self bouncesHorizontally];
    if (bouncesHorizontally)
    {

      LOBYTE(bouncesHorizontally) = [(UIScrollView *)self _applicationHasExplicitlySetBounces];
    }
  }

  return bouncesHorizontally;
}

- (BOOL)_focusCanScrollY
{
  if ([(UIScrollView *)self _canScrollWithoutBouncingY])
  {
    LOBYTE(bouncesVertically) = 1;
  }

  else
  {
    bouncesVertically = [(UIScrollView *)self bouncesVertically];
    if (bouncesVertically)
    {

      LOBYTE(bouncesVertically) = [(UIScrollView *)self _applicationHasExplicitlySetBounces];
    }
  }

  return bouncesVertically;
}

- (UIEdgeInsets)_focusScrollableAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (Class)_intelligenceBaseClass
{
  sub_188C3DA28();

  return swift_getObjCClassFromMetadata();
}

- (CGRect)_intelligenceVisibleBounds
{
  selfCopy = self;
  [(UIScrollView *)selfCopy adjustedContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)selfCopy safeAreaInsets];
  v12 = UIEdgeInsetsMax(15, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIView *)selfCopy bounds];
  v23 = UIRectInset(v19, v20, v21, v22, v12, v18, v16, v14);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  collectorCopy = collector;
  selfCopy = self;
  _sSo12UIScrollViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0();
}

- (void)startScrollViewMonitoring
{
  if (objc_opt_class())
  {
    _scrollViewMonitor = [(UIScrollView *)self _scrollViewMonitor];

    if (_scrollViewMonitor)
    {
      v4 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED4A2160) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Did stop scroll view monitoring", buf, 2u);
      }

      [(UIScrollView *)self stopScrollViewMonitoring];
    }

    v5 = [[UIScrollViewMonitor alloc] initWithScrollView:self];
    [(UIScrollView *)self set_scrollViewMonitor:v5];

    _scrollViewMonitor2 = [(UIScrollView *)self _scrollViewMonitor];

    if (_scrollViewMonitor2)
    {
      kdebug_trace();
      v7 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED4A2168) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Did start scroll view monitoring", v13, 2u);
      }

      v8 = objc_alloc(MEMORY[0x1E69CA930]);
      _scrollViewMonitor3 = [(UIScrollView *)self _scrollViewMonitor];
      v10 = [v8 initWithScrollView:self scrollMonitor:_scrollViewMonitor3];

      _scrollViewMonitor4 = [(UIScrollView *)self _scrollViewMonitor];
      [_scrollViewMonitor4 setDelegate:v10];
    }
  }

  else
  {
    v12 = *(__UILogGetCategoryCachedImpl("ScrollView", &_MergedGlobals_1319) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Can not find SRHMediaEventsCollector. Stop monitoring", v15, 2u);
    }
  }
}

- (void)stopScrollViewMonitoring
{
  _scrollViewMonitor = [(UIScrollView *)self _scrollViewMonitor];
  [_scrollViewMonitor stopMonitoring];

  [(UIScrollView *)self set_scrollViewMonitor:0];
  kdebug_trace();
  v4 = *(__UILogGetCategoryCachedImpl("ScrollView", &stopScrollViewMonitoring___s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Did stop scroll view monitoring", v5, 2u);
  }
}

- (void)_adjustCrossingConstraintsIfNecessaryForOldContentInset:(UIEdgeInsets)inset
{
  left = inset.left;
  top = inset.top;
  v48 = *MEMORY[0x1E69E9840];
  [(UIScrollView *)self contentInset:inset.top];
  v8 = left == v7 && top == v6;
  if (!v8 && (*(&self->super._viewFlags + 7) & 2) != 0)
  {
    v9 = v6;
    v10 = v7;
    obj = [(UIView *)self subviews];
    if ([obj count])
    {
      _hostsLayoutEngine = [(UIView *)self _hostsLayoutEngine];

      if (!_hostsLayoutEngine)
      {
        v12 = MEMORY[0x1E695DF70];
        _constraintsExceptingSubviewAutoresizingConstraints = [(UIView *)self _constraintsExceptingSubviewAutoresizingConstraints];
        v14 = [v12 arrayWithArray:_constraintsExceptingSubviewAutoresizingConstraints];

        superview = [(UIView *)self superview];
        if (superview)
        {
          v16 = superview;
          do
          {
            _constraintsExceptingSubviewAutoresizingConstraints2 = [v16 _constraintsExceptingSubviewAutoresizingConstraints];
            [v14 addObjectsFromArray:_constraintsExceptingSubviewAutoresizingConstraints2];

            if ([v16 _hostsLayoutEngine])
            {
              break;
            }

            superview2 = [v16 superview];

            v16 = superview2;
          }

          while (superview2);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        obja = v14;
        v19 = [obja countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v44;
          v22 = top - v9;
          v23 = left - v10;
          v24 = v9 - top;
          v25 = v10 - left;
          do
          {
            v26 = 0;
            do
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(obja);
              }

              v27 = *(*(&v43 + 1) + 8 * v26);
              firstItem = [v27 firstItem];
              secondItem = [v27 secondItem];
              v30 = secondItem;
              if (firstItem == self || secondItem == self)
              {
                goto LABEL_39;
              }

              v32 = [(UIView *)firstItem isDescendantOfView:self];
              v33 = ![(UIView *)v30 isDescendantOfView:self];
              if ((v32 & v33) == 1 && ![(UIView *)firstItem translatesAutoresizingMaskIntoConstraints])
              {
                goto LABEL_27;
              }

              if (((v33 | v32) & 1) != 0 || [(UIView *)v30 translatesAutoresizingMaskIntoConstraints])
              {
                goto LABEL_39;
              }

              if ((v32 & v33) != 0)
              {
LABEL_27:
                firstAttribute = [v27 firstAttribute];
                v35 = 0.0;
                if (firstAttribute > 0xA)
                {
                  goto LABEL_37;
                }

                v36 = 1 << firstAttribute;
                v37 = v25;
                if (((1 << firstAttribute) & 0x266) == 0)
                {
                  v37 = v24;
                  goto LABEL_34;
                }
              }

              else
              {
                secondAttribute = [v27 secondAttribute];
                v35 = 0.0;
                if (secondAttribute > 0xA)
                {
                  goto LABEL_37;
                }

                v36 = 1 << secondAttribute;
                if (((1 << secondAttribute) & 0x266) == 0)
                {
                  v37 = v22;
LABEL_34:
                  if ((v36 & 0x418) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_35;
                }

                v37 = v23;
              }

LABEL_35:
              if (v37 == 0.0)
              {
                v35 = v37;
LABEL_37:
                v37 = v35;
                if (*MEMORY[0x1E6997758] > 0.0)
                {
                  goto LABEL_39;
                }

LABEL_38:
                [v27 constant];
                [v27 setConstant:v37 + v39];
                goto LABEL_39;
              }

              if (fabs(v37) >= *MEMORY[0x1E6997758])
              {
                goto LABEL_38;
              }

LABEL_39:

              ++v26;
            }

            while (v20 != v26);
            v40 = [obja countByEnumeratingWithState:&v43 objects:v47 count:16];
            v20 = v40;
          }

          while (v40);
        }
      }
    }

    else
    {
    }
  }
}

- (BOOL)_constraintAffectsContentSize:(id)size
{
  sizeCopy = size;
  firstItem = [sizeCopy firstItem];
  secondItem = [sizeCopy secondItem];

  v7 = 0;
  if (secondItem && firstItem && firstItem != secondItem)
  {
    subviews = [(UIView *)self subviews];
    v9 = subviews;
    v7 = firstItem == self && (*(secondItem + 94) & 0x10) != 0 && ([subviews containsObject:secondItem] & 1) != 0 || secondItem == self && (*(firstItem + 94) & 0x10) != 0 && objc_msgSend(v9, "containsObject:", firstItem);
  }

  return v7;
}

- (void)_didAddDependentConstraint:(id)constraint
{
  v6.receiver = self;
  v6.super_class = UIScrollView;
  constraintCopy = constraint;
  [(UIView *)&v6 _didAddDependentConstraint:constraintCopy];
  v5 = [(UIScrollView *)self _constraintAffectsContentSize:constraintCopy, v6.receiver, v6.super_class];

  if (v5 && ![(UIScrollView *)self _wantsConstrainedContentSize])
  {
    [(UIScrollView *)self _setAutomaticContentConstraints:0];
    [(UIScrollView *)self _setWantsConstrainedContentSize:1];
  }
}

- (void)_didRemoveDependentConstraint:(id)constraint
{
  constraintCopy = constraint;
  v15.receiver = self;
  v15.super_class = UIScrollView;
  [(UIView *)&v15 _didRemoveDependentConstraint:constraintCopy];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = selfCopy;
    while (1)
    {
      v10[0] = v7;
      v10[1] = 3221225472;
      v10[2] = __82__UIScrollView__UIOldConstraintBasedLayoutSupport___didRemoveDependentConstraint___block_invoke;
      v10[3] = &unk_1E71294F0;
      v10[4] = v6;
      v10[5] = &v11;
      _UIViewEnumerateConstraints(v8, v10);
      if (v12[3] & 1) != 0 || ([v8 _hostsLayoutEngine])
      {
        break;
      }

      superview = [v8 superview];

      v8 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  [(UIScrollView *)v6 _setWantsConstrainedContentSize:*(v12 + 24)];
  _Block_object_dispose(&v11, 8);
}

uint64_t __82__UIScrollView__UIOldConstraintBasedLayoutSupport___didRemoveDependentConstraint___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _constraintAffectsContentSize:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)_constraintsFromContentSize
{
  [(UIScrollView *)self contentSize];
  v4 = v3;
  v6 = [_UIScrollViewAutomaticContentSizeConstraint constraintWithItem:self attribute:101 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v5];
  v7 = [_UIScrollViewAutomaticContentSizeConstraint constraintWithItem:self attribute:102 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v4];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v7, 0}];

  return v8;
}

- (void)_setSubviewWantsAutolayoutTripWantsAutolayout:(BOOL)autolayout
{
  v5.receiver = self;
  v5.super_class = UIScrollView;
  [(UIView *)&v5 _setSubviewWantsAutolayoutTripWantsAutolayout:autolayout];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _automaticContentConstraints = [(UIScrollView *)self _automaticContentConstraints];
    if (!_automaticContentConstraints)
    {
      if ([(UIScrollView *)self _wantsConstrainedContentSize])
      {
        return;
      }

      _automaticContentConstraints = [(UIScrollView *)self _constraintsFromContentSize];
      [(UIScrollView *)self _setAutomaticContentConstraints:_automaticContentConstraints];
    }
  }
}

- (void)_resizeWithOldSuperviewSize:(CGSize)size
{
  v6.receiver = self;
  v6.super_class = UIScrollView;
  [(UIView *)&v6 _resizeWithOldSuperviewSize:size.width, size.height];
  if ((dyld_program_sdk_at_least() & 1) == 0 && (*(&self->super._viewFlags + 7) & 4) != 0 && [(UIScrollView *)self _wantsConstrainedContentSize])
  {
    superview = [(UIView *)self superview];
    v5 = superview;
    if (!superview || (*(superview + 95) & 8) != 0)
    {
      [(UIScrollView *)self _nsis_contentSize];
      [(UIScrollView *)self setContentSize:?];
    }
  }
}

- (void)_old_updateAutomaticContentSizeConstraintsIfNecessaryWithContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    superview = [(UIView *)self superview];
    v7 = superview;
    if (superview)
    {
      if ((*(superview + 95) & 8) == 0 && (*(&self->super._viewFlags + 7) & 4) != 0)
      {
        v13 = superview;
        _wantsConstrainedContentSize = [(UIScrollView *)self _wantsConstrainedContentSize];
        v7 = v13;
        if (!_wantsConstrainedContentSize)
        {
          _automaticContentConstraints = [(UIScrollView *)self _automaticContentConstraints];
          v10 = _automaticContentConstraints;
          if (_automaticContentConstraints)
          {
            _constraintsFromContentSize = [_automaticContentConstraints objectAtIndex:0];
            v12 = [v10 objectAtIndex:1];
            [_constraintsFromContentSize setConstant:width];
            [v12 setConstant:height];
          }

          else
          {
            _constraintsFromContentSize = [(UIScrollView *)self _constraintsFromContentSize];
            [(UIScrollView *)self _setAutomaticContentConstraints:_constraintsFromContentSize];
          }

          v7 = v13;
        }
      }
    }
  }
}

- (void)_accumulateViewConstraintsIntoArray:(id)array
{
  v7.receiver = self;
  v7.super_class = UIScrollView;
  [(UIView *)&v7 _accumulateViewConstraintsIntoArray:?];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _automaticContentConstraints = [(UIScrollView *)self _automaticContentConstraints];

    if (_automaticContentConstraints)
    {
      _automaticContentConstraints2 = [(UIScrollView *)self _automaticContentConstraints];
      [array addObjectsFromArray:_automaticContentConstraints2];
    }
  }
}

- (UIScrollView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = UIScrollView;
  v3 = [(UIView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _UIScrollViewSharedInit(v3);
    [(UIView *)v4 setClipsToBounds:1];
    *&v4->_scrollViewFlags |= 0x4CuLL;
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    v7 = 0x2000000;
    if (userInterfaceIdiom == 2 || userInterfaceIdiom == 4)
    {
      v7 = 0;
    }

    v8 = 393216;
    if (userInterfaceIdiom != 2 && userInterfaceIdiom != 4)
    {
      v8 = 17170432;
    }

    *&v4->_scrollViewFlags = v8 | v7 | *&v4->_scrollViewFlags & 0xFFFFFFFFF0F9FFFFLL;
    if (![objc_opt_class() _defaultEdgesScrollingContentIntoSafeArea])
    {
      v4->_contentInsetAdjustmentBehavior = 101;
    }

    v4->_contentOffsetAnimationDuration = 0.3;
    [(UIView *)v4 setMultipleTouchEnabled:1];
    v4->_minimumZoomScale = 1.0;
    v4->_maximumZoomScale = 1.0;
    v4->_decelerationFactor = vdupq_n_s64(0x3FEFEF9DB22D0E56uLL);
    v4->_fastScrollMultiplier = 1.0;
    [(UIView *)v4 bounds];
    if (v9 <= 1024.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1024.0;
    }

    v4->_pagingSpringPull = v10 * -0.000000184659091 + 0.000359090909;
    [(UIView *)v4 bounds];
    if (v11 <= 1024.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1024.0;
    }

    v4->_pagingFriction = v12 * 0.00000994318182 + 0.966818182;
    [(UIView *)v4 _currentScreenScale];
    v4->_accuracy = v13;
    v4->_savedKeyboardAdjustmentDelta = 0.0;
    [(UIScrollView *)v4 _createGestureRecognizersForCurrentTouchLevel];
  }

  return v4;
}

- (UIScrollView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = UIScrollView;
  v5 = [(UIView *)&v69 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_79;
  }

  _UIScrollViewSharedInit(v5);
  [coderCopy decodeUIEdgeInsetsForKey:@"UIContentInset"];
  *(v6 + 432) = v7;
  *(v6 + 440) = v8;
  *(v6 + 448) = v9;
  *(v6 + 456) = v10;
  [coderCopy decodeUIEdgeInsetsForKey:@"UIScrollIndicatorInsets"];
  *(v6 + 512) = v11;
  *(v6 + 520) = v12;
  *(v6 + 528) = v13;
  *(v6 + 536) = v14;
  if ([coderCopy containsValueForKey:@"UIVerticalScrollIndicatorInsets"])
  {
    [coderCopy decodeUIEdgeInsetsForKey:@"UIVerticalScrollIndicatorInsets"];
    *(v6 + 544) = v15;
    *(v6 + 552) = v16;
    *(v6 + 560) = v17;
    *(v6 + 568) = v18;
  }

  if ([coderCopy containsValueForKey:@"UIHorizontalScrollIndicatorInsets"])
  {
    [coderCopy decodeUIEdgeInsetsForKey:@"UIHorizontalScrollIndicatorInsets"];
    *(v6 + 576) = v19;
    *(v6 + 584) = v20;
    *(v6 + 592) = v21;
    *(v6 + 600) = v22;
  }

  if ([coderCopy containsValueForKey:@"UIScrollViewIndicatorInsetAdjustmentBehavior"])
  {
    *(v6 + 1812) = *(v6 + 1812) & 0xFFFFFE7F | (([coderCopy decodeIntegerForKey:@"UIScrollViewIndicatorInsetAdjustmentBehavior"] & 3) << 7);
  }

  v23 = [coderCopy decodeBoolForKey:@"UIScrollDisabled"];
  v24 = (v6 + 1792);
  v25 = 0x100000;
  if (!v23)
  {
    v25 = 0;
  }

  *v24 = *v24 & 0xFFFFFFFFFFEFFFFFLL | v25;
  v26 = [coderCopy decodeBoolForKey:@"UIPagingEnabled"];
  v27 = 32;
  if (!v26)
  {
    v27 = 0;
  }

  *(v6 + 1804) = *(v6 + 1804) & 0xFFFFFFFFFFFFFFDFLL | v27;
  v28 = [coderCopy decodeBoolForKey:@"UIBouncesZoom"];
  v29 = 64;
  if (!v28)
  {
    v29 = 0;
  }

  *v24 = *v24 & 0xFFFFFFFFFFFFFFBFLL | v29;
  v30 = [coderCopy decodeBoolForKey:@"UIAlwaysBounceVertical"];
  v31 = 512;
  if (!v30)
  {
    v31 = 0;
  }

  *v24 = *v24 & 0xFFFFFFFFFFFFFDFFLL | v31;
  v32 = [coderCopy decodeBoolForKey:@"UIAlwaysBounceHorizontal"];
  v33 = 256;
  if (!v32)
  {
    v33 = 0;
  }

  *v24 = *v24 & 0xFFFFFFFFFFFFFEFFLL | v33;
  if ([coderCopy containsValueForKey:@"UIScrollViewContentInsetAdjustmentBehavior"])
  {
    v34 = [coderCopy decodeIntegerForKey:@"UIScrollViewContentInsetAdjustmentBehavior"];
LABEL_22:
    *(v6 + 1456) = v34;
    goto LABEL_23;
  }

  if (![objc_opt_class() _defaultEdgesScrollingContentIntoSafeArea])
  {
    v34 = 101;
    goto LABEL_22;
  }

LABEL_23:
  [coderCopy decodeCGSizeForKey:@"UIContentSize"];
  *(v6 + 416) = v35;
  *(v6 + 424) = v36;
  *v24 &= 0xFFFFFFFFCFFFFFFFLL;
  if ([coderCopy containsValueForKey:@"UIIndicatorStyle"])
  {
    v37 = *v24 & 0xFFFFFFFFCFFFFFFFLL | (([coderCopy decodeIntegerForKey:@"UIIndicatorStyle"] & 3) << 28);
  }

  else
  {
    v37 = *v24;
  }

  *v24 = v37 | 8;
  if ([coderCopy containsValueForKey:@"UIBounceEnabled"])
  {
    v38 = [coderCopy decodeBoolForKey:@"UIBounceEnabled"];
    v39 = 8;
    if (!v38)
    {
      v39 = 0;
    }

    v40 = *v24 & 0xFFFFFFFFFFFFFFF7 | v39;
  }

  else
  {
    v40 = *v24;
  }

  *v24 = v40 | 4;
  if ([coderCopy containsValueForKey:@"UIBounceEnabled"])
  {
    v41 = [coderCopy decodeBoolForKey:@"UIBounceEnabled"];
    v42 = 4;
    if (!v41)
    {
      v42 = 0;
    }

    *v24 = *v24 & 0xFFFFFFFFFFFFFFFBLL | v42;
  }

  v43 = +[UIDevice currentDevice];
  if ([v43 userInterfaceIdiom] == 2)
  {
    *v24 &= ~0x1000000uLL;
  }

  else
  {
    v44 = +[UIDevice currentDevice];
    *v24 = *v24 & 0xFFFFFFFFFEFFFFFFLL | (([v44 userInterfaceIdiom] != 8) << 24);
  }

  if ([coderCopy containsValueForKey:@"UIShowsHorizontalScrollIndicator"])
  {
    v45 = [coderCopy decodeBoolForKey:@"UIShowsHorizontalScrollIndicator"];
    v46 = 0x1000000;
    if (!v45)
    {
      v46 = 0;
    }

    *v24 = *v24 & 0xFFFFFFFFFEFFFFFFLL | v46;
  }

  v47 = +[UIDevice currentDevice];
  if ([v47 userInterfaceIdiom] == 2)
  {
    *v24 &= ~0x2000000uLL;
  }

  else
  {
    v48 = +[UIDevice currentDevice];
    *v24 = *v24 & 0xFFFFFFFFFDFFFFFFLL | (([v48 userInterfaceIdiom] != 8) << 25);
  }

  if ([coderCopy containsValueForKey:@"UIShowsVerticalScrollIndicator"])
  {
    v49 = [coderCopy decodeBoolForKey:@"UIShowsVerticalScrollIndicator"];
    v50 = 0x2000000;
    if (!v49)
    {
      v50 = 0;
    }

    v51 = *v24 & 0xFFFFFFFFFDFFFFFFLL | v50;
  }

  else
  {
    v51 = *v24;
  }

  *v24 = v51 | 0x40000;
  if ([coderCopy containsValueForKey:@"UIDelaysContentTouches"])
  {
    v52 = [coderCopy decodeBoolForKey:@"UIDelaysContentTouches"];
    v53 = 0x40000;
    if (!v52)
    {
      v53 = 0;
    }

    v54 = *v24 & 0xFFFFFFFFFFFBFFFFLL | v53;
  }

  else
  {
    v54 = *v24;
  }

  *v24 = v54 | 0x20000;
  if ([coderCopy containsValueForKey:@"UICanCancelContentTouches"])
  {
    v55 = [coderCopy decodeBoolForKey:@"UICanCancelContentTouches"];
    v56 = 0x20000;
    if (!v55)
    {
      v56 = 0;
    }

    *v24 = *v24 & 0xFFFFFFFFFFFDFFFFLL | v56;
  }

  v57 = [coderCopy decodeObjectForKey:@"UIDelegate"];
  objc_storeWeak((v6 + 408), v57);

  *(v6 + 712) = 0x3FF0000000000000;
  if ([coderCopy containsValueForKey:@"UIMinimumZoomScale"])
  {
    [coderCopy decodeFloatForKey:@"UIMinimumZoomScale"];
    *(v6 + 712) = v58;
  }

  *(v6 + 720) = 0x3FF0000000000000;
  if ([coderCopy containsValueForKey:@"UIMaximumZoomScale"])
  {
    [coderCopy decodeFloatForKey:@"UIMaximumZoomScale"];
    *(v6 + 720) = v59;
  }

  if ([coderCopy containsValueForKey:@"UIKeyboardDismissMode"])
  {
    *(v6 + 1880) = [coderCopy decodeIntegerForKey:@"UIKeyboardDismissMode"];
  }

  if ([coderCopy containsValueForKey:@"UIRefreshControl"])
  {
    v60 = [coderCopy decodeObjectForKey:@"UIRefreshControl"];
    [v6 _setRefreshControl:v60];
  }

  if ([coderCopy containsValueForKey:@"UIIndexDisplayMode"])
  {
    *v24 = *v24 & 0xFFFFFFFFF3FFFFFFLL | (([coderCopy decodeIntegerForKey:@"UIIndexDisplayMode"] & 3) << 26);
  }

  *(v6 + 936) = 0x3FD3333333333333;
  *(v6 + 856) = vdupq_n_s64(0x3FEFEF9DB22D0E56uLL);
  *(v6 + 1120) = 0x3FF0000000000000;
  [v6 bounds];
  if (v61 <= 1024.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = 1024.0;
  }

  *(v6 + 1096) = v62 * -0.000000184659091 + 0.000359090909;
  [v6 bounds];
  if (v63 <= 1024.0)
  {
    v64 = v63;
  }

  else
  {
    v64 = 1024.0;
  }

  *(v6 + 1104) = v64 * 0.00000994318182 + 0.966818182;
  [v6 _currentScreenScale];
  *(v6 + 1200) = v65;
  *(v6 + 1240) = 0;
  if ([(UIScrollView *)v6 _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)v6 _effectiveShowsHorizontalScrollIndicator])
  {
    [v6 _adjustScrollerIndicators:1 alwaysShowingThem:0];
  }

  [v6 _createGestureRecognizersForCurrentTouchLevel];
  [*(v6 + 992) setDirectionalLockEnabled:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"UIDirectionalLockEnabled"}];
  v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIScrollViewInteractionActivityTrackingBaseName"];
  v67 = *(v6 + 776);
  *(v6 + 776) = v66;

  [v6 _updateContentFitDisableScrolling];
LABEL_79:

  return v6;
}

- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)offset
{
  if ((*(&self->_scrollViewFlags + 15) & 4) != 0)
  {
    offsetCopy = offset;
    _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
    if (_getDelegateZoomView)
    {
      v37 = _getDelegateZoomView;
      [_getDelegateZoomView frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(UIView *)self bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(UIScrollView *)self _contentInsetIncludingDecorations];
      v25 = v24 + v14 + v23;
      v28 = v27 + v26 + self->_contentSize.width;
      v29 = v24 + v23 + self->_contentSize.height;
      v30 = v27 + v12 + v26;
      if (v28 >= v20)
      {
        width = self->_contentSize.width;
      }

      else
      {
        width = v20;
      }

      if (v28 >= v20)
      {
        v30 = v12;
      }

      v32 = width * 0.5 - v30 * 0.5;
      v33 = v29 < v22;
      if (v29 >= v22)
      {
        height = self->_contentSize.height;
      }

      else
      {
        height = v22;
      }

      if (v33)
      {
        v35 = v25;
      }

      else
      {
        v35 = v14;
      }

      v36 = height * 0.5 - v35 * 0.5;
      if (offsetCopy && [(UIScrollView *)self isZooming])
      {
        [(UIScrollView *)self setContentOffset:v16 + v32 - v8, v18 + v36 - v10];
      }

      [v37 setFrame:{v32, v36, v12, v14}];
      _getDelegateZoomView = v37;
    }
  }
}

- (void)_switchToLayoutEngine:(id)engine
{
  engineCopy = engine;
  _layoutEngine = [(UIView *)self _layoutEngine];

  v6.receiver = self;
  v6.super_class = UIScrollView;
  [(UIView *)&v6 _switchToLayoutEngine:engineCopy];

  if (engineCopy && !_layoutEngine && (*(&self->super._viewFlags + 7) & 4) != 0 && (*(&self->_scrollViewFlags + 17) & 2) == 0)
  {
    if (dyld_program_sdk_at_least())
    {
      [(UIView *)self _setNeedsUpdateConstraints];
    }
  }
}

- (BOOL)_subviewPreventsSkipLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (self->_horizontalScrollIndicator == layoutCopy || self->_verticalScrollIndicator == layoutCopy)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollView;
    v6 = [(UIView *)&v8 _subviewPreventsSkipLayout:layoutCopy];
  }

  return v6;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  v16[4] = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v15.receiver = self;
  v15.super_class = UIScrollView;
  [(UIView *)&v15 _populateArchivedSubviews:subviewsCopy];
  v16[0] = self->_zoomView;
  v16[1] = self->_horizontalScrollIndicator;
  v16[2] = self->_verticalScrollIndicator;
  v5 = 0;
  v16[3] = self->_refreshControl;
  do
  {
    if (v16[v5])
    {
      [subviewsCopy removeObject:?];
    }

    ++v5;
  }

  while (v5 != 4);
  accessoryViews = self->_accessoryViews;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__UIScrollView__populateArchivedSubviews___block_invoke;
  v13 = &unk_1E712A698;
  v7 = subviewsCopy;
  v14 = v7;
  [(NSMutableDictionary *)accessoryViews enumerateKeysAndObjectsUsingBlock:&v10];
  if (self->_shadows)
  {
    for (i = 0; i != 10; ++i)
    {
      if (self->_shadows[i])
      {
        [v7 removeObject:{v10, v11, v12, v13}];
      }
    }
  }

  for (j = 3; j != -1; --j)
  {
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = UIScrollView;
  [(UIView *)&v26 encodeWithCoder:coderCopy];
  v5 = *&self->_contentInset.top;
  v6 = *&self->_contentInset.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v5), vceqzq_f64(v6))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIContentInset" forKey:{*&v5, *&v6}];
  }

  v7 = *&self->_scrollIndicatorInset.top;
  v8 = *&self->_scrollIndicatorInset.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v7), vceqzq_f64(v8))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIScrollIndicatorInsets" forKey:{*&v7, *&v8}];
  }

  v9 = *&self->_verticalScrollIndicatorInsets.top;
  v10 = *&self->_verticalScrollIndicatorInsets.bottom;
  v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v9, v11), vceqq_f64(v10, v11))))))
  {
    v25 = v11;
    [coderCopy encodeUIEdgeInsets:@"UIVerticalScrollIndicatorInsets" forKey:{*&v9, *&v10}];
    v11 = v25;
  }

  v12 = *&self->_horizontalScrollIndicatorInsets.top;
  v13 = *&self->_horizontalScrollIndicatorInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v12, v11), vceqq_f64(v13, v11))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIHorizontalScrollIndicatorInsets" forKey:{*&v12, *&v13}];
  }

  p_scrollViewFlags = &self->_scrollViewFlags;
  [coderCopy encodeInteger:(*(&self->_scrollViewFlags + 5) >> 7) & 3 forKey:@"UIScrollViewIndicatorInsetAdjustmentBehavior"];
  scrollViewFlags = self->_scrollViewFlags;
  v16 = (scrollViewFlags >> 28) & 3;
  if (v16)
  {
    [coderCopy encodeInteger:v16 forKey:@"UIIndicatorStyle"];
    scrollViewFlags = *p_scrollViewFlags;
  }

  if ((scrollViewFlags & 0xC) != 0)
  {
    if ((scrollViewFlags & 0x1000000) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [coderCopy encodeBool:0 forKey:@"UIBounceEnabled"];
    scrollViewFlags = *p_scrollViewFlags;
    if ((*p_scrollViewFlags & 0x1000000) != 0)
    {
LABEL_13:
      if ((scrollViewFlags & 0x2000000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }
  }

  [coderCopy encodeBool:0 forKey:@"UIShowsHorizontalScrollIndicator"];
  scrollViewFlags = *p_scrollViewFlags;
  if ((*p_scrollViewFlags & 0x2000000) != 0)
  {
LABEL_14:
    if ((scrollViewFlags & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  [coderCopy encodeBool:0 forKey:@"UIShowsVerticalScrollIndicator"];
  scrollViewFlags = *p_scrollViewFlags;
  if ((*p_scrollViewFlags & 0x100000) == 0)
  {
LABEL_15:
    if ((scrollViewFlags & 0x40000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  [coderCopy encodeBool:1 forKey:@"UIScrollDisabled"];
  scrollViewFlags = *p_scrollViewFlags;
  if ((*p_scrollViewFlags & 0x40000) != 0)
  {
LABEL_16:
    if ((scrollViewFlags & 0x20000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_51:
  [coderCopy encodeBool:0 forKey:@"UIDelaysContentTouches"];
  if ((*p_scrollViewFlags & 0x20000) == 0)
  {
LABEL_17:
    [coderCopy encodeBool:0 forKey:@"UICanCancelContentTouches"];
  }

LABEL_18:
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIPagingEnabled"];
  }

  v17 = *p_scrollViewFlags;
  if ((*p_scrollViewFlags & 0x40) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIBouncesZoom"];
    v17 = *p_scrollViewFlags;
    if ((*p_scrollViewFlags & 0x200) == 0)
    {
LABEL_22:
      if ((v17 & 0x100) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v17 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  [coderCopy encodeBool:1 forKey:@"UIAlwaysBounceVertical"];
  if ((*p_scrollViewFlags & 0x100) != 0)
  {
LABEL_23:
    [coderCopy encodeBool:1 forKey:@"UIAlwaysBounceHorizontal"];
  }

LABEL_24:
  if ([(UIScrollViewPanGestureRecognizer *)self->_pan isDirectionalLockEnabled])
  {
    [coderCopy encodeBool:-[UIScrollViewPanGestureRecognizer isDirectionalLockEnabled](self->_pan forKey:{"isDirectionalLockEnabled"), @"UIDirectionalLockEnabled"}];
  }

  minimumZoomScale = self->_minimumZoomScale;
  if (minimumZoomScale != 1.0)
  {
    *&minimumZoomScale = minimumZoomScale;
    [coderCopy encodeFloat:@"UIMinimumZoomScale" forKey:minimumZoomScale];
  }

  maximumZoomScale = self->_maximumZoomScale;
  if (maximumZoomScale != 1.0)
  {
    *&maximumZoomScale = maximumZoomScale;
    [coderCopy encodeFloat:@"UIMaximumZoomScale" forKey:maximumZoomScale];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  if (self->_contentSize.width != *MEMORY[0x1E695F060] || self->_contentSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    [coderCopy encodeCGSize:@"UIContentSize" forKey:?];
  }

  keyboardDismissMode = self->_keyboardDismissMode;
  if (keyboardDismissMode)
  {
    [coderCopy encodeInteger:keyboardDismissMode forKey:@"UIKeyboardDismissMode"];
  }

  refreshControl = self->_refreshControl;
  if (refreshControl)
  {
    [coderCopy encodeObject:refreshControl forKey:@"UIRefreshControl"];
  }

  v23 = (*p_scrollViewFlags >> 26) & 3;
  if (v23)
  {
    [coderCopy encodeInteger:v23 forKey:@"UIIndexDisplayMode"];
  }

  [coderCopy encodeInteger:self->_contentInsetAdjustmentBehavior forKey:@"UIScrollViewContentInsetAdjustmentBehavior"];
  interactionActivityTrackingBaseName = self->_interactionActivityTrackingBaseName;
  if (interactionActivityTrackingBaseName)
  {
    [coderCopy encodeObject:interactionActivityTrackingBaseName forKey:@"UIScrollViewInteractionActivityTrackingBaseName"];
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    allowsWeakReference = [v4 allowsWeakReference];
    v6 = v4;
    if ((allowsWeakReference & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__UIScrollView_setDelegate___block_invoke;
      block[3] = &unk_1E70F35B8;
      v37 = v4;
      selfCopy = self;
      if (setDelegate__once_3 != -1)
      {
        dispatch_once(&setDelegate__once_3, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (v8 != WeakRetained || !v8 && (*(&self->_scrollViewFlags + 15) & 2) != 0)
  {
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 1, 0, 1);
    }

    objc_storeWeak(&self->_delegate, v8);
    v11 = v8;
    delegate = [(UIScrollView *)self delegate];
    v13 = delegate;
    if (v11 == delegate)
    {
      allowsWeakReference2 = [(UIScrollView *)self allowsWeakReference];

      v14 = (v11 != 0) << 25;
      if (v11 && allowsWeakReference2)
      {
        objc_initWeak(&location, self);
        v16 = [_UIWeakHelper alloc];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __28__UIScrollView_setDelegate___block_invoke_176;
        v33[3] = &unk_1E70F5A28;
        objc_copyWeak(&v34, &location);
        v17 = [(_UIWeakHelper *)v16 initWithDeallocationBlock:v33];
        objc_setAssociatedObject(v11, &self->super.super.super.isa + 1, v17, 1);

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
        v14 = 0x2000000;
      }
    }

    else
    {

      v14 = (v11 != 0) << 25;
    }

    p_scrollViewFlags = &self->_scrollViewFlags;
    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFDFFFFFFLL | v14;
    v19 = objc_opt_respondsToSelector();
    v20 = 0x100000;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFEFFFFFLL | v20;
    v21 = objc_opt_respondsToSelector();
    v22 = 0x200000;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFDFFFFFLL | v22;
    v23 = objc_opt_respondsToSelector();
    v24 = 0x400000;
    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFBFFFFFLL | v24;
    v25 = objc_opt_respondsToSelector();
    v26 = 0x800000;
    if ((v25 & 1) == 0)
    {
      v26 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFF7FFFFFLL | v26;
    v27 = objc_opt_respondsToSelector();
    v28 = 0x1000000;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFEFFFFFFLL | v28;
    v29 = objc_opt_respondsToSelector();
    v30 = 0x10000000000000;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFEFFFFFFFFFFFFFLL | v30;
    v31 = objc_opt_respondsToSelector();
    v32 = 0x20000000000000;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFDFFFFFFFFFFFFFLL | v32;
  }
}

void __28__UIScrollView_setDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ScrollViewOffsetChangeLogging_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a delegate. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

void __28__UIScrollView_setDelegate___block_invoke_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (!v2)
    {
      [v3 setDelegate:0];
    }

    WeakRetained = v3;
  }
}

- (void)_setUsesStaticScrollBar:(BOOL)bar
{
  staticScrollBar = self->_staticScrollBar;
  if (bar)
  {
    if (staticScrollBar)
    {
      return;
    }

    _createStaticScrollBar = [(UIScrollView *)self _createStaticScrollBar];
    v6 = self->_staticScrollBar;
    self->_staticScrollBar = _createStaticScrollBar;

    [(UIScrollView *)self setAccessoryView:self->_staticScrollBar atEdge:[(_UIStaticScrollBar *)self->_staticScrollBar desiredAccessoryEdge]];
  }

  else
  {
    if (!staticScrollBar)
    {
      return;
    }

    [(UIScrollView *)self setAccessoryView:0 atEdge:[(_UIStaticScrollBar *)staticScrollBar edge]];
    v7 = self->_staticScrollBar;
    self->_staticScrollBar = 0;
  }

  [(UIScrollView *)self _adjustScrollIndicatorsIfNeeded:0 forceRebuild:?];
}

- (void)_adjustScrollIndicatorsIfNeeded:(int)needed forceRebuild:
{
  if (!self)
  {
    return;
  }

  if ((a2 & 2) != 0)
  {
    _effectiveShowsVerticalScrollIndicator = [(UIScrollView *)self _effectiveShowsVerticalScrollIndicator];
    v7 = self[191];
    if (v7)
    {
      v8 = (!_effectiveShowsVerticalScrollIndicator | needed) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      [v7 removeFromSuperview];
      v9 = self[191];
      self[191] = 0;
    }

    if ((a2 & 1) == 0)
    {
      if (!_effectiveShowsVerticalScrollIndicator)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return;
    }

    _effectiveShowsVerticalScrollIndicator = 0;
  }

  _effectiveShowsHorizontalScrollIndicator = [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator];
  v11 = self[192];
  if (v11)
  {
    v12 = (!_effectiveShowsHorizontalScrollIndicator | needed) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    [v11 removeFromSuperview];
    v13 = self[192];
    self[192] = 0;
  }

  if (_effectiveShowsVerticalScrollIndicator || _effectiveShowsHorizontalScrollIndicator)
  {
LABEL_19:

    [self _adjustScrollerIndicators:1 alwaysShowingThem:0];
  }
}

- (void)_flashScrollIndicatorsForAxes:(unint64_t)axes persistingPreviousFlashes:(BOOL)flashes
{
  axesCopy = axes;
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = axes & [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator];
  v8 = [(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]& (axesCopy >> 1);
  if (((v7 & 1) != 0 || v8) && (*(&self->_scrollViewFlags + 2) & 0x10) == 0)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      while (1)
      {
        v19 = superview;
        if (![superview _shouldEnclosedScrollViewFlashIndicators:self])
        {
          break;
        }

        superview2 = [v19 superview];

        superview = superview2;
        if (!superview2)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__hideScrollIndicators object:0];
      *(&self->_scrollViewFlags + 12) |= axesCopy & 3;
      [(UIScrollView *)self _adjustScrollerIndicators:1 alwaysShowingThem:0];
      v11 = 1.0;
      v12 = 1.0;
      if (!flashes)
      {
        [(UIView *)self->_horizontalScrollIndicator alpha];
        v12 = v13;
        [(UIView *)self->_verticalScrollIndicator alpha];
        v11 = v14;
        if (v7)
        {
          [(UIView *)self->_horizontalScrollIndicator setAlpha:0.0];
        }

        if (v8)
        {
          [(UIView *)self->_verticalScrollIndicator setAlpha:0.0];
        }
      }

      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__UIScrollView__flashScrollIndicatorsForAxes_persistingPreviousFlashes___block_invoke;
      v20[3] = &unk_1E712A6C0;
      v21 = v7;
      if (userInterfaceIdiom == 3)
      {
        v17 = 0;
      }

      else
      {
        v17 = 251658240;
      }

      v20[4] = self;
      v22 = v8;
      *&v20[5] = v12;
      *&v20[6] = v11;
      [UIView animateWithDuration:v17 delay:v20 options:0 animations:0.5 completion:0.0];
      v23[0] = *MEMORY[0x1E695DA28];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [(UIScrollView *)self performSelector:sel__hideScrollIndicators withObject:0 afterDelay:v18 inModes:1.0];

      *(&self->_scrollViewFlags + 5) |= 0x400000u;
    }
  }
}

uint64_t __72__UIScrollView__flashScrollIndicatorsForAxes_persistingPreviousFlashes___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 56) == 1)
  {
    result = [*(*(result + 32) + 1536) setAlpha:*(result + 40)];
  }

  if (*(v1 + 57) == 1)
  {
    v2 = *(v1 + 48);
    v3 = *(*(v1 + 32) + 1528);

    return [v3 setAlpha:v2];
  }

  return result;
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v8.receiver = self;
  v8.super_class = UIScrollView;
  [(UIView *)&v8 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  _screen = [(UIView *)self _screen];
  v7 = [_screen _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
  self->_touchLevel = [v7 integerValue];

  [(UIScrollView *)self _updateUsesStaticScrollBar];
  [(UIScrollView *)self _enableOnlyGestureRecognizersForCurrentTouchLevel];
  [(UIScrollView *)self _adjustScrollIndicatorsIfNeeded:1 forceRebuild:?];
  [(UIScrollView *)self _updateAccessories];
}

- (CGPoint)_maximumContentPoint
{
  [(UIScrollView *)self _effectiveContentInset];
  v3 = *&self->_accuracy;
  v6.f64[0] = v4 + self->_contentSize.width;
  v6.f64[1] = v5 + self->_contentSize.height;
  if (*&v3 == 1.0)
  {
    v8 = vrndaq_f64(v6);
  }

  else
  {
    v7 = vrndmq_f64(v6);
    v8 = vaddq_f64(v7, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v6, v7), *&v3)), vdupq_lane_s64(v3, 0)));
  }

  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (CGPoint)_maximumContentOffsetForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self _minimumContentOffset];
  v11 = v10;
  v13 = v12;
  [(UIScrollView *)self _effectiveContentInset];
  v14 = *&self->_accuracy;
  v17.f64[0] = width + v15;
  v17.f64[1] = height + v16;
  if (*&v14 == 1.0)
  {
    v19 = vrndaq_f64(v17);
  }

  else
  {
    v18 = vrndmq_f64(v17);
    v19 = vaddq_f64(v18, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v17, v18), *&v14)), vdupq_lane_s64(v14, 0)));
  }

  v20 = v19.f64[0] - v7;
  if (v11 >= v19.f64[0] - v7)
  {
    v20 = v11;
  }

  v19.f64[0] = v19.f64[1] - v9;
  if (v13 >= v19.f64[1] - v9)
  {
    v19.f64[0] = v13;
  }

  result.y = v19.f64[0];
  result.x = v20;
  return result;
}

- (void)_setTopScrollIndicatorFollowsContentOffset:(BOOL)offset
{
  v3 = 0x2000000000000000;
  if (!offset)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)_setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:(BOOL)inset
{
  v3 = 0x4000000000000000;
  if (!inset)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (BOOL)_startBeingDraggedByChild:(id)child
{
  v3 = *(&self->_scrollViewFlags + 12);
  if ((v3 & 0x100000000000) == 0)
  {
    *(&self->_scrollViewFlags + 12) = v3 | 0x100000000000;
    objc_storeWeak(&self->_draggingChildScrollView, child);
  }

  return (v3 & 0x100000000000) == 0;
}

- (BOOL)_stopBeingDraggedByChild:(id)child
{
  childCopy = child;
  if ((*(&self->_scrollViewFlags + 17) & 0x10) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_draggingChildScrollView), WeakRetained, WeakRetained == childCopy))
  {
    *(&self->_scrollViewFlags + 12) &= ~0x100000000000uLL;
    objc_storeWeak(&self->_draggingChildScrollView, 0);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_startDraggingParent:(id)parent
{
  parentCopy = parent;
  if (([parentCopy _startBeingDraggedByChild:self] & 1) == 0)
  {
  }
}

- (void)_stopDraggingParent:(id)parent
{
  [parent _stopBeingDraggedByChild:self];
  layer = [(UIView *)self layer];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v9[4] = *(MEMORY[0x1E69792E8] + 64);
  v9[5] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v9[6] = *(MEMORY[0x1E69792E8] + 96);
  v9[7] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v9[0] = *MEMORY[0x1E69792E8];
  v9[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v9[2] = *(MEMORY[0x1E69792E8] + 32);
  v9[3] = v8;
  [layer setSublayerTransform:v9];

  self->_parentAdjustment.x = 0.0;
  self->_parentAdjustment.y = 0.0;
}

- (void)_attemptToDragParent:(id)parent forNewBounds:(CGRect)bounds oldBounds:(CGRect)oldBounds
{
  height = oldBounds.size.height;
  width = oldBounds.size.width;
  y = oldBounds.origin.y;
  x = oldBounds.origin.x;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  parentCopy = parent;
  if (![parentCopy isPagingEnabled] || !objc_msgSend(parentCopy, "isScrollEnabled") || !-[UIScrollView _transfersScrollToContainer](self, "_transfersScrollToContainer"))
  {
    goto LABEL_80;
  }

  [parentCopy contentOffset];
  v15 = v13;
  v16 = v14;
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x800000) != 0)
  {
    if ((scrollViewFlags & 0x40000080) != 0)
    {
      goto LABEL_77;
    }
  }

  else if ((scrollViewFlags & 0x40000080) != 0 || self->_scrollHeartbeat == 0)
  {
    goto LABEL_77;
  }

  v69 = v14;
  v70 = v13;
  [(UIScrollView *)self _effectiveContentInset];
  v21 = v20;
  v22 = v24.f64[0];
  v23 = *&self->_accuracy;
  v24.f64[0] = self->_firstPageOffset.horizontal - v24.f64[0];
  v26 = v25 + self->_contentSize.width;
  if (*&v23 == 1.0)
  {
    v35 = round(v26) - width;
    v24.f64[1] = self->_firstPageOffset.vertical - v21;
    v30 = vrndaq_f64(v24);
    if (v30.f64[0] >= v35)
    {
      v31 = v30.f64[0];
    }

    else
    {
      v31 = v35;
    }

    v34 = round(v19 + self->_contentSize.height);
  }

  else
  {
    v27 = floor(v26);
    v28 = v27 + round(*&v23 * (v26 - v27)) / *&v23 - width;
    v24.f64[1] = self->_firstPageOffset.vertical - v21;
    v29 = vrndmq_f64(v24);
    v30 = vaddq_f64(v29, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v24, v29), *&v23)), vdupq_lane_s64(v23, 0)));
    if (v30.f64[0] >= v28)
    {
      v31 = v30.f64[0];
    }

    else
    {
      v31 = v28;
    }

    v32 = v19 + self->_contentSize.height;
    v33 = floor(v32);
    v34 = v33 + round(*&v23 * (v32 - v33)) / *&v23;
  }

  v36 = v10 - x;
  v37 = v34 - height;
  v38 = v30.f64[1];
  if (v30.f64[1] < v37)
  {
    v38 = v37;
  }

  if (v10 < v30.f64[0] && v36 + self->_parentAdjustment.x <= 0.0 || (v39 = 0.0, v10 > v31) && v36 + self->_parentAdjustment.x >= 0.0)
  {
    _canScrollX = [parentCopy _canScrollX];
    v23 = *&self->_accuracy;
    if (!_canScrollX)
    {
      v40 = 1;
      v39 = 0.0;
LABEL_46:
      v21 = v68;
      v16 = v69;
      v38 = v67;
      goto LABEL_47;
    }

    v42 = self->_firstPageOffset.horizontal - v22;
    if (*&v23 == 1.0)
    {
      v44 = round(v42);
    }

    else
    {
      v43 = floor(v42);
      v44 = v43 + round(*&v23 * (v42 - v43)) / *&v23;
    }

    if (v10 >= v44 || x <= v44)
    {
      if (v10 <= v31 || x >= v31)
      {
        goto LABEL_45;
      }

      v47 = x - v31;
    }

    else
    {
      v47 = x - v44;
    }

    v36 = v36 + v47;
LABEL_45:
    [parentCopy _adjustedHorizontalOffsetPinnedToScrollableBounds:v36];
    v39 = v48;
    v40 = 0;
    self->_parentAdjustment.x = v48 + self->_parentAdjustment.x;
    v23 = *&self->_accuracy;
    goto LABEL_46;
  }

  v40 = 1;
  v16 = v69;
LABEL_47:
  v49 = self->_firstPageOffset.vertical - v21;
  if (*&v23 == 1.0)
  {
    v51 = round(v49);
  }

  else
  {
    v50 = floor(v49);
    v51 = v50 + round(*&v23 * (v49 - v50)) / *&v23;
  }

  v52 = v9 - y;
  if (v9 >= v51 || v52 + self->_parentAdjustment.y > 0.0)
  {
    v53 = 0.0;
    if (v9 <= v38 || v52 + self->_parentAdjustment.y < 0.0)
    {
      goto LABEL_71;
    }
  }

  v54 = v38;
  v55 = v21;
  _canScrollY = [parentCopy _canScrollY];
  v53 = 0.0;
  if (!_canScrollY)
  {
    goto LABEL_71;
  }

  accuracy = self->_accuracy;
  v58 = self->_firstPageOffset.vertical - v55;
  if (accuracy == 1.0)
  {
    v60 = round(v58);
  }

  else
  {
    v59 = floor(v58);
    v60 = v59 + round(accuracy * (v58 - v59)) / accuracy;
  }

  if (v9 >= v60 || y <= v60)
  {
    if (v9 <= v54 || y >= v54)
    {
      goto LABEL_70;
    }

    v63 = y - v54;
  }

  else
  {
    v63 = y - v60;
  }

  v52 = v52 + v63;
LABEL_70:
  [parentCopy _adjustedVerticalOffsetPinnedToScrollableBounds:v52];
  v40 = 0;
  self->_parentAdjustment.y = v53 + self->_parentAdjustment.y;
LABEL_71:
  v15 = v70;
  if (v39 == 0.0 && v53 == 0.0)
  {
LABEL_76:
    if (!v40)
    {
      goto LABEL_80;
    }

    goto LABEL_77;
  }

  [parentCopy setContentOffset:{v70 + v39, v16 + v53}];
  layer = [(UIView *)self layer];
  CATransform3DMakeTranslation(&v71, self->_parentAdjustment.x, self->_parentAdjustment.y, 0.0);
  [layer setSublayerTransform:&v71];

  v65 = self->_parentAdjustment.x;
  if (v65 != 0.0 || (v65 = self->_parentAdjustment.y, v65 != 0.0))
  {
    [(UIScrollView *)self _startDraggingParent:parentCopy, v65];
    goto LABEL_76;
  }

  [(UIScrollView *)self _stopDraggingParent:parentCopy];
  if (!v40)
  {
    goto LABEL_80;
  }

LABEL_77:
  v66 = self->_parentAdjustment.y;
  if (self->_parentAdjustment.x != 0.0 || v66 != 0.0)
  {
    [parentCopy setContentOffset:{v15 - self->_parentAdjustment.x, v16 - v66}];
    [(UIScrollView *)self _stopDraggingParent:parentCopy];
  }

LABEL_80:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = UIScrollView;
  v5 = [(UIView *)&v18 hitTest:event withEvent:test.x, test.y];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (self->_lastScrollInterruptionByPointerEventTime != 0.0)
  {
    v6 = UIApp;
    _window = [(UIView *)self _window];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__UIScrollView_hitTest_withEvent___block_invoke;
    v17[3] = &unk_1E712A6E8;
    v17[4] = self;
    LODWORD(v6) = [v6 _eatCurrentTouchForWindow:_window ifPredicate:v17];

    if (v6)
    {
      goto LABEL_14;
    }
  }

  if ((*(&self->_scrollViewFlags + 17) & 0x10) == 0)
  {
LABEL_9:
    selfCopy3 = v5;
    v5 = selfCopy3;
    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_draggingChildScrollView);
  HasDescendant = _ViewHasDescendant(self, WeakRetained);

  if (HasDescendant)
  {
    v10 = objc_loadWeakRetained(&self->_draggingChildScrollView);
    if (([v5 isDescendantOfView:v10] & 1) == 0)
    {
      v11 = v10;

      v5 = v11;
    }

    goto LABEL_9;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v16 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Scroll view %@ thinks it's being dragged by a child that no longer exists. Please file a bug against UIKit | ScrollView", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &hitTest_withEvent____s_category_0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Scroll view %@ thinks it's being dragged by a child that no longer exists. Please file a bug against UIKit | ScrollView", buf, 0xCu);
    }
  }

  objc_storeWeak(&self->_draggingChildScrollView, 0);
  *(&self->_scrollViewFlags + 12) &= ~0x100000000000uLL;
LABEL_14:
  selfCopy3 = self;
LABEL_15:
  v14 = selfCopy3;

  return v14;
}

BOOL __34__UIScrollView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isTapToClick] && (objc_msgSend(v3, "timestamp"), v4 >= *(*(a1 + 32) + 1664)))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = *(*(a1 + 32) + 1664);
    v9 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ScrollInterruptToAllowTapToClickDuration, @"ScrollInterruptToAllowTapToClickDuration", _UIInternalPreferenceUpdateDouble);
    v10 = *&qword_1EA95E820;
    if (v9)
    {
      v10 = 0.25;
    }

    v5 = v7 < v8 + v10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(UIView *)self center];
  v7 = v6;
  v8.receiver = self;
  v8.super_class = UIScrollView;
  [(UIView *)&v8 setCenter:x, y];
  if (v7 != y)
  {
    [(UIScrollView *)self _sendGeometryAffectingContentBottomChangedToScrollObservers];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self _systemContentInset];
  v41 = v17;
  v42 = v16;
  v39 = v19;
  v40 = v18;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
  v43.receiver = self;
  v43.super_class = UIScrollView;
  [(UIView *)&v43 setFrame:x, y, width, height];
  if (v13 != width || v15 != height)
  {
    v37 = v11;
    v38 = v9;
    if ((*(&self->_scrollViewFlags + 14) & 0x40) != 0)
    {
      [(UIScrollView *)self contentSize];
      v35 = v22;
      v36 = v23;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(UIScrollView *)self zoomScale];
      [WeakRetained scrollView:self contentSizeForZoomScale:? withProposedSize:?];
      v26 = v25;
      v28 = v27;

      if (v35 != v26 || v36 != v28)
      {
        [(UIScrollView *)self setContentSize:v26, v28];
      }
    }

    [(UIView *)self bounds];
    if (v30 <= 1024.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1024.0;
    }

    self->_pagingSpringPull = v31 * -0.000000184659091 + 0.000359090909;
    [(UIView *)self bounds];
    if (v32 <= 1024.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 1024.0;
    }

    self->_pagingFriction = v33 * 0.00000994318182 + 0.966818182;
    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v42, v41, v40, v39];
    v11 = v37;
    v9 = v38;
  }

  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  [(UIScrollView *)self _updateUsesStaticScrollBar];
  v44.origin.x = v9;
  v44.origin.y = v11;
  v44.size.width = v13;
  v44.size.height = v15;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (MaxY != CGRectGetMaxY(v45))
  {
    [(UIScrollView *)self _sendGeometryAffectingContentBottomChangedToScrollObservers];
  }
}

- (double)_adjustedHorizontalOffsetPinnedToScrollableBounds:(double)bounds
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self _effectiveContentInset];
  v10 = v6 + bounds;
  accuracy = self->_accuracy;
  v13 = self->_firstPageOffset.horizontal - v12;
  if (accuracy == 1.0)
  {
    v22 = round(v13);
    v23 = v6 + v22 - v6;
    if (v10 < v22)
    {
      result = v22 - v6;
    }

    else
    {
      v23 = v6 + bounds;
      result = bounds;
    }

    v21 = round(v9 + self->_contentSize.width) - v8;
    if (v23 > v21)
    {
      return v21 - v6;
    }
  }

  else
  {
    v14 = floor(v13);
    v15 = v14 + round(accuracy * (v13 - v14)) / accuracy;
    v16 = v6 + v15 - v6;
    v17 = v10 < v15;
    if (v10 >= v15)
    {
      result = bounds;
    }

    else
    {
      result = v15 - v6;
    }

    if (v17)
    {
      v10 = v16;
    }

    v19 = v9 + self->_contentSize.width;
    v20 = floor(v19);
    v21 = v20 + round(accuracy * (v19 - v20)) / accuracy - v8;
    if (v10 > v21)
    {
      return v21 - v6;
    }
  }

  return result;
}

- (double)_adjustedVerticalOffsetPinnedToScrollableBounds:(double)bounds
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self _effectiveContentInset];
  v10 = v6 + bounds;
  accuracy = self->_accuracy;
  v13 = self->_firstPageOffset.vertical - v12;
  if (accuracy == 1.0)
  {
    v22 = round(v13);
    if (v10 >= v22)
    {
      result = bounds;
    }

    else
    {
      v10 = v6 + v22 - v6;
      result = v22 - v6;
    }

    v21 = round(v9 + self->_contentSize.height);
  }

  else
  {
    v14 = floor(v13);
    v15 = v14 + round(accuracy * (v13 - v14)) / accuracy;
    v16 = v6 + v15 - v6;
    v17 = v10 < v15;
    if (v10 >= v15)
    {
      result = bounds;
    }

    else
    {
      result = v15 - v6;
    }

    if (v17)
    {
      v10 = v16;
    }

    v19 = v9 + self->_contentSize.height;
    v20 = floor(v19);
    v21 = v20 + round(accuracy * (v19 - v20)) / accuracy;
  }

  v23 = v21 - v8;
  if (v10 > v23)
  {
    return v23 - v6;
  }

  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = v14;
  v16 = v14 == height && v8 == width;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v53.origin.x = v10;
  v53.origin.y = v12;
  v53.size.width = v13;
  v53.size.height = v15;
  if (!CGRectEqualToRect(v50, v53))
  {
    [(UIScrollView *)self _systemContentInset];
    v47 = v18;
    v48 = v17;
    v45 = v20;
    v46 = v19;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    if (!v16)
    {
      v42 = v12;
      v43 = v10;
      if ((*(&self->_scrollViewFlags + 14) & 0x40) != 0)
      {
        [(UIScrollView *)self contentSize];
        v40 = v22;
        v41 = v23;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [(UIScrollView *)self zoomScale];
        [WeakRetained scrollView:self contentSizeForZoomScale:? withProposedSize:?];
        v26 = v25;
        v28 = v27;

        if (v40 != v26 || v41 != v28)
        {
          [(UIScrollView *)self setContentSize:v26, v28];
        }
      }

      [(UIView *)self bounds];
      if (v30 <= 1024.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1024.0;
      }

      self->_pagingSpringPull = v31 * -0.000000184659091 + 0.000359090909;
      [(UIView *)self bounds];
      if (v32 <= 1024.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1024.0;
      }

      self->_pagingFriction = v33 * 0.00000994318182 + 0.966818182;
      v12 = v42;
      v10 = v43;
    }

    _containingScrollView = [(UIView *)self _containingScrollView];
    [(UIScrollView *)self _attemptToDragParent:_containingScrollView forNewBounds:x oldBounds:y, width, height, v10, v12, v13, v15];
    v35 = objc_loadWeakRetained(&self->_animation);
    v36 = v35;
    if (((*(&self->_scrollViewFlags + 2) & 0x80) != 0 || self->_scrollHeartbeat | v35) && (*(&self->_scrollViewFlags + 12) & 0x200000080000) == 0x200000000000 && ([(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollView:self shouldPreserveStartOffset:self->_startOffsetX, self->_startOffsetY]& 1) == 0)
    {
      self->_startOffsetX = x - v10 + self->_startOffsetX;
      self->_startOffsetY = y - v12 + self->_startOffsetY;
      v37 = y - v12 + self->_pageDecelerationTarget.y;
      self->_pageDecelerationTarget.x = x - v10 + self->_pageDecelerationTarget.x;
      self->_pageDecelerationTarget.y = v37;
      v44 = y - v12;
      [v36 adjustForContentOffsetDelta:?];
      v38 = *(&self->_scrollViewFlags + 12);
      if ((v38 & 0x4000000000) != 0)
      {
        self->_adjustedDecelerationTarget.x = x - v10 + self->_adjustedDecelerationTarget.x;
        v38 = *(&self->_scrollViewFlags + 12);
      }

      if ((v38 & 0x8000000000) != 0)
      {
        self->_adjustedDecelerationTarget.y = v44 + self->_adjustedDecelerationTarget.y;
      }

      self->_lastUpdateOffsetX = x - v10 + self->_lastUpdateOffsetX;
      self->_lastUpdateOffsetY = v44 + self->_lastUpdateOffsetY;
    }

    *(&self->_scrollViewFlags + 12) &= ~0x80000uLL;
    kdebug_trace();
    v49.receiver = self;
    v49.super_class = UIScrollView;
    [(UIView *)&v49 setBounds:x, y, width, height];
    [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction updateEffectAndCaptureViewFrames];
    if (!v16)
    {
      if (((*(&self->_scrollViewFlags + 5) >> 11) & 0xF) - 1 <= 3)
      {
        [(UIScrollView *)self _forcePanGestureToEndImmediately];
      }

      [(UIScrollView *)self _adjustContentOffsetIfNecessary];
      [(UIScrollView *)self _updateUsesStaticScrollBar];
      [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v48, v47, v46, v45];
      v51.origin.x = v10;
      v51.origin.y = v12;
      v51.size.width = v13;
      v51.size.height = v15;
      v39 = CGRectGetHeight(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (v39 != CGRectGetHeight(v52))
      {
        [(UIScrollView *)self _sendGeometryAffectingContentBottomChangedToScrollObservers];
      }
    }
  }
}

- (void)setContentSize:(CGSize)contentSize
{
  height = contentSize.height;
  width = contentSize.width;
  v96 = *MEMORY[0x1E69E9840];
  p_contentSize = &self->_contentSize;
  v7 = self->_contentSize.width;
  v6 = self->_contentSize.height;
  if (width == v7 && height == v6)
  {
    return;
  }

  v10 = v6 == *(MEMORY[0x1E695F060] + 8) && v7 == *MEMORY[0x1E695F060];
  p_scrollViewFlags = &self->_scrollViewFlags;
  if ((*&self->_scrollViewFlags & 1) == 0)
  {
    goto LABEL_41;
  }

  [(UIScrollView *)self _effectiveContentInset];
  v13 = v12;
  v15 = v14;
  v89 = v16;
  v18 = v17;
  [(UIView *)self bounds];
  v20 = v19;
  v90 = v21;
  [(UIScrollView *)self contentOffset];
  v24 = v23;
  v25 = p_contentSize->width;
  if (width != p_contentSize->width)
  {
    v26 = v22;
    accuracy = self->_accuracy;
    v28 = self->_firstPageOffset.horizontal - v15;
    if (accuracy == 1.0)
    {
      v30 = round(v28);
      if (v26 >= v30)
      {
        v36 = round(v18 + v25) - v20;
        if (v30 >= v36)
        {
          v36 = v30;
        }

        if (v26 > v36)
        {
          v35 = round(width + v18);
          goto LABEL_21;
        }
      }
    }

    else
    {
      v29 = floor(v28);
      v30 = v29 + round(accuracy * (v28 - v29)) / accuracy;
      if (v26 >= v30)
      {
        v31 = v18 + v25;
        v32 = floor(v31);
        v33 = v32 + round((v31 - v32) * accuracy) / accuracy - v20;
        if (v30 >= v33)
        {
          v33 = v30;
        }

        if (v26 > v33)
        {
          v34 = floor(width + v18);
          v35 = v34 + round((width + v18 - v34) * accuracy) / accuracy;
LABEL_21:
          v37 = v35 - v20;
          if (v30 < v37)
          {
            v30 = v37;
          }

          if (v26 <= v30)
          {
            [(UIScrollViewPanGestureRecognizer *)self->_pan translationInView:self];
            self->_startOffsetX = v26 + v38;
          }
        }
      }
    }
  }

  v39 = p_contentSize->height;
  if (height != v39)
  {
    v40 = self->_accuracy;
    v41 = self->_firstPageOffset.vertical - v13;
    if (v40 == 1.0)
    {
      v43 = round(v41);
      if (v24 < v43)
      {
        goto LABEL_41;
      }

      v49 = round(v89 + v39) - v90;
      if (v43 >= v49)
      {
        v49 = v43;
      }

      if (v24 <= v49)
      {
        goto LABEL_41;
      }

      v48 = round(height + v89);
    }

    else
    {
      v42 = floor(v41);
      v43 = v42 + round(v40 * (v41 - v42)) / v40;
      if (v24 < v43)
      {
        goto LABEL_41;
      }

      v44 = v89 + v39;
      v45 = floor(v44);
      v46 = v45 + round((v44 - v45) * v40) / v40 - v90;
      if (v43 >= v46)
      {
        v46 = v43;
      }

      if (v24 <= v46)
      {
        goto LABEL_41;
      }

      v47 = floor(height + v89);
      v48 = v47 + round((height + v89 - v47) * v40) / v40;
    }

    v50 = v48 - v90;
    if (v43 < v50)
    {
      v43 = v50;
    }

    if (v24 <= v43)
    {
      [(UIScrollViewPanGestureRecognizer *)self->_pan translationInView:self];
      self->_startOffsetY = v24 + v51;
    }
  }

LABEL_41:
  if ([(UIScrollView *)self _effectiveShouldPreventFocusScrollPastContentSize])
  {
    _focusSystem = [(UIView *)self _focusSystem];
    if (_focusSystem)
    {
      v53 = [_UIFocusSystemSceneComponent sceneComponentForFocusSystem:_focusSystem];
      scrollManager = [v53 scrollManager];
      if ([scrollManager isScrollingScrollableContainer:self])
      {
        [scrollManager targetContentOffsetForScrollableContainer:self];
        v56 = v55;
        v58 = v57;
        [(UIScrollView *)self _maximumContentOffsetForContentSize:width, height];
        if (v60 < v56 || v59 < v58)
        {
          [scrollManager cancelScrollingForScrollableContainer:self];
        }
      }
    }
  }

  [(UIScrollView *)self _systemContentInset];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
  v72 = p_contentSize->width;
  v71 = p_contentSize->height;
  p_contentSize->width = width;
  p_contentSize->height = height;
  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  [(UIScrollView *)self _setNeedsUsesStaticScrollBarUpdate];
  [(UIScrollView *)self _updateGradientMaskView];
  if (v10)
  {
    if (self->_verticalScrollIndicator)
    {
      [(UIView *)self bringSubviewToFront:?];
    }

    if (self->_horizontalScrollIndicator)
    {
      [(UIView *)self bringSubviewToFront:?];
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_accessoryViews objectEnumerator];
    v74 = [objectEnumerator countByEnumeratingWithState:&v91 objects:v95 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v92;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v92 != v76)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [(UIView *)self bringSubviewToFront:*(*(&v91 + 1) + 8 * i)];
        }

        v75 = [objectEnumerator countByEnumeratingWithState:&v91 objects:v95 count:16];
      }

      while (v75);
    }

    if (self->_shadows)
    {
      for (j = 0; j != 10; ++j)
      {
        [(UIView *)self sendSubviewToBack:self->_shadows[j]];
      }
    }
  }

  [(UIScrollView *)self _old_updateAutomaticContentSizeConstraintsIfNecessaryWithContentSize:width, height];
  if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
  {
    if ([(UIScrollView *)self _shouldScrollToContentBeginningInRightToLeft])
    {
      if ((*(p_scrollViewFlags + 19) & 2) == 0 || ([(UIScrollView *)self contentOffset], v80 = v79, [(UIView *)self frame], v80 == v72 - v81))
      {
        v82 = p_contentSize->width;
        [(UIView *)self frame];
        v84 = v82 - v83;
        [(UIScrollView *)self contentOffset];
        v86 = v85;
        if (dyld_program_sdk_at_least())
        {
          [(UIScrollView *)self _effectiveContentInset];
          v84 = v84 + v87;
        }

        [(UIScrollView *)self setContentOffset:v84, v86];
      }
    }
  }

  [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:1 adjustContentOffsetIfNecessary:v63, v65, v67, v69];
  if ((*(p_scrollViewFlags + 14) & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scrollViewDidChangeContentSize:self];
  }

  if (v71 != p_contentSize->height)
  {
    [(UIScrollView *)self _sendGeometryAffectingContentBottomChangedToScrollObservers];
  }

  *(p_scrollViewFlags + 12) |= 0x200000000000000uLL;
  [(UIScrollView *)self _updateLayoutMarginsGuideConstraintsIfNecessary];
}

- (void)_enumerateAllScrollObserversWithBlock:(uint64_t)block
{
  v15 = *MEMORY[0x1E69E9840];
  if (block)
  {
    v3 = *(block + 928);
    v13 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(a2 + 16))(a2, *(*(&v9 + 1) + 8 * v8), &v13);
        if (v13)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)_updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:(UIEdgeInsets)inset oldEdgesPropagatingSafeAreaInsets:(unint64_t)insets adjustContentOffsetIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(UIScrollView *)self _systemContentInset];
  v15 = left == v12 && top == v11;
  if (!v15 || right != v14 || bottom != v13)
  {
    if (necessaryCopy)
    {
      _UIScrollViewAdjustForOverlayInsetsChangeIfNecessary(self, 0, v11, v12, v13, v14, top, left, bottom, right);
    }

    else
    {
      [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
      [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
    }

    verticalScrollIndicator = self->_verticalScrollIndicator;
    v15 = verticalScrollIndicator == 0;
    v19 = verticalScrollIndicator != 0;
    v20 = 1;
    if (!v15)
    {
      v20 = 2;
    }

    if (self->_horizontalScrollIndicator)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    subviews = [(UIView *)self subviews];
    if ([subviews count] <= v21)
    {
    }

    else
    {
      _isInLayoutSubviews = [(UIView *)self _isInLayoutSubviews];

      if (!_isInLayoutSubviews)
      {

        [(UIScrollView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_setEdgesScrollingContentIntoSafeArea:(unint64_t)area
{
  if ((area & 0xF) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 101;
  }

  [(UIScrollView *)self setContentInsetAdjustmentBehavior:v3];
}

- (unint64_t)_edgesScrollingContentIntoSafeArea
{
  contentInsetAdjustmentBehavior = self->_contentInsetAdjustmentBehavior;
  if (contentInsetAdjustmentBehavior == 101 || contentInsetAdjustmentBehavior == 2)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

- (void)setContentInsetAdjustmentBehavior:(UIScrollViewContentInsetAdjustmentBehavior)contentInsetAdjustmentBehavior
{
  if (self->_contentInsetAdjustmentBehavior != contentInsetAdjustmentBehavior)
  {
    [(UIScrollView *)self _systemContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    self->_contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;

    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];
  }
}

- (void)_setAllowedNavigationOverlapAmount:(double)amount
{
  self->_allowedNavigationOverlapAmount = ceil(amount);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__UIScrollView__setAllowedNavigationOverlapAmount___block_invoke;
  v3[3] = &unk_1E712A710;
  v3[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v3];
}

uint64_t __51__UIScrollView__setAllowedNavigationOverlapAmount___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewDidScroll:v5];
  }

  return result;
}

- (void)setInteractionActivityTrackingBaseName:(id)name
{
  v4 = [name copy];
  interactionActivityTrackingBaseName = self->_interactionActivityTrackingBaseName;
  self->_interactionActivityTrackingBaseName = v4;
}

- (CGPoint)_roundedProposedContentOffset:(CGPoint)result
{
  x = result.x;
  if ((*(&self->_scrollViewFlags + 16) & 0x30) == 0)
  {
    v4 = *&self->_accuracy;
    if (fabs(*&v4) >= 2.22044605e-16)
    {
      if (*&v4 == 1.0)
      {
        *&result.y = vrndaq_f64(*&result.y);
      }

      else
      {
        v5 = vrndmq_f64(*&result.y);
        *&result.y = vaddq_f64(v5, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(*&result.y, v5), *&v4)), vdupq_lane_s64(v4, 0)));
      }
    }
  }

  v7 = v6;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)contentOffset
{
  y = contentOffset.y;
  x = contentOffset.x;
  v71 = *MEMORY[0x1E69E9840];
  p_scrollViewFlags = &self->_scrollViewFlags;
  v7 = *(&self->_scrollViewFlags + 12);
  *(&self->_scrollViewFlags + 12) = v7 | 0x40000000000000;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self _roundedProposedContentOffset:x, y];
  if ((*(p_scrollViewFlags + 2) & 8) == 0)
  {
    v18 = v16;
    v19 = v17;
    if (v9 != v16 || v11 != v17)
    {
      v56 = v9;
      v57 = v11;
      v21 = vabdd_f64(v16, v9);
      v22 = vabdd_f64(v17, v11);
      selfCopy = self;
      if (v21 >= 2.22044605e-16 || v22 >= 2.22044605e-16)
      {
        v25 = _UIMainBundleIdentifier();
        if (v25)
        {
          v26 = CACurrentMediaTime();
          telemetryOffsetChangeTime = selfCopy->_telemetryOffsetChangeTime;
          selfCopy->_telemetryOffsetChangeTime = v26;
          ++selfCopy->_telemetryOffsetChangeCount;
          v28 = v26 - telemetryOffsetChangeTime;
          v29 = v22 + selfCopy->_telemetryOffsetChange.height;
          selfCopy->_telemetryOffsetChange.width = v21 + selfCopy->_telemetryOffsetChange.width;
          selfCopy->_telemetryOffsetChange.height = v29;
          if (v28 < 0.018)
          {
            selfCopy->_telemetryOffsetChangeHighRateDuration = v28 + selfCopy->_telemetryOffsetChangeHighRateDuration;
          }

          v54 = v28;
          if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ScrollViewOffsetChangeLogging, @"ScrollViewOffsetChangeLogging", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48B69C)
          {
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v63 = ___telemetryReportOffsetChange_block_invoke;
            v64 = &unk_1E71226C8;
            v65 = selfCopy;
            v66 = v25;
            v67 = v54;
            v68 = v21;
            v69 = v22;
            v31 = v62;
            v32 = _telemetryDownsample_sample;
            if (!_telemetryDownsample_sample)
            {
              v32 = arc4random_uniform(0x80u) + 1;
            }

            _telemetryDownsample_sample = v32 + 1;
            if (v32 >= 0x80)
            {
              (v63)(v31);
              _telemetryDownsample_sample = 1;
            }
          }

          else
          {
            v30 = _telemetryOffsetChangeEvent(selfCopy, v25, 1, v54, v21, v22);
          }
        }
      }

      v33 = objc_autoreleasePoolPush();
      selfCopy->_lastSetContentOffsetUnrounded.x = x;
      selfCopy->_lastSetContentOffsetUnrounded.y = y;
      layer = [(UIView *)selfCopy layer];
      superlayer = [layer superlayer];

      needsLayoutOnGeometryChange = [superlayer needsLayoutOnGeometryChange];
      [superlayer setNeedsLayoutOnGeometryChange:0];
      [(_UIScrollViewVFD *)selfCopy->_vfd updateBounds:v18 scale:v19, v13, v15, selfCopy->_accuracy];
      [(UIScrollView *)selfCopy setBounds:v18, v19, v13, v15];
      v37 = [(UIScrollView *)selfCopy _layoutGuideOfType:2 createIfNecessary:0];
      v38 = v37;
      if (v37)
      {
        v51 = needsLayoutOnGeometryChange;
        v53 = superlayer;
        v55 = v7;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v52 = v37;
        _systemConstraints = [v37 _systemConstraints];
        v40 = [_systemConstraints countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v59;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v59 != v42)
              {
                objc_enumerationMutation(_systemConstraints);
              }

              v44 = *(*(&v58 + 1) + 8 * i);
              identifier = [v44 identifier];
              v46 = identifier;
              v47 = v18;
              if (identifier == @"UIScrollView-contentOffsetLayoutGuide-xOffset" || (v47 = v19, identifier == @"UIScrollView-contentOffsetLayoutGuide-yOffset"))
              {
                [v44 setConstant:v47];
              }
            }

            v41 = [_systemConstraints countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v41);
        }

        v7 = v55;
        v38 = v52;
        superlayer = v53;
        needsLayoutOnGeometryChange = v51;
      }

      [superlayer setNeedsLayoutOnGeometryChange:needsLayoutOnGeometryChange];
      [(UIScrollView *)selfCopy _notifyDidScroll];
      [(_UIScrollViewScrollingAnimator *)selfCopy->_keyboardScrollingAnimator cancelInteractiveScroll];
      v48 = *(p_scrollViewFlags + 12);
      if ((v48 & 0x10000) != 0 || [(UIScrollView *)selfCopy _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)selfCopy _effectiveShowsHorizontalScrollIndicator])
      {
        [(UIScrollView *)selfCopy _adjustScrollerIndicators:1 alwaysShowingThem:(v48 >> 16) & 1];
      }

      if (p_scrollViewFlags->shouldRevealScrollIndicators)
      {
        v49 = 2;
        if (v18 != v56)
        {
          v49 = 3;
        }

        if (v19 == v57)
        {
          v50 = v18 != v56;
        }

        else
        {
          v50 = v49;
        }

        [(UIScrollView *)selfCopy _flashScrollIndicatorsForAxes:v50 persistingPreviousFlashes:1];
      }

      [(UIScrollView *)selfCopy _updateAccessories];
      if (selfCopy->_shadows)
      {
        [(UIScrollView *)selfCopy _adjustBackgroundShadowsForContentSizeForcedVisible:0];
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFBFFFFFFFF7FFFFLL | v7 & 0x40000000000000;
}

- (void)setContentInset:(UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  if (contentInset.left != left || contentInset.top != top || contentInset.right != right || contentInset.bottom != bottom)
  {
    self->_contentInset = contentInset;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
    _layoutEngine = [(UIView *)self _layoutEngine];
    delegate = [_layoutEngine delegate];
    if (dyld_program_sdk_at_least())
    {
    }

    else
    {
      if (delegate)
      {
        _forceLayoutEngineSolutionInRationalEdges = [delegate _forceLayoutEngineSolutionInRationalEdges];

        if (_forceLayoutEngineSolutionInRationalEdges)
        {
          return;
        }
      }

      else
      {
      }

      [(UIScrollView *)self _adjustCrossingConstraintsIfNecessaryForOldContentInset:top, left, bottom, right];
    }
  }
}

- (void)setContentAlignmentPoint:(CGPoint)point
{
  if (self->_contentAlignmentPoint.x != point.x || self->_contentAlignmentPoint.y != point.y)
  {
    self->_contentAlignmentPoint = point;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
  }
}

- (BOOL)_isRectFullyVisible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self _effectiveContentInset];
  v17 = v11 + v16;
  v20 = v13 - (v18 + v19);
  v22 = v15 - (v16 + v21);
  v23 = v9 + v18;
  v24 = v17;
  v25 = v20;
  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;

  return CGRectContainsRect(*&v23, *&v26);
}

- (void)_setAdjustsTargetsOnContentOffsetChanges:(BOOL)changes
{
  v3 = 0x200000000000;
  if (!changes)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)_setSkipsContentOffsetAdjustmentsIfScrolling:(BOOL)scrolling
{
  v3 = 0x400000000000;
  if (!scrolling)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setAccessoryView:(id)view atEdge:(int64_t)edge
{
  viewCopy = view;
  if (!self->_accessoryViews)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    accessoryViews = self->_accessoryViews;
    self->_accessoryViews = dictionary;
  }

  v8 = [(UIScrollView *)self _keyForAccessoryViewAtEdge:edge];
  v9 = [(NSMutableDictionary *)self->_accessoryViews objectForKeyedSubscript:v8];
  if (v9)
  {
    [(NSMutableDictionary *)self->_accessoryViews removeObjectForKey:v8];
    [v9 removeFromSuperview];
  }

  if (viewCopy)
  {
    [viewCopy setScrollView:self];
    [(UIScrollView *)self _addContentSubview:viewCopy atBack:0];
  }

  v10 = self->_accessoryViews;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
  [(NSMutableDictionary *)v10 setObject:viewCopy forKeyedSubscript:v11];

  [(UIScrollView *)self _adjustScrollIndicatorsIfNeeded:0 forceRebuild:?];
  [(UIScrollView *)self _updateAccessories];
}

- (id)_keyForAccessoryViewAtEdge:(int64_t)edge
{
  accessoryViews = self->_accessoryViews;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)accessoryViews objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = _UIScrollAccessoryEffectiveEdge(edge, self);
    if (v8 != edge || (v8 = _UIScrollAccessorySemanticEdge(edge, self), v8 != edge))
    {
      edge = v8;
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:edge];

  return v9;
}

- (id)accessoryViewAtEdge:(int64_t)edge
{
  accessoryViews = self->_accessoryViews;
  v4 = [(UIScrollView *)self _keyForAccessoryViewAtEdge:edge];
  v5 = [(NSMutableDictionary *)accessoryViews objectForKeyedSubscript:v4];

  return v5;
}

- (void)accessoryInsetsDidChange:(UIEdgeInsets)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _scrollViewAccessoryInsetsDidChange:self];
  }
}

- (CGPoint)indexBarAccessoryView:(id)view contentOffsetForEntry:(id)entry atIndex:(int64_t)index
{
  displayEntries = [view displayEntries];
  v8 = [displayEntries count];

  [(UIScrollView *)self _minimumContentOffset];
  v10 = v9;
  v12 = v11;
  [(UIScrollView *)self _maximumContentOffset];
  v14 = v12 + index / (v8 - 1) * (v13 - v12);
  v15 = v10;
  result.y = v14;
  result.x = v15;
  return result;
}

- (void)_setFlipsHorizontalAxis:(BOOL)axis
{
  axisCopy = axis;
  _flipsHorizontalAxis = [(UIView *)self _flipsHorizontalAxis];
  v6.receiver = self;
  v6.super_class = UIScrollView;
  [(UIView *)&v6 _setFlipsHorizontalAxis:axisCopy];
  if (_flipsHorizontalAxis != axisCopy)
  {
    [(UIScrollView *)self _updateAccessories];
  }
}

- (void)_webCustomViewWillBeRemovedFromSuperview
{
  [(UIScrollView *)self _stopScrollingNotify:0 pin:1];
  v3.receiver = self;
  v3.super_class = UIScrollView;
  [(UIView *)&v3 _webCustomViewWillBeRemovedFromSuperview];
}

- (void)_willMoveToWindow:(id)window
{
  windowCopy = window;
  if ((*(&self->_scrollViewFlags + 15) & 4) != 0)
  {
    window = [(UIView *)self window];
    [(UIScrollView *)self _registerForRotation:0 ofWindow:window];

    [(UIScrollView *)self _registerForRotation:1 ofWindow:windowCopy];
  }

  if (!windowCopy && (*(&self->_scrollViewFlags + 21) & 2) != 0)
  {
    [(UIView *)self _removeBoundingPathChangeObserver:self];
    *(&self->_scrollViewFlags + 5) &= ~0x200u;
  }

  [(_UIScrollViewVFD *)self->_vfd reset];
  _UIQOSManagedCommitsEnd(self, 0);
  v6.receiver = self;
  v6.super_class = UIScrollView;
  [(UIView *)&v6 _willMoveToWindow:windowCopy];
}

- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v4.receiver = self;
  v4.super_class = UIScrollView;
  [(UIView *)&v4 _viewDidMoveFromScreen:screen toScreen:toScreen];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v21.receiver = self;
  v21.super_class = UIScrollView;
  [(UIView *)&v21 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  if (!toWindowCopy)
  {
    [(UIScrollView *)self _stopScrollingNotify:0 pin:1];
    asyncScrollDecelerationState = self->_asyncScrollDecelerationState;
    self->_asyncScrollDecelerationState = 0;

    _donatedTitleView = [(UIScrollView *)self _donatedTitleView];
    v10 = _donatedTitleView;
    if (_donatedTitleView)
    {
      [_donatedTitleView scrollViewWasRemovedFromWindow];
    }
  }

  if ((*(&self->_scrollViewFlags + 13) & 0x10) == 0)
  {
    [windowCopy _unregisterScrollToTopView:self];
    [(UIScrollView *)self _registerAsScrollToTopViewIfPossible];
  }

  if (toWindowCopy)
  {
    [(UIView *)self _currentScreenScale];
    self->_accuracy = v11;
    if (dyld_program_sdk_at_least())
    {
      _enclosingViewController = [(UIScrollView *)self _enclosingViewController];
      [_enclosingViewController _viewSubtreeDidGainScrollView:self enclosingViewController:_enclosingViewController];
    }

    if ((*(&self->_scrollViewFlags + 21) & 2) == 0)
    {
      screen = [toWindowCopy screen];
      v14 = [(UIView *)self _shouldSkipObservingBoundingPathChangesForScreen:screen];

      if (!v14)
      {
        *(&self->_scrollViewFlags + 5) |= 0x200u;
        [(UIView *)self _addBoundingPathChangeObserver:self];
      }
    }
  }

  else
  {
    dyld_program_sdk_at_least();
  }

  if (objc_opt_class())
  {
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69CA928];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__UIScrollView__didMoveFromWindow_toWindow___block_invoke;
    v18[3] = &unk_1E70F3668;
    objc_copyWeak(&v19, &location);
    [v15 isMediaEventsCollectionEnabledFor:bundleIdentifier completionHandler:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __44__UIScrollView__didMoveFromWindow_toWindow___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__UIScrollView__didMoveFromWindow_toWindow___block_invoke_2;
  v2[3] = &unk_1E7101C60;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __44__UIScrollView__didMoveFromWindow_toWindow___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained window];

    if (v2)
    {
      [WeakRetained startScrollViewMonitoring];
    }

    else
    {
      [WeakRetained stopScrollViewMonitoring];
    }
  }
}

- (void)_setResetsBoundingPathForSubtree:(BOOL)subtree
{
  if (subtree)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFFFBFF | v3;
}

- (void)_setNeedsLayoutOnVisibleBoundsChange:(BOOL)change
{
  v3 = *(&self->_scrollViewFlags + 5);
  if (((((v3 & 0x1000000) == 0) ^ change) & 1) == 0)
  {
    if (change)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_scrollViewFlags + 5) = v3 & 0xFEFFFFFF | v4;
    if (change)
    {
      [(UIView *)self _registerForGeometryChanges];
    }

    else
    {
      [(UIView *)self _unregisterForGeometryChanges];
    }
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (ancestor && (*(&self->_scrollViewFlags + 5) & 0x1000000) != 0)
  {
    [(UIScrollView *)self visibleBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    p_lastVisibleBounds = &self->_lastVisibleBounds;
    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    if (!CGRectEqualToRect(self->_lastVisibleBounds, v14))
    {
      [(UIScrollView *)self _invalidateLayoutForVisibleBounds:v6 oldVisibleBounds:v8, v10, v12, p_lastVisibleBounds->origin.x, self->_lastVisibleBounds.origin.y, self->_lastVisibleBounds.size.width, self->_lastVisibleBounds.size.height];
      p_lastVisibleBounds->origin.x = v6;
      self->_lastVisibleBounds.origin.y = v8;
      self->_lastVisibleBounds.size.width = v10;
      self->_lastVisibleBounds.size.height = v12;
    }
  }
}

- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated
{
  v4 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIScrollView *)self _effectiveContentInset];
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v17 = v11;
  accuracy = self->_accuracy;
  v19 = self->_firstPageOffset.horizontal - v14;
  if (accuracy == 1.0)
  {
    v21 = round(v19);
    v24 = round(self->_firstPageOffset.vertical - v13);
    v27 = round(v11 + v15 + self->_contentSize.width);
    v30 = round(v10 + v13 + self->_contentSize.height);
  }

  else
  {
    v20 = floor(v19);
    v21 = v20 + round(accuracy * (v19 - v20)) / accuracy;
    v22 = self->_firstPageOffset.vertical - v13;
    v23 = floor(v22);
    v24 = v23 + round(accuracy * (v22 - v23)) / accuracy;
    v25 = v11 + v15 + self->_contentSize.width;
    v26 = floor(v25);
    v27 = v26 + round(accuracy * (v25 - v26)) / accuracy;
    v28 = v16 + v13 + self->_contentSize.height;
    v29 = floor(v28);
    v30 = v29 + round(accuracy * (v28 - v29)) / accuracy;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v50 = CGRectIntersection(v49, *&v21);
  v31 = v50.origin.x;
  v32 = v50.origin.y;
  v33 = v50.size.width;
  v34 = v50.size.height;
  if (!CGRectIsEmpty(v50))
  {
    v35 = fmin(-v13, 0.0);
    v36 = fmin(-v15, 0.0);
    v37 = fmin(-v16, 0.0);
    v38 = fmin(-v17, 0.0);
    v39 = v36 + v31;
    v40 = v35 + v32;
    v41 = v33 - (v36 + v38);
    v42 = v34 - (v35 + v37);
    WeakRetained = objc_loadWeakRetained(&self->_animation);
    if (WeakRetained && dyld_program_sdk_at_least())
    {
      v43 = WeakRetained[13];
      v44 = WeakRetained[14];
      [(UIView *)self bounds];
      v51.origin.x = v43;
      v51.origin.y = v44;
      v53.origin.x = v39;
      v53.origin.y = v40;
      v53.size.width = v41;
      v53.size.height = v42;
      if (!CGRectContainsRect(v51, v53))
      {
        [(UIScrollView *)self _contentOffsetForScrollingToRect:v39, v40, v41, v42];
        *(WeakRetained + 13) = v45;
        *(WeakRetained + 14) = v46;
      }
    }

    else
    {
      [(UIView *)self bounds];
      v54.origin.x = v39;
      v54.origin.y = v40;
      v54.size.width = v41;
      v54.size.height = v42;
      if (!CGRectContainsRect(v52, v54))
      {
        [(UIScrollView *)self _contentOffsetForScrollingToRect:v39, v40, v41, v42];
        [(UIScrollView *)self setContentOffset:v4 animated:?];
      }
    }
  }
}

- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self contentOffset];
  v18 = x + width;
  if (x < v9)
  {
    v16 = x;
  }

  if (v18 >= v9 + v13)
  {
    v16 = v18 - v13;
  }

  v19 = y + height;
  if (y < v11)
  {
    v17 = y;
  }

  if (v19 >= v11 + v15)
  {
    v17 = v19 - v15;
  }

  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setScrollEnabled:(BOOL)scrollEnabled
{
  v3 = scrollEnabled;
  _scrollViewTouchDelayGesture = [(UIScrollView *)self _scrollViewTouchDelayGesture];
  [_scrollViewTouchDelayGesture setEnabled:v3];

  [(UIScrollView *)self _systemContentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
  v15 = 0x100000;
  if (v3)
  {
    v15 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFEFFFFFLL | v15;
  [(UIScrollView *)self _updateScrollGestureRecognizersEnabled];
  [(UIScrollView *)self _updateUsesStaticScrollBar];

  [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v7, v9, v11, v13];
}

- (void)_setAdjustsContentInsetWhenScrollDisabled:(BOOL)disabled
{
  if (((((*(&self->_scrollViewFlags + 2) & 0x20) == 0) ^ disabled) & 1) == 0)
  {
    disabledCopy = disabled;
    [(UIScrollView *)self _systemContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    v14 = 0x200000;
    if (!disabledCopy)
    {
      v14 = 0;
    }

    *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFDFFFFFLL | v14;

    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];
  }
}

- (void)setZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(UIScrollView *)self _updatePanGestureConfiguration];
  v5 = 0x400000;
  if (enabledCopy)
  {
    v5 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFBFFFFFLL | v5;

  [(UIScrollView *)self _updateZoomGestureRecognizersEnabled];
}

- (void)_setFirstResponderKeyboardAvoidanceEnabled:(BOOL)enabled
{
  v3 = 0x1000000000000;
  if (enabled)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setProgrammaticScrollEnabled:(BOOL)enabled
{
  v3 = 0x80000;
  if (enabled)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setPagingEnabled:(BOOL)pagingEnabled
{
  if (((((*(&self->_scrollViewFlags + 12) & 0x20) == 0) ^ pagingEnabled) & 1) == 0)
  {
    v3 = pagingEnabled;
    v5 = 32;
    if (!pagingEnabled)
    {
      v5 = 0;
    }

    *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFFDFLL | v5;
    [(UIScrollView *)self _updatePagingGestures];
    if (v3)
    {

      [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
    }
  }
}

- (void)_setPagingOrigin:(CGPoint)origin
{
  if (origin.x != self->_pagingOrigin.x || origin.y != self->_pagingOrigin.y)
  {
    self->_pagingOrigin = origin;
    [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
  }
}

- (unint64_t)_abuttedEdgesForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self _contentInsetIncludingDecorations];
  if (x + v7 >= floor(v13 + self->_contentSize.width))
  {
    v14 = (2 * (x <= -v11)) | 8;
  }

  else
  {
    v14 = 2 * (x <= -v11);
  }

  if (y <= -v10)
  {
    ++v14;
  }

  if (y + v9 >= floor(v12 + self->_contentSize.height))
  {
    return v14 | 4;
  }

  else
  {
    return v14;
  }
}

- (unint64_t)_abuttedPagingEdges
{
  if ((*(&self->_scrollViewFlags + 12) & 0x20) == 0)
  {
    return 0;
  }

  if ([(UIScrollView *)self isDecelerating])
  {
    x = self->_pageDecelerationTarget.x;
    y = self->_pageDecelerationTarget.y;

    return [(UIScrollView *)self _abuttedEdgesForContentOffset:x, y];
  }

  else
  {

    return [(UIScrollView *)self _currentlyAbuttedContentEdges];
  }
}

- (void)setBounces:(BOOL)bounces
{
  v3 = 12;
  if (!bounces)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFFF3 | v3;
  [(UIScrollView *)self _didSetBounces];
}

- (void)setBouncesHorizontally:(BOOL)horizontally
{
  v3 = 8;
  if (!horizontally)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFFF7 | v3;
  [(UIScrollView *)self _didSetBounces];
}

- (void)setBouncesVertically:(BOOL)vertically
{
  v3 = 4;
  if (!vertically)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFFFBLL | v3;
  [(UIScrollView *)self _didSetBounces];
}

- (void)setUpdateInsetBottomDuringKeyboardDismiss:(BOOL)dismiss
{
  v3 = 0x80000000000;
  if (!dismiss)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)_setAlwaysAppliesKeyboardBottomInsetAdjustment:(BOOL)adjustment
{
  if (adjustment)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFF7FFF | v3;
}

- (void)setAlwaysBounceVertical:(BOOL)alwaysBounceVertical
{
  if (((((*(&self->_scrollViewFlags + 1) & 2) == 0) ^ alwaysBounceVertical) & 1) == 0)
  {
    v3 = alwaysBounceVertical;
    [(UIScrollView *)self _systemContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    v14 = 512;
    if (!v3)
    {
      v14 = 0;
    }

    *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFDFFLL | v14;
    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];

    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  }
}

- (void)setAlwaysBounceHorizontal:(BOOL)alwaysBounceHorizontal
{
  if (((((*(&self->_scrollViewFlags + 1) & 1) == 0) ^ alwaysBounceHorizontal) & 1) == 0)
  {
    v3 = alwaysBounceHorizontal;
    [(UIScrollView *)self _systemContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    v14 = 256;
    if (!v3)
    {
      v14 = 0;
    }

    *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFEFFLL | v14;
    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];

    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  }
}

- (void)setTransfersHorizontalScrollingToParent:(BOOL)parent
{
  v3 = 1024;
  if (parent)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setTransfersVerticalScrollingToParent:(BOOL)parent
{
  v3 = 2048;
  if (parent)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)_setTransfersScrollToContainer:(BOOL)container
{
  v3 = 0x10000;
  if (container)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)_setShowsHorizontalScrollIndicator:(void *)indicator
{
  if (indicator && ((((indicator[224] & 0x1000000) == 0) ^ a2) & 1) == 0)
  {
    v2 = 0x1000000;
    if (!a2)
    {
      v2 = 0;
    }

    indicator[224] = indicator[224] & 0xFFFFFFFFFEFFFFFFLL | v2;
    [(UIScrollView *)indicator _adjustScrollIndicatorsIfNeeded:0 forceRebuild:?];
  }
}

- (void)_setDefaultShowsHorizontalScrollIndicator:(BOOL)indicator
{
  if ((*(&self->_scrollViewFlags + 23) & 0x40) == 0)
  {
    [(UIScrollView *)self _setShowsHorizontalScrollIndicator:indicator];
  }
}

- (void)_setShowsVerticalScrollIndicator:(void *)indicator
{
  if (indicator && ((((indicator[224] & 0x2000000) == 0) ^ a2) & 1) == 0)
  {
    v2 = 0x2000000;
    if (!a2)
    {
      v2 = 0;
    }

    indicator[224] = indicator[224] & 0xFFFFFFFFFDFFFFFFLL | v2;
    [(UIScrollView *)indicator _adjustScrollIndicatorsIfNeeded:0 forceRebuild:?];
  }
}

- (void)_setDefaultShowsVerticalScrollIndicator:(BOOL)indicator
{
  if ((*(&self->_scrollViewFlags + 23) & 0x20) == 0)
  {
    [(UIScrollView *)self _setShowsVerticalScrollIndicator:indicator];
  }
}

- (void)setIndexDisplayMode:(UIScrollViewIndexDisplayMode)indexDisplayMode
{
  scrollViewFlags = self->_scrollViewFlags;
  if (((scrollViewFlags >> 26) & 3) != indexDisplayMode)
  {
    *&self->_scrollViewFlags = scrollViewFlags & 0xFFFFFFFFF3FFFFFFLL | ((indexDisplayMode & 3) << 26);
  }
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)scrollIndicatorInsets
{
  v3.f64[0] = scrollIndicatorInsets.top;
  v3.f64[1] = scrollIndicatorInsets.left;
  v4.f64[0] = scrollIndicatorInsets.bottom;
  v4.f64[1] = scrollIndicatorInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_scrollIndicatorInset.top), vceqq_f64(v4, *&self->_scrollIndicatorInset.bottom)))) & 1) == 0)
  {
    self->_scrollIndicatorInset = scrollIndicatorInsets;
    v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&self->_verticalScrollIndicatorInsets.top = v5;
    *&self->_verticalScrollIndicatorInsets.bottom = v5;
    *&self->_horizontalScrollIndicatorInsets.top = v5;
    *&self->_horizontalScrollIndicatorInsets.bottom = v5;
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }
}

- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)verticalScrollIndicatorInsets
{
  v3.f64[0] = verticalScrollIndicatorInsets.top;
  v3.f64[1] = verticalScrollIndicatorInsets.left;
  v4.f64[0] = verticalScrollIndicatorInsets.bottom;
  v4.f64[1] = verticalScrollIndicatorInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_verticalScrollIndicatorInsets.top), vceqq_f64(v4, *&self->_verticalScrollIndicatorInsets.bottom)))) & 1) == 0)
  {
    self->_verticalScrollIndicatorInsets = verticalScrollIndicatorInsets;
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }
}

- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)horizontalScrollIndicatorInsets
{
  v3.f64[0] = horizontalScrollIndicatorInsets.top;
  v3.f64[1] = horizontalScrollIndicatorInsets.left;
  v4.f64[0] = horizontalScrollIndicatorInsets.bottom;
  v4.f64[1] = horizontalScrollIndicatorInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_horizontalScrollIndicatorInsets.top), vceqq_f64(v4, *&self->_horizontalScrollIndicatorInsets.bottom)))) & 1) == 0)
  {
    self->_horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets;
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }
}

- (void)setIndicatorStyle:(UIScrollViewIndicatorStyle)indicatorStyle
{
  scrollViewFlags = self->_scrollViewFlags;
  if (((scrollViewFlags >> 28) & 3) != indicatorStyle)
  {
    *&self->_scrollViewFlags = scrollViewFlags & 0xFFFFFFFFCFFFFFFFLL | ((indicatorStyle & 3) << 28);
    [(UIScrollView *)self _adjustScrollIndicatorsIfNeeded:1 forceRebuild:?];
  }
}

- (void)setDecelerationRate:(UIScrollViewDecelerationRate)decelerationRate
{
  v3 = dbl_18A6837B0[decelerationRate < 0.994];
  self->_decelerationFactor.width = v3;
  self->_decelerationFactor.height = v3;
}

- (void)setAllowsMultipleFingers:(BOOL)fingers
{
  v4 = 0x8000;
  if (fingers)
  {
    v4 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFF7FFFLL | v4;
  [(UIPanGestureRecognizer *)self->_pan setFailsPastMaxTouches:!fingers];

  [(UIScrollView *)self _updatePanGestureConfiguration];
}

- (void)setTracksImmediatelyWhileDecelerating:(BOOL)decelerating
{
  v3 = 0x8000000;
  if (decelerating)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)_setAvoidsJumpOnInterruptedBounce:(BOOL)bounce
{
  v3 = 0x10000000;
  if (!bounce)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)_setContentOffsetRoundingEnabled:(BOOL)enabled
{
  v3 = 0x2000000000;
  if (enabled)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFDFFFFFFFFFLL | v3;
  if (enabled)
  {
    [(UIScrollView *)self contentOffset];

    [(UIScrollView *)self setContentOffset:?];
  }
}

- (void)_setAllowedFocusBounceEdges:(unint64_t)edges
{
  v3 = *(__UILogGetCategoryCachedImpl("ScrollView", &_setAllowedFocusBounceEdges____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UIScrollView _allowedFocusBounceEdges is deprecated: please remove any references to this property.", v4, 2u);
  }
}

void __61__UIScrollView__createGestureRecognizersForCurrentTouchLevel__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[UISwipeGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:sel__handleLowFidelitySwipe_];
  [(UISwipeGestureRecognizer *)v4 setDirection:a2];
  [(UIGestureRecognizer *)v4 setDelegate:*(a1 + 32)];
  [(UIGestureRecognizer *)v4 setAllowedTouchTypes:*(*(a1 + 32) + 1976)];
  [*(a1 + 32) addGestureRecognizer:v4];
  v5 = *(a1 + 32) + 1024;
  v6 = __clz(__rbit32(a2));
  if (!a2)
  {
    v6 = -1;
  }

  v7 = *(v5 + 8 * v6);
  *(v5 + 8 * v6) = v4;
}

- (void)willRotateToInterfaceOrientation:(id)orientation
{
  [(UIScrollView *)self contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = v6 == 0.0;
  v9 = v4 == 0.0;
  [(UIView *)self bounds];
  self->_rotationCenterPoint.x = v5 + v10 * 0.5;
  [(UIView *)self bounds];
  self->_rotationCenterPoint.y = v7 + v11 * 0.5;
  *(&self->_scrollViewFlags + 12) = (v9 << 30) | (v8 << 31) | *(&self->_scrollViewFlags + 12) & 0xFFFFFFFF3FFFFFFFLL;
  accuracy = self->_accuracy;
  [(UIScrollView *)self contentSize];
  v14 = v13;
  [(UIView *)self bounds];
  v16 = v14 - v15;
  if (accuracy == 1.0)
  {
    v21 = round(v16);
  }

  else
  {
    v17 = floor(v16);
    [(UIScrollView *)self contentSize];
    v19 = v18;
    [(UIView *)self bounds];
    v21 = v17 + round(self->_accuracy * (v19 - v20 - v17)) / self->_accuracy;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFEFFFFFFFFLL | ((v5 == v21) << 32);
  v22 = self->_accuracy;
  [(UIScrollView *)self contentSize];
  v24 = v23;
  [(UIView *)self bounds];
  v26 = v24 - v25;
  if (v22 == 1.0)
  {
    v31 = round(v26);
  }

  else
  {
    v27 = floor(v26);
    [(UIScrollView *)self contentSize];
    v29 = v28;
    [(UIView *)self bounds];
    v31 = v27 + round(self->_accuracy * (v29 - v30 - v27)) / self->_accuracy;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFDFFFFFFFFLL | ((v7 == v31) << 33);
  [(UIScrollView *)self zoomScale];
  v33 = v32;
  [(UIScrollView *)self minimumZoomScale];
  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFDFFFFFFFLL | ((vabdd_f64(v33, v34) < 0.00000011920929) << 29);
}

- (void)willAnimateRotationToInterfaceOrientation:(id)orientation
{
  orientationCopy = orientation;
  if ((*(&self->_scrollViewFlags + 15) & 0x20) != 0)
  {
    [(UIScrollView *)self contentOffset];
    v9 = v13;
    v11 = v14;
  }

  else
  {
    [(UIScrollView *)self zoomScale];
    v5 = v4;
    [(UIScrollView *)self minimumZoomScale];
    v7 = v6;
    [(UIScrollView *)self contentOffset];
    v9 = v8;
    v11 = v10;
    if (v5 >= v7)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  if (![(UIScrollView *)self _canScrollX])
  {
    v18 = v9;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_7:
  v15 = *(&self->_scrollViewFlags + 4) & 1;
  if (((*(&self->_scrollViewFlags + 3) >> 30) & 1) == v15)
  {
    x = self->_rotationCenterPoint.x;
    [(UIView *)self bounds];
    v18 = x + v17 * -0.5;
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_11:
    _canScrollY = [(UIScrollView *)self _canScrollY];
    v20 = v11;
    if (!_canScrollY)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    [(UIScrollView *)self contentSize];
    v34 = v33;
    [(UIView *)self bounds];
    v18 = v34 - v35;
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = v9;
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v21 = *(&self->_scrollViewFlags + 12);
  v22 = (v21 >> 33) & 1;
  if (v22 == v21 >> 31)
  {
    y = self->_rotationCenterPoint.y;
    [(UIView *)self bounds];
    v20 = y + v24 * -0.5;
  }

  else if (v22)
  {
    [(UIScrollView *)self contentSize];
    v26 = v25;
    [(UIView *)self bounds];
    v20 = v26 - v27;
  }

  else
  {
    v20 = v11;
  }

LABEL_20:
  if (v9 != v18 || v11 != v20)
  {
    accuracy = self->_accuracy;
    if (accuracy == 1.0)
    {
      v30 = round(v18);
      v32 = round(v20);
    }

    else
    {
      v29 = floor(v18);
      v30 = v29 + round((v18 - v29) * accuracy) / accuracy;
      v31 = floor(v20);
      v32 = v31 + round((v20 - v31) * accuracy) / accuracy;
    }

    [(UIScrollView *)self setContentOffset:v30, v32];
    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  }
}

- (void)_registerForRotation:(BOOL)rotation ofWindow:(id)window
{
  rotationCopy = rotation;
  windowCopy = window;
  if (windowCopy)
  {
    v9 = windowCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = defaultCenter;
    if (rotationCopy)
    {
      [defaultCenter addObserver:self selector:sel_willRotateToInterfaceOrientation_ name:@"UIWindowWillRotateNotification" object:v9];
      [v8 addObserver:self selector:sel_willAnimateRotationToInterfaceOrientation_ name:@"UIWindowWillAnimateRotationNotification" object:v9];
    }

    else
    {
      [defaultCenter removeObserver:self name:@"UIWindowWillRotateNotification" object:v9];
      [v8 removeObserver:self name:@"UIWindowWillAnimateRotationNotification" object:v9];
    }

    windowCopy = v9;
  }
}

- (void)setPreservesCenterDuringRotation:(BOOL)rotation
{
  if (((((*(&self->_scrollViewFlags + 12) & 0x4000000) == 0) ^ rotation) & 1) == 0)
  {
    rotationCopy = rotation;
    v6 = 0x4000000;
    if (!rotation)
    {
      v6 = 0;
    }

    *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFBFFFFFFLL | v6;
    window = [(UIView *)self window];
    [(UIScrollView *)self _registerForRotation:rotationCopy ofWindow:window];
  }
}

- (void)withScrollIndicatorsShownForContentOffsetChanges:(id)changes
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  v4 = self->_scrollViewFlags.shouldRevealScrollIndicators != 0;
  self->_scrollViewFlags.shouldRevealScrollIndicators = 1;
  (*(changes + 2))(changes, a2);
  p_scrollViewFlags->shouldRevealScrollIndicators = v4;
}

- (void)_setShowsBackgroundShadow:(BOOL)shadow
{
  if ((((self->_shadows == 0) ^ shadow) & 1) == 0)
  {
    if (shadow)
    {
      self->_shadows = malloc_type_calloc(8uLL, 0xAuLL, 0x80040B8603338uLL);
      v4 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v4 userInterfaceIdiom];

      v6 = 0;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = @"UIScrollerShadowEdgeFill.png";
      }

      else
      {
        v7 = @"UIScrollerShadowFill.png";
      }

      v8 = @"UIScrollerContentShadowFill.png";
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v8 = @"UIScrollerShadowFill.png";
      }

      v19 = v8;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v9 = @"UIScrollerContentShadowCorner.png";
      }

      else
      {
        v9 = @"UIScrollerShadowCorner.png";
      }

      do
      {
        v10 = v7;
        if (v6 >= 2)
        {
          v11 = v19;
          if (v6 >= 6)
          {
            v11 = v9;
          }

          v10 = v11;
        }

        v12 = [UIImageView alloc];
        v13 = _UIImageWithName(v10);
        v14 = [(UIImageView *)v12 initWithImage:v13];
        shadows = self->_shadows;
        v16 = shadows[v6];
        shadows[v6] = v14;

        v17 = self->_shadows[v6];
        CGAffineTransformMakeRotation(&v20, __shadowRotations[v6]);
        [v17 setTransform:&v20];
        [(UIView *)self insertSubview:self->_shadows[v6] atIndex:0];

        ++v6;
      }

      while (v6 != 10);
      [(UIScrollView *)self _adjustBackgroundShadowsForContentSizeForcedVisible:0];
    }

    else
    {
      for (i = 0; i != 10; ++i)
      {
        [self->_shadows[i] removeFromSuperview];
      }

      free(self->_shadows);
      self->_shadows = 0;
    }
  }
}

- (int64_t)_scrubbingForPoint:(CGPoint)point touch:(id)touch
{
  y = point.y;
  x = point.x;
  touchCopy = touch;
  type = [touchCopy type];
  _isPointerTouch = [touchCopy _isPointerTouch];

  if (_isPointerTouch)
  {
    v10 = 3;
  }

  else
  {
    v10 = type;
  }

  return [(UIScrollView *)self _scrubbingForPoint:v10 touchType:x, y];
}

- (int64_t)_scrubbingForPoint:(CGPoint)point touchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  knobLastFadeTime = self->_knobLastFadeTime;
  v10 = v9 - knobLastFadeTime < 0.4 && knobLastFadeTime > 0.0;
  if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator])
  {
    if (!v10)
    {
      [(UIView *)self->_verticalScrollIndicator alpha];
      if (v11 <= 0.0)
      {
        if (![(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
        {
          return 0;
        }

        hasPointer = 0;
        goto LABEL_16;
      }
    }

    verticalScrollIndicator = self->_verticalScrollIndicator;
    if (type == 3)
    {
      hasPointer = [(_UIScrollViewScrollIndicator *)verticalScrollIndicator hasPointer];
    }

    else
    {
      [(UIView *)verticalScrollIndicator frame];
      UIDistanceBetweenPointAndRect(x, y, v14, v15, v16, v17);
      hasPointer = v18 < 20.0;
    }
  }

  else
  {
    hasPointer = 0;
  }

  if (![(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
  {
    goto LABEL_20;
  }

  if (!v10)
  {
LABEL_16:
    [(UIView *)self->_horizontalScrollIndicator alpha];
    if (v19 > 0.0)
    {
      goto LABEL_17;
    }

LABEL_20:
    if (type == 3)
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    goto LABEL_23;
  }

LABEL_17:
  horizontalScrollIndicator = self->_horizontalScrollIndicator;
  if (type == 3)
  {
    hasPointer2 = [(_UIScrollViewScrollIndicator *)horizontalScrollIndicator hasPointer];
    v22 = 3;
    if (hasPointer2)
    {
      result = 4;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  [(UIView *)horizontalScrollIndicator frame];
  UIDistanceBetweenPointAndRect(x, y, v24, v25, v26, v27);
  v22 = 1;
  if (v28 >= 20.0)
  {
LABEL_23:
    if (hasPointer)
    {
      return v22;
    }

    return 0;
  }

  result = 2;
LABEL_28:
  if (hasPointer)
  {
    return v22;
  }

  return result;
}

- (BOOL)_canScrubWithTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
  v5 = [(UIScrollView *)self _scrubbingForPoint:touchCopy touch:?];
  v6 = v5 != 0;
  _isPointerTouch = [touchCopy _isPointerTouch];

  if ((_isPointerTouch & 1) == 0)
  {
    state = [(UIGestureRecognizer *)self->_knobLongPressGestureRecognizer state];
    if (v5)
    {
      v9 = state <= UIGestureRecognizerStatePossible;
    }

    else
    {
      v9 = 1;
    }

    return !v9;
  }

  return v6;
}

- (CGPoint)_clampScrollOffsetToBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self _effectiveContentInset];
  accuracy = self->_accuracy;
  v15 = self->_firstPageOffset.horizontal - v14;
  if (accuracy == 1.0)
  {
    v19 = round(v15);
    v25 = round(round(v12 + self->_contentSize.width) - v7);
    v30 = round(self->_firstPageOffset.vertical - v10);
    v34 = round(round(v11 + self->_contentSize.height) - v9);
  }

  else
  {
    v16 = floor(v15);
    v17 = v16 + round(accuracy * (v15 - v16)) / accuracy;
    v18 = floor(v17);
    v19 = v18 + round(accuracy * (v17 - v18)) / accuracy;
    height = self->_contentSize.height;
    v21 = v12 + self->_contentSize.width;
    v22 = floor(v21);
    v23 = v22 + round(accuracy * (v21 - v22)) / accuracy - v7;
    v24 = floor(v23);
    v25 = v24 + round(accuracy * (v23 - v24)) / accuracy;
    v26 = self->_firstPageOffset.vertical - v10;
    v27 = floor(v26);
    v28 = v27 + round(accuracy * (v26 - v27)) / accuracy;
    v29 = floor(v28);
    v30 = v29 + round(accuracy * (v28 - v29)) / accuracy;
    v31 = floor(v11 + height);
    v32 = v31 + round(accuracy * (v11 + height - v31)) / accuracy - v9;
    v33 = floor(v32);
    v34 = v33 + round(accuracy * (v32 - v33)) / accuracy;
  }

  [(UIScrollView *)self _revealableContentPadding];
  v36 = v35;
  v38 = v19 - v37;
  v40 = v30 - v39;
  [(UIScrollView *)self _maxTopOffsetAdjustedForRevealableContentPadding:v34 + v41];
  if (x >= v38)
  {
    if (x > v25 + v36)
    {
      if (v25 + v36 <= v38)
      {
        x = v38;
      }

      else
      {
        x = v25 + v36;
      }
    }
  }

  else
  {
    x = v38;
  }

  if (y >= v40)
  {
    if (y > v42)
    {
      if (v42 <= v40)
      {
        y = v40;
      }

      else
      {
        y = v42;
      }
    }
  }

  else
  {
    y = v40;
  }

  v43 = x;
  v44 = y;
  result.y = v44;
  result.x = v43;
  return result;
}

- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)animated
{
  v4 = *(&self->_scrollViewFlags + 5);
  v5 = (v4 >> 11) & 0xF;
  startOffsetX = self->_startOffsetX;
  startOffsetY = self->_startOffsetY;
  *animated = 0;
  [(UIView *)self bounds];
  v10 = v8;
  left = self->_knobRelativeContentInsets.left;
  right = self->_knobRelativeContentInsets.right;
  v56 = self->_knobRelativeIndicatorInsets.left;
  v13 = self->_knobRelativeIndicatorInsets.right;
  if ((v4 & 0x6800) == 0x800)
  {
    v14 = v9;
    v52 = self->_knobRelativeIndicatorInsets.right;
    v53 = self->_knobRelativeContentInsets.right;
    v54 = self->_knobRelativeContentInsets.left;
    v55 = v8;
    top = self->_knobRelativeContentInsets.top;
    bottom = self->_knobRelativeContentInsets.bottom;
    v17 = self->_knobRelativeIndicatorInsets.top;
    v18 = self->_knobRelativeIndicatorInsets.bottom;
    accuracy = self->_accuracy;
    if (accuracy == 1.0)
    {
      v21 = round(v9);
    }

    else
    {
      v20 = floor(v9);
      v21 = v20 + round((v9 - v20) * accuracy) / accuracy;
    }

    [(UIScrollView *)self _scrollIndicatorAdditionalInset];
    v23 = v21 - (v17 + v22);
    [(UIScrollView *)self _scrollIndicatorAdditionalInset];
    v25 = v23 - (v18 + v24);
    [(UIScrollViewPanGestureRecognizer *)self->_pan translationInView:self];
    height = self->_contentSize.height;
    v28 = startOffsetY + v27 / v25 * (bottom + top + height);
    v29 = *&self->_accuracy;
    v30.f64[0] = bottom + height;
    v30.f64[1] = self->_firstPageOffset.vertical - top;
    if (*&v29 == 1.0)
    {
      v32 = vrndaq_f64(v30);
    }

    else
    {
      v31 = vrndmq_f64(v30);
      v32 = vaddq_f64(v31, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v30, v31), *&v29)), vdupq_lane_s64(v29, 0)));
    }

    right = v53;
    left = v54;
    v13 = v52;
    [(UIScrollView *)self _rubberBandOffsetForOffset:0 maxOffset:v28 minOffset:v32.f64[0] - v14 range:v32.f64[1] outside:v25 * 0.8];
    startOffsetY = v33;
    v10 = v55;
  }

  if (v5 == 4 || v5 == 2)
  {
    v35 = self->_accuracy;
    if (v35 == 1.0)
    {
      v37 = round(v10);
    }

    else
    {
      v36 = floor(v10);
      v37 = v36 + round((v10 - v36) * v35) / v35;
    }

    [(UIScrollView *)self _scrollIndicatorAdditionalInset];
    v39 = v37 - (v56 + v38);
    [(UIScrollView *)self _scrollIndicatorAdditionalInset];
    v41 = v39 - (v13 + v40);
    [(UIScrollViewPanGestureRecognizer *)self->_pan translationInView:self];
    width = self->_contentSize.width;
    v44 = startOffsetX + v43 / v41 * (right + left + width);
    v45 = *&self->_accuracy;
    v46.f64[0] = right + width;
    v46.f64[1] = self->_firstPageOffset.horizontal - left;
    if (*&v45 == 1.0)
    {
      v48 = vrndaq_f64(v46);
    }

    else
    {
      v47 = vrndmq_f64(v46);
      v48 = vaddq_f64(v47, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v46, v47), *&v45)), vdupq_lane_s64(v45, 0)));
    }

    [(UIScrollView *)self _rubberBandOffsetForOffset:0 maxOffset:v44 minOffset:v48.f64[0] - v10 range:v48.f64[1] outside:v41 * 0.8];
    startOffsetX = v49;
  }

  v50 = startOffsetX;
  v51 = startOffsetY;
  result.y = v51;
  result.x = v50;
  return result;
}

- (CGPoint)_rubberBandContentOffsetForOffset:(CGPoint)offset outsideX:(BOOL *)x outsideY:(BOOL *)y
{
  y = offset.y;
  x = offset.x;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v83 = v14;
  v84 = v15;
  alwaysBounceHorizontal = [(UIScrollView *)self alwaysBounceHorizontal];
  alwaysBounceVertical = [(UIScrollView *)self alwaysBounceVertical];
  [(UIScrollView *)self _effectiveContentInset];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *&self->_accuracy;
  p_contentSize = &self->_contentSize;
  v28.f64[0] = v24 + v20 + self->_contentSize.width;
  v28.f64[1] = v83;
  if (*&v26 == 1.0)
  {
    v30 = vrndaq_f64(v28);
  }

  else
  {
    v29 = vrndmq_f64(v28);
    v30 = vaddq_f64(v29, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v28, v29), *&v26)), vdupq_lane_s64(v26, 0)));
  }

  v31 = v84;
  if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v30, 1), v30))).u8[0] & 1) == 0)
  {
    v32 = (~*&self->_scrollViewFlags & 0x40000040) != 0 ? v11 : x;
    if (!alwaysBounceHorizontal || (*&self->_scrollViewFlags & 8) == 0)
    {
      x = v32;
    }
  }

  v33.f64[0] = v23 + v19 + self->_contentSize.height;
  v33.f64[1] = v84;
  if (*&v26 == 1.0)
  {
    v35 = vrndaq_f64(v33);
  }

  else
  {
    v34 = vrndmq_f64(v33);
    v35 = vaddq_f64(v34, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v33, v34), *&v26)), vdupq_lane_s64(v26, 0)));
  }

  if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v35, 1), v35))).u8[0] & 1) == 0)
  {
    scrollViewFlags = self->_scrollViewFlags;
    if ((!alwaysBounceVertical || (scrollViewFlags & 4) == 0) && (~scrollViewFlags & 0x40000040) != 0)
    {
      y = v13;
    }
  }

  if (x)
  {
    *x = 0;
  }

  if (y)
  {
    *y = 0;
  }

  v37 = 1.0;
  if (self->_currentScrollDeviceCategory == 6)
  {
    v38 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_GamePadRubberBandingLimitPercentage, @"GamePadRubberBandingLimitPercentage", _UIInternalPreferenceUpdateDouble);
    v31 = v84;
    if (v38)
    {
      v37 = 0.5;
    }

    else
    {
      v37 = *&qword_1EA95E850;
    }
  }

  if ((*&self->_scrollViewFlags & 8) != 0)
  {
    v49 = *&self->_accuracy;
    v50.f64[0] = self->_firstPageOffset.horizontal - v21;
    v50.f64[1] = v25 + p_contentSize->width;
    if (*&v49 == 1.0)
    {
      v52 = vrndaq_f64(v50);
      v53 = v83;
      v55 = round(v83);
    }

    else
    {
      v51 = vrndmq_f64(v50);
      v52 = vaddq_f64(v51, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v50, v51), *&v49)), vdupq_lane_s64(v49, 0)));
      v53 = v83;
      v54 = floor(v83);
      v55 = v54 + round((v83 - v54) * *&v49) / *&v49;
    }

    [(UIScrollView *)self _rubberBandOffsetForOffset:x maxOffset:x minOffset:v52.f64[1] - v53 range:v52.f64[0] outside:v37 * v55];
    xCopy = v56;
    v39 = *(&self->_scrollViewFlags + 12);
    if ((v39 & 0x3000000000) != 0)
    {
      v31 = v84;
    }

    else
    {
      accuracy = self->_accuracy;
      v31 = v84;
      if (accuracy == 1.0)
      {
        xCopy = round(xCopy);
      }

      else
      {
        v58 = floor(xCopy);
        xCopy = v58 + round((xCopy - v58) * accuracy) / accuracy;
      }
    }

    goto LABEL_47;
  }

  v39 = *(&self->_scrollViewFlags + 12);
  v40 = self->_accuracy;
  if ((v39 & 0x3000000000) == 0)
  {
    if (v40 == 1.0)
    {
      x = round(x);
      width = p_contentSize->width;
      goto LABEL_39;
    }

    v41 = floor(x);
    x = v41 + round((x - v41) * v40) / v40;
  }

  width = p_contentSize->width;
  if (v40 != 1.0)
  {
    v43 = self->_firstPageOffset.horizontal - v21;
    v44 = floor(v43);
    xCopy = v44 + round(v40 * (v43 - v44)) / v40;
    v46 = v25 + width;
    v47 = floor(v46);
    v48 = v47 + round(v40 * (v46 - v47)) / v40;
    goto LABEL_40;
  }

LABEL_39:
  xCopy = round(self->_firstPageOffset.horizontal - v21);
  v48 = round(v25 + width);
LABEL_40:
  if (x >= xCopy)
  {
    v59 = v48 - v83;
    if (x <= v59)
    {
      xCopy = x;
    }

    else if (v59 > xCopy)
    {
      xCopy = v59;
    }
  }

LABEL_47:
  if ((*&self->_scrollViewFlags & 4) == 0)
  {
    v60 = self->_accuracy;
    if ((v39 & 0x3000000000) == 0)
    {
      if (v60 == 1.0)
      {
        y = round(y);
        height = self->_contentSize.height;
        goto LABEL_60;
      }

      v61 = floor(y);
      y = v61 + round((y - v61) * v60) / v60;
    }

    height = self->_contentSize.height;
    if (v60 != 1.0)
    {
      v63 = self->_firstPageOffset.vertical - v19;
      v64 = floor(v63);
      v65 = v64 + round(v60 * (v63 - v64)) / v60;
      v66 = v23 + height;
      v67 = floor(v66);
      v68 = v67 + round(v60 * (v66 - v67)) / v60;
LABEL_61:
      v79 = v68 - v31;
      if (v79 <= v65)
      {
        v80 = v65;
      }

      else
      {
        v80 = v79;
      }

      if (y > v79)
      {
        yCopy = v80;
      }

      else
      {
        yCopy = y;
      }

      if (y >= v65)
      {
        v76 = yCopy;
      }

      else
      {
        v76 = v65;
      }

      goto LABEL_70;
    }

LABEL_60:
    v65 = round(self->_firstPageOffset.vertical - v19);
    v68 = round(v23 + height);
    goto LABEL_61;
  }

  v69 = *&self->_accuracy;
  v70.f64[0] = self->_firstPageOffset.vertical - v19;
  v70.f64[1] = v23 + self->_contentSize.height;
  if (*&v69 == 1.0)
  {
    v72 = vrndaq_f64(v70);
    v74 = round(v31);
  }

  else
  {
    v71 = vrndmq_f64(v70);
    v72 = vaddq_f64(v71, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v70, v71), *&v69)), vdupq_lane_s64(v69, 0)));
    v73 = floor(v31);
    v74 = v73 + round((v31 - v73) * *&v69) / *&v69;
  }

  [(UIScrollView *)self _rubberBandOffsetForOffset:y maxOffset:y minOffset:v72.f64[1] - v31 range:v72.f64[0] outside:v37 * v74];
  v76 = v75;
  if ((*(&self->_scrollViewFlags + 16) & 0x30) == 0)
  {
    v77 = self->_accuracy;
    if (v77 == 1.0)
    {
      v76 = round(v76);
    }

    else
    {
      v78 = floor(v76);
      v76 = v78 + round((v76 - v78) * v77) / v77;
    }
  }

LABEL_70:
  v82 = xCopy;
  result.y = v76;
  result.x = v82;
  return result;
}

- (CGPoint)_rubberBandingReversalOffsetForOriginalOffset:(CGPoint)offset velocity:(CGPoint)velocity currentPanTranslation:(CGPoint)translation
{
  y = velocity.y;
  v29 = translation.y;
  x = translation.x;
  v27 = offset.y;
  v5 = velocity.x;
  v6 = offset.x;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v25 = v10;
  [(UIScrollView *)self _minimumContentOffset];
  v12 = v11;
  v14 = v13;
  [(UIScrollView *)self _maximumContentOffset];
  v16 = v15;
  v18 = v17;
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_GamePadRubberBandingReversalAccelerationCoefficient, @"GamePadRubberBandingReversalAccelerationCoefficient", _UIInternalPreferenceUpdateDouble))
  {
    v19 = 0.1;
  }

  else
  {
    v19 = *&qword_1EA95E840;
  }

  [(UIScrollView *)self _rubberBandingReversalOffsetForOriginalOffset:v6 contentMin:v12 contentMax:v16 contentOffset:v9 velocity:v5 currentDelta:x rubberBandingCoefficient:v19];
  v21 = v20;
  [(UIScrollView *)self _rubberBandingReversalOffsetForOriginalOffset:v27 contentMin:v14 contentMax:v18 contentOffset:v25 velocity:y currentDelta:v29 rubberBandingCoefficient:v19];
  v23 = v22;
  v24 = v21;
  result.y = v23;
  result.x = v24;
  return result;
}

- (double)_rubberBandingReversalOffsetForOriginalOffset:(double)offset contentMin:(double)min contentMax:(double)max contentOffset:(double)contentOffset velocity:(double)velocity currentDelta:(double)delta rubberBandingCoefficient:(double)coefficient
{
  if (contentOffset >= min || velocity >= 0.0)
  {
    v10 = velocity <= 0.0 || contentOffset <= max;
    v9 = offset - max;
    if (v10)
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = offset - min;
  }

  return v9 * coefficient;
}

- (void)_performScrollViewWillEndDraggingInvocationsWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset unclampedOriginalTarget:(CGPoint)target
{
  y = target.y;
  x = target.x;
  v8 = velocity.y;
  v9 = velocity.x;
  _isAutomaticContentOffsetAdjustmentEnabled = [(UIScrollView *)self _isAutomaticContentOffsetAdjustmentEnabled];
  [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:0];
  if (objc_opt_respondsToSelector())
  {
    [(UIScrollView *)self _scrollViewWillEndDraggingWithVelocity:offset targetContentOffset:v9, v8];
  }

  _observerImplementingWillEndDraggingMethod = [(UIScrollView *)self _observerImplementingWillEndDraggingMethod];
  if (_observerImplementingWillEndDraggingMethod)
  {
    [_observerImplementingWillEndDraggingMethod _observeScrollView:self willEndDraggingWithVelocity:offset targetContentOffset:v9 unclampedOriginalTarget:{v8, x, y}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 scrollViewWillEndDragging:self withVelocity:offset targetContentOffset:{v9, v8}];
  }

  [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];
}

- (UIEdgeInsets)_revealableContentPaddingIncludingContentWithCollapsedAffinity:(BOOL)affinity
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = "";
  v17 = 0u;
  v18 = 0u;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__UIScrollView__revealableContentPaddingIncludingContentWithCollapsedAffinity___block_invoke;
  v11[3] = &unk_1E712A7A8;
  affinityCopy = affinity;
  v11[4] = self;
  v11[5] = &v13;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v11];
  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

float64x2_t __79__UIScrollView__revealableContentPaddingIncludingContentWithCollapsedAffinity___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 _revealableContentPaddingForObservedScrollView:*(a1 + 32) includeContentWithCollapsedAffinity:*(a1 + 48)];
    v5 = *(*(a1 + 40) + 8);
    v7.f64[1] = v6;
    result = vaddq_f64(v7, v5[2]);
    v9.f64[1] = v8;
    v10 = vaddq_f64(v9, v5[3]);
    v5[2] = result;
    v5[3] = v10;
  }

  return result;
}

float64x2_t __42__UIScrollView__collapsableContentPadding__block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v5 = *(*(a1 + 40) + 8);
    [a2 _collapsableContentPaddingForObservedScrollView:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v8.f64[1] = v7;
    result = vaddq_f64(v5[2], v8);
    v10.f64[1] = v9;
    v11 = vaddq_f64(v10, v5[3]);
    v6[2] = result;
    v6[3] = v11;
  }

  return result;
}

- (double)_maxTopOffsetAdjustedForRevealableContentPadding:(double)padding
{
  [(UIScrollView *)self _revealableContentPaddingIncludingContentWithCollapsedAffinity:0];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self _collapsableContentPadding];
  v10 = v9;
  [(UIScrollView *)self _effectiveContentInset];
  v12 = v11;
  v14 = v13;
  [(UIView *)self bounds];
  accuracy = self->_accuracy;
  v17 = v14 + self->_contentSize.height;
  if (accuracy == 1.0)
  {
    v27 = v12 + v8 + round(v17);
    if (v6 + v27 > v15 && v27 - v10 < v15)
    {
      paddingCopy2 = v10 - v12;
    }

    else
    {
      paddingCopy2 = padding;
    }

    result = round(round(self->_firstPageOffset.vertical - v12) - v6);
  }

  else
  {
    v18 = floor(v17);
    v19 = v12 + v8 + v18 + round(accuracy * (v17 - v18)) / accuracy;
    v20 = v6 + v19 > v15 && v19 - v10 < v15;
    paddingCopy2 = v10 - v12;
    if (!v20)
    {
      paddingCopy2 = padding;
    }

    v22 = self->_firstPageOffset.vertical - v12;
    v23 = floor(v22);
    v24 = v23 + round(accuracy * (v22 - v23)) / accuracy - v6;
    v25 = floor(v24);
    result = v25 + round(accuracy * (v24 - v25)) / accuracy;
  }

  if (paddingCopy2 >= result)
  {
    return paddingCopy2;
  }

  return result;
}

- (BOOL)_scrollViewWillEndDraggingWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![(UIScrollView *)self _hasScrollViewWillEndDraggingInvocationsToPerform])
  {
    goto LABEL_179;
  }

  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self contentOffset];
  v184 = v10;
  v185 = v11;
  if (self->_horizontalVelocity >= 0.0)
  {
    v12 = 0.01;
  }

  else
  {
    v12 = -0.01;
  }

  if (self->_verticalVelocity >= 0.0)
  {
    v13 = 0.01;
  }

  else
  {
    v13 = -0.01;
  }

  [(UIScrollView *)self _effectiveContentInset];
  accuracy = self->_accuracy;
  p_firstPageOffset = &self->_firstPageOffset;
  v20 = self->_firstPageOffset.horizontal - v19;
  if (accuracy == 1.0)
  {
    v24 = round(v20);
    v30 = round(round(v16 + self->_contentSize.width) - v7);
    v35 = round(self->_firstPageOffset.vertical - v14);
    v39 = round(round(v15 + self->_contentSize.height) - v9);
  }

  else
  {
    v21 = floor(v20);
    v22 = v21 + round(accuracy * (v20 - v21)) / accuracy;
    v23 = floor(v22);
    v24 = v23 + round(accuracy * (v22 - v23)) / accuracy;
    height = self->_contentSize.height;
    v26 = v16 + self->_contentSize.width;
    v27 = floor(v26);
    v28 = v27 + round(accuracy * (v26 - v27)) / accuracy - v7;
    v29 = floor(v28);
    v30 = v29 + round(accuracy * (v28 - v29)) / accuracy;
    v31 = self->_firstPageOffset.vertical - v14;
    v32 = floor(v31);
    v33 = v32 + round(accuracy * (v31 - v32)) / accuracy;
    v34 = floor(v33);
    v35 = v34 + round(accuracy * (v33 - v34)) / accuracy;
    v36 = floor(v15 + height);
    v37 = v36 + round(accuracy * (v15 + height - v36)) / accuracy - v9;
    v38 = floor(v37);
    v39 = v38 + round(accuracy * (v37 - v38)) / accuracy;
  }

  [(UIScrollView *)self _revealableContentPadding];
  v182 = v24 - v40;
  v42 = v30 + v41;
  v44 = v35 - v43;
  [(UIScrollView *)self _maxTopOffsetAdjustedForRevealableContentPadding:v39 + v45];
  v47 = v46;
  p_scrollViewFlags = &self->_scrollViewFlags;
  v49 = &OBJC_IVAR____UITileLayer_maskPath;
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    y = self->_pageDecelerationTarget.y;
    x = self->_pageDecelerationTarget.x;
  }

  else
  {
    self->_decelerationLnFactorH = log(self->_decelerationFactor.width);
    v50 = log(self->_decelerationFactor.height);
    self->_decelerationLnFactorV = v50;
    if (decelerationCopy)
    {
      v49 = &OBJC_IVAR____UITileLayer_maskPath;
      fastScrollMultiplier = self->_fastScrollMultiplier;
      v52 = v184 - (self->_horizontalVelocity - v12) / self->_decelerationLnFactorH * fastScrollMultiplier;
      v53 = v185 - fastScrollMultiplier * ((self->_verticalVelocity - v13) / v50);
      v54 = self->_accuracy;
      if (v54 == 1.0)
      {
        v56 = round(v52);
        v58 = round(v53);
      }

      else
      {
        v55 = floor(v52);
        v56 = v55 + round(v54 * (v52 - v55)) / v54;
        v57 = floor(v53);
        v58 = v57 + round(v54 * (v53 - v57)) / v54;
      }

      x = v182;
      if (v42 <= v182)
      {
        v64 = v182;
      }

      else
      {
        v64 = v42;
      }

      if (v56 <= v42)
      {
        v64 = v56;
      }

      if (v56 >= v182)
      {
        x = v64;
      }

      p_scrollViewFlags = &self->_scrollViewFlags;
      if (v58 >= v44)
      {
        if (v58 <= v47)
        {
          y = v58;
        }

        else if (v47 <= v44)
        {
          y = v44;
        }

        else
        {
          y = v47;
        }
      }

      else
      {
        y = v44;
      }
    }

    else
    {
      [(UIScrollView *)self contentOffset];
      v62 = v61;
      y = v63;
      x = v62;
      p_scrollViewFlags = &self->_scrollViewFlags;
      v49 = &OBJC_IVAR____UITileLayer_maskPath;
    }
  }

  v178 = v44;
  v179 = v42;
  v181 = x;
  v186 = y;
  v187.f64[0] = x;
  v187.f64[1] = y;
  [(UIScrollView *)self _performScrollViewWillEndDraggingInvocationsWithVelocity:&v187 targetContentOffset:self->_horizontalVelocity unclampedOriginalTarget:self->_verticalVelocity];
  [(UIScrollView *)self _effectiveContentInset];
  v68 = self->_accuracy;
  v70 = p_firstPageOffset->horizontal - v69;
  p_contentSize = &self->_contentSize;
  v173 = v13;
  v175 = v12;
  v180 = v9;
  v177 = v47;
  if (v68 == 1.0)
  {
    v75 = round(v70);
    v79 = v7;
    v82 = round(round(v67 + p_contentSize->width) - v7);
    v87 = round(self->_firstPageOffset.vertical - v65);
    v91 = round(round(v66 + self->_contentSize.height) - v9);
  }

  else
  {
    v72 = floor(v70);
    v73 = v72 + round(v68 * (v70 - v72)) / v68;
    v74 = floor(v73);
    v75 = v74 + round(v68 * (v73 - v74)) / v68;
    v76 = self->_contentSize.height;
    v77 = v67 + p_contentSize->width;
    v78 = floor(v77);
    v79 = v7;
    v80 = v78 + round(v68 * (v77 - v78)) / v68 - v7;
    v81 = floor(v80);
    v82 = v81 + round(v68 * (v80 - v81)) / v68;
    v83 = self->_firstPageOffset.vertical - v65;
    v84 = floor(v83);
    v85 = v84 + round(v68 * (v83 - v84)) / v68;
    v86 = floor(v85);
    v87 = v86 + round(v68 * (v85 - v86)) / v68;
    v88 = floor(v66 + v76);
    v89 = v88 + round(v68 * (v66 + v76 - v88)) / v68 - v9;
    v90 = floor(v89);
    v91 = v90 + round(v68 * (v89 - v90)) / v68;
  }

  [(UIScrollView *)self _revealableContentPadding];
  v93 = v92;
  v95 = v94;
  v97 = v75 - v96;
  [(UIScrollView *)self _maxTopOffsetAdjustedForRevealableContentPadding:v91 + v98];
  v100 = v187;
  v101 = v181 != v187.f64[0];
  if (v186 != v187.f64[1])
  {
    v101 = 1;
  }

  if (v101)
  {
    v102 = *&self->_accuracy;
    if (*&v102 == 1.0)
    {
      v100 = vrndaq_f64(v187);
    }

    else
    {
      v103 = vrndmq_f64(v187);
      v100 = vaddq_f64(v103, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v187, v103), *&v102)), vdupq_lane_s64(v102, 0)));
    }

    v187 = v100;
  }

  v104 = v82 + v95;
  v105 = v87 - v93;
  if (v97 != v182)
  {
    LOBYTE(v101) = 1;
  }

  v106 = v100.f64[1];
  v176 = v87 - v93;
  if (!v101 && (v104 == v179 ? (v107 = v105 == v178) : (v107 = 0), v107 ? (v108 = v99 == v177) : (v108 = 0), v108))
  {
    v109 = v99;
    v110 = v100.f64[0];
  }

  else
  {
    v110 = v97;
    if (v100.f64[0] >= v97)
    {
      v110 = v100.f64[0];
      if (v100.f64[0] > v104)
      {
        if (v104 <= v97)
        {
          v110 = v97;
        }

        else
        {
          v110 = v82 + v95;
        }
      }
    }

    v187.f64[0] = v110;
    v100.f64[0] = v87 - v93;
    if (v100.f64[1] >= v105)
    {
      v100.f64[0] = v100.f64[1];
      if (v100.f64[1] > v99)
      {
        if (v99 <= v105)
        {
          v100.f64[0] = v87 - v93;
        }

        else
        {
          v100.f64[0] = v99;
        }
      }
    }

    v109 = v99;
    v187.f64[1] = v100.f64[0];
    v106 = v100.f64[0];
  }

  v111 = *(&self->super.super.super.isa + v49[1001]);
  v112 = (v110 - v184) / v111;
  v113 = vabdd_f64(v110, v181) < 0.00000011920929;
  v114 = vabdd_f64(v106, v186) < 0.00000011920929 && v113;
  v115 = (v106 - v185) / v111;
  [(UIScrollView *)self _interpageSpacing];
  v117 = v79 + v116;
  v183 = v180 + v118;
  [(UIScrollView *)self _pagingOrigin];
  v121 = v120;
  v122 = fabs(v115);
  if (fabs(v112) >= 0.00000011920929)
  {
    v123 = 0;
    if (v114)
    {
      v125 = 0;
      if (v122 >= 0.00000011920929)
      {
        goto LABEL_150;
      }

      goto LABEL_98;
    }

    if (v187.f64[0] < v97)
    {
      goto LABEL_71;
    }

    v124 = v186;
    if (v187.f64[0] <= v104)
    {
      if ((*(p_scrollViewFlags + 12) & 0x20) == 0)
      {
        horizontalVelocity = self->_horizontalVelocity;
        if ((horizontalVelocity > 0.0 || v187.f64[0] >= v181) && (horizontalVelocity < 0.0 || v187.f64[0] <= v181))
        {
          v171 = exp(-(horizontalVelocity - v175) / v112);
          self->_adjustedDecelerationFactor.width = v171;
          if (v171 > 0.999)
          {
            self->_adjustedDecelerationFactor.width = 0.999;
          }
        }

        else
        {
          v130 = v112 * log(self->_decelerationFactor.width);
          self->_horizontalVelocity = v175 - v130;
          if (vabdd_f64(v175, v130) < 0.25)
          {
            self->_adjustedDecelerationFactor.width = 0.985;
            self->_horizontalVelocity = v175 + v112 * 0.0151136378;
          }
        }

        v123 = 1;
        goto LABEL_71;
      }

      v144 = floor((v187.f64[0] - v119) / v117 + 0.5);
      v145 = v119 + v117 * v144;
      if (v144 == 0.0)
      {
        horizontal = p_firstPageOffset->horizontal;
      }

      else
      {
        horizontal = 0.0;
      }

      v150 = v145 + horizontal;
      self->_pageDecelerationTarget.x = v150;
      v151 = self->_accuracy;
      if (v151 == 1.0)
      {
        v153 = round(v150);
      }

      else
      {
        v152 = floor(v150);
        v153 = v152 + round(v151 * (v150 - v152)) / v151;
      }

      if (v153 >= v97)
      {
        if (v153 > v104)
        {
          if (v104 <= v97)
          {
            v153 = v97;
          }

          else
          {
            v153 = v104;
          }
        }
      }

      else
      {
        v153 = v97;
      }

      self->_pageDecelerationTarget.x = v153;
      v123 = 1;
    }
  }

  else
  {
    self->_horizontalVelocity = 0.0;
    if ((*(p_scrollViewFlags + 12) & 0x20) == 0)
    {
      v123 = 0;
LABEL_71:
      v124 = v186;
      goto LABEL_97;
    }

    v126 = floor((v184 - v119) / v117 + 0.5);
    v127 = v119 + v117 * v126;
    v124 = v186;
    if (v126 == 0.0)
    {
      v128 = p_firstPageOffset->horizontal;
    }

    else
    {
      v128 = 0.0;
    }

    v131 = v127 + v128;
    self->_pageDecelerationTarget.x = v131;
    v132 = self->_accuracy;
    if (v132 == 1.0)
    {
      v134 = round(v131);
    }

    else
    {
      v133 = floor(v131);
      v134 = v133 + round(v132 * (v131 - v133)) / v132;
    }

    if (v134 >= v97)
    {
      if (v134 > v104)
      {
        if (v104 <= v97)
        {
          v134 = v97;
        }

        else
        {
          v134 = v104;
        }
      }
    }

    else
    {
      v134 = v97;
    }

    v123 = 0;
    self->_pageDecelerationTarget.x = v134;
  }

LABEL_97:
  if (v122 < 0.00000011920929)
  {
LABEL_98:
    self->_verticalVelocity = 0.0;
    if ((*(p_scrollViewFlags + 12) & 0x20) != 0)
    {
      v135 = floor((v185 - v121) / v183 + 0.5);
      v136 = v121 + v183 * v135;
      if (v135 == 0.0)
      {
        vertical = self->_firstPageOffset.vertical;
      }

      else
      {
        vertical = 0.0;
      }

      v140 = v136 + vertical;
      self->_pageDecelerationTarget.y = v140;
      v141 = self->_accuracy;
      if (v141 == 1.0)
      {
        v143 = round(v140);
      }

      else
      {
        v142 = floor(v140);
        v143 = v142 + round(v141 * (v140 - v142)) / v141;
      }

      if (v143 >= v176)
      {
        if (v143 > v109)
        {
          if (v109 <= v176)
          {
            v143 = v176;
          }

          else
          {
            v143 = v109;
          }
        }
      }

      else
      {
        v143 = v176;
      }

      v125 = 0;
      self->_pageDecelerationTarget.y = v143;
      goto LABEL_150;
    }

    goto LABEL_102;
  }

  if (!v114)
  {
    v125 = 0;
    if (v187.f64[1] >= v176 && v187.f64[1] <= v109)
    {
      if ((*(p_scrollViewFlags + 12) & 0x20) != 0)
      {
        v147 = floor((v187.f64[1] - v121) / v183 + 0.5);
        v148 = v121 + v183 * v147;
        if (v147 == 0.0)
        {
          v149 = self->_firstPageOffset.vertical;
        }

        else
        {
          v149 = 0.0;
        }

        v154 = v148 + v149;
        self->_pageDecelerationTarget.y = v154;
        v155 = self->_accuracy;
        if (v155 == 1.0)
        {
          v157 = round(v154);
        }

        else
        {
          v156 = floor(v154);
          v157 = v156 + round(v155 * (v154 - v156)) / v155;
        }

        if (v157 >= v176)
        {
          if (v157 > v109)
          {
            if (v109 <= v176)
            {
              v157 = v176;
            }

            else
            {
              v157 = v109;
            }
          }
        }

        else
        {
          v157 = v176;
        }

        self->_pageDecelerationTarget.y = v157;
      }

      else
      {
        verticalVelocity = self->_verticalVelocity;
        if ((verticalVelocity > 0.0 || v187.f64[1] >= v124) && (verticalVelocity < 0.0 || v187.f64[1] <= v124))
        {
          v172 = exp(-(verticalVelocity - v174) / v115);
          self->_adjustedDecelerationFactor.height = v172;
          if (v172 > 0.999)
          {
            self->_adjustedDecelerationFactor.height = 0.999;
          }
        }

        else
        {
          v139 = v115 * log(self->_decelerationFactor.height);
          self->_verticalVelocity = v174 - v139;
          if (vabdd_f64(v174, v139) < 0.25)
          {
            self->_adjustedDecelerationFactor.height = 0.985;
            self->_verticalVelocity = v174 + v115 * 0.0151136378;
          }
        }
      }

      v125 = 1;
    }

    goto LABEL_150;
  }

LABEL_102:
  v125 = 0;
LABEL_150:
  if ((*(p_scrollViewFlags + 12) & 0x20) == 0)
  {
    v158 = 0x4000000000;
    if (!v123)
    {
      v158 = 0;
    }

    if ((v123 & v125) == 1)
    {
      p_adjustedDecelerationFactor = &self->_adjustedDecelerationFactor;
      v160 = self->_adjustedDecelerationFactor.height;
      v161 = v160;
      if (v160 == 0.0)
      {
        v161 = self->_decelerationFactor.height;
      }

      width = p_adjustedDecelerationFactor->width;
      if (p_adjustedDecelerationFactor->width == 0.0)
      {
        width = self->_decelerationFactor.width;
      }

      if (v161 >= width)
      {
        if (v160 == 0.0)
        {
          v160 = self->_decelerationFactor.height;
        }

        if (width < v160)
        {
          self->_horizontalVelocity = v175 - v112 * log(v160);
          v164 = self->_adjustedDecelerationFactor.height;
          if (v164 == 0.0)
          {
            v164 = self->_decelerationFactor.height;
          }

          p_adjustedDecelerationFactor->width = v164;
        }
      }

      else
      {
        self->_verticalVelocity = v174 - v115 * log(width);
        v163 = p_adjustedDecelerationFactor->width;
        if (p_adjustedDecelerationFactor->width == 0.0)
        {
          v163 = self->_decelerationFactor.width;
        }

        self->_adjustedDecelerationFactor.height = v163;
      }

      v158 = 0x4000000000;
    }

    self->_adjustedDecelerationTarget = v187;
    v165 = 0x8000000000;
    if (!v125)
    {
      v165 = 0;
    }

    *(p_scrollViewFlags + 12) = v158 | v165 | *(p_scrollViewFlags + 12) & 0xFFFFFF3FFFFFFFFFLL;
  }

  [(UIScrollView *)self contentOffset];
  LOBYTE(decelerationCopy) = 1;
  if (v167 == v187.f64[0] && v166 == v187.f64[1])
  {
    if ([(UIScrollView *)self _canPerformAsyncScrollDecelerationReturningEvent:0])
    {
      [(UIScrollViewPanGestureRecognizer *)self->_pan velocityInView:self];
      LOBYTE(decelerationCopy) = v169 != *(MEMORY[0x1E695EFF8] + 8) || v168 != *MEMORY[0x1E695EFF8];
    }

    else
    {
      LOBYTE(decelerationCopy) = 0;
    }
  }

LABEL_179:

  return decelerationCopy;
}

- (void)_endPanNormal:(BOOL)normal
{
  normalCopy = normal;
  if (normal && ((v5 = CACurrentMediaTime() - self->_lastUpdateTime, -[UIView _screen](self, "_screen"), v6 = objc_claimAutoreleasedReturnValue(), v7 = 1.0 / [v6 _maximumFramesPerSecond] * 0.8, v6, v5 > v7) ? (v8 = v5 < v7 * 3.0) : (v8 = 0), v8))
  {
    kdebug_trace();
    v87 = 1;
  }

  else
  {
    v87 = 0;
  }

  [(UIView *)self bounds];
  v84 = v9;
  v85 = v10;
  [(UIScrollView *)self contentOffset];
  v12 = v11;
  v14 = v13;
  [(UIScrollView *)self _updateDecelerationLastOffsetScrollViewPoint:?];
  p_scrollViewFlags = &self->_scrollViewFlags;
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x800000) == 0)
  {
    goto LABEL_50;
  }

  [(UIScrollView *)self contentOffset];
  v81 = v18;
  v82 = v17;
  [(UIScrollView *)self _effectiveContentInset];
  v22 = v21;
  v23 = *&self->_accuracy;
  v25.f64[0] = self->_firstPageOffset.horizontal - v24;
  v83 = v19;
  v25.f64[1] = self->_firstPageOffset.vertical - v22;
  if (*&v23 == 1.0)
  {
    v20.f64[1] = v19;
    v78 = vrndaq_f64(vaddq_f64(v20, self->_contentSize));
    v80 = vrndaq_f64(v25);
  }

  else
  {
    v26 = vrndmq_f64(v25);
    v27 = vdupq_lane_s64(v23, 0);
    v28 = vaddq_f64(v26, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v25, v26), *&v23)), v27));
    v20.f64[1] = v19;
    v29 = vaddq_f64(v20, self->_contentSize);
    v30 = vrndmq_f64(v29);
    v78 = vaddq_f64(v30, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v29, v30), *&v23)), v27));
    v80 = v28;
  }

  [(UIScrollViewPanGestureRecognizer *)self->_pan velocityInView:self, *&v78];
  if (v32 == *MEMORY[0x1E695EFF8] && v31 == *(MEMORY[0x1E695EFF8] + 8))
  {
    self->_verticalVelocity = 0.0;
    self->_horizontalVelocity = 0.0;
  }

  v34 = *p_scrollViewFlags;
  v35.f64[0] = v82;
  v36 = v83;
  v37 = v82 < v80.f64[0] || v81 < v80.f64[1];
  if (v37 || (v38.f64[0] = v84, v38.f64[1] = v85, v39 = vsubq_f64(v79, v38), v35.f64[1] = v81, v40 = vmovn_s64(vcgtq_f64(v35, vbslq_s8(vcgtq_f64(v39, v80), v39, v80))), (v40.i8[0] & 1) != 0) || (v40.i8[4] & 1) != 0)
  {
    *p_scrollViewFlags = v34 & 0xFFFFFFFFFF7FFFFFLL;
    self->_fastScrollCount = 0;
    self->_fastScrollMultiplier = 1.0;
    v41 = (*(&self->_scrollViewFlags + 3) & 0x40) == 0;
    goto LABEL_31;
  }

  if ((v34 & 2) == 0)
  {
    v41 = 0;
    self->_verticalVelocity = 0.0;
    v42 = 736;
LABEL_30:
    *(&self->super.super.super.isa + v42) = 0;
    *p_scrollViewFlags &= ~0x800000uLL;
    self->_fastScrollCount = 0;
    self->_fastScrollMultiplier = 1.0;
    goto LABEL_31;
  }

  if (self->_currentScrollDeviceCategory == 6 || (v43 = self->_horizontalVelocity * self->_horizontalVelocity + self->_verticalVelocity * self->_verticalVelocity, v43 < 0.0625))
  {
    v41 = 0;
    self->_verticalVelocity = 0.0;
    self->_horizontalVelocity = 0.0;
    self->_previousVerticalVelocity = 0.0;
    v42 = 752;
    goto LABEL_30;
  }

  if (v43 < 0.36)
  {
    self->_fastScrollCount = 0;
    self->_fastScrollMultiplier = 1.0;
LABEL_98:
    v41 = 1;
    goto LABEL_31;
  }

  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    goto LABEL_98;
  }

  ++self->_fastScrollCount;
  v73 = [(UIGestureRecognizer *)self->_pan _activeEventOfType:10];
  if (v73 || ([(UIGestureRecognizer *)self->_pan _activeEventOfType:0], (v73 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v74 = v73;
  }

  else
  {
    v76 = UIApp;
    window = [(UIView *)self window];
    v74 = [v76 _touchesEventForWindow:window];
  }

  [v74 timestamp];
  self->_fastScrollEndTime = v75;

  v41 = 1;
  v36 = v83;
LABEL_31:
  v44 = (*(&self->_scrollViewFlags + 5) >> 11) & 0xF;
  if (v44 - 1 > 3)
  {
    goto LABEL_45;
  }

  if (!v41)
  {
    knobFeedbackGenerator = self->_knobFeedbackGenerator;
    [(UIPanGestureRecognizer *)self->_pan locationInView:self];
    [(UIFeedbackGeneratorUserInteractionDriven *)knobFeedbackGenerator pressedUpAtLocation:?];
    v36 = v83;
  }

  accuracy = self->_accuracy;
  if (accuracy == 1.0)
  {
    v48 = round(v85);
  }

  else
  {
    v47 = floor(v85);
    v48 = v47 + round((v85 - v47) * accuracy) / accuracy;
  }

  if ((v44 & 0x5555555555555555) == 1)
  {
    v49 = &OBJC_IVAR___UIScrollView__verticalVelocity;
  }

  else
  {
    v49 = &OBJC_IVAR___UIScrollView__horizontalVelocity;
    if (v44 != 4 && v44 != 2)
    {
      v41 = 0;
      goto LABEL_45;
    }
  }

  v50 = (v36 + v22 + self->_contentSize.height) / v48;
  *(&self->_scrollViewFlags + 5) |= 0x40000u;
  v51 = *v49;
  v52 = *(&self->super.super.super.isa + v51);
  if (v52 > 3.0)
  {
    v52 = 3.0;
  }

  *(&self->super.super.super.isa + v51) = v50 * -0.66 * fmax(v52, -3.0);
  self->_previousVerticalVelocity = 0.0;
  self->_previousHorizontalVelocity = 0.0;
  v41 = 1;
LABEL_45:
  keyboardDismissMode = [(UIScrollView *)self keyboardDismissMode];
  if (keyboardDismissMode == UIScrollViewKeyboardDismissModeInteractiveWithAccessory || keyboardDismissMode == UIScrollViewKeyboardDismissModeInteractive)
  {
    v54 = +[UIPeripheralHost sharedInstance];
    [v54 scrollView:self didFinishPanGesture:self->_pan];
  }

  if (v41)
  {
    v55 = 1;
    goto LABEL_58;
  }

LABEL_50:
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    if ([(UIScrollView *)self _contentOffsetIsAtPagingBoundary:v12, v14])
    {
LABEL_53:
      v55 = 0;
      goto LABEL_58;
    }
  }

  else if (![(UIScrollView *)self _isBouncing]|| (*(&self->_scrollViewFlags + 3) & 0x40) != 0)
  {
    goto LABEL_53;
  }

  v56 = *(&self->_scrollViewFlags + 12);
  v55 = (v56 & 0x100000000000) == 0;
  if ((v56 & 0x100000000000) == 0 && !normalCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_animation);
    v55 = WeakRetained == 0;
  }

LABEL_58:
  previousHorizontalVelocity = self->_previousHorizontalVelocity;
  if (previousHorizontalVelocity != 0.0 || self->_previousVerticalVelocity != 0.0)
  {
    self->_horizontalVelocity = previousHorizontalVelocity * 0.75 + self->_horizontalVelocity * 0.25;
    self->_verticalVelocity = self->_verticalVelocity * 0.25 + self->_previousVerticalVelocity * 0.75;
  }

  v86 = *MEMORY[0x1E695F060];
  self->_adjustedDecelerationFactor = *MEMORY[0x1E695F060];
  *(&self->_scrollViewFlags + 12) &= 0xFFFFFF3FFFFFFFFFLL;
  if ((scrollViewFlags & 0x800000) != 0)
  {
    v62 = [(UIScrollView *)self _scrollViewWillEndDraggingWithDeceleration:v55];
    [(UIScrollView *)self _scrollViewDidEndDraggingForDelegateWithDeceleration:v62];
    if (!v62)
    {
      goto LABEL_63;
    }

LABEL_73:
    if (normalCopy)
    {
      v63 = @"endPanNormal:YES will smooth scroll";
    }

    else
    {
      v63 = @"endPanNormal:NO will smooth scroll";
    }

    [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:v63];
    v61 = 1;
    [(UIScrollView *)self _startTimer:1];
    goto LABEL_77;
  }

  [(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewDidCancelDragging:self];
  if (v55)
  {
    goto LABEL_73;
  }

LABEL_63:
  if (self->_scrollHeartbeat)
  {
    self->_telemetryOffsetChangeHighRateDuration = 0.0;
    self->_telemetryOffsetChangeCount = 0;
    self->_telemetryOffsetChange = v86;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &_endPanNormal____s_category);
    v60 = *(CategoryCachedImpl + 8);
    if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      _os_signpost_emit_unreliably_with_name_impl();
    }

    [(CADisplayLink *)self->_scrollHeartbeat setPaused:0];
  }

  *p_scrollViewFlags &= ~0x800000uLL;
  if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
  {
    [(UIScrollView *)self _adjustScrollerIndicators:0 alwaysShowingThem:0];
  }

  v61 = 0;
LABEL_77:
  [(UIScrollView *)self _updateAccessories];
  if (!self->_scrollHeartbeat)
  {
    if (normalCopy)
    {
      v64 = @"endPanNormal:YES has no timer";
    }

    else
    {
      v64 = @"endPanNormal:NO has no timer";
    }

    [(UIScrollView *)self _popTrackingRunLoopModeIfNecessaryForReason:v64];
  }

  if ((v87 & v61) == 1 && self->_scrollHeartbeat)
  {
    _screen = [(UIView *)self _screen];
    v66 = -1.0 / [_screen _maximumFramesPerSecond];

    v67 = CACurrentMediaTime();
    self->_lastUpdateTime = v67 + v66;
    asyncScrollDecelerationState = self->_asyncScrollDecelerationState;
    if (asyncScrollDecelerationState)
    {
      asyncScrollDecelerationState->_lastUpdateTime = v67 + v66;
    }

    [(UIScrollView *)self _trackingDidEnd];
    [(UIScrollView *)self _smoothScrollWithUpdateTime:v67];
  }

  if ((v61 & 1) == 0)
  {
    [(UIScrollView *)self _setKnobInteractionGestureDelayed:0];
  }

  v69 = UIApp;
  window2 = [(UIView *)self window];
  v71 = [v69 _touchesEventForWindow:window2];

  [v71 timestamp];
  self->_lastPanGestureEndTime = v72;
}

- (BOOL)_contentOffsetIsAtPagingBoundary:(CGPoint)boundary
{
  y = boundary.y;
  x = boundary.x;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self _interpageSpacing];
  v11 = v10;
  v13 = v7 + v12;
  [(UIScrollView *)self _pagingOrigin];
  v15 = v14;
  return fabs(fmod(x - v16, v13)) <= 0.00000011920929 && fabs(fmod(y - v15, v9 + v11)) <= 0.00000011920929;
}

- (void)_setZoomAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  if (_getDelegateZoomView)
  {
    v10 = _getDelegateZoomView;
    [_getDelegateZoomView bounds];
    v9 = x / v8;
    if (v8 == 0.0)
    {
      v9 = 0.0;
    }

    self->_zoomAnchorPoint.x = v9;
    if (v7 == 0.0)
    {
      self->_zoomAnchorPoint.y = 0.0;
    }

    else
    {
      self->_zoomAnchorPoint.y = y / v7;
    }

    _getDelegateZoomView = v10;
  }

  else
  {
    self->_zoomAnchorPoint.x = 0.0;
    self->_zoomAnchorPoint.y = 0.0;
  }
}

- (CGPoint)_zoomAnchorPoint
{
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  v4 = _getDelegateZoomView;
  if (_getDelegateZoomView)
  {
    [_getDelegateZoomView bounds];
    v6 = self->_zoomAnchorPoint.x * v5;
    v8 = v7 * self->_zoomAnchorPoint.y;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_setStaysCenteredDuringPinch:(BOOL)pinch
{
  v3 = 0x400000000;
  if (!pinch)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)_updatePinchGestureForState:(int64_t)state
{
  if (![(UIScrollView *)self _staysCenteredDuringPinch])
  {
    [(UIPinchGestureRecognizer *)self->_pinch anchorPoint];
    v7 = v18;
    [(UIPinchGestureRecognizer *)self->_pinch anchorPoint];
    v10 = v19;
    goto LABEL_12;
  }

  [(UIView *)self bounds];
  v7 = v6 + v5 * 0.5;
  v10 = v9 + v8 * 0.5;
  window = [(UIView *)self window];
  window2 = [(UIView *)self window];
  v13 = window2;
  if (window)
  {
    window3 = [(UIView *)self window];
    if (window3)
    {
      window4 = [(UIView *)self window];
      [window4 convertPoint:self fromView:{v7, v10}];
      [v13 _convertDoublePointToSceneReferenceSpace:?];
      v7 = v16;
      v10 = v17;

LABEL_10:
      goto LABEL_11;
    }

    [v13 _convertDoublePointToSceneReferenceSpace:{v7, v10}];
LABEL_9:
    v7 = v20;
    v10 = v21;
    goto LABEL_10;
  }

  if (window2)
  {
    window3 = [(UIView *)self window];
    [window3 convertPoint:self fromView:{v7, v10}];
    goto LABEL_9;
  }

LABEL_11:

LABEL_12:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((state - 3) < 2)
  {
    p_scrollViewFlags = &self->_scrollViewFlags;
    scrollViewFlags = self->_scrollViewFlags;
    if ((scrollViewFlags & 0x40000000) != 0)
    {
      *p_scrollViewFlags = scrollViewFlags & 0xFFFFFFFFBFFFFF7FLL;
      *(&self->_scrollViewFlags + 12) &= ~0x1000000000uLL;
      self->_verticalVelocity = 0.0;
      self->_horizontalVelocity = 0.0;
      if ((*p_scrollViewFlags & 0x40) != 0)
      {
        [(UIScrollView *)self zoomScale];
        p_minimumZoomScale = &self->_minimumZoomScale;
        if (v39 < self->_minimumZoomScale || ([(UIScrollView *)self zoomScale], p_minimumZoomScale = &self->_maximumZoomScale, v40 > self->_maximumZoomScale))
        {
          *p_scrollViewFlags |= 0x80uLL;
          [(UIScrollView *)self setZoomScale:0 withAnchorPoint:1 allowRubberbanding:0 animated:*p_minimumZoomScale duration:v7 notifyDelegate:v10, -1.0];
        }
      }

      v41 = *p_scrollViewFlags;
      if ((*p_scrollViewFlags & 0x80) == 0)
      {
        [(UIScrollView *)self contentOffset];
        [(UIScrollView *)self setContentOffset:?];
        [(UIScrollView *)self _scrollViewDidEndZooming];
        if (objc_opt_respondsToSelector())
        {
          _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
          [(UIScrollView *)self zoomScale];
          [WeakRetained scrollViewDidEndZooming:self withView:_getDelegateZoomView atScale:?];
        }

        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __44__UIScrollView__updatePinchGestureForState___block_invoke;
        v61[3] = &unk_1E70F3590;
        v61[4] = self;
        [UIView animateWithDuration:v61 animations:0.2];
        v41 = *p_scrollViewFlags;
      }

      if ((v41 & 0x800000) == 0 && !self->_scrollHeartbeat)
      {
        [(UIScrollView *)self _popTrackingRunLoopModeIfNecessaryForReason:@"Pinch gesture ended"];
      }
    }

    zoomView = self->_zoomView;
    self->_zoomView = 0;

    [(UIScrollViewPanGestureRecognizer *)self->_pan _scrollViewDidEndZooming];
    [(_UIEdgeFeedbackGenerator *)self->_zoomFeedbackGenerator userInteractionEnded];
  }

  else
  {
    if (state != 2)
    {
      if (state == 1)
      {
        _getDelegateZoomView2 = [(UIScrollView *)self _getDelegateZoomView];
        v24 = self->_zoomView;
        self->_zoomView = _getDelegateZoomView2;

        pinch = self->_pinch;
        [(UIScrollView *)self _zoomScaleFromPresentationLayer:1];
        [(UIPinchGestureRecognizer *)pinch setScale:?];
        if (self->_zoomAnimationCount)
        {
          [(UIScrollView *)self _scrollViewDidEndZooming];
          if (objc_opt_respondsToSelector())
          {
            _getDelegateZoomView3 = [(UIScrollView *)self _getDelegateZoomView];
            [(UIScrollView *)self zoomScale];
            [WeakRetained scrollViewDidEndZooming:self withView:_getDelegateZoomView3 atScale:?];
          }
        }

        *&self->_scrollViewFlags |= 0xC0000000uLL;
        *(&self->_scrollViewFlags + 12) |= 0x1000000000uLL;
        window5 = [(UIView *)self->_zoomView window];
        v28 = self->_zoomView;
        window6 = [(UIView *)v28 window];
        v30 = window6;
        if (window5)
        {
          [window6 _convertDoublePointFromSceneReferenceSpace:{v7, v10}];
          v32 = v31;
          v34 = v33;
          window7 = [(UIView *)self->_zoomView window];
          [(UIView *)v28 convertPoint:window7 fromView:v32, v34];
          [(UIScrollView *)self _setZoomAnchorPoint:?];
        }

        else
        {
          [(UIView *)v28 convertPoint:window6 fromView:v7, v10];
          [(UIScrollView *)self _setZoomAnchorPoint:?];
        }

        if (self->_scrollHeartbeat)
        {
          [(UIScrollView *)self _stopScrollingNotify:1 pin:1];
        }

        [(UIScrollView *)self _scrollViewWillBeginZooming];
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained scrollViewWillBeginZooming:self withView:self->_zoomView];
        }

        if (!self->_scrollHeartbeat)
        {
          [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:@"Pinch gesture began"];
        }

        [(UIScrollView *)self _activateZoomFeedback];
      }

      goto LABEL_53;
    }

    _activeTouchesEvent = [(UIGestureRecognizer *)self->_pinch _activeTouchesEvent];

    if (_activeTouchesEvent)
    {
      _allActiveTouches = [(UIGestureRecognizer *)self->_pinch _allActiveTouches];
      v46 = [_allActiveTouches count] == 2;
    }

    else
    {
      v46 = 1;
    }

    if ((*&self->_scrollViewFlags & 0x40000000) == 0 && v46)
    {
      selfCopy2 = self;
      v48 = 1;
LABEL_52:
      [(UIScrollView *)selfCopy2 _updatePinchGestureForState:v48];
      goto LABEL_53;
    }

    if ((*&self->_scrollViewFlags & 0x40000000) != 0 && !v46)
    {
      selfCopy2 = self;
      v48 = 3;
      goto LABEL_52;
    }

    if (self->_zoomView)
    {
      IsPossibleForGesture = _effectiveSystemGestureRecognitionIsPossibleForGesture(self, self->_pinch);
      v50 = *(&self->_scrollViewFlags + 12);
      if (IsPossibleForGesture)
      {
        *(&self->_scrollViewFlags + 12) = v50 | 0x800000000;
      }

      else
      {
        if ((v50 & 0x800000000) != 0)
        {
          *(&self->_scrollViewFlags + 12) = v50 & 0xFFFFFFF7FFFFFFFFLL;
          v51 = self->_pinch;
          [(UIScrollView *)self _zoomScaleFromPresentationLayer:1];
          [(UIPinchGestureRecognizer *)v51 setScale:?];
          window8 = [(UIView *)self->_zoomView window];
          v53 = self->_zoomView;
          window9 = [(UIView *)v53 window];
          v55 = window9;
          if (window8)
          {
            [window9 _convertDoublePointFromSceneReferenceSpace:{v7, v10}];
            v57 = v56;
            v59 = v58;
            window10 = [(UIView *)self->_zoomView window];
            [(UIView *)v53 convertPoint:window10 fromView:v57, v59];
            [(UIScrollView *)self _setZoomAnchorPoint:?];
          }

          else
          {
            [(UIView *)v53 convertPoint:window9 fromView:v7, v10];
            [(UIScrollView *)self _setZoomAnchorPoint:?];
          }
        }

        [(UIPinchGestureRecognizer *)self->_pinch scale];
        [UIScrollView setZoomScale:"setZoomScale:withAnchorPoint:allowRubberbanding:animated:duration:notifyDelegate:force:" withAnchorPoint:(*&self->_scrollViewFlags >> 6) & 1 allowRubberbanding:0 animated:0 duration:1 notifyDelegate:? force:?];
      }
    }
  }

LABEL_53:
}

uint64_t __44__UIScrollView__updatePinchGestureForState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _adjustContentOffsetIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _centerContentIfNecessary];
}

- (BOOL)gestureRecognizer:(id)recognizer canPreventGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  _scrollViewTouchDelayGesture = [(UIScrollView *)self _scrollViewTouchDelayGesture];
  _scrollViewTouchDelayGesture2 = _scrollViewTouchDelayGesture;
  if (_scrollViewTouchDelayGesture != recognizerCopy)
  {

    goto LABEL_3;
  }

  if (self->_pinch == gestureRecognizerCopy || self->_pan == gestureRecognizerCopy)
  {
    v10 = 0;
LABEL_27:

    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_3:
    _scrollViewTouchDelayGesture2 = [(UIScrollView *)self _scrollViewTouchDelayGesture];
    if (_scrollViewTouchDelayGesture2 == gestureRecognizerCopy)
    {
      v12 = recognizerCopy;
      if (self)
      {
        if (self->_pan == v12 || self->_pinch == v12 || self->_swipe == v12 || self->_keyboardScrollingGestureRecognizer == v12 || self->_directionalPressGestureRecognizer == v12 || self->_knobLongPressGestureRecognizer == v12 || self->_knobPointerLongPressGestureRecognizer == v12)
        {
          v10 = 0;
        }

        else
        {
          v13 = 0;
          lowFidelitySwipeGestureRecognizers = self->_lowFidelitySwipeGestureRecognizers;
          do
          {
            v15 = lowFidelitySwipeGestureRecognizers[v13];
            v10 = v15 != v12;
          }

          while (v15 != v12 && v13++ != 3);
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_27;
  }

  v10 = 0;
LABEL_28:

  return v10;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = self->_pan == recognizer && (self->_pinch == gestureRecognizerCopy || self->_knobLongPressGestureRecognizer == gestureRecognizerCopy || self->_knobPointerLongPressGestureRecognizer == gestureRecognizerCopy);

  return v7;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  keyboardScrollingGestureRecognizer = self->_keyboardScrollingGestureRecognizer;
  v7 = [gestureRecognizer _isGestureType:17];
  if (keyboardScrollingGestureRecognizer != recognizer || v7 == 0)
  {
    return 0;
  }

  return _UIFocusEnvironmentIsFocusedOrContainsFocus(self);
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  keyboardScrollingGestureRecognizer = self->_keyboardScrollingGestureRecognizer;
  v7 = [gestureRecognizer _isGestureType:17];
  if (keyboardScrollingGestureRecognizer != recognizer || v7 == 0)
  {
    LOBYTE(isFirstResponder) = 0;
  }

  else
  {
    isFirstResponder = [(UIView *)self isFirstResponder];
    if (isFirstResponder)
    {
      LOBYTE(isFirstResponder) = _UIFocusEnvironmentIsFocusedOrContainsFocus(self) ^ 1;
    }
  }

  return isFirstResponder;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (*(&self->_scrollViewFlags + 12) & 0x20) != 0 || self->_pan != recognizerCopy || (*&self->_scrollViewFlags)
  {
    if (self->_lowFidelitySwipeGestureRecognizers[0])
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = v12;
        v12 = self->_lowFidelitySwipeGestureRecognizers[v11];

        if (v12 == recognizerCopy)
        {
          break;
        }

        if (++v11 == 4)
        {
          goto LABEL_9;
        }
      }

      direction = [(UISwipeGestureRecognizer *)v12 direction];
      if ((direction - 1) > 1)
      {
        if (direction != 8 && direction != 4)
        {
LABEL_9:

          goto LABEL_19;
        }

        _canScrollY = [(UIScrollView *)self _canScrollY];
      }

      else
      {
        _canScrollY = [(UIScrollView *)self _canScrollX];
      }

      v17 = _canScrollY;

      if (!v17)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v8 = UIApp;
    window = [(UIView *)self window];
    v10 = [v8 _touchesEventForWindow:window];

    [(UIScrollView *)self _beginTrackingWithEvent:v10];
  }

LABEL_19:
  if (self->_knobLongPressGestureRecognizer == recognizerCopy || self->_knobPointerLongPressGestureRecognizer == recognizerCopy)
  {
    [touchCopy locationInView:self];
    v19 = v18;
    v21 = v20;
    if (([(UIScrollView *)self _scrubbingForPoint:touchCopy touch:?]- 1) <= 3)
    {
      knobFeedbackGenerator = self->_knobFeedbackGenerator;
      if (!knobFeedbackGenerator)
      {
        traitCollection = [(UIView *)self traitCollection];
        v24 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:traitCollection];

        if (objc_opt_respondsToSelector())
        {
          v25 = [v24 feedbackGeneratorWithView:self];
          v26 = self->_knobFeedbackGenerator;
          self->_knobFeedbackGenerator = v25;
        }

        if (!self->_knobFeedbackGenerator)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v30 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "_UIScrollViewScrollIndicatorVisualStyle should provide a feedback generator.", buf, 2u);
            }
          }

          else
          {
            v29 = *(__UILogGetCategoryCachedImpl("Assert", &_gestureRecognizer_shouldReceiveTouch____s_category) + 8);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v31 = 0;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "_UIScrollViewScrollIndicatorVisualStyle should provide a feedback generator.", v31, 2u);
            }
          }
        }

        knobFeedbackGenerator = self->_knobFeedbackGenerator;
      }

      if (([(UIFeedbackGeneratorUserInteractionDriven *)knobFeedbackGenerator isActive]& 1) == 0)
      {
        [(UIFeedbackGeneratorUserInteractionDriven *)self->_knobFeedbackGenerator userInteractionStartedAtLocation:v19, v21];
      }

      goto LABEL_29;
    }

LABEL_30:
    v27 = 0;
    goto LABEL_31;
  }

LABEL_29:
  v27 = 1;
LABEL_31:

  return v27;
}

- (BOOL)pressGestureRecognizer:(id)recognizer shouldAllowPress:(id)press
{
  if (self->_keyboardScrollingGestureRecognizer != recognizer)
  {
    return 1;
  }

  pressCopy = press;
  _scrollingAnimator = [(UIScrollView *)self _scrollingAnimator];
  v8 = [_scrollingAnimator isInterestedInPress:pressCopy];

  return v8;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0 && self->_swipe == failedCopy)
  {
    v41 = failedCopy;
    v5 = [(UIGestureRecognizer *)self->_pan state]<= UIGestureRecognizerStateChanged;
    failedCopy = v41;
    if (v5)
    {
      pan = self->_pan;
      if (pan && ([(UIGestureRecognizer *)pan _state]- 1) <= 2)
      {
        [(UIPanGestureRecognizer *)self->_pan setTranslation:self inView:0.0, 0.0];
      }

      v7 = UIApp;
      window = [(UIView *)self window];
      v9 = [v7 _touchesEventForWindow:window];

      v10 = [(UIGestureRecognizer *)self->_pan _activeTouchesForEvent:v9];
      if ([v10 count])
      {
        [(UIScrollView *)self _beginTrackingWithEvent:v9];
      }

      goto LABEL_32;
    }
  }

  if (self->_pan != failedCopy)
  {
    if (self->_knobLongPressGestureRecognizer != failedCopy)
    {
      goto LABEL_33;
    }

    v41 = failedCopy;
    [(UIScrollView *)self _sendDelayedTouchesIfNecessary];
    goto LABEL_32;
  }

  v41 = failedCopy;
  swipe = self->_swipe;
  if (!swipe || ([(UIGestureRecognizer *)swipe _state]- 1) >= 3)
  {
    [(UIScrollView *)self _handlePanFailure];
  }

  [(UIScrollView *)self _sendDelayedTouchesIfNecessary];
  [(UIView *)self bounds];
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self contentOffset];
  v17 = v16;
  v19 = v18;
  [(UIScrollView *)self _effectiveContentInset];
  v24 = *(&self->_scrollViewFlags + 12);
  failedCopy = v41;
  if ((v24 & 0x100000000000) == 0)
  {
    accuracy = self->_accuracy;
    v26 = self->_firstPageOffset.horizontal - v21;
    if (accuracy == 1.0)
    {
      v38 = round(v26);
      if (v17 >= v38)
      {
        v31 = round(self->_firstPageOffset.vertical - v20);
        if (v19 >= v31)
        {
          v39 = round(v23 + self->_contentSize.width) - v13;
          if (v38 < v39)
          {
            v38 = v39;
          }

          if (v17 <= v38)
          {
            v37 = round(v22 + self->_contentSize.height);
LABEL_37:
            v40 = v37 - v15;
            if (v31 < v40)
            {
              v31 = v40;
            }

            if ((v24 & 0x10000000000) == 0 || v19 <= v31)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v27 = floor(v26);
      v28 = v27 + round(accuracy * (v26 - v27)) / accuracy;
      if (v17 >= v28)
      {
        v29 = self->_firstPageOffset.vertical - v20;
        v30 = floor(v29);
        v31 = v30 + round(accuracy * (v29 - v30)) / accuracy;
        if (v19 >= v31)
        {
          v32 = v23 + self->_contentSize.width;
          v33 = floor(v32);
          v34 = v33 + round(accuracy * (v32 - v33)) / accuracy - v13;
          if (v28 < v34)
          {
            v28 = v34;
          }

          if (v17 <= v28)
          {
            v35 = v22 + self->_contentSize.height;
            v36 = floor(v35);
            v37 = v36 + round(accuracy * (v35 - v36)) / accuracy;
            goto LABEL_37;
          }
        }
      }
    }

    if ((v24 & 0x10000000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_31:
    [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:@"Pan failed while rubber-banding"];
    [(UIScrollView *)self _updateDecelerationLastOffsetScrollViewPoint:v17, v19];
    [(UIScrollView *)self _startTimer:1];
LABEL_32:
    failedCopy = v41;
  }

LABEL_33:
}

- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginHorizontallyWithEvent:(id)event
{
  if (self->_pan == recognizer)
  {
    [(UIScrollView *)self _findScrollableAncestorIfNeededWithEvent:event];
    v5 = [(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewShouldScrollHorizontally:self];
    v6 = 4096;
    if (!v5)
    {
      v6 = 0;
    }

    *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFEFFFLL | v6;
    [(UIScrollView *)self _updateContentFitDisableScrolling];
  }

  return 1;
}

- (BOOL)_panGestureRecognizer:(id)recognizer shouldTryToBeginVerticallyWithEvent:(id)event
{
  if (self->_pan == recognizer)
  {
    [(UIScrollView *)self _findScrollableAncestorIfNeededWithEvent:event];
    v5 = [(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewShouldScrollVertically:self];
    v6 = 0x2000;
    if (!v5)
    {
      v6 = 0;
    }

    *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFDFFFLL | v6;
    [(UIScrollView *)self _updateContentFitDisableScrolling];
  }

  return 1;
}

- (void)_findScrollableAncestorIfNeededWithEvent:(id)event
{
  if ((*(&self->_scrollViewFlags + 1) & 0x40) == 0)
  {
    [event timestamp];
    self->_intervalBetweenPanGestures = v4 - self->_lastPanGestureEndTime;
    if ([(UIScrollView *)self _shouldScrollAncestors])
    {
      v5 = [(UIView *)self _firstAncestorInteractionConformingToProtocol:&unk_1EFEC5520];
      if ([v5 _shouldBeFoundByDescendentScrollView:self])
      {
        objc_storeStrong(&self->_scrollableAncestor, v5);
      }
    }

    *&self->_scrollViewFlags |= 0x4000uLL;
  }
}

- (void)_setShouldScrollAncestors:(BOOL)ancestors
{
  v3 = 0x8000;
  if (ancestors)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (BOOL)_shouldBeginScroll
{
  if ([(UIScrollView *)self _decelerationTrackingBehavior]== 1)
  {
    _actingParentScrollView = [(UIScrollView *)self _actingParentScrollView];
    if (_actingParentScrollView)
    {
      _parentScrollView = _actingParentScrollView;
    }

    else
    {
      _parentScrollView = [(UIScrollView *)self _parentScrollView];
      if (!_parentScrollView)
      {
        goto LABEL_16;
      }
    }

    isDecelerating = 0;
    do
    {
      if (_parentScrollView[454])
      {

        return 0;
      }

      if (isDecelerating & 1) != 0 || ([_parentScrollView _isBouncing])
      {
        isDecelerating = 1;
      }

      else
      {
        isDecelerating = [_parentScrollView isDecelerating];
      }

      _actingParentScrollView2 = [_parentScrollView _actingParentScrollView];
      v7 = _actingParentScrollView2;
      if (_actingParentScrollView2)
      {
        v4_parentScrollView = _actingParentScrollView2;
      }

      else
      {
        v4_parentScrollView = [_parentScrollView _parentScrollView];
      }

      v9 = v4_parentScrollView;

      _parentScrollView = v9;
    }

    while (v9);
    if (isDecelerating)
    {
      return 1;
    }
  }

LABEL_16:
  if ([(UIScrollView *)self _isBouncing])
  {
    return 1;
  }

  return [(UIScrollView *)self isDecelerating];
}

- (BOOL)_preventsDescendentGestureInteractionForTimeInterval:(double)interval
{
  v5 = _UIInternalPreferenceUsesDefault(&unk_1ED48B6B0, @"MaxGestureDecelerationSpeed", _UIInternalPreferenceUpdateDouble);
  v6 = qword_1ED48B6B8;
  v7 = _UIInternalPreferenceUsesDefault(&unk_1ED48B6C0, @"MinDescendentInteractionInterval", _UIInternalPreferenceUpdateDouble);
  v8 = *&qword_1ED48B6C8;
  if (v7)
  {
    v8 = 1.0;
  }

  if ((*&self->_scrollViewFlags & 0x10) == 0 && v8 >= interval)
  {
    return 1;
  }

  v10 = 0.5;
  if (!v5)
  {
    v10 = *&v6;
  }

  return fabs(self->_verticalVelocity) >= v10;
}

- (void)_handleSwipe:(id)swipe
{
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  v4 = 1.0;
  if ((*(&self->_scrollViewFlags + 12) & 0x80) == 0)
  {
    v4 = -1.0;
  }

  [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:v4 verticalVelocity:0.0];

  [(UIScrollView *)self _trackingDidEnd];
}

- (void)handlePinch:(id)pinch
{
  pinchCopy = pinch;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  state = [pinchCopy state];

  [(UIScrollView *)self _updatePinchGestureForState:state];
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  state = [panCopy state];
  switch(state)
  {
    case 1:
      v14 = UIApp;
      window = [(UIView *)self window];
      v16 = [v14 _touchesEventForWindow:window];

      [(UIScrollView *)self _resetScrollingWithUIEvent:v16];
      self->_horizontalVelocity = 0.0;
      self->_verticalVelocity = 0.0;
      self->_previousHorizontalVelocity = 0.0;
      self->_previousVerticalVelocity = 0.0;
      break;
    case 3:
      goto LABEL_5;
    case 4:
      v5 = +[UIPeripheralHost sharedInstance];
      [v5 scrollView:self didFinishPanGesture:self->_pan];

LABEL_5:
      [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:self->_horizontalVelocity verticalVelocity:self->_verticalVelocity];
      [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction updateEffectAndCaptureViewFrames];
      [(UIScrollView *)self _endPanNormal:1];
      [(UIScrollView *)self _trackingDidEnd];
      v6 = [panCopy _activeEventOfType:0];
      v7 = [panCopy _activeEventOfType:10];
      v8 = v7;
      if (v6)
      {
        allTouches = [v6 allTouches];
        anyObject = [allTouches anyObject];
        v11 = +[UIEventSessionActionAnalytics sharedInstance];
        allObjects = [allTouches allObjects];
        firstObject = [allObjects firstObject];
        [v11 didScroll:self withSource:{+[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", objc_msgSend(firstObject, "type"))}];
      }

      else
      {
        _trackpadFingerDownCount = [v7 _trackpadFingerDownCount];
        v18 = +[UIEventSessionActionAnalytics sharedInstance];
        v19 = v18;
        if (_trackpadFingerDownCount < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 4;
        }

        [v18 didScroll:self withSource:v20];
      }

      goto LABEL_13;
  }

  [(UIScrollView *)self _updatePanGesture];
LABEL_13:
}

- (void)_setAllowsAsyncScrollEvent:(BOOL)event
{
  if (event)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xEFFFFFFF | v3;
}

- (BOOL)_canPerformAsyncScrollDecelerationReturningEvent:(id *)event
{
  if ([(UIScrollView *)self _canHandleAsyncScrollEvent])
  {
    v5 = [(UIGestureRecognizer *)self->_pan _activeEventOfType:10];
    v6 = v5;
    if (event && v5)
    {
      v7 = v5;
      *event = v6;

      return 1;
    }

    if (v6)
    {
      return 1;
    }
  }

  return 0;
}

- (id)_asyncDeliveryTargetForScrollEvent:(id)event
{
  if ([(UIScrollView *)self _canHandleAsyncScrollEvent])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_asynchronouslyDeliverScrollEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_AsyncScrollEventHandlerTimeout, @"AsyncScrollEventHandlerTimeout", _UIInternalPreferenceUpdateDouble))
  {
    v9 = 2000000000;
  }

  else
  {
    v9 = (*&qword_1EA95E800 * 1000000000.0);
  }

  v10 = dispatch_time(0, v9);
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_AsyncScrollEventHandlerTimeout, @"AsyncScrollEventHandlerTimeout", _UIInternalPreferenceUpdateDouble))
  {
    v11 = 100000000;
  }

  else
  {
    v11 = (*&qword_1EA95E800 * 0.05 * 1000000000.0);
  }

  dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, v11);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __61__UIScrollView__asynchronouslyDeliverScrollEvent_completion___block_invoke;
  handler[3] = &unk_1E70FCE28;
  v12 = v8;
  v23 = v12;
  v13 = eventCopy;
  v24 = v13;
  v14 = completionCopy;
  v25 = v14;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_activate(v12);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__UIScrollView__asynchronouslyDeliverScrollEvent_completion___block_invoke_2;
  v18[3] = &unk_1E710B1B0;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [(UIScrollView *)self _sendAsynchronouslyHandleScrollEvent:v16 completion:v18];
}

uint64_t __61__UIScrollView__asynchronouslyDeliverScrollEvent_completion___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

intptr_t __61__UIScrollView__asynchronouslyDeliverScrollEvent_completion___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = *(a1 + 32);
  result = dispatch_source_testcancel(v2);
  if (!result)
  {
    dispatch_source_cancel(v2);
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  return result;
}

- (void)_sendAsynchronouslyHandleScrollEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  if ([(UIScrollView *)self _subclassHandlesAsyncScrollEvent])
  {
    [(UIScrollView *)self _asynchronouslyHandleScrollEvent:eventCopy completion:completionCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _scrollView:self asynchronouslyHandleScrollEvent:eventCopy completion:completionCopy];
  }
}

- (void)_setKnobInteractionGestureDelayed:(BOOL)delayed
{
  knobLongPressGestureRecognizer = self->_knobLongPressGestureRecognizer;
  v4 = 0.1;
  if (delayed)
  {
    v4 = 0.25;
  }

  [(UILongPressGestureRecognizer *)knobLongPressGestureRecognizer setMinimumPressDuration:v4];
}

- (void)_handleKnobLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  state = [gestureCopy state];
  if ((state - 3) >= 2)
  {
    if (state == 1)
    {
      [(UIScrollView *)self _beginDirectManipulationIfNecessaryWithGestureRecognizer:gestureCopy];
    }
  }

  else
  {
    [(UIScrollView *)self _didEndDirectManipulationWithScrubbingDirection:(*(&self->_scrollViewFlags + 5) >> 11) & 0xF];
  }
}

- (void)_beginDirectManipulationIfNecessaryWithGestureRecognizer:(id)recognizer
{
  if ((*(&self->_scrollViewFlags + 21) & 0x78) == 0)
  {
    recognizerCopy = recognizer;
    [recognizerCopy locationInView:self];
    v7 = v6;
    v9 = v8;
    touches = [recognizerCopy touches];

    firstObject = [touches firstObject];

    v11 = [(UIScrollView *)self _scrubbingForPoint:firstObject touch:v7, v9];
    if ((v11 - 1) <= 3)
    {
      [(UIScrollView *)self _didBeginDirectManipulationWithScrubbingDirection:v11];
      [(UIFeedbackGeneratorUserInteractionDriven *)self->_knobFeedbackGenerator pressedDownAtLocation:v7, v9];
    }
  }
}

- (void)_didBeginDirectManipulationWithScrubbingDirection:(int64_t)direction
{
  [(NSTimer *)self->_verticalScrollIndicatorHideDelayTimer invalidate];
  verticalScrollIndicatorHideDelayTimer = self->_verticalScrollIndicatorHideDelayTimer;
  self->_verticalScrollIndicatorHideDelayTimer = 0;

  [(NSTimer *)self->_horizontalScrollIndicatorHideDelayTimer invalidate];
  horizontalScrollIndicatorHideDelayTimer = self->_horizontalScrollIndicatorHideDelayTimer;
  self->_horizontalScrollIndicatorHideDelayTimer = 0;

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFF87FF | ((direction & 0xF) << 11);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_knobInteractionBeginTime = v7;
  [(UIScrollView *)self _effectiveContentInset];
  self->_knobRelativeContentInsets.top = v8;
  self->_knobRelativeContentInsets.left = v9;
  self->_knobRelativeContentInsets.bottom = v10;
  self->_knobRelativeContentInsets.right = v11;
  if ((direction & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v12 = &OBJC_IVAR___UIScrollView__verticalScrollIndicator;
    [(UIScrollView *)self _effectiveVerticalScrollIndicatorInsets];
LABEL_7:
    self->_knobRelativeIndicatorInsets.top = v13;
    self->_knobRelativeIndicatorInsets.left = v14;
    self->_knobRelativeIndicatorInsets.bottom = v15;
    self->_knobRelativeIndicatorInsets.right = v16;
    goto LABEL_8;
  }

  v12 = &OBJC_IVAR___UIScrollView__horizontalScrollIndicator;
  if (direction == 4)
  {
LABEL_6:
    [(UIScrollView *)self _effectiveHorizontalScrollIndicatorInsets];
    goto LABEL_7;
  }

  if (direction != 3)
  {
    if (direction != 2)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_8:
  v17 = *(&self->super.super.super.isa + *v12);

  [v17 setExpandedForDirectManipulation:1];
}

- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)direction
{
  v4 = direction - 1;
  if ((direction & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v5 = &OBJC_IVAR___UIScrollView__horizontalScrollIndicator;
    startOffsetX = self->_startOffsetX;
    [(UIScrollView *)self contentOffset];
    v8 = vabdd_f64(startOffsetX, v10);
    if (v4 > 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = &OBJC_IVAR___UIScrollView__verticalScrollIndicator;
  startOffsetY = self->_startOffsetY;
  [(UIScrollView *)self contentOffset];
  v8 = vabdd_f64(startOffsetY, v7);
  if (v4 < 2)
  {
LABEL_5:
    [*(&self->super.super.super.isa + *v5) setExpandedForDirectManipulation:0];
  }

LABEL_6:
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v11 - self->_knobInteractionBeginTime < 0.1 && v8 < 10.0)
  {
    [(UIScrollView *)self _setKnobInteractionGestureDelayed:1];
  }

  *(&self->_scrollViewFlags + 5) &= 0xFFFF87FF;
  if ([(UIFeedbackGeneratorUserInteractionDriven *)self->_knobFeedbackGenerator isActive])
  {
    knobFeedbackGenerator = self->_knobFeedbackGenerator;

    [(UIFeedbackGeneratorUserInteractionDriven *)knobFeedbackGenerator userInteractionEnded];
  }
}

- (void)_trackpadInterruptScroll:(id)scroll
{
  scrollCopy = scroll;
  [(UIScrollView *)self _stopScrollingNotify:1 pin:1];
  [scrollCopy doubleValue];
  v6 = v5;

  self->_lastScrollInterruptionByPointerEventTime = v6;
  trackpadScrollInterruptionDelayedAction = self->_trackpadScrollInterruptionDelayedAction;
  self->_trackpadScrollInterruptionDelayedAction = 0;
}

- (void)_handleKnobHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  _trackpadFingerDownCount = [gestureCopy _trackpadFingerDownCount];
  if (_trackpadFingerDownCount != [gestureCopy _previousTrackpadFingerDownCount])
  {
    trackpadScrollInterruptionDelayedAction = self->_trackpadScrollInterruptionDelayedAction;
    if (trackpadScrollInterruptionDelayedAction)
    {
      [(UIDelayedAction *)trackpadScrollInterruptionDelayedAction cancel];
    }
  }

  v7 = state - 1;
  if ([gestureCopy _trackpadFingerDownCount] == 1 && v7 <= 1)
  {
    if (![gestureCopy _previousTrackpadFingerDownCount] && self->_scrollHeartbeat && !-[UIScrollView _isBouncing](self, "_isBouncing") && !-[UIScrollView isPagingEnabled](self, "isPagingEnabled"))
    {
      v20 = [gestureCopy _activeEventOfType:11];
      [v20 timestamp];
      v22 = v21;
      v23 = [UIDelayedAction alloc];
      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
      v25 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_TrackpadInterruptScrollDelay, @"TrackpadInterruptScrollDelay", _UIInternalPreferenceUpdateDouble);
      v26 = *&qword_1EA95E830;
      if (v25)
      {
        v26 = 0.01;
      }

      v27 = [(UIDelayedAction *)v23 initWithTarget:self action:sel__trackpadInterruptScroll_ userInfo:v24 delay:*MEMORY[0x1E695DA28] mode:v26];
      v28 = self->_trackpadScrollInterruptionDelayedAction;
      self->_trackpadScrollInterruptionDelayedAction = v27;
    }

    verticalScrollIndicatorHideDelayTimer = self->_verticalScrollIndicatorHideDelayTimer;
    if (verticalScrollIndicatorHideDelayTimer)
    {
      [(NSTimer *)verticalScrollIndicatorHideDelayTimer invalidate];
      v9 = self->_verticalScrollIndicatorHideDelayTimer;
      self->_verticalScrollIndicatorHideDelayTimer = 0;

      [(UIScrollView *)self _hideScrollIndicator:self->_verticalScrollIndicator afterDelay:1 animated:1.0];
    }

    horizontalScrollIndicatorHideDelayTimer = self->_horizontalScrollIndicatorHideDelayTimer;
    if (horizontalScrollIndicatorHideDelayTimer)
    {
      [(NSTimer *)horizontalScrollIndicatorHideDelayTimer invalidate];
      v11 = self->_horizontalScrollIndicatorHideDelayTimer;
      self->_horizontalScrollIndicatorHideDelayTimer = 0;

      [(UIScrollView *)self _hideScrollIndicator:self->_horizontalScrollIndicator afterDelay:1 animated:1.0];
    }

    if ((*(&self->_scrollViewFlags + 22) & 0x40) != 0)
    {
      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__hideScrollIndicators object:0];
      [(UIScrollView *)self performSelector:sel__hideScrollIndicators withObject:0 afterDelay:1.0];
    }
  }

  if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
  {
    if (v7 > 1)
    {
      *(&self->_scrollViewFlags + 5) &= 0xFFCFFFFF;
      [(UIScrollView *)self _adjustScrollerIndicators:0 alwaysShowingThem:0];
    }

    else
    {
      [gestureCopy locationInView:self];
      v13 = v12;
      v15 = v14;
      if ([(UIScrollView *)self _isPoint:2 inExpandedIndicatorForAxis:?])
      {
        v16 = 0x100000;
      }

      else
      {
        v16 = 0;
      }

      *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFEFFFFF | v16;
      v17 = [(UIScrollView *)self _isPoint:1 inExpandedIndicatorForAxis:v13, v15];
      v18 = *(&self->_scrollViewFlags + 5);
      if (v17)
      {
        v19 = 0x200000;
      }

      else
      {
        v19 = 0;
      }

      *(&self->_scrollViewFlags + 5) = v18 & 0xFFDFFFFF | v19;
      if ((v18 & 0x100000) != 0)
      {
        [(_UIScrollViewScrollIndicator *)self->_verticalScrollIndicator setExpandedForDirectManipulation:1];
        v19 = *(&self->_scrollViewFlags + 5) & 0x200000;
      }

      if (v19)
      {
        [(_UIScrollViewScrollIndicator *)self->_horizontalScrollIndicator setExpandedForDirectManipulation:1];
      }
    }
  }
}

- (BOOL)_isPoint:(CGPoint)point inExpandedIndicatorForAxis:(unint64_t)axis
{
  y = point.y;
  x = point.x;
  [(UIScrollView *)self _scrollIndicatorContainerRectForAxis:?];

  return [(UIScrollView *)self _isPoint:axis inExpandedIndicatorForAxis:x containerRect:y, v8, v9, v10, v11];
}

- (BOOL)_isPoint:(CGPoint)point inExpandedIndicatorForAxis:(unint64_t)axis containerRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = point.y;
  v11 = point.x;
  traitCollection = [(UIView *)self traitCollection];
  v14 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:traitCollection];

  if (axis == 1)
  {
    if ([(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
    {
      memset(&slice, 0, sizeof(slice));
      [v14 staticDimensionExpandedSize];
      v17 = v23;
      v18 = x;
      v19 = y;
      v20 = width;
      v21 = height;
      v22 = CGRectMaxYEdge;
      goto LABEL_7;
    }

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  if (axis != 2 || ![(UIScrollView *)self _effectiveShowsVerticalScrollIndicator])
  {
    goto LABEL_8;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v26, 0, sizeof(v26));
  v15 = ~(*(&self->super._viewFlags + 4) >> 21) & 2;
  [v14 staticDimensionExpandedSize];
  v17 = v16;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  v22 = v15;
LABEL_7:
  CGRectDivide(*&v18, &slice, &v26, v17, v22);
  [v14 hitTestingRectForIndicatorRect:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
  slice = v29;
  v28.x = v11;
  v28.y = v10;
  v24 = CGRectContainsPoint(v29, v28);
LABEL_9:

  return v24;
}

- (BOOL)_shouldAutoScroll
{
  if ([(UIScrollView *)self _isAutoScrollEnabled])
  {
    isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  }

  else
  {
    isScrollEnabled = 0;
  }

  _panGestureRecognizer = [(UIScrollView *)self _panGestureRecognizer];
  state = [_panGestureRecognizer state];

  v6 = 0;
  if (isScrollEnabled && (state - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_animation);
    v6 = WeakRetained == 0;
  }

  return v6;
}

- (void)_stopAutoScrollAssistant
{
  autoScrollAssistant = self->_autoScrollAssistant;
  if (autoScrollAssistant)
  {
    [(_UIAutoScrollAssistant *)autoScrollAssistant stop];
  }
}

- (void)_handleAutoScroll:(id)scroll
{
  scrollCopy = scroll;
  state = [scrollCopy state];
  if ((state - 3) < 2)
  {
    goto LABEL_5;
  }

  if ((state - 1) > 1)
  {
    goto LABEL_6;
  }

  if ([(UIScrollView *)self _shouldAutoScroll])
  {
    [scrollCopy locationInView:self];
    v6 = v5;
    v8 = v7;
    _autoScrollAssistant = [(UIScrollView *)self _autoScrollAssistant];
    [_autoScrollAssistant autoScrollFromPoint:{v6, v8}];
  }

  else
  {
LABEL_5:
    [(UIScrollView *)self _stopAutoScrollAssistant];
  }

LABEL_6:
}

- (void)_setAutoScrollEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFFFFFB | v3;
}

- (void)_setAutoScrollTouchInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  _autoScrollAssistant = [(UIScrollView *)self _autoScrollAssistant];
  [_autoScrollAssistant setTouchInsets:{top, left, bottom, right}];
}

- (void)_setSupportsPointerDragScrolling:(BOOL)scrolling
{
  if (scrolling)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFF7FFFFF | v3;
}

- (void)_handleDirectionalPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity
{
  [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:1 verticalVelocity:velocity nudgingBoundsWithVelocity:verticalVelocity];
  x = self->_pageDecelerationTarget.x;
  y = self->_pageDecelerationTarget.y;

  [(UIScrollView *)self _handleDirectionalScrollToOffset:1 clampingToBounds:x, y];
}

- (void)_handleDirectionalPress:(id)press
{
  pressCopy = press;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  if ([pressCopy state] == 1 || objc_msgSend(pressCopy, "changeCount"))
  {
    isEnabled = [(UIGestureRecognizer *)self->_pan isEnabled];
    [(UIGestureRecognizer *)self->_pan setEnabled:0];
    [(UIGestureRecognizer *)self->_pan setEnabled:isEnabled];
    v5 = *(&self->_scrollViewFlags + 12);
    activePressType = [pressCopy activePressType];
    if ((v5 & 0x20) != 0)
    {
      if (activePressType == 3)
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.0;
      }

      if (activePressType == 2)
      {
        v8 = -1.0;
      }

      else
      {
        v8 = v7;
      }

      activePressType2 = [pressCopy activePressType];
      if (activePressType2 == 1)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      if (activePressType2)
      {
        v11 = v10;
      }

      else
      {
        v11 = -1.0;
      }

      [(UIScrollView *)self _handleDirectionalPageWithHorizontalVelocity:v8 verticalVelocity:v11];
    }

    else
    {
      [(UIScrollView *)self _offsetToScrollToForArrowPressType:activePressType];
      [(UIScrollView *)self _handleDirectionalScrollToOffset:1 clampingToBounds:?];
    }
  }
}

- (void)_handleDirectionalScrollToOffset:(CGPoint)offset clampingToBounds:(BOOL)bounds duration:(double)duration
{
  y = offset.y;
  x = offset.x;
  offsetCopy = offset;
  [(UIScrollView *)self contentOffset];
  v11 = v10;
  v13 = v12;
  [UIScrollView _velocityForAnimatedScrollFromOffset:"_velocityForAnimatedScrollFromOffset:toOffset:duration:" toOffset:? duration:?];
  v15 = v14;
  v17 = v16;
  [(UIScrollView *)self _scrollViewWillBeginDragging];
  [(UIScrollView *)self _performScrollViewWillEndDraggingInvocationsWithVelocity:&offsetCopy targetContentOffset:v15 unclampedOriginalTarget:v17, x, y];
  if (bounds)
  {
    [(UIScrollView *)self _maximumContentOffset];
    v19 = v18;
    [(UIScrollView *)self _minimumContentOffset];
    if (v20 < offsetCopy.x)
    {
      v20 = offsetCopy.x;
    }

    if (v19 <= v20)
    {
      v20 = v19;
    }

    [(UIScrollView *)self _maximumContentOffset];
    v22 = v21;
    [(UIScrollView *)self _minimumContentOffset];
    v24 = offsetCopy.y;
    if (v23 >= offsetCopy.y)
    {
      v24 = v23;
    }

    if (v22 <= v24)
    {
      v24 = v22;
    }

    offsetCopy.y = v24;
  }

  else
  {
    v24 = offsetCopy.y;
  }

  if (v11 == offsetCopy.x && v13 == v24)
  {
    [(UIScrollView *)self _scrollViewDidEndDraggingForDelegateWithDeceleration:0];
  }

  else
  {
    [(UIScrollView *)self _scrollViewDidEndDraggingForDelegateWithDeceleration:1];
    [(UIScrollView *)self _clearContentOffsetAnimation];
    [(UIScrollView *)self _adjustedContentOffsetForContentOffset:offsetCopy.x, offsetCopy.y];
    if (offsetCopy.x == v27 && offsetCopy.y == v26)
    {
      [(UIScrollView *)self _performDirectionalScrollAnimationToTargetOffset:offsetCopy.x duration:offsetCopy.y, duration];
    }

    else
    {
      [(UIScrollView *)self _performDirectionalBounceFromOffset:v11 toTargetOffset:v13, offsetCopy.x, offsetCopy.y];
    }
  }
}

- (void)_performDirectionalScrollAnimationToTargetOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_DirectionalScrollAnimationDuration, @"DirectionalScrollAnimationDuration", _UIInternalPreferenceUpdateDouble))
  {
    v6 = 0.3;
  }

  else
  {
    v6 = *&qword_1EA95E870;
  }

  [(UIScrollView *)self _performDirectionalScrollAnimationToTargetOffset:x duration:y, v6];
}

- (void)_performDirectionalScrollAnimationToTargetOffset:(CGPoint)offset duration:(double)contentOffsetAnimationDuration
{
  y = offset.y;
  x = offset.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewWillBeginDecelerating:self];
  }

  if (contentOffsetAnimationDuration < 0.0)
  {
    contentOffsetAnimationDuration = self->_contentOffsetAnimationDuration;
  }

  v8 = objc_alloc(MEMORY[0x1E69794A8]);
  v9 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DirectionalScrollAnimationBounce, @"DirectionalScrollAnimationBounce", _UIInternalPreferenceUpdateDouble);
  v10 = 0.0;
  if (!v9)
  {
    v10 = *&qword_1EA95E880;
  }

  v11 = [v8 initWithPerceptualDuration:contentOffsetAnimationDuration bounce:v10];
  *(&self->_scrollViewFlags + 12) |= 0x4000uLL;
  [(UIScrollView *)self _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v11 animation:x, y];
}

- (void)_performDirectionalBounceFromOffset:(CGPoint)offset toTargetOffset:(CGPoint)targetOffset
{
  y = targetOffset.y;
  x = targetOffset.x;
  v6 = offset.y;
  v7 = offset.x;
  [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:@"Directional bounce for CarPlay"];
  [(UIScrollView *)self _updateDecelerationLastOffset:v7, v6];
  self->_previousHorizontalVelocity = 0.0;
  self->_previousVerticalVelocity = 0.0;
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_DirectionalScrollBounceVelocityMagnitude, @"DirectionalScrollBounceVelocityMagnitude", _UIInternalPreferenceUpdateDouble))
  {
    v9 = 0.8;
  }

  else
  {
    v9 = *&qword_1EA95E890;
  }

  [(UIView *)self bounds];
  v43 = v10;
  v44 = v11;
  [(UIScrollView *)self _effectiveContentInset];
  v16 = *&self->_accuracy;
  v17 = self->_firstPageOffset.horizontal - v13;
  if (*&v16 == 1.0)
  {
    v31 = round(v17);
    v24 = round(v15 + self->_contentSize.width) - round(v43);
    if (v31 >= v24)
    {
      v24 = v31;
    }

    v27 = round(v14 + self->_contentSize.height);
    v32.f64[0] = v44;
    v32.f64[1] = self->_firstPageOffset.vertical - v12;
    v30 = vrndaq_f64(v32);
  }

  else
  {
    v18 = floor(v17);
    v19 = v18 + round(*&v16 * (v17 - v18)) / *&v16;
    v20.f64[0] = v15 + self->_contentSize.width;
    v20.f64[1] = v43;
    v21 = vrndmq_f64(v20);
    v22 = vdupq_lane_s64(v16, 0);
    v23 = vaddq_f64(v21, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v20, v21), *&v16)), v22));
    v24 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
    if (v19 >= v24)
    {
      v24 = v19;
    }

    v25 = v14 + self->_contentSize.height;
    v26 = floor(v25);
    v27 = v26 + round(*&v16 * (v25 - v26)) / *&v16;
    v28.f64[0] = v44;
    v28.f64[1] = self->_firstPageOffset.vertical - v12;
    v29 = vrndmq_f64(v28);
    v30 = vaddq_f64(v29, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v28, v29), *&v16)), v22));
  }

  v33 = v27 - v30.f64[0];
  if (v30.f64[1] >= v33)
  {
    v33 = v30.f64[1];
  }

  self->_horizontalVelocity = 0.0;
  accuracy = self->_accuracy;
  v35 = self->_firstPageOffset.horizontal - v13;
  if (accuracy == 1.0)
  {
    v37 = round(v35);
  }

  else
  {
    v36 = floor(v35);
    v37 = v36 + round(accuracy * (v35 - v36)) / accuracy;
  }

  if (x >= v37)
  {
    v38 = v9;
    if (x <= v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v38 = -v9;
  }

  self->_horizontalVelocity = v38;
LABEL_20:
  self->_verticalVelocity = 0.0;
  v39 = self->_accuracy;
  v40 = self->_firstPageOffset.vertical - v12;
  if (v39 == 1.0)
  {
    v42 = round(v40);
  }

  else
  {
    v41 = floor(v40);
    v42 = v41 + round(v39 * (v40 - v41)) / v39;
  }

  if (y >= v42)
  {
    if (y <= v33)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v9 = -v9;
  }

  self->_verticalVelocity = v9;
LABEL_27:

  [(UIScrollView *)self _startTimer:1];
}

- (CGPoint)_offsetToScrollToForArrowPressType:(int64_t)type
{
  [(UIView *)self bounds];
  v6 = v5 * 0.5;
  v8 = v7 * 0.5;
  [(UIScrollView *)self contentOffset];
  v11 = v9 - v6;
  v12 = v9 + v6;
  if (type != 3)
  {
    v12 = v9;
  }

  if (type != 2)
  {
    v11 = v12;
  }

  v13 = v10 - v8;
  v14 = v10 + v8;
  if (type != 1)
  {
    v14 = v10;
  }

  if (type)
  {
    v13 = v14;
  }

  if (type <= 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  if (type <= 1)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  [(UIScrollView *)self _maximumContentOffset];
  v18 = v17;
  [(UIScrollView *)self _minimumContentOffset];
  if (v19 < v16)
  {
    v19 = v16;
  }

  if (v18 > v19)
  {
    v18 = v19;
  }

  [(UIScrollView *)self _maximumContentOffset];
  v21 = v20;
  [(UIScrollView *)self _minimumContentOffset];
  if (v22 >= v15)
  {
    v23 = v22;
  }

  else
  {
    v23 = v15;
  }

  if (v21 <= v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23;
  }

  v25 = v18;
  result.y = v24;
  result.x = v25;
  return result;
}

- (CGPoint)_velocityForAnimatedScrollFromOffset:(CGPoint)offset toOffset:(CGPoint)toOffset duration:(double)duration
{
  v5 = duration * 1000.0;
  v6 = (toOffset.x - offset.x) / v5;
  v7 = (toOffset.y - offset.y) / v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_setAllowedTouchTypesForScrolling:(id)scrolling
{
  v4 = [scrolling copy];
  allowedTouchTypesForScrolling = self->__allowedTouchTypesForScrolling;
  self->__allowedTouchTypesForScrolling = v4;

  [(UIScrollViewPanGestureRecognizer *)self->_pan setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
  [(UIGestureRecognizer *)self->_touchDelayGestureRecognizer setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
  [self->_swipe setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
  if (self->_lowFidelitySwipeGestureRecognizers[0])
  {
    for (i = 0; i != 4; ++i)
    {
      [(UIGestureRecognizer *)self->_lowFidelitySwipeGestureRecognizers[i] setAllowedTouchTypes:self->__allowedTouchTypesForScrolling];
    }
  }
}

- (void)setAllowsKeyboardScrolling:(BOOL)allowsKeyboardScrolling
{
  if (allowsKeyboardScrolling)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFFFFFC | v3;
  [(UIScrollView *)self _allowsKeyboardScrollingDidUpdate];
}

- (BOOL)allowsKeyboardScrolling
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(&self->_scrollViewFlags + 5) & 3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __39__UIScrollView_allowsKeyboardScrolling__block_invoke;
  v12 = &unk_1E70F3CB0;
  selfCopy = self;
  v3 = v10;
  v4 = v3;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v15 = v2;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", buf, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UITriStateToBool___s_category_3) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v15 = v2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", buf, 0xCu);
        }
      }

      v5 = v11(v4);
      goto LABEL_11;
    }

    v6 = 1;
  }

  else
  {
    if (!v2)
    {
      v5 = __39__UIScrollView_allowsKeyboardScrolling__block_invoke(v3);
LABEL_11:
      v6 = v5;
      goto LABEL_12;
    }

    v6 = 0;
  }

LABEL_12:

  return v6;
}

uint64_t __39__UIScrollView_allowsKeyboardScrolling__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceIdiom];

  result = dyld_program_sdk_at_least();
  if (result)
  {
    return v2 == 6 || (v2 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ((*(&self->_scrollViewFlags + 17) & 0x80) != 0)
  {
    v4.receiver = self;
    v4.super_class = UIScrollView;
    [(UIResponder *)&v4 touchesBegan:began withEvent:event];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ((*(&self->_scrollViewFlags + 17) & 0x80) != 0)
  {
    v4.receiver = self;
    v4.super_class = UIScrollView;
    [(UIResponder *)&v4 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ((*(&self->_scrollViewFlags + 17) & 0x80) != 0)
  {
    v4.receiver = self;
    v4.super_class = UIScrollView;
    [(UIResponder *)&v4 touchesEnded:ended withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ((*(&self->_scrollViewFlags + 17) & 0x80) != 0)
  {
    v4.receiver = self;
    v4.super_class = UIScrollView;
    [(UIResponder *)&v4 touchesCancelled:cancelled withEvent:event];
  }
}

- (_UIScrollViewScrollingAnimator)_scrollingAnimator
{
  keyboardScrollingAnimator = self->_keyboardScrollingAnimator;
  if (!keyboardScrollingAnimator)
  {
    v4 = [[_UIScrollViewScrollingAnimator alloc] initWithScrollView:self];
    v5 = self->_keyboardScrollingAnimator;
    self->_keyboardScrollingAnimator = v4;

    keyboardScrollingAnimator = self->_keyboardScrollingAnimator;
  }

  return keyboardScrollingAnimator;
}

- (BOOL)_allowsKeyboardEventsToScroll
{
  allowsKeyboardScrolling = [(UIScrollView *)self allowsKeyboardScrolling];
  if (allowsKeyboardScrolling)
  {
    if ([(UIScrollView *)self _canScrollX])
    {
      LOBYTE(allowsKeyboardScrolling) = 1;
    }

    else
    {

      LOBYTE(allowsKeyboardScrolling) = [(UIScrollView *)self _canScrollY];
    }
  }

  return allowsKeyboardScrolling;
}

- (void)_handleKeyboardScrollingPressGesture:(id)gesture
{
  gestureCopy = gesture;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  _activePressesEvent = [(UIGestureRecognizer *)gestureCopy _activePressesEvent];
  if (!_activePressesEvent)
  {
    _activePressesEvent = [gestureCopy _activeEventOfType:4];
  }

  if ([gestureCopy state] == 1)
  {
    _scrollingAnimator = [(UIScrollView *)self _scrollingAnimator];
    [_scrollingAnimator handlePressEventIfInterested:_activePressesEvent];
  }

  else
  {
    if ([gestureCopy state] < 3)
    {
      goto LABEL_8;
    }

    _scrollingAnimator = [(UIScrollView *)self _scrollingAnimator];
    [_scrollingAnimator finishHandlingPressEvent:_activePressesEvent];
  }

LABEL_8:
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (-[UIScrollView _platformUsesGestureRecognizersForKeyboardScrolling](self, "_platformUsesGestureRecognizersForKeyboardScrolling") || !-[UIScrollView _allowsKeyboardEventsToScroll](self, "_allowsKeyboardEventsToScroll") || (-[UIScrollView _scrollingAnimator](self, "_scrollingAnimator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 handlePressEventIfInterested:eventCopy], v8, (v9 & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = UIScrollView;
    [(UIResponder *)&v10 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (-[UIScrollView _platformUsesGestureRecognizersForKeyboardScrolling](self, "_platformUsesGestureRecognizersForKeyboardScrolling") || !-[UIScrollView _allowsKeyboardEventsToScroll](self, "_allowsKeyboardEventsToScroll") || (-[UIScrollView _scrollingAnimator](self, "_scrollingAnimator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isHandlingPressEvent:eventCopy], v8, (v9 & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = UIScrollView;
    [(UIResponder *)&v10 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (-[UIScrollView _platformUsesGestureRecognizersForKeyboardScrolling](self, "_platformUsesGestureRecognizersForKeyboardScrolling") || !-[UIScrollView _allowsKeyboardEventsToScroll](self, "_allowsKeyboardEventsToScroll") || (-[UIScrollView _scrollingAnimator](self, "_scrollingAnimator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 finishHandlingPressEvent:eventCopy], v8, (v9 & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = UIScrollView;
    [(UIResponder *)&v10 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (-[UIScrollView _platformUsesGestureRecognizersForKeyboardScrolling](self, "_platformUsesGestureRecognizersForKeyboardScrolling") || !-[UIScrollView _allowsKeyboardEventsToScroll](self, "_allowsKeyboardEventsToScroll") || (-[UIScrollView _scrollingAnimator](self, "_scrollingAnimator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 finishHandlingPressEvent:eventCopy], v8, (v9 & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = UIScrollView;
    [(UIResponder *)&v10 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_setForwardsTouchesUpResponderChain:(BOOL)chain
{
  v3 = 0x800000000000;
  if (!chain)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)_forcePanGestureToEndImmediately
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  if ((*&self->_scrollViewFlags & 3) == 1 && [(UIGestureRecognizer *)self->_pan state]== UIGestureRecognizerStateCancelled)
  {
    [(UIScrollView *)self _handlePanFailure];
  }

  *(p_scrollViewFlags + 12) |= 0x400000000000000uLL;
  [(UIGestureRecognizer *)self->_pan setEnabled:0];
  [(UIGestureRecognizer *)self->_pan setEnabled:1];
  *(p_scrollViewFlags + 12) &= ~0x400000000000000uLL;
}

- (BOOL)cancelTouchTracking
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  if ((*&self->_scrollViewFlags & 1) != 0 && (*(&self->_scrollViewFlags + 19) & 4) == 0)
  {
    [(UIScrollView *)self _trackingDidEnd];
    *p_scrollViewFlags &= ~2uLL;
    [(UIScrollView *)self _didEndDirectManipulationWithScrubbingDirection:(*(p_scrollViewFlags + 5) >> 11) & 0xF];
    *(p_scrollViewFlags + 5) &= 0xFFFF87FF;
    v4 = *p_scrollViewFlags;
    [(UIScrollView *)self _stopScrollingNotify:1 pin:(v4 >> 23) & 1];
    if (!self->_scrollHeartbeat)
    {
      [(UIScrollView *)self _popTrackingRunLoopModeIfNecessaryForReason:@"Cancel touch tracking"];
    }

    if ((v4 & 0x800000) != 0)
    {
      [(UIScrollView *)self _adjustContentOffsetIfNecessary];
    }

    if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
    {
      [(UIScrollView *)self _adjustScrollerIndicators:0 alwaysShowingThem:0];
    }

    [(UIScrollView *)self _updateAccessories];
    if ((v4 & 0x800000) != 0)
    {
      [(UIScrollView *)self contentOffset];
      v10 = v5;
      v11 = v6;
      [(UIScrollView *)self _performScrollViewWillEndDraggingInvocationsWithVelocity:&v10 targetContentOffset:*MEMORY[0x1E695EFF8] unclampedOriginalTarget:*(MEMORY[0x1E695EFF8] + 8), v5, v6];
      [(UIScrollView *)self contentOffset];
      if (v10 != v8 || v11 != v7)
      {
        [(UIScrollView *)self setContentOffset:v10, v11, v7];
      }

      [(UIScrollView *)self _scrollViewDidEndDraggingForDelegateWithDeceleration:0];
    }
  }

  return 1;
}

- (void)setBouncesZoom:(BOOL)bouncesZoom
{
  v3 = 64;
  if (!bouncesZoom)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setCanCancelContentTouches:(BOOL)canCancelContentTouches
{
  v3 = 0x20000;
  if (!canCancelContentTouches)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setDelaysContentTouches:(BOOL)delaysContentTouches
{
  v3 = 0x40000;
  if (!delaysContentTouches)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (BOOL)touchesShouldCancelInContentView:(UIView *)view
{
  v3 = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UIView *)v3 isEnabled])
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (void)setScrollsToTop:(BOOL)scrollsToTop
{
  v3 = *(&self->_scrollViewFlags + 12);
  if (((v3 >> 12) & 1) == scrollsToTop)
  {
    v5 = 4096;
    if (scrollsToTop)
    {
      v5 = 0;
    }

    *(&self->_scrollViewFlags + 12) = v3 & 0xFFFFFFFFFFFFEFFFLL | v5;
    if (scrollsToTop)
    {

      [(UIScrollView *)self _registerAsScrollToTopViewIfPossible];
    }

    else
    {
      window = [(UIView *)self window];
      [window _unregisterScrollToTopView:self];
    }
  }
}

- (BOOL)_scrollToTopIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  [(UIScrollView *)self _revealableContentPadding];
  v6 = v5;
  [(UIScrollView *)self _effectiveContentInset];
  if ((*(&self->_scrollViewFlags + 13) & 0x10) != 0)
  {
    return 0;
  }

  v8 = v7;
  if (![(UIView *)self isUserInteractionEnabled]|| (*(&self->_scrollViewFlags + 2) & 0x10) != 0 || (*(&self->_scrollViewFlags + 12) & 0x10) != 0)
  {
    return 0;
  }

  [(UIScrollView *)self contentOffset];
  accuracy = self->_accuracy;
  v11 = self->_firstPageOffset.vertical - v8;
  if (accuracy == 1.0)
  {
    v13 = round(v11);
  }

  else
  {
    v12 = floor(v11);
    v13 = v12 + round(accuracy * (v11 - v12)) / accuracy;
  }

  if (v9 == v13 - v6 || [(UIScrollView *)self isTracking]|| [(UIScrollView *)self isZooming])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained scrollViewShouldScrollToTop:self])
  {

    return 0;
  }

  [(UIScrollView *)self _clearContentOffsetAnimation];
  *(&self->_scrollViewFlags + 12) |= 0x2000uLL;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__UIScrollView__scrollToTopIfPossible___block_invoke;
  v22[3] = &unk_1E712A710;
  v22[4] = self;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v22];
  [(UIScrollView *)self _contentOffsetForScrollingToTop];
  v18 = v17;
  v20 = v19;
  v21 = _smoothDecelerationAnimation();
  [(UIScrollView *)self _setContentOffset:possibleCopy animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v21 animation:v18, v20];

  if (!possibleCopy)
  {
    *(&self->_scrollViewFlags + 12) &= ~0x2000uLL;
  }

  v14 = 1;
  [(UIScrollView *)self _adjustScrollerIndicators:0 alwaysShowingThem:1];
  [(UIScrollView *)self _updateAccessories];

  return v14;
}

uint64_t __39__UIScrollView__scrollToTopIfPossible___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewWillScrollToTop:v5];
  }

  return result;
}

- (CGPoint)_contentOffsetForScrollingToTop
{
  [(UIScrollView *)self _effectiveContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self _revealableContentPadding];
  v10 = v9;
  accuracy = self->_accuracy;
  v12 = v8 + self->_contentSize.width;
  if (accuracy == 1.0)
  {
    v14 = round(v12);
  }

  else
  {
    v13 = floor(v12);
    v14 = v13 + round(accuracy * (v12 - v13)) / accuracy;
  }

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v30);
  v16 = self->_accuracy;
  v17 = self->_firstPageOffset.horizontal - v6;
  if (v16 == 1.0)
  {
    v19 = round(v17);
  }

  else
  {
    v18 = floor(v17);
    v19 = v18 + round(v16 * (v17 - v18)) / v16;
  }

  v20 = self->_contentSize.width;
  [(UIScrollView *)self contentOffset];
  v22 = self->_accuracy;
  v23 = self->_firstPageOffset.vertical - v4;
  if (v22 == 1.0)
  {
    v25 = round(v23);
  }

  else
  {
    v24 = floor(v23);
    v25 = v24 + round(v22 * (v23 - v24)) / v22;
  }

  if (Width <= v20)
  {
    v26 = Width;
  }

  else
  {
    v26 = v20;
  }

  v27 = v14 - v26;
  if (v19 >= v21)
  {
    v21 = v19;
  }

  if (v27 <= v21)
  {
    v21 = v27;
  }

  v28 = v25 - v10;
  result.y = v28;
  result.x = v21;
  return result;
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(UIScrollView *)self _scrollToTopIfPossible:1];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v5);
    v6 = handlerCopy;
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = UIScrollView;
  [(UIView *)&v5 setUserInteractionEnabled:enabled];
  if ([(UIView *)self isUserInteractionEnabled])
  {
    [(UIScrollView *)self _registerAsScrollToTopViewIfPossible];
  }

  else
  {
    window = [(UIView *)self window];
    [window _unregisterScrollToTopView:self];
  }
}

- (void)_setPagingFriction:(double)friction
{
  if (self->_pagingFriction != friction)
  {
    self->_pagingFriction = friction;
  }
}

- (double)_defaultPagingFriction
{
  [(UIView *)self bounds];
  v3 = 1024.0;
  if (v2 <= 1024.0)
  {
    v3 = v2;
  }

  return v3 * 0.00000994318182 + 0.966818182;
}

- (void)_setPagingSpringPull:(double)pull
{
  if (self->_pagingSpringPull != pull)
  {
    self->_pagingSpringPull = pull;
  }
}

- (id)_assertionController
{
  assertionController = self->_assertionController;
  if (!assertionController)
  {
    v4 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
    v5 = self->_assertionController;
    self->_assertionController = v4;

    assertionController = self->_assertionController;
  }

  return assertionController;
}

- (id)_takeScrollAnimatingAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  _assertionController = [(UIScrollView *)self _assertionController];
  v6 = [_assertionController vendAssertionOfType:1 initialState:1 reason:reasonCopy];

  return v6;
}

- (void)_setWantsConstrainedContentSize:(BOOL)size
{
  v3 = 0x20000000000;
  if (!size)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)_setAutomaticContentConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView.m" lineNumber:9034 description:@"automatic scroll view content size constraints not used on Okemo and later"];
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__UIScrollView__setAutomaticContentConstraints___block_invoke;
  v12 = &unk_1E70F35B8;
  selfCopy = self;
  v14 = constraintsCopy;
  v6 = constraintsCopy;
  if (self)
  {
    v7 = [(UIView *)self _layoutEngineCreateIfNecessary:v9];
    if (v7)
    {
      [v7 withAutomaticOptimizationDisabled:&v9];
    }

    else
    {
      v11(&v9);
    }
  }
}

void __48__UIScrollView__setAutomaticContentConstraints___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(a1 + 32) + 1928);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(UIView *)*(a1 + 32) _layoutEngine_willRemoveLayoutConstraint:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1928);
  *(v8 + 1928) = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(*(a1 + 32) + 1928);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(UIView *)*(a1 + 32) _layoutEngine_didAddLayoutConstraint:0 roundingAdjustment:0.0 mutuallyExclusiveConstraints:?];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (BOOL)_requiresExplicitLayoutMarginsGuideForAttribute:(int64_t)attribute getAttributeForGuide:(int *)guide
{
  v9 = 0;
  v8.receiver = self;
  v8.super_class = UIScrollView;
  v5 = [(UIView *)&v8 _requiresExplicitLayoutMarginsGuideForAttribute:attribute getAttributeForGuide:&v9];
  v6 = v9;
  if (guide)
  {
    *guide = v9;
  }

  return ((v6 - 9) < 2) | v5 & 1;
}

- (id)_layoutGuideOfType:(int64_t)type createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  if (type > 2)
  {
    v7 = 0;
    v10 = 0;
  }

  else
  {
    v7 = off_1E712A960[type];
    v8 = *(&self->super.super.super.isa + *off_1E712A930[type]);
    v9 = objc_opt_class();
    if (v8)
    {
      goto LABEL_36;
    }

    v10 = v9;
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v62 = __53__UIScrollView__layoutGuideOfType_createIfNecessary___block_invoke;
  v63 = &unk_1E712A7F8;
  v64 = selfCopy;
  v65 = v7;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  layoutGuides = [(UIView *)selfCopy layoutGuides];
  v8 = [layoutGuides countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v8)
  {
    v50 = v10;
    v51 = necessaryCopy;
    v52 = selfCopy;
    v12 = *v58;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v58 != v12)
        {
          objc_enumerationMutation(layoutGuides);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        identifier = [v14 identifier];
        v16 = [identifier isEqualToString:v7];

        if (v16)
        {
          v17 = v14;
          v8 = v17;
          if (!type)
          {
            _systemConstraints = [v17 _systemConstraints];
            v19 = [_systemConstraints count];

            if (!v19)
            {
              v20 = v62(v61, v8);
              [v8 _setSystemConstraints:v20];
            }
          }

          v21 = MEMORY[0x1E69977A0];
          _systemConstraints2 = [v8 _systemConstraints];
          [v21 activateConstraints:_systemConstraints2];

          goto LABEL_18;
        }
      }

      v8 = [layoutGuides countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_18:
    selfCopy = v52;
    necessaryCopy = v51;
    v10 = v50;
  }

  if (!v8 && necessaryCopy)
  {
    v8 = objc_alloc_init(v10);
    [(UIView *)selfCopy addLayoutGuide:v8];
    [v8 setIdentifier:v7];
    [v8 _setLockedToOwningView:1];
    switch(type)
    {
      case 2:
        [v8 _setShouldBeArchived:0];
        widthAnchor = [v8 widthAnchor];
        [(UIScrollView *)selfCopy contentOffset];
        v23 = [widthAnchor constraintEqualToConstant:?];

        heightAnchor = [v8 heightAnchor];
        [(UIScrollView *)selfCopy contentOffset];
        contentLayoutGuide = [heightAnchor constraintEqualToConstant:v43];

        [v23 setIdentifier:@"UIScrollView-contentOffsetLayoutGuide-xOffset"];
        [contentLayoutGuide setIdentifier:@"UIScrollView-contentOffsetLayoutGuide-yOffset"];
        v67[0] = v23;
        v67[1] = contentLayoutGuide;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v44 = v56 = 0u;
        v45 = [v44 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v54;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v54 != v47)
              {
                objc_enumerationMutation(v44);
              }

              [*(*(&v53 + 1) + 8 * j) setShouldBeArchived:0];
            }

            v46 = [v44 countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v46);
        }

        [v8 _setSystemConstraints:v44];
        [MEMORY[0x1E69977A0] activateConstraints:v44];
        objc_storeStrong(&selfCopy->_contentOffsetLayoutGuide, v8);

        goto LABEL_34;
      case 1:
        leftAnchor = [v8 leftAnchor];
        leftAnchor2 = [(UIView *)selfCopy leftAnchor];
        v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

        topAnchor = [v8 topAnchor];
        topAnchor2 = [(UIView *)selfCopy topAnchor];
        contentLayoutGuide = [topAnchor constraintEqualToAnchor:topAnchor2];

        widthAnchor2 = [v8 widthAnchor];
        widthAnchor3 = [(UIView *)selfCopy widthAnchor];
        v32 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];

        heightAnchor2 = [v8 heightAnchor];
        heightAnchor3 = [(UIView *)selfCopy heightAnchor];
        v35 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];

        v36 = [(__CFString *)v7 stringByAppendingString:@"-minX"];
        [v23 setIdentifier:v36];

        v37 = [(__CFString *)v7 stringByAppendingString:@"-minY"];
        [contentLayoutGuide setIdentifier:v37];

        v38 = [(__CFString *)v7 stringByAppendingString:@"-width"];
        [v32 setIdentifier:v38];

        v39 = [(__CFString *)v7 stringByAppendingString:@"-height"];
        [v35 setIdentifier:v39];

        v68[0] = v23;
        v68[1] = contentLayoutGuide;
        v68[2] = v32;
        v68[3] = v35;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
        [v8 _setSystemConstraints:v40];
        [MEMORY[0x1E69977A0] activateConstraints:v40];
        objc_storeStrong(&selfCopy->_frameLayoutGuide, v8);

        goto LABEL_34;
      case 0:
        v23 = v62(v61, v8);
        [v8 _setSystemConstraints:v23];
        [MEMORY[0x1E69977A0] activateConstraints:v23];
        v24 = v8;
        contentLayoutGuide = selfCopy->_contentLayoutGuide;
        selfCopy->_contentLayoutGuide = v24;
LABEL_34:

        break;
    }
  }

LABEL_36:

  return v8;
}

id __53__UIScrollView__layoutGuideOfType_createIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 leftAnchor];
  v5 = [*(a1 + 32) leftAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = [v3 topAnchor];

  v8 = [*(a1 + 32) topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  v10 = [*(a1 + 40) stringByAppendingString:@"-minX"];
  [v6 setIdentifier:v10];

  v11 = [*(a1 + 40) stringByAppendingString:@"-minY"];
  [v9 setIdentifier:v11];

  v14[0] = v6;
  v14[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  return v12;
}

- (CGRect)_layoutGuide:(id)guide adjustedLayoutFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  guideCopy = guide;
  _contentLayoutGuideIfExists = [(UIScrollView *)self _contentLayoutGuideIfExists];
  v11 = _contentLayoutGuideIfExists;
  if (_contentLayoutGuideIfExists == guideCopy)
  {
  }

  else
  {
    _contentMarginsGuideIfExists = [(UIScrollView *)self _contentMarginsGuideIfExists];

    if (_contentMarginsGuideIfExists != guideCopy)
    {
      [(UIScrollView *)self contentOffset];
      x = x + v13;
      y = y + v14;
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)nsli_layoutMarginsItem
{
  v29[4] = *MEMORY[0x1E69E9840];
  _contentMarginsGuideIfExists = [(UIScrollView *)self _contentMarginsGuideIfExists];
  if (!_contentMarginsGuideIfExists)
  {
    _contentMarginsGuideIfExists = objc_alloc_init(UILayoutGuide);
    [(UILayoutGuide *)_contentMarginsGuideIfExists setIdentifier:@"UIScrollViewContentMarginsGuide"];
    [(UIView *)self addLayoutGuide:_contentMarginsGuideIfExists];
    [(UILayoutGuide *)_contentMarginsGuideIfExists _setLockedToOwningView:1];
    [(UILayoutGuide *)_contentMarginsGuideIfExists _setAllowsNegativeDimensions:1];
    [(UIView *)self layoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    contentLayoutGuide = [(UIScrollView *)self contentLayoutGuide];
    topAnchor = [(UILayoutGuide *)_contentMarginsGuideIfExists topAnchor];
    topAnchor2 = [contentLayoutGuide topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];

    [v15 setIdentifier:@"UIScrollView-content-margins-top"];
    leftAnchor = [(UILayoutGuide *)_contentMarginsGuideIfExists leftAnchor];
    leftAnchor2 = [contentLayoutGuide leftAnchor];
    v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v7];

    [v18 setIdentifier:@"UIScrollView-content-margins-left"];
    bottomAnchor = [contentLayoutGuide bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)_contentMarginsGuideIfExists bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v9];

    [v21 setIdentifier:@"UIScrollView-content-margins-bottom"];
    rightAnchor = [contentLayoutGuide rightAnchor];
    rightAnchor2 = [(UILayoutGuide *)_contentMarginsGuideIfExists rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v11];

    [v24 setIdentifier:@"UIScrollView-content-margins-right"];
    v29[0] = v15;
    v29[1] = v18;
    v29[2] = v21;
    v29[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    [(UILayoutGuide *)_contentMarginsGuideIfExists _setSystemConstraints:v25];

    v26 = MEMORY[0x1E69977A0];
    _systemConstraints = [(UILayoutGuide *)_contentMarginsGuideIfExists _systemConstraints];
    [v26 activateConstraints:_systemConstraints];

    [(UIScrollView *)self _setContentMarginsGuide:_contentMarginsGuideIfExists];
  }

  return _contentMarginsGuideIfExists;
}

- (UIOffset)_offsetForCenterOfPossibleZoomView:(id)view withIncomingBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];

  v9 = 0.0;
  if (_getDelegateZoomView == viewCopy)
  {
    if (viewCopy)
    {
      [viewCopy transform];
      v11 = v15;
      v10 = 0.0;
      if (v15 == 1.0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11 + -1.0;
    v10 = width * 0.5 * v12;
    v9 = height * 0.5 * v12;
  }

  else
  {
    v10 = 0.0;
  }

LABEL_8:

  v13 = v10;
  v14 = v9;
  result.vertical = v14;
  result.horizontal = v13;
  return result;
}

- (id)_layoutVariablesWithAmbiguousValue
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = UIScrollView;
  _layoutVariablesWithAmbiguousValue = [(UIView *)&v19 _layoutVariablesWithAmbiguousValue];
  if ((*(&self->super._viewFlags + 7) & 4) != 0 && (*(&self->_scrollViewFlags + 17) & 2) != 0)
  {
    _layoutEngine = [(UIView *)self _layoutEngine];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    nsli_contentWidthVariable = [(UIScrollView *)self nsli_contentWidthVariable];
    v20[0] = nsli_contentWidthVariable;
    nsli_contentHeightVariable = [(UIScrollView *)self nsli_contentHeightVariable];
    v20[1] = nsli_contentHeightVariable;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([_layoutEngine valueOfVariableIsAmbiguous:v12])
          {
            v13 = [_layoutVariablesWithAmbiguousValue arrayByAddingObject:v12];

            _layoutVariablesWithAmbiguousValue = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }
  }

  return _layoutVariablesWithAmbiguousValue;
}

- (void)nsis_valueOfVariable:(id)variable didChangeInEngine:(id)engine
{
  variableCopy = variable;
  engineCopy = engine;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_4;
  }

  _contentHeightVariable = [(UIScrollView *)self _contentHeightVariable];
  v9 = _contentHeightVariable;
  if (_contentHeightVariable == variableCopy)
  {
  }

  else
  {
    _contentWidthVariable = [(UIScrollView *)self _contentWidthVariable];

    if (_contentWidthVariable != variableCopy)
    {
LABEL_4:
      v16.receiver = self;
      v16.super_class = UIScrollView;
      [(UIView *)&v16 nsis_valueOfVariable:variableCopy didChangeInEngine:engineCopy];
      _frameLayoutGuideIfExists = [(UIScrollView *)self _frameLayoutGuideIfExists];
      [_frameLayoutGuideIfExists _invalidateLayoutFrame];

      goto LABEL_11;
    }
  }

  _layoutEngine = [(UIView *)self _layoutEngine];
  v13 = _layoutEngine;
  if (_layoutEngine == engineCopy)
  {
    _evaluateWantsConstrainedContentSize = [(UIScrollView *)self _evaluateWantsConstrainedContentSize];

    if (_evaluateWantsConstrainedContentSize)
    {
      *(&self->_scrollViewFlags + 12) |= 0x40000000000uLL;
      _contentLayoutGuideIfExists = [(UIScrollView *)self _contentLayoutGuideIfExists];
      [_contentLayoutGuideIfExists _invalidateLayoutFrame];

      if ((*(&self->super._viewFlags + 7) & 0x40) == 0)
      {
        [(UIScrollView *)self setNeedsLayout];
      }
    }
  }

  else
  {
  }

LABEL_11:
}

- (void)_setZoomFeedbackGenerator:(id)generator
{
  generatorCopy = generator;
  if ([(UIFeedbackGenerator *)self->_zoomFeedbackGenerator isActive])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView.m" lineNumber:9414 description:@"Zoom feedback behavior should not be changed while active."];
  }

  zoomFeedbackGenerator = self->_zoomFeedbackGenerator;
  self->_zoomFeedbackGenerator = generatorCopy;
}

- (void)_activateZoomFeedback
{
  zoomFeedbackGenerator = self->_zoomFeedbackGenerator;
  if (zoomFeedbackGenerator)
  {
    [(_UIZoomEdgeFeedbackGenerator *)zoomFeedbackGenerator setMinimumZoomScale:self->_minimumZoomScale];
    [(_UIZoomEdgeFeedbackGenerator *)self->_zoomFeedbackGenerator setMaximumZoomScale:self->_maximumZoomScale];
    [(UIScrollView *)self _zoomRubberBandScaleForScale:0.0];
    [(_UIZoomEdgeFeedbackGenerator *)self->_zoomFeedbackGenerator setMinimumTemporaryZoomScale:?];
    [(UIScrollView *)self _zoomRubberBandScaleForScale:INFINITY];
    [(_UIZoomEdgeFeedbackGenerator *)self->_zoomFeedbackGenerator setMaximumTemporaryZoomScale:?];
    v4 = self->_zoomFeedbackGenerator;

    [(_UIEdgeFeedbackGenerator *)v4 userInteractionStarted];
  }
}

- (void)setMinimumZoomScale:(CGFloat)minimumZoomScale
{
  if (self->_minimumZoomScale != minimumZoomScale)
  {
    self->_minimumZoomScale = minimumZoomScale;
    [(UIScrollView *)self _updatePinchGesture];
  }
}

- (void)setMaximumZoomScale:(CGFloat)maximumZoomScale
{
  if (self->_maximumZoomScale != maximumZoomScale)
  {
    self->_maximumZoomScale = maximumZoomScale;
    [(UIScrollView *)self _updatePinchGesture];
  }
}

- (CGPoint)_centeredZoomAnchorPointInScene
{
  [(UIView *)self bounds];
  v5 = v4 + v3 * 0.5;
  v8 = v7 + v6 * 0.5;
  window = [(UIView *)self window];
  if (window)
  {
    window2 = [(UIView *)self window];
    window3 = [(UIView *)self window];
    if (window3)
    {
      window4 = [(UIView *)self window];
      [window4 convertPoint:self fromView:{v5, v8}];
      [window2 _convertDoublePointToSceneReferenceSpace:?];
      v5 = v13;
      v8 = v14;

LABEL_8:
      goto LABEL_9;
    }

    [window2 _convertDoublePointToSceneReferenceSpace:{v5, v8}];
LABEL_7:
    v5 = v15;
    v8 = v16;
    goto LABEL_8;
  }

  window2 = [(UIView *)self window];
  if (window2)
  {
    window3 = [(UIView *)self window];
    [window3 convertPoint:self fromView:{v5, v8}];
    goto LABEL_7;
  }

LABEL_9:

  v17 = v5;
  v18 = v8;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_zoomToCenterInternal:(CGPoint)internal scale:(double)scale duration:(double)duration allowRubberbanding:(BOOL)rubberbanding force:(BOOL)force
{
  forceCopy = force;
  rubberbandingCopy = rubberbanding;
  y = internal.y;
  x = internal.x;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  if (_getDelegateZoomView)
  {
    v18 = _getDelegateZoomView;
    zoomAnchorPoint = self->_zoomAnchorPoint;
    [(UIScrollView *)self _setZoomAnchorPoint:x, y];
    v15 = duration == -1.0 || duration > 0.0;
    [(UIScrollView *)self _centeredZoomAnchorPointInScene];
    [(UIScrollView *)self setZoomScale:rubberbandingCopy withAnchorPoint:v15 allowRubberbanding:1 animated:forceCopy duration:scale notifyDelegate:v16 force:v17, duration];
    if ((*(&self->_scrollViewFlags + 3) & 0x40) != 0)
    {
      self->_zoomAnchorPoint = zoomAnchorPoint;
      [(UIPinchGestureRecognizer *)self->_pinch setScale:scale];
    }

    _getDelegateZoomView = v18;
  }
}

- (double)_zoomRubberBandScaleForScale:(double)result
{
  maximumZoomScale = self->_maximumZoomScale;
  if (maximumZoomScale >= result)
  {
    maximumZoomScale = self->_minimumZoomScale;
    if (maximumZoomScale <= result)
    {
      return result;
    }

    v4 = 1.0 / (2.0 - result / maximumZoomScale);
  }

  else
  {
    v4 = -1.0 / (result / maximumZoomScale) + 2.0;
  }

  return maximumZoomScale * v4;
}

- (double)_zoomScaleForRubberBandScale:(double)result
{
  maximumZoomScale = self->_maximumZoomScale;
  if (maximumZoomScale >= result)
  {
    maximumZoomScale = self->_minimumZoomScale;
    if (maximumZoomScale <= result)
    {
      return result;
    }

    v4 = -1.0 / (result / maximumZoomScale);
    v5 = 2.0;
  }

  else
  {
    v4 = (result / maximumZoomScale + -1.0) / (2.0 - result / maximumZoomScale);
    v5 = 1.0;
  }

  return maximumZoomScale * (v4 + v5);
}

- (void)_markScrollViewAnimationForKey:(id)key ofView:(id)view
{
  keyCopy = key;
  viewCopy = view;
  layer = [viewCopy layer];
  v8 = [layer animationForKey:keyCopy];

  if (v8)
  {
    layer2 = [viewCopy layer];
    v10 = [layer2 animationForKey:keyCopy];
    objc_setAssociatedObject(v10, &__animatingScrollViewKey, self, 0);
  }
}

- (BOOL)_ownsAnimationForKey:(id)key ofView:(id)view
{
  keyCopy = key;
  viewCopy = view;
  layer = [viewCopy layer];
  v9 = [layer animationForKey:keyCopy];

  if (v9)
  {
    layer2 = [viewCopy layer];
    v11 = [layer2 animationForKey:keyCopy];
    v12 = objc_getAssociatedObject(v11, &__animatingScrollViewKey);
    v13 = v12 == self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (float)_zoomAnimationDurationForScale:(double)scale
{
  [(UIScrollView *)self zoomScale];
  v5 = log(v4);
  return fmin(vabdd_f64(v5, log(scale)) * 0.3 + 0.1, 0.4);
}

- (void)_zoomAnimationDidStop
{
  zoomAnimationCount = self->_zoomAnimationCount;
  if (zoomAnimationCount)
  {
    self->_zoomAnimationCount = zoomAnimationCount - 1;
  }

  zoomAnimation = self->_zoomAnimation;
  self->_zoomAnimation = 0;

  zoomAnimationState = self->_zoomAnimationState;
  self->_zoomAnimationState = 0;

  [(UIScrollView *)self zoomScale];
  v7 = v6;
  if (v6 >= self->_minimumZoomScale && v6 <= self->_maximumZoomScale)
  {
    if (!self->_zoomAnimationCount)
    {
      *&self->_scrollViewFlags &= 0xFFFFFFFF7FFFFF7FLL;
      [(UIScrollView *)self _scrollViewDidEndZooming];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
        [WeakRetained scrollViewDidEndZooming:self withView:_getDelegateZoomView atScale:v7];
      }

      if (self->_shadows)
      {
        [(UIScrollView *)self _adjustBackgroundShadowsForContentSizeForcedVisible:0];
      }
    }
  }

  else
  {
    [(UIScrollView *)self setZoomScale:1 animated:?];
  }

  zoomFeedbackGenerator = self->_zoomFeedbackGenerator;

  [(_UIEdgeFeedbackGenerator *)zoomFeedbackGenerator _animationEnded];
}

- (void)_adjustContentSizeForView:(id)view atScale:(double)scale
{
  [view frame];
  v7 = v6;
  v9 = v8;
  if ((*(&self->_scrollViewFlags + 14) & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scrollView:self contentSizeForZoomScale:scale withProposedSize:{v7, v9}];
    v7 = v11;
    v9 = v12;
  }

  [(UIScrollView *)self setContentSize:v7, v9];
}

- (double)_clampedZoomScale:(double)scale allowRubberbanding:(BOOL)rubberbanding
{
  rubberbandingCopy = rubberbanding;
  v12 = *MEMORY[0x1E69E9840];
  if (scale == 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = 136315138;
        v11 = "[UIScrollView _clampedZoomScale:allowRubberbanding:]";
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s: Must be called with non-zero scale", &v10, 0xCu);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9690C0) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[UIScrollView _clampedZoomScale:allowRubberbanding:]";
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s: Must be called with non-zero scale", &v10, 0xCu);
      }
    }
  }

  if (rubberbandingCopy)
  {
    [(UIScrollView *)self _zoomRubberBandScaleForScale:scale];
  }

  else
  {
    result = self->_minimumZoomScale;
    if (result <= scale)
    {
      result = scale;
    }

    if (result > self->_maximumZoomScale)
    {
      return self->_maximumZoomScale;
    }
  }

  return result;
}

- (void)setZoomScale:(double)scale withAnchorPoint:(CGPoint)point allowRubberbanding:(BOOL)rubberbanding animated:(BOOL)animated duration:(double)duration notifyDelegate:(BOOL)delegate force:(BOOL)force
{
  delegateCopy = delegate;
  animatedCopy = animated;
  rubberbandingCopy = rubberbanding;
  y = point.y;
  x = point.x;
  v56 = *MEMORY[0x1E69E9840];
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  [(UIScrollView *)self _clampedZoomScale:rubberbandingCopy allowRubberbanding:scale];
  v20 = v19;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (_getDelegateZoomView)
    {
      if (!force && ([(UIScrollView *)self zoomScale], v20 == v22))
      {
        v49 = @"UITextSelectionZoomScaleDidChange";
        v33 = MEMORY[0x1E696AD98];
        [(UIScrollView *)self zoomScale];
        v35 = [v33 numberWithInt:v34 != v20];
        v50 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UITextSelectionWillZoom" object:self userInfo:v36];
        [(UIScrollView *)self _adjustContentSizeForView:_getDelegateZoomView atScale:v20];
        [defaultCenter postNotificationName:@"UITextSelectionDidZoom" object:self userInfo:v36];
      }

      else
      {
        if (self->_scrollHeartbeat)
        {
          [(UIScrollView *)self _stopScrollingNotify:1 pin:1];
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (animatedCopy && (*&self->_scrollViewFlags & 0x80) == 0)
        {
          [(UIScrollView *)self _scrollViewWillBeginZooming];
          if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [WeakRetained scrollViewWillBeginZooming:self withView:_getDelegateZoomView];
          }
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__243;
        v54 = __Block_byref_object_dispose__243;
        v55 = 0;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke;
        v48[3] = &unk_1E712A820;
        v48[4] = self;
        *&v48[5] = duration;
        *&v48[6] = v20;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_3;
        v40[3] = &unk_1E712A848;
        v47 = animatedCopy;
        v40[4] = self;
        p_buf = &buf;
        v24 = _getDelegateZoomView;
        v41 = v24;
        v44 = v20;
        v45 = x;
        v46 = y;
        v25 = WeakRetained;
        v42 = v25;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_4;
        v38[3] = &unk_1E70FA0F0;
        v39 = animatedCopy;
        v38[4] = self;
        [UIView conditionallyAnimate:animatedCopy withAnimation:v48 layout:v40 completion:v38];
        if (animatedCopy)
        {
          [(UIScrollView *)self _markScrollViewAnimationForKey:@"transform" ofView:v24];
          [(UIScrollView *)self _markScrollViewAnimationForKey:@"position" ofView:v24];
          [(UIScrollView *)self _markScrollViewAnimationForKey:@"bounds" ofView:self];
          [(UIScrollView *)self _markScrollViewAnimationForKey:@"bounds.origin" ofView:self];
          [(UIScrollView *)self _markScrollViewAnimationForKey:@"bounds.size" ofView:self];
          layer = [v24 layer];
          v27 = [layer animationForKey:@"transform"];
          zoomAnimation = self->_zoomAnimation;
          self->_zoomAnimation = v27;

          if (self->_zoomAnimation)
          {
            objc_storeStrong(&self->_zoomAnimationState, *(*(&buf + 1) + 40));
          }
        }

        if ([(UIGestureRecognizer *)self->_pan state]>= UIGestureRecognizerStateBegan)
        {
          [(UIScrollView *)self contentOffset];
          self->_startOffsetX = v29;
          [(UIScrollView *)self contentOffset];
          self->_startOffsetY = v30;
          [(UIPanGestureRecognizer *)self->_pan setTranslation:self inView:0.0, 0.0];
        }

        if ((*(&self->_scrollViewFlags + 3) & 0x40) != 0)
        {
          zoomFeedbackGenerator = self->_zoomFeedbackGenerator;
          [(UIPinchGestureRecognizer *)self->_pinch velocity];
          [(_UIZoomEdgeFeedbackGenerator *)zoomFeedbackGenerator _zoomScaleUpdated:v20 withVelocity:v32 atLocation:x, y];
        }

        if (rubberbandingCopy && animatedCopy && (v20 < self->_minimumZoomScale || v20 > self->_maximumZoomScale))
        {
          *&self->_scrollViewFlags |= 0x80uLL;
        }

        _Block_object_dispose(&buf, 8);
      }
    }
  }

  else
  {
    v21 = *(__UILogGetCategoryCachedImpl("ScrollView", &setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force____s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "UIScrollView is ignoring an attempt to set zoomScale to a non-finite value: %g", &buf, 0xCu);
    }
  }
}

void __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 == -1.0)
  {
    [*(a1 + 32) _zoomAnimationDurationForScale:*(a1 + 48)];
    v7 = v8;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_2;
  v10[3] = &unk_1E70F0F78;
  v11 = v5;
  v9 = v5;
  [UIView animateWithDuration:4 delay:v10 options:v6 animations:v7 completion:0.0];
}

uint64_t __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048624 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

void *__103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    [*(*(a1 + 32) + 1344) _animationStarted];
    ++*(*(a1 + 32) + 1208);
    v2 = +[UIView _currentViewAnimationState];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 transform];
    v6 = *&v57;
    v5 = *(a1 + 40);
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v6 = 0.0;
  }

  v7 = [v5 layer];
  [v7 position];
  v9 = v8;
  v11 = v10;

  [*(a1 + 40) bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [*(a1 + 32) convertPoint:*(a1 + 40) fromView:?];
  v54 = v21;
  v55 = v20;
  v22 = *(a1 + 40);
  CGAffineTransformMakeScale(&v56, *(a1 + 64), *(a1 + 64));
  [v22 setTransform:&v56];
  v23 = *(a1 + 64);
  v24 = v9 - v6 * v17 * 0.5 + v17 * v23 * 0.5;
  v25 = v11 - v6 * v19 * 0.5 + v19 * v23 * 0.5;
  v26 = [*(a1 + 40) layer];
  [v26 setPosition:{v24, v25}];

  [*(a1 + 32) convertPoint:*(a1 + 40) fromView:{v13, v15}];
  v28 = v27 - v55;
  v30 = v29 - v54;
  if (v27 - v55 != 0.0 || v30 != 0.0)
  {
    v31 = [*(a1 + 40) layer];
    [v31 setPosition:{v24 - v28, v25 - v30}];
  }

  [*(a1 + 32) _adjustContentSizeForView:*(a1 + 40) atScale:{*(a1 + 64), *&v54, *&v55}];
  [*(a1 + 32) _centerContentIfNecessaryAdjustingContentOffset:0];
  v32 = *(a1 + 32);
  [v32 _zoomAnchorPoint];
  [v32 convertPoint:*(a1 + 40) fromView:?];
  v34 = v33;
  v36 = v35;
  v37 = [*(a1 + 32) window];
  v38 = *(a1 + 32);
  v39 = [v38 window];
  if (v37)
  {
    [v39 _convertDoublePointFromSceneReferenceSpace:{*(a1 + 72), *(a1 + 80)}];
    v41 = v40;
    v43 = v42;
    v44 = [*(a1 + 32) window];
    [v38 convertPoint:v44 fromView:{v41, v43}];
    v46 = v45;
    v48 = v47;
  }

  else
  {
    [v38 convertPoint:v39 fromView:{*(a1 + 72), *(a1 + 80)}];
    v46 = v49;
    v48 = v50;
  }

  [*(a1 + 32) bounds];
  [*(a1 + 32) _rubberBandContentOffsetForOffset:0 outsideX:0 outsideY:{v34 - (v46 - v51), v36 - (v48 - v52)}];
  [*(a1 + 32) setContentOffset:?];
  result = [*(a1 + 32) _adjustContentOffsetIfNecessary];
  if ((*(*(a1 + 32) + 1806) & 0x20) != 0)
  {
    result = [*(a1 + 48) scrollViewDidZoom:?];
  }

  if (*(a1 + 88) == 1)
  {
    result = *(a1 + 32);
    if (result[115])
    {
      return [result _adjustBackgroundShadowsForContentSizeForcedVisible:1];
    }
  }

  return result;
}

uint64_t __103__UIScrollView_setZoomScale_withAnchorPoint_allowRubberbanding_animated_duration_notifyDelegate_force___block_invoke_4(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _zoomAnimationDidStop];
  }

  return result;
}

- (void)setZoomScale:(CGFloat)scale animated:(BOOL)animated
{
  v4 = animated;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  if (_getDelegateZoomView)
  {
    v29 = _getDelegateZoomView;
    [(UIScrollView *)self _centerContentIfNecessary];
    v8 = *&self->_scrollViewFlags & 0x40000040;
    if (v8 == 1073741888)
    {
      [(UIScrollView *)self _zoomScaleForRubberBandScale:scale];
      scale = v9;
    }

    [(UIScrollView *)self _centeredZoomAnchorPointInScene];
    v11 = v10;
    v13 = v12;
    window = [v29 window];
    window2 = [v29 window];
    v16 = window2;
    if (window)
    {
      [window2 _convertDoublePointFromSceneReferenceSpace:{v11, v13}];
      v18 = v17;
      v20 = v19;
      window3 = [v29 window];
      [v29 convertPoint:window3 fromView:{v18, v20}];
      v23 = v22;
      v25 = v24;
    }

    else
    {
      [v29 convertPoint:window2 fromView:{v11, v13}];
      v23 = v26;
      v25 = v27;
    }

    if (v4)
    {
      v28 = -1.0;
    }

    else
    {
      v28 = 0.0;
    }

    [(UIScrollView *)self _zoomToCenterInternal:v8 == 1073741888 scale:0 duration:v23 allowRubberbanding:v25 force:scale, v28];
    _getDelegateZoomView = v29;
  }
}

- (double)_zoomScaleFromPresentationLayer:(BOOL)layer
{
  layerCopy = layer;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  v5 = _getDelegateZoomView;
  if (!_getDelegateZoomView)
  {
    v9 = 1.0;
    goto LABEL_9;
  }

  layer = [_getDelegateZoomView layer];
  v7 = layer;
  presentationLayer = layer;
  if (layerCopy)
  {
    presentationLayer = [layer presentationLayer];
  }

  if (!presentationLayer)
  {
    v9 = 0.0;
    if (!layerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [presentationLayer affineTransform];
  v9 = v11;
  if (layerCopy)
  {
LABEL_6:
  }

LABEL_7:

LABEL_9:
  return v9;
}

- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated
{
  v4 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
  if (_getDelegateZoomView)
  {
    v61 = _getDelegateZoomView;
    [(UIView *)self bounds];
    v13 = v11;
    v14 = v12;
    if (height * (v11 / width) <= v12)
    {
      v15 = v11 / width;
    }

    else
    {
      v15 = v12 / height;
    }

    if (v15 != 0.0)
    {
      [(UIScrollView *)self _clampedZoomScale:0 allowRubberbanding:v15];
      v15 = v16;
    }

    [(UIScrollView *)self zoomScale];
    v18 = v17;
    v19 = x + width * 0.5;
    v20 = y + height * 0.5;
    if (v15 == v18)
    {
      v60 = v13;
      [v61 convertPoint:self toView:{v19, v20}];
      v22 = v21;
      v24 = v23;
      [(UIScrollView *)self _effectiveContentInset];
      v26 = v25;
      v28 = v27;
      v59 = v29;
      v31 = v30;
      [(UIView *)self bounds];
      v33 = v22 - v32 * 0.5;
      [(UIView *)self bounds];
      v35 = v24 - v34 * 0.5;
      accuracy = self->_accuracy;
      v37 = self->_firstPageOffset.horizontal - v28;
      if (accuracy == 1.0)
      {
        v51 = round(v37);
        if (v33 >= v51)
        {
          v51 = v33;
        }

        v52 = round(v31 + self->_contentSize.width) - v60;
        if (v51 >= v52)
        {
          v44 = v52;
        }

        else
        {
          v44 = v51;
        }

        v53 = round(self->_firstPageOffset.vertical - v26);
        if (v35 < v53)
        {
          v35 = v53;
        }

        v49 = round(v59 + self->_contentSize.height);
      }

      else
      {
        v38 = floor(v37);
        v39 = v38 + round(accuracy * (v37 - v38)) / accuracy;
        if (v33 >= v39)
        {
          v39 = v33;
        }

        v40 = self->_contentSize.height;
        v41 = v31 + self->_contentSize.width;
        v42 = floor(v41);
        v43 = v42 + round(accuracy * (v41 - v42)) / accuracy - v60;
        if (v39 >= v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v39;
        }

        v45 = self->_firstPageOffset.vertical - v26;
        v46 = floor(v45);
        v47 = v46 + round(accuracy * (v45 - v46)) / accuracy;
        if (v35 < v47)
        {
          v35 = v47;
        }

        v48 = floor(v59 + v40);
        v49 = v48 + round(accuracy * (v59 + v40 - v48)) / accuracy;
      }

      v54 = v49 - v14;
      if (v35 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v35;
      }

      if (v4 || (dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UIScrollView *)self _contentOffsetAnimationDuration];
        v57 = v56;
        [(UIScrollView *)self _zoomAnimationDurationForScale:v15];
        [(UIScrollView *)self _setContentOffsetAnimationDuration:v58];
        [(UIScrollView *)self setContentOffset:1 animated:v44, v55];
        [(UIScrollView *)self _setContentOffsetAnimationDuration:v57];
      }

      else
      {
        [(UIScrollView *)self setContentOffset:0 animated:v44, v55];
      }
    }

    else
    {
      v50 = -1.0;
      if (!v4)
      {
        v50 = 0.0;
      }

      [(UIScrollView *)self _zoomToCenterInternal:0 scale:0 duration:v19 allowRubberbanding:v20 force:v15, v50];
    }

    _getDelegateZoomView = v61;
  }
}

- (BOOL)_getPagingDecelerationOffset:(CGPoint *)offset forTimeInterval:(double)interval
{
  [(UIScrollView *)self contentOffset];
  *&v9 = v7.f64[0];
  if (interval <= 0.0)
  {
    v13 = 0;
    offset->x = v7.f64[0];
    offset->y = v8;
    v14 = 1792;
    goto LABEL_96;
  }

  p_scrollViewFlags = &self->_scrollViewFlags;
  v11 = *(&self->_scrollViewFlags + 12);
  if ((v11 & 0x40) != 0 && offset->x >= self->_pageDecelerationTarget.x)
  {
    v12 = 0;
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    v12 = offset->x > self->_pageDecelerationTarget.x;
    if ((v11 & 0x100) == 0)
    {
LABEL_12:
      v15 = (v11 & 0x200) == 0 || offset->y > self->_pageDecelerationTarget.y;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 1;
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_12;
    }
  }

  if (offset->y < self->_pageDecelerationTarget.y)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_16:
  intervalCopy = interval;
  v18.f64[0] = v7.f64[0];
  v17 = v8;
  v18.f64[1] = v8;
  if (interval < 1)
  {
    v21 = 0.0;
    v19 = 0.0;
  }

  else
  {
    do
    {
      v19 = self->_pageDecelerationTarget.x - v18.f64[0];
      v20 = self->_horizontalVelocity + v19 * self->_pagingSpringPull;
      self->_horizontalVelocity = v20;
      v7.f64[0] = v20 * self->_pagingFriction;
      self->_horizontalVelocity = v7.f64[0];
      v21 = self->_pageDecelerationTarget.y - v18.f64[1];
      v22 = self->_verticalVelocity + v21 * self->_pagingSpringPull;
      self->_verticalVelocity = v22;
      v23 = self->_pagingFriction * v22;
      self->_verticalVelocity = v23;
      v7.f64[1] = v23;
      v18 = vaddq_f64(v18, v7);
      --intervalCopy;
    }

    while (intervalCopy);
  }

  v24 = *&self->_accuracy;
  if (*&v24 == 1.0)
  {
    v26 = vrndaq_f64(v18);
  }

  else
  {
    v25 = vrndmq_f64(v18);
    v26 = vaddq_f64(v25, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v18, v25), *&v24)), vdupq_lane_s64(v24, 0)));
  }

  p_pageDecelerationTarget = &self->_pageDecelerationTarget;
  v28 = v26.f64[0] != self->_pageDecelerationTarget.x && *&v9 == v26.f64[0];
  if (v28 && self->_horizontalVelocity < 0.5)
  {
    v29 = -1.0;
    if (v19 < 0.0)
    {
      v29 = 1.0;
    }

    v30 = v26.f64[0] - v29 / *&v24;
    if (*&v24 == 1.0)
    {
      *&v9 = round(v30);
    }

    else
    {
      v31 = floor(v30);
      *&v9 = v31 + round(*&v24 * (v30 - v31)) / *&v24;
    }
  }

  else
  {
    *&v9 = v26.f64[0];
  }

  v32 = v26.f64[1] != self->_pageDecelerationTarget.y && v17 == v26.f64[1];
  v65 = v15;
  v66 = v12;
  if (v32 && self->_verticalVelocity < 0.5)
  {
    v33 = -1.0;
    if (v21 < 0.0)
    {
      v33 = 1.0;
    }

    v34 = v26.f64[1] - v33 / *&v24;
    if (*&v24 == 1.0)
    {
      v7.f64[0] = round(v34);
    }

    else
    {
      v35 = floor(v34);
      v7.f64[0] = v35 + round(*&v24 * (v34 - v35)) / *&v24;
    }
  }

  else
  {
    v7.f64[0] = v26.f64[1];
  }

  v67 = v7;
  v68 = v9;
  *&offset->x = v9;
  offset->y = v7.f64[0];
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UIScrollView__getPagingDecelerationOffset_forTimeInterval___block_invoke;
  aBlock[3] = &unk_1E710ADA0;
  aBlock[5] = &v75;
  aBlock[6] = offset;
  aBlock[4] = self;
  v36 = _Block_copy(aBlock);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __61__UIScrollView__getPagingDecelerationOffset_forTimeInterval___block_invoke_2;
  v69[3] = &unk_1E710ADA0;
  v69[5] = &v71;
  v69[6] = offset;
  v69[4] = self;
  v37 = _Block_copy(v69);
  if (fabs(self->_horizontalVelocity) < 0.01 && fabs(v19) <= 1.0 && vabdd_f64(v68.n128_f64[0], p_pageDecelerationTarget->x) < 5.0)
  {
    v36[2](v36);
  }

  if (fabs(self->_verticalVelocity) < 0.01 && fabs(v21) <= 1.0 && vabdd_f64(v67.n128_f64[0], self->_pageDecelerationTarget.y) < 5.0)
  {
    v37[2](v37);
  }

  [(UIScrollView *)self _effectiveContentInset];
  v42 = v38.n128_f64[0];
  v43 = v40.n128_f64[0];
  if ((v76[3] & 1) != 0 || (*p_scrollViewFlags & 8) != 0)
  {
    goto LABEL_64;
  }

  v38.n128_u64[0] = *&self->_accuracy;
  v44 = self->_firstPageOffset.horizontal - v39.n128_f64[0];
  v40.n128_u64[0] = 1.0;
  if (v38.n128_f64[0] != 1.0)
  {
    v45 = floor(v44);
    v39.n128_f64[0] = v45 + round(v38.n128_f64[0] * (v44 - v45)) / v38.n128_f64[0];
    v40 = v68;
    if (v68.n128_f64[0] >= v39.n128_f64[0])
    {
      v46 = v41 + self->_contentSize.width;
      v47 = floor(v46);
      v48 = v47 + round(v38.n128_f64[0] * (v46 - v47)) / v38.n128_f64[0];
      goto LABEL_62;
    }

LABEL_63:
    (v36[2])(v36, v38, v39, v40);
    goto LABEL_64;
  }

  v38.n128_f64[0] = round(v44);
  v39 = v68;
  if (v68.n128_f64[0] < v38.n128_f64[0])
  {
    goto LABEL_63;
  }

  v48 = round(v41 + self->_contentSize.width);
LABEL_62:
  [(UIView *)self bounds];
  v38.n128_f64[0] = v48 - v40.n128_f64[0];
  v39 = v68;
  if (v68.n128_f64[0] > v48 - v40.n128_f64[0])
  {
    goto LABEL_63;
  }

LABEL_64:
  if ((v72[3] & 1) != 0 || (*p_scrollViewFlags & 4) != 0)
  {
    goto LABEL_73;
  }

  v38.n128_u64[0] = *&self->_accuracy;
  v49 = self->_firstPageOffset.vertical - v42;
  v40.n128_u64[0] = 1.0;
  if (v38.n128_f64[0] != 1.0)
  {
    v50 = floor(v49);
    v39.n128_f64[0] = v50 + round(v38.n128_f64[0] * (v49 - v50)) / v38.n128_f64[0];
    v40 = v67;
    if (v67.n128_f64[0] >= v39.n128_f64[0])
    {
      v51 = v43 + self->_contentSize.height;
      v52 = floor(v51);
      v53 = v52 + round(v38.n128_f64[0] * (v51 - v52)) / v38.n128_f64[0];
      goto LABEL_71;
    }

LABEL_72:
    (v37[2])(v37, v38, v39, v40);
    goto LABEL_73;
  }

  v38.n128_f64[0] = round(v49);
  v39 = v67;
  if (v67.n128_f64[0] < v38.n128_f64[0])
  {
    goto LABEL_72;
  }

  v53 = round(v43 + self->_contentSize.height);
LABEL_71:
  [(UIView *)self bounds];
  v38.n128_f64[0] = v53 - v54;
  v39 = v67;
  if (v67.n128_f64[0] > v53 - v54)
  {
    goto LABEL_72;
  }

LABEL_73:
  v55 = *(&self->_scrollViewFlags + 12);
  if ((v55 & 0x40) != 0 && offset->x >= p_pageDecelerationTarget->x)
  {
    v56 = 1;
    if ((v55 & 0x100) == 0)
    {
      goto LABEL_82;
    }
  }

  else if ((v55 & 0x80) != 0)
  {
    v56 = offset->x <= p_pageDecelerationTarget->x;
    if ((v55 & 0x100) == 0)
    {
LABEL_82:
      v57 = (v55 & 0x200) != 0 && offset->y <= self->_pageDecelerationTarget.y;
      goto LABEL_86;
    }
  }

  else
  {
    v56 = 0;
    if ((v55 & 0x100) == 0)
    {
      goto LABEL_82;
    }
  }

  if (offset->y < self->_pageDecelerationTarget.y)
  {
    goto LABEL_82;
  }

  v57 = 1;
LABEL_86:
  if (!v66 && !v56 && fabs(self->_horizontalVelocity) < 0.1)
  {
    v36[2](v36);
  }

  if (!v65 && !v57 && fabs(self->_verticalVelocity) < 0.1)
  {
    v37[2](v37);
  }

  if (*(v76 + 24) == 1)
  {
    v13 = *(v72 + 24);
  }

  else
  {
    v13 = 0;
  }

  v14 = v64;

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  v8 = v67.n128_f64[0];
  *&v9 = v68.n128_u64[0];
LABEL_96:
  v58 = (self + v14);
  v59 = *(&self->super.super._responderFlags + v14 + 4);
  if ((v59 & 0x100) != 0 && v8 < self->_pageDecelerationTarget.y)
  {
    v60 = 16;
  }

  else if ((v59 & 0x200) != 0)
  {
    v60 = 16 * (v8 > self->_pageDecelerationTarget.y);
  }

  else
  {
    v60 = 0;
  }

  v61 = *v58 & 0xFFFFFFFFFFFFFFEFLL | v60;
  *v58 = v61;
  if ((v59 & 0x40) != 0 && *&v9 < self->_pageDecelerationTarget.x)
  {
    v62 = 32;
  }

  else if ((v59 & 0x80) != 0)
  {
    v62 = 32 * (*&v9 > self->_pageDecelerationTarget.x);
  }

  else
  {
    v62 = 0;
  }

  *v58 = v62 | v61 & 0xFFFFFFFFFFFFFFDFLL;
  return v13 & 1;
}

double __61__UIScrollView__getPagingDecelerationOffset_forTimeInterval___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 840);
  **(a1 + 48) = result;
  *(*(a1 + 32) + 1804) &= ~0x40uLL;
  *(*(a1 + 32) + 1804) &= ~0x80uLL;
  *(*(a1 + 32) + 736) = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

double __61__UIScrollView__getPagingDecelerationOffset_forTimeInterval___block_invoke_2(void *a1)
{
  result = *(a1[4] + 848);
  *(a1[6] + 8) = result;
  *(a1[4] + 1804) &= ~0x100uLL;
  *(a1[4] + 1804) &= ~0x200uLL;
  *(a1[4] + 744) = 0;
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

- (CGPoint)_pageDecelerationTarget
{
  x = self->_pageDecelerationTarget.x;
  y = self->_pageDecelerationTarget.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)_getBouncingDecelerationOffset:(double *)offset forTimeInterval:(double)interval lastUpdateOffset:(double)updateOffset min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)self0
{
  if (min >= max)
  {
    maxCopy = min;
  }

  else
  {
    maxCopy = max;
  }

  if (!velocity)
  {
    return 0;
  }

  if (updateOffset < min || maxCopy < updateOffset)
  {
    intervalCopy = interval;
  }

  else
  {
    v21 = *velocity;
    if (*velocity == 0.0)
    {
      goto LABEL_43;
    }

    v22 = interval * lnFactor;
    if (interval * lnFactor >= -0.5)
    {
      v23 = v22 * (v22 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v23 = exp(v22);
    }

    v24 = (1.0 - v23) / (1.0 - factor) * factor;
    v25 = *offset + self->_fastScrollMultiplier * (v21 * v24);
    *offset = v25;
    intervalCopy = 0.0;
    v26 = v25 < min || v25 > maxCopy;
    intervalCopy2 = interval;
    if (v26)
    {
      if (v25 >= min)
      {
        v28 = (maxCopy - updateOffset) * interval;
        v29 = v25 - updateOffset;
      }

      else
      {
        v28 = (updateOffset - min) * interval;
        v29 = updateOffset - v25;
      }

      intervalCopy2 = v28 / v29;
      intervalCopy = interval - intervalCopy2;
    }

    if (intervalCopy2 > 0.0)
    {
      if (intervalCopy2 != interval)
      {
        v30 = intervalCopy2 * lnFactor;
        if (intervalCopy2 * lnFactor >= -0.5)
        {
          v23 = v30 * (v30 * 0.5 + 1.0) + 1.0;
        }

        else
        {
          v23 = exp(v30);
        }

        v24 = (1.0 - v23) / (1.0 - factor) * factor;
      }

      *offset = v24 * *velocity * self->_fastScrollMultiplier + updateOffset;
      *velocity = v23 * *velocity;
    }
  }

  if (intervalCopy > 0.0)
  {
    v31 = intervalCopy * lnFactor;
    if (intervalCopy * lnFactor >= -0.5)
    {
      v32 = v31 * (v31 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v32 = exp(v31);
    }

    v33 = intervalCopy * -0.01005;
    if (intervalCopy * -0.01005 >= -0.5)
    {
      v34 = v33 * (v33 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v34 = exp(v33);
    }

    if ((*(&self->_scrollViewFlags + 22) & 4) != 0)
    {
      *velocity = fmax(fmin(*velocity, 3.0), -3.0);
      *(&self->_scrollViewFlags + 5) &= ~0x40000u;
    }

    v35 = v34 * (*offset - min) + min;
    if (*offset >= min)
    {
      v35 = maxCopy + v34 * (*offset - maxCopy);
    }

    *offset = v35;
    *offset = v35 + (1.0 - v32) * (v34 * factor * *velocity) / (1.0 - factor);
    *velocity = v32 * v34 * *velocity;
    self->_fastScrollCount = 0;
    self->_fastScrollMultiplier = 1.0;
    [(UIScrollView *)self _resetDiscreteFastScroll];
  }

LABEL_43:
  v36 = *offset;
  v37 = maxCopy + 0.5;
  v38 = maxCopy > 0.0 || v36 < v37;
  if (!v38 && ((accuracy = self->_accuracy, accuracy == 1.0) ? (v41 = round(v36)) : (v40 = floor(v36), v41 = v40 + round((v36 - v40) * accuracy) / accuracy), v41 != 0.0) || (v36 > min + -0.5 ? (v42 = v36 < v37) : (v42 = 0), !v42))
  {
    self->_fastScrollCount = 0;
    self->_fastScrollMultiplier = 1.0;
    [(UIScrollView *)self _resetDiscreteFastScroll];
    return 1;
  }

  return 0;
}

- (void)_getStandardDecelerationOffset:(double *)offset forTimeInterval:(double)interval min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)velocity
{
  minCopy = min;
  if (min >= max)
  {
    maxCopy = min;
  }

  else
  {
    maxCopy = max;
  }

  v15 = interval * lnFactor;
  if (v15 >= -0.5)
  {
    v16 = v15 * (v15 * 0.5 + 1.0) + 1.0;
  }

  else
  {
    v16 = exp(v15);
  }

  *offset = *offset + self->_fastScrollMultiplier * (*velocity * ((1.0 - v16) / (1.0 - factor) * factor));
  *velocity = v16 * *velocity;
  if (*offset < minCopy || (minCopy = maxCopy, *offset > maxCopy))
  {
    *offset = minCopy;
    *velocity = 0.0;
  }
}

- (BOOL)_smoothScrollApplyPendingAsyncCompletionResultWithUpdateTime:(uint64_t)time outFinishedDecelerating:(_BYTE *)decelerating
{
  if (!time)
  {
    return 0;
  }

  if (decelerating)
  {
    *decelerating = 0;
  }

  v4 = *(time + 1856);
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    v7 = v4[5];
    firstObject = [v7 firstObject];
    if (firstObject)
    {
      [v7 removeObjectAtIndex:0];
      finishedDecelerating = [firstObject finishedDecelerating];
      if (finishedDecelerating)
      {
        v10 = *(time + 1856);
        *(time + 1856) = 0;

        if (decelerating)
        {
          *decelerating = 1;
        }
      }

      handled = [firstObject handled];
      [firstObject updateTime];
      if (handled)
      {
        *(time + 648) = v12;
        if (finishedDecelerating)
        {
          [time _stopScrollingNotify:1 pin:1];
        }
      }

      else
      {
        [time _smoothScrollSyncWithUpdateTime:?];
      }
    }
  }

  return v6;
}

- (void)_smoothScrollWithUpdateTime:(double)time
{
  if ((*&self->_scrollViewFlags & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v7 = 0;
    v6 = [UIScrollView _smoothScrollApplyPendingAsyncCompletionResultWithUpdateTime:&v7 outFinishedDecelerating:?];
    if ((v7 & 1) == 0)
    {
      if (v6)
      {
        [(UIScrollView *)self _smoothScrollAsyncWithUpdateTime:self->_asyncScrollDecelerationState state:time];
      }

      else
      {
        [(UIScrollView *)self _smoothScrollSyncWithUpdateTime:time];
      }
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_smoothScrollAsyncWithUpdateTime:(double)time state:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView.m" lineNumber:10365 description:@"Must have async scroll event state"];
  }

  v8 = *(stateCopy + 1);
  *(stateCopy + 1) = time;
  if ((time - v8) * 1000.0 >= 1.0 && (stateCopy[48] & 1) == 0)
  {
    v29 = *MEMORY[0x1E695EFF8];
    width = self->_adjustedDecelerationFactor.width;
    if (width == 0.0)
    {
      width = self->_decelerationFactor.width;
    }

    [(UIScrollView *)self _getStandardDecelerationOffset:&v29 forTimeInterval:stateCopy + 24 min:(time - v8) * 1000.0 max:-1.79769313e308 decelerationFactor:1.79769313e308 decelerationLnFactor:width velocity:self->_decelerationLnFactorH];
    height = self->_adjustedDecelerationFactor.height;
    if (height == 0.0)
    {
      height = self->_decelerationFactor.height;
    }

    [(UIScrollView *)self _getStandardDecelerationOffset:&v29 + 8 forTimeInterval:stateCopy + 32 min:(time - v8) * 1000.0 max:-1.79769313e308 decelerationFactor:1.79769313e308 decelerationLnFactor:height velocity:self->_decelerationLnFactorV];
    v11 = hypot(*(stateCopy + 3), *(stateCopy + 4));
    _cloneEvent = [*(stateCopy + 2) _cloneEvent];
    [_cloneEvent _simulateMomentumWithDelta:self inView:{-*&v29, -*(&v29 + 1)}];
    if (v11 < 0.01)
    {
      stateCopy[48] = 1;
    }

    v13 = *(stateCopy + 5);
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = *(stateCopy + 5);
      *(stateCopy + 5) = v14;

      v13 = *(stateCopy + 5);
    }

    v16 = v13;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__UIScrollView__smoothScrollAsyncWithUpdateTime_state___block_invoke;
    v19[3] = &unk_1E712A870;
    v22 = v8;
    timeCopy = time;
    v24 = v11 < 0.01;
    v17 = v16;
    v20 = v17;
    v21 = &v25;
    [(UIScrollView *)self _asynchronouslyDeliverScrollEvent:_cloneEvent completion:v19];
    if (*(v26 + 24) == 1)
    {
      [UIScrollView _smoothScrollApplyPendingAsyncCompletionResultWithUpdateTime:0 outFinishedDecelerating:?];
    }

    _Block_object_dispose(&v25, 8);
  }
}

void __55__UIScrollView__smoothScrollAsyncWithUpdateTime_state___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_UIScrollViewAsyncScrollEventCompletionResult);
  [(_UIScrollViewAsyncScrollEventCompletionResult *)v4 setHandled:a2];
  [(_UIScrollViewAsyncScrollEventCompletionResult *)v4 setLastUpdateTime:*(a1 + 48)];
  [(_UIScrollViewAsyncScrollEventCompletionResult *)v4 setUpdateTime:*(a1 + 56)];
  [(_UIScrollViewAsyncScrollEventCompletionResult *)v4 setFinishedDecelerating:*(a1 + 64)];
  [*(a1 + 32) addObject:v4];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)_smoothScrollSyncWithUpdateTime:(double)time
{
  v5 = (time - self->_lastUpdateTime) * 1000.0;
  lastSetContentOffsetUnrounded = self->_lastSetContentOffsetUnrounded;
  p_scrollViewFlags = &self->_scrollViewFlags;
  self->_scrollViewFlags.preventsDescendentGestureInteraction = 1;
  if (v5 < 1.0)
  {
    goto LABEL_105;
  }

  self->_scrollViewFlags.preventsDescendentGestureInteraction = [(UIScrollView *)self _preventsDescendentGestureInteractionForTimeInterval:v5];
  [(UIScrollView *)self _revealableContentPadding];
  v93 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self bounds];
  lastUpdateOffsetX = self->_lastUpdateOffsetX;
  lastUpdateOffsetY = self->_lastUpdateOffsetY;
  v95 = lastUpdateOffsetX;
  v96 = lastUpdateOffsetY;
  if ((*(p_scrollViewFlags + 12) & 0x20) != 0)
  {
    v31 = [(UIScrollView *)self _getPagingDecelerationOffset:&v95 forTimeInterval:v5];
  }

  else
  {
    v18 = v14;
    v19 = v15;
    [(UIScrollView *)self _effectiveContentInset];
    v92 = v23;
    v24 = v21;
    v25 = *p_scrollViewFlags;
    if ((*p_scrollViewFlags & 8) != 0)
    {
      v91 = v21;
      v32 = *&self->_accuracy;
      v33.f64[0] = self->_firstPageOffset.horizontal - v20;
      v33.f64[1] = v22 + self->_contentSize.width;
      if (*&v32 == 1.0)
      {
        v35 = vrndaq_f64(v33);
      }

      else
      {
        v34 = vrndmq_f64(v33);
        v35 = vaddq_f64(v34, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v33, v34), *&v32)), vdupq_lane_s64(v32, 0)));
      }

      v36 = v35.f64[0] - v9;
      v37 = v13 + v35.f64[1] - v18;
      if ((*(p_scrollViewFlags + 16) & 0x40) != 0)
      {
        if ((v25 & 0x30) != 0 || (lastUpdateOffsetX >= v36 ? (v38 = lastUpdateOffsetX <= v37) : (v38 = 0), !v38))
        {
          x = self->_adjustedDecelerationTarget.x;
          if (x >= v36)
          {
            v40 = self->_adjustedDecelerationTarget.x;
          }

          else
          {
            v40 = v36;
          }

          if (lastUpdateOffsetX >= x)
          {
            v40 = v36;
          }

          if (x >= v37)
          {
            v41 = v13 + v35.f64[1] - v18;
          }

          else
          {
            v41 = self->_adjustedDecelerationTarget.x;
          }

          if (lastUpdateOffsetX <= x)
          {
            v36 = v40;
          }

          else
          {
            v37 = v41;
          }
        }
      }

      width = self->_adjustedDecelerationFactor.width;
      if (width == 0.0)
      {
        width = self->_decelerationFactor.width;
      }

      v43 = [(UIScrollView *)self _getBouncingDecelerationOffset:&v95 forTimeInterval:&self->_horizontalVelocity lastUpdateOffset:v5 min:self->_lastUpdateOffsetX max:v36 decelerationFactor:v37 decelerationLnFactor:width velocity:self->_decelerationLnFactorH];
      v44 = 32;
      if (!v43)
      {
        v44 = 0;
      }

      v25 = *p_scrollViewFlags & 0xFFFFFFFFFFFFFFDFLL | v44;
      *p_scrollViewFlags = v25;
      v24 = v91;
    }

    else if (self->_horizontalVelocity != 0.0)
    {
      v26 = v21;
      *p_scrollViewFlags = v25 & 0xFFFFFFFFFFFFFFD7;
      v27 = *&self->_accuracy;
      v28.f64[0] = self->_firstPageOffset.horizontal - v20;
      v28.f64[1] = v22 + self->_contentSize.width;
      if (*&v27 == 1.0)
      {
        v30 = vrndaq_f64(v28);
      }

      else
      {
        v29 = vrndmq_f64(v28);
        v30 = vaddq_f64(v29, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v28, v29), *&v27)), vdupq_lane_s64(v27, 0)));
      }

      v45 = self->_adjustedDecelerationFactor.width;
      if (v45 == 0.0)
      {
        v45 = self->_decelerationFactor.width;
      }

      [(UIScrollView *)self _getStandardDecelerationOffset:&v95 forTimeInterval:&self->_horizontalVelocity min:v5 max:v30.f64[0] decelerationFactor:v30.f64[1] - v18 decelerationLnFactor:v45 velocity:self->_decelerationLnFactorH];
      v25 = *p_scrollViewFlags;
      v24 = v26;
    }

    if ((v25 & 4) != 0)
    {
      accuracy = self->_accuracy;
      v52 = v24 + self->_contentSize.height;
      if (accuracy == 1.0)
      {
        v54 = round(v52);
      }

      else
      {
        v53 = floor(v52);
        v54 = v53 + round(accuracy * (v52 - v53)) / accuracy;
      }

      [(UIScrollView *)self _maxTopOffsetAdjustedForRevealableContentPadding:v11 + v54 - v19];
      v56 = v55;
      v57 = self->_accuracy;
      v58 = self->_firstPageOffset.vertical - v92;
      if (v57 == 1.0)
      {
        v60 = round(v58);
      }

      else
      {
        v59 = floor(v58);
        v60 = v59 + round(v57 * (v58 - v59)) / v57;
      }

      v61 = v60 - v93;
      if ((*(p_scrollViewFlags + 16) & 0x80) != 0)
      {
        if ((*p_scrollViewFlags & 0x30) != 0 || (v96 >= v61 ? (v62 = v96 <= v56) : (v62 = 0), !v62))
        {
          y = self->_adjustedDecelerationTarget.y;
          if (y >= v61)
          {
            v64 = self->_adjustedDecelerationTarget.y;
          }

          else
          {
            v64 = v60 - v93;
          }

          if (v96 >= y)
          {
            v64 = v60 - v93;
          }

          if (y >= v56)
          {
            v65 = v56;
          }

          else
          {
            v65 = self->_adjustedDecelerationTarget.y;
          }

          if (v96 > y)
          {
            v56 = v65;
          }

          else
          {
            v61 = v64;
          }
        }
      }

      height = self->_adjustedDecelerationFactor.height;
      if (height == 0.0)
      {
        height = self->_decelerationFactor.height;
      }

      v67 = [(UIScrollView *)self _getBouncingDecelerationOffset:&v96 forTimeInterval:&self->_verticalVelocity lastUpdateOffset:v5 min:self->_lastUpdateOffsetY max:v61 decelerationFactor:v56 decelerationLnFactor:height velocity:self->_decelerationLnFactorV];
      v68 = 16;
      if (!v67)
      {
        v68 = 0;
      }

      v25 = *p_scrollViewFlags & 0xFFFFFFFFFFFFFFEFLL | v68;
      *p_scrollViewFlags = v25;
    }

    else
    {
      verticalVelocity = self->_verticalVelocity;
      if (verticalVelocity != 0.0)
      {
        *p_scrollViewFlags = v25 & 0xFFFFFFFFFFFFFFEBLL;
        v47 = *&self->_accuracy;
        v48.f64[0] = self->_firstPageOffset.vertical - v92;
        v48.f64[1] = v24 + self->_contentSize.height;
        if (*&v47 == 1.0)
        {
          v50 = vrndaq_f64(v48);
        }

        else
        {
          v49 = vrndmq_f64(v48);
          v50 = vaddq_f64(v49, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v48, v49), *&v47)), vdupq_lane_s64(v47, 0)));
        }

        v69 = self->_adjustedDecelerationFactor.height;
        if (v69 == 0.0)
        {
          v69 = self->_decelerationFactor.height;
        }

        [(UIScrollView *)self _getStandardDecelerationOffset:&v96 forTimeInterval:&self->_verticalVelocity min:v5 max:v50.f64[0] decelerationFactor:v50.f64[1] - v19 decelerationLnFactor:v69 velocity:self->_decelerationLnFactorV];
        v25 = *p_scrollViewFlags;
      }
    }

    if ((v25 & 0x30) != 0)
    {
      v31 = 0;
    }

    else
    {
      verticalVelocity = self->_horizontalVelocity;
      v31 = verticalVelocity * verticalVelocity + self->_verticalVelocity * self->_verticalVelocity < 0.0001;
      if ((*(p_scrollViewFlags + 16) & 0x40) != 0)
      {
        if (verticalVelocity > 0.0 && (v70 = self->_adjustedDecelerationTarget.x, v95 >= v70) || verticalVelocity < 0.0 && (v70 = self->_adjustedDecelerationTarget.x, v95 <= v70))
        {
          v95 = v70;
          self->_horizontalVelocity = 0.0;
          verticalVelocity = fabs(self->_verticalVelocity);
          if (verticalVelocity < 0.01)
          {
            v31 = 1;
          }
        }

        else
        {
          verticalVelocity = fabs(verticalVelocity);
          if (verticalVelocity < 0.01)
          {
            verticalVelocity = v95;
            v71 = self->_adjustedDecelerationTarget.x;
            if (v95 != v71)
            {
              v31 = 0;
              verticalVelocity = dbl_18A6837C0[v95 < v71];
              self->_horizontalVelocity = verticalVelocity;
            }
          }
        }
      }

      if ((*(p_scrollViewFlags + 16) & 0x80) != 0)
      {
        v72 = self->_verticalVelocity;
        if (v72 > 0.0 && (v73 = self->_adjustedDecelerationTarget.y, v96 >= v73) || v72 < 0.0 && (v73 = self->_adjustedDecelerationTarget.y, v96 <= v73))
        {
          v96 = v73;
          self->_verticalVelocity = 0.0;
          verticalVelocity = fabs(self->_horizontalVelocity);
          if (verticalVelocity < 0.01)
          {
            v31 = 1;
          }
        }

        else
        {
          verticalVelocity = fabs(v72);
          if (verticalVelocity < 0.01)
          {
            verticalVelocity = v96;
            v74 = self->_adjustedDecelerationTarget.y;
            if (v96 != v74)
            {
              v31 = 0;
              verticalVelocity = dbl_18A6837C0[v96 < v74];
              self->_verticalVelocity = verticalVelocity;
            }
          }
        }
      }
    }

    [(UIScrollView *)self _updateRubberbandingStatisticTrackingState];
  }

  [(UIScrollView *)self contentOffset];
  v77 = v76;
  v78 = *&self->_accuracy;
  if (*&v78 == 1.0)
  {
    v84 = v96;
    if (round(v95) == round(v75))
    {
      v88.f64[0] = v96;
      v88.f64[1] = v77;
      v87 = vrndaq_f64(v88);
LABEL_101:
      if ((vmovn_s64(vmvnq_s8(vceqq_f64(v87, vdupq_laneq_s64(v87, 1)))).u32[0] & 1) == 0)
      {
        goto LABEL_103;
      }
    }
  }

  else
  {
    v79.f64[0] = v95;
    v79.f64[1] = v75;
    v80 = vrndmq_f64(v79);
    v81 = vdupq_lane_s64(v78, 0);
    v82 = vaddq_f64(v80, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v79, v80), *&v78)), v81));
    v83 = vmovn_s64(vmvnq_s8(vceqq_f64(v82, vdupq_laneq_s64(v82, 1)))).u8[0];
    v84 = v96;
    if ((v83 & 1) == 0)
    {
      v85.f64[0] = v96;
      v85.f64[1] = v77;
      v86 = vrndmq_f64(v85);
      v87 = vaddq_f64(v86, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v85, v86), *&v78)), v81));
      goto LABEL_101;
    }
  }

  ++dword_1EA9690BC;
LABEL_103:
  self->_lastUpdateOffsetX = v95;
  self->_lastUpdateOffsetY = v84;
  *(p_scrollViewFlags + 12) |= 0x80000uLL;
  [(UIScrollView *)self setContentOffset:?];
  if (v31)
  {
    p_scrollViewFlags->preventsDescendentGestureInteraction = 0;
    [(UIScrollView *)self _stopScrollingNotify:1 pin:1];
  }

LABEL_105:
  if (qword_1EA969130 != -1)
  {
    dispatch_once(&qword_1EA969130, &__block_literal_global_2087_0);
  }

  if (byte_1EA9690B9 == 1)
  {
    v89 = vsubq_f64(lastSetContentOffsetUnrounded, self->_lastSetContentOffsetUnrounded);
    lastOffsetUpdateOffset = self->_lastOffsetUpdateOffset;
    self->_lastOffsetUpdateOffset = v89;
    *&v89.width = vmovn_s64(vcltzq_f64(vmulq_f64(lastOffsetUpdateOffset, v89)));
    if ((LODWORD(v89.width) | HIDWORD(v89.width)))
    {
      self->_smoothScrollCallbackSkips = -1;
    }

    self->_lastOffsetUpdateTimeInterval = time - self->_lastUpdateTime;
  }

  self->_lastUpdateTime = time;
}

- (void)_smoothScrollDisplayLink:(id)link
{
  linkCopy = link;
  kdebug_trace();
  if (_UIUpdateCycleEnabled())
  {
    v4 = *&_currentModelMediaTime;
  }

  else
  {
    v4 = 0.0;
  }

  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [linkCopy timestamp];
    v4 = v5;
  }

  [linkCopy targetTimestamp];
  v7 = v6;
  v8 = _UIMachTimeForMediaTime(v4);
  v9 = _UIMachTimeForMediaTime(v7);
  _UIQOSProcessingBegin("UIScrollViewSmoothScrollDisplayLink", 0, v8, v9);
  if (qword_1EA969130 != -1)
  {
    dispatch_once(&qword_1EA969130, &__block_literal_global_2087_0);
  }

  if (byte_1EA9690B9 != 1)
  {
    goto LABEL_22;
  }

  if (self->_lastOffsetUpdateTimeInterval > 0.0)
  {
    v10 = vbslq_s8(vcltzq_f64(self->_lastOffsetUpdateOffset), vnegq_f64(self->_lastOffsetUpdateOffset), self->_lastOffsetUpdateOffset);
    if (*v10.i64 < *&v10.i64[1])
    {
      v10.i64[0] = v10.i64[1];
    }

    if (*v10.i64 > 0.0 && !self->_smoothScrollCallbackCurrentSkipCount)
    {
      if (*v10.i64 > 0.75 || self->_smoothScrollCallbackSkips)
      {
        if (*v10.i64 > 0.5 || self->_smoothScrollCallbackSkips != 1)
        {
          goto LABEL_19;
        }

        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      self->_smoothScrollCallbackSkips = v11;
    }
  }

LABEL_19:
  smoothScrollCallbackCurrentSkipCount = self->_smoothScrollCallbackCurrentSkipCount;
  if (self->_smoothScrollCallbackSkips > smoothScrollCallbackCurrentSkipCount)
  {
    self->_smoothScrollCallbackCurrentSkipCount = smoothScrollCallbackCurrentSkipCount + 1;
    kdebug_trace();
    goto LABEL_25;
  }

  self->_smoothScrollCallbackCurrentSkipCount = 0;
LABEL_22:
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [MEMORY[0x1E6979518] setCommitTime:v4 + (v7 - v4) * 0.5];
    [MEMORY[0x1E6979518] setLowLatency:0];
  }

  [(UIScrollView *)self _smoothScrollWithUpdateTime:v4];
LABEL_25:
  _UIQOSProcessingEnd();
}

- (void)_pushTrackingRunLoopModeIfNecessaryForReason:(id)reason
{
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x100000000) == 0)
  {
    *&self->_scrollViewFlags = scrollViewFlags | 0x100000000;
    [UIApp _pushRunLoopMode:@"UITrackingRunLoopMode" requester:self reason:reason];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    WeakRetained = objc_loadWeakRetained(&self->_focusSystemHoldingLock);

    if (has_internal_diagnostics)
    {
      if (WeakRetained)
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Found a focus system already holding a lock for this scroll view when trying to set a lock.", buf, 2u);
        }
      }
    }

    else if (WeakRetained)
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &_pushTrackingRunLoopModeIfNecessaryForReason____s_category) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Found a focus system already holding a lock for this scroll view when trying to set a lock.", buf, 2u);
      }
    }

    _focusSystem = [(UIView *)self _focusSystem];
    objc_storeWeak(&self->_focusSystemHoldingLock, _focusSystem);

    v8 = objc_loadWeakRetained(&self->_focusSystemHoldingLock);
    [v8 _lockEnvironment:self];

    if ([UIApp _isSpringBoard])
    {
      trackingWatchdogTimer = self->_trackingWatchdogTimer;
      if (trackingWatchdogTimer)
      {
        [(NSTimer *)trackingWatchdogTimer invalidate];
      }

      v10 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_SpringBoardTrackingModeWatchdogTimeout, @"SpringBoardTrackingModeWatchdogTimeout", _UIInternalPreferenceUpdateDouble);
      v11 = *&qword_1EA95E810;
      if (v10)
      {
        v11 = 60.0;
      }

      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v11];
      v13 = objc_alloc(MEMORY[0x1E695DFF0]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__UIScrollView__pushTrackingRunLoopModeIfNecessaryForReason___block_invoke;
      v19[3] = &unk_1E7106478;
      v19[4] = self;
      v14 = [v13 initWithFireDate:v12 interval:0 repeats:v19 block:0.0];
      v15 = self->_trackingWatchdogTimer;
      self->_trackingWatchdogTimer = v14;

      if (self->_trackingWatchdogTimer)
      {
        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        [currentRunLoop addTimer:self->_trackingWatchdogTimer forMode:@"UITrackingRunLoopMode"];
      }
    }

    [(UIScrollView *)self _beginScrollingCursorOverrideIfNecessary];
  }
}

void __61__UIScrollView__pushTrackingRunLoopModeIfNecessaryForReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _popTrackingRunLoopModeIfNecessaryForReason:@"WATCHDOG TIMED OUT"];
  v2 = *(__UILogGetCategoryCachedImpl("SpringBoardRunLoopMode", &_UIScrollViewContentYOffsetConstraintIdentifier_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2050;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Tracking run loop mode watchdog triggered (42144269) <%{public}@ %{public}p>", &v7, 0x16u);
  }
}

- (void)_popTrackingRunLoopModeIfNecessaryForReason:(id)reason
{
  reasonCopy = reason;
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x100000000) != 0)
  {
    *&self->_scrollViewFlags = scrollViewFlags & 0xFFFFFFFEFFFFFFFFLL;
    if ([UIApp _isSpringBoard])
    {
      trackingWatchdogTimer = self->_trackingWatchdogTimer;
      if (trackingWatchdogTimer)
      {
        [(NSTimer *)trackingWatchdogTimer invalidate];
        v6 = self->_trackingWatchdogTimer;
        self->_trackingWatchdogTimer = 0;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_focusSystemHoldingLock);
    [WeakRetained _unlockEnvironment:self];

    objc_storeWeak(&self->_focusSystemHoldingLock, 0);
    objc_storeStrong(&GScrollerPoppingRunLoopMode, self);
    [UIApp _popRunLoopMode:@"UITrackingRunLoopMode" requester:self reason:reasonCopy];
    v8 = GScrollerPoppingRunLoopMode;
    GScrollerPoppingRunLoopMode = 0;

    v9 = objc_loadWeakRetained(&self->_animation);
    if (!v9 || (v10 = v9, v11 = objc_loadWeakRetained(&self->_animation), v12 = v11[152], v11, v10, (v12 & 1) == 0))
    {
      [(UIScrollView *)self _endScrollingCursorOverrideIfNecessary];
    }
  }
}

- (void)_runLoopModePopped:(id)popped
{
  poppedCopy = popped;
  if (self->_scrollHeartbeat)
  {
    if (!GScrollerPoppingRunLoopMode || GScrollerPoppingRunLoopMode == self)
    {
      v9 = poppedCopy;
      userInfo = [poppedCopy userInfo];
      v7 = [userInfo objectForKey:@"_UIApplicationRunLoopMode"];
      v8 = [v7 isEqualToString:@"UITrackingRunLoopMode"];

      poppedCopy = v9;
      if (v8)
      {
        [(UIScrollView *)self _stopScrollingNotify:1 pin:1];
        poppedCopy = v9;
      }
    }
  }
}

- (void)_prepareToPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity nudgingBoundsWithVelocity:(BOOL)withVelocity performExtraPageIfPastPagingBoundary:(BOOL)boundary
{
  boundaryCopy = boundary;
  withVelocityCopy = withVelocity;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  if (withVelocityCopy)
  {
    v12 = v12 + verticalVelocity;
    v17 = v11 + velocity;
  }

  else
  {
    v17 = v11;
  }

  if ((*(&self->_scrollViewFlags + 12) & 0x20) == 0)
  {
    return;
  }

  v90 = v12;
  [(UIScrollView *)self _interpageSpacing];
  v19 = v14 + v18;
  v87 = v16;
  v88 = v16 + v20;
  [(UIScrollView *)self _pagingOrigin];
  v22 = v21;
  v89 = v23;
  [(UIScrollView *)self _effectiveContentInset];
  v84 = v25;
  v85 = v24;
  v86 = v26;
  v28 = v27;
  v29 = v17 - v22;
  v30 = fmod(v17 - v22, v19);
  if (v19 <= 0.0 || v30 == 0.0)
  {
    self->_pageDecelerationTarget.x = v17;
    v32 = v90;
    v33 = v88;
    goto LABEL_56;
  }

  if (velocity <= 0.3)
  {
    if (velocity >= -0.3)
    {
      self->_pageDecelerationTarget.x = v17;
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_25;
      }

      accuracy = self->_accuracy;
      v39 = v28 + self->_contentSize.width;
      v53 = accuracy == 1.0;
      v40 = round(v39);
      v41 = floor(v39);
      v42 = v41 + round(accuracy * (v39 - v41)) / accuracy;
      if (v53)
      {
        v42 = v40;
      }

      if (v17 >= v42 - v14)
      {
        v37 = ceil((self->_pageDecelerationTarget.x - v22) / v19);
      }

      else
      {
LABEL_25:
        v37 = floor((self->_pageDecelerationTarget.x - v22) / v19 + 0.5);
      }

      v32 = v90;
      goto LABEL_32;
    }

    if ((*(&self->_scrollViewFlags + 12) & 0x40) != 0)
    {
      x = self->_pageDecelerationTarget.x;
    }

    else
    {
      if (!boundaryCopy)
      {
        v36 = v17;
        goto LABEL_28;
      }

      v34 = v30 / v19 < 0.5;
      x = v17;
      v36 = v17;
      if (!v34)
      {
        goto LABEL_28;
      }
    }

    v36 = x - v19;
    v29 = x - v19 - v22;
LABEL_28:
    self->_pageDecelerationTarget.x = v36;
    v37 = floor(v29 / v19);
    goto LABEL_29;
  }

  if ((*(&self->_scrollViewFlags + 12) & 0x80) != 0)
  {
    v31 = v19 + self->_pageDecelerationTarget.x;
  }

  else
  {
    self->_pageDecelerationTarget.x = v17;
    if (!boundaryCopy || v30 / v19 <= 0.5)
    {
      goto LABEL_20;
    }

    v31 = v17 + v19;
  }

  self->_pageDecelerationTarget.x = v31;
  v29 = v31 - v22;
LABEL_20:
  v37 = ceil(v29 / v19);
LABEL_29:
  v32 = v90;
LABEL_32:
  v43 = v22 + v19 * v37;
  horizontal = self->_firstPageOffset.horizontal;
  v53 = v37 == 0.0;
  v45 = 0.0;
  if (v53)
  {
    v45 = self->_firstPageOffset.horizontal;
  }

  v46 = v43 + v45;
  self->_pageDecelerationTarget.x = v46;
  v47 = *&self->_accuracy;
  v48 = horizontal - v84;
  v49.f64[0] = v28 + self->_contentSize.width;
  v49.f64[1] = v48;
  if (*&v47 == 1.0)
  {
    v51 = vrndaq_f64(v49);
  }

  else
  {
    v50 = vrndmq_f64(v49);
    v51 = vaddq_f64(v50, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v49, v50), *&v47)), vdupq_lane_s64(v47, 0)));
  }

  v33 = v88;
  if (v51.f64[0] - v14 < v46)
  {
    v46 = v51.f64[0] - v14;
  }

  if (v51.f64[1] >= v46)
  {
    v46 = v51.f64[1];
  }

  self->_pageDecelerationTarget.x = v46;
  if (velocity <= 0.3)
  {
    if (velocity >= -0.3)
    {
      v53 = v46 < v17 + v22 || velocity == 0.0;
      v54 = v53;
      v55 = 128;
      if (v54)
      {
        v55 = 0;
      }

      v52 = v55 | ((v46 < v17 + v22) << 6) | *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFF3FLL;
    }

    else
    {
      v52 = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFF3FLL | 0x40;
    }
  }

  else
  {
    v52 = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFF3FLL | 0x80;
  }

  *(&self->_scrollViewFlags + 12) = v52;
LABEL_56:
  v56 = v32 - v89;
  v57 = fmod(v32 - v89, v33);
  if (v33 <= 0.0 || v57 == 0.0)
  {
    self->_pageDecelerationTarget.y = v32;
    return;
  }

  if (verticalVelocity <= 0.3)
  {
    if (verticalVelocity >= -0.3)
    {
      self->_pageDecelerationTarget.y = v32;
      v64 = dyld_program_sdk_at_least();
      v58 = v86;
      if (v64)
      {
        v65 = self->_accuracy;
        v66 = v86 + self->_contentSize.height;
        v53 = v65 == 1.0;
        v67 = round(v66);
        v68 = floor(v66);
        v69 = v68 + round(v65 * (v66 - v68)) / v65;
        if (v53)
        {
          v69 = v67;
        }

        if (v32 >= v69 - v87)
        {
          v62 = (self->_pageDecelerationTarget.y - v89) / v33;
          goto LABEL_72;
        }
      }

      v70 = (self->_pageDecelerationTarget.y - v89) / v33 + 0.5;
LABEL_81:
      v63 = floor(v70);
      goto LABEL_82;
    }

    v58 = v86;
    if (*(&self->_scrollViewFlags + 13))
    {
      y = self->_pageDecelerationTarget.y;
    }

    else
    {
      if (!boundaryCopy)
      {
        v61 = v32;
        goto LABEL_80;
      }

      v34 = v57 / v33 < 0.5;
      y = v32;
      v61 = v32;
      if (!v34)
      {
        goto LABEL_80;
      }
    }

    v61 = y - v33;
    v56 = y - v33 - v89;
LABEL_80:
    self->_pageDecelerationTarget.y = v61;
    v70 = v56 / v33;
    goto LABEL_81;
  }

  v58 = v86;
  if ((*(&self->_scrollViewFlags + 13) & 2) != 0)
  {
    v59 = v33 + self->_pageDecelerationTarget.y;
  }

  else
  {
    self->_pageDecelerationTarget.y = v32;
    if (!boundaryCopy || v57 / v33 <= 0.5)
    {
      goto LABEL_71;
    }

    v59 = v32 + v33;
  }

  self->_pageDecelerationTarget.y = v59;
  v56 = v59 - v89;
LABEL_71:
  v62 = v56 / v33;
LABEL_72:
  v63 = ceil(v62);
LABEL_82:
  v71 = v89 + v33 * v63;
  vertical = self->_firstPageOffset.vertical;
  v53 = v63 == 0.0;
  v73 = 0.0;
  if (v53)
  {
    v73 = self->_firstPageOffset.vertical;
  }

  v74 = v71 + v73;
  self->_pageDecelerationTarget.y = v74;
  v75 = *&self->_accuracy;
  v76 = vertical - v85;
  v77.f64[0] = v58 + self->_contentSize.height;
  v77.f64[1] = v76;
  if (*&v75 == 1.0)
  {
    v79 = vrndaq_f64(v77);
  }

  else
  {
    v78 = vrndmq_f64(v77);
    v79 = vaddq_f64(v78, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v77, v78), *&v75)), vdupq_lane_s64(v75, 0)));
  }

  if (v79.f64[0] - v87 < v74)
  {
    v74 = v79.f64[0] - v87;
  }

  if (v79.f64[1] >= v74)
  {
    v74 = v79.f64[1];
  }

  self->_pageDecelerationTarget.y = v74;
  if (verticalVelocity <= 0.3)
  {
    if (verticalVelocity >= -0.3)
    {
      v82 = v74 < v32 + v89 || verticalVelocity == 0.0;
      v83 = 512;
      if (v82)
      {
        v83 = 0;
      }

      v80 = v83 | ((v74 < v32 + v89) << 8) | *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v80 = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFCFFLL | 0x100;
    }
  }

  else
  {
    v80 = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  }

  *(&self->_scrollViewFlags + 12) = v80;
}

- (void)_startTimer:(BOOL)timer
{
  timerCopy = timer;
  if (qword_1EA969130 != -1)
  {
    dispatch_once(&qword_1EA969130, &__block_literal_global_2087_0);
  }

  if (byte_1EA9690B9 == 1)
  {
    self->_smoothScrollCallbackSkips = 0;
    self->_lastOffsetUpdateTimeInterval = 0.0;
  }

  scrollHeartbeat = self->_scrollHeartbeat;
  if (scrollHeartbeat)
  {
    [(CADisplayLink *)scrollHeartbeat setPaused:0];
  }

  else
  {
    window = [(UIView *)self window];

    if (window)
    {
      window2 = [(UIView *)self window];
      screen = [window2 screen];
      v9 = [screen displayLinkWithTarget:self selector:sel__smoothScrollDisplayLink_];
      v10 = self->_scrollHeartbeat;
      self->_scrollHeartbeat = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__smoothScrollDisplayLink_];
      window2 = self->_scrollHeartbeat;
      self->_scrollHeartbeat = v11;
    }

    v12 = _UIVariableFrameDurationEnabled();
    v13 = self->_scrollHeartbeat;
    if (v12)
    {
      [(CADisplayLink *)self->_scrollHeartbeat setHighFrameRateReason:1048607];
      [(_UIScrollViewVFD *)self->_vfd updateDisplayLink:?];
    }

    else
    {
      [(CADisplayLink *)self->_scrollHeartbeat maximumRefreshRate];
      if (v14 != 0.0)
      {
        [(CADisplayLink *)v13 setPreferredFramesPerSecond:llround(1.0 / v14)];
      }
    }

    v15 = self->_scrollHeartbeat;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v15 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(UIScrollView *)self _registerForSpringBoardBlankedScreenNotification];
    self->_lastUpdateTime = CACurrentMediaTime();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__runLoopModePopped_ name:@"_UIApplicationRunLoopModePopNotification" object:UIApp];

    dword_1EA9690BC = 0;
  }

  width = self->_adjustedDecelerationFactor.width;
  if (width == 0.0)
  {
    width = self->_decelerationFactor.width;
  }

  self->_decelerationLnFactorH = log(width);
  height = self->_adjustedDecelerationFactor.height;
  if (height == 0.0)
  {
    height = self->_decelerationFactor.height;
  }

  self->_decelerationLnFactorV = log(height);
  v32 = 0;
  v20 = [(UIScrollView *)self _canPerformAsyncScrollDecelerationReturningEvent:&v32];
  v21 = v32;
  v22 = 0;
  if (v20)
  {
    v22 = objc_alloc_init(_UIScrollViewAsyncScrollDecelerationState);
    _cloneEvent = [v21 _cloneEvent];
    scrollEvent = v22->_scrollEvent;
    v22->_scrollEvent = _cloneEvent;

    [(UIScrollViewPanGestureRecognizer *)self->_pan velocityInView:self];
    v26.f64[1] = v25;
    v22->_velocity = vmulq_n_f64(vnegq_f64(v26), self->_velocityScaleFactor);
    v22->_lastUpdateTime = self->_lastUpdateTime;
  }

  asyncScrollDecelerationState = self->_asyncScrollDecelerationState;
  self->_asyncScrollDecelerationState = v22;

  if (timerCopy)
  {
    self->_telemetryOffsetChangeHighRateDuration = 0.0;
    self->_telemetryOffsetChangeCount = 0;
    self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
    _UIQOSManagedCommitsBegin(self, @"Deceleration");
    [(_UIScrollViewVFD *)self->_vfd activateSubreason:?];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690D0);
    v29 = *(CategoryCachedImpl + 8);
    if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      _os_signpost_emit_unreliably_with_name_impl();
    }

    kdebug_trace();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained scrollViewWillBeginDecelerating:self];
    }

    kdebug_trace();
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"WillStartSmoothScrolling" object:self];
  }
}

- (void)_setShouldAdjustLayoutToCollapseTopSpacing:(BOOL)spacing
{
  v3 = *(&self->_scrollViewFlags + 5);
  if (((((v3 & 0x10000) == 0) ^ spacing) & 1) == 0)
  {
    if (spacing)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_scrollViewFlags + 5) = v3 & 0xFFFEFFFF | v4;
    [(UIScrollView *)self _layoutAdjustmentsDidChange];
  }
}

- (void)_setShouldAdjustLayoutToDrawTopSeparator:(BOOL)separator
{
  v3 = *(&self->_scrollViewFlags + 5);
  if (((((v3 & 0x20000) == 0) ^ separator) & 1) == 0)
  {
    if (separator)
    {
      v4 = 0x20000;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_scrollViewFlags + 5) = v3 & 0xFFFDFFFF | v4;
    [(UIScrollView *)self _layoutAdjustmentsDidChange];
  }
}

- (void)_setTopLayoutInsetForSidebar:(double)sidebar
{
  if (self->_topLayoutInsetForSidebar != sidebar)
  {
    self->_topLayoutInsetForSidebar = sidebar;
    [(UIScrollView *)self _layoutAdjustmentsDidChange];
  }
}

- (void)_traitCollectionDidChangeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  if (internal->var4.var0)
  {
    [internal->var1 displayScale];
    if (v5 != 0.0)
    {
      self->_accuracy = v5;
    }
  }

  v6.receiver = self;
  v6.super_class = UIScrollView;
  [(UIView *)&v6 _traitCollectionDidChangeInternal:internal];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v18.receiver = self;
  v18.super_class = UIScrollView;
  [(UIView *)&v18 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    [(UIScrollView *)self _adjustScrollIndicatorsIfNeeded:1 forceRebuild:?];
    [(UIScrollView *)self _updateAccessories];
  }

  if (v7 != v9)
  {
    [(UIScrollView *)self contentOffset];
    v12 = v11;
    v14 = v13;
    [(UIScrollView *)self _roundedProposedContentOffset:?];
    if (v12 != v16 || v14 != v15)
    {
      [(UIScrollView *)self setContentOffset:?];
    }
  }

  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom != [changeCopy userInterfaceIdiom])
  {
    [(UIScrollView *)self _allowsKeyboardScrollingDidUpdate];
  }
}

- (void)_adjustScrollerIndicators:(BOOL)indicators alwaysShowingThem:(BOOL)them
{
  if (self->_staticScrollBar)
  {
    return;
  }

  indicatorsCopy = indicators;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    return;
  }

  if (!self->_horizontalScrollIndicator && [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
  {
    v9 = CreateScrollIndicator(self, 0);
    horizontalScrollIndicator = self->_horizontalScrollIndicator;
    self->_horizontalScrollIndicator = v9;

    [(UIView *)self->_horizontalScrollIndicator setAutoresizingMask:8];
    indicatorsCopy = 1;
  }

  if (!self->_verticalScrollIndicator && [(UIScrollView *)self _effectiveShowsVerticalScrollIndicator])
  {
    indicatorsCopy = 1;
    v11 = CreateScrollIndicator(self, 1u);
    verticalScrollIndicator = self->_verticalScrollIndicator;
    self->_verticalScrollIndicator = v11;

    if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    [(UIView *)self->_verticalScrollIndicator setAutoresizingMask:v13];
  }

  [(NSTimer *)self->_verticalScrollIndicatorHideDelayTimer invalidate];
  verticalScrollIndicatorHideDelayTimer = self->_verticalScrollIndicatorHideDelayTimer;
  self->_verticalScrollIndicatorHideDelayTimer = 0;

  [(NSTimer *)self->_horizontalScrollIndicatorHideDelayTimer invalidate];
  horizontalScrollIndicatorHideDelayTimer = self->_horizontalScrollIndicatorHideDelayTimer;
  self->_horizontalScrollIndicatorHideDelayTimer = 0;

  [(UIView *)self bounds];
  v74 = v17;
  v75 = v16;
  v76 = v19;
  v77 = v18;
  [(UIScrollView *)self contentOffset];
  v71 = v21;
  v72 = v20;
  [(UIScrollView *)self _effectiveContentInset];
  v25.f64[0] = v76;
  v27 = v26;
  v28 = v23;
  v29 = v24;
  v30 = *&self->_accuracy;
  v73 = v22;
  if (*&v30 == 1.0)
  {
    v34 = fmin(round(v76) / round(v23 + v22 + self->_contentSize.height), 1.0);
    v37.f64[0] = v77;
    v37.f64[1] = v24 + v27 + self->_contentSize.width;
    v36 = vrndaq_f64(v37);
  }

  else
  {
    v25.f64[1] = v23 + v22 + self->_contentSize.height;
    v31 = vrndmq_f64(v25);
    v32 = vdupq_lane_s64(v30, 0);
    v33 = vaddq_f64(v31, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v25, v31), *&v30)), v32));
    v34 = fmin(vdivq_f64(v33, vdupq_laneq_s64(v33, 1)).f64[0], 1.0);
    v33.f64[0] = v77;
    v33.f64[1] = v24 + v27 + self->_contentSize.width;
    v35 = vrndmq_f64(v33);
    v36 = vaddq_f64(v35, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v33, v35), *&v30)), v32));
  }

  *&v69 = *&vdivq_f64(v36, vdupq_laneq_s64(v36, 1));
  WeakRetained = objc_loadWeakRetained(&self->_animation);
  scrollViewFlags = self->_scrollViewFlags;
  v40 = (scrollViewFlags & 0x40000080) != 0 && scrollViewFlags < 0;
  v41 = [(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewShouldScrollVertically:self];
  v42 = [(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollViewShouldScrollHorizontally:self];
  if ((~*&self->_scrollViewFlags & 0x800003) == 0)
  {
    revealsVerticalScrollIndicator = 1;
LABEL_24:
    v44 = 1;
LABEL_25:
    revealsHorizontalScrollIndicator = 1;
    goto LABEL_26;
  }

  revealsVerticalScrollIndicator = 1;
  if (self->_scrollHeartbeat)
  {
    goto LABEL_24;
  }

  v44 = 1;
  revealsHorizontalScrollIndicator = 1;
  if (!them)
  {
    v49 = *(&self->_scrollViewFlags + 12);
    if ((v49 & 0x2000) == 0)
    {
      if ((v49 & 2) == 0)
      {
        revealsVerticalScrollIndicator = [WeakRetained revealsVerticalScrollIndicator];
        v49 = *(&self->_scrollViewFlags + 12);
      }

      if (v49)
      {
        v44 = 0;
        goto LABEL_25;
      }

      revealsHorizontalScrollIndicator = [WeakRetained revealsHorizontalScrollIndicator];
      v44 = 0;
    }
  }

LABEL_26:
  v46 = fmin(v69, 1.0);
  v47 = v34 <= 0.99;
  if (((v40 | v42) & 1) == 0)
  {
    if (v46 <= 0.99)
    {
      v48 = revealsHorizontalScrollIndicator;
    }

    else
    {
      v48 = 0;
    }

    if (!v40)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v48 = 0;
  if (v40)
  {
LABEL_40:
    [(UIView *)self->_horizontalScrollIndicator layer];
    v50 = v40;
    v51 = revealsVerticalScrollIndicator;
    v53 = v52 = v48;
    [v53 removeAnimationForKey:@"opacity"];

    layer = [(UIView *)self->_verticalScrollIndicator layer];
    [layer removeAnimationForKey:@"opacity"];

    v48 = v52;
    revealsVerticalScrollIndicator = v51;
    v40 = v50;
    v47 = v34 <= 0.99;
  }

LABEL_41:
  if (v44 && (*(&self->_scrollViewFlags + 12) & 3) != 0)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__hideScrollIndicators object:0];
    *(&self->_scrollViewFlags + 12) &= 0xFFFFFFFFFFFFFFFCLL;
    *(&self->_scrollViewFlags + 5) &= ~0x400000u;
  }

  v55 = v40 | v41;
  v56 = v47 & revealsVerticalScrollIndicator;
  [(UIScrollView *)self _scrollIndicatorAdditionalInset];
  v58 = v57;
  v59 = v46 > 0.99 || v34 > 0.99;
  v60 = 0.0;
  if (!v59)
  {
    v60 = 6.5 - v57;
  }

  accuracy = self->_accuracy;
  if (accuracy == 1.0)
  {
    v63 = round(v60);
  }

  else
  {
    v62 = floor(v60);
    v63 = v62 + round(accuracy * (v60 - v62)) / accuracy;
  }

  [(UIScrollView *)self _layoutVerticalScrollIndicatorWithBounds:v34 <= 0.99 effectiveInset:v56 & ~v55 contentOffset:indicatorsCopy fraction:v75 additionalInset:v74 cornerAdjust:v77 needsIndicator:v76 showing:v73 recalcSize:v27, v28, v29, v72, v71, *&v34, *&v58, *&v63];
  if (v34 > 0.99)
  {
    v64 = *MEMORY[0x1E695F050];
    v65 = *(MEMORY[0x1E695F050] + 8);
    v66 = *(MEMORY[0x1E695F050] + 16);
    v67 = *(MEMORY[0x1E695F050] + 24);
  }

  [(UIScrollView *)self _layoutHorizontalScrollIndicatorWithBounds:v46 <= 0.99 effectiveInset:v48 contentOffset:indicatorsCopy fraction:v75 additionalInset:v74 cornerAdjust:v77 needsIndicator:v76 showing:v73 recalcSize:v27 verticalIndicatorFrame:v28, v29, v72, v71, *&v46, *&v58, *&v63, v64, v65, v66, v67];
  if (self->_horizontalScrollIndicator)
  {
    [(UIView *)self bringSubviewToFront:?];
    v68 = self->_verticalScrollIndicator;
    if (v68)
    {
      [(UIView *)self insertSubview:v68 belowSubview:self->_horizontalScrollIndicator];
    }
  }

  else if (self->_verticalScrollIndicator)
  {
    [(UIView *)self bringSubviewToFront:?];
  }
}

- (CGRect)_layoutVerticalScrollIndicatorWithBounds:(CGRect)bounds effectiveInset:(UIEdgeInsets)inset contentOffset:(CGPoint)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(BOOL)indicator showing:(BOOL)self0 recalcSize:(BOOL)self1
{
  indicatorCopy = indicator;
  y = offset.y;
  x = offset.x;
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  height = bounds.size.height;
  width = bounds.size.width;
  v20 = bounds.origin.y;
  v21 = bounds.origin.x;
  if (LOBYTE(offset.y))
  {
    goto LABEL_10;
  }

  [(UIView *)self->_verticalScrollIndicator alpha];
  if (v23 > 0.05)
  {
    if (LODWORD(x))
    {
      v24 = *&self->_scrollViewFlags >= 0;
      v25 = 1.0;
      selfCopy2 = self;
    }

    else
    {
      v25 = 0.0;
      selfCopy2 = self;
      v24 = 0;
    }

    [(UIScrollView *)selfCopy2 _hideScrollIndicator:self->_verticalScrollIndicator afterDelay:v24 animated:v25];
  }

  if (indicatorCopy || (*(&self->_scrollViewFlags + 12) & 4) != 0)
  {
LABEL_10:
    v48 = v21;
    v49 = v20;
    v50 = width;
    v51 = height;
    v52 = top;
    v53 = left;
    v54 = bottom;
    v55 = right;
    [(UIView *)self->_verticalScrollIndicator _setFlipsHorizontalAxis:[(UIView *)self _flipsHorizontalAxis]];
    [(UIScrollView *)self _effectiveVerticalScrollIndicatorInsets];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v30 = *(MEMORY[0x1E695F050] + 24);
    v58.origin.x = *MEMORY[0x1E695F050];
    v58.origin.y = v28;
    v58.size.width = v29;
    v58.size.height = v30;
    if (CGRectIsNull(v58))
    {
      [(UIScrollView *)self _iOS_frameForLayoutVerticalScrollIndicatorWithBounds:*&x effectiveInset:*&y indicatorInsets:indicatorCopy contentOffset:v48 fraction:v49 additionalInset:v50 cornerAdjust:v51 needsIndicator:v52 showing:v53 recalcSize:v54, v55, v32 + v56, v34 + v56, v36 + v56, v38 + v56, *&fraction, *&additionalInset, *&adjust, *&v56, v57];
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
    }

    [(UIView *)self->_verticalScrollIndicator setFrame:v27, v28, v29, v30];
    if (LODWORD(y))
    {
      [(UIView *)self->_verticalScrollIndicator alpha];
      if (v43 < 1.0)
      {
        [(UIView *)self->_verticalScrollIndicator setAlpha:1.0];
      }
    }
  }

  else
  {
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v30 = *(MEMORY[0x1E695F050] + 24);
  }

  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (double)_iOS_frameForLayoutVerticalScrollIndicatorWithBounds:(double)bounds effectiveInset:(double)inset indicatorInsets:(float64_t)insets contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(double)self0 showing:(double)self1 recalcSize:(double)self2
{
  v28 = *(self + 104);
  v29 = self + 1792;
  v30 = dyld_program_sdk_at_least();
  if ((v28 & 0x400000) != 0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    showingCopy = showing;
  }

  else
  {
    showingCopy = a13;
  }

  if (v31)
  {
    showingCopy2 = a13;
  }

  else
  {
    showingCopy2 = showing;
  }

  v51 = showingCopy2;
  [*(self + 1528) frame];
  [self _verticalScrollIndicatorWidth];
  v35 = *(self + 1200);
  boundsCopy = bounds;
  v37 = a2 + showingCopy;
  v38 = inset - (showing + a13);
  v39.f64[0] = *(self + 1296) - offset;
  if (*&v35 == 1.0)
  {
    v47 = round(v39.f64[0]);
    v42 = v38 + v37 - v34 + a18;
    if ((v28 & 0x400000) != 0)
    {
      v42 = v37 - a18;
    }

    if (boundsCopy < v47)
    {
      goto LABEL_21;
    }

    v43 = boundsCopy + insets;
    v46 = round(additionalInset + *(self + 424));
  }

  else
  {
    v39.f64[1] = insets;
    v40 = vrndmq_f64(v39);
    *&v41 = *&vaddq_f64(v40, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v39, v40), *&v35)), vdupq_lane_s64(v35, 0)));
    v42 = v38 + v37 - v34 + a18;
    if ((v28 & 0x400000) != 0)
    {
      v42 = v37 - a18;
    }

    if (boundsCopy < v41)
    {
      goto LABEL_21;
    }

    v43 = boundsCopy + insets;
    v44 = additionalInset + *(self + 424);
    v45 = floor(v44);
    v46 = v45 + round(*&v35 * (v44 - v45)) / *&v35;
  }

  if (v43 > v46)
  {
LABEL_21:
    v48 = *(v29 + 12) | 4;
    goto LABEL_23;
  }

  v48 = *(v29 + 12) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_23:
  *(v29 + 12) = v48;
  if (v42 >= v37)
  {
    v49 = v42;
  }

  else
  {
    v49 = a2 + showingCopy;
  }

  if (v49 >= a2 + inset - v34 - v51)
  {
    v49 = a2 + inset - v34 - v51;
  }

  return v49 - *(self + 1080);
}

- (uint64_t)_layoutHorizontalScrollIndicatorWithBounds:(double)bounds effectiveInset:(double)inset contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(double)indicator showing:(uint64_t)self0 recalcSize:(uint64_t)self1 verticalIndicatorFrame:(uint64_t)self2
{
  if (frame)
  {
    goto LABEL_9;
  }

  result = [*(self + 1536) alpha];
  if (v38 > 0.05)
  {
    if (size)
    {
      v39 = *(self + 1792) >= 0;
      v40 = 1.0;
      selfCopy2 = self;
    }

    else
    {
      v40 = 0.0;
      selfCopy2 = self;
      v39 = 0;
    }

    result = [selfCopy2 _hideScrollIndicator:*(self + 1536) afterDelay:v39 animated:v40];
  }

  if ((a13 & 1) != 0 || (*(self + 1804) & 8) != 0)
  {
LABEL_9:
    v60 = a2;
    boundsCopy = bounds;
    insetCopy = inset;
    offsetCopy = offset;
    fractionCopy = fraction;
    additionalInsetCopy = additionalInset;
    adjustCopy = adjust;
    indicatorCopy = indicator;
    [*(self + 1536) _setFlipsHorizontalAxis:{objc_msgSend(self, "_flipsHorizontalAxis")}];
    [self _effectiveHorizontalScrollIndicatorInsets];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = *MEMORY[0x1E695F050];
    v51 = *(MEMORY[0x1E695F050] + 8);
    v52 = *(MEMORY[0x1E695F050] + 16);
    v53 = *(MEMORY[0x1E695F050] + 24);
    v69.origin.x = *MEMORY[0x1E695F050];
    v69.origin.y = v51;
    v69.size.width = v52;
    v69.size.height = v53;
    if (CGRectIsNull(v69))
    {
      [self _iOS_frameForLayoutHorizontalScrollIndicatorWithBounds:size effectiveInset:frame indicatorInsets:a13 contentOffset:v60 fraction:boundsCopy additionalInset:insetCopy cornerAdjust:offsetCopy needsIndicator:fractionCopy showing:additionalInsetCopy recalcSize:adjustCopy verticalIndicatorFrame:{indicatorCopy, v43 + a20, v45 + a20, v47 + a20, v49 + a20, a17, a18, a19, *&a20, a21, a22, a23, a24, a25}];
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v53 = v57;
    }

    result = [*(self + 1536) setFrame:{v50, v51, v52, v53}];
    if (frame)
    {
      result = [*(self + 1536) alpha];
      if (v58 < 1.0)
      {
        v59 = *(self + 1536);

        return [v59 setAlpha:1.0];
      }
    }
  }

  return result;
}

- (double)_iOS_frameForLayoutHorizontalScrollIndicatorWithBounds:(CGFloat)bounds effectiveInset:(CGFloat)inset indicatorInsets:(CGFloat)insets contentOffset:(double)offset fraction:(double)fraction additionalInset:(double)additionalInset cornerAdjust:(double)adjust needsIndicator:(uint64_t)self0 showing:(uint64_t)self1 recalcSize:(uint64_t)self2 verticalIndicatorFrame:(char)self3
{
  v33 = self + 1792;
  v34 = *(self + 104);
  v79 = a15;
  v35 = a17;
  v81.origin.x = a23;
  v81.origin.y = a24;
  v81.size.width = a25;
  v81.size.height = a26;
  if (!CGRectIsNull(v81))
  {
    if ((v34 & 0x400000) != 0)
    {
      v84.origin.x = a23;
      v84.origin.y = a24;
      v84.size.width = a25;
      v84.size.height = a26;
      MaxX = CGRectGetMaxX(v84);
      v85.origin.x = a2;
      v85.origin.y = bounds;
      v85.size.width = inset;
      v85.size.height = insets;
      v39 = MaxX - CGRectGetMinX(v85);
      v40 = a15;
      if (a15 < v39)
      {
        v40 = v39;
      }

      v79 = v40;
    }

    else
    {
      v82.origin.x = a2;
      v82.origin.y = bounds;
      v82.size.width = inset;
      v82.size.height = insets;
      v36 = CGRectGetMaxX(v82);
      v83.origin.x = a23;
      v83.origin.y = a24;
      v83.size.width = a25;
      v83.size.height = a26;
      v37 = v36 - CGRectGetMinX(v83);
      v35 = a17;
      if (a17 < v37)
      {
        v35 = v37;
      }
    }
  }

  v41 = dyld_program_sdk_at_least();
  if ((v34 & 0x400000) != 0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    v43 = v79;
  }

  else
  {
    v43 = v35;
  }

  if (v42)
  {
    v44 = v35;
  }

  else
  {
    v44 = v79;
  }

  v75 = v44;
  v45 = inset - (v79 + v35);
  [*(self + 1536) frame];
  v47 = v46;
  [self _horizontalScrollIndicatorHeight];
  if ((frame & 1) != 0 || (*(v33 + 12) & 8) != 0)
  {
    v48 = *(self + 1200);
    v52 = v45 * a20;
    adjustCopy2 = adjust;
    if (*&v48 == 1.0)
    {
      v54 = round(v52);
    }

    else
    {
      v53 = floor(v52);
      v54 = v53 + round((v52 - v53) * *&v48) / *&v48;
    }

    fractionCopy2 = fraction;
    insetCopy2 = inset;
    if (v54 >= 36.0)
    {
      v47 = v54;
    }

    else
    {
      v47 = 36.0;
    }
  }

  else
  {
    v48 = *(self + 1200);
    adjustCopy2 = adjust;
    fractionCopy2 = fraction;
    insetCopy2 = inset;
  }

  v55 = a2 + v43;
  v56 = v45 - v47;
  v57.f64[0] = *(self + 1288) - fractionCopy2;
  if (*&v48 != 1.0)
  {
    v57.f64[1] = insetCopy2;
    v58 = vrndmq_f64(v57);
    v59 = *(self + 416);
    v60 = adjustCopy2 + fractionCopy2 + v59;
    v61 = floor(v60);
    v62 = vaddq_f64(v58, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v57, v58), *&v48)), vdupq_lane_s64(v48, 0)));
    v63.f64[0] = a18;
    v63.f64[1] = v61 + round(*&v48 * (v60 - v61)) / *&v48;
    v64 = vsubq_f64(v63, v62);
    v65 = v55 + v56 * vdivq_f64(v64, vdupq_laneq_s64(v64, 1)).f64[0];
    v64.f64[0] = floor(v65);
    v66 = v64.f64[0] + round(*&v48 * (v65 - v64.f64[0])) / *&v48;
    if (a2 >= v62.f64[0])
    {
      v67 = a2 + insetCopy2;
      v68 = adjustCopy2 + v59;
      v69 = floor(v68);
      v70 = v69 + round(*&v48 * (v68 - v69)) / *&v48;
      goto LABEL_35;
    }

LABEL_31:
    if (v47 - (v62.f64[0] - a2) >= 7.0)
    {
      v47 = v47 - (v62.f64[0] - a2);
    }

    else
    {
      v47 = 7.0;
    }

    goto LABEL_39;
  }

  v62.f64[0] = round(v57.f64[0]);
  v71 = *(self + 416);
  v66 = round(v55 + v56 * ((a18 - v62.f64[0]) / (round(adjustCopy2 + fractionCopy2 + v71) - round(insetCopy2))));
  if (a2 < v62.f64[0])
  {
    goto LABEL_31;
  }

  v67 = a2 + insetCopy2;
  v70 = round(adjustCopy2 + v71);
LABEL_35:
  if (v67 > v70)
  {
    v72 = v67 - v70;
    v66 = v66 + v72;
    if (v47 - v72 >= 7.0)
    {
      v47 = v47 - v72;
    }

    else
    {
      v47 = 7.0;
    }

LABEL_39:
    v73 = *(v33 + 12) | 8;
    goto LABEL_41;
  }

  v73 = *(v33 + 12) & 0xFFFFFFFFFFFFFFF7;
LABEL_41:
  *(v33 + 12) = v73;
  if (v66 < v55)
  {
    v66 = v55;
  }

  if (v66 >= a2 + insetCopy2 - v47 - v75 - a22)
  {
    v66 = a2 + insetCopy2 - v47 - v75 - a22;
  }

  return v66 - *(self + 1080);
}

- (CGRect)_scrollIndicatorContainerRectForAxis:(unint64_t)axis
{
  axisCopy = axis;
  [(UIScrollView *)self _scrollIndicatorAdditionalInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if ((axisCopy & 2) != 0)
  {
    [(UIScrollView *)self _effectiveVerticalScrollIndicatorInsets];
    v11 = v12;
    v10 = v13;
    v9 = v14;
    v8 = v15;
  }

  v16 = 0.0;
  v17 = 0.0;
  if (axisCopy)
  {
    [(UIScrollView *)self _effectiveHorizontalScrollIndicatorInsets];
    v17 = v18;
    v16 = v19;
    v7 = v20;
  }

  v21 = fmax(v11, 0.0);
  v22 = *(&self->_scrollViewFlags + 12);
  v23 = (v22 & 0x4000000000000000) != 0 && (*(&self->_scrollViewFlags + 3) & 1) == 0;
  v24 = *(&self->super._viewFlags + 2);
  v25 = v6 + v21;
  if ((v22 & 0x2000000000000000) != 0 && !v23)
  {
    [(UIScrollView *)self contentOffset];
    v25 = fmax(v25, v6 - v26);
  }

  v27 = fmax(v8, 0.0);
  if ((v24 & 0x400000) != 0)
  {
    v27 = 0.0;
  }

  v28 = fmax(v27, v7);
  v29 = fmax(fmax(v9, 0.0), v16);
  v30 = fmax(v10, 0.0);
  if ((v24 & 0x400000) == 0)
  {
    v30 = 0.0;
  }

  v31 = v6 + v29;
  v32 = v6 + v28;
  v33 = v6 + fmax(v30, v17);
  v34 = fmax(v25, 0.0);
  v35 = fmax(v33, 0.0);
  v36 = fmax(v31, 0.0);
  v37 = fmax(v32, 0.0);
  [(UIView *)self bounds];
  v39 = v35 + v38;
  v41 = v34 + v40;
  v43 = v42 - (v35 + v37);
  v45 = v44 - (v36 + v34);
  result.size.height = v45;
  result.size.width = v43;
  result.origin.y = v41;
  result.origin.x = v39;
  return result;
}

uint64_t __37__UIScrollView__hideScrollIndicators__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1536) setExpandedForDirectManipulation:0];
  v2 = *(*(a1 + 32) + 1528);

  return [v2 setExpandedForDirectManipulation:0];
}

- (void)_hideScrollIndicator:(id)indicator afterDelay:(double)delay animated:(BOOL)animated
{
  indicatorCopy = indicator;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__UIScrollView__hideScrollIndicator_afterDelay_animated___block_invoke;
  aBlock[3] = &unk_1E7104A08;
  v9 = indicatorCopy;
  v17 = v9;
  selfCopy = self;
  animatedCopy = animated;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (delay <= 0.0)
  {
    (*(v10 + 2))(v10, 0);
  }

  else
  {
    if (self->_verticalScrollIndicator == v9)
    {
      v12 = 1512;
    }

    else
    {
      v12 = 1520;
    }

    [*(&self->super.super.super.isa + v12) invalidate];
    v13 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v11 block:delay];
    v14 = *(&self->super.super.super.isa + v12);
    *(&self->super.super.super.isa + v12) = v13;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:*(&self->super.super.super.isa + v12) forMode:@"UITrackingRunLoopMode"];
  }
}

void __57__UIScrollView__hideScrollIndicator_afterDelay_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = 101;
  if (*(a1 + 32) == *(v4 + 1528))
  {
    v5 = 100;
  }

  v6 = OBJC_IVAR___UIScrollViewScrollAnimation__adjustsForContentOffsetDelta[v5];
  v7 = *(v4 + v6);
  *(v4 + v6) = 0;

  if ((*(*(a1 + 40) + 1814) & 0x30) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__UIScrollView__hideScrollIndicator_afterDelay_animated___block_invoke_2;
    aBlock[3] = &unk_1E70F3590;
    v18 = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (*(a1 + 48) == 1)
    {
      objc_initWeak(&location, *(a1 + 40));
      v10 = [*(a1 + 40) traitCollection];
      v11 = [v10 userInterfaceIdiom];

      if (v11 == 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = 251658240;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__UIScrollView__hideScrollIndicator_afterDelay_animated___block_invoke_3;
      v13[3] = &unk_1E70F8958;
      objc_copyWeak(&v15, &location);
      v14 = *(a1 + 32);
      [UIView animateWithDuration:v12 delay:v9 options:v13 animations:0.25 completion:0.0];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

void __57__UIScrollView__hideScrollIndicator_afterDelay_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4[193] = v3;
    [*(a1 + 32) setExpandedForDirectManipulation:0];
    WeakRetained = v4;
  }
}

- (void)_hideScrollIndicatorsIfNeededForNewContentSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  if (![(UIScrollView *)self _isAutomaticContentOffsetAdjustmentEnabled])
  {
    [(UIScrollView *)self _maximumContentOffsetForContentSize:width, height];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self contentOffset];
    if (v12 > v11)
    {
      [(UIScrollView *)self _hideScrollIndicator:self->_verticalScrollIndicator afterDelay:animatedCopy animated:0.0];
    }

    [(UIScrollView *)self contentOffset];
    if (v13 > v9)
    {
      horizontalScrollIndicator = self->_horizontalScrollIndicator;

      [(UIScrollView *)self _hideScrollIndicator:horizontalScrollIndicator afterDelay:animatedCopy animated:0.0];
    }
  }
}

- (CGPoint)_contentOffsetForLowFidelityScrollInDirection:(CGPoint)direction duration:(double *)duration
{
  y = direction.y;
  x = direction.x;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v11 = v10;
  if ([(UIScrollView *)self isScrollAnimating])
  {
    [(UIScrollView *)self _animatedTargetOffset];
    v9 = v12;
    v11 = v13;
  }

  [(UIScrollView *)self _effectiveContentInset];
  v15 = v14 + 5.0;
  v17 = v16 + 5.0;
  v19 = v18 + 5.0;
  v21 = v20 + 5.0;
  [(UIView *)self bounds];
  v53 = v22 - (v17 + v21);
  v54 = v23 - (v15 + v19);
  [(UIScrollView *)self _contentOffsetAnimationDuration];
  v25 = *&self->_accuracy;
  if (fabs(y) >= 2.22044605e-16)
  {
    v31 = self->_firstPageOffset.vertical - v15;
    if (*&v25 != 1.0)
    {
      v32 = floor(v31);
      v28 = v32 + round(*&v25 * (v31 - v32)) / *&v25;
      v30.f64[0] = v19 + self->_contentSize.height;
      v29 = v54;
      v30.f64[1] = v54;
      goto LABEL_8;
    }

    v28 = round(v31);
    v35.f64[0] = v19 + self->_contentSize.height;
    v29 = v54;
    v35.f64[1] = v54;
  }

  else
  {
    v26 = self->_firstPageOffset.horizontal - v17;
    if (*&v25 != 1.0)
    {
      v27 = floor(v26);
      v28 = v27 + round(*&v25 * (v26 - v27)) / *&v25;
      v30.f64[0] = v21 + self->_contentSize.width;
      v29 = v54;
      v30.f64[1] = v53;
LABEL_8:
      v33 = vrndmq_f64(v30);
      v34 = vaddq_f64(v33, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v30, v33), *&v25)), vdupq_lane_s64(v25, 0)));
      goto LABEL_12;
    }

    v28 = round(v26);
    v35.f64[0] = v21 + self->_contentSize.width;
    v29 = v54;
    v35.f64[1] = v53;
  }

  v34 = vrndaq_f64(v35);
LABEL_12:
  v36 = vsubq_f64(v34, vdupq_laneq_s64(v34, 1)).f64[0];
  if (v36 < v28)
  {
    v36 = v28;
  }

  if (y >= 0.0)
  {
    if (y <= 0.0)
    {
      if (x >= 0.0)
      {
        if (x <= 0.0)
        {
          goto LABEL_47;
        }

        if (v9 >= v36)
        {
          v24 = 0.12;
        }

        if (*&v25 == 1.0)
        {
          v46 = round(v53);
        }

        else
        {
          v45 = floor(v53);
          v46 = v45 + round(*&v25 * (v53 - v45)) / *&v25;
        }

        v52 = v9 + v46;
        v9 = v52 <= v36 ? v52 : v36;
        if (v9 != v36)
        {
          goto LABEL_47;
        }

        v51 = 20.0;
      }

      else
      {
        if (v9 <= v28)
        {
          v24 = 0.12;
        }

        if (*&v25 == 1.0)
        {
          v42 = round(v53);
        }

        else
        {
          v41 = floor(v53);
          v42 = v41 + round(*&v25 * (v53 - v41)) / *&v25;
        }

        v50 = v9 - v42;
        if (v50 >= v28)
        {
          v9 = v50;
        }

        else
        {
          v9 = v28;
        }

        if (v9 != v28)
        {
          goto LABEL_47;
        }

        v51 = -20.0;
      }

      v9 = v9 + v51;
      goto LABEL_47;
    }

    if (v11 >= v36)
    {
      v24 = 0.12;
    }

    if (*&v25 == 1.0)
    {
      v40 = round(v29);
    }

    else
    {
      v39 = floor(v29);
      v40 = v39 + round(*&v25 * (v29 - v39)) / *&v25;
    }

    v47 = v11 + v40;
    if (v47 <= v36)
    {
      v11 = v47;
    }

    else
    {
      v11 = v36;
    }

    if (v11 == v36)
    {
      v44 = 20.0;
      goto LABEL_46;
    }
  }

  else
  {
    if (v11 <= v28)
    {
      v24 = 0.12;
    }

    if (*&v25 == 1.0)
    {
      v38 = round(v29);
    }

    else
    {
      v37 = floor(v29);
      v38 = v37 + round(*&v25 * (v29 - v37)) / *&v25;
    }

    v43 = v11 - v38;
    if (v43 >= v28)
    {
      v11 = v43;
    }

    else
    {
      v11 = v28;
    }

    if (v11 == v28)
    {
      v44 = -20.0;
LABEL_46:
      v11 = v11 + v44;
    }
  }

LABEL_47:
  if (duration)
  {
    *duration = v24;
  }

  v48 = v9;
  v49 = v11;
  result.y = v49;
  result.x = v48;
  return result;
}

- (void)_lowFidelityScrollInDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  [(UIScrollView *)self _contentOffsetAnimationDuration];
  v7 = v6;
  v17 = 0.0;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v11 = v10;
  [(UIScrollView *)self _contentOffsetForLowFidelityScrollInDirection:&v17 duration:x, y];
  if (v12 != v9 || v13 != v11)
  {
    v15 = v12;
    v16 = v13;
    [(UIScrollView *)self _setContentOffsetAnimationDuration:v17];
    [(UIScrollView *)self _handleDirectionalScrollToOffset:0 clampingToBounds:v15, v16];
    [(UIScrollView *)self _setContentOffsetAnimationDuration:v7];
  }
}

- (void)_handleLowFidelitySwipe:(id)swipe
{
  swipeCopy = swipe;
  [(UIScrollView *)self _cancelTouchDelayGestureRecognizerIfNecessary];
  v4 = swipeCopy;
  direction = 0;
  v6 = 0;
  do
  {
    v7 = self->_lowFidelitySwipeGestureRecognizers[v6];
    if (v7 == v4)
    {
      v8 = v7;
      direction = [(UISwipeGestureRecognizer *)v8 direction];
      v4 = swipeCopy;
    }

    else
    {
      v8 = 0;
    }

    if (v6 > 2)
    {
      break;
    }

    ++v6;
  }

  while (!v8);
  if (v8 && [(UIGestureRecognizer *)v8 state]== UIGestureRecognizerStateEnded)
  {
    v9 = vdupq_n_s64(direction);
    [(UIScrollView *)self _lowFidelityScrollInDirection:vbslq_s8(vceqq_s64(v9, xmmword_18A6837D0), xmmword_18A678B70, vandq_s8(xmmword_18A678B60, vceqq_s64(v9, xmmword_18A679310)))];
  }
}

- (BOOL)_bounceForCarPlayIfNecessary
{
  [(UIView *)self bounds];
  v28 = v4;
  v29 = v3;
  [(UIScrollView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self _effectiveContentInset];
  v12 = *&self->_accuracy;
  v14 = self->_firstPageOffset.horizontal - v13;
  if (*&v12 == 1.0)
  {
    if (v6 < round(v14) || v6 > round(v11 + self->_contentSize.width) - round(v29) || v8 < round(self->_firstPageOffset.vertical - v9))
    {
      goto LABEL_11;
    }

    v26.f64[0] = v10 + self->_contentSize.height;
    v26.f64[1] = v28;
    v25 = vrndaq_f64(v26);
  }

  else
  {
    v15 = floor(v14);
    if (v6 < v15 + round(*&v12 * (v14 - v15)) / *&v12)
    {
      goto LABEL_11;
    }

    v16.f64[0] = v11 + self->_contentSize.width;
    v16.f64[1] = v29;
    v17 = vrndmq_f64(v16);
    v18 = vsubq_f64(v16, v17);
    v19 = vdupq_lane_s64(v12, 0);
    v20 = vaddq_f64(v17, vdivq_f64(vrndaq_f64(vmulq_n_f64(v18, *&v12)), v19));
    if (v6 > vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0])
    {
      goto LABEL_11;
    }

    v21 = self->_firstPageOffset.vertical - v9;
    v22 = floor(v21);
    if (v8 < v22 + round(*&v12 * (v21 - v22)) / *&v12)
    {
      goto LABEL_11;
    }

    v23.f64[0] = v10 + self->_contentSize.height;
    v23.f64[1] = v28;
    v24 = vrndmq_f64(v23);
    v25 = vaddq_f64(v24, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v23, v24), *&v12)), v19));
  }

  if (v8 > vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0])
  {
LABEL_11:
    [(UIScrollView *)self _pushTrackingRunLoopModeIfNecessaryForReason:@"Bounce for CarPlay"];
    [(UIScrollView *)self _updateDecelerationLastOffset:v6, v8];
    [(UIScrollView *)self _startTimer:0];
    return 1;
  }

  return 0;
}

- (BOOL)_shouldUpdateFocusInContext:(id)context
{
  v4.receiver = self;
  v4.super_class = UIScrollView;
  return [(UIView *)&v4 _shouldUpdateFocusInContext:context];
}

- (void)_didUpdateFocusInContext:(id)context
{
  v3.receiver = self;
  v3.super_class = UIScrollView;
  [(UIView *)&v3 _didUpdateFocusInContext:context];
}

- (CGRect)_focusScrollableContentBounds
{
  [(UIScrollView *)self _minimumContentOffset];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self _maximumContentPoint];
  v8 = v7 - v4;
  v10 = v9 - v6;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_focusScrollBoundaryMetricsForItem:(id)item
{
  itemCopy = item;
  _focusTuple = [(UIScrollView *)self _focusTuple];
  v6 = _UIFocusItemScrollableContainerDefaultScrollBoundaryMetricsForItem(_focusTuple, itemCopy);

  return v6;
}

- (unint64_t)_focusScrollOffsetResolverForFocusMovement:(id)movement
{
  movementCopy = movement;
  if ([(UIScrollView *)self isPagingEnabled])
  {
    v5 = 1;
  }

  else
  {
    _focusTuple = [(UIScrollView *)self _focusTuple];
    v5 = _UIFocusItemScrollableContainerDefaultScrollOffsetResolverTypeForFocusMovement(_focusTuple, movementCopy);
  }

  return v5;
}

- (void)_setShouldPreventFocusScrollPastContentSize:(BOOL)size
{
  if (size)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xF7FFFFFF | v3;
}

- (void)_setFocusFastScrollingDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFF7FFFF | v3;
}

- (id)_focusFastScrollingIndexBarEntries
{
  v2 = MEMORY[0x1E695DF70];
  selfCopy = self;
  v4 = objc_alloc_init(v2);
  [(UIScrollView *)selfCopy _minimumContentOffset];
  [(UIScrollView *)selfCopy _maximumContentOffset];

  v5 = [v4 copy];

  return v5;
}

- (void)_beginActivityTrackingIfNeededForReason:(int64_t)reason
{
  if (_UIViewControllerSupportsInteractionActivityTracking())
  {
    _effectiveInteractionActivityTrackingBaseName = [(UIScrollView *)self _effectiveInteractionActivityTrackingBaseName];
    v6 = [&unk_1EFE2DEE8 objectAtIndexedSubscript:reason];
    v12 = [_effectiveInteractionActivityTrackingBaseName stringByAppendingString:v6];

    v7 = v12;
    if (v12)
    {
      activityTrackingTokens = self->_activityTrackingTokens;
      if (!self->_activityTrackingTokens[reason])
      {
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        v10 = [processInfo beginActivityWithOptions:0x200000000000 reason:v12];
        v11 = activityTrackingTokens[reason];
        activityTrackingTokens[reason] = v10;

        v7 = v12;
      }
    }
  }
}

- (void)_endActivityTrackingIfNeededForReason:(int64_t)reason
{
  activityTrackingTokens = self->_activityTrackingTokens;
  if (self->_activityTrackingTokens[reason])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo endActivity:activityTrackingTokens[reason]];

    v6 = activityTrackingTokens[reason];
    activityTrackingTokens[reason] = 0;
  }
}

- (void)setRefreshControl:(UIRefreshControl *)refreshControl
{
  v4 = refreshControl;
  if (v4)
  {
    [(UIScrollView *)self setAlwaysBounceVertical:1];
  }

  [(UIScrollView *)self _setRefreshControl:v4];
}

- (void)_setRefreshControl:(id)control
{
  controlCopy = control;
  refreshControl = self->_refreshControl;
  v14 = controlCopy;
  if (refreshControl)
  {
    refreshControlState = [(UIRefreshControl *)refreshControl refreshControlState];
    controlCopy = v14;
    if (refreshControlState)
    {
      if (_setRefreshControl__once != -1)
      {
        dispatch_once(&_setRefreshControl__once, &__block_literal_global_616_0);
        controlCopy = v14;
      }
    }
  }

  v8 = self->_refreshControl;
  if (v8 != controlCopy)
  {
    if ([(UIRefreshControl *)v8 _areInsetsBeingApplied]&& ![(UIRefreshControl *)self->_refreshControl _hostAdjustsContentOffset])
    {
      [(UIRefreshControl *)self->_refreshControl _removeInsets];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    [(UIView *)self->_refreshControl removeFromSuperview];
    objc_storeStrong(&self->_refreshControl, control);
    v10 = self->_refreshControl;
    if (v10)
    {
      [(UIView *)v10 setAutoresizingMask:2];
      [(UIRefreshControl *)self->_refreshControl _update];
      [(UIScrollView *)self _addContentSubview:self->_refreshControl atBack:1];
    }

    if (v9)
    {
      [(UIRefreshControl *)self->_refreshControl _addInsets];
    }

    _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];
    [navigationController _setUpHostedRefreshControlForScrollView:self];
    navigationBar = [navigationController navigationBar];
    [navigationBar layoutSubviews];

    controlCopy = v14;
  }
}

void __35__UIScrollView__setRefreshControl___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("ScrollView", &GScrollerPoppingRunLoopMode_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Attempting to change the refresh control while it is not idle is strongly discouraged and probably won't work properly.", v1, 2u);
  }
}

- (void)_beginRefreshing
{
  _refreshControl = [(UIScrollView *)self _refreshControl];
  [_refreshControl beginRefreshing];
}

- (void)_endRefreshingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _refreshControl = [(UIScrollView *)self _refreshControl];
  [_refreshControl _endRefreshingAnimated:animatedCopy];
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  if (!only)
  {
    [(UIScrollView *)self _setCachedVerticalScrollIndicatorBaseInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
    [(UIScrollView *)self _setCachedHorizontalScrollIndicatorBaseInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
  }

  v6 = objc_getAssociatedObject(self, &_UIScrollViewBoundingPathForSubtreeKey);
  v7 = v6;
  if (v6)
  {
    [v6 boundingRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)self bounds];
    v23.origin.x = v16;
    v23.origin.y = v17;
    v23.size.width = v18;
    v23.size.height = v19;
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    if (!CGRectEqualToRect(v22, v23))
    {
      objc_setAssociatedObject(self, &_UIScrollViewBoundingPathForSubtreeKey, 0, 1);
    }
  }
}

- (id)_scrollDetentOffsets
{
  v29[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    p_isa = &selfCopy->super.super.super.isa;
    while (1)
    {
      v5 = p_isa[10];
      if (v5)
      {
        break;
      }

      superview = [p_isa superview];
      [superview bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [p_isa frame];
      v32.origin.x = v15;
      v32.origin.y = v16;
      v32.size.width = v17;
      v32.size.height = v18;
      v31.origin.x = v8;
      v31.origin.y = v10;
      v31.size.width = v12;
      v31.size.height = v14;
      v19 = CGRectEqualToRect(v31, v32);

      if (!v19)
      {
        goto LABEL_8;
      }

      superview2 = [p_isa superview];

      p_isa = superview2;
      if (!superview2)
      {
        goto LABEL_10;
      }
    }

    superview2 = v5;
  }

  else
  {
    p_isa = 0;
LABEL_8:
    superview2 = 0;
  }

LABEL_10:
  navigationController = [superview2 navigationController];
  v22 = [navigationController _scrollDetentOffsetsForScrollView:v3];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v25 = MEMORY[0x1E696AD98];
    [(UIScrollView *)v3 _minimumContentOffset];
    v27 = [v25 numberWithDouble:v26];
    v29[0] = v27;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  }

  return v24;
}

- (void)_setMaskView:(id)view
{
  v7.receiver = self;
  v7.super_class = UIScrollView;
  [(UIView *)&v7 _setMaskView:view];
  _safeMaskView = [(UIView *)self _safeMaskView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0x2000000000000;
  if ((isKindOfClass & 1) == 0)
  {
    v6 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFDFFFFFFFFFFFFLL | v6;
}

- (UIEdgeInsets)_gradientMaskLengths
{
  top = self->_gradientMaskLengths.top;
  left = self->_gradientMaskLengths.left;
  bottom = self->_gradientMaskLengths.bottom;
  right = self->_gradientMaskLengths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setUpGradientMaskViewIfNecessary
{
  v25 = *MEMORY[0x1E69E9840];
  _safeMaskView = [(UIView *)self _safeMaskView];

  if (_safeMaskView)
  {
    if ((*(&self->_scrollViewFlags + 18) & 2) == 0)
    {
      v4 = *(__UILogGetCategoryCachedImpl("ScrollView", &_setUpGradientMaskViewIfNecessary___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        top = self->_gradientMaskLengths.top;
        left = self->_gradientMaskLengths.left;
        bottom = self->_gradientMaskLengths.bottom;
        right = self->_gradientMaskLengths.right;
        v9 = v4;
        _safeMaskView2 = [(UIView *)self _safeMaskView];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 134219010;
        v16 = top;
        v17 = 2048;
        v18 = left;
        v19 = 2048;
        v20 = bottom;
        v21 = 2048;
        v22 = right;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "WARNING: gradientMaskLengths set to {%g, %g, %g, %g}, but the current mask view type, %@, does not support them. Set the maskView property to nil before setting nonzero gradientMaskLengths.", buf, 0x34u);
      }
    }
  }

  else
  {
    v13 = [_UIScrollViewGradientMaskView alloc];
    v14 = [(_UIScrollViewGradientMaskView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)self _setSafeMaskView:v14];
  }
}

- (void)_setConfigureForObservingByTVSearchController:(BOOL)controller
{
  v3 = *(&self->_scrollViewFlags + 12);
  if (((((v3 & 0x4000000000000) == 0) ^ controller) & 1) == 0)
  {
    v6 = 0x4000000000000;
    if (!controller)
    {
      v6 = 0;
    }

    *(&self->_scrollViewFlags + 12) = v3 & 0xFFFBFFFFFFFFFFFFLL | v6;
    if ((v3 & 0x2000000000000) != 0 && controller)
    {
      [(UIView *)self _setSafeMaskView:?];
    }

    if (!controller && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_gradientMaskLengths.top), vceqzq_f64(*&self->_gradientMaskLengths.bottom))))) & 1) != 0)
    {

      [(UIScrollView *)self _setUpGradientMaskViewIfNecessary];
    }
  }
}

- (UIEdgeInsets)_effectiveGradientMaskLengths
{
  if ((*(&self->_scrollViewFlags + 18) & 4) != 0)
  {
    p_gradientMaskLengths = &UIEdgeInsetsZero;
  }

  else
  {
    p_gradientMaskLengths = &self->_gradientMaskLengths;
  }

  bottom = p_gradientMaskLengths->bottom;
  right = p_gradientMaskLengths->right;
  top = p_gradientMaskLengths->top;
  left = p_gradientMaskLengths->left;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setGradientMaskLengths:(UIEdgeInsets)lengths
{
  self->_gradientMaskLengths = lengths;
  if (lengths.left == 0.0 && lengths.top == 0.0 && lengths.right == 0.0 && lengths.bottom == 0.0)
  {
    if ((*(&self->_scrollViewFlags + 18) & 2) != 0)
    {
      [(UIView *)self _setSafeMaskView:?];
    }
  }

  else
  {
    [(UIScrollView *)self _setUpGradientMaskViewIfNecessary];
  }
}

- (UIEdgeInsets)_gradientMaskEdgeInsets
{
  top = self->_gradientMaskEdgeInsets.top;
  left = self->_gradientMaskEdgeInsets.left;
  bottom = self->_gradientMaskEdgeInsets.bottom;
  right = self->_gradientMaskEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_getGradientMaskBounds:(CGRect *)bounds startInsets:(UIEdgeInsets *)insets endInsets:(UIEdgeInsets *)endInsets intensities:(UIEdgeInsets *)intensities
{
  [(UIScrollView *)self _effectiveGradientMaskLengths];
  v70 = v12;
  v71 = v11;
  v68 = v14;
  v69 = v13;
  [(UIView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UIScrollView *)self contentSize];
  v67 = v23;
  v25 = v24;
  [(UIScrollView *)self _effectiveContentInset];
  v30 = 1.0;
  v31 = 1.0;
  if (v71 > 0.0)
  {
    v32 = fmin(v71, 15.0);
    accuracy = self->_accuracy;
    v34 = v18 + v26;
    if (accuracy == 1.0)
    {
      v36 = round(v34);
    }

    else
    {
      v35 = floor(v34);
      v36 = v35 + round((v34 - v35) * accuracy) / accuracy;
    }

    if (v36 >= v32)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v36 / v32;
    }
  }

  if (v69 > 0.0)
  {
    v37 = fmin(v69, 15.0);
    v38 = self->_accuracy;
    v39 = v16 + v27;
    if (v38 == 1.0)
    {
      v41 = round(v39);
    }

    else
    {
      v40 = floor(v39);
      v41 = v40 + round((v39 - v40) * v38) / v38;
    }

    if (v41 >= v37)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = v41 / v37;
    }
  }

  v42 = 1.0;
  v43 = 1.0;
  if (v70 > 0.0)
  {
    v44 = self->_accuracy;
    v45 = fmin(v70, 15.0);
    v46 = v25 - (v18 + v22 - v28);
    if (v44 == 1.0)
    {
      v48 = round(v46);
    }

    else
    {
      v47 = floor(v46);
      v48 = v47 + round((v46 - v47) * v44) / v44;
    }

    if (v48 >= v45)
    {
      v43 = 1.0;
    }

    else
    {
      v43 = v48 / v45;
    }
  }

  if (v68 > 0.0)
  {
    v49 = self->_accuracy;
    v50 = fmin(v68, 15.0);
    v51 = v67 - (v16 + v20 - v29);
    if (v49 == 1.0)
    {
      v53 = round(v51);
    }

    else
    {
      v52 = floor(v51);
      v53 = v52 + round((v51 - v52) * v49) / v49;
    }

    if (v53 >= v50)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = v53 / v50;
    }
  }

  v54 = v30;
  clipsToBounds = [(UIView *)self clipsToBounds];
  v57.f64[0] = v70;
  v56.f64[0] = v71;
  v58 = v71 + v18;
  v59 = v22 - v71;
  if (v71 >= 0.0)
  {
    v59 = v22;
    v58 = v18;
  }

  v60 = v20 - v69;
  if (v69 < 0.0)
  {
    v61 = v69 + v16;
  }

  else
  {
    v60 = v20;
    v61 = v16;
  }

  if (v70 < 0.0)
  {
    v59 = v59 - v70;
  }

  if (v68 < 0.0)
  {
    v60 = v60 - v68;
  }

  if (clipsToBounds)
  {
    v62 = v22;
  }

  else
  {
    v62 = v59;
  }

  if (clipsToBounds)
  {
    v60 = v20;
    v63 = v18;
  }

  else
  {
    v63 = v58;
  }

  if (clipsToBounds)
  {
    v61 = v16;
  }

  v64 = *&self->_gradientMaskEdgeInsets.top;
  v65 = *&self->_gradientMaskEdgeInsets.bottom;
  if (bounds)
  {
    bounds->origin.x = v61;
    bounds->origin.y = v63;
    bounds->size.width = v60;
    bounds->size.height = v62;
  }

  if (insets)
  {
    v66 = *&self->_gradientMaskEdgeInsets.bottom;
    *&insets->top = *&self->_gradientMaskEdgeInsets.top;
    *&insets->bottom = v66;
  }

  if (endInsets)
  {
    v56.f64[1] = v69;
    v57.f64[1] = v68;
    *&endInsets->top = vaddq_f64(v56, v64);
    *&endInsets->bottom = vaddq_f64(v57, v65);
  }

  if (intensities)
  {
    intensities->top = v31;
    intensities->left = v54;
    intensities->bottom = v43;
    intensities->right = v42;
  }
}

- (void)_setHiddenPocketEdges:(unint64_t)edges
{
  topEdgeEffect = [(UIScrollView *)self topEdgeEffect];
  [topEdgeEffect setHidden:edges & 1];

  leftEdgeEffect = [(UIScrollView *)self leftEdgeEffect];
  [leftEdgeEffect setHidden:(edges >> 1) & 1];

  bottomEdgeEffect = [(UIScrollView *)self bottomEdgeEffect];
  [bottomEdgeEffect setHidden:(edges >> 2) & 1];

  rightEdgeEffect = [(UIScrollView *)self rightEdgeEffect];
  [rightEdgeEffect setHidden:(edges >> 3) & 1];
}

- (void)_setPocketInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_pocketInsets.top, v3), vceqq_f64(*&self->_pocketInsets.bottom, v4)))) & 1) == 0)
  {
    self->_pocketInsets = insets;
    [(UIScrollView *)self setNeedsLayout];
  }
}

- (int64_t)_pocketStyleForEdge:(unint64_t)edge
{
  v3 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  style = [v3 style];
  v5 = +[UIScrollEdgeEffectStyle hardStyle];
  v6 = style == v5;

  return v6;
}

- (void)_setPocketStyle:(int64_t)style forEdge:(unint64_t)edge
{
  if (style == 1)
  {
    +[UIScrollEdgeEffectStyle hardStyle];
  }

  else
  {
    +[UIScrollEdgeEffectStyle softStyle];
  }
  v7 = ;
  v6 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  [v6 setStyle:v7];
}

- (BOOL)_prefersSolidColorHardPocketForEdge:(unint64_t)edge
{
  v3 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  _prefersSolidColorHardPocket = [v3 _prefersSolidColorHardPocket];

  return _prefersSolidColorHardPocket;
}

- (void)_setPrefersSolidColorHardPocket:(BOOL)pocket forEdge:(unint64_t)edge
{
  pocketCopy = pocket;
  v5 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  [v5 _setPrefersSolidColorHardPocket:pocketCopy];
}

- (id)_pocketColorForEdge:(unint64_t)edge
{
  v3 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  _color = [v3 _color];

  return _color;
}

- (void)_setPocketColor:(id)color forEdge:(unint64_t)edge
{
  colorCopy = color;
  v7 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  [v7 _setColor:colorCopy];
}

- (int64_t)_pocketPreferredUserInterfaceStyleForEdge:(unint64_t)edge
{
  v3 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  _preferredUserInterfaceStyle = [v3 _preferredUserInterfaceStyle];

  return _preferredUserInterfaceStyle;
}

- (void)_setPocketPreferredUserInterfaceStyle:(int64_t)style forEdge:(unint64_t)edge
{
  v5 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  [v5 _setPreferredUserInterfaceStyle:style];
}

- (id)_edgeEffectForEdge:(unint64_t)edge
{
  bottomEdgeEffect = 0;
  if (edge > 3)
  {
    if (edge == 4)
    {
      bottomEdgeEffect = [(UIScrollView *)self bottomEdgeEffect];
    }

    else if (edge == 8)
    {
      bottomEdgeEffect = [(UIScrollView *)self rightEdgeEffect];
    }
  }

  else if (edge == 1)
  {
    bottomEdgeEffect = [(UIScrollView *)self topEdgeEffect];
  }

  else if (edge == 2)
  {
    bottomEdgeEffect = [(UIScrollView *)self leftEdgeEffect];
  }

  return bottomEdgeEffect;
}

- (id)_overrideGeometryViewForEdge:(unint64_t)edge
{
  v3 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  _overrideGeometryView = [v3 _overrideGeometryView];

  return _overrideGeometryView;
}

- (void)_setOverrideGeometryView:(id)view forEdge:(unint64_t)edge
{
  viewCopy = view;
  v7 = [(UIScrollView *)self _edgeEffectForEdge:edge];
  [v7 _setOverrideGeometryView:viewCopy];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = UIScrollView;
  [(UIView *)&v4 setBackgroundColor:color];
  [(_UIScrollEdgeEffectViewInteraction *)self->_edgeEffectInteraction backgroundColorDidChange];
}

- (void)_setPocketRelativeSubview:(id)subview isOver:(BOOL)over forKey:(id)key
{
  overCopy = over;
  subviewCopy = subview;
  keyCopy = key;
  v9 = 126;
  if (overCopy)
  {
    v9 = 125;
  }

  v10 = OBJC_IVAR___UIScrollViewScrollAnimation__adjustsForContentOffsetDelta[v9];
  v11 = *(&self->super.super.super.isa + v10);
  if (subviewCopy)
  {
    v12 = 125;
    if (overCopy)
    {
      v12 = 126;
    }

    v13 = *(&self->super.super.super.isa + OBJC_IVAR___UIScrollViewScrollAnimation__adjustsForContentOffsetDelta[v12]);
    [v13 removeObjectForKey:keyCopy];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:517 capacity:1];
      v14 = *(&self->super.super.super.isa + v10);
      *(&self->super.super.super.isa + v10) = v11;
    }

    [(objc_class *)v11 setObject:subviewCopy forKey:keyCopy];
  }

  else
  {
    [(objc_class *)v11 removeObjectForKey:keyCopy];
  }

  [(UIScrollView *)self setNeedsLayout];
}

- (void)_layoutDonatedTitleView
{
  v3 = self->__donatedTitleView;
  if (v3)
  {
    if (![(UIView *)self _safeAreaInsetsFrozen]|| ([(UIView *)self transform], CGAffineTransformIsIdentity(&v29)))
    {
      view = [(_UIScrollViewDonatedTitleView *)v3 view];
      [(UIScrollView *)self _addScrollPocketAsSubview:view];

      [(_UIScrollViewDonatedTitleView *)v3 frameInGlobalCoordinateSpace];
      [(UIView *)self convertRect:0 fromView:?];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
      if (_viewControllerForAncestor)
      {
        v14 = _viewControllerForAncestor;
        parentViewController = [_viewControllerForAncestor parentViewController];
        if (parentViewController)
        {
          while (1)
          {
            v16 = parentViewController;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            parentViewController = [v16 parentViewController];
            v14 = v16;
            if (!parentViewController)
            {
              v14 = v16;
              v16 = 0;
              break;
            }
          }
        }

        view2 = [v14 view];
        [(UIView *)self bounds];
        [view2 convertRect:self fromView:?];
        v19 = v18;

        v6 = -v19;
      }

      [(UIScrollView *)self contentOffset];
      v21 = v6 + v20;
      [(UIScrollView *)self contentOffset];
      v23 = v22;
      [(UIScrollView *)self _minimumContentOffset];
      v25 = v8 - (v23 - v24);
      view3 = [(_UIScrollViewDonatedTitleView *)v3 view];
      [view3 setFrame:{v21, v25, v10, v12}];

      _flipsHorizontalAxis = [(UIView *)self _flipsHorizontalAxis];
      view4 = [(_UIScrollViewDonatedTitleView *)v3 view];
      [view4 _setFlipsHorizontalAxis:_flipsHorizontalAxis];
    }
  }
}

- (void)_setDonatedTitleView:(id)view
{
  viewCopy = view;
  donatedTitleView = self->__donatedTitleView;
  if (donatedTitleView != viewCopy)
  {
    v9 = viewCopy;
    if (donatedTitleView)
    {
      view = [(_UIScrollViewDonatedTitleView *)donatedTitleView view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->__donatedTitleView, view);
    viewCopy = v9;
    if (v9)
    {
      view2 = [(_UIScrollViewDonatedTitleView *)v9 view];
      [(UIView *)self insertSubview:view2 atIndex:0];

      [(UIScrollView *)self setNeedsLayout];
      viewCopy = v9;
    }
  }
}

- (id)_pocketDescription
{
  v3 = objc_alloc(MEMORY[0x1E698E688]);
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 initWithDescriptionStyle:succinctStyle];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__UIScrollView__pocketDescription__block_invoke;
  v16[3] = &unk_1E70F35B8;
  v16[4] = self;
  v6 = v5;
  v17 = v6;
  [v6 appendProem:self block:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __34__UIScrollView__pocketDescription__block_invoke_2;
  v13 = &unk_1E70F35B8;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [v7 appendBodySectionWithName:@"pockets" block:&v10];
  v8 = [v7 description];

  return v8;
}

id __34__UIScrollView__pocketDescription__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1752) count])
  {
    v2 = [*(a1 + 40) appendInt:objc_msgSend(*(*(a1 + 32) + 1752) withName:{"count"), @"underPocketSubviews"}];
  }

  result = [*(*(a1 + 32) + 1760) count];
  if (result)
  {
    return [*(a1 + 40) appendInt:objc_msgSend(*(*(a1 + 32) + 1760) withName:{"count"), @"overPocketSubviews"}];
  }

  return result;
}

id __34__UIScrollView__pocketDescription__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1744) withName:@"interaction"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1752) withName:@"underPocketSubviews" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1760) withName:@"overPocketSubviews" skipIfNil:1];
}

- (BOOL)_shouldTrackImmediatelyWhileDecelerating
{
  _avoidsJumpOnInterruptedBounce = [(UIScrollView *)self tracksImmediatelyWhileDecelerating]|| [(UIScrollView *)self _avoidsJumpOnInterruptedBounce];
  v4 = [(UIScrollView *)self _decelerationTrackingBehavior]!= 2 && ([(UIScrollView *)self _decelerationTrackingBehavior]== 1 || _avoidsJumpOnInterruptedBounce);
  if ([(UIScrollView *)self _isBouncing]&& (self->_parentAdjustment.x != 0.0 || self->_parentAdjustment.y != 0.0))
  {
    return 0;
  }

  return v4;
}

- (void)_clearParentAdjustment
{
  _containingScrollView = [(UIView *)self _containingScrollView];
  [(UIScrollView *)self _stopDraggingParent:_containingScrollView];

  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
}

- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside
{
  [(UIScrollView *)self _currentRubberBandCoefficient];

  _UIScrollViewRubberBandOffsetWithoutDecorationForOffset(outside, offset, maxOffset, minOffset, range);
  return result;
}

- (double)_rubberBandOffsetForOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside
{
  _refreshControl = [(UIScrollView *)self _refreshControl];
  v14 = _refreshControl;
  if (offset >= minOffset || _refreshControl == 0)
  {
    [(UIScrollView *)self _rubberBandOffsetWithoutDecorationForOffset:outside maxOffset:offset minOffset:maxOffset range:minOffset outside:range];
    offset = v16;
  }

  else if ([_refreshControl _hostAdjustsContentOffset] && (objc_msgSend(v14, "_areInsetsBeingApplied") & 1) != 0 || (objc_msgSend(v14, "_refreshControlHeight"), minOffset - v17 >= offset))
  {
    if (([v14 _areInsetsBeingApplied] & 1) == 0)
    {
      [v14 _refreshControlHeight];
      offset = v18 + offset;
    }

    [(UIScrollView *)self _rubberBandOffsetWithoutDecorationForOffset:outside maxOffset:offset minOffset:maxOffset range:minOffset outside:range];
    offset = v19;
    if (([v14 _areInsetsBeingApplied] & 1) == 0)
    {
      [v14 _refreshControlHeight];
      offset = offset - v20;
    }
  }

  return offset;
}

- (double)_offsetWithoutDecorationForRubberBandOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range
{
  [(UIScrollView *)self _currentRubberBandCoefficient];
  if (minOffset >= maxOffset)
  {
    maxOffsetCopy = minOffset;
  }

  else
  {
    maxOffsetCopy = maxOffset;
  }

  if (fabs(range) >= 2.22044605e-16)
  {
    if (maxOffsetCopy >= offset)
    {
      if (offset < minOffset)
      {
        v14 = (minOffset - offset) / range + -1.0;
        if (fabs(v14) >= 2.22044605e-16)
        {
          return minOffset - (-1.0 / v14 + -1.0) / v10 * range;
        }
      }
    }

    else
    {
      v13 = (offset - maxOffsetCopy) / range + -1.0;
      if (fabs(v13) >= 2.22044605e-16)
      {
        return maxOffsetCopy + (-1.0 / v13 + -1.0) / v10 * range;
      }
    }
  }

  return offset;
}

- (double)_offsetForRubberBandOffset:(double)offset maxOffset:(double)maxOffset minOffset:(double)minOffset range:(double)range
{
  _refreshControl = [(UIScrollView *)self _refreshControl];
  v12 = _refreshControl;
  if (offset < minOffset && _refreshControl != 0)
  {
    [_refreshControl _refreshControlHeight];
    if (minOffset - v15 < offset)
    {
      goto LABEL_10;
    }

    if (![v12 _areInsetsBeingApplied])
    {
      [v12 _refreshControlHeight];
      [(UIScrollView *)self _offsetWithoutDecorationForRubberBandOffset:v16 + offset maxOffset:maxOffset minOffset:minOffset range:range];
      v18 = v17;
      [v12 _refreshControlHeight];
      offset = v18 - v19;
      goto LABEL_10;
    }
  }

  [(UIScrollView *)self _offsetWithoutDecorationForRubberBandOffset:offset maxOffset:maxOffset minOffset:minOffset range:range];
  offset = v14;
LABEL_10:

  return offset;
}

- (void)_addRefreshInset:(double)inset
{
  [(UIScrollView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  if (dyld_program_sdk_at_least() && self->_contentInsetAdjustmentBehavior != 2)
  {
    self->_refreshControlContentInsetHeight = self->_refreshControlContentInsetHeight + inset;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }

  else
  {
    [(UIScrollView *)self contentInset];
    [(UIScrollView *)self setContentInset:v9 + inset];
  }

  [(UIScrollView *)self setContentOffset:v6, v8];
}

- (void)_removeRefreshInset:(double)inset
{
  [(UIScrollView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  if (dyld_program_sdk_at_least() && self->_contentInsetAdjustmentBehavior != 2)
  {
    self->_refreshControlContentInsetHeight = self->_refreshControlContentInsetHeight - inset;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }

  else
  {
    [(UIScrollView *)self contentInset];
    [(UIScrollView *)self setContentInset:v9 - inset];
  }

  [(UIScrollView *)self setContentOffset:v6, v8];
}

- (void)_adjustStartOffsetForGrabbedBouncingScrollView
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self contentOffset];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self _effectiveContentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (([(_UIScrollViewScrollableAncestor *)self->_scrollableAncestor _descendentScrollView:self shouldPreserveStartOffset:self->_startOffsetX, self->_startOffsetY]& 1) != 0)
  {
    return;
  }

  v19 = *&self->_accuracy;
  p_firstPageOffset = &self->_firstPageOffset;
  v21 = self->_firstPageOffset.horizontal - v14;
  if (*&v19 == 1.0)
  {
    v23 = round(v21);
    if (v8 < v23)
    {
      goto LABEL_29;
    }

    v36 = round(self->_firstPageOffset.vertical - v12);
    if (v10 < v36)
    {
      goto LABEL_21;
    }

    v37 = round(v18 + self->_contentSize.width) - v4;
    if (v23 >= v37)
    {
      v37 = v23;
    }

    if (v8 > v37)
    {
      goto LABEL_21;
    }

    v38 = round(v16 + self->_contentSize.height) - v6;
    if (v36 < v38)
    {
      v36 = v38;
    }

    if (v10 > v36)
    {
LABEL_21:
      if (v8 < v23)
      {
        goto LABEL_29;
      }

      v35 = round(v18 + self->_contentSize.width);
      goto LABEL_23;
    }
  }

  else
  {
    v22 = floor(v21);
    v23 = v22 + round(*&v19 * (v21 - v22)) / *&v19;
    if (v8 < v23)
    {
      goto LABEL_29;
    }

    v24 = self->_firstPageOffset.vertical - v12;
    v25 = floor(v24);
    v26 = v25 + round(*&v19 * (v24 - v25)) / *&v19;
    if (v10 < v26)
    {
      goto LABEL_12;
    }

    v27 = v18 + self->_contentSize.width;
    v28 = floor(v27);
    v29 = v28 + round(*&v19 * (v27 - v28)) / *&v19 - v4;
    if (v23 >= v29)
    {
      v29 = v23;
    }

    if (v8 > v29)
    {
      goto LABEL_12;
    }

    v30 = v16 + self->_contentSize.height;
    v31 = floor(v30);
    v32 = v31 + round(*&v19 * (v30 - v31)) / *&v19 - v6;
    if (v26 < v32)
    {
      v26 = v32;
    }

    if (v10 > v26)
    {
LABEL_12:
      v33 = v18 + self->_contentSize.width;
      v34 = floor(v33);
      v35 = v34 + round(*&v19 * (v33 - v34)) / *&v19;
LABEL_23:
      v39 = v35 - v4;
      if (v23 >= v39)
      {
        v40 = v23;
      }

      else
      {
        v40 = v39;
      }

      if (v8 <= v40)
      {
LABEL_30:
        v41 = self->_firstPageOffset.vertical - v12;
        if (*&v19 == 1.0)
        {
          v43 = round(v41);
          if (v10 >= v43)
          {
            p_contentSize = &self->_contentSize;
            v48 = round(v16 + self->_contentSize.height) - v6;
            if (v43 < v48)
            {
              v43 = v48;
            }

            if (v10 <= v43)
            {
              v49 = v18 + p_contentSize->width;
              goto LABEL_44;
            }
          }
        }

        else
        {
          v42 = floor(v41);
          v43 = v42 + round(*&v19 * (v41 - v42)) / *&v19;
          if (v10 >= v43)
          {
            v44 = v16 + self->_contentSize.height;
            v45 = floor(v44);
            v46 = v45 + round(*&v19 * (v44 - v45)) / *&v19 - v6;
            if (v43 < v46)
            {
              v43 = v46;
            }

            if (v10 <= v43)
            {
LABEL_41:
              p_contentSize = &self->_contentSize;
              v49 = v18 + self->_contentSize.width;
              if (*&v19 != 1.0)
              {
                v50.f64[0] = p_firstPageOffset->horizontal - v14;
                v50.f64[1] = v18 + self->_contentSize.width;
                v51 = vrndmq_f64(v50);
                v52 = vaddq_f64(v51, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v50, v51), *&v19)), vdupq_lane_s64(v19, 0)));
LABEL_45:
                [UIScrollView _offsetForRubberBandOffset:"_offsetForRubberBandOffset:maxOffset:minOffset:range:" maxOffset:v8 minOffset:v52.f64[1] - v4 range:?];
                v55 = v54;
                v56 = *&self->_accuracy;
                v57.f64[0] = self->_firstPageOffset.vertical - v12;
                v57.f64[1] = v16 + p_contentSize->height;
                if (*&v56 == 1.0)
                {
                  v59 = vrndaq_f64(v57);
                }

                else
                {
                  v58 = vrndmq_f64(v57);
                  v59 = vaddq_f64(v58, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v57, v58), *&v56)), vdupq_lane_s64(v56, 0)));
                }

                [UIScrollView _offsetForRubberBandOffset:"_offsetForRubberBandOffset:maxOffset:minOffset:range:" maxOffset:v10 minOffset:v59.f64[1] - v6 range:?];
                pan = self->_pan;
                v62 = self->_startOffsetY - v61;
                v63 = self->_startOffsetX - v55;

                [(UIPanGestureRecognizer *)pan setTranslation:self inView:v63, v62];
                return;
              }

LABEL_44:
              v53.f64[0] = p_firstPageOffset->horizontal - v14;
              v53.f64[1] = v49;
              v52 = vrndaq_f64(v53);
              goto LABEL_45;
            }
          }
        }

        self->_startOffsetY = v43;
        v19 = *&self->_accuracy;
        goto LABEL_41;
      }

      if (v23 < v39)
      {
        v23 = v39;
      }

LABEL_29:
      self->_startOffsetX = v23;
      v19 = *&self->_accuracy;
      goto LABEL_30;
    }
  }
}

- (void)_adjustBackgroundShadowsForContentSizeForcedVisible:(BOOL)visible withOffset:(double)offset
{
  visibleCopy = visible;
  [(UIScrollView *)self contentSize];
  v93 = v6;
  v8 = v7;
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v94 = v13;
  v15 = v14;
  [(UIScrollView *)self contentOffset];
  v91 = v17;
  v92 = v16;
  [(UIView *)self safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  _edgesApplyingSafeAreaInsetsToContentInset = [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToContentInset];
  v27 = 0.0;
  v28 = v21 + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 2) == 0)
  {
    v28 = 0.0;
  }

  if ((_edgesApplyingSafeAreaInsetsToContentInset & 4) != 0)
  {
    v29 = v23 + 0.0;
  }

  else
  {
    v29 = 0.0;
  }

  if ((_edgesApplyingSafeAreaInsetsToContentInset & 8) != 0)
  {
    v27 = v25 + 0.0;
  }

  v30 = 1;
  if (visibleCopy || v8 <= 0.0)
  {
    v32 = visibleCopy;
    v33 = visibleCopy;
    v34 = visibleCopy;
    v35 = v10;
    v31 = v94;
  }

  else
  {
    v31 = v94;
    v32 = visibleCopy;
    v33 = visibleCopy;
    v34 = visibleCopy;
    v35 = v10;
    if (v93 > 0.0)
    {
      v36 = v19 + 0.0;
      if ((_edgesApplyingSafeAreaInsetsToContentInset & 1) == 0)
      {
        v36 = 0.0;
      }

      v37 = *&self->_accuracy;
      v38 = -self->_contentInset.top - v36;
      v39 = v12 + v15;
      p_contentSize = &self->_contentSize;
      v41 = v29 + self->_contentSize.height + self->_contentInset.bottom;
      if (*&v37 == 1.0)
      {
        v33 = v39 > round(v41) + offset;
        v48.f64[0] = -self->_contentInset.left - v28;
        v48.f64[1] = v38;
        v45 = vrndaq_f64(v48);
        v47 = round(v27 + p_contentSize->width + self->_contentInset.right);
      }

      else
      {
        v42 = floor(v41);
        v33 = v39 > v42 + round(*&v37 * (v41 - v42)) / *&v37 + offset;
        v43.f64[0] = -self->_contentInset.left - v28;
        v43.f64[1] = v38;
        v44 = vrndmq_f64(v43);
        v45 = vaddq_f64(v44, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v43, v44), *&v37)), vdupq_lane_s64(v37, 0)));
        v46 = v27 + p_contentSize->width + self->_contentInset.right;
        v44.f64[0] = floor(v46);
        v47 = v44.f64[0] + round(*&v37 * (v46 - v44.f64[0])) / *&v37;
      }

      v32 = v91 < v45.f64[1];
      visibleCopy = v92 < v45.f64[0];
      v30 = v10 + v94 > v47;
      v34 = v30;
    }
  }

  AdjustShadowWithOffset(*self->_shadows, 1, v32 || visibleCopy || v30, v35, v12, v31, v15, 0.0);
  AdjustShadowWithOffset(self->_shadows[1], 4, v33 || visibleCopy || v30, v35, v12, v31, v15, 0.0);
  v49 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v49 userInterfaceIdiom];

  accuracy = self->_accuracy;
  width = self->_contentSize.width;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (accuracy == 1.0)
    {
      v54 = round(width);
      v57 = round(self->_contentSize.height);
    }

    else
    {
      v53 = floor(width);
      v54 = v53 + round(accuracy * (width - v53)) / accuracy;
      height = self->_contentSize.height;
      v56 = floor(height);
      v57 = v56 + round(accuracy * (height - v56)) / accuracy;
    }

    v63 = v54 + 20.0 + -6.0;
    v64 = -5.0;
    v65 = v57 + 20.0 + -5.0;
    v66 = -7.0;
  }

  else
  {
    if (accuracy == 1.0)
    {
      v59 = round(width);
      v62 = round(self->_contentSize.height);
    }

    else
    {
      v58 = floor(width);
      v59 = v58 + round(accuracy * (width - v58)) / accuracy;
      v60 = self->_contentSize.height;
      v61 = floor(v60);
      v62 = v61 + round(accuracy * (v60 - v61)) / accuracy;
    }

    v63 = v59 + 60.0;
    v65 = v62 + 60.0;
    v66 = -30.0;
    v64 = -30.0;
  }

  AdjustShadowWithOffset(self->_shadows[6], 3, v32 && visibleCopy, v66, v64, v63, v65, 0.0);
  AdjustShadowWithOffset(self->_shadows[8], 9, v32 & v34, v66, v64, v63, v65, 0.0);
  AdjustShadowWithOffset(self->_shadows[7], 6, v33 && visibleCopy, v66, v64, v63, v65, offset);
  v95 = v63;
  AdjustShadowWithOffset(self->_shadows[9], 12, v33 & v34, v66, v64, v63, v65, offset);
  v67 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v67 userInterfaceIdiom];

  v69 = 2;
  if (!visibleCopy)
  {
    v69 = 0;
  }

  v70 = 8;
  if (!v34)
  {
    v70 = 0;
  }

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v71 = 10.0;
  }

  else
  {
    v71 = 54.0;
  }

  v72 = UIRectInsetEdges(v70 | v69, v66, v64, v63, v65, v71);
  v74 = v73;
  v76 = v75;
  v78 = v77;
  AdjustShadowWithOffset(self->_shadows[2], 1, v32, v72, v73, v75, v77, 0.0);
  AdjustShadowWithOffset(self->_shadows[3], 4, v33, v72, v74, v76, v78, offset);
  v79 = +[UIDevice currentDevice];
  userInterfaceIdiom3 = [v79 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v81 = 10.0;
  }

  else
  {
    v81 = 54.0;
  }

  if (v33)
  {
    v82 = 4;
  }

  else
  {
    v82 = 0;
  }

  v83 = UIRectInsetEdges(v82 | v32, v66, v64, v95, v65, v81);
  v85 = v84;
  v87 = v86;
  v89 = v88;
  AdjustShadowWithOffset(self->_shadows[4], 2, visibleCopy, v83, v84, v86, v88, 0.0);
  v90 = *(self->_shadows + 5);

  AdjustShadowWithOffset(v90, 8, v34, v83, v85, v87, v89, 0.0);
}

- (void)_adjustBackgroundShadowsForContentSizeForcedVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIScrollView *)self _shadowHeightOffset];

  [(UIScrollView *)self _adjustBackgroundShadowsForContentSizeForcedVisible:visibleCopy withOffset:?];
}

- (void)_stopScrollDecelerationNotify:(BOOL)notify
{
  scrollHeartbeat = self->_scrollHeartbeat;
  if (scrollHeartbeat)
  {
    notifyCopy = notify;
    v6 = scrollHeartbeat;
    v7 = self->_scrollHeartbeat;
    self->_scrollHeartbeat = 0;

    *(&self->_scrollViewFlags + 12) &= ~0x8000000000000uLL;
    if ([(UIScrollView *)self _effectiveShowsVerticalScrollIndicator]|| [(UIScrollView *)self _effectiveShowsHorizontalScrollIndicator])
    {
      [(UIScrollView *)self _adjustScrollerIndicators:0 alwaysShowingThem:0];
    }

    [(UIScrollView *)self _unregisterForSpringBoardBlankedScreenNotification];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"_UIApplicationRunLoopModePopNotification" object:UIApp];

    [(UIScrollView *)self _popTrackingRunLoopModeIfNecessaryForReason:@"Deceleration stopped"];
    [(CADisplayLink *)v6 invalidate];
    [(_UIScrollViewVFD *)self->_vfd deactivateSubreason:?];
    _UIQOSManagedCommitsEnd(self, @"Deceleration");
    [(UIScrollView *)self _endActivityTrackingIfNeededForReason:0];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690D8);
    v10 = *(CategoryCachedImpl + 8);
    if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      _os_signpost_emit_unreliably_with_name_impl();
    }

    v11 = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690E0);
    v12 = *(v11 + 8);
    if (os_signpost_id_make_with_pointer(*(v11 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      _os_signpost_emit_unreliably_with_name_impl();
    }

    self->_telemetryOffsetChangeHighRateDuration = 0.0;
    self->_telemetryOffsetChangeCount = 0;
    self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
    kdebug_trace();
    if (notifyCopy)
    {
      [(UIScrollView *)self _scrollViewDidEndDeceleratingForDelegate];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"DidEndSmoothScrolling" object:self];
    }
  }
}

- (void)_stopScrollingNotify:(BOOL)notify pin:(BOOL)pin tramplingAnimationDependentFlags:(BOOL)flags
{
  pinCopy = pin;
  notifyCopy = notify;
  self->_verticalVelocity = 0.0;
  self->_horizontalVelocity = 0.0;
  if (flags)
  {
    p_scrollViewFlags = &self->_scrollViewFlags;
    *&self->_scrollViewFlags &= 0xFFFFFFFFFF7FFFFDLL;
    [(UIScrollView *)self _didEndDirectManipulationWithScrubbingDirection:(*(&self->_scrollViewFlags + 5) >> 11) & 0xF];
    *(p_scrollViewFlags + 5) &= 0xFFFF87FF;
    *(p_scrollViewFlags + 12) &= 0xFFFFFFFFFFFFFC3FLL;
  }

  *&self->_scrollViewFlags &= 0xFFFFFFFFFFFFFFCFLL;
  self->_fastScrollCount = 0;
  self->_fastScrollMultiplier = 1.0;
  [(UIScrollView *)self _commitScrollBounceStatisticsTrackingState];
  [(UIScrollView *)self _clearScrollBounceStatisticsTrackingState];
  if (pinCopy)
  {
    if ([(UIScrollView *)self isPagingEnabled])
    {
      [(UIView *)self bounds];
      if (![(UIScrollView *)self _contentOffsetIsAtPagingBoundary:?])
      {
        if (!self->_scrollHeartbeat)
        {
          [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
        }

        [(UIScrollView *)self setContentOffset:self->_pageDecelerationTarget.x, self->_pageDecelerationTarget.y];
      }
    }

    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
    *(&self->_scrollViewFlags + 12) &= ~0x10000000000uLL;
  }

  if (self->_scrollHeartbeat)
  {

    [(UIScrollView *)self _stopScrollDecelerationNotify:notifyCopy];
  }

  else
  {

    [(UIScrollView *)self _popTrackingRunLoopModeIfNecessaryForReason:@"stopScrollingNotify called without timer"];
  }
}

- (void)_stopScrollingAndZoomingAnimationsPinningToContentViewport:(BOOL)viewport tramplingAnimationDependentFlags:(BOOL)flags
{
  viewportCopy = viewport;
  [(UIScrollView *)self _stopScrollingNotify:0 pin:viewport tramplingAnimationDependentFlags:flags];
  if ([(UIScrollView *)self isScrollAnimating])
  {
    [(UIScrollView *)self _clearContentOffsetAnimation];
  }

  if ([(UIScrollView *)self isZoomAnimating])
  {
    _getDelegateZoomView = [(UIScrollView *)self _getDelegateZoomView];
    zoomAnimation = self->_zoomAnimation;
    self->_zoomAnimation = 0;

    if ([(UIScrollView *)self _ownsAnimationForKey:@"transform" ofView:_getDelegateZoomView])
    {
      layer = [_getDelegateZoomView layer];
      [layer removeAnimationForKey:@"transform"];
    }

    if ([(UIScrollView *)self _ownsAnimationForKey:@"position" ofView:_getDelegateZoomView])
    {
      layer2 = [_getDelegateZoomView layer];
      [layer2 removeAnimationForKey:@"position"];
    }

    if ([(UIScrollView *)self _ownsAnimationForKey:@"bounds" ofView:self])
    {
      layer3 = [(UIView *)self layer];
      [layer3 removeAnimationForKey:@"bounds"];
    }

    if ([(UIScrollView *)self _ownsAnimationForKey:@"bounds.origin" ofView:self])
    {
      layer4 = [(UIView *)self layer];
      [layer4 removeAnimationForKey:@"bounds.origin"];
    }

    if ([(UIScrollView *)self _ownsAnimationForKey:@"bounds.size" ofView:self])
    {
      layer5 = [(UIView *)self layer];
      [layer5 removeAnimationForKey:@"bounds.size"];
    }

    [(UIViewAnimationState *)self->_zoomAnimationState sendDelegateDidStopManually:1];
    if (viewportCopy)
    {
      [(UIScrollView *)self zoomScale];
      v13 = v12;
      [(UIScrollView *)self _zoomAnchorPoint];
      [(UIScrollView *)self setZoomScale:0 withAnchorPoint:0 allowRubberbanding:0 animated:v13 duration:v14 notifyDelegate:v15, 0.0];
    }
  }
}

- (void)_resetScrollingWithUIEvent:(id)event
{
  [(UIScrollView *)self contentOffset];
  self->_startOffsetX = v4;
  [(UIScrollView *)self contentOffset];
  self->_startOffsetY = v5;
}

- (BOOL)_beginTrackingWithEvent:(id)event
{
  v54 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _scrollDeviceCategory = [eventCopy _scrollDeviceCategory];
  }

  else
  {
    _scrollDeviceCategory = 0;
  }

  self->_currentScrollDeviceCategory = _scrollDeviceCategory;
  p_scrollViewFlags = &self->_scrollViewFlags;
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x100000) != 0 || (*(&self->_scrollViewFlags + 12) & 0x10) != 0)
  {
    LOBYTE(WeakRetained) = 0;
LABEL_20:
    *p_scrollViewFlags = scrollViewFlags & 0xFFFFFFFFFF7FFFFFLL;
    goto LABEL_21;
  }

  [(UIScrollView *)self _clearContentOffsetAnimation];
  [(UIScrollView *)self _trackingDidBegin];
  *p_scrollViewFlags &= 0xFFFFFFFFBFFFFFCDLL;
  if (self->_previousHorizontalVelocity > 0.0 || self->_previousVerticalVelocity > 0.0)
  {
    [(UIScrollView *)self setNeedsLayout];
  }

  self->_previousVerticalVelocity = 0.0;
  self->_previousHorizontalVelocity = 0.0;
  if (self->_horizontalVelocity == 0.0 && self->_verticalVelocity == 0.0)
  {
    *p_scrollViewFlags &= ~0x800000uLL;
  }

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  [(UIScrollView *)self contentOffset];
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self _effectiveContentInset];
  accuracy = self->_accuracy;
  v21 = self->_firstPageOffset.horizontal - v20;
  if (accuracy == 1.0)
  {
    v42 = round(v21);
    if (v13 >= v42)
    {
      v26 = round(self->_firstPageOffset.vertical - v16);
      if (v15 >= v26)
      {
        v43 = round(v18 + self->_contentSize.width) - v9;
        if (v42 < v43)
        {
          v42 = v43;
        }

        if (v13 <= v42)
        {
          v32 = round(v17 + self->_contentSize.height);
          goto LABEL_50;
        }
      }
    }

LABEL_36:
    LODWORD(WeakRetained) = 1;
    goto LABEL_37;
  }

  v22 = floor(v21);
  v23 = v22 + round(accuracy * (v21 - v22)) / accuracy;
  if (v13 < v23)
  {
    goto LABEL_36;
  }

  v24 = self->_firstPageOffset.vertical - v16;
  v25 = floor(v24);
  v26 = v25 + round(accuracy * (v24 - v25)) / accuracy;
  if (v15 < v26)
  {
    goto LABEL_36;
  }

  v27 = v18 + self->_contentSize.width;
  v28 = floor(v27);
  v29 = v28 + round(accuracy * (v27 - v28)) / accuracy - v9;
  if (v23 < v29)
  {
    v23 = v29;
  }

  if (v13 > v23)
  {
    goto LABEL_36;
  }

  v30 = v17 + self->_contentSize.height;
  v31 = floor(v30);
  v32 = v31 + round(accuracy * (v30 - v31)) / accuracy;
LABEL_50:
  v50 = v32 - v11;
  if (v26 < v50)
  {
    v26 = v50;
  }

  LODWORD(WeakRetained) = v15 > v26;
LABEL_37:
  if (!self->_scrollHeartbeat)
  {
    goto LABEL_21;
  }

  if (WeakRetained)
  {
    LOBYTE(WeakRetained) = 1;
    [(UIScrollView *)self _stopScrollingNotify:1 pin:0];
    scrollViewFlags = *p_scrollViewFlags;
    goto LABEL_20;
  }

  *(&self->_scrollViewFlags + 12) |= 0x8000000000000uLL;
  asyncScrollDecelerationState = self->_asyncScrollDecelerationState;
  self->_asyncScrollDecelerationState = 0;

  [eventCopy timestamp];
  self->_lastScrollInterruptionByPointerEventTime = v45;
  [(CADisplayLink *)self->_scrollHeartbeat setPaused:1];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690E8);
  v47 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *v51 = 134350080;
    *&v51[4] = self->_telemetryOffsetChangeCount;
    *&v51[12] = 2050;
    *&v51[14] = self->_telemetryOffsetChangeHighRateDuration;
    *&v51[22] = 2050;
    width = self->_telemetryOffsetChange.width;
    *v53 = 2050;
    *&v53[2] = self->_telemetryOffsetChange.height;
    *&v53[10] = 2050;
    *&v53[12] = self;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  v48 = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA9690F0);
  v49 = *(v48 + 8);
  if (os_signpost_id_make_with_pointer(*(v48 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    *v51 = 134350080;
    *&v51[4] = self->_telemetryOffsetChangeCount;
    *&v51[12] = 2050;
    *&v51[14] = self->_telemetryOffsetChangeHighRateDuration;
    *&v51[22] = 2050;
    width = self->_telemetryOffsetChange.width;
    *v53 = 2050;
    *&v53[2] = self->_telemetryOffsetChange.height;
    *&v53[10] = 2050;
    *&v53[12] = self;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  self->_telemetryOffsetChangeHighRateDuration = 0.0;
  self->_telemetryOffsetChangeCount = 0;
  self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
  kdebug_trace();
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _scrollViewDidInterruptDecelerating:self];
  }

  kdebug_trace();
  [(_UIScrollViewVFD *)self->_vfd deactivateSubreason:?];
  _UIQOSManagedCommitsEnd(self, @"Deceleration");
  [(UIScrollView *)self _endActivityTrackingIfNeededForReason:0];

  LOBYTE(WeakRetained) = 0;
LABEL_21:
  [(UIScrollView *)self _resetScrollingWithUIEvent:eventCopy, *v51, *&v51[16], *&width, *v53, *&v53[16], v54];
  if ((*(&self->_scrollViewFlags + 2) & 0x80) != 0 && ([eventCopy timestamp], v34 <= self->_fastScrollEndTime + 1.0))
  {
    fastScrollMultiplier = self->_fastScrollMultiplier;
  }

  else
  {
    self->_fastScrollMultiplier = 1.0;
    self->_fastScrollCount = 0;
    fastScrollMultiplier = 1.0;
  }

  self->_fastScrollStartMultiplier = fastScrollMultiplier;
  if (self->_discreteFastScrollEndTime == 0.0)
  {
    goto LABEL_29;
  }

  [eventCopy timestamp];
  v37 = v36;
  discreteFastScrollEndTime = self->_discreteFastScrollEndTime;
  v39 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DiscreteFastScrollTimeout, @"DiscreteFastScrollTimeout", _UIInternalPreferenceUpdateDouble);
  v40 = *&qword_1EA95E860;
  if (v39)
  {
    v40 = 1.5;
  }

  if (v37 > discreteFastScrollEndTime + v40)
  {
LABEL_29:
    [(UIScrollView *)self _resetDiscreteFastScroll];
  }

  self->_discreteFastScrollStartMultiplier = self->_discreteFastScrollMultiplier;

  return WeakRetained;
}

- (void)_addScrollViewScrollObserver:(id)observer
{
  v21 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy)
  {
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    _observerImplementingWillEndDraggingMethod = [(UIScrollView *)self _observerImplementingWillEndDraggingMethod];
    v6 = _observerImplementingWillEndDraggingMethod;
    if (!_observerImplementingWillEndDraggingMethod || _observerImplementingWillEndDraggingMethod == observerCopy)
    {
      goto LABEL_11;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v9 = NSStringFromSelector(sel__observeScrollView_willEndDraggingWithVelocity_targetContentOffset_unclampedOriginalTarget_);
      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      selfCopy2 = self;
      v17 = 2112;
      v18 = observerCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIScrollView does not support multiple observers implementing %@. Scroll view %@, new observer %@, removing old observer %@", &v13, 0x2Au);
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &_addScrollViewScrollObserver____s_category) + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        [(UIScrollView *)self _removeScrollViewScrollObserver:v6];
LABEL_11:

        goto LABEL_12;
      }

      v8 = v7;
      v9 = NSStringFromSelector(sel__observeScrollView_willEndDraggingWithVelocity_targetContentOffset_unclampedOriginalTarget_);
      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      selfCopy2 = self;
      v17 = 2112;
      v18 = observerCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UIScrollView does not support multiple observers implementing %@. Scroll view %@, new observer %@, removing old observer %@", &v13, 0x2Au);
    }

LABEL_9:
    goto LABEL_10;
  }

LABEL_12:
  scrollNotificationObservers = self->_scrollNotificationObservers;
  if (scrollNotificationObservers)
  {
    weakObjectsHashTable = [(NSHashTable *)scrollNotificationObservers copy];
  }

  else
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  }

  v12 = self->_scrollNotificationObservers;
  self->_scrollNotificationObservers = weakObjectsHashTable;

  [(NSHashTable *)self->_scrollNotificationObservers addObject:observerCopy];
LABEL_16:
}

- (void)_removeScrollViewScrollObserver:(id)observer
{
  scrollNotificationObservers = self->_scrollNotificationObservers;
  if (scrollNotificationObservers)
  {
    observerCopy = observer;
    v5 = [(NSHashTable *)scrollNotificationObservers copy];
    v6 = self->_scrollNotificationObservers;
    self->_scrollNotificationObservers = v5;

    [(NSHashTable *)self->_scrollNotificationObservers removeObject:observerCopy];
  }
}

- (BOOL)_canCancelContentTouches:(id)touches
{
  v34 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [touchesCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v29;
  do
  {
    v9 = 0;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(touchesCopy);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      view = [v10 view];
      if (view)
      {
        view3 = view;
        view2 = [v10 view];
        v14 = view2;
        if (view2 != self)
        {
          if ([v10 isDelayed])
          {
            phase = [v10 phase];

            if (phase != 3)
            {
              goto LABEL_14;
            }

            if (v7)
            {
LABEL_11:
              view3 = [v10 view];
              [v7 addObject:view3];
LABEL_13:

              goto LABEL_14;
            }
          }

          else
          {

            if (v7)
            {
              goto LABEL_11;
            }
          }

          v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          goto LABEL_11;
        }

        goto LABEL_13;
      }

LABEL_14:
      ++v9;
    }

    while (v6 != v9);
    v16 = [touchesCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    v6 = v16;
  }

  while (v16);
LABEL_21:
  if ((*(&self->_scrollViewFlags + 2) & 2) != 0 || ![v7 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (![(UIScrollView *)self touchesShouldCancelInContentView:*(*(&v24 + 1) + 8 * i), v24])
          {
            v17 = 0;
            goto LABEL_34;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_34:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_addContentSubview:(id)subview atBack:(BOOL)back
{
  backCopy = back;
  subviewCopy = subview;
  if (backCopy)
  {
    shadows = self->_shadows;
    if (!shadows || (v7 = *shadows) == 0)
    {
      layer = [(UIView *)self layer];
      sublayers = [layer sublayers];

      if (!-[_UIScrollViewScrollIndicator count](sublayers, "count") || (-[_UIScrollViewScrollIndicator objectAtIndex:](sublayers, "objectAtIndex:", 0), v14 = objc_claimAutoreleasedReturnValue(), [subviewCopy layer], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v14 != v15))
      {
        [(UIView *)self insertSubview:subviewCopy atIndex:0];
      }

      goto LABEL_13;
    }

    sublayers = v7;
    selfCopy2 = self;
    v10 = subviewCopy;
    v11 = -2;
LABEL_9:
    [(UIView *)selfCopy2 _addSubview:v10 positioned:v11 relativeTo:sublayers];
LABEL_13:

LABEL_14:
    v16 = subviewCopy;
    goto LABEL_15;
  }

  verticalScrollIndicator = self->_verticalScrollIndicator;
  if (verticalScrollIndicator || (verticalScrollIndicator = self->_horizontalScrollIndicator) != 0)
  {
    sublayers = verticalScrollIndicator;
LABEL_8:
    selfCopy2 = self;
    v10 = subviewCopy;
    v11 = -3;
    goto LABEL_9;
  }

  allValues = [(NSMutableDictionary *)self->_accessoryViews allValues];
  sublayers = [allValues firstObject];

  if (sublayers)
  {
    goto LABEL_8;
  }

  layer2 = [(UIView *)self layer];
  sublayers2 = [layer2 sublayers];
  lastObject = [sublayers2 lastObject];
  layer3 = [subviewCopy layer];

  v16 = subviewCopy;
  if (lastObject != layer3)
  {
    [(UIView *)self addSubview:subviewCopy];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_clearContentOffsetAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_animation);

  if (WeakRetained == animationCopy)
  {
    objc_storeWeak(&self->_animation, 0);
  }

  v6 = objc_loadWeakRetained(&self->_animation);

  if (!v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__UIScrollView__clearContentOffsetAnimation___block_invoke;
    v7[3] = &unk_1E712A710;
    v7[4] = self;
    [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v7];
  }
}

uint64_t __45__UIScrollView__clearContentOffsetAnimation___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewHasClearedContentOffsetAnimation:v5];
  }

  return result;
}

- (void)_beginDeferredContentOffsetTransitionToOffset:(CGPoint)offset contentSize:(CGSize)size
{
  self->_deferredUpdateTargetIsValid = 1;
  self->_deferredUpdateTargetContentOffset = offset;
  self->_deferredUpdateTargetContentSize = size;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__UIScrollView__beginDeferredContentOffsetTransitionToOffset_contentSize___block_invoke;
  v4[3] = &unk_1E712A898;
  v4[4] = self;
  offsetCopy = offset;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v4];
}

uint64_t __74__UIScrollView__beginDeferredContentOffsetTransitionToOffset_contentSize___block_invoke(double *a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 4);
    v6 = a1[5];
    v7 = a1[6];

    return [a2 _observeScrollView:v5 didBeginTransitionToDeferredContentOffset:{v6, v7}];
  }

  return result;
}

- (void)_commitDeferredContentOffsetTransition
{
  if (self->_deferredUpdateTargetIsValid)
  {
    [(UIScrollView *)self setContentOffset:self->_deferredUpdateTargetContentOffset.x, self->_deferredUpdateTargetContentOffset.y];
    [(UIScrollView *)self setContentSize:self->_deferredUpdateTargetContentSize.width, self->_deferredUpdateTargetContentSize.height];
    self->_deferredUpdateTargetIsValid = 0;
  }
}

- (CGSize)_contentSizeOrDeferredContentSize
{
  if (self->_deferredUpdateTargetIsValid)
  {
    width = self->_deferredUpdateTargetContentSize.width;
    height = self->_deferredUpdateTargetContentSize.height;
  }

  else
  {
    [(UIScrollView *)self contentSize:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_setContentOffset:(CGPoint)offset duration:(double)duration animationCurve:(int)curve animationConfigurator:(id)configurator
{
  v6 = *&curve;
  y = offset.y;
  x = offset.x;
  configuratorCopy = configurator;
  if (duration <= 0.0)
  {
    [(UIScrollView *)self setContentOffset:0 animated:x, y];
  }

  else
  {
    contentOffsetAnimationDuration = self->_contentOffsetAnimationDuration;
    [(UIScrollView *)self _setContentOffsetAnimationDuration:duration];
    [(UIScrollView *)self _setContentOffset:1 animated:v6 animationCurve:1 animationAdjustsForContentOffsetDelta:0 animation:configuratorCopy animationConfigurator:x, y];
    [(UIScrollView *)self _setContentOffsetAnimationDuration:contentOffsetAnimationDuration];
  }
}

- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)animation
{
  y = animation.y;
  x = animation.x;
  v6 = _smoothDecelerationAnimation();
  [(UIScrollView *)self _setContentOffset:v6 animation:x, y];
}

- (void)_setContentOffset:(CGPoint)offset animated:(BOOL)animated animationCurve:(int)curve animationAdjustsForContentOffsetDelta:(BOOL)delta animation:(id)animation animationConfigurator:(id)configurator
{
  deltaCopy = delta;
  v10 = *&curve;
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  animationCopy = animation;
  configuratorCopy = configurator;
  if ((*(&self->_scrollViewFlags + 2) & 8) == 0)
  {
    if (self->_scrollHeartbeat)
    {
      [(UIScrollView *)self _stopScrollingNotify:1 pin:0];
    }

    v16 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
    scrollManager = [v16 scrollManager];
    [scrollManager cancelScrollingForScrollableContainer:self];

    WeakRetained = objc_loadWeakRetained(&self->_animation);
    if (WeakRetained)
    {
      [(UIScrollView *)self _stopScrollingAndZoomingAnimationsPinningToContentViewport:0 tramplingAnimationDependentFlags:0];
    }

    if (dyld_program_sdk_at_least())
    {
      [(UIScrollView *)self _roundedProposedContentOffset:x, y];
      v20 = v19;
      v22 = v21;
    }

    else
    {
      v22 = y;
      v20 = x;
    }

    [(UIScrollView *)self contentOffset];
    if (v20 != v24 || v22 != v23)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = defaultCenter;
      if (animatedCopy)
      {
        window = [(UIView *)self window];

        if (window)
        {
          [(UIScrollView *)self _animateScrollToContentOffset:v10 animationCurve:deltaCopy animationAdjustsForContentOffsetDelta:animationCopy animation:configuratorCopy animationConfigurator:x, y];
        }

        else
        {
          [v26 postNotificationName:@"UITextSelectionWillScroll" object:self];
          [(UIScrollView *)self setContentOffset:x, y];
          [(UIScrollView *)self _scrollViewAnimationEnded:0 finished:1];
        }
      }

      else
      {
        [defaultCenter postNotificationName:@"UITextSelectionWillScroll" object:self];
        [(UIScrollView *)self setContentOffset:x, y];
        [v26 postNotificationName:@"UITextSelectionDidScroll" object:self];
      }
    }
  }
}

- (void)_animateScrollToContentOffset:(CGPoint)offset animationCurve:(int)curve animationAdjustsForContentOffsetDelta:(BOOL)delta animation:(id)animation animationConfigurator:(id)configurator
{
  v10 = *&curve;
  y = offset.y;
  x = offset.x;
  animationCopy = animation;
  configuratorCopy = configurator;
  v15 = [(UIAnimation *)[UIScrollViewScrollAnimation alloc] initWithTarget:self];
  [(UIScrollView *)self _originalOffsetForAnimatedSetContentOffset];
  v15->_originalOffset.x = v16;
  v15->_originalOffset.y = v17;
  v15->_targetOffset.x = x;
  v15->_targetOffset.y = y;
  [(UIScrollView *)self _adjustedContentOffsetForContentOffset:x, y];
  v19 = x == v18;
  if (y != v20)
  {
    v19 = 0;
  }

  v15->_targetOffsetValidAtStart = v19;
  v15->_accuracy = self->_accuracy;
  v15->_adjustsForContentOffsetDelta = delta;
  if (self->_scrollViewFlags.shouldRevealScrollIndicators)
  {
    [(UIScrollViewScrollAnimation *)v15 setRevealsHorizontalScrollIndicator:v15->_originalOffset.x != v15->_targetOffset.x];
    [(UIScrollViewScrollAnimation *)v15 setRevealsVerticalScrollIndicator:v15->_originalOffset.y != v15->_targetOffset.y];
  }

  [(UIAnimation *)v15 setDelegate:self];
  if (animationCopy)
  {
    [animationCopy duration];
    contentOffsetAnimationDuration = v21;
    objc_storeStrong(&v15->_customAnimation, animation);
    if (!configuratorCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  contentOffsetAnimationDuration = self->_contentOffsetAnimationDuration;
  [(UIAnimation *)v15 setAnimationCurve:v10];
  if (configuratorCopy)
  {
LABEL_7:
    configuratorCopy[2](configuratorCopy, v15);
  }

LABEL_8:
  v23 = +[UIAnimator sharedAnimator];
  [v23 addAnimation:v15 withDuration:1 start:contentOffsetAnimationDuration];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextSelectionWillScroll" object:self];

  objc_storeWeak(&self->_animation, v15);
}

- (void)_updateScrollAnimationForChangedTargetOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  WeakRetained = objc_loadWeakRetained(&self->_animation);
  if (WeakRetained)
  {
    WeakRetained[13] = x;
    WeakRetained[14] = y;
  }
}

- (void)_setAutomaticContentOffsetAdjustmentEnabled:(BOOL)enabled
{
  v3 = 0x20000;
  if (enabled)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)_setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:(BOOL)change
{
  if (change)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFBFFFFFF | v3;
}

- (void)_forceDelegateScrollViewDidZoom:(BOOL)zoom
{
  v3 = 0x200000;
  if (!zoom)
  {
    v3 = 0;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  endedCopy = ended;
  v5 = *(&self->_scrollViewFlags + 12);
  if ((v5 & 3) == 0)
  {
    [(UIScrollView *)self _hideScrollIndicators];
    v5 = *(&self->_scrollViewFlags + 12);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(&self->_scrollViewFlags + 12) = v5 & 0xFFFFFFFFFFFFDFFFLL;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained scrollViewDidScrollToTop:self];
    }

    goto LABEL_20;
  }

  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0x4000) != 0)
  {
    *(&self->_scrollViewFlags + 12) = v5 & 0xFFFFFFFFFFFF9FFFLL;
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3 && !-[UIScrollView isPagingEnabled](self, "isPagingEnabled"))
    {
      touchLevel = self->_touchLevel;

      if (touchLevel != 2 && [(UIScrollView *)self _bounceForCarPlayIfNecessary])
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [(UIScrollView *)self _scrollViewDidEndDeceleratingForDelegate];
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && endedCopy[152] == 1)
  {
    if ((endedCopy[153] & 1) == 0 && (*(&self->_scrollViewFlags + 4) & 1) == 0)
    {
      [(UIScrollView *)self _endScrollingCursorOverrideIfNecessary];
    }
  }

  else if (!self->_scrollAnimatingViaAssertion)
  {
    [(UIScrollView *)self _delegateScrollViewAnimationEnded];
  }

LABEL_20:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextSelectionDidScroll" object:self];
}

- (void)animator:(id)animator startAnimation:(id)animation
{
  self->_telemetryOffsetChangeHighRateDuration = 0.0;
  self->_telemetryOffsetChangeCount = 0;
  self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
  _UIQOSManagedCommitsBegin(self, @"Animation");
  [(_UIScrollViewVFD *)self->_vfd activateSubreason:?];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &animator_startAnimation____s_category);
  v6 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  [(UIScrollView *)self _beginActivityTrackingIfNeededForReason:1];
}

- (void)animator:(id)animator stopAnimation:(id)animation fraction:(float)fraction
{
  [(UIScrollView *)self _scrollViewAnimationEnded:animation finished:fraction >= 1.0];
  [(_UIScrollViewVFD *)self->_vfd deactivateSubreason:?];
  _UIQOSManagedCommitsEnd(self, @"Animation");
  [(UIScrollView *)self _endActivityTrackingIfNeededForReason:1];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &animator_stopAnimation_fraction____s_category);
  v7 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  self->_telemetryOffsetChangeHighRateDuration = 0.0;
  self->_telemetryOffsetChangeCount = 0;
  self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
}

- (void)_setContentOffsetPinned:(CGPoint)pinned
{
  [(UIScrollView *)self setContentOffset:pinned.x, pinned.y];

  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
}

- (void)_setContentOffsetPinned:(CGPoint)pinned animated:(BOOL)animated
{
  [(UIScrollView *)self setContentOffset:animated animated:pinned.x, pinned.y];

  [(UIScrollView *)self _adjustContentOffsetIfNecessary];
}

- (void)_setContentScrollInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentScrollInset.top, v3), vceqq_f64(*&self->_contentScrollInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentScrollInset = inset;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
  }
}

- (void)_setApplyVerticalSafeAreaInsetsToNonscrollingContent:(BOOL)content
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  if (((((*(&self->_scrollViewFlags + 19) & 0x10) == 0) ^ content) & 1) == 0)
  {
    contentCopy = content;
    [(UIScrollView *)self _systemContentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
    v15 = 0x1000000000000000;
    if (!contentCopy)
    {
      v15 = 0;
    }

    *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xEFFFFFFFFFFFFFFFLL | v15;

    [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v7, v9, v11, v13];
  }
}

- (unint64_t)_edgesApplyingSafeAreaInsetsToContentInsetForContentSize:(CGSize)size
{
  contentInsetAdjustmentBehavior = self->_contentInsetAdjustmentBehavior;
  if (contentInsetAdjustmentBehavior >= 2)
  {
    if (contentInsetAdjustmentBehavior == 3)
    {
      return 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((*&self->_scrollViewFlags & 0x300000) == 0x100000)
    {
      v5 = 0;
    }

    else
    {
      height = size.height;
      width = size.width;
      [(UIView *)self bounds];
      x = v13.origin.x;
      y = v13.origin.y;
      v10 = v13.size.width;
      v11 = v13.size.height;
      if (width <= CGRectGetWidth(v13) + 0.0001)
      {
        if ([(UIScrollView *)self _contentScrollsAlongXAxis])
        {
          v5 = 15;
        }

        else
        {
          v5 = 5;
        }
      }

      else
      {
        v5 = 15;
      }

      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = v10;
      v14.size.height = v11;
      size.width = CGRectGetHeight(v14) + 0.0001;
      if (height <= size.width && ![(UIScrollView *)self _contentScrollsAlongYAxis])
      {
        v5 &= 0xAAAAAAAAAAAAAAAALL;
      }
    }

    if ([(UIScrollView *)self _applyVerticalSafeAreaInsetsToNonscrollingContent:size.width]&& !self->_contentInsetAdjustmentBehavior)
    {
      v5 |= 5uLL;
    }
  }

  return v5;
}

- (UIEdgeInsets)_systemContentInsetIncludingAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  p_contentScrollInset = &self->_contentScrollInset;
  [(UIView *)self safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _edgesApplyingSafeAreaInsetsToContentInset = [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToContentInset];
  if (_edgesApplyingSafeAreaInsetsToContentInset)
  {
    top = v7 + p_contentScrollInset->top;
  }

  else
  {
    top = p_contentScrollInset->top;
  }

  if ((_edgesApplyingSafeAreaInsetsToContentInset & 2) != 0)
  {
    left = v9 + p_contentScrollInset->left;
  }

  else
  {
    left = p_contentScrollInset->left;
  }

  if ((_edgesApplyingSafeAreaInsetsToContentInset & 4) != 0)
  {
    bottom = v11 + p_contentScrollInset->bottom;
  }

  else
  {
    bottom = p_contentScrollInset->bottom;
  }

  if ((_edgesApplyingSafeAreaInsetsToContentInset & 8) != 0)
  {
    right = v13 + p_contentScrollInset->right;
  }

  else
  {
    right = p_contentScrollInset->right;
  }

  if (!dyld_program_sdk_at_least() || self->_contentInsetAdjustmentBehavior != 2 || (*(&self->_scrollViewFlags + 21) & 0x80) != 0)
  {
    bottom = bottom + self->_keyboardBottomInsetAdjustment;
  }

  [(UIScrollView *)self _systemInsetAdjustmentSum];
  v20 = top + v19 + self->_refreshControlContentInsetHeight;
  if (accessoriesCopy)
  {
    if ([(UIScrollView *)self _contentScrollsAlongXAxis])
    {
      [(UIScrollView *)self accessoryInsets];
      left = left + v21;
      right = right + v22;
    }

    if ([(UIScrollView *)self _contentScrollsAlongYAxis])
    {
      [(UIScrollView *)self accessoryInsets];
      v20 = v20 + v23;
      bottom = bottom + v24;
    }
  }

  [(UIView *)self bounds];
  v26 = v25 - (left + self->_contentInset.left + right + self->_contentInset.right);
  v28 = v27 - (v20 + self->_contentInset.top + bottom + self->_contentInset.bottom);
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  [(UIScrollView *)self contentAlignmentPoint];
  v33 = left + (v26 - width) * v32;
  if (width >= v26)
  {
    v34 = left;
  }

  else
  {
    v34 = v33;
  }

  v35 = v20 + (v28 - height) * v31;
  if (height >= v28)
  {
    v35 = v20;
  }

  v36 = v34;
  v37 = bottom;
  v38 = right;
  result.right = v38;
  result.bottom = v37;
  result.left = v36;
  result.top = v35;
  return result;
}

- (void)_setIndicatorInsetAdjustmentBehavior:(int64_t)behavior
{
  v3 = *(&self->_scrollViewFlags + 5);
  if (((v3 >> 7) & 3) != behavior)
  {
    *(&self->_scrollViewFlags + 5) = v3 & 0xFFFFFE7F | ((behavior & 3) << 7);
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }
}

- (void)setAutomaticallyAdjustsScrollIndicatorInsets:(BOOL)automaticallyAdjustsScrollIndicatorInsets
{
  if (automaticallyAdjustsScrollIndicatorInsets)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(UIScrollView *)self _setIndicatorInsetAdjustmentBehavior:v3];
}

- (void)_setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:(unint64_t)path
{
  if (self->_edgesAllowingScrollAccessoriesExtendedToBoundingPath != path)
  {
    self->_edgesAllowingScrollAccessoriesExtendedToBoundingPath = path;
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
  }
}

- (UIEdgeInsets)_baseInsetsForAccessoryOnEdge:(int64_t)edge hasCustomClientInsets:(BOOL)insets accessorySize:(double)size additionalInsetFromEdge:(double)fromEdge
{
  if (edge == 1)
  {
    [(UIScrollView *)self _safeAreaInsetsConsultingAlternativeTopInsetIfApplicable];
  }

  else
  {
    [(UIView *)self safeAreaInsets];
  }

  v16 = v12;
  v17 = v13;
  v18 = v15;
  v19 = v14 + self->_keyboardBottomInsetAdjustment;
  if (!insets && (v13 != 0.0 || v12 != 0.0 || v15 != 0.0 || v19 != 0.0))
  {
    window = [(UIView *)self window];
    [window _sceneSafeAreaInsetsIncludingStatusBar:0];
    if (window && (v22 != 0.0 || v21 != 0.0 || v24 != 0.0 || v23 != 0.0) && (*(&self->_scrollViewFlags + 21) & 2) != 0)
    {
      v75 = v22;
      v77 = v24;
      v79 = v21;
      v81 = v23;
      [(UIView *)self _currentScreenScale];
      v85 = v25;
      if (v25 <= 0.0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView.m" lineNumber:15637 description:{@"Invalid screen scale: %f", *&v85}];
      }

      [(UIView *)self bounds];
      v27 = v26;
      v82 = v29;
      v83 = v28;
      v31 = v30;
      v73 = v30;
      v74 = v26;
      if ([window _isHostedInAnotherProcess])
      {
        [(UIView *)self convertRect:window toView:v27, v83, v31, v82];
        v97 = v32;
        v99 = v34;
        v101 = v33;
        v95 = v35;
        [window bounds];
      }

      else
      {
        v97 = __UIViewConvertRectInViewToSceneSpace(self, window, v27, v83, v31, v82);
        v99 = v41;
        v101 = v40;
        v95 = v42;
        [window _sceneBounds];
      }

      v84 = 1.0 / v85;
      v43 = v36;
      v86 = v37;
      v89 = v39;
      rect = v38;
      v104 = CGRectInset(*&v36, -(1.0 / v85), -(1.0 / v85));
      v124.size.height = v95;
      v124.origin.x = v97;
      v124.size.width = v99;
      v124.origin.y = v101;
      if (CGRectContainsRect(v104, v124))
      {
        v105.origin.x = v43;
        v105.origin.y = v86;
        v105.size.height = v89;
        v105.size.width = rect;
        v76 = v75 + CGRectGetMinX(v105);
        v106.origin.x = v97;
        v106.size.width = v99;
        v106.origin.y = v101;
        v106.size.height = v95;
        v44 = vabdd_f64(v76, v17 + CGRectGetMinX(v106)) < v84;
        v107.origin.x = v43;
        v107.origin.y = v86;
        v107.size.height = v89;
        v107.size.width = rect;
        v78 = CGRectGetMaxX(v107) - v77;
        v108.size.height = v95;
        v108.origin.x = v97;
        v108.origin.y = v101;
        v108.size.width = v99;
        if (vabdd_f64(v78, CGRectGetMaxX(v108) - v18) >= v84)
        {
          v45 = 2 * v44;
        }

        else
        {
          v45 = (2 * v44) | 8;
        }

        v109.origin.x = v43;
        v109.origin.y = v86;
        v109.size.height = v89;
        v109.size.width = rect;
        v80 = v79 + CGRectGetMinY(v109);
        v110.origin.y = v101;
        v110.size.width = v99;
        v110.origin.x = v97;
        v110.size.height = v95;
        if (vabdd_f64(v80, v16 + CGRectGetMinY(v110)) < v84)
        {
          ++v45;
        }

        v111.origin.x = v43;
        v111.origin.y = v86;
        v111.size.height = v89;
        v111.size.width = rect;
        v46 = CGRectGetMaxY(v111) - v81;
        v112.origin.x = v97;
        v112.size.width = v99;
        v112.origin.y = v101;
        v112.size.height = v95;
        if (vabdd_f64(v46, CGRectGetMaxY(v112) - v19) < v84)
        {
          v45 |= 4uLL;
        }

        v47 = v45 & [(UIScrollView *)self _edgesAllowingScrollAccessoriesExtendedToBoundingPath];
        if (v47)
        {
          [(UIView *)self _rectTuckedAgainstBoundingPathEdge:_edgeForScrollAccessoryEdge(edge withSize:(*(&self->super._viewFlags + 2) >> 22) & 1) cornerRadii:size minimumPadding:size * 0.5, size * 0.5, size * 0.5, size * 0.5, fromEdge];
          x = v113.origin.x;
          y = v113.origin.y;
          width = v113.size.width;
          height = v113.size.height;
          if (!CGRectIsNull(v113))
          {
            v114.origin.x = x;
            v114.origin.y = y;
            v114.size.width = width;
            v114.size.height = height;
            v115 = CGRectInset(v114, -fromEdge, -fromEdge);
            v100 = v115.origin.y;
            v103 = v115.origin.x;
            v96 = v115.size.height;
            v98 = v115.size.width;
            rectb = CGRectGetMinX(v115);
            v116.origin.x = v74;
            v116.origin.y = v83;
            v116.size.width = v73;
            v116.size.height = v82;
            MinX = CGRectGetMinX(v116);
            UIRoundToScale(rectb - MinX, v85);
            recta = v52;
            v117.origin.x = v74;
            v117.origin.y = v83;
            v117.size.width = v73;
            v117.size.height = v82;
            MaxX = CGRectGetMaxX(v117);
            v118.origin.x = v103;
            v118.origin.y = v100;
            v118.size.width = v98;
            v118.size.height = v96;
            v53 = CGRectGetMaxX(v118);
            UIRoundToScale(MaxX - v53, v85);
            v91 = v54;
            v119.origin.x = v103;
            v119.origin.y = v100;
            v119.size.width = v98;
            v119.size.height = v96;
            MinY = CGRectGetMinY(v119);
            v120.origin.x = v74;
            v120.origin.y = v83;
            v120.size.width = v73;
            v120.size.height = v82;
            v55 = CGRectGetMinY(v120);
            UIRoundToScale(MinY - v55, v85);
            v88 = v56;
            v121.origin.x = v74;
            v121.origin.y = v83;
            v121.size.width = v73;
            v121.size.height = v82;
            MaxY = CGRectGetMaxY(v121);
            v122.origin.y = v100;
            v122.origin.x = v103;
            v122.size.height = v96;
            v122.size.width = v98;
            v58 = CGRectGetMaxY(v122);
            UIRoundToScale(MaxY - v58, v85);
            v60 = v59;
            if (v47)
            {
              v61 = v88;
            }

            else
            {
              v61 = v16;
            }

            if ((v47 & 2) != 0)
            {
              v62 = recta;
            }

            else
            {
              v62 = v17;
            }

            if ((v47 & 4) != 0)
            {
              v63 = v60;
            }

            else
            {
              v63 = v19;
            }

            if ((v47 & 8) != 0)
            {
              v64 = v91;
            }

            else
            {
              v64 = v18;
            }

            v16 = UIEdgeInsetsMax(~v47, v61, v62, v63, v64, v88);
            v17 = v65;
            v19 = v66;
            v18 = v67;
          }
        }
      }
    }
  }

  v68 = v16;
  v69 = v17;
  v70 = v19;
  v71 = v18;
  result.right = v71;
  result.bottom = v70;
  result.left = v69;
  result.top = v68;
  return result;
}

- (UIEdgeInsets)_computeBaseInsetsForVerticalScrollIndicatorWithClientInsets:(UIEdgeInsets)insets
{
  v4 = insets.bottom != 0.0;
  if (insets.right != 0.0)
  {
    v4 = 1;
  }

  if (insets.top != 0.0)
  {
    v4 = 1;
  }

  v5 = insets.left != 0.0 || v4;
  [(UIScrollView *)self _verticalScrollIndicatorWidth];
  v7 = v6;
  [(UIScrollView *)self _scrollIndicatorAdditionalInset];

  [(UIScrollView *)self _baseInsetsForAccessoryOnEdge:1 hasCustomClientInsets:v5 accessorySize:v7 additionalInsetFromEdge:v8];
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)_computeBaseInsetsForHorizontalScrollIndicatorWithClientInsets:(UIEdgeInsets)insets
{
  v4 = insets.bottom != 0.0;
  if (insets.right != 0.0)
  {
    v4 = 1;
  }

  if (insets.top != 0.0)
  {
    v4 = 1;
  }

  v5 = insets.left != 0.0 || v4;
  [(UIScrollView *)self _horizontalScrollIndicatorHeight];
  v7 = v6;
  [(UIScrollView *)self _scrollIndicatorAdditionalInset];

  [(UIScrollView *)self _baseInsetsForAccessoryOnEdge:4 hasCustomClientInsets:v5 accessorySize:v7 additionalInsetFromEdge:v8];
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  _shouldContentOffsetMaintainRelativeDistanceFromSafeArea = [(UIScrollView *)self _shouldContentOffsetMaintainRelativeDistanceFromSafeArea];
  _isAutomaticContentOffsetAdjustmentEnabled = [(UIScrollView *)self _isAutomaticContentOffsetAdjustmentEnabled];
  if (_shouldContentOffsetMaintainRelativeDistanceFromSafeArea)
  {
    [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:0];
  }

  [(UIView *)self safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v50 = v16;
  v52.receiver = self;
  v52.super_class = UIScrollView;
  [(UIView *)&v52 setSafeAreaInsets:top, left, bottom, right];
  if (_shouldContentOffsetMaintainRelativeDistanceFromSafeArea)
  {
    [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];
  }

  _edgesApplyingSafeAreaInsetsToContentInset = [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToContentInset];
  v48 = v11 + 0.0;
  if (_edgesApplyingSafeAreaInsetsToContentInset)
  {
    v18 = v11 + 0.0;
  }

  else
  {
    v18 = 0.0;
  }

  v45 = top + 0.0;
  if (_edgesApplyingSafeAreaInsetsToContentInset)
  {
    v19 = top + 0.0;
  }

  else
  {
    v19 = 0.0;
  }

  v47 = v13 + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 2) != 0)
  {
    v20 = v13 + 0.0;
  }

  else
  {
    v20 = 0.0;
  }

  v44 = left + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 2) != 0)
  {
    v21 = left + 0.0;
  }

  else
  {
    v21 = 0.0;
  }

  v46 = v15 + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 4) != 0)
  {
    v22 = v15 + 0.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v50 + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 4) != 0)
  {
    v24 = bottom + 0.0;
  }

  else
  {
    v24 = 0.0;
  }

  v49 = v19;
  v51 = v50 + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 8) != 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0.0;
  }

  v43 = bottom + 0.0;
  if ((_edgesApplyingSafeAreaInsetsToContentInset & 8) != 0)
  {
    v26 = right + 0.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = v18;
  _UIScrollViewAdjustForOverlayInsetsChangeIfNecessary(self, 0, v19, v21, v24, v26, v18, v20, v22, v25);
  if (v20 == v21 && v27 == v49 && v25 == v26 && v22 == v24)
  {
    _edgesApplyingBaseInsetsToScrollIndicatorInsets = [(UIScrollView *)self _edgesApplyingBaseInsetsToScrollIndicatorInsets];
    v33 = v47;
    v32 = v48;
    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 1) == 0)
    {
      v32 = 0.0;
    }

    v35 = v44;
    v34 = v45;
    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 1) == 0)
    {
      v34 = 0.0;
    }

    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 2) == 0)
    {
      v33 = 0.0;
      v35 = 0.0;
    }

    v36 = v46;
    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 4) == 0)
    {
      v36 = 0.0;
    }

    v38 = right + 0.0;
    v37 = v43;
    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 4) == 0)
    {
      v37 = 0.0;
    }

    v39 = v51;
    if ((_edgesApplyingBaseInsetsToScrollIndicatorInsets & 8) == 0)
    {
      v39 = 0.0;
      v38 = 0.0;
    }

    if (v33 != v35 || v32 != v34 || v39 != v38 || v36 != v37)
    {
      [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets:v32];
    }
  }
}

- (BOOL)_clipsGlyphPathFrame:(CGRect)frame shouldContinueSuperviewTraversal:(BOOL *)traversal
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = UIScrollView;
  v10 = [UIView _clipsGlyphPathFrame:sel__clipsGlyphPathFrame_shouldContinueSuperviewTraversal_ shouldContinueSuperviewTraversal:?];
  if ([(UIScrollView *)self isScrollEnabled])
  {
    *traversal = 0;
    _window = [(UIView *)self _window];
    if (_window)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      p_contentSize = &self->_contentSize;
      if (fabs(self->_contentSize.width) < 2.22044605e-16 && ([(UIView *)self frame], fabs(v14) >= 2.22044605e-16) || fabs(self->_contentSize.height) < 2.22044605e-16 && ([(UIView *)self frame], fabs(v15) >= 2.22044605e-16))
      {
        v31 = *(__UILogGetCategoryCachedImpl("UIScrollView", &_clipsGlyphPathFrame_shouldContinueSuperviewTraversal____s_category) + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = p_contentSize->width;
          v33 = p_contentSize->height;
          *buf = 134218240;
          v37 = v32;
          v38 = 2048;
          v39 = v33;
          _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Clipping detection failed because _contentSize has a zero width/height. {%f, %f}", buf, 0x16u);
        }

        LOBYTE(v10) = 0;
      }

      else
      {
        [(UIScrollView *)self contentInset];
        v17 = -v16;
        [(UIScrollView *)self contentInset];
        v19 = -v18;
        [(UIScrollView *)self contentInset];
        v21 = v20;
        [(UIScrollView *)self contentInset];
        v23 = p_contentSize->width + v21 + v22;
        [(UIScrollView *)self contentInset];
        v25 = v24;
        [(UIScrollView *)self contentInset];
        [(UIView *)self convertRect:_window toView:v17, v19, v23, self->_contentSize.height + v25 + v26];
        v42.origin.x = v27;
        v42.origin.y = v28;
        v42.size.width = v29;
        v42.size.height = v30;
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v10 = !CGRectIntersectsRect(v41, v42);
      }
    }
  }

  return v10;
}

- (CGPoint)_animatedOriginalOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_animation);
    v6 = v4[11];
    v5 = v4[12];
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = v6;
  v8 = v5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)_animatedTargetOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_animation);
    v6 = v4[13];
    v5 = v4[14];
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = v6;
  v8 = v5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)_focusTargetOffset
{
  _focusSystem = [(UIView *)self _focusSystem];

  if (_focusSystem)
  {
    if ([(UIScrollView *)self isDecelerating])
    {
      v4 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
      scrollManager = [v4 scrollManager];
      [scrollManager targetContentOffsetForScrollableContainer:self];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      [(UIScrollView *)self contentOffset];
      v7 = v10;
      v9 = v11;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v12 = v7;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_setAlwaysBounceVertical:(BOOL)vertical
{
  v3 = 512;
  if (!vertical)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)_setShowsVerticalScrollIndicatorFlag:(BOOL)flag
{
  v3 = 0x2000000;
  if (!flag)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)_setShowsHorizontalScrollIndicatorFlag:(BOOL)flag
{
  v3 = 0x1000000;
  if (!flag)
  {
    v3 = 0;
  }

  *&self->_scrollViewFlags = *&self->_scrollViewFlags & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (BOOL)_canSkipTraitsAndOverlayUpdatesForViewControllerToNotifyOnLayoutResetState:(BOOL)state
{
  v3 = *(&self->_scrollViewFlags + 12);
  if (state)
  {
    *(&self->_scrollViewFlags + 12) = v3 | 0x80000000000000;
  }

  return (v3 >> 55) & 1;
}

- (void)_adjustForAutomaticKeyboardInfo:(id)info animated:(BOOL)animated lastAdjustment:(double *)adjustment
{
  animatedCopy = animated;
  infoCopy = info;
  if ([(UIScrollView *)self _isFirstResponderKeyboardAvoidanceEnabled])
  {
    v9 = *adjustment;
    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    [keyboardSceneDelegate verticalOverlapForView:self usingKeyboardInfo:infoCopy];
    v12 = v11;

    if (([(UIScrollView *)self _edgesApplyingSafeAreaInsetsToContentInset]& 4) != 0)
    {
      [(UIView *)self safeAreaInsets];
      v12 = fmax(v12 - v13, 0.0);
    }

    if (v9 != v12)
    {
      *adjustment = v12;
      self->_savedKeyboardAdjustmentDelta = v12 - v9 + self->_savedKeyboardAdjustmentDelta;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__UIScrollView__adjustForAutomaticKeyboardInfo_animated_lastAdjustment___block_invoke_2;
      v14[3] = &unk_1E70F6848;
      v14[4] = self;
      *&v14[5] = v12;
      *&v14[6] = v12 - v9;
      [UIView conditionallyAnimate:animatedCopy withAnimation:&__block_literal_global_681_0 layout:v14 completion:0];
    }
  }
}

uint64_t __72__UIScrollView__adjustForAutomaticKeyboardInfo_animated_lastAdjustment___block_invoke_2(uint64_t a1)
{
  if (dyld_program_sdk_at_least())
  {
    *(*(a1 + 32) + 1248) = *(a1 + 40);
    [*(a1 + 32) _updateForChangedScrollRelatedInsets];
    v2 = *(a1 + 32);

    return [v2 _updateForChangedScrollIndicatorRelatedInsets];
  }

  else
  {
    [*(a1 + 32) contentInset];
    [*(a1 + 32) setContentInset:?];
    [*(a1 + 32) scrollIndicatorInsets];
    v4 = *(a1 + 32);

    return [v4 setScrollIndicatorInsets:?];
  }
}

- (void)_setContentScrollsAlongXAxis:(BOOL)axis
{
  axisCopy = axis;
  [(UIScrollView *)self _systemContentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
  if (axisCopy)
  {
    v14 = 8;
  }

  else
  {
    v14 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFFFFE7 | v14;

  [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];
}

- (void)_setContentScrollsAlongYAxis:(BOOL)axis
{
  axisCopy = axis;
  [(UIScrollView *)self _systemContentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _edgesPropagatingSafeAreaInsetsToSubviews = [(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews];
  if (axisCopy)
  {
    v14 = 32;
  }

  else
  {
    v14 = 0;
  }

  *(&self->_scrollViewFlags + 5) = *(&self->_scrollViewFlags + 5) & 0xFFFFFF9F | v14;

  [(UIScrollView *)self _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:_edgesPropagatingSafeAreaInsetsToSubviews oldEdgesPropagatingSafeAreaInsets:0 adjustContentOffsetIfNecessary:v6, v8, v10, v12];
}

- (unint64_t)_contentScrollableAxes
{
  _contentScrollsAlongXAxis = [(UIScrollView *)self _contentScrollsAlongXAxis];
  _contentScrollsAlongYAxis = [(UIScrollView *)self _contentScrollsAlongYAxis];
  v5 = 2;
  if (!_contentScrollsAlongYAxis)
  {
    v5 = 0;
  }

  v6 = 3;
  if (!_contentScrollsAlongYAxis)
  {
    v6 = 1;
  }

  if (_contentScrollsAlongXAxis)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (BOOL)_canScrollWithoutBouncingIncludingRevealableContentPaddingTopY
{
  [(UIScrollView *)self _revealableContentPadding];

  return [(UIScrollView *)self __canScrollWithoutBouncingYIncludingAdditionalContentInsetAmount:?];
}

- (BOOL)__canScrollWithoutBouncingYIncludingAdditionalContentInsetAmount:(double)amount
{
  [(UIScrollView *)self _contentFitCanScrollThreshold];
  v6 = v5;
  [(UIScrollView *)self _effectiveContentInset];
  v9 = v8 + v7 + self->_contentSize.height + amount;
  [(UIView *)self bounds];
  return v9 > v6 + v10 + 0.0001;
}

- (void)_setAutoscrolling:(BOOL)autoscrolling
{
  if (autoscrolling)
  {
    v4 = 0x10000;
  }

  else
  {
    [(UIScrollView *)self _clearContentOffsetAnimation];
    v4 = 0;
    self->_contentOffsetAnimationDuration = 0.3;
  }

  *(&self->_scrollViewFlags + 12) = *(&self->_scrollViewFlags + 12) & 0xFFFFFFFFFFFEFFFFLL | v4;
}

- (CGRect)contentFrameForView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (superview == self)
  {
    [viewCopy frame];
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    _scroller = [viewCopy _scroller];
    if (_scroller == self)
    {
      [viewCopy bounds];
      [viewCopy convertRect:self toView:?];
      v7 = v15;
      v8 = v16;
      v9 = v17;
      v10 = v18;
    }

    else
    {
      v7 = *MEMORY[0x1E695F058];
      v8 = *(MEMORY[0x1E695F058] + 8);
      v9 = *(MEMORY[0x1E695F058] + 16);
      v10 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_adjustShadowsIfNecessaryForOffset:(double)offset
{
  if (self->_shadows)
  {
    [(UIScrollView *)self _adjustBackgroundShadowsForContentSizeForcedVisible:0 withOffset:offset];
  }
}

- (id)_backgroundShadowForSlideAnimation
{
  if (self->_shadows)
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = @"UIScrollerShadowEdgeFill.png";
    }

    else
    {
      v5 = @"UIScrollerShadowFill.png";
    }

    v6 = [UIImageView alloc];
    v7 = _UIImageWithName(v5);
    v8 = [(UIImageView *)v6 initWithImage:v7];

    CGAffineTransformMakeRotation(&v10, 3.14159265);
    [(UIView *)v8 setTransform:&v10];
    [self->_shadows[3] frame];
    [(UIImageView *)v8 setFrame:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __44__UIScrollView__scrollViewWillBeginDragging__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewWillBeginDragging:v5];
  }

  return result;
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = MEMORY[0x1E695DF20];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:decelerationCopy];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"_UIScrollViewDidEndDraggingWillDecelerateUserInfoKey"];
  [defaultCenter postNotificationName:@"_UIScrollViewDidEndDraggingNotification" object:self userInfo:v8];

  kdebug_trace();
  [(_UIScrollViewVFD *)self->_vfd deactivateSubreason:?];
  _UIQOSManagedCommitsEnd(self, @"Dragging");
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA969108);
  v10 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  if (decelerationCopy)
  {
    self->_telemetryOffsetChangeHighRateDuration = 0.0;
    self->_telemetryOffsetChangeCount = 0;
    self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
  }

  else
  {
    v11 = __UILogGetCategoryCachedImpl("ScrollView", &qword_1EA969110);
    v12 = *(v11 + 8);
    if (os_signpost_id_make_with_pointer(*(v11 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      _os_signpost_emit_unreliably_with_name_impl();
    }

    [(UIScrollView *)self _endActivityTrackingIfNeededForReason:0];
    self->_telemetryOffsetChangeHighRateDuration = 0.0;
    self->_telemetryOffsetChangeCount = 0;
    self->_telemetryOffsetChange = *MEMORY[0x1E695F060];
    [defaultCenter postNotificationName:@"UITextSelectionDidScroll" object:self];
  }
}

- (void)_scrollViewDidEndDraggingForDelegateWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  _isAutomaticContentOffsetAdjustmentEnabled = [(UIScrollView *)self _isAutomaticContentOffsetAdjustmentEnabled];
  if (decelerationCopy)
  {
    [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:0];
  }

  [(UIScrollView *)self _scrollViewDidEndDraggingWithDeceleration:decelerationCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__UIScrollView__scrollViewDidEndDraggingForDelegateWithDeceleration___block_invoke;
  v8[3] = &unk_1E712A8E8;
  v8[4] = self;
  v9 = decelerationCopy;
  [(UIScrollView *)self _enumerateAllScrollObserversWithBlock:v8];
  scrollableAncestor = self->_scrollableAncestor;
  if (scrollableAncestor)
  {
    [(_UIScrollViewScrollableAncestor *)scrollableAncestor _descendentScrollViewDidEndDragging:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDragging:self willDecelerate:decelerationCopy];
  }

  if (decelerationCopy)
  {
    [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:_isAutomaticContentOffsetAdjustmentEnabled];
  }
}

uint64_t __69__UIScrollView__scrollViewDidEndDraggingForDelegateWithDeceleration___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 _observeScrollViewDidEndDragging:v5 willDecelerate:v6];
  }

  return result;
}

uint64_t __56__UIScrollView__scrollViewDidEndDeceleratingForDelegate__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 _observeScrollViewDidEndDecelerating:v5];
  }

  return result;
}

- (void)_scrollViewWillBeginZooming
{
  v8[1] = *MEMORY[0x1E69E9840];
  _UIQOSManagedCommitsBegin(self, @"Zooming");
  [(_UIScrollViewVFD *)self->_vfd activateSubreason:?];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &_scrollViewWillBeginZooming___s_category);
  v4 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"UITextSelectionZoomScaleDidChange";
  v8[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"UITextSelectionWillZoom" object:self userInfo:v6];
}

- (void)_scrollViewDidEndZooming
{
  v9[1] = *MEMORY[0x1E69E9840];
  scrollViewFlags = self->_scrollViewFlags;
  if ((scrollViewFlags & 0x80) == 0)
  {
    *&self->_scrollViewFlags = scrollViewFlags & 0xFFFFFFFF7FFFFF7FLL;
  }

  [(_UIScrollViewVFD *)self->_vfd deactivateSubreason:?];
  _UIQOSManagedCommitsEnd(self, @"Zooming");
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &_scrollViewDidEndZooming___s_category);
  v5 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"UITextSelectionZoomScaleDidChange";
  v9[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"UITextSelectionDidZoom" object:self userInfo:v7];
}

- (void)_pinContentOffsetToClosestPageBoundary
{
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    [(UIScrollView *)self _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
    [(UIScrollView *)self setContentOffset:self->_pageDecelerationTarget.x, self->_pageDecelerationTarget.y];
    self->_horizontalVelocity = 0.0;
    self->_verticalVelocity = 0.0;
  }
}

- (CGRect)_rectForPageContainingRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    width = rect.size.width;
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *MEMORY[0x1E695F058];
    [(UIView *)self bounds];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v15 = vcvtmd_s64_f64(CGRectGetMinX(v25) / v12);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v16 = vcvtmd_s64_f64((CGRectGetMaxX(v26) + -1.0) / v12);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinY = CGRectGetMinY(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxY = CGRectGetMaxY(v28);
    if (v15 == v16)
    {
      v19 = vcvtmd_s64_f64(MinY / v14);
      v20 = vcvtmd_s64_f64((MaxY + -1.0) / v14);
      v7 = v23;
      v6 = v24;
      v8 = v22;
      if (v19 == v20)
      {
        v6 = v12 * v15;
        v7 = v14 * v19;
        v8 = v14;
        v9 = v12;
      }
    }

    else
    {
      v7 = v23;
      v6 = v24;
      v8 = v22;
    }
  }

  v21 = v9;
  result.size.height = v8;
  result.size.width = v21;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_rectForPageContainingView:(id)view
{
  if ((*(&self->_scrollViewFlags + 12) & 0x20) != 0)
  {
    viewCopy = view;
    [viewCopy bounds];
    [viewCopy convertRect:self toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIScrollView *)self _rectForPageContainingRect:v10, v12, v14, v16];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)_systemInsetAdjustmentForAdjustmentTypeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_contentInsetAdjustments objectForKey:identifier];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_setSystemInsetAdjustment:(double)adjustment forAdjustmentTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contentInsetAdjustments = self->_contentInsetAdjustments;
  v15 = identifierCopy;
  if (!contentInsetAdjustments)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_contentInsetAdjustments;
    self->_contentInsetAdjustments = dictionary;

    identifierCopy = v15;
    contentInsetAdjustments = self->_contentInsetAdjustments;
  }

  v10 = [(NSMutableDictionary *)contentInsetAdjustments objectForKey:identifierCopy];
  [v10 doubleValue];
  v12 = v11;

  if (v12 != adjustment)
  {
    v13 = self->_contentInsetAdjustments;
    if (fabs(adjustment) >= 2.22044605e-16)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:adjustment];
      [(NSMutableDictionary *)v13 setObject:v14 forKey:v15];
    }

    else
    {
      [(NSMutableDictionary *)self->_contentInsetAdjustments removeObjectForKey:v15];
    }

    *(&self->_scrollViewFlags + 12) &= ~0x8000000000000000;
    [(UIScrollView *)self _updateForChangedScrollRelatedInsets];
    [(UIScrollView *)self _updateForChangedScrollIndicatorRelatedInsets];
    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
  }
}

- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset
{
  [(UIScrollView *)self _adjustedContentOffsetForContentOffset:0 contentSize:offset.x skipsAdjustmentIfScrolling:offset.y, self->_contentSize.width, self->_contentSize.height];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset skipsAdjustmentIfScrolling:(BOOL)scrolling
{
  [(UIScrollView *)self _adjustedContentOffsetForContentOffset:scrolling contentSize:offset.x skipsAdjustmentIfScrolling:offset.y, self->_contentSize.width, self->_contentSize.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset contentSize:(CGSize)size skipsAdjustmentIfScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  [(UIView *)self bounds];
  v61 = v12;
  v62 = v11;
  [(UIScrollView *)self _effectiveContentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  isScrollAnimating = [(UIScrollView *)self isTracking]|| [(UIScrollView *)self isDecelerating]|| [(UIScrollView *)self isScrollAnimating];
  accuracy = self->_accuracy;
  p_firstPageOffset = &self->_firstPageOffset;
  v24 = self->_firstPageOffset.vertical - v14;
  if (accuracy == 1.0)
  {
    if (y >= round(v24))
    {
      v28 = round(p_firstPageOffset->horizontal - v16);
      goto LABEL_11;
    }

LABEL_9:
    v29 = 1;
    goto LABEL_12;
  }

  v25 = floor(v24);
  if (y < v25 + round(accuracy * (v24 - v25)) / accuracy)
  {
    goto LABEL_9;
  }

  v26 = p_firstPageOffset->horizontal - v16;
  v27 = floor(v26);
  v28 = v27 + round(accuracy * (v26 - v27)) / accuracy;
LABEL_11:
  v29 = x < v28;
LABEL_12:
  p_scrollViewFlags = &self->_scrollViewFlags;
  if ((*(&self->_scrollViewFlags + 14) & 2) != 0)
  {
    [(UIScrollView *)self contentAlignmentPoint];
    v31 = v32 == *MEMORY[0x1E695EFF8];
    if (v33 != *(MEMORY[0x1E695EFF8] + 8))
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  if ((*p_scrollViewFlags & 0x80) == 0 && (*p_scrollViewFlags >> 30) & 1 | (v31 || scrollingCopy && isScrollAnimating && v29))
  {
    v34 = x;
    goto LABEL_51;
  }

  v35 = *&self->_accuracy;
  if (*&v35 == 1.0)
  {
    if (round(v62) < round(v20 + width + v16))
    {
      v34 = round(p_firstPageOffset->horizontal - v16);
      v43 = v61;
      if (x >= v34)
      {
        v42 = round(width + v20);
        v34 = x;
        if (x + v62 > v42)
        {
LABEL_27:
          v34 = v42 - v62;
          goto LABEL_38;
        }
      }

      goto LABEL_42;
    }
  }

  else
  {
    v36.f64[0] = v62;
    v36.f64[1] = v20 + width + v16;
    v37 = vrndmq_f64(v36);
    v38 = vaddq_f64(v37, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v36, v37), *&v35)), vdupq_lane_s64(v35, 0)));
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(v38, vdupq_laneq_s64(v38, 1)))).u32[0])
    {
      v39 = p_firstPageOffset->horizontal - v16;
      v40 = floor(v39);
      v34 = v40 + round(*&v35 * (v39 - v40)) / *&v35;
      if (x >= v34)
      {
        v41 = floor(width + v20);
        v42 = v41 + round((width + v20 - v41) * *&v35) / *&v35;
        v43 = v61;
        if (x + v62 <= v42)
        {
          v34 = x;
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      goto LABEL_34;
    }
  }

  if ((*(&self->super._viewFlags + 18) & 0x40) == 0 || (v44 = [(UIScrollView *)self _shouldScrollToContentBeginningInRightToLeft], v35 = *&self->_accuracy, !v44))
  {
    v48 = p_firstPageOffset->horizontal - v16;
    if (*&v35 != 1.0)
    {
      v49 = floor(v48);
      v34 = v49 + round(*&v35 * (v48 - v49)) / *&v35;
LABEL_34:
      v43 = v61;
      goto LABEL_38;
    }

    v34 = round(v48);
    v43 = v61;
LABEL_42:
    v58 = round(self->_firstPageOffset.vertical - v14);
    if (round(v43) >= round(v18 + height + v14) || y < v58)
    {
      y = v58;
      goto LABEL_51;
    }

    v55 = y + v43;
    v57 = round(height + v18);
    goto LABEL_48;
  }

  v45.f64[0] = v20 + width + v16;
  v45.f64[1] = v62;
  if (*&v35 == 1.0)
  {
    v47 = vrndaq_f64(v45);
  }

  else
  {
    v46 = vrndmq_f64(v45);
    v47 = vaddq_f64(v46, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v45, v46), *&v35)), vdupq_lane_s64(v35, 0)));
  }

  v43 = v61;
  *&v34 = *&vsubq_f64(v47, vdupq_laneq_s64(v47, 1));
LABEL_38:
  if (*&v35 == 1.0)
  {
    goto LABEL_42;
  }

  v50.f64[0] = v43;
  v50.f64[1] = v18 + height + v14;
  v51 = vrndmq_f64(v50);
  v52 = vaddq_f64(v51, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v50, v51), *&v35)), vdupq_lane_s64(v35, 0)));
  v53 = vmovn_s64(vcgeq_f64(v52, vdupq_laneq_s64(v52, 1))).u8[0];
  v52.f64[0] = self->_firstPageOffset.vertical - v14;
  v50.f64[0] = floor(v52.f64[0]);
  v54 = v50.f64[0] + round(*&v35 * (v52.f64[0] - v50.f64[0])) / *&v35;
  if ((v53 & 1) != 0 || y < v54)
  {
    y = v54;
    goto LABEL_51;
  }

  v55 = y + v43;
  v56 = floor(height + v18);
  v57 = v56 + round((height + v18 - v56) * *&v35) / *&v35;
LABEL_48:
  if (v55 > v57)
  {
    y = v57 - v43;
  }

LABEL_51:
  v60 = y;
  result.y = v60;
  result.x = v34;
  return result;
}

- (void)performWhileAnimatingAutomaticContentOffsetAdjustments:(id)adjustments
{
  p_scrollViewFlags = &self->_scrollViewFlags;
  v4 = *(&self->_scrollViewFlags + 12);
  *(&self->_scrollViewFlags + 12) = v4 | 0x40000;
  (*(adjustments + 2))(adjustments, a2);
  *(p_scrollViewFlags + 12) = *(p_scrollViewFlags + 12) & 0xFFFFFFFFFFFBFFFFLL | (((v4 >> 18) & 1) << 18);
}

- (void)_applyAutomaticAdjustedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(UIScrollView *)self isAutomaticContentOffsetAdjustmentsAnimated])
  {

    [(UIScrollView *)self setContentOffset:1 animated:x, y];
  }

  else
  {

    [(UIScrollView *)self setContentOffset:x, y];
  }
}

- (void)_setTemporaryCoordinatingReplacement:(id)replacement
{
  v21 = *MEMORY[0x1E69E9840];
  replacementCopy = replacement;
  v6 = self->_temporaryCoordinatingReplacement;
  if (v6 != replacementCopy)
  {
    objc_storeStrong(&self->_temporaryCoordinatingReplacement, replacement);
    scrollNotificationObservers = self->_scrollNotificationObservers;
    if (scrollNotificationObservers)
    {
      weakObjectsHashTable = scrollNotificationObservers;
    }

    else
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    }

    v9 = weakObjectsHashTable;
    if (v6 && v6->_scrollNotificationObservers)
    {
      [(NSHashTable *)weakObjectsHashTable unionHashTable:?];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 _observeScrollView:self temporaryCoordinatingReplacementDidChange:{replacementCopy, v16}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)_setIsTransientScrollView:(BOOL)view
{
  if (self->__isTransientScrollView != view)
  {
    self->__isTransientScrollView = view;
    if (!view)
    {
      [(UIScrollView *)self _notifyDidScroll];
    }
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type == 1)
  {
    isScrollAnimating = [(UIScrollView *)self isScrollAnimating];
    self->_scrollAnimatingViaAssertion = state;
    if (isScrollAnimating && ![(UIScrollView *)self isScrollAnimating])
    {

      [(UIScrollView *)self _delegateScrollViewAnimationEnded];
    }
  }
}

- (UIEdgeInsets)_pocketInsets
{
  top = self->_pocketInsets.top;
  left = self->_pocketInsets.left;
  bottom = self->_pocketInsets.bottom;
  right = self->_pocketInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_viewIsInsideNavigationController
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      v3 = [UIViewController viewControllerForView:selfCopy];
      if (v3)
      {
        break;
      }

      superview = [(UIView *)selfCopy superview];

      selfCopy = superview;
      if (!superview)
      {
        goto LABEL_7;
      }
    }

    superview = v3;
  }

  else
  {
    superview = 0;
  }

LABEL_7:
  parentViewController = [(UIScrollView *)superview parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = UIScrollView;
  coderCopy = coder;
  [(UIResponder *)&v18 encodeRestorableStateWithCoder:coderCopy];
  [(UIScrollView *)self zoomScale:v18.receiver];
  *&v5 = v5;
  [coderCopy encodeFloat:@"kScrollViewZoomScaleKey" forKey:v5];
  [(UIScrollView *)self contentOffset];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16 - self->_savedKeyboardAdjustmentDelta;
  [(UIScrollView *)self _effectiveContentInset];
  [coderCopy encodeUIEdgeInsets:@"kScrollViewEffectiveContentInsetKey" forKey:?];
  [coderCopy encodeUIEdgeInsets:@"kScrollViewContentInsetKey" forKey:{v11, v13, v17, v15}];
  [coderCopy encodeCGPoint:@"kScrollViewContentOffsetKey" forKey:{v7, v9}];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = UIScrollView;
  [(UIResponder *)&v24 decodeRestorableStateWithCoder:coderCopy];
  if ([coderCopy containsValueForKey:@"kScrollViewZoomScaleKey"])
  {
    [coderCopy decodeFloatForKey:@"kScrollViewZoomScaleKey"];
    [(UIScrollView *)self setZoomScale:v5];
  }

  v6 = [coderCopy containsValueForKey:@"kScrollViewContentOffsetKey"];
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v6)
  {
    [coderCopy decodeCGPointForKey:@"kScrollViewContentOffsetKey"];
    v9 = v10;
    v8 = v11;
  }

  v12 = [coderCopy containsValueForKey:@"kScrollViewContentInsetKey"];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v12)
  {
    [coderCopy decodeUIEdgeInsetsForKey:@"kScrollViewContentInsetKey"];
    v15 = v16;
    v14 = v17;
    v13 = v18;
    v7 = v19;
  }

  if ([coderCopy containsValueForKey:@"kScrollViewEffectiveContentInsetKey"])
  {
    [coderCopy decodeUIEdgeInsetsForKey:@"kScrollViewEffectiveContentInsetKey"];
    v21 = v20;
    if ((v6 & dyld_program_sdk_at_least()) == 1 && [(UIScrollView *)self _viewIsInsideNavigationController])
    {
      v22 = v8 + v21;
      [(UIScrollView *)self _effectiveContentInset];
LABEL_15:
      v8 = v22 - v23;
      goto LABEL_18;
    }
  }

  else
  {
    dyld_program_sdk_at_least();
  }

  if ((v6 & v12) == 1 && [(UIScrollView *)self _viewIsInsideNavigationController])
  {
    v22 = v8 + v15;
    [(UIScrollView *)self contentInset];
    goto LABEL_15;
  }

  if (v12)
  {
    [(UIScrollView *)self setContentInset:v15, v14, v13, v7];
  }

LABEL_18:
  if (v6)
  {
    [(UIScrollView *)self setContentOffset:v9, v8];
  }
}

+ (id)_implicitAnimationCulprits
{
  if (qword_1ED4A2C20 != -1)
  {
    dispatch_once(&qword_1ED4A2C20, &__block_literal_global_703);
  }

  v3 = qword_1ED4A2C18;

  return v3;
}

void __65__UIScrollView__UIApplicationTesting___implicitAnimationCulprits__block_invoke()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObject:@"_UIBackdropEffectView"];
  v1 = qword_1ED4A2C18;
  qword_1ED4A2C18 = v0;
}

- (void)_reenableImplicitAnimationsAfterScrollTest
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _implicitAnimationCulprits = [objc_opt_class() _implicitAnimationCulprits];
  v3 = [_implicitAnimationCulprits countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(_implicitAnimationCulprits);
        }

        [NSClassFromString(*(*(&v7 + 1) + 8 * v6++)) _setAnimatedPropertiesEnabled:1];
      }

      while (v4 != v6);
      v4 = [_implicitAnimationCulprits countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_suppressImplicitAnimationsForScrollTest
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _implicitAnimationCulprits = [objc_opt_class() _implicitAnimationCulprits];
  v3 = [_implicitAnimationCulprits countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(_implicitAnimationCulprits);
        }

        [NSClassFromString(*(*(&v7 + 1) + 8 * v6++)) _setAnimatedPropertiesEnabled:0];
      }

      while (v4 != v6);
      v4 = [_implicitAnimationCulprits countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta scrollAxis:(unint64_t)axis
{
  testCopy = test;
  if (axis - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:469 description:@"UIAxis must be UIAxisVertical or UIAxisHorizontal"];
  }

  v11 = objc_alloc_init(UIScrollTestParameters);
  [(UIScrollTestParameters *)v11 setTestName:testCopy];
  [(UIScrollTestParameters *)v11 setIterations:iterations];
  [(UIScrollTestParameters *)v11 setDelta:delta];
  [(UIScrollTestParameters *)v11 setAxis:axis];
  [(UIScrollView *)self _performScrollTestWithParameters:v11 completionBlock:0];
}

- (void)_performFullScreenScrollTest:(id)test iterations:(int)iterations scrollAxis:(unint64_t)axis
{
  v6 = *&iterations;
  testCopy = test;
  if (axis == 1)
  {
    [(UIView *)self bounds];
    v9 = v10;
  }

  else if (axis == 2)
  {
    [(UIView *)self bounds];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(UIScrollView *)self _performScrollTest:testCopy iterations:v6 delta:v9 scrollAxis:axis];
}

- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta length:(int)length scrollAxis:(unint64_t)axis extraResultsBlock:(id)block completionBlock:(id)completionBlock
{
  testCopy = test;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (axis - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:505 description:@"UIAxis must be UIAxisVertical or UIAxisHorizontal"];
  }

  v18 = objc_alloc_init(UIScrollTestParameters);
  [(UIScrollTestParameters *)v18 setTestName:testCopy];
  [(UIScrollTestParameters *)v18 setIterations:iterations];
  [(UIScrollTestParameters *)v18 setDelta:delta];
  [(UIScrollTestParameters *)v18 setLength:length];
  [(UIScrollTestParameters *)v18 setAxis:axis];
  [(UIScrollTestParameters *)v18 setExtraResultsBlock:blockCopy];
  [(UIScrollView *)self _performScrollTestWithParameters:v18 completionBlock:completionBlockCopy];
}

- (void)_performScrollTestWithParameters:(id)parameters completionBlock:(id)block
{
  blockCopy = block;
  v27 = [parameters copy];
  [(UIScrollView *)self setScrollTestParameters:v27];
  if ([v27 axis] == 2)
  {
    [(UIScrollView *)self contentOffset];
    v8 = v7;
    [(UIScrollView *)self contentSize];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
    v8 = 0.0;
    if ([v27 axis] == 1)
    {
      [(UIScrollView *)self contentOffset];
      v8 = v11;
      [(UIScrollView *)self contentSize];
      v10 = v12;
    }
  }

  [v27 length];
  if (v13 != 1.79769313e308)
  {
    [v27 length];
    if (v8 + v14 > v10)
    {
      [v27 length];
      v8 = v8 - v15;
      if (v8 < 0.0)
      {
        v8 = 0.0;
      }
    }

    [v27 length];
    if (v16 > v10 - v8)
    {
      v16 = v10 - v8;
    }

    [v27 setLength:v16];
  }

  [v27 setStartOffset:v8];
  [v27 setCompletionBlock:blockCopy];

  [(UIScrollView *)self _suppressImplicitAnimationsForScrollTest];
  _UIQOSManagedCommitsBegin(self, @"UIScrollViewScrollTest");
  v17 = getenv("CA_BENCHMARK");
  if (v17 && *v17 == 49 && !v17[1])
  {
    [(UIScrollView *)self performSelector:sel__incrementForScrollTest_ withObject:0 afterDelay:0.0];
  }

  else
  {
    v18 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__incrementForScrollTest_];
    [v27 setDisplayLink:v18];

    displayLink = [v27 displayLink];
    [displayLink maximumRefreshRate];
    if (v20 != 0.0)
    {
      [displayLink setPreferredFramesPerSecond:llround(1.0 / v20)];
    }

    displayLink2 = [v27 displayLink];
    [displayLink2 setHighFrameRateReason:1048623];

    displayLink3 = [v27 displayLink];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [displayLink3 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  testName = [v27 testName];

  if (testName)
  {
    v25 = UIApp;
    testName2 = [v27 testName];
    [v25 startedTest:testName2];
  }
}

- (id)_scrollTestExtraResults
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"scrollLength";
  v2 = MEMORY[0x1E696AD98];
  scrollTestParameters = [(UIScrollView *)self scrollTestParameters];
  [scrollTestParameters length];
  v4 = [v2 numberWithDouble:?];
  v7[1] = @"scrollLengthUnits";
  v8[0] = v4;
  v8[1] = @"pixels";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)_incrementForScrollTest:(id)test
{
  testCopy = test;
  _UIQOSProcessingBegin("ScrollTest", 0, 0, 0);
  if (testCopy)
  {
    v4 = MEMORY[0x1E6979518];
    [testCopy targetTimestamp];
    v6 = v5;
    [testCopy targetTimestamp];
    v8 = v7;
    [testCopy timestamp];
    [v4 setEarliestAutomaticCommitTime:v6 + (v8 - v9) * -0.5];
  }

  scrollTestParameters = [(UIScrollView *)self scrollTestParameters];
  axis = [scrollTestParameters axis];
  [(UIScrollView *)self contentOffset];
  v13 = v12;
  v15 = v14;
  [scrollTestParameters delta];
  v17 = v16;
  [scrollTestParameters endOffset];
  v19 = v18;
  if (axis == 2)
  {
    [(UIView *)self bounds];
    v21 = v20;
    [scrollTestParameters length];
    if (v22 == 1.79769313e308)
    {
      [(UIScrollView *)self _maximumContentOffset];
      v19 = v21 + v23;
    }

    v24 = v15;
  }

  else
  {
    v21 = 0.0;
    if (axis == 1)
    {
      [(UIView *)self bounds];
      v21 = v25;
      [scrollTestParameters length];
      if (v26 == 1.79769313e308)
      {
        [(UIScrollView *)self _maximumContentOffset];
        v19 = v21 + v27;
      }

      v24 = v13;
    }

    else
    {
      v24 = 0.0;
    }
  }

  if (v17 > 0.0)
  {
    [scrollTestParameters delta];
    v28 = 0;
    v30 = v21 + v24 + v29 > v19;
    goto LABEL_15;
  }

  [scrollTestParameters delta];
  v32 = v31;
  [scrollTestParameters startOffset];
  v30 = 0;
  v28 = v24 + v32 <= v33;
  if (v24 + v32 > v33)
  {
LABEL_15:
    if (!v30)
    {
      goto LABEL_17;
    }
  }

  [scrollTestParameters delta];
  [scrollTestParameters setDelta:-v34];
LABEL_17:
  if (v28)
  {
    [scrollTestParameters setIterations:{objc_msgSend(scrollTestParameters, "iterations") - 1}];
  }

  if (axis == 2)
  {
    [scrollTestParameters delta];
    v15 = v15 + v35;
  }

  else if (axis == 1)
  {
    [scrollTestParameters delta];
    v13 = v13 + v36;
  }

  [(UIScrollView *)self setContentOffset:0 animated:v13, v15];
  if ([scrollTestParameters iterations] < 1)
  {
    [scrollTestParameters length];
    if (v38 == 1.79769313e308)
    {
      [scrollTestParameters startOffset];
      [scrollTestParameters setLength:v19 - v39];
    }

    _scrollTestExtraResults = [(UIScrollView *)self _scrollTestExtraResults];
    extraResultsBlock = [scrollTestParameters extraResultsBlock];

    if (extraResultsBlock)
    {
      v42 = [_scrollTestExtraResults mutableCopy];
      extraResultsBlock2 = [scrollTestParameters extraResultsBlock];
      v44 = extraResultsBlock2[2]();
      [v42 addEntriesFromDictionary:v44];
    }

    else
    {
      v42 = _scrollTestExtraResults;
    }

    testName = [scrollTestParameters testName];

    if (testName)
    {
      v46 = UIApp;
      testName2 = [scrollTestParameters testName];
      [v46 finishedTest:testName2 extraResults:v42];
    }

    displayLink = [scrollTestParameters displayLink];
    [displayLink invalidate];

    [(UIScrollView *)self setScrollTestParameters:0];
    [(UIScrollView *)self _reenableImplicitAnimationsAfterScrollTest];
    completionBlock = [scrollTestParameters completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [scrollTestParameters completionBlock];
      (completionBlock2)[2](completionBlock2, v42);
    }

    _UIQOSManagedCommitsEnd(self, @"UIScrollViewScrollTest");
  }

  else
  {
    displayLink2 = [scrollTestParameters displayLink];

    if (!displayLink2)
    {
      [(UIScrollView *)self performSelector:sel__incrementForScrollTest_ withObject:0 afterDelay:0.0];
    }
  }

  _UIQOSProcessingEnd();
}

- (void)_simulateScrollWithTranslation:(CGPoint)translation duration:(double)duration willBeginDragging:(id)dragging didEndDragging:(id)endDragging willBeginDecelerating:(id)decelerating didEndDecelerating:(id)endDecelerating
{
  y = translation.y;
  x = translation.x;
  draggingCopy = dragging;
  endDraggingCopy = endDragging;
  deceleratingCopy = decelerating;
  endDeceleratingCopy = endDecelerating;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(location, defaultCenter);

  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__244;
  v115 = __Block_byref_object_dispose__244;
  v116 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__244;
  v109 = __Block_byref_object_dispose__244;
  v110 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__244;
  v103 = __Block_byref_object_dispose__244;
  v104 = 0;
  v55 = draggingCopy;
  if (draggingCopy)
  {
    WeakRetained = objc_loadWeakRetained(location);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke;
    v95[3] = &unk_1E712A9C0;
    v96 = draggingCopy;
    objc_copyWeak(&v98, location);
    v97 = &v111;
    v20 = [WeakRetained addObserverForName:@"_UIScrollViewWillBeginDraggingNotification" object:self queue:0 usingBlock:v95];
    v21 = v112[5];
    v112[5] = v20;

    objc_destroyWeak(&v98);
  }

  if (endDraggingCopy | deceleratingCopy)
  {
    v22 = objc_loadWeakRetained(location);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_2;
    v89[3] = &unk_1E712A9E8;
    v90 = endDraggingCopy;
    objc_copyWeak(&v94, location);
    v92 = &v105;
    v91 = deceleratingCopy;
    v93 = &v99;
    v23 = [v22 addObserverForName:@"_UIScrollViewDidEndDraggingNotification" object:self queue:0 usingBlock:v89];
    v24 = v106[5];
    v106[5] = v23;

    objc_destroyWeak(&v94);
  }

  if (endDeceleratingCopy)
  {
    v25 = objc_loadWeakRetained(location);
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_3;
    v85[3] = &unk_1E712A9C0;
    v86 = endDeceleratingCopy;
    objc_copyWeak(&v88, location);
    v87 = &v99;
    v26 = [v25 addObserverForName:@"_UIScrollViewDidEndDeceleratingNotification" object:self queue:0 usingBlock:v85];
    v27 = v100[5];
    v100[5] = v26;

    objc_destroyWeak(&v88);
  }

  if (qword_1ED4A2C28 != -1)
  {
    dispatch_once(&qword_1ED4A2C28, &__block_literal_global_188_3);
  }

  if (_MergedGlobals_1388)
  {
    v28 = 0.00833333333;
  }

  else
  {
    v28 = 0.0166666667;
  }

  _panGestureRecognizer = [(UIScrollView *)self _panGestureRecognizer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gestureRecognizer = [_panGestureRecognizer gestureRecognizer];

    _panGestureRecognizer = gestureRecognizer;
  }

  v31 = objc_alloc_init(_UIScrollViewMockPanGestureRecognizer);
  [(_UIScrollViewMockPanGestureRecognizer *)v31 setGestureRecognizer:_panGestureRecognizer];
  [(UIScrollView *)self _setPanGestureRecognizer:v31];
  v32 = endDraggingCopy;
  v54 = CACurrentMediaTime();
  v33 = fmax(duration, v28);
  v34 = -x;
  v35 = -y;
  v36 = -y / v33;
  v37 = v34 / v33;
  v38 = v33 - v28;
  v39 = fmin(v28 / (v33 - v28), 1.0);
  v40 = v39 * v34;
  v41 = v39 * v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_4;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v42 = v31;
  v84 = v42;
  v43 = _Block_copy(aBlock);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_5;
  v75[3] = &unk_1E7124A18;
  v44 = v42;
  v79 = v40;
  v80 = v41;
  v81 = v37;
  v82 = v36;
  v76 = v44;
  selfCopy = self;
  v45 = v43;
  v78 = v45;
  v46 = _Block_copy(v75);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_6;
  v66[3] = &unk_1E712AA10;
  v69 = v54;
  v70 = v38;
  v71 = v34;
  v72 = v35;
  v47 = v44;
  v67 = v47;
  v73 = v37;
  v74 = v36;
  v48 = v45;
  v68 = v48;
  v49 = _Block_copy(v66);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_7;
  v57[3] = &unk_1E712AA60;
  v50 = v47;
  v58 = v50;
  v51 = v48;
  v61 = v51;
  selfCopy2 = self;
  v52 = _panGestureRecognizer;
  v60 = v52;
  v62 = &v111;
  v63 = &v105;
  v64 = &v99;
  objc_copyWeak(&v65, location);
  v53 = _Block_copy(v57);
  [(UIScrollView *)self _simulateGestureWithDuration:v46 begin:v49 update:v53 end:v38];

  objc_destroyWeak(&v65);
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v111, 8);

  objc_destroyWeak(location);
}

void __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"_UIScrollViewDidEndDraggingWillDecelerateUserInfoKey"];
  v5 = [v4 BOOLValue];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  if (v5)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = objc_loadWeakRetained((a1 + 64));
    [v12 removeObserver:*(*(*(a1 + 56) + 8) + 40)];

    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _panGestureAction];
  v4 = *(a1 + 40);

  return [v2 performSelector:v3 withObject:v4];
}

uint64_t __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) simulateTranslation:*(a1 + 56) velocity:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) setState:1];
  v2 = UIApp;
  v3 = [*(a1 + 40) window];
  v4 = [v2 _touchesEventForWindow:v3];

  [*(a1 + 40) _beginTrackingWithEvent:v4];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

uint64_t __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_6(uint64_t a1)
{
  v2 = fmin((CACurrentMediaTime() - *(a1 + 48)) / *(a1 + 56), 1.0);
  [*(a1 + 32) simulateTranslation:*(a1 + 64) * v2 velocity:{*(a1 + 72) * v2, *(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) setState:2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) setGestureRecognizer:0];
  v2 = [*(a1 + 40) _panGestureRecognizer];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [*(a1 + 40) _setPanGestureRecognizer:*(a1 + 48)];
  }

  if (*(*(*(a1 + 64) + 8) + 40) || *(*(*(a1 + 72) + 8) + 40) || *(*(*(a1 + 80) + 8) + 40))
  {
    v4 = dispatch_time(0, 5000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_8;
    v5[3] = &unk_1E712AA38;
    v5[4] = *(a1 + 64);
    objc_copyWeak(&v7, (a1 + 88));
    v6 = *(a1 + 72);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v7);
  }
}

void __153__UIScrollView__UIApplicationTesting___simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating___block_invoke_8(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained removeObserver:*(*(*(a1 + 32) + 8) + 40)];

    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    [v5 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

- (void)_simulateZoomByScaleFactor:(double)factor duration:(double)duration willBeginZooming:(id)zooming didEndZooming:(id)endZooming
{
  zoomingCopy = zooming;
  endZoomingCopy = endZooming;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(location, defaultCenter);

  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__244;
  v84 = __Block_byref_object_dispose__244;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__244;
  v78 = __Block_byref_object_dispose__244;
  v79 = 0;
  if (zoomingCopy)
  {
    WeakRetained = objc_loadWeakRetained(location);
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke;
    v70[3] = &unk_1E712A9C0;
    v71 = zoomingCopy;
    objc_copyWeak(&v73, location);
    v72 = &v80;
    v14 = [WeakRetained addObserverForName:@"UITextSelectionWillZoom" object:self queue:0 usingBlock:v70];
    v15 = v81[5];
    v81[5] = v14;

    objc_destroyWeak(&v73);
  }

  if (endZoomingCopy)
  {
    v16 = objc_loadWeakRetained(location);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_2;
    v66[3] = &unk_1E712A9C0;
    v67 = endZoomingCopy;
    objc_copyWeak(&v69, location);
    v68 = &v74;
    v17 = [v16 addObserverForName:@"UITextSelectionDidZoom" object:self queue:0 usingBlock:v66];
    v18 = v75[5];
    v75[5] = v17;

    objc_destroyWeak(&v69);
  }

  if (qword_1ED4A2C28 != -1)
  {
    dispatch_once(&qword_1ED4A2C28, &__block_literal_global_188_3);
  }

  if (_MergedGlobals_1388)
  {
    v19 = 0.00833333333;
  }

  else
  {
    v19 = 0.0166666667;
  }

  pinchGestureRecognizer = [(UIScrollView *)self pinchGestureRecognizer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gestureRecognizer = [pinchGestureRecognizer gestureRecognizer];

    pinchGestureRecognizer = gestureRecognizer;
  }

  v22 = objc_alloc_init(_UIScrollViewMockPinchGestureRecognizer);
  [(_UIScrollViewMockPinchGestureRecognizer *)v22 setGestureRecognizer:pinchGestureRecognizer];
  [(UIScrollView *)self _setPinchGestureRecognizer:v22];
  v23 = CACurrentMediaTime();
  v24 = fmax(duration, v19);
  v25 = factor / v24;
  v26 = v24 - v19;
  v27 = (factor + -1.0) * fmin(v19 / (v24 - v19), 1.0) + 1.0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_3;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v28 = v22;
  v65 = v28;
  v29 = _Block_copy(aBlock);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_4;
  v58[3] = &unk_1E70F8FA8;
  v30 = v28;
  v62 = v27;
  v63 = v25;
  v59 = v30;
  selfCopy = self;
  v31 = v29;
  v61 = v31;
  v32 = _Block_copy(v58);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_5;
  v51[3] = &unk_1E712AA88;
  v54 = v23;
  v55 = v26;
  factorCopy = factor;
  v33 = v30;
  v52 = v33;
  v57 = v25;
  v34 = v31;
  v53 = v34;
  v35 = _Block_copy(v51);
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_6;
  v43 = &unk_1E712AAD8;
  v36 = v33;
  v44 = v36;
  v37 = v34;
  v47 = v37;
  selfCopy2 = self;
  v38 = pinchGestureRecognizer;
  v46 = v38;
  v48 = &v80;
  v49 = &v74;
  objc_copyWeak(&v50, location);
  v39 = _Block_copy(&v40);
  [(UIScrollView *)self _simulateGestureWithDuration:v32 begin:v35 update:v39 end:v26, v40, v41, v42, v43];

  objc_destroyWeak(&v50);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  objc_destroyWeak(location);
}

void __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _pinchGestureAction];
  v4 = *(a1 + 40);

  return [v2 performSelector:v3 withObject:v4];
}

uint64_t __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) simulateScale:*(a1 + 56) velocity:*(a1 + 64)];
  [*(a1 + 32) setState:1];
  v2 = UIApp;
  v3 = [*(a1 + 40) window];
  v4 = [v2 _touchesEventForWindow:v3];

  [*(a1 + 40) _beginTrackingWithEvent:v4];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

uint64_t __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) simulateScale:fmin((CACurrentMediaTime() - *(a1 + 48)) / *(a1 + 56) velocity:{1.0) * (*(a1 + 64) + -1.0) + 1.0, *(a1 + 72)}];
  [*(a1 + 32) setState:2];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) setGestureRecognizer:0];
  v2 = [*(a1 + 40) pinchGestureRecognizer];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [*(a1 + 40) _setPinchGestureRecognizer:*(a1 + 48)];
  }

  if (*(*(*(a1 + 64) + 8) + 40) || *(*(*(a1 + 72) + 8) + 40))
  {
    v4 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_7;
    block[3] = &unk_1E712AAB0;
    block[4] = *(a1 + 64);
    objc_copyWeak(&v6, (a1 + 80));
    block[5] = *(a1 + 72);
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __106__UIScrollView__UIApplicationTesting___simulateZoomByScaleFactor_duration_willBeginZooming_didEndZooming___block_invoke_7(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained removeObserver:*(*(*(a1 + 32) + 8) + 40)];

    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (void)_simulateGestureWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end
{
  updateCopy = update;
  if (duration <= 0.0)
  {
    v12 = *(begin + 2);
    endCopy = end;
    beginCopy = begin;
    v12();

    endCopy[2](endCopy);
  }

  else
  {
    endCopy2 = end;
    beginCopy2 = begin;
    endCopy = +[_UIScrollViewGestureSimulator sharedInstance];
    [endCopy simulateGestureWithDuration:beginCopy2 begin:updateCopy update:endCopy2 end:duration];
  }
}

- (void)_performNaturalScrollTest:(id)test completionHandler:(id)handler
{
  testCopy = test;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = qword_1ED4A2C30;
  v16 = qword_1ED4A2C30;
  if (!qword_1ED4A2C30)
  {
    RecapPerformanceTestingLibraryCore();
    v14[3] = objc_getClass("RPTScrollViewTestParameters");
    qword_1ED4A2C30 = v14[3];
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = [[v8 alloc] initWithTestName:testCopy scrollView:self completionHandler:handlerCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v11 = qword_1ED4A2C38;
  v16 = qword_1ED4A2C38;
  if (!qword_1ED4A2C38)
  {
    RecapPerformanceTestingLibraryCore();
    v14[3] = objc_getClass("RPTTestRunner");
    qword_1ED4A2C38 = v14[3];
    v11 = v14[3];
  }

  v12 = v11;
  _Block_object_dispose(&v13, 8);
  [v11 runTestWithParameters:v10];
}

- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  isPagingEnabled = [(UIScrollView *)self isPagingEnabled];

  [(UIScrollView *)self setContentOffset:isPagingEnabled animated:x, y];
}

@end