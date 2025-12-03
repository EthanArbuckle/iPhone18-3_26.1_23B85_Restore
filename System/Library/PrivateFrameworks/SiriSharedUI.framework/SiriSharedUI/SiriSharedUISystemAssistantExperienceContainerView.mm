@interface SiriSharedUISystemAssistantExperienceContainerView
- (BOOL)attemptToApplySDFMask;
- (BOOL)hasLoadingViews;
- (BOOL)isDisplayingResponse;
- (BOOL)isExternalKeyboardPresented;
- (BOOL)isFirstSnippet;
- (BOOL)isInVoiceLatency;
- (BOOL)loadingToResultRequiresMerge;
- (BOOL)resultEligibleForLightEffects;
- (BOOL)shouldExecuteContinuerAction:(int64_t)action;
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
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)transitionToRemovedResponseElements:(unint64_t)elements;
- (int64_t)inputType;
- (unint64_t)presentedResponseElements;
- (void)applyDestOverFilter:(BOOL)filter;
- (void)applyPressTransformAnimationToSuggestionTo:(id)to from:(double)from to:(double)a5 duration:(double)duration;
- (void)cleanupBottomFloatingButtonIfNeeded;
- (void)cleanupLoadingTransitionIfNeeded;
- (void)cleanupResponseElementsByIds:(id)ids;
- (void)cleanupResultTransitionIfNeeded;
- (void)cleanupResultView;
- (void)clearResultViewAndBackground;
- (void)didDismissResults;
- (void)finalizePopAnimationOfType:(int64_t)type;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)layoutSubviews;
- (void)mitoseWithDuration:(float)duration mitosingIntoSnippet:(BOOL)snippet;
- (void)performAnimatedBlur:(int64_t)blur usingSpringWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping;
- (void)performAnimatedBlur:(int64_t)blur withDuration:(double)duration;
- (void)pillMergeContinuerWithIndex:(int64_t)index;
- (void)postPillMergeBounce;
- (void)preFollowupPulseWithDuration:(float)duration;
- (void)prepSuggestionContentViewForAnimation:(id)animation :(id)a4 :(id)a5 :(CGSize)a6 :(BOOL)a7 :(int64_t)a8;
- (void)prepareForDrillinAnimation;
- (void)prepareForPillMergeContinuerWithIndex:(int64_t)index;
- (void)prepareForPopAnimationOfType:(int64_t)type;
- (void)reduceMotionCarouselWithDuration:(float)duration isFirstSnippet:(BOOL)snippet;
- (void)reduceMotionMitosisWithDuration:(float)duration intoSnippet:(BOOL)snippet;
- (void)removeContinuerPill;
- (void)removeContinuerSuggestions;
- (void)removeSuggestions;
- (void)removeSuggestionsForDrillIn;
- (void)restoreSubviewsFromDrillIn;
- (void)safeAreaInsetsDidChange;
- (void)searchUIBackgroundColorUpdateSuccessful:(BOOL)successful;
- (void)setBackgroundColorAsyncDict:(id)dict;
- (void)setBottomContentInset:(double)inset;
- (void)setBottomFloatingButton:(id)button;
- (void)setBottomFloatingButtonView:(id)view;
- (void)setCollapseLoadingView:(id)view;
- (void)setCollapseLoadingWith:(id)with collapseLoadingSize:(CGSize)size;
- (void)setContinuerPill:(id)pill;
- (void)setExposureStateIfInViewWithAvailableMaxWidth:(double)width suggestionWidths:(id)widths suggestionsInset:(double)inset;
- (void)setFrame:(CGRect)frame;
- (void)setGradientLayer:(id)layer;
- (void)setInputType:(int64_t)type;
- (void)setIsExternalKeyboardPresented:(BOOL)presented;
- (void)setIsFirstSnippet:(BOOL)snippet;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInVoiceLatency:(BOOL)latency;
- (void)setMergedResultsForTransition;
- (void)setOriginalViewSizeDict:(id)dict;
- (void)setPairedSmartDialogViewForBackground:(id)background;
- (void)setPreviousResultView:(id)view;
- (void)setResultEligibleForLightEffects:(BOOL)effects;
- (void)setResultView:(id)view;
- (void)setResultWithResultView:(id)view resultSize:(CGSize)size eligibleForLightEffects:(BOOL)effects;
- (void)setShouldPreserveResultSpace:(BOOL)space;
- (void)setShowsSensitiveUI:(BOOL)i;
- (void)setSnippetBackgroundView:(id)view;
- (void)setSnippetSuggestionPageantView:(id)view;
- (void)setSuggestionContentViewsToRemove:(id)remove;
- (void)setTextFieldHeight:(double)height;
- (void)setTextFieldLoadingView:(id)view;
- (void)setTextFieldView:(id)view;
- (void)setTextFieldWithTextFieldView:(id)view;
- (void)setTransitionLoadingToResultWithResultSize:(CGSize)size;
- (void)setUserUtteranceViewHeight:(double)height;
- (void)setVoiceLoading:(id)loading;
- (void)setVoiceLoadingView:(id)view;
- (void)setVoiceLoadingWith:(id)with voiceLoadingSize:(CGSize)size;
- (void)startLatencyLightOnActivePill;
- (void)stopLatencyBreathingLoop;
- (void)suggestionTapAnimationWithIndex:(int64_t)index isTouchUp:(BOOL)up;
- (void)suggestionsMitose;
- (void)transitionFromResultToCollapseLoading;
- (void)transitionMergedResults;
- (void)transitionSuggestionToLoadingWithIndex:(int64_t)index;
- (void)transitionTextFieldLoadingToLoading;
- (void)transitionToResult;
- (void)transitionToSuggestionsCollapsed;
- (void)transitionToSuggestionsCollapsedWithIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block;
- (void)transitionToSuggestionsExpanded;
- (void)transitionToUpdatedContentInset;
- (void)transitionVoiceLoadingToLoading;
- (void)updateBackgroundView:(id)view smartDialogView:(id)dialogView isSnippetAsyncColored:(BOOL)colored;
- (void)updateBottomFloatingButtonVisibility:(BOOL)visibility;
- (void)updateKeyboardLightEffects:(BOOL)effects;
- (void)updateLoadingPillSizeWithCandidateSize:(CGSize)size;
- (void)updateResultSizeWithResultSize:(CGSize)size;
@end

