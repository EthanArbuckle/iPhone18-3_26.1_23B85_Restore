@interface UIWritingToolsCoordinator
- (BOOL)_hasLandedAllReplacementsForDelivery:(id)a3 inContext:(id)a4;
- (BOOL)_hasStoredTargetedPreviewForInsertionInContextID:(id)a3 previewSubrangeIndex:(unint64_t)a4;
- (BOOL)isEditable;
- (BOOL)proofreadingInteraction:(id)a3 shouldRespondToTapAtPoint:(CGPoint)a4;
- (NSString)description;
- (UITextView)_associatedTextView;
- (UIView)decorationContainerView;
- (UIView)effectContainerView;
- (UIView)view;
- (UIWritingToolsCoordinator)init;
- (UIWritingToolsCoordinator)initWithDelegate:(id)a3;
- (UIWritingToolsCoordinatorDelegate)delegate;
- (WTTextViewDelegate_Proposed_v1)_sessionTextViewDelegate;
- (_NSRange)_adjustedResolvedRangeForContextWithIdentifier:(id)a3;
- (_UIWTCProofreadingDecorationView)_preparedProofreadingDecorationViewInContainer:(uint64_t)a1;
- (id)_bufferInvocationForSelector:(SEL)a3 arguments:(id)a4;
- (id)_lastProofreadingSuggestionWithUnderlineFromProofreadingController:(uint64_t)a1;
- (id)_replacementTracker;
- (id)_replacementTrackerForContextID:(id)a3;
- (int64_t)behavior;
- (int64_t)preferredBehavior;
- (uint64_t)_trailingCursorLocationRangeForProofreadingSuggestion:(void *)a3 inContextID:;
- (uint64_t)_validSubrangeForTextAnimation:(unint64_t)a3 withIndex:(void *)a4 contextID:;
- (unint64_t)preferredResultOptions;
- (unint64_t)resultOptions;
- (void)_addProofreadSuggestionPendingUnderlineForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 completion:(id)a6;
- (void)_addProofreadingSuggestionReviewingHighlightForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5;
- (void)_animateRewrittenTextForDeliveryID:(id)a3 contextID:(id)a4 subrangeIndex:(int64_t)a5 customFillColor:(id)a6;
- (void)_beginAnimatedTextReplacementForInFlightDeliveryInContextID:(id)a3;
- (void)_beginTextAssistantAnticipationInContext:(id)a3 animationCharacterRange:(_NSRange)a4 subrangeIndex:(int64_t)a5 customFillColor:(id)a6;
- (void)_beginTextAssistantAnticipationsForRange:(_NSRange)a3 inContext:(id)a4;
- (void)_changeToState:(void *)a3 postStateChangeActions:;
- (void)_cleanUpAnticipationAnimationTrackingInfoForContextID:(id)a3;
- (void)_cleanUpReplacementAnimationTrackingInfoForContextID:(id)a3;
- (void)_completeReceivingSuggestions:(id)a3 processedRange:(_NSRange)a4 inContext:(id)a5 finished:(BOOL)a6;
- (void)_delegateUpdateTextAccordingToProofreadingSuggestionInfoWithIdentifier:(id)a3 replacingCharactersInRange:(_NSRange)a4 newState:(int64_t)a5 contextID:(id)a6 updateCompletion:(id)a7;
- (void)_didDismissWritingTools;
- (void)_didEndProofreadingSession:(id)a3 accepted:(BOOL)a4 completion:(id)a5;
- (void)_didEndRewritingSession:(id)a3 accepted:(BOOL)a4;
- (void)_drawProofreadingHighlightsForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5;
- (void)_drawProofreadingUnderlinesForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 recordDecorationInfo:(id)a6;
- (void)_effectContainerCleanup;
- (void)_endTextAssistantAnticipationInContextID:(id)a3 animationCharacterRange:(_NSRange)a4;
- (void)_endTextAssistantAnticipationsForContextIDs:(id)a3;
- (void)_executeForSubrangesOfRange:(uint64_t *)(a3 inContext:actions:recordingCustomFillColors:;
- (void)_fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex:(void *)a3 maximumSubrangeIndex:(void *)a4 contextID:(void *)a5 completion:;
- (void)_fetchStoredTargetedPreviewForContextID:(id)a3 previewSubrangeIndex:(unint64_t)a4 textAnimation:(int64_t)a5 completion:(id)a6;
- (void)_finishNextReplacementAnimation:(char *)a3 withSubrangeIndex:(void *)a4 finishedIndexes:(char *)a5 numberOfIndexes:(void *)a6 contextID:(void *)a7 completion:;
- (void)_finishUndoRedoChangesIfNecessaryForContextID:(_BYTE *)a1;
- (void)_finishUndoRedoChangesInAllContextsIfNecessary;
- (void)_invalidateProofreadingSuggestionWithUUID:(id)a3 contextID:(id)a4;
- (void)_invalidateReplacementForDeliveryID:(id)a3 subrangeIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)_populateDecorationContainerViewsForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 completion:(id)a6;
- (void)_proofreadingOrCompositionFinishedInContext:(id)a3;
- (void)_recursiveUpdateProofreadingTextAndTrackerToShowOriginal:(BOOL)a3 withContextIDEnumerator:(id)a4 completion:(id)a5;
- (void)_removeAllProofreadingDecorations;
- (void)_removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:(id)a3;
- (void)_removeProofreadingSuggestionReviewingHighlightForProofreadingSuggestionID:(id)a3;
- (void)_replacementEffectDidLandInFlightDelivery:(id)a3 inContext:(id)a4 subrangeIndex:(unint64_t)a5;
- (void)_resetFinishedRangeCountsForTextAnimation:(void *)a3 contextID:;
- (void)_resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:(unint64_t)a3 inContext:(id)a4 completion:(id)a5;
- (void)_sendDelegateFinishAnticipationForNextSubrangeIndex:(uint64_t)a3 inTotalSubranges:(void *)a4 contextID:(void *)a5 wrapUpFinishingHandler:;
- (void)_sendDelegateFinishTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6;
- (void)_sendDelegatePrepareForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6;
- (void)_sendDelegateTargetedPreviewOfActiveRangeForTextAnimation:(int64_t)a3 previewSubrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6;
- (void)_sendDelegatedAnimatedReplacementWithDelay:(double)a3 duration:(double)a4 deliveryID:(id)a5 contextID:(id)a6 completion:(id)a7;
- (void)_sendFinishRemoveAnimationForNextSubrangeIndex:(void *)a3 maximumSubrangeIndex:(void *)a4 contextID:(void *)a5 completion:;
- (void)_sessionCleanup;
- (void)_setInFlightDeliveryID:(id)a3;
- (void)_setUpTextEffectView;
- (void)_synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:(uint64_t)a3 state:;
- (void)_undrawProofreadingHighlightsForProofreadingSuggestionID:(id)a3;
- (void)_undrawProofreadingUnderlinesForProofreadingSuggestionID:(id)a3;
- (void)_updateDelegateRespondsToFlags;
- (void)_updateForProofreadingSuggestion:(id)a3 state:(int64_t)a4 saveState:(BOOL)a5 inContext:(id)a6;
- (void)_updateProofreadingDecorationViewsWithUnderlineInfo:(uint64_t)a1;
- (void)_updateProofreadingDeliveryWithReplacement:(id)a3 accordingToProofreadingSuggestionWithIdentifier:(id)a4 replacingCharactersInRange:(_NSRange)a5 newState:(int64_t)a6 contextID:(id)a7;
- (void)_updateProofreadingTextAndTrackerToShowOriginal:(BOOL)a3 inContextID:(id)a4;
- (void)_updateReplacementTrackerStartingAnimationsWithText:(id)a3 forRange:(_NSRange)a4 inContextWithID:(id)a5 finished:(BOOL)a6;
- (void)_updateReplacementTrackerWithText:(id)a3 forRange:(_NSRange)a4 inContext:(id)a5 finished:(BOOL)a6;
- (void)_updateSelectedRangeForCompositionIfFinishedInContext:(id)a3 force:(BOOL)a4;
- (void)_updateTextViewAndTrackerWithIncomingCompositionSessionState:(int64_t)a3 forDelivery:(id)a4 animationParameters:(id)a5 contextID:(id)a6 completion:(id)a7;
- (void)_updateToCompositionSessionState:(int64_t)a3 contextID:(id)a4;
- (void)_updateVisualizationForProofreadingSuggestionID:(id)a3 previousState:(int64_t)a4 delta:(int64_t)a5 resetFollowingIfNecessary:(BOOL)a6 inContext:(id)a7 completion:(id)a8;
- (void)_updateVisualizationForProofreadingSuggestionsIfNecessaryForDelivery:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)a3;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)didMoveToView:(id)a3;
- (void)finishAnimationFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)prepareForAnimationFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)proofreadingController:(id)a3 replaceCharactersInRange:(_NSRange)a4 attributedString:(id)a5 state:(int64_t)a6 identifier:(id)a7 completion:(id)a8;
- (void)proofreadingInteraction:(id)a3 receivedTapAtLocation:(CGPoint)a4;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)setDecorationContainerView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEffectContainerView:(id)a3;
- (void)setPreferredBehavior:(int64_t)a3;
- (void)setPreferredResultOptions:(unint64_t)a3;
- (void)stopWritingTools;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)updateForReflowedTextInContextWithIdentifier:(id)a3;
- (void)updateRange:(_NSRange)a3 withText:(id)a4 reason:(int64_t)a5 forContextWithIdentifier:(id)a6;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)a3 visible:(BOOL)a4 completionHandler:(id)a5;
- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 previous:(CGRect)a4 completionHandler:(id)a5;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)willMoveToView:(id)a3;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation UIWritingToolsCoordinator

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (int64_t)behavior
{
  result = [(UIWritingToolsCoordinator *)self preferredBehavior];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (int64_t)preferredBehavior
{
  if (!self->_isEndingSession)
  {
    return self->_preferredBehavior;
  }

  v2 = [(UIWritingToolsCoordinator *)self _associatedTextView];
  v3 = [v2 writingToolsBehavior];

  return v3;
}

- (UIWritingToolsCoordinator)init
{
  v10.receiver = self;
  v10.super_class = UIWritingToolsCoordinator;
  v2 = [(UIWritingToolsCoordinator *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    trackingInfos = v2->_trackingInfos;
    v2->_trackingInfos = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    proofreadingSuggestionInfos = v2->_proofreadingSuggestionInfos;
    v2->_proofreadingSuggestionInfos = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    writingToolsDelegateMessageInvocationBuffer = v2->_writingToolsDelegateMessageInvocationBuffer;
    v2->_writingToolsDelegateMessageInvocationBuffer = v7;

    *(&v2->_includesTextListMarkers + 4) = [off_1E70ECBE0 includesTextListMarkers];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      if (qword_1ED49CA80 != -1)
      {
        dispatch_once(&qword_1ED49CA80, &__block_literal_global_78);
      }

      if (_MergedGlobals_1019 == 1)
      {
        *(&v2->_includesTextListMarkers + 4) = _MergedGlobals_1019;
      }
    }
  }

  return v2;
}

- (void)_updateDelegateRespondsToFlags
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v5;

  v6 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v7;

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7 | v9;

  v11 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEF | v10;
}

- (UITextView)_associatedTextView
{
  WeakRetained = objc_loadWeakRetained(&self->__associatedTextView);

  return WeakRetained;
}

- (void)prepareForAnimationFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A65F050;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A65F058;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A65F060, v14);
}

- (void)finishAnimationFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A65F030;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A65F038;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A65F040, v14);
}

- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_18A4A76C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_18A65F010;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_18A65F018;
  v12[5] = v11;
  v13 = self;
  sub_189162B34(0, 0, v7, &unk_18A65F020, v12);
}

- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A65EFF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A65EFF8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A65F000, v14);
}

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A65EFD0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A65EFD8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A65EFE0, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)a3 visible:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_18A4A76C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18A65EFB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18A65EFB8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_189162B34(0, 0, v11, &unk_18A65EFC0, v16);
}

- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 previous:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  v16[3] = x;
  v16[4] = y;
  v16[5] = width;
  v16[6] = height;
  *(v16 + 7) = v15;
  *(v16 + 8) = self;
  v17 = sub_18A4A76C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_18A65EF90;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_18A650930;
  v19[5] = v18;
  v20 = a3;
  v21 = self;
  sub_189162B34(0, 0, v14, &unk_18A65EFA0, v19);
}

- (void)_setUpTextEffectView
{
  v2 = self;
  sub_18903EE58();
}

- (void)_beginTextAssistantAnticipationInContext:(id)a3 animationCharacterRange:(_NSRange)a4 subrangeIndex:(int64_t)a5 customFillColor:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v13 = self;
  sub_18903F26C(v11, location, length, a5, a6);
}

- (void)_endTextAssistantAnticipationInContextID:(id)a3 animationCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = sub_18A4A29D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A29B8();
  v11 = self;
  sub_18903FA54(v10, location, length);

  (*(v8 + 8))(v10, v7);
}

- (void)_animateRewrittenTextForDeliveryID:(id)a3 contextID:(id)a4 subrangeIndex:(int64_t)a5 customFillColor:(id)a6
{
  v9 = sub_18A4A29D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_18A4A29B8();
  sub_18A4A29B8();
  v16 = a6;
  v17 = self;
  sub_18903FDF4(v15, v12, a5, a6);

  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v15, v9);
}

- (void)_invalidateReplacementForDeliveryID:(id)a3 subrangeIndex:(int64_t)a4 animated:(BOOL)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_18A4A29D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A29B8();
  v14 = self;
  v15 = sub_1890421A0(v13, a4, v14);
  if (v15)
  {
    v16 = v15;
    v17 = sub_18A4A76C8();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_18A4A76A8();

    v18 = sub_18A4A7698();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v16;
    sub_188F18724(0, 0, v9, &unk_18A65EF60, v19);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
}

- (void)_effectContainerCleanup
{
  v2 = qword_1EA92E9E0;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_18903AA40(v3, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  sub_189041A94(0, v3);
  if (qword_1EA92E9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1891E9A94(v3);
  swift_endAccess();
}

- (void)_setInFlightDeliveryID:(id)a3
{
  v5 = a3;
  if (v5 && self->_inFlightDeliveryID)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:259 description:@"Only one in-flight delivery at a time"];
  }

  inFlightDeliveryID = self->_inFlightDeliveryID;
  self->_inFlightDeliveryID = v5;
}

- (void)_sessionCleanup
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__UIWritingToolsCoordinator__sessionCleanup__block_invoke;
  v3[3] = &unk_1E70F2F80;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(UIWritingToolsCoordinator *)self _changeToState:v3 postStateChangeActions:?];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __44__UIWritingToolsCoordinator__sessionCleanup__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _effectContainerCleanup];
    [v3 _setInFlightDeliveryID:0];
    [v3 _setProofreadingDeliverySuggestionIDs:0];
    v4 = [v3 _proofreadingInteraction];

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 192));
      v6 = [v3 _proofreadingInteraction];
      [v5 removeInteraction:v6];

      [v3 _setProofreadingInteraction:0];
    }

    v7 = [v3 _proofreadingSuggestionInfos];
    [v7 removeAllObjects];

    [v3 _setChosenSuggestion:0];
    [v3 _setContextIDForChosenSuggestion:0];
    [v3 _setProofreadingDeliveryOffset:0];
    [v3 _setProofreadingDeliveryReplacement:0];
    [v3 _setCancelingSession:0];
    [v3 _setEndingSession:0];
    [v3 _setIsStartingRetry:0];
    [v3 _setSynchronizingWithUndoRedo:0];
    v8 = [v3 _writingToolsDelegateMessageInvocationBuffer];
    [v8 removeAllObjects];

    v9 = [v3 _trackingInfos];
    [v9 removeAllObjects];

    [v3 _setSetSessionTextViewDelegate:0];
    [v3 _setActiveSessionUUID:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(*(a1 + 32) + 8);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v18 + 1) + 8 * v14++) removeFromSuperview];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [*(*(a1 + 32) + 8) removeAllObjects];
    v15 = [v3 _pendingCompletionForWritingToolsWillBegin];

    if (v15)
    {
      v16 = [v3 _pendingSessionForWritingToolsWillBegin];
      v17 = [v3 _pendingCompletionForWritingToolsWillBegin];
      [v3 willBeginWritingToolsSession:v16 requestContexts:v17];
    }
  }
}

- (void)_changeToState:(void *)a3 postStateChangeActions:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 208) == a2)
    {
      (*(v5 + 2))(v5);
    }

    else
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v10 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_changeToState_postStateChangeActions____s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = off_1E70F93A8[a2];
          *location = 138412546;
          *&location[4] = a1;
          v17 = 2112;
          v18 = v11;
          v12 = v10;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@, changing to state %@", location, 0x16u);
        }
      }

      objc_initWeak(location, a1);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__UIWritingToolsCoordinator__changeToState_postStateChangeActions___block_invoke;
      aBlock[3] = &unk_1E70F90C0;
      objc_copyWeak(v15, location);
      v15[1] = a2;
      v14 = v6;
      v7 = _Block_copy(aBlock);
      v8 = v7;
      if (*(a1 + 16))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 200));
        [WeakRetained writingToolsCoordinator:a1 willChangeToState:a2 completion:v8];
      }

      else
      {
        (*(v7 + 2))(v7);
      }

      objc_destroyWeak(v15);
      objc_destroyWeak(location);
    }
  }
}

void __33__UIWritingToolsCoordinator_init__block_invoke()
{
  v2 = _UIMainBundleIdentifier();
  if ([v2 isEqualToString:@"com.apple.Pages"])
  {
    _MergedGlobals_1019 = 1;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    if ([v0 isEqualToString:@"com.apple.Keynote"])
    {
      _MergedGlobals_1019 = 1;
    }

    else
    {
      v1 = _UIMainBundleIdentifier();
      _MergedGlobals_1019 = [v1 isEqualToString:@"com.apple.Numbers"];
    }
  }
}

- (UIWritingToolsCoordinator)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(UIWritingToolsCoordinator *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(UIWritingToolsCoordinator *)v6 _updateDelegateRespondsToFlags];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(UIWritingToolsCoordinator *)self _updateDelegateRespondsToFlags];
    v5 = obj;
  }
}

- (void)setEffectContainerView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_effectContainerView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (self->_state)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Changing effectContainerView only permitted for UIWritingToolsCoordinator.State.inactive"];
    }

    objc_storeWeak(&self->_effectContainerView, obj);
    v5 = obj;
  }
}

- (UIView)effectContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectContainerView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = [(UIWritingToolsCoordinator *)self view];
  }

  v6 = v5;

  return v6;
}

- (void)setDecorationContainerView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_decorationContainerView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (self->_state)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Changing decorationContainerView only permitted for UIWritingToolsCoordinator.State.inactive"];
    }

    objc_storeWeak(&self->_decorationContainerView, obj);
    v5 = obj;
  }
}

- (UIView)decorationContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_decorationContainerView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = [(UIWritingToolsCoordinator *)self view];
  }

  v6 = v5;

  return v6;
}

- (void)setPreferredBehavior:(int64_t)a3
{
  self->_preferredBehavior = a3;
  v4 = [(UIWritingToolsCoordinator *)self _associatedTextView];
  [v4 setWritingToolsBehavior:a3];
}

- (void)setPreferredResultOptions:(unint64_t)a3
{
  self->_preferredResultOptions = a3;
  v4 = [(UIWritingToolsCoordinator *)self _associatedTextView];
  [v4 setAllowedWritingToolsResultOptions:a3];
}

- (unint64_t)preferredResultOptions
{
  if (!self->_isEndingSession)
  {
    return self->_preferredResultOptions;
  }

  v2 = [(UIWritingToolsCoordinator *)self _associatedTextView];
  v3 = [v2 allowedWritingToolsResultOptions];

  return v3;
}

- (unint64_t)resultOptions
{
  result = [(UIWritingToolsCoordinator *)self preferredResultOptions];
  if (!result)
  {
    v4 = [(UIWritingToolsCoordinator *)self view];
    v5 = [v4 _defaultWritingToolsResultOptions];

    return v5;
  }

  return result;
}

