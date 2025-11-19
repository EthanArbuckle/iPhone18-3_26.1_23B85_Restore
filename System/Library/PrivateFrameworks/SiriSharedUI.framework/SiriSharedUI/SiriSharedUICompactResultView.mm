@interface SiriSharedUICompactResultView
- (BOOL)_isSnippetAnimatingInsertionOrRemoval;
- (BOOL)_snippetViewIsLoading;
- (CGSize)_maxSizeForSnippet;
- (CGSize)intrinsicContentSize;
- (CGSize)previousContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUICompactResultView)initWithFrame:(CGRect)a3;
- (SiriSharedUICompactResultViewDelegate)delegate;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (id)_snippetInsertAnimation;
- (id)_snippetRemovalAnimation;
- (void)_overlayButtonWasTouchedUpInside:(id)a3;
- (void)contentPlatterView:(id)a3 didScrollWithContentOffset:(CGPoint)a4;
- (void)contentPlatterViewScrollDidBegin;
- (void)contentPlatterViewScrollDidEnd;
- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)a3;
- (void)layoutSubviews;
- (void)relayoutWhileEditing:(BOOL)a3;
- (void)setDarkenIntensity:(double)a3;
- (void)setDarkenIntensity:(double)a3 animated:(BOOL)a4;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setShowDimmingView:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowSnippetView:(BOOL)a3 animated:(BOOL)a4;
- (void)setSnippetView:(id)a3 completion:(id)a4;
- (void)snippetContentDidUpdateWhileEditing:(BOOL)a3;
@end

@implementation SiriSharedUICompactResultView

- (SiriSharedUICompactResultView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SiriSharedUICompactResultView;
  v3 = [(SiriSharedUICompactResultView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    overlayButton = v3->_overlayButton;
    v3->_overlayButton = v4;

    v6 = [(SiriSharedUICompactResultView *)v3 _overlayButton];
    [v6 addTarget:v3 action:sel__overlayButtonWasTouchedUpInside_ forControlEvents:64];
  }

  return v3;
}

- (void)setSnippetView:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  snippetView = self->_snippetView;
  if (snippetView != v7)
  {
    v10 = snippetView;
    if (+[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled])
    {
      [(UIView *)v10 siriSharedUI_removeGlassBackground];
    }

    objc_storeStrong(&self->_snippetView, a3);
    self->_snippetNeedsSizing = 1;
    v11 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    [v11 setAllowsGroupOpacity:0];

    [(SiriSharedUIContentPlatterView *)self->_snippetView setIsInAmbient:self->_isInAmbient];
    [(SiriSharedUICompactResultView *)self setShowDimmingView:0 animated:0];
    [(SiriSharedUIContentPlatterView *)self->_snippetView removeFromSuperview];
    v12 = self->_snippetView;
    v13 = SiriSharedUILanguageSemanticContentAttribute();
    SiriSharedUIRecursiveSetSemanticContentAttribute(v12, v13);
    if (!self->_isInAmbient)
    {
      v14 = self->_snippetView;
      v15 = [(SiriSharedUICompactResultView *)self dismissalGestureRecognizer];
      [(SiriSharedUIContentPlatterView *)v14 setDismissalGestureRecognizer:v15];
    }

    v31 = v10;
    v32 = v8;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [(SiriSharedUIContentPlatterView *)v7 contentViews];
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      v20 = 1;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v20 &= [v22 shouldAutomaticallyScaleContentInAmbient];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }

    else
    {
      LOBYTE(v20) = 1;
    }

    [(SiriSharedUICompactResultView *)self setAllowAutomaticContentViewsScaling:v20 & 1];
    [(SiriSharedUIContentPlatterView *)self->_snippetView setDelegate:self];
    [(SiriSharedUICompactResultView *)self addSubview:self->_snippetView];
    [MEMORY[0x277CD9FF0] begin];
    v23 = MEMORY[0x277CD9FF0];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __59__SiriSharedUICompactResultView_setSnippetView_completion___block_invoke;
    v33[3] = &unk_278354880;
    v24 = v31;
    v34 = v24;
    v8 = v32;
    v35 = v32;
    [v23 setCompletionBlock:v33];
    v25 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    v26 = [(SiriSharedUICompactResultView *)self _snippetInsertAnimation];
    [v25 addAnimation:v26 forKey:@"snippetInsert"];

    if (*(&self->super.super.super.super.isa + v30) == 1)
    {
      [SiriSharedUICAFiltering applyGaussianBlurFilterToView:self->_snippetView];
    }

    v27 = [(SiriSharedUIContentPlatterView *)v24 layer];
    v28 = [(SiriSharedUICompactResultView *)self _snippetRemovalAnimation];
    [v27 addAnimation:v28 forKey:@"snippetInsert"];

    v29 = [(SiriSharedUIContentPlatterView *)v24 layer];
    [v29 setOpacity:0.0];

    [MEMORY[0x277CD9FF0] commit];
    [(SiriSharedUICompactResultView *)self snippetContentDidUpdateWhileEditing:0];
  }
}