@implementation SiriSharedUISystemAssistantExperienceContainerView

- (double)textFieldHeight
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTextFieldHeight:(double)height
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  *(self + v5) = height;
}

- (double)userUtteranceViewHeight
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserUtteranceViewHeight:(double)height
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  *(self + v5) = height;
}

- (BOOL)isExternalKeyboardPresented
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsExternalKeyboardPresented:(BOOL)presented
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  *(self + v5) = presented;
}

- (BOOL)shouldPreserveResultSpace
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldPreserveResultSpace:(BOOL)space
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  *(self + v5) = space;
}

- (id)createDefaultMaterialBackgroundView
{
  selfCopy = self;
  traitCollection = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy traitCollection];
  [traitCollection userInterfaceStyle];

  v4 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
  v5 = sub_21E4523C4(1);

  return v5;
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
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
  selfCopy = self;
  sub_21E4CF930(0, 0, v10, &unk_21E4E9770, v15);
}

- (BOOL)isDisplayingResponse
{
  selfCopy = self;
  resultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy resultView];
  if (resultView)
  {

    return 1;
  }

  else
  {
    loadingViews = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy loadingViews];
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
  selfCopy = self;
  v3 = SiriSharedUISystemAssistantExperienceContainerView.presentedResponseElements()();

  return v3;
}

- (void)setTextFieldWithTextFieldView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.setTextField(textFieldView:)(view);
}

- (void)removeSuggestions
{
  sub_21E43F008(0, &qword_280C140A0);
  selfCopy = self;
  v3 = sub_21E4DD078();
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setSuggestions:v3];
}

- (void)removeSuggestionsForDrillIn
{
  selfCopy = self;
  delegate = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy delegate];
  if (delegate)
  {
    [(SiriSharedUISystemAssistantExperienceContainerViewDelegate *)delegate fadeOutContinuerSuggestionsForDrillIn];
    swift_unknownObjectRelease();
  }
}

- (void)removeContinuerSuggestions
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.removeContinuerSuggestions()();
}

- (void)setVoiceLoading:(id)loading
{
  loadingCopy = loading;
  selfCopy = self;
  sub_21E4B9B14(loadingCopy, 0, 0, 1);
}

- (void)setVoiceLoadingWith:(id)with voiceLoadingSize:(CGSize)size
{
  v5 = *&size.width;
  v6 = *&size.height;
  withCopy = with;
  selfCopy = self;
  sub_21E4B9B14(withCopy, v5, v6, 0);
}

- (void)setCollapseLoadingWith:(id)with collapseLoadingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  withCopy = with;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.setCollapseLoading(collapseLoading:collapseLoadingSize:)(withCopy, __PAIR128__(*&height, *&width));
}

- (void)setBottomFloatingButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.setBottomFloatingButton(_:)(buttonCopy);
}

