@interface SiriSharedUICompactConversationView
- (BOOL)_isConversationSnippetHintType:(id)a3;
- (BOOL)_shouldAddVibrancyForSnippet:(id)a3;
- (BOOL)layerHasOpacity;
- (BOOL)transitionToExpandablePlatterStyle:(int64_t)a3;
- (BOOL)willAutomaticallyCollapseWhenResultIsScrolled;
- (CGSize)_fittingSize;
- (CGSize)_sizeOfSnippet:(id)a3;
- (CGSize)_sizeThatFits:(CGSize)a3 forSnippet:(id)a4;
- (CGSize)_sizeThatFitsAllSnippets:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUICompactConversationView)initWithFrame:(CGRect)a3;
- (SiriSharedUICompactConversationViewDelegate)delegate;
- (SiriSharedUIDropletContentDelegate)dropletContainerDelegate;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (UIEdgeInsets)serverUtteranceContentInsets;
- (UIEdgeInsets)snippetContentInsets;
- (UIEdgeInsets)userUtteranceContentInsets;
- (id)_conversationAppearAnimation;
- (id)_conversationDisappearAnimation;
- (id)parserSpeakableObjectProviderForServerUtterance:(id)a3;
- (id)prepareForUpdatesPendingCompletionBlocks;
- (void)_adjustCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4;
- (void)_adjustHintCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4;
- (void)_prepareHintForAnimation;
- (void)_reloadConversationSnippetViewsIfHint;
- (void)_resetExpansionStateForNewContent;
- (void)_setupSubviews;
- (void)_updateAmbientSnippetScaling;
- (void)_updateExpandableDrawerUI;
- (void)_updateExpandedHeight;
- (void)_updateSubviewContentInsets;
- (void)animateAppearanceIfNeeded;
- (void)animateFadeOutWithCompletion:(id)a3;
- (void)animateForDrillIn;
- (void)didCompleteAnimatedFadeOut;
- (void)expandablePlatterGesture:(id)a3 didCompleteTransitionToStyle:(int64_t)a4 phaseHeight:(double)a5;
- (void)expandablePlatterGesture:(id)a3 trackingGestureDidUpdateHeight:(double)a4;
- (void)expandablePlatterGestureDidBeginWithRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForUpdatesToServerUtterance:(BOOL)a3 conversationSnippetViews:(BOOL)a4 speechRecognitionHypothesis:(BOOL)a5 latencyViewModel:(BOOL)a6 updateBlock:(id)a7;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)serverUtteranceView:(id)a3 utteranceViewDidAppear:(id)a4;
- (void)serverUtteranceView:(id)a3 utteranceViewDidDisappear:(id)a4;
- (void)setAllowAutomaticConversationSnippetViewScaling:(BOOL)a3;
- (void)setConversationSnippetViews:(id)a3;
- (void)setCurrentExpandablePlatterStyle:(int64_t)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setServerUtterances:(id)a3;
- (void)setShowCollapsedUI:(BOOL)a3;
- (void)setSpeechRecognitionHypothesis:(id)a3;
- (void)snippetContentDidUpdateForHint;
- (void)updateContentSizeWithAnimation:(BOOL)a3;
- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidAppear:(id)a4;
- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidDisappear:(id)a4;
- (void)userUtteranceViewContentHeightDidUpdate:(id)a3;
- (void)userUtteranceViewTapped:(id)a3;
@end

@implementation SiriSharedUICompactConversationView

- (SiriSharedUICompactConversationView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriSharedUICompactConversationView;
  v3 = [(SiriSharedUICompactConversationView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUICompactConversationView *)v3 _setupSubviews];
    v5 = [(SiriSharedUICompactConversationView *)v4 layer];
    [v5 setOpacity:0.0];
  }

  return v4;
}

- (void)_setupSubviews
{
  obj = [[SiriSharedUIExpandablePlatterPanGestureRecognizer alloc] initWithExpansionDelegate:self];
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)obj setCollapsedHeight:60.0];
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)obj setInitialHeight:300.0];
  [(SiriSharedUICompactConversationView *)self addGestureRecognizer:obj];
  objc_storeStrong(&self->_expandablePlatterGesture, obj);
  v3 = [MEMORY[0x277D3D328] platterViewWithBlurEffectStyle:9];
  platterView = self->_platterView;
  self->_platterView = v3;

  [(PLPlatterView *)self->_platterView _setContinuousCornerRadius:23.5];
  if (+[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled])
  {
    [(PLPlatterView *)self->_platterView setUsesBackgroundView:0];
    [(PLPlatterView *)self->_platterView setBackgroundView:0];
    [(UIView *)self siriSharedUI_setGlassBackground];
  }

  [(SiriSharedUICompactConversationView *)self addSubview:self->_platterView];
  v5 = [SiriSharedUIAdaptiveGrabberView alloc];
  v6 = [(SiriSharedUIAdaptiveGrabberView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  grabberView = self->_grabberView;
  self->_grabberView = v6;

  [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView sizeToFit];
  [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView setStyle:0 animated:0];
  [(SiriSharedUICompactConversationView *)self addSubview:self->_grabberView];
  [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView centerXAnchor];
  v9 = [(SiriSharedUICompactConversationView *)self centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView topAnchor];
  v12 = [(SiriSharedUICompactConversationView *)self topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = objc_alloc_init(SiriSharedUIStandardView);
  containerView = self->_containerView;
  self->_containerView = &v14->super;

  [(UIView *)self->_containerView setClipsToBounds:1];
  v16 = self->_containerView;
  v17 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v16 setBackgroundColor:v17];

  v18 = [(PLPlatterView *)self->_platterView customContentView];
  [v18 addSubview:self->_containerView];

  v19 = objc_alloc_init(SiriSharedUIStandardScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v19;

  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setDelegate:self];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setKeyboardDismissMode:2];
  [(UIView *)self->_containerView addSubview:self->_scrollView];
  [(PLPlatterView *)self->_platterView _continuousCornerRadius];
  v22 = [[SiriSharedUICompactUserUtteranceView alloc] initWithContentInsets:16.0 cornerRadius:16.0, 0.0, 16.0, v21];
  userUtteranceView = self->_userUtteranceView;
  self->_userUtteranceView = v22;

  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setDelegate:self];
  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_userUtteranceView];
  v24 = [[SiriSharedUICompactServerUtteranceView alloc] initWithContentInsets:self delegate:16.0, 16.0, 16.0, 16.0];
  serverUtteranceView = self->_serverUtteranceView;
  self->_serverUtteranceView = v24;

  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_serverUtteranceView];
  v26 = objc_alloc_init(SiriSharedUIStandardView);
  conversationSnippetContainerView = self->_conversationSnippetContainerView;
  self->_conversationSnippetContainerView = &v26->super;

  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_conversationSnippetContainerView];
  [(SiriSharedUICompactConversationView *)self setCurrentExpandablePlatterStyle:1];
  v28 = SiriSharedUILanguageSemanticContentAttribute();
  SiriSharedUIRecursiveSetSemanticContentAttribute(self, v28);
}