uint64_t __59__SiriSharedUICompactResultView_setSnippetView_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setIsInAmbient:(BOOL)a3
{
  v3 = a3;
  self->_isInAmbient = a3;
  [(SiriSharedUIContentPlatterView *)self->_snippetView setIsInAmbient:?];
  v5 = !v3;
  [(SiriSharedUIContentPlatterView *)self->_snippetView setScrollEnabled:!v3];
  snippetView = self->_snippetView;
  if (v5)
  {
    v7 = [(SiriSharedUICompactResultView *)self dismissalGestureRecognizer];
    [(SiriSharedUIContentPlatterView *)snippetView setDismissalGestureRecognizer:?];
  }

  else
  {
    v7 = [(SiriSharedUIContentPlatterView *)self->_snippetView dismissalGestureRecognizer];
    [(SiriSharedUIContentPlatterView *)snippetView removeGestureRecognizer:?];
  }
}

- (void)setShowSnippetView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SiriSharedUIContentPlatterView *)self->_snippetView isHidden]== a3)
  {
    if (v5)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __61__SiriSharedUICompactResultView_setShowSnippetView_animated___block_invoke;
    v15 = &unk_278354C10;
    objc_copyWeak(v16, &location);
    v16[1] = *&v7;
    v17 = v5;
    v8 = _Block_copy(&v12);
    v9 = objc_alloc_init(SiriSharedUIAnimationContext);
    v10 = v9;
    v11 = 0.2;
    if (!v4)
    {
      v11 = 0.0;
    }

    [(SiriSharedUIAnimationContext *)v9 setAnimationDuration:v11, v12, v13, v14, v15];
    [(SiriSharedUIAnimationContext *)v10 setAnimationOptions:1];
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v8 context:v10 completion:0];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __61__SiriSharedUICompactResultView_setShowSnippetView_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained snippetView];
    [v3 setAlpha:*(a1 + 40)];

    v4 = [v5 snippetView];
    [v4 setHidden:(*(a1 + 48) & 1) == 0];

    WeakRetained = v5;
  }
}

- (void)setShowDimmingView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(SiriSharedUICompactResultView *)self darkenIntensity];
  if ((((v7 != 1.0) ^ v5) & 1) == 0)
  {
    v8 = 0.0;
    if (v5)
    {
      v8 = 1.0;
    }

    [(SiriSharedUICompactResultView *)self setDarkenIntensity:v4 animated:v8];
    v9 = [(SiriSharedUICompactResultView *)self _overlayButton];
    v10 = v9;
    if (v5)
    {
      [(SiriSharedUICompactResultView *)self addSubview:v9];
    }

    else
    {
      [v9 removeFromSuperview];
    }
  }
}

