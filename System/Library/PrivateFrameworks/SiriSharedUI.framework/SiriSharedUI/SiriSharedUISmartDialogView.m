@interface SiriSharedUISmartDialogView
- (BOOL)_hasNoDialog;
- (BOOL)_isConversationSnippetHintType:(id)a3;
- (BOOL)_shouldAddVibrancyForSnippet:(id)a3;
- (BOOL)_showSpeech;
- (BOOL)layerHasOpacity;
- (BOOL)ongoingASR;
- (BOOL)onlyContainsSnippet;
- (BOOL)transitionToExpandablePlatterStyle:(int64_t)a3;
- (BOOL)willAutomaticallyCollapseWhenResultIsScrolled;
- (CGSize)_fittingSize;
- (CGSize)_sizeOfSnippet:(id)a3;
- (CGSize)_sizeThatFits:(CGSize)a3 forSnippet:(id)a4;
- (CGSize)_sizeThatFitsAllSnippets:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUICompactConversationViewDelegate)delegate;
- (SiriSharedUIDropletContentDelegate)dropletContainerDelegate;
- (SiriSharedUISmartDialogView)initWithFrame:(CGRect)a3;
- (SiriSharedUISmartDialogView)initWithResultView:(id)a3;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (UIEdgeInsets)serverUtteranceContentInsets;
- (UIEdgeInsets)snippetContentInsets;
- (UIEdgeInsets)userUtteranceContentInsets;
- (double)maxSnippetWidth;
- (id)_conversationAppearAnimation;
- (id)_conversationDisappearAnimation;
- (id)_filterTranscriptItems:(id)a3;
- (id)animatingLayer;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)parserSpeakableObjectProviderForServerUtterance:(id)a3;
- (id)prepareForUpdatesPendingCompletionBlocks;
- (int)updateUserUtteranceVisibilityIfNeeded;
- (void)_adjustCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4;
- (void)_adjustHintCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4;
- (void)_prepareHintForAnimation;
- (void)_reloadConversationSnippetViewsIfHint;
- (void)_resetAttributionView:(id)a3;
- (void)_resetExpansionStateForNewContent;
- (void)_setupSubviews;
- (void)_showAlternativesUI;
- (void)_updateAmbientSnippetScaling;
- (void)_updateSubviewContentInsets;
- (void)animateAppearanceIfNeeded;
- (void)animateFadeOutWithCompletion:(id)a3;
- (void)animateForDrillIn;
- (void)didCompleteAnimatedFadeOut;
- (void)layoutSubviews;
- (void)prepareForDrillInAnimation;
- (void)prepareForPopAnimationOfType:(int64_t)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)serverUtteranceView:(id)a3 utteranceViewDidAppear:(id)a4;
- (void)serverUtteranceView:(id)a3 utteranceViewDidDisappear:(id)a4;
- (void)setActiveTranscriptItems:(id)a3;
- (void)setAllowAutomaticConversationSnippetViewScaling:(BOOL)a3;
- (void)setConversationSnippetViews:(id)a3;
- (void)setCurrentExpandablePlatterStyle:(int64_t)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setLatencyViewModel:(id)a3;
- (void)setServerUtterances:(id)a3;
- (void)setShowCollapsedUI:(BOOL)a3;
- (void)setSmartDialogCard:(id)a3;
- (void)setSmartDialogPlugin:(id)a3 attribution:(id)a4;
- (void)setSnippetBackgroundView:(id)a3;
- (void)setSpeechRecognitionHypothesisForSuggestion:(id)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)setUserUtteranceViewModel:(id)a3;
- (void)snippetContentDidUpdate;
- (void)updateAttributionView;
- (void)updateContentSizeIfNecessary;
- (void)updateContentSizeWithAnimation:(BOOL)a3;
- (void)userDidReportConcernForCardSection:(id)a3 additionalDomainProvidedFeedback:(id)a4;
- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidAppear:(id)a4;
- (void)userUtteranceView:(id)a3 speechRecognitionHypothesisDidDisappear:(id)a4;
- (void)userUtteranceViewContentHeightDidUpdate:(id)a3;
- (void)userUtteranceViewTapped:(id)a3;
@end

@implementation SiriSharedUISmartDialogView

- (SiriSharedUISmartDialogView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriSharedUISmartDialogView;
  v3 = [(SiriSharedUISmartDialogView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    v3->_state = 1;
    [(SiriSharedUISmartDialogView *)v3 _setupSubviews];
    v5 = [(SiriSharedUISmartDialogView *)v4 layer];
    [v5 setOpacity:0.0];
    [(SiriSharedUISmartDialogView *)v4 setIsActive:1];
    [v5 setCornerRadius:28.0];
    [v5 setMasksToBounds:0];
  }

  return v4;
}

- (SiriSharedUISmartDialogView)initWithResultView:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SiriSharedUISmartDialogView;
  v5 = [(SiriSharedUISmartDialogView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 snippetView];
    v7 = v6;
    if (v6)
    {
      v12[0] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      [(SiriSharedUISmartDialogView *)v5 setConversationSnippetViews:v8];
    }

    v5->_state = 1;
    [(SiriSharedUISmartDialogView *)v5 _setupSubviews];
    v9 = [(SiriSharedUISmartDialogView *)v5 layer];
    [v9 setOpacity:0.0];
    [(SiriSharedUISmartDialogView *)v5 setIsActive:1];
    [v9 setCornerRadius:28.0];
  }

  return v5;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(SiriSharedUIStandardView);
  containerView = self->_containerView;
  self->_containerView = &v3->super;

  [(UIView *)self->_containerView setClipsToBounds:1];
  v5 = self->_containerView;
  v6 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v5 setBackgroundColor:v6];

  v7 = [(UIView *)self->_containerView layer];
  [v7 setHitTestsAsOpaque:1];

  [(SiriSharedUISmartDialogView *)self addSubview:self->_containerView];
  v8 = objc_alloc_init(SiriSharedUIStandardScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  [(SiriSharedUISmartDialogView *)self _enableScrolling:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setDelegate:self];
  [(UIView *)self->_containerView setUserInteractionEnabled:1];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setKeyboardDismissMode:2];
  [(UIView *)self->_containerView addSubview:self->_scrollView];
  v21 = objc_alloc_init(MEMORY[0x277D61AE0]);
  [(SiriSharedUISmartDialogView *)self setLocalization:v21];
  v10 = [[SiriSharedUICompactUserUtteranceView alloc] initWithContentInsets:20.0 cornerRadius:24.0, 0.0, 24.0, 0.0];
  userUtteranceView = self->_userUtteranceView;
  self->_userUtteranceView = v10;

  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setDelegate:self];
  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_userUtteranceView];
  v12 = [[_TtC12SiriSharedUI32SiriSharedUISmartDialogContainer alloc] initWithDelegate:self];
  smartDialogContainer = self->_smartDialogContainer;
  self->_smartDialogContainer = v12;

  v14 = [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer view];
  smartDialogView = self->_smartDialogView;
  self->_smartDialogView = v14;

  v16 = [(UIView *)self->_smartDialogView layer];
  v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA318]];
  [v16 setCompositingFilter:v17];

  [(UIView *)self->_smartDialogView setHidden:1];
  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_smartDialogView];
  v18 = objc_alloc_init(SiriSharedUIStandardView);
  snippetContainerView = self->_snippetContainerView;
  self->_snippetContainerView = &v18->super;

  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_snippetContainerView];
  [(SiriSharedUISmartDialogView *)self setCurrentExpandablePlatterStyle:0];
  v20 = SiriSharedUILanguageSemanticContentAttribute();
  SiriSharedUIRecursiveSetSemanticContentAttribute(self, v20);
  self->_attributionUpdated = 0;
}