- (id)prepareForUpdatesPendingCompletionBlocks
{
  prepareForUpdatesPendingCompletionBlocks = self->_prepareForUpdatesPendingCompletionBlocks;
  if (!prepareForUpdatesPendingCompletionBlocks)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_prepareForUpdatesPendingCompletionBlocks;
    self->_prepareForUpdatesPendingCompletionBlocks = v4;

    prepareForUpdatesPendingCompletionBlocks = self->_prepareForUpdatesPendingCompletionBlocks;
  }

  return prepareForUpdatesPendingCompletionBlocks;
}

- (void)prepareForUpdatesToServerUtterance:(BOOL)a3 conversationSnippetViews:(BOOL)a4 speechRecognitionHypothesis:(BOOL)a5 latencyViewModel:(BOOL)a6 updateBlock:(id)a7
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = [(SiriSharedUICompactConversationView *)self delegate];
  v13 = [v12 conversationViewShouldAlwaysShowSpeechFeedback:self];

  v14 = 0;
  if (((v13 ^ 1) & 1) == 0 && v7)
  {
    v14 = !self->_waitingForFinalSpeechHypothesis;
  }

  v15 = (v9 || v8) & (v13 ^ 1);
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    runningPrepareForUpdates = self->_runningPrepareForUpdates;
    *buf = 136315906;
    v27 = "[SiriSharedUICompactConversationView prepareForUpdatesToServerUtterance:conversationSnippetViews:speechRecognitionHypothesis:latencyViewModel:updateBlock:]";
    v28 = 1024;
    v29 = runningPrepareForUpdates;
    v30 = 1024;
    v31 = v14;
    v32 = 1024;
    v33 = v15;
    _os_log_impl(&dword_21E3EB000, v16, OS_LOG_TYPE_DEFAULT, "%s #compact prepareForUpdates isAlreadyRunningPrepareForUpdates: %d, meetsRequirementsForASRUpdating: %d, meetsRequirementsForContentUpdating: %d", buf, 0x1Eu);
  }

  if (self->_runningPrepareForUpdates || ((v14 | v15) & 1) == 0)
  {
    if (v11)
    {
      if (self->_runningPrepareForUpdates)
      {
        v21 = [(SiriSharedUICompactConversationView *)self prepareForUpdatesPendingCompletionBlocks];
        v22 = [v11 copy];
        v23 = _Block_copy(v22);
        [v21 addObject:v23];
      }

      else
      {
        (*(v11 + 2))(v11, 1);
      }
    }
  }

  else
  {
    self->_runningPrepareForUpdates = 1;
    if (v14)
    {
      self->_waitingForFinalSpeechHypothesis = 1;
    }

    if (v11)
    {
      v18 = [(SiriSharedUICompactConversationView *)self prepareForUpdatesPendingCompletionBlocks];
      v19 = [v11 copy];
      v20 = _Block_copy(v19);
      [v18 addObject:v20];
    }

    objc_initWeak(buf, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __156__SiriSharedUICompactConversationView_prepareForUpdatesToServerUtterance_conversationSnippetViews_speechRecognitionHypothesis_latencyViewModel_updateBlock___block_invoke;
    v24[3] = &unk_278354A40;
    objc_copyWeak(&v25, buf);
    [(SiriSharedUICompactConversationView *)self animateFadeOutWithCompletion:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __156__SiriSharedUICompactConversationView_prepareForUpdatesToServerUtterance_conversationSnippetViews_speechRecognitionHypothesis_latencyViewModel_updateBlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 483) = 0;
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[SiriSharedUICompactConversationView prepareForUpdatesToServerUtterance:conversationSnippetViews:speechRecognitionHypothesis:latencyViewModel:updateBlock:]_block_invoke";
      _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact processing any pending update completionBlocks", buf, 0xCu);
    }

    v4 = objc_alloc_init(SiriSharedUIAnimationContext);
    [(SiriSharedUIAnimationContext *)v4 setAnimationDuration:0.0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __156__SiriSharedUICompactConversationView_prepareForUpdatesToServerUtterance_conversationSnippetViews_speechRecognitionHypothesis_latencyViewModel_updateBlock___block_invoke_12;
    v5[3] = &unk_278354858;
    v5[4] = v2;
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v5 context:v4 completion:0];
  }
}

uint64_t __156__SiriSharedUICompactConversationView_prepareForUpdatesToServerUtterance_conversationSnippetViews_speechRecognitionHypothesis_latencyViewModel_updateBlock___block_invoke_12(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) prepareForUpdatesPendingCompletionBlocks];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) prepareForUpdatesPendingCompletionBlocks];
  [v7 removeAllObjects];

  [*(a1 + 32) updateContentSizeWithAnimation:0];
  [*(a1 + 32) setNeedsDisplay];
  [*(a1 + 32) layoutIfNeeded];
  return [MEMORY[0x277CD9FF0] commit];
}

- (void)didCompleteAnimatedFadeOut
{
  self->_runningAnimatedFadeOut = 0;
  if (self->_requestedAppearanceAnimation)
  {
    [(SiriSharedUICompactConversationView *)self animateAppearanceIfNeeded];
    self->_requestedAppearanceAnimation = 0;
  }
}