- (void)updateBottomFloatingButtonVisibility:(BOOL)visibility
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateBottomFloatingButtonVisibility(_:)(visibility);
}

- (void)cleanupBottomFloatingButtonIfNeeded
{
  selfCopy = self;
  bottomFloatingButtonView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy bottomFloatingButtonView];
  if (bottomFloatingButtonView)
  {
    v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
    v5 = bottomFloatingButtonView;
    swift_beginAccess();
    *(&v5->super.super.super.super.isa + v4) = 1;
  }

  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
}

- (void)setResultWithResultView:(id)view resultSize:(CGSize)size eligibleForLightEffects:(BOOL)effects
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.setResult(resultView:resultSize:eligibleForLightEffects:)(viewCopy, __PAIR128__(*&height, *&width), effects);
}

- (void)updateResultSizeWithResultSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateResultSize(resultSize:)(__PAIR128__(*&height, *&width));
}

- (void)updateLoadingPillSizeWithCandidateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateLoadingPillSize(withCandidateSize:)(__PAIR128__(*&height, *&width));
}

- (void)setTransitionLoadingToResultWithResultSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.setTransitionLoadingToResult(resultSize:)(__PAIR128__(*&height, *&width));
}

- (void)setMergedResultsForTransition
{
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 2;
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
}

- (void)setIsInAmbient:(BOOL)ambient
{
  if (*(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) != ambient)
  {
    *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) = ambient;
    [(SiriSharedUISystemAssistantExperienceContainerView *)self setNeedsLayout];
  }
}

- (void)updateKeyboardLightEffects:(BOOL)effects
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateKeyboardLightEffects(_:)(effects);
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

- (void)setInputType:(int64_t)type
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)showsSensitiveUI
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsSensitiveUI:(BOOL)i
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  *(self + v5) = i;
}

- (double)bottomContentInset
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBottomContentInset:(double)inset
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  *(self + v5) = inset;
}

- (BOOL)isFirstSnippet
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFirstSnippet:(BOOL)snippet
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  *(self + v5) = snippet;
}

- (BOOL)isInVoiceLatency
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInVoiceLatency:(BOOL)latency
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  *(self + v5) = latency;
}

- (void)setGradientLayer:(id)layer
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer) = layer;
  layerCopy = layer;
}

- (BOOL)resultEligibleForLightEffects
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResultEligibleForLightEffects:(BOOL)effects
{
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  *(self + v5) = effects;
}

- (BOOL)loadingToResultRequiresMerge
{
  previousResultView = [(SiriSharedUISystemAssistantExperienceContainerView *)self previousResultView];
  v3 = previousResultView;
  if (previousResultView)
  {
  }

  return v3 != 0;
}

- (BOOL)hasLoadingViews
{
  selfCopy = self;
  loadingViews = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy loadingViews];
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
  selfCopy = self;
  previousResultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy previousResultView];
  if (previousResultView)
  {
    v3 = previousResultView;
    sub_21E4B5BE0(previousResultView);
  }

  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setPreviousResultView:0];
}

- (void)cleanupLoadingTransitionIfNeeded
{
  selfCopy = self;
  voiceLoadingView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy voiceLoadingView];
  [(SiriSharedUIDropletContainerView *)voiceLoadingView removeFromSuperview];
}

- (void)cleanupResponseElementsByIds:(id)ids
{
  sub_21E4DB698();
  v4 = sub_21E4DD088();
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.cleanupResponseElements(by:)(v4);
}

- (void)cleanupResultView
{
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy cleanupResultTransitionIfNeeded];
  resultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy resultView];
  if (resultView)
  {
    v3 = resultView;
    sub_21E4B5BE0(resultView);
    [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setResultView:0];
  }
}

- (BOOL)shouldExecuteContinuerAction:(int64_t)action
{
  selfCopy = self;
  continuerSuggestionsViews = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy continuerSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView();
  v6 = sub_21E4DD088();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223D5B080](action, v6);
    goto LABEL_5;
  }

  if (action < 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > action)
  {
    v8 = *(v6 + 8 * action + 32);
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

- (void)prepareForPillMergeContinuerWithIndex:(int64_t)index
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForPillMergeContinuerWith(index:)(index);
}

- (void)pillMergeContinuerWithIndex:(int64_t)index
{
  selfCopy = self;
  _sSo50SiriSharedUISystemAssistantExperienceContainerViewC0aB2UIE22pillMergeContinuerWith5indexySi_tF_0();
}