- (void)updateRange:(_NSRange)a3 withText:(id)a4 reason:(int64_t)a5 forContextWithIdentifier:(id)a6
{
  length = a3.length;
  location = a3.location;
  v72 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v55 = self;
  v14 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v56 = v13;
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = [v15 undoRoller];
  v17 = v16;
  if (a5 == 1 || !v16 || ([(UIWritingToolsCoordinator *)v55 _finishUndoRedoChangesIfNecessaryForContextID:v56], v55->_activeSessionUUID))
  {
    if (length || [v12 length])
    {
      v53 = v17;
      v52 = [v15 acceptedEvaluationContext];
      v19 = [(UIWritingToolsCoordinator *)v55 _adjustedResolvedRangeForContextWithIdentifier:v56];
      v20 = v18;
      if (location > v19 + v18)
      {
        v21 = *(__UILogGetCategoryCachedImpl("WritingToolsCoordinator", &qword_1ED49CA88) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          NSStringFromSelector(a2);
          v23 = v15;
          v25 = v24 = v12;
          *buf = 134219010;
          v63 = location;
          v64 = 2048;
          v65 = length;
          v66 = 2112;
          v67 = v25;
          v68 = 2048;
          v69 = v19;
          v70 = 2048;
          v71 = v20;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "UIWritingToolsCoordinator ignoring range, {%lu, %lu}, passed in %@ that's after the adjusted resolvedRange, {%lu, %lu}.", buf, 0x34u);

          v12 = v24;
          v15 = v23;
        }

LABEL_18:
        v32 = v52;
LABEL_23:

        goto LABEL_24;
      }

      if (a5 == 1)
      {
        v26 = [v15 replacementTracker];
        if (!v17)
        {
          v27 = [_UIWTCUndoRoller alloc];
          v28 = [v26 activeText];
          v17 = [(_UIWTCUndoRoller *)v27 initWithEvaluatedText:v28 offset:v19];

          [v15 setUndoRoller:v17];
        }

        [(_UIWTCUndoRoller *)v17 replaceRange:location withText:length, v12];
        if (![(_UIWTCUndoRoller *)v17 hasFouled])
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (location + length > v19 + v18)
        {
          v29 = *(__UILogGetCategoryCachedImpl("WritingToolsCoordinator", &qword_1ED49CA90) + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
            v31 = NSStringFromSelector(a2);
            *buf = 134219010;
            v63 = location;
            v64 = 2048;
            v65 = length;
            v66 = 2112;
            v67 = v31;
            v68 = 2048;
            v69 = v19;
            v70 = 2048;
            v71 = v20;
            _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "UIWritingToolsCoordinator can't update for range, {%lu, %lu}, passed in %@ that overflows the adjusted resolvedRange, {%lu, %lu}. Stopping Writing Tools", buf, 0x34u);
          }

          [(UIWritingToolsCoordinator *)v55 stopWritingTools];
          goto LABEL_18;
        }

        v26 = [v15 replacementTracker];
        if (![v26 isRewriting])
        {
          v51 = v15;
          v49 = [v15 currentProofreadingText];
          [v49 replaceCharactersInRange:location withAttributedString:{length, v12}];
          v50 = v26;
          v33 = [v26 proofreadingController];
          v34 = [v12 length] - length;
          v35 = [v33 editTracker];
          [v35 addEditForRange:location lengthDelta:{length, v34}];

          v59 = 0u;
          v60 = 0u;
          v48 = (v34 + location) & ~((v34 + location) >> 63);
          v57 = 0u;
          v58 = 0u;
          obj = [v33 suggestions];
          v36 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v58;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v58 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                v40 = *(*(&v57 + 1) + 8 * i);
                v41 = [v33 editTracker];
                v42 = [v40 originalRange];
                v44 = v43;
                v45 = [v40 uuid];
                v46 = [v41 rangeOfSuggestionWithRange:v42 UUID:v44 applyDelta:{v45, 0}];

                if (v46 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v47 = [v40 uuid];
                  [(UIWritingToolsCoordinator *)v55 _invalidateProofreadingSuggestionWithUUID:v47 contextID:v56];
                }
              }

              v37 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
            }

            while (v37);
          }

          [(UIWritingToolsCoordinator *)v55 _resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:v48 inContext:v56 completion:&__block_literal_global_65_0];
          v15 = v51;
          v32 = v52;
          v17 = v53;
          v26 = v50;
          goto LABEL_22;
        }
      }

      [(UIWritingToolsCoordinator *)v55 stopWritingTools];
LABEL_21:
      v32 = v52;
LABEL_22:

      goto LABEL_23;
    }
  }

LABEL_24:
}

- (void)_finishUndoRedoChangesIfNecessaryForContextID:(_BYTE *)a1
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _trackingInfos];
    v5 = [v4 objectForKeyedSubscript:v3];

    v6 = [v5 replacementTracker];
    v7 = [v5 showingOriginal];
    v8 = [v5 undoRoller];
    if (!v8)
    {
LABEL_7:

      goto LABEL_8;
    }

    [v5 setUndoRoller:0];
    a1[26] = 1;
    if ([v8 hasFouled])
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v29 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CA98) + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "_undoRoller fouled while attempting to synchronize with original vs. rewritten text", buf, 2u);
        }
      }

      goto LABEL_5;
    }

    v9 = [v6 isProofreading];
    v10 = [v8 rolledReplacement];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 string];
      v32 = v7;
      if (v7)
      {
        v13 = [v6 activeText];
        v14 = [v13 string];
        v15 = [v12 isEqualToString:v14];

        if (v15)
        {
          [a1 _updateProofreadingTextAndTrackerToShowOriginal:0 inContextID:v3];
          goto LABEL_6;
        }

LABEL_22:
        if (!os_variant_has_internal_diagnostics() || ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) != 0 || !byte_1EA95E17C) && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) != 0 || !byte_1EA95E184))
        {
          goto LABEL_5;
        }

        v26 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAA0) + 8);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        if (v32)
        {
          v27 = @"rewritten text";
        }

        else
        {
          v27 = @"original text";
        }

        v28 = v6;
        if (v32)
        {
LABEL_44:
          [v28 rewrittenText];
          v30 = LABEL_52:;
          v31 = [v8 rolledReplacement];
          *buf = 138412802;
          v35 = v27;
          v36 = 2112;
          v37 = v30;
          v38 = 2112;
          v39 = v31;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "_undoRoller failed to synchronize with original vs. rewritten text.\nExpected a match to %@\n%@\nReceived\n%@", buf, 0x20u);

          goto LABEL_53;
        }

LABEL_51:
        [v6 originalText];
        goto LABEL_52;
      }

      v18 = [v6 originalText];
      v19 = [v18 string];
      v20 = [v12 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_22;
      }

      [a1 _updateProofreadingTextAndTrackerToShowOriginal:1 inContextID:v3];
    }

    else
    {
      v16 = [v6 selectRewriteMatchingUndoRedoReplacementText:v10];

      if (v16)
      {
        if (!v7)
        {
          [a1 _updateToCompositionSessionState:2 contextID:v3];
          goto LABEL_6;
        }

        v17 = [v6 numberOfPreviousRewrittenTexts];
        [a1 _updateToCompositionSessionState:2 contextID:v3];
        if (v17)
        {
LABEL_6:
          a1[26] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v33 = v7;
        v21 = [v8 rolledReplacement];
        v22 = [v21 string];
        v23 = [v6 originalText];
        v24 = [v23 string];
        v25 = [v22 isEqualToString:v24];

        if (v25)
        {
          [a1 _updateToCompositionSessionState:1 contextID:v3];
          if (a1[29])
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
        {
          v26 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAA8) + 8);
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
LABEL_53:

            goto LABEL_5;
          }

          if (v33)
          {
            v27 = @"rewritten text";
          }

          else
          {
            v27 = @"original text";
          }

          v28 = v6;
          if (v33)
          {
            goto LABEL_44;
          }

          goto LABEL_51;
        }
      }
    }

LABEL_5:
    [a1 stopWritingTools];
    goto LABEL_6;
  }

LABEL_8:
}

- (void)_finishUndoRedoChangesInAllContextsIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [a1[4] keyEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          v8 = [a1 _trackingInfos];
          v9 = [v8 objectForKeyedSubscript:v7];

          [(UIWritingToolsCoordinator *)a1 _finishUndoRedoChangesIfNecessaryForContextID:v7];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }
}

- (void)updateForReflowedTextInContextWithIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 replacementTracker];
  if ([v8 isProofreading])
  {
    if (self->_inFlightDeliveryID)
    {
      v12[0] = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v10 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v9];
    }

    else
    {
      v11 = [v7 acceptedEvaluationContext];
      -[UIWritingToolsCoordinator _resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:inContext:completion:](self, "_resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:inContext:completion:", [v11 evaluatedRange], v5, &__block_literal_global_78);
    }
  }
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = UIWritingToolsCoordinator;
  v3 = [(UIWritingToolsCoordinator *)&v11 description];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = v5;
  state = self->_state;
  if (state > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E70F93A8[state];
  }

  v9 = [v3 stringByAppendingFormat:@" view=%p delegate=%p state=%@", WeakRetained, v5, v8];

  return v9;
}

- (_NSRange)_adjustedResolvedRangeForContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 acceptedEvaluationContext];
  v8 = [v6 replacementTracker];
  v9 = [v7 resolvedRange];
  v11 = v10;
  if (([v6 showingOriginal] & 1) == 0)
  {
    if ([v8 isProofreading])
    {
      v12 = [v8 proofreadingController];
      v13 = [v12 editTracker];
      [v13 currentContextRange];
      v11 = v14;
    }

    else
    {
      v12 = [v8 activeText];
      v11 = [v12 length];
    }
  }

  v15 = v9;
  v16 = v11;
  result.length = v16;
  result.location = v15;
  return result;
}

- (BOOL)isEditable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 isEditable];

  return v6;
}

void __43__UIWritingToolsCoordinator__isIAWriterApp__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED49CA79 = [v0 isEqualToString:@"pro.writer"];
}

- (void)didMoveToView:(id)a3
{
  obj = a3;
  [obj _setWritingToolsCoordinator:self];
  WeakRetained = objc_loadWeakRetained(&self->_effectContainerView);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_effectContainerView, obj);
  }

  v5 = objc_loadWeakRetained(&self->_decorationContainerView);

  if (!v5)
  {
    objc_storeWeak(&self->_decorationContainerView, obj);
  }

  v6 = [(UIWritingToolsCoordinator *)self _associatedTextView];
  v7 = v6;
  if (v6)
  {
    [v6 setWritingToolsBehavior:self->_preferredBehavior];
    [v7 setAllowedWritingToolsResultOptions:self->_preferredResultOptions];
    self->_isEndingSession = 1;
    if ((dyld_program_sdk_at_least() & 1) == 0 && ([v7 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      if (qword_1ED49CAB0 != -1)
      {
        dispatch_once(&qword_1ED49CAB0, &__block_literal_global_87);
      }

      self->_isEndingSession = byte_1ED49CA79 ^ 1;
    }
  }

  else
  {
    self->_isEndingSession = 0;
  }
}

- (void)willMoveToView:(id)a3
{
  obj = a3;
  if (self->_proofreadingInteraction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeInteraction:self->_proofreadingInteraction];
  }

  v5 = objc_loadWeakRetained(&self->_effectContainerView);
  v6 = objc_loadWeakRetained(&self->_view);

  if (v5 == v6)
  {
    objc_storeWeak(&self->_effectContainerView, 0);
  }

  v7 = objc_loadWeakRetained(&self->_decorationContainerView);
  v8 = objc_loadWeakRetained(&self->_view);

  if (v7 == v8)
  {
    objc_storeWeak(&self->_decorationContainerView, 0);
  }

  v9 = objc_loadWeakRetained(&self->_view);
  [v9 _setWritingToolsCoordinator:0];

  objc_storeWeak(&self->_view, obj);
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (objc_opt_class())
  {
    if (self->_inFlightDeliveryID)
    {
      [(UIWritingToolsCoordinator *)self _setPendingCompletionForWritingToolsWillBegin:v8];
      [(UIWritingToolsCoordinator *)self _setPendingSessionForWritingToolsWillBegin:v7];
    }

    else
    {
      if (self->_activeSessionUUID)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:687 description:@"New writing tools session starting without having ended the previous session"];
      }

      [(UIWritingToolsCoordinator *)self _setPendingCompletionForWritingToolsWillBegin:0];
      [(UIWritingToolsCoordinator *)self _setPendingSessionForWritingToolsWillBegin:0];
      objc_initWeak(buf, self);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __74__UIWritingToolsCoordinator_willBeginWritingToolsSession_requestContexts___block_invoke;
      v19 = &unk_1E70F8DA0;
      objc_copyWeak(&v23, buf);
      v22 = v8;
      v10 = v7;
      v20 = v10;
      v21 = self;
      v11 = _Block_copy(&v16);
      v12 = [v10 uuid];
      activeSessionUUID = self->_activeSessionUUID;
      self->_activeSessionUUID = v12;

      if (v10)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      [(UIWritingToolsCoordinator *)self _changeToState:v14 postStateChangeActions:v11];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("TextAssistant", &willBeginWritingToolsSession_requestContexts____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "The WritingTools framework is not available", buf, 2u);
    }
  }
}

void __74__UIWritingToolsCoordinator_willBeginWritingToolsSession_requestContexts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 compositionSessionType] == 10;
    }

    else
    {
      v4 = 0;
    }

    v5 = [WeakRetained delegate];
    if (v5)
    {
      v6 = *(*(a1 + 40) + 16);
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3032000000;
      v16[3] = __Block_byref_object_copy__21;
      v16[4] = __Block_byref_object_dispose__21;
      v17 = 0;
      v8 = [MEMORY[0x1E695DF90] dictionary];
      objc_initWeak(&location, WeakRetained);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__UIWritingToolsCoordinator_willBeginWritingToolsSession_requestContexts___block_invoke_97;
      v9[3] = &unk_1E70F8D78;
      objc_copyWeak(&v13, &location);
      v11 = *(a1 + 48);
      v12 = v16;
      v14 = (v6 & 0x10) != 0;
      v10 = v5;
      [v10 writingToolsCoordinator:WeakRetained requestsContextsForScope:v4 completion:v9];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);

      _Block_object_dispose(v16, 8);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __74__UIWritingToolsCoordinator_willBeginWritingToolsSession_requestContexts___block_invoke_97(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v3 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = objc_alloc_init(_UIWTCTrackingInfo);
          v16 = [WeakRetained _trackingInfos];
          [v16 setObject:v15 forKeyedSubscript:v14];

          [(_UIWTCTrackingInfo *)v15 setProposedEvaluationContext:v13];
          v17 = [v13 _wtContext];
          [v4 addObject:v17];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) _writingToolsCoordinator:WeakRetained didReceiveContexts:v8];
    }

    if ([v4 count])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__UIWritingToolsCoordinator_willBeginWritingToolsSession_requestContexts___block_invoke_2;
      v20[3] = &unk_1E70F4A50;
      v22 = *(a1 + 40);
      v21 = v4;
      [(UIWritingToolsCoordinator *)WeakRetained _changeToState:v20 postStateChangeActions:?];
    }

    v3 = v18;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v7 = a4;
  if (![v7 count])
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:768 description:@"Can't have begun a writing tools session without any contexts"];
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        v14 = [v13 uuid];
        v15 = self;
        v16 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:v14];
        v17 = [v16 proposedEvaluationContext];
        v18 = v17;
        if (v17)
        {
          [v17 _setWTContext:v13];
          v19 = [v13 range];
          [v18 _setEvaluatedRange:{v19, v20}];
          [v16 setAcceptedEvaluationContext:v18];
          [v8 addObject:v18];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v22 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v62 = v14;
            _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Couldn't match up evaluation context with identifier: %@", buf, 0xCu);
          }
        }

        else
        {
          v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CAB8) + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v14;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Couldn't match up evaluation context with identifier: %@", buf, 0xCu);
          }
        }

        ++v12;
        self = v15;
      }

      while (v10 != v12);
      v23 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      v10 = v23;
    }

    while (v23);
  }

  v24 = [v46 textViewDelegate];
  [(UIWritingToolsCoordinator *)self _setSetSessionTextViewDelegate:v24];

  v25 = [v46 type];
  v26 = v25;
  if (v25 == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
      {
        if (byte_1EA95E184)
        {
          v27 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAC0) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v8;
            v28 = "Begin proofread of evaluation contexts, %@";
LABEL_31:
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
          }
        }
      }
    }
  }

  else if (v25 == 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v27 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAC8) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v8;
            v28 = "Begin rewrite of evaluation contexts, %@";
            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:793 description:{@"Unimplemented writing tools session type, %li", v26}];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = v8;
  v51 = [v47 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v51)
  {
    v49 = *v53;
    v50 = v26;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v31 = *(*(&v52 + 1) + 8 * i);
        v32 = [v31 identifier];
        v33 = [(UIWritingToolsCoordinator *)self _trackingInfos];
        v34 = [v33 objectForKeyedSubscript:v32];

        v35 = [v31 evaluatedRange];
        v37 = v36;
        if (v26 == 1)
        {
          v38 = [off_1E70ECC10 alloc];
          v39 = [v31 attributedString];
          v40 = [v38 initWithContextString:v39 contextRange:v35 delegate:{v37, self}];

          [v40 _setWritingToolsContextID:v32];
        }

        else
        {
          v40 = 0;
        }

        v41 = self;
        v42 = [_UITextAssistantReplacementTracker alloc];
        v43 = [v31 _wtContext];
        v44 = [(_UITextAssistantReplacementTracker *)v42 initFromSessionContext:v43 offsetForSessionRange:0 withProofreadingController:v40];
        [v34 setReplacementTracker:v44];

        [(UIWritingToolsCoordinator *)v41 _beginTextAssistantAnticipationsForRange:v35 inContext:v37, v31];
        v26 = v50;
        self = v41;
      }

      v51 = [v47 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v51);
  }

  [(UIWritingToolsCoordinator *)self _changeToState:&__block_literal_global_112 postStateChangeActions:?];
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(NSMutableDictionary *)self->_trackingInfos keyEnumerator];
  v9 = [v8 allObjects];
  [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v9];

  [(NSMutableArray *)self->_writingToolsDelegateMessageInvocationBuffer removeAllObjects];
  if (!self->_inFlightDeliveryID)
  {
    objc_initWeak(&location, self);
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __64__UIWritingToolsCoordinator_didEndWritingToolsSession_accepted___block_invoke;
    v33 = &unk_1E70F5A28;
    objc_copyWeak(&v34, &location);
    v13 = _Block_copy(&v30);
    *(&self->_includesTextListMarkers + 2) = 1;
    [(UIWritingToolsCoordinator *)&self->super.isa _finishUndoRedoChangesInAllContextsIfNecessary];
    if ([v7 type] == 1)
    {
      [(UIWritingToolsCoordinator *)self _didEndProofreadingSession:v7 accepted:v4 completion:v13];
    }

    else
    {
      if ([v7 type] == 2)
      {
        [(UIWritingToolsCoordinator *)self _didEndRewritingSession:v7 accepted:v4];
      }

      else
      {
        if (!os_variant_has_internal_diagnostics())
        {
          goto LABEL_10;
        }

        v20 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
        v21 = byte_1EA95E17C ? v20 : 1;
        if (v21 == 1)
        {
          v22 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging");
          v23 = byte_1EA95E184 ? v22 : 1;
          if (v23)
          {
            goto LABEL_10;
          }
        }

        if (os_variant_has_internal_diagnostics())
        {
          v24 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
          v25 = byte_1EA95E17C ? v24 : 1;
          if (v25 != 1 || ((v26 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"), !byte_1EA95E184) ? (v27 = 1) : (v27 = v26), (v27 & 1) == 0))
          {
            v28 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAD8) + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = [v7 type];
              *buf = 134218242;
              v37 = v29;
              v38 = 2112;
              v39 = self;
              _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Could not end unexpected Writing Tools session type, %lu, for %@", buf, 0x16u);
            }
          }
        }
      }

      v13[2](v13);
    }

LABEL_10:

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v40[0] = v7;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v40[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v12 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v11];

  if (os_variant_has_internal_diagnostics())
  {
    v14 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
    v15 = byte_1EA95E17C ? v14 : 1;
    if (v15 != 1 || ((v16 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"), !byte_1EA95E184) ? (v17 = 1) : (v17 = v16), (v17 & 1) == 0))
    {
      v18 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAD0) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = @"reverted";
        if (v4)
        {
          v19 = @"accepted";
        }

        *buf = 138412546;
        v37 = v19;
        v38 = 2112;
        v39 = v12;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Ending session with delivery in flight, %@. Deferring until most recent delivery lands. %@", buf, 0x16u);
      }
    }
  }

LABEL_11:
}

void __64__UIWritingToolsCoordinator_didEndWritingToolsSession_accepted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _sessionCleanup];
    WeakRetained = v2;
  }
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  activeSessionUUID = self->_activeSessionUUID;
  v36 = v7;
  v9 = [v7 uuid];
  _confirmMatchingWritingToolsSession(activeSessionUUID, v9, a2);

  if (self->_inFlightDeliveryID)
  {
    v48[0] = v36;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v48[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v12 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v11];

    if (os_variant_has_internal_diagnostics())
    {
      v28 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
      v29 = byte_1EA95E17C ? v28 : 1;
      if (v29 != 1 || ((v30 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"), !byte_1EA95E184) ? (v31 = 1) : (v31 = v30), (v31 & 1) == 0))
      {
        v32 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsSession_didReceiveAction____s_category) + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          if (a4 == 1)
          {
            v33 = @"ShowOriginal";
          }

          else if (a4 == 2)
          {
            v33 = @"ShowRewritten";
          }

          else
          {
            v33 = @"<unrecognized>";
            if (a4 == 3)
            {
              v33 = @"CompositionRestart";
            }
          }

          *location = 138412546;
          *&location[4] = v33;
          v46 = 2112;
          v47 = v12;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Packaged up Writing Tools action, %@, to deliver after animation finishes, %@", location, 0x16u);
        }
      }
    }
  }

  else if ([v36 type] == 2)
  {
    [(UIWritingToolsCoordinator *)self _setIsStartingRetry:a4 == 3];
    v13 = a4 - 1;
    if ((a4 - 1) >= 2)
    {
      a4 = 0;
    }

    if (v13 >= 3)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:865 description:@"UITextAssistantManager received unknown composition action"];

      a4 = -1;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [(NSMutableDictionary *)self->_trackingInfos objectEnumerator];
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v16)
    {
      v17 = *v40;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [v19 acceptedEvaluationContext];
          v21 = v20 == 0;

          if (!v21)
          {
            v22 = [v19 contextID];
            [(UIWritingToolsCoordinator *)self _finishUndoRedoChangesIfNecessaryForContextID:v22];
            if (!self->_activeSessionUUID)
            {

              goto LABEL_4;
            }

            v23 = [v19 replacementTracker];
            if ([v23 compositionSessionState] | a4)
            {
              v43 = v22;
              v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
              [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v24];

              [(UIWritingToolsCoordinator *)self _updateToCompositionSessionState:a4 contextID:v22];
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    [(UIWritingToolsCoordinator *)self _setIsStartingRetry:0];
  }

  else
  {
    v25 = [(NSMutableDictionary *)self->_trackingInfos keyEnumerator];
    v26 = [v25 allObjects];
    [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v26];

    if ([v36 type] != 1)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:889 description:@"UITextAssistantManager received action for unknown session type"];
    }

    if ((a4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:890 description:@"UITextAssistantManager received unknown proofreading action"];
    }

    else
    {
      [(UIWritingToolsCoordinator *)&self->super.isa _finishUndoRedoChangesInAllContextsIfNecessary];
      if (self->_activeSessionUUID)
      {
        objc_initWeak(location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__UIWritingToolsCoordinator_writingToolsSession_didReceiveAction___block_invoke;
        aBlock[3] = &unk_1E70F8DC8;
        objc_copyWeak(v38, location);
        v38[1] = a4;
        v27 = _Block_copy(aBlock);
        [(UIWritingToolsCoordinator *)self _changeToState:v27 postStateChangeActions:?];

        objc_destroyWeak(v38);
        objc_destroyWeak(location);
      }
    }
  }

LABEL_4:
}