- (void)prepareForDrillInAnimation
{
  v13 = *MEMORY[0x277D85DE8];
  self->_isDrilledIn = 1;
  v2 = [(UIView *)self->_snippetContainerView subviews];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v7 performSelector:sel_prepareForDrillInAnimation];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  self->_isDrilledIn = 0;
  [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer setAllowDrillingInAndOut:a3 == 1];
  v5 = [(UIView *)self->_snippetContainerView subviews];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
          [v10 performSelector:sel_prepareForPopAnimationOfType_ withObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
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

- (void)didCompleteAnimatedFadeOut
{
  self->_runningAnimatedFadeOut = 0;
  if (self->_requestedAppearanceAnimation)
  {
    [(SiriSharedUISmartDialogView *)self animateAppearanceIfNeeded];
    self->_requestedAppearanceAnimation = 0;
  }
}

- (void)animateFadeOutWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SiriSharedUISmartDialogView *)self layerHasOpacity])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SiriSharedUISmartDialogView animateFadeOutWithCompletion:]";
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeOut of conversationView", buf, 0xCu);
    }

    self->_runningAnimatedFadeOut = 1;
    [MEMORY[0x277CD9FF0] begin];
    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CD9FF0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __60__SiriSharedUISmartDialogView_animateFadeOutWithCompletion___block_invoke;
    v13 = &unk_2783548D0;
    objc_copyWeak(&v15, buf);
    v14 = v4;
    [v6 setCompletionBlock:&v10];
    v7 = [(SiriSharedUISmartDialogView *)self animatingLayer:v10];
    v8 = [(SiriSharedUISmartDialogView *)self _conversationDisappearAnimation];
    [v7 addAnimation:v8 forKey:@"conversationDisappearance"];

    v9 = [(SiriSharedUISmartDialogView *)self animatingLayer];
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

void __60__SiriSharedUISmartDialogView_animateFadeOutWithCompletion___block_invoke(uint64_t a1)
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
    block[2] = __60__SiriSharedUISmartDialogView_animateFadeOutWithCompletion___block_invoke_2;
    block[3] = &unk_278354858;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)animateAppearanceIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_isDrilledIn)
  {
    if (self->_runningAnimatedFadeOut)
    {
      self->_requestedAppearanceAnimation = 1;
    }

    else if (![(SiriSharedUISmartDialogView *)self layerHasOpacity])
    {
      v3 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SiriSharedUISmartDialogView animateAppearanceIfNeeded]";
        _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeIn of conversationView", &v8, 0xCu);
      }

      [MEMORY[0x277CD9FF0] begin];
      v4 = [(SiriSharedUISmartDialogView *)self animatingLayer];
      v5 = [(SiriSharedUISmartDialogView *)self _conversationAppearAnimation];
      [v4 addAnimation:v5 forKey:@"conversationAppearance"];

      v6 = [(SiriSharedUISmartDialogView *)self animatingLayer];
      LODWORD(v7) = 1.0;
      [v6 setOpacity:v7];

      if (self->_isInAmbient)
      {
        [SiriSharedUICAFiltering applyGaussianBlurFilterToView:self];
      }

      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)animateForDrillIn
{
  smartDialogContainer = self->_smartDialogContainer;
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [(SiriSharedUISmartDialogContainer *)smartDialogContainer updateHeaderWithText:&stru_282F84AA8 color:v4];

  v5 = self->_smartDialogContainer;

  [(SiriSharedUISmartDialogContainer *)v5 updateBodyWithText:@"\n"];
}

- (id)_conversationAppearAnimation
{
  if ([(SiriSharedUISmartDialogView *)self _showSpeech])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v4 = MEMORY[0x277CCABB0];
  [(SiriSharedUISmartDialogView *)self frame];
  v6 = [v4 numberWithDouble:v5];
  v7 = [SiriSharedUIAnimationUtilities animationForStyle:v3 expectedWidthForStyle:v6 presentationType:[(SiriSharedUISmartDialogView *)self _animatedPresentationType]];

  return v7;
}

- (id)_conversationDisappearAnimation
{
  v2 = [(SiriSharedUISmartDialogView *)self _animatedPresentationType];

  return [SiriSharedUIAnimationUtilities animationForStyle:2 expectedWidthForStyle:0 presentationType:v2];
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  self->_userInterfaceStyle = a3;
  if (a3 == 1)
  {
    [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }
  v4 = ;
  if (self->_showingAlternativesUI)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];

    v4 = v5;
  }

  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SiriSharedUISmartDialogView setUserInterfaceStyle:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_21E3EB000, v6, OS_LOG_TYPE_DEFAULT, "%s #smartDialog: setting userUtterance text color to %@", &v7, 0x16u);
  }

  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setTextColor:v4];
  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setNeedsLayout];
  [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView layoutIfNeeded];
}