- (void)animateFadeOutWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SiriSharedUICompactConversationView *)self layerHasOpacity])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SiriSharedUICompactConversationView animateFadeOutWithCompletion:]";
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeOut of conversationView", buf, 0xCu);
    }

    self->_runningAnimatedFadeOut = 1;
    [MEMORY[0x277CD9FF0] begin];
    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CD9FF0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __68__SiriSharedUICompactConversationView_animateFadeOutWithCompletion___block_invoke;
    v13 = &unk_2783548D0;
    objc_copyWeak(&v15, buf);
    v14 = v4;
    [v6 setCompletionBlock:&v10];
    v7 = [(SiriSharedUICompactConversationView *)self layer:v10];
    v8 = [(SiriSharedUICompactConversationView *)self _conversationDisappearAnimation];
    [v7 addAnimation:v8 forKey:@"conversationDisappearance"];

    v9 = [(SiriSharedUICompactConversationView *)self layer];
    [v9 setOpacity:0.0];

    [MEMORY[0x277CD9FF0] commit];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __68__SiriSharedUICompactConversationView_animateFadeOutWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SiriSharedUICompactConversationView_animateFadeOutWithCompletion___block_invoke_2;
    block[3] = &unk_278354858;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)animateAppearanceIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_runningAnimatedFadeOut)
  {
    self->_requestedAppearanceAnimation = 1;
  }

  else if (![(SiriSharedUICompactConversationView *)self layerHasOpacity])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SiriSharedUICompactConversationView animateAppearanceIfNeeded]";
      _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeIn of conversationView", &v9, 0xCu);
    }

    [MEMORY[0x277CD9FF0] begin];
    v4 = [(SiriSharedUICompactConversationView *)self layer];
    v5 = [(SiriSharedUICompactConversationView *)self _conversationAppearAnimation];
    [v4 addAnimation:v5 forKey:@"conversationAppearance"];

    v6 = [(SiriSharedUICompactConversationView *)self layer];
    LODWORD(v7) = 1.0;
    [v6 setOpacity:v7];

    v8 = [(SiriSharedUICompactConversationView *)self hostingView];
    [v8 setAlpha:1.0];

    if (self->_isInAmbient)
    {
      [SiriSharedUICAFiltering applyGaussianBlurFilterToView:self];
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)animateForDrillIn
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__SiriSharedUICompactConversationView_animateForDrillIn__block_invoke;
  v2[3] = &unk_278354A68;
  v2[4] = self;
  [(SiriSharedUICompactConversationView *)self animateFadeOutWithCompletion:v2];
}

uint64_t __56__SiriSharedUICompactConversationView_animateForDrillIn__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) didCompleteAnimatedFadeOut];
  }

  return result;
}

- (id)_conversationAppearAnimation
{
  v3 = [(SiriSharedUICompactConversationView *)self delegate];
  v4 = [v3 conversationViewShouldAlwaysShowSpeechFeedback:self];

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  v6 = MEMORY[0x277CCABB0];
  [(SiriSharedUICompactConversationView *)self frame];
  v8 = [v6 numberWithDouble:v7];
  v9 = [SiriSharedUIAnimationUtilities animationForStyle:v5 expectedWidthForStyle:v8 presentationType:[(SiriSharedUICompactConversationView *)self _animatedPresentationType]];

  return v9;
}

- (id)_conversationDisappearAnimation
{
  v2 = [(SiriSharedUICompactConversationView *)self _animatedPresentationType];

  return [SiriSharedUIAnimationUtilities animationForStyle:2 expectedWidthForStyle:0 presentationType:v2];
}