- (void)removeContinuerPill
{
  selfCopy = self;
  continuerPill = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy continuerPill];
  if (continuerPill)
  {
    v3 = continuerPill;
    [(SiriSharedUIDropletContainerView *)continuerPill removeFromSuperview];
    [*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView) removeFromSuperview];
    [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setContinuerPill:0];
  }
}

- (void)suggestionTapAnimationWithIndex:(int64_t)index isTouchUp:(BOOL)up
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.suggestionTapAnimationWith(index:isTouchUp:)(index, up);
}

- (void)applyPressTransformAnimationToSuggestionTo:(id)to from:(double)from to:(double)a5 duration:(double)duration
{
  toCopy = to;
  selfCopy = self;
  sub_21E4D2264(toCopy, from, a5, duration);
}

- (void)transitionToSuggestionsExpanded
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsExpanded()();
}

- (void)prepSuggestionContentViewForAnimation:(id)animation :(id)a4 :(id)a5 :(CGSize)a6 :(BOOL)a7 :(int64_t)a8
{
  v9 = a7;
  width = a6.width;
  animationCopy = animation;
  v15 = a4;
  v16 = a5;
  selfCopy = self;
  sub_21E4BFD70(animationCopy, v15, v16, v9, a8, width);
}

- (void)transitionToSuggestionsCollapsedWithIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsCollapsedWith(index:animated:completionBlock:)(index, animated, sub_21E4D21E4, v9);
}

- (void)transitionToSuggestionsCollapsed
{
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setSuggestionsExpanded:0];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
}

- (void)transitionSuggestionToLoadingWithIndex:(int64_t)index
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionSuggestionToLoading(index:)(index);
}

- (void)transitionVoiceLoadingToLoading
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionVoiceLoadingToLoading()();
}

- (void)startLatencyLightOnActivePill
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.startLatencyLightOnActivePill()();
}

- (void)transitionTextFieldLoadingToLoading
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionTextFieldLoadingToLoading()();
}

- (id)transitionToRemovedResponseElements:(unint64_t)elements
{
  elementsCopy = elements;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transition(toRemovedResponseElements:)(elementsCopy);

  sub_21E4DB698();
  v5 = sub_21E4DD078();

  return v5;
}

- (void)stopLatencyBreathingLoop
{
  selfCopy = self;
  resultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy resultView];
  if (resultView)
  {
    v3 = resultView;
    sub_21E4D5550();
  }
}

- (void)transitionMergedResults
{
  selfCopy = self;
  previousResultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy previousResultView];
  if (previousResultView)
  {

    *(selfCopy + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 1;
    [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout];
    [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
  }
}

- (void)transitionToResult
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionToResult()();
}

- (void)transitionFromResultToCollapseLoading
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.transitionFromResultToCollapseLoading()();
}

- (void)transitionToUpdatedContentInset
{
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
}

- (void)clearResultViewAndBackground
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.clearResultViewAndBackground()();
}

- (void)prepareForDrillinAnimation
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForDrillinAnimation()();
}

- (void)restoreSubviewsFromDrillIn
{
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy updateBottomFloatingButtonVisibility:1];
  bottomFloatingButtonView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy bottomFloatingButtonView];
  if (bottomFloatingButtonView)
  {
    v3 = bottomFloatingButtonView;
    sub_21E4D652C();
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)type
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.prepareForPopAnimation(ofType:)(type);
}

- (void)finalizePopAnimationOfType:(int64_t)type
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.finalizePopAnimation(ofType:)(type);
}

- (void)didDismissResults
{
  fluidDismissalManager = [(SiriSharedUISystemAssistantExperienceContainerView *)self fluidDismissalManager];
  *(&fluidDismissalManager->super.isa + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing) = 0;
}

- (UIView)resultViewContainer
{
  resultView = [(SiriSharedUISystemAssistantExperienceContainerView *)self resultView];

  return resultView;
}

- (void)updateBackgroundView:(id)view smartDialogView:(id)dialogView isSnippetAsyncColored:(BOOL)colored
{
  viewCopy = view;
  dialogViewCopy = dialogView;
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.updateBackgroundView(_:smartDialogView:isSnippetAsyncColored:)(viewCopy, dialogView, colored);
}

- (void)searchUIBackgroundColorUpdateSuccessful:(BOOL)successful
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.searchUIBackgroundColorUpdateSuccessful(_:)(successful);
}

- (void)setTextFieldView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView) = view;
  viewCopy = view;
}

- (NSArray)suggestionContentViewsToRemove
{
  sub_21E43F008(0, &qword_280C140A0);

  v2 = sub_21E4DD078();

  return v2;
}