- (BOOL)layerHasOpacity
{
  v2 = [(SiriSharedUISmartDialogView *)self animatingLayer];
  [v2 opacity];
  v4 = v3 > 0.0;

  return v4;
}

- (id)animatingLayer
{
  v2 = self;
  v3 = [(SiriSharedUISmartDialogView *)self layer];
  [v3 opacity];
  v5 = v4;

  if (v5 != 0.0)
  {
    v2 = v2->_scrollView;
  }

  v6 = [(SiriSharedUISmartDialogView *)v2 layer];

  return v6;
}

- (BOOL)ongoingASR
{
  v3 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
  if (v3)
  {
    v4 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
    if ([v4 isFinal])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
      v7 = [v6 backingAceObject];
      v5 = v7 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_state)
  {
    [(SiriSharedUILatencyView *)self->_latencyView sizeThatFits:a3.width, a3.height];
    v7 = v6;
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView sizeThatFits:width, height];
    v9 = v8;
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer sizeThatFits:width, height];
    v11 = v10;
    v12 = [(SiriSharedUISmartDialogView *)self onlyContainsSnippet];
    v13 = 16.0;
    if (v12)
    {
      v13 = 1.0;
    }

    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer setSmartDialogWidth:width - v13];
    [(SiriSharedUISmartDialogView *)self _sizeThatFitsAllSnippets:width, height];
    v15 = v14;
    if (self->_isInAmbient)
    {
      if (self->_isInAmbientInteractivity)
      {
        v16 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
      }

      else
      {
        v16 = &SiriSharedUICompactAmbientContentScaleAmount;
      }

      v15 = v14 * *v16;
      v17 = 20.0;
    }

    else
    {
      v17 = 0.0;
    }

    v21 = -0.0;
    if (v7 > 0.0)
    {
      v21 = v7;
    }

    v22 = v21 + v17;
    if (v9 > 0.0)
    {
      if ([(SiriSharedUISmartDialogView *)self _showSpeech])
      {
        v22 = v9 + v22;
        if ([(UIView *)self->_smartDialogView isHidden])
        {
          [(SiriSharedUISmartDialogView *)self serverUtteranceContentInsets];
          v22 = v22 + v23;
        }
      }
    }

    if ([(UIView *)self->_smartDialogView isHidden])
    {
      goto LABEL_27;
    }

    v22 = v11 + v22;
    if (v9 <= 0.0)
    {
      if ([(SiriSharedUISmartDialogView *)self onlyContainsSnippet])
      {
LABEL_27:
        v26 = [(UIView *)self->_smartDialogView isHidden];
        if (v15 <= 0.0)
        {
          if (!v26 && ![(SiriSharedUISmartDialogView *)self onlyContainsSnippet]&& ![(NSArray *)self->_activeTranscriptItems count])
          {
            v22 = v22 + 20.0;
          }

          goto LABEL_41;
        }

        if (v9 == 0.0 && v26)
        {
          goto LABEL_32;
        }

        if ([(UIView *)self->_smartDialogView isHidden])
        {
          goto LABEL_40;
        }

        v28 = 16.0;
        if (self->_isInAmbient)
        {
LABEL_32:
          [(SiriSharedUISmartDialogView *)self snippetContentInsets];
        }

        v22 = v22 + v28;
LABEL_40:
        [(SiriSharedUISmartDialogView *)self snippetContentInsets];
        v22 = v22 + v15 + v29;
LABEL_41:
        if (!self->_currentExpandablePlatterStyle)
        {
          v30 = [(SiriSharedUISmartDialogView *)self dropletContainerDelegate];
          [v30 dropletContentMaximumContainerHeight];
          v32 = v31;

          if (v22 >= v32)
          {
            v22 = v32;
          }
        }

        v19 = width;
        v20 = v22;
        goto LABEL_47;
      }

      isInAmbient = self->_isInAmbient;
      v25 = 20.0;
    }

    else
    {
      isInAmbient = self->_isInAmbient;
      v25 = 12.0;
    }

    if (isInAmbient)
    {
      [(SiriSharedUISmartDialogView *)self serverUtteranceContentInsets];
    }

    v22 = v22 + v25;
    goto LABEL_27;
  }

  userUtteranceView = self->_userUtteranceView;

  [(SiriSharedUICompactUserUtteranceView *)userUtteranceView sizeThatFits:?];
LABEL_47:
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315650;
  v4 = "[SiriSharedUISmartDialogView layoutSubviews]";
  v5 = 2048;
  v6 = v2;
  v7 = 2048;
  v8 = 1000;
  _os_log_fault_impl(&dword_21E3EB000, a2, OS_LOG_TYPE_FAULT, "%s #smartDialog - layoutCount:%ld exceeds maxLayoutCount:%ld", &v3, 0x20u);
}

- (void)_resetExpansionStateForNewContent
{
  if ([(SiriSharedUISmartDialogView *)self transitionToExpandablePlatterStyle:1])
  {
    v3 = [(SiriSharedUISmartDialogView *)self delegate];
    [v3 conversationViewDidResetExpandedState:self];
  }
}