- (BOOL)layerHasOpacity
{
  v2 = [(SiriSharedUICompactConversationView *)self layer];
  [v2 opacity];
  v4 = v3 > 0.0;

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView sizeThatFits:?];
  v7 = v6;
  [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView sizeThatFits:width, height];
  v9 = v8;
  [(SiriSharedUICompactConversationView *)self _sizeThatFitsAllSnippets:width, height];
  v11 = v10;
  if (self->_isInAmbient)
  {
    if (self->_isInAmbientInteractivity)
    {
      v12 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v12 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    v11 = v10 * *v12;
  }

  v13 = 0.0;
  if (v7 > 0.0)
  {
    if (v9 == 0.0)
    {
      [(SiriSharedUICompactConversationView *)self serverUtteranceContentInsets];
      v13 = v7 + v14;
    }

    else
    {
      v13 = v7;
    }
  }

  if (v9 <= 0.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9 + v13;
  }

  if (v11 > 0.0)
  {
    if (v9 == 0.0 && v7 == 0.0)
    {
      [(SiriSharedUICompactConversationView *)self snippetContentInsets];
      v15 = v15 + v16;
    }

    [(SiriSharedUICompactConversationView *)self snippetContentInsets];
    v15 = v15 + v11 + v17;
  }

  if (!self->_currentExpandablePlatterStyle)
  {
    v18 = [(SiriSharedUICompactConversationView *)self delegate];
    [v18 maximumHeightForConversationView:self];
    v20 = v19;

    if (v15 >= v20)
    {
      v15 = v20;
    }
  }

  v21 = width;
  v22 = v15;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v98 = *MEMORY[0x277D85DE8];
  v96.receiver = self;
  v96.super_class = SiriSharedUICompactConversationView;
  [(SiriSharedUICompactConversationView *)&v96 layoutSubviews];
  [(SiriSharedUICompactConversationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SiriSharedUICompactConversationView *)self animationContextForFrameAndLayoutUpdate];

  if (v11)
  {
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __53__SiriSharedUICompactConversationView_layoutSubviews__block_invoke;
    v95[3] = &unk_278354A90;
    v95[4] = self;
    *&v95[5] = v4;
    *&v95[6] = v6;
    *&v95[7] = v8;
    *&v95[8] = v10;
    v12 = [(SiriSharedUICompactConversationView *)self animationContextForFrameAndLayoutUpdate];
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v95 context:v12 completion:0];
  }

  else
  {
    [(PLPlatterView *)self->_platterView setFrame:v4, v6, v8, v10];
  }

  [(PLPlatterView *)self->_platterView setHasShadow:[(SiriSharedUICompactConversationView *)self _useShadowForPlatter]];
  [(UIView *)self->_containerView setFrame:v4, v6, v8, v10];
  scrollView = self->_scrollView;
  [(UIView *)self->_containerView bounds];
  [(SiriSharedUIStandardScrollView *)scrollView setFrame:?];
  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView sizeThatFits:v8, v10];
  v15 = v14;
  v17 = v16;
  [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView sizeThatFits:v8, 1.79769313e308];
  v99.size.height = v10;
  v19 = v18;
  v21 = v20;
  v79 = v6;
  v80 = v4;
  v99.origin.x = v4;
  v99.origin.y = v6;
  v99.size.width = v8;
  rect = v99.size.height;
  Width = CGRectGetWidth(v99);
  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  v89 = v23;
  v24 = *MEMORY[0x277CBF3A8];
  v25 = MEMORY[0x277CBF3A0];
  v88 = *(MEMORY[0x277CBF3A8] + 8);
  if (v15 == *MEMORY[0x277CBF3A8] && v17 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v26 = Width * 0.5 - v19 * 0.5;
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v27 = 0.0;
    MaxY = 0.0;
  }

  else
  {
    v28 = 0.0;
    if (![(NSArray *)self->_serverUtterances count]&& ![(NSArray *)self->_conversationSnippetViews count])
    {
      v28 = rect * 0.5 - v17 * 0.5 + -8.0;
    }

    if ([(NSArray *)self->_serverUtterances count]|| !self->_hasHintConversationSnippets)
    {
      userUtteranceView = self->_userUtteranceView;
    }

    else
    {
      userUtteranceView = self->_userUtteranceView;
      [(SiriSharedUICompactConversationView *)self serverUtteranceContentInsets];
      v17 = v17 + v30;
    }

    v26 = 0.0;
    [(SiriSharedUICompactUserUtteranceView *)userUtteranceView setFrame:0.0, v28, v15, v17];
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
    MaxY = CGRectGetMaxY(v100);
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
    v27 = CGRectGetMaxY(v101);
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
    v31 = CGRectGetMaxY(v102);
    [(SiriSharedUICompactConversationView *)self snippetContentInsets];
    v89 = v31 + v32;
    if ([(SiriSharedUIStandardView *)self->_serverUtteranceView isSemanticContentAttributeRightToLeft])
    {
      v103.origin.y = v79;
      v103.origin.x = v80;
      v103.size.width = v8;
      v103.size.height = rect;
      v26 = CGRectGetWidth(v103) - v19;
    }
  }

  serverUtteranceView = self->_serverUtteranceView;
  if (v19 == v24 && v21 == v88)
  {
    [(SiriSharedUICompactServerUtteranceView *)serverUtteranceView setFrame:*v25, v25[1], v25[2], v25[3]];
  }

  else
  {
    [(SiriSharedUICompactServerUtteranceView *)serverUtteranceView setFrame:v26, v27, v19, v21];
    [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView frame];
    MaxY = CGRectGetMaxY(v104);
    [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView frame];
    v89 = CGRectGetMaxY(v105);
  }

  v82 = v8;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v34 = self->_conversationSnippetViews;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v91 objects:v97 count:16];
  v36 = v88;
  if (v35)
  {
    v37 = v35;
    v38 = 0;
    v39 = *v92;
    v85 = v25[1];
    v86 = *v25;
    v83 = v25[3];
    v84 = v25[2];
    v40 = 0.0;
    v41 = 0.0;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v92 != v39)
        {
          objc_enumerationMutation(v34);
        }

        v43 = *(*(&v91 + 1) + 8 * i);
        conversationSnippetVibrancyViews = self->_conversationSnippetVibrancyViews;
        v45 = [(SiriSharedUICompactConversationView *)self _keyForSnippet:v43];
        v46 = [(NSDictionary *)conversationSnippetVibrancyViews objectForKey:v45];

        [(SiriSharedUICompactConversationView *)self _sizeOfSnippet:v43];
        if (v47 == v24 && v48 == v36)
        {
          [v43 setFrame:{v86, v85, v84, v83}];
          [(UIView *)v46 setFrame:v86, v85, v84, v83];
        }

        else
        {
          v50 = v47;
          v51 = v48;
          v52 = v24;
          [v43 setFrame:{0.0, v41, v47, v48}];
          [(UIView *)v46 setFrame:0.0, v41, v50, v51];
          hintVibrancyView = self->_hintVibrancyView;
          if (hintVibrancyView)
          {
            v54 = hintVibrancyView == v46;
          }

          else
          {
            v54 = 0;
          }

          if (v54)
          {
            v55 = [(UIView *)hintVibrancyView layer];
            LODWORD(v56) = 1.0;
            [v55 setOpacity:v56];
          }

          [v43 frame];
          x = v57;
          y = v59;
          v62 = v61;
          height = v63;
          if (self->_isInAmbient)
          {
            v65 = 1.0;
            if (!self->_isInAmbientInteractivity)
            {
              v65 = 2.0;
            }

            CGAffineTransformMakeScale(&v90, v65, v65);
            v106.origin.x = x;
            v106.origin.y = y;
            v106.size.width = v62;
            v106.size.height = height;
            v107 = CGRectApplyAffineTransform(v106, &v90);
            x = v107.origin.x;
            y = v107.origin.y;
            v62 = v107.size.width;
            height = v107.size.height;
          }

          v108.origin.x = x;
          v108.origin.y = y;
          v108.size.width = v62;
          v108.size.height = height;
          v66 = CGRectGetMaxY(v108);
          [(SiriSharedUICompactConversationView *)self snippetContentInsets];
          v41 = v66 + v67;
          v109.origin.x = x;
          v109.origin.y = y;
          v109.size.width = v62;
          v109.size.height = height;
          v68 = v89 + CGRectGetMaxY(v109);
          if (v40 < v50)
          {
            v40 = v50;
          }

          MaxY = v68;
          if (v38)
          {
            v38 = 1;
          }

          else
          {
            v69 = floor(v68);
            v110.origin.y = v79;
            v110.origin.x = v80;
            v110.size.height = rect;
            v110.size.width = v82;
            v38 = v69 > floor(CGRectGetHeight(v110));
          }

          v24 = v52;
          v36 = v88;
        }
      }

      v37 = [(NSArray *)v34 countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
    v40 = 0.0;
    v41 = 0.0;
  }

  if (self->_isInAmbient)
  {
    v70 = 0x27CEC3000;
    v71 = MaxY;
    if (self->_allowAutomaticConversationSnippetViewScaling)
    {
      if (self->_isInAmbientInteractivity)
      {
        v72 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
      }

      else
      {
        v72 = &SiriSharedUICompactAmbientContentScaleAmount;
      }

      v40 = v40 * *v72;
    }
  }

  else
  {
    v70 = 0x27CEC3000uLL;
    v71 = MaxY;
  }

  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  if (*(&self->super.super.super.super.isa + *(v70 + 2748)) == 1)
  {
    [(SiriSharedUICompactConversationView *)self bounds];
    v40 = v74;
    v75 = 0.0;
  }

  else
  {
    v75 = v73;
  }

  [(UIView *)self->_conversationSnippetContainerView setFrame:v75, v89, v40, v41];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setContentSize:v82, v71];
  if (!self->_currentExpandablePlatterStyle)
  {
    [(SiriSharedUIStandardScrollView *)self->_scrollView frame];
    [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:v71 > v76];
  }

  if (v38)
  {
    v77 = 40.0;
  }

  else
  {
    v77 = 0.0;
  }

  [(SiriSharedUIStandardScrollView *)self->_scrollView setContentInset:0.0, 0.0, v77, 0.0];
  [(SiriSharedUICompactConversationView *)self _updateExpandableDrawerUI];
  v78 = [(SiriSharedUICompactConversationView *)self stackContainerDelegate];
  [v78 stackableContentDidLayout:self];
}

