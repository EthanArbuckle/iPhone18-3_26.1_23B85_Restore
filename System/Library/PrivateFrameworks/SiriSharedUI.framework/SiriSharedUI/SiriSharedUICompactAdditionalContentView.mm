@interface SiriSharedUICompactAdditionalContentView
- (BOOL)layerHasOpacity;
- (CGSize)_fittingSize;
- (CGSize)_sizeThatFits:(CGSize)fits forSnippet:(id)snippet;
- (CGSize)_sizeThatFitsAllSnippets:(CGSize)snippets;
- (CGSize)portraitContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUICompactAdditionalContentView)initWithFrame:(CGRect)frame platterCategory:(int64_t)category;
- (SiriSharedUICompactAdditionalContentViewDelegate)delegate;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (id)_conversationAppearAnimation;
- (id)_conversationDisappearAnimation;
- (id)prepareForUpdatesPendingCompletionBlocks;
- (void)_setupSubviews;
- (void)animateAppearanceIfNeeded;
- (void)animateFadeOutWithCompletion:(id)completion;
- (void)didCompleteAnimatedFadeOut;
- (void)layoutSubviews;
- (void)prepareForUpdatesToSnippetViews:(BOOL)views;
- (void)setSnippetViews:(id)views;
- (void)updateContentSizeWithAnimation:(BOOL)animation;
@end

@implementation SiriSharedUICompactAdditionalContentView

- (SiriSharedUICompactAdditionalContentView)initWithFrame:(CGRect)frame platterCategory:(int64_t)category
{
  v9.receiver = self;
  v9.super_class = SiriSharedUICompactAdditionalContentView;
  v5 = [(SiriSharedUICompactAdditionalContentView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(SiriSharedUICompactAdditionalContentView *)v5 _setupSubviews];
    layer = [(SiriSharedUICompactAdditionalContentView *)v6 layer];
    [layer setOpacity:0.0];
  }

  v6->_platterCategory = category;
  return v6;
}

- (void)_setupSubviews
{
  v3 = [MEMORY[0x277D3D328] platterViewWithBlurEffectStyle:8];
  platterView = self->_platterView;
  self->_platterView = v3;

  [(PLPlatterView *)self->_platterView _setContinuousCornerRadius:23.5];
  [(SiriSharedUICompactAdditionalContentView *)self addSubview:self->_platterView];
  v5 = objc_alloc_init(SiriSharedUIStandardView);
  containerView = self->_containerView;
  self->_containerView = &v5->super;

  [(UIView *)self->_containerView setClipsToBounds:1];
  v7 = self->_containerView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v7 setBackgroundColor:clearColor];

  customContentView = [(PLPlatterView *)self->_platterView customContentView];
  [customContentView addSubview:self->_containerView];

  v10 = objc_alloc_init(SiriSharedUIStandardView);
  snippetContainerView = self->_snippetContainerView;
  self->_snippetContainerView = &v10->super;

  [(UIView *)self->_containerView addSubview:self->_snippetContainerView];
  v12 = SiriSharedUILanguageSemanticContentAttribute();

  SiriSharedUIRecursiveSetSemanticContentAttribute(self, v12);
}