- (void)setServerUtterances:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  serverUtterances = self->_serverUtterances;
  if (serverUtterances != v4 && ![(NSArray *)serverUtterances isEqualToArray:v4])
  {
    v6 = [(NSArray *)v4 copy];
    v7 = self->_serverUtterances;
    self->_serverUtterances = v6;

    v8 = [MEMORY[0x277D75348] systemBlueColor];
    if ([(NSArray *)self->_serverUtterances count])
    {
      [(SiriSharedUISmartDialogView *)self transitionToResult];
      v9 = [MEMORY[0x277CBEB18] array];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = self->_serverUtterances;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v28 + 1) + 8 * i) text];
            [v9 addObject:v15];
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      v16 = [v9 componentsJoinedByString:@"\n\n"];
    }

    else
    {
      v16 = 0;
    }

    if ([(__CFString *)v16 length])
    {
      v17 = 0;
    }

    else
    {
      v17 = [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer shouldBeHidden];
    }

    [(UIView *)self->_smartDialogView setHidden:v17];
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateHeaderWithText:&stru_282F84AA8 color:v8];
    if (v17)
    {
      v18 = &stru_282F84AA8;
    }

    else
    {
      v18 = v16;
    }

    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateBodyWithText:v18];
    smartDialogView = self->_smartDialogView;
    v20 = SiriSharedUILanguageSemanticContentAttribute();
    SiriSharedUIRecursiveSetSemanticContentAttribute(smartDialogView, v20);
    [(SiriSharedUISmartDialogView *)self _resetExpansionStateForNewContent];
    if (!v17)
    {
      [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
      if (!CGRectEqualToRect(v34, *MEMORY[0x277CBF3A0]))
      {
        [(SiriSharedUISmartDialogView *)self bounds];
        [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer sizeThatFits:v21, v22];
        v24 = v23;
        v26 = v25;
        [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
        MinX = CGRectGetMinX(v35);
        [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView frame];
        [(UIView *)self->_smartDialogView setFrame:MinX, CGRectGetMaxY(v36), v24, v26];
        [(UIView *)self->_smartDialogView layoutIfNeeded];
      }
    }

    [(SiriSharedUISmartDialogView *)self _reloadConversationSnippetViewsIfHint];
    [(SiriSharedUISmartDialogView *)self _smartDialogSizeNeedsUpdatingWithAnimation:1];
  }
}

- (void)updateContentSizeIfNecessary
{
  if (self->_isResizingRequired)
  {
    [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:1];
    self->_isResizingRequired = 0;
  }
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
          if ([(SiriSharedUISmartDialogView *)self _isConversationSnippetHintType:v8, v12])
          {
            conversationSnippetVibrancyViews = self->_conversationSnippetVibrancyViews;
            v10 = [(SiriSharedUISmartDialogView *)self _keyForSnippet:v8];
            v11 = [(NSDictionary *)conversationSnippetVibrancyViews objectForKey:v10];

            [(SiriSharedUISmartDialogView *)self _adjustHintCornerRadiusForSnippetView:v8 vibrancyView:v11];
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (void)setUserUtteranceViewModel:(id)a3
{
  v4 = a3;
  if (self->_userUtteranceViewModel != v4)
  {
    v26 = v4;
    v25 = [(SiriSharedUISAEUserUtteranceViewModel *)v4 shouldShow]|| [(SiriSharedUISmartDialogView *)self _showSpeech];
    v5 = [SiriSharedUISAEUserUtteranceViewModel alloc];
    v6 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 speech];
    v7 = [v6 copy];
    v8 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 asrAlternatives];
    v9 = [v8 copy];
    v10 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 latencySummary];
    v11 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 shouldShow];
    v12 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 taskIdentifier];
    v13 = [(SiriSharedUISAEUserUtteranceViewModel *)v5 initWithSpeech:v7 asrAlternatives:v9 latencySummary:v10 shouldShow:v11 taskIdentifier:v12];
    userUtteranceViewModel = self->_userUtteranceViewModel;
    self->_userUtteranceViewModel = v13;

    if ([(SiriSharedUISmartDialogView *)self ongoingASR]|| [(SiriSharedUISAEUserUtteranceViewModel *)v26 shouldShow])
    {
      self->_state = 0;
    }

    v15 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 latencySummary];
    if (v15 && (revealRecognizedSpeech = self->_revealRecognizedSpeech, v15, !revealRecognizedSpeech))
    {
      userUtteranceView = self->_userUtteranceView;
      v23 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 latencySummary];
      [(SiriSharedUICompactUserUtteranceView *)userUtteranceView setLatencySummary:v23];
    }

    else if (v25)
    {
      v17 = self->_userUtteranceView;
      v18 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 speech];
      [(SiriSharedUICompactUserUtteranceView *)v17 setSpeechRecognitionHypothesis:v18];

      v19 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 speech];
      LODWORD(v18) = [v19 isFinal];

      if (v18)
      {
        self->_waitingForFinalSpeechHypothesis = 0;
      }

      if (self->_revealRecognizedSpeech)
      {
        v20 = [(SiriSharedUISAEUserUtteranceViewModel *)v26 asrAlternatives];
        v21 = [v20 count];

        if (v21)
        {
          [(SiriSharedUISmartDialogView *)self _showAlternativesUI];
        }
      }
    }

    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithShowingSpeech:[(SiriSharedUISmartDialogView *)self _showSpeech]];
    v24 = self->_userUtteranceView;
    [(SiriSharedUISmartDialogView *)self maxSnippetWidth];
    [(SiriSharedUICompactUserUtteranceView *)v24 setMaxWidth:?];
    [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:0];
    v4 = v26;
  }
}

- (void)_showAlternativesUI
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriSharedUISmartDialogView _showAlternativesUI]";
  _os_log_error_impl(&dword_21E3EB000, log, OS_LOG_TYPE_ERROR, "%s #sae unable to find valid range to underline after iterating through all alternatives", &v1, 0xCu);
}

- (void)setSpeechRecognitionHypothesisForSuggestion:(id)a3
{
  v4 = [a3 copy];
  speechRecognitionHypothesisForSuggestion = self->_speechRecognitionHypothesisForSuggestion;
  self->_speechRecognitionHypothesisForSuggestion = v4;

  MEMORY[0x2821F96F8](v4, speechRecognitionHypothesisForSuggestion);
}

- (void)setSmartDialogPlugin:(id)a3 attribution:(id)a4
{
  v7 = a3;
  if (self->_smartDialogPlugin != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_smartDialogPlugin, a3);
    v8 = a4;
    [(SiriSharedUISmartDialogView *)self _resetAttributionView:0];
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithSmartDialogPluginView:v9];
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithAttribution:v8];

    [(UIView *)self->_smartDialogView setHidden:[(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer shouldBeHidden]];
    if (v9)
    {
      [(SiriSharedUISmartDialogView *)self transitionToResult];
    }

    [(SiriSharedUISmartDialogView *)self _smartDialogSizeNeedsUpdatingWithAnimation:1];
    v7 = v9;
  }
}