- (void)_updateExpandableDrawerUI
{
  [(SiriSharedUIStandardScrollView *)self->_scrollView contentSize];
  v4 = v3;
  [(SiriSharedUICompactConversationView *)self frame];
  currentExpandablePlatterStyle = self->_currentExpandablePlatterStyle;
  v7 = currentExpandablePlatterStyle == 3 || self->_currentlyTrackingGesture;
  v8 = floor(v4);
  v9 = currentExpandablePlatterStyle != 4;
  v10 = v9 & ((v8 > floor(v5)) | v7);
  [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView setHidden:v10 ^ 1];
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self->_expandablePlatterGesture setEnabled:v10];
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self->_expandablePlatterGesture setScrollViewContentHeight:v4];
  expandablePlatterGesture = self->_expandablePlatterGesture;
  v12 = v8 > 200.0 && v9;

  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)expandablePlatterGesture setAllowExpandedState:v12];
}

- (void)_resetExpansionStateForNewContent
{
  if ([(SiriSharedUICompactConversationView *)self transitionToExpandablePlatterStyle:1])
  {
    v3 = [(SiriSharedUICompactConversationView *)self delegate];
    [v3 conversationViewDidResetExpandedState:self];
  }
}

- (void)setServerUtterances:(id)a3
{
  v4 = a3;
  serverUtterances = self->_serverUtterances;
  if (serverUtterances != v4)
  {
    v25 = v4;
    serverUtterances = [serverUtterances isEqualToArray:v4];
    v4 = v25;
    if ((serverUtterances & 1) == 0)
    {
      v6 = [v25 copy];
      v7 = self->_serverUtterances;
      self->_serverUtterances = v6;

      [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView setUtterances:self->_serverUtterances];
      serverUtteranceView = self->_serverUtteranceView;
      v9 = SiriSharedUILanguageSemanticContentAttribute();
      SiriSharedUIRecursiveSetSemanticContentAttribute(serverUtteranceView, v9);
      [(SiriSharedUICompactConversationView *)self _resetExpansionStateForNewContent];
      if (v25 && ([(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame], !CGRectEqualToRect(v27, *MEMORY[0x277CBF3A0])))
      {
        [(SiriSharedUICompactConversationView *)self bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView sizeThatFits:v15, v17];
        v20 = v19;
        v22 = v21;
        [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
        MinX = CGRectGetMinX(v28);
        [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
        MaxY = CGRectGetMaxY(v29);
        if ([(SiriSharedUIStandardView *)self->_serverUtteranceView isSemanticContentAttributeRightToLeft])
        {
          v30.origin.x = v12;
          v30.origin.y = v14;
          v30.size.width = v16;
          v30.size.height = v18;
          MinX = CGRectGetWidth(v30) - v20;
        }

        [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView setFrame:MinX, MaxY, v20, v22];
        [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView layoutIfNeeded];
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      [(SiriSharedUICompactConversationView *)self _reloadConversationSnippetViewsIfHint];
      serverUtterances = [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:v10];
      v4 = v25;
    }
  }

  MEMORY[0x2821F96F8](serverUtterances, v4);
}

- (void)_reloadConversationSnippetViewsIfHint
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_didSetConversationSnippets)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_conversationSnippetViews;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
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
          if ([(SiriSharedUICompactConversationView *)self _isConversationSnippetHintType:v8, v12])
          {
            conversationSnippetVibrancyViews = self->_conversationSnippetVibrancyViews;
            v10 = [(SiriSharedUICompactConversationView *)self _keyForSnippet:v8];
            v11 = [(NSDictionary *)conversationSnippetVibrancyViews objectForKey:v10];

            [(SiriSharedUICompactConversationView *)self _adjustHintCornerRadiusForSnippetView:v8 vibrancyView:v11];
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (void)setSpeechRecognitionHypothesis:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  speechRecognitionHypothesis = self->_speechRecognitionHypothesis;
  self->_speechRecognitionHypothesis = v5;

  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setSpeechRecognitionHypothesis:v4];
  v7 = [v4 isFinal];

  if (v7)
  {
    self->_waitingForFinalSpeechHypothesis = 0;
  }

  [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:0];
}

- (BOOL)_isConversationSnippetHintType:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isHint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)serverUtteranceContentInsets
{
  v2 = 16.0;
  v3 = 16.0;
  if (self->_isInAmbient)
  {
    v2 = 6.0;
    if (!self->_speechRecognitionHypothesis)
    {
      v2 = 16.0;
    }

    v3 = 4.0;
  }

  v4 = 16.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)userUtteranceContentInsets
{
  if (self->_isInAmbient)
  {
    v2 = 4.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = 16.0;
  v4 = 16.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)snippetContentInsets
{
  if (self->_isInAmbient)
  {
    v2 = 16.0;
    v3 = 4.0;
  }

  else
  {
    if (self->_hasHintConversationSnippets)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 8.0;
    }

    v2 = v3;
  }

  v4 = v2;
  v5 = v2;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (void)setConversationSnippetViews:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSArray *)self->_conversationSnippetViews isEqualToArray:v4])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = self->_conversationSnippetViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v40 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v7);
    }

    v10 = [v4 copy];
    conversationSnippetViews = self->_conversationSnippetViews;
    self->_conversationSnippetViews = v10;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [(NSDictionary *)self->_conversationSnippetVibrancyViews allValues];
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v36 + 1) + 8 * j) removeFromSuperview];
        }

        v14 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v14);
    }

    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_conversationSnippetViews;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (!v17)
    {
      LOBYTE(v31) = 1;
      goto LABEL_45;
    }

    v18 = v17;
    v19 = *v33;
    v31 = 1;
    while (1)
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v32 + 1) + 8 * k);
        v22 = SiriSharedUILanguageSemanticContentAttribute();
        SiriSharedUIRecursiveSetSemanticContentAttribute(v21, v22);
        if (objc_opt_respondsToSelector())
        {
          [(SiriSharedUICompactConversationView *)self snippetContentInsets];
          [v21 viewInsetsInConversationView:?];
        }

        if (objc_opt_respondsToSelector())
        {
          v31 &= [v21 shouldAutomaticallyScaleContentInAmbient];
        }

        v23 = [(SiriSharedUICompactConversationView *)self _isConversationSnippetHintType:v21];
        if (![(SiriSharedUICompactConversationView *)self _shouldAddVibrancyForSnippet:v21]&& !v23)
        {
          v24 = 0;
          goto LABEL_33;
        }

        if (!v23)
        {
          v24 = [[SiriSharedUICompactConversationSnippetVibrancyView alloc] initWithStyle:0];
          if (!v24)
          {
            goto LABEL_33;
          }

LABEL_32:
          v26 = [(SiriSharedUICompactConversationView *)self _keyForSnippet:v21];
          [(NSDictionary *)v29 setObject:v24 forKey:v26];

          goto LABEL_33;
        }

        self->_hasHintConversationSnippets = 1;
        v24 = [[SiriSharedUICompactConversationSnippetVibrancyView alloc] initWithStyle:1];
        [(UIView *)self->_conversationSnippetContainerView frame];
        [(SiriSharedUICompactConversationSnippetVibrancyView *)v24 setFrame:?];
        v25 = [(SiriSharedUICompactConversationSnippetVibrancyView *)v24 layer];
        [v25 setOpacity:0.0];

        objc_storeStrong(&self->_hintVibrancyView, v24);
        objc_storeStrong(&self->_hintSnippetView, v21);
        if (v24)
        {
          goto LABEL_32;
        }