void __66__UIWritingToolsCoordinator_writingToolsSession_didReceiveAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _trackingInfos];
    v5 = [v4 keyEnumerator];

    v6 = *(a1 + 40) == 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__UIWritingToolsCoordinator_writingToolsSession_didReceiveAction___block_invoke_2;
    v7[3] = &unk_1E70F3590;
    v7[4] = v3;
    [v3 _recursiveUpdateProofreadingTextAndTrackerToShowOriginal:v6 withContextIDEnumerator:v5 completion:v7];
  }
}

- (void)_recursiveUpdateProofreadingTextAndTrackerToShowOriginal:(BOOL)a3 withContextIDEnumerator:(id)a4 completion:(id)a5
{
  v6 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 nextObject];
  if (v10)
  {
    v11 = [(UIWritingToolsCoordinator *)self _trackingInfos];
    v12 = [v11 objectForKeyedSubscript:v10];

    v13 = [v12 acceptedEvaluationContext];
    if (v13)
    {
      v40 = v6;
      if (v6)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v14 = [v12 replacementTracker];
        v15 = [v14 proofreadingController];
        v16 = [v15 suggestions];

        v17 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v46;
          v39 = v12;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v45 + 1) + 8 * i);
              if ([v21 state] == 1)
              {
                v22 = [v21 uuid];
                v12 = v39;
                [v39 setSavedReviewingProofreadingSuggestionID:v22];
                [(UIWritingToolsCoordinator *)&self->super.isa _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:v22 state:0];
                if (os_variant_has_internal_diagnostics())
                {
                  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
                  {
                    if (byte_1EA95E184)
                    {
                      v38 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_recursiveUpdateProofreadingTextAndTrackerToShowOriginal_withContextIDEnumerator_completion____s_category) + 8);
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v51 = v22;
                        _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Tell Writing Tools to update proofreading suggestion to Pending so that the popover will dismiss. suggestionID = %@", buf, 0xCu);
                      }
                    }
                  }
                }

                WeakRetained = objc_loadWeakRetained(&self->_sessionTextViewDelegate);
                [WeakRetained proofreadingSessionWithUUID:self->_activeSessionUUID updateState:0 forSuggestionWithUUID:v22];

                goto LABEL_16;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
            v12 = v39;
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v6 = v40;
      }

      [(UIWritingToolsCoordinator *)self _updateProofreadingTextAndTrackerToShowOriginal:v6 inContextID:v10];
      v24 = [v13 range];
      v26 = v25;
      if ((v6 & 1) == 0)
      {
        v27 = [v12 replacementTracker];
        v28 = [v27 proofreadingController];

        v29 = [(UIWritingToolsCoordinator *)self _lastProofreadingSuggestionWithUnderlineFromProofreadingController:v28];
        if (v29)
        {
          v30 = [v28 editTracker];
          v31 = [v29 originalRange];
          v33 = [v30 adjustRange:{v31, v32}];
          v24 = v33 + v34;
        }

        else
        {
          v24 += v26;
        }

        v26 = 0;
      }

      v35 = [(UIWritingToolsCoordinator *)self delegate];
      v36 = [MEMORY[0x1E696B098] valueWithRange:{v24, v26}];
      v49 = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __121__UIWritingToolsCoordinator__recursiveUpdateProofreadingTextAndTrackerToShowOriginal_withContextIDEnumerator_completion___block_invoke;
      v41[3] = &unk_1E70F3798;
      v41[4] = self;
      v44 = v40;
      v42 = v8;
      v43 = v9;
      [v35 writingToolsCoordinator:self selectRanges:v37 inContext:v13 completion:v41];
    }
  }

  else
  {
    v9[2](v9);
  }
}

- (void)_synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:(uint64_t)a3 state:
{
  v5 = a2;
  if (a1)
  {
    v10 = v5;
    v6 = [a1 _proofreadingSuggestionInfos];
    v7 = [v6 objectForKeyedSubscript:v10];

    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier_state_ object:a1 file:@"UIWritingToolsCoordinator.m" lineNumber:2423 description:@"Proofreading suggestion tracking breakdown"];
    }

    if ([v7 state] != a3)
    {
      v8 = [[_UIWTCProofreadingSuggestionInfo alloc] initWithProofreadingSuggestionInfo:v7 state:a3];
      [a1[5] setObject:v8 forKeyedSubscript:v10];
    }

    v5 = v10;
  }
}

- (id)_lastProofreadingSuggestionWithUnderlineFromProofreadingController:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [a2 suggestions];
    v3 = [v2 reverseObjectEnumerator];

    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if ([v7 state] <= 1)
          {
            v4 = v7;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v36 = a7;
  v56[5] = *MEMORY[0x1E69E9840];
  v38 = a3;
  v11 = a4;
  v12 = a6;
  v39 = [v12 uuid];
  v13 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v14 = [v13 objectForKeyedSubscript:v39];

  v15 = [v14 acceptedEvaluationContext];

  if (v15)
  {
    activeSessionUUID = self->_activeSessionUUID;
    v17 = [v38 uuid];
    _confirmMatchingWritingToolsSession(activeSessionUUID, v17, a2);

    if (self->_inFlightDeliveryID)
    {
      v56[0] = v38;
      v18 = v11;
      if (!v11)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
      }

      v56[1] = v18;
      v19 = [MEMORY[0x1E696B098] valueWithRange:{a5.location, a5.length}];
      v56[2] = v19;
      v56[3] = v12;
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v36];
      v56[4] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:5];
      v22 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v21];

      if (!v11)
      {
      }

      if (os_variant_has_internal_diagnostics())
      {
        v23 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
        v24 = byte_1EA95E17C ? v23 : 1;
        if ((v24 & 1) == 0)
        {
          v25 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAE0) + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = &stru_1EFB14550;
            *buf = 138413314;
            v47 = v22;
            v48 = 2048;
            if (v36)
            {
              v26 = @" [FINISHED]";
            }

            location = a5.location;
            v50 = 2048;
            length = a5.length;
            v52 = 2112;
            v53 = v11;
            v54 = 2112;
            v55 = v26;
            _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Packaged up composition replacement to deliver after animation finishes, %@\n\trange={%lu, %lu} replacement=%@%@", buf, 0x34u);
          }
        }
      }
    }

    else
    {
      v22 = [v14 replacementTracker];
      if ([v22 isFinished])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v35 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Received a composition update after WritingTools previously signaled that composition updates had finished. This is a WritingTools error", buf, 2u);
          }
        }

        else
        {
          v28 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CAE8) + 8);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Received a composition update after WritingTools previously signaled that composition updates had finished. This is a WritingTools error", buf, 2u);
          }
        }
      }

      if (os_variant_has_internal_diagnostics())
      {
        v29 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
        v30 = byte_1EA95E17C ? v29 : 1;
        if ((v30 & 1) == 0)
        {
          v31 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAF0) + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            v33 = [(__CFString *)v11 length];
            v34 = &stru_1EFB14550;
            *buf = 134218754;
            v47 = a5.location;
            if (v36)
            {
              v34 = @" FINISHED";
            }

            v48 = 2048;
            location = a5.length;
            v50 = 2048;
            length = v33;
            v52 = 2112;
            v53 = v34;
            _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "composition session will replace range {%lu, %lu} with text of length %lu.%@", buf, 0x2Au);
          }
        }
      }

      [v14 setStreaming:1];
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __99__UIWritingToolsCoordinator_compositionSession_didReceiveText_replacementRange_inContext_finished___block_invoke;
      aBlock[3] = &unk_1E70F8DF0;
      objc_copyWeak(&v43, buf);
      v41 = v11;
      v44 = a5;
      v42 = v39;
      v45 = v36;
      v27 = _Block_copy(aBlock);
      [(UIWritingToolsCoordinator *)self _changeToState:v27 postStateChangeActions:?];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }
  }
}

void __99__UIWritingToolsCoordinator_compositionSession_didReceiveText_replacementRange_inContext_finished___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateReplacementTrackerStartingAnimationsWithText:*(a1 + 32) forRange:*(a1 + 56) inContextWithID:*(a1 + 64) finished:{*(a1 + 40), *(a1 + 72)}];
    WeakRetained = v3;
    if (*(a1 + 72) == 1)
    {
      [v3 _proofreadingOrCompositionFinishedInContext:*(a1 + 40)];
      WeakRetained = v3;
    }
  }
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v63[5] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = v14;
  v18 = v16;
  activeSessionUUID = self->_activeSessionUUID;
  v20 = [v17 uuid];
  _confirmMatchingWritingToolsSession(activeSessionUUID, v20, a2);

  if (self->_inFlightDeliveryID)
  {
    v21 = MEMORY[0x1E695E0F0];
    v46 = v15;
    if (v15)
    {
      v21 = v15;
    }

    v22 = v17;
    v63[0] = v17;
    v63[1] = v21;
    v23 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    v63[2] = v23;
    v63[3] = v18;
    v24 = v18;
    v25 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v63[4] = v25;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:5];
    v26 = location;
    v27 = length;
    v29 = v28 = v7;
    v30 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v29];

    if (!os_variant_has_internal_diagnostics() || (v34 = v26, v35 = v28, (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) != 0))
    {
      v18 = v24;
    }

    else
    {
      v18 = v24;
      if (byte_1EA95E184)
      {
        v36 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CAF8) + 8);
        v17 = v22;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = v36;
          v15 = v46;
          v38 = [v46 count];
          *buf = 134219010;
          v39 = &stru_1EFB14550;
          v54 = v38;
          v55 = 2112;
          if (v35)
          {
            v39 = @" [FINISHED]";
          }

          v56 = v30;
          v57 = 2048;
          v58 = v34;
          v59 = 2048;
          v60 = v27;
          v61 = 2112;
          v62 = v39;
          _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Packaged up %lu proofreading suggestions to deliver after animation finishes, %@\n\tprocessedRange={%lu, %lu}%@", buf, 0x34u);

          goto LABEL_10;
        }

LABEL_7:
        v15 = v46;
        goto LABEL_10;
      }
    }

    v17 = v22;
    goto LABEL_7;
  }

  v31 = v7;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
    {
      if (byte_1EA95E184)
      {
        v40 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB00) + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = v40;
          v42 = [v15 count];
          v43 = [v17 uuid];
          v44 = v43;
          *buf = 134219010;
          v45 = &stru_1EFB14550;
          v54 = v42;
          v55 = 2112;
          if (v31)
          {
            v45 = @" [FINISHED]";
          }

          v56 = v43;
          v57 = 2048;
          v58 = location;
          v59 = 2048;
          v60 = length;
          v61 = 2112;
          v62 = v45;
          _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Received %lu suggestions in proofreading session %@. Processed range = {%lu, %lu}.%@", buf, 0x34u);
        }
      }
    }
  }

  trackingInfos = self->_trackingInfos;
  v33 = [v18 uuid];
  v30 = [(NSMutableDictionary *)trackingInfos objectForKeyedSubscript:v33];

  [v30 setStreaming:1];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __105__UIWritingToolsCoordinator_proofreadingSession_didReceiveSuggestions_processedRange_inContext_finished___block_invoke;
  v47[3] = &unk_1E70F8E18;
  v47[4] = self;
  v48 = v15;
  v50 = location;
  v51 = length;
  v49 = v18;
  v52 = v31;
  [(UIWritingToolsCoordinator *)self _changeToState:v47 postStateChangeActions:?];

LABEL_10:
}

- (void)_completeReceivingSuggestions:(id)a3 processedRange:(_NSRange)a4 inContext:(id)a5 finished:(BOOL)a6
{
  v37 = a6;
  v62[1] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v39 = a5;
  v8 = [v39 uuid];
  v9 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v42 = [v9 objectForKeyedSubscript:v8];

  v10 = [v39 attributedText];
  v11 = [v10 attributedSubstringFromRange:{a4.location, a4.length}];
  v12 = [v11 mutableCopy];
  proofreadingDeliveryReplacement = self->_proofreadingDeliveryReplacement;
  self->_proofreadingDeliveryReplacement = v12;

  if ([v41 count] || v37)
  {
    v62[0] = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v14];

    if ([v41 count])
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      proofreadingDeliverySuggestionIDs = self->_proofreadingDeliverySuggestionIDs;
      self->_proofreadingDeliverySuggestionIDs = v15;

      if (!self->_proofreadingInteraction)
      {
        v17 = [[_UIWTCProofreadingInteraction alloc] initWithDelegate:self];
        proofreadingInteraction = self->_proofreadingInteraction;
        self->_proofreadingInteraction = v17;

        WeakRetained = objc_loadWeakRetained(&self->_view);
        [WeakRetained addInteraction:self->_proofreadingInteraction];
      }
    }
  }

  v38 = [v42 replacementTracker];
  v20 = [v42 acceptedEvaluationContext];
  v21 = [v20 evaluatedRange];
  v23 = v22;
  v24 = [v38 proofreadingController];
  v25 = [v42 backingProofreadingSuggestionStatePerSuggestionID];
  v26 = [v42 currentProofreadingText];
  if (!v26)
  {
    v27 = [v20 attributedString];
    v26 = [v27 mutableCopy];

    [v42 setCurrentProofreadingText:v26];
  }

  v28 = [v41 objectEnumerator];
  objc_initWeak(&location, self);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3042000000;
  v58 = __Block_byref_object_copy__162;
  v59 = __Block_byref_object_dispose__163;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__UIWritingToolsCoordinator__completeReceivingSuggestions_processedRange_inContext_finished___block_invoke;
  aBlock[3] = &unk_1E70F8E40;
  v51 = &v55;
  objc_copyWeak(v52, &location);
  v29 = v25;
  v44 = v29;
  v30 = v28;
  v45 = v30;
  v52[1] = v21;
  v52[2] = v23;
  v31 = v24;
  v46 = v31;
  v32 = v8;
  v47 = v32;
  v48 = self;
  v52[3] = a2;
  v53 = a4;
  v33 = v20;
  v49 = v33;
  v54 = v37;
  v34 = v26;
  v50 = v34;
  v35 = _Block_copy(aBlock);
  objc_storeWeak(v56 + 5, v35);
  (*(v35 + 2))(v35, 0, 0);

  objc_destroyWeak(v52);
  _Block_object_dispose(&v55, 8);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
}

void __93__UIWritingToolsCoordinator__completeReceivingSuggestions_processedRange_inContext_finished___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 88) + 8) + 40));
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 96));
    if (v7)
    {
      if (v31)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "state")}];
        [*(a1 + 32) setObject:v8 forKeyedSubscript:v31];
      }

      v9 = [*(a1 + 40) nextObject];
      if (v9)
      {
        v10 = [_UIWTCProofreadingSuggestionInfo alloc];
        v11 = *(a1 + 104);
        v12 = [*(a1 + 48) contextString];
        v13 = [(_UIWTCProofreadingSuggestionInfo *)v10 initWithWTTextSuggestion:v9 withOffset:v11 inAttributedString:v12 contextID:*(a1 + 56)];

        if ([(_UIWTCProofreadingSuggestionInfo *)v13 originalRange]< 0)
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          [v30 handleFailureInMethod:*(a1 + 120) object:v7 file:@"UIWritingToolsCoordinator.m" lineNumber:1076 description:@"Unexpected range for proofreading suggestion received from Writing Tools"];
        }

        v14 = [v7 _proofreadingSuggestionInfos];
        v15 = [(_UIWTCProofreadingSuggestionInfo *)v13 identifier];
        [v14 setObject:v13 forKeyedSubscript:v15];

        v16 = *(a1 + 48);
        v17 = [(_UIWTCProofreadingSuggestionInfo *)v13 identifier];
        v18 = [(_UIWTCProofreadingSuggestionInfo *)v13 originalRange];
        v20 = v19;
        v21 = [(_UIWTCProofreadingSuggestionInfo *)v13 attributedString];
        [v16 addSuggestionWithUUID:v17 originalRange:v18 replacementString:v20 completion:{v21, WeakRetained}];
      }

      else
      {
        v22 = *(*(a1 + 64) + 120);
        v23 = [*(a1 + 72) _wtContext];
        [v7 _updateReplacementTrackerWithText:v22 forRange:*(a1 + 128) inContext:*(a1 + 136) finished:{v23, *(a1 + 144)}];

        v24 = *(a1 + 128);
        v25 = [*(a1 + 48) editTracker];
        v26 = [v25 adjustRange:{0, v24}];
        v28 = v26 + v27;

        v29 = *(a1 + 136);
        v13 = [v7 _proofreadingDeliveryReplacement];
        [*(a1 + 80) replaceCharactersInRange:v28 withAttributedString:{v29, v13}];
        [v7 _setProofreadingDeliveryOffset:{-[_UIWTCProofreadingSuggestionInfo length](v13, "length") + v28}];
        [v7 _setProofreadingDeliveryReplacement:0];
        [v7 _setProofreadingDeliverySuggestionIDs:0];
        if (*(a1 + 144) == 1)
        {
          [v7 _setProofreadingDeliveryOffset:0];
          [v7 _proofreadingOrCompositionFinishedInContext:*(a1 + 56)];
        }
      }
    }
  }
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v70[4] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  activeSessionUUID = self->_activeSessionUUID;
  v15 = [v11 uuid];
  _confirmMatchingWritingToolsSession(activeSessionUUID, v15, a2);

  if (!self->_inFlightDeliveryID)
  {
    v18 = [v13 uuid];
    v23 = [(UIWritingToolsCoordinator *)self _trackingInfos];
    v24 = [v23 objectForKeyedSubscript:v18];

    if ([v24 showingOriginal])
    {
      v25 = [v24 savedReviewingProofreadingSuggestionID];
      v26 = [v12 isEqual:v25];

      if (v26)
      {
        goto LABEL_27;
      }
    }

    v54 = [v24 replacementTracker];
    v55 = [v54 proofreadingController];
    v53 = [v55 suggestionWithUUID:v12];
    v27 = v53;
    v28 = [v53 state];
    if (v28 != a4)
    {
      v29 = v28;
      if (v28 == 4)
      {
        [(UIWritingToolsCoordinator *)&self->super.isa _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:v12 state:4];
        if (!os_variant_has_internal_diagnostics())
        {
          goto LABEL_26;
        }

        if (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"))
        {
          goto LABEL_26;
        }

        if (!byte_1EA95E184)
        {
          goto LABEL_26;
        }

        v30 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB10) + 8);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        loga = v30;
        v31 = [v55 contextString];
        v32 = [v31 string];
        v33 = [v53 originalRange];
        v35 = [v32 substringWithRange:{v33, v34}];
        v36 = [v53 originalRange];
        [v53 originalRange];
        *buf = 138412802;
        v65 = v35;
        v66 = 2048;
        v67 = v36;
        v68 = 2048;
        v69 = v37;
        _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "Invalidated proofreading suggestion for %@ from {.loc=%lu, .len=%lu} in context", buf, 0x20u);
      }

      else
      {
        v38 = a4 == 1;
        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __96__UIWritingToolsCoordinator_proofreadingSession_didUpdateState_forSuggestionWithUUID_inContext___block_invoke;
        aBlock[3] = &unk_1E70F8E68;
        objc_copyWeak(v61, buf);
        v39 = v53;
        v57 = v39;
        v61[1] = a4;
        v40 = v18;
        v58 = v40;
        v62 = v38;
        v59 = v12;
        v60 = self;
        log = _Block_copy(aBlock);
        v41 = !v38;
        if (v29)
        {
          v41 = 1;
        }

        if (v41)
        {
          v48 = log;
          (log[2].isa)(log);
        }

        else
        {
          v42 = [(UIWritingToolsCoordinator *)self _trailingCursorLocationRangeForProofreadingSuggestion:v39 inContextID:v40];
          v44 = v43;
          v50 = [(UIWritingToolsCoordinator *)self delegate];
          v45 = [MEMORY[0x1E696B098] valueWithRange:{v42, v44}];
          v63 = v45;
          v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
          v47 = [v24 acceptedEvaluationContext];
          [v50 writingToolsCoordinator:self selectRanges:v46 inContext:v47 completion:log];

          v48 = log;
        }

        objc_destroyWeak(v61);
        objc_destroyWeak(buf);
      }

      v27 = v53;
    }

LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v70[0] = v11;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v70[1] = v16;
  v70[2] = v12;
  v70[3] = v13;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
  v18 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v17];

  if (os_variant_has_internal_diagnostics())
  {
    v19 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging");
    v20 = byte_1EA95E184 ? v19 : 1;
    if ((v20 & 1) == 0)
    {
      v21 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB08) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (a4 > 4)
        {
          v22 = @"unknown";
        }

        else
        {
          v22 = off_1E70F93E0[a4];
        }

        *buf = 134218498;
        v65 = v18;
        v66 = 2112;
        v67 = v12;
        v68 = 2112;
        v69 = v22;
        v49 = v21;
        _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "Packaged up proofreading suggestion update to deliver after animation finishes, %p\n\tuuid=%@ state=%@", buf, 0x20u);
      }
    }
  }

LABEL_28:
}

