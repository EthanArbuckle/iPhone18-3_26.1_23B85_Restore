@interface SiriSharedUISystemAssistantExperienceContainerView
- (BOOL)attemptToApplySDFMask;
- (BOOL)hasLoadingViews;
- (BOOL)isDisplayingResponse;
- (BOOL)isExternalKeyboardPresented;
- (BOOL)isFirstSnippet;
- (BOOL)isInVoiceLatency;
- (BOOL)loadingToResultRequiresMerge;
- (BOOL)resultEligibleForLightEffects;
- (BOOL)shouldExecuteContinuerAction:(int64_t)a3;
- (BOOL)shouldPreserveResultSpace;
- (BOOL)showsSensitiveUI;
- (CGRect)frame;
- (CGSize)defaultLoadingPillSize;
- (CGSize)previousResultSize;
- (CGSize)resultSize;
- (NSArray)suggestionContentViewsToRemove;
- (NSDictionary)backgroundColorAsyncDict;
- (NSDictionary)originalViewSizeDict;
- (SiriSharedUISystemAssistantExperienceContainerViewDelegate)delegate;
- (UIView)resultViewContainer;
- (double)bottomContentInset;
- (double)textFieldHeight;
- (double)userUtteranceViewHeight;
- (id)createDefaultMaterialBackgroundView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)transitionToRemovedResponseElements:(unint64_t)a3;
- (int64_t)inputType;
- (unint64_t)presentedResponseElements;
- (void)applyDestOverFilter:(BOOL)a3;
- (void)applyPressTransformAnimationToSuggestionTo:(id)a3 from:(double)a4 to:(double)a5 duration:(double)a6;
- (void)cleanupBottomFloatingButtonIfNeeded;
- (void)cleanupLoadingTransitionIfNeeded;
- (void)cleanupResponseElementsByIds:(id)a3;
- (void)cleanupResultTransitionIfNeeded;
- (void)cleanupResultView;
- (void)clearResultViewAndBackground;
- (void)didDismissResults;
- (void)finalizePopAnimationOfType:(int64_t)a3;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)mitoseWithDuration:(float)a3 mitosingIntoSnippet:(BOOL)a4;
- (void)performAnimatedBlur:(int64_t)a3 usingSpringWithMass:(double)a4 stiffness:(double)a5 damping:(double)a6;
- (void)performAnimatedBlur:(int64_t)a3 withDuration:(double)a4;
- (void)pillMergeContinuerWithIndex:(int64_t)a3;
- (void)postPillMergeBounce;
- (void)preFollowupPulseWithDuration:(float)a3;
- (void)prepSuggestionContentViewForAnimation:(id)a3 :(id)a4 :(id)a5 :(CGSize)a6 :(BOOL)a7 :(int64_t)a8;
- (void)prepareForDrillinAnimation;
- (void)prepareForPillMergeContinuerWithIndex:(int64_t)a3;
- (void)prepareForPopAnimationOfType:(int64_t)a3;
- (void)reduceMotionCarouselWithDuration:(float)a3 isFirstSnippet:(BOOL)a4;
- (void)reduceMotionMitosisWithDuration:(float)a3 intoSnippet:(BOOL)a4;
- (void)removeContinuerPill;
- (void)removeContinuerSuggestions;
- (void)removeSuggestions;
- (void)removeSuggestionsForDrillIn;
- (void)restoreSubviewsFromDrillIn;
- (void)safeAreaInsetsDidChange;
- (void)searchUIBackgroundColorUpdateSuccessful:(BOOL)a3;
- (void)setBackgroundColorAsyncDict:(id)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setBottomFloatingButton:(id)a3;
- (void)setBottomFloatingButtonView:(id)a3;
- (void)setCollapseLoadingView:(id)a3;
- (void)setCollapseLoadingWith:(id)a3 collapseLoadingSize:(CGSize)a4;
- (void)setContinuerPill:(id)a3;
- (void)setExposureStateIfInViewWithAvailableMaxWidth:(double)a3 suggestionWidths:(id)a4 suggestionsInset:(double)a5;
- (void)setFrame:(CGRect)a3;
- (void)setGradientLayer:(id)a3;
- (void)setInputType:(int64_t)a3;
- (void)setIsExternalKeyboardPresented:(BOOL)a3;
- (void)setIsFirstSnippet:(BOOL)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInVoiceLatency:(BOOL)a3;
- (void)setMergedResultsForTransition;
- (void)setOriginalViewSizeDict:(id)a3;
- (void)setPairedSmartDialogViewForBackground:(id)a3;
- (void)setPreviousResultView:(id)a3;
- (void)setResultEligibleForLightEffects:(BOOL)a3;
- (void)setResultView:(id)a3;
- (void)setResultWithResultView:(id)a3 resultSize:(CGSize)a4 eligibleForLightEffects:(BOOL)a5;
- (void)setShouldPreserveResultSpace:(BOOL)a3;
- (void)setShowsSensitiveUI:(BOOL)a3;
- (void)setSnippetBackgroundView:(id)a3;
- (void)setSnippetSuggestionPageantView:(id)a3;
- (void)setSuggestionContentViewsToRemove:(id)a3;
- (void)setTextFieldHeight:(double)a3;
- (void)setTextFieldLoadingView:(id)a3;
- (void)setTextFieldView:(id)a3;
- (void)setTextFieldWithTextFieldView:(id)a3;
- (void)setTransitionLoadingToResultWithResultSize:(CGSize)a3;
- (void)setUserUtteranceViewHeight:(double)a3;
- (void)setVoiceLoading:(id)a3;
- (void)setVoiceLoadingView:(id)a3;
- (void)setVoiceLoadingWith:(id)a3 voiceLoadingSize:(CGSize)a4;
- (void)startLatencyLightOnActivePill;
- (void)stopLatencyBreathingLoop;
- (void)suggestionTapAnimationWithIndex:(int64_t)a3 isTouchUp:(BOOL)a4;
- (void)suggestionsMitose;
- (void)transitionFromResultToCollapseLoading;
- (void)transitionMergedResults;
- (void)transitionSuggestionToLoadingWithIndex:(int64_t)a3;
- (void)transitionTextFieldLoadingToLoading;
- (void)transitionToResult;
- (void)transitionToSuggestionsCollapsed;
- (void)transitionToSuggestionsCollapsedWithIndex:(int64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)transitionToSuggestionsExpanded;
- (void)transitionToUpdatedContentInset;
- (void)transitionVoiceLoadingToLoading;
- (void)updateBackgroundView:(id)a3 smartDialogView:(id)a4 isSnippetAsyncColored:(BOOL)a5;
- (void)updateBottomFloatingButtonVisibility:(BOOL)a3;
- (void)updateKeyboardLightEffects:(BOOL)a3;
- (void)updateLoadingPillSizeWithCandidateSize:(CGSize)a3;
- (void)updateResultSizeWithResultSize:(CGSize)a3;
@end