- (void)setSmartDialogCard:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_smartDialogCard, a3);
  [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithSmartDialogCard:v5];
  [(UIView *)self->_smartDialogView setHidden:[(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer shouldBeHidden]];
  if (v5)
  {
    [(SiriSharedUISmartDialogView *)self transitionToResult];
  }

  [(SiriSharedUISmartDialogView *)self _smartDialogSizeNeedsUpdatingWithAnimation:1];
}

- (BOOL)onlyContainsSnippet
{
  if ([(NSArray *)self->_serverUtterances count]|| self->_smartDialogCard || self->_smartDialogPlugin)
  {
    return 0;
  }

  else
  {
    return ![(SiriSharedUISmartDialogView *)self _showSpeech];
  }
}

- (void)setLatencyViewModel:(id)a3
{
  v11 = a3;
  v4 = [(SiriSharedUILatencyViewModel *)self->_latencyViewModel isEqualToViewModel:v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = [v11 viewShouldUpdateFromOldModel:self->_latencyViewModel];
    v7 = [v11 copy];
    latencyViewModel = self->_latencyViewModel;
    self->_latencyViewModel = v7;

    v4 = [(SiriSharedUISmartDialogView *)self ongoingASR];
    if ((v4 & 1) != 0 || (-[SiriSharedUISmartDialogView latencyViewModel](self, "latencyViewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 shouldDisplay], v9, v10))
    {
      self->_state = 0;
    }

    v5 = v11;
    if (v6)
    {
      v4 = [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:1];
      v5 = v11;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (int)updateUserUtteranceVisibilityIfNeeded
{
  if ([(SiriSharedUISmartDialogView *)self _showSpeech])
  {
    v3 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
    v4 = [v3 isFinal];

    if ((v4 & 1) == 0)
    {
      v5 = objc_alloc(MEMORY[0x277D61B08]);
      v6 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
      v7 = [v6 userUtterance];
      v8 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
      v9 = [v8 backingAceObject];
      v10 = [v5 initWithUserUtterance:v7 backingAceObject:v9 isFinal:1];

      [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel setSpeech:v10];
    }

    userUtteranceView = self->_userUtteranceView;
    v12 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
    [(SiriSharedUICompactUserUtteranceView *)userUtteranceView setSpeechRecognitionHypothesis:v12];

    if (self->_revealRecognizedSpeech)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setUnderlinedRange:0, 0];
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setSpeechRecognitionHypothesis:0];
    return 0;
  }
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
  if (self->_isInAmbient)
  {
    v4 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
    if (v4)
    {
    }

    else
    {
      v6 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel latencySummary];

      if (!v6)
      {
        v5 = 4.0;
        goto LABEL_7;
      }
    }

    v5 = 4.0;
    v2 = 6.0;
  }

  else
  {
    v5 = 16.0;
  }

LABEL_7:
  v7 = 16.0;
  v8 = 16.0;
  v9 = v2;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)userUtteranceContentInsets
{
  v2 = 20.0;
  v3 = 16.0;
  if (self->_isInAmbient)
  {
    v2 = 16.0;
  }

  v4 = 0.0;
  if (self->_isInAmbient)
  {
    v4 = 4.0;
  }

  else
  {
    v3 = 24.0;
  }

  v5 = v3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)_hasNoDialog
{
  v3 = [(UIView *)self->_smartDialogView isHidden];
  if (v3)
  {
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView bounds];
    LOBYTE(v3) = v5 == *(MEMORY[0x277CBF3A8] + 8) && v4 == *MEMORY[0x277CBF3A8];
  }

  return v3;
}

- (UIEdgeInsets)snippetContentInsets
{
  if (self->_isInAmbient)
  {
    v2 = 4.0;
    v3 = 16.0;
    v4 = 16.0;
    v5 = 16.0;
  }

  else
  {
    v7 = [(SiriSharedUISmartDialogView *)self _hasNoDialog];
    v3 = 0.0;
    if (v7)
    {
      v4 = 0.0;
      v2 = 0.0;
      v5 = 0.0;
    }

    else
    {
      v4 = 0.0;
      v2 = 0.0;
      v5 = 0.0;
      if (!self->_hasHintConversationSnippets)
      {
        v4 = 6.0;
        v3 = 8.0;
        v2 = 8.0;
        v5 = 8.0;
      }
    }
  }

  result.right = v5;
  result.bottom = v2;
  result.left = v3;
  result.top = v4;
  return result;
}

- (void)setSnippetBackgroundView:(id)a3
{
  v5 = a3;
  if (self->_snippetBackgroundView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_snippetBackgroundView, a3);
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithBackgroundView:v6];
    v5 = v6;
  }
}

- (id)_filterTranscriptItems:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 viewController];

        if (v11 && ([v10 isHintItem] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)setActiveTranscriptItems:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(SiriSharedUISmartDialogView *)self _filterTranscriptItems:a3];
  if (![(NSArray *)self->_activeTranscriptItems isEqualToArray:v4])
  {
    objc_storeStrong(&self->_activeTranscriptItems, v4);
    if ([(NSArray *)self->_activeTranscriptItems count])
    {
      [(SiriSharedUISmartDialogView *)self transitionToResult];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) viewController];
          v12 = [v11 view];
          v13 = SiriSharedUILanguageSemanticContentAttribute();
          SiriSharedUIRecursiveSetSemanticContentAttribute(v12, v13);
          if (objc_opt_respondsToSelector())
          {
            [(SiriSharedUISmartDialogView *)self snippetContentInsets];
            [v12 viewInsetsInConversationView:?];
          }

          if (objc_opt_respondsToSelector())
          {
            v9 &= [v12 shouldAutomaticallyScaleContentInAmbient];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    [(SiriSharedUISmartDialogView *)self setAllowAutomaticConversationSnippetViewScaling:v9 & 1];
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithActiveTranscriptItems:v5];
    v14 = [(SiriSharedUISmartDialogView *)self _hasNoDialog];
    v15 = &SiriSharedUICompactPlatterCornerRadius;
    if (!v14)
    {
      v15 = &SiriSharedUICompactConversationViewSnippetCornerRadius;
    }

    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateWithCornerRadius:*v15];
    [(UIView *)self->_smartDialogView setHidden:[(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer shouldBeHidden]];
    [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:1];
    self->_didSetConversationSnippets = 1;
    v4 = v16;
  }
}