void __96__UIWritingToolsCoordinator_proofreadingSession_didUpdateState_forSuggestionWithUUID_inContext___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _updateForProofreadingSuggestion:*(a1 + 32) state:*(a1 + 72) saveState:1 inContext:*(a1 + 40)];
  if (*(a1 + 80) == 1)
  {
    v3 = [WeakRetained _proofreadingSuggestionInfos];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

    if (v4)
    {
      v5 = [v4 highlightInfo];

      if (!v5)
      {
        if (os_variant_has_internal_diagnostics())
        {
          if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
          {
            if (byte_1EA95E184)
            {
              v7 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_UIInternalPreference_UITextAssistantProofreadLogging_block_invoke___s_category) + 8);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                v8 = *(a1 + 48);
                v9 = 138412290;
                v10 = v8;
                _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Tell Writing Tools to update proofreading suggestion back to Pending because the highlight info was missing. suggestionID = %@", &v9, 0xCu);
              }
            }
          }
        }

        v6 = [WeakRetained _sessionTextViewDelegate];
        [v6 proofreadingSessionWithUUID:*(*(a1 + 56) + 80) updateState:0 forSuggestionWithUUID:*(a1 + 48)];
      }
    }
  }
}

- (uint64_t)_trailingCursorLocationRangeForProofreadingSuggestion:(void *)a3 inContextID:
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  v7 = [a1 _trackingInfos];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v6 || !v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = v21;
    v23 = @"proofreadingSuggestion and contextID are both null";
    if (v5)
    {
      v23 = @"proofreadingSuggestion is null";
    }

    if (v6)
    {
      v23 = @"contextID is null";
    }

    [v21 handleFailureInMethod:sel__trailingCursorLocationRangeForProofreadingSuggestion_inContextID_ object:a1 file:@"UIWritingToolsCoordinator.m" lineNumber:2262 description:{@"Internal UIWritingToolsCoordinator error. Method called with null argument. %s\n\t%@", "-[UIWritingToolsCoordinator _trailingCursorLocationRangeForProofreadingSuggestion:inContextID:]", v23}];
  }

  v9 = [v8 replacementTracker];
  v10 = [v9 proofreadingController];
  v11 = [v10 editTracker];
  v12 = [v6 originalRange];
  v14 = v13;
  v15 = [v6 uuid];

  v16 = [v11 rangeOfSuggestionWithRange:v12 UUID:v14 applyDelta:{v15, 1}];
  v18 = v17;

  v19 = v16 + v18;
  return v19;
}

- (BOOL)proofreadingInteraction:(id)a3 shouldRespondToTapAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v75 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (*&self->_chosenSuggestion != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
      {
        if (byte_1EA95E184)
        {
          v42 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &proofreadingInteraction_shouldRespondToTapAtPoint____s_category) + 8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Previous _chosenSuggestion hasn't been cleared before next tap in proofreading session. Reexamine the logic.", buf, 2u);
          }
        }
      }
    }

    chosenSuggestion = self->_chosenSuggestion;
    self->_chosenSuggestion = 0;

    contextIDForChosenSuggestion = self->_contextIDForChosenSuggestion;
    self->_contextIDForChosenSuggestion = 0;
  }

  v49 = [v7 view];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v11 = [v10 keyEnumerator];

  obj = v11;
  v46 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v46)
  {
    v56 = self;
    LOBYTE(v12) = 0;
    v45 = *v68;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v68 != v45)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        if (v12)
        {
          LOBYTE(v12) = 1;
          goto LABEL_45;
        }

        v47 = v13;
        v15 = *(*(&v67 + 1) + 8 * v13);
        v16 = [(UIWritingToolsCoordinator *)v56 _proofreadingSuggestionInfos];
        v55 = v15;
        v17 = [v16 objectForKeyedSubscript:v15];

        if ([v17 state] && objc_msgSend(v17, "state") != 1)
        {
          LOBYTE(v12) = 0;
        }

        else
        {
          v18 = [v17 highlightInfo];
          v19 = v18;
          if (v18)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v48 = [v18 ranges];
            v52 = [v48 countByEnumeratingWithState:&v63 objects:v73 count:16];
            LOBYTE(v12) = 0;
            if (v52)
            {
              v50 = v19;
              v51 = *v64;
              while (2)
              {
                v20 = 0;
                do
                {
                  if (*v64 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  if (v12)
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_37;
                  }

                  v54 = v20;
                  v21 = *(*(&v63 + 1) + 8 * v20);
                  v22 = [v19 containers];
                  v23 = [v22 objectForKey:v21];

                  v53 = v23;
                  [v23 convertPoint:v49 fromView:{x, y}];
                  v25 = v24;
                  v27 = v26;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v28 = [v19 paths];
                  v29 = [v28 objectForKeyedSubscript:v21];

                  v58 = v29;
                  v30 = [v29 countByEnumeratingWithState:&v59 objects:v72 count:16];
                  if (v30)
                  {
                    v31 = v30;
                    LOBYTE(v12) = 0;
                    v32 = *v60;
                    while (2)
                    {
                      v33 = 0;
                      v57 = v31;
                      do
                      {
                        if (*v60 != v32)
                        {
                          objc_enumerationMutation(v58);
                        }

                        if (v12)
                        {
                          LOBYTE(v12) = 1;
                          goto LABEL_32;
                        }

                        v12 = [*(*(&v59 + 1) + 8 * v33) containsPoint:{v25, v27}];
                        if (v12)
                        {
                          v34 = [v17 contextID];
                          [(UIWritingToolsCoordinator *)v56 _trackingInfos];
                          v36 = v35 = v32;
                          v37 = [v36 objectForKeyedSubscript:v34];

                          [(UIWritingToolsCoordinator *)v56 _setContextIDForChosenSuggestion:v34];
                          v38 = [v37 replacementTracker];
                          v39 = [v38 proofreadingController];
                          v40 = [v39 suggestionWithUUID:v55];
                          [(UIWritingToolsCoordinator *)v56 _setChosenSuggestion:v40];

                          v32 = v35;
                          v31 = v57;
                        }

                        ++v33;
                      }

                      while (v31 != v33);
                      v31 = [v58 countByEnumeratingWithState:&v59 objects:v72 count:16];
                      if (v31)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    LOBYTE(v12) = 0;
                  }

LABEL_32:

                  v20 = v54 + 1;
                  v19 = v50;
                }

                while (v54 + 1 != v52);
                v52 = [v48 countByEnumeratingWithState:&v63 objects:v73 count:16];
                if (v52)
                {
                  continue;
                }

                break;
              }
            }

LABEL_37:
          }

          else
          {
            LOBYTE(v12) = 0;
          }
        }

        v13 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_45:

  return v12;
}

- (void)proofreadingInteraction:(id)a3 receivedTapAtLocation:(CGPoint)a4
{
  v19 = *MEMORY[0x1E69E9840];
  chosenSuggestion = self->_chosenSuggestion;
  if (chosenSuggestion)
  {
    v6 = [(NSWritingToolsProofreadingSuggestion *)chosenSuggestion uuid:a3];
    v7 = [(NSWritingToolsProofreadingSuggestion *)self->_chosenSuggestion state];
    v8 = v7 == 0;
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
      {
        if (byte_1EA95E184)
        {
          v11 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &proofreadingInteraction_receivedTapAtLocation____s_category) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = @"Pending";
            if (!v7)
            {
              v12 = @"Reviewing";
            }

            v13 = v12;
            v15 = 138412546;
            v16 = v13;
            v17 = 2112;
            v18 = v6;
            v14 = v11;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Tell Writing Tools to update proofreading suggestion to %@ because of tap on suggestion. suggestionID = %@", &v15, 0x16u);
          }
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_sessionTextViewDelegate);
    [WeakRetained proofreadingSessionWithUUID:self->_activeSessionUUID updateState:v8 forSuggestionWithUUID:v6];

    [(UIWritingToolsCoordinator *)self _updateForProofreadingSuggestion:self->_chosenSuggestion state:v8 saveState:1 inContext:self->_contextIDForChosenSuggestion];
    v10 = self->_chosenSuggestion;
    self->_chosenSuggestion = 0;
  }
}

- (void)proofreadingController:(id)a3 replaceCharactersInRange:(_NSRange)a4 attributedString:(id)a5 state:(int64_t)a6 identifier:(id)a7 completion:(id)a8
{
  length = a4.length;
  v12 = a4.location;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (*(&self->_includesTextListMarkers + 1))
  {
    (*(v17 + 2))(v17, v16, v15, 0);
  }

  else
  {
    v25 = length;
    v19 = [v14 _writingToolsContextID];
    v20 = [(UIWritingToolsCoordinator *)self _trackingInfos];
    v21 = [v20 objectForKeyedSubscript:v19];

    v24 = v21;
    v22 = [v21 acceptedEvaluationContext];
    v23 = [v22 resolvedRange];

    if (self->_proofreadingDeliveryReplacement)
    {
      [(UIWritingToolsCoordinator *)self _updateProofreadingDeliveryWithReplacement:v15 accordingToProofreadingSuggestionWithIdentifier:v16 replacingCharactersInRange:v12 - v23 newState:v25 contextID:a6, v19];
      (v18)[2](v18, v16, v15, 1);
    }

    else
    {
      objc_initWeak(&location, self);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __122__UIWritingToolsCoordinator_proofreadingController_replaceCharactersInRange_attributedString_state_identifier_completion___block_invoke;
      v26[3] = &unk_1E70F8E90;
      objc_copyWeak(v29, &location);
      v28 = v18;
      v27 = v16;
      v29[1] = a6;
      [(UIWritingToolsCoordinator *)self _delegateUpdateTextAccordingToProofreadingSuggestionInfoWithIdentifier:v27 replacingCharactersInRange:v12 newState:v25 contextID:a6 updateCompletion:v19, v26];

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }
  }
}

void __122__UIWritingToolsCoordinator_proofreadingController_replaceCharactersInRange_attributedString_state_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(UIWritingToolsCoordinator *)WeakRetained _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:*(a1 + 56) state:?];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
}

- (void)_endTextAssistantAnticipationsForContextIDs:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = [(UIWritingToolsCoordinator *)self _trackingInfos];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 acceptedEvaluationContext];

        if (v11)
        {
          v12 = [v10 anticipationAnimationSubranges];
          v13 = [v12 copy];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v23;
            do
            {
              v18 = 0;
              do
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v22 + 1) + 8 * v18) rangeValue];
                [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationInContextID:v8 animationCharacterRange:v19, v20];
                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v16);
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }
}

- (void)_executeForSubrangesOfRange:(uint64_t *)(a3 inContext:actions:recordingCustomFillColors:
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!a1)
  {
    goto LABEL_18;
  }

  v39 = v11;
  v13 = [v10 identifier];
  v14 = [a1 _trackingInfos];
  v38 = v13;
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = [v15 replacementTracker];
  v17 = [v16 processedOriginalCharacterRange];
  v19 = v18;
  v20 = [v16 activeCharacterRange];
  v22 = v17 + v19 - (v20 + v21);
  v23 = v22 + a2;
  if (!a6)
  {
    v27 = v10;
    v26 = 0;
    goto LABEL_13;
  }

  v24 = [v10 attributedString];
  v25 = v24;
  if (!v24)
  {
    goto LABEL_11;
  }

  if (v23 < 0 || a3 + v23 > [v24 length])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v36 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        v37 = [v25 string];
        *buf = 138412802;
        v53 = v37;
        v54 = 2048;
        v55 = v22 + a2;
        v56 = 2048;
        v57 = a3;
        _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "Failed to search for custom color for text animation because of animation range mismatch with enclosing text.\n%@\n\trange = {%lu, %lu}", buf, 0x20u);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &_executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = [v25 string];
        *buf = 138412802;
        v53 = v30;
        v54 = 2048;
        v55 = v22 + a2;
        v56 = 2048;
        v57 = a3;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Failed to search for custom color for text animation because of animation range mismatch with enclosing text.\n%@\n\trange = {%lu, %lu}", buf, 0x20u);
      }
    }

LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  v26 = [v25 attributedSubstringFromRange:{v22 + a2, a3}];
  v23 = 0;
  v22 = -a2;
LABEL_12:
  v27 = v10;

LABEL_13:
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v46 = __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke;
  v47 = &unk_1E70F8EE0;
  v31 = v26;
  v48 = v31;
  v49 = a1;
  v32 = v15;
  v50 = v32;
  v33 = [a1 delegate];
  if (v33 && (a1[16] & 2) != 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_3;
    v41[3] = &unk_1E70F8F08;
    v43 = v22;
    v44 = v45;
    v12 = v39;
    v42 = v39;
    v10 = v27;
    [v33 writingToolsCoordinator:a1 requestsSingleContainerSubrangesOfRange:a2 inContext:a3 completion:{v27, v41}];
    v34 = v42;
  }

  else
  {
    v46(v45, v23, a3, 0);
    v34 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    v51 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v12 = v39;
    (v39)[2](v39, v35);

    v10 = v27;
  }

LABEL_18:
}

void __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t result, uint64_t a2), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    if ((a2 & 0x8000000000000000) == 0 && a3 + a2 <= [v4 length])
    {
      v37 = a4;
      v38 = [*(a1 + 32) attributedSubstringFromRange:{a2, a3}];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v54 = __Block_byref_object_copy__21;
      v55 = __Block_byref_object_dispose__21;
      v56 = 0;
      v7 = *(a1 + 40);
      if ((v7[16] & 8) == 0 || ([v7 delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = *off_1E70ECA40, v47[0] = MEMORY[0x1E69E9820], v47[1] = 3221225472, v47[2] = __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_171, v47[3] = &unk_1E70F8EB8, v48 = v38, v51 = buf, v10 = v8, v11 = *(a1 + 40), v49 = v10, v50 = v11, objc_msgSend(v48, "enumerateAttribute:inRange:options:usingBlock:", v9, 0, a3, 0, v47), v49, v48, v10, (v12 = *(*&buf[8] + 40)) == 0))
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
        v14 = *off_1E70EC920;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_2;
        v45[3] = &unk_1E70F3050;
        v15 = v13;
        v46 = v15;
        [v38 enumerateAttribute:v14 inRange:0 options:a3 usingBlock:{0, v45}];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v16 = [v15 allKeys];
        v17 = 0;
        v18 = 0;
        v19 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v19)
        {
          v20 = *v42;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v42 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v41 + 1) + 8 * i);
              v23 = [v15 objectForKeyedSubscript:v22];
              v24 = [v23 integerValue];

              if (v24 > v17)
              {
                objc_storeStrong((*&buf[8] + 40), v22);
                v17 = v24;
              }

              v18 += v24;
            }

            v19 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v19);
        }

        v25 = *(*&buf[8] + 40);
        if (v25 && a3 - v18 > v17)
        {
          *(*&buf[8] + 40) = 0;
        }

        v12 = *(*&buf[8] + 40);
      }

      v26 = +[UIColor labelColor];
      v27 = v12;
      v28 = v26;
      v29 = v28;
      if (v27 == v28)
      {
      }

      else
      {
        if (!v27 || !v28)
        {

          goto LABEL_27;
        }

        v30 = [v27 isEqual:v28];

        if (!v30)
        {
          goto LABEL_28;
        }
      }

      v29 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = 0;
LABEL_27:

LABEL_28:
      [*(a1 + 48) setCustomFillColor:*(*&buf[8] + 40) forSubrangeIndex:v37];
      _Block_object_dispose(buf, 8);

      return;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v35 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = [*(a1 + 32) string];
        *buf = 138412802;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v54 = a3;
        _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Failed to search for custom color for text animation because of subrange mismatch with source text.\n%@\n\trange = {%lu, %lu}", buf, 0x20u);
      }
    }

    else
    {
      v31 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_UITextAssistantProofreadLogging_block_invoke_2___s_category) + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        v33 = v31;
        v34 = [v32 string];
        *buf = 138412802;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v54 = a3;
        _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Failed to search for custom color for text animation because of subrange mismatch with source text.\n%@\n\trange = {%lu, %lu}", buf, 0x20u);
      }
    }
  }
}

void __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_171(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (v9)
  {
    v14 = xmmword_18A678470;
    v10 = [*(a1 + 32) attribute:*off_1E70ECA80 atIndex:a3 longestEffectiveRange:&v14 inRange:{a3, a4}];
    if (*(&v14 + 1) == a4)
    {
      v11 = [*(a1 + 40) _writingToolsCoordinator:*(a1 + 48) textHighlightColorForScheme:v9 inHighlightStyle:v10];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  *a5 = 1;
}

void __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 integerValue];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + a4];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
  }
}

void __101__UIWritingToolsCoordinator__executeForSubrangesOfRange_inContext_actions_recordingCustomFillColors___block_invoke_3(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) rangeValue];
        (*(a1[6] + 16))(a1[6], v9 + a1[5], v10, v6++);
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  (*(a1[4] + 16))();
}

- (void)_beginTextAssistantAnticipationsForRange:(_NSRange)a3 inContext:(id)a4
{
  length = a3.length;
  v5 = a3.location;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 identifier];
    v10 = [(UIWritingToolsCoordinator *)self _trackingInfos];
    v11 = [v10 objectForKeyedSubscript:v9];

    [(UIWritingToolsCoordinator *)self _cleanUpAnticipationAnimationTrackingInfoForContextID:v9];
    v12 = [v11 anticipationAnimationSubranges];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__UIWritingToolsCoordinator__beginTextAssistantAnticipationsForRange_inContext___block_invoke;
    aBlock[3] = &unk_1E70F8F30;
    objc_copyWeak(v21, &location);
    v21[1] = v5;
    v21[2] = length;
    v13 = v12;
    v18 = v13;
    v14 = v8;
    v19 = v14;
    v15 = v11;
    v20 = v15;
    v16 = _Block_copy(aBlock);
    [(UIWritingToolsCoordinator *)self _executeForSubrangesOfRange:v5 inContext:length actions:v14 recordingCustomFillColors:v16, 1];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __80__UIWritingToolsCoordinator__beginTextAssistantAnticipationsForRange_inContext___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    _confirmNonOverlappingSubrangesContainedInOrEqualToRange(*(a1 + 64), *(a1 + 72), v3);
    [*(a1 + 32) addObjectsFromArray:v3];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(a1 + 40);
          v11 = [*(*(&v17 + 1) + 8 * v9) rangeValue];
          v13 = v12;
          v14 = [*(a1 + 48) customFillColorForSubrangeIndex:v7];
          [WeakRetained _beginTextAssistantAnticipationInContext:v10 animationCharacterRange:v11 subrangeIndex:v13 customFillColor:{v7, v14}];

          ++v7;
          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v3 = v15;
  }
}

- (void)_beginAnimatedTextReplacementForInFlightDeliveryInContextID:(id)a3
{
  v4 = a3;
  v5 = [(UIWritingToolsCoordinator *)self _inFlightDeliveryID];
  v6 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v7 = [v6 objectForKeyedSubscript:v4];

  [(UIWritingToolsCoordinator *)self _cleanUpReplacementAnimationTrackingInfoForContextID:v4];
  v8 = [v7 replacementTracker];
  v9 = [v8 initialCurrentChunkCharacterRange];
  v11 = v10;
  v12 = [v7 removalAnimationSubranges];
  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __89__UIWritingToolsCoordinator__beginAnimatedTextReplacementForInFlightDeliveryInContextID___block_invoke;
  v22 = &unk_1E70F8F58;
  objc_copyWeak(v27, &location);
  v27[1] = v9;
  v27[2] = v11;
  v13 = v12;
  v23 = v13;
  v14 = v5;
  v24 = v14;
  v15 = v4;
  v25 = v15;
  v16 = v7;
  v26 = v16;
  v17 = _Block_copy(&v19);
  v18 = [v16 acceptedEvaluationContext];
  [(UIWritingToolsCoordinator *)self _executeForSubrangesOfRange:v9 inContext:v11 actions:v18 recordingCustomFillColors:v17, 0];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __89__UIWritingToolsCoordinator__beginAnimatedTextReplacementForInFlightDeliveryInContextID___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    _confirmNonOverlappingSubrangesContainedInOrEqualToRange(*(a1 + 72), *(a1 + 80), v3);
    [WeakRetained _setUpTextEffectView];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) addObject:*(*(&v15 + 1) + 8 * v10)];
          v11 = *(a1 + 40);
          v12 = *(a1 + 48);
          v13 = [*(a1 + 56) customFillColorForSubrangeIndex:v8];
          [WeakRetained _animateRewrittenTextForDeliveryID:v11 contextID:v12 subrangeIndex:v8 customFillColor:v13];

          ++v8;
          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v3 = v14;
  }
}

- (uint64_t)_validSubrangeForTextAnimation:(unint64_t)a3 withIndex:(void *)a4 contextID:
{
  if (!a1)
  {
    return 0;
  }

  v7 = a4;
  v8 = [a1 _trackingInfos];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 subrangesForTextAnimation:a2];
  if (![v10 count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = v17;
    if (a2 > 2)
    {
      v19 = @"Unknown text animation";
    }

    else
    {
      v19 = off_1E70F93C8[a2];
    }

    [v17 handleFailureInMethod:sel__validSubrangeForTextAnimation_withIndex_contextID_ object:a1 file:@"UIWritingToolsCoordinator.m" lineNumber:1472 description:{@"No ranges are available for %@", v19}];
  }

  if (a2 == 2)
  {
    if ([v10 count] <= a3)
    {
      v11 = [v10 lastObject];
      v15 = [v11 rangeValue];
      v13 = v15 + v16;
      goto LABEL_11;
    }
  }

  else if (a2 == 1 && [v10 count] <= a3)
  {
    v11 = [v9 insertionAnimationSubranges];
    if ([v11 count] <= a3)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:sel__validSubrangeForTextAnimation_withIndex_contextID_ object:a1 file:@"UIWritingToolsCoordinator.m" lineNumber:1479 description:{@"%lu does not index into the available insertion ranges\n%@", a3, v11}];
    }

    v12 = [v11 objectAtIndexedSubscript:a3];
    v13 = [v12 rangeValue];

    goto LABEL_11;
  }

  v11 = [v10 objectAtIndexedSubscript:a3];
  v13 = [v11 rangeValue];
LABEL_11:

  return v13;
}