@implementation SiriSharedUISystemAssistantExperienceContainerView

- (double)textFieldHeight
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTextFieldHeight:(double)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)userUtteranceViewHeight
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserUtteranceViewHeight:(double)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isExternalKeyboardPresented
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsExternalKeyboardPresented:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldPreserveResultSpace
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldPreserveResultSpace:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)createDefaultMaterialBackgroundView
{
  v2 = self;
  v3 = [(SiriSharedUISystemAssistantExperienceContainerView *)v2 traitCollection];
  [v3 userInterfaceStyle];

  v4 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
  v5 = sub_21E4523C4(1);

  return v5;
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = x;
  v12[3] = y;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = sub_21E4DD158();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21E4E9750;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21E4E9760;
  v15[5] = v14;
  v16 = self;
  sub_21E4CF930(0, 0, v10, &unk_21E4E9770, v15);
}

- (BOOL)isDisplayingResponse
{
  v2 = self;
  v3 = [(SiriSharedUISystemAssistantExperienceContainerView *)v2 resultView];
  if (v3)
  {

    return 1;
  }

  else
  {
    v5 = [(SiriSharedUISystemAssistantExperienceContainerView *)v2 loadingViews];
    type metadata accessor for SiriSharedUIDropletContainerView();
    v6 = sub_21E4DD088();

    if (v6 >> 62)
    {
      v7 = sub_21E4DD488();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 != 0;
  }
}

- (unint64_t)presentedResponseElements
{
  v2 = self;
  v3 = SiriSharedUISystemAssistantExperienceContainerView.presentedResponseElements()();

  return v3;
}

- (void)setTextFieldWithTextFieldView:(id)a3
{
  v5 = a3;
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.setTextField(textFieldView:)(a3);
}

- (void)removeSuggestions
{
  sub_21E43F008(0, &qword_280C140A0);
  v4 = self;
  v3 = sub_21E4DD078();
  [(SiriSharedUISystemAssistantExperienceContainerView *)v4 setSuggestions:v3];
}

- (void)removeSuggestionsForDrillIn
{
  v3 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3 delegate];
  if (v2)
  {
    [(SiriSharedUISystemAssistantExperienceContainerViewDelegate *)v2 fadeOutContinuerSuggestionsForDrillIn];
    swift_unknownObjectRelease();
  }
}