- (void)setDarkenIntensity:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__SiriSharedUICompactResultView_setDarkenIntensity_animated___block_invoke;
  aBlock[3] = &unk_278354C38;
  objc_copyWeak(v11, &location);
  v11[1] = *&a3;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(SiriSharedUIAnimationContext);
  v8 = v7;
  v9 = 0.2;
  if (!v4)
  {
    v9 = 0.0;
  }

  [(SiriSharedUIAnimationContext *)v7 setAnimationDuration:v9];
  [(SiriSharedUIAnimationContext *)v8 setAnimationOptions:1];
  [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v6 context:v8 completion:0];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__SiriSharedUICompactResultView_setDarkenIntensity_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDarkenIntensity:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)snippetContentDidUpdateWhileEditing:(BOOL)a3
{
  [(SiriSharedUICompactResultView *)self relayoutWhileEditing:a3];
  snippetView = self->_snippetView;

  [(SiriSharedUIContentPlatterView *)snippetView setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(SiriSharedUICompactResultView *)self _maxSizeForSnippet];
  v4 = v3;
  v6 = v5;
  [(SiriSharedUICompactResultView *)self frame];
  if (v4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = SiriSharedUICompactResultView;
  [(SiriSharedUICompactResultView *)&v4 setNeedsLayout];
  v3 = [(SiriSharedUICompactResultView *)self snippetView];
  [v3 setNeedsLayout];
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SiriSharedUICompactResultView;
  [(SiriSharedUICompactResultView *)&v26 layoutSubviews];
  if (self->_snippetNeedsSizing)
  {
    [(SiriSharedUICompactResultView *)self snippetContentDidUpdateWhileEditing:0];
  }

  [(SiriSharedUICompactResultView *)self _maxSizeForSnippet];
  v4 = v3;
  v6 = v5;
  [(SiriSharedUICompactResultView *)self bounds];
  Height = CGRectGetHeight(v27);
  if (Height < v6)
  {
    v6 = Height;
  }

  v8 = [(SiriSharedUICompactResultView *)self delegate];
  [v8 contentInsetsForResultView:self];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SiriSharedUIContentPlatterView *)self->_snippetView setContentInsets:v10, v12, v14, v16];
  snippetView = self->_snippetView;
  if (snippetView)
  {
    [(SiriSharedUIContentPlatterView *)snippetView sizeThatFits:v4, v6];
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v20 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v20 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    v19 = v19 * *v20;
  }

  if (v6 >= v19)
  {
    v6 = v19;
  }

  if (v4 >= v18)
  {
    v4 = v18;
  }

  v21 = [(SiriSharedUICompactResultView *)self animationContextForFrameAndLayoutUpdate];

  if (v21)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__SiriSharedUICompactResultView_layoutSubviews__block_invoke;
    v25[3] = &unk_278354C60;
    v25[4] = self;
    *&v25[5] = v4;
    *&v25[6] = v6;
    v22 = [(SiriSharedUICompactResultView *)self animationContextForFrameAndLayoutUpdate];
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v25 context:v22 completion:0];
  }

  else
  {
    [(SiriSharedUIContentPlatterView *)self->_snippetView setFrame:0.0, 0.0, v4, v6];
  }

  v23 = [(SiriSharedUICompactResultView *)self _overlayButton];
  [(SiriSharedUICompactResultView *)self bounds];
  [v23 setFrame:?];

  v24 = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
  [v24 stackableContentDidLayout:self];
}

- (void)relayoutWhileEditing:(BOOL)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_snippetView)
  {
    [(SiriSharedUICompactResultView *)self _maxSizeForSnippet];
    if (v5 != 0.0)
    {
      v7 = v5;
      v8 = v6;
      snippetView = self->_snippetView;
      if (snippetView)
      {
        [(SiriSharedUIContentPlatterView *)snippetView sizeThatFits:v5, v6];
      }

      else
      {
        v10 = *(MEMORY[0x277CBF3A8] + 8);
      }

      if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
      {
        if (self->_isInAmbientInteractivity)
        {
          v12 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
        }

        else
        {
          v12 = &SiriSharedUICompactAmbientContentScaleAmount;
        }

        v10 = v10 * *v12;
      }

      if (v8 >= v10)
      {
        v8 = v10;
      }

      p_previousContentSize = &self->_previousContentSize;
      v14 = self->_previousContentSize.height - self->_previousSeparatorContentHeight;
      [(SiriSharedUIContentPlatterView *)self->_snippetView heightForContentSeparators];
      if (v14 <= 0.0 && v8 > v15)
      {
        v17 = [(SiriSharedUICompactResultView *)self snippetView];
        v18 = [v17 layer];
        v19 = [(SiriSharedUICompactResultView *)self _snippetInsertAnimation];
        [v18 addAnimation:v19 forKey:@"snippetInsert"];
      }

      if (v7 == p_previousContentSize->width && v8 == self->_previousContentSize.height)
      {
        v21 = 0;
      }

      else
      {
        v21 = [(SiriSharedUICompactResultView *)self _isSnippetAnimatingInsertionOrRemoval]^ 1;
      }

      p_previousContentSize->width = v7;
      self->_previousContentSize.height = v8;
      [(SiriSharedUIContentPlatterView *)self->_snippetView heightForContentSeparators];
      self->_previousSeparatorContentHeight = v22;
      [(SiriSharedUIContentPlatterView *)self->_snippetView heightForContentSeparators];
      if (v8 == v23)
      {
        v8 = 0.0;
      }

      self->_snippetNeedsSizing = 0;
      v24 = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
      [v24 stackableContentWillUpdateLayout:self withUpdatedContentSize:v21 animated:{v7, v8}];

      [(SiriSharedUICompactResultView *)self invalidateIntrinsicContentSize];
      v25 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v35.width = v7;
        v35.height = v8;
        v27 = NSStringFromCGSize(v35);
        v29 = 136315394;
        v30 = "[SiriSharedUICompactResultView relayoutWhileEditing:]";
        v31 = 2112;
        v32 = v27;
        _os_log_impl(&dword_21E3EB000, v26, OS_LOG_TYPE_DEFAULT, "%s #compact relayout with contentSize: %@ ", &v29, 0x16u);
      }

      if ((v8 > 0.0 || v8 == 0.0 && ![(SiriSharedUICompactResultView *)self _snippetViewIsLoading]) && !a3)
      {
        v28 = [(SiriSharedUICompactResultView *)self delegate];
        [v28 resultViewContentDidLoad:self];
      }
    }
  }

  else
  {
    [(SiriSharedUICompactResultView *)self frame];
    if (CGRectGetHeight(v36) != 0.0)
    {
      v11 = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
      [v11 stackableContentWillUpdateLayout:self withUpdatedContentSize:0 animated:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

      [(SiriSharedUICompactResultView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (BOOL)_snippetViewIsLoading
{
  v13 = *MEMORY[0x277D85DE8];
  [(SiriSharedUIContentPlatterView *)self->_snippetView contentViews];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isLoading])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (CGSize)_maxSizeForSnippet
{
  v3 = [(SiriSharedUICompactResultView *)self delegate];
  [v3 maximumHeightForResultView:self];
  v5 = v4;

  if (self->_isInAmbient)
  {
    v6 = 556.0 * 2.0;
  }

  else
  {
    v6 = 556.0;
  }

  v7 = &SiriSharedUICompactPlatterAmbientHorizontalPadding;
  if (!self->_isInAmbient)
  {
    v7 = &SiriSharedUICompactPlatterHorizontalPadding;
  }

  v8 = *v7;
  v9 = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
  [v9 stackableContentMaximumContainerWidth];
  v11 = v10 + v8 * -2.0;

  if (v6 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SiriSharedUICompactResultView *)self _maxSizeForSnippet];
  v7 = v6;
  v9 = v8;
  snippetView = self->_snippetView;
  if (snippetView)
  {
    [(SiriSharedUIContentPlatterView *)snippetView sizeThatFits:width, height];
  }

  else
  {
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v12 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v12 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    v11 = v11 * *v12;
  }

  if (v9 < v11)
  {
    v11 = v9;
  }

  v13 = v7;
  result.height = v11;
  result.width = v13;
  return result;
}

- (void)_overlayButtonWasTouchedUpInside:(id)a3
{
  v4 = [(SiriSharedUICompactResultView *)self delegate];
  [v4 resultViewDarkenedContentWasTapped:self];
}

- (void)contentPlatterView:(id)a3 didScrollWithContentOffset:(CGPoint)a4
{
  if (a4.y > 0.0)
  {
    v6 = [(SiriSharedUICompactResultView *)self delegate:a3];
    [v6 resultViewContentDidScroll:self];
  }
}

- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SiriSharedUICompactResultView *)self delegate];
  [v6 resultViewContentScrolled:self toContentOffset:{x, y}];
}