- (void)_sendDelegatePrepareForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [v13 acceptedEvaluationContext];
  if (v14 && ([v13 targetedPreviewForTextAnimation:a3 subrangeIndex:a4], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__UIWritingToolsCoordinator__sendDelegatePrepareForTextAnimation_subrangeIndex_contextID_completion___block_invoke;
    aBlock[3] = &unk_1E70F0F78;
    v16 = v11;
    v28 = v16;
    v26 = _Block_copy(aBlock);
    v17 = [(UIWritingToolsCoordinator *)self _validSubrangeForTextAnimation:a3 withIndex:a4 contextID:v10];
    v19 = v18;
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v25 = v16;
      v21 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_sendDelegatePrepareForTextAnimation_subrangeIndex_contextID_completion____s_category) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x1E695DF00] date];
        v23 = v22;
        if (a3 > 2)
        {
          v24 = @"Unknown text animation";
        }

        else
        {
          v24 = off_1E70F93C8[a3];
        }

        *buf = 138413058;
        v30 = v22;
        v31 = 2112;
        v32 = v24;
        v33 = 2048;
        v34 = v17;
        v35 = 2048;
        v36 = v19;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "%@ - Sending delegate prepare for %@ with range={%lu, %lu}", buf, 0x2Au);
      }

      v16 = v25;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained writingToolsCoordinator:self prepareForTextAnimation:a3 forRange:v17 inContext:v19 completion:{v14, v16}];
  }

  else
  {
    v11[2](v11);
  }
}

- (void)_fetchStoredTargetedPreviewForContextID:(id)a3 previewSubrangeIndex:(unint64_t)a4 textAnimation:(int64_t)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a3;
  v13 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v14 = [v13 objectForKeyedSubscript:v12];

  v15 = [v14 targetedPreviewForTextAnimation:a5 subrangeIndex:a4];
  if (!v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1528 description:@"Expected stored targeted preview is missing"];
  }

  if ([v14 isMarkedForRemovalTargetedPreview:v15])
  {
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v19 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_fetchStoredTargetedPreviewForContextID_previewSubrangeIndex_textAnimation_completion____s_category) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (a5 > 2)
        {
          v20 = @"Unknown text animation";
        }

        else
        {
          v20 = off_1E70F93C8[a5];
        }

        v22 = 138412290;
        v23 = v20;
        v21 = v19;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Avoiding assertion, Expected stored targeted preview is missing, caused by race condition ending %@ between storing and fetching the preview.", &v22, 0xCu);
      }
    }

    v11[2](v11, v15);
    v16 = [v14 targetedPreviewsForTextAnimation:a5];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v16 removeObjectForKey:v17];
  }

  else
  {
    v11[2](v11, v15);
  }
}

- (void)_resetFinishedRangeCountsForTextAnimation:(void *)a3 contextID:
{
  if (a1)
  {
    v5 = a3;
    v6 = [a1 _trackingInfos];
    v8 = [v6 objectForKeyedSubscript:v5];

    v7 = [v8 finishedSubrangeIndexesForTextAnimation:a2];
    [v7 removeAllIndexes];
  }
}

- (void)_sendDelegateFinishTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [v13 finishedSubrangeIndexesForTextAnimation:a3];
  if (![v14 containsIndex:a4])
  {
    v15 = [v13 subrangesForTextAnimation:a3];
    if ([v15 count])
    {
      v16 = [v13 targetedPreviewForTextAnimation:a3 subrangeIndex:a4];

      if (v16)
      {
        [v13 markForRemovalTargetedPreviewForTextAnimation:a3 subrangeIndex:a4];
        v17 = [v13 acceptedEvaluationContext];
        if (v17)
        {
          v24 = [(UIWritingToolsCoordinator *)self _validSubrangeForTextAnimation:a3 withIndex:a4 contextID:v10];
          v25 = v18;
          if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
          {
            v23 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_sendDelegateFinishTextAnimation_subrangeIndex_contextID_completion____s_category) + 8);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v20 = [MEMORY[0x1E695DF00] date];
              v21 = v20;
              if (a3 > 2)
              {
                v22 = @"Unknown text animation";
              }

              else
              {
                v22 = off_1E70F93C8[a3];
              }

              *buf = 138413058;
              v31 = v20;
              v32 = 2112;
              v33 = v22;
              v34 = 2048;
              v35 = v24;
              v36 = 2048;
              v37 = v25;
              _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "%@ - Sending delegate finish for %@ with range={%lu, %lu}", buf, 0x2Au);
            }
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __97__UIWritingToolsCoordinator__sendDelegateFinishTextAnimation_subrangeIndex_contextID_completion___block_invoke;
          v26[3] = &unk_1E70F5FA8;
          v27 = v14;
          v29 = a4;
          v28 = v11;
          [WeakRetained writingToolsCoordinator:self finishTextAnimation:a3 forRange:v24 inContext:v25 completion:{v17, v26}];
        }

        else
        {
          v11[2](v11);
        }

        goto LABEL_12;
      }

      [v14 addIndex:a4];
    }

    v11[2](v11);
LABEL_12:

    goto LABEL_13;
  }

  v11[2](v11);
LABEL_13:
}

uint64_t __97__UIWritingToolsCoordinator__sendDelegateFinishTextAnimation_subrangeIndex_contextID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addIndex:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_hasStoredTargetedPreviewForInsertionInContextID:(id)a3 previewSubrangeIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 targetedPreviewForTextAnimation:2 subrangeIndex:a4];
  if (v9)
  {
    v10 = [v8 isMarkedForRemovalTargetedPreview:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_sendDelegateTargetedPreviewOfActiveRangeForTextAnimation:(int64_t)a3 previewSubrangeIndex:(unint64_t)a4 contextID:(id)a5 completion:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v56 = a5;
  v55 = a6;
  v10 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v11 = [v10 objectForKeyedSubscript:v56];

  v12 = [v11 targetedPreviewForTextAnimation:a3 subrangeIndex:a4];
  if ([v11 isMarkedForRemovalTargetedPreview:v12])
  {
    v13 = [v11 targetedPreviewsForTextAnimation:a3];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v13 removeObjectForKey:v14];

    v12 = 0;
  }

  else if (v12)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v43 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        if (a3 > 2)
        {
          v44 = @"Unknown text animation";
        }

        else
        {
          v44 = off_1E70F93C8[a3];
        }

        logb = [v11 subrangesForTextAnimation:{a3, v44}];
        v45 = [logb objectAtIndexedSubscript:a4];
        v46 = [v45 rangeValue];
        v47 = [v11 subrangesForTextAnimation:a3];
        v48 = [v47 objectAtIndexedSubscript:a4];
        [v48 rangeValue];
        *buf = 138412802;
        v63 = v50;
        v64 = 2048;
        v65 = v46;
        v66 = 2048;
        v67 = v49;
        _os_log_fault_impl(&dword_188A29000, v43, OS_LOG_TYPE_FAULT, "Stored targeted preview for %@, subrange {%lu, %lu}, hasn't been consumed before storing another. Should have been cleared when finishing", buf, 0x20u);
      }
    }

    else
    {
      v25 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CB18) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (a3 > 2)
        {
          v26 = @"Unknown text animation";
        }

        else
        {
          v26 = off_1E70F93C8[a3];
        }

        v50 = v26;
        loga = v25;
        v35 = [v11 subrangesForTextAnimation:a3];
        v36 = [v35 objectAtIndexedSubscript:a4];
        v37 = [v36 rangeValue];
        v38 = [v11 subrangesForTextAnimation:a3];
        v39 = [v38 objectAtIndexedSubscript:a4];
        [v39 rangeValue];
        *buf = 138412802;
        v63 = v50;
        v64 = 2048;
        v65 = v37;
        v66 = 2048;
        v67 = v40;
        _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "Stored targeted preview for %@, subrange {%lu, %lu}, hasn't been consumed before storing another. Should have been cleared when finishing", buf, 0x20u);
      }
    }

    v41 = [v11 targetedPreviewsForTextAnimation:{a3, v50}];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v41 setObject:0 forKeyedSubscript:v42];
  }

  v15 = [v11 acceptedEvaluationContext];
  if (v15)
  {
    v51 = [v11 replacementTracker];
    v16 = [v11 subrangesForTextAnimation:a3];
    v17 = [v16 count];
    if (v17)
    {
      if (v17 <= a4)
      {
        v18 = [v16 objectAtIndexedSubscript:v17 - 1];
        v22 = [v18 rangeValue];
        log = 0;
        v21 = v22 + v23;
      }

      else
      {
        v18 = [v16 objectAtIndexedSubscript:a4];
        v19 = [v18 rangeValue];
        log = v20;
        v21 = v19;
      }
    }

    else
    {
      v21 = 0;
      log = 0;
    }

    objc_initWeak(&location, self);
    if (os_variant_has_internal_diagnostics())
    {
      v27 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
      v28 = byte_1EA95E17C ? v27 : 1;
      if (v28 != 1 || ((v29 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"), !byte_1EA95E184) ? (v30 = 1) : (v30 = v29), (v30 & 1) == 0))
      {
        v31 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB20) + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [MEMORY[0x1E695DF00] date];
          v33 = v32;
          if (a3 > 2)
          {
            v34 = @"Unknown text animation";
          }

          else
          {
            v34 = off_1E70F93C8[a3];
          }

          *buf = 138413058;
          v63 = v32;
          v64 = 2112;
          v65 = v34;
          v66 = 2048;
          v67 = v21;
          v68 = 2048;
          v69 = log;
          _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "%@ - Sending delegate preview request for %@ with range={%lu, %lu}", buf, 0x2Au);
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __129__UIWritingToolsCoordinator__sendDelegateTargetedPreviewOfActiveRangeForTextAnimation_previewSubrangeIndex_contextID_completion___block_invoke;
    v57[3] = &unk_1E70F8F80;
    objc_copyWeak(v60, &location);
    v59 = v55;
    v58 = v11;
    v60[1] = a3;
    v60[2] = a4;
    [WeakRetained writingToolsCoordinator:self requestsPreviewForTextAnimation:a3 ofRange:v21 inContext:log completion:{v15, v57}];

    objc_destroyWeak(v60);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v55 + 2))(v55, 0);
  }
}

void __129__UIWritingToolsCoordinator__sendDelegateTargetedPreviewOfActiveRangeForTextAnimation_previewSubrangeIndex_contextID_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v7)
  {
    v4 = WeakRetained == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [*(a1 + 32) targetedPreviewsForTextAnimation:*(a1 + 56)];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_sendDelegatedAnimatedReplacementWithDelay:(double)a3 duration:(double)a4 deliveryID:(id)a5 contextID:(id)a6 completion:(id)a7
{
  trackingInfos = self->_trackingInfos;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [(NSMutableDictionary *)trackingInfos objectForKeyedSubscript:v14];
  v19 = [v16 replacementTracker];

  if ([v19 isProofreading])
  {
    v17 = -1;
  }

  else
  {
    v17 = 2;
  }

  v18 = [[UIWritingToolsCoordinatorAnimationParameters alloc] initWithDelay:a3 duration:a4];
  [(UIWritingToolsCoordinator *)self _updateTextViewAndTrackerWithIncomingCompositionSessionState:v17 forDelivery:v15 animationParameters:v18 contextID:v14 completion:v13];
}

- (void)_fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex:(void *)a3 maximumSubrangeIndex:(void *)a4 contextID:(void *)a5 completion:
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a1)
  {
    if (a2 <= a3)
    {
      objc_initWeak(&location, a1);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __128__UIWritingToolsCoordinator__fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex_maximumSubrangeIndex_contextID_completion___block_invoke;
      v12[3] = &unk_1E70F8FD0;
      objc_copyWeak(v15, &location);
      v14 = v11;
      v15[1] = a2;
      v13 = v9;
      v15[2] = a3;
      [a1 _sendDelegateTargetedPreviewOfActiveRangeForTextAnimation:2 previewSubrangeIndex:a2 contextID:v13 completion:v12];

      objc_destroyWeak(v15);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v10 + 2))(v10);
    }
  }
}

void __128__UIWritingToolsCoordinator__fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex_maximumSubrangeIndex_contextID_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 56);
    if (a2)
    {
      v7 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __128__UIWritingToolsCoordinator__fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex_maximumSubrangeIndex_contextID_completion___block_invoke_2;
      v9[3] = &unk_1E70F8FA8;
      v9[4] = WeakRetained;
      v8 = *(a1 + 64);
      v12 = v6;
      v13 = v8;
      v10 = v7;
      v11 = *(a1 + 40);
      [v5 _sendDelegatePrepareForTextAnimation:2 subrangeIndex:v6 contextID:v10 completion:v9];
    }

    else
    {
      [(UIWritingToolsCoordinator *)WeakRetained _fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex:*(a1 + 64) maximumSubrangeIndex:*(a1 + 32) contextID:*(a1 + 40) completion:?];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_sendFinishRemoveAnimationForNextSubrangeIndex:(void *)a3 maximumSubrangeIndex:(void *)a4 contextID:(void *)a5 completion:
{
  v9 = a4;
  v10 = a5;
  if (a2 <= a3)
  {
    objc_initWeak(&location, a1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __118__UIWritingToolsCoordinator__sendFinishRemoveAnimationForNextSubrangeIndex_maximumSubrangeIndex_contextID_completion___block_invoke;
    v11[3] = &unk_1E70F8FF8;
    objc_copyWeak(v14, &location);
    v13 = v10;
    v14[1] = a2;
    v14[2] = a3;
    v12 = v9;
    [a1 _sendDelegateFinishTextAnimation:1 subrangeIndex:a2 contextID:v12 completion:v11];

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UIWritingToolsCoordinator *)a1 _fetchPreviewAndSendPrepareForInsertionWithSubrangeIndex:a3 maximumSubrangeIndex:v9 contextID:v10 completion:?];
  }
}

void __118__UIWritingToolsCoordinator__sendFinishRemoveAnimationForNextSubrangeIndex_maximumSubrangeIndex_contextID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(UIWritingToolsCoordinator *)WeakRetained _sendFinishRemoveAnimationForNextSubrangeIndex:*(a1 + 64) maximumSubrangeIndex:*(a1 + 32) contextID:*(a1 + 40) completion:?];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_updateTextViewAndTrackerWithIncomingCompositionSessionState:(int64_t)a3 forDelivery:(id)a4 animationParameters:(id)a5 contextID:(id)a6 completion:(id)a7
{
  v73 = *MEMORY[0x1E69E9840];
  v48 = a4;
  v12 = a5;
  v50 = a6;
  v13 = a7;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [[UIWritingToolsCoordinatorAnimationParameters alloc] initWithDelay:0.0 duration:0.0];
  }

  v49 = v14;
  v15 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v16 = [v15 objectForKeyedSubscript:v50];

  v17 = [v16 acceptedEvaluationContext];
  if (v17)
  {
    v18 = [v16 replacementTracker];
    v19 = v18;
    if (self->_includesTextListMarkers)
    {
      [v18 setCompositionSessionState:a3];
      if (v13)
      {
        v13[2](v13, v49);
      }

LABEL_28:

      goto LABEL_29;
    }

    v20 = [v18 isProofreading];
    v21 = v48;
    if (!v48 && v20)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1743 description:@"Full-text updates are not supported by the replacement tracker when proofreading"];

      v21 = 0;
    }

    else if (v48)
    {
      v22 = [v19 sourceRangeForChunkFromDelivery:v48];
LABEL_15:
      v45 = v23;
      v46 = v22;
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        v35 = _UICompositionSessionStateDescription(a3);
        v21 = v48;
        [v34 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1746 description:{@"Can't update text view with %@. Lost track of delivery when calculating source range. %@", v35, v48}];
      }

      [v19 setCompositionSessionState:a3];
      if (v21)
      {
        v25 = [v19 rewrittenChunkTextForDelivery:v21];
        inFlightDeliveryID = v48;
      }

      else
      {
        v25 = [v19 activeText];
        inFlightDeliveryID = self->_inFlightDeliveryID;
      }

      v27 = inFlightDeliveryID;
      v28 = v27;
      if (v12)
      {
        v29 = v27 == 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = !v29;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke;
      aBlock[3] = &unk_1E70F9020;
      objc_copyWeak(v60, &location);
      v61 = v30;
      v52 = v19;
      v53 = v48;
      v44 = v28;
      v54 = v44;
      v31 = v25;
      v55 = v31;
      v60[1] = a2;
      v60[2] = a3;
      v60[3] = v46;
      v60[4] = v45;
      v56 = v16;
      v57 = v50;
      v59 = v13;
      v58 = v49;
      v32 = _Block_copy(aBlock);
      if (os_variant_has_internal_diagnostics())
      {
        v36 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging");
        v37 = byte_1EA95E17C ? v36 : 1;
        if (v37 != 1 || ((v38 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging"), !byte_1EA95E184) ? (v39 = 1) : (v39 = v38), (v39 & 1) == 0))
        {
          v40 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion____s_category) + 8);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = [MEMORY[0x1E695DF00] date];
            v42 = [v31 length];
            *buf = 138413314;
            v43 = @"no";
            v64 = v41;
            if (v12)
            {
              v43 = @"yes";
            }

            v65 = 2048;
            v66 = v46;
            v67 = 2048;
            v68 = v45;
            v69 = 2048;
            v70 = v42;
            v71 = 2112;
            v72 = v43;
            _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "%@ - Sending delegate replaceRange {%lu, %lu} with text of length %lu. Animating? %@", buf, 0x34u);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained writingToolsCoordinator:self replaceRange:v46 inContext:v45 proposedText:v17 reason:v31 animationParameters:v12 == 0 completion:{v12, v32}];

      objc_destroyWeak(v60);
      objc_destroyWeak(&location);

      goto LABEL_28;
    }

    v22 = [v19 activeCharacterRange];
    goto LABEL_15;
  }

  v13[2](v13, v49);
LABEL_29:
}

void __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (!WeakRetained)
  {
    goto LABEL_20;
  }

  if (*(a1 + 136) == 1)
  {
    if (!v3)
    {
      v3 = [*(a1 + 32) originalChunkTextForDelivery:*(a1 + 40)];
    }

    [*(a1 + 32) updateReplacementChunkForDeliveryID:*(a1 + 48) newText:v3];
    goto LABEL_13;
  }

  v5 = [v3 string];
  v6 = [*(a1 + 56) string];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (v7 && v8)
    {
      v10 = [v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 104) object:WeakRetained file:@"UIWritingToolsCoordinator.m" lineNumber:1766 description:@"UIWritingToolsCoordinator does not support changing or rejecting the replacement text for noninteractive text replacement"];
  }

LABEL_13:
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C && os_variant_has_internal_diagnostics())
  {
    v18 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v19 = [v18 targetRangeForChunkFromDelivery:?];
    }

    else
    {
      v19 = [v18 activeCharacterRange];
    }

    v21 = v19;
    v22 = v20;
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v26 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_UIInternalPreference_UITextAssistantProofreadLogging_block_invoke_3___s_category) + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location) = 67109376;
            HIDWORD(location) = v21;
            v35 = 1024;
            v36 = v22;
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "New active character range: {%u, %u}", &location, 0xEu);
          }
        }
      }
    }

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = *(a1 + 104);
      v25 = _UICompositionSessionStateDescription(*(a1 + 112));
      [v23 handleFailureInMethod:v24 object:WeakRetained file:@"UIWritingToolsCoordinator.m" lineNumber:1772 description:{@"Can't update text view with %@. Lost track of delivery when calculating target range. %@", v25, *(a1 + 40)}];
    }
  }

  if (*(a1 + 136) == 1)
  {
    v11 = *(a1 + 120);
    v12 = [v3 length];
    objc_initWeak(&location, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke_203;
    aBlock[3] = &unk_1E70F9360;
    objc_copyWeak(v33, &location);
    v33[1] = v11;
    v33[2] = v12;
    v14 = *(a1 + 64);
    v13 = (a1 + 64);
    v28 = v14;
    v29 = *(v13 - 2);
    v30 = v13[1];
    v32 = v13[3];
    v31 = v13[2];
    v15 = _Block_copy(aBlock);
    v16 = [*v13 acceptedEvaluationContext];
    [(UIWritingToolsCoordinator *)WeakRetained _executeForSubrangesOfRange:v11 inContext:v12 actions:v16 recordingCustomFillColors:v15, 0];

    objc_destroyWeak(v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = *(a1 + 88);
    if (v17)
    {
      (*(v17 + 16))(v17, *(a1 + 80));
    }
  }

LABEL_20:
}

void __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke_203(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    _confirmNonOverlappingSubrangesContainedInOrEqualToRange(*(a1 + 80), *(a1 + 88), v3);
    v5 = [v3 mutableCopy];
    [*(a1 + 32) setInsertionAnimationSubranges:v5];

    v6 = [v3 count];
    v7 = [*(a1 + 32) removalAnimationSubranges];
    v8 = [v7 count];

    if (v8)
    {
      v9 = v8 - 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) customFillColorForSubrangeIndex:v9];
    if (v8 < v6)
    {
      v11 = v8;
      do
      {
        [WeakRetained _animateRewrittenTextForDeliveryID:*(a1 + 40) contextID:*(a1 + 48) subrangeIndex:v11++ customFillColor:v10];
      }

      while (v6 != v11);
    }

    if (v8)
    {
      v12 = *(a1 + 48);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke_2;
      v14[3] = &unk_1E70F4A50;
      v16 = *(a1 + 64);
      v15 = *(a1 + 56);
      [(UIWritingToolsCoordinator *)WeakRetained _sendFinishRemoveAnimationForNextSubrangeIndex:(v8 - 1) maximumSubrangeIndex:v12 contextID:v14 completion:?];
    }

    else
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        (*(v13 + 16))(v13, *(a1 + 56));
      }
    }
  }
}

