@interface PKPassGroupStackView
- ($2DE36CBD7484E59DE1E6BE98927F692F)_updateExternalVC:(SEL)a3 toPresentationState:(id)a4 initial:(int64_t)a5 withSpringConfiguration:(BOOL)a6 preferModalSpringFactories:(id)a7;
- ($600A803A2DA5524344F8C742CF1B11BB)_modalPileStateForType:(SEL)a3;
- ($F1DC74333D82B785AAE6704222A4147D)destinationViewSizeForExternalVCContext:(SEL)a3;
- ($F1DC74333D82B785AAE6704222A4147D)referenceExternalModallyPresentedSizeForPassGroupView:(SEL)a3;
- (BOOL)_canPerformPaymentForGroupView:(id)a3;
- (BOOL)_inControlOfGroupView:(id)a3;
- (BOOL)_isGroupAtIndexInModalPile:(unint64_t)a3;
- (BOOL)_isModalPresentationAllowedForSingleGroup;
- (BOOL)_loadGroupViewAtIndexForModalPresentation:(unint64_t)a3;
- (BOOL)_loadGroupViewAtIndexForModalPresentation:(unint64_t)a3 withInitialState:(int64_t)a4;
- (BOOL)_pauseStateForGroupView:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)_recomputeLayoutState;
- (BOOL)_shouldRampForFrontmostPassView:(id)a3;
- (BOOL)_shouldTablePresentationScroll;
- (BOOL)_updateContentSizeWithPriorBounds:(CGRect *)a3 bounds:(CGRect *)a4;
- (BOOL)_updateHeaderContext:(id *)a3 toContext:(id)a4 animated:(BOOL)a5;
- (BOOL)_updateHeaderFooterStateAnimated:(BOOL)a3 layout:(BOOL)a4;
- (BOOL)discoveryGalleryHasWelcomeCards;
- (BOOL)groupViewShouldAllowPanning:(id)a3;
- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4;
- (BOOL)isPassFooterViewInGroup:(id)a3;
- (BOOL)isPresentingPassViewFront;
- (BOOL)isTableModalPresentation;
- (BOOL)needsNavigationBar;
- (BOOL)presentedPassCanPerformPayment;
- (BOOL)presentedPassIsPerformingPayment;
- (CATransform3D)_transformForGroupView:(SEL)a3 atIndex:(id)a4 forState:(unint64_t)a5;
- (CGPoint)__positionForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5;
- (CGPoint)_positionForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5;
- (CGRect)_frameForFooterViewForPassView:(id)a3;
- (CGRect)_xFrameForGroupViewInState:(int64_t)a3;
- (CGSize)_contentSize;
- (PKPass)modalGroupFrontmostPass;
- (PKPassGroupStackView)initWithFrame:(CGRect)a3;
- (PKPassGroupStackViewDatasource)datasource;
- (UIScrollView)contentScrollView;
- (_NSRange)_rangeOfEagerLoadedIndexes;
- (_NSRange)_rangeOfVisibleIndexes;
- (_NSRange)_rangeOfVisibleIndexesIgnoringBottomInset:(BOOL)a3;
- (double)_groupCellHeight;
- (double)_layoutContentWithContext:(id)a3 positionAdjustment:(UIOffset)a4 animated:(BOOL)a5;
- (double)_maxYOfPassFrontFaceAtIndex:(unint64_t)a3;
- (double)_maximumScaleForModalPileGroupOfType:(unsigned __int8)a3;
- (double)_nativeYForGroupInTableAtIndex:(unint64_t)a3;
- (double)_nativeYForTransformedY:(double)result inBounds:(CGRect)a4;
- (double)_opacityForGroupAtIndex:(unint64_t)a3 withGroupView:(id)a4 forState:(int64_t)a5;
- (double)_pileAscenderHeightForGroupViewInPile:(id)a3 pileIndex:(unint64_t *)a4 separationHeight:(double *)a5;
- (double)_pileAscenderHeightForPileIndex:(unint64_t)a3 separationHeight:(double *)a4;
- (double)_pileBaseHeight;
- (double)_relativeScaleForPileGroupAtPileIndex:(unint64_t)a3 ofType:(unsigned __int8)a4;
- (double)_scaleForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5;
- (double)_scaleForModalPileGroupAtIndex:(unint64_t)a3 ofType:(unsigned __int8)a4;
- (double)_scaleForModallyPresentedGroupOfType:(unsigned __int8)a3;
- (double)_scaleForPileGroupAtPileIndex:(unint64_t)a3 ofType:(unsigned __int8)a4;
- (double)_setupSpringFactory:(id)a3 forPileAnimationFromPresentationState:(int64_t)a4 toPresentationState:(int64_t)a5 reverse:(BOOL)a6;
- (double)_setupSpringFactoryForExternalToTableAnimations:(id)a3 forModalGroupIndex:(unint64_t)a4;
- (double)_setupSpringFactoryForPileAnimations:(id)a3 withMaximumAcceleration:(double)a4 reverse:(BOOL)a5;
- (double)_transformedYForNativeY:(double)a3 inBounds:(CGRect)a4 index:(unint64_t)a5;
- (double)_yForGroupInModalPileOfType:(unsigned __int8)a3 atIndex:(unint64_t)a4;
- (double)_yForGroupInModalPileOfType:(unsigned __int8)a3 withModalGroupY:(double)a4 scale:(double)a5;
- (double)_yForGroupInOffscreenPileAtIndex:(unint64_t)a3;
- (double)_yForGroupInPileAtIndex:(unint64_t)a3;
- (double)_yForGroupInTableAtIndex:(unint64_t)a3;
- (double)_yForModalPositionOfType:(unsigned __int8)a3;
- (double)_yForModallyPresentedGroupOfType:(unsigned __int8)a3;
- (double)_yForSingleGroupView:(id)a3;
- (double)_yPositionForGroupAtIndex:(unint64_t)a3 forState:(int64_t)a4;
- (double)groupViewModalReferenceScale:(id)a3 isValid:(BOOL *)a4;
- (double)pileHeight;
- (id)_activeExternalVCContextForPassGroupView:(id)a3;
- (id)_animatorForGestureRecognizer:(id)a3;
- (id)_createFactoryForExternalPresentation;
- (id)_createModalPileFactoryForExternalVCContext:(id)a3 dismissalToPresentationState:(int64_t)a4 withTransitionContext:(id)a5 factory:(id)a6 positionAdjustment:(UIOffset)a7;
- (id)_createPassFooterConfigurationForPassView:(id)a3 withContext:(id)a4;
- (id)_createSortedGroupViewIndexesWithMap:(id *)a3;
- (id)_createStackedIndices;
- (id)_externalVCContextForPassGroupView:(id)a3;
- (id)_externalVCContextForTransitionCoordinator:(id)a3;
- (id)_firstHeaderContext;
- (id)_frontmostPastViewForGroupIndex:(unint64_t)a3;
- (id)_groupViewAtIndex:(unint64_t)a3;
- (id)_groupViewAtIndexWhileEnsuringVisible:(unint64_t)a3 withContentMode:(int64_t)a4;
- (id)_groupViewWithGroup:(id)a3;
- (id)_groupViewWithGroupID:(id)a3;
- (id)_headerContextForPassType:(unint64_t)a3;
- (id)_layoutStateForHeaderContext:(id)a3 inTableWithBounds:(CGRect)a4;
- (id)_layoutStateForHeaderContext:(id)a3 offscreenWithBounds:(CGRect)a4 offset:(double)a5;
- (id)_loadGroupViewAtIndex:(unint64_t)a3 forState:(int64_t)a4 presentationState:(int64_t)a5 cached:(BOOL *)a6;
- (id)_separatorGroup;
- (id)connectTransitionCoordinatorToLayout:(id)a3;
- (id)connectTransitionCoordinatorToSender:(id)a3;
- (id)externalVCContext:(id)a3 destinationLayoutStateForTransition:(id)a4 inReferenceView:(id)a5;
- (id)headerForPassType:(unint64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)transitionCoordinator:(id)a3 prepareForReceivingNavigationItem:(id)a4;
- (id)transitionCoordinator:(id)a3 prepareForSendingNavigationItem:(id)a4;
- (id)transitionCoordinator:(id)a3 prepareTransition:(id)a4 dirty:(BOOL)a5;
- (id)transitionCoordinator:(id)a3 transition:(id)a4 updateFromState:(id)a5 interactive:(BOOL)a6;
- (id)transitionCoordinatorWillInvertReceiver:(id)a3;
- (id)transitionCoordinatorWillInvertSender:(id)a3;
- (int64_t)_presentationStateForPassGroupView:(id)a3 withPassPresentationContext:(id)a4 requireUpdate:(BOOL *)a5 requireModal:(BOOL *)a6;
- (int64_t)groupViewContentModeForFrontmostPassWhenPiled:(id)a3 withDefaultContentMode:(int64_t)a4;
- (int64_t)groupViewContentModeForFrontmostPassWhenStacked:(id)a3;
- (int64_t)stageForModalPresentationOfGroupAtIndex:(unint64_t)a3 withPassPresentationContext:(id)a4 requireUpdate:(BOOL *)a5;
- (unint64_t)_currentIndexOfReorderedGroupView;
- (unint64_t)_edgeStylesObscuredByTopCornersOfPassStyle:(int64_t)a3;
- (unint64_t)_edgeStylesObscuredByTopMiddleOfPassStyle:(int64_t)a3;
- (unint64_t)_indexForNativeY:(double)a3 inBounds:(CGRect)a4 roundToClosestIndex:(BOOL)a5;
- (unint64_t)_indexOfGroupView:(id)a3;
- (unint64_t)_lastIndex;
- (unint64_t)_maximumNumberOfVisiblePilePasses;
- (unint64_t)_numberOfVisiblePilePasses;
- (unint64_t)_startVisibleIndex;
- (unint64_t)_tablePresentationNumberOfCellsBeforeStacking;
- (unint64_t)groupViewPassesSuppressedContent:(id)a3;
- (unint64_t)suppressedContentForPassFooter:(id)a3;
- (void)_acquireLoanedGroupViewFromExternalVCContext:(id)a3 willLayout:(BOOL)a4;
- (void)_addGroupViewAsSubview:(id)a3 forIndex:(unint64_t)a4;
- (void)_addPanGestureRecognizerToGroupView:(id)a3;
- (void)_adjustGroupViewsForReordering;
- (void)_animateGroupViewAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4 withAnchorView:(id)a5 insertAbove:(BOOL)a6;
- (void)_animateGroupViewForUndo:(id)a3 toIndex:(unint64_t)a4;
- (void)_arrangeGroups;
- (void)_assertIsValidExternalVCContext:(id)a3;
- (void)_assertIsValidExternalVCTransitionCoordinator:(id)a3;
- (void)_autoscrollForReordering:(id)a3;
- (void)_autoscrollIfNecessary;
- (void)_beginGroupPanWithAnimator:(id)a3;
- (void)_cancelTransition;
- (void)_disableScrollingAndNormalizeContentOffset;
- (void)_endGroupPanWithAnimator:(id)a3;
- (void)_enumerateExternalVCContexts:(id)a3;
- (void)_enumerateLoadedGroupViews:(id)a3;
- (void)_executeCompletionHandlers:(id)a3 cancelled:(BOOL)a4;
- (void)_generateModalGroupPileWithVisibleIndexes:(_NSRange)a3 reservePlaceForModalGroup:(BOOL)a4;
- (void)_handleModalGroupGesture:(id)a3;
- (void)_interruptTransferedGroupViewForExternalVCContext:(id)a3 willLayout:(BOOL)a4;
- (void)_layoutFooterAnimated:(BOOL)a3 withAnimationDelay:(double)a4;
- (void)_loanGroupViewToExternalVCContext:(id)a3 willLayout:(BOOL)a4;
- (void)_notifyDelegateOfStateChange:(BOOL)a3;
- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)a3;
- (void)_performGeometryUpdates:(uint64_t)a3 animated:;
- (void)_presentGroupStackViewWithContext:(id)a3 priorBounds:(CGRect)a4 completionHandler:(id)a5;
- (void)_presentModalGroupView:(id)a3 externally:(BOOL)a4 withContext:(id)a5 completion:(id)a6;
- (void)_presentOffscreenSplit:(BOOL)a3 withContext:(id)a4 completionHandler:(id)a5;
- (void)_presentPassIngestionWithContext:(id)a3 completion:(id)a4;
- (void)_rampBacklightIfNecessary:(BOOL)a3;
- (void)_refreshBacklightForFrontmostPassGroup;
- (void)_removeExternalVCContext:(id)a3 terminated:(BOOL)a4;
- (void)_removeGroupViewAsSubviewWithGroupID:(id)a3;
- (void)_removePanGestureRecognizerFromGroupView:(id)a3;
- (void)_reorderPositionChangedForReorderedGroupViewWithVelocity:(CGPoint)a3;
- (void)_resetBrightness;
- (void)_reverseEnumerateLoadedGroupViews:(id)a3;
- (void)_setDefaultPaymentPassFromGroupView:(id)a3 reorderedGroupView:(id)a4;
- (void)_setModalGroupView:(id)a3;
- (void)_setPresentationState:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)_setScrollEnabled:(BOOL)a3;
- (void)_setupSpringFactoryForTableToExternalAnimations:(id)a3;
- (void)_stopAutoscrollTimer;
- (void)_tileGroupsForState:(int64_t)a3 eager:(BOOL)a4 withContext:(id)a5;
- (void)_tombstone;
- (void)_tombstoneExternalVCContext;
- (void)_transferLoanedGroupViewToExternalVCContext:(id)a3 willLayout:(BOOL)a4;
- (void)_transitionSuccessful:(BOOL)a3;
- (void)_undoUserReorderWithReorderedGroupView:(id)a3;
- (void)_updateBottomContentSeparatorVisibilityAnimated:(BOOL)a3;
- (void)_updateCoachingState;
- (void)_updateContentSizeAndLayout:(BOOL)a3 forceUpdate:(BOOL)a4;
- (void)_updateGroupStateForGroupViewInModalPresentation:(id)a3 atIndex:(unint64_t)a4 withState:(int64_t)a5 withContext:(id)a6;
- (void)_updateGroupStateForGroupViewInStackPresentation:(id)a3 animated:(BOOL)a4;
- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringConfiguration:(id)a5 positionAdjustment:(UIOffset)a6 atIndex:(unint64_t)a7 modal:(BOOL)a8;
- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5;
- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5 atIndex:(unint64_t)a6;
- (void)_updateLoanedStateForPassGroupView:(id)a3 willLayout:(BOOL)a4;
- (void)_updateModallyPresentedFrontmostPass;
- (void)_updateModallyPresentedFrontmostPassAssertions;
- (void)_updateNeedsNavigationBar;
- (void)_updatePanGestureRecognizerForGroupView:(id)a3;
- (void)_updatePassFooterViewIfNecessaryWithContext:(id)a3 becomeVisibleDelay:(double)a4;
- (void)_updatePassFooterViewWithConfiguration:(id)a3 context:(id)a4 animated:(BOOL)a5 reload:(BOOL)a6 delay:(double)a7;
- (void)_updatePassFooterViewWithContext:(id)a3;
- (void)_updatePausedState;
- (void)_updatePositionForGroupView:(id)a3 toPosition:(CGPoint)a4 withSpringFactory:(id)a5;
- (void)_updatePositionForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5;
- (void)_updatePositionForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5 atIndex:(unint64_t)a6;
- (void)_updateTopContentSeparatorVisibilityAnimated:(BOOL)a3;
- (void)_updateTransformForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5;
- (void)dashboardPassGroupViewController;
- (void)dashboardPassGroupViewController:(id)a3 didFinishDeleteAnimation:(id)a4 deleted:(BOOL)a5;
- (void)dashboardPassGroupViewController:(id)a3 willBeginDeleteAnimation:(id)a4;
- (void)dealloc;
- (void)deleteAnimationController:(id)a3 didComplete:(BOOL)a4;
- (void)deleteAnimationControllerWillBeginDeleteAnimation:(id)a3;
- (void)deleteGroup:(id)a3 atIndex:(unint64_t)a4;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3;
- (void)evaluateBrightness;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)gotoBaseTestState;
- (void)groupView:(id)a3 deleteButtonPressedForPass:(id)a4 sourceView:(id)a5;
- (void)groupView:(id)a3 didUpdatePassView:(id)a4;
- (void)groupView:(id)a3 frontmostPassViewDidChange:(id)a4 withContext:(id)a5;
- (void)groupView:(id)a3 panned:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (void)groupViewDidUpdatePageControlVisibility:(id)a3;
- (void)groupViewExpandButtonTapped:(id)a3;
- (void)groupViewPanDidBegin:(id)a3;
- (void)groupViewPanDidEnd:(id)a3;
- (void)groupViewPressedDidChange:(id)a3;
- (void)groupViewTapped:(id)a3;
- (void)invalidate;
- (void)layoutHeaderFootersAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)moveGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)passFooterViewDidChangeCoachingState:(id)a3;
- (void)passFooterViewDidChangePhysicalButtonRequirement:(id)a3 withContext:(id)a4;
- (void)passFooterViewDidChangePileSuppressionRequirement:(id)a3;
- (void)passFooterViewDidEndAuthorization:(id)a3;
- (void)passFooterViewDidSucceedAtAuthorization:(id)a3;
- (void)paymentDeviceDidBecomeAvailable;
- (void)paymentDeviceDidBecomeUnavailable;
- (void)reloadData;
- (void)reloadSuppressedContentForGroupView:(id)a3;
- (void)resetBrightness;
- (void)safeAreaInsetsDidChange;
- (void)scrollNext;
- (void)scrollUpTest;
- (void)setBoundsInsets:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setExternalFooterSuppressed:(BOOL)a3;
- (void)setFooterSuppressed:(BOOL)a3 withContext:(id)a4;
- (void)setModalGroupIndex:(unint64_t)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPilingMode:(int64_t)a3;
- (void)setPresentationState:(int64_t)a3 withContext:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setTableModalPresentationEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setUserEducationDemoController:(id)a3;
- (void)stageGroupInPresentationState:(int64_t)a3 atIndex:(unint64_t)a4;
- (void)terminateTransitionCoordinator:(id)a3;
- (void)testGoModal;
- (void)testGroupSelection;
- (void)tilePassesEagerly:(BOOL)a3;
- (void)transitionCoordinator:(id)a3 didBeginTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6;
- (void)transitionCoordinator:(id)a3 executeInteractiveTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6 completion:(id)a7;
- (void)transitionCoordinator:(id)a3 executeTransition:(id)a4 withState:(id)a5 completion:(id)a6;
- (void)transitionCoordinator:(id)a3 resolveInteractiveTransition:(id)a4 withState:(id)a5 completion:(id)a6;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 didUpdateFromState:(id)a5 toState:(id)a6 interactive:(BOOL)a7;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 sendNavigationItem:(id)a5 animated:(BOOL)a6 usingProvider:(id)a7 completion:(id)a8;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 sendViewAnimated:(BOOL)a5 withCompletion:(id)a6;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 willUpdateFromState:(id)a5 interactive:(BOOL)a6;
- (void)transitionCoordinator:(id)a3 transitionDidMoveView:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 transitionWillInterruptViewMove:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 transitionWillMoveView:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 willBeginTransition:(id)a4 dirty:(BOOL)a5;
- (void)transitionCoordinatorDidEndTransition:(id)a3 wasDirty:(BOOL)a4;
- (void)transitionCoordinatorDidInterruptTransition:(id)a3;
- (void)transitionCoordinatorInvertTransceivers:(id)a3;
- (void)transitionCoordinatorSenderDidTapView:(id)a3;
- (void)transitionCoordinatorWillConnectLayout:(id)a3 forRequest:(id)a4;
- (void)transitionCoordinatorWillConnectSender:(id)a3 forRequest:(id)a4;
- (void)transitionCoordinatorWillEndTransition:(id)a3 wasDirty:(BOOL)a4;
- (void)transitionCoordinatorWillInterruptTransition:(id)a3;
- (void)updateFooterViewIfNecessary;
- (void)updateHeaderAndSubheaderViewsIfNecessary;
- (void)updatePeerPaymentFooterViewIfNecessary;
@end

@implementation PKPassGroupStackView

- (BOOL)_recomputeLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v4 = [(PKPassGroupStackView *)self isTableModalPresentation];
  p_layoutState = &self->_layoutState;
  count = self->_layoutState.groups.count;
  separatorIndex = self->_layoutState.groups.separatorIndex;
  v7 = *(&self->_layoutState.groups + 16);
  v57 = v4;
  v58 = *(&self->_layoutState + 24);
  groupCellHeight = self->_layoutState.groupCellHeight;
  separationPadding = self->_layoutState.separationPadding;
  v59 = *(&self->_layoutState + 28);
  v10 = [WeakRetained numberOfGroups];
  v11 = [WeakRetained indexOfSeparationGroup];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = v13 != 0;
  v15 = v10 > v13;
  if (v14 && v15)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = [WeakRetained areGroupsSeparated];
  p_layoutState->groups.count = v10;
  self->_layoutState.groups.separatorIndex = v16;
  *(&self->_layoutState.groups + 16) = v17 | (2 * v14) | (4 * v15);
  if (objc_opt_respondsToSelector())
  {
    v18 = objc_loadWeakRetained(&self->_datasource);
    v19 = [v18 groupStackViewShouldShowHeaderViews:self];

    if (v19)
    {
      v20 = objc_opt_respondsToSelector();
      v21 = v20;
      v22 = *(&self->_layoutState.groups + 16);
      v23 = 2 * (v22 & 2);
      if (v22 & 2) == 0 && (v20)
      {
        v61 = *&p_layoutState->groups.count;
        v62 = *(&self->_layoutState.groups + 2);
        if ([WeakRetained groupStackView:self requiresSectionForPassType:1 withState:&v61])
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v22 = *(&self->_layoutState.groups + 16);
      }

      v24 = *(&self->_layoutState + 28) & 0xFFFB | v23;
      *(&self->_layoutState + 28) = v24;
      v25 = v22 & 4;
      if (((v25 == 0) & v21) == 1)
      {
        v61 = *&p_layoutState->groups.count;
        v62 = *(&self->_layoutState.groups + 2);
        if ([WeakRetained groupStackView:self requiresSectionForPassType:0 withState:&v61])
        {
          v26 = 8;
        }

        else
        {
          v26 = 0;
        }

        v24 = *(&self->_layoutState + 28);
      }

      else
      {
        v26 = 2 * v25;
      }

      v28 = v24 & 0xFFFFFFF7 | v26;
      *(&self->_layoutState + 28) = v28;
      v29 = *&p_layoutState->groups.count;
      v66 = *(&self->_layoutState.groups + 2);
      parentViewControllerWantsNavigationBar = self->_parentViewControllerWantsNavigationBar;
      v65 = v29;
      v31 = parentViewControllerWantsNavigationBar | (v28 >> 1) & 6;
      v32 = objc_opt_respondsToSelector();
      v33 = *(&self->_layoutState + 28);
      if (v32)
      {
        if ((v33 & 4) != 0)
        {
          v61 = v65;
          v62 = v66;
          v63 = v31;
          memset(v64, 0, sizeof(v64));
          if ([WeakRetained groupStackView:self willHaveHeaderViewForPassType:1 withState:&v61])
          {
            v34 = 16;
          }

          else
          {
            v34 = 0;
          }

          v33 = *(&self->_layoutState + 28);
        }

        else
        {
          v34 = 0;
        }

        v36 = v33 & 0xFFEF | v34;
        *(&self->_layoutState + 28) = v36;
        if ((v33 & 8) != 0)
        {
          v61 = v65;
          v62 = v66;
          v63 = v31;
          memset(v64, 0, sizeof(v64));
          if ([WeakRetained groupStackView:self willHaveHeaderViewForPassType:0 withState:&v61])
          {
            v37 = 32;
          }

          else
          {
            v37 = 0;
          }

          v36 = *(&self->_layoutState + 28);
        }

        else
        {
          v37 = 0;
        }

        v35 = v36 & 0xFFDF | v37;
      }

      else
      {
        v35 = v33 & 0xFFCF;
      }

      *(&self->_layoutState + 28) = v35;
      if ((v35 & 0xC) != 0)
      {
        if (objc_opt_respondsToSelector())
        {
          v61 = v65;
          v62 = v66;
          v63 = v31;
          memset(v64, 0, sizeof(v64));
          v38 = [WeakRetained groupStackView:self willHaveSubheaderViewsWithState:&v61];
          v39 = *(&self->_layoutState + 28);
          if ((v39 & 4) != 0)
          {
            if (v38)
            {
              v41 = 64;
            }

            else
            {
              v41 = 0;
            }

            v42 = v39 & 0xFF3F;
          }

          else
          {
            if ((v39 & 8) == 0)
            {
              v40 = v39 & 0xFF33;
LABEL_56:
              *(&self->_layoutState + 28) = v40;
              v27 = 1;
              goto LABEL_57;
            }

            if (v38)
            {
              v41 = 128;
            }

            else
            {
              v41 = 0;
            }

            v42 = v39 & 0xFF3B;
          }

          v40 = v42 | v41;
          goto LABEL_56;
        }

        v35 = *(&self->_layoutState + 28);
      }

      v40 = v35 & 0xFF3F;
      goto LABEL_56;
    }
  }

  v27 = 0;
  *(&self->_layoutState + 28) &= 0xFF03u;
LABEL_57:
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v44 = [(PKGroupsController *)self->_groupsController expiredSectionPassesCount];
    v45 = (v27 & (v44 > 0)) != 0 ? 256 : 0;
    *(&self->_layoutState + 28) = v45 | *(&self->_layoutState + 28) & 0xFEFF;
    if ((v27 & (v44 > 0)) == 1)
    {
      v43 = v44;
      footerView = self->_footerView;
      if (footerView)
      {
        [(UIView *)footerView setExpiredSectionCount:v43];
      }
    }
  }

  *(&self->_layoutState + 24) = *(&self->_layoutState + 24) & 0xFE | [WeakRetained supportsExternalPresentation];
  if ([WeakRetained prefersExternalPresentation])
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  *(&self->_layoutState + 24) = *(&self->_layoutState + 24) & 0xFD | v47;
  [(PKPassGroupStackView *)self _groupCellHeight];
  self->_layoutState.groupCellHeight = v48;
  v49 = self->_layoutState.groups.separatorIndex;
  if (v49 == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_layoutState.separationPadding = 0.0;
  }

  else
  {
    v50 = [(PKPassGroupStackView *)self _groupViewAtIndexWhileEnsuringVisible:v49 withContentMode:4];
    if (v50)
    {
      [(PKPassGroupStackView *)self _scaleForTableGroup];
      v51 = [v50 frontmostPassView];
      [v51 sizeOfFrontFace];
      [v50 offsetForFrontmostPassWhileStacked];

      PKFloatRoundToPixel();
      v53 = fmax(v52, 0.0);
    }

    else
    {
      v53 = 0.0;
    }

    self->_layoutState.separationPadding = v53;
  }

  if (count == p_layoutState->groups.count && ((*(&self->_layoutState.groups + 16) ^ v7) & 6) == 0 && separatorIndex == self->_layoutState.groups.separatorIndex && (v54 = *(&self->_layoutState + 28), ((v54 ^ v59) & 0xFC) == 0) && ((*(&self->_layoutState + 24) ^ v58) & 3) == 0 && groupCellHeight == self->_layoutState.groupCellHeight && separationPadding == self->_layoutState.separationPadding)
  {
    if ((v54 & 0xC) == 8)
    {
      v55 = v57 ^ [(PKPassGroupStackView *)self isTableModalPresentation];
    }

    else
    {
      LOBYTE(v55) = 0;
    }
  }

  else
  {
    LOBYTE(v55) = 1;
  }

  return v55;
}

- (BOOL)isTableModalPresentation
{
  if (self->_layoutState.groups.count == 1)
  {
    return ![(PKPassGroupStackView *)self _isModalPresentationAllowedForSingleGroup:v2];
  }

  else
  {
    return 0;
  }
}

- (void)updatePeerPaymentFooterViewIfNecessary
{
  v3 = [(PKPassGroupView *)self->_modallyPresentedGroupView frontmostPassView];
  v4 = [v3 pass];

  if ([v4 passType] == 1 && objc_msgSend(v4, "hasAssociatedPeerPaymentAccount"))
  {
    [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
  }
}

- (void)updateHeaderAndSubheaderViewsIfNecessary
{
  [(PKPassGroupStackView *)self _recomputeLayoutState];
  if ([(PKPassGroupStackView *)self _updateHeaderFooterStateAnimated:1 layout:0])
  {
    if (self->_externalVC.pending.executeTransition.context)
    {

      [(PKPassGroupStackView *)self layoutHeaderFootersAnimated:1];
    }

    else
    {
      presentationState = self->_presentationState;

      [(PKPassGroupStackView *)self setPresentationState:presentationState animated:1];
    }
  }

  else
  {

    [(PKPassGroupStackView *)self _updateContentSizeAndLayout:1 forceUpdate:1];
  }
}

- (double)_groupCellHeight
{
  p_layoutState = &self->_layoutState;
  if ((*(&self->_layoutState.groups + 16) & 2) != 0 && (*(&self->_layoutState.groups + 16) & 1) != 0 || self->_layoutState.groups.separatorIndex != 0x7FFFFFFFFFFFFFFFLL || ((*(&self->_layoutState + 28) >> 2) & 1) + ((*(&self->_layoutState + 28) >> 3) & 1u) > 1)
  {
    return 55.0;
  }

  if (*(&self->_layoutState.groups + 16))
  {
    v4 = 0.0;
    if ((*(&self->_layoutState.groups + 16) & 2) != 0)
    {
      PKPassFrontFaceContentSize();
      v4 = v5;
    }
  }

  else
  {
    v4 = 0.0;
    if (p_layoutState->groups.count)
    {
      v7 = 0;
      while (1)
      {
        WeakRetained = objc_loadWeakRetained(&self->_datasource);
        v9 = [WeakRetained groupAtIndex:v7];

        if ([v9 passCount])
        {
          break;
        }

        if (++v7 >= p_layoutState->groups.count)
        {
          goto LABEL_17;
        }
      }

      v10 = [v9 passAtIndex:0];
      v4 = 0.0;
      if ([v10 style] == 6)
      {
        PKPassFrontFaceContentSize();
        v4 = v11;
      }
    }
  }

LABEL_17:
  [(PKPassGroupStackView *)self bounds];
  v13 = v12;
  top = self->_lastBoundsInsets.top;
  paymentHeaderContext = self->_paymentHeaderContext;
  v16 = 0.0;
  v17 = 0.0;
  if (paymentHeaderContext)
  {
    v18 = paymentHeaderContext->_headerMargins.top;
    [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext _headerViewSize];
    v17 = paymentHeaderContext->_headerMargins.bottom + v18 + v19;
  }

  passHeaderContext = self->_passHeaderContext;
  if (passHeaderContext)
  {
    v21 = passHeaderContext->_headerMargins.top;
    [(PKPGSVSectionHeaderContext *)passHeaderContext _headerViewSize];
    v16 = passHeaderContext->_headerMargins.bottom + v21 + v22;
  }

  if (p_layoutState->groups.count)
  {
    v23 = floor((v13 - (top + v17 + v16)) / p_layoutState->groups.count);
  }

  else
  {
    v23 = 0.0;
  }

  if (v4 <= 0.0)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    PKFloatRoundToPixel();
  }

  return fmax(fmin(v23, v24), 55.0);
}

- (unint64_t)_lastIndex
{
  count = self->_layoutState.groups.count;
  v3 = count != 0;
  v4 = count - 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_tablePresentationNumberOfCellsBeforeStacking
{
  [(PKPassGroupStackView *)self bounds];
  v4 = v3 - self->_lastBoundsInsets.top;
  if (self->_layoutState.groups.separatorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    separationPadding = self->_layoutState.separationPadding;
    v6 = separationPadding <= 0.0;
    v7 = v4 - separationPadding;
    if (!v6)
    {
      v4 = v7;
    }
  }

  v8 = vcvtpd_u64_f64(v4 / 55.0);
  if (v8 <= 1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

- (void)_arrangeGroups
{
  ++self->_reorderActionTag;
  [(NSMutableArray *)self->_reorderActions removeAllObjects];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__64;
  v12 = __Block_byref_object_dispose__64;
  v13 = 0;
  v3 = [(PKPassGroupView *)self->_modallyPresentedGroupView pageControl];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 superview];
    passContainerView = self->_passContainerView;

    if (v5 == passContainerView)
    {
      [(PKPassthroughView *)self->_passContainerView sendSubviewToBack:v4];
      objc_storeStrong(v9 + 5, v4);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PKPassGroupStackView__arrangeGroups__block_invoke;
  v7[3] = &unk_1E8023E60;
  v7[4] = self;
  v7[5] = &v8;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v7];

  _Block_object_dispose(&v8, 8);
}

void __38__PKPassGroupStackView__arrangeGroups__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 isLoaned])
  {
    goto LABEL_2;
  }

  v5 = [*(a1 + 32) _activeExternalVCContextForPassGroupView:v8];
  if (!v5)
  {
    goto LABEL_2;
  }

  v6 = v5[4];
  if (!v6)
  {

    goto LABEL_2;
  }

  v7 = *(v6 + 552);

  if (v7 != 2)
  {
LABEL_2:
    v4 = *(*(a1 + 32) + 2680);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      [v4 insertSubview:v8 aboveSubview:?];
    }

    else
    {
      [v4 insertSubview:v8 atIndex:?];
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (PKPassGroupStackViewDatasource)datasource
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);

  return WeakRetained;
}

- (CGSize)_contentSize
{
  v3 = [(PKPassGroupStackView *)self isTableModalPresentation];
  p_layoutState = &self->_layoutState;
  v5 = self->_layoutState.separationPadding + self->_layoutState.groupCellHeight * self->_layoutState.groups.count;
  if (v3)
  {
    p_lastBoundsSize = &self->_lastBoundsSize;
    v7 = fmax(self->_lastBoundsSize.height, v5);
  }

  else
  {
    v8 = [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext totalHeight];
    v9 = v5 + v8 + [(PKPGSVSectionHeaderContext *)self->_passHeaderContext totalHeight];
    if (p_layoutState->groups.count)
    {
      v10 = *(&self->_layoutState + 28);
      v11 = [(PKPassGroupStackView *)self _groupViewAtIndexWhileEnsuringVisible:p_layoutState->groups.count - 1 withContentMode:4];
      if (v11)
      {
        [(PKPassGroupStackView *)self _scaleForTableGroup];
        [v11 offsetForFrontmostPassWhileStacked];
        if ((v10 & 0xC) == 4)
        {
          v12 = [v11 frontmostPassView];
          [v12 sizeOfFrontFace];

          PKFloatRoundToPixel();
          v14 = fmax(v13, 0.0);
        }

        else
        {
          PKRunningInRemoteContext();
          PKFloatRoundToPixel();
          PKFloatRoundToPixel();
        }

        v9 = v9 + v14;
      }
    }

    p_lastBoundsSize = &self->_lastBoundsSize;
    v7 = fmax(self->_lastBoundsSize.height, v9 + self->_lastBoundsInsets.top + self->_lastBoundsInsets.bottom);
    if (self->_footerView)
    {
      v7 = v7 + self->_footerViewMinimumHeight;
    }
  }

  width = p_lastBoundsSize->width;
  result.height = v7;
  result.width = width;
  return result;
}

- (BOOL)isPresentingPassViewFront
{
  presentationState = self->_presentationState;
  if (presentationState == 4)
  {
    return [(PKPassGroupStackView *)self isTableModalPresentation];
  }

  v3 = presentationState == 7 || presentationState == 5;
  return v3 && self->_layoutState.groups.count && self->_modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_updateCoachingState
{
  if ([(PKPassGroupStackView *)self isPresentingPassViewFront]&& self->_passFooterViewVisible)
  {
    v3 = [(PKPassFooterView *)self->_passFooterView coachingState];
  }

  else
  {
    v3 = 0;
  }

  if (self->_coachingState != v3)
  {
    self->_coachingState = v3;
    v4 = [(PKPassGroupStackView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 groupStackViewDidChangeCoachingState:self];
    }
  }
}

- (void)_updatePausedState
{
  if (self->_invalidated || self->_paused)
  {
    LOBYTE(v2) = 1;
LABEL_4:
    self->_effectivePaused = v2 & 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PKPassGroupStackView__updatePausedState__block_invoke_2;
    v6[3] = &unk_1E8023CE0;
    v6[4] = self;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v6];
    return;
  }

  if (self->_externalVC.pending.executeTransition.context && self->_externalVC.pending.executeTransition.presentationState.override)
  {
    if (self->_effectivePaused)
    {
      p_presentationState = &self->_externalVC.pending.executeTransition.presentationState;
      goto LABEL_15;
    }

LABEL_12:
    LOBYTE(v2) = 0;
    goto LABEL_4;
  }

  if (self->_transitionCanceller)
  {
    if (!self->_effectivePaused)
    {
      goto LABEL_12;
    }

    v4 = 2464;
  }

  else
  {
    v4 = 2168;
  }

  p_presentationState = (self + v4);
LABEL_15:
  v5 = p_presentationState->value - 1;
  if (v5 < 7)
  {
    v2 = 0x47u >> v5;
    goto LABEL_4;
  }

  __break(1u);
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PKPassGroupStackView;
  [(PKPassGroupStackView *)&v3 safeAreaInsetsDidChange];
  [(PKPassGroupStackView *)self safeAreaInsets];
  [(PKPassGroupStackView *)self setBoundsInsets:?];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKPassGroupStackView;
  [(PKPassGroupStackView *)&v19 layoutSubviews];
  [(PKPassGroupStackView *)self bounds];
  v4 = v3;
  v6 = v5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__PKPassGroupStackView_layoutSubviews__block_invoke;
  v18[3] = &unk_1E8012160;
  v18[4] = self;
  v18[5] = v7;
  v18[6] = v8;
  *&v18[7] = v3;
  *&v18[8] = v5;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v18];
  v9 = v4 == self->_lastBoundsSize.width && v6 == self->_lastBoundsSize.height;
  if (v9 && !self->_boundsInsetsDirtied)
  {
    v10 = 0;
  }

  else
  {
    self->_lastBoundsSize.width = v4;
    self->_lastBoundsSize.height = v6;
    self->_boundsInsetsDirtied = 0;
    [(PKPassGroupStackView *)self updateHeaderAndSubheaderViewsIfNecessary];
    v10 = 1;
  }

  [(PKPassthroughView *)self->_externalVCContainerView bounds];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __38__PKPassGroupStackView_layoutSubviews__block_invoke_2;
  v17[3] = &__block_descriptor_64_e37_v24__0__PKPGSVExternalVCContext_8_B16l;
  v17[4] = v11;
  v17[5] = v12;
  v17[6] = v13;
  v17[7] = v14;
  [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v17];
  [(PKPassGroupStackView *)self contentSize];
  [(PKPassthroughView *)self->_passContainerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fmax(v4, v15), fmax(v6, v16)];
  [(PKPassGroupStackView *)self layoutHeaderFootersAnimated:0];
  if (v10)
  {
    [(PKPassGroupStackView *)self _updateContentSizeAndLayout:0];
  }
}

- (_NSRange)_rangeOfVisibleIndexes
{
  v2 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexesIgnoringBottomInset:0];
  result.length = v3;
  result.location = v2;
  return result;
}

- (unint64_t)_startVisibleIndex
{
  [(PKPassGroupStackView *)self bounds];
  [(PKPassGroupStackView *)self _minimumNativeYInBounds:?];

  return [PKPassGroupStackView _indexForNativeY:"_indexForNativeY:inBounds:roundToClosestIndex:" inBounds:0 roundToClosestIndex:?];
}

- (_NSRange)_rangeOfEagerLoadedIndexes
{
  v3 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
  v5 = v4 + 12;
  if (v3 >= 7)
  {
    v6 = v3 - 6;
  }

  else
  {
    v6 = 0;
  }

  count = self->_layoutState.groups.count;
  v8 = v6 + v5 - count;
  if (v6 + v5 >= count)
  {
    v9 = count - v5;
    if (v6 < v8)
    {
      v9 = 0;
    }

    v10 = v8 >= v6;
    v11 = v8 - v6;
    if (!v10)
    {
      v11 = 0;
    }

    v5 -= v11;
    v6 = v9;
  }

  result.length = v5;
  result.location = v6;
  return result;
}

- (id)_createStackedIndices
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PKPassGroupStackView *)self _startVisibleIndex];
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v6 = [WeakRetained groupAtIndex:v4];

  if (!v6 || ([(PKPassGroupStackView *)self _separatorGroup], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7))
  {
    v11 = 0;
    v10 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = [v6 passAtIndex:{objc_msgSend(v6, "frontmostPassIndex")}];
    v9 = [v8 style];

    v10 = [(PKPassGroupStackView *)self _edgeStylesObscuredByTopMiddleOfPassStyle:v9];
    v11 = [(PKPassGroupStackView *)self _edgeStylesObscuredByTopCornersOfPassStyle:v9];
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    --v4;
    v12 = objc_loadWeakRetained(&self->_datasource);
    v13 = [v12 groupAtIndex:v4];

    v14 = [v13 passAtIndex:{objc_msgSend(v13, "frontmostPassIndex")}];
    v15 = [v14 style];

    v16 = [(PKPassGroupStackView *)self _edgeStylesObscuredByTopMiddleOfPassStyle:v15]| v10;
    v17 = [(PKPassGroupStackView *)self _edgeStylesObscuredByTopCornersOfPassStyle:v15]| v11;
    if (v10 != v16 || v11 != v17)
    {
      [v3 addIndex:v4];
      v11 = v17;
      v10 = v16;
    }

    if (!v4 || v11 == 94 && v10 == 94)
    {
      break;
    }
  }

LABEL_16:
  v19 = [v3 copy];

  return v19;
}

- (id)_separatorGroup
{
  p_layoutState = &self->_layoutState;
  separatorIndex = self->_layoutState.groups.separatorIndex;
  if (separatorIndex == 0x7FFFFFFFFFFFFFFFLL || (p_layoutState->groups.count ? (v4 = separatorIndex >= p_layoutState->groups.count - 1) : (v4 = 1), v4))
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_datasource);
    v6 = [WeakRetained groupAtIndex:p_layoutState->groups.separatorIndex];
  }

  return v6;
}

- (PKPassGroupStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  v60.receiver = self;
  v60.super_class = PKPassGroupStackView;
  v4 = [(PKPassGroupStackView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width];
  v5 = v4;
  if (v4)
  {
    [(PKPassGroupStackView *)v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [(PKPassGroupStackView *)v5 setClipsToBounds:0];
    [(PKPassGroupStackView *)v5 setAlwaysBounceVertical:1];
    [(PKPassGroupStackView *)v5 setShowsVerticalScrollIndicator:0];
    [(PKPassGroupStackView *)v5 setContentInsetAdjustmentBehavior:2];
    [(PKPassGroupStackView *)v5 _setAdjustsContentInsetWhenScrollDisabled:1];
    v5->_staggerPileAnimations = 1;
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:(height / 55.0)];
    groupViewsByGroupID = v5->_groupViewsByGroupID;
    v5->_groupViewsByGroupID = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animatorsByGroupID = v5->_animatorsByGroupID;
    v5->_animatorsByGroupID = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupViewsInFlightByGroupID = v5->_groupViewsInFlightByGroupID;
    v5->_groupViewsInFlightByGroupID = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    transitionCompletionHandlers = v5->_transitionCompletionHandlers;
    v5->_transitionCompletionHandlers = v21;

    v23 = [[PKReusablePassViewQueue alloc] initWithCount:0];
    reusableCardViewQueue = v5->_reusableCardViewQueue;
    v5->_reusableCardViewQueue = v23;

    v5->_presentationState = 1;
    v5->_modalGroupIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_layoutState.groups.separatorIndex = 0x7FFFFFFFFFFFFFFFLL;
    if (PKSecureElementIsAvailable())
    {
      v25 = [MEMORY[0x1E69B8DB8] paymentService];
      paymentService = v5->_paymentService;
      v5->_paymentService = v25;

      [(PKPaymentService *)v5->_paymentService registerObserver:v5];
    }

    v27 = [[PKPassthroughView alloc] initWithFrame:v7, v9, v11, v13];
    externalVCContainerView = v5->_externalVCContainerView;
    v5->_externalVCContainerView = v27;

    [(PKPassthroughView *)v5->_externalVCContainerView setHitTestEnabled:0];
    [(PKPassGroupStackView *)v5 addSubview:v5->_externalVCContainerView];
    v29 = [[PKPassthroughView alloc] initWithFrame:v7, v9, v11, v13];
    headerContainerView = v5->_headerContainerView;
    v5->_headerContainerView = v29;

    [(PKPassGroupStackView *)v5 addSubview:v5->_headerContainerView];
    v31 = [[PKPassthroughView alloc] initWithFrame:v7, v9, v11, v13];
    subheaderContainerView = v5->_subheaderContainerView;
    v5->_subheaderContainerView = v31;

    [(PKPassGroupStackView *)v5 addSubview:v5->_subheaderContainerView];
    v33 = [[PKPassthroughView alloc] initWithFrame:v7, v9, v11, v13];
    passContainerView = v5->_passContainerView;
    v5->_passContainerView = v33;

    [(PKPassGroupStackView *)v5 addSubview:v5->_passContainerView];
    v35 = MEMORY[0x1E69DCAB8];
    v36 = PKPassKitUIBundle();
    v37 = [v35 imageNamed:@"StackPocketBackgroundShadow" inBundle:v36];
    v38 = [v37 pkui_resizableImageByTilingHorizontally];

    v39 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v38];
    footerPocketBackgroundShadow = v5->_footerPocketBackgroundShadow;
    v5->_footerPocketBackgroundShadow = v39;

    v41 = [(UIImageView *)v5->_footerPocketBackgroundShadow layer];
    [v41 setAnchorPoint:{0.5, 1.0}];

    [(UIImageView *)v5->_footerPocketBackgroundShadow setAlpha:0.0];
    v42 = MEMORY[0x1E69DCAB8];
    v43 = PKPassKitUIBundle();
    v44 = [v42 imageNamed:@"StackPocketForegroundShadow" inBundle:v43];
    v45 = [v44 pkui_resizableImageByTilingHorizontally];

    v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v45];
    footerPocketForegroundShadow = v5->_footerPocketForegroundShadow;
    v5->_footerPocketForegroundShadow = v46;

    v48 = [(UIImageView *)v5->_footerPocketForegroundShadow layer];
    [v48 setAnchorPoint:{0.5, 1.0}];

    [(UIImageView *)v5->_footerPocketForegroundShadow setAlpha:0.0];
    v49 = [MEMORY[0x1E69B91E0] sharedSecureElement];
    secureElement = v5->_secureElement;
    v5->_secureElement = v49;

    v51 = [MEMORY[0x1E69DC888] labelColor];
    currentPageIndicatorTintColor = v5->_currentPageIndicatorTintColor;
    v5->_currentPageIndicatorTintColor = v51;

    v53 = [(UIColor *)v5->_currentPageIndicatorTintColor colorWithAlphaComponent:0.3];
    pageIndicatorTintColor = v5->_pageIndicatorTintColor;
    v5->_pageIndicatorTintColor = v53;

    v55 = [[PKPassViewGestureCollector alloc] initWithGroupStackView:v5];
    gestureCollector = v5->_gestureCollector;
    v5->_gestureCollector = v55;

    v57 = +[PKUIForegroundActiveArbiter sharedInstance];
    v58 = v57;
    if (v57)
    {
      v5->_foregroundActiveState = [v57 registerObserver:v5];
    }

    else
    {
      v5->_foregroundActiveState = 257;
    }

    if ((PKRunningInRemoteContext() & 1) == 0)
    {
      [v14 addObserver:v5 selector:sel__paymentDidReceiveSuccessfulTransactionNotification_ name:*MEMORY[0x1E69BC068] object:0];
    }

    [(PKPassGroupStackView *)v5 _updateNeedsNavigationBar];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v4 unregisterObserver:self];

  if (self->_wantsBacklightRamping)
  {
    v5 = +[PKBacklightController sharedInstance];
    [v5 endRequestingBacklightRamping:self];
  }

  if (self->_transitionCanceller)
  {
    [(PKPassGroupStackView *)self _cancelTransition];
  }

  [(NSMutableArray *)self->_reorderActions removeAllObjects];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKPassGroupStackView *)self _executeCompletionHandlers:self->_transitionCompletionHandlers cancelled:1];
  bottomContentSeparatorVisibilityTimer = self->_bottomContentSeparatorVisibilityTimer;
  if (bottomContentSeparatorVisibilityTimer)
  {
    dispatch_source_cancel(bottomContentSeparatorVisibilityTimer);
    v7 = self->_bottomContentSeparatorVisibilityTimer;
    self->_bottomContentSeparatorVisibilityTimer = 0;
  }

  if (!self->_invalidated)
  {
    [(PKPassGroupStackView *)self invalidate];
  }

  v8.receiver = self;
  v8.super_class = PKPassGroupStackView;
  [(PKPassGroupStackView *)&v8 dealloc];
}

uint64_t __38__PKPassGroupStackView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2656) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 2664) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 2672);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

void __38__PKPassGroupStackView_layoutSubviews__block_invoke_2(double *a1, id *a2)
{
  v3 = [(PKPGSVExternalVCContext *)a2 _containedView];
  [v3 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)layoutHeaderFootersAnimated:(BOOL)a3
{
  v3 = a3;
  [(PKPassGroupStackView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = 28;
  if (!self->_transitionCanceller)
  {
    v13 = 6;
  }

  v14 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v13]);
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke;
  aBlock[3] = &unk_1E8023C20;
  v101 = v3;
  aBlock[4] = self;
  aBlock[5] = &v102;
  v15 = _Block_copy(aBlock);
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_3;
  v93[3] = &unk_1E8023C48;
  v99 = v14 == 4;
  v93[4] = self;
  v95 = v6;
  v96 = v8;
  v97 = v10;
  v98 = v12;
  v16 = v15;
  v94 = v16;
  v89 = _Block_copy(v93);
  v106.origin.x = v6;
  v106.origin.y = v8;
  v90 = v10;
  v106.size.width = v10;
  rect = v12;
  v106.size.height = v12;
  v17 = CGRectGetMaxY(v106) + 40.0;
  paymentHeaderContext = self->_paymentHeaderContext;
  if (paymentHeaderContext)
  {
    top = paymentHeaderContext->_headerMargins.top;
    [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext _headerViewSize];
    bottom = paymentHeaderContext->_headerMargins.bottom;
    v22 = [(PKPGSVSectionHeaderContext *)paymentHeaderContext _subheadersHeight]+ top + v21 + bottom;
    if (v14 != 2 && __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_4(self->_paymentHeaderContext))
    {
      v107.origin.x = v6;
      v107.origin.y = v8;
      v107.size.width = v90;
      v107.size.height = rect;
      v17 = CGRectGetMinY(v107) + -40.0 - v22;
    }

    (*(v89 + 2))(v89, self->_paymentHeaderContext, 0, 0, 1, v17);
    v17 = v22 + v17;
  }

  passHeaderContext = self->_passHeaderContext;
  if (passHeaderContext)
  {
    v24 = passHeaderContext->_headerMargins.top;
    [(PKPGSVSectionHeaderContext *)passHeaderContext _headerViewSize];
    v26 = v25;
    v27 = passHeaderContext->_headerMargins.bottom;
    v28 = [(PKPGSVSectionHeaderContext *)passHeaderContext _subheadersHeight];
    if (v14 != 2)
    {
      v29 = self->_paymentHeaderContext;
      if (v29)
      {
        v30 = self->_passHeaderContext;
LABEL_14:
        v29 = v29->_headerView;
LABEL_15:
        v31 = v29;
        v32 = self->_paymentHeaderContext;
        if (v32)
        {
          v32 = v32->_subheaderContexts;
        }

        v33 = v32;
        v34 = [(PKPGSVSectionHeaderContext *)v33 lastObject];
        v35 = v34;
        if (v34)
        {
          v36 = *(v34 + 8);
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        (*(v89 + 2))(v89, v30, v31, v37, self->_paymentHeaderContext == 0, v17);

        v3 = v3;
        goto LABEL_20;
      }

      v83 = v28;
      if (__52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_4(self->_passHeaderContext))
      {
        v112.origin.x = v6;
        v112.origin.y = v8;
        v112.size.width = v90;
        v112.size.height = rect;
        v17 = CGRectGetMinY(v112) + -40.0 - (v83 + v24 + v26 + v27);
      }
    }

    v29 = self->_paymentHeaderContext;
    v30 = self->_passHeaderContext;
    if (!v29)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_20:
  v103[3] = *&self->_footerAnimationDelay;
  if (self->_footerView)
  {
    if (v14 == 4)
    {
      v38 = ![(PKPassGroupStackView *)self isTableModalPresentation];
    }

    else
    {
      v38 = 0;
    }

    [(PKPassGroupStackView *)self contentSize];
    v40 = v39;
    v41 = [(UIImageView *)self->_footerPocketBackgroundShadow image];
    [v41 size];
    v43 = v42;
    v87 = v8;

    v44 = [(UIImageView *)self->_footerPocketForegroundShadow image];
    [v44 size];
    v86 = v45;
    v46 = *MEMORY[0x1E695EFF8];
    v47 = *(MEMORY[0x1E695EFF8] + 8);

    memset(&slice, 0, sizeof(slice));
    remainder.origin.x = v46;
    remainder.origin.y = v47;
    v108.size.width = v90;
    remainder.size.width = v90;
    remainder.size.height = fmax(v40, rect);
    v108.origin.x = v46;
    v108.origin.y = v47;
    height = remainder.size.height;
    v108.size.height = remainder.size.height;
    CGRectDivide(v108, &slice, &remainder, self->_lastBoundsInsets.bottom, CGRectMaxYEdge);
    CGRectDivide(remainder, &slice, &remainder, self->_footerViewMinimumHeight, CGRectMaxYEdge);
    y = slice.origin.y;
    v84 = v6;
    if ((v38 & 1) == 0)
    {
      v109.origin.x = v6;
      v109.origin.y = v87;
      v109.size.height = rect;
      v109.size.width = v90;
      y = fmax(v43, v86) + 40.0 + fmax(slice.origin.y + self->_footerViewMinimumHeight + self->_lastBoundsInsets.bottom, CGRectGetMaxY(v109));
      slice.origin.y = y;
    }

    x = slice.origin.x;
    width = slice.size.width;
    v51 = [(UIImageView *)self->_footerPocketBackgroundShadow layer];
    [v51 anchorPoint];
    v53 = v52;
    v55 = v54;

    (*(v16 + 2))(v16, self->_footerPocketBackgroundShadow, self, 0, 0, 0, x + v53 * width, y - v43 + v55 * v43, v46, v47, width, v43, 1.0);
    [(PKPassGroupStackView *)self _xFrameForGroupViewInState:4];
    v57 = v56;
    v59 = v58;
    v60 = slice.origin.y;
    v61 = [(UIImageView *)self->_footerPocketForegroundShadow layer];
    [v61 anchorPoint];
    v63 = v62;
    v65 = v64;

    (*(v16 + 2))(v16, self->_footerPocketForegroundShadow, self, self->_passContainerView, 0, 0, v57 + v63 * v59, v60 - v86 + v65 * v86, v46, v47, v59, v86, self->_footerPocketForegroundShadowAlpha);
    footerViewMinimumHeight = self->_footerViewMinimumHeight;
    v67 = self->_lastBoundsInsets.bottom;
    v110.origin.x = v84;
    v110.origin.y = v87;
    v110.size.height = rect;
    v110.size.width = v90;
    MaxY = CGRectGetMaxY(v110);
    v111.origin.x = v46;
    v111.origin.y = v47;
    v111.size.width = v90;
    v111.size.height = height;
    v69 = CGRectGetMaxY(v111);
    v70.n128_u64[0] = 0;
    v71.n128_f64[0] = fmax(MaxY - v69, 0.0);
    PKFloatCeilToPixel(v71, v70);
    v73 = v72;
    v74 = [(UIView *)self->_footerView layer];
    [v74 anchorPoint];
    v76 = v75;
    v78 = v77;

    v79 = slice.origin.x;
    v80.n128_u64[0] = 0.5;
    v81.n128_f64[0] = (slice.size.width - v90) * 0.5;
    PKFloatFloorToPixel(v81, v80);
    (*(v16 + 2))(v16, self->_footerView, self, self->_passContainerView, 0, 0, v79 + v82 + v76 * v90, slice.origin.y + v78 * (footerViewMinimumHeight + v67 + v73), v46, v47, v90, footerViewMinimumHeight + v67 + v73, 1.0);
  }

  [(PKPassGroupStackView *)self _updateTopContentSeparatorVisibilityAnimated:v3];
  [(PKPassGroupStackView *)self _updateBottomContentSeparatorVisibilityAnimated:v3];

  _Block_object_dispose(&v102, 8);
}

void __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v25 = a2;
  v26 = a3;
  v27 = a4;
  if (v25)
  {
    v28 = [v25 layer];
    [v26 convertPoint:*(a1 + 32) fromView:{a7, a8}];
    v30 = v29;
    v32 = v31;
    v33 = [v25 superview];

    if (v33)
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_20;
      }

      v56 = a10;
      v57 = a11;
      [v28 position];
      v35 = v34;
      v37 = v36;
      [v28 opacity];
      v39 = v38;
      if (v35 != v30 || v37 != v32)
      {
        v40 = [MEMORY[0x1E69B92B0] highFrameRateSpringAnimationWithKeyPath:@"position" reason:1];
        [v40 pkui_updateForAdditiveAnimationFromPoint:v35 toPoint:{v37, v30, v32}];
        [v40 setBeginTime:*(*(*(a1 + 40) + 8) + 24)];
        v41 = [v28 pkui_addAdditiveAnimation:v40];
      }

      a10 = v56;
      a11 = v57;
      if (v39 == a13)
      {
        goto LABEL_20;
      }

      v42 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v42 pkui_updateForAdditiveAnimationFromScalar:v39 toScalar:a13];
    }

    else
    {
      if (v27 && ([v27 superview], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 == v26))
      {
        [v26 insertSubview:v25 aboveSubview:v27];
      }

      else
      {
        [v26 insertSubview:v25 atIndex:0];
      }

      if (*(a1 + 48) != 1)
      {
        goto LABEL_20;
      }

      [v28 setOpacity:0.0];
      [v28 pkui_animateToOpacity:0 withCompletion:a13];
      if (!a5)
      {
        goto LABEL_20;
      }

      v44 = a10;
      [v26 bounds];
      if (a6)
      {
        MinY = CGRectGetMinY(*&v45);
        [v28 anchorPoint];
        v51 = MinY - v50 * a12;
      }

      else
      {
        MaxY = CGRectGetMaxY(*&v45);
        [v28 anchorPoint];
        v51 = MaxY + v53 * a12;
      }

      v42 = [MEMORY[0x1E69B92B0] highFrameRateSpringAnimationWithKeyPath:@"position" reason:1];
      [v42 pkui_updateForAdditiveAnimationFromPoint:v30 toPoint:{v51, v30, v32}];
      [v42 setBeginTime:*(*(*(a1 + 40) + 8) + 24)];
      a10 = v44;
    }

    v54 = [v28 pkui_addAdditiveAnimation:v42];

LABEL_20:
    v55 = MEMORY[0x1E69DD250];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_2;
    v58[3] = &unk_1E8023BF8;
    v59 = v25;
    v60 = v30;
    v61 = v32;
    v62 = a9;
    v63 = a10;
    v64 = a11;
    v65 = a12;
    v66 = a13;
    [v55 performWithoutAnimation:v58];
  }
}

uint64_t __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 88);

  return [v2 setAlpha:v3];
}

void __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, int a5, double a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (v11)
  {
    v14 = v11[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  if (*(a1 + 80) == 1)
  {
    v21 = [v16 _layoutStateForHeaderContext:v11 inTableWithBounds:{v17, v18, v19, v20}];
  }

  else
  {
    v21 = [v16 _layoutStateForHeaderContext:v11 offscreenWithBounds:v17 offset:{v18, v19, v20, a6}];
  }

  v22 = v21;
  if (v15)
  {
    if (a5 && (*(a1 + 80) & 1) == 0)
    {
      v26 = [*(a1 + 32) _layoutStateForHeaderContext:v11 inTableWithBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
      if (v26)
      {
        v24 = v26[4];
        v23 = v26[5];
        v25 = v26[6];
      }

      else
      {
        v23 = 0.0;
        v25 = 0.0;
        v24 = 0.0;
      }
    }

    else if (v21)
    {
      v24 = v21[4];
      v23 = v21[5];
      v25 = v21[6];
    }

    else
    {
      v24 = 0.0;
      v23 = 0.0;
      v25 = 0.0;
    }

    v27 = *(a1 + 40);
    v28 = [(PKPGSVSectionHeaderContext *)v11 positionForHeaderViewInContainerFrame:v24, v23, v25];
    v30 = v29;
    [(PKPGSVSectionHeaderContext *)v11 boundsForHeaderViewInContainerFrame:v24, v23, v25];
    if (v22)
    {
      v35.n128_f64[0] = v22[2];
    }

    else
    {
      v35.n128_u64[0] = 0;
    }

    (*(v27 + 16))(v27, v15, *(*(a1 + 32) + 2664), v12, 0, 0, v28, v30, v31, v32, v33, v34, v35);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = v11;
  v66 = v15;
  if (v22)
  {
    v36 = *(v22 + 3);
  }

  else
  {
    v36 = 0;
  }

  v65 = v22;
  v67 = v12;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v70;
    do
    {
      v41 = 0;
      v42 = v13;
      do
      {
        if (*v70 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v69 + 1) + 8 * v41);
        if (v43)
        {
          v44 = *(v43 + 8);
          v45 = v44;
          v46 = v44 == 0;
          if (v44)
          {
            v47 = v44[1];
          }

          else
          {
            v47 = 0;
          }

          v13 = v47;
          v48 = *(v43 + 16);
          v49 = *(v43 + 24);
          v50 = *(v43 + 32);
          v51 = *(v43 + 40);
        }

        else
        {
          v13 = 0;
          v45 = 0;
          v49 = 0.0;
          v46 = 1;
          v50 = 0.0;
          v51 = 0.0;
          v48 = 0.0;
        }

        v52 = *(a1 + 40);
        v55 = [(PKPGSVSectionSubheaderContext *)v45 positionForViewInContainerFrame:v48, v49, v50, v51];
        v57 = v56;
        if (v46)
        {
          v54.n128_u64[0] = 0;
          v53.n128_u64[0] = 0;
          v61 = 0.0;
          v59 = 0.0;
        }

        else
        {
          [v45[1] bounds];
          v59 = v58;
          v61 = v60;
          v53.n128_u64[0] = v62;
          v54.n128_u64[0] = v63;
        }

        (*(v52 + 16))(v52, v13, *(*(a1 + 32) + 2672), v42, 1, a6 < 0.0, v55, v57, v59, v61, v53, v54, 1.0);

        ++v41;
        v42 = v13;
      }

      while (v39 != v41);
      v64 = [v37 countByEnumeratingWithState:&v69 objects:v73 count:16];
      v39 = v64;
    }

    while (v64);
  }
}

uint64_t __52__PKPassGroupStackView_layoutHeaderFootersAnimated___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a1)
  {
    v1 = *(a1 + 48);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (v6)
        {
          v6 = v6[1];
        }

        v7 = v6;
        v8 = [v7 scrollType];

        if (v8 == 1)
        {
          v3 = 1;
          goto LABEL_15;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v3;
}

- (id)_layoutStateForHeaderContext:(id)a3 inTableWithBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v94 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [[PKPGSVSectionHeaderLayoutState alloc] initWithContext:v9];
  paymentHeaderContext = self->_paymentHeaderContext;
  if (paymentHeaderContext == v9)
  {
    v12 = 0.0;
    v13 = 0;
    if ((*(&self->_layoutState.groups + 16) & 2) != 0)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v14 = (*(&self->_layoutState + 28) >> 3) & 1;
    }

    LOBYTE(v80) = v14;
  }

  else
  {
    v12 = 0.0;
    if (self->_passHeaderContext == v9)
    {
      p_layoutState = &self->_layoutState;
      v80 = (*(&self->_layoutState.groups + 16) >> 2) & 1;
      if ((*(&self->_layoutState + 28) & 4) != 0)
      {
        if (paymentHeaderContext)
        {
          paymentHeaderContext = paymentHeaderContext->_subheaderContexts;
        }

        v61 = paymentHeaderContext;

        v13 = v61 != 0;
        if ((*(&self->_layoutState.groups + 16) & 2) != 0)
        {
          separatorIndex = self->_layoutState.groups.separatorIndex;
          if (separatorIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            count = p_layoutState->groups.count;
            separatorIndex = p_layoutState->groups.count - 1;
          }

          else
          {
            count = separatorIndex + 1;
          }

          [(PKPassGroupStackView *)self _nativeYForGroupInTableAtIndex:separatorIndex];
          v16 = v72;
          v13 += count;
          separationPadding = self->_layoutState.separationPadding;
          if (separationPadding > 0.0)
          {
            v12 = separationPadding + self->_layoutState.groupCellHeight;
          }
        }

        else
        {
          v62 = [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext totalHeight];
          v63 = self->_paymentHeaderContext;
          if (v63)
          {
            top = v63->_headerMargins.top;
            [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext _headerViewSize];
            v16 = v63->_headerMargins.bottom + top + v65;
          }

          else
          {
            v16 = 0.0;
          }

          v12 = v62 - v16;
        }

        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v80) = 0;
    }

    v13 = 0;
  }

  v16 = 0.0;
LABEL_11:
  v17 = *(&self->_layoutState + 28);
  v78 = v12;
  v79 = v16;
  v18 = v12 + v16;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = x;
  remainder.origin.y = v18;
  remainder.size.width = width;
  remainder.size.height = [(PKPGSVSectionHeaderContext *)v9 totalHeight];
  rect = remainder.size.height;
  v19 = 0.0;
  v20 = 0.0;
  if (v9)
  {
    v21 = v9->_headerMargins.top;
    [(PKPGSVSectionHeaderContext *)v9 _headerViewSize];
    v20 = v9->_headerMargins.bottom + v21 + v22;
  }

  v23 = v17 & 0xC;
  v95.origin.x = x;
  v95.origin.y = v18;
  v95.size.width = width;
  v95.size.height = remainder.size.height;
  CGRectDivide(v95, &slice, &remainder, v20, CGRectMinYEdge);
  if (v9)
  {
    v19 = v9->_headerMargins.top;
  }

  v24 = slice.origin.x;
  v26 = slice.size.width;
  v25 = slice.size.height;
  v85 = slice.size.height;
  if (v23 == 12)
  {
    v27 = slice.origin.y + v19;
    v28 = slice.origin.x;
    v29 = v19;
    v30 = v18;
    v31 = slice.size.width;
    [(PKPassGroupStackView *)self _transformedYForNativeY:v13 inBounds:v27 index:x, y, width, height];
    v26 = v31;
    v18 = v30;
    v24 = v28;
    v25 = v85;
    v33 = v32 - v29;
  }

  else
  {
    v34 = self->_lastBoundsInsets.top;
    v33 = slice.origin.y + v34;
    if (y >= 0.0)
    {
      if (y > 0.0)
      {
        v33 = fmax(y + v34 - v19, v33);
      }
    }

    else
    {
      v33 = y + v33;
    }
  }

  v82 = v10;
  v83 = v9;
  if (v10)
  {
    v74 = v26;
    v76 = v24;
    v10[4] = v24;
    v10[5] = v33;
    v81 = v33;
    v10[6] = v26;
    v10[7] = v25;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v35 = *(v10 + 3);
  }

  else
  {
    v35 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0.0;
    v74 = 0.0;
    v76 = 0.0;
    v81 = 0.0;
  }

  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (!v37)
  {
    v39 = 0;
    goto LABEL_50;
  }

  v38 = v37;
  v39 = 0;
  v40 = *v88;
  do
  {
    v41 = 0;
    do
    {
      if (*v88 != v40)
      {
        objc_enumerationMutation(v36);
      }

      v42 = *(*(&v87 + 1) + 8 * v41);
      if (!v39)
      {
        v39 = v42;
      }

      if (v42)
      {
        v43 = *(v42 + 8);
        v44 = v43;
        if (v43)
        {
          v45 = *(v43 + 2);
          [*(v43 + 1) bounds];
          v46 = 0;
          v48 = *(v44 + 4) + v45 + v47;
          goto LABEL_33;
        }
      }

      else
      {
        v44 = 0;
      }

      v48 = 0.0;
      v46 = 1;
LABEL_33:
      CGRectDivide(remainder, &slice, &remainder, v48, CGRectMinYEdge);
      v49 = slice.origin.x;
      v50 = slice.origin.y;
      size = slice.size;
      if (v46)
      {
        v52 = 0;
        v54 = 0.0;
      }

      else
      {
        v51 = *(v44 + 1);
        v52 = v51;
        if (v51 && [v51 scrollType] == 1 && y >= 0.0)
        {
          v53 = v50 + self->_lastBoundsInsets.top;
          goto LABEL_40;
        }

        v54 = *(v44 + 2);
      }

      [(PKPassGroupStackView *)self _transformedYForNativeY:v13 inBounds:v50 + v54 index:x, y, width, height, *&v74, *&v76, *&v78];
      v53 = v55 - v54;
LABEL_40:
      if (v42)
      {
        *(v42 + 16) = v49;
        *(v42 + 24) = v53;
        *(v42 + 32) = size;
      }

      ++v41;
    }

    while (v38 != v41);
    v56 = [v36 countByEnumeratingWithState:&v87 objects:v93 count:16];
    v38 = v56;
  }

  while (v56);
LABEL_50:

  v57 = 1.0;
  if (y >= self->_lastBoundsInsets.top)
  {
    v59 = v82;
    v58 = v83;
    if ((v39 != 0) | v80 & 1)
    {
      v60 = v39 ? v39[3] : v18 + rect;
      [(PKPassGroupStackView *)self _transformedYForNativeY:0 inBounds:v60 index:x, y, width, height, *&v74, *&v76];
      v96.size.width = v75;
      v96.origin.x = v77;
      v96.origin.y = v81;
      v96.size.height = v85;
      CGRectGetMaxY(v96);
      v66 = v83 ? v83->_headerMargins.top : 0.0;
      if (v85 - v66 + -8.0 != 0.0)
      {
        PKSpringAnimationSolveForInput();
        v57 = fmin(v67, 1.0);
      }
    }
  }

  else
  {
    v59 = v82;
    v58 = v83;
  }

  if (v18 > 0.0)
  {
    [(PKPassGroupStackView *)self _transformedYForNativeY:0 inBounds:v79 index:x, y, width, height];
    if (v85 != 0.0)
    {
      v57 = fmin(1.0 - fmin(fmax(v78 + v68 - v81, 0.0), v85) / v85, v57);
    }
  }

  if (v59)
  {
    v59[2] = v57;
  }

  return v59;
}

- (id)_layoutStateForHeaderContext:(id)a3 offscreenWithBounds:(CGRect)a4 offset:(double)a5
{
  width = a4.size.width;
  x = a4.origin.x;
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [[PKPGSVSectionHeaderLayoutState alloc] initWithContext:v8];
  v10 = [(PKPGSVSectionHeaderContext *)v8 totalHeight];
  if (v8)
  {
    v11 = v8[7];
    [(PKPGSVSectionHeaderContext *)v8 _headerViewSize];
    v13 = v8[9] + v11 + v12;
  }

  else
  {
    v13 = 0.0;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v38.origin.x = x;
  v38.origin.y = a5;
  v38.size.width = width;
  v38.size.height = v10;
  CGRectDivide(v38, &slice, &remainder, v13, CGRectMinYEdge);
  if (v9)
  {
    size = slice.size;
    *(v9 + 2) = slice.origin;
    *(v9 + 3) = size;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v9[3];
  }

  else
  {
    v15 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        if (v21)
        {
          v22 = *(v21 + 8);
          v23 = v22;
          if (v22)
          {
            v24 = *(v22 + 2);
            [*(v22 + 1) bounds];
            v26 = v23[4] + v24 + v25;
            goto LABEL_13;
          }
        }

        else
        {
          v23 = 0;
        }

        v26 = 0.0;
LABEL_13:
        CGRectDivide(remainder, &slice, &remainder, v26, CGRectMinYEdge);
        if (v21)
        {
          v27 = slice.size;
          *(v21 + 16) = slice.origin;
          *(v21 + 32) = v27;
        }

        ++v20;
      }

      while (v18 != v20);
      v28 = [v16 countByEnumeratingWithState:&v30 objects:v36 count:16];
      v18 = v28;
    }

    while (v28);
  }

  return v9;
}

- (void)_updateTopContentSeparatorVisibilityAnimated:(BOOL)a3
{
  if (self->_delegateWantsTopContentSeparation)
  {
    v3 = a3;
    [(PKPassGroupStackView *)self bounds];
    memset(&slice, 0, sizeof(slice));
    remainder = v33;
    v5 = 1;
    CGRectDivide(v33, &slice, &remainder, self->_lastBoundsInsets.top, CGRectMinYEdge);
    height = slice.size.height;
    presentationState = self->_presentationState;
    if (presentationState != 7 && presentationState != 5)
    {
      if (presentationState == 4)
      {
        v5 = [(PKPassGroupStackView *)self isTableModalPresentation];
        presentationState = self->_presentationState;
      }

      else
      {
        v5 = 0;
      }
    }

    v9 = presentationState != 4;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    if (height > 0.0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PKPassGroupStackView__updateTopContentSeparatorVisibilityAnimated___block_invoke;
      aBlock[3] = &__block_descriptor_64_e17_d16__0__CALayer_8l;
      v26 = slice;
      v10 = _Block_copy(aBlock);
      if (v5)
      {
        modallyPresentedGroupView = self->_modallyPresentedGroupView;
        if (modallyPresentedGroupView)
        {
          v12 = [(PKPassGroupView *)modallyPresentedGroupView layer];
          v13 = v10[2](v10, v12);
          v28[3] = fmax(v13, v28[3]);
        }
      }

      if (!v9 && !v5)
      {
        reorderedGroupView = self->_reorderedGroupView;
        if (reorderedGroupView)
        {
          v15 = [(PKPassGroupView *)reorderedGroupView layer];
          v16 = v10[2](v10, v15);
          v28[3] = fmax(v16, v28[3]);
        }

        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __69__PKPassGroupStackView__updateTopContentSeparatorVisibilityAnimated___block_invoke_2;
        v22 = &unk_1E8023C90;
        v24 = &v27;
        v23 = v10;
        v17 = _Block_copy(&v19);
        v17[2](v17, self->_paymentHeaderContext);
        v17[2](v17, self->_passHeaderContext);
      }
    }

    v18 = [(PKPassGroupStackView *)self delegate:v19];
    PKSpringAnimationSolveForInput();
    [v18 groupStackView:self wantsTopContentSeparatorWithVisibility:v3 animated:?];

    _Block_object_dispose(&v27, 8);
  }
}

double __69__PKPassGroupStackView__updateTopContentSeparatorVisibilityAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 anchorPoint];
  v5 = v4;
  [v3 position];
  v7 = v6;
  [v3 bounds];
  v9 = v8;
  v11 = v10;
  memset(&v15, 0, sizeof(v15));
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  CATransform3DGetAffineTransform(&v15, &v14);
  v12 = 1.0 - fmin((fmax(v7 - v5 * (v11 * v15.d + v15.b * v9), *(a1 + 40)) - *(a1 + 40)) / *(a1 + 56), 1.0);

  return v12;
}

void __69__PKPassGroupStackView__updateTopContentSeparatorVisibilityAnimated___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (a2)
  {
    v3 = *(a2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v9 = v9[1];
        }

        v10 = v9;
        if ([v10 scrollType] == 1)
        {
          v11 = *(a1 + 32);
          v12 = [v10 layer];
          *(*(*(a1 + 40) + 8) + 24) = fmax((*(v11 + 16))(v11, v12), *(*(*(a1 + 40) + 8) + 24));
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateBottomContentSeparatorVisibilityAnimated:(BOOL)a3
{
  if (!self->_delegateWantsBottomContentSeparation)
  {
    return;
  }

  v51 = v10;
  v52 = v9;
  v53 = v8;
  v54 = v7;
  v55 = v6;
  v56 = v5;
  v57 = v3;
  v58 = v4;
  v11 = a3;
  [(PKPassGroupStackView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(PKPassGroupStackView *)self contentSize];
  v22 = v21;
  v24 = v23;
  presentationState = self->_presentationState;
  if (presentationState == 7 || presentationState == 5)
  {
    v27 = 1;
  }

  else
  {
    v27 = presentationState == 4 && [(PKPassGroupStackView *)self isTableModalPresentation];
  }

  memset(&v50, 0, sizeof(v50));
  v49.origin = *MEMORY[0x1E695EFF8];
  v49.size.width = v22;
  v49.size.height = v24;
  v59.origin.x = v49.origin.x;
  v59.origin.y = v49.origin.y;
  v59.size.width = v22;
  v59.size.height = v24;
  CGRectDivide(v59, &v50, &v49, self->_lastBoundsInsets.bottom, CGRectMaxYEdge);
  v48 = v50;
  v49.origin.x = v14;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  v60.origin.x = v14;
  v60.origin.y = v16;
  v60.size.width = v18;
  v60.size.height = v20;
  CGRectDivide(v60, &v50, &v49, self->_lastBoundsInsets.bottom, CGRectMaxYEdge);
  v47 = v50;
  v28 = self->_presentationState;
  if (v28 == 4)
  {
    v29 = 0.0;
    if (!v27)
    {
      v50 = v48;
      if (self->_footerView && v50.size.height > 0.0)
      {
        v32 = self->_footerViewMinimumHeight * 0.25;
        v50.origin.y = v50.origin.y - v32;
        v50.size.height = v50.size.height + v32;
        v61.origin.x = v14;
        v61.origin.y = v16;
        v61.size.width = v18;
        v61.size.height = v20;
        CGRectGetMaxY(v61);
      }

      v50 = v47;
      goto LABEL_31;
    }
  }

  else
  {
    if (v28 == 7 || (v29 = 0.0, v28 == 5))
    {
      if ([(NSMutableArray *)self->_passPileViews count])
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }
    }

    v50 = v47;
    if (!v27)
    {
      goto LABEL_31;
    }
  }

  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  if (modallyPresentedGroupView && v50.size.height > 0.0 && v29 < 1.0)
  {
    v31 = [(PKPassGroupView *)modallyPresentedGroupView layer];
    [v31 anchorPoint];
    [v31 position];
    [v31 bounds];
    memset(&v46, 0, sizeof(v46));
    if (v31)
    {
      [v31 transform];
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
    }

    CATransform3DGetAffineTransform(&v46, &v45);
    v50.origin.y = v50.origin.y - v50.size.height * 0.25;
    v50.size.height = v50.size.height + v50.size.height * 0.25;
  }

LABEL_31:
  PKSpringAnimationSolveForInput();
  if (self->_bottomContentSeparatorVisibility != v33)
  {
    self->_bottomContentSeparatorVisibility = v33;
    bottomContentSeparatorVisibilityTimer = self->_bottomContentSeparatorVisibilityTimer;
    if (bottomContentSeparatorVisibilityTimer)
    {
      dispatch_source_cancel(bottomContentSeparatorVisibilityTimer);
      v35 = self->_bottomContentSeparatorVisibilityTimer;
      self->_bottomContentSeparatorVisibilityTimer = 0;
    }

    if (self->_footerAnimationDelay <= 0.0)
    {
      v41 = [(PKPassGroupStackView *)self delegate];
      [v41 groupStackView:self wantsBottomContentSeparatorWithVisibility:v11 animated:self->_bottomContentSeparatorVisibility];
    }

    else
    {
      v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v37 = self->_bottomContentSeparatorVisibilityTimer;
      self->_bottomContentSeparatorVisibilityTimer = v36;

      v38 = self->_bottomContentSeparatorVisibilityTimer;
      v39 = dispatch_time(0, (self->_footerAnimationDelay * 1000000000.0));
      dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      objc_initWeak(&v45, self);
      v40 = self->_bottomContentSeparatorVisibilityTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __72__PKPassGroupStackView__updateBottomContentSeparatorVisibilityAnimated___block_invoke;
      handler[3] = &unk_1E8018A78;
      objc_copyWeak(&v43, &v45);
      handler[4] = self;
      v44 = v11;
      dispatch_source_set_event_handler(v40, handler);
      dispatch_resume(self->_bottomContentSeparatorVisibilityTimer);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&v45);
    }
  }
}

void __72__PKPassGroupStackView__updateBottomContentSeparatorVisibilityAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[290];
    v7 = v3;
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v7[290];
      v7[290] = 0;

      v3 = v7;
    }

    v6 = [v3 delegate];
    [v6 groupStackView:*(a1 + 32) wantsBottomContentSeparatorWithVisibility:*(a1 + 48) animated:*(v7 + 289)];

    v3 = v7;
  }
}

- (void)setPresentationState:(int64_t)a3 withContext:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v61 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = *(&self->_layoutState + 28);
  if ((v11 & 0x800) == 0 && ((v11 & 1) != 0 || self->_externalVC.pending.executeTransition.context || self->_externalVC.pending.executeTransition.pendingRequest || self->_externalVC.pending.executeTransition.priorVCContext))
  {
    goto LABEL_88;
  }

  v12 = objc_autoreleasePoolPush();
  presentationState = self->_presentationState;
  v14 = PKLogFacilityTypeGetObject();
  v59 = os_signpost_id_generate(v14);
  v60 = v14;

  v56 = mach_continuous_time();
  v15 = [(PKPassGroupStackView *)self isTableModalPresentation];
  v57 = presentationState;
  if (a3 == 7)
  {
    if (self->_modalGroupIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      a3 = 4;
LABEL_17:
      context = self->_externalVC.context;
      v58 = a3;
      goto LABEL_33;
    }

    v17 = 7;
  }

  else
  {
    v16 = !v15;
    if (a3 != 5)
    {
      v16 = 1;
    }

    if (v16)
    {
      if (a3 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (!self->_modalGroupIndex && (*(&self->_layoutState + 28) & 2) == 0)
    {
      [(PKPassGroupStackView *)self setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_8;
    }

    v17 = 5;
  }

  v58 = v17;
  if (v61)
  {
    [(PKPassGroupStackView *)self _loadGroupViewAtIndexForModalPresentation:?];
  }

  else
  {
    [PKPassGroupStackView _loadGroupViewAtIndexForModalPresentation:"_loadGroupViewAtIndexForModalPresentation:withInitialState:" withInitialState:?];
  }

  context = self->_externalVC.context;
  if (a3 != 7)
  {
LABEL_33:
    v26 = context;
    v29 = 0;
    v30 = 0;
    if (v26)
    {
      goto LABEL_34;
    }

LABEL_79:
    v31 = [PKPGSVPresentationContext createForAnimated:v61 passContext:v9];
    v26 = 0;
    v35 = 7;
    goto LABEL_80;
  }

  v54 = v10;
  if (!context || !context->_sending)
  {
    goto LABEL_30;
  }

  v19 = context->_transitionCoordinator;
  v20 = v19;
  if (!v19)
  {
    v22 = 0;
    goto LABEL_90;
  }

  v21 = v19->_state;
  v22 = v21;
  if (!v21)
  {
LABEL_90:
    passGroupView = 0;
    goto LABEL_28;
  }

  passGroupView = v21->_passGroupView;
LABEL_28:
  v24 = passGroupView;
  modallyPresentedGroupView = self->_modallyPresentedGroupView;

  if (v24 == modallyPresentedGroupView)
  {
    v29 = 0;
    v30 = 1;
    goto LABEL_79;
  }

  context = self->_externalVC.context;
LABEL_30:
  v26 = context;
  v27 = [(PKPassGroupStackView *)self delegate];
  v55 = v9;
  if (v27)
  {
    if (objc_opt_respondsToSelector())
    {
      v28 = [v27 viewControllerForGroupStackView:self];
    }

    else
    {
      v28 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v36 = [v27 acquireNavigationItemVoucherForGroupStackView:self];
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v28 = 0;
  }

  if (self->_modallyPresentedGroupView && v28 && v36)
  {
    v52 = v27;
    v37 = v28;
    v38 = [[PKDashboardPassGroupViewController alloc] _initWithPassGroupView:self->_groupsController groupsController:self sizeProvider:v55 context:?];
    [(PKPGSVExternalVCContext *)v38 setFooterSuppressed:self->_externalFooterSuppressed];
    [(PKPGSVExternalVCContext *)v38 setDashboardPassGroupViewControllerDelegate:self];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __77__PKPassGroupStackView_setPresentationState_withContext_animated_completion___block_invoke;
    v64[3] = &unk_1E8010AD8;
    v65 = v54;
    v39 = _Block_copy(v64);
    v51 = v37;
    v31 = [[PKPGVTransitionCoordinatorRequest alloc] initToConnectLayout:self sender:v38 receiver:v38 forViewController:v37 parentViewController:v36 withNavigationItem:self->_modallyPresentedGroupView passGroupView:v39 completion:?];
    v40 = [PKPGVTransitionContext createForAnimatedTransition:v61 withPassContext:v55];
    [(PKPGVTransitionCoordinatorRequest *)v31 setTransitionContext:v40];

    if (v31)
    {
      v53 = v38;
    }

    else
    {
      [(PKPGSVExternalVCContext *)v38 invalidate];

      v53 = 0;
    }

    v10 = v54;
    v28 = v51;
    v27 = v52;
  }

  else
  {
    if (v36)
    {
      [(PKNavigationItemVoucher *)v36 _invalidateFromDisconnect:?];
    }

    v31 = 0;
    v53 = 0;
  }

  v30 = 1;
  if (v31)
  {
    objc_storeStrong(&self->_externalVC.pending.executeTransition.priorVCContext, context);
    self->_externalVC.pending.executeTransition.presentationState.override = 1;
    self->_externalVC.pending.executeTransition.presentationState.value = 7;
    v9 = v55;
    if (v26 && v26->_sending)
    {
      v41 = [PKPGVTransitionContext createForAnimatedTransition:v61 withPassContext:v55 beginTerminal:1];
      v42 = self->_externalVC.pending.executeTransition.context;
      self->_externalVC.pending.executeTransition.context = v41;

      objc_storeStrong(&self->_externalVC.pending.executeTransition.pendingRequest, v31);
      v43 = v26->_transitionCoordinator;
      [-[PKPGVTransitionCoordinator coordinatorForTransceiver:](v43 self)];

      if (!self->_externalVC.pending.executeTransition.context && !self->_externalVC.pending.executeTransition.pendingRequest && !self->_externalVC.pending.executeTransition.priorVCContext && !self->_externalVC.pending.executeTransition.presentationState.override)
      {
        v44 = self->_externalVC.context;
        if (v44)
        {
          v44 = v44->_viewController;
        }

        v45 = v44;

        v46 = v45 == v53;
        v29 = v53;
        if (v46)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    else
    {
      unsafeReceiver = v31->_unsafeReceiver;
      v41 = unsafeReceiver;
      objc_storeStrong(&self->_externalVC.pending.executeTransition.context, unsafeReceiver);
      v48 = [PKPGVTransitionCoordinator connectWithRequest:v31];
      if (!self->_externalVC.pending.executeTransition.context)
      {
        v29 = v53;
        if (!self->_externalVC.pending.executeTransition.pendingRequest && !self->_externalVC.pending.executeTransition.priorVCContext && !self->_externalVC.pending.executeTransition.presentationState.override)
        {
          v43 = v48;
          if (v48)
          {
            [(PKPassGroupStackView *)self _assertIsValidExternalVCTransitionCoordinator:v48];
LABEL_77:

            goto LABEL_84;
          }

LABEL_76:
          [(PKPGSVExternalVCContext *)v29 invalidate];
          goto LABEL_77;
        }
      }
    }

LABEL_88:
    __break(1u);
  }

  v9 = v55;
  v29 = v53;
  if (!v26)
  {
    goto LABEL_79;
  }

LABEL_34:
  if (!v26->_sending)
  {
    v34 = [PKPGVTransitionContext createForAnimatedTransition:v61 withPassContext:v9];
    v31 = [PKPGSVPresentationContext createForTransitionContext:v34 priorExternalVCContext:v26];

    v35 = 4;
LABEL_80:
    *(&self->_layoutState + 28) |= 1u;
    if (v30)
    {
      v49 = v35;
    }

    else
    {
      v49 = v58;
    }

    [(PKPassGroupStackView *)self _setPresentationState:v49 withContext:v31 completion:v10];
    goto LABEL_84;
  }

  v31 = v26->_transitionCoordinator;
  v32 = [PKPGVTransitionContext createForAnimatedTransition:v61 withPassContext:v9 beginTerminal:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPassGroupStackView_setPresentationState_withContext_animated_completion___block_invoke_2;
  aBlock[3] = &unk_1E8010AD8;
  v63 = v10;
  v33 = _Block_copy(aBlock);
  objc_storeStrong(&self->_externalVC.pending.executeTransition.context, v32);
  objc_storeStrong(&self->_externalVC.pending.executeTransition.priorVCContext, v26);
  self->_externalVC.pending.executeTransition.presentationState.override = 1;
  self->_externalVC.pending.executeTransition.presentationState.value = v58;
  [-[PKPGVTransitionCoordinator coordinatorForTransceiver:](v31 self)];

  if (self->_externalVC.pending.executeTransition.context || self->_externalVC.pending.executeTransition.pendingRequest || self->_externalVC.pending.executeTransition.priorVCContext || self->_externalVC.pending.executeTransition.presentationState.override)
  {
    goto LABEL_88;
  }

LABEL_84:
  if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
  {
    v50 = self->_presentationState;
    *buf = 134349568;
    v67 = v56;
    v68 = 2048;
    v69 = v57;
    v70 = 2048;
    v71 = v50;
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v60, OS_SIGNPOST_EVENT, v59, "PKPassGroupStackView:setPresentation", "%{public, signpost.description:begin_time}llu: %llu -> %llu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t __77__PKPassGroupStackView_setPresentationState_withContext_animated_completion___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u);
  }

  return result;
}

uint64_t __77__PKPassGroupStackView_setPresentationState_withContext_animated_completion___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u);
  }

  return result;
}

- (void)_setPresentationState:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v68 = a5;
  v71 = v8;
  if (!v8 || (v9 = *(&self->_layoutState + 28), (v9 & 1) == 0))
  {
    __break(1u);
  }

  *(&self->_layoutState + 28) = v9 & 0xFFFE;
  v10 = *(v8 + 8);
  v70 = [(PKPassGroupStackView *)self isTableModalPresentation];
  if (a3 == 4 && v70 && self->_presentationState != 4)
  {
    v11 = *(&self->_layoutState + 28);
    if ((v11 & 2) != 0)
    {
      if (!self->_invalidated)
      {
        v12 = [MEMORY[0x1E69DC668] sharedApplication];
        [v12 pkui_consumeSharedRootAuthenticationContext];

        v11 = *(&self->_layoutState + 28);
      }

      *(&self->_layoutState + 28) = v11 & 0xEFFD | 0x1000;
    }
  }

  v13 = [(PKPassGroupStackView *)self isPresentingPassViewFront];
  v14 = *(&self->_layoutState + 28);
  if (!v13)
  {
    v14 &= ~0x400u;
    *(&self->_layoutState + 28) = v14;
  }

  *(&self->_layoutState + 28) = v14 | 0x2000;
  self->_footerAnimationDelay = 0.0;
  if (a3 != 4 && (*&self->_reorderingFlags & 1) != 0)
  {
    [(PKPassGroupStackView *)self groupViewPanDidEnd:self->_reorderedGroupView];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke;
  aBlock[3] = &unk_1E8023CB8;
  v90 = v70;
  aBlock[4] = self;
  aBlock[5] = a3;
  v67 = _Block_copy(aBlock);
  transitionCanceller = self->_transitionCanceller;
  if (transitionCanceller)
  {
    v16 = _Block_copy(transitionCanceller);
    v17 = self->_transitionCanceller;
    self->_transitionCanceller = 0;

    if (v67[2](v67, self->_nextState))
    {
      v69 = 0;
    }

    else
    {
      v18 = [(NSMutableArray *)self->_transitionCompletionHandlers copy];
      [(NSMutableArray *)self->_transitionCompletionHandlers removeAllObjects];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_2;
      v87[3] = &unk_1E8010970;
      v88 = v18;
      v19 = v18;
      v69 = _Block_copy(v87);
    }

    v16[2](v16);
  }

  else
  {
    v69 = 0;
  }

  presentationState = self->_presentationState;
  self->_nextState = a3;
  self->_priorState = self->_presentationState;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v86 = 0;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_3;
  v84[3] = &unk_1E8011A18;
  v84[4] = v85;
  v21 = [v84 copy];
  v22 = self->_transitionCanceller;
  self->_transitionCanceller = v21;

  if (v69)
  {
    v69[2]();
  }

  [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
  if (a3 == 7 || self->_externalVC.context)
  {
    v23 = 1;
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = a3 == 5 && presentationState != 5;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = v25;
  if (v24)
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_4;
    v82[3] = &unk_1E8023CE0;
    v83 = v25;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v82];
    v27 = v83;
LABEL_28:

    goto LABEL_33;
  }

  if (self->_modallyPresentedGroupView)
  {
    [v25 addObject:?];
  }

  modalGroupIndex = self->_modalGroupIndex;
  if (modalGroupIndex && modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = [(PKPassGroupStackView *)self _groupViewAtIndex:modalGroupIndex - 1];
    v27 = v55;
    if (v55)
    {
      v56 = [v55 frontmostPassView];
      v57 = [v56 contentMode] > 3;

      if (v57)
      {
        [v26 addObject:v27];
      }
    }

    goto LABEL_28;
  }

LABEL_33:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v29 = v26;
  v30 = [v29 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v30)
  {
    v31 = *v79;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v79 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v78 + 1) + 8 * i);
        [v33 beginPinningFrontFaceContentMode];
        if (v23)
        {
          v34 = [v33 frontmostPassView];
          if ([v34 contentMode] <= 2)
          {
            [v34 setContentMode:3];
          }
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v30);
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_5;
  v73[3] = &unk_1E8023D08;
  v35 = v29;
  v75 = self;
  v76 = v85;
  v74 = v35;
  v77 = v10;
  v36 = [v73 copy];
  if (v68)
  {
    transitionCompletionHandlers = self->_transitionCompletionHandlers;
    v38 = [v68 copy];
    v39 = _Block_copy(v38);
    [(NSMutableArray *)transitionCompletionHandlers addObject:v39];
  }

  if (self->_layoutState.pilingMode == 1 && *(&self->super.super.super.super.isa + v66) == 4)
  {
    self->_layoutState.pilingMode = 0;
  }

  [(PKPassGroupStackView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [(PKPassGroupStackView *)self _recomputeLayoutState];
  [(PKPassGroupStackView *)self _updateHeaderFooterStateAnimated:v10 layout:0];
  [(PKPassGroupStackView *)self _updateContentSizeAndLayout:1];
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  if (modallyPresentedGroupView)
  {
    [(PKPassGroupView *)modallyPresentedGroupView presentDiff:0 completion:0];
    v49 = !v70;
    if (a3 != 4)
    {
      v49 = 1;
    }

    if (a3 != 5 && v49)
    {
      v50 = [(PKPassGroupView *)self->_modallyPresentedGroupView frontmostPassView];
      if ([v50 isFrontFaceExpanded])
      {
        [v50 setFrontFaceExpanded:0 animated:1];
      }
    }
  }

  if (a3 <= 4)
  {
    if ((a3 - 2) < 2)
    {
      [(PKPassGroupStackView *)self _setScrollEnabled:0];
      [(PKPassGroupStackView *)self _presentOffscreenSplit:a3 == 3 withContext:v71 completionHandler:v36];
      goto LABEL_87;
    }

    if (a3 == 4)
    {
      v52 = self->_presentationState;
      if ((v52 - 1) <= 2)
      {
        v53 = v71[2];
        [(PKPassGroupStackView *)self _tileGroupsForState:v52 eager:0 withContext:v53];
      }

      [(PKPassGroupStackView *)self _presentGroupStackViewWithContext:v71 priorBounds:v36 completionHandler:v41, v43, v45, v47];
      goto LABEL_87;
    }

    goto LABEL_78;
  }

  if (a3 != 5)
  {
    if (a3 == 6)
    {
      [(PKPassGroupStackView *)self _presentPassIngestionWithContext:v71 completion:v36];
      [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
      goto LABEL_87;
    }

    if (a3 != 7)
    {
LABEL_78:
      [(PKPassGroupStackView *)self _cancelTransition];
      if (v36)
      {
        v36[2](v36);
      }

      goto LABEL_87;
    }
  }

  v51 = self->_presentationState;
  if (v51 == 1)
  {
    self->_presentationState = a3;
    [(PKPassGroupStackView *)self reloadData];
  }

  else if ((v51 - 1) <= 2)
  {
    v58 = v71[2];
    [(PKPassGroupStackView *)self _tileGroupsForState:v51 eager:0 withContext:v58];
  }

  [(PKPassGroupStackView *)self _setScrollEnabled:0];
  v59 = self->_modallyPresentedGroupView;
  if (v59)
  {
    [(PKPassGroupView *)v59 setHidden:0];
    v60 = self->_modallyPresentedGroupView;
  }

  else
  {
    v60 = 0;
  }

  [(PKPassGroupStackView *)self _presentModalGroupView:v60 externally:a3 == 7 withContext:v71 completion:v36];
LABEL_87:
  [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
  [(PKPassGroupStackView *)self _updatePanGestureRecognizerForGroupView:self->_modallyPresentedGroupView];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_6;
  v72[3] = &unk_1E8023CE0;
  v72[4] = self;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v72];
  [(PKPassGroupStackView *)self layoutHeaderFootersAnimated:v10];
  [(PKPassGroupStackView *)self _updateTopContentSeparatorVisibilityAnimated:v10];
  [(PKPassGroupStackView *)self _updateBottomContentSeparatorVisibilityAnimated:v10];
  v61 = *(&self->_layoutState + 28);
  *(&self->_layoutState + 28) = v61 & 0xDFFF;
  if ((v61 & 0x1000) != 0)
  {
    *(&self->_layoutState + 28) = v61 & 0xCFFF;
    v65 = v71[2];
    [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:v65];
    goto LABEL_97;
  }

  v62 = self->_presentationState;
  v63 = v70;
  if (v62 != 4)
  {
    v63 = 0;
  }

  v64 = v62 == 5 || v63;
  if ((v61 & 0x800) == 0 || (v64 & 1) == 0)
  {
    v65 = v71[2];
    [(PKPassGroupStackView *)self _updatePassFooterViewIfNecessaryWithContext:v65 becomeVisibleDelay:0.05];
LABEL_97:
  }

  [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
  [(PKPassGroupStackView *)self _updateCoachingState];
  [(PKPassGroupStackView *)self _updatePausedState];

  _Block_object_dispose(v85, 8);
}

uint64_t __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == a2)
  {
    return 1;
  }

  result = 0;
  if (v2 == 5 && a2 == 4 && (*(a1 + 48) & 1) != 0)
  {
    return (*(*(a1 + 32) + 2384) >> 11) & 1;
  }

  return result;
}

void __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) endPinningFrontFaceContentMode];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) _transitionSuccessful:*(a1 + 56)];
  }
}

void __69__PKPassGroupStackView__setPresentationState_withContext_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _inControlOfGroupView:?])
  {
    [v3 updatePageControlFrameAnimated:1];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(PKPassGroupStackView *)self _updatePausedState];
  }
}

void __42__PKPassGroupStackView__updatePausedState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isLoaned] & 1) == 0)
  {
    [v5 setPaused:{objc_msgSend(*(a1 + 32), "_pauseStateForGroupView:atIndex:", v5, a3)}];
  }
}

- (BOOL)_pauseStateForGroupView:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_invalidated)
  {
    v8 = 1;
    goto LABEL_3;
  }

  v8 = 1;
  if (v6 && !self->_effectivePaused)
  {
    if (self->_externalVC.pending.executeTransition.context && self->_externalVC.pending.executeTransition.presentationState.override)
    {
      p_presentationState = &self->_externalVC.pending.executeTransition.presentationState;
    }

    else
    {
      v11 = 28;
      if (!self->_transitionCanceller)
      {
        v11 = 6;
      }

      p_presentationState = (self + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v11]);
    }

    if ((p_presentationState->value | 2) == 7)
    {
      if (self->_modallyPresentedGroupView != v6)
      {
        v12 = [(NSMutableArray *)self->_passPileViews firstObject];
        v8 = v12 != v7;

        goto LABEL_3;
      }

LABEL_25:
      v8 = 0;
      goto LABEL_3;
    }

    count = self->_layoutState.groups.count;
    v14 = count != 0;
    v15 = count - 1;
    if (v14 && v15 == a4)
    {
      goto LABEL_25;
    }

    separatorIndex = self->_layoutState.groups.separatorIndex;
    v8 = separatorIndex == 0x7FFFFFFFFFFFFFFFLL || separatorIndex != a4;
  }

LABEL_3:

  return v8;
}

- (void)stageGroupInPresentationState:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
  if (a4 >= v7 && a4 - v7 < v8)
  {
    v10 = 0;
    v9 = [(PKPassGroupStackView *)self _loadGroupViewAtIndex:a4 forState:a3 presentationState:1 cached:&v10];
    [(PKPassGroupStackView *)self _arrangeGroups];
  }
}

- (void)setModalGroupIndex:(unint64_t)a3
{
  if (self->_modalGroupIndex != a3)
  {
    self->_modalGroupIndex = a3;
    if (self->_layoutState.pilingMode == 1)
    {
      self->_layoutState.pilingMode = 0;
    }
  }

  v9 = self->_modallyPresentedGroupView;
  v5 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  self->_modallyPresentedGroupView = v5;

  v7 = v9;
  if (v9 != self->_modallyPresentedGroupView)
  {
    [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPass];
    v7 = v9;
    if (v9)
    {
      [(PKPassGroupView *)v9 setModallyPresented:0];
      [(PKPassGroupStackView *)self _removePanGestureRecognizerFromGroupView:v9];
      v7 = v9;
    }

    v8 = self->_modallyPresentedGroupView;
    if (v8)
    {
      [(PKPassGroupView *)v8 setModallyPresented:1];
      [(PKPassGroupStackView *)self _updatePanGestureRecognizerForGroupView:self->_modallyPresentedGroupView];
      v7 = v9;
    }
  }
}

- (void)_updateModallyPresentedFrontmostPass
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PKPassGroupView *)self->_modallyPresentedGroupView frontmostPassView];
  v4 = [v3 pass];

  if (self->_modallyPresentedFrontmostPass != v4)
  {
    informativeAssertion = self->_informativeAssertion;
    if (informativeAssertion)
    {
      v6 = informativeAssertion;
      v7 = self->_informativeAssertion;
      self->_informativeAssertion = 0;

      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = 134349312;
        v10 = self;
        v11 = 2048;
        v12 = v6;
        _os_log_debug_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): releasing presented nearfield informative assertion %p.", &v9, 0x16u);
      }

      InvalidateAssertion(v6);
    }

    objc_storeStrong(&self->_modallyPresentedFrontmostPass, v4);
    [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPassAssertions];
  }
}

- (void)_updateModallyPresentedFrontmostPassAssertions
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_modallyPresentedFrontmostPass && !self->_invalidated)
  {
    if (self->_foregroundActiveState.foregroundActive)
    {
      if (!self->_springboardInformativeAssertion)
      {
        v14 = [MEMORY[0x1E69D4220] sharedInstance];
        v15 = [v14 acquireCaptureButtonSuppressionAssertionWithOptions:1 reason:@"PKPassGroupStackView"];
        springboardInformativeAssertion = self->_springboardInformativeAssertion;
        self->_springboardInformativeAssertion = v15;

        v17 = self->_springboardInformativeAssertion;
        v18 = PKLogFacilityTypeGetObject();
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349312;
            v29 = self;
            v30 = 2048;
            v31 = v17;
            _os_log_debug_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): acquired presented springboard informative assertion %p.", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v29 = self;
          _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p): failed to acquire presented springboard informative assertion.", buf, 0xCu);
        }
      }

      goto LABEL_9;
    }

    foreground = self->_foregroundActiveState.foreground;
  }

  else
  {
    foreground = 0;
  }

  v4 = self->_springboardInformativeAssertion;
  if (v4)
  {
    v5 = v4;
    v6 = self->_springboardInformativeAssertion;
    self->_springboardInformativeAssertion = 0;

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v29 = self;
      v30 = 2048;
      v31 = v5;
      _os_log_debug_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): releasing presented springboard informative assertion %p.", buf, 0x16u);
    }

    [(BSInvalidatable *)v5 invalidate];
  }

  if (foreground)
  {
LABEL_9:
    if (self->_informativeAssertion)
    {
      return;
    }

    v8 = [(PKPass *)self->_modallyPresentedFrontmostPass uniqueID];
    v9 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v26[0] = @"NFAssertionType";
    v26[1] = @"passID";
    v27[0] = &unk_1F3CC7F28;
    if (v8)
    {
      v25 = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v27[1] = v10;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v21 = [v9 queueAssertionWithParams:v20 completion:0];

    if (v8)
    {
    }

    v22 = PKLogFacilityTypeGetObject();
    informativeAssertion = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v29 = self;
        v30 = 2048;
        v31 = v21;
        _os_log_debug_impl(&dword_1BD026000, informativeAssertion, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): acquired presented nearfield informative assertion %p.", buf, 0x16u);
      }

      v24 = v21;
      informativeAssertion = self->_informativeAssertion;
      self->_informativeAssertion = v24;
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v29 = self;
      _os_log_impl(&dword_1BD026000, informativeAssertion, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p): failed to acquire presented nearfield informative assertion.", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v11 = self->_informativeAssertion;
  if (!v11)
  {
    return;
  }

  v8 = v11;
  v12 = self->_informativeAssertion;
  self->_informativeAssertion = 0;

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    v29 = self;
    v30 = 2048;
    v31 = v8;
    _os_log_debug_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): releasing presented nearfield informative assertion %p.", buf, 0x16u);
  }

  InvalidateAssertion(v8);
LABEL_32:
}

- (PKPass)modalGroupFrontmostPass
{
  if ([(PKPassGroupStackView *)self isPresentingPassViewFront])
  {
    v3 = self->_modallyPresentedFrontmostPass;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dashboardPassGroupViewController
{
  if (a1)
  {
    v2 = a1;
    if ([a1 isPresentingPassViewFront])
    {
      v3 = v2[340];
      if (v3)
      {
        v3 = v3[8];
      }

      a1 = v3;
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

- (void)reloadData
{
  v31 = *MEMORY[0x1E69E9840];
  [(PKPassGroupStackView *)self updateHeaderAndSubheaderViewsIfNecessary];
  v3 = [(NSMutableDictionary *)self->_groupViewsByGroupID allKeys];
  v4 = [v3 mutableCopy];

  if (self->_layoutState.groups.count)
  {
    v5 = [(PKPassGroupStackView *)self _lastIndex];
    v6 = MEMORY[0x1E696AD50];
    v7 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
    v9 = [v6 indexSetWithIndexesInRange:{v7, v8}];
    [v9 addIndex:v5];
    if (self->_modallyPresentedGroupView)
    {
      WeakRetained = objc_loadWeakRetained(&self->_datasource);
      v11 = [(PKPassGroupView *)self->_modallyPresentedGroupView group];
      v12 = [WeakRetained indexOfGroup:v11];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 addIndex:v12];
      }
    }

    v13 = objc_loadWeakRetained(&self->_datasource);
    v14 = [v13 groupAtIndex:v5];

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_datasource);
      v16 = [v15 indexOfGroup:v14];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 addIndex:v16];
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __34__PKPassGroupStackView_reloadData__block_invoke;
    v27[3] = &unk_1E8023D30;
    v27[4] = self;
    v28 = v14;
    v29 = v4;
    v17 = v14;
    [v9 enumerateIndexesUsingBlock:v27];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PKPassGroupStackView *)self _removeGroupViewAsSubviewWithGroupID:*(*(&v23 + 1) + 8 * i), v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v20);
  }

  if (self->_modalGroupIndex == 0x7FFFFFFFFFFFFFFFLL && (self->_presentationState | 2) == 7)
  {
    [(PKPassGroupStackView *)self setPresentationState:4];
  }

  else
  {
    [(PKPassGroupStackView *)self _arrangeGroups];
    [(PKPassGroupStackView *)self _updateContentSize];
  }
}

void __34__PKPassGroupStackView_reloadData__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 3008));
  v5 = [WeakRetained groupAtIndex:a2];

  v11 = 0;
  v6 = [v5 passAtIndex:{objc_msgSend(v5, "frontmostPassIndex")}];
  v7 = v6;
  if (v5 == *(a1 + 40))
  {
    [v6 loadImageSetSync:0 preheat:1];
  }

  else
  {
    [v6 loadImageSetSync:2 preheat:0];
    [v7 loadContentSync];
  }

  v8 = [*(a1 + 32) _loadGroupViewAtIndex:a2 forState:*(*(a1 + 32) + 2168) presentationState:1 cached:&v11];
  v9 = *(a1 + 48);
  v10 = [v5 groupID];
  [v9 removeObject:v10];
}

- (void)deleteGroup:(id)a3 atIndex:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  groupViewsByGroupID = self->_groupViewsByGroupID;
  v7 = a3;
  v8 = [v7 groupID];
  v9 = [(NSMutableDictionary *)groupViewsByGroupID objectForKey:v8];

  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  if (modallyPresentedGroupView)
  {
    v11 = modallyPresentedGroupView == v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      passFooterView = self->_passFooterView;
      *buf = 134349312;
      v25 = self;
      v26 = 2050;
      v27 = passFooterView;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p): suppressing PKPassFooterView %{public}p - group deleted.", buf, 0x16u);
    }

    [(PKPassGroupStackView *)self _updatePassFooterViewWithConfiguration:0 context:0 animated:1 reload:0 delay:0.0];
  }

  [(PKPassGroupView *)v9 markGroupDeleted];
  [(PKPassGroupView *)v9 setUserInteractionEnabled:0];
  if (a4)
  {
    v14 = [(PKPassGroupStackView *)self _groupViewAtIndex:a4 - 1];
    v15 = [v14 frontmostPassView];
    if ([v15 frontFaceBodyContentCreated])
    {
      v16 = [v15 contentMode];
    }

    else
    {
      v16 = 3;
    }

    [v15 setContentMode:v16];
  }

  [(UIView *)v9 addDefaultTransformSpringWithStartTime:CACurrentMediaTime()];
  v17 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__PKPassGroupStackView_deleteGroup_atIndex___block_invoke;
  v20[3] = &unk_1E8012C50;
  v21 = v9;
  v22 = self;
  v23 = a4;
  v18 = v9;
  [v17 performWithoutAnimation:v20];
  v19 = [v7 groupID];

  [(PKPassGroupStackView *)self performSelector:sel__removeGroupViewAsSubviewWithGroupID_ withObject:v19 afterDelay:1.0];
  [(PKPassGroupStackView *)self setPresentationState:self->_presentationState animated:1];
}

uint64_t __44__PKPassGroupStackView_deleteGroup_atIndex___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) _positionForGroupView:v1 atIndex:*(a1 + 48) forState:1];

  return [v1 setCenter:?];
}

- (void)moveGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v8 = a3;
  if (self->_presentationState == 4)
  {
    [(PKPassGroupStackView *)self setUserInteractionEnabled:0];
    [(PKPassGroupStackView *)self contentOffset];
    [(PKPassGroupStackView *)self setContentOffset:0 animated:?];
    ++self->_userInteractionCounter;
    v9 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
    v10 = objc_autoreleasePoolPush();
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__PKPassGroupStackView_moveGroup_fromIndex_toIndex___block_invoke;
    v31[3] = &unk_1E8023D58;
    v31[4] = self;
    v32 = v8;
    v11 = v9;
    v33 = v11;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v31];

    objc_autoreleasePoolPop(v10);
    v12 = [(PKPassGroupStackView *)self _createStackedIndices];
    v14 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
    v15 = v13;
    if (a4 >= v14 && a4 - v14 < v13 || [v12 containsIndex:a4])
    {
      v16 = [(PKPassGroupStackView *)self _groupViewAtIndex:a5];
      if (v16)
      {
        if ((*(&self->_layoutState.groups + 16) & 2) != 0 && self->_layoutState.groups.separatorIndex >= a5)
        {
          [(PKPassGroupStackView *)self _maxYOfPassFrontFaceAtIndex:?];
          v18 = v17;
          [(PKPassGroupStackView *)self bounds];
          fmin(v18, CGRectGetMaxY(v34));
        }

        else
        {
          [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a5 forState:1];
        }

        [(PKPassGroupStackView *)self _updateTransformForGroupView:v16 toPresentationState:1 withSpringFactory:v11];
        [(PKPassGroupStackView *)self _xPositionForGroupView:v16 forState:1];
        [(PKPassGroupStackView *)self _updatePositionForGroupView:v16 toPosition:v11 withSpringFactory:?];
        v19 = [v16 group];
        v20 = [v19 groupID];

        if (v20)
        {
          [(NSMutableDictionary *)self->_groupViewsInFlightByGroupID setObject:v16 forKey:v20];
        }

        if (a5)
        {
          v21 = [(PKPassGroupStackView *)self _groupViewAtIndex:a5 - 1];
          v22 = [v21 frontmostPassView];
          [v22 setContentMode:3];
        }
      }
    }

    else if (a5 >= v14 && a5 - v14 < v15)
    {
      [(PKPassGroupStackView *)self stageGroupInPresentationState:1 atIndex:a5];
    }

    v23 = [(PKPassGroupStackView *)self _groupViewAtIndex:a5];
    v24 = dispatch_time(0, 250000000);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__PKPassGroupStackView_moveGroup_fromIndex_toIndex___block_invoke_2;
    v27[3] = &unk_1E8010A88;
    v28 = v23;
    v29 = self;
    v30 = v11;
    v25 = v11;
    v26 = v23;
    dispatch_after(v24, MEMORY[0x1E69E96A0], v27);
  }
}

void __52__PKPassGroupStackView_moveGroup_fromIndex_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 group];
  v4 = *(*(a1 + 32) + 2592);
  v5 = [v3 groupID];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {
  }

  else
  {
    v7 = *(a1 + 40);

    if (v3 != v7)
    {
      [*(a1 + 32) _updateGroupView:v8 toPresentationState:4 withSpringFactory:*(a1 + 48)];
    }
  }
}

void __52__PKPassGroupStackView_moveGroup_fromIndex_toIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) group];
  v13 = [v2 groupID];

  v3 = *(a1 + 40);
  if (*(v3 + 2168) == 4)
  {
    v4 = [v3 _indexOfGroupView:*(a1 + 32)];
    v5 = [*(a1 + 40) _rangeOfVisibleIndexes];
    v7 = v6;
    v8 = [*(a1 + 40) _createStackedIndices];
    v9 = v8;
    v10 = v4 < v5 || v4 - v5 >= v7;
    if (v10 && ![v8 containsIndex:v4])
    {
      [*(a1 + 40) _removeGroupViewAsSubviewWithGroupID:v13];
    }

    else
    {
      [*(a1 + 40) _arrangeGroups];
      v11 = *(a1 + 32);
      if (v11)
      {
        [v11 applyContentModesAnimated:0];
        [*(a1 + 40) _updateGroupStateForGroupViewInStackPresentation:*(a1 + 32) animated:1];
        [*(a1 + 40) _updateGroupView:*(a1 + 32) toPresentationState:4 withSpringFactory:*(a1 + 48)];
      }
    }

    v3 = *(a1 + 40);
  }

  if (v13)
  {
    [*(v3 + 2592) removeObjectForKey:v13];
    v3 = *(a1 + 40);
  }

  v12 = (*(v3 + 2600))-- == 1;
  [v3 setUserInteractionEnabled:v12];
}

- (void)tilePassesEagerly:(BOOL)a3
{
  if (self->_presentationState == 4)
  {
    [(PKPassGroupStackView *)self _tileGroupsForState:4 eager:a3 withContext:0];

    [(PKPassGroupStackView *)self setNeedsLayout];
  }
}

- (void)setTableModalPresentationEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  p_layoutState = &self->_layoutState;
  if (!self->_layoutState.groups.count || (v6 = a4, ![(PKPassGroupStackView *)self isTableModalPresentation]))
  {
    if (v4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(p_layoutState + 28) & 0xFFFD | v11;
    goto LABEL_15;
  }

  v8 = 28;
  if (!self->_transitionCanceller)
  {
    v8 = 6;
  }

  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v8]);
  v10 = *(p_layoutState + 28);
  if (!v4)
  {
    if ((v10 & 2) != 0)
    {
      return;
    }

    *(p_layoutState + 28) = v10 | 2;
    if (v9 != 4)
    {
      return;
    }

    [(PKPassGroupStackView *)self setModalGroupIndex:0];
    v13 = *(p_layoutState + 28);
    *(p_layoutState + 28) = v13 | 0x800;
    [(PKPassGroupStackView *)self setPresentationState:5 animated:v6];
    v12 = *(p_layoutState + 28) & 0xF7FF | v13 & 0x800;
LABEL_15:
    *(p_layoutState + 28) = v12;
    return;
  }

  if ((v10 & 2) != 0)
  {
    *(p_layoutState + 28) = v10 & 0xFFFD;
    if (v9 == 5)
    {
      [(PKPassGroupStackView *)self setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];

      [(PKPassGroupStackView *)self setPresentationState:4 animated:v6];
    }
  }
}

- (id)headerForPassType:(unint64_t)a3
{
  v3 = [(PKPassGroupStackView *)self _headerContextForPassType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setFooterSuppressed:(BOOL)a3 withContext:(id)a4
{
  if (self->_footerSuppressed == !a3)
  {
    self->_footerSuppressed = a3;
    [(PKPassGroupStackView *)self _updatePassFooterViewIfNecessaryWithContext:a4 becomeVisibleDelay:0.0];
  }
}

- (void)setExternalFooterSuppressed:(BOOL)a3
{
  self->_externalFooterSuppressed = a3;
  context = self->_externalVC.context;
  if (context)
  {
    context = context->_dashboardPassGroupViewController;
  }

  v5 = context;
  [(PKPGSVExternalVCContext *)v5 setFooterSuppressed:self->_externalFooterSuppressed];
}

- (void)setPilingMode:(int64_t)a3
{
  p_layoutState = &self->_layoutState;
  if (self->_layoutState.pilingMode != a3)
  {
    self->_layoutState.pilingMode = a3;
    *(&self->_layoutState + 28) |= 0x4000u;
    [(PKPassGroupStackView *)self _layoutContentAnimated:1];
    *(p_layoutState + 28) &= ~0x4000u;
  }
}

- (double)pileHeight
{
  [(PKPassGroupStackView *)self _pileAscenderHeight];
  v4 = v3;
  [(PKPassGroupStackView *)self _pileBaseHeight];
  v6 = v4 + v5;
  if (self->_featuredGroupID)
  {
    modallyPresentedGroupView = self->_modallyPresentedGroupView;
    if (modallyPresentedGroupView)
    {
      v8 = [(PKPassGroupView *)modallyPresentedGroupView frontmostPassView];
      v9 = [v8 pass];
      if ([v9 style] != 6)
      {

LABEL_9:
        return v6;
      }

      featuredGroupID = self->_featuredGroupID;
      v11 = [(PKPassGroupView *)self->_modallyPresentedGroupView group];
      v12 = [v11 groupID];
      LOBYTE(featuredGroupID) = [(NSNumber *)featuredGroupID isEqual:v12];

      if ((featuredGroupID & 1) == 0)
      {
        v8 = [(PKPassGroupStackView *)self _groupViewWithGroupID:self->_featuredGroupID];
        if (v8)
        {
          v14 = 0.0;
          [(PKPassGroupStackView *)self _pileAscenderHeightForGroupViewInPile:v8 pileIndex:0 separationHeight:&v14];
          v6 = v6 - v14;
        }

        v6 = v6 + 44.0;
        goto LABEL_9;
      }
    }
  }

  return v6;
}

- (UIScrollView)contentScrollView
{
  context = self->_externalVC.context;
  if (context && context->_sending)
  {
    v3 = context->_dashboardPassGroupViewController;
    if ([(PKDashboardPassGroupViewController *)v3 isViewLoaded])
    {
      v4 = [(PKDashboardPassGroupViewController *)v3 parentViewController];

      if (v4)
      {
        v4 = [(PKDashboardPassGroupViewController *)v3 collectionView];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    if (self->_presentationState == 4)
    {
      v5 = self;
    }

    else
    {
      v5 = 0;
    }

    v4 = v5;
  }

  return v4;
}

- (BOOL)needsNavigationBar
{
  v2 = 28;
  if (!self->_transitionCanceller)
  {
    v2 = 6;
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v2]);
  v4 = v3 == 7;
  v6 = v3 != 5 && (v3 - 4) < 0xFFFFFFFFFFFFFFFDLL;
  if (self->_parentViewControllerWantsNavigationBar)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (void)_updateNeedsNavigationBar
{
  v3 = [(PKPassGroupStackView *)self needsNavigationBar];
  if (self->_needsNavigationBar != v3)
  {
    self->_needsNavigationBar = v3;
    v4 = [(PKPassGroupStackView *)self delegate];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      v6 = objc_opt_respondsToSelector();
      v5 = v7;
      if (v6)
      {
        [v7 groupStackView:self didUpdateNeedsNavigationBar:self->_needsNavigationBar];
        v5 = v7;
      }
    }
  }
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPassGroupStackView;
  v4 = a3;
  [(PKPassGroupStackView *)&v6 setDelegate:v4];
  self->_delegateWantsTopContentSeparation = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsBottomContentSeparation = v5 & 1;
}

- (void)updateFooterViewIfNecessary
{
  footerView = self->_footerView;
  if (footerView)
  {
    groupsController = self->_groupsController;
    v5 = footerView;
    v6 = [(PKGroupsController *)groupsController expiredSectionPassesCount];
    [(UIView *)v5 setExpiredSectionCount:v6];

    if (!v6)
    {
      presentationState = self->_presentationState;

      [(PKPassGroupStackView *)self setPresentationState:presentationState animated:1];
    }
  }
}

- (void)_tombstone
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 2997) & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 2624);
      v4 = 134349312;
      v5 = a1;
      v6 = 2050;
      v7 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p:%{public}p): tombstoned.", &v4, 0x16u);
    }

    *(a1 + 2997) = 1;
  }
}

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      passFooterView = self->_passFooterView;
      *buf = 134349312;
      v15 = self;
      v16 = 2050;
      v17 = passFooterView;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p:%{public}p): invalidated.", buf, 0x16u);
    }

    self->_invalidated = 1;
    v5 = self->_passFooterView;
    if (v5)
    {
      [(PKPassFooterView *)v5 setDelegate:0];
      [(PKPassFooterView *)self->_passFooterView invalidate];
      [(PKPassFooterView *)self->_passFooterView removeFromSuperview];
      v6 = self->_passFooterView;
      self->_passFooterView = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__PKPassGroupStackView_invalidate__block_invoke;
    v13[3] = &unk_1E8023D80;
    v13[4] = self;
    [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v13];
    if ([(NSMutableDictionary *)self->_groupViewsByGroupID count])
    {
      [(NSMutableDictionary *)self->_groupViewsByGroupID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_120];
    }

    if ([(NSMutableDictionary *)self->_animatorsByGroupID count])
    {
      [(NSMutableDictionary *)self->_animatorsByGroupID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_123];
    }

    springboardInformativeAssertion = self->_springboardInformativeAssertion;
    if (springboardInformativeAssertion)
    {
      v8 = springboardInformativeAssertion;
      v9 = self->_springboardInformativeAssertion;
      self->_springboardInformativeAssertion = 0;

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v15 = self;
        v16 = 2048;
        v17 = v8;
        _os_log_debug_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): releasing presented springboard informative assertion %p.", buf, 0x16u);
      }

      [(BSInvalidatable *)v8 invalidate];
    }

    informativeAssertion = self->_informativeAssertion;
    if (informativeAssertion)
    {
      v11 = informativeAssertion;
      v12 = self->_informativeAssertion;
      self->_informativeAssertion = 0;

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v15 = self;
        v16 = 2048;
        v17 = v11;
        _os_log_debug_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEBUG, "PKPassGroupStackView (%{public}p): releasing presented nearfield informative assertion %p.", buf, 0x16u);
      }

      InvalidateAssertion(v11);
    }

    if (self->_hasInitiatedUnlock)
    {
      +[PKPassGroupsViewController endSuppressingFooter];
    }
  }
}

void __34__PKPassGroupStackView_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[6];
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  [(PKPGVTransitionCoordinator *)v8 coordinatorForTransceiver:?];
  [v8 connectionDidTerminate:*(a1 + 32)];

  if (v4)
  {
    v6 = v4[8];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 invalidate];
}

- (void)setBoundsInsets:(UIEdgeInsets)a3
{
  p_lastBoundsInsets = &self->_lastBoundsInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_lastBoundsInsets.top, v4), vceqq_f64(*&self->_lastBoundsInsets.bottom, v5)))) & 1) == 0)
  {
    p_lastBoundsInsets->top = a3.top;
    self->_lastBoundsInsets.left = a3.left;
    self->_lastBoundsInsets.bottom = a3.bottom;
    self->_lastBoundsInsets.right = a3.right;
    if (!self->_inGeometryUpdateCounter)
    {
      self->_boundsInsetsDirtied = 1;
      [(PKPassGroupStackView *)self _setPocketInsets:p_lastBoundsInsets->top, self->_lastBoundsInsets.left, self->_lastBoundsInsets.bottom, self->_lastBoundsInsets.right];
      [(PKPassGroupStackView *)self setNeedsLayout];
      [(PKPassGroupStackView *)self layoutIfNeeded];

      [(PKPassGroupStackView *)self _layoutContentAnimated:0];
    }
  }
}

- (void)_performGeometryUpdates:(uint64_t)a3 animated:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    v7 = *(a1 + 2787);
    *(a1 + 2787) = v7 + 1;
    if (v7)
    {
      if (v7 == 255)
      {
        goto LABEL_32;
      }
    }

    else
    {
      [a1 bounds];
      *(a1 + 2792) = v8;
      *(a1 + 2800) = v9;
      *(a1 + 2808) = v10;
      *(a1 + 2816) = v11;
      [a1 contentSize];
      *(a1 + 2824) = v12;
      *(a1 + 2832) = v13;
      v14 = *(a1 + 2432);
      *(a1 + 2840) = *(a1 + 2416);
      *(a1 + 2856) = v14;
    }

    v6[2](v6);
    v15 = (*(a1 + 2787))-- - 1;
    if (v15 < 0x100)
    {
      if (*(a1 + 2787))
      {
LABEL_9:

        return;
      }

      [a1 bounds];
      v18 = v17;
      v20 = v19;
      v36 = v17;
      v37 = v19;
      v38 = v21;
      v39 = v16;
      if (v21 == *(a1 + 2808) && v16 == *(a1 + 2816))
      {
        [a1 contentSize];
        v23 = *(a1 + 2824) != v24;
        if (*(a1 + 2832) != v25)
        {
          v23 = 1;
        }
      }

      else
      {
        memset(v35, 0, sizeof(v35));
        [a1 _updateContentSizeWithPriorBounds:v35 bounds:&v36];
        v23 = 1;
        v18 = v36;
        v20 = v37;
      }

      v26 = *(a1 + 2800);
      v27 = *(a1 + 2792) == v18 && v26 == v20;
      v28 = *(MEMORY[0x1E69DE258] + 8) + v20 - v26;
      if (v27)
      {
        v29 = *MEMORY[0x1E69DE258];
      }

      else
      {
        v23 = 1;
        v29 = *MEMORY[0x1E69DE258] + v18 - *(a1 + 2792);
      }

      if (v27)
      {
        v30 = *(MEMORY[0x1E69DE258] + 8);
      }

      else
      {
        v30 = v28;
      }

      v31 = *(a1 + 2416);
      v32 = *(a1 + 2432);
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 2840), v31), vceqq_f64(*(a1 + 2856), v32)))))
      {
        if (!v23)
        {
          goto LABEL_9;
        }

        v33 = *(a1 + 2424);
        v34 = *(a1 + 2440);
      }

      else
      {
        *(a1 + 2408) = 1;
        [a1 setNeedsLayout];
        v31.f64[0] = *(a1 + 2416);
        v33 = *(a1 + 2424);
        v32.f64[0] = *(a1 + 2432);
        v34 = *(a1 + 2440);
      }

      [a1 _setPocketInsets:{v31.f64[0], v33, v32.f64[0], v34}];
      [a1 layoutHeaderFootersAnimated:a3];
      [a1 _layoutContentWithContext:0 positionAdjustment:a3 animated:{v29, v30}];
      [a1 tilePassesEagerly:0];
      if ((a3 & 1) == 0)
      {
        [a1 layoutIfNeeded];
      }

      goto LABEL_9;
    }
  }

LABEL_32:
  __break(1u);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(PKPassGroupStackView *)self isUserInteractionEnabled])
  {
    v10.receiver = self;
    v10.super_class = PKPassGroupStackView;
    v8 = [(PKPassGroupStackView *)&v10 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_loadGroupViewAtIndex:(unint64_t)a3 forState:(int64_t)a4 presentationState:(int64_t)a5 cached:(BOOL *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v12 = [WeakRetained groupAtIndex:a3];

  if (!v12 || ([v12 groupID], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19 = 0;
    *a6 = 0;
    goto LABEL_37;
  }

  v14 = v13;
  v15 = [(PKPassGroupStackView *)self _groupViewWithGroupID:v13];
  v16 = v15 != 0;
  if (!self->_invalidated || v15 != 0)
  {
    v18 = v15;
    if (v15)
    {
      v19 = v15;
      *a6 = v16;
      if (![(PKPassGroupView *)v15 isLoaned]|| (v20 = [(PKPassGroupStackView *)self _activeExternalVCContextForPassGroupView:v18]) == 0)
      {
LABEL_18:
        v24 = [(PKPassGroupView *)v19 superview];
        passContainerView = self->_passContainerView;

        if (v24 == passContainerView)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v21 = v20[4];
      if (v21)
      {
        v22 = *(v21 + 552);

        if (v22 == 2)
        {
LABEL_20:
          v26 = [(PKPassGroupStackView *)self _inControlOfGroupView:v19];
          if (self->_modalGroupIndex != a3 || (modallyPresentedGroupView = self->_modallyPresentedGroupView, modallyPresentedGroupView == v19))
          {
            v28 = 0;
          }

          else
          {
            if (modallyPresentedGroupView)
            {
              [(PKPassGroupView *)modallyPresentedGroupView setModallyPresented:0];
              [(PKPassGroupStackView *)self _removePanGestureRecognizerFromGroupView:self->_modallyPresentedGroupView];
            }

            objc_storeStrong(&self->_modallyPresentedGroupView, v19);
            [(PKPassGroupStackView *)self _updatePanGestureRecognizerForGroupView:self->_modallyPresentedGroupView];
            [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPass];
            v28 = 1;
          }

          [(PKPassGroupStackView *)self _positionForGroupView:v19 atIndex:a3 forState:a4];
          v30 = v29;
          v32 = v31;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          [(PKPassGroupStackView *)self _transformForGroupView:v19 atIndex:a3 forState:a4];
          if (v26)
          {
            [(PKPassGroupView *)v19 setCenter:v30, v32];
            v39[4] = v44;
            v39[5] = v45;
            v39[6] = v46;
            v39[7] = v47;
            v39[0] = v40;
            v39[1] = v41;
            v39[2] = v42;
            v39[3] = v43;
            [(PKPassGroupView *)v19 setTransform3D:v39];
          }

          if (v28)
          {
            [(PKPassGroupView *)self->_modallyPresentedGroupView setModallyPresented:1];
            v33 = [(PKPassGroupView *)self->_modallyPresentedGroupView frontmostPassView];
            [v33 setContentMode:5];
          }

          [(PKPassGroupStackView *)self bounds];
          if (v26)
          {
            if (v35 < 0.0)
            {
              v49.x = v30;
              v49.y = v32;
              if (CGRectContainsPoint(*&v34, v49))
              {
                [(PKPassGroupView *)v19 applyContentModesAnimated:0];
              }
            }

            [(PKPassGroupView *)v19 updatePageControlFrameAnimated:v18 != 0];
          }

          [(PKPassGroupView *)v19 setHidden:0];
          goto LABEL_36;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v19 = [[PKPassGroupView alloc] initWithGroup:v12 delegate:self presentationState:a5];
      [(PKPassGroupView *)v19 setGestureCollector:self->_gestureCollector];
      [(PKPassGroupView *)v19 addPassGroupViewObserver:self];
      [(NSMutableDictionary *)self->_groupViewsByGroupID setObject:v19 forKeyedSubscript:v14];
      [(PKPassGroupView *)v19 sizeToFit];
      v23 = [(PKPassGroupView *)v19 pageControl];
      [v23 setCurrentPageIndicatorTintColor:self->_currentPageIndicatorTintColor];
      [v23 setPageIndicatorTintColor:self->_pageIndicatorTintColor];
      [(PKPassGroupView *)v19 setPresentationState:1];

      *a6 = v16;
      if (v19)
      {
LABEL_19:
        [(PKPassGroupStackView *)self _addGroupViewAsSubview:v19 forIndex:a3];
        goto LABEL_20;
      }

      __break(1u);
    }

    goto LABEL_18;
  }

  v19 = 0;
  *a6 = 0;
LABEL_36:

LABEL_37:

  return v19;
}

- (void)_tileGroupsForState:(int64_t)a3 eager:(BOOL)a4 withContext:(id)a5
{
  v5 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v35 = a5;
  context = objc_autoreleasePoolPush();
  v7 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
  v9 = v8;
  v10 = [(PKPassGroupStackView *)self _rangeOfEagerLoadedIndexes];
  v37 = v11;
  v38 = v10;
  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v5)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v14 addIndexesInRange:{v13, v12}];
  v40 = v7;
  if (v7 + v9 < self->_layoutState.groups.count)
  {
    [v14 addIndex:v35];
  }

  v15 = [(PKPassGroupStackView *)self _createStackedIndices];
  [v14 addIndexes:v15];
  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = [(PKPassGroupStackView *)self isTableModalPresentation];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke;
  v55[3] = &unk_1E8023DE8;
  if (v17)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v55[4] = self;
  v59 = a3;
  v19 = v16;
  v56 = v19;
  v60 = v13;
  v61 = v12;
  v65 = v5;
  v62 = v40;
  v63 = v9;
  v64 = v18;
  v20 = v36;
  v57 = v20;
  v21 = v15;
  v58 = v21;
  [v14 enumerateIndexesUsingBlock:v55];
  v22 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v22 addIndex:{-[PKPassGroupStackView _lastIndex](self, "_lastIndex")}];
  if (self->_layoutState.groups.separatorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v22 addIndex:?];
  }

  [v22 addIndexesInRange:{v38, v37}];
  if (self->_modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL && ((a3 - 1) < 3 || (a3 | 2) == 7))
  {
    [v22 addIndex:?];
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke_2;
  v46[3] = &unk_1E8023E38;
  v23 = v14;
  v47 = v23;
  v48 = self;
  v52 = a3;
  v24 = v22;
  v49 = v24;
  v25 = v19;
  v50 = v25;
  v26 = v21;
  v51 = v26;
  v53 = v40;
  v54 = v9;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v46];
  v27 = [(NSMutableDictionary *)self->_groupViewsByGroupID allKeys];
  v28 = [v27 mutableCopy];

  v29 = [v25 allObjects];
  [v28 removeObjectsInArray:v29];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v66 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(PKPassGroupStackView *)self _removeGroupViewAsSubviewWithGroupID:*(*(&v42 + 1) + 8 * i)];
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v66 count:16];
    }

    while (v32);
  }

  [(PKPassGroupStackView *)self _layoutFooterAnimated:0 withAnimationDelay:0.0];
  objc_autoreleasePoolPop(context);
}

void __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke(uint64_t a1, unint64_t a2)
{
  v20 = 0;
  v4 = [*(a1 + 32) _loadGroupViewAtIndex:a2 forState:*(a1 + 64) presentationState:1 cached:&v20];
  v5 = *(a1 + 40);
  v6 = [v4 group];
  v7 = [v6 groupID];
  [v5 addObject:v7];

  v8 = *(a1 + 72);
  v10 = a2 >= v8;
  v9 = a2 - v8;
  v10 = !v10 || v9 >= *(a1 + 80);
  if (!v10 && (v20 != 1 || *(a1 + 112) == 1))
  {
    v11 = *(a1 + 88);
    v10 = a2 >= v11;
    v12 = a2 - v11;
    if (v10 && v12 < *(a1 + 96))
    {
      [v4 setPresentationState:*(a1 + 104) withContext:*(a1 + 48) animated:0];
    }
  }

  v14 = *(a1 + 88);
  v13 = *(a1 + 96);
  [*(a1 + 32) _opacityForGroupAtIndex:a2 withGroupView:v4 forState:*(a1 + 64)];
  v16 = v15;
  v17 = a2 >= v14 && a2 - v14 < v13 || *(a1 + 96) + *(a1 + 88) == a2;
  [v4 setAlpha:v15];
  v18 = 10.0;
  if (v16 > 0.0)
  {
    v18 = 0.0;
    if (v16 < 1.0)
    {
      v18 = (1.0 - v16) * 10.0;
    }
  }

  [v4 setBlurRadius:v18];
  v19 = (([*(a1 + 56) containsIndex:a2] | v17) & 1) == 0 && v4 != *(*(a1 + 32) + 2496);
  [v4 setHidden:v19];
  if (*(*(a1 + 32) + 2328) - 1 == a2)
  {
    [v4 applyContentModesAnimated:0];
  }
}

void __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) containsIndex:a3] & 1) == 0)
  {
    v6 = *(a1 + 40);
    if (v6[312] != v5 && [v6 _inControlOfGroupView:v5])
    {
      [*(a1 + 40) _positionForGroupView:v5 atIndex:a3 forState:*(a1 + 72)];
      v8 = v7;
      v10 = v9;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = *(a1 + 40);
      if (v11)
      {
        [v11 _transformForGroupView:v5 atIndex:a3 forState:*(a1 + 72)];
      }

      v12 = MEMORY[0x1E69DD250];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke_3;
      v20[3] = &unk_1E8023E10;
      v21 = v5;
      v22 = v8;
      v23 = v10;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      [v12 performWithoutAnimation:v20];
    }

    if ([*(a1 + 48) containsIndex:a3])
    {
      v13 = *(a1 + 56);
      v14 = [v5 group];
      v15 = [v14 groupID];
      [v13 addObject:v15];

      v19 = ([*(a1 + 64) containsIndex:a3] & 1) == 0 && ((v16 = *(a1 + 80), v17 = a3 >= v16, v18 = a3 - v16, !v17) || v18 >= *(a1 + 88)) && *(*(a1 + 40) + 2496) != v5;
      [v5 setHidden:v19];
    }
  }
}

uint64_t __62__PKPassGroupStackView__tileGroupsForState_eager_withContext___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 136);
  v8[4] = *(a1 + 120);
  v8[5] = v3;
  v4 = *(a1 + 168);
  v8[6] = *(a1 + 152);
  v8[7] = v4;
  v5 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v5;
  v6 = *(a1 + 104);
  v8[2] = *(a1 + 88);
  v8[3] = v6;
  return [v2 setTransform3D:v8];
}

- (BOOL)_loadGroupViewAtIndexForModalPresentation:(unint64_t)a3
{
  presentationState = self->_presentationState;
  v6 = presentationState;
  if ((presentationState - 1) >= 3)
  {
    v6 = 2;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL && presentationState == 4)
    {
      if ([(PKPassGroupStackView *)self _rangeOfVisibleIndexes]<= a3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  return [(PKPassGroupStackView *)self _loadGroupViewAtIndexForModalPresentation:a3 withInitialState:v6];
}

- (BOOL)_loadGroupViewAtIndexForModalPresentation:(unint64_t)a3 withInitialState:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v8 = [WeakRetained groupAtIndex:a3];

  if (v8)
  {
    v9 = [(PKPassGroupStackView *)self _groupViewWithGroup:v8];
    if (v9)
    {
      v10 = v9;
      v11 = 1;
    }

    else
    {
      v13 = 0;
      v10 = [(PKPassGroupStackView *)self _loadGroupViewAtIndex:a3 forState:a4 presentationState:1 cached:&v13];
      [v10 applyContentModesAnimated:0];
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)_addGroupViewAsSubview:(id)a3 forIndex:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__64;
  v19 = __Block_byref_object_dispose__64;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__64;
  v13 = __Block_byref_object_dispose__64;
  v14 = 0;
  if ((*&self->_reorderingFlags & 1) == 0)
  {
    passContainerView = self->_passContainerView;
LABEL_5:
    [(PKPassthroughView *)passContainerView addSubview:v6];
    [(PKPassGroupStackView *)self _arrangeGroups];
    goto LABEL_6;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PKPassGroupStackView__addGroupViewAsSubview_forIndex___block_invoke;
  v8[3] = &unk_1E8023E88;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  v8[7] = a4;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v8];
  if (v10[5])
  {
    [(PKPassthroughView *)self->_passContainerView insertSubview:v6 belowSubview:?];
    goto LABEL_6;
  }

  passContainerView = self->_passContainerView;
  if (!v16[5])
  {
    goto LABEL_5;
  }

  [(PKPassthroughView *)passContainerView insertSubview:v6 aboveSubview:?];
LABEL_6:
  if (([v6 isLoaned] & 1) == 0)
  {
    [v6 setPaused:{-[PKPassGroupStackView _pauseStateForGroupView:atIndex:](self, "_pauseStateForGroupView:atIndex:", v6, a4)}];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

void __56__PKPassGroupStackView__addGroupViewAsSubview_forIndex___block_invoke(void *a1, void *a2, unint64_t a3)
{
  v12 = a2;
  v6 = [v12 superview];
  v7 = *(a1[4] + 2680);

  if (v6 == v7)
  {
    v8 = a1[7];
    if (v8 > a3)
    {
      v9 = (*(a1[5] + 8) + 40);
LABEL_4:
      objc_storeStrong(v9, a2);
      goto LABEL_7;
    }

    if (v8 < a3)
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      v9 = (v10 + 40);
      if (!v11)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_7:
}

- (void)_removeGroupViewAsSubviewWithGroupID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_groupViewsByGroupID objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      if (![(PKPassGroupView *)v5 isLoaned])
      {
        modallyPresentedGroupView = self->_modallyPresentedGroupView;
        if (v6 != modallyPresentedGroupView || !self->_transitionCanceller || (self->_nextState | 2) != 7)
        {
          v18 = 0;
          v19 = &v18;
          v20 = 0x2020000000;
          v21 = 0;
          v12 = MEMORY[0x1E69E9820];
          v13 = 3221225472;
          v14 = __61__PKPassGroupStackView__removeGroupViewAsSubviewWithGroupID___block_invoke;
          v15 = &unk_1E8023EB0;
          v8 = v6;
          v16 = v8;
          v17 = &v18;
          [(PKPassGroupStackView *)self _enumerateExternalVCContexts:&v12];
          if ((v19[3] & 1) == 0)
          {
            [(PKPassGroupStackView *)self _removePanGestureRecognizerFromGroupView:v8, v12, v13, v14, v15];
            [(PKPassGroupView *)v8 removeFromSuperview];
            [(PKPassGroupView *)v8 invalidate];
            [(NSMutableDictionary *)self->_groupViewsByGroupID removeObjectForKey:v4];
            if (v6 == modallyPresentedGroupView)
            {
              v9 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                presentationState = self->_presentationState;
                modalGroupIndex = self->_modalGroupIndex;
                *buf = 134218496;
                v23 = self;
                v24 = 2048;
                v25 = presentationState;
                v26 = 2048;
                v27 = modalGroupIndex;
                _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%p): WARNING: removed modally presented group view in state %llu - removing modal group index %llu.", buf, 0x20u);
              }

              [(PKPassGroupStackView *)self setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
            }
          }

          _Block_object_dispose(&v18, 8);
        }
      }
    }
  }
}

void __61__PKPassGroupStackView__removeGroupViewAsSubviewWithGroupID___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 && (v5 = *(a2 + 48)) != 0)
  {
    v6 = v5;
    v7 = v5[13];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 1);
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v9 = 0;
LABEL_5:
  v10 = v9;
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (_NSRange)_rangeOfVisibleIndexesIgnoringBottomInset:(BOOL)a3
{
  v3 = a3;
  [(PKPassGroupStackView *)self bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MaxY = CGRectGetMaxY(v25);
  if (v3)
  {
    MaxY = MaxY - self->_lastBoundsInsets.bottom;
  }

  v10 = [(PKPassGroupStackView *)self _startVisibleIndex];
  v11 = v10;
  do
  {
    v12 = v11;
    if (v11 >= self->_layoutState.groups.count)
    {
      break;
    }

    [(PKPassGroupStackView *)self _yForGroupInTableAtIndex:v11];
    v11 = v12 + 1;
  }

  while (v13 < MaxY);
  if (*&self->_reorderingFlags)
  {
    reorderedGroupView = self->_reorderedGroupView;
    if (reorderedGroupView)
    {
      v15 = [(PKPassGroupView *)reorderedGroupView layer];
      [v15 position];
      [(PKPassGroupStackView *)self _nativeYForTransformedY:v16 inBounds:x, y, width, height];
      v17 = [PKPassGroupStackView _indexForNativeY:"_indexForNativeY:inBounds:roundToClosestIndex:" inBounds:1 roundToClosestIndex:?];

      v20 = v17 - 1 >= v10 ? v10 : v17 - 1;
      v21 = v17 - 1 >= v12 ? v17 : v12;
      if (v17 < 2)
      {
        v22 = v10;
      }

      else
      {
        v12 = v21;
        v22 = v20;
      }

      v10 = v17 >= v22 ? v22 : v17;
      if (v17 < v12)
      {
        goto LABEL_23;
      }

      v12 = v17 + 1;
      if (((v17 == -1) << 63) >> 63 != (v17 == -1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v17 != -1)
      {
LABEL_23:
        v23 = v17 + 1;
        if (v17 + 1 < self->_layoutState.groups.count)
        {
          if (v23 < v10)
          {
            v10 = v17 + 1;
          }

          if (v23 >= v12)
          {
            v12 = v17 + 2;
          }
        }
      }
    }
  }

  v19 = v12 - v10;
  v18 = v10;
LABEL_30:
  result.length = v19;
  result.location = v18;
  return result;
}

- (unint64_t)_edgeStylesObscuredByTopMiddleOfPassStyle:(int64_t)a3
{
  v3 = PKPassFrontFaceEdgeStyle();
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BE116E80[v3 - 1];
  }
}

- (unint64_t)_edgeStylesObscuredByTopCornersOfPassStyle:(int64_t)a3
{
  v3 = PKPassFrontFaceEdgeStyle();
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BE116EB0[v3 - 1];
  }
}

- (void)_generateModalGroupPileWithVisibleIndexes:(_NSRange)a3 reservePlaceForModalGroup:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  passPileViews = self->_passPileViews;
  self->_passPileViews = v8;

  v20 = [MEMORY[0x1E695DFB0] null];
  if (location < location + length)
  {
    while ([(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:location])
    {
LABEL_10:
      ++location;
      if (!--length)
      {
        goto LABEL_11;
      }
    }

    v10 = [(PKPassGroupStackView *)self _groupViewAtIndex:location];
    v11 = v10;
    if (!v10 || v10 == self->_modallyPresentedGroupView)
    {
      if (!v4)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = self->_passPileViews;
      v13 = v20;
    }

    else
    {
      v12 = self->_passPileViews;
      v13 = v11;
    }

    [(NSMutableArray *)v12 insertObject:v13 atIndex:0];
    goto LABEL_9;
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_datasource);
    v17 = [v16 featuredGroup];
    v18 = [v17 groupID];
    featuredGroupID = self->_featuredGroupID;
    self->_featuredGroupID = v18;
  }

  else
  {
    v16 = self->_featuredGroupID;
    self->_featuredGroupID = 0;
  }
}

- (void)_presentOffscreenSplit:(BOOL)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v9;
    v11 = v8[8];
    if (!v6)
    {
      [(PKPassGroupStackView *)self setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if (v11)
    {
      [MEMORY[0x1E6979518] begin];
      v12 = MEMORY[0x1E6979518];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __77__PKPassGroupStackView__presentOffscreenSplit_withContext_completionHandler___block_invoke;
      v28[3] = &unk_1E8010B50;
      v29 = v10;
      [v12 setCompletionBlock:v28];
    }

    v13 = 2;
    if (v6)
    {
      v13 = 3;
    }

    self->_presentationState = v13;
    v14 = objc_autoreleasePoolPush();
    v15 = [(PKPassGroupStackView *)self delegate];
    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v15 groupStackViewDidChangeContentScrollView:self];
    }

    [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
    if (v11)
    {
      v16 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
      [(PKPassGroupStackView *)self _setupSpringFactory:v16 forPileAnimationToPresentationState:self->_presentationState reverse:1];
      if (v16)
      {
        v17 = [PKPGSVSpringAnimationConfiguration createWithFactory:v16];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      [(PKPassGroupStackView *)self _setupSpringFactory:0 forPileAnimationToPresentationState:self->_presentationState reverse:1];
      v17 = 0;
      v16 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__PKPassGroupStackView__presentOffscreenSplit_withContext_completionHandler___block_invoke_2;
    v26[3] = &unk_1E8023ED8;
    v26[4] = self;
    v18 = v17;
    v27 = v18;
    [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v26];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __77__PKPassGroupStackView__presentOffscreenSplit_withContext_completionHandler___block_invoke_3;
    v23 = &unk_1E8023F00;
    v24 = self;
    v25 = v18;
    v19 = v18;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:&v20];

    objc_autoreleasePoolPop(v14);
    if (v11)
    {
      [MEMORY[0x1E6979518] commit];
    }

    else if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t __77__PKPassGroupStackView__presentOffscreenSplit_withContext_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentModalGroupView:(id)a3 externally:(BOOL)a4 withContext:(id)a5 completion:(id)a6
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  if (!v15)
  {
    goto LABEL_32;
  }

  v17 = v16;
  v8 = *(v15 + 8);
  if (v12)
  {
    v18 = 7;
  }

  else
  {
    v18 = 5;
  }

  [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
  [(PKPassGroupStackView *)self _arrangeGroups];
  self->_presentationState = v18;
  v19 = [(PKPassGroupStackView *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 groupStackViewDidChangeContentScrollView:self];
  }

  [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
  [(PKPassGroupStackView *)self _setModalGroupView:v14];
  v55 = v17;
  if (v12)
  {
    passPileViews = self->_passPileViews;
    self->_passPileViews = 0;
  }

  else
  {
    v21 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexesIgnoringBottomInset:1];
    [(PKPassGroupStackView *)self _generateModalGroupPileWithVisibleIndexes:v21 reservePlaceForModalGroup:v22, 0];
  }

  v6 = 2200;
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  if (modallyPresentedGroupView && [(PKPassGroupView *)modallyPresentedGroupView presentationState]!= 3 && (*(&self->_layoutState + 28) & 0x800) == 0)
  {
    v24 = self->_modallyPresentedGroupView;
    v7 = v15[2];
    [(PKPassGroupView *)v24 setPresentationState:3 withContext:v7 animated:v8];

    [(PKPassGroupView *)self->_modallyPresentedGroupView sizeToFit];
  }

  v56 = v19;
  context = objc_autoreleasePoolPush();
  if (!v8)
  {
    v7 = v14;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_24;
  }

  if (v12)
  {
    v7 = v14;
    v25 = [(PKPassGroupStackView *)self _createFactoryForExternalDismissal];
    v26 = [(PKPassGroupStackView *)self _createFactoryForExternalPresentation];
    [(PKPassGroupStackView *)self _setupSpringFactoryForTableToExternalAnimations:v26];
    v27 = [PKPGSVSpringAnimationConfiguration createWithFactory:v25 modalFactory:v26];
    goto LABEL_24;
  }

  v25 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
  v28 = v15[5];
  if (!v28)
  {
    v27 = [PKPGSVSpringAnimationConfiguration createWithFactory:v25];
    goto LABEL_23;
  }

  v29 = v15[3];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v27 = [(PKPassGroupStackView *)self _createModalPileFactoryForExternalVCContext:v28 dismissalToPresentationState:5 withTransitionContext:v29 factory:v25 positionAdjustment:*MEMORY[0x1E69DE258], *(MEMORY[0x1E69DE258] + 8)];

LABEL_23:
  v7 = v14;

  v26 = 0;
LABEL_24:
  modalGroupIndex = self->_modalGroupIndex;
  aBlock[0] = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_B16__0Q8l;
  aBlock[4] = modalGroupIndex;
  v32 = _Block_copy(aBlock);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_2;
  v68[3] = &unk_1E8023F48;
  v33 = v32;
  v68[4] = self;
  v69 = v33;
  v34 = _Block_copy(v68);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_3;
  v64[3] = &unk_1E8023F70;
  v64[4] = self;
  v67 = v18;
  v35 = v27;
  v65 = v35;
  v66 = v34;
  v36 = v34;
  [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v64];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_4;
  v59[3] = &unk_1E8023F98;
  v59[4] = self;
  v63 = v18;
  v15 = v15;
  v60 = v15;
  v62 = v33;
  v8 = v35;
  v61 = v8;
  v37 = v33;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v59];

  objc_autoreleasePoolPop(context);
  if (v8)
  {
    v38 = v8[6];
    goto LABEL_26;
  }

LABEL_33:
  v38 = 0;
LABEL_26:
  v39 = v7;
  v40 = v38;
  [v40 duration];
  v42 = v41;
  if (v8)
  {
    v43 = v8[7];
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;
  [v44 duration];
  v46 = fmax(v42, v45);

  v47 = [*(&self->super.super.super.super.isa + v6) frontmostPassView];
  [v47 updateValidityDisplay];
  v48 = [*(&self->super.super.super.super.isa + v6) layer];
  [v48 pkui_remainingDurationForAnimationWithKey:@"modalPanGestureRecovery"];
  v50 = v49;

  if (v46 <= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v46 + 0.0;
  }

  v52 = dispatch_time(0, (v51 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = v9;
  block[2] = __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_5;
  block[3] = &unk_1E8010B50;
  v58 = v55;
  v53 = v55;
  dispatch_after(v52, MEMORY[0x1E69E96A0], block);
}

id __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  result = a2;
  if (result)
  {
    v4 = result;
    v5 = (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) _indexOfGroupView:result]);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || (v5 = v3[6]) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = v5[13];
  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v7 + 1);
LABEL_5:
  v10 = v9;

  [*(a1 + 32) _updateExternalVC:v4 toPresentationState:*(a1 + 56) initial:0 withSpringConfiguration:*(a1 + 40) preferModalSpringFactories:(*(*(a1 + 48) + 16))()];
}

void __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _updateGroupStateForGroupViewInModalPresentation:v5 atIndex:a3 withState:*(a1 + 64) withContext:*(a1 + 40)];
  if ([*(a1 + 32) _inControlOfGroupView:v5])
  {
    [*(a1 + 32) _updateGroupView:v5 toPresentationState:*(a1 + 64) withSpringConfiguration:*(a1 + 48) positionAdjustment:a3 atIndex:(*(*(a1 + 56) + 16))() modal:{*MEMORY[0x1E69DE258], *(MEMORY[0x1E69DE258] + 8)}];
    if (*(*(a1 + 32) + 2200) == v5)
    {
      [v5 updatePageControlFrameAnimated:*(a1 + 48) != 0];
    }
  }
}

uint64_t __81__PKPassGroupStackView__presentModalGroupView_externally_withContext_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentGroupStackViewWithContext:(id)a3 priorBounds:(CGRect)a4 completionHandler:(id)a5
{
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v11 = v10;
    v12 = v9[8];
    [(PKPassGroupView *)self->_modallyPresentedGroupView presentDiff:0 completion:0];
    passPileViews = self->_passPileViews;
    self->_passPileViews = 0;

    v14 = 0x1E6979000uLL;
    if (v12 == 1)
    {
      [MEMORY[0x1E6979518] begin];
      v15 = MEMORY[0x1E6979518];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __88__PKPassGroupStackView__presentGroupStackViewWithContext_priorBounds_completionHandler___block_invoke;
      v26[3] = &unk_1E8010B50;
      v27 = v11;
      [v15 setCompletionBlock:v26];
    }

    self->_presentationState = 4;
    [(PKPassGroupStackView *)self _arrangeGroups];
    v16 = [(PKPassGroupStackView *)self delegate];
    if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v16 groupStackViewDidChangeContentScrollView:self];
    }

    [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
    if ([(PKPassGroupStackView *)self isTableModalPresentation])
    {
      v17 = [(PKPassGroupStackView *)self _groupViewAtIndex:0];
      if ([v17 presentationState] != 3)
      {
        [v17 setPresentationState:3 animated:v12];
        [v17 sizeToFit];
      }
    }

    else
    {
      v17 = 0;
    }

    [(PKPassGroupStackView *)self _setModalGroupView:v17];
    if ([(PKPassGroupStackView *)self isTableModalPresentation])
    {
      v18 = [v17 frontmostPassView];
      v19 = [v18 pass];
      v20 = [v19 shouldRampBacklight];

      v14 = 0x1E6979000;
    }

    else
    {
      v20 = 0;
    }

    [(PKPassGroupStackView *)self _rampBacklightIfNecessary:v20];
    v21 = objc_autoreleasePoolPush();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__PKPassGroupStackView__presentGroupStackViewWithContext_priorBounds_completionHandler___block_invoke_2;
    v24[3] = &unk_1E8023FC0;
    v24[4] = self;
    v25 = v12;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v24];
    [(PKPassGroupStackView *)self bounds];
    [(PKPassGroupStackView *)self _layoutContentWithContext:v9 positionAdjustment:v12 animated:v22 - x, v23 - y];
    objc_autoreleasePoolPop(v21);
    if (v12)
    {
      [*(v14 + 1304) commit];
    }

    [(PKPassGroupStackView *)self _setScrollEnabled:[(PKPassGroupStackView *)self _shouldTablePresentationScroll]];
    if (v11)
    {
      if ((v12 & 1) == 0)
      {
        v11[2](v11);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t __88__PKPassGroupStackView__presentGroupStackViewWithContext_priorBounds_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentPassIngestionWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = v6[8];
    [(PKPassGroupStackView *)self setScrollEnabled:0];
    if ([(PKPassGroupStackView *)self _loadGroupViewAtIndexForModalPresentation:self->_modalGroupIndex withInitialState:1])
    {
      [(PKPassGroupView *)self->_modallyPresentedGroupView sizeToFit];
      v10 = [(PKPassGroupView *)self->_modallyPresentedGroupView layer];
      [v10 removeAllAnimations];

      [(PKPassGroupStackView *)self _updateGroupView:self->_modallyPresentedGroupView toPresentationState:1 withSpringFactory:0];
      [(PKPassGroupView *)self->_modallyPresentedGroupView updatePageControlFrameAnimated:0];
    }

    [MEMORY[0x1E6979518] begin];
    if (v9)
    {
      v11 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
    }

    else
    {
      v11 = 0;
    }

    [(PKPassGroupStackView *)self _updateGroupView:self->_modallyPresentedGroupView toPresentationState:6 withSpringFactory:v11];
    v12 = MEMORY[0x1E6979518];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PKPassGroupStackView__presentPassIngestionWithContext_completion___block_invoke;
    v15[3] = &unk_1E8010B50;
    v13 = v8;
    v16 = v13;
    [v12 setCompletionBlock:v15];
    [MEMORY[0x1E6979518] commit];
    [(PKPassGroupView *)self->_modallyPresentedGroupView setPresentationState:3 animated:0];
    [(PKPassGroupView *)self->_modallyPresentedGroupView updatePageControlFrameAnimated:v9];
    self->_presentationState = 6;
    v14 = [(PKPassGroupStackView *)self delegate];
    if (v14)
    {
      if (objc_opt_respondsToSelector())
      {
        [v14 groupStackViewDidChangeContentScrollView:self];
      }
    }

    [(PKPassGroupStackView *)self _updateNeedsNavigationBar];
  }

  else
  {
    __break(1u);
  }
}

uint64_t __68__PKPassGroupStackView__presentPassIngestionWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_inControlOfGroupView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isLoaned])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __46__PKPassGroupStackView__inControlOfGroupView___block_invoke;
      v13 = &unk_1E8023EB0;
      v6 = v5;
      v14 = v6;
      v15 = &v16;
      [(PKPassGroupStackView *)self _enumerateExternalVCContexts:&v10];
      if (*(v17 + 24) == 1)
      {
        v7 = [v6 superview];
        v8 = v7 == self->_passContainerView;
      }

      else
      {
        v8 = 1;
      }

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__PKPassGroupStackView__inControlOfGroupView___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 && (v5 = *(a2 + 48)) != 0)
  {
    v6 = v5;
    v7 = v5[13];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 1);
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v9 = 0;
LABEL_5:
  v10 = v9;
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_updateLoanedStateForPassGroupView:(id)a3 willLayout:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PKPassGroupStackView__updateLoanedStateForPassGroupView_willLayout___block_invoke;
    aBlock[3] = &unk_1E8013D60;
    v7 = v6;
    v14 = v7;
    v15 = self;
    v16 = a4;
    v8 = _Block_copy(aBlock);
    v9 = [(PKPassGroupStackView *)self _activeExternalVCContextForPassGroupView:v7];
    v10 = v9;
    if (!v9)
    {
      goto LABEL_18;
    }

    v11 = v9[4];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *(v11 + 552);
    if ((v12 - 1) < 2)
    {
      if (([v7 isLoaned] & 1) == 0)
      {
        [v7 setLoaned:1];
        [(PKPassGroupStackView *)self reloadSuppressedContentForGroupView:v7];
      }

      if (v12 == 1)
      {
        v8[2](v8);
      }

      [v7 setHitTestEnabled:v12 == 2];
      goto LABEL_14;
    }

    if (!*(v11 + 552))
    {
LABEL_18:
      if ([v7 isLoaned])
      {
        [v7 setLoaned:0];
        [v7 setDelegate:self];
        [v7 setHitTestEnabled:1];
        v8[2](v8);
        [(PKPassGroupStackView *)self _updatePausedState];
        [(PKPassGroupStackView *)self reloadSuppressedContentForGroupView:v7];
      }

      else
      {
        v8[2](v8);
      }
    }

LABEL_14:

    return;
  }

  __break(1u);
}

void __70__PKPassGroupStackView__updateLoanedStateForPassGroupView_willLayout___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 group];
  v5 = [v3 _groupViewWithGroup:v4];

  v6 = *(a1 + 32);
  if (v2 == v5)
  {
    v7 = [v6 superview];
    v8 = *(a1 + 40);
    v9 = v8[335];
    if (v7 != v9)
    {
      if (*(a1 + 48) == 1)
      {
        if (v7)
        {
          [*(a1 + 32) center];
          [v9 convertPoint:v7 fromView:?];
          v11 = v10;
          v13 = v12;
        }

        else
        {
          [v8 _xPositionForGroupView:*(a1 + 32) forState:v8[271]];
          v11 = v14;
          [*(a1 + 40) bounds];
          v16 = v15;
          [*(a1 + 32) anchorPoint];
          v18 = 1.0 - v17;
          [*(a1 + 32) bounds];
          v13 = v16 - v18 * v19;
        }

        v20 = MEMORY[0x1E69DD250];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __70__PKPassGroupStackView__updateLoanedStateForPassGroupView_willLayout___block_invoke_2;
        v30[3] = &unk_1E8012188;
        v31 = *(a1 + 32);
        v32 = v11;
        v33 = v13;
        [v20 performWithoutAnimation:v30];

        v9 = *(*(a1 + 40) + 2680);
      }

      [v9 addSubview:*(a1 + 32)];
      [*(a1 + 40) _arrangeGroups];
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 40) _positionForGroupView:*(a1 + 32) atIndex:objc_msgSend(*(a1 + 40) forState:{"_indexOfGroupView:", *(a1 + 32)), *(*(a1 + 40) + 2168)}];
      v22 = v21;
      v24 = v23;
      v25 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __70__PKPassGroupStackView__updateLoanedStateForPassGroupView_willLayout___block_invoke_3;
      v26[3] = &unk_1E8012188;
      v27 = *(a1 + 32);
      v28 = v22;
      v29 = v24;
      [v25 performWithoutAnimation:v26];
    }
  }

  else
  {

    [v6 removeFromSuperview];
  }
}

- (void)_loanGroupViewToExternalVCContext:(id)a3 willLayout:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  if (!v7 || self->_externalVC.context != v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  p_isa = &v7->super.isa;
  [(PKPGSVExternalVCContext *)v7 _willLoanGroupView];
  v8 = p_isa[6];
  v4 = v8;
  if (!v8)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = v8[13];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 1);
    goto LABEL_6;
  }

LABEL_11:
  v11 = 0;
LABEL_6:
  v12 = v11;
  [(PKPassGroupStackView *)self _updateLoanedStateForPassGroupView:v12 willLayout:v5];
}

- (void)_interruptTransferedGroupViewForExternalVCContext:(id)a3 willLayout:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  if (!v7 || self->_externalVC.context != v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  p_isa = &v7->super.isa;
  [(PKPGSVExternalVCContext *)v7 _interruptTransferedGroupView];
  v8 = p_isa[6];
  v4 = v8;
  if (!v8)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = v8[13];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 1);
    goto LABEL_6;
  }

LABEL_11:
  v11 = 0;
LABEL_6:
  v12 = v11;
  [(PKPassGroupStackView *)self _updateLoanedStateForPassGroupView:v12 willLayout:v5];
}

- (void)_transferLoanedGroupViewToExternalVCContext:(id)a3 willLayout:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  if (!v7 || self->_externalVC.context != v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  p_isa = &v7->super.isa;
  [(PKPGSVExternalVCContext *)v7 _willTransferGroupView];
  v8 = p_isa[6];
  v4 = v8;
  if (!v8)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = v8[13];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 1);
    goto LABEL_6;
  }

LABEL_11:
  v11 = 0;
LABEL_6:
  v12 = v11;
  [(PKPassGroupStackView *)self _updateLoanedStateForPassGroupView:v12 willLayout:v5];
}

- (void)_acquireLoanedGroupViewFromExternalVCContext:(id)a3 willLayout:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  if (!v7 || (v14 = v7, (v8 = *(v7 + 4)) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  [(PKPGSVExternalVCContextContainerView *)v8 _willAcquireGroupView];
  v9 = v14[6];
  v4 = v9;
  if (!v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = v9[13];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 1);
    goto LABEL_6;
  }

LABEL_11:
  v12 = 0;
LABEL_6:
  v13 = v12;
  [(PKPassGroupStackView *)self _updateLoanedStateForPassGroupView:v13 willLayout:v5];
}

- (void)_assertIsValidExternalVCContext:(id)a3
{
  v4 = a3;
  if (v4 && ((v5 = v4, self->_externalVC.context == v4) || (tombstonedContexts = self->_externalVC.tombstonedContexts) != 0 && (v8 = v5, v7 = [(NSMutableArray *)tombstonedContexts indexOfObjectIdenticalTo:v5], v5 = v8, v7 != 0x7FFFFFFFFFFFFFFFLL)))
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)_assertIsValidExternalVCTransitionCoordinator:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  p_externalVC = &self->_externalVC;
  context = self->_externalVC.context;
  if (context)
  {
    context = context->_transitionCoordinator;
  }

  v8 = context;

  if (v8 != v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = p_externalVC->tombstonedContexts;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v14)
        {
          v14 = v14[6];
        }

        v15 = v14;

        if (v15 == v5)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:

      __break(1u);
    }
  }
}

- (id)_externalVCContextForTransitionCoordinator:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  p_externalVC = &self->_externalVC;
  context = self->_externalVC.context;
  if (context)
  {
    context = context->_transitionCoordinator;
  }

  v9 = context;

  if (v9 == v6)
  {
    v18 = p_externalVC->context;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = p_externalVC->tombstonedContexts;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v3 = *(*(&v20 + 1) + 8 * v14);
        v15 = v3 ? v3[6] : 0;
        v16 = v15;

        if (v16 == v6)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v17 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v12 = v17;
          if (v17)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      __break(1u);
    }

    v18 = v3;
  }

  return v18;
}

- (id)_externalVCContextForPassGroupView:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    __break(1u);
LABEL_27:
    v12 = 0;
    v10 = 0;
    goto LABEL_28;
  }

  v3 = v7;
  p_externalVC = &self->_externalVC;
  context = self->_externalVC.context;
  if (!context)
  {
    goto LABEL_27;
  }

  v9 = context->_transitionCoordinator;
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = v9->_state;
  v12 = v11;
  if (v11)
  {
    passGroupView = v11->_passGroupView;
    goto LABEL_6;
  }

LABEL_28:
  passGroupView = 0;
LABEL_6:
  v14 = passGroupView;

  if (v14 == v3)
  {
    v27 = p_externalVC->context;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = p_externalVC->tombstonedContexts;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v5 = *(*(&v29 + 1) + 8 * v19);
          if (v5 && (v20 = v5[6]) != 0)
          {
            v21 = v20;
            v22 = v20[13];
            v23 = v22;
            if (v22)
            {
              v24 = *(v22 + 1);
              goto LABEL_16;
            }
          }

          else
          {
            v23 = 0;
            v21 = 0;
          }

          v24 = 0;
LABEL_16:
          v25 = v24;

          if (v25 == v3)
          {
            goto LABEL_23;
          }

          ++v19;
        }

        while (v17 != v19);
        v26 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v17 = v26;
      }

      while (v26);
    }

    __break(1u);
LABEL_23:
    v27 = v5;
  }

  return v27;
}

- (id)_activeExternalVCContextForPassGroupView:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__64;
  v15 = __Block_byref_object_dispose__64;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKPassGroupStackView__activeExternalVCContextForPassGroupView___block_invoke;
  v8[3] = &unk_1E8023EB0;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __65__PKPassGroupStackView__activeExternalVCContextForPassGroupView___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v15 = v4;
  if (!v4 || (v5 = *(v4 + 6)) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = v5[13];
  v8 = v7;
  if (!v7)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v7 + 1);
LABEL_5:
  v10 = v9;

  if (v15)
  {
    if (*(a1 + 32) == v10)
    {
      v11 = v15[4];
      if (v11)
      {
        if (*(v11 + 552) - 1 <= 1)
        {
          v12 = *(*(a1 + 40) + 8);
          v14 = *(v12 + 40);
          v13 = (v12 + 40);
          if (v14)
          {
            __break(1u);
            return;
          }

          objc_storeStrong(v13, a2);
        }
      }
    }
  }
}

- (void)_tombstoneExternalVCContext
{
  p_externalVC = &self->_externalVC;
  context = self->_externalVC.context;
  if (!context || context->_sending)
  {
    __break(1u);
LABEL_15:
    transitionCoordinator = 0;
    goto LABEL_7;
  }

  v2 = self;
  if (!self->_externalVC.tombstonedContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tombstonedContexts = p_externalVC->tombstonedContexts;
    p_externalVC->tombstonedContexts = v6;

    context = p_externalVC->context;
  }

  p_externalVC->context = 0;
  v3 = context;

  [(NSMutableArray *)p_externalVC->tombstonedContexts addObject:v3];
  if (!v3)
  {
    goto LABEL_15;
  }

  transitionCoordinator = v3->_transitionCoordinator;
LABEL_7:
  v10 = transitionCoordinator;

  v9 = v10;
  if (!v10 || !v10->_tombstoned && !v10->_invalidated)
  {
    [(PKPGVTransitionCoordinator *)v10 coordinatorForConnection:v2];
    [(PKPGVTransitionCoordinator *)v10 tombstoneConnection:v2];

    v9 = v10;
  }
}

- (void)_removeExternalVCContext:(id)a3 terminated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  v16 = v6;
  if (a4)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_23;
  }

  for (i = v6->_transitionCoordinator; ; i = 0)
  {
    v9 = i;
    [-[PKPGVTransitionCoordinator coordinatorForTransceiver:](v9 self)];

    v7 = v16;
LABEL_5:
    context = self->_externalVC.context;
    if (context == v7)
    {
      [(PKPassGroupStackView *)self _tombstoneExternalVCContext];
      [(PKPassthroughView *)self->_externalVCContainerView setHitTestEnabled:0];
      v7 = v16;
    }

    if (!v7)
    {
      break;
    }

    containedView = v7->_containedView;
    if (!containedView || !containedView->_state)
    {
      break;
    }

    if (a4)
    {
      [(PKPassGroupStackView *)self _acquireLoanedGroupViewFromExternalVCContext:v16 willLayout:0];
      v7 = v16;
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  tombstonedContexts = self->_externalVC.tombstonedContexts;
  if (!tombstonedContexts)
  {
    goto LABEL_22;
  }

  v13 = [(NSMutableArray *)tombstonedContexts indexOfObjectIdenticalTo:v7];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  [(NSMutableArray *)self->_externalVC.tombstonedContexts removeObjectAtIndex:v13];
  if (![(NSMutableArray *)self->_externalVC.tombstonedContexts count])
  {
    v14 = self->_externalVC.tombstonedContexts;
    self->_externalVC.tombstonedContexts = 0;
  }

  [(PKPGSVExternalVCContext *)v16 _terminate];
  v15 = v16;
  if (context == v16 && self->_presentationState == 7)
  {
    [(PKPassGroupStackView *)self setPresentationState:4 animated:1];
    v15 = v16;
  }
}

- (id)_createPassFooterConfigurationForPassView:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_invalidated)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v8 = 0;
  if (v6 && !self->_tombstoned)
  {
    v9 = [v6 pass];
    if ([v9 passType] != 1)
    {
      if (PKValueAddedServicesEnabledForPass())
      {
        if ([(PKSecureElement *)self->_secureElement isInRestrictedMode])
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_46;
    }

    v10 = v9;
    if (([(PKSecureElement *)self->_secureElement isInRestrictedMode]& 1) != 0)
    {
      v11 = 3;
LABEL_45:

LABEL_46:
      v8 = [[PKPassFooterViewConfiguration alloc] initWithPassView:v6 state:v11];

      goto LABEL_47;
    }

    if (self->_userEducationDemoController)
    {
      v11 = 8;
      goto LABEL_45;
    }

    if ([v7 isPostPayment])
    {
      v11 = 4;
      goto LABEL_45;
    }

    if (![v10 hasAssociatedPeerPaymentAccount] || objc_msgSend(v10, "effectiveContactlessPaymentApplicationState") == 7)
    {
      v11 = 1;
      goto LABEL_45;
    }

    v12 = [MEMORY[0x1E69B9000] sharedInstance];
    v13 = [v12 account];

    v14 = [v13 state];
    v15 = [v13 associatedPassUniqueID];
    v16 = [v10 uniqueID];
    v17 = v15;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (!v17 || !v18)
      {

LABEL_38:
        v11 = 1;
LABEL_44:

        goto LABEL_45;
      }

      v20 = [v17 isEqualToString:v18];

      if ((v20 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v21 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass();
    v22 = [v10 activationState];
    if ((v14 - 1) >= 2 || v22 == 4)
    {
      if (v21)
      {
        if (v21 != 5)
        {
          v24 = [v10 paymentPass];
          v25 = [v24 activationState];

          if (v25 != 3)
          {
            v11 = 5;
            goto LABEL_44;
          }
        }
      }
    }

    if (v14 == 1)
    {
      v26 = [v13 currentBalance];
      v27 = [v26 amount];
      v28 = [MEMORY[0x1E696AB90] zero];
      if ([v27 compare:v28])
      {
      }

      else
      {
        v29 = PKRunningInViewService();

        if (v29)
        {
          v11 = 6;
          goto LABEL_44;
        }
      }
    }

    if ([v13 isParticipantAccountLockedByOwner])
    {
      v11 = 7;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_44;
  }

LABEL_47:

  return v8;
}

- (void)_updatePassFooterViewIfNecessaryWithContext:(id)a3 becomeVisibleDelay:(double)a4
{
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  v7 = a3;
  v9 = [(PKPassGroupView *)modallyPresentedGroupView frontmostPassView];
  v8 = [(PKPassGroupStackView *)self _createPassFooterConfigurationForPassView:v9 withContext:v7];
  [(PKPassGroupStackView *)self _updatePassFooterViewWithConfiguration:v8 context:v7 animated:1 reload:0 delay:a4];
}

- (void)_updatePassFooterViewWithContext:(id)a3
{
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  v5 = a3;
  v7 = [(PKPassGroupView *)modallyPresentedGroupView frontmostPassView];
  v6 = [(PKPassGroupStackView *)self _createPassFooterConfigurationForPassView:v7 withContext:v5];
  [(PKPassGroupStackView *)self _updatePassFooterViewWithConfiguration:v6 context:v5 animated:1 reload:1 delay:0.0];
}

- (void)_updatePassFooterViewWithConfiguration:(id)a3 context:(id)a4 animated:(BOOL)a5 reload:(BOOL)a6 delay:(double)a7
{
  v8 = a6;
  v9 = a5;
  v88 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = 0.0;
  v64 = a7;
  if (self->_invalidated || ![(PKPassGroupStackView *)self isPresentingPassViewFront]|| (*(&self->_layoutState + 28) & 0x200) != 0 || !self->_modallyPresentedGroupView || self->_footerSuppressed || ((presentationState = self->_presentationState, presentationState == 7) ? (v14 = 0.0) : (v14 = 1.0), presentationState == 7))
  {
    v17 = v8;

    v16 = 0;
    v67 = 0;
    v12 = 0;
  }

  else
  {
    v16 = 1;
    v67 = v13;
    if (!v13 || v8)
    {
      v17 = v8;
    }

    else
    {
      v17 = [v13 wantsPersistentCardEmulation];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke;
  aBlock[3] = &unk_1E8013F80;
  aBlock[4] = self;
  v83 = v9;
  v68 = _Block_copy(aBlock);
  passFooterViewVisible = self->_passFooterViewVisible;
  [(PKPassFooterView *)self->_passFooterView alpha];
  v20 = v19;
  v21 = [v12 passView];
  [(PKPassGroupStackView *)self _frameForFooterViewForPassView:v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(PKPassFooterView *)self->_passFooterView center];
  v65 = v31;
  v66 = v30;
  v32 = [(PKPassFooterView *)self->_passFooterView configuration];
  v33 = PKEqualObjects();

  v34 = v65;
  v35 = v65 == v25 + v29 * 0.0 && v66 == v23 + v27 * 0.5;
  if (((passFooterViewVisible == v16) & v33) == 1 && v20 == v14 && v35)
  {
    if ((passFooterViewVisible & v17) == 1)
    {
      if (v9)
      {
        if (v20 <= 0.0)
        {
          if (self->_passFooterViewOutstandingAnimations)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }
        }

        else
        {
          v37 = 3;
        }
      }

      else
      {
        v37 = 2;
      }

      passFooterView = self->_passFooterView;
      v49 = [(PKPassFooterView *)passFooterView configuration];
      [(PKPassFooterView *)passFooterView configureWithConfiguration:v49 context:v67 options:v37];
    }

    [(PKPassGroupStackView *)self _layoutFooterAnimated:v9 withAnimationDelay:0.0];
    v68[2]();
    goto LABEL_75;
  }

  self->_passFooterViewVisible = v16;
  self->_passFooterViewAlpha = v14;
  if (passFooterViewVisible == v16)
  {
    HIDWORD(v61) = self->_passFooterViewVisibilityToken;
    v38 = self->_passFooterView;
    v39 = v38 == 0;
    if (v16)
    {
      if (!v38)
      {
        goto LABEL_36;
      }

LABEL_33:
      LODWORD(v61) = 0;
      LOBYTE(v39) = 0;
      goto LABEL_37;
    }

LABEL_45:
    LODWORD(v61) = v39;
    goto LABEL_57;
  }

  v40 = self->_passFooterViewVisibilityToken + 1;
  self->_passFooterViewVisibilityToken = v40;
  v41 = self->_passFooterView;
  HIDWORD(v61) = v40;
  if (!v41)
  {
    if ((v16 & 1) == 0)
    {
      LOBYTE(v39) = 1;
      LODWORD(v61) = 1;
      goto LABEL_57;
    }

    goto LABEL_36;
  }

  if (!v16)
  {
    [(PKPassFooterView *)v41 willBecomeHiddenAnimated:v9, v65];
    v39 = self->_passFooterView == 0;
    goto LABEL_45;
  }

  [(PKPassFooterView *)v41 willBecomeVisibleAnimated:v9, v65];
  if (self->_passFooterView)
  {
    goto LABEL_33;
  }

LABEL_36:
  v42 = objc_alloc_init(PKPassFooterView);
  v43 = self->_passFooterView;
  self->_passFooterView = v42;

  [(PKPassFooterView *)self->_passFooterView setDelegate:self];
  [(PKPassFooterView *)self->_passFooterView setAlpha:0.0];
  [(PKPassFooterView *)self->_passFooterView setBlurRadius:10.0];
  [(PKPassFooterView *)self->_passFooterView setUserEducationDemoController:self->_userEducationDemoController];
  [(PKPassFooterView *)self->_passFooterView setAnchorPoint:0.5, 0.0];
  [(PKPassGroupStackView *)self insertSubview:self->_passFooterView atIndex:0];
  [(PKPassFooterView *)self->_passFooterView willBecomeVisibleAnimated:v9];
  LODWORD(v61) = 1;
  LOBYTE(v39) = 1;
LABEL_37:
  if ((v33 ^ 1 | v17))
  {
    v44 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = self->_passFooterView;
      *buf = 134349312;
      v85 = self;
      v86 = 2050;
      v87 = v45;
      _os_log_impl(&dword_1BD026000, v44, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p): configuring PKPassFooterView %{public}p.", buf, 0x16u);
    }

    if (v9)
    {
      v46 = v67;
      v47 = passFooterViewVisible && v20 > 0.0 || self->_passFooterViewOutstandingAnimations != 0;
    }

    else
    {
      v47 = 0;
      v46 = v67;
    }

    v50 = 2;
    if (!v17)
    {
      v50 = 0;
    }

    [(PKPassFooterView *)self->_passFooterView configureWithConfiguration:v12 context:v46 options:v47 | v50, v61];
  }

LABEL_57:
  v51 = [(PKPassFooterView *)self->_passFooterView configuration:v34];

  ++self->_passFooterViewOutstandingAnimations;
  if (v16)
  {
    if ([(PKPassFooterView *)self->_passFooterView requestPileSuppression])
    {
      [(PKPassGroupStackView *)self setPilingMode:1];
    }

    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_143;
    v80[3] = &unk_1E8023FE8;
    v81 = v39;
    v80[4] = self;
    *&v80[5] = v23;
    *&v80[6] = v25;
    *&v80[7] = v27;
    *&v80[8] = v29;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v80];
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_2;
  v78[3] = &__block_descriptor_33_e33_v20__0__PKPassGroupStackView_8B16l;
  v79 = v9;
  v52 = _Block_copy(v78);
  objc_initWeak(buf, self);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_3;
  v74[3] = &unk_1E8024030;
  v77 = v63;
  v76[1] = *&v14;
  objc_copyWeak(v76, buf);
  v53 = v52;
  v75 = v53;
  v54 = _Block_copy(v74);
  if (v9 && v20 != v14)
  {
    v55 = [objc_alloc(MEMORY[0x1E69B92B0]) initWithMass:0.35 stiffness:dbl_1BE116E40[self->_presentationState == 3] damping:dbl_1BE116E30[self->_presentationState == 3]];
    v56 = v55;
    if (((v62 | v35) & 1) == 0)
    {
      if (v55)
      {
        v57 = [v55 highFrameRateSpringAnimationWithKeyPath:@"position" reason:1];
        [v57 pkui_updateForAdditiveAnimationFromPoint:v66 toPoint:{v65, v23 + v27 * 0.5, v25 + v29 * 0.0}];
        v58 = [(PKPassFooterView *)self->_passFooterView layer];
        v59 = [v58 pkui_addAdditiveAnimation:v57];
      }

      goto LABEL_66;
    }
  }

  else
  {
    v56 = 0;
    if (((v62 | v35) & 1) == 0)
    {
LABEL_66:
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_6;
      v73[3] = &unk_1E8012188;
      v73[4] = self;
      *&v73[5] = v23 + v27 * 0.5;
      *&v73[6] = v25 + v29 * 0.0;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v73];
    }
  }

  if (v64 <= 0.0)
  {
    v54[2](v54, self, v56);
  }

  else
  {
    v60 = dispatch_time(0, (v64 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_7;
    block[3] = &unk_1E8011108;
    objc_copyWeak(&v72, buf);
    v71 = v54;
    v70 = v56;
    dispatch_after(v60, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v72);
  }

  if (PKUserIntentIsAvailable())
  {
    [(PKPassGroupStackView *)self passFooterViewDidChangePhysicalButtonRequirement:self->_passFooterView withContext:v67];
  }

  if (passFooterViewVisible != v16)
  {
    [(PKPassGroupStackView *)self _updateCoachingState];
  }

  v68[2]();

  objc_destroyWeak(v76);
  objc_destroyWeak(buf);

  v12 = v51;
LABEL_75:
}

void __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 2632) == 1 && ([*(v2 + 2624) configuration], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v3;
    v4 = [v3 state];
    if (v4 <= 8 && ((1 << v4) & 0x116) != 0)
    {
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 1;
LABEL_10:
  [*(a1 + 32) setTableModalPresentationEnabled:v6 animated:*(a1 + 40)];
}

uint64_t __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_143(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(*(a1 + 32) + 2624);
  if (v2 == 1)
  {
    [v3 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    [v3 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *(a1 + 56), *(a1 + 64)}];
  }

  v4 = *(*(a1 + 32) + 2624);

  return [v4 layoutIfNeeded];
}

void __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(v3 + 662) - 1;
    *(v3 + 662) = v4;
    if (!v4)
    {
      v5 = *(v3 + 2632);
      v8 = v3;
      v6 = v3[328];
      v7 = *(a1 + 32);
      if (v5 == 1)
      {
        [v6 didBecomeVisibleAnimated:v7];
      }

      else
      {
        [v6 didBecomeHiddenAnimated:v7];
        [v8[328] configureWithConfiguration:0 context:0 options:0];
      }

      v3 = v8;
    }
  }
}

void __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || *(v5 + 663) != *(a1 + 56))
  {
    v19 = *(*(a1 + 32) + 16);
LABEL_15:
    v19();
    goto LABEL_16;
  }

  v7 = *(v5 + 328);
  if (!v7)
  {
    v19 = *(*(a1 + 32) + 16);
    goto LABEL_15;
  }

  v8 = *(a1 + 48);
  v9 = 0.0;
  if (v8 < 1.0)
  {
    v9 = (1.0 - v8) * 10.0;
  }

  if (v8 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 10.0;
  }

  [v7 blurRadius];
  if (v11 != v10)
  {
    if (v6)
    {
      v12 = v11;
      v13 = +[PKPassFooterView blurRadiusKeyPath];
      v14 = [v6 springAnimationWithKeyPath:v13];

      [v14 pkui_updateForAdditiveAnimationFromScalar:v12 toScalar:v10];
      v15 = [*(v5 + 328) layer];
      v16 = [v15 pkui_addAdditiveAnimation:v14];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_4;
    v23[3] = &unk_1E80119C8;
    v23[4] = v5;
    *&v23[5] = v10;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
  }

  v17 = *(v5 + 328);
  v18 = *(a1 + 48);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_5;
  v20[3] = &unk_1E80110B8;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  [v17 pkui_setAlpha:v6 withAnimationFactory:v20 completion:v18];

  objc_destroyWeak(&v22);
LABEL_16:
}

void __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void __93__PKPassGroupStackView__updatePassFooterViewWithConfiguration_context_animated_reload_delay___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(*(a1 + 40) + 16))();
}

- (void)setUserEducationDemoController:(id)a3
{
  objc_storeStrong(&self->_userEducationDemoController, a3);
  v5 = a3;
  [(PKPassFooterView *)self->_passFooterView setUserEducationDemoController:self->_userEducationDemoController];
}

- (id)_animatorForGestureRecognizer:(id)a3
{
  v4 = [a3 view];
  v5 = [v4 group];
  v6 = [v5 groupID];

  v7 = [(NSMutableDictionary *)self->_animatorsByGroupID objectForKey:v6];

  return v7;
}

- (void)_updatePanGestureRecognizerForGroupView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    if (self->_invalidated || self->_tombstoned)
    {
      goto LABEL_11;
    }

    v6 = 28;
    if (!self->_transitionCanceller)
    {
      v6 = 6;
    }

    v7 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v6]);
    if (v7 == 4 || v7 == 7)
    {
LABEL_11:
      [(PKPassGroupStackView *)self _removePanGestureRecognizerFromGroupView:v4];
    }

    else
    {
      [(PKPassGroupStackView *)self _addPanGestureRecognizerToGroupView:v4];
    }

    v5 = v9;
  }
}

- (void)_addPanGestureRecognizerToGroupView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && !self->_invalidated && !self->_tombstoned)
  {
    v6 = [v4 group];
    v7 = [v6 groupID];

    v8 = [(NSMutableDictionary *)self->_animatorsByGroupID objectForKeyedSubscript:v7];
    if (!v8)
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke;
      v15 = &unk_1E8024080;
      objc_copyWeak(&v16, &location);
      v9 = _Block_copy(&v12);
      v10 = objc_alloc(MEMORY[0x1E69DCD28]);
      v11 = [v10 initWithTarget:self action:{sel__handleModalGroupGesture_, v12, v13, v14, v15}];
      v8 = [[PKPassGroupViewVerticalPanAnimator alloc] initWithGroupView:v5 gestureRecognizer:v11 updater:v9];
      [(NSMutableDictionary *)self->_animatorsByGroupID setObject:v8 forKeyedSubscript:v7];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = (1.0 - fmax(fmin(a7 / 80.0, 1.0), 0.0)) * *(WeakRetained + 330);
    v15 = 10.0;
    if (v14 > 0.0)
    {
      v15 = 0.0;
      if (v14 < 1.0)
      {
        v15 = (1.0 - v14) * 10.0;
      }
    }

    [WeakRetained[328] setAlpha:?];
    [v13[328] setBlurRadius:v15];
    [v13 _yForGroupInModalPileOfType:0 withModalGroupY:a4 scale:a5];
    v17 = v16;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke_2;
    v22 = &unk_1E8024058;
    v18 = v13;
    v23 = v18;
    v24 = v11;
    v25 = a5;
    v26 = v17;
    [v18 _enumerateLoadedGroupViews:&v19];
    [v18 _updateTopContentSeparatorVisibilityAnimated:{0, v19, v20, v21, v22}];
    [v18 _updateBottomContentSeparatorVisibilityAnimated:0];
  }
}

void __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _isGroupAtIndexInModalPile:a3])
  {
    [*(a1 + 32) _scaleForModalPileGroupAtIndex:a3 ofType:0];
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 120);
    }

    else
    {
      v8 = 0.0;
    }

    v9 = v6 / v8 * *(a1 + 48);
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke_3;
    v11[3] = &unk_1E8012188;
    v12 = v5;
    v13 = *(a1 + 56);
    v14 = v9;
    [v10 performWithoutAnimation:v11];
  }
}

uint64_t __60__PKPassGroupStackView__addPanGestureRecognizerToGroupView___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 center];
  [v2 setCenter:?];
  v3 = *(a1 + 32);
  CATransform3DMakeScale(&v5, *(a1 + 48), *(a1 + 48), 1.0);
  return [v3 setTransform3D:&v5];
}

- (void)_removePanGestureRecognizerFromGroupView:(id)a3
{
  if (a3)
  {
    v4 = [a3 group];
    v6 = [v4 groupID];

    v5 = [(NSMutableDictionary *)self->_animatorsByGroupID objectForKeyedSubscript:v6];
    if (v5)
    {
      [(NSMutableDictionary *)self->_animatorsByGroupID setObject:0 forKeyedSubscript:v6];
      [(PKPassGroupViewVerticalPanAnimator *)v5 invalidate];
    }
  }
}

- (void)_handleModalGroupGesture:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PKPassGroupStackView *)self _animatorForGestureRecognizer:v9];
  if (v5)
  {
    presentationState = self->_presentationState;
    if (presentationState == 5)
    {
      v7 = [v9 state];
      if ((v7 - 3) < 2)
      {
        [(PKPassGroupStackView *)self _endGroupPanWithAnimator:v5];
        goto LABEL_9;
      }

      if (v7 == 2)
      {
        goto LABEL_7;
      }

      if (v7 == 1)
      {
        [(PKPassGroupStackView *)self _beginGroupPanWithAnimator:v5];
LABEL_7:
        [v9 translationInView:0];
        [(PKPassGroupViewVerticalPanAnimator *)v5 layoutViewsWithY:?];
      }
    }

LABEL_9:
    [(PKPassGroupViewVerticalPanAnimator *)v5 updateRecognizingWithAllowed:?];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_beginGroupPanWithAnimator:(id)a3
{
  v4 = a3;
  v48 = v4;
  if (v4)
  {
    v5 = v4[14];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 state] == 1)
  {
    [(PKPassGroupStackView *)self _arrangeGroups];
    if (v48)
    {
      [(PKPassGroupViewVerticalPanAnimator *)v48 setDismissAnimation:?];
      v7 = v48[13];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v8 anchorPoint];
    v16 = v15;
    v18 = v17;
    [v6 locationInView:v8];
    v20 = (v19 - v10) / v14;
    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:0];
    v22 = v21;
    v23 = self->_modallyPresentedGroupView;
    modallyPresentedGroupView = self->_modallyPresentedGroupView;
    self->_modallyPresentedGroupView = 0;

    v25 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
    [(PKPassGroupStackView *)self _generateModalGroupPileWithVisibleIndexes:v25 reservePlaceForModalGroup:v26, 0];
    [(PKPassGroupStackView *)self _scaleForGroupView:v23 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v23] forState:5];
    v28 = v27;
    v29 = self->_modallyPresentedGroupView;
    self->_modallyPresentedGroupView = v23;
    v30 = v23;

    v31 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
    [(PKPassGroupStackView *)self _generateModalGroupPileWithVisibleIndexes:v31 reservePlaceForModalGroup:v32, 0];

    [v8 center];
    v47 = v22;
    v33 = v12 * v22;
    v34 = v14 * v22;
    v35 = v16;
    v37 = v36 + (v16 - v16) * v33;
    v39 = v38 + (v20 - v18) * v34;
    [(PKPassGroupStackView *)self bounds];
    v42 = v41 + (v40 - v12 * v28) * 0.5 + v16 * (v12 * v28);
    v45 = v43 + v44;
    [(PKPassGroupStackView *)self _pileBaseHeight];
    [(PKPassGroupViewVerticalPanAnimator *)v48 beginPanningFromStartingTouchPosition:v37 to:v39 anchoredAt:v42 scalingFrom:v45 - v46 + v20 * (v14 * v28) to:v35, v20, v47, v28];
  }
}

- (void)_endGroupPanWithAnimator:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[14];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 velocityInView:0];
  v9 = v8;
  [v7 translationInView:0];
  if (v10 < 80.0 || v9 < 0.0)
  {
    [(PKPassGroupViewVerticalPanAnimator *)v5 currentTouchPosition];
    v12 = 0.0;
    v13 = 0.0;
    if (v5)
    {
      v13 = *(v5 + 176);
    }

    v14 = v13 - v11;
    if (v14 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v9 / v14;
    }

    v16 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
    [v16 setVelocity:v15];
    v17 = 0;
    if (v5)
    {
      v17 = *(v5 + 136);
      v12 = *(v5 + 144);
    }

    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:0];
    [(PKPassGroupStackView *)self _yForGroupInModalPileOfType:0 withModalGroupY:v12 scale:v18];
    v20 = v19;
    v21 = [v16 highFrameRateSpringAnimationWithKeyPath:@"position" reason:1];
    v22 = [v16 highFrameRateSpringAnimationWithKeyPath:@"transform" reason:1];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke;
    v41[3] = &unk_1E80240A8;
    v41[4] = self;
    v44 = v17;
    v45 = v12;
    v46 = v17;
    v47 = v20;
    v23 = v21;
    v42 = v23;
    v24 = v22;
    v43 = v24;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v41];
    [(UIView *)self->_passFooterView pkui_setAlpha:v16 withAnimationFactory:0 completion:self->_passFooterViewAlpha];
    passFooterViewAlpha = self->_passFooterViewAlpha;
    v26 = 0.0;
    if (passFooterViewAlpha < 1.0)
    {
      v26 = (1.0 - passFooterViewAlpha) * 10.0;
    }

    if (passFooterViewAlpha > 0.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 10.0;
    }

    [(PKPassFooterView *)self->_passFooterView blurRadius];
    if (v28 != v27)
    {
      if (v16)
      {
        v29 = v28;
        v30 = +[PKPassFooterView blurRadiusKeyPath];
        v31 = [v16 springAnimationWithKeyPath:v30];

        [v31 pkui_updateForAdditiveAnimationFromScalar:v29 toScalar:v27];
        v32 = [(PKPassFooterView *)self->_passFooterView layer];
        v33 = [v32 pkui_addAdditiveAnimation:v31];
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_4;
      v40[3] = &unk_1E80119C8;
      v40[4] = self;
      *&v40[5] = v27;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v40];
    }

    if (v5)
    {
      v34 = *(v5 + 104);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    [v35 updatePageControlFrameAnimated:1];
    [v35 clearPageControlAlphaOverride];
    [(PKPassGroupView *)self->_modallyPresentedGroupView setPresentationState:3 animated:1];
    v36 = *(&self->_layoutState + 28);
    *(&self->_layoutState + 28) = v36 | 0x800;
    [(PKPassGroupStackView *)self setPresentationState:5 animated:1];
    *(&self->_layoutState + 28) = *(&self->_layoutState + 28) & 0xF7FF | v36 & 0x800;
  }

  else
  {
    objc_initWeak(&location, self);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_5;
    v37[3] = &unk_1E8011180;
    objc_copyWeak(&v38, &location);
    [(PKPassGroupViewVerticalPanAnimator *)v5 dismissWithStartVelocity:v37 completion:v9];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }
}

void __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a1[4];
  v10 = v7;
  if (v9[275] != v7)
  {
    if (![v9 _isGroupAtIndexInModalPile:a3])
    {
      goto LABEL_14;
    }

    v10 = *(a1[4] + 2200);
  }

  v11 = v10 == v7;
  v12 = 10;
  if (v11)
  {
    v12 = 8;
  }

  v13 = 9;
  if (v11)
  {
    v13 = 7;
  }

  v14 = a1[v13];
  v15 = a1[v12];
  v16 = [v7 layer];
  v17 = a1[5];
  [v16 position];
  [v17 pkui_updateForAdditiveAnimationFromPoint:? toPoint:?];
  [v16 addAnimation:a1[5] forKey:@"modalPanGestureRecovery"];
  v18 = MEMORY[0x1E69DD250];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_2;
  v45[3] = &unk_1E8012188;
  v19 = v7;
  v46 = v19;
  v47 = v14;
  v48 = v15;
  [v18 performWithoutAnimation:v45];
  v20 = a1[4];
  if (v20[275] != v19)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    [v20 _transformForGroupView:v19 atIndex:a3 forState:v20[271]];
    v21 = a1[6];
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    [v21 pkui_updateForAdditiveAnimationFromTransform:v36 toTransform:v35];
    v22 = [v16 pkui_addAdditiveAnimation:a1[6]];
    v23 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_3;
    v25[3] = &unk_1E80121B0;
    v24 = v19;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v26 = v24;
    [v23 performWithoutAnimation:v25];
  }

LABEL_14:
}

uint64_t __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  return [v1 setTransform3D:v7];
}

void __49__PKPassGroupStackView__endGroupPanWithAnimator___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPresentationState:4 animated:1];
  }
}

- (BOOL)_updateHeaderContext:(id *)a3 toContext:(id)a4 animated:(BOOL)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3)
  {
    v9 = *a3;
    if (PKEqualObjects())
    {
      v10 = 0;
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__PKPassGroupStackView__updateHeaderContext_toContext_animated___block_invoke;
      aBlock[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
      v50 = a5;
      v11 = _Block_copy(aBlock);
      if (v9)
      {
        v12 = v9[5];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (v8)
      {
        v14 = v8[5];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = v13 != v15;

      if (v13 && v13 != v15)
      {
        v11[2](v11, v13);
      }

      if (v9)
      {
        v17 = v9[6];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v36 = [v18 pk_createArrayByApplyingBlock:&__block_literal_global_159_0];

      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v40 = v8;
      v38 = a4;
      v37 = v13;
      if (v8)
      {
        v20 = v8[6];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v46;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v46 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v45 + 1) + 8 * i);
            if (v26)
            {
              v26 = v26[1];
            }

            v27 = v26;
            [v19 addObject:{v27, v36, v37}];
          }

          v23 = [v21 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v23);
      }

      v39 = v9;

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = v36;
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v42;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v41 + 1) + 8 * j);
            v34 = [v19 indexOfObjectIdenticalTo:{v33, v36}];
            if (v34 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v11[2](v11, v33);
              v16 = 1;
            }

            else
            {
              [v19 removeObjectAtIndex:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v30);
      }

      v10 = [v19 count] != 0 || v16;
      objc_storeStrong(a3, v38);

      v9 = v39;
      v8 = v40;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __64__PKPassGroupStackView__updateHeaderContext_toContext_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 superview];

  if (v4)
  {
    if (*(a1 + 32) == 1)
    {
      v5 = [v3 layer];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __64__PKPassGroupStackView__updateHeaderContext_toContext_animated___block_invoke_2;
      v6[3] = &unk_1E8011D28;
      v7 = v3;
      [v5 pkui_animateToOpacity:v6 withCompletion:0.0];
    }

    else
    {
      [v3 removeFromSuperview];
    }
  }
}

uint64_t __64__PKPassGroupStackView__updateHeaderContext_toContext_animated___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_updateHeaderFooterStateAnimated:(BOOL)a3 layout:(BOOL)a4
{
  v33 = a4;
  v4 = a3;
  p_layoutState = &self->_layoutState;
  v40 = *&self->_layoutState.groups.count;
  v41 = *(&self->_layoutState.groups + 2);
  v7 = (*(&self->_layoutState + 56) >> 1) & 6 | self->_parentViewControllerWantsNavigationBar;
  [(PKPassGroupStackView *)self frame];
  v9 = v8;
  v10 = *(p_layoutState + 28);
  if ((v10 & 4) != 0)
  {
    paymentHeaderContext = self->_paymentHeaderContext;
    v36 = v40;
    v37 = v41;
    v38 = v7;
    memset(v39, 0, sizeof(v39));
    v12 = [(PKPGSVSectionHeaderContext *)v8 createUpdatedHeaderContextForGroupStackView:self passType:1 withState:&v36 hasPriorSection:0 currentContext:paymentHeaderContext allowHeader:(v10 >> 4) & 1 allowSubheaders:(v10 >> 6) & 1 containerWidth:?];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PKPassGroupStackView *)self _updateHeaderContext:&self->_paymentHeaderContext toContext:v12 animated:v4];

  v14 = *(p_layoutState + 28);
  if ((v14 & 8) != 0)
  {
    passHeaderContext = self->_passHeaderContext;
    v36 = v40;
    v37 = v41;
    v38 = v7;
    memset(v39, 0, sizeof(v39));
    v15 = [(PKPGSVSectionHeaderContext *)v9 createUpdatedHeaderContextForGroupStackView:self passType:0 withState:&v36 hasPriorSection:(v10 & 4) != 0 currentContext:passHeaderContext allowHeader:(v14 >> 5) & 1 allowSubheaders:(v14 >> 7) & 1 containerWidth:?];
  }

  else
  {
    v15 = 0;
  }

  v17 = [(PKPassGroupStackView *)self _updateHeaderContext:&self->_passHeaderContext toContext:v15 animated:v4];
  v18 = self->_footerView;
  v19 = v18;
  if ((*(p_layoutState + 28) & 0x100) == 0)
  {
    if (!v18)
    {
      goto LABEL_16;
    }

    footerView = self->_footerView;
    self->_footerView = 0;

    v21 = [v19 layer];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__PKPassGroupStackView__updateHeaderFooterStateAnimated_layout___block_invoke;
    v34[3] = &unk_1E8011D28;
    v19 = v19;
    v35 = v19;
    [v21 pkui_animateToOpacity:v34 withCompletion:0.0];

    v22 = [(UIImageView *)self->_footerPocketBackgroundShadow layer];
    [v22 pkui_animateToOpacity:0 withCompletion:0.0];

    v23 = [(UIImageView *)self->_footerPocketForegroundShadow layer];
    [v23 pkui_animateToOpacity:0 withCompletion:0.0];

    v24 = v35;
    goto LABEL_15;
  }

  if (v18)
  {
LABEL_11:
    v25 = 0.0;
    if ((*(&p_layoutState->groups + 16) & 4) != 0 && p_layoutState->groups.count > 1)
    {
      v25 = 1.0;
    }

    self->_footerPocketForegroundShadowAlpha = v25;
    v26 = [(UIImageView *)self->_footerPocketBackgroundShadow layer];
    [v26 pkui_animateToOpacity:0 withCompletion:1.0];

    v24 = [(UIImageView *)self->_footerPocketForegroundShadow layer];
    [v24 pkui_animateToOpacity:0 withCompletion:self->_footerPocketForegroundShadowAlpha];
LABEL_15:

    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained(&self->_datasource);
    v19 = [v30 footerForGroupStackView:self];
    objc_storeStrong(&self->_footerView, v19);

    [v19 frame];
    self->_footerViewMinimumHeight = v31;
    v32 = [(UIView *)self->_footerView layer];
    [v32 setAnchorPoint:{0.5, 0.0}];

    if (v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_16:
  if (v33)
  {
    [(PKPassGroupStackView *)self layoutHeaderFootersAnimated:v4];
  }

  return v17 || v13;
}

- (BOOL)discoveryGalleryHasWelcomeCards
{
  v3 = *&self->_layoutState.groups.count;
  v4 = *(&self->_layoutState.groups + 2);
  v5 = (*(&self->_layoutState + 56) >> 1) & 6;
  return [PKDiscoveryGalleryView isWelcomeCardVisibleForSectionsState:&v3];
}

- (void)_updateContentSizeAndLayout:(BOOL)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  if ([(PKPassGroupStackView *)self _updateContentSizeWithPriorBounds:v8 bounds:v7]|| v4)
  {
    [(PKPassGroupStackView *)self layoutHeaderFootersAnimated:v5];
    [(PKPassGroupStackView *)self _layoutContentFromOffset:v5 toOffset:v8[0] animated:v7[0]];
    [(PKPassGroupStackView *)self tilePassesEagerly:0];
    if (!v5)
    {
      [(PKPassGroupStackView *)self layoutIfNeeded];
    }
  }
}

- (BOOL)_updateContentSizeWithPriorBounds:(CGRect *)a3 bounds:(CGRect *)a4
{
  [(PKPassGroupStackView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  self->_lastBoundsSize.width = v11;
  self->_lastBoundsSize.height = v13;
  [(PKPassGroupStackView *)self contentSize];
  v16 = v15;
  v18 = v17;
  [(PKPassGroupStackView *)self _contentSize];
  v21 = v18 != v20 || v16 != v19;
  if (v21)
  {
    [(PKPassGroupStackView *)self setContentSize:?];
  }

  if (a3)
  {
    a3->origin.x = v8;
    a3->origin.y = v10;
    a3->size.width = v12;
    a3->size.height = v14;
  }

  if (a4)
  {
    if (v21)
    {
      [(PKPassGroupStackView *)self bounds];
      v8 = v22;
      v10 = v23;
      v12 = v24;
      v14 = v25;
    }

    a4->origin.x = v8;
    a4->origin.y = v10;
    a4->size.width = v12;
    a4->size.height = v14;
  }

  return v21;
}

- (double)_yPositionForGroupAtIndex:(unint64_t)a3 forState:(int64_t)a4
{
  if (a4 <= 4)
  {
    if ((a4 - 1) >= 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {

          [(PKPassGroupStackView *)self _yForGroupInTableAtIndex:?];
          return result;
        }

        return a3 * self->_layoutState.groupCellHeight + -3.0;
      }

      if (self->_modalGroupIndex == a3 || self->_layoutState.groups.count == 1 || [(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a3])
      {
        [(PKPassGroupStackView *)self bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [(PKPassGroupStackView *)self convertRect:0 toView:?];
        v22 = v21;
        modallyPresentedGroupView = self->_modallyPresentedGroupView;
        if (modallyPresentedGroupView && (-[PKPassGroupView frontmostPassView](modallyPresentedGroupView, "frontmostPassView"), v24 = objc_claimAutoreleasedReturnValue(), [v24 pass], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "style"), v25, v24, (v26 = self->_modallyPresentedGroupView) != 0))
        {
          [(PKPassGroupView *)v26 bounds];
          v28 = v27;
        }

        else
        {
          PKPassViewFrontSize();
          v28 = v35;
        }

        v51.origin.x = v14;
        v51.origin.y = v16;
        v51.size.width = v18;
        v51.size.height = v20;
        v36 = CGRectGetMinY(v51) - v22 - v28;
        PKPassFaceShadowInsets();
        v38 = v36 - v37;
        PKPassFaceShadowInsets();
        return v38 - v39;
      }
    }

LABEL_27:
    [(PKPassGroupStackView *)self bounds];
    return CGRectGetMaxY(v50) + 40.0;
  }

  switch(a4)
  {
    case 5:
      v11 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
      v12 = self->_modallyPresentedGroupView;

      if (v11 == v12)
      {
        v32 = self;
        v33 = 0;
LABEL_34:

        [(PKPassGroupStackView *)v32 _yForModallyPresentedGroupOfType:v33];
        return result;
      }

      if ([(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a3])
      {
        v9 = self;
        v10 = 0;
LABEL_17:

        [(PKPassGroupStackView *)v9 _yForGroupInModalPileOfType:v10 atIndex:a3];
        return result;
      }

      v41 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexesIgnoringBottomInset:1];
      v42 = v40;
      if (a3 < v41 || a3 - v41 >= v40)
      {
        v43 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
        [(PKPassGroupStackView *)self bounds];
        MaxY = CGRectGetMaxY(v52);
        v45 = [v43 frontmostPassView];
        v46 = [v45 pass];
        [v46 style];
        PKPassFaceShadowInsets();
        v29 = MaxY + v47;

        if (v41 + v42 <= a3)
        {
          [(PKPassGroupStackView *)self _pileAscenderHeight];
          v29 = v29 + v48;
        }

        return v29;
      }

      [(PKPassGroupStackView *)self _yForGroupInPileAtIndex:a3];
      break;
    case 6:
      v30 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
      v31 = self->_modallyPresentedGroupView;

      if (v30 == v31)
      {
        v34 = self->_modallyPresentedGroupView;

        [(PKPassGroupStackView *)self _yForSingleGroupView:v34];
      }

      else
      {

        [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a3 forState:2];
      }

      break;
    case 7:
      v7 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
      v8 = self->_modallyPresentedGroupView;

      if (v7 != v8)
      {
        if (![(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a3])
        {
          goto LABEL_27;
        }

        v9 = self;
        v10 = 1;
        goto LABEL_17;
      }

      v32 = self;
      v33 = 1;
      goto LABEL_34;
    default:
      return a3 * self->_layoutState.groupCellHeight + -3.0;
  }

  return result;
}

- (unint64_t)_indexForNativeY:(double)a3 inBounds:(CGRect)a4 roundToClosestIndex:(BOOL)a5
{
  v5 = a5;
  p_layoutState = &self->_layoutState;
  if (self->_layoutState.groups.separatorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    [(PKPassGroupStackView *)self _nativeYForGroupInTableAtIndex:?];
    if (v13 <= a3)
    {
      v14 = v13;
      v15 = v13 + p_layoutState->groupCellHeight;
      [(PKPassGroupStackView *)self _nativeYForGroupInTableAtIndex:p_layoutState->groups.separatorIndex + 1];
      v17 = fmax(v15, v16);
      if (v17 <= a3)
      {
        a3 = a3 - (v17 - v15);
      }

      else
      {
        [(PKPassGroupStackView *)self _minimumNativeYInBounds:x, y, width, height];
        if (v18 > v17 || v18 <= v14)
        {
          v18 = v14;
        }

        a3 = v15 * ((a3 - v18) / (v17 - v18)) + (1.0 - (a3 - v18) / (v17 - v18)) * v14;
      }
    }
  }

  v20 = *(p_layoutState + 28);
  if ((v20 & 4) == 0)
  {
    v21 = 0.0;
    if ((v20 & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v21 = v21 + [(PKPGSVSectionHeaderContext *)self->_passHeaderContext totalHeight];
    goto LABEL_17;
  }

  v21 = [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext totalHeight]+ 0.0;
  if ((*(&p_layoutState->groups + 16) & 2) == 0 && (*(p_layoutState + 28) & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v22 = fmax(a3 - v21, 0.0) / p_layoutState->groupCellHeight;
  v23 = round(v22);
  if (v5)
  {
    v22 = v23;
  }

  v24 = fmax(v22, 0.0);
  v25 = p_layoutState->groups.count - 1;
  if (!p_layoutState->groups.count)
  {
    v25 = 0;
  }

  if (v25 >= v24)
  {
    return v24;
  }

  else
  {
    return v25;
  }
}

- (double)_nativeYForGroupInTableAtIndex:(unint64_t)a3
{
  v5 = [(PKPGSVSectionHeaderContext *)self->_paymentHeaderContext totalHeight]+ a3 * self->_layoutState.groupCellHeight;
  separatorIndex = self->_layoutState.groups.separatorIndex;
  if (separatorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*(&self->_layoutState.groups + 16) & 6) == 4)
    {
      v7 = [(PKPGSVSectionHeaderContext *)self->_passHeaderContext totalHeight];
      return v5 + v7;
    }
  }

  else if (separatorIndex < a3)
  {
    separationPadding = self->_layoutState.separationPadding;
    v7 = separationPadding + [(PKPGSVSectionHeaderContext *)self->_passHeaderContext totalHeight];
    return v5 + v7;
  }

  return v5;
}

- (double)_transformedYForNativeY:(double)a3 inBounds:(CGRect)a4 index:(unint64_t)a5
{
  height = a4.size.height;
  y = a4.origin.y;
  top = self->_lastBoundsInsets.top;
  if (self->_parentViewControllerWantsNavigationBar && a4.origin.y >= 0.0)
  {
    v9 = top + a3;
    PKPassFaceShadowInsets();
    v11 = v10;
    v13 = v12;
    PKPassMaxFrontSize();
    return fmax(fmin(v9, y + height + v11 + self->_layoutState.groupCellHeight), y - v14 - v13 - self->_layoutState.groupCellHeight);
  }

  else
  {
    PKPassStackScrollingAdjustedPosition();
    v17 = top + v16;
    v18 = y + self->_lastBoundsInsets.top;
    PKPassFaceShadowInsets();
    return fmax(fmin(v17, y + height + v19 + self->_layoutState.groupCellHeight), v18);
  }
}

- (double)_nativeYForTransformedY:(double)result inBounds:(CGRect)a4
{
  result = result - self->_lastBoundsInsets.top;
  if (!self->_parentViewControllerWantsNavigationBar || a4.origin.y < 0.0)
  {
    MEMORY[0x1EEE24E98](*&result, a4.origin.y);
  }

  return result;
}

- (double)_yForGroupInTableAtIndex:(unint64_t)a3
{
  [(PKPassGroupStackView *)self bounds];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (self->_layoutState.groups.count <= a3)
  {
    MaxY = CGRectGetMaxY(*&v5);
    PKPassFaceShadowInsets();
    return MaxY + v15;
  }

  if ([(PKPassGroupStackView *)self isTableModalPresentation])
  {

    [(PKPassGroupStackView *)self _yForModallyPresentedGroupOfType:0];
    return result;
  }

  [(PKPassGroupStackView *)self _nativeYForGroupInTableAtIndex:a3];
  v17 = v16;
  paymentHeaderContext = self->_paymentHeaderContext;
  if (paymentHeaderContext)
  {
    v19 = paymentHeaderContext->_subheaderContexts;
    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  passHeaderContext = self->_passHeaderContext;
  if (passHeaderContext)
  {
    v22 = passHeaderContext->_subheaderContexts;
    v23 = v22 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = v20 + a3;
  separatorIndex = self->_layoutState.groups.separatorIndex;
  v26 = separatorIndex == 0x7FFFFFFFFFFFFFFFLL || separatorIndex >= a3;
  if (!v26 || (*(&self->_layoutState.groups + 16) & 2) == 0)
  {
    v24 += v23;
  }

  [(PKPassGroupStackView *)self _transformedYForNativeY:v24 inBounds:v17 index:v9, v10, v11, v12];
  v28 = v27;
  reorderingFlags = self->_reorderingFlags;
  if ((*&reorderingFlags & 1) == 0)
  {
    goto LABEL_28;
  }

  indexOfReorderedGroup = self->_indexOfReorderedGroup;
  previousIndexOfReorderedGroup = self->_previousIndexOfReorderedGroup;
  if (indexOfReorderedGroup == previousIndexOfReorderedGroup)
  {
    if (indexOfReorderedGroup != a3)
    {
      goto LABEL_28;
    }

LABEL_25:
    v32 = (*&reorderingFlags >> 1) & 1;
    goto LABEL_30;
  }

  if (indexOfReorderedGroup == a3)
  {
    goto LABEL_25;
  }

  if (previousIndexOfReorderedGroup != a3)
  {
LABEL_28:
    v33 = self;
    indexOfReorderedGroup = a3;
    goto LABEL_29;
  }

  v33 = self;
LABEL_29:
  v34 = [(PKPassGroupStackView *)v33 _groupViewAtIndex:indexOfReorderedGroup];
  v32 = [v34 isPressed];

LABEL_30:
  result = v28 + -15.0;
  if (!v32)
  {
    return v28;
  }

  return result;
}

- (double)_yForModallyPresentedGroupOfType:(unsigned __int8)a3
{
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    *&a3 = 2;
LABEL_4:
    [(PKPassGroupStackView *)self _yForModalPositionOfType:a3];
    return result;
  }

  __break(1u);
  return result;
}

- (double)_yForModalPositionOfType:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(PKPassGroupView *)self->_modallyPresentedGroupView frontmostPassView];
  v6 = [v5 pass];

  if (v6)
  {
    v7 = [v6 passType] == 1 || PKValueAddedServicesEnabledForPass() != 0;
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 2)
  {
    if (v3 != 2 || !v7 && ![(PKPassGroupStackView *)self _isExternalModalPresentationAllowed])
    {
      goto LABEL_31;
    }

    context = self->_externalVC.context;
    if (!context || !context->_sending || (v23 = context->_transitionState) == 0)
    {
      [(PKPassGroupStackView *)self bounds];
      v33 = v32 + self->_lastBoundsInsets.top;
      +[PKDashboardPassFlowLayout topMarginInFirstSection];
      v21 = v33 + v34;
      goto LABEL_36;
    }

    v24 = v23;
    v25 = v23->_destinationLayoutState;
    v26 = v25;
    if (v25)
    {
      scale = v25->_viewControllerFrame.bounds.transform.scale;
      position = v25->_viewFrame.position;
      origin = v25->_viewControllerFrame.bounds.origin;
      if (scale == 1.0)
      {
        v30 = vsubq_f64(position, origin);
LABEL_35:
        [(PKPassthroughView *)self->_passContainerView convertPoint:self->_externalVCContainerView fromView:*&v30];
        v21 = v38;

        goto LABEL_36;
      }

      size = v25->_viewControllerFrame.bounds.size;
      anchorPoint = v25->_viewControllerFrame.bounds.anchorPoint;
      v37 = v25->_viewControllerFrame.position;
    }

    else
    {
      position = 0uLL;
      scale = 0.0;
      anchorPoint = 0uLL;
      size = 0uLL;
      origin = 0uLL;
      v37 = 0uLL;
    }

    v30 = vmlaq_f64(v37, vmulq_n_f64(size, scale), vdivq_f64(vsubq_f64(position, vmlaq_f64(origin, size, anchorPoint)), size));
    goto LABEL_35;
  }

  if (!v7 && ![(PKPassGroupStackView *)self _isModalPresentationAllowed])
  {
LABEL_31:
    [(PKPassGroupStackView *)self _yForSingleGroupView:self->_modallyPresentedGroupView];
    v21 = v31;
    goto LABEL_36;
  }

  top = self->_lastBoundsInsets.top;
  v9 = PKUIGetMinScreenType();
  v10 = 15.0;
  if (!v9)
  {
    v10 = 5.0;
  }

  v11 = top + v10;
  if ([(PKPassGroupStackView *)self isTableModalPresentation]&& (*(&self->_layoutState + 28) & 2) == 0)
  {
    v12 = self->_lastBoundsInsets.top;
    v13 = [(PKPassGroupStackView *)self _firstHeaderContext];
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 56);
      [(PKPGSVSectionHeaderContext *)v13 _headerViewSize];
      v17 = v14[9] + v15 + v16;
    }

    else
    {
      v17 = 0.0;
    }

    v11 = fmax(v11, v12 + v17);
  }

  if (!v3 && (*(&self->_layoutState + 28) & 0x400) != 0)
  {
    LAUIPhysicalButtonNormalizedFrame();
    CGRectGetMaxY(v40);
    v18 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v18 bounds];
    PKFloatRoundToPixel();
    v11 = fmax(v11, v19 + 26.0);
  }

  v20 = 0.0;
  if (self->_presentationState != 4)
  {
    [(PKPassGroupStackView *)self bounds];
  }

  v21 = v11 + v20;
LABEL_36:

  return v21;
}

- (double)_yForSingleGroupView:(id)a3
{
  [a3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  [(PKPassGroupStackView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (self->_presentationState == 4)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  p_lastBoundsInsets = &self->_lastBoundsInsets;
  v15 = v13 + self->_lastBoundsInsets.top;
  if ([(PKPassGroupStackView *)self isTableModalPresentation]&& (*(&self->_layoutState + 28) & 2) == 0)
  {
    v16 = [(PKPassGroupStackView *)self _firstHeaderContext];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 56);
      [(PKPGSVSectionHeaderContext *)v16 _headerViewSize];
      v20 = v17[9] + v18 + v19;
    }

    else
    {
      v20 = 0.0;
    }

    v15 = v15 + v20;
  }

  left = p_lastBoundsInsets->left;
  v22 = v8 + left;
  v23 = v13 + p_lastBoundsInsets->top;
  v24 = v10 - (left + p_lastBoundsInsets->right);
  v25 = v12 - (p_lastBoundsInsets->top + p_lastBoundsInsets->bottom);
  UIRectCenteredYInRect();
  v27 = v26;
  v29.origin.x = v22;
  v29.origin.y = v23;
  v29.size.width = v24;
  v29.size.height = v25;
  return fmax(fmin(v27, CGRectGetMaxY(v29) - v5), v15);
}

- (double)_maxYOfPassFrontFaceAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v6 = [WeakRetained groupAtIndex:a3];

  v7 = [v6 passAtIndex:{objc_msgSend(v6, "frontmostPassIndex")}];
  v8 = v7;
  if (v7)
  {
    [v7 style];
  }

  [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a3 forState:4];
  v10 = v9;
  PKPassFrontFaceContentSize();
  v12 = v10 + v11;

  return v12;
}

- (unint64_t)_maximumNumberOfVisiblePilePasses
{
  if (self->_pileCache.maximum.populated)
  {
    return self->_pileCache.maximum.state.length;
  }

  self->_pileCache.maximum.constant = xmmword_1BE116E50;
  self->_pileCache.maximum.state = xmmword_1BE116E60;
  self->_pileCache.maximum.populated = 1;
  return 4;
}

- (double)_pileAscenderHeightForPileIndex:(unint64_t)a3 separationHeight:(double *)a4
{
  p_pileCache = &self->_pileCache;
  populated = self->_pileCache.maximum.populated;
  if (populated)
  {
    logDecay = self->_pileCache.maximum.constant.logDecay;
    v9 = self->_pileCache.maximum.constant.decay + -1.0;
  }

  else
  {
    v9 = -0.04171603;
    logDecay = -0.0426111253;
  }

  if (!self->_pileCache.populated || (length = self->_pileCache.state.length, length != 4))
  {
    v11 = v9 * 30.0 / (exp(logDecay * 3.0) + -1.0);
    p_pileCache->state.initialSeparation = v11;
    length = 4;
    p_pileCache->state.length = 4;
    if (populated)
    {
      if (v11 >= p_pileCache->maximum.state.initialSeparation)
      {
        length = 4;
      }

      else
      {
        p_pileCache->state = p_pileCache->maximum.state;
        length = p_pileCache->state.length;
        if (length >= 4)
        {
          length = 4;
        }

        p_pileCache->state.length = length;
      }
    }

    p_pileCache->populated = 1;
  }

  initialSeparation = p_pileCache->state.initialSeparation;
  if (length <= 1)
  {
    length = 1;
  }

  v13 = length - 1;
  if (length - 1 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = length - 1;
  }

  v15 = initialSeparation / v9;
  v16 = initialSeparation / v9 * (exp(logDecay * v14) + -1.0);
  if (a4)
  {
    if (a3)
    {
      v17 = a3 - 1;
      if (v13 < a3 - 1)
      {
        v17 = v13;
      }

      v18 = v16 - v15 * (exp(logDecay * v17) + -1.0);
    }

    else
    {
      v18 = 10.0;
    }

    *a4 = v18;
  }

  return v16;
}

- (unint64_t)_numberOfVisiblePilePasses
{
  v3 = [(NSMutableArray *)self->_passPileViews count];
  if (v3 >= [(PKPassGroupStackView *)self _maximumNumberOfVisiblePilePasses])
  {

    return [(PKPassGroupStackView *)self _maximumNumberOfVisiblePilePasses];
  }

  else
  {
    passPileViews = self->_passPileViews;

    return [(NSMutableArray *)passPileViews count];
  }
}

- (double)_pileAscenderHeightForGroupViewInPile:(id)a3 pileIndex:(unint64_t *)a4 separationHeight:(double *)a5
{
  v8 = a3;
  if (![(NSMutableArray *)self->_passPileViews count])
  {
    goto LABEL_4;
  }

  v9 = [(NSMutableArray *)self->_passPileViews indexOfObjectIdenticalTo:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v9;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  passPileViews = self->_passPileViews;
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [(NSMutableArray *)passPileViews indexOfObjectIdenticalTo:v11];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v12 = 1;
  }

  if (a4)
  {
LABEL_6:
    *a4 = v12;
  }

LABEL_7:
  [(PKPassGroupStackView *)self _pileAscenderHeightForPileIndex:v12 separationHeight:a5];
  v14 = v13;

  return v14;
}

- (double)_pileBaseHeight
{
  v2 = [(NSMutableArray *)self->_passPileViews count];
  result = 69.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)_yForGroupInModalPileOfType:(unsigned __int8)a3 atIndex:(unint64_t)a4
{
  if (a3 == 1)
  {
    if (!self->_modallyPresentedGroupView)
    {
      [(PKPassGroupStackView *)self bounds];
      return CGRectGetMaxY(v15) + 40.0;
    }

    [(PKPassGroupStackView *)self _yForModallyPresentedGroupOfType:1, a4];
    v6 = v11;
    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:1];
    v8 = v12;
    v9 = self;
    v10 = 1;
    goto LABEL_7;
  }

  if (a3)
  {
    __break(1u);
    return result;
  }

  if (self->_modallyPresentedGroupView)
  {
    [(PKPassGroupStackView *)self _yForModallyPresentedGroupOfType:0, a4];
    v6 = v5;
    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:0];
    v8 = v7;
    v9 = self;
    v10 = 0;
LABEL_7:

    [(PKPassGroupStackView *)v9 _yForGroupInModalPileOfType:v10 withModalGroupY:v6 scale:v8];
    return result;
  }

  [(PKPassGroupStackView *)self _yForGroupInPileAtIndex:a4];
  return result;
}

- (double)_yForGroupInModalPileOfType:(unsigned __int8)a3 withModalGroupY:(double)a4 scale:(double)a5
{
  [(PKPassGroupStackView *)self _maximumScaleForModalPileGroupWithModalScale:a3, a5];
  PKFloatRoundToPixel();
  return v6 + a4;
}

- (double)_yForGroupInPileAtIndex:(unint64_t)a3
{
  if (self->_layoutState.pilingMode)
  {

    [(PKPassGroupStackView *)self _yForGroupInOffscreenPileAtIndex:a3];
  }

  else
  {
    v5 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 0.0;
    [(PKPassGroupStackView *)self _pileBaseHeight];
    v7 = v6;
    [(PKPassGroupStackView *)self _pileAscenderHeightForGroupViewInPile:v5 pileIndex:&v19 separationHeight:&v20];
    v9 = v7 + v8;
    if (v19)
    {
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (self->_featuredGroupID)
        {
          modallyPresentedGroupView = self->_modallyPresentedGroupView;
          if (modallyPresentedGroupView)
          {
            v11 = [(PKPassGroupView *)modallyPresentedGroupView frontmostPassView];
            v12 = [v11 pass];
            if ([v12 style] == 6)
            {
              featuredGroupID = self->_featuredGroupID;
              v14 = [v5 group];
              v15 = [v14 groupID];
              LODWORD(featuredGroupID) = [(NSNumber *)featuredGroupID isEqual:v15];

              if (featuredGroupID)
              {
                v16 = v9 - v20;
                [(PKPassGroupStackView *)self _relativeScaleForPileGroupAtPileIndex:v19 ofType:0];
                v9 = v16 + v17 * 44.0;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    [(PKPassGroupStackView *)self bounds];
    v18 = CGRectGetMaxY(v22) - v9;

    return v18;
  }

  return result;
}

- (double)_yForGroupInOffscreenPileAtIndex:(unint64_t)a3
{
  v4 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
  [(PKPassGroupStackView *)self _pileAscenderHeight];
  v6 = v5;
  [(PKPassGroupStackView *)self _pileAscenderHeightForGroupViewInPile:v4 pileIndex:0 separationHeight:0];
  v8 = v7;
  [(PKPassGroupStackView *)self bounds];
  MaxY = CGRectGetMaxY(v15);
  v10 = [v4 frontmostPassView];
  v11 = [v10 pass];
  [v11 style];
  PKPassFaceShadowInsets();
  v13 = MaxY + v12;

  return v6 - v8 + v13;
}

- (unint64_t)_indexOfGroupView:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v6 = [v4 group];

  v7 = [WeakRetained indexOfGroup:v6];
  return v7;
}

- (CGRect)_xFrameForGroupViewInState:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  [(PKPassGroupStackView *)self bounds];

  PKSizeAlignedInRect();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_opacityForGroupAtIndex:(unint64_t)a3 withGroupView:(id)a4 forState:(int64_t)a5
{
  v8 = a4;
  v9 = v8;
  v10 = 1.0;
  if (a5 == 7)
  {
    if (self->_modalGroupIndex != a3 && (!v8 || self->_modallyPresentedGroupView != v8))
    {
      v10 = 0.0;
    }
  }

  else if (a5 == 5 && self->_modalGroupIndex != a3 && (!v8 || self->_modallyPresentedGroupView != v8))
  {
    v10 = 0.0;
    if (![(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a3])
    {
      v11 = [(PKPassGroupStackView *)self _rangeOfVisibleIndexes];
      if (a3 - v11 < v12 && a3 >= v11)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }
    }
  }

  return v10;
}

- (double)_scaleForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5
{
  v8 = a3;
  if (a5 == 7 || a5 == 5)
  {
    if (self->_modallyPresentedGroupView != v8)
    {
      if ([(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a4])
      {
        [(PKPassGroupStackView *)self _scaleForModalPileGroupAtIndex:a4 ofType:a5 == 7];
      }

      else
      {
        if (a5 == 7)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (![(NSMutableArray *)self->_passPileViews count]|| (v19 = [(NSMutableArray *)self->_passPileViews indexOfObjectIdenticalTo:v8], v19 == 0x7FFFFFFFFFFFFFFFLL))
        {
          [(PKPassGroupStackView *)self bounds];
          [(PKPassGroupStackView *)self _maximumNativeYInBounds:?];
          if ([PKPassGroupStackView _indexForNativeY:"_indexForNativeY:inBounds:roundToClosestIndex:" inBounds:0 roundToClosestIndex:?]<= a4)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        [(PKPassGroupStackView *)self _scaleForPileGroupAtPileIndex:v19 ofType:a5 == 7];
      }

      goto LABEL_23;
    }

    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:a5 == 7];
    v9 = v11;
    context = self->_externalVC.context;
    if (context && context->_sending)
    {
      v13 = context->_transition;
      v14 = v13;
      if (v13)
      {
        if (v13->_interactive)
        {
          interactiveProgress = v13->_interactiveProgress;
          [(PKPassGroupStackView *)self _scaleForTableGroup];
          if (interactiveProgress < 1.0)
          {
            v17 = log(v16);
            v18 = log(v9);
            v9 = exp(v18 * interactiveProgress + (1.0 - interactiveProgress) * v17);
          }
        }
      }
    }
  }

  else
  {
    v9 = 1.0;
    if (a5 == 4)
    {
      [(PKPassGroupStackView *)self _scaleForTableGroup];
LABEL_23:
      v9 = v10;
    }
  }

  return v9;
}

- (double)_scaleForModallyPresentedGroupOfType:(unsigned __int8)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = PKUIGetMinScreenWidthType();
      result = 0.9;
      if (v3)
      {
        return 1.0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:1];
    return v5 * 0.988950276;
  }

  return result;
}

- (double)_maximumScaleForModalPileGroupOfType:(unsigned __int8)a3
{
  [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:a3];

  [(PKPassGroupStackView *)self _maximumScaleForModalPileGroupWithModalScale:?];
  return result;
}

- ($600A803A2DA5524344F8C742CF1B11BB)_modalPileStateForType:(SEL)a3
{
  v4 = a4;
  v5 = self;
  v7 = self + 72;
  if (__PAIR64__(BYTE1(self[73].var0), LOBYTE(self[73].var0)) != (a4 | 0x100000000))
  {
    [($600A803A2DA5524344F8C742CF1B11BB *)self _scaleForModallyPresentedGroupOfType:a4];
    v9 = v8;
    [($600A803A2DA5524344F8C742CF1B11BB *)v5 _maximumScaleForModalPileGroupOfType:v4];
    v11 = v10;
    v12 = log(v10);
    v13 = log(v11 * 0.85);
    v14 = v12 - log(v9);
    if (v14 == 0.0)
    {
      v17 = 0;
    }

    else
    {
      v15 = (v13 - v12) / v14;
      v16 = vcvtpd_u64_f64(v15);
      if (ceil(v15) > 0.0)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = 0;
      }
    }

    v7->var0 = v11;
    v7->var1 = v12;
    v7->var2 = v11 * 0.85;
    v7->var3 = v13;
    v7->var4 = v17;
    LOBYTE(v7[1].var0) = v4;
    BYTE1(v7[1].var0) = 1;
  }

  v18 = *&v7->var2;
  *&retstr->var0 = *&v7->var0;
  *&retstr->var2 = v18;
  retstr->var4 = v7->var4;
  return self;
}

- (double)_scaleForModalPileGroupAtIndex:(unint64_t)a3 ofType:(unsigned __int8)a4
{
  v4 = a4;
  modalGroupIndex = self->_modalGroupIndex;
  v7 = modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL && modalGroupIndex > a3;
  if (v7 && (modalGroupIndex >= [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking]? (v9 = [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking]) : (v9 = self->_modalGroupIndex), v9 > 1))
  {
    v11 = modalGroupIndex + ~a3;
    [(PKPassGroupStackView *)self _modalPileStateForType:v4];
    if (v11)
    {
      if (v11 >= v9 - 1)
      {
        return 0.0;
      }

      else
      {
        v12 = fmin(fmax(v11 / (v9 - 1), 0.0), 1.0);
        return exp(v12 * 0.0 + (1.0 - v12) * 0.0);
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(PKPassGroupStackView *)self _maximumScaleForModalPileGroupOfType:v4];
  }

  return result;
}

- (double)_relativeScaleForPileGroupAtPileIndex:(unint64_t)a3 ofType:(unsigned __int8)a4
{
  if (a4 == 1)
  {
    return 0.95;
  }

  if (a4)
  {
    __break(1u);
    return result;
  }

  p_pileCache = &self->_pileCache;
  populated = self->_pileCache.maximum.populated;
  if (populated)
  {
    decay = self->_pileCache.maximum.constant.decay;
    logDecay = self->_pileCache.maximum.constant.logDecay;
  }

  else
  {
    decay = 0.95828397;
    logDecay = -0.0426111253;
  }

  if (!self->_pileCache.populated || (length = self->_pileCache.state.length, length != 4))
  {
    v11 = (decay + -1.0) * 30.0 / (exp(logDecay * 3.0) + -1.0);
    p_pileCache->state.initialSeparation = v11;
    length = 4;
    p_pileCache->state.length = 4;
    if (populated)
    {
      if (v11 >= p_pileCache->maximum.state.initialSeparation)
      {
        length = 4;
      }

      else
      {
        p_pileCache->state = p_pileCache->maximum.state;
        length = p_pileCache->state.length;
        if (length >= 4)
        {
          length = 4;
        }

        p_pileCache->state.length = length;
      }
    }

    p_pileCache->populated = 1;
  }

  if (length <= 1)
  {
    length = 1;
  }

  v12 = length - 1;
  if (v12 >= a3)
  {
    v12 = a3;
  }

  switch(v12)
  {
    case 0uLL:
      return 1.0;
    case 2uLL:
      return decay * decay;
    case 1uLL:
      return decay;
  }

  return exp(logDecay * v12);
}

- (double)_scaleForPileGroupAtPileIndex:(unint64_t)a3 ofType:(unsigned __int8)a4
{
  v4 = a4;
  [(PKPassGroupStackView *)self _scaleForTableGroup];
  v8 = v7;
  [(PKPassGroupStackView *)self _relativeScaleForPileGroupAtPileIndex:a3 ofType:v4];
  return v8 * v9;
}

- (CGPoint)__positionForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5
{
  [(PKPassGroupStackView *)self _xPositionForGroupView:a3 forState:a5];
  v9 = v8;
  [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a4 forState:a5];
  v11 = v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)_positionForGroupView:(id)a3 atIndex:(unint64_t)a4 forState:(int64_t)a5
{
  v8 = a3;
  [(PKPassGroupStackView *)self __positionForGroupView:v8 atIndex:a4 forState:a5];
  v10 = v9;
  v12 = v11;
  v13 = [v8 superview];

  if (v13)
  {
    passContainerView = self->_passContainerView;
    if (v13 != passContainerView)
    {
      [(PKPassthroughView *)passContainerView convertPoint:v13 toView:v10, v12];
      v10 = v15;
      v12 = v16;
    }
  }

  v17 = v10;
  v18 = v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CATransform3D)_transformForGroupView:(SEL)a3 atIndex:(id)a4 forState:(unint64_t)a5
{
  [(PKPassGroupStackView *)self _scaleForGroupView:a4 atIndex:a5 forState:a6];
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;

  return CATransform3DMakeScale(retstr, v7, v7, 1.0);
}

- (BOOL)_isGroupAtIndexInModalPile:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  modalGroupIndex = self->_modalGroupIndex;
  if (modalGroupIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (*(&self->_layoutState + 24) & 2) != 0 && (*(&self->_layoutState + 24))
  {
    return modalGroupIndex > a3;
  }

  if ((*(&self->_layoutState.groups + 16) & 1) == 0)
  {
    return 0;
  }

  separatorIndex = self->_layoutState.groups.separatorIndex;
  if (separatorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*(&self->_layoutState.groups + 16) & 2) != 0)
    {
      v6 = (*(&self->_layoutState + 28) >> 3) & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = modalGroupIndex <= separatorIndex;
  }

  return (modalGroupIndex > a3) & v6;
}

- (CGRect)_frameForFooterViewForPassView:(id)a3
{
  v4 = a3;
  [(PKPassGroupStackView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 pass];

  if (v13)
  {
    v14 = [v13 style];
  }

  else
  {
    v14 = 6;
  }

  [(PKPassGroupStackView *)self _yForModalPositionOfType:1];
  v16 = v15;
  PKPassViewFrontSize();
  v18 = v16 - v8;
  if (self->_presentationState == 4)
  {
    v18 = v16;
  }

  v19 = v17 + v18;
  if ((v14 - 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    PKPassHeightAdjustmentForStyle();
    v19 = v19 - v20;
  }

  memset(&v36, 0, sizeof(v36));
  remainder.origin.x = v6;
  remainder.origin.y = v8;
  remainder.size.width = v10;
  remainder.size.height = v12;
  if (self->_layoutState.pilingMode)
  {
    memset(&v35, 0, sizeof(v35));
    bottom = self->_lastBoundsInsets.bottom;
  }

  else
  {
    [(PKPassGroupStackView *)self pileHeight:0];
    bottom = fmax(v22, self->_lastBoundsInsets.bottom);
  }

  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  CGRectDivide(v38, &v35, &remainder, bottom, CGRectMaxYEdge);
  CGRectDivide(remainder, &remainder, &v36, v19, CGRectMinYEdge);
  PKPassFrontFaceContentSize();
  PKSizeAlignedInRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_updateGroupStateForGroupViewInStackPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PKPassGroupStackView *)self isTableModalPresentation])
  {
    [v6 setPresentationState:3 animated:v4];
    if (!v4)
    {
      [v6 sizeToFit];
      goto LABEL_6;
    }
  }

  else
  {
    [v6 setPresentationState:1 animated:v4];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  [v6 setHidden:0];
LABEL_6:
}

- (void)_updateGroupStateForGroupViewInModalPresentation:(id)a3 atIndex:(unint64_t)a4 withState:(int64_t)a5 withContext:(id)a6
{
  v19 = a3;
  v10 = a6;
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 8);
    if (self->_modalGroupIndex == a4 || self->_modallyPresentedGroupView == v19)
    {
      if ((v12 & 1) == 0)
      {
        v18 = v10[2];
        [(PKPassGroupView *)v19 setPresentationState:3 withContext:v18 animated:0];

        [(PKPassGroupView *)v19 sizeToFit];
      }
    }

    else
    {
      v13 = [(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:a4];
      v14 = 1;
      if (a5 == 7)
      {
        v15 = v19;
      }

      else
      {
        v15 = v19;
        if (!v13)
        {
          passPileViews = self->_passPileViews;
          if (passPileViews)
          {
            v17 = [(NSMutableArray *)passPileViews indexOfObjectIdenticalTo:v19];
            v15 = v19;
            if (v17 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }
          }

          else
          {
            v14 = 1;
          }
        }
      }

      [(PKPassGroupView *)v15 setPresentationState:v14 animated:v12];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(PKPassGroupStackView *)self _updateGroupView:v9 toPresentationState:a4 withSpringFactory:v8 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v9]];
}

- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  if ([(PKPassGroupStackView *)self _inControlOfGroupView:v10])
  {
    [(PKPassGroupStackView *)self _positionForGroupView:v10 atIndex:a6 forState:a4];
    v13 = v12;
    v15 = v14;
    memset(&v49[1], 0, sizeof(CATransform3D));
    [(PKPassGroupStackView *)self _transformForGroupView:v10 atIndex:a6 forState:a4];
    [(PKPassGroupStackView *)self _opacityForGroupAtIndex:a6 withGroupView:v10 forState:a4];
    v17 = v16;
    v18 = 0.0;
    if (v16 < 1.0)
    {
      v18 = (1.0 - v16) * 10.0;
    }

    if (v16 > 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 10.0;
    }

    v20 = [v10 layer];
    v21 = v20;
    if (v11)
    {
      [v20 position];
      v24 = v23;
      v25 = v22;
      if (v23 != v13 || v22 != v15)
      {
        v26 = [v11 highFrameRateSpringAnimationForView:v10 withKeyPath:@"position" reason:1];
        [v26 pkui_updateForAdditiveAnimationFromPoint:v24 toPoint:{v25, v13, v15}];
        v27 = [v21 pkui_addAdditiveAnimation:v26];
      }

      memset(v49, 0, 128);
      if (v21)
      {
        [v21 transform];
      }

      a = v49[0];
      b = v49[1];
      if (!CATransform3DEqualToTransform(&a, &b))
      {
        v28 = [v11 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];
        a = v49[0];
        b = v49[1];
        [v28 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
        v29 = [v21 pkui_addAdditiveAnimation:v28];
      }

      [v21 opacity];
      v31 = v30;
      if (v17 != v30)
      {
        v32 = [v11 springAnimationForView:v10 withKeyPath:@"opacity"];
        [v32 pkui_updateForAdditiveAnimationFromScalar:v31 toScalar:v17];
        v33 = [v21 pkui_addAdditiveAnimation:v32];
      }

      [v10 blurRadius];
      if (v34 != v19)
      {
        v35 = v34;
        v36 = +[PKPassGroupView blurRadiusKeyPath];
        v37 = [v11 springAnimationForView:v10 withKeyPath:v36];

        [v37 pkui_updateForAdditiveAnimationFromScalar:v35 toScalar:v19];
        v38 = [v21 pkui_addAdditiveAnimation:v37];
      }
    }

    v39 = MEMORY[0x1E69DD250];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __87__PKPassGroupStackView__updateGroupView_toPresentationState_withSpringFactory_atIndex___block_invoke;
    v40[3] = &unk_1E8024110;
    v41 = v10;
    v42 = v13;
    v43 = v15;
    v44 = v49[1];
    v45 = v17;
    v46 = v19;
    [v39 performWithoutAnimation:v40];
  }
}

uint64_t __87__PKPassGroupStackView__updateGroupView_toPresentationState_withSpringFactory_atIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 136);
  v8[4] = *(a1 + 120);
  v8[5] = v3;
  v4 = *(a1 + 168);
  v8[6] = *(a1 + 152);
  v8[7] = v4;
  v5 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v5;
  v6 = *(a1 + 104);
  v8[2] = *(a1 + 88);
  v8[3] = v6;
  [v2 setTransform3D:v8];
  [*(a1 + 32) setAlpha:*(a1 + 184)];
  return [*(a1 + 32) setBlurRadius:*(a1 + 192)];
}

- (void)_updateGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringConfiguration:(id)a5 positionAdjustment:(UIOffset)a6 atIndex:(unint64_t)a7 modal:(BOOL)a8
{
  v8 = a8;
  vertical = a6.vertical;
  horizontal = a6.horizontal;
  v15 = a3;
  v16 = a5;
  if ([(PKPassGroupStackView *)self _inControlOfGroupView:v15])
  {
    [(PKPassGroupStackView *)self _positionForGroupView:v15 atIndex:a7 forState:a4];
    v18 = v17;
    v20 = v19;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    [(PKPassGroupStackView *)self _transformForGroupView:v15 atIndex:a7 forState:a4];
    [(PKPassGroupStackView *)self _opacityForGroupAtIndex:a7 withGroupView:v15 forState:a4];
    v22 = v21;
    v23 = 10.0;
    if (v21 > 0.0)
    {
      if (v21 < 1.0)
      {
        v23 = (1.0 - v21) * 10.0;
      }

      else
      {
        v23 = 0.0;
      }
    }

    if (v16)
    {
      v24 = [v15 layer];
      [v15 center];
      v26 = v25;
      v28 = v27;
      v29 = [v15 superview];
      passContainerView = self->_passContainerView;

      v31 = horizontal + v26;
      v32 = vertical + v28;
      if (v29 != passContainerView)
      {
        v32 = v28;
        v31 = v26;
      }

      v33 = [(PKPGSVSpringAnimationConfiguration *)v16 createPositionAnimationFromPosition:v15 toPosition:v8 forView:v31 modal:v32, v18, v20];
      if (v33)
      {
        v34 = [v24 pkui_addAdditiveAnimation:v33];
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      if (v15)
      {
        [v15 transform3D];
        v35 = *&v64;
      }

      else
      {
        v35 = 0.0;
      }

      v36 = [(PKPGSVSpringAnimationConfiguration *)v16 createScaleAnimationFromScale:v15 toScale:v8 forView:v35 modal:*&v72];

      if (v36)
      {
        v37 = [v24 pkui_addAdditiveAnimation:v36];
      }

      v38 = v16[6];
      [v24 opacity];
      v40 = v39;
      if (v22 != v39)
      {
        v41 = [v38 springAnimationForView:v15 withKeyPath:@"opacity"];
        v42 = v41;
        if (v41)
        {
          [v41 pkui_updateForAdditiveAnimationFromScalar:v40 toScalar:v22];
          v43 = [v24 pkui_addAdditiveAnimation:v42];
        }
      }

      [v15 blurRadius];
      if (v44 != v23)
      {
        v45 = v44;
        v46 = +[PKPassGroupView blurRadiusKeyPath];
        v47 = [v38 springAnimationForView:v15 withKeyPath:v46];

        if (v47)
        {
          [v47 pkui_updateForAdditiveAnimationFromScalar:v45 toScalar:v23];
          v48 = [v24 pkui_addAdditiveAnimation:v47];
        }
      }
    }

    v49 = MEMORY[0x1E69DD250];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __118__PKPassGroupStackView__updateGroupView_toPresentationState_withSpringConfiguration_positionAdjustment_atIndex_modal___block_invoke;
    v50[3] = &unk_1E8024110;
    v51 = v15;
    v52 = v18;
    v53 = v20;
    v59 = v77;
    v60 = v78;
    v61 = v79;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v58 = v76;
    v62 = v22;
    v63 = v23;
    [v49 performWithoutAnimation:v50];
  }
}

uint64_t __118__PKPassGroupStackView__updateGroupView_toPresentationState_withSpringConfiguration_positionAdjustment_atIndex_modal___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 136);
  v8[4] = *(a1 + 120);
  v8[5] = v3;
  v4 = *(a1 + 168);
  v8[6] = *(a1 + 152);
  v8[7] = v4;
  v5 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v5;
  v6 = *(a1 + 104);
  v8[2] = *(a1 + 88);
  v8[3] = v6;
  [v2 setTransform3D:v8];
  [*(a1 + 32) setAlpha:*(a1 + 184)];
  return [*(a1 + 32) setBlurRadius:*(a1 + 192)];
}

- (void)_updateTransformForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5
{
  v8 = a3;
  v9 = a5;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  [(PKPassGroupStackView *)self _transformForGroupView:v8 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v8] forState:a4];
  v10 = [v8 layer];
  if (v9)
  {
    v11 = [v9 highFrameRateSpringAnimationForView:v8 withKeyPath:@"transform" reason:1];
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
    }

    v13[4] = v26;
    v13[5] = v27;
    v13[6] = v28;
    v13[7] = v29;
    v13[0] = v22;
    v13[1] = v23;
    v13[2] = v24;
    v13[3] = v25;
    [v11 pkui_updateForAdditiveAnimationFromTransform:&v14 toTransform:v13];
    v12 = [v10 pkui_addAdditiveAnimation:v11];
  }

  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  [v10 setTransform:&v14];
}

- (void)_updatePositionForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(PKPassGroupStackView *)self _updatePositionForGroupView:v9 toPresentationState:a4 withSpringFactory:v8 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v9]];
}

- (void)_updatePositionForGroupView:(id)a3 toPresentationState:(int64_t)a4 withSpringFactory:(id)a5 atIndex:(unint64_t)a6
{
  v10 = a5;
  v11 = a3;
  [(PKPassGroupStackView *)self _positionForGroupView:v11 atIndex:a6 forState:a4];
  [(PKPassGroupStackView *)self _updatePositionForGroupView:v11 toPosition:v10 withSpringFactory:?];
}

- (void)_updatePositionForGroupView:(id)a3 toPosition:(CGPoint)a4 withSpringFactory:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  if ([(PKPassGroupStackView *)self _inControlOfGroupView:v9])
  {
    v11 = [v9 layer];
    if (v10)
    {
      v12 = [v10 highFrameRateSpringAnimationForView:v9 withKeyPath:@"position" reason:1];
      [v11 position];
      [v12 pkui_updateForAdditiveAnimationFromPoint:? toPoint:?];
      v13 = [v11 pkui_addAdditiveAnimation:v12];
    }

    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__PKPassGroupStackView__updatePositionForGroupView_toPosition_withSpringFactory___block_invoke;
    v15[3] = &unk_1E8012188;
    v16 = v9;
    v17 = x;
    v18 = y;
    [v14 performWithoutAnimation:v15];
  }
}

- ($2DE36CBD7484E59DE1E6BE98927F692F)_updateExternalVC:(SEL)a3 toPresentationState:(id)a4 initial:(int64_t)a5 withSpringConfiguration:(BOOL)a6 preferModalSpringFactories:(id)a7
{
  v11 = a8;
  v13 = a6;
  v81 = a4;
  v17 = a7;
  if (!v81 || ((a7 = v17, (containedView = v81->_containedView) == 0) ? (hasPassAnchorPoint = 0) : (hasPassAnchorPoint = containedView->_hasPassAnchorPoint), [(PKPGSVExternalVCContext *)&v81->super.isa _containedView], v8 = objc_claimAutoreleasedReturnValue(), v20 = v81->_viewController, [(UIViewController *)v20 view], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    __break(1u);
    goto LABEL_38;
  }

  v22 = v21;
  [v21 bounds];
  retstr->var0.var0.x = v23;
  retstr->var0.var0.y = v24;
  [v22 anchorPoint];
  v77 = v25;
  v78 = v26;
  retstr->var0.var2.x = v25;
  retstr->var0.var2.y = v26;
  *&retstr->var0.var3.var0.top = 0u;
  *&retstr->var0.var3.var0.bottom = 0u;
  [v22 alignmentRectInsets];
  retstr->var0.var3.var1.top = v27;
  retstr->var0.var3.var1.left = v28;
  retstr->var0.var3.var1.bottom = v29;
  retstr->var0.var3.var1.right = v30;

  retstr->var1 = *MEMORY[0x1E695EFF8];
  [v8 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  retstr->var0.var1.width = v35;
  retstr->var0.var1.height = v37;
  if (a5 != 7 || self->_externalVC.context != v81)
  {
    v39 = v81->_transitionCoordinator;
    v40 = v39;
    v80 = a7;
    v79 = v13;
    if (v39)
    {
      v41 = v39->_state;
      v42 = v41;
      if (v41)
      {
        v43 = v11;
        v44 = v41[1];
LABEL_11:
        v45 = v44;
        v46 = [(PKPassGroupStackView *)self _indexOfGroupView:v45];
        [(PKPassGroupStackView *)self _scaleForGroupView:v45 atIndex:v46 forState:a5];
        [(PKPassGroupStackView *)self _scaleForExternalVCWithPassGroupViewScale:?];
        retstr->var0.var4.var0 = v47;
        if (hasPassAnchorPoint)
        {
          [(PKPassGroupStackView *)self __positionForGroupView:v45 atIndex:v46 forState:a5];
          [v8 convertPoint:self->_passContainerView fromView:?];
        }

        else
        {
          PKSizeAlignedInRect();
          v48 = v50 + v77 * v51;
          v49 = v52 + v78 * v53;
        }

        v11 = v43;
        retstr->var1.x = v48;
        retstr->var1.y = v49;

        interactiveProgress = 0.0;
        a7 = v80;
        v13 = v79;
        goto LABEL_15;
      }

      v43 = v11;
    }

    else
    {
      v43 = v11;
      v42 = 0;
    }

    v44 = 0;
    goto LABEL_11;
  }

  v40 = v81->_transition;
  v42 = v81->_transitionState;
  if (v81->_sending && v40 && v40->_interactive && v42)
  {
    interactiveProgress = v40->_interactiveProgress;
    v67 = v42[3];
    if (v67)
    {
      v68 = *(v67 + 16);
      *&retstr->var0.var3.var1.bottom = *(v67 + 15);
      *&retstr->var0.var4.var0 = v68;
      retstr->var1.y = *(v67 + 34);
      v69 = *(v67 + 12);
      retstr->var0.var2 = *(v67 + 11);
      *&retstr->var0.var3.var0.top = v69;
      v70 = *(v67 + 14);
      *&retstr->var0.var3.var0.bottom = *(v67 + 13);
      *&retstr->var0.var3.var1.top = v70;
      v71 = *(v67 + 10);
      retstr->var0.var0 = *(v67 + 9);
      retstr->var0.var1 = v71;
    }

    else
    {
      retstr->var1.y = 0.0;
      *&retstr->var0.var3.var1.bottom = 0u;
      *&retstr->var0.var4.var0 = 0u;
      *&retstr->var0.var3.var0.bottom = 0u;
      *&retstr->var0.var3.var1.top = 0u;
      retstr->var0.var2 = 0u;
      *&retstr->var0.var3.var0.top = 0u;
      retstr->var0.var0 = 0u;
      retstr->var0.var1 = 0u;
    }

    if (hasPassAnchorPoint)
    {
      hasPassAnchorPoint = 0;
    }

    else
    {
      hasPassAnchorPoint = 0;
      var0 = retstr->var0.var4.var0;
      v73 = vdup_n_s32(var0 == 1.0);
      v74.i64[0] = v73.u32[0];
      v74.i64[1] = v73.u32[1];
      v75 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v74, 0x3FuLL)), retstr->var0.var1, vmulq_n_f64(retstr->var0.var1, var0));
      v76.f64[0] = v77;
      v76.f64[1] = v78;
      retstr->var1 = vmlaq_f64(vmlsq_f64(retstr->var1, v75, retstr->var0.var2), v75, v76);
      retstr->var0.var2.x = v77;
      retstr->var0.var2.y = v78;
    }
  }

  else
  {
    hasPassAnchorPoint = 0;
    retstr->var0.var4.var0 = 1.0;
    retstr->var1.x = v32 + v77 * v36;
    retstr->var1.y = v34 + v78 * v38;
    interactiveProgress = 1.0;
  }

LABEL_15:

  if (v13)
  {
    interactiveProgress = 0.0;
    if (retstr->var0.var4.var0 >= 1.0)
    {
      [(PKPassGroupStackView *)self _scaleForTableGroup];
      [(PKPassGroupStackView *)self _scaleForExternalVCWithPassGroupViewScale:?];
      retstr->var0.var4.var0 = v54;
      if (!hasPassAnchorPoint)
      {
        PKSizeAlignedInRect();
        v59 = v57 + retstr->var0.var2.y * v58;
        retstr->var1.x = v55 + retstr->var0.var2.x * v56;
        retstr->var1.y = v59;
      }
    }
  }

  v60 = *&retstr->var0.var4.var0;
  v82[6] = *&retstr->var0.var3.var1.bottom;
  v82[7] = v60;
  y = retstr->var1.y;
  v61 = *&retstr->var0.var3.var0.top;
  v82[2] = retstr->var0.var2;
  v82[3] = v61;
  v62 = *&retstr->var0.var3.var1.top;
  v82[4] = *&retstr->var0.var3.var0.bottom;
  v82[5] = v62;
  var1 = retstr->var0.var1;
  v82[0] = retstr->var0.var0;
  v82[1] = var1;
  [(PKPGSVExternalVCContext *)v81 _updateForViewControllerFrame:v82 usingPassAnchorPoint:hasPassAnchorPoint withSpringConfiguration:a7 preferModalSpringFactories:v11];
  v9 = 10.0;
  if (interactiveProgress > 0.0)
  {
    v9 = 0.0;
    if (interactiveProgress < 1.0)
    {
      v9 = (1.0 - interactiveProgress) * 10.0;
    }
  }

  if (a7)
  {
    v64 = *(a7 + 6);
    goto LABEL_24;
  }

LABEL_38:
  v64 = 0;
LABEL_24:
  v65 = v64;
  [(PKPGSVExternalVCContextContainerView *)&v81->_containedView->super.super.super.isa _updateAlpha:v65 blurRadius:interactiveProgress withSpringFactory:v9];

  return result;
}

- (double)_layoutContentWithContext:(id)a3 positionAdjustment:(UIOffset)a4 animated:(BOOL)a5
{
  v5 = a5;
  vertical = a4.vertical;
  horizontal = a4.horizontal;
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = horizontal == *MEMORY[0x1E69DE258];
  if (vertical != *(MEMORY[0x1E69DE258] + 8))
  {
    v11 = 0;
  }

  v50 = v11;
  if (v9)
  {
    v12 = *(v9 + 5);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (!v5)
  {
    v28 = v13;
    v29 = 0;
    v17 = 0;
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0.0;
    goto LABEL_29;
  }

  v15 = v10;
  presentationState = self->_presentationState;
  if (!v13)
  {
    v17 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0.0;
    v30 = presentationState == 4;
    v10 = v15;
    if (v30)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v17 = [(PKPassGroupStackView *)self _createFactoryForExternalDismissal];
  v49 = v14;
  v18 = v14[6];
  v19 = v18;
  if (v18)
  {
    v20 = v18[13];
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 1);
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
LABEL_10:
  v23 = v22;

  v24 = [(PKPassGroupStackView *)self _indexOfGroupView:v23];
  if (presentationState != 4)
  {
    v10 = v15;
    v14 = v49;
LABEL_18:
    v26 = 0.0;
    if ((*(&self->_layoutState + 28) & 0x4000) != 0)
    {
      pilingMode = self->_layoutState.pilingMode;
      [(PKPassGroupStackView *)self _setupSpringFactoryForPileAnimations:v17 withMaximumAcceleration:pilingMode != 0 reverse:0.0];
      v30 = pilingMode == 0;
      v10 = v15;
      if (!v30)
      {
        v26 = result;
      }
    }

    if (v14)
    {
      goto LABEL_22;
    }

LABEL_24:
    v28 = v14;
    v29 = [PKPGSVSpringAnimationConfiguration createWithFactory:v17];
    goto LABEL_29;
  }

  v26 = 0.0;
  v10 = v15;
  v14 = v49;
  if (v17)
  {
    [(PKPassGroupStackView *)self _setupSpringFactoryForExternalToTableAnimations:v17 forModalGroupIndex:v24];
    result = fmax(v27, self->_footerAnimationDelay);
    self->_footerAnimationDelay = result;
  }

LABEL_22:
  if (self->_presentationState == 7)
  {
    v28 = v14;
    v32 = [(PKPassGroupStackView *)self _createFactoryForExternalPresentation];
    v33 = [PKPGSVSpringAnimationConfiguration createWithFactory:v17 modalFactory:v32];
  }

  else
  {
    if (!v9 || (v34 = *(v9 + 3)) == 0)
    {
      __break(1u);
      return result;
    }

    v32 = v34;
    v28 = v14;
    v33 = [(PKPassGroupStackView *)self _createModalPileFactoryForExternalVCContext:v14 dismissalToPresentationState:self->_presentationState withTransitionContext:v34 factory:v17 positionAdjustment:horizontal, vertical];
  }

  v29 = v33;

LABEL_29:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_B16__0Q8l;
  aBlock[4] = v24;
  v35 = _Block_copy(aBlock);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_2;
  v60[3] = &unk_1E8023F48;
  v36 = v35;
  v60[4] = self;
  v61 = v36;
  v37 = _Block_copy(v60);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_3;
  v57[3] = &unk_1E8024138;
  v38 = v37;
  v59 = v38;
  v57[4] = self;
  v39 = v29;
  v58 = v39;
  [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v57];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_4;
  v52[3] = &unk_1E8024160;
  v52[4] = self;
  v40 = v36;
  v53 = v39;
  v54 = v40;
  v55 = horizontal;
  v56 = vertical;
  v41 = v39;
  [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v52];
  [v17 duration];
  v43 = v42;
  [v17 maximumVendedDelay];
  v45 = v44;

  if (((v50 | ((*(&self->_layoutState + 28) & 0x2000) >> 13)) & 1) == 0)
  {
    passFooterView = self->_passFooterView;
    if (passFooterView)
    {
      [(PKPassFooterView *)passFooterView center];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_5;
      v51[3] = &unk_1E8012160;
      v51[4] = self;
      v51[5] = v47;
      v51[6] = v48;
      *&v51[7] = horizontal;
      *&v51[8] = vertical;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v51];
    }
  }

  [(PKPassGroupStackView *)self _layoutFooterAnimated:v5 withAnimationDelay:v26];
  [(PKPassGroupView *)self->_modallyPresentedGroupView updatePageControlFrameAnimated:v5];

  objc_autoreleasePoolPop(v10);
  return v43 + v45;
}

id __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_2(uint64_t a1, void *a2)
{
  result = a2;
  if (result)
  {
    v4 = result;
    v5 = (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) _indexOfGroupView:result]);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || (v5 = v3[6]) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = v5[13];
  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v7 + 1);
LABEL_5:
  v10 = v9;

  [*(a1 + 32) _updateExternalVC:v4 toPresentationState:*(*(a1 + 32) + 2168) initial:0 withSpringConfiguration:*(a1 + 40) preferModalSpringFactories:(*(*(a1 + 48) + 16))()];
}

void __78__PKPassGroupStackView__layoutContentWithContext_positionAdjustment_animated___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _inControlOfGroupView:?])
  {
    [*(a1 + 32) _updateGroupView:v5 toPresentationState:*(*(a1 + 32) + 2168) withSpringConfiguration:*(a1 + 40) positionAdjustment:a3 atIndex:(*(*(a1 + 48) + 16))() modal:{*(a1 + 56), *(a1 + 64)}];
  }
}

- (void)_layoutFooterAnimated:(BOOL)a3 withAnimationDelay:(double)a4
{
  if ((*(&self->_layoutState + 28) & 0x2000) == 0)
  {
    passFooterView = self->_passFooterView;
    if (passFooterView)
    {
      v6 = a3;
      [(PKPassFooterView *)passFooterView alpha];
      if (v7 <= 0.0 || !v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
      }

      v10 = [(PKPassFooterView *)self->_passFooterView layer];
      v11 = [(PKPassFooterView *)self->_passFooterView configuration];
      v12 = [v11 passView];
      [(PKPassGroupStackView *)self _frameForFooterViewForPassView:v12];
      v46 = v13;
      v47 = v14;
      v16 = v15;
      v18 = v17;

      v20 = *MEMORY[0x1E695EFF8];
      v19 = *(MEMORY[0x1E695EFF8] + 8);
      [v10 bounds];
      v22 = v21;
      v24 = v23;
      [v10 position];
      v26 = v25;
      v28 = v27;
      v29 = v18 != v24 || v16 != v22;
      if (v29)
      {
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __65__PKPassGroupStackView__layoutFooterAnimated_withAnimationDelay___block_invoke;
        v51[3] = &unk_1E8012160;
        v51[4] = self;
        *&v51[5] = v20;
        *&v51[6] = v19;
        *&v51[7] = v16;
        *&v51[8] = v18;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v51];
        v30 = [v9 springAnimationWithKeyPath:@"bounds.size.width"];
        v31 = v30;
        v32 = MEMORY[0x1E69795C0];
        if (v30)
        {
          [v30 setBeginTimeMode:*MEMORY[0x1E69795C0]];
          [v31 setBeginTime:a4];
          [v31 pkui_updateForAdditiveAnimationFromScalar:v22 toScalar:v16];
          v33 = [v10 pkui_addAdditiveAnimation:v31];
        }

        v34 = [v9 springAnimationWithKeyPath:@"bounds.size.height"];

        if (v34)
        {
          [v34 setBeginTimeMode:*v32];
          [v34 setBeginTime:a4];
          [v34 pkui_updateForAdditiveAnimationFromScalar:v24 toScalar:v18];
          v35 = [v10 pkui_addAdditiveAnimation:v34];
        }
      }

      [v10 anchorPoint];
      v37 = v46 + v20 + v36 * v16;
      v39 = v47 + v19 + v38 * v18;
      if (v37 != v26 || v39 != v28)
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __65__PKPassGroupStackView__layoutFooterAnimated_withAnimationDelay___block_invoke_2;
        v50[3] = &unk_1E8012188;
        v50[4] = self;
        *&v50[5] = v46 + v20 + v36 * v16;
        *&v50[6] = v39;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v50];
        v41 = [v9 springAnimationWithKeyPath:@"position"];
        v42 = v41;
        if (v41)
        {
          [v41 pkui_updateForAdditiveAnimationFromPoint:v26 toPoint:{v28, v37, v39}];
          v43 = [v10 pkui_addAdditiveAnimation:v42];
        }
      }

      if (v29)
      {
        v44 = MEMORY[0x1E69DD250];
        if (v6)
        {
          [v9 duration];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __65__PKPassGroupStackView__layoutFooterAnimated_withAnimationDelay___block_invoke_3;
          v49[3] = &unk_1E8010970;
          v49[4] = self;
          [v44 _animateWithDuration:6 delay:v9 options:v49 factory:0 animations:? completion:?];
        }

        else
        {
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __65__PKPassGroupStackView__layoutFooterAnimated_withAnimationDelay___block_invoke_4;
          v48[3] = &unk_1E8010970;
          v48[4] = self;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v48];
        }
      }
    }
  }
}

uint64_t __65__PKPassGroupStackView__layoutFooterAnimated_withAnimationDelay___block_invoke(double *a1)
{
  [*(*(a1 + 4) + 2624) layoutIfNeeded];
  v2 = *(*(a1 + 4) + 2624);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];

  return [v2 setBounds:{v3, v4, v5, v6}];
}

- (void)_animateGroupViewAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4 withAnchorView:(id)a5 insertAbove:(BOOL)a6
{
  v64[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
  if ([(PKPassGroupStackView *)self _inControlOfGroupView:v11])
  {
    v49 = [v11 layer];
    [v49 position];
    v13 = v12;
    v15 = v14;
    [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a4 forState:4];
    if (v16 != v15)
    {
      v17 = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke;
      aBlock[3] = &unk_1E8024188;
      aBlock[4] = self;
      v18 = v11;
      v63 = v18;
      v48 = _Block_copy(aBlock);
      v19 = v48[2](v48, a3);
      [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a3 forState:4];
      v21 = v20;
      v22 = v48[2](v48, a4);
      [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a4 forState:4];
      v24 = v23;
      v25 = [v18 frontmostPassView];
      v26 = [v25 contentMode] < 3;

      if (v26)
      {
        v27 = [v18 frontmostPassView];
        [v27 setContentMode:3];
      }

      v28 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
      [v28 setAdditive:1];
      v29 = *MEMORY[0x1E69795C0];
      [v28 setBeginTimeMode:*MEMORY[0x1E69795C0]];
      [v28 setMass:1.0];
      [v28 setStiffness:300.0];
      [v28 setDamping:400.0];
      v30 = fmax(v15, v17) + fmax(v19 - v21, v22 - v24) + 15.0;
      [v28 pkui_updateForAdditiveAnimationFromPoint:v13 toPoint:v15 withLayerPoint:{v13, v30, v13, v17}];
      v31 = *MEMORY[0x1E69797E8];
      [v28 setFillMode:*MEMORY[0x1E69797E8]];
      [v28 durationForEpsilon:0.001];
      v33 = v32;
      [v28 setDuration:?];
      v34 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
      [v34 setAdditive:1];
      [v34 setBeginTimeMode:v29];
      [v34 setMass:2.0];
      [v34 setStiffness:300.0];
      [v34 setDamping:400.0];
      [v34 pkui_updateForAdditiveAnimationFromPoint:v13 toPoint:v30 withLayerPoint:{v13, v17, v13, v30}];
      [v34 setFillMode:v31];
      [v34 durationForEpsilon:0.001];
      v36 = v35;
      [v34 setBeginTime:0.17];
      [v34 setDuration:v36];
      v37 = PKMagicCurve();
      [v34 setTimingFunction:v37];

      reorderActionTag = self->_reorderActionTag;
      if (!self->_reorderActions)
      {
        v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
        reorderActions = self->_reorderActions;
        self->_reorderActions = v39;
      }

      objc_initWeak(&location, self);
      v41 = self->_reorderActions;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_2;
      v56[3] = &unk_1E8013AD8;
      objc_copyWeak(&v59, &location);
      v60 = a6;
      v42 = v18;
      v57 = v42;
      v58 = v10;
      v43 = _Block_copy(v56);
      [(NSMutableArray *)v41 addObject:v43];

      v44 = [MEMORY[0x1E6979308] animation];
      [v44 setDuration:{fmax(v33, v36 + 0.17)}];
      v64[0] = v28;
      v64[1] = v34;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
      [v44 setAnimations:v45];

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_3;
      v54[3] = &unk_1E801E5C8;
      objc_copyWeak(v55, &location);
      v55[1] = reorderActionTag;
      [v44 pkui_setDidStartHandler:v54];
      v46 = [v49 pkui_addAdditiveAnimation:v44];
      v47 = MEMORY[0x1E69DD250];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_5;
      v50[3] = &unk_1E8012188;
      v51 = v42;
      v52 = v13;
      v53 = v17;
      [v47 performWithoutAnimation:v50];

      objc_destroyWeak(v55);
      objc_destroyWeak(&v59);
      objc_destroyWeak(&location);
    }
  }
}

double __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  v5 = v4[291];
  if (a2 + 1 >= v5)
  {
    [v4 _maxYOfPassFrontFaceAtIndex:v5 - 1];
    v9 = v8;
    [*(a1 + 32) bounds];
    v7 = fmin(v9, CGRectGetMaxY(v16));
  }

  else
  {
    [v4 _yPositionForGroupAtIndex:a2 + 1 forState:4];
    v7 = v6;
  }

  v10 = [*(a1 + 32) _groupViewAtIndex:v3];
  v11 = v10;
  if (*(a1 + 40))
  {
    v12 = [v10 layer];
    v13 = [v12 presentationLayer];
    [v13 position];
    v7 = fmax(v7, v14);
  }

  return v7;
}

void __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[335];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [v3 insertSubview:v4 aboveSubview:v5];
    }

    else
    {
      [v3 insertSubview:v4 belowSubview:v5];
    }

    WeakRetained = v6;
  }
}

void __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 170000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_4;
  v3[3] = &unk_1E801E5C8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __84__PKPassGroupStackView__animateGroupViewAtIndex_toIndex_withAnchorView_insertAbove___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[323] == *(a1 + 40))
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[322] firstObject];
    if (v3)
    {
      [v4[322] removeObjectAtIndex:0];
      v3[2](v3);
      if ((v4[321] & 1) == 0 && ![v4[322] count])
      {
        [v4 _arrangeGroups];
      }
    }

    WeakRetained = v4;
  }
}

- (void)_autoscrollIfNecessary
{
  [(PKPassGroupStackView *)self bounds];
  v4 = v3;
  v6 = v5;
  top = self->_lastBoundsInsets.top;
  bottom = self->_lastBoundsInsets.bottom;
  [(PKPassGroupStackView *)self contentSize];
  v10 = v9;
  v11 = [(PKPassGroupView *)self->_reorderedGroupView layer];
  [v11 position];
  v13 = v12;

  if (v6 < v10 && ((v14 = v4 + v6 - bottom + -150.0, v4 + top + 50.0 <= v13) ? (v15 = v14 < v13) : (v15 = 1), v15))
  {
    if (!self->_autoscrollTimer)
    {
      v16 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__autoscrollForReordering_ selector:0 userInfo:1 repeats:0.0166666675];
      autoscrollTimer = self->_autoscrollTimer;
      self->_autoscrollTimer = v16;
    }
  }

  else if (self->_autoscrollTimer)
  {

    [(PKPassGroupStackView *)self _stopAutoscrollTimer];
  }
}

- (void)_autoscrollForReordering:(id)a3
{
  [(PKPassGroupStackView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = v4 + self->_lastBoundsInsets.top + 50.0;
  bottom = self->_lastBoundsInsets.bottom;
  [(PKPassGroupStackView *)self _contentSize];
  v11 = v10;
  v12 = [(PKPassGroupView *)self->_reorderedGroupView layer];
  [v12 position];
  v14 = v13;
  v16 = v15;

  if (v8 > v16 && v16 > 0.0 && (*&self->_reorderingFlags & 4) != 0)
  {
    v21 = v8 - v16;
    v20 = -2.0;
    if (v21 <= 0.0)
    {
      goto LABEL_18;
    }

    v20 = -floorf((((v21 / 25.0) * 5.0) * (v21 / 25.0)) + 2.0);
    goto LABEL_14;
  }

  v17 = v5 + v7 - bottom + -150.0;
  v18 = v17 < v16 && v16 < v11;
  if (!v18 || (*&self->_reorderingFlags & 8) == 0)
  {
    goto LABEL_15;
  }

  v19 = v16 - v17;
  v20 = 2.0;
  if (v19 > 0.0)
  {
    v20 = floorf((((v19 / 75.0) * 5.0) * (v19 / 75.0)) + 2.0);
LABEL_14:
    if (v20 == 0.0)
    {
LABEL_15:

      [(PKPassGroupStackView *)self _stopAutoscrollTimer];
      return;
    }
  }

LABEL_18:
  v22 = [(PKPassGroupStackView *)self superview];
  v23 = [(PKPassGroupView *)self->_reorderedGroupView superview];
  [v23 convertPoint:v22 toView:{v14, v16}];
  v25 = v24;
  v27 = v26;
  [(PKPassGroupStackView *)self contentOffset];
  v28 = v20;
  [(PKPassGroupStackView *)self setContentOffset:?];
  [v23 convertPoint:v22 fromView:{v25, v27}];
  v31[1] = 3221225472;
  v31[0] = MEMORY[0x1E69E9820];
  v31[2] = __49__PKPassGroupStackView__autoscrollForReordering___block_invoke;
  v31[3] = &unk_1E8012188;
  v31[4] = self;
  if (v30 >= v11)
  {
    v30 = v11;
  }

  v31[5] = v29;
  *&v31[6] = v30;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v31];
  [(PKPassGroupStackView *)self _reorderPositionChangedForReorderedGroupViewWithVelocity:0.0, v28];
}

- (void)_stopAutoscrollTimer
{
  [(NSTimer *)self->_autoscrollTimer invalidate];
  autoscrollTimer = self->_autoscrollTimer;
  self->_autoscrollTimer = 0;
}

- (void)_adjustGroupViewsForReordering
{
  indexOfReorderedGroup = self->_indexOfReorderedGroup;
  if (indexOfReorderedGroup)
  {
    v4 = [(PKPassGroupStackView *)self _groupViewAtIndex:indexOfReorderedGroup - 1];
    v5 = [(PKPassGroupStackView *)self groupViewContentModeForFrontmostPassWhenStacked:v4];

    v6 = [(PKPassGroupStackView *)self _groupViewAtIndexWhileEnsuringVisible:self->_indexOfReorderedGroup - 1 withContentMode:v5];
  }
}

- (unint64_t)_currentIndexOfReorderedGroupView
{
  v3 = [(PKPassGroupView *)self->_reorderedGroupView layer];
  [v3 position];
  v5 = v4;

  if ((*&self->_reorderingFlags & ((*&self->_reorderingFlags & 2) >> 1)) != 0)
  {
    v5 = v5 + 15.0;
  }

  [(PKPassGroupStackView *)self bounds];
  [(PKPassGroupStackView *)self _nativeYForTransformedY:v5 inBounds:v6, v7, v8, v9];
  result = [PKPassGroupStackView _indexForNativeY:"_indexForNativeY:inBounds:roundToClosestIndex:" inBounds:1 roundToClosestIndex:?];
  separatorIndex = self->_layoutState.groups.separatorIndex;
  if (separatorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_indexOfReorderedGroup <= separatorIndex)
    {
      if (result >= separatorIndex)
      {
        return self->_layoutState.groups.separatorIndex;
      }
    }

    else if (result <= separatorIndex + 1)
    {
      return separatorIndex + 1;
    }
  }

  return result;
}

- (void)_reorderPositionChangedForReorderedGroupViewWithVelocity:(CGPoint)a3
{
  v4 = [(PKPassGroupStackView *)self _currentIndexOfReorderedGroupView:a3.x];
  v5 = [(PKPassGroupStackView *)self _groupViewAtIndex:v4];
  if (v4)
  {
    v6 = [(PKPassGroupStackView *)self _groupViewAtIndex:v4 - 1];
    v7 = [v6 frontmostPassView];
    if ([v7 contentMode] <= 2)
    {
      [v7 setContentMode:3];
    }
  }

  if (v5 != self->_reorderedGroupView)
  {
    indexOfReorderedGroup = self->_indexOfReorderedGroup;
    self->_previousIndexOfReorderedGroup = indexOfReorderedGroup;
    self->_indexOfReorderedGroup = v4;
    v9 = objc_autoreleasePoolPush();
    [(PKPassGroupStackView *)self _adjustGroupViewsForReordering];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PKPassGroupStackView__reorderPositionChangedForReorderedGroupViewWithVelocity___block_invoke;
    aBlock[3] = &unk_1E80241B0;
    aBlock[4] = self;
    aBlock[5] = indexOfReorderedGroup;
    aBlock[6] = v4;
    v10 = _Block_copy(aBlock);
    if (indexOfReorderedGroup <= v4)
    {
      [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v10];
    }

    else
    {
      [(PKPassGroupStackView *)self _reverseEnumerateLoadedGroupViews:v10];
    }

    if (v4 < self->_layoutState.groups.count)
    {
      v11 = [(PKPassGroupStackView *)self delegate];
      [v11 groupStackView:self groupDidMoveFromIndex:indexOfReorderedGroup toIndex:v4];
    }

    objc_autoreleasePoolPop(v9);
    if (self->_indexOfReorderedGroup == v4)
    {
      self->_previousIndexOfReorderedGroup = v4;
    }
  }

  [(PKPassGroupStackView *)self _autoscrollIfNecessary];
}

void __81__PKPassGroupStackView__reorderPositionChangedForReorderedGroupViewWithVelocity___block_invoke(void *a1, void *a2, unint64_t a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = a1[4];
  if (v8[312] != v11)
  {
    v9 = a1[5];
    if (v9 < a3 && a1[6] >= a3)
    {
      v10 = -1;
      goto LABEL_8;
    }

    if (v9 > a3 && a1[6] <= a3)
    {
      v10 = 1;
LABEL_8:
      [v8 _animateGroupViewAtIndex:a3 toIndex:v10 + a3 withAnchorView:? insertAbove:?];
    }
  }
}

- (void)_animateGroupViewForUndo:(id)a3 toIndex:(unint64_t)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 frontmostPassView];
    v8 = [v7 pass];
    v9 = [v8 localizedDescription];
    *buf = 138412546;
    v58 = v9;
    v59 = 2048;
    v60 = a4;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Animate pass: %@ to index %lu", buf, 0x16u);
  }

  v10 = [(PKPassGroupView *)self->_reorderedGroupView layer];
  [v10 position];
  v12 = v11;
  v14 = v13;
  [(PKPassGroupStackView *)self _positionForGroupView:self->_reorderedGroupView atIndex:self->_initialIndexOfReorderedGroup forState:4];
  v16 = v15;
  v18 = v17;
  [v10 size];
  v20 = v19;
  v21 = v5;
  v22 = [(PKPassGroupStackView *)self _groupViewAtIndex:self->_initialIndexOfReorderedGroup];
  if ([(PKPassGroupStackView *)self _inControlOfGroupView:v21]&& [(PKPassGroupStackView *)self _inControlOfGroupView:v22])
  {
    v23 = [(PKPassGroupStackView *)self _indexOfGroupView:v22];
    v24 = v23 > [(PKPassGroupStackView *)self _indexOfGroupView:v21];
    reorderActionTag = self->_reorderActionTag;
    if (!self->_reorderActions)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      reorderActions = self->_reorderActions;
      self->_reorderActions = v26;
    }

    objc_initWeak(buf, self);
    v28 = self->_reorderActions;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke;
    aBlock[3] = &unk_1E8013AD8;
    objc_copyWeak(&v54, buf);
    v55 = v24;
    v43 = v21;
    v52 = v43;
    v53 = v22;
    v29 = _Block_copy(aBlock);
    [(NSMutableArray *)v28 addObject:v29];

    v30 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v30 setAdditive:1];
    [v30 setMass:1.0];
    [v30 setStiffness:100.0];
    [v30 setDamping:200.0];
    v31 = v18 - v20 + -50.0;
    [v30 pkui_updateForAdditiveAnimationFromPoint:v12 toPoint:v14 withLayerPoint:{v16, v31, v16, v18}];
    v32 = *MEMORY[0x1E69797E8];
    [v30 setFillMode:*MEMORY[0x1E69797E8]];
    [v30 durationForEpsilon:0.001];
    [v30 setDuration:?];
    v33 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v33 setAdditive:1];
    [v33 setMass:2.0];
    [v33 setStiffness:100.0];
    [v33 setDamping:200.0];
    [v33 pkui_updateForAdditiveAnimationFromPoint:v16 toPoint:v31 withLayerPoint:{v16, v18, v16, v31}];
    [v33 setFillMode:v32];
    [v33 durationForEpsilon:0.001];
    v35 = v34;
    [v33 setBeginTime:0.17];
    [v33 setDuration:v35];
    v36 = PKMagicCurve();
    [v33 setTimingFunction:v36];

    v37 = [MEMORY[0x1E6979308] animation];
    [v37 setDuration:v35 + 0.17];
    v56[0] = v30;
    v56[1] = v33;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    [v37 setAnimations:v38];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke_2;
    v49[3] = &unk_1E801E5C8;
    objc_copyWeak(v50, buf);
    v50[1] = reorderActionTag;
    [v37 pkui_setDidStartHandler:v49];
    v39 = [v10 pkui_addAdditiveAnimation:v37];
    v40 = MEMORY[0x1E69DD250];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke_4;
    v45[3] = &unk_1E8012188;
    v41 = v43;
    v46 = v41;
    v47 = v16;
    v48 = v18;
    [v40 performWithoutAnimation:v45];
    v42 = [(PKPassGroupStackView *)self delegate];
    [v42 groupStackView:self groupDidMoveFromIndex:-[PKPassGroupStackView _indexOfGroupView:](self toIndex:{"_indexOfGroupView:", v41), a4}];

    [(PKPassGroupStackView *)self _layoutContentAnimated:1];
    objc_destroyWeak(v50);

    objc_destroyWeak(&v54);
    objc_destroyWeak(buf);
  }
}

void __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[335];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [v3 insertSubview:v4 aboveSubview:v5];
    }

    else
    {
      [v3 insertSubview:v4 belowSubview:v5];
    }

    WeakRetained = v6;
  }
}

void __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 170000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke_3;
  v3[3] = &unk_1E801E5C8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __57__PKPassGroupStackView__animateGroupViewForUndo_toIndex___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[323] == *(a1 + 40))
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[322] firstObject];
    if (v3)
    {
      [v4[322] removeObjectAtIndex:0];
      v3[2](v3);
      if ((v4[321] & 1) == 0 && ![v4[322] count])
      {
        [v4 _arrangeGroups];
      }
    }

    WeakRetained = v4;
  }
}

- (double)_setupSpringFactory:(id)a3 forPileAnimationFromPresentationState:(int64_t)a4 toPresentationState:(int64_t)a5 reverse:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = 0.0;
  if (self->_staggerPileAnimations)
  {
    priorState = self->_priorState;
    if (a5 == 3)
    {
      if (priorState != 5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (a5 == 5 && priorState == 3)
    {
LABEL_5:
      [(PKPassGroupStackView *)self _setupSpringFactoryForPileAnimations:v9 withMaximumAcceleration:v6 reverse:0.005];
      v10 = v12;
    }
  }

LABEL_6:

  return v10;
}

- (double)_setupSpringFactoryForPileAnimations:(id)a3 withMaximumAcceleration:(double)a4 reverse:(BOOL)a5
{
  v8 = a3;
  v9 = 0.0;
  if (v8 && [(NSMutableArray *)self->_passPileViews count])
  {
    v10 = [(PKPassGroupStackView *)self _maximumNumberOfVisiblePilePasses];
    v11 = [(NSMutableArray *)self->_passPileViews count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [(NSMutableArray *)self->_passPileViews subarrayWithRange:0, v12];
    v14 = 0;
    if (v11 > v10)
    {
      v14 = [(NSMutableArray *)self->_passPileViews subarrayWithRange:v10 - 1, v11 - v10];
    }

    if (!a5)
    {
      v15 = [v13 reverseObjectEnumerator];
      v16 = [v15 allObjects];

      v13 = v16;
    }

    v17 = [v13 count];
    if (!v17)
    {
      goto LABEL_27;
    }

    if (a4 == 0.0)
    {
      v18 = v17 - 1;
      if (v17 == 1)
      {
        v19 = 0.03;
        v20 = a4;
LABEL_21:
        if (v20 < a4)
        {
          a4 = v20;
        }

        if (a4 == 0.0)
        {
          v9 = v19 * (v17 - 1);
        }

        else
        {
          v9 = v19 + (((v17 - 1) * v17) >> 1) * a4;
        }

        v21 = self->_modallyPresentedGroupView;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __93__PKPassGroupStackView__setupSpringFactoryForPileAnimations_withMaximumAcceleration_reverse___block_invoke;
        v24[3] = &unk_1E80241D8;
        v28 = v19;
        v29 = a4;
        v25 = v13;
        v26 = v21;
        v31 = a5;
        v27 = v14;
        v30 = v9;
        v22 = v21;
        [v8 setAnimationDelayHandler:v24];

LABEL_27:
        goto LABEL_28;
      }

      v19 = 0.18 / v18;
      if (v19 > 0.03)
      {
        v19 = 0.03;
      }
    }

    else
    {
      v19 = a4;
      v20 = a4;
      v18 = v17 - 1;
      if (v17 == 1)
      {
        goto LABEL_21;
      }

      if (0.6 / (v18 * v17) >= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0.6 / (v18 * v17);
      }
    }

    v20 = dbl_1BE116E70[a4 != 0.0] / (v18 * v17);
    goto LABEL_21;
  }

LABEL_28:

  return v9;
}

double __93__PKPassGroupStackView__setupSpringFactoryForPileAnimations_withMaximumAcceleration_reverse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = 0.0;
  if ([a3 isEqualToString:@"position"])
  {
    v7 = [*(a1 + 32) indexOfObjectIdenticalTo:v5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(a1 + 40) == v5 || *(a1 + 80) == 1 && [*(a1 + 48) indexOfObjectIdenticalTo:v5] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = *(a1 + 72);
      }
    }

    else
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v9 == 0.0)
      {
        v6 = v8 * v7;
      }

      else
      {
        v6 = v8 + ((v7 + v7 * v7) >> 1) * v9;
      }
    }
  }

  return v6;
}

- (double)_setupSpringFactoryForExternalToTableAnimations:(id)a3 forModalGroupIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(PKPassGroupStackView *)self _groupViewAtIndex:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 frontmostPassView];
      v10 = [v9 pass];
      v11 = [v10 style] != 6;
    }

    else
    {
      v11 = 0;
    }

    separatorIndex = self->_layoutState.groups.separatorIndex;
    v14 = separatorIndex != 0x7FFFFFFFFFFFFFFFLL && separatorIndex == a4;
    v15 = 750.0;
    if (!v14)
    {
      v16 = [(PKPassGroupStackView *)self _groupViewAtIndex:a4 + 1];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 layer];
        [v18 position];
        v20 = v19;

        [(PKPassGroupStackView *)self _yPositionForGroupAtIndex:a4 + 1 forState:4];
        v15 = v20 - v21 + -50.0;
      }

      else
      {
        v15 = 750.0;
      }
    }

    v22 = 0.0;
    v23 = fmin(fmax(v15 / 750.0, 0.0), 1.0);
    if (v11)
    {
      v24 = v23 * 0.08 + (1.0 - v23) * 0.28 + 0.1;
    }

    else
    {
      v24 = v23 * 0.08 + (1.0 - v23) * 0.28;
    }

    v25 = v23 * 0.8 + (1.0 - v23) * 0.6;
    [v6 stiffness];
    [v6 setStiffness:v26 * v25];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __91__PKPassGroupStackView__setupSpringFactoryForExternalToTableAnimations_forModalGroupIndex___block_invoke;
    v42[3] = &unk_1E8024200;
    v44 = a4;
    v28 = v27;
    v43 = v28;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v42];
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __91__PKPassGroupStackView__setupSpringFactoryForExternalToTableAnimations_forModalGroupIndex___block_invoke_2;
    v40[3] = &unk_1E8023D80;
    v30 = v29;
    v41 = v30;
    [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v40];
    v31 = [v28 count];
    if (v31)
    {
      if (v31 == 1)
      {
        v32 = 0.03;
      }

      else
      {
        v22 = (v31 - 1);
        if (0.18 / v22 <= 0.03)
        {
          v32 = 0.18 / v22;
        }

        else
        {
          v32 = 0.03;
        }
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __91__PKPassGroupStackView__setupSpringFactoryForExternalToTableAnimations_forModalGroupIndex___block_invoke_3;
      v34[3] = &unk_1E8024228;
      v37 = v24;
      v35 = v28;
      v36 = v30;
      v38 = v32;
      v39 = 0;
      [v6 setAnimationDelayHandler:v34];
      v24 = v24 + v22 * v32;
    }

    v12 = v24 + 0.1;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

uint64_t __91__PKPassGroupStackView__setupSpringFactoryForExternalToTableAnimations_forModalGroupIndex___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 40) < a3)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

double __91__PKPassGroupStackView__setupSpringFactoryForExternalToTableAnimations_forModalGroupIndex___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = 0.0;
  if (![a3 isEqualToString:@"position"])
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) indexOfObjectIdenticalTo:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v9)
    {
LABEL_11:

      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v28;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = [(PKPGSVExternalVCContext *)v13 _animatingView];

      if (v14 == v5)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v19 = v13;

    if (!v19)
    {
      goto LABEL_23;
    }

    v20 = v19[6];
    v21 = v20;
    if (v20)
    {
      v22 = v20[13];
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 1);
        goto LABEL_19;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = 0;
LABEL_19:
    v25 = v24;

    v15 = [*(a1 + 32) indexOfObjectIdenticalTo:{v25, v27}];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v15 = v7;
LABEL_13:
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  if (v17 == 0.0)
  {
    v18 = v16 * v15;
  }

  else
  {
    v18 = v16 + ((v15 + v15 * v15) >> 1) * v17;
  }

  v6 = v6 + v18;
LABEL_23:

  return v6;
}

- (void)_setupSpringFactoryForTableToExternalAnimations:(id)a3
{
  v4 = a3;
  if (v4 && self->_modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__PKPassGroupStackView__setupSpringFactoryForTableToExternalAnimations___block_invoke;
    v33[3] = &unk_1E8023F00;
    v33[4] = self;
    v6 = v5;
    v34 = v6;
    [(PKPassGroupStackView *)self _enumerateLoadedGroupViews:v33];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __72__PKPassGroupStackView__setupSpringFactoryForTableToExternalAnimations___block_invoke_2;
    v31[3] = &unk_1E8023D80;
    v8 = v7;
    v32 = v8;
    [(PKPassGroupStackView *)self _enumerateExternalVCContexts:v31];
    v9 = +[PKPassGroupView blurRadiusKeyPath];
    v10 = [v6 count];
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    [(PKPassGroupStackView *)self _modalPileStateForType:1];
    modalGroupIndex = self->_modalGroupIndex;
    if (modalGroupIndex >= [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking])
    {
      v12 = [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking];
    }

    else
    {
      v12 = self->_modalGroupIndex;
    }

    v13 = v30;
    if (v12 > v30)
    {
      v14 = self->_modalGroupIndex;
      if (v14 >= [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking])
      {
        v13 = [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking];
      }

      else
      {
        v13 = self->_modalGroupIndex;
      }
    }

    if (v10 >= v13)
    {
      v15 = v10 - v13;
    }

    else
    {
      v15 = 0;
    }

    if (v13 > v10)
    {
      v15 = v13 - v10;
    }

    if (v13 >= 2)
    {
      v16 = 0.055 / (v13 - 1);
      if (v16 > 0.03)
      {
        v16 = 0.03;
      }
    }

    else
    {
      v16 = 0.03;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__PKPassGroupStackView__setupSpringFactoryForTableToExternalAnimations___block_invoke_3;
    v20[3] = &unk_1E8024250;
    v21 = v6;
    v22 = v8;
    v26 = v13 < v10;
    v27 = v13 > v10;
    v25 = v16;
    v23 = v9;
    v24 = v15;
    v17 = v9;
    v18 = v8;
    v19 = v6;
    [v4 setAnimationDelayHandler:v20];
  }
}

uint64_t __72__PKPassGroupStackView__setupSpringFactoryForTableToExternalAnimations___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(*(result + 32) + 2208) > a3)
  {
    return [*(result + 40) addObject:a2];
  }

  return result;
}

double __72__PKPassGroupStackView__setupSpringFactoryForTableToExternalAnimations___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v6 isEqualToString:@"transform"])
  {
    if ([v6 isEqualToString:@"opacity"])
    {
      v15 = 0.135;
    }

    else if ([v6 isEqualToString:*(a1 + 48)])
    {
      v15 = 0.135;
    }

    else
    {
      v15 = 0.0;
    }

    goto LABEL_31;
  }

  v7 = [*(a1 + 32) indexOfObjectIdenticalTo:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v9)
    {
LABEL_11:

      v15 = 0.0;
      goto LABEL_31;
    }

    v10 = v9;
    v11 = *v29;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = [(PKPGSVExternalVCContext *)v13 _animatingView];

      if (v14 == v5)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v20 = v13;

    v15 = 0.0;
    if (!v20)
    {
      goto LABEL_31;
    }

    v21 = v20[6];
    v22 = v21;
    if (v21)
    {
      v23 = v21[13];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 1);
        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = 0;
LABEL_26:
    v26 = v25;

    v16 = [*(a1 + 32) indexOfObjectIdenticalTo:{v26, v28}];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  v16 = v7;
LABEL_15:
  if (*(a1 + 72) == 1)
  {
    v17 = *(a1 + 56);
    v18 = v16 >= v17;
    v19 = v16 - v17;
    if (v18)
    {
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (*(a1 + 73) == 1)
  {
    v16 += *(a1 + 56);
  }

  v15 = *(a1 + 64) * v16;
LABEL_31:

  return v15;
}

- (id)_createFactoryForExternalPresentation
{
  [(PKPassGroupStackView *)self _positionForGroupView:self->_modallyPresentedGroupView atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:self->_modallyPresentedGroupView] forState:7];
  v4 = v3;
  v5 = [(PKPassGroupView *)self->_modallyPresentedGroupView layer];
  [v5 position];
  v7 = vabdd_f64(v4, v6);
  v8 = fmin(fmax((v7 + -100.0) / 500.0, 0.0), 1.0);
  v9 = fmin(fmax((v7 + -50.0) / 550.0, 0.0), 1.0);
  v10 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:1.0 stiffness:(v8 * 0.85 + (1.0 - v8) * 1.05) * 178.85569 damping:(1.0 - v9 + v9 * 1.15) * 18.18598];

  return v10;
}

- (id)_createModalPileFactoryForExternalVCContext:(id)a3 dismissalToPresentationState:(int64_t)a4 withTransitionContext:(id)a5 factory:(id)a6 positionAdjustment:(UIOffset)a7
{
  vertical = a7.vertical;
  horizontal = a7.horizontal;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  if (!v16 || !v17)
  {
    __break(1u);
    goto LABEL_35;
  }

  a6 = v18;
  if (*(v17 + 8) == 1)
  {
    if (*(v17 + 11))
    {
      v7 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:1.0 stiffness:178.85569 damping:20.004578];
      v9 = v17[3];
      if (fabs(v9) <= 1500.0)
      {
        v43 = [PKPGSVSpringAnimationConfiguration createWithFactory:a6 modalFactory:v7];
LABEL_32:

        goto LABEL_33;
      }

      v19 = v16[6];
      v8 = v19;
      if (v19)
      {
        v20 = v19[13];
        v21 = v20;
        if (v20)
        {
          v22 = *(v20 + 1);
LABEL_9:
          v23 = v22;

          v24 = [v23 superview];
          if (v24)
          {
            [(PKPassGroupStackView *)self _positionForGroupView:v23 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v23] forState:a4];
            v26 = v25;
            [v23 center];
            if ((horizontal != *MEMORY[0x1E69DE258] || vertical != *(MEMORY[0x1E69DE258] + 8)) && v24 == self->_passContainerView)
            {
              v27 = vertical + v27;
            }

            v30 = v26 - v27;
            v31 = vabdd_f64(v26, v27);
            if (v30 == 0.0)
            {
              *v28.i64 = v9;
            }

            else
            {
              *v28.i64 = v30;
            }

            v29.i64[0] = 1.0;
            v32.f64[0] = NAN;
            v32.f64[1] = NAN;
            v33 = vbslq_s8(vnegq_f64(v32), v29, v28).u64[0];
            if (v31 >= 1.0)
            {
              v34 = v30;
            }

            else
            {
              v34 = *&v33;
            }

            [(PKPassGroupStackView *)self bounds];
            v36 = v35;
            [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:1];
            v38 = v37;
            [(PKPassGroupStackView *)self _scaleForTableGroup];
            v40 = v39;
            v41 = v9 * ((v39 - v38) / fmax(v36 * 0.25, 44.0));
            if (v23)
            {
              [v23 transform3D];
              v42 = v48;
            }

            else
            {
              v42 = 0.0;
            }

            if (v40 / v42 == 1.0)
            {
              v46 = 0.0;
            }

            else
            {
              v46 = v41;
            }

            v45 = [(PKPGSVSpringAnimationConfiguration *)v34 createWithFactory:v9 modalFactory:v40 / v42 modalYImpulse:v46 modalYVelocity:PKPGSVSpringAnimationConfiguration modalScaleImpulse:a6 modalScaleVelocity:v7];
          }

          else
          {
            v45 = [PKPGSVSpringAnimationConfiguration createWithFactory:a6 modalFactory:v7];
          }

          v43 = v45;

          goto LABEL_32;
        }

LABEL_36:
        v22 = 0;
        goto LABEL_9;
      }

LABEL_35:
      v21 = 0;
      goto LABEL_36;
    }

    v44 = [(PKPassGroupStackView *)self _createFactoryForExternalDismissal];
    v43 = [PKPGSVSpringAnimationConfiguration createWithFactory:a6 modalFactory:v44];
  }

  else
  {
    v43 = 0;
  }

LABEL_33:

  return v43;
}

- (id)_frontmostPastViewForGroupIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PKPassGroupStackView *)self _groupViewAtIndex:?];
    v3 = [v4 frontmostPassView];
  }

  return v3;
}

- (BOOL)_shouldTablePresentationScroll
{
  if (![(PKPassGroupStackView *)self isTableModalPresentation]|| !self->_layoutState.groups.count && (*(&self->_layoutState + 28) & 0xC) != 0)
  {
    return 1;
  }

  if (![(PKPassGroupStackView *)self isTableModalPresentation])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v4 = [WeakRetained groupAtIndex:0];
  v5 = [v4 passCount] == 1;

  return v5;
}

- (BOOL)_isModalPresentationAllowedForSingleGroup
{
  if (*(&self->_layoutState.groups + 16))
  {
    v2 = *(&self->_layoutState + 28);
    if (((v2 >> 2) & 1) + ((v2 >> 3) & 1) <= 1)
    {
      v3 = self;
      LOBYTE(self) = 1;
      if ((v2 & 0x70) == 0 && !v3->_parentViewControllerWantsNavigationBar)
      {
        LODWORD(self) = (v2 >> 7) & 1;
      }
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)_firstHeaderContext
{
  passHeaderContext = self->_passHeaderContext;
  if (self->_paymentHeaderContext)
  {
    passHeaderContext = self->_paymentHeaderContext;
  }

  v3 = passHeaderContext;

  return v3;
}

- (id)_createSortedGroupViewIndexesWithMap:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](self->_groupViewsByGroupID, "count")}];
  if (a3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v7 = 0;
  }

  groupViewsByGroupID = self->_groupViewsByGroupID;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PKPassGroupStackView__createSortedGroupViewIndexesWithMap___block_invoke;
  v15[3] = &unk_1E8024278;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  [(NSMutableDictionary *)groupViewsByGroupID enumerateKeysAndObjectsUsingBlock:v15];
  [v9 sortUsingComparator:&__block_literal_global_190];
  if (a3)
  {
    v11 = [v10 copy];
    v12 = *a3;
    *a3 = v11;
  }

  v13 = [v9 copy];

  objc_autoreleasePoolPop(v5);
  return v13;
}

void __61__PKPassGroupStackView__createSortedGroupViewIndexesWithMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) _indexOfGroupView:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [*(a1 + 40) addObject:v5];
    v6 = *(a1 + 48);
    if (v6)
    {
      [v6 setObject:v7 forKeyedSubscript:v5];
    }
  }
}

- (void)_enumerateLoadedGroupViews:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v5 = [(PKPassGroupStackView *)self _createSortedGroupViewIndexesWithMap:&v19];
  v6 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
        v13 = [v19 objectForKeyedSubscript:{v12, v15}];
        if (!v13)
        {
          __break(1u);
        }

        v14 = v13;
        v4[2](v4, v13, [v12 unsignedIntegerValue], v7);
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_reverseEnumerateLoadedGroupViews:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v5 = [(PKPassGroupStackView *)self _createSortedGroupViewIndexesWithMap:&v19];
  v6 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
        v13 = [v19 objectForKeyedSubscript:v12];
        if (!v13)
        {
          __break(1u);
        }

        v14 = v13;
        v4[2](v4, v13, [v12 unsignedIntegerValue], v5);
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_enumerateExternalVCContexts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  p_externalVC = &self->_externalVC;
  context = p_externalVC->context;
  if (!context || ((v4)[2](v4, context, &v17), (v17 & 1) == 0))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = p_externalVC->tombstonedContexts;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v4[2](v4, *(*(&v13 + 1) + 8 * v12), &v17);
        if (v17)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_groupViewAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);
  v6 = [WeakRetained groupAtIndex:a3];
  v7 = [(PKPassGroupStackView *)self _groupViewWithGroup:v6];

  return v7;
}

- (id)_groupViewWithGroup:(id)a3
{
  v4 = [a3 groupID];
  v5 = [(PKPassGroupStackView *)self _groupViewWithGroupID:v4];

  return v5;
}

- (id)_groupViewWithGroupID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [(NSMutableDictionary *)self->_groupViewsByGroupID objectForKeyedSubscript:?];
  return objc_claimAutoreleasedReturnValue();
}

- (id)_groupViewAtIndexWhileEnsuringVisible:(unint64_t)a3 withContentMode:(int64_t)a4
{
  v7 = [(PKPassGroupStackView *)self _groupViewAtIndex:?];
  v8 = v7;
  if (!v7 || [v7 isHidden])
  {
    v13 = 0;
    v9 = [(PKPassGroupStackView *)self _loadGroupViewAtIndex:a3 forState:self->_presentationState presentationState:1 cached:&v13];

    v8 = v9;
  }

  v10 = [v8 frontmostPassView];
  v11 = v10;
  if (v10 && [v10 contentMode] < a4)
  {
    [v11 setContentMode:a4];
  }

  return v8;
}

- (void)_notifyDelegateOfStateChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPassGroupStackView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 groupStackView:self didTransitionToState:self->_presentationState animated:v3];
  }
}

- (void)_setModalGroupView:(id)a3
{
  v4 = [(PKPassGroupStackView *)self _indexOfGroupView:a3];

  [(PKPassGroupStackView *)self setModalGroupIndex:v4];
}

- (void)_setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PKPassGroupStackView *)self isScrollEnabled]!= a3)
  {
    if (v3)
    {

      [(PKPassGroupStackView *)self setScrollEnabled:1];
    }

    else
    {

      [(PKPassGroupStackView *)self _disableScrollingAndNormalizeContentOffset];
    }
  }
}

- (void)_disableScrollingAndNormalizeContentOffset
{
  [(PKPassGroupStackView *)self setScrollEnabled:0];
  [(PKPassGroupStackView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPassGroupStackView *)self adjustedContentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PKPassGroupStackView *)self contentSize];
  v20 = fmin(fmax(v4, -v14), v18 + v19 - v8);
  v22 = fmin(fmax(v6, -v12), v16 + v21 - v10);
  v23 = v6 != v22 || v4 != v20;
  v24 = [(PKPassGroupStackView *)self isDecelerating];
  if (v23 || v24)
  {
    [(PKPassGroupStackView *)self setContentOffset:0 animated:v20, v22];
    if (v23)
    {

      [(PKPassGroupStackView *)self _layoutContentFromOffset:1 toOffset:v4 animated:v6, v20, v22];
    }
  }
}

- (void)_setDefaultPaymentPassFromGroupView:(id)a3 reorderedGroupView:(id)a4
{
  v6 = a4;
  v7 = [a3 frontmostPassView];
  v8 = [v7 pass];
  v9 = [v8 paymentPass];

  v10 = [v9 supportsBarcodePayment];
  if ([v9 supportsDefaultCardSelection] && !objc_msgSend(v9, "contactlessActivationState"))
  {
    v19 = [(PKPaymentService *)self->_paymentService defaultPaymentPassUniqueIdentifier];
    paymentService = self->_paymentService;
    v21 = [v9 uniqueID];
    [(PKPaymentService *)paymentService setDefaultPaymentPassUniqueIdentifier:v21];

    [(PKPassGroupStackView *)self setUserInteractionEnabled:0];
    v22 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke_2;
    block[3] = &unk_1E80222D8;
    block[4] = self;
    v28 = v10;
    v25 = v9;
    v26 = v19;
    v27 = v6;
    v11 = v19;
    dispatch_after(v22, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v11 = [(UIView *)self pkui_viewControllerFromResponderChain];
    if (v11)
    {
      if (v10)
      {
        PKLocalizedAquamanString(&cfstr_DefaultAccount_0.isa);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_DefaultCardCha_1.isa);
      }
      v12 = ;
      v23 = [v9 localizedDescription];
      v13 = PKStringWithValidatedFormat();

      v14 = PKLocalizedPaymentString(&cfstr_DefaultCardCha_2.isa);
      v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v14 preferredStyle:{1, v23}];
      v16 = MEMORY[0x1E69DC648];
      v17 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke;
      v29[3] = &unk_1E8011310;
      v29[4] = self;
      v30 = v6;
      v18 = [v16 actionWithTitle:v17 style:0 handler:v29];

      [v15 addAction:v18];
      [v11 presentViewController:v15 animated:1 completion:0];
    }
  }
}

void __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[2568] & 1) == 0)
  {
    v3 = [v2 pkui_viewControllerFromResponderChain];
    if (!v3)
    {
      [*(a1 + 32) setUserInteractionEnabled:1];
LABEL_19:

      return;
    }

    if (*(a1 + 64))
    {
      PKLocalizedAquamanString(&cfstr_DefaultAccount_1.isa);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_DefaultCardCha_3.isa);
    }
    v4 = ;
    v16 = [*(a1 + 40) localizedDescription];
    v5 = PKStringWithValidatedFormat();

    if ([*(a1 + 40) isPrivateLabel])
    {
      v6 = @"DEFAULT_CARD_CHANGED_FROM_WALLET_MESSAGE_PRIVATE_LABEL";
    }

    else
    {
      if (*(a1 + 64))
      {
        v7 = PKLocalizedAquamanString(&cfstr_DefaultAccount.isa);
LABEL_16:
        v8 = v7;
        v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v7 preferredStyle:1];
        v10 = MEMORY[0x1E69DC648];
        v11 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v12 = [v10 actionWithTitle:v11 style:1 handler:0];

        [v9 addAction:v12];
        if ([*(a1 + 40) isPrivateLabel])
        {
          v13 = MEMORY[0x1E69DC648];
          v14 = PKLocalizedString(&cfstr_Cancel.isa);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke_3;
          v18[3] = &unk_1E8010D38;
          v18[4] = *(a1 + 32);
          v19 = *(a1 + 48);
          v20 = *(a1 + 56);
          v15 = [v13 actionWithTitle:v14 style:0 handler:v18];

          [v9 addAction:v15];
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke_4;
        v17[3] = &unk_1E8010970;
        v17[4] = *(a1 + 32);
        [v3 presentViewController:v9 animated:1 completion:v17];

        goto LABEL_19;
      }

      v6 = @"DEFAULT_CARD_CHANGED_FROM_WALLET_MESSAGE";
    }

    v7 = PKLocalizedPaymentString(&v6->isa);
    goto LABEL_16;
  }

  [v2 setUserInteractionEnabled:1];
}

uint64_t __79__PKPassGroupStackView__setDefaultPaymentPassFromGroupView_reorderedGroupView___block_invoke_3(void *a1)
{
  [*(a1[4] + 2616) setDefaultPaymentPassUniqueIdentifier:a1[5]];
  v2 = a1[4];
  v3 = a1[6];

  return [v2 _undoUserReorderWithReorderedGroupView:v3];
}

- (void)_undoUserReorderWithReorderedGroupView:(id)a3
{
  v4 = a3;
  v5 = [(PKPassGroupStackView *)self delegate];
  [v5 groupStackViewDidBeginReordering:self];

  reorderedGroupView = self->_reorderedGroupView;
  self->_reorderedGroupView = v4;
  v7 = v4;

  [(PKPassGroupStackView *)self _animateGroupViewForUndo:v7 toIndex:self->_initialIndexOfReorderedGroup];
  v8 = self->_reorderedGroupView;
  self->_reorderedGroupView = 0;

  v9 = [(PKPassGroupStackView *)self delegate];
  [v9 groupStackViewDidEndReordering:self];
}

- (id)_headerContextForPassType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PKPassGroupStackView__paymentHeaderContext;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PKPassGroupStackView__passHeaderContext;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (int64_t)_presentationStateForPassGroupView:(id)a3 withPassPresentationContext:(id)a4 requireUpdate:(BOOL *)a5 requireModal:(BOOL *)a6
{
  v10 = a3;
  result = a4;
  if (a5)
  {
    v12 = result;
    if ([result isFieldDetect])
    {
      v13 = [(PKPassGroupStackView *)self _canPerformPaymentForGroupView:v10];
    }

    else
    {
      v13 = 0;
    }

    if ([v12 isPostPayment] & 1) != 0 || (objc_msgSend(v12, "wantsPersistentCardEmulation"))
    {
      v14 = 1;
      v15 = 1;
    }

    else
    {
      v16 = [v12 wantsForcedModalPresentation];
      v15 = 0;
      v14 = v16 | v13;
    }

    v17 = *(&self->_layoutState + 24);
    v18 = v17 ^ 1 | v14;
    if (v18 & 1 | ((v17 & 2) == 0))
    {
      v19 = 5;
    }

    else
    {
      v19 = 7;
    }

    *a5 = v15;
    *a6 = v18 & 1;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)_canPerformPaymentForGroupView:(id)a3
{
  v4 = [a3 frontmostPassView];
  if (!v4)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v5 = [(PKPassGroupStackView *)self _createPassFooterConfigurationForPassView:v4 withContext:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = [v5 state];
  if (v7 > 2 || !v7)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v10 = [v4 pass];
    v11 = [v10 paymentPass];

    v12 = [v11 devicePrimaryContactlessPaymentApplication];
    if (v12 && ([v11 effectiveContactlessPaymentApplicationState], PKPaymentApplicationStateIsPersonalized()) && objc_msgSend(v11, "supportedRadioTechnologies") != 2)
    {
      v8 = 1;
    }

    else
    {
      v13 = [v11 devicePrimaryBarcodePaymentApplication];
      v14 = v13;
      v8 = 0;
      if (v13)
      {
        [v13 state];
        if (PKPaymentApplicationStateIsPersonalized())
        {
          v8 = 1;
        }
      }
    }

    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

LABEL_5:

LABEL_7:
  return v8;
}

- (void)_executeCompletionHandlers:(id)a3 cancelled:(BOOL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  [v4 removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_transitionSuccessful:(BOOL)a3
{
  transitionCanceller = self->_transitionCanceller;
  if (transitionCanceller)
  {
    v5 = a3;
    v6 = _Block_copy(transitionCanceller);
    v7 = self->_transitionCanceller;
    self->_transitionCanceller = 0;

    v6[2](v6);
    [(PKPassGroupStackView *)self _executeCompletionHandlers:self->_transitionCompletionHandlers cancelled:0];
    [(PKPassGroupStackView *)self _notifyDelegateOfStateChange:v5];
    [(PKPassGroupStackView *)self _updateNeedsNavigationBar];

    [(PKPassGroupStackView *)self _updatePausedState];
  }
}

- (void)_cancelTransition
{
  transitionCanceller = self->_transitionCanceller;
  if (transitionCanceller)
  {
    v4 = _Block_copy(transitionCanceller);
    v5 = self->_transitionCanceller;
    self->_transitionCanceller = 0;

    v4[2](v4);
    [(PKPassGroupStackView *)self _executeCompletionHandlers:self->_transitionCompletionHandlers cancelled:1];
    [(PKPassGroupStackView *)self _updateNeedsNavigationBar];

    [(PKPassGroupStackView *)self _updatePausedState];
  }
}

- (void)paymentDeviceDidBecomeAvailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKPassGroupStackView_paymentDeviceDidBecomeAvailable__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)paymentDeviceDidBecomeUnavailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPassGroupStackView_paymentDeviceDidBecomeUnavailable__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPassGroupStackView_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PKPassGroupStackView_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 reloadGroupsForGroupStackView:*(a1 + 32)];
}

- (void)groupViewTapped:(id)a3
{
  v4 = a3;
  if (!self->_invalidated && !self->_tombstoned && (*(&self->_layoutState + 28) & 0x200) == 0 && (*&self->_reorderingFlags & 1) == 0 && self->_presentationState != 6)
  {
    v5 = self->_externalVC.context;
    v6 = v5;
    if (!v5)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = v5->_transitionCoordinator;
    v8 = v7;
    if (!v6->_sending)
    {
      goto LABEL_12;
    }

    if (v7)
    {
      v9 = v7->_state;
      v10 = v9;
      if (v9)
      {
        passGroupView = v9->_passGroupView;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

    passGroupView = 0;
LABEL_11:
    v12 = passGroupView;

    if (v12 == v4)
    {
      [-[PKPGVTransitionCoordinator coordinatorForSender:](v8 self)];

      goto LABEL_58;
    }

LABEL_12:
    [(NSMutableDictionary *)self->_animatorsByGroupID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_230];
    if (!v4)
    {
      goto LABEL_58;
    }

    if ([(PKPassGroupStackView *)self isTableModalPresentation]&& (*(&self->_layoutState + 28) & 2) != 0 && self->_presentationState == 5 && (_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = [(PKPassGroupStackView *)self _isModalPresentationAllowed];
    v14 = [(PKPassGroupStackView *)self _isExternalModalPresentationAllowed];
    v15 = v14;
    if (!v13 && !v14)
    {
      if (self->_presentationState != 4)
      {
LABEL_20:
        [(PKPassGroupStackView *)self setPresentationState:4 animated:1];
      }

LABEL_58:

      goto LABEL_59;
    }

    WeakRetained = objc_loadWeakRetained(&self->_datasource);
    presentationState = self->_presentationState;
    if (presentationState != 7 && presentationState != 5)
    {
      if (presentationState == 4)
      {
        if (PKRunningInRemoteContext())
        {
          v18 = PKDeviceLocked();
        }

        else
        {
          v18 = 0;
        }

        v22 = [WeakRetained isInField];
        v23 = !v15;
        if ((v18 & 1) != 0 || v23)
        {
          [(PKPassGroupStackView *)self _setModalGroupView:v4];
          if (v13)
          {
            v26 = 5;
LABEL_56:
            [(PKPassGroupStackView *)self setPresentationState:v26 withContext:0 animated:1 completion:0];
            goto LABEL_57;
          }
        }

        else
        {
          v24 = *(&self->_layoutState + 24);
          if ((*&v22 & ((v24 & 2) >> 1)) == 1)
          {
            v25 = ![(PKPassGroupStackView *)self _canPerformPaymentForGroupView:v4];
          }

          else
          {
            v25 = (v24 >> 1) & 1;
          }

          [(PKPassGroupStackView *)self _setModalGroupView:v4];
          if (v25)
          {
            v26 = 7;
          }

          else
          {
            v26 = 5;
          }

          if ((v25 | v13))
          {
            goto LABEL_56;
          }
        }

        if ((v23 | v18))
        {
          v26 = 5;
        }

        else
        {
          v26 = 7;
        }

        goto LABEL_56;
      }

LABEL_57:

      goto LABEL_58;
    }

    if (self->_modallyPresentedGroupView == v4)
    {
      v21 = _os_feature_enabled_impl();
      if (presentationState == 7)
      {
        if (v21 && PKRunningInRemoteContext())
        {
          v19 = self;
          v20 = 5;
          goto LABEL_29;
        }
      }

      else if (v21 & v15)
      {
        v27 = [WeakRetained isInField];
        if ([(PKPassFooterView *)self->_passFooterView isTransacting]|| (v27 & 1) != 0)
        {
          goto LABEL_57;
        }

        if (PKRunningInRemoteContext() && (PKDeviceLocked() & 1) != 0)
        {
          if (!self->_hasInitiatedUnlock)
          {
            self->_hasInitiatedUnlock = 1;
            +[PKPassGroupsViewController _beginSuppressingFooter];
            objc_initWeak(&location, self);
            v28 = dispatch_time(0, 50000000);
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __40__PKPassGroupStackView_groupViewTapped___block_invoke_2;
            v29[3] = &unk_1E8010998;
            objc_copyWeak(&v30, &location);
            dispatch_after(v28, MEMORY[0x1E69E96A0], v29);
            objc_destroyWeak(&v30);
            objc_destroyWeak(&location);
          }

          goto LABEL_57;
        }

        v19 = self;
        v20 = 7;
        goto LABEL_29;
      }
    }

    v19 = self;
    v20 = 4;
LABEL_29:
    [(PKPassGroupStackView *)v19 setPresentationState:v20 animated:1];
    goto LABEL_57;
  }

LABEL_59:
}

void __40__PKPassGroupStackView_groupViewTapped___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [(PKPassGroupViewVerticalPanAnimator *)a3 setDismissAnimation:?];
  }
}

void __40__PKPassGroupStackView_groupViewTapped___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 2992) & 1) == 0 && (*(WeakRetained + 2997) & 1) == 0)
  {
    objc_copyWeak(&v4, (a1 + 32));
    SBSRequestPasscodeUnlockAlertUI();
    objc_destroyWeak(&v4);
  }
}

void __40__PKPassGroupStackView_groupViewTapped___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[2992] & 1) == 0 && (WeakRetained[2997] & 1) == 0)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained setPresentationState:7 animated:1];
      WeakRetained = v4;
    }

    if (WeakRetained[2872] == 1)
    {
      WeakRetained[2872] = 0;
      +[PKPassGroupsViewController endSuppressingFooter];
      WeakRetained = v4;
    }
  }
}

- (void)groupView:(id)a3 didUpdatePassView:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (self->_modallyPresentedGroupView == v12)
  {
    [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPass];
  }

  if (self->_passFooterViewVisible)
  {
    v7 = [v6 pass];
    v8 = [v7 uniqueID];

    v9 = [(PKPassFooterView *)self->_passFooterView configuration];
    v10 = [v9 pass];
    v11 = [v10 uniqueID];

    if ([v8 isEqualToString:v11])
    {
      [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
    }
  }
}

- (void)groupViewPressedDidChange:(id)a3
{
  if (self->_presentationState == 4)
  {
    [(PKPassGroupStackView *)self _layoutContentAnimated:1];
  }
}

- (void)groupViewPanDidBegin:(id)a3
{
  v5 = a3;
  if (self->_presentationState == 4 && (*&self->_reorderingFlags & 1) == 0)
  {
    v18 = v5;
    objc_storeStrong(&self->_reorderedGroupView, a3);
    if ([v18 isPressed])
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *&self->_reorderingFlags = v6;
    self->_panningVelocity = *MEMORY[0x1E695EFF8];
    v7 = [(PKPassGroupStackView *)self _indexOfGroupView:v18];
    self->_indexOfReorderedGroup = v7;
    self->_previousIndexOfReorderedGroup = v7;
    self->_initialIndexOfReorderedGroup = self->_indexOfReorderedGroup;
    [(PKPassGroupStackView *)self _adjustGroupViewsForReordering];
    v8 = [(PKPassGroupStackView *)self delegate];
    [v8 groupStackViewDidBeginReordering:self];

    v9 = [v18 frontmostPassView];
    v10 = [v9 pass];
    [v10 loadContentSync];

    [v9 setContentMode:5];
    [v18 center];
    v12 = v11;
    v14 = v13;
    v15 = [(PKPassGroupStackView *)self superview];
    [(PKPassGroupStackView *)self convertPoint:v15 toView:v12, v14];
    self->_reorderedGroupViewPositionInFrame.x = v16;
    self->_reorderedGroupViewPositionInFrame.y = v17;

    [(PKPassGroupStackView *)self _updateTopContentSeparatorVisibilityAnimated:1];
    v5 = v18;
  }
}

- (void)groupViewPanDidEnd:(id)a3
{
  v4 = a3;
  if (self->_reorderedGroupView == v4)
  {
    v5 = [(PKPassGroupStackView *)self _currentIndexOfReorderedGroupView];
    *&self->_reorderingFlags &= ~1u;
    reorderedGroupView = self->_reorderedGroupView;
    self->_reorderedGroupView = 0;

    v7 = [(PKPassGroupView *)v4 layer];
    if ([(PKPassGroupStackView *)self _recomputeLayoutState])
    {
      [(PKPassGroupStackView *)self _updateContentSizeAndLayout:1 forceUpdate:1];
      [(PKPassGroupStackView *)self _positionForGroupView:v4 atIndex:v5 forState:4];
      v9 = v8;
      v11 = v10;
    }

    else
    {
      [(PKPassGroupStackView *)self _positionForGroupView:v4 atIndex:v5 forState:4];
      v9 = v12;
      v11 = v13;
      [v7 position];
      v16 = *v14.i64;
      v17 = *v15.i64;
      if (v11 == *v15.i64)
      {
        v19 = 0.0;
      }

      else
      {
        *v14.i64 = v11 - *v15.i64;
        *v15.i64 = fmax(vabdd_f64(v11, *v15.i64), 20.0);
        v18.f64[0] = NAN;
        v18.f64[1] = NAN;
        v19 = self->_panningVelocity.y / *vbslq_s8(vnegq_f64(v18), v15, v14).i64;
      }

      v20 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
      [v20 setVelocity:v19];
      v21 = [v20 springAnimationWithKeyPath:@"position"];
      [v21 pkui_updateForAdditiveAnimationFromPoint:v16 toPoint:{v17, v9, v11}];
      v22 = [v7 pkui_addAdditiveAnimation:v21];
    }

    v23 = MEMORY[0x1E69DD250];
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __43__PKPassGroupStackView_groupViewPanDidEnd___block_invoke;
    v45 = &unk_1E8012188;
    v24 = v4;
    v46 = v24;
    v47 = v9;
    v48 = v11;
    [v23 performWithoutAnimation:&v42];
    [(PKPassGroupStackView *)self _stopAutoscrollTimer];
    v25 = [(PKPassGroupView *)v24 frontmostPassView];
    v26 = [v25 pass];

    if ([v26 passType] == 1)
    {
      if (self->_layoutState.groups.count)
      {
        v41 = v7;
        v27 = 0;
        while (1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_datasource);
          v29 = [WeakRetained groupAtIndex:v27];

          v30 = [v29 passAtIndex:0];
          if ([v30 passType] == 1 && objc_msgSend(v30, "style") == 6 && !objc_msgSend(v30, "contactlessActivationState"))
          {
            break;
          }

          if (self->_layoutState.groups.count <= ++v27)
          {
            v31 = 0;
            goto LABEL_18;
          }
        }

        v31 = 1;
LABEL_18:
        v7 = v41;
      }

      else
      {
        v31 = 0;
      }

      v32 = objc_loadWeakRetained(&self->_datasource);
      v33 = [v32 indexOfSeparationGroup];

      if (v31)
      {
        initialIndexOfReorderedGroup = self->_initialIndexOfReorderedGroup;
        v35 = v5 == v33 || initialIndexOfReorderedGroup == v33;
        if (v35 && initialIndexOfReorderedGroup != v5)
        {
          v37 = objc_loadWeakRetained(&self->_datasource);
          v38 = -[PKPassGroupStackView _groupViewAtIndex:](self, "_groupViewAtIndex:", [v37 indexOfSeparationGroup]);

          v39 = [v38 frontmostPassView];
          [v39 setContentMode:5];

          [(PKPassGroupStackView *)self _setDefaultPaymentPassFromGroupView:v38 reorderedGroupView:v24];
        }
      }
    }

    if (![(NSMutableArray *)self->_reorderActions count:v41])
    {
      [(PKPassGroupStackView *)self _arrangeGroups];
    }

    v40 = [(PKPassGroupStackView *)self delegate];
    [v40 groupStackViewDidEndReordering:self];

    [(PKPassGroupStackView *)self _updateTopContentSeparatorVisibilityAnimated:1];
    [(PKPassGroupStackView *)self _updatePausedState];
  }
}

- (BOOL)groupViewShouldAllowPanning:(id)a3
{
  v4 = a3;
  v5 = [(PKPassGroupStackView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 groupStackViewShouldAllowReordering:self])
  {
LABEL_10:
    v9 = 0;
    goto LABEL_12;
  }

  count = self->_layoutState.groups.count;
  if (self->_layoutState.groups.separatorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PKPassGroupStackView *)self _indexOfGroupView:v4];
    separatorIndex = self->_layoutState.groups.separatorIndex;
    if (v7 <= separatorIndex)
    {
      count = separatorIndex + 1;
    }

    else
    {
      count += ~separatorIndex;
    }
  }

  v9 = 0;
  if ((*&self->_reorderingFlags & 1) == 0 && count >= 2)
  {
    if (!self->_reorderedGroupView)
    {
      v9 = self->_presentationState == 4;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:

  return v9;
}

- (void)groupView:(id)a3 panned:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v9 = a3;
  v10 = v9;
  reorderingFlags = self->_reorderingFlags;
  if ((reorderingFlags & 1) != 0 && self->_reorderedGroupView == v9)
  {
    v13 = self->_reorderedGroupViewPositionInFrame.x;
    v12 = self->_reorderedGroupViewPositionInFrame.y;
    if ((*&self->_reorderingFlags & 4) == 0 && y < 0.0)
    {
      reorderingFlags |= 4u;
      *&self->_reorderingFlags = reorderingFlags;
    }

    v14 = 0;
    v15 = v7 + v12;
    if ((reorderingFlags & 8) == 0 && y > 0.0)
    {
      *&self->_reorderingFlags = reorderingFlags | 8;
      if ((reorderingFlags & 2) != 0)
      {
        *&self->_reorderingFlags = reorderingFlags & 0xF5 | 8;
        v15 = v15 + 15.0;
        self->_reorderedGroupViewPositionInFrame.y = self->_reorderedGroupViewPositionInFrame.y + 15.0;
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    [(PKPassGroupStackView *)self frame];
    if (v15 >= CGRectGetMaxY(v25) + -55.0)
    {
      [(PKPassGroupStackView *)self frame];
      v15 = CGRectGetMaxY(v26) + -55.0;
    }

    v16 = [(PKPassGroupStackView *)self superview];
    [(PKPassGroupStackView *)self convertPoint:v16 fromView:v13, v15];
    v18 = v17;
    v20 = v19;

    v21 = [(PKPassGroupView *)self->_reorderedGroupView layer];
    if (v14)
    {
      v22 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"position"];
      [v21 position];
      [v22 pkui_updateForAdditiveAnimationFromPoint:? toPoint:?];
      v23 = [v21 pkui_addAdditiveAnimation:v22];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__PKPassGroupStackView_groupView_panned_withVelocity___block_invoke;
    v24[3] = &unk_1E8012188;
    v24[4] = self;
    v24[5] = v18;
    v24[6] = v20;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
    self->_panningVelocity.x = x;
    self->_panningVelocity.y = y;
    [(PKPassGroupStackView *)self _updateTopContentSeparatorVisibilityAnimated:0];
    if (self->_autoscrollTimer)
    {
      [(PKPassGroupStackView *)self _autoscrollIfNecessary];
    }

    else
    {
      [(PKPassGroupStackView *)self _reorderPositionChangedForReorderedGroupViewWithVelocity:x, y];
    }
  }
}

- (void)reloadSuppressedContentForGroupView:(id)a3
{
  v4 = a3;
  v5 = [v4 frontmostPassView];
  v6 = [v5 suppressedContent];

  v7 = [(PKPassGroupStackView *)self groupViewPassesSuppressedContent:v4];
  if (v7 != v6)
  {
    v8 = v7;
    v9 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKPassGroupStackView_reloadSuppressedContentForGroupView___block_invoke;
    v10[3] = &unk_1E80119C8;
    v11 = v4;
    v12 = v8;
    [v9 pkui_animateUsingOptions:0 animations:v10 completion:0];
  }
}

void __60__PKPassGroupStackView_reloadSuppressedContentForGroupView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frontmostPassView];
  [v2 setSuppressedContent:*(a1 + 40)];
}

- (unint64_t)groupViewPassesSuppressedContent:(id)a3
{
  v4 = a3;
  v5 = [(PKPassGroupStackView *)self delegate];
  v6 = [v5 suppressedContent];

  if ([v4 isLoaned])
  {
    v7 = [v4 frontmostPassView];
    v8 = [v7 pass];
    v9 = [v8 secureElementPass];

    if ([v9 hasAssociatedPeerPaymentAccount])
    {
      v6 ^= 0x400uLL;
    }
  }

  return v6;
}

- (int64_t)groupViewContentModeForFrontmostPassWhenStacked:(id)a3
{
  v4 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPassGroupStackView_groupViewContentModeForFrontmostPassWhenStacked___block_invoke;
  aBlock[3] = &unk_1E80242C8;
  aBlock[4] = &v34;
  v5 = _Block_copy(aBlock);
  [(PKPassGroupStackView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PKPassGroupStackView *)self _lastIndex];
  v15 = [(PKPassGroupStackView *)self _indexOfGroupView:v4];
  count = self->_layoutState.groups.count;
  if (count <= [(PKPassGroupStackView *)self _tablePresentationNumberOfCellsBeforeStacking])
  {
    v5[2](v5, 5);
  }

  if (v9 < 0.0 && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PKPassGroupStackView *)self _yForGroupInTableAtIndex:v15];
    v18 = v17;
    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    if (v18 + 69.0 < CGRectGetMaxY(v38))
    {
      [(PKPassGroupStackView *)self _yForGroupInTableAtIndex:v15 + 1];
      if (v19 - v18 > 69.0)
      {
        v20 = [(PKPassGroupView *)v4 frontmostPassView];
        if ([v20 frontFaceBodyContentCreated])
        {
          v21 = 4;
        }

        else
        {
          v21 = 3;
        }

        v5[2](v5, v21);
      }
    }
  }

  v22 = [(PKPassGroupView *)v4 frontmostPassView];
  v23 = [v22 pass];

  if ([v23 passType] == 1)
  {
    v24 = [v23 dynamicLayerConfiguration];

    if (v24)
    {
      v5[2](v5, 4);
    }
  }

  separatorIndex = self->_layoutState.groups.separatorIndex;
  if (self->_modallyPresentedGroupView == v4)
  {
    v27 = v15 == 0x7FFFFFFFFFFFFFFFLL || v15 != v14;
    if (self->_layoutState.groups.count == 1 || !v27)
    {
      goto LABEL_29;
    }
  }

  else if (v15 != 0x7FFFFFFFFFFFFFFFLL && v15 == v14)
  {
LABEL_29:
    v5[2](v5, 5);
    goto LABEL_30;
  }

  if (separatorIndex != 0x7FFFFFFFFFFFFFFFLL && v15 == separatorIndex || self->_reorderedGroupView == v4)
  {
    goto LABEL_29;
  }

LABEL_30:
  if ((*&self->_reorderingFlags & 1) != 0 && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (separatorIndex != 0x7FFFFFFFFFFFFFFFLL && separatorIndex && self->_indexOfReorderedGroup == separatorIndex && v15 == separatorIndex - 1)
    {
      v5[2](v5, 5);
    }

    indexOfReorderedGroup = self->_indexOfReorderedGroup;
    if (v14 && indexOfReorderedGroup == v14 && v15 == v14 - 1)
    {
      v5[2](v5, 5);
      indexOfReorderedGroup = self->_indexOfReorderedGroup;
    }

    v29 = indexOfReorderedGroup != 0;
    v30 = indexOfReorderedGroup - 1;
    if (v29 && v15 == v30)
    {
      v5[2](v5, 3);
    }
  }

  v31 = v35[3];

  _Block_object_dispose(&v34, 8);
  return v31;
}

uint64_t __72__PKPassGroupStackView_groupViewContentModeForFrontmostPassWhenStacked___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) < a2)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

- (int64_t)groupViewContentModeForFrontmostPassWhenPiled:(id)a3 withDefaultContentMode:(int64_t)a4
{
  if (!a3)
  {
    return 4;
  }

  passPileViews = self->_passPileViews;
  v5 = a3;
  v6 = [(NSMutableArray *)passPileViews firstObject];

  if (v6 == v5)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (void)groupView:(id)a3 frontmostPassViewDidChange:(id)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (self->_modallyPresentedGroupView == a3)
  {
    [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPass];
    v7 = v8;
  }

  [(PKPassGroupStackView *)self _updatePassFooterViewIfNecessaryWithContext:v7 becomeVisibleDelay:0.0];
  [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
}

- (void)groupView:(id)a3 deleteButtonPressedForPass:(id)a4 sourceView:(id)a5
{
  if ((*(&self->_layoutState + 28) & 0x200) == 0)
  {
    *(&self->_layoutState + 28) |= 0x200u;
    v7 = a5;
    v8 = a3;
    [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
    [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
    v9 = [PKPassDeleteAnimationController alloc];
    v10 = [v8 frontmostPassView];
    v11 = [(PKPassDeleteAnimationController *)v9 initWithPassView:v10 groupView:v8];

    deleteAnimationController = self->_deleteAnimationController;
    self->_deleteAnimationController = v11;

    [(PKPassDeleteAnimationController *)self->_deleteAnimationController setDelegate:self];
    v13 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [(PKPassDeleteAnimationController *)self->_deleteAnimationController showInViewController:v13 sourceView:v7];

    [(PKPassGroupStackView *)self setUserInteractionEnabled:0];
  }
}

- (void)groupViewDidUpdatePageControlVisibility:(id)a3
{
  v4 = a3;
  if (self->_modallyPresentedGroupView == v4 && (self->_presentationState | 2) == 7)
  {
    v5 = v4;
    [(PKPassGroupStackView *)self _layoutContentAnimated:1];
    v4 = v5;
  }
}

- (void)groupViewExpandButtonTapped:(id)a3
{
  v4 = a3;
  presentationState = self->_presentationState;
  if (presentationState == 7 || presentationState == 5)
  {
    v7 = 0;
  }

  else
  {
    if (presentationState != 4)
    {
      goto LABEL_12;
    }

    v8 = v4;
    v7 = ![(PKPassGroupStackView *)self isTableModalPresentation];
    v4 = v8;
  }

  if (self->_modallyPresentedGroupView == v4 && (v7 & 1) == 0)
  {
    v9 = v4;
    [(PKPassFooterView *)self->_passFooterView showFullScreenBarcode];
    v4 = v9;
  }

LABEL_12:
}

- (double)groupViewModalReferenceScale:(id)a3 isValid:(BOOL *)a4
{
  v6 = a3;
  if (self->_modallyPresentedGroupView == v6)
  {
    v7 = 28;
    if (!self->_transitionCanceller)
    {
      v7 = 6;
    }

    v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v7]);
    if ((v8 - 1) >= 4 && v8 != 6)
    {
      [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:v8 == 7];
      v10 = v13;
      if (!a4)
      {
        goto LABEL_12;
      }

      v11 = 1;
      goto LABEL_11;
    }
  }

  v10 = 1.0;
  if (a4)
  {
    v11 = 0;
LABEL_11:
    *a4 = v11;
  }

LABEL_12:

  return v10;
}

- (void)passFooterViewDidChangePhysicalButtonRequirement:(id)a3 withContext:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([(PKPassGroupStackView *)self isPresentingPassViewFront]&& self->_passFooterView == v15)
  {
    if ([(PKPassFooterView *)v15 isPhysicalButtonRequired])
    {
      v8 = &self->_layoutState + 28;
      v7 = *(&self->_layoutState + 28);
      if ((((v7 & 0x400) == 0) ^ self->_passFooterViewVisible))
      {
        goto LABEL_18;
      }

      if (self->_passFooterViewVisible)
      {
        v9 = 1024;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v8 = &self->_layoutState + 28;
      v7 = *(&self->_layoutState + 28);
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      v9 = 0;
    }

    v10 = v7 & 0xFFFFFBFF | v9;
    *v8 = v7 & 0xFBFF | v9;
    v11 = 28;
    if (!self->_transitionCanceller)
    {
      v11 = 6;
    }

    v12 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassGroupStackView__staggerPileAnimations[v11]);
    if (v12 == 5 || v12 == 4 && (v13 = [(PKPassGroupStackView *)self isTableModalPresentation], v10 = *v8, v13))
    {
      *v8 = v10 | 0x800;
      [(PKPassGroupStackView *)self setPresentationState:5 withContext:v6 animated:1 completion:0];
      v14 = *v8 & 0xF7FF | (((v10 >> 11) & 1) << 11);
    }

    else
    {
      LOWORD(v14) = v10 & 0xFBFF;
    }

    *v8 = v14;
  }

LABEL_18:
}

- (void)passFooterViewDidChangeCoachingState:(id)a3
{
  if (self->_passFooterView == a3)
  {
    [(PKPassGroupStackView *)self _updateCoachingState];
  }
}

- (BOOL)isPassFooterViewInGroup:(id)a3
{
  v3 = [(PKPassGroupView *)self->_modallyPresentedGroupView group];
  v4 = [v3 passCount] > 1;

  return v4;
}

- (unint64_t)suppressedContentForPassFooter:(id)a3
{
  v3 = [(PKPassGroupStackView *)self delegate];
  v4 = [v3 suppressedContent];

  return v4;
}

- (void)passFooterViewDidChangePileSuppressionRequirement:(id)a3
{
  v4 = [a3 requestPileSuppression];

  [(PKPassGroupStackView *)self setPilingMode:v4];
}

- (void)passFooterViewDidSucceedAtAuthorization:(id)a3
{
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  v5 = [a3 configuration];
  v6 = [v5 pass];
  [(PKPassGroupView *)modallyPresentedGroupView setPassViewExpanded:1 forPass:v6 animated:1];

  [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
}

- (void)passFooterViewDidEndAuthorization:(id)a3
{
  modallyPresentedGroupView = self->_modallyPresentedGroupView;
  v5 = [a3 configuration];
  v6 = [v5 pass];
  [(PKPassGroupView *)modallyPresentedGroupView setPassViewExpanded:0 forPass:v6 animated:1];

  [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
}

- (void)deleteAnimationControllerWillBeginDeleteAnimation:(id)a3
{
  v13 = a3;
  v4 = [v13 passView];
  v5 = [v4 pass];
  v6 = [v5 style];

  if (v6 == 6)
  {
    v7 = [v13 groupView];
    v8 = [(PKPassGroupStackView *)self _indexOfGroupView:v7];

    if (v8)
    {
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [(PKPassGroupStackView *)self _groupViewAtIndex:v8 - 1];
        v10 = [v9 frontmostPassView];
        v11 = [v10 contentMode];
        if (v11 <= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = v11;
        }

        [v10 setContentMode:v12];
      }
    }
  }
}

- (void)deleteAnimationController:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  deleteAnimationController = self->_deleteAnimationController;
  if (deleteAnimationController == v6)
  {
    v13 = v6;
    v8 = deleteAnimationController;
    v9 = self->_deleteAnimationController;
    self->_deleteAnimationController = 0;

    *(&self->_layoutState + 28) &= ~0x200u;
    [(PKPassGroupStackView *)self setUserInteractionEnabled:1];
    if (v4)
    {
      if (self->_presentationState == 4 && [(PKPassGroupStackView *)self _shouldTablePresentationScroll])
      {
        [(PKPassGroupStackView *)self setScrollEnabled:1];
      }

      v10 = [(PKPassGroupStackView *)self delegate];
      v11 = [(PKPassDeleteAnimationController *)v13 passView];
      v12 = [v11 pass];
      [v10 groupStackView:self deleteConfirmedForPass:v12];
    }

    [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
    v6 = v13;
  }
}

- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = [a4 presentingViewController];
  v8 = [(PKPassGroupView *)self->_modallyPresentedGroupView group];
  if (!v8 || (([v6 uniqueID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "indexForPassUniqueID:", v9), v9, v10 != 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v7 == 0) : (v11 = 1), v11 || (*(&self->_layoutState + 28) & 0x200) != 0))
  {
    v15 = 0;
  }

  else
  {
    *(&self->_layoutState + 28) |= 0x200u;
    [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
    [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
    modalGroupIndex = self->_modalGroupIndex;
    if (modalGroupIndex && [(PKPassGroupStackView *)self _isGroupAtIndexInModalPile:modalGroupIndex - 1])
    {
      v13 = [(PKPassGroupStackView *)self _groupViewAtIndex:self->_modalGroupIndex - 1];
      v14 = [v13 frontmostPassView];

      if ([v14 contentMode] <= 3)
      {
        [v14 setContentMode:4];
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__PKPassGroupStackView_handleDeletePassRequestWithPass_forViewController___block_invoke;
    v17[3] = &unk_1E8010970;
    v17[4] = self;
    v15 = 1;
    [v7 dismissViewControllerAnimated:1 completion:v17];
  }

  return v15;
}

uint64_t __74__PKPassGroupStackView_handleDeletePassRequestWithPass_forViewController___block_invoke(uint64_t a1)
{
  v2 = [PKPassDeleteAnimationController alloc];
  v3 = [*(*(a1 + 32) + 2200) frontmostPassView];
  v4 = [(PKPassDeleteAnimationController *)v2 initWithPassView:v3 groupView:*(*(a1 + 32) + 2200)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 2448);
  *(v5 + 2448) = v4;

  [*(*(a1 + 32) + 2448) setDelegate:?];
  [*(a1 + 32) setUserInteractionEnabled:0];
  v7 = *(*(a1 + 32) + 2448);

  return [v7 forceDeleteAnimation];
}

- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)a3
{
  v17 = a3;
  v4 = [v17 object];
  if ([(PKPassFooterView *)self->_passFooterView isViewCurrentContentView:v4])
  {
    v5 = [v17 userInfo];
    v6 = [v5 PKBoolForKey:*MEMORY[0x1E69BC070]];

    if ((v6 & 1) == 0)
    {
      v7 = v4;
      v8 = v7;
      for (i = v7 != self; v8 && v8 != self; i = v8 != self)
      {
        v10 = v8;
        v8 = [(PKPassGroupStackView *)v8 superview];
      }

      if (!i)
      {
        WeakRetained = objc_loadWeakRetained(&self->_datasource);
        if ([WeakRetained supportsExternalPresentation])
        {
          v12 = objc_loadWeakRetained(&self->_datasource);
          v13 = [v12 prefersExternalPresentation];

          if (v13)
          {
            [(PKPassGroupStackView *)self setPresentationState:7 animated:1];
            goto LABEL_15;
          }
        }

        else
        {
        }

        passFooterView = self->_passFooterView;
        if (passFooterView)
        {
          v15 = [(PKPassFooterView *)passFooterView configuration];
          v16 = [v15 state];

          if (v16 == 4)
          {
            [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
          }
        }
      }
    }
  }

LABEL_15:
}

- (void)evaluateBrightness
{
  if (PKRunningInViewService())
  {

    [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
  }
}

- (void)resetBrightness
{
  if (PKRunningInViewService())
  {

    [(PKPassGroupStackView *)self _resetBrightness];
  }
}

- (void)_resetBrightness
{
  if (self->_wantsBacklightRamping)
  {
    v3 = +[PKBacklightController sharedInstance];
    [v3 endRequestingBacklightRamping:self];

    self->_wantsBacklightRamping = 0;
  }
}

- (BOOL)_shouldRampForFrontmostPassView:(id)a3
{
  v3 = a3;
  v4 = [v3 pass];
  if ([v4 shouldRampBacklight])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 secureElementPass];
    if ([v6 supportsBarcodePayment])
    {
      v5 = [v3 isFrontFaceExpanded];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_refreshBacklightForFrontmostPassGroup
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = self->_modallyPresentedGroupView;
  v4 = [(PKPassGroupView *)v3 frontmostPassView];
  if (!v4)
  {
    if (!v3)
    {
LABEL_20:
      v14 = 0;
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v5 = [(PKPassGroupStackView *)self _shouldRampForFrontmostPassView:v4];
  if (!v5 && v3)
  {
LABEL_7:
    v6 = [v4 pass];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(PKPassGroupView *)v3 group];
    v8 = [v7 passes];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (v13 != v6 && [v13 shouldRampBacklight])
          {

            goto LABEL_18;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
    goto LABEL_22;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_18:
  if ((*(&self->_layoutState + 28) & 0x200) != 0)
  {
    v6 = [(PKPassGroupView *)v3 group];
    v14 = [v6 passCount] > 1;
LABEL_22:

    goto LABEL_23;
  }

  v14 = 1;
LABEL_23:
  [(PKPassGroupStackView *)self _rampBacklightIfNecessary:v14];
}

- (void)_rampBacklightIfNecessary:(BOOL)a3
{
  if (self->_wantsBacklightRamping != a3)
  {
    v3 = a3;
    v5 = +[PKBacklightController sharedInstance];
    v6 = v5;
    if (v3)
    {
      [v5 beginRequestingBacklightRamping:self];
    }

    else
    {
      [v5 endRequestingBacklightRamping:self];
    }

    self->_wantsBacklightRamping = v3;
  }
}

- (int64_t)stageForModalPresentationOfGroupAtIndex:(unint64_t)a3 withPassPresentationContext:(id)a4 requireUpdate:(BOOL *)a5
{
  result = a4;
  if (a5)
  {
    v9 = result;
    [(PKPassGroupStackView *)self _loadGroupViewAtIndexForModalPresentation:a3];
    v12 = 0;
    v10 = [(PKPassGroupStackView *)self _groupViewAtIndex:a3];
    v11 = [(PKPassGroupStackView *)self _presentationStateForPassGroupView:v10 withPassPresentationContext:v9 requireUpdate:a5 requireModal:&v12];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)presentedPassCanPerformPayment
{
  v2 = self;
  v3 = [(PKPassGroupStackView *)self _groupViewAtIndex:self->_modalGroupIndex];
  LOBYTE(v2) = [(PKPassGroupStackView *)v2 _canPerformPaymentForGroupView:v3];

  return v2;
}

- (BOOL)presentedPassIsPerformingPayment
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PKPassFooterView *)self->_passFooterView configuration];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      passFooterView = self->_passFooterView;
      v10 = 134218496;
      v11 = self;
      v12 = 2048;
      v13 = passFooterView;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%p:%p): in state: %lu", &v10, 0x20u);
    }

    if (v5 <= 4)
    {
      v8 = 0x16u >> v5;
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

  return v8 & 1;
}

- (id)connectTransitionCoordinatorToLayout:(id)a3
{
  result = a3;
  if (result)
  {
    v5 = result;
    v6 = (*(result + 2))(result, self);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)transitionCoordinatorWillConnectLayout:(id)a3 forRequest:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && (context = self->_externalVC.context) != 0 && (v8 = context->_transitionCoordinator, v8, v8 == v9) && v6)
  {
  }

  else
  {
    __break(1u);
  }
}

- (id)connectTransitionCoordinatorToSender:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_11;
  }

  p_externalVC = &self->_externalVC;
  if (self->_externalVC.context)
  {
    goto LABEL_11;
  }

  v3 = v5;
  if (self->_invalidated || self->_tombstoned || !self->_externalNavigationController)
  {
    goto LABEL_12;
  }

  v7 = 0;
  atomic_compare_exchange_strong(&p_externalVC->connecting, &v7, 1u);
  if (v7)
  {
    goto LABEL_11;
  }

  v8 = (*(v5 + 2))(v5, self);
  context = p_externalVC->context;
  if (context)
  {
    context = context->_transitionCoordinator;
  }

  v10 = context;

  if (v10 != v8 || (v11 = 1, atomic_compare_exchange_strong(&p_externalVC->connecting, &v11, 0), v11 != 1))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    v8 = 0;
  }

  return v8;
}

- (void)transitionCoordinatorWillConnectSender:(id)a3 forRequest:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!v11 || !v6 || self->_invalidated || self->_externalVC.context)
  {
    __break(1u);
  }

  else
  {
    v7 = v6[2];
    [(PKPassthroughView *)self->_externalVCContainerView setHitTestEnabled:1];
    v8 = v6[1];
    v9 = [PKPGSVExternalVCContext createForTransitionCoordinator:v11 withParentViewController:v8 dashboardPassGroupViewController:v7];
    context = self->_externalVC.context;
    self->_externalVC.context = v9;
  }
}

- (void)terminateTransitionCoordinator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v4];
    [(PKPassGroupStackView *)self _removeExternalVCContext:v5 terminated:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 sendNavigationItem:(id)a5 animated:(BOOL)a6 usingProvider:(id)a7 completion:(id)a8
{
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  if (!v15 || (context = self->_externalVC.context) == 0 || (a8 = v19, a7 = context->_transitionCoordinator, a7, a7 != v15) || !v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  a7 = v16[5];
  aBlock[0] = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke;
  aBlock[3] = &unk_1E80170D8;
  aBlock[4] = self;
  self = v17;
  v28 = self;
  v18 = v18;
  v29 = v18;
  v30 = v11;
  v11 = _Block_copy(aBlock);
  if (!a7)
  {
LABEL_9:
    v21 = MEMORY[0x1E69DD250];
    goto LABEL_10;
  }

  v21 = MEMORY[0x1E69DD250];
  if (*(a7 + 8) != 1)
  {
LABEL_10:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = v8;
    v23[2] = __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke_4;
    v23[3] = &unk_1E8010B50;
    v22 = &v24;
    v24 = v11;
    [v21 performWithoutAnimation:v23];
    (*(a8 + 2))(a8, 0);
    goto LABEL_11;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke_3;
  v25[3] = &unk_1E8010AD8;
  v22 = &v26;
  v26 = a8;
  [v21 _animateUsingDefaultTimingWithOptions:6 animations:v11 completion:v25];
LABEL_11:
}

void __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke_2;
  v3[3] = &unk_1E8010A10;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [(PKPassGroupStackView *)v2 _performGeometryUpdates:v3 animated:*(a1 + 56)];
}

void __110__PKPassGroupStackView_transitionCoordinator_transition_sendNavigationItem_animated_usingProvider_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKNavigationItemVoucher *)*(a1 + 32) redeemForProvider:0 usingHandle:?];
  if (v2)
  {
  }

  else
  {
    [(PKNavigationItemVoucher *)*(a1 + 32) invalidate];
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 sendViewAnimated:(BOOL)a5 withCompletion:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v13];
  if (v9)
  {
    self = v11;
    if (v11)
    {
      v12 = LOBYTE(v11->super.super._traitChangeRegistry) ^ 1;
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v12 = 1;
LABEL_4:
  v10[2](v10, v12 & 1);
}

- (id)transitionCoordinator:(id)a3 prepareTransition:(id)a4 dirty:(BOOL)a5
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    p_externalVC = &self->_externalVC;
    context = self->_externalVC.context;
    if (context)
    {
      a4 = v13;
      v5 = context->_transitionCoordinator;

      if (v5 == v12)
      {
        if (a4)
        {
          v15 = *(a4 + 5);
          p_pending = &self->_externalVC.pending;
          v16 = self->_externalVC.pending.executeTransition.context;
          if (!v16 || v16 == v15)
          {
            v5 = v15;
            v18 = v12[13];
            v6 = v18;
            if (v18)
            {
              v19 = *(v18 + 1);
              goto LABEL_12;
            }

            goto LABEL_52;
          }
        }
      }
    }
  }

  while (1)
  {
    __break(1u);
LABEL_52:
    v19 = 0;
LABEL_12:
    v66 = v19;

    [(PKPGVTransitionCoordinator *)v12 _assertLayout:0 deallocating:?];
    v12 = v12;
    self = self;
    v65 = [(PKPGSVExternalVCContext *)&p_externalVC->context->super.isa viewControllerLayoutProvider];
    if (v65)
    {
      v6 = [(PKPGSVExternalVCContext *)&p_externalVC->context->super.isa _referenceView];
      if (!v9)
      {
        break;
      }

      if (!p_pending->executeTransition.context || !p_externalVC->pending.executeTransition.presentationState.override)
      {
        v20 = p_externalVC->context;
        if (v20 && v20->_sending)
        {
          v21 = 7;
        }

        else
        {
          LOBYTE(v103.f64[0]) = 0;
          LOBYTE(v100[0]) = 0;
          if (v5)
          {
            unsafeLayout = v5->_unsafeLayout;
          }

          else
          {
            unsafeLayout = 0;
          }

          v23 = unsafeLayout;
          v24 = [(PKPassGroupStackView *)self _presentationStateForPassGroupView:v66 withPassPresentationContext:v23 requireUpdate:&v103 requireModal:v100];

          if (v100[0] & 1 | (v24 != 5))
          {
            v25 = v24;
          }

          else
          {
            v25 = 4;
          }

          if (v24 == 7)
          {
            v21 = 4;
          }

          else
          {
            v21 = v25;
          }
        }

        objc_storeStrong(&p_pending->executeTransition.context, *(a4 + 5));
        p_externalVC->pending.executeTransition.presentationState.override = 1;
        p_externalVC->pending.executeTransition.presentationState.value = v21;
      }

      if ([v12 layout:self transition:a4 stateForSendableItem:0])
      {
        break;
      }

      if (v5)
      {
        transition = v5->_transition;
      }

      else
      {
        transition = 0;
      }

      [v12 beginSubtransitionForTransition:a4 sending:0 animated:transition & 1];
      v27 = p_externalVC->context;
      if (v27)
      {
        v27 = v27->_transitionCoordinator;
      }

      v28 = v27;

      if (v28 == v12)
      {
        break;
      }
    }
  }

  v29 = nan(0);
  v30 = p_externalVC->context;
  if (!v30)
  {
    origin = 0;
    v68 = 0;
    anchorPoint = 0;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    y = 0.0;
LABEL_45:
    v46 = objc_opt_self();
    v103.f64[0] = v29;
    v103.f64[1] = v29;
    v104.f64[0] = v29;
    v104.f64[1] = v29;
    *&v105 = v29;
    *(&v105 + 1) = v29;
    *&v106 = v29;
    *(&v106 + 1) = v29;
    *&v107 = v29;
    *(&v107 + 1) = v29;
    *&v108 = v29;
    *(&v108 + 1) = v29;
    *&v109 = v29;
    *(&v109 + 1) = v29;
    v110 = v29;
    v111.f64[0] = v29;
    v111.f64[1] = v29;
    *&v47 = [(PKPGVTransitionLayoutState *)v46 _createWithViewFrame:&origin viewControllerFrame:?].n128_u64[0];
    v49 = v48;
    v50 = [(PKPassGroupStackView *)self externalVCContext:p_externalVC->context destinationLayoutStateForTransition:a4 inReferenceView:v6, v47];
    goto LABEL_48;
  }

  if (!v30->_sending)
  {
    containedView = v30->_containedView;
    if (containedView)
    {
      p_frame = &containedView->_frame;
      v42 = *&p_frame->bounds.transform.scale;
      v73 = *&p_frame->bounds.content.alignmentInset.bottom;
      v74 = v42;
      y = p_frame->position.y;
      v43 = *&p_frame->bounds.content.inset.top;
      anchorPoint = p_frame->bounds.anchorPoint;
      v70 = v43;
      v44 = *&p_frame->bounds.content.alignmentInset.top;
      v71 = *&p_frame->bounds.content.inset.bottom;
      v72 = v44;
      size = p_frame->bounds.size;
      origin = p_frame->bounds.origin;
      v68 = size;
    }

    else
    {
      y = 0.0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      anchorPoint = 0;
      v70 = 0u;
      origin = 0;
      v68 = 0;
    }

    goto LABEL_45;
  }

  v99 = 0.0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  [(PKPassGroupStackView *)self destinationViewSizeForExternalVCContext:?];
  v90 = 0u;
  memset(v91, 0, sizeof(v91));
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  [(PKPGSVExternalVCContext *)p_externalVC->context _destinationViewControllerFrame];
  memset(v83, 0, 136);
  v31 = p_externalVC->context;
  v107 = v96;
  v108 = v97;
  v109 = v98;
  v110 = v99;
  v103 = v92;
  v104 = v93;
  v105 = v94;
  v106 = v95;
  [(PKPGSVExternalVCContext *)v31 _destinationViewFrameWithSize:&v84 inViewControllerFrame:v83];
  v32 = vdivq_f64(vsubq_f64(*(&v83[7] + 8), v84), v85);
  v33 = vdup_n_s32(*v91 == 1.0);
  v34.i64[0] = v33.u32[0];
  v34.i64[1] = v33.u32[1];
  v35 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL)), v85, vmulq_n_f64(v85, *v91));
  v36 = vmlsq_f64(*&v91[8], v35, v86);
  v37 = p_externalVC->context;
  v62 = v32;
  if (v37)
  {
    v38 = v37->_containedView;
    if (v38)
    {
      v60 = v35;
      v35.f64[0] = *MEMORY[0x1E69DE258];
      v63 = v36;
      [(PKPGSVExternalVCContextContainerView *)v38 _setPassAnchorPoint:v32.f64[1] withDisplacement:v35, *(MEMORY[0x1E69DE258] + 8)];
      v35 = v60;
      v32 = v62;
      v36 = v63;
    }
  }

  v39 = vmlaq_f64(v36, v35, v32);
  v64 = v39;
  if (v9 && v5 && LOBYTE(v5->_transition) == 1)
  {
    [(PKPassGroupStackView *)self _updateExternalVC:p_externalVC->context toPresentationState:self->_presentationState initial:1 withSpringConfiguration:0 preferModalSpringFactories:0];
    v81 = v103;
    v82 = v104;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    v76 = v106;
    v77 = v107;
    v59 = v111;
    v61 = v105;
  }

  else
  {
    v81 = v84;
    v82 = v85;
    v78 = v89;
    v79 = v90;
    v76 = v87;
    v77 = v88;
    v59 = v39;
    v61 = v32;
    v80 = *v91;
  }

  v51 = objc_opt_self();
  v103.f64[0] = v29;
  v103.f64[1] = v29;
  v104.f64[0] = v29;
  v104.f64[1] = v29;
  *&v105 = v29;
  *(&v105 + 1) = v29;
  *&v106 = v29;
  *(&v106 + 1) = v29;
  *&v107 = v29;
  *(&v107 + 1) = v29;
  *&v108 = v29;
  *(&v108 + 1) = v29;
  *&v109 = v29;
  *(&v109 + 1) = v29;
  v110 = v29;
  v111.f64[0] = v29;
  v111.f64[1] = v29;
  v100[0] = v81;
  v100[1] = v82;
  v100[4] = v77;
  v100[5] = v78;
  v100[6] = v79;
  v101 = v80;
  v100[2] = v61;
  v100[3] = v76;
  v102 = v59;
  [(PKPGVTransitionLayoutState *)v51 _createWithViewFrame:v100 viewControllerFrame:?];
  v49 = v52;
  v103 = v84;
  v104 = v85;
  v108 = v89;
  v109 = v90;
  v110 = *v91;
  v106 = v87;
  v107 = v88;
  v53 = objc_opt_self();
  v105 = v62;
  v111 = v64;
  [(PKPGVTransitionLayoutState *)v53 _createWithViewFrame:v83 viewControllerFrame:&v103];
LABEL_48:
  v54 = v50;
  v55 = [PKPGVTransitionState createWithSourceLayoutState:v49 inReferenceView:v6];
  v56 = v55;
  if (v55)
  {
    v57 = [(PKPGVTransitionState *)v55 _stateWithDestinationLayoutState:v54];
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

- (void)transitionCoordinator:(id)a3 executeTransition:(id)a4 withState:(id)a5 completion:(id)a6
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v68 = a6;
  if (!v15)
  {
    goto LABEL_56;
  }

  p_externalVC = &self->_externalVC;
  context = self->_externalVC.context;
  if (!context)
  {
    goto LABEL_56;
  }

  v19 = context->_transitionCoordinator;

  if (v19 != v15)
  {
    goto LABEL_56;
  }

  if (!v16)
  {
    goto LABEL_56;
  }

  if (!v17)
  {
    goto LABEL_56;
  }

  v20 = v16[5];
  v21 = v20;
  p_context = &self->_externalVC.pending.executeTransition.context;
  v22 = self->_externalVC.pending.executeTransition.context;
  if (v22)
  {
    if (v22 != v20)
    {
      goto LABEL_56;
    }
  }

  v23 = self->_externalVC.context;
  v7 = v23;
  v66 = v17;
  v67 = v21;
  if (!v23)
  {
    [(PKPassGroupStackView *)self _tombstoneExternalVCContext];
    p_pendingRequest = &self->_externalVC.pending.executeTransition.pendingRequest;
    pendingRequest = self->_externalVC.pending.executeTransition.pendingRequest;
    if (pendingRequest)
    {
      goto LABEL_14;
    }

LABEL_27:
    v35 = *(&self->_layoutState + 28);
    if (*p_context)
    {
      *(&self->_layoutState + 28) = v35 | 1;
    }

    else if ((v35 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (self->_externalVC.pending.executeTransition.presentationState.override)
    {
      p_context = self->_externalVC.pending.executeTransition.presentationState.value;
      if (v7 && v7->_sending)
      {
        v36 = [PKPGSVPresentationContext createForTransitionContext:v21 externalVCContext:v7 priorExternalVCContext:self->_externalVC.pending.executeTransition.priorVCContext];
      }

      else
      {
        v36 = [PKPGSVPresentationContext createForTransitionContext:v21 priorExternalVCContext:v7];
      }

      p_pendingRequest = v36;
      [(PKPGVTransitionCoordinator *)v15 _assertLayout:0 deallocating:?];
      v37 = v15;
      v9 = v37;
      if (!v7)
      {
        goto LABEL_57;
      }

      sending = v7->_sending;
      v39 = [v37 layout:self transition:v16 stateForSendableItem:1];
      v40 = v39;
      if (!sending)
      {
        if (v39)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (v39)
      {
        goto LABEL_41;
      }

      animated = v67;
      if (v67)
      {
        animated = v67->_animated;
      }

      [v9 beginSubtransitionForTransition:v16 sending:1 animated:animated & 1];
      if (self->_externalVC.context == v7)
      {
LABEL_41:
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __85__PKPassGroupStackView_transitionCoordinator_executeTransition_withState_completion___block_invoke_2;
        v87[3] = &unk_1E8010AD8;
        v34 = v68;
        v88 = v68;
        [(PKPassGroupStackView *)self _setPresentationState:p_context withContext:p_pendingRequest completion:v87];
        v42 = v88;
LABEL_54:

        v58 = p_externalVC->pending.executeTransition.context;
        p_externalVC->pending.executeTransition.context = 0;

        v59 = p_externalVC->pending.executeTransition.pendingRequest;
        p_externalVC->pending.executeTransition.pendingRequest = 0;

        priorVCContext = p_externalVC->pending.executeTransition.priorVCContext;
        p_externalVC->pending.executeTransition.priorVCContext = 0;

        p_externalVC->pending.executeTransition.presentationState.override = 0;
        p_externalVC->pending.executeTransition.presentationState.value = 0x7FFFFFFFFFFFFFFFLL;
        [(PKPassGroupStackView *)self _updatePausedState];
        goto LABEL_55;
      }
    }

    do
    {
LABEL_56:
      __break(1u);
LABEL_57:
      v40 = [v9 layout:self transition:v16 stateForSendableItem:1];
      if (!v40)
      {
LABEL_43:
        [v9 beginSubtransitionForTransition:v16 sending:1 animated:0];
        v40 = [v9 layout:self transition:v16 stateForSendableItem:1];
      }

LABEL_44:
      v62 = p_context;
      v63 = p_pendingRequest;
      [(PKPassGroupStackView *)self _assertIsValidExternalVCContext:v7];
    }

    while (v40 != 2);
    v42 = self;
    v65 = [(PKPGSVExternalVCContext *)v7 viewControllerLayoutProvider];
    v43 = v9[13];
    v44 = v43;
    if (v43)
    {
      v45 = *(v43 + 1);
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    [(PKPassGroupStackView *)v42 referenceExternalModallyPresentedSizeForPassGroupView:v46];
    v78 = *MEMORY[0x1E69DE258];
    memset(v73, 0, sizeof(v73));
    __asm { FMOV            V0.2D, #0.5 }

    v74 = _Q0;
    memset(v75, 0, sizeof(v75));
    v61 = 0u;
    v76 = 0x3FF0000000000000;
    v77 = *MEMORY[0x1E695EFF8];
    v71[4] = v83;
    v71[5] = v84;
    v71[6] = v85;
    v72 = v86;
    v71[0] = v79;
    v71[1] = v80;
    v71[2] = v81;
    v71[3] = v82;
    p_pendingRequest = v63;
    if ([v65 _willUpdateControllerPositionForExternalVCContext:v7 inTransition:v16 viewSize:v71 expectedViewFrame:v73 instantaneousPositionDisplacement:&v78] && v7)
    {
      containedView = v7->_containedView;
      v53 = 0uLL;
      if (containedView)
      {
        p_frame = &containedView->_frame;
        v53 = p_frame[1];
        v61 = *p_frame;
      }

      v55 = v7->_containedView;
      if (v55)
      {
        v56.f64[1] = v61.f64[1];
        v57 = vdivq_f64(vsubq_f64(v77, v61), v53);
        *&v56.f64[0] = v78;
        [(PKPGSVExternalVCContextContainerView *)v55 _setPassAnchorPoint:v57.f64[1] withDisplacement:v56, *(&v78 + 1)];
      }
    }

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __85__PKPassGroupStackView_transitionCoordinator_executeTransition_withState_completion___block_invoke_3;
    v69[3] = &unk_1E8010AD8;
    v34 = v68;
    v70 = v68;
    [(PKPassGroupStackView *)v42 _setPresentationState:v62 withContext:v63 completion:v69];

    goto LABEL_54;
  }

  if (v23->_sending)
  {
    if (self->_externalVC.pending.executeTransition.pendingRequest)
    {
      goto LABEL_56;
    }

    goto LABEL_27;
  }

  [(PKPassGroupStackView *)self _tombstoneExternalVCContext];
  p_pendingRequest = &self->_externalVC.pending.executeTransition.pendingRequest;
  pendingRequest = self->_externalVC.pending.executeTransition.pendingRequest;
  if (!pendingRequest)
  {
    goto LABEL_27;
  }

  if (v7->_sending)
  {
    goto LABEL_56;
  }

LABEL_14:
  if (self->_externalVC.pending.executeTransition.priorVCContext != v7)
  {
    goto LABEL_56;
  }

  v25 = pendingRequest;
  v26 = *p_pendingRequest;
  *p_pendingRequest = 0;

  objc_storeStrong(&self->_externalVC.pending.executeTransition.context, v25[8]);
  v27 = v25[9];
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __85__PKPassGroupStackView_transitionCoordinator_executeTransition_withState_completion___block_invoke;
  newValue[3] = &unk_1E80242F0;
  v90 = v68;
  v64 = v27;
  v91 = v64;
  v9 = v25;
  objc_setProperty_nonatomic_copy(v25, v28, newValue, 72);
  [(PKPGVTransitionCoordinator *)v15 _assertLayout:0 deallocating:?];
  v29 = v15;
  v30 = [(PKPGVTransitionCoordinator *)v29 layout:self transition:v16 stateForSendableItem:1];
  if (!v30)
  {
    [(PKPGVTransitionCoordinator *)v29 beginSubtransitionForTransition:v16 sending:1 animated:0];
    v30 = [(PKPGVTransitionCoordinator *)v29 layout:self transition:v16 stateForSendableItem:1];
  }

  [(PKPassGroupStackView *)self _assertIsValidExternalVCContext:v7];
  if (v30 != 2)
  {
    goto LABEL_56;
  }

  v31 = [PKPGVTransitionCoordinator connectWithRequest:v9];
  if (*p_context || *p_pendingRequest || self->_externalVC.pending.executeTransition.priorVCContext || self->_externalVC.pending.executeTransition.presentationState.override)
  {
    goto LABEL_56;
  }

  v32 = v31;
  p_pendingRequest = v9;
  if (v31)
  {
    [(PKPassGroupStackView *)self _assertIsValidExternalVCTransitionCoordinator:v31];
  }

  else
  {
    v33 = v9[2];
    [v33 invalidate];

    p_pendingRequest = v9;
  }

  v9 = v64;

  v34 = v68;
LABEL_55:
}

uint64_t __85__PKPassGroupStackView_transitionCoordinator_executeTransition_withState_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)transitionCoordinator:(id)a3 executeInteractiveTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6 completion:(id)a7
{
  v10 = a5;
  v20 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v20];
  if (v10)
  {
    goto LABEL_15;
  }

  v7 = v16;
  if (v16 && v16->_sending)
  {
    if (![-[PKPGVTransitionCoordinator coordinatorForLayout:](v20 self)])
    {
      goto LABEL_7;
    }

    [v20 interruptSubtransitionForTransition:v13 sending:1];
    if (self->_externalVC.context == v7)
    {
      if ([v20 layout:self transition:v13 stateForSendableItem:1])
      {
LABEL_11:

        goto LABEL_12;
      }

LABEL_7:
      if (v13)
      {
        v17 = v13[5];
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 8);
LABEL_10:
          [v20 beginSubtransitionForTransition:v13 sending:1 animated:v19 & 1];

          goto LABEL_11;
        }

LABEL_17:
        v19 = 0;
        goto LABEL_10;
      }

LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v15[2](v15);
}

- (void)transitionCoordinator:(id)a3 resolveInteractiveTransition:(id)a4 withState:(id)a5 completion:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(PKPassGroupStackView *)self _assertIsValidExternalVCTransitionCoordinator:v13];
  if (v10 && v10[32] != 1 && v11)
  {
    [(PKPassGroupStackView *)self _layoutContentAnimated:1];
    v12[2](v12);
  }

  else
  {
    __break(1u);
  }
}

- (id)transitionCoordinator:(id)a3 transition:(id)a4 updateFromState:(id)a5 interactive:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v11];
  if (!v13 || !v12)
  {
    __break(1u);
LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v6 = v14;
  if (!v14 || v14[40] != 1)
  {
    v23 = v13;
    goto LABEL_23;
  }

  self = self;
  v15 = *(v6 + 48);
  v7 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15[13];
  v17 = v16;
  if (!v16)
  {
LABEL_26:
    v18 = 0;
    goto LABEL_8;
  }

  v18 = *(v16 + 1);
LABEL_8:
  v19 = v18;

  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  if (self)
  {
    [(PKPassGroupStackView *)self referenceExternalModallyPresentedSizeForPassGroupView:v19];
  }

  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  [(PKPGSVExternalVCContext *)v6 _destinationViewControllerFrame];
  v59 = 0u;
  memset(v60, 0, 24);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v89 = v73;
  v90 = v74;
  v91 = v75;
  *&v92 = v76;
  v85 = v69;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  [(PKPGSVExternalVCContext *)v6 _destinationViewFrameWithSize:&v61 inViewControllerFrame:&v53];
  if (v12[32])
  {
    v20 = v62.f64[0];
    v45 = v61;
    if (*v68 == 1.0)
    {
      v21 = vsubq_f64(*(v60 + 8), v61);
      v22 = v21;
    }

    else
    {
      v22 = vmlaq_f64(*&v68[8], vmulq_n_f64(v62, *v68), vdivq_f64(vsubq_f64(*(v60 + 8), vmlaq_f64(v61, v62, v63)), v62));
      v21 = vsubq_f64(*(v60 + 8), v61);
    }

    v43 = v22;
    v44 = v62.f64[0];
    v25 = v21.f64[1];
    v26 = v62.f64[1];
    if (self)
    {
      v41 = v21.f64[0];
      [(PKPassGroupStackView *)self destinationViewSizeForExternalVCContext:v6];
      v21.f64[0] = v41;
      v20 = v44;
    }

    v27 = v21.f64[0] / v20;
    v40 = v65;
    v42 = v64;
    v38 = v67;
    v39 = v66;
    v28 = v25 / v26;
    [(PKPassGroupStackView *)self _scaleForExternalVCWithPassGroupViewScale:0.0];
    v30 = v29;
    v31 = 0.0;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    if (v29 == 1.0)
    {
      v37 = vaddq_f64(v45, v43);
      v32 = v37.f64[1];
    }

    else
    {
      v31 = 1.0 / v29 * 0.0;
      v33 = vaddq_f64(v45, v43);
      v37.f64[0] = v33.f64[0] + vsubq_f64(v43, v43).f64[0] / (v44 * v30) * v44;
      v32 = v33.f64[1] + (v43.f64[1] - v43.f64[1]) / (v26 * v30) * v26;
    }

    v50 = v89;
    v51 = v90;
    v52 = v91;
    v46 = v85;
    v47 = v86;
    v48 = v87;
    v49 = v88;
    v24 = objc_opt_self();
    v89 = v50;
    v90 = v51;
    v91 = v52;
    v85 = v46;
    v86 = v47;
    v87 = v48;
    v88 = v49;
    *&v92 = v31;
    *(&v92 + 1) = *&v37.f64[0];
    v93 = v32;
    v77 = v45;
    v78.f64[0] = v44;
    v78.f64[1] = v26;
    v79.f64[0] = v27;
    v79.f64[1] = v28;
    v80 = v42;
    v81 = v40;
    v82 = v39;
    v83 = v38;
    *v84 = v30;
    *&v84[8] = v43;
  }

  else
  {
    v92 = v60[0];
    v93 = *&v60[1];
    v87 = v55;
    v88 = v56;
    v90 = v58;
    v91 = v59;
    v89 = v57;
    v85 = v53;
    v86 = v54;
    v83 = v67;
    *v84 = *v68;
    *&v84[16] = *&v68[16];
    v79 = v63;
    v80 = v64;
    v81 = v65;
    v82 = v66;
    v77 = v61;
    v78 = v62;
    v24 = objc_opt_self();
  }

  [(PKPGVTransitionLayoutState *)v24 _createWithViewFrame:&v77 viewControllerFrame:?];
  v35 = v34;
  v23 = [(PKPGVTransitionState *)v13 _stateWithDestinationLayoutState:v34];

LABEL_23:
  return v23;
}

- (void)transitionCoordinatorInvertTransceivers:(id)a3
{
  v4 = a3;
  if (v4 && (context = self->_externalVC.context) != 0 && (v7 = v4, v6 = context->_transitionCoordinator, v6, v6 == v7))
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 willBeginTransition:(id)a4 dirty:(BOOL)a5
{
  v5 = a5;
  v14 = a3;
  v8 = a4;
  if (v14 && (v9 = self->_externalVC.context) != 0 && (v10 = v9->_transitionCoordinator, v10, v10 == v14) && v8)
  {
    [(PKPGSVExternalVCContext *)self->_externalVC.context _setTransition:v8];
    context = self->_externalVC.context;
    if (context && context->_sending)
    {
      if (v5)
      {
        [(PKPGSVExternalVCContext *)context _willAppearInContainerView:?];

        v13 = [(PKPassGroupStackView *)self delegate];
        if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v13 groupStackViewDidChangeContentScrollView:self];
        }
      }
    }

    else if (v5)
    {
      [(PKPGSVExternalVCContext *)context _willDisappear];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 didBeginTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a6;
  if (v14 && (p_externalVC = &self->_externalVC, (context = self->_externalVC.context) != 0) && (v13 = context->_transitionCoordinator, v13, v13 == v14) && v9)
  {
    [(PKPGSVExternalVCContext *)p_externalVC->context _setTransitionState:v10];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorWillInterruptTransition:(id)a3
{
  v3 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:a3];
  [(PKPGSVExternalVCContext *)v3 _setTransitionState:?];
}

- (void)transitionCoordinatorDidInterruptTransition:(id)a3
{
  v3 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:a3];
  [(PKPGSVExternalVCContext *)v3 _setTransition:?];
}

- (void)transitionCoordinator:(id)a3 transitionWillMoveView:(id)a4 withState:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v9;
    v11 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v13];
    v12 = v11;
    if (v11 && v11[40] == 1)
    {
      [(PKPassGroupStackView *)self _loanGroupViewToExternalVCContext:v11 willLayout:1];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transitionWillInterruptViewMove:(id)a4 withState:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && (v10 = v9, (v11 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v13]) != 0) && (v12 = v11, v11[40] == 1))
  {
    [(PKPassGroupStackView *)self _interruptTransferedGroupViewForExternalVCContext:v11 willLayout:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transitionDidMoveView:(id)a4 withState:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v12 && v8)
  {
    v10 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v12];
    v11 = v10;
    if (v10 && v10[40] == 1)
    {
      [(PKPassGroupStackView *)self _transferLoanedGroupViewToExternalVCContext:v10 willLayout:1];
    }

    else
    {
      [(PKPassGroupStackView *)self _acquireLoanedGroupViewFromExternalVCContext:v10 willLayout:1];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorWillEndTransition:(id)a3 wasDirty:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v6 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v5];
    [(PKPGSVExternalVCContext *)v6 _setTransitionState:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorDidEndTransition:(id)a3 wasDirty:(BOOL)a4
{
  v6 = a4;
  v8 = a3;
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v8;
  v5 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v8];
  [(PKPGSVExternalVCContext *)v5 _setTransition:?];
  if (!v5)
  {
LABEL_11:
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PKPGSVExternalVCContext *)0 _didDisappear];
    goto LABEL_8;
  }

  if (*(v5 + 40) != 1)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PKPGSVExternalVCContext *)v5 _didDisappear];
    [(PKPGSVExternalVCContextContainerView *)v5[4] _updateAlpha:0.0 blurRadius:10.0 withSpringFactory:?];
LABEL_8:
    [(PKPassGroupStackView *)self _removeExternalVCContext:v5 terminated:0];
    goto LABEL_9;
  }

  if (v6)
  {
    [(PKPGSVExternalVCContext *)v5 _didAppear];
    [(PKPGSVExternalVCContextContainerView *)v5[4] _removePassAnchorPoint];
    [(PKPassGroupStackView *)self _updateExternalVC:v5 toPresentationState:self->_presentationState initial:0 withSpringConfiguration:0 preferModalSpringFactories:0];
  }

LABEL_9:
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 willUpdateFromState:(id)a5 interactive:(BOOL)a6
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  if (v11 && v9 && v10)
  {
    [(PKPassGroupStackView *)self _assertIsValidExternalVCTransitionCoordinator:v11];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 didUpdateFromState:(id)a5 toState:(id)a6 interactive:(BOOL)a7
{
  v15 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v15 && v11 && v12 && v13)
  {
    v14 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v15];
    [(PKPGSVExternalVCContext *)v14 _setTransitionState:v13];
    if (v14 && v14[40] == 1)
    {
      [(PKPassGroupStackView *)self _layoutContentAnimated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

- (id)transitionCoordinator:(id)a3 prepareForSendingNavigationItem:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (id)transitionCoordinatorWillInvertSender:(id)a3
{
  result = a3;
  if (!result)
  {
    goto LABEL_13;
  }

  context = self->_externalVC.context;
  if (!context)
  {
    goto LABEL_13;
  }

  v6 = result;
  v7 = context->_transitionCoordinator;

  if (v7 != v6)
  {
    goto LABEL_13;
  }

  v8 = self->_externalVC.context;
  if (!v8 || !v8->_sending)
  {
    goto LABEL_13;
  }

  result = [(PKPassthroughView *)self->_externalVCContainerView setHitTestEnabled:0];
  v9 = self->_externalVC.context;
  if (v9)
  {
    if (!v9->_invalidated)
    {
      v9->_sending ^= 1u;
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_9:
  v10 = [(PKPassGroupStackView *)self delegate];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 groupStackViewDidChangeContentScrollView:self];
    }
  }

  *(&self->_layoutState + 28) |= 1u;
  v11 = self;

  return v11;
}

- (void)transitionCoordinatorSenderDidTapView:(id)a3
{
  v6 = a3;
  if (!v6 || (v11 = v6, v7 = [(PKPassGroupStackView *)self _externalVCContextForTransitionCoordinator:v6], (v3 = v7) != 0) && v7[40] == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = v11[13];
    v4 = v8;
    if (v8)
    {
      v9 = *(v8 + 1);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  [(PKPassGroupStackView *)self groupViewTapped:v10];
}

- (id)transitionCoordinator:(id)a3 prepareForReceivingNavigationItem:(id)a4
{
  v5 = [(PKPassGroupStackView *)self delegate:a3];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 navigationItemHandleProviderForGroupStackView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transitionCoordinatorWillInvertReceiver:(id)a3
{
  result = a3;
  if (result)
  {
    context = self->_externalVC.context;
    if (context)
    {
      v6 = result;
      v7 = context->_transitionCoordinator;

      if (v7 == v6)
      {
        v8 = self->_externalVC.context;
        if (!v8 || !v8->_sending)
        {
          [(PKPassthroughView *)self->_externalVCContainerView setHitTestEnabled:1];
          result = [(PKPGSVExternalVCContext *)self->_externalVC.context _invert];
        }
      }
    }
  }

  __break(1u);
  return result;
}

- ($F1DC74333D82B785AAE6704222A4147D)referenceExternalModallyPresentedSizeForPassGroupView:(SEL)a3
{
  result = a4;
  if (result)
  {
    v7 = result;
    [(PKPassGroupStackView *)self _scaleForModallyPresentedGroupOfType:1];
    v29 = v8;
    v30 = v7;
    [($F1DC74333D82B785AAE6704222A4147D *)v30 bounds];
    v27 = v10;
    v28 = v9;
    v12 = v11;
    v14 = v13;
    [($F1DC74333D82B785AAE6704222A4147D *)v30 anchorPoint];
    v16 = v15;
    v18 = v17;
    *&retstr->var3.var0.top = 0u;
    *&retstr->var3.var0.bottom = 0u;
    [($F1DC74333D82B785AAE6704222A4147D *)v30 alignmentRectInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    retstr->var0.x = v28;
    retstr->var0.y = v27;
    retstr->var1.width = v12;
    retstr->var1.height = v14;
    retstr->var2.x = v16;
    retstr->var2.y = v18;
    retstr->var3.var1.top = v20;
    retstr->var3.var1.left = v22;
    retstr->var3.var1.bottom = v24;
    retstr->var3.var1.right = v26;
    retstr->var4.var0 = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- ($F1DC74333D82B785AAE6704222A4147D)destinationViewSizeForExternalVCContext:(SEL)a3
{
  v36 = a4;
  [(PKPassGroupStackView *)self _assertIsValidExternalVCContext:v36];
  if (v36 && (v6 = v36[6]) != 0)
  {
    v7 = v6;
    v8 = v6[13];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 1);
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v10 = 0;
LABEL_5:
  v11 = v10;

  [(PKPassGroupStackView *)self _scaleForGroupView:v11 atIndex:[(PKPassGroupStackView *)self _indexOfGroupView:v11] forState:7];
  v35 = v12;
  result = v11;
  if (result)
  {
    v14 = result;
    [($F1DC74333D82B785AAE6704222A4147D *)result bounds];
    v33 = v16;
    v34 = v15;
    v18 = v17;
    v20 = v19;
    [($F1DC74333D82B785AAE6704222A4147D *)v14 anchorPoint];
    v22 = v21;
    v24 = v23;
    *&retstr->var3.var0.top = 0u;
    *&retstr->var3.var0.bottom = 0u;
    [($F1DC74333D82B785AAE6704222A4147D *)v14 alignmentRectInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    retstr->var0.x = v34;
    retstr->var0.y = v33;
    retstr->var1.width = v18;
    retstr->var1.height = v20;
    retstr->var2.x = v22;
    retstr->var2.y = v24;
    retstr->var3.var1.top = v26;
    retstr->var3.var1.left = v28;
    retstr->var3.var1.bottom = v30;
    retstr->var3.var1.right = v32;
    retstr->var4.var0 = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)externalVCContext:(id)a3 destinationLayoutStateForTransition:(id)a4 inReferenceView:(id)a5
{
  v8 = a3;
  v9 = a4;
  result = a5;
  if (!v9)
  {
    goto LABEL_21;
  }

  v11 = result;
  if (!result)
  {
    goto LABEL_21;
  }

  result = [(PKPassGroupStackView *)self _assertIsValidExternalVCContext:v8];
  if (!v8)
  {
    p_override = &self->_externalVC.pending.executeTransition.presentationState.override;
    if (!self->_externalVC.pending.executeTransition.presentationState.override)
    {
      goto LABEL_21;
    }

    p_presentationState = &self->_externalVC.pending.executeTransition.presentationState;
    p_pending = &self->_externalVC.pending;
    goto LABEL_19;
  }

  if (*(v8 + 40) == 1)
  {
    goto LABEL_21;
  }

  p_override = &self->_externalVC.pending.executeTransition.presentationState.override;
  if (!self->_externalVC.pending.executeTransition.presentationState.override)
  {
    goto LABEL_21;
  }

  p_presentationState = &self->_externalVC.pending.executeTransition.presentationState;
  p_pending = &self->_externalVC.pending;
  v15 = *(v8 + 6);
  if (!v15)
  {
LABEL_19:
    v18 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = v15[13];
  v18 = v17;
  if (!v17)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_9;
  }

  v19 = *(v17 + 1);
LABEL_9:
  v20 = v19;

  context = p_pending->executeTransition.context;
  if (p_pending->executeTransition.context)
  {
    v22 = v9[5];

    if (context != v22 || !*p_override)
    {
      goto LABEL_21;
    }
  }

  else
  {
    p_presentationState = &self->_presentationState;
  }

  value = p_presentationState->value;
  v24 = [(PKPassGroupStackView *)self _indexOfGroupView:v20];
  [(PKPassGroupStackView *)self _scaleForGroupView:v20 atIndex:v24 forState:value];
  v26 = v25;
  [(PKPassGroupStackView *)self __positionForGroupView:v20 atIndex:v24 forState:value];
  v28 = v27;
  v30 = v29;
  result = v20;
  if (result)
  {
    v31 = result;
    [result bounds];
    v80 = v33;
    v81 = v32;
    v78 = v35;
    v79 = v34;
    [v31 anchorPoint];
    v76 = v37;
    v77 = v36;
    [v31 alignmentRectInsets];
    v74 = v39;
    v75 = v38;
    v72 = v41;
    v73 = v40;

    [v11 convertPoint:self->_passContainerView fromView:{v28, v30}];
    v70 = v43;
    v71 = v42;
    v82 = v26;
    [(PKPassGroupStackView *)self _scaleForExternalVCWithPassGroupViewScale:v26];
    v69 = v44;
    result = [(PKPGSVExternalVCContext *)v8 _containedView];
    if (result)
    {
      v45 = result;
      [result bounds];
      v67 = v47;
      v68 = v46;
      v49 = v48;
      v51 = v50;
      [v45 anchorPoint];
      v53 = v52;
      v55 = v54;
      [v45 alignmentRectInsets];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v102 = 0u;
      v103 = 0u;
      v89 = 0u;
      v88 = 0u;
      v64 = objc_opt_self();
      *&v97 = v81;
      *(&v97 + 1) = v80;
      v98 = v79;
      v99 = v78;
      v100 = v77;
      v101 = v76;
      v104 = v75;
      v105 = v74;
      v106 = v73;
      v107 = v72;
      v108 = v82;
      v109 = v71;
      v110 = v70;
      *&v83 = v68;
      *(&v83 + 1) = v67;
      v84 = v49;
      v85 = v51;
      v86 = v53;
      v87 = v55;
      v90 = v57;
      v91 = v59;
      v92 = v61;
      v93 = v63;
      v94 = v69;
      v95 = v71;
      v96 = v70;
      [(PKPGVTransitionLayoutState *)v64 _createWithViewFrame:&v83 viewControllerFrame:?];
      v66 = v65;

      return v66;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

- (void)dashboardPassGroupViewController:(id)a3 willBeginDeleteAnimation:(id)a4
{
  v9 = a3;
  v6 = a4;
  context = self->_externalVC.context;
  if (context)
  {
    if (context->_sending)
    {
      v8 = context->_dashboardPassGroupViewController;

      if (v8 == v9)
      {
        *(&self->_layoutState + 28) |= 0x200u;
        objc_storeStrong(&self->_deleteAnimationController, a4);
        [(PKPassGroupStackView *)self _updatePassFooterViewWithContext:0];
        [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];
      }
    }
  }
}

- (void)dashboardPassGroupViewController:(id)a3 didFinishDeleteAnimation:(id)a4 deleted:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  deleteAnimationController = self->_deleteAnimationController;
  if (deleteAnimationController == v7)
  {
    v14 = v7;
    v9 = deleteAnimationController;
    v10 = self->_deleteAnimationController;
    self->_deleteAnimationController = 0;

    if (v5)
    {
      v11 = [(PKPassGroupStackView *)self delegate];
      v12 = [(PKPassDeleteAnimationController *)v14 passView];
      v13 = [v12 pass];
      [v11 groupStackView:self deleteConfirmedForPass:v13];
    }

    *(&self->_layoutState + 28) &= ~0x200u;
    [(PKPassGroupStackView *)self _refreshBacklightForFrontmostPassGroup];

    v7 = v14;
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  if (a4.var0 != self->_foregroundActiveState.foreground || ((*&a4.var0 >> 8) & 1) != self->_foregroundActiveState.foregroundActive)
  {
    self->_foregroundActiveState = a4;
    [(PKPassGroupStackView *)self _updateModallyPresentedFrontmostPassAssertions];
  }
}

- (void)scrollNext
{
  [(PKPassGroupStackView *)self contentOffset];
  v4 = v3;
  v6 = v5;
  [(PKPassGroupStackView *)self contentSize];
  scrollingTestState = self->_scrollingTestState;
  if (scrollingTestState == 1)
  {
    v9 = v7;
    v10 = v6 + 1.0;
    [(PKPassGroupStackView *)self bounds];
    if (v10 > v9 - v11)
    {
      scrollingTestState = self->_scrollingTestState;
      goto LABEL_5;
    }
  }

  else
  {
    v10 = v6 + -1.0;
    if (v10 < 0.0)
    {
LABEL_5:
      if (scrollingTestState == 2)
      {

        [(PKPassGroupStackView *)self scrollDownTest];
      }

      else if (scrollingTestState == 1)
      {
        if (self->_currentTestReps > 2)
        {
          v12 = [MEMORY[0x1E69DC668] sharedApplication];
          [v12 finishedTest:@"ScrollCardList"];
        }

        else
        {

          [(PKPassGroupStackView *)self scrollUpTest];
        }
      }

      return;
    }
  }

  [(PKPassGroupStackView *)self setContentOffset:v4, v10];

  [(PKPassGroupStackView *)self performSelector:sel_scrollNext withObject:0 afterDelay:0.0];
}

- (void)scrollUpTest
{
  ++self->_currentTestReps;
  self->_scrollingTestState = 2;
  [(PKPassGroupStackView *)self scrollNext];
}

- (void)testGoModal
{
  [(PKPassGroupStackView *)self setPresentationState:4 animated:1];
  if (self->_currentTestReps > 9)
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 finishedTest:@"SelectCard"];
  }

  else
  {

    [(PKPassGroupStackView *)self performSelector:sel_testGroupSelection withObject:0 afterDelay:0.5];
  }
}

- (void)testGroupSelection
{
  ++self->_currentTestReps;
  [(PKPassGroupStackView *)self setModalGroupIndex:2];
  [(PKPassGroupStackView *)self setPresentationState:5 animated:1];

  [(PKPassGroupStackView *)self performSelector:sel_testGoModal withObject:0 afterDelay:0.5];
}

- (void)gotoBaseTestState
{
  [(PKPassGroupStackView *)self setPresentationState:4 animated:0];
  [(PKPassGroupStackView *)self contentSize];

  [(PKPassGroupStackView *)self scrollRectToVisible:0 animated:0.0, 0.0, v3, 10.0];
}

@end