- (void)contentPlatterViewScrollDidBegin
{
  v3 = [(SiriSharedUICompactResultView *)self delegate];
  [v3 resultViewContentScrolling:self didBegin:1];
}

- (void)contentPlatterViewScrollDidEnd
{
  v3 = [(SiriSharedUICompactResultView *)self delegate];
  [v3 resultViewContentScrolling:self didBegin:0];
}

- (BOOL)_isSnippetAnimatingInsertionOrRemoval
{
  v3 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
  v4 = [v3 animationForKey:@"snippetInsert"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    v7 = [v6 animationForKey:@"snippetRemoval"];
    v5 = v7 != 0;
  }

  return v5;
}

- (id)_snippetInsertAnimation
{
  v3 = MEMORY[0x277CCABB0];
  [(SiriSharedUICompactResultView *)self frame];
  v5 = [v3 numberWithDouble:v4];
  v6 = [SiriSharedUIAnimationUtilities animationForStyle:0 expectedWidthForStyle:v5 presentationType:[(SiriSharedUICompactResultView *)self _animatedPresentationType]];

  return v6;
}

- (id)_snippetRemovalAnimation
{
  v2 = [(SiriSharedUICompactResultView *)self _animatedPresentationType];

  return [SiriSharedUIAnimationUtilities animationForStyle:1 expectedWidthForStyle:0 presentationType:v2];
}

- (void)setDarkenIntensity:(double)a3
{
  if (self->_darkenIntensity != a3)
  {
    self->_darkenIntensity = a3;
    snippetView = self->_snippetView;
    [(SiriSharedUICompactResultView *)self darkenIntensity];

    [(SiriSharedUIContentPlatterView *)snippetView setDarkenIntensity:?];
  }
}

- (SiriSharedUICompactResultViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (SiriSharedUIStackableContentDelegate)stackContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->stackContainerDelegate);

  return WeakRetained;
}

- (CGSize)previousContentSize
{
  width = self->_previousContentSize.width;
  height = self->_previousContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end