LABEL_33:
        conversationSnippetContainerView = self->_conversationSnippetContainerView;
        if (conversationSnippetContainerView)
        {
          [(UIView *)conversationSnippetContainerView addSubview:v21];
          if (v24)
          {
            [(UIView *)self->_conversationSnippetContainerView addSubview:v24];
          }
        }

        else
        {
          [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:v21];
          if (v24)
          {
            [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:v24];
          }
        }

        if (v23)
        {
          [(SiriSharedUICompactConversationView *)self _adjustHintCornerRadiusForSnippetView:v21 vibrancyView:v24];
        }

        else
        {
          [(SiriSharedUICompactConversationView *)self _adjustCornerRadiusForSnippetView:v21 vibrancyView:v24];
        }

        [v21 setClipsToBounds:1];
      }

      v18 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (!v18)
      {
LABEL_45:

        conversationSnippetVibrancyViews = self->_conversationSnippetVibrancyViews;
        self->_conversationSnippetVibrancyViews = v29;

        [(SiriSharedUICompactConversationView *)self setAllowAutomaticConversationSnippetViewScaling:v31 & 1];
        [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:0];
        self->_didSetConversationSnippets = 1;
        break;
      }
    }
  }
}

- (BOOL)willAutomaticallyCollapseWhenResultIsScrolled
{
  if (self->_isInAmbient)
  {
    return 0;
  }

  [(SiriSharedUICompactConversationView *)self frame];
  Height = CGRectGetHeight(v6);
  if (!self->_automaticallyCollapseWhenResultIsScrolled)
  {
    return 0;
  }

  return [(SiriSharedUICompactConversationView *)self contentSupportsCollapsingForHeight:Height];
}

- (void)snippetContentDidUpdateForHint
{
  if ([(NSArray *)self->_serverUtterances count]|| [(NSArray *)self->_conversationSnippetViews count]> 1 || self->_speechRecognitionHypothesis)
  {
    [(SiriSharedUICompactConversationView *)self _prepareHintForAnimation];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:v3];
}

- (void)_prepareHintForAnimation
{
  [(SiriSharedUICompactConversationView *)self _sizeOfSnippet:self->_hintSnippetView];
  v5 = v4;
  if (v4 != *MEMORY[0x277CBF3A8] || v3 != *(MEMORY[0x277CBF3A8] + 8))
  {
    [(UIView *)self->_hintVibrancyView frame];
    if (CGRectEqualToRect(v9, *MEMORY[0x277CBF3A0]))
    {
      [(UIView *)self->_hintVibrancyView setFrame:0.0, 0.0, v5, 0.0];
      [(UIView *)self->_hintSnippetView setFrame:0.0, 0.0, v5, 0.0];
      [(UIView *)self->_hintSnippetView layoutIfNeeded];
      hintVibrancyView = self->_hintVibrancyView;

      [(UIView *)hintVibrancyView layoutIfNeeded];
    }
  }
}

- (CGSize)_fittingSize
{
  if (self->_isInAmbient)
  {
    v3 = 556.0 * 2.0;
  }

  else
  {
    v3 = 556.0;
  }

  v4 = &SiriSharedUICompactPlatterAmbientHorizontalPadding;
  if (!self->_isInAmbient)
  {
    v4 = &SiriSharedUICompactPlatterHorizontalPadding;
  }

  v5 = *v4;
  v6 = [(SiriSharedUICompactConversationView *)self stackContainerDelegate];
  [v6 stackableContentMaximumContainerWidth];
  v8 = v7 + v5 * -2.0;

  if (v3 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  [(SiriSharedUICompactConversationView *)self sizeThatFits:v9, 1.79769313e308];
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SiriSharedUICompactConversationView *)self _fittingSize];
  currentExpandablePlatterStyle = self->_currentExpandablePlatterStyle;
  if (currentExpandablePlatterStyle == 2)
  {
    currentExpandedGestureHeight = 60.0;
  }

  else
  {
    currentExpandedGestureHeight = self->_currentExpandedGestureHeight;
    if (currentExpandedGestureHeight <= 0.0)
    {
      if (currentExpandablePlatterStyle)
      {
        currentExpandedGestureHeight = v4;
        if (!self->_isInAmbient)
        {
          currentExpandedGestureHeight = 200.0;
          if (v4 < 200.0)
          {
            currentExpandedGestureHeight = v4;
          }
        }
      }

      else
      {
        currentExpandedGestureHeight = v4;
      }
    }
  }

  v7 = currentExpandedGestureHeight;
  result.height = v7;
  result.width = v3;
  return result;
}

- (void)updateContentSizeWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(SiriSharedUICompactConversationView *)self _fittingSize];
  v6 = v5;
  v8 = v7;
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self->_expandablePlatterGesture setInitialHeight:v7];
  [(SiriSharedUICompactConversationView *)self _updateSubviewContentInsets];
  v9 = [(SiriSharedUICompactConversationView *)self stackContainerDelegate];
  [v9 stackableContentWillUpdateLayout:self withUpdatedContentSize:v3 animated:{v6, v8}];

  [(SiriSharedUICompactConversationView *)self invalidateIntrinsicContentSize];
}