- (void)layoutSubviews
{
  v44 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = SiriSharedUICompactAdditionalContentView;
  [(SiriSharedUICompactAdditionalContentView *)&v42 layoutSubviews];
  [(SiriSharedUICompactAdditionalContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  animationContextForFrameAndLayoutUpdate = [(SiriSharedUICompactAdditionalContentView *)self animationContextForFrameAndLayoutUpdate];

  if (animationContextForFrameAndLayoutUpdate)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __58__SiriSharedUICompactAdditionalContentView_layoutSubviews__block_invoke;
    v41[3] = &unk_278354A90;
    v41[4] = self;
    *&v41[5] = v4;
    *&v41[6] = v6;
    *&v41[7] = v8;
    *&v41[8] = v10;
    animationContextForFrameAndLayoutUpdate2 = [(SiriSharedUICompactAdditionalContentView *)self animationContextForFrameAndLayoutUpdate];
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v41 context:animationContextForFrameAndLayoutUpdate2 completion:0];
  }

  else
  {
    [(PLPlatterView *)self->_platterView setFrame:v4, v6, v8, v10];
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  [(PLPlatterView *)self->_platterView setHasShadow:CGRectGetHeight(v45) > 0.0];
  [(UIView *)self->_containerView setFrame:v4, v6, v8, v10];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_snippetViews;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v14)
  {
    maxY = v14;
    rect = v10;
    v32 = v4;
    v16 = 0;
    v18 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    v35 = *(MEMORY[0x277CBF3A0] + 8);
    v36 = *MEMORY[0x277CBF3A0];
    v33 = *(MEMORY[0x277CBF3A0] + 24);
    v34 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *v38;
    v20 = 0.0;
    v21 = 0.0;
    do
    {
      for (i = 0; i != maxY; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        [(SiriSharedUICompactAdditionalContentView *)self _sizeThatFits:v23 forSnippet:v8, 1.79769313e308];
        if (v24 == v18 && v25 == v17)
        {
          [v23 setFrame:{v36, v35, v34, v33}];
        }

        else
        {
          v27 = v24;
          [v23 setFrame:{0.0, v21, v24, v25}];
          [v23 frame];
          v21 = CGRectGetMaxY(v46) + 0.0;
          [v23 frame];
          MaxY = CGRectGetMaxY(v47);
          if (v20 < v27)
          {
            v20 = v27;
          }

          if (v16)
          {
            v16 = 1;
          }

          else
          {
            v29 = floor(MaxY + 0.0);
            v48.origin.y = v6;
            v48.origin.x = v32;
            v48.size.width = v8;
            v48.size.height = rect;
            MaxY = floor(CGRectGetHeight(v48));
            v16 = v29 > MaxY;
          }
        }
      }

      maxY = [(NSArray *)v13 countByEnumeratingWithState:&v37 objects:v43 count:16, MaxY];
    }

    while (maxY);
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
  }

  [(UIView *)self->_snippetContainerView setFrame:0.0, 0.0, v20, v21];
  stackContainerDelegate = [(SiriSharedUICompactAdditionalContentView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentDidLayout:self];
}

- (void)setSnippetViews:(id)views
{
  v30 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_snippetViews isEqualToArray:viewsCopy])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_snippetViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v24 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    v10 = [viewsCopy copy];
    snippetViews = self->_snippetViews;
    self->_snippetViews = v10;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_snippetViews;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * j);
          v18 = SiriSharedUILanguageSemanticContentAttribute();
          SiriSharedUIRecursiveSetSemanticContentAttribute(v17, v18);
          if (objc_opt_respondsToSelector())
          {
            [v17 viewInsetsInConversationView:{0.0, 0.0, 0.0, 0.0, v20}];
          }

          snippetContainerView = self->_snippetContainerView;
          if (snippetContainerView)
          {
            [(UIView *)snippetContainerView addSubview:v17];
          }

          [(SiriSharedUICompactAdditionalContentView *)self _adjustCornerRadiusForSnippetView:v17, v20];
          [v17 setClipsToBounds:1];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [(SiriSharedUICompactAdditionalContentView *)self updateContentSizeWithAnimation:1];
  }
}

- (id)prepareForUpdatesPendingCompletionBlocks
{
  prepareForUpdatesPendingCompletionBlocks = self->_prepareForUpdatesPendingCompletionBlocks;
  if (!prepareForUpdatesPendingCompletionBlocks)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_prepareForUpdatesPendingCompletionBlocks;
    self->_prepareForUpdatesPendingCompletionBlocks = array;

    prepareForUpdatesPendingCompletionBlocks = self->_prepareForUpdatesPendingCompletionBlocks;
  }

  return prepareForUpdatesPendingCompletionBlocks;
}

- (CGSize)portraitContentSize
{
  [(UIView *)self->_containerView bounds];
  v3 = v2;
  v5 = v4 + 8.0 * 2.0;
  result.height = v3;
  result.width = v5;
  return result;
}

- (void)animateAppearanceIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_snippetViews count])
  {
    if (self->_runningAnimatedFadeOut)
    {
      self->_requestedAppearanceAnimation = 1;
    }

    else if (![(SiriSharedUICompactAdditionalContentView *)self layerHasOpacity])
    {
      v3 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SiriSharedUICompactAdditionalContentView animateAppearanceIfNeeded]";
        _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeIn of platterView", &v8, 0xCu);
      }

      [MEMORY[0x277CD9FF0] begin];
      layer = [(SiriSharedUICompactAdditionalContentView *)self layer];
      _conversationAppearAnimation = [(SiriSharedUICompactAdditionalContentView *)self _conversationAppearAnimation];
      [layer addAnimation:_conversationAppearAnimation forKey:@"additionalContentAppearance"];

      layer2 = [(SiriSharedUICompactAdditionalContentView *)self layer];
      LODWORD(v7) = 1.0;
      [layer2 setOpacity:v7];

      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (id)_conversationAppearAnimation
{
  v3 = MEMORY[0x277CCABB0];
  [(SiriSharedUICompactAdditionalContentView *)self frame];
  v5 = [v3 numberWithDouble:v4];
  v6 = [SiriSharedUIAnimationUtilities animationForStyle:3 expectedWidthForStyle:v5 presentationType:[(SiriSharedUICompactAdditionalContentView *)self _animatedPresentationType]];

  return v6;
}

- (id)_conversationDisappearAnimation
{
  _animatedPresentationType = [(SiriSharedUICompactAdditionalContentView *)self _animatedPresentationType];

  return [SiriSharedUIAnimationUtilities animationForStyle:2 expectedWidthForStyle:0 presentationType:_animatedPresentationType];
}