- (void)setConversationSnippetViews:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSArray *)self->_conversationSnippetViews isEqualToArray:v5])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = self->_conversationSnippetViews;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v41 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_conversationSnippetViews, a3);
    if ([(NSArray *)self->_conversationSnippetViews count])
    {
      [(SiriSharedUISmartDialogView *)self transitionToResult];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = [(NSDictionary *)self->_conversationSnippetVibrancyViews allValues];
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v37 + 1) + 8 * j) removeFromSuperview];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v13);
    }

    v27 = v5;
    v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = self->_conversationSnippetViews;
    v32 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (!v32)
    {
      LOBYTE(v31) = 1;
      goto LABEL_45;
    }

    v30 = *v34;
    v31 = 1;
    while (1)
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * k);
        v18 = SiriSharedUILanguageSemanticContentAttribute();
        SiriSharedUIRecursiveSetSemanticContentAttribute(v17, v18);
        if (objc_opt_respondsToSelector())
        {
          [(SiriSharedUISmartDialogView *)self snippetContentInsets];
          [v17 viewInsetsInConversationView:?];
        }

        if (objc_opt_respondsToSelector())
        {
          v31 &= [v17 shouldAutomaticallyScaleContentInAmbient];
        }

        v19 = [(SiriSharedUISmartDialogView *)self _isConversationSnippetHintType:v17];
        if (![(SiriSharedUISmartDialogView *)self _shouldAddVibrancyForSnippet:v17]&& !v19)
        {
          v20 = 0;
          goto LABEL_35;
        }

        if (!v19)
        {
          v20 = [[SiriSharedUICompactConversationSnippetVibrancyView alloc] initWithStyle:0];
          if (!v20)
          {
            goto LABEL_35;
          }

LABEL_34:
          v22 = [(SiriSharedUISmartDialogView *)self _keyForSnippet:v17];
          [(NSDictionary *)v28 setObject:v20 forKey:v22];

          goto LABEL_35;
        }

        self->_hasHintConversationSnippets = 1;
        v20 = [[SiriSharedUICompactConversationSnippetVibrancyView alloc] initWithStyle:1];
        [(UIView *)self->_snippetContainerView frame];
        [(SiriSharedUICompactConversationSnippetVibrancyView *)v20 setFrame:?];
        v21 = [(SiriSharedUICompactConversationSnippetVibrancyView *)v20 layer];
        [v21 setOpacity:0.0];

        objc_storeStrong(&self->_hintVibrancyView, v20);
        objc_storeStrong(&self->_hintSnippetView, v17);
        if (v20)
        {
          goto LABEL_34;
        }

LABEL_35:
        snippetContainerView = self->_snippetContainerView;
        if (snippetContainerView)
        {
          [(UIView *)snippetContainerView addSubview:v17];
          v24 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
          [(UIView *)self->_snippetContainerView addInteraction:v24];
          [(UIView *)self->_snippetContainerView insertSubview:self->_snippetBackgroundView belowSubview:v17];
          snippetBackgroundView = self->_snippetBackgroundView;
          [(UIView *)self->_snippetContainerView frame];
          [(UIView *)snippetBackgroundView setFrame:?];
        }

        else
        {
          [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:v17];
        }

        if (v19)
        {
          [(SiriSharedUISmartDialogView *)self _adjustHintCornerRadiusForSnippetView:v17 vibrancyView:v20];
        }

        else
        {
          [(SiriSharedUISmartDialogView *)self _adjustCornerRadiusForSnippetView:v17 vibrancyView:v20];
        }

        [v17 setClipsToBounds:1];
      }

      v32 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (!v32)
      {
LABEL_45:

        conversationSnippetVibrancyViews = self->_conversationSnippetVibrancyViews;
        self->_conversationSnippetVibrancyViews = v28;

        [(SiriSharedUISmartDialogView *)self setAllowAutomaticConversationSnippetViewScaling:v31 & 1];
        [(SiriSharedUISmartDialogView *)self _smartDialogSizeNeedsUpdatingWithAnimation:1];
        self->_didSetConversationSnippets = 1;
        v5 = v27;
        break;
      }
    }
  }
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = a3;
  v7 = [v6 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v6 view];
  v17 = [v16 subviews];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v6 view];
    v20 = [v19 subviews];
    v21 = [v20 firstObject];
    [v21 frame];
    v9 = v22;
    v11 = v23;
    v13 = v24;
    v15 = v25;
  }

  v26 = [(SiriSharedUISmartDialogView *)self _hasNoDialog];
  v27 = &SiriSharedUISmartDialogPlatterCornerRadius;
  if (!v26)
  {
    v27 = &SiriSharedUISmartDialogSnippetCornerRadius;
  }

  v28 = *v27;
  v29 = objc_alloc_init(MEMORY[0x277D758D8]);
  v30 = [MEMORY[0x277D75348] clearColor];
  [v29 setBackgroundColor:v30];

  v31 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v28}];
  [v29 setVisiblePath:v31];

  v32 = objc_alloc(MEMORY[0x277D75B90]);
  v33 = [v6 view];
  v34 = [v32 initWithView:v33 parameters:v29];

  return v34;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SiriSharedUISmartDialogView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_278354920;
  v6[4] = self;
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __85__SiriSharedUISmartDialogView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D750C8];
  v3 = [*(a1 + 32) localization];
  v4 = [v3 localizedStringWithSiriLanguageForKey:@"Report a Concern"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.bubble"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__SiriSharedUISmartDialogView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v11[3] = &unk_2783548F8;
  v11[4] = *(a1 + 32);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v11];

  v7 = MEMORY[0x277D75710];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v7 menuWithChildren:v8];

  return v9;
}

- (BOOL)willAutomaticallyCollapseWhenResultIsScrolled
{
  if (self->_isInAmbient)
  {
    return 0;
  }

  [(SiriSharedUISmartDialogView *)self frame];
  Height = CGRectGetHeight(v6);
  if (!self->_automaticallyCollapseWhenResultIsScrolled)
  {
    return 0;
  }

  return [(SiriSharedUISmartDialogView *)self contentSupportsCollapsingForHeight:Height];
}