- (void)setAllowAutomaticConversationSnippetViewScaling:(BOOL)a3
{
  if (self->_allowAutomaticConversationSnippetViewScaling != a3)
  {
    self->_allowAutomaticConversationSnippetViewScaling = a3;
    [(SiriSharedUICompactConversationView *)self _updateAmbientSnippetScaling];
  }
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    v3 = a3;
    self->_isInAmbient = a3;
    [(SiriSharedUICompactConversationView *)self _updateSubviewContentInsets];
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setIsInAmbient:v3];
    [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView setIsInAmbient:v3];
    [(SiriSharedUICompactConversationView *)self _updateAmbientSnippetScaling];
    v5 = [(PLPlatterView *)self->_platterView backgroundView];
    [v5 setHidden:self->_isInAmbient];

    platterView = self->_platterView;
    v7 = [(SiriSharedUICompactConversationView *)self _useShadowForPlatter];

    [(PLPlatterView *)platterView setHasShadow:v7];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  if (self->_isInAmbientInteractivity != a3)
  {
    v4 = a3;
    self->_isInAmbientInteractivity = a3;
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setIsInAmbientInteractivity:?];
    [(SiriSharedUICompactServerUtteranceView *)self->_serverUtteranceView setIsInAmbientInteractivity:v4];

    [(SiriSharedUICompactConversationView *)self _updateAmbientSnippetScaling];
  }
}

- (void)_updateSubviewContentInsets
{
  userUtteranceView = self->_userUtteranceView;
  [(SiriSharedUICompactConversationView *)self userUtteranceContentInsets];
  [(SiriSharedUICompactUserUtteranceView *)userUtteranceView setContentInsets:?];
  serverUtteranceView = self->_serverUtteranceView;
  [(SiriSharedUICompactConversationView *)self serverUtteranceContentInsets];

  [(SiriSharedUICompactServerUtteranceView *)serverUtteranceView setContentInsets:?];
}

- (void)_updateAmbientSnippetScaling
{
  if (self->_isInAmbient && self->_allowAutomaticConversationSnippetViewScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v2 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v2 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    conversationSnippetContainerView = self->_conversationSnippetContainerView;
    CGAffineTransformMakeScale(&v6, *v2, *v2);
    v4 = conversationSnippetContainerView;
  }

  else
  {
    v4 = self->_conversationSnippetContainerView;
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v6.a = *MEMORY[0x277CBF2C0];
    *&v6.c = v5;
    *&v6.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  [(UIView *)v4 setTransform:&v6, *&v6.a, *&v6.c, *&v6.tx];
}

- (void)setShowCollapsedUI:(BOOL)a3
{
  if (self->_showingCollapsedUI != a3)
  {
    self->_showingCollapsedUI = a3;
    [(SiriSharedUIAdaptiveGrabberView *)self->_grabberView setStyle:a3 animated:1];
  }
}

- (void)setCurrentExpandablePlatterStyle:(int64_t)a3
{
  self->_currentExpandablePlatterStyle = a3;
  if (a3 == 2)
  {
    [(SiriSharedUICompactConversationView *)self setShowCollapsedUI:1];
    v4 = [(SiriSharedUICompactConversationView *)self delegate];
    [v4 conversationViewDidTransitionToCollapsedState:self];

    goto LABEL_3;
  }

  [(SiriSharedUICompactConversationView *)self setShowCollapsedUI:0];
  if (a3 == 1)
  {
    self->_automaticallyCollapseWhenResultIsScrolled = 1;
    goto LABEL_4;
  }

  if (a3 == 4)
  {
    self->_automaticallyCollapseWhenResultIsScrolled = 0;
    scrollView = self->_scrollView;
    v6 = 1;
    goto LABEL_5;
  }

  if (a3 != 3)
  {
LABEL_3:
    self->_automaticallyCollapseWhenResultIsScrolled = 0;
LABEL_4:
    scrollView = self->_scrollView;
    v6 = 0;
LABEL_5:

    [(SiriSharedUIStandardScrollView *)scrollView setScrollEnabled:v6];
    return;
  }

  self->_automaticallyCollapseWhenResultIsScrolled = 0;
  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:1];
  v8 = [(SiriSharedUICompactConversationView *)self delegate];
  [v8 conversationViewDidTransitionToExpandedState:self];
}

- (BOOL)transitionToExpandablePlatterStyle:(int64_t)a3
{
  currentExpandablePlatterStyle = self->_currentExpandablePlatterStyle;
  if (currentExpandablePlatterStyle != a3 && currentExpandablePlatterStyle != 0)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        [(SiriSharedUICompactConversationView *)self _resetExpandablePlatterGestureState];
        [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:0];
      }

      else if (a3 == 2)
      {
        expandablePlatterGesture = self->_expandablePlatterGesture;
        [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)expandablePlatterGesture collapsedHeight];
        v8 = self;
        v9 = expandablePlatterGesture;
        v10 = 2;
LABEL_14:
        [(SiriSharedUICompactConversationView *)v8 expandablePlatterGesture:v9 didCompleteTransitionToStyle:v10 phaseHeight:?];
      }

LABEL_15:
      [(SiriSharedUICompactConversationView *)self setCurrentExpandablePlatterStyle:a3];
      [(SiriSharedUICompactConversationView *)self invalidateIntrinsicContentSize];
      return currentExpandablePlatterStyle != 0;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        [(SiriSharedUICompactConversationView *)self setNeedsLayout];
      }

      goto LABEL_15;
    }

    v11 = self->_expandablePlatterGesture;
    [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)v11 expandedHeight];
    v8 = self;
    v9 = v11;
    v10 = 3;
    goto LABEL_14;
  }

  return currentExpandablePlatterStyle != 0;
}

- (void)userUtteranceViewTapped:(id)a3
{
  v4 = [(SiriSharedUICompactConversationView *)self delegate];
  [v4 tapToEditRequestedFromView:self];
}

- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidAppear:(id)a4
{
  v8 = a4;
  v5 = [v8 backingAceObject];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [v8 backingAceObject];
    [WeakRetained conversationView:self viewDidAppearForAceObject:v7];
  }
}

- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidDisappear:(id)a4
{
  v8 = a4;
  v5 = [v8 backingAceObject];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [v8 backingAceObject];
    [WeakRetained conversationView:self viewDidDisappearForAceObject:v7];
  }
}

- (void)serverUtteranceView:(id)a3 utteranceViewDidAppear:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained conversationView:self viewDidAppearForAceObject:v5];
}