- (void)removeContinuerSuggestions
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.removeContinuerSuggestions()();
}

- (void)setVoiceLoading:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4B9B14(v4, 0, 0, 1);
}

- (void)setVoiceLoadingWith:(id)a3 voiceLoadingSize:(CGSize)a4
{
  v5 = *&a4.width;
  v6 = *&a4.height;
  v7 = a3;
  v8 = self;
  sub_21E4B9B14(v7, v5, v6, 0);
}

- (void)setCollapseLoadingWith:(id)a3 collapseLoadingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  SiriSharedUISystemAssistantExperienceContainerView.setCollapseLoading(collapseLoading:collapseLoadingSize:)(v7, __PAIR128__(*&height, *&width));
}

- (void)setBottomFloatingButton:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriSharedUISystemAssistantExperienceContainerView.setBottomFloatingButton(_:)(v4);
}

- (void)updateBottomFloatingButtonVisibility:(BOOL)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateBottomFloatingButtonVisibility(_:)(a3);
}

- (void)cleanupBottomFloatingButtonIfNeeded
{
  v2 = self;
  v3 = [(SiriSharedUISystemAssistantExperienceContainerView *)v2 bottomFloatingButtonView];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
    v5 = v3;
    swift_beginAccess();
    *(&v5->super.super.super.super.isa + v4) = 1;
  }

  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 layoutIfNeeded];
}

- (void)setResultWithResultView:(id)a3 resultSize:(CGSize)a4 eligibleForLightEffects:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = self;
  SiriSharedUISystemAssistantExperienceContainerView.setResult(resultView:resultSize:eligibleForLightEffects:)(v9, __PAIR128__(*&height, *&width), a5);
}

- (void)updateResultSizeWithResultSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateResultSize(resultSize:)(__PAIR128__(*&height, *&width));
}

- (void)updateLoadingPillSizeWithCandidateSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateLoadingPillSize(withCandidateSize:)(__PAIR128__(*&height, *&width));
}

- (void)setTransitionLoadingToResultWithResultSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  SiriSharedUISystemAssistantExperienceContainerView.setTransitionLoadingToResult(resultSize:)(__PAIR128__(*&height, *&width));
}

- (void)setMergedResultsForTransition
{
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 2;
  v2 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 layoutIfNeeded];
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (*(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) != a3)
  {
    *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) = a3;
    [(SiriSharedUISystemAssistantExperienceContainerView *)self setNeedsLayout];
  }
}

- (void)updateKeyboardLightEffects:(BOOL)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateKeyboardLightEffects(_:)(a3);
}

- (SiriSharedUISystemAssistantExperienceContainerViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)inputType
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInputType:(int64_t)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)showsSensitiveUI
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsSensitiveUI:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)bottomContentInset
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBottomContentInset:(double)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isFirstSnippet
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFirstSnippet:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isInVoiceLatency
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInVoiceLatency:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setGradientLayer:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer) = a3;
  v3 = a3;
}