- (void)snippetContentDidUpdate
{
  [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer updateSnippetSizes];

  [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:0];
}

- (void)_prepareHintForAnimation
{
  [(SiriSharedUISmartDialogView *)self _sizeOfSnippet:self->_hintSnippetView];
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
  [(SiriSharedUISmartDialogView *)self maxSnippetWidth];

  [(SiriSharedUISmartDialogView *)self sizeThatFits:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)maxSnippetWidth
{
  if (SiriSharedUIDeviceIsPad())
  {
    IsLargeFormatPad = SiriSharedUIDeviceIsLargeFormatPad();
    v4 = &SiriSharedUISAEContentMaxWidthPadLarge;
    if (!IsLargeFormatPad)
    {
      v4 = &SiriSharedUISAEContentMaxWidthPadRegular;
    }
  }

  else
  {
    v4 = &SiriSharedUICompactContentMaxWidth;
  }

  v5 = *v4;
  if (self->_isInAmbient)
  {
    v5 = v5 * 2.0;
    v6 = &SiriSharedUISmartDialogAmbientHorizontalPadding;
  }

  else
  {
    IsPad = SiriSharedUIDeviceIsPad();
    v6 = &SiriSharedUICompactPlatterAmbientHorizontalPadding;
    if (!IsPad)
    {
      v6 = &SiriSharedUICompactPlatterHorizontalPadding;
    }
  }

  v8 = *v6;
  v9 = [(SiriSharedUISmartDialogView *)self dropletContainerDelegate];
  [v9 dropletContentMaximumContainerWidth];
  v11 = v10 + v8 * -2.0;

  if (v5 >= v11)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

- (CGSize)intrinsicContentSize
{
  [(SiriSharedUISmartDialogView *)self _fittingSize];
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
  v17 = *MEMORY[0x277D85DE8];
  [(SiriSharedUISmartDialogView *)self _fittingSize];
  v6 = v5;
  v8 = v7;
  [(SiriSharedUISmartDialogView *)self _updateSubviewContentInsets];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SiriSharedUISmartDialogView updateContentSizeWithAnimation:]";
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_21E3EB000, v9, OS_LOG_TYPE_DEFAULT, "%s #smartDialog updateContentSizeWithAnimation: %f %f", &v11, 0x20u);
  }

  v10 = [(SiriSharedUISmartDialogView *)self dropletContainerDelegate];
  [v10 dropletContentWillUpdateLayout:self withUpdatedContentSize:v3 animated:{v6, v8}];

  [(SiriSharedUISmartDialogView *)self invalidateIntrinsicContentSize];
}

- (void)setAllowAutomaticConversationSnippetViewScaling:(BOOL)a3
{
  if (self->_allowAutomaticConversationSnippetViewScaling != a3)
  {
    self->_allowAutomaticConversationSnippetViewScaling = a3;
    [(SiriSharedUISmartDialogView *)self _updateAmbientSnippetScaling];
  }
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    v4 = a3;
    self->_isInAmbient = a3;
    [(SiriSharedUISmartDialogView *)self _updateSubviewContentInsets];
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setIsInAmbient:v4];
    [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer setIsInAmbient:v4];

    [(SiriSharedUISmartDialogView *)self _updateAmbientSnippetScaling];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  if (self->_isInAmbientInteractivity != a3)
  {
    self->_isInAmbientInteractivity = a3;
    [(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView setIsInAmbientInteractivity:?];

    [(SiriSharedUISmartDialogView *)self _updateAmbientSnippetScaling];
  }
}

- (void)_updateSubviewContentInsets
{
  userUtteranceView = self->_userUtteranceView;
  [(SiriSharedUISmartDialogView *)self userUtteranceContentInsets];

  [(SiriSharedUICompactUserUtteranceView *)userUtteranceView setContentInsets:?];
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

    snippetContainerView = self->_snippetContainerView;
    CGAffineTransformMakeScale(&v6, *v2, *v2);
    v4 = snippetContainerView;
  }

  else
  {
    v4 = self->_snippetContainerView;
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v6.a = *MEMORY[0x277CBF2C0];
    *&v6.c = v5;
    *&v6.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  [(UIView *)v4 setTransform:&v6, *&v6.a, *&v6.c, *&v6.tx];
}

- (BOOL)_showSpeech
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = ([v3 alwaysShowRecognizedSpeech] & 1) != 0 || self->_revealRecognizedSpeech;

  return v4;
}

- (void)setShowCollapsedUI:(BOOL)a3
{
  if (self->_showingCollapsedUI != a3)
  {
    self->_showingCollapsedUI = a3;
  }
}

- (void)setCurrentExpandablePlatterStyle:(int64_t)a3
{
  self->_currentExpandablePlatterStyle = a3;
  if (a3 == 2)
  {
    [(SiriSharedUISmartDialogView *)self setShowCollapsedUI:1];
    v4 = [(SiriSharedUISmartDialogView *)self delegate];
    [v4 conversationViewDidTransitionToCollapsedState:self];

    goto LABEL_3;
  }

  [(SiriSharedUISmartDialogView *)self setShowCollapsedUI:0];
  if (a3 == 1)
  {
    self->_automaticallyCollapseWhenResultIsScrolled = 1;
    goto LABEL_4;
  }

  if (a3 == 4)
  {
    self->_automaticallyCollapseWhenResultIsScrolled = 0;
    v5 = self;
    v6 = 1;
    goto LABEL_5;
  }

  if (a3 != 3)
  {
LABEL_3:
    self->_automaticallyCollapseWhenResultIsScrolled = 0;
LABEL_4:
    v5 = self;
    v6 = 0;
LABEL_5:

    [(SiriSharedUISmartDialogView *)v5 _enableScrolling:v6];
    return;
  }

  self->_automaticallyCollapseWhenResultIsScrolled = 0;
  [(SiriSharedUISmartDialogView *)self _enableScrolling:1];
  v8 = [(SiriSharedUISmartDialogView *)self delegate];
  [v8 conversationViewDidTransitionToExpandedState:self];
}