uint64_t __143__UIWritingToolsCoordinator__updateTextViewAndTrackerWithIncomingCompositionSessionState_forDelivery_animationParameters_contextID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_sendDelegateFinishAnticipationForNextSubrangeIndex:(uint64_t)a3 inTotalSubranges:(void *)a4 contextID:(void *)a5 wrapUpFinishingHandler:
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a1)
  {
    v12 = a2 + 1;
    if (v12 >= a3)
    {
      (*(v10 + 2))(v10);
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __131__UIWritingToolsCoordinator__sendDelegateFinishAnticipationForNextSubrangeIndex_inTotalSubranges_contextID_wrapUpFinishingHandler___block_invoke;
      v13[3] = &unk_1E70F8FA8;
      v13[4] = a1;
      v16 = v12;
      v17 = a3;
      v14 = v9;
      v15 = v11;
      [a1 _sendDelegateFinishTextAnimation:0 subrangeIndex:v12 contextID:v14 completion:v13];
    }
  }
}

- (void)_cleanUpAnticipationAnimationTrackingInfoForContextID:(id)a3
{
  v4 = a3;
  v5 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 anticipationAnimationSubranges];
  v8 = [v7 count];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__UIWritingToolsCoordinator__cleanUpAnticipationAnimationTrackingInfoForContextID___block_invoke;
  v11[3] = &unk_1E70F6228;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v9 = v4;
  v10 = v6;
  [(UIWritingToolsCoordinator *)self _sendDelegateFinishAnticipationForNextSubrangeIndex:v8 inTotalSubranges:v9 contextID:v11 wrapUpFinishingHandler:?];
}

void __83__UIWritingToolsCoordinator__cleanUpAnticipationAnimationTrackingInfoForContextID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) anticipationAnimationSubranges];
  [v2 removeAllObjects];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  [(UIWritingToolsCoordinator *)v3 _resetFinishedRangeCountsForTextAnimation:v4 contextID:?];
}

- (void)_cleanUpReplacementAnimationTrackingInfoForContextID:(id)a3
{
  v11 = a3;
  v5 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v6 = [v5 objectForKeyedSubscript:v11];

  if (![(UIWritingToolsCoordinator *)self _hasLandedAllReplacementsForDelivery:self->_inFlightDeliveryID inContext:v11])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1857 description:@"Cleanup for replacement animation attempted before all animations have landed."];
  }

  v7 = [v6 removalAnimationSubranges];
  [v7 removeAllObjects];

  v8 = [v6 insertionAnimationSubranges];
  [v8 removeAllObjects];

  v9 = [v6 landedReplacementSubrangeIndexes];
  [v9 removeAllIndexes];

  [(UIWritingToolsCoordinator *)self _resetFinishedRangeCountsForTextAnimation:v11 contextID:?];
  [(UIWritingToolsCoordinator *)self _resetFinishedRangeCountsForTextAnimation:v11 contextID:?];
}

- (BOOL)_hasLandedAllReplacementsForDelivery:(id)a3 inContext:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v5 = a4;
  v6 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 insertionAnimationSubranges];
  v9 = [v8 count];

  v10 = [v7 removalAnimationSubranges];
  v11 = [v10 count];

  if (v9 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = [v7 landedReplacementSubrangeIndexes];
  v14 = [v13 count] >= v12;

  return v14;
}

- (void)_finishNextReplacementAnimation:(char *)a3 withSubrangeIndex:(void *)a4 finishedIndexes:(char *)a5 numberOfIndexes:(void *)a6 contextID:(void *)a7 completion:
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (a3 >= a5)
  {
    (*(v15 + 2))(v15);
  }

  else if ([v13 containsIndex:a3])
  {
    [(UIWritingToolsCoordinator *)a1 _finishNextReplacementAnimation:a2 withSubrangeIndex:a3 + 1 finishedIndexes:v13 numberOfIndexes:a5 contextID:v14 completion:v16];
  }

  else
  {
    objc_initWeak(&location, a1);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __132__UIWritingToolsCoordinator__finishNextReplacementAnimation_withSubrangeIndex_finishedIndexes_numberOfIndexes_contextID_completion___block_invoke;
    v17[3] = &unk_1E70F9048;
    objc_copyWeak(v21, &location);
    v21[1] = a2;
    v21[2] = a3;
    v18 = v13;
    v21[3] = a5;
    v19 = v14;
    v20 = v16;
    [a1 _sendDelegateFinishTextAnimation:a2 subrangeIndex:a3 contextID:v19 completion:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __132__UIWritingToolsCoordinator__finishNextReplacementAnimation_withSubrangeIndex_finishedIndexes_numberOfIndexes_contextID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(UIWritingToolsCoordinator *)WeakRetained _finishNextReplacementAnimation:*(a1 + 72) + 1 withSubrangeIndex:*(a1 + 32) finishedIndexes:*(a1 + 80) numberOfIndexes:*(a1 + 40) contextID:*(a1 + 48) completion:?];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __70__UIWritingToolsCoordinator__finishAllReplacementAnimationsInContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(UIWritingToolsCoordinator *)WeakRetained _finishNextReplacementAnimation:0 withSubrangeIndex:*(a1 + 32) finishedIndexes:*(a1 + 56) numberOfIndexes:*(a1 + 40) contextID:&__block_literal_global_214 completion:?];
    WeakRetained = v3;
  }
}

- (void)_replacementEffectDidLandInFlightDelivery:(id)a3 inContext:(id)a4 subrangeIndex:(unint64_t)a5
{
  v50[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (self->_inFlightDeliveryID)
  {
    v37 = a2;
    if (([v9 isEqual:?] & 1) == 0)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:v37 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1922 description:{@"Replacement animation landed mismatched delivery, %@. _inFlightDeliveryID=%@", v9, self->_inFlightDeliveryID}];
    }

    v11 = [(UIWritingToolsCoordinator *)self _trackingInfos];
    v38 = [v11 objectForKeyedSubscript:v10];

    v12 = [v38 landedReplacementSubrangeIndexes];
    [v12 addIndex:a5];

    LOBYTE(v12) = [(UIWritingToolsCoordinator *)self _hasLandedAllReplacementsForDelivery:v9 inContext:v10];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (v12)
    {
      if (has_internal_diagnostics && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v32 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB30) + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          inFlightDeliveryID = self->_inFlightDeliveryID;
          *from = 134218242;
          *&from[4] = a5;
          *&from[12] = 2112;
          *&from[14] = inFlightDeliveryID;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "In-flight delivery has landed final subrangeIndex %lu. %@", from, 0x16u);
        }
      }

      v14 = v10;
      v15 = [(UIWritingToolsCoordinator *)self _trackingInfos];
      v16 = [v15 objectForKeyedSubscript:v14];

      v17 = [v16 removalAnimationSubranges];
      v18 = [v17 count];

      v19 = [v16 finishedRemovalSubrangeIndexes];
      v20 = [v19 copy];

      v21 = [v16 insertionAnimationSubranges];
      v22 = [v21 count];

      v23 = [v16 finishedInsertionSubrangeIndexes];
      v24 = [v23 copy];

      objc_initWeak(&location, self);
      *from = MEMORY[0x1E69E9820];
      *&from[8] = 3221225472;
      *&from[16] = __70__UIWritingToolsCoordinator__finishAllReplacementAnimationsInContext___block_invoke;
      v47 = &unk_1E70F9070;
      objc_copyWeak(v50, &location);
      v25 = v24;
      v48 = v25;
      v50[1] = v22;
      v26 = v14;
      v49 = v26;
      [(UIWritingToolsCoordinator *)self _finishNextReplacementAnimation:0 withSubrangeIndex:v20 finishedIndexes:v18 numberOfIndexes:v26 contextID:from completion:?];

      objc_destroyWeak(v50);
      objc_destroyWeak(&location);

      v27 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:v26];
      v28 = [v27 replacementTracker];

      v29 = [v28 nextDeliveryForDelivery:self->_inFlightDeliveryID];
      LOBYTE(v27) = v29 == 0;

      if ((v27 & 1) == 0)
      {
        v36 = [MEMORY[0x1E696AAA8] currentHandler];
        [v36 handleFailureInMethod:v37 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:1936 description:@"replacement tracker should not have to queue deliveries"];
      }

      objc_initWeak(from, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __95__UIWritingToolsCoordinator__replacementEffectDidLandInFlightDelivery_inContext_subrangeIndex___block_invoke;
      v39[3] = &unk_1E70F9098;
      objc_copyWeak(&v44, from);
      v40 = v26;
      v41 = v9;
      v30 = v28;
      v42 = v30;
      v43 = v38;
      [(UIWritingToolsCoordinator *)self _updateVisualizationForProofreadingSuggestionsIfNecessaryForDelivery:v41 inContext:v40 completion:v39];

      objc_destroyWeak(&v44);
      objc_destroyWeak(from);
    }

    else if (has_internal_diagnostics && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v34 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB28) + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = self->_inFlightDeliveryID;
        *from = 134218242;
        *&from[4] = a5;
        *&from[12] = 2112;
        *&from[14] = v35;
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "In-flight delivery has landed preliminary subrangeIndex %lu. Ignoring. %@", from, 0x16u);
      }
    }
  }
}

void __95__UIWritingToolsCoordinator__replacementEffectDidLandInFlightDelivery_inContext_subrangeIndex___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setInFlightDeliveryID:0];
    [v3 _cleanUpReplacementAnimationTrackingInfoForContextID:*(a1 + 32)];
    v4 = [v3 _writingToolsDelegateMessageInvocationBuffer];
    if ([v4 count])
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v16 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB38) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
          *buf = 134217984;
          v27 = [v4 count];
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Animation finished. Delivering buffered writingToolsDelegate messages. Count = %lu", buf, 0xCu);
        }
      }

      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = [v4 copy];
      v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v23;
LABEL_6:
        v9 = 0;
        while (1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * v9);
          if (![v4 count])
          {
            break;
          }

          [v4 removeObjectAtIndex:0];
          if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
          {
            v20 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB40) + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v19 = *(a1 + 40);
              v21 = v20;
              v18 = NSStringFromSelector([v10 selector]);
              *buf = 138412802;
              v27 = v19;
              v28 = 2048;
              v29 = v10;
              v30 = 2112;
              v31 = v18;
              _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Delivering buffered invocation after landing %@\n\t%p, %@", buf, 0x20u);
            }
          }

          [v10 invokeWithTarget:v3];
          if (v7 == ++v9)
          {
            v11 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
            v7 = v11;
            if (v11)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }
    }

    v12 = [*(a1 + 48) activeUnprocessedCharacterRange];
    v14 = v13;
    v15 = [*(a1 + 56) acceptedEvaluationContext];
    if (v15 && v14)
    {
      [v3 _beginTextAssistantAnticipationsForRange:v12 inContext:{v14, v15}];
    }
  }
}

- (void)stopWritingTools
{
  if (self->_activeSessionUUID)
  {
    *(&self->_includesTextListMarkers + 1) = 1;
    if (!*(&self->_includesTextListMarkers + 2))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      [WeakRetained _endWritingTools];
    }
  }
}

void __67__UIWritingToolsCoordinator__changeToState_postStateChangeActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v5 = WeakRetained;
    WeakRetained[26] = v3;
    if (!v3)
    {
      v4 = [WeakRetained _trackingInfos];
      [v4 removeAllObjects];
    }

    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

- (id)_bufferInvocationForSelector:(SEL)a3 arguments:(id)a4
{
  v6 = a4;
  v7 = [(UIWritingToolsCoordinator *)self methodSignatureForSelector:a3];
  v8 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v7];
  [v8 retainArguments];
  [v8 setSelector:a3];
  v9 = [v6 count];
  if (v9 >= 1)
  {
    v10 = v9;
    for (i = 0; v10 != i; ++i)
    {
      v12 = [v7 getArgumentTypeAtIndex:i + 2];
      v13 = v12;
      v14 = *v12;
      if (v14 > 0x50)
      {
        if ((v14 == 81 || v14 == 113) && !v12[1])
        {
          v17 = [v6 objectAtIndexedSubscript:i];
          v18 = [v17 integerValue];

          v25 = v18;
          goto LABEL_16;
        }
      }

      else if (v14 == 64)
      {
        if (!v12[1])
        {
          v25 = [v6 objectAtIndexedSubscript:i];
          [v8 setArgument:&v25 atIndex:i + 2];

          continue;
        }
      }

      else if (v14 == 66 && !v12[1])
      {
        v15 = [v6 objectAtIndexedSubscript:i];
        v16 = [v15 BOOLValue];

        LOBYTE(v25) = v16;
LABEL_16:
        [v8 setArgument:&v25 atIndex:i + 2];
        continue;
      }

      if (!strcmp(v12, "{_NSRange=QQ}"))
      {
        v25 = 0;
        v26 = 0;
        v21 = [v6 objectAtIndexedSubscript:i];
        v25 = [v21 rangeValue];
        v26 = v22;

        goto LABEL_16;
      }

      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = NSStringFromSelector(a3);
      [v19 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2097 description:{@"Packaging implementation required for invocation argument type, %s in %@", v13, v20}];
    }
  }

  [(NSMutableArray *)self->_writingToolsDelegateMessageInvocationBuffer addObject:v8];

  return v8;
}

- (void)_updateToCompositionSessionState:(int64_t)a3 contextID:(id)a4
{
  v6 = a4;
  v7 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 replacementTracker];
  v10 = v9;
  if (a3)
  {
    if (a3 == 2)
    {
      if ([v9 compositionSessionState] != 2)
      {
        [(UIWritingToolsCoordinator *)self _updateTextViewAndTrackerWithIncomingCompositionSessionState:2 forDelivery:0 animationParameters:0 contextID:v6 completion:0];
      }

      [(UIWritingToolsCoordinator *)self _updateSelectedRangeForCompositionIfFinishedInContext:v6 force:0];
      v11 = v8;
      v12 = 0;
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      if ([v9 compositionSessionState] == 2)
      {
        [(UIWritingToolsCoordinator *)self _updateTextViewAndTrackerWithIncomingCompositionSessionState:1 forDelivery:0 animationParameters:0 contextID:v6 completion:0];
        [(UIWritingToolsCoordinator *)self _updateSelectedRangeForCompositionIfFinishedInContext:v6 force:0];
      }

      v11 = v8;
      v12 = 1;
LABEL_10:
      [v11 setShowingOriginal:v12];
    }
  }

  else
  {
    if ([v9 compositionSessionState] == 2)
    {
      [(UIWritingToolsCoordinator *)self _updateTextViewAndTrackerWithIncomingCompositionSessionState:1 forDelivery:0 animationParameters:0 contextID:v6 completion:0];
    }

    [v10 setCompositionSessionState:0];
    [v8 setShowingOriginal:0];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__UIWritingToolsCoordinator__updateToCompositionSessionState_contextID___block_invoke;
    v13[3] = &unk_1E70F2F80;
    objc_copyWeak(&v15, &location);
    v14 = v6;
    [(UIWritingToolsCoordinator *)self _changeToState:v13 postStateChangeActions:?];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __72__UIWritingToolsCoordinator__updateToCompositionSessionState_contextID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained _trackingInfos];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

    v5 = [v4 acceptedEvaluationContext];
    v6 = [v5 evaluatedRange];
    [v8 _beginTextAssistantAnticipationsForRange:v6 inContext:{v7, v5}];

    WeakRetained = v8;
  }
}

- (void)_updateReplacementTrackerStartingAnimationsWithText:(id)a3 forRange:(_NSRange)a4 inContextWithID:(id)a5 finished:(BOOL)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = [v15 acceptedEvaluationContext];
  if (!v16)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2156 description:{@"Lost UIWritingToolsCoordinatorContext for ID = %@", v13}];
  }

  v17 = [v16 evaluatedRange];
  v18 = location - v17;
  if (location < v17)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = NSStringFromSelector(a2);
    [v26 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2159 description:{@"%@ - range argument location is out of bounds", v30}];
  }

  v29 = a2;
  v19 = [v15 replacementTracker];
  v20 = [v16 _wtContext];
  v21 = [v19 recordRewrittenText:v12 forRange:v18 withContext:length finished:{v20, v6}];

  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v27 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_updateReplacementTrackerStartingAnimationsWithText_forRange_inContextWithID_finished____s_category) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v21;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Replacement tracker recorded delivery %@\n%@", buf, 0x16u);
    }
  }

  if (v21)
  {
    proofreadingDeliverySuggestionIDs = self->_proofreadingDeliverySuggestionIDs;
    if (proofreadingDeliverySuggestionIDs)
    {
      v23 = [v15 proofreadingSuggestionIDsPerDeliveryID];
      [v23 setObject:proofreadingDeliverySuggestionIDs forKeyedSubscript:v21];
    }

    if (self->_inFlightDeliveryID)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:v29 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2168 description:@"It should no longer be necessary to queue replacement deliveries"];
    }

    [(UIWritingToolsCoordinator *)self _setInFlightDeliveryID:v21];
    v31 = v13;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v24];

    [(UIWritingToolsCoordinator *)self _beginAnimatedTextReplacementForInFlightDeliveryInContextID:v13];
  }
}

- (void)_updateReplacementTrackerWithText:(id)a3 forRange:(_NSRange)a4 inContext:(id)a5 finished:(BOOL)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = [v12 uuid];
  v14 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = [v15 acceptedEvaluationContext];
  v17 = [v16 evaluatedRange];
  v18 = location >= v17;
  v19 = location - v17;
  if (!v18)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = NSStringFromSelector(a2);
    [v27 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2182 description:{@"%@ - range argument location is out of bounds", v26}];
  }

  v20 = [v15 replacementTracker];
  v21 = [v20 recordRewrittenText:v11 forRange:v19 withContext:length finished:{v12, v6}];

  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v24 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_updateReplacementTrackerWithText_forRange_inContext_finished____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v21;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Replacement tracker recorded delivery %@\n%@", buf, 0x16u);
    }
  }

  if (v21)
  {
    if (self->_proofreadingDeliverySuggestionIDs)
    {
      v22 = [v15 proofreadingSuggestionIDsPerDeliveryID];
      [v22 setObject:self->_proofreadingDeliverySuggestionIDs forKeyedSubscript:v21];
    }

    if (self->_inFlightDeliveryID)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2192 description:@"It should no longer be necessary to queue replacement deliveries"];
    }

    [(UIWritingToolsCoordinator *)self _setInFlightDeliveryID:v21];
    v29 = v13;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v23];

    [(UIWritingToolsCoordinator *)self _beginAnimatedTextReplacementForInFlightDeliveryInContextID:v13];
  }
}

- (void)_updateSelectedRangeForCompositionIfFinishedInContext:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 replacementTracker];
  if (([v10 isProofreading] & 1) == 0)
  {
    v11 = [v10 isFinished];
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v20 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_updateSelectedRangeForCompositionIfFinishedInContext_force____s_category) + 8);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = NSStringFromSelector(a2);
            v23 = v22;
            v24 = @"NO";
            if (v4)
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            *buf = 138412802;
            v28 = v22;
            v30 = v25;
            v29 = 2112;
            if (v11)
            {
              v24 = @"YES";
            }

            v31 = 2112;
            v32 = v24;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "%@ force? %@ finished? %@", buf, 0x20u);
          }
        }
      }
    }

    if ((v4 | v11))
    {
      v12 = [v10 originalCharacterRange];
      v14 = v13;
      if ([v10 compositionSessionState] == 2)
      {
        v15 = [v10 activeText];
        v14 = [v15 length];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v17 = [MEMORY[0x1E696B098] valueWithRange:{v12, v14}];
      v26 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v19 = [v9 acceptedEvaluationContext];
      [WeakRetained writingToolsCoordinator:self selectRanges:v18 inContext:v19 completion:&__block_literal_global_248];
    }
  }
}

- (void)_proofreadingOrCompositionFinishedInContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_inFlightDeliveryID)
  {
    v21 = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v8 = [(UIWritingToolsCoordinator *)self _bufferInvocationForSelector:a2 arguments:v7];

    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v16 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_proofreadingOrCompositionFinishedInContext____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Packaged up cleanup following Writing Tools streaming, to deliver after animation finishes, %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

  [(UIWritingToolsCoordinator *)self _updateSelectedRangeForCompositionIfFinishedInContext:v5 force:0];
  v9 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:v6];
  [v9 setStreaming:0];

  if (self->_state == 2)
  {
    goto LABEL_16;
  }

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(NSMutableDictionary *)self->_trackingInfos objectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
  if (!v11)
  {

LABEL_15:
    [(UIWritingToolsCoordinator *)self _changeToState:&__block_literal_global_250 postStateChangeActions:?];
    goto LABEL_16;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v18;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v18 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v13 += [*(*(&v17 + 1) + 8 * i) isStreaming];
    }

    v12 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
  }

  while (v12);

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateVisualizationForProofreadingSuggestionsIfNecessaryForDelivery:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v12 = [v11 objectForKeyedSubscript:v9];

  v13 = [v12 proofreadingSuggestionIDsPerDeliveryID];
  v14 = [v13 objectForKeyedSubscript:v8];
  v15 = [v12 replacementTracker];
  v16 = [v15 proofreadingController];
  if (v16)
  {
    v17 = [v14 objectEnumerator];
    objc_initWeak(location, self);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3042000000;
    v31 = __Block_byref_object_copy__162;
    v32 = __Block_byref_object_dispose__163;
    v33 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionsIfNecessaryForDelivery_inContext_completion___block_invoke;
    aBlock[3] = &unk_1E70F90E8;
    v26 = &v28;
    objc_copyWeak(&v27, location);
    v25 = v10;
    v18 = v17;
    v21 = v18;
    v22 = v9;
    v23 = v15;
    v24 = v12;
    v19 = _Block_copy(aBlock);
    objc_storeWeak(v29 + 5, v19);
    v19[2](v19);

    objc_destroyWeak(&v27);
    _Block_object_dispose(&v28, 8);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v10[2](v10);
  }
}

