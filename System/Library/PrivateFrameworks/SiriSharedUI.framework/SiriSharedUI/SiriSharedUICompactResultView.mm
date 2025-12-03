@interface SiriSharedUICompactResultView
- (BOOL)_isSnippetAnimatingInsertionOrRemoval;
- (BOOL)_snippetViewIsLoading;
- (CGSize)_maxSizeForSnippet;
- (CGSize)intrinsicContentSize;
- (CGSize)previousContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUICompactResultView)initWithFrame:(CGRect)frame;
- (SiriSharedUICompactResultViewDelegate)delegate;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (id)_snippetInsertAnimation;
- (id)_snippetRemovalAnimation;
- (void)_overlayButtonWasTouchedUpInside:(id)inside;
- (void)contentPlatterView:(id)view didScrollWithContentOffset:(CGPoint)offset;
- (void)contentPlatterViewScrollDidBegin;
- (void)contentPlatterViewScrollDidEnd;
- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)offset;
- (void)layoutSubviews;
- (void)relayoutWhileEditing:(BOOL)editing;
- (void)setDarkenIntensity:(double)intensity;
- (void)setDarkenIntensity:(double)intensity animated:(BOOL)animated;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setNeedsLayout;
- (void)setShowDimmingView:(BOOL)view animated:(BOOL)animated;
- (void)setShowSnippetView:(BOOL)view animated:(BOOL)animated;
- (void)setSnippetView:(id)view completion:(id)completion;
- (void)snippetContentDidUpdateWhileEditing:(BOOL)editing;
@end

@implementation SiriSharedUICompactResultView

- (SiriSharedUICompactResultView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SiriSharedUICompactResultView;
  v3 = [(SiriSharedUICompactResultView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    overlayButton = v3->_overlayButton;
    v3->_overlayButton = v4;

    _overlayButton = [(SiriSharedUICompactResultView *)v3 _overlayButton];
    [_overlayButton addTarget:v3 action:sel__overlayButtonWasTouchedUpInside_ forControlEvents:64];
  }

  return v3;
}

- (void)setSnippetView:(id)view completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  completionCopy = completion;
  snippetView = self->_snippetView;
  if (snippetView != viewCopy)
  {
    v10 = snippetView;
    if (+[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled])
    {
      [(UIView *)v10 siriSharedUI_removeGlassBackground];
    }

    objc_storeStrong(&self->_snippetView, view);
    self->_snippetNeedsSizing = 1;
    layer = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    [layer setAllowsGroupOpacity:0];

    [(SiriSharedUIContentPlatterView *)self->_snippetView setIsInAmbient:self->_isInAmbient];
    [(SiriSharedUICompactResultView *)self setShowDimmingView:0 animated:0];
    [(SiriSharedUIContentPlatterView *)self->_snippetView removeFromSuperview];
    v12 = self->_snippetView;
    v13 = SiriSharedUILanguageSemanticContentAttribute();
    SiriSharedUIRecursiveSetSemanticContentAttribute(v12, v13);
    if (!self->_isInAmbient)
    {
      v14 = self->_snippetView;
      dismissalGestureRecognizer = [(SiriSharedUICompactResultView *)self dismissalGestureRecognizer];
      [(SiriSharedUIContentPlatterView *)v14 setDismissalGestureRecognizer:dismissalGestureRecognizer];
    }

    v31 = v10;
    v32 = completionCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    contentViews = [(SiriSharedUIContentPlatterView *)viewCopy contentViews];
    v17 = [contentViews countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(contentViews);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v20 &= [v22 shouldAutomaticallyScaleContentInAmbient];
          }
        }

        v18 = [contentViews countByEnumeratingWithState:&v36 objects:v40 count:16];
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
    completionCopy = v32;
    v35 = v32;
    [v23 setCompletionBlock:v33];
    layer2 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    _snippetInsertAnimation = [(SiriSharedUICompactResultView *)self _snippetInsertAnimation];
    [layer2 addAnimation:_snippetInsertAnimation forKey:@"snippetInsert"];

    if (*(&self->super.super.super.super.isa + v30) == 1)
    {
      [SiriSharedUICAFiltering applyGaussianBlurFilterToView:self->_snippetView];
    }

    layer3 = [(SiriSharedUIContentPlatterView *)v24 layer];
    _snippetRemovalAnimation = [(SiriSharedUICompactResultView *)self _snippetRemovalAnimation];
    [layer3 addAnimation:_snippetRemovalAnimation forKey:@"snippetInsert"];

    layer4 = [(SiriSharedUIContentPlatterView *)v24 layer];
    [layer4 setOpacity:0.0];

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

- (void)setIsInAmbient:(BOOL)ambient
{
  ambientCopy = ambient;
  self->_isInAmbient = ambient;
  [(SiriSharedUIContentPlatterView *)self->_snippetView setIsInAmbient:?];
  v5 = !ambientCopy;
  [(SiriSharedUIContentPlatterView *)self->_snippetView setScrollEnabled:!ambientCopy];
  snippetView = self->_snippetView;
  if (v5)
  {
    dismissalGestureRecognizer = [(SiriSharedUICompactResultView *)self dismissalGestureRecognizer];
    [(SiriSharedUIContentPlatterView *)snippetView setDismissalGestureRecognizer:?];
  }

  else
  {
    dismissalGestureRecognizer = [(SiriSharedUIContentPlatterView *)self->_snippetView dismissalGestureRecognizer];
    [(SiriSharedUIContentPlatterView *)snippetView removeGestureRecognizer:?];
  }
}

- (void)setShowSnippetView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(SiriSharedUIContentPlatterView *)self->_snippetView isHidden]== view)
  {
    if (viewCopy)
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
    v17 = viewCopy;
    v8 = _Block_copy(&v12);
    v9 = objc_alloc_init(SiriSharedUIAnimationContext);
    v10 = v9;
    v11 = 0.2;
    if (!animatedCopy)
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

- (void)setShowDimmingView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  [(SiriSharedUICompactResultView *)self darkenIntensity];
  if ((((v7 != 1.0) ^ viewCopy) & 1) == 0)
  {
    v8 = 0.0;
    if (viewCopy)
    {
      v8 = 1.0;
    }

    [(SiriSharedUICompactResultView *)self setDarkenIntensity:animatedCopy animated:v8];
    _overlayButton = [(SiriSharedUICompactResultView *)self _overlayButton];
    v10 = _overlayButton;
    if (viewCopy)
    {
      [(SiriSharedUICompactResultView *)self addSubview:_overlayButton];
    }

    else
    {
      [_overlayButton removeFromSuperview];
    }
  }
}