- (BOOL)transitionToExpandablePlatterStyle:(int64_t)a3
{
  currentExpandablePlatterStyle = self->_currentExpandablePlatterStyle;
  if (currentExpandablePlatterStyle != a3 && currentExpandablePlatterStyle != 0)
  {
    if (a3 == 4)
    {
      [(SiriSharedUISmartDialogView *)self setNeedsLayout];
    }

    else if (a3 == 1)
    {
      [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:0];
    }

    [(SiriSharedUISmartDialogView *)self setCurrentExpandablePlatterStyle:a3];
    [(SiriSharedUISmartDialogView *)self invalidateIntrinsicContentSize];
  }

  return currentExpandablePlatterStyle != 0;
}

- (void)userUtteranceViewTapped:(id)a3
{
  if ([(SiriSharedUICompactUserUtteranceView *)self->_userUtteranceView currentDisplayType]== 1)
  {
    v4 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
    v5 = [v4 userUtterance];
    v9 = [v5 bestTextInterpretation];

    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v7 = objc_loadWeakRetained(&self->_interactionDelegate);
      v8 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel asrAlternatives];
      [v7 siriViewControllerShouldRequestTextInputWithUtterance:v9 alternatives:v8];
    }
  }
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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v10 = [(SiriSharedUISmartDialogView *)self delegate];
  [v5 contentOffset];
  v7 = v6;
  v9 = v8;

  [v10 conversationViewContentScrolled:self toContentOffset:{v7, v9}];
}

- (CGSize)_sizeOfSnippet:(id)a3
{
  v4 = a3;
  [(SiriSharedUISmartDialogView *)self _fittingSize];
  v6 = v5;
  [(SiriSharedUISmartDialogView *)self snippetContentInsets];
  v8 = v6 - v7;
  [(SiriSharedUISmartDialogView *)self snippetContentInsets];
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

  [(SiriSharedUISmartDialogView *)self _sizeThatFits:v4 forSnippet:v10, 1.79769313e308];
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
  [(SiriSharedUISmartDialogView *)self snippetContentInsets];
  v7 = v6;
  [(SiriSharedUISmartDialogView *)self snippetContentInsets];
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

        [(SiriSharedUISmartDialogView *)self _sizeThatFits:*(*(&v24 + 1) + 8 * v18) forSnippet:v15, height, v24];
        v11 = fmax(v11, v19);
        v10 = v10 + v17 + v20;
        [(SiriSharedUISmartDialogView *)self snippetContentInsets];
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
  v6 = a4;
  v7 = a3;
  v8 = [(SiriSharedUISmartDialogView *)self _hasNoDialog];
  v9 = &SiriSharedUISmartDialogPlatterCornerRadius;
  if (!v8)
  {
    v9 = &SiriSharedUISmartDialogSnippetCornerRadius;
  }

  v10 = *v9;
  [v7 _setContinuousCornerRadius:*v9];

  [v6 _setContinuousCornerRadius:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    snippetBackgroundView = self->_snippetBackgroundView;

    [(UIView *)snippetBackgroundView setContinuousCornerRadius:v10];
  }
}

- (void)_adjustHintCornerRadiusForSnippetView:(id)a3 vibrancyView:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(NSArray *)self->_serverUtterances count]|| [(NSArray *)self->_conversationSnippetViews count]> 1)
  {
    goto LABEL_6;
  }

  v7 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel speech];
  if (v7)
  {

LABEL_6:
    v9 = 12;
    goto LABEL_7;
  }

  v8 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtteranceViewModel latencySummary];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 15;
LABEL_7:
  [v12 _setContinuousCornerRadius:28.0];
  [v6 _setContinuousCornerRadius:28.0];
  v10 = [v12 layer];
  [v10 setMaskedCorners:v9];

  v11 = [v6 layer];
  [v11 setMaskedCorners:v9];
}

- (void)userUtteranceViewContentHeightDidUpdate:(id)a3
{
  [(SiriSharedUISmartDialogView *)self updateContentSizeWithAnimation:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained conversationViewDidUpdatePresentedContentHeight:self];
}

- (void)userDidReportConcernForCardSection:(id)a3 additionalDomainProvidedFeedback:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v8 = objc_opt_respondsToSelector();

  v9 = objc_loadWeakRetained(&self->_interactionDelegate);
  v10 = v9;
  if (v8)
  {
    [v9 userDidReportConcernForCardSection:v13 additionalDomainProvidedFeedback:v6];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    v12 = objc_loadWeakRetained(&self->_interactionDelegate);
    v10 = v12;
    if (v11)
    {
      [v12 userDidReportConcernForCardSection:v13];
    }

    else
    {
      [v12 userDidReportConcern];
    }
  }
}

- (void)updateAttributionView
{
  [(UIView *)self->_containerView bounds];
  v4 = v3;
  [(UIView *)self->_containerView frame];
  v6 = v5;
  if (CGRectIsEmpty(self->_cappedFrame))
  {
    v7 = v4 - 50.0;
  }

  else
  {
    v7 = self->_cappedFrame.size.height - self->_attributionHeight;
  }

  attributionView = self->_attributionView;
  [(SiriSharedUISmartDialogView *)self maxSnippetWidth];
  [(UIView *)attributionView setFrame:v6, v7, v9, 50.0];
  v10 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:self->_scrollView edge:4 style:0];
  [(UIView *)self->_attributionView addInteraction:v10];
  [(SiriSharedUISmartDialogView *)self addSubview:self->_attributionView];
  [(UIView *)self->_attributionView sizeToFit];
  self->_attributionUpdated = 1;
}

- (void)_resetAttributionView:(id)a3
{
  v4 = a3;
  self->_attributionUpdated = 0;
  attributionView = self->_attributionView;
  if (attributionView)
  {
    [(UIView *)attributionView removeFromSuperview];
  }

  v6 = self->_attributionView;
  self->_attributionView = v4;
}

- (void)setInteractionDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_interactionDelegate, v4);
  [(SiriSharedUISmartDialogContainer *)self->_smartDialogContainer setInteractionDelegate:v4];
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