- (BOOL)resultEligibleForLightEffects
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResultEligibleForLightEffects:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)loadingToResultRequiresMerge
{
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)self previousResultView];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (BOOL)hasLoadingViews
{
  v2 = self;
  v3 = [(SiriSharedUISystemAssistantExperienceContainerView *)v2 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView();
  v4 = sub_21E4DD088();

  if (v4 >> 62)
  {
    v5 = sub_21E4DD488();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

- (void)cleanupResultTransitionIfNeeded
{
  v4 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 previousResultView];
  if (v2)
  {
    v3 = v2;
    sub_21E4B5BE0(v2);
  }

  [(SiriSharedUISystemAssistantExperienceContainerView *)v4 setPreviousResultView:0];
}

- (void)cleanupLoadingTransitionIfNeeded
{
  v3 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3 voiceLoadingView];
  [(SiriSharedUIDropletContainerView *)v2 removeFromSuperview];
}

- (void)cleanupResponseElementsByIds:(id)a3
{
  sub_21E4DB698();
  v4 = sub_21E4DD088();
  v5 = self;
  SiriSharedUISystemAssistantExperienceContainerView.cleanupResponseElements(by:)(v4);
}

- (void)cleanupResultView
{
  v4 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)v4 cleanupResultTransitionIfNeeded];
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 resultView];
  if (v2)
  {
    v3 = v2;
    sub_21E4B5BE0(v2);
    [(SiriSharedUISystemAssistantExperienceContainerView *)v4 setResultView:0];
  }
}

- (BOOL)shouldExecuteContinuerAction:(int64_t)a3
{
  v4 = self;
  v5 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 continuerSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView();
  v6 = sub_21E4DD088();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223D5B080](a3, v6);
    goto LABEL_5;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v8 = *(v6 + 8 * a3 + 32);
LABEL_5:
    v9 = v8;

    v10 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
    swift_beginAccess();
    LOBYTE(v10) = v9[v10];

    return v10;
  }

  __break(1u);
  return result;
}

- (void)prepareForPillMergeContinuerWithIndex:(int64_t)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForPillMergeContinuerWith(index:)(a3);
}

- (void)pillMergeContinuerWithIndex:(int64_t)a3
{
  v3 = self;
  _sSo50SiriSharedUISystemAssistantExperienceContainerViewC0aB2UIE22pillMergeContinuerWith5indexySi_tF_0();
}

- (void)removeContinuerPill
{
  v4 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 continuerPill];
  if (v2)
  {
    v3 = v2;
    [(SiriSharedUIDropletContainerView *)v2 removeFromSuperview];
    [*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView) removeFromSuperview];
    [(SiriSharedUISystemAssistantExperienceContainerView *)v4 setContinuerPill:0];
  }
}

- (void)suggestionTapAnimationWithIndex:(int64_t)a3 isTouchUp:(BOOL)a4
{
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.suggestionTapAnimationWith(index:isTouchUp:)(a3, a4);
}

- (void)applyPressTransformAnimationToSuggestionTo:(id)a3 from:(double)a4 to:(double)a5 duration:(double)a6
{
  v10 = a3;
  v11 = self;
  sub_21E4D2264(v10, a4, a5, a6);
}

- (void)transitionToSuggestionsExpanded
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsExpanded()();
}

- (void)prepSuggestionContentViewForAnimation:(id)a3 :(id)a4 :(id)a5 :(CGSize)a6 :(BOOL)a7 :(int64_t)a8
{
  v9 = a7;
  width = a6.width;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = self;
  sub_21E4BFD70(v14, v15, v16, v9, a8, width);
}

- (void)transitionToSuggestionsCollapsedWithIndex:(int64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsCollapsedWith(index:animated:completionBlock:)(a3, a4, sub_21E4D21E4, v9);
}

- (void)transitionToSuggestionsCollapsed
{
  v2 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setSuggestionsExpanded:0];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 layoutIfNeeded];
}

- (void)transitionSuggestionToLoadingWithIndex:(int64_t)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionSuggestionToLoading(index:)(a3);
}

- (void)transitionVoiceLoadingToLoading
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionVoiceLoadingToLoading()();
}