- (void)serverUtteranceView:(id)a3 utteranceViewDidDisappear:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained conversationView:self viewDidDisappearForAceObject:v5];
}

- (id)parserSpeakableObjectProviderForServerUtterance:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained parserSpeakableObjectProviderForConversationView:self];

  return v5;
}

- (void)expandablePlatterGesture:(id)a3 didCompleteTransitionToStyle:(int64_t)a4 phaseHeight:(double)a5
{
  [(SiriSharedUICompactConversationView *)self setCurrentExpandablePlatterStyle:a4];
  self->_currentExpandedGestureHeight = a5;
  [(SiriSharedUICompactConversationView *)self frame];
  v8 = v7;
  v9 = [(SiriSharedUICompactConversationView *)self stackContainerDelegate];
  [v9 stackableContentWillUpdateLayout:self withUpdatedContentSize:1 animated:{v8, a5}];

  v10 = [(SiriSharedUICompactConversationView *)self delegate];
  [v10 conversationView:self didUpdateHeightDuringExpansionTransition:1 didCompleteGesture:a5];

  [(SiriSharedUICompactConversationView *)self invalidateIntrinsicContentSize];
}

- (void)expandablePlatterGesture:(id)a3 trackingGestureDidUpdateHeight:(double)a4
{
  [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self->_expandablePlatterGesture collapsedHeight];
  [(SiriSharedUICompactConversationView *)self setShowCollapsedUI:v6 >= a4];
  self->_currentExpandedGestureHeight = a4;
  [(SiriSharedUICompactConversationView *)self frame];
  v8 = v7;
  v9 = [(SiriSharedUICompactConversationView *)self stackContainerDelegate];
  [v9 stackableContentWillUpdateLayout:self withUpdatedContentSize:0 animated:{v8, a4}];

  v10 = [(SiriSharedUICompactConversationView *)self delegate];
  [v10 conversationView:self didUpdateHeightDuringExpansionTransition:0 didCompleteGesture:a4];

  [(SiriSharedUICompactConversationView *)self invalidateIntrinsicContentSize];
}

- (void)_updateExpandedHeight
{
  v3 = [(SiriSharedUICompactConversationView *)self delegate];
  [v3 expectedExpandedHeightForConversationView:self];
  v5 = v4;

  if (v5 > 0.0)
  {
    expandablePlatterGesture = self->_expandablePlatterGesture;

    [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)expandablePlatterGesture setExpandedHeight:v5];
  }
}

- (void)expandablePlatterGestureDidBeginWithRecognizer:(id)a3
{
  [(SiriSharedUICompactConversationView *)self _updateExpandedHeight];
  self->_currentlyTrackingGesture = 1;
  [(SiriSharedUICompactConversationView *)self frame];
  self->_currentExpandedGestureHeight = CGRectGetHeight(v6);
  v4 = [(SiriSharedUICompactConversationView *)self delegate];
  [v4 conversationViewDidBeginExpandTransition:self];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v10 = [(SiriSharedUICompactConversationView *)self delegate];
  [v5 contentOffset];
  v7 = v6;
  v9 = v8;

  [v10 conversationViewContentScrolled:self toContentOffset:{v7, v9}];
}

- (CGSize)_sizeOfSnippet:(id)a3
{
  v4 = a3;
  [(SiriSharedUICompactConversationView *)self bounds];
  v6 = v5;
  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  v8 = v6 - v7;
  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  v10 = v8 - v9;
  if (self->_isInAmbient && self->_allowAutomaticConversationSnippetViewScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v11 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v11 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    v10 = v10 / *v11;
  }

  [(SiriSharedUICompactConversationView *)self _sizeThatFits:v4 forSnippet:v10, 1.79769313e308];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)_sizeThatFitsAllSnippets:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v29 = *MEMORY[0x277D85DE8];
  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  v7 = v6;
  [(SiriSharedUICompactConversationView *)self snippetContentInsets];
  v9 = v8;
  v11 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_conversationSnippetViews;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = width - v7 - v9;
    v16 = *v25;
    v17 = 0.0;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v12);
        }

        [(SiriSharedUICompactConversationView *)self _sizeThatFits:*(*(&v24 + 1) + 8 * v18) forSnippet:v15, height, v24];
        v11 = fmax(v11, v19);
        v10 = v10 + v17 + v20;
        [(SiriSharedUICompactConversationView *)self snippetContentInsets];
        v17 = v21;
        ++v18;
      }

      while (v14 != v18);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v22 = v11;
  v23 = v10;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)a3 forSnippet:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 collectionViewLayout];
    [v7 collectionViewContentSize];
    v9 = v8;
  }

  else
  {
    [v6 sizeThatFits:{width, height}];
    width = v10;
    v9 = v11;
  }

  v12 = width;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)_shouldAddVibrancyForSnippet:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 suppressVibrantBackground] ^ 1;
  }

  else
  {
    v5 = [v3 backgroundColor];
    if (v5)
    {
      v6 = [v3 backgroundColor];
      v7 = [MEMORY[0x277D75348] clearColor];
      LOBYTE(v4) = [v6 isEqual:v7];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)_adjustCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4
{
  v5 = a4;
  [a3 _setContinuousCornerRadius:17.5];
  [v5 _setContinuousCornerRadius:17.5];
}

- (void)_adjustHintCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4
{
  serverUtterances = self->_serverUtterances;
  v7 = a4;
  v8 = a3;
  if ([(NSArray *)serverUtterances count]|| [(NSArray *)self->_conversationSnippetViews count]> 1)
  {
    v9 = 12;
  }

  else if (self->_speechRecognitionHypothesis)
  {
    v9 = 12;
  }

  else
  {
    v9 = 15;
  }

  [v8 _setContinuousCornerRadius:23.5];
  [v7 _setContinuousCornerRadius:23.5];
  v10 = [v8 layer];

  [v10 setMaskedCorners:v9];
  v11 = [v7 layer];

  [v11 setMaskedCorners:v9];
}

- (void)userUtteranceViewContentHeightDidUpdate:(id)a3
{
  [(SiriSharedUICompactConversationView *)self updateContentSizeWithAnimation:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained conversationViewDidUpdatePresentedContentHeight:self];
}

- (SiriSharedUICompactConversationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SiriSharedUIStackableContentDelegate)stackContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->stackContainerDelegate);

  return WeakRetained;
}

- (SiriSharedUIDropletContentDelegate)dropletContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->dropletContainerDelegate);

  return WeakRetained;
}

@end