- (void)setDarkenIntensity:(double)intensity animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__SiriSharedUICompactResultView_setDarkenIntensity_animated___block_invoke;
  aBlock[3] = &unk_278354C38;
  objc_copyWeak(v11, &location);
  v11[1] = *&intensity;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(SiriSharedUIAnimationContext);
  v8 = v7;
  v9 = 0.2;
  if (!animatedCopy)
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

- (void)snippetContentDidUpdateWhileEditing:(BOOL)editing
{
  [(SiriSharedUICompactResultView *)self relayoutWhileEditing:editing];
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
  snippetView = [(SiriSharedUICompactResultView *)self snippetView];
  [snippetView setNeedsLayout];
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

  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate contentInsetsForResultView:self];
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

  animationContextForFrameAndLayoutUpdate = [(SiriSharedUICompactResultView *)self animationContextForFrameAndLayoutUpdate];

  if (animationContextForFrameAndLayoutUpdate)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__SiriSharedUICompactResultView_layoutSubviews__block_invoke;
    v25[3] = &unk_278354C60;
    v25[4] = self;
    *&v25[5] = v4;
    *&v25[6] = v6;
    animationContextForFrameAndLayoutUpdate2 = [(SiriSharedUICompactResultView *)self animationContextForFrameAndLayoutUpdate];
    [SiriSharedUIAnimationUtilities perfomAnimationBlockWithAnimationBlock:v25 context:animationContextForFrameAndLayoutUpdate2 completion:0];
  }

  else
  {
    [(SiriSharedUIContentPlatterView *)self->_snippetView setFrame:0.0, 0.0, v4, v6];
  }

  _overlayButton = [(SiriSharedUICompactResultView *)self _overlayButton];
  [(SiriSharedUICompactResultView *)self bounds];
  [_overlayButton setFrame:?];

  stackContainerDelegate = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentDidLayout:self];
}

- (void)relayoutWhileEditing:(BOOL)editing
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
        snippetView = [(SiriSharedUICompactResultView *)self snippetView];
        layer = [snippetView layer];
        _snippetInsertAnimation = [(SiriSharedUICompactResultView *)self _snippetInsertAnimation];
        [layer addAnimation:_snippetInsertAnimation forKey:@"snippetInsert"];
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
      stackContainerDelegate = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
      [stackContainerDelegate stackableContentWillUpdateLayout:self withUpdatedContentSize:v21 animated:{v7, v8}];

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

      if ((v8 > 0.0 || v8 == 0.0 && ![(SiriSharedUICompactResultView *)self _snippetViewIsLoading]) && !editing)
      {
        delegate = [(SiriSharedUICompactResultView *)self delegate];
        [delegate resultViewContentDidLoad:self];
      }
    }
  }

  else
  {
    [(SiriSharedUICompactResultView *)self frame];
    if (CGRectGetHeight(v36) != 0.0)
    {
      stackContainerDelegate2 = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
      [stackContainerDelegate2 stackableContentWillUpdateLayout:self withUpdatedContentSize:0 animated:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

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
  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate maximumHeightForResultView:self];
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
  stackContainerDelegate = [(SiriSharedUICompactResultView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentMaximumContainerWidth];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)_overlayButtonWasTouchedUpInside:(id)inside
{
  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate resultViewDarkenedContentWasTapped:self];
}

- (void)contentPlatterView:(id)view didScrollWithContentOffset:(CGPoint)offset
{
  if (offset.y > 0.0)
  {
    v6 = [(SiriSharedUICompactResultView *)self delegate:view];
    [v6 resultViewContentDidScroll:self];
  }
}

- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate resultViewContentScrolled:self toContentOffset:{x, y}];
}

- (void)contentPlatterViewScrollDidBegin
{
  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate resultViewContentScrolling:self didBegin:1];
}

- (void)contentPlatterViewScrollDidEnd
{
  delegate = [(SiriSharedUICompactResultView *)self delegate];
  [delegate resultViewContentScrolling:self didBegin:0];
}

- (BOOL)_isSnippetAnimatingInsertionOrRemoval
{
  layer = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
  v4 = [layer animationForKey:@"snippetInsert"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    layer2 = [(SiriSharedUIContentPlatterView *)self->_snippetView layer];
    v7 = [layer2 animationForKey:@"snippetRemoval"];
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
  _animatedPresentationType = [(SiriSharedUICompactResultView *)self _animatedPresentationType];

  return [SiriSharedUIAnimationUtilities animationForStyle:1 expectedWidthForStyle:0 presentationType:_animatedPresentationType];
}

- (void)setDarkenIntensity:(double)intensity
{
  if (self->_darkenIntensity != intensity)
  {
    self->_darkenIntensity = intensity;
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