- (void)startLatencyLightOnActivePill
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.startLatencyLightOnActivePill()();
}

- (void)transitionTextFieldLoadingToLoading
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionTextFieldLoadingToLoading()();
}

- (id)transitionToRemovedResponseElements:(unint64_t)a3
{
  v3 = a3;
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transition(toRemovedResponseElements:)(v3);

  sub_21E4DB698();
  v5 = sub_21E4DD078();

  return v5;
}

- (void)stopLatencyBreathingLoop
{
  v4 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 resultView];
  if (v2)
  {
    v3 = v2;
    sub_21E4D5550();
  }
}

- (void)transitionMergedResults
{
  v3 = self;
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3 previousResultView];
  if (v2)
  {

    *(v3 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 1;
    [(SiriSharedUISystemAssistantExperienceContainerView *)v3 setNeedsLayout];
    [(SiriSharedUISystemAssistantExperienceContainerView *)v3 layoutIfNeeded];
  }
}

- (void)transitionToResult
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToResult()();
}

- (void)transitionFromResultToCollapseLoading
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionFromResultToCollapseLoading()();
}

- (void)transitionToUpdatedContentInset
{
  v2 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 layoutIfNeeded];
}

- (void)clearResultViewAndBackground
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.clearResultViewAndBackground()();
}

- (void)prepareForDrillinAnimation
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForDrillinAnimation()();
}

- (void)restoreSubviewsFromDrillIn
{
  v4 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)v4 updateBottomFloatingButtonVisibility:1];
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v4 bottomFloatingButtonView];
  if (v2)
  {
    v3 = v2;
    sub_21E4D652C();
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForPopAnimation(ofType:)(a3);
}

- (void)finalizePopAnimationOfType:(int64_t)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.finalizePopAnimation(ofType:)(a3);
}

- (void)didDismissResults
{
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)self fluidDismissalManager];
  *(&v2->super.isa + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing) = 0;
}

- (UIView)resultViewContainer
{
  v2 = [(SiriSharedUISystemAssistantExperienceContainerView *)self resultView];

  return v2;
}

- (void)updateBackgroundView:(id)a3 smartDialogView:(id)a4 isSnippetAsyncColored:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateBackgroundView(_:smartDialogView:isSnippetAsyncColored:)(v8, a4, a5);
}

- (void)searchUIBackgroundColorUpdateSuccessful:(BOOL)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.searchUIBackgroundColorUpdateSuccessful(_:)(a3);
}

- (void)setTextFieldView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView) = a3;
  v3 = a3;
}

- (NSArray)suggestionContentViewsToRemove
{
  sub_21E43F008(0, &qword_280C140A0);

  v2 = sub_21E4DD078();

  return v2;
}

- (void)setSuggestionContentViewsToRemove:(id)a3
{
  sub_21E43F008(0, &qword_280C140A0);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionContentViewsToRemove) = sub_21E4DD088();
}

- (void)setResultView:(id)a3
{
  v6 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView) = a3;
  v4 = a3;
  v5 = self;
  sub_21E4C4880(v6);
}

- (void)setBottomFloatingButtonView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView) = a3;
  v3 = a3;
}

- (NSDictionary)originalViewSizeDict
{
  type metadata accessor for SiriSharedUIDropletContainerView();
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView);

  v2 = sub_21E4DCE88();

  return v2;
}

- (void)setOriginalViewSizeDict:(id)a3
{
  type metadata accessor for SiriSharedUIDropletContainerView();
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_originalViewSizeDict) = sub_21E4DCE98();
}

- (void)setPreviousResultView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView) = a3;
  v3 = a3;
}

- (void)setVoiceLoadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView) = a3;
  v3 = a3;
}

- (void)setTextFieldLoadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView) = a3;
  v3 = a3;
}

- (void)setCollapseLoadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView) = a3;
  v3 = a3;
}

- (void)setContinuerPill:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill) = a3;
  v3 = a3;
}

- (void)setSnippetSuggestionPageantView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView) = a3;
  v3 = a3;
}