- (void)setSuggestionContentViewsToRemove:(id)remove
{
  sub_21E43F008(0, &qword_280C140A0);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionContentViewsToRemove) = sub_21E4DD088();
}

- (void)setResultView:(id)view
{
  v6 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_21E4C4880(v6);
}

- (void)setBottomFloatingButtonView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView) = view;
  viewCopy = view;
}

- (NSDictionary)originalViewSizeDict
{
  type metadata accessor for SiriSharedUIDropletContainerView();
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView);

  v2 = sub_21E4DCE88();

  return v2;
}

- (void)setOriginalViewSizeDict:(id)dict
{
  type metadata accessor for SiriSharedUIDropletContainerView();
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_originalViewSizeDict) = sub_21E4DCE98();
}

- (void)setPreviousResultView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView) = view;
  viewCopy = view;
}

- (void)setVoiceLoadingView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView) = view;
  viewCopy = view;
}

- (void)setTextFieldLoadingView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView) = view;
  viewCopy = view;
}

- (void)setCollapseLoadingView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView) = view;
  viewCopy = view;
}

- (void)setContinuerPill:(id)pill
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill) = pill;
  pillCopy = pill;
}

- (void)setSnippetSuggestionPageantView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView) = view;
  viewCopy = view;
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

- (void)setBackgroundColorAsyncDict:(id)dict
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)&v10 setFrame:x, y, width, height];
  v8 = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy gradientLayer:v10.receiver];
  if (v8)
  {
    v9 = v8;
    [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy frame];
    v12 = CGRectInset(v11, -30.0, -30.0);
    [(CALayer *)v9 setFrame:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  selfCopy = self;
  [(SiriSharedUISystemAssistantExperienceContainerView *)&v3 safeAreaInsetsDidChange];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy setNeedsLayout:v3.receiver];
  [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy layoutIfNeeded];
}

- (void)layoutSubviews
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  selfCopy = self;
  eventCopy = event;
  v9 = [(SiriSharedUISystemAssistantExperienceContainerView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_21E43F008(0, &qword_280C140A0);
  v11 = selfCopy;
  selfCopy = v10;
  LOBYTE(v10) = sub_21E4DD2F8();

  if (v10)
  {
LABEL_5:

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setExposureStateIfInViewWithAvailableMaxWidth:(double)width suggestionWidths:(id)widths suggestionsInset:(double)inset
{
  v8 = sub_21E4DD088();
  selfCopy = self;
  sub_21E4CA38C(v8, width, inset);
}

- (void)suggestionsMitose
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.suggestionsMitose()();
}

- (void)reduceMotionCarouselWithDuration:(float)duration isFirstSnippet:(BOOL)snippet
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.reduceMotionCarousel(withDuration:isFirstSnippet:)(duration, snippet);
}

- (void)reduceMotionMitosisWithDuration:(float)duration intoSnippet:(BOOL)snippet
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.reduceMotionMitosis(withDuration:intoSnippet:)(duration, snippet);
}

- (void)applyDestOverFilter:(BOOL)filter
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.applyDestOverFilter(_:)(filter);
}

- (BOOL)attemptToApplySDFMask
{
  selfCopy = self;
  v3 = sub_21E4CBB34();

  return v3 & 1;
}

- (void)mitoseWithDuration:(float)duration mitosingIntoSnippet:(BOOL)snippet
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.mitose(withDuration:mitosingIntoSnippet:)(duration, snippet);
}

- (void)postPillMergeBounce
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.postPillMergeBounce()();
}

- (void)preFollowupPulseWithDuration:(float)duration
{
  selfCopy = self;
  resultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy resultView];
  if (resultView)
  {
    v5 = resultView;
    sub_21E4D69CC(duration);
  }

  previousResultView = [(SiriSharedUISystemAssistantExperienceContainerView *)selfCopy previousResultView];
  if (previousResultView)
  {
    v7 = previousResultView;
    sub_21E4D69CC(duration);
  }
}

- (void)performAnimatedBlur:(int64_t)blur withDuration:(double)duration
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:withDuration:)(blur, duration);
}

- (void)performAnimatedBlur:(int64_t)blur usingSpringWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping
{
  selfCopy = self;
  SiriSharedUISystemAssistantExperienceContainerView.performAnimatedBlur(_:usingSpringWithMass:stiffness:damping:)(blur, mass, stiffness, damping);
}

- (void)setSnippetBackgroundView:(id)view
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView) = view;
  viewCopy = view;
}

- (void)setPairedSmartDialogViewForBackground:(id)background
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground);
  *(self + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground) = background;
  backgroundCopy = background;
}

@end