void __119__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionsIfNecessaryForDelivery_inContext_completion___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  v3 = objc_loadWeakRetained((a1 + 80));
  v4 = v3;
  if (WeakRetained)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) nextObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v4 _proofreadingSuggestionInfos];
      v9 = [v8 objectForKeyedSubscript:v7];

      [v4 _updateVisualizationForProofreadingSuggestionID:v7 previousState:0 delta:objc_msgSend(v9 resetFollowingIfNecessary:"lengthDelta") inContext:0 completion:{*(a1 + 40), WeakRetained}];
    }

    else if ([*(a1 + 48) isFinished])
    {
      v10 = [v4 delegate];
      if (v10)
      {
        v11 = [*(a1 + 56) acceptedEvaluationContext];
        v12 = [*(a1 + 56) replacementTracker];
        v13 = [v12 proofreadingController];
        v14 = [(UIWritingToolsCoordinator *)v4 _lastProofreadingSuggestionWithUnderlineFromProofreadingController:v13];

        if (v14)
        {
          v15 = [(UIWritingToolsCoordinator *)v4 _trailingCursorLocationRangeForProofreadingSuggestion:v14 inContextID:*(a1 + 40)];
          v17 = v16;
        }

        else
        {
          v18 = [v11 range];
          v17 = 0;
          v15 = v18 + v19;
        }

        v20 = [MEMORY[0x1E696B098] valueWithRange:{v15, v17}];
        v22[0] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
        [v10 writingToolsCoordinator:v4 selectRanges:v21 inContext:v11 completion:*(a1 + 64)];
      }

      else
      {
        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)_didEndProofreadingSession:(id)a3 accepted:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_trackingInfos objectEnumerator];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__21;
  v28[4] = __Block_byref_object_dispose__21;
  v29 = 0;
  self->_isStartingRetry = 1;
  objc_initWeak(&location, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3042000000;
  v24 = __Block_byref_object_copy__162;
  v25 = __Block_byref_object_dispose__163;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UIWritingToolsCoordinator__didEndProofreadingSession_accepted_completion___block_invoke;
  aBlock[3] = &unk_1E70F9110;
  v17 = &v21;
  objc_copyWeak(&v19, &location);
  v18 = v28;
  v11 = v10;
  v15 = v11;
  v20 = a4;
  v12 = v9;
  v16 = v12;
  v13 = _Block_copy(aBlock);
  objc_storeWeak(v22 + 5, v13);
  v13[2](v13);

  objc_destroyWeak(&v19);
  _Block_object_dispose(&v21, 8);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(v28, 8);
}

void __76__UIWritingToolsCoordinator__didEndProofreadingSession_accepted_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 64));
    if (v3)
    {
      v4 = [*(a1 + 32) nextObject];
      v5 = [v4 replacementTracker];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(*(*(a1 + 56) + 8) + 40);
      if (v8)
      {
        v9 = [v8 proofreadingController];
        [v9 finish:*(a1 + 72) completion:v10];
      }

      else
      {
        [v3 _removeAllProofreadingDecorations];
        [v3 _setWrappingUpProofreadingSession:0];
        (*(*(a1 + 40) + 16))();
      }
    }

    WeakRetained = v10;
  }
}

- (void)_didEndRewritingSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(&self->_includesTextListMarkers + 1);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(NSMutableDictionary *)self->_trackingInfos objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = !v4 | v6;
    v12 = v4 | v6;
    v23 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 acceptedEvaluationContext];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 identifier];
          v18 = [v14 replacementTracker];
          if ([v18 compositionSessionState] == 2)
          {
            if ((v12 & 1) == 0)
            {
              v19 = 1;
              goto LABEL_17;
            }
          }

          else
          {
            if ([v18 compositionSessionState] && objc_msgSend(v18, "compositionSessionState") != 1)
            {
              goto LABEL_18;
            }

            if ([v18 compositionSessionState])
            {
              if (v11)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v28 = v17;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
              v20 = v12;
              v22 = v21 = v11;
              [(UIWritingToolsCoordinator *)self _endTextAssistantAnticipationsForContextIDs:v22];

              v11 = v21;
              v12 = v20;
              v7 = v23;
              if (v11)
              {
                goto LABEL_18;
              }
            }

            v19 = 2;
LABEL_17:
            [(UIWritingToolsCoordinator *)self _updateTextViewAndTrackerWithIncomingCompositionSessionState:v19 forDelivery:0 animationParameters:0 contextID:v17 completion:0];
            [(UIWritingToolsCoordinator *)self _updateSelectedRangeForCompositionIfFinishedInContext:v17 force:1];
          }

LABEL_18:
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)_removeAllProofreadingDecorations
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)self->_proofreadingSuggestionInfos keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 underlineInfo];

        if (v11)
        {
          [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:v8];
        }

        v12 = [v10 highlightInfo];

        if (v12)
        {
          [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionReviewingHighlightForProofreadingSuggestionID:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_updateProofreadingTextAndTrackerToShowOriginal:(BOOL)a3 inContextID:(id)a4
{
  v4 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v8 = [v7 objectForKeyedSubscript:v6];

  if ([v8 showingOriginal] != v4)
  {
    v27 = [v8 replacementTracker];
    [v27 proofreadingController];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v34 = 0u;
    v9 = [v26 suggestions];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v13 = 3;
      v28 = v9;
      do
      {
        v14 = 0;
        v29 = v11;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          if ([v15 state] != 4)
          {
            if (!v4)
            {
              v16 = [v15 uuid];
              v30 = [v8 backingProofreadingSuggestionStateForSuggestion:v16];

              v17 = [v8 savedReviewingProofreadingSuggestionID];
              [v15 uuid];
              v18 = self;
              v20 = v19 = v4;
              v21 = v12;
              v22 = v8;
              v23 = v6;
              v24 = [v17 isEqual:v20];

              v4 = v19;
              self = v18;
              v11 = v29;

              v25 = v24 == 0;
              v6 = v23;
              v8 = v22;
              v12 = v21;
              if (v25)
              {
                v13 = v30;
              }

              else
              {
                v13 = 1;
              }

              v9 = v28;
            }

            [(UIWritingToolsCoordinator *)self _updateForProofreadingSuggestion:v15 state:v13 saveState:0 inContext:v6];
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    [v8 setShowingOriginal:v4];
    if (!v4)
    {
      [v8 setSavedReviewingProofreadingSuggestionID:0];
    }
  }
}

- (void)_updateForProofreadingSuggestion:(id)a3 state:(int64_t)a4 saveState:(BOOL)a5 inContext:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [v10 state];
  v13 = [v10 uuid];
  v14 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v15 = [v14 objectForKeyedSubscript:v11];

  v16 = [v15 replacementTracker];
  v17 = [v16 proofreadingController];
  [(UIWritingToolsCoordinator *)&self->super.isa _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:v13 state:v12];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke;
  aBlock[3] = &unk_1E70F9188;
  objc_copyWeak(v32, &location);
  v18 = v13;
  v26 = v18;
  v32[1] = a4;
  v33 = a5;
  v19 = v15;
  v27 = v19;
  v20 = v10;
  v32[2] = v12;
  v28 = v20;
  v29 = self;
  v21 = v11;
  v30 = v21;
  v32[3] = a2;
  v22 = v17;
  v31 = v22;
  v23 = _Block_copy(aBlock);
  [v22 updateSuggestionWithUUID:v18 state:a4 completion:v23];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

void __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [(UIWritingToolsCoordinator *)WeakRetained _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:*(a1 + 88) state:?];
    if (*(a1 + 112) == 1)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 88)];
      v10 = [*(a1 + 40) backingProofreadingSuggestionStatePerSuggestionID];
      [v10 setObject:v9 forKeyedSubscript:*(a1 + 32)];
    }

    objc_initWeak(&location, v8);
    v11 = [*(a1 + 48) uuid];
    v12 = *(a1 + 96);
    v13 = *(a1 + 64);
    v14 = *(*(a1 + 56) + 72);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke_2;
    v17[3] = &unk_1E70F9160;
    objc_copyWeak(v23, &location);
    v18 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 104);
    v19 = v15;
    v23[1] = v16;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 32);
    [v8 _updateVisualizationForProofreadingSuggestionID:v11 previousState:v12 delta:v14 resetFollowingIfNecessary:1 inContext:v13 completion:v17];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

void __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setProofreadingVisualizationReplacementDelta:0];
    if ([*(a1 + 32) state] == 1)
    {
      v4 = [*(a1 + 40) acceptedEvaluationContext];
      if (!v4)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:*(a1 + 80) object:v3 file:@"UIWritingToolsCoordinator.m" lineNumber:2459 description:{@"UIWritingToolsCoordinator can't find context for contextID: %@", *(a1 + 48)}];
      }

      v5 = [*(a1 + 56) editTracker];
      v6 = [*(a1 + 32) originalRange];
      v8 = [v5 rangeOfSuggestionWithRange:v6 UUID:v7 applyDelta:{*(a1 + 64), 1}];
      v10 = v9;

      objc_initWeak(&location, v3);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke_3;
      aBlock[3] = &unk_1E70F9138;
      objc_copyWeak(&v18, &location);
      v16 = *(a1 + 40);
      v17 = *(a1 + 64);
      v11 = _Block_copy(aBlock);
      v12 = [v3 delegate];
      v13 = [*(a1 + 40) acceptedEvaluationContext];
      [v12 writingToolsCoordinator:v3 requestsBoundingBezierPathsForRange:v8 inContext:v10 completion:{v13, v11}];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __88__UIWritingToolsCoordinator__updateForProofreadingSuggestion_state_saveState_inContext___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [v3 count])
  {
    v5 = [v3 firstObject];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [*(a1 + 32) savedReviewingProofreadingSuggestionID];
    v15 = [v14 isEqual:*(a1 + 40)];

    if (v15)
    {
      [*(a1 + 32) setSavedReviewingProofreadingSuggestionID:0];
      if (os_variant_has_internal_diagnostics())
      {
        if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
        {
          if (byte_1EA95E184)
          {
            v22 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_UIInternalPreference_UITextAssistantProofreadLogging_block_invoke_5___s_category) + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 40);
              v24 = 138412290;
              v25 = v23;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Tell Writing Tools to update proofreading suggestion to Reviewing because of Show Original toggle activity. suggestionID = %@", &v24, 0xCu);
            }
          }
        }
      }

      v16 = [WeakRetained _sessionTextViewDelegate];
      v17 = [WeakRetained _activeSessionUUID];
      [v16 proofreadingSessionWithUUID:v17 updateState:1 forSuggestionWithUUID:*(a1 + 40)];
    }

    v18 = [WeakRetained _sessionTextViewDelegate];
    v19 = [WeakRetained _activeSessionUUID];
    v20 = *(a1 + 40);
    v21 = [WeakRetained view];
    [v18 proofreadingSessionWithUUID:v19 showDetailsForSuggestionWithUUID:v20 relativeToRect:v21 inView:{v7, v9, v11, v13}];
  }
}

- (void)_updateVisualizationForProofreadingSuggestionID:(id)a3 previousState:(int64_t)a4 delta:(int64_t)a5 resetFollowingIfNecessary:(BOOL)a6 inContext:(id)a7 completion:(id)a8
{
  v76 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v12 = a7;
  v13 = a8;
  v14 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v15 = [v14 objectForKeyedSubscript:v51];

  v16 = [v15 contextID];
  LOBYTE(a7) = [v16 isEqual:v12];

  if ((a7 & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2500 description:{@"Mismatched context for proofreading suggestion. %@", v15}];
  }

  v17 = [v15 state];
  v18 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v50 = [v18 objectForKeyedSubscript:v12];

  v49 = [v50 replacementTracker];
  v19 = [v49 proofreadingController];
  v20 = [v19 editTracker];
  v21 = [v15 originalRange];
  v45 = [v20 rangeOfSuggestionWithRange:v21 UUID:v22 applyDelta:{v51, v17 < 2}];
  v24 = v23;

  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184)
  {
    v34 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB48) + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = v35;
      if (v17 > 4)
      {
        v37 = @"unknown";
      }

      else
      {
        v37 = off_1E70F93E0[v17];
      }

      if (a4 > 4)
      {
        v42 = @"unknown";
      }

      else
      {
        v42 = off_1E70F93E0[a4];
      }

      *from = 138413570;
      *&from[4] = v35;
      v66 = 2112;
      v67 = v37;
      v68 = 2112;
      v69 = v42;
      v70 = 2048;
      v71 = v45;
      v72 = 2048;
      v73 = v24;
      v74 = 2048;
      v75 = a5;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%@, state=%@, previousState=%@, range={%lu, %lu} delta=%li", from, 0x3Eu);
    }
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionID_previousState_delta_resetFollowingIfNecessary_inContext_completion___block_invoke;
  aBlock[3] = &unk_1E70F91B0;
  objc_copyWeak(v62, &location);
  aSelectora = v13;
  v61 = aSelectora;
  v62[1] = a5;
  v63 = a6;
  v25 = v15;
  v59 = v25;
  v26 = v12;
  v60 = v26;
  v27 = _Block_copy(aBlock);
  if (v24)
  {
    v28 = v17 < 2;
    objc_initWeak(from, self);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __144__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionID_previousState_delta_resetFollowingIfNecessary_inContext_completion___block_invoke_2;
    v52[3] = &unk_1E70F91D8;
    objc_copyWeak(v57, from);
    v56 = v27;
    v57[1] = a4;
    v57[2] = v17;
    v29 = v51;
    v53 = v29;
    v57[3] = v45;
    v57[4] = v24;
    v30 = v26;
    v54 = v30;
    v55 = v25;
    v31 = _Block_copy(v52);
    if (v28)
    {
      [(UIWritingToolsCoordinator *)self _addProofreadSuggestionPendingUnderlineForRange:v45 inContext:v24 forProofreadingSuggestionID:v30 completion:v29, v31];
    }

    else
    {
      [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:v29];
      v31[2](v31);
    }

    objc_destroyWeak(v57);
    objc_destroyWeak(from);
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v38 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging");
      v39 = byte_1EA95E184 ? v38 : 1;
      if ((v39 & 1) == 0)
      {
        v40 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB50) + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          if (v17 > 4)
          {
            v41 = @"unknown";
          }

          else
          {
            v41 = off_1E70F93E0[v17];
          }

          *from = 138412290;
          *&from[4] = v41;
          v43 = v40;
          _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "Unexpected request to update visualization for a %@ proofreading suggestion with a 0-length range", from, 0xCu);
        }
      }
    }

    if ([(NSUUID *)self->_activeReviewingUUID isEqual:v51])
    {
      activeReviewingUUID = self->_activeReviewingUUID;
      self->_activeReviewingUUID = 0;
    }

    [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:v51];
    v27[2](v27);
  }

  objc_destroyWeak(v62);
  objc_destroyWeak(&location);
}

void __144__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionID_previousState_delta_resetFollowingIfNecessary_inContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 64) && *(a1 + 72) == 1)
  {
    [WeakRetained _resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:objc_msgSend(*(a1 + 32) inContext:"originalRange") + 1 completion:{*(a1 + 40), *(a1 + 48)}];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __144__UIWritingToolsCoordinator__updateVisualizationForProofreadingSuggestionID_previousState_delta_resetFollowingIfNecessary_inContext_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_10;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v4 != v3)
  {
    if (v4 == 1)
    {
      [WeakRetained _undrawProofreadingHighlightsForProofreadingSuggestionID:*(a1 + 32)];
      [v7 _setActiveReviewingUUID:0];
LABEL_8:
      WeakRetained = v7;
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      [WeakRetained _addProofreadingSuggestionReviewingHighlightForRange:*(a1 + 88) inContext:*(a1 + 96) forProofreadingSuggestionID:{*(a1 + 40), *(a1 + 32)}];
      v5 = [*(a1 + 48) identifier];
      [v7 _setActiveReviewingUUID:v5];

      goto LABEL_8;
    }
  }

LABEL_9:
  v6 = [WeakRetained delegate];
  (*(*(a1 + 56) + 16))();

LABEL_10:
}

- (void)_invalidateProofreadingSuggestionWithUUID:(id)a3 contextID:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
    {
      if (byte_1EA95E184)
      {
        v12 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_invalidateProofreadingSuggestionWithUUID_contextID____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Tell Writing Tools to update proofreading suggestion to Invalid. suggestionID = %@", &v13, 0xCu);
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_sessionTextViewDelegate);
  [WeakRetained proofreadingSessionWithUUID:self->_activeSessionUUID updateState:4 forSuggestionWithUUID:v6];

  v9 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:v7];

  v10 = [v9 replacementTracker];

  v11 = [v10 proofreadingController];
  [v11 updateSuggestionWithUUID:v6 state:4 completion:&__block_literal_global_278];
}

- (void)_resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex:(unint64_t)a3 inContext:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v30 = a5;
  v34 = v7;
  v8 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:v7];
  v31 = [v8 replacementTracker];

  v9 = [v31 proofreadingController];
  v10 = [v9 suggestions];
  v32 = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v12)
  {
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [v15 uuid];
        if ([v15 state] == 4)
        {
          [(UIWritingToolsCoordinator *)&self->super.isa _synchronizeSuggestionInfoStateForProofreadingSuggestionWithIdentifier:v16 state:4];
          [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:v16];
          [(UIWritingToolsCoordinator *)self _removeProofreadingSuggestionReviewingHighlightForProofreadingSuggestionID:v16];
        }

        if ([v15 state] <= 1)
        {
          v17 = [v9 editTracker];
          v18 = [v15 originalRange];
          v20 = [v17 rangeOfSuggestionWithRange:v18 UUID:v19 applyDelta:{v16, 1}];
          v22 = v21;

          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(UIWritingToolsCoordinator *)self _invalidateProofreadingSuggestionWithUUID:v16 contextID:v34];
          }

          else if (v20 >= a3)
          {
            v52[0] = v16;
            v23 = [MEMORY[0x1E696B098] valueWithRange:{v20, v22}];
            v52[1] = v23;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
            [v32 addObject:v24];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  v25 = [v32 objectEnumerator];
  objc_initWeak(&location, self);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3042000000;
  v44 = __Block_byref_object_copy__162;
  v45 = __Block_byref_object_dispose__163;
  v46 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__UIWritingToolsCoordinator__resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex_inContext_completion___block_invoke;
  aBlock[3] = &unk_1E70F9220;
  v39 = &v41;
  objc_copyWeak(&v40, &location);
  v26 = v30;
  v38 = v26;
  v27 = v25;
  v36 = v27;
  v28 = v34;
  v37 = v28;
  v29 = _Block_copy(aBlock);
  objc_storeWeak(v42 + 5, v29);
  v29[2](v29);

  objc_destroyWeak(&v40);
  _Block_object_dispose(&v41, 8);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void __122__UIWritingToolsCoordinator__resetProofreadingDecorationsForSuggestionsFollowingChangeLocationIndex_inContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  v2 = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) nextObject];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      v7 = [v5 objectAtIndexedSubscript:1];
      v8 = [v7 rangeValue];
      v10 = v9;

      v11 = [v2 _proofreadingSuggestionInfos];
      v12 = [v11 objectForKeyedSubscript:v6];

      [v2 _removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:v6];
      [v12 setSingleContainerSubrangesOfAdjustedOriginalRange:0];
      [v2 _addProofreadSuggestionPendingUnderlineForRange:v8 inContext:v10 forProofreadingSuggestionID:*(a1 + 40) completion:{v6, WeakRetained}];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_addProofreadSuggestionPendingUnderlineForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 completion:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v15 = [v14 objectForKeyedSubscript:v12];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __126__UIWritingToolsCoordinator__addProofreadSuggestionPendingUnderlineForRange_inContext_forProofreadingSuggestionID_completion___block_invoke;
  v18[3] = &unk_1E70F9248;
  v19 = v15;
  v20 = v11;
  v16 = v11;
  v17 = v15;
  [(UIWritingToolsCoordinator *)self _drawProofreadingUnderlinesForRange:location inContext:length forProofreadingSuggestionID:v13 recordDecorationInfo:v12, v18];
}

uint64_t __126__UIWritingToolsCoordinator__addProofreadSuggestionPendingUnderlineForRange_inContext_forProofreadingSuggestionID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setUnderlineInfo:a2];
  [*(a1 + 32) setHighlightInfo:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)_addProofreadingSuggestionReviewingHighlightForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5
{
  length = a3.length;
  location = a3.location;
  v13 = a4;
  v9 = a5;
  v10 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [v11 highlightInfo];
  if (v12)
  {
    [(UIWritingToolsCoordinator *)self _drawProofreadingHighlightsForRange:location inContext:length forProofreadingSuggestionID:v13, v9];
  }
}

- (void)_removeProofreadingSuggestionPendingUnderlineForPoofreadingSuggestionID:(id)a3
{
  v4 = a3;
  [(UIWritingToolsCoordinator *)self _undrawProofreadingUnderlinesForProofreadingSuggestionID:v4];
  v5 = [(NSMutableDictionary *)self->_proofreadingSuggestionInfos objectForKeyedSubscript:v4];

  [v5 setUnderlineInfo:0];
}

- (void)_removeProofreadingSuggestionReviewingHighlightForProofreadingSuggestionID:(id)a3
{
  v4 = a3;
  [(UIWritingToolsCoordinator *)self _undrawProofreadingHighlightsForProofreadingSuggestionID:v4];
  v5 = [(NSMutableDictionary *)self->_proofreadingSuggestionInfos objectForKeyedSubscript:v4];

  [v5 setHighlightInfo:0];
}

- (void)_populateDecorationContainerViewsForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 completion:(id)a6
{
  length = a3.length;
  v9 = a3.location;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ((*&self->_delegateRespondsTo & 4) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2669 description:@"Don't do this work for single containers"];
  }

  v15 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v16 = [v15 objectForKeyedSubscript:v12];

  v17 = [v16 acceptedEvaluationContext];
  if (v17)
  {
    v29 = v9;
    v30 = length;
    v18 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
    v31 = v13;
    v19 = [v18 objectForKeyedSubscript:v13];

    v20 = [v19 singleContainerSubrangesOfAdjustedOriginalRange];
    v21 = [MEMORY[0x1E695DF90] dictionary];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__UIWritingToolsCoordinator__populateDecorationContainerViewsForRange_inContext_forProofreadingSuggestionID_completion___block_invoke;
    aBlock[3] = &unk_1E70F9298;
    objc_copyWeak(&v39, &location);
    v38 = v14;
    v22 = v21;
    v33 = v22;
    v23 = v20;
    v34 = v23;
    v24 = v19;
    v35 = v24;
    v36 = self;
    v25 = v17;
    v37 = v25;
    v26 = _Block_copy(aBlock);
    v27 = v26;
    if (v23)
    {
      (*(v26 + 2))(v26, v23);
    }

    else
    {
      [(UIWritingToolsCoordinator *)self _executeForSubrangesOfRange:v29 inContext:v30 actions:v25 recordingCustomFillColors:v26, 0];
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    v13 = v31;
  }

  else
  {
    (*(v14 + 2))(v14, MEMORY[0x1E695E0F8]);
  }
}

void __120__UIWritingToolsCoordinator__populateDecorationContainerViewsForRange_inContext_forProofreadingSuggestionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (!*(a1 + 40))
    {
      [*(a1 + 48) setSingleContainerSubrangesOfAdjustedOriginalRange:v3];
    }

    v5 = [WeakRetained decorationContainerView];
    v6 = [v3 objectEnumerator];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__21;
    v29[4] = __Block_byref_object_dispose__21;
    v30 = 0;
    objc_initWeak(&location, WeakRetained);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3042000000;
    v25 = __Block_byref_object_copy__162;
    v26 = __Block_byref_object_dispose__163;
    v27 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__UIWritingToolsCoordinator__populateDecorationContainerViewsForRange_inContext_forProofreadingSuggestionID_completion___block_invoke_2;
    aBlock[3] = &unk_1E70F9270;
    v19 = &v22;
    objc_copyWeak(&v21, &location);
    v18 = *(a1 + 72);
    v14 = *(a1 + 32);
    v20 = v29;
    v7 = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v10 = _Block_copy(aBlock);
    objc_storeWeak(v23 + 5, v10);
    (*(v10 + 2))(v10, 0);

    objc_destroyWeak(&v21);
    _Block_object_dispose(&v22, 8);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v11 = *(a1 + 72);
    v12 = [*(a1 + 32) copy];
    (*(v11 + 16))(v11, v12);
  }
}

void __120__UIWritingToolsCoordinator__populateDecorationContainerViewsForRange_inContext_forProofreadingSuggestionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  v4 = objc_loadWeakRetained((a1 + 88));
  v5 = v4;
  if (WeakRetained)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    [*(a1 + 32) setObject:v14 forKey:?];
  }

  v7 = [*(a1 + 40) nextObject];
  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
LABEL_9:
    v13 = *(a1 + 64);
    v10 = [*(a1 + 32) copy];
    (*(v13 + 16))(v13, v10);
  }

  else
  {
    v10 = objc_loadWeakRetained((*(a1 + 48) + 200));
    v11 = [*(*(*(a1 + 80) + 8) + 40) rangeValue];
    [v10 writingToolsCoordinator:v5 requestsDecorationContainerViewForRange:v11 inContext:v12 completion:{*(a1 + 56), WeakRetained}];
  }
}

- (void)_updateProofreadingDecorationViewsWithUnderlineInfo:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 containers];
    v6 = [v5 objectEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * v10) _proofreadingDecorationView];
          [v11 addDecorationInfo:v4];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (_UIWTCProofreadingDecorationView)_preparedProofreadingDecorationViewInContainer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _proofreadingDecorationView];
    if (!v5)
    {
      v6 = [_UIWTCProofreadingDecorationView alloc];
      [v4 bounds];
      v5 = [(_UIWTCProofreadingDecorationView *)v6 initWithFrame:?];
      [(UIView *)v5 setAutoresizingMask:18];
      [v4 _setProofreadingDecorationView:v5];
    }

    v7 = [(UIView *)v5 superview];

    if (v7 != v4)
    {
      [v4 bounds];
      [(UIView *)v5 setFrame:?];
      [v4 addSubview:v5];
      v8 = *(a1 + 8);
      if (!v8)
      {
        v9 = [MEMORY[0x1E695DFA8] set];
        v10 = *(a1 + 8);
        *(a1 + 8) = v9;

        v8 = *(a1 + 8);
      }

      [v8 addObject:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_drawProofreadingUnderlinesForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5 recordDecorationInfo:(id)a6
{
  length = a3.length;
  v9 = a3.location;
  location[3] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v30 = a5;
  v31 = a6;
  v12 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v13 = [v12 objectForKeyedSubscript:v11];

  v14 = [v13 acceptedEvaluationContext];
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    v22 = [(UIWritingToolsCoordinator *)self delegate];
    objc_initWeak(location, v22);
    objc_initWeak(&from, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke;
    v39[3] = &unk_1E70F9310;
    objc_copyWeak(&v43, location);
    objc_copyWeak(&v44, &from);
    v42 = v31;
    v40 = v30;
    v41 = v14;
    [(UIWritingToolsCoordinator *)self _populateDecorationContainerViewsForRange:v9 inContext:length forProofreadingSuggestionID:v11 completion:v40, v39];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);

    goto LABEL_7;
  }

  v15 = [(UIWritingToolsCoordinator *)self decorationContainerView];
  v16 = [v15 _window];

  if (v16)
  {
    goto LABEL_5;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v15)
  {
    if (has_internal_diagnostics)
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
      {
        if (byte_1EA95E184)
        {
          v26 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB58) + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location[0]) = 138412290;
            *(location + 4) = v15;
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "***WARNING*** decorationContainerView is not yet in the window hierarchy. Proofreading underlines will not appear until the client moves it into the hierarchy. decorationContainerView=%@", location, 0xCu);
          }
        }
      }
    }

LABEL_5:
    v29 = [(UIWritingToolsCoordinator *)self _preparedProofreadingDecorationViewInContainer:v15];
    v18 = [MEMORY[0x1E696B098] valueWithRange:{v9, length}];
    objc_initWeak(location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_290;
    v32[3] = &unk_1E70F9360;
    objc_copyWeak(v38, location);
    v37 = v31;
    v33 = v30;
    v20 = v18;
    v34 = v20;
    v21 = v15;
    v35 = v21;
    v38[1] = v9;
    v38[2] = length;
    v36 = v14;
    [WeakRetained writingToolsCoordinator:self requestsUnderlinePathsForRange:v9 inContext:length completion:{v36, v32}];

    objc_destroyWeak(v38);
    objc_destroyWeak(location);

    goto LABEL_7;
  }

  if (has_internal_diagnostics)
  {
    v27 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = [(UIWritingToolsCoordinator *)self delegate];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v28;
      _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "No view available for drawing proofreading underlines. UIWritingToolsCoordinatorDelegate %@ does not respond to -writingToolsCoordinator:requestsDecorationContainerViewForRange:inContext:completion: and therefore must assign a non-nil value to the coordinator's decorationContainerView property.", location, 0xCu);
    }
  }

  else
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CB60) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      v25 = [(UIWritingToolsCoordinator *)self delegate];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "No view available for drawing proofreading underlines. UIWritingToolsCoordinatorDelegate %@ does not respond to -writingToolsCoordinator:requestsDecorationContainerViewForRange:inContext:completion: and therefore must assign a non-nil value to the coordinator's decorationContainerView property.", location, 0xCu);
    }
  }

  (*(v31 + 2))(v31, 0, 0);
LABEL_7:
}

void __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = objc_loadWeakRetained(a1 + 8);
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7 = [v3 keyEnumerator];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__21;
    v43[4] = __Block_byref_object_dispose__21;
    v44 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__21;
    v41[4] = __Block_byref_object_dispose__21;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__21;
    v39 = __Block_byref_object_dispose__21;
    v40 = [v7 nextObject];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3042000000;
    v32 = __Block_byref_object_copy__162;
    v33 = __Block_byref_object_dispose__163;
    v34 = 0;
    objc_initWeak(&location, WeakRetained);
    objc_initWeak(&from, v6);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_2;
    v15 = &unk_1E70F92E8;
    v21 = &v29;
    objc_copyWeak(&v25, &location);
    objc_copyWeak(&v26, &from);
    v20 = a1[6];
    v16 = v3;
    v22 = &v35;
    v23 = v43;
    v17 = a1[4];
    v18 = a1[5];
    v24 = v41;
    v8 = v7;
    v19 = v8;
    v9 = _Block_copy(&v12);
    objc_storeWeak(v30 + 5, v9);
    v10 = [v36[5] rangeValue];
    [WeakRetained writingToolsCoordinator:v6 requestsUnderlinePathsForRange:v10 inContext:v11 completion:{a1[5], v9}];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v29, 8);
    objc_destroyWeak(&v34);
    _Block_object_dispose(&v35, 8);

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  v5 = objc_loadWeakRetained((a1 + 104));
  v6 = objc_loadWeakRetained((a1 + 112));
  v7 = v6;
  if (v5 && v6 && WeakRetained && [v3 count])
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
    v25 = [(UIWritingToolsCoordinator *)v7 _preparedProofreadingDecorationViewInContainer:v8];
    v9 = *(*(*(a1 + 88) + 8) + 40);
    if (v9)
    {
      [v9 addPaths:v3 withContainer:v8 forRange:*(*(*(a1 + 80) + 8) + 40)];
    }

    else
    {
      v10 = *(a1 + 40);
      v41[0] = *(*(*(a1 + 80) + 8) + 40);
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      v39 = *(*(*(a1 + 80) + 8) + 40);
      v40 = v3;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v38 = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v14 = [_UIWTCProofreadingDecorationInfo underlineInfoWithIdentifier:v10 ranges:v11 decorationPaths:v12 containers:v13];
      v15 = *(*(a1 + 88) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    v17 = [*(*(*(a1 + 80) + 8) + 40) rangeValue];
    v19 = v18;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_3;
    v26[3] = &unk_1E70F92C0;
    v35 = *(a1 + 96);
    v20 = *(a1 + 48);
    v21 = *(a1 + 40);
    v36 = *(a1 + 80);
    v27 = v21;
    v28 = v8;
    v29 = *(a1 + 56);
    v30 = v5;
    v31 = v7;
    v32 = *(a1 + 48);
    v22 = WeakRetained;
    v23 = *(a1 + 88);
    v33 = v22;
    v37 = v23;
    v34 = *(a1 + 64);
    v24 = v8;
    [v30 writingToolsCoordinator:v7 requestsBoundingBezierPathsForRange:v17 inContext:v19 completion:{v20, v26}];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(*(*(a1 + 96) + 8) + 40);
    if (v4)
    {
      [v4 addPaths:v3 withContainer:*(a1 + 40) forRange:*(*(*(a1 + 104) + 8) + 40)];
    }

    else
    {
      v5 = *(a1 + 32);
      v23[0] = *(*(*(a1 + 104) + 8) + 40);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v21 = *(*(*(a1 + 104) + 8) + 40);
      v22 = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v20 = *(a1 + 40);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v9 = [_UIWTCProofreadingDecorationInfo highlightInfoWithIdentifier:v5 ranges:v6 decorationPaths:v7 containers:v8];
      v10 = *(*(a1 + 96) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = [*(a1 + 48) nextObject];
    v13 = *(*(a1 + 104) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 104) + 8) + 40);
    if (v15)
    {
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = [v15 rangeValue];
      [v16 writingToolsCoordinator:v17 requestsUnderlinePathsForRange:v18 inContext:v19 completion:{*(a1 + 72), *(a1 + 80)}];
    }

    else
    {
      [(UIWritingToolsCoordinator *)*(a1 + 64) _updateProofreadingDecorationViewsWithUnderlineInfo:?];
      (*(*(a1 + 88) + 16))();
    }
  }
}

void __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_290(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && [v3 count])
  {
    v5 = *(a1 + 32);
    v25[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v23 = *(a1 + 40);
    v24 = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = *(a1 + 48);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v9 = [_UIWTCProofreadingDecorationInfo underlineInfoWithIdentifier:v5 ranges:v6 decorationPaths:v7 containers:v8];

    v10 = [WeakRetained delegate];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__21;
    v20[4] = __Block_byref_object_dispose__21;
    v21 = 0;
    if (v10)
    {
      v11 = *(a1 + 56);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_2_291;
      v12[3] = &unk_1E70F9338;
      v19 = v20;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = WeakRetained;
      v17 = v9;
      v18 = *(a1 + 64);
      [v10 writingToolsCoordinator:WeakRetained requestsBoundingBezierPathsForRange:*(a1 + 80) inContext:*(a1 + 88) completion:{v11, v12}];
    }

    else
    {
      [(UIWritingToolsCoordinator *)WeakRetained _updateProofreadingDecorationViewsWithUnderlineInfo:v9];
      (*(*(a1 + 64) + 16))();
    }

    _Block_object_dispose(v20, 8);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __124__UIWritingToolsCoordinator__drawProofreadingUnderlinesForRange_inContext_forProofreadingSuggestionID_recordDecorationInfo___block_invoke_2_291(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v14[0] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = *(a1 + 40);
    v13 = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v8 = [_UIWTCProofreadingDecorationInfo highlightInfoWithIdentifier:v4 ranges:v5 decorationPaths:v6 containers:v7];
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  [(UIWritingToolsCoordinator *)*(a1 + 56) _updateProofreadingDecorationViewsWithUnderlineInfo:?];
  (*(*(a1 + 72) + 16))();
}

- (void)_drawProofreadingHighlightsForRange:(_NSRange)a3 inContext:(id)a4 forProofreadingSuggestionID:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v27 = v6;
  v8 = [v7 objectForKeyedSubscript:v6];

  v28 = v8;
  v9 = [v8 highlightInfo];
  v10 = [v9 containers];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v9 ranges];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138412290;
    v26 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = [v10 objectForKey:{v17, v26}];
        v19 = [v18 _window];

        if (v19)
        {
          goto LABEL_9;
        }

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (v18)
        {
          if (has_internal_diagnostics)
          {
            if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
            {
              if (byte_1EA95E184)
              {
                v23 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49CB68) + 8);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = v26;
                  v34 = v18;
                  _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "***WARNING*** decorationContainerView is not yet in the window hierarchy. Reviewing highlights will not appear until the client moves it into the hierarchy. decorationContainerView=%@", buf, 0xCu);
                }
              }
            }
          }

LABEL_9:
          v21 = [(UIWritingToolsCoordinator *)self _preparedProofreadingDecorationViewInContainer:v18];
          [v21 addDecorationInfo:v9];

          goto LABEL_10;
        }

        if (has_internal_diagnostics)
        {
          v24 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v34 = v17;
            v35 = 2112;
            v36 = v28;
            _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Unexpectedly lost the decoration container for range, %@, for proofreading suggestion %@. Reviewing highlight may be missing. This is a UIKit bug.", buf, 0x16u);
          }
        }

        else
        {
          v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CB70) + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v34 = v17;
            v35 = 2112;
            v36 = v28;
            _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Unexpectedly lost the decoration container for range, %@, for proofreading suggestion %@. Reviewing highlight may be missing. This is a UIKit bug.", buf, 0x16u);
          }
        }

LABEL_10:

        ++v16;
      }

      while (v14 != v16);
      v25 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v14 = v25;
    }

    while (v25);
  }
}

- (void)_undrawProofreadingUnderlinesForProofreadingSuggestionID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_proofreadingSuggestionInfos objectForKeyedSubscript:v4];
  v6 = [v5 underlineInfo];

  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [v6 containers];
    v9 = [v8 objectEnumerator];
    v10 = [v9 allObjects];
    v11 = [v7 setWithArray:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * v16) _proofreadingDecorationView];
          [v17 removeDecorationInfo:v6];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v14);
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
    {
      if (byte_1EA95E184)
      {
        v18 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_undrawProofreadingUnderlinesForProofreadingSuggestionID____s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v4;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Asked to undraw an underline that's missing from the index. Hopefully it's already been undrawn. Associated proofreadingSuggestionID = %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)_undrawProofreadingHighlightsForProofreadingSuggestionID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_proofreadingSuggestionInfos objectForKeyedSubscript:v4];
  v6 = [v5 highlightInfo];

  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [v6 containers];
    v9 = [v8 objectEnumerator];
    v10 = [v9 allObjects];
    v11 = [v7 setWithArray:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * v16) _proofreadingDecorationView];
          [v17 removeDecorationInfo:v6];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v14);
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
    {
      if (byte_1EA95E184)
      {
        v18 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_undrawProofreadingHighlightsForProofreadingSuggestionID____s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v4;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Asked to undraw a highlight that's missing from the index. Hopefully it's already been undrawn. Associated proofreadingSuggestionID = %@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)_replacementTrackerForContextID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_trackingInfos objectForKeyedSubscript:a3];
  v4 = [v3 replacementTracker];

  return v4;
}

- (void)_updateProofreadingDeliveryWithReplacement:(id)a3 accordingToProofreadingSuggestionWithIdentifier:(id)a4 replacingCharactersInRange:(_NSRange)a5 newState:(int64_t)a6 contextID:(id)a7
{
  length = a5.length;
  location = a5.location;
  v14 = a3;
  [(NSMutableArray *)self->_proofreadingDeliverySuggestionIDs addObject:a4];
  v12 = location - self->_proofreadingDeliveryOffset;
  if (v12 < 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinator.m" lineNumber:2951 description:@"Range calculation error for accumulating proofreading replacements"];
  }

  [(NSMutableAttributedString *)self->_proofreadingDeliveryReplacement replaceCharactersInRange:v12 withAttributedString:length, v14];
}

- (void)_delegateUpdateTextAccordingToProofreadingSuggestionInfoWithIdentifier:(id)a3 replacingCharactersInRange:(_NSRange)a4 newState:(int64_t)a5 contextID:(id)a6 updateCompletion:(id)a7
{
  length = a4.length;
  v11 = a4.location;
  v13 = a3;
  v14 = a6;
  v45 = a7;
  self->_proofreadingVisualizationReplacementDelta = 0;
  v15 = [(UIWritingToolsCoordinator *)self _trackingInfos];
  v16 = [v15 objectForKeyedSubscript:v14];

  v44 = [v16 replacementTracker];
  v17 = [v16 acceptedEvaluationContext];
  v41 = [v17 evaluatedRange];
  v18 = [v16 currentProofreadingText];
  v39 = v11;
  v40 = length;
  v46 = [v18 attributedSubstringFromRange:{v11, length}];
  v19 = [(UIWritingToolsCoordinator *)self _proofreadingSuggestionInfos];
  v20 = v13;
  v21 = [v19 objectForKeyedSubscript:v13];

  v22 = a5;
  v43 = v21;
  if (a5 == 3)
  {
    v23 = [v21 originalRange];
    v25 = v24;
    [v44 proofreadingController];
    v36 = v17;
    v27 = v26 = v14;
    [v27 contextString];
    v28 = v18;
    v30 = v29 = v20;
    v31 = [v30 attributedSubstringFromRange:{v23 + v41, v25}];

    v20 = v29;
    v18 = v28;

    v14 = v26;
    v17 = v36;
  }

  else
  {
    v31 = [v21 attributedString];
  }

  if (self->_includesTextListMarkers)
  {
    goto LABEL_5;
  }

  if (![v46 isEqualToAttributedString:v31])
  {
    v42 = v14;
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __163__UIWritingToolsCoordinator__delegateUpdateTextAccordingToProofreadingSuggestionInfoWithIdentifier_replacingCharactersInRange_newState_contextID_updateCompletion___block_invoke;
    aBlock[3] = &unk_1E70F9388;
    objc_copyWeak(v52, location);
    v33 = v31;
    v48 = v33;
    v52[1] = a2;
    v38 = v18;
    v49 = v18;
    v52[2] = v39;
    v52[3] = v40;
    v50 = v46;
    v51 = v45;
    v34 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained writingToolsCoordinator:self replaceRange:v39 inContext:v40 proposedText:v17 reason:v33 animationParameters:1 completion:{0, v34}];

    objc_destroyWeak(v52);
    objc_destroyWeak(location);
    v14 = v42;
    v18 = v38;
    goto LABEL_12;
  }

  if (self->_includesTextListMarkers || [v43 state] != v22)
  {
LABEL_5:
    v32 = [v31 length];
    self->_proofreadingVisualizationReplacementDelta = v32 - [v46 length];
  }

  (*(v45 + 2))(v45, v31);
LABEL_12:
}

void __163__UIWritingToolsCoordinator__delegateUpdateTextAccordingToProofreadingSuggestionInfoWithIdentifier_replacingCharactersInRange_newState_contextID_updateCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v10)
    {
      v4 = [v10 string];
      v5 = [*(a1 + 32) string];
      v6 = v4;
      v7 = v5;
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        if (v6 && v7)
        {
          v9 = [v6 isEqual:v7];

          if (v9)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:*(a1 + 72) object:WeakRetained file:@"UIWritingToolsCoordinator.m" lineNumber:2981 description:@"Writing Tools Coordinator doesn't yet handle client adjustments to proofreading results"];
      }
    }

LABEL_12:
    [*(a1 + 40) replaceCharactersInRange:*(a1 + 80) withAttributedString:{*(a1 + 88), *(a1 + 32)}];
    [WeakRetained _setProofreadingVisualizationReplacementDelta:{objc_msgSend(*(a1 + 32), "length") - objc_msgSend(*(a1 + 48), "length")}];
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_replacementTracker
{
  v2 = [(NSMutableDictionary *)self->_trackingInfos objectEnumerator];
  v3 = [v2 allObjects];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 replacementTracker];

  return v5;
}

- (WTTextViewDelegate_Proposed_v1)_sessionTextViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTextViewDelegate);

  return WeakRetained;
}

- (UIWritingToolsCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didDismissWritingTools
{
  if (!self->_isStartingRetry && !self->_inFlightDeliveryID)
  {
    [(UIWritingToolsCoordinator *)self _sessionCleanup];
  }
}

@end