- (CGSize)previousResultSize
{
  v2 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultSize);
  v3 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)resultSize
{
  v2 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultSize);
  v3 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSDictionary)backgroundColorAsyncDict
{
  sub_21E43F008(0, &qword_280C140A0);
  sub_21E4D1674();

  v2 = sub_21E4DCE88();

  return v2;
}

- (void)setBackgroundColorAsyncDict:(id)a3
{
  sub_21E43F008(0, &qword_280C140A0);
  sub_21E4D1674();
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_backgroundColorAsyncDict) = sub_21E4DCE98();
}

- (CGSize)defaultLoadingPillSize
{
  v2 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_defaultLoadingPillSize);
  v3 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_defaultLoadingPillSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  [(SiriSharedUISystemAssistantExperienceContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v7 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)&v10 setFrame:x, y, width, height];
  v8 = [(SiriSharedUISystemAssistantExperienceContainerView *)v7 gradientLayer:v10.receiver];
  if (v8)
  {
    v9 = v8;
    [(SiriSharedUISystemAssistantExperienceContainerView *)v7 frame];
    v12 = CGRectInset(v11, -30.0, -30.0);
    [(CALayer *)v9 setFrame:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v2 = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)&v3 safeAreaInsetsDidChange];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 setNeedsLayout:v3.receiver];
  [(SiriSharedUISystemAssistantExperienceContainerView *)v2 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v7 = self;
  v8 = a4;
  v9 = [(SiriSharedUISystemAssistantExperienceContainerView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_21E43F008(0, &qword_280C140A0);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_21E4DD2F8();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (void)setExposureStateIfInViewWithAvailableMaxWidth:(double)a3 suggestionWidths:(id)a4 suggestionsInset:(double)a5
{
  v8 = sub_21E4DD088();
  v9 = self;
  sub_21E4CA38C(v8, a3, a5);
}

- (void)suggestionsMitose
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.suggestionsMitose()();
}

- (void)reduceMotionCarouselWithDuration:(float)a3 isFirstSnippet:(BOOL)a4
{
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.reduceMotionCarousel(withDuration:isFirstSnippet:)(a3, a4);
}

- (void)reduceMotionMitosisWithDuration:(float)a3 intoSnippet:(BOOL)a4
{
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.reduceMotionMitosis(withDuration:intoSnippet:)(a3, a4);
}

- (void)applyDestOverFilter:(BOOL)a3
{
  v4 = self;
  SiriSharedUISystemAssistantExperienceContainerView.applyDestOverFilter(_:)(a3);
}

- (BOOL)attemptToApplySDFMask
{
  v2 = self;
  v3 = sub_21E4CBB34();

  return v3 & 1;
}

- (void)mitoseWithDuration:(float)a3 mitosingIntoSnippet:(BOOL)a4
{
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.mitose(withDuration:mitosingIntoSnippet:)(a3, a4);
}

- (void)postPillMergeBounce
{
  v2 = self;
  SiriSharedUISystemAssistantExperienceContainerView.postPillMergeBounce()();
}

- (void)preFollowupPulseWithDuration:(float)a3
{
  v8 = self;
  v4 = [(SiriSharedUISystemAssistantExperienceContainerView *)v8 resultView];
  if (v4)
  {
    v5 = v4;
    sub_21E4D69CC(a3);
  }

  v6 = [(SiriSharedUISystemAssistantExperienceContainerView *)v8 previousResultView];
  if (v6)
  {
    v7 = v6;
    sub_21E4D69CC(a3);
  }
}

- (void)performAnimatedBlur:(int64_t)a3 withDuration:(double)a4
{
  v6 = self;
  SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:withDuration:)(a3, a4);
}

- (void)performAnimatedBlur:(int64_t)a3 usingSpringWithMass:(double)a4 stiffness:(double)a5 damping:(double)a6
{
  v10 = self;
  SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:usingSpringWithMass:stiffness:damping:)(a3, a4, a5, a6);
}

- (void)setSnippetBackgroundView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView) = a3;
  v3 = a3;
}

- (void)setPairedSmartDialogViewForBackground:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground) = a3;
  v3 = a3;
}

@end