- (void)prepareForUpdatesToSnippetViews:(BOOL)views
{
  viewsCopy = views;
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    runningPrepareForUpdates = self->_runningPrepareForUpdates;
    *buf = 136315650;
    v10 = "[SiriSharedUICompactAdditionalContentView prepareForUpdatesToSnippetViews:]";
    v11 = 1024;
    v12 = runningPrepareForUpdates;
    v13 = 1024;
    v14 = 1;
    _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact prepareForUpdates isAlreadyRunningPrepareForUpdates: %d, meetsRequirementsForContentUpdating: %d", buf, 0x18u);
  }

  if (viewsCopy && !self->_runningPrepareForUpdates)
  {
    self->_runningPrepareForUpdates = 1;
    objc_initWeak(buf, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__SiriSharedUICompactAdditionalContentView_prepareForUpdatesToSnippetViews___block_invoke;
    v7[3] = &unk_278354A40;
    objc_copyWeak(&v8, buf);
    [(SiriSharedUICompactAdditionalContentView *)self animateFadeOutWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __76__SiriSharedUICompactAdditionalContentView_prepareForUpdatesToSnippetViews___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 434) = 0;
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[SiriSharedUICompactAdditionalContentView prepareForUpdatesToSnippetViews:]_block_invoke";
      _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact processing any pending update completionBlocks", buf, 0xCu);
    }

    v4 = objc_alloc_init(SiriSharedUIAnimationContext);
    [(SiriSharedUIAnimationContext *)v4 setAnimationDuration:0.0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__SiriSharedUICompactAdditionalContentView_prepareForUpdatesToSnippetViews___block_invoke_13;
    v5[3] = &unk_278354858;
    v5[4] = v2;
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v5 context:v4 completion:0];
  }
}

uint64_t __76__SiriSharedUICompactAdditionalContentView_prepareForUpdatesToSnippetViews___block_invoke_13(uint64_t a1)
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
    [(SiriSharedUICompactAdditionalContentView *)self animateAppearanceIfNeeded];
    self->_requestedAppearanceAnimation = 0;
  }
}

- (void)animateFadeOutWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(SiriSharedUICompactAdditionalContentView *)self layerHasOpacity])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SiriSharedUICompactAdditionalContentView animateFadeOutWithCompletion:]";
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact running fadeOut of platterView", buf, 0xCu);
    }

    self->_runningAnimatedFadeOut = 1;
    [MEMORY[0x277CD9FF0] begin];
    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CD9FF0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __73__SiriSharedUICompactAdditionalContentView_animateFadeOutWithCompletion___block_invoke;
    v13 = &unk_2783548D0;
    objc_copyWeak(&v15, buf);
    v14 = completionCopy;
    [v6 setCompletionBlock:&v10];
    v7 = [(SiriSharedUICompactAdditionalContentView *)self layer:v10];
    _conversationDisappearAnimation = [(SiriSharedUICompactAdditionalContentView *)self _conversationDisappearAnimation];
    [v7 addAnimation:_conversationDisappearAnimation forKey:@"additionalContentDisappearance"];

    layer = [(SiriSharedUICompactAdditionalContentView *)self layer];
    [layer setOpacity:0.0];

    [MEMORY[0x277CD9FF0] commit];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __73__SiriSharedUICompactAdditionalContentView_animateFadeOutWithCompletion___block_invoke(uint64_t a1)
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
    block[2] = __73__SiriSharedUICompactAdditionalContentView_animateFadeOutWithCompletion___block_invoke_2;
    block[3] = &unk_278354858;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (BOOL)layerHasOpacity
{
  layer = [(SiriSharedUICompactAdditionalContentView *)self layer];
  [layer opacity];
  v4 = v3 > 0.0;

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SiriSharedUICompactAdditionalContentView *)self _sizeThatFitsAllSnippets:fits.width, fits.height];
  v5 = fmax(v4, 0.0);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)_sizeThatFitsAllSnippets:(CGSize)snippets
{
  height = snippets.height;
  width = snippets.width;
  v22 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_snippetViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SiriSharedUICompactAdditionalContentView *)self _sizeThatFits:*(*(&v17 + 1) + 8 * v12) forSnippet:width, height, v17];
        v7 = fmax(v7, v13);
        v6 = v6 + v14 + 0.0;
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = v7;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateContentSizeWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(SiriSharedUICompactAdditionalContentView *)self _fittingSize];
  v6 = v5;
  v8 = v7;
  stackContainerDelegate = [(SiriSharedUICompactAdditionalContentView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentWillUpdateLayout:self withUpdatedContentSize:animationCopy animated:{v6, v8}];

  [(SiriSharedUICompactAdditionalContentView *)self invalidateIntrinsicContentSize];
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
  stackContainerDelegate = [(SiriSharedUICompactAdditionalContentView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentMaximumContainerWidth];
  v8 = v7 + v5 * -2.0;

  if (v3 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  [(SiriSharedUICompactAdditionalContentView *)self sizeThatFits:v9, 1.79769313e308];
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)fits forSnippet:(id)snippet
{
  height = fits.height;
  width = fits.width;
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewLayout = [snippetCopy collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v9 = v8;
  }

  else
  {
    [snippetCopy sizeThatFits:{width, height}];
    width = v10;
    v9 = v11;
  }

  v12 = width;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (SiriSharedUICompactAdditionalContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SiriSharedUIStackableContentDelegate)stackContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->stackContainerDelegate);

  return WeakRetained;
}

@end