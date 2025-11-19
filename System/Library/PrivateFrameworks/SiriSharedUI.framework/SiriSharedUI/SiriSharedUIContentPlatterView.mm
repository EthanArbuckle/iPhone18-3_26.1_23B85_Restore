@interface SiriSharedUIContentPlatterView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)isScrollEnabled;
- (CGPoint)_contentOffsetForScrollView:(id)a3;
- (CGSize)_contentSizeForScrollView:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUIContentPlatterView)initWithFrame:(CGRect)a3;
- (SiriSharedUIContentPlatterViewDelegate)delegate;
- (UIEdgeInsets)_adjustedContentInsetForScrollView:(id)a3;
- (UIEdgeInsets)contentInsets;
- (double)_cornerRadiusForPlatter;
- (double)darkenIntensity;
- (double)heightForContentSeparators;
- (void)_animateScrollViewStickyHeaderIfNeededGivenCurrentContentOffset:(double)a3 contentOffsetWhenScrolledToTop:(double)a4;
- (void)_updateContentFullyScrolled;
- (void)_updateContentScale;
- (void)_updateContentViewTransformationForAmbientUpdate;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setAllowAutomaticContentViewsScaling:(BOOL)a3;
- (void)setBackgroundView:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setContentViews:(id)a3;
- (void)setDarkenIntensity:(double)a3;
- (void)setDismissalGestureRecognizer:(id)a3;
- (void)setFakeNavigationBarBackgroundHidden:(BOOL)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setMinimumScrollViewBottomInset:(double)a3;
- (void)setNeedsLayout;
- (void)setScrollEnabled:(BOOL)a3;
@end

@implementation SiriSharedUIContentPlatterView

- (SiriSharedUIContentPlatterView)initWithFrame:(CGRect)a3
{
  v38.receiver = self;
  v38.super_class = SiriSharedUIContentPlatterView;
  v3 = [(SiriSharedUIContentPlatterView *)&v38 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SiriSharedUIContentPlatterScrollView);
    scrollView = v3->_scrollView;
    v3->_scrollView = v4;

    [(SiriSharedUIContentPlatterScrollView *)v3->_scrollView setDelegate:v3];
    [(SiriSharedUIContentPlatterScrollView *)v3->_scrollView setPlatterDelegate:v3];
    v3->_supportsSAE = [MEMORY[0x277CEF4D0] saeAvailable];
    v3->_minimumScrollViewBottomInset = 0.0;
    [(SiriSharedUIContentPlatterScrollView *)v3->_scrollView setKeyboardDismissMode:2];
    if ([(SiriSharedUIContentPlatterView *)v3 _hasScrollViewStickyHeader])
    {
      v3->_showingScrollViewStickyHeader = 0;
      v6 = [MEMORY[0x277D75D48] behaviorWithDampingRatio:0.75 response:0.62832];
      scrollViewStickyHeaderSpringAnimationBehavior = v3->_scrollViewStickyHeaderSpringAnimationBehavior;
      v3->_scrollViewStickyHeaderSpringAnimationBehavior = v6;

      v8 = objc_alloc_init(SiriSharedUITouchPassthroughView);
      scrollViewStickyHeaderContainerView = v3->_scrollViewStickyHeaderContainerView;
      v3->_scrollViewStickyHeaderContainerView = v8;

      [(SiriSharedUITouchPassthroughView *)v3->_scrollViewStickyHeaderContainerView setClipsToBounds:0];
      [(SiriSharedUITouchPassthroughView *)v3->_scrollViewStickyHeaderContainerView setAlpha:0.0];
      v10 = +[_TtC12SiriSharedUI24SiriSharedUIGradientView verticalBlackToClear];
      scrollViewStickyHeaderDimmingGradientView = v3->_scrollViewStickyHeaderDimmingGradientView;
      v3->_scrollViewStickyHeaderDimmingGradientView = v10;

      [(SiriSharedUIGradientView *)v3->_scrollViewStickyHeaderDimmingGradientView setAlpha:0.3];
      [(SiriSharedUITouchPassthroughView *)v3->_scrollViewStickyHeaderContainerView addSubview:v3->_scrollViewStickyHeaderDimmingGradientView];
      v12 = [[_TtC12SiriSharedUI28SiriSharedUIVariableBlurView alloc] initWithMaskImageName:@"SAEScrollViewStickyHeaderVariableBlurViewMask"];
      scrollViewStickyHeaderBlurView = v3->_scrollViewStickyHeaderBlurView;
      v3->_scrollViewStickyHeaderBlurView = v12;

      [(SiriSharedUIVariableBlurView *)v3->_scrollViewStickyHeaderBlurView setAlpha:1.0];
      [(SiriSharedUITouchPassthroughView *)v3->_scrollViewStickyHeaderContainerView addSubview:v3->_scrollViewStickyHeaderBlurView];
      [(SiriSharedUIContentPlatterView *)v3 addSubview:v3->_scrollViewStickyHeaderContainerView];
    }

    if ([(SiriSharedUIContentPlatterView *)v3 _hasFakeNavigationBarBackground])
    {
      v14 = objc_alloc(MEMORY[0x277D75D68]);
      v15 = [MEMORY[0x277D75210] effectWithStyle:8];
      v16 = [v14 initWithEffect:v15];
      fakeNavigationBarBackgroundView = v3->_fakeNavigationBarBackgroundView;
      v3->_fakeNavigationBarBackgroundView = v16;

      [(UIVisualEffectView *)v3->_fakeNavigationBarBackgroundView setHidden:1];
      [(SiriSharedUIContentPlatterView *)v3 addSubview:v3->_fakeNavigationBarBackgroundView];
      v3->_ignoreSafeAreaInsetChanges = 0;
    }

    v3->_reducedOrbOpacity = 0;
    v18 = objc_alloc_init(SiriSharedUIContentPlatterDarkenMaskView);
    darkenMaskView = v3->_darkenMaskView;
    v3->_darkenMaskView = v18;

    v20 = [SiriSharedUIStandardView alloc];
    v21 = [(SiriSharedUIStandardView *)v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    contentHostingView = v3->_contentHostingView;
    v3->_contentHostingView = v21;

    v23 = [MEMORY[0x277D3D328] platterViewWithBlurEffectStyle:9];
    platterView = v3->_platterView;
    v3->_platterView = v23;

    if (([MEMORY[0x277CEF4D0] saeAvailable] & 1) == 0)
    {
      [(PLPlatterView *)v3->_platterView setUsesBackgroundView:0];
      [(PLPlatterView *)v3->_platterView setBackgroundView:0];
      [(UIView *)v3 siriSharedUI_setGlassBackground];
    }

    v25 = v3->_platterView;
    [(SiriSharedUIContentPlatterView *)v3 _cornerRadiusForPlatter];
    [(PLPlatterView *)v25 _setContinuousCornerRadius:?];
    v26 = [(SiriSharedUIContentPlatterView *)v3 platterView];
    [(SiriSharedUIContentPlatterView *)v3 addSubview:v26];

    v27 = [(SiriSharedUIContentPlatterView *)v3 _contentHostingView];
    [(SiriSharedUIContentPlatterView *)v3 addSubview:v27];

    v28 = v3->_contentHostingView;
    v29 = [(SiriSharedUIContentPlatterView *)v3 _scrollView];
    [(SiriSharedUIStandardView *)v28 addSubview:v29];

    v30 = v3->_scrollView;
    [(PLPlatterView *)v3->_platterView _continuousCornerRadius];
    [(SiriSharedUIContentPlatterScrollView *)v30 _setContinuousCornerRadius:?];
    v31 = v3->_darkenMaskView;
    [(PLPlatterView *)v3->_platterView _continuousCornerRadius];
    [(SiriSharedUIContentPlatterDarkenMaskView *)v31 _setContinuousCornerRadius:?];
    v32 = [(PLPlatterView *)v3->_platterView customContentView];
    [v32 addSubview:v3->_darkenMaskView];

    v33 = [(SiriSharedUIContentPlatterView *)v3 _scrollView];
    v34 = [MEMORY[0x277D75348] clearColor];
    [v33 setBackgroundColor:v34];

    v35 = [(SiriSharedUIContentPlatterView *)v3 _scrollView];
    [v35 setShowsVerticalScrollIndicator:0];

    v36 = [(SiriSharedUIContentPlatterView *)v3 _scrollView];
    [v36 setContentInsetAdjustmentBehavior:2];

    [(SiriSharedUIContentPlatterView *)v3 setScrollEnabled:1];
    if ([(SiriSharedUIContentPlatterView *)v3 _hasScrollViewStickyHeader])
    {
      [(SiriSharedUIContentPlatterView *)v3 bringSubviewToFront:v3->_scrollViewStickyHeaderContainerView];
    }

    if ([(SiriSharedUIContentPlatterView *)v3 _hasFakeNavigationBarBackground])
    {
      [(SiriSharedUIContentPlatterView *)v3 bringSubviewToFront:v3->_fakeNavigationBarBackgroundView];
    }
  }

  return v3;
}

- (double)_cornerRadiusForPlatter
{
  if (!SiriSharedUIDeviceIsPad() || !self->_supportsSAE)
  {
    return 23.5;
  }

  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 traitCollection];
  [v4 displayCornerRadius];
  v6 = v5;

  return v6;
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  [(SiriSharedUIContentPlatterView *)self _cornerRadiusForPlatter];
  [v5 setCornerRadius:?];

  [(PLPlatterView *)self->_platterView setBackgroundView:v4];
  if (self->_isInAmbient)
  {
    [(PLPlatterView *)self->_platterView setHidden:0];
  }

  scrollView = self->_scrollView;
  [(PLPlatterView *)self->_platterView _continuousCornerRadius];
  [(SiriSharedUIContentPlatterScrollView *)scrollView _setContinuousCornerRadius:?];
  darkenMaskView = self->_darkenMaskView;
  [(PLPlatterView *)self->_platterView _continuousCornerRadius];
  [(SiriSharedUIContentPlatterDarkenMaskView *)darkenMaskView _setContinuousCornerRadius:?];

  [(SiriSharedUIContentPlatterView *)self setNeedsLayout];
}

- (void)setNeedsLayout
{
  [(SiriSharedUIContentPlatterView *)self _setPlatterNeedsLayout:1];
  v3.receiver = self;
  v3.super_class = SiriSharedUIContentPlatterView;
  [(SiriSharedUIContentPlatterView *)&v3 setNeedsLayout];
  [(SiriSharedUIContentPlatterView *)self _updateContentScale];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SiriSharedUIContentPlatterView;
    v5 = [(SiriSharedUIContentPlatterView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_updateContentScale
{
  if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v3 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v3 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    v4 = *v3;
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v7 = v4 * v6;

    contentHostingView = self->_contentHostingView;

    [SiriSharedUIContentScaleFactorUtility siriSharedUIApplyContentScale:contentHostingView toView:v7];
  }
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    self->_isInAmbient = a3;
    [(PLPlatterView *)self->_platterView setHidden:?];
    [(SiriSharedUIContentPlatterView *)self insertSubview:self->_platterView belowSubview:self->_contentHostingView];
    if (a3)
    {
      [(SiriSharedUIContentPlatterView *)self setScrollEnabled:self->_isNextLevelCard];
      isNextLevelCard = self->_isNextLevelCard;
    }

    else
    {
      isNextLevelCard = 1;
      [(SiriSharedUIContentPlatterView *)self setScrollEnabled:1];
    }

    [(SiriSharedUIContentPlatterScrollView *)self->_scrollView setBounces:isNextLevelCard];

    [(SiriSharedUIContentPlatterView *)self _updateContentViewTransformationForAmbientUpdate];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  self->_isInAmbientInteractivity = a3;
  v4 = [(SiriSharedUIContentPlatterView *)self _scrollView];
  [v4 setIsInAmbientInteractivity:self->_isInAmbientInteractivity];
}

- (void)setAllowAutomaticContentViewsScaling:(BOOL)a3
{
  if (self->_allowAutomaticContentViewsScaling != a3)
  {
    self->_allowAutomaticContentViewsScaling = a3;
    [(SiriSharedUIContentPlatterView *)self _updateContentViewTransformationForAmbientUpdate];
  }
}

- (void)_updateContentViewTransformationForAmbientUpdate
{
  if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
  {
    if (self->_isInAmbientInteractivity)
    {
      v2 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
    }

    else
    {
      v2 = &SiriSharedUICompactAmbientContentScaleAmount;
    }

    contentHostingView = self->_contentHostingView;
    CGAffineTransformMakeScale(&v6, *v2, *v2);
    v4 = contentHostingView;
  }

  else
  {
    v4 = self->_contentHostingView;
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v6.a = *MEMORY[0x277CBF2C0];
    *&v6.c = v5;
    *&v6.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  [(SiriSharedUIStandardView *)v4 setTransform:&v6, *&v6.a, *&v6.c, *&v6.tx];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = SiriSharedUIContentPlatterView;
  [(SiriSharedUIContentPlatterView *)&v31 layoutSubviews];
  if ([(SiriSharedUIContentPlatterView *)self _platterNeedsLayout])
  {
    [(SiriSharedUIContentPlatterView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(SiriSharedUIContentPlatterView *)self platterView];
    [v11 setFrame:{v4, v6, v8, v10}];

    v12 = [(SiriSharedUIContentPlatterView *)self _contentHostingView];
    [v12 setFrame:{v4, v6, v8, v10}];

    if (self->_supportsSAE)
    {
      if ([(SiriSharedUIContentPlatterView *)self _hasScrollViewStickyHeader])
      {
        [(SiriSharedUIGradientView *)self->_scrollViewStickyHeaderDimmingGradientView setFrame:0.0, 0.0, v8, v8 * 0.237489398];
        [(SiriSharedUIVariableBlurView *)self->_scrollViewStickyHeaderBlurView setFrame:0.0, 0.0, v8, v8 * 0.537743851];
      }

      if ([(SiriSharedUIContentPlatterView *)self _hasFakeNavigationBarBackground])
      {
        fakeNavigationBarBackgroundView = self->_fakeNavigationBarBackgroundView;
        [(SiriSharedUIContentPlatterView *)self safeAreaInsets];
        [(UIVisualEffectView *)fakeNavigationBarBackgroundView setFrame:0.0, 0.0, v8, v14];
      }

      v15 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
      if (v15)
      {
        makeBackgroundPlatterTransparent = self->_makeBackgroundPlatterTransparent;

        if (makeBackgroundPlatterTransparent)
        {
          v17 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
          [v17 setAlpha:0.0];

          v18 = [(PLPlatterView *)self->_platterView backgroundView];
          [v18 setAlpha:0.0];

          [(PLPlatterView *)self->_platterView setHasShadow:0];
        }
      }
    }

    if (self->_isInAmbient && self->_allowAutomaticContentViewsScaling)
    {
      v19 = [(SiriSharedUIContentPlatterView *)self _scrollView];
      v32.origin.x = v4;
      v32.origin.y = v6;
      v32.size.width = v8;
      v32.size.height = v10;
      v20 = CGRectGetWidth(v32) * 0.5;
      v33.origin.x = v4;
      v33.origin.y = v6;
      v33.size.width = v8;
      v33.size.height = v10;
      v21 = CGRectGetHeight(v33) * 0.5;
      v22 = 0.0;
      v23 = 0.0;
      v24 = v19;
      v25 = v20;
    }

    else
    {
      v24 = [(SiriSharedUIContentPlatterView *)self _scrollView];
      v19 = v24;
      v22 = v4;
      v23 = v6;
      v25 = v8;
      v21 = v10;
    }

    [v24 setFrame:{v22, v23, v25, v21}];

    v26 = v10 == *(MEMORY[0x277CBF3A8] + 8) && v8 == *MEMORY[0x277CBF3A8];
    v27 = [(SiriSharedUIContentPlatterView *)self platterView];
    [v27 setHidden:v26];

    v28 = [(SiriSharedUIContentPlatterView *)self _scrollView];
    [v28 setNeedsLayout];

    v29 = [(SiriSharedUIContentPlatterView *)self _scrollView];
    [v29 layoutIfNeeded];

    [(SiriSharedUIContentPlatterView *)self _updateContentFullyScrolled];
    v30 = [(SiriSharedUIContentPlatterView *)self _darkenMaskView];
    [v30 setFrame:{v4, v6, v8, v10}];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SiriSharedUIContentPlatterView *)self contentViews];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * v11) sizeThatFits:{width, height}];
        v5 = v5 + v13;
        if (v6 <= v12)
        {
          v6 = v12;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = v6;
  v15 = v5;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)heightForContentSeparators
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SiriSharedUIContentPlatterView *)self contentViews];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 intrinsicContentSize];
          v6 = v6 + v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)isScrollEnabled
{
  v2 = [(SiriSharedUIContentPlatterView *)self _scrollView];
  v3 = [v2 isAutomaticScrollingEnabled];

  return v3;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriSharedUIContentPlatterView *)self _scrollView];
  [v4 setAutomaticScrollingEnabled:v3];
}

- (void)setContentViews:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  contentViews = self->_contentViews;
  if (contentViews != v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = contentViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * v11++) removeFromSuperview];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_contentViews, a3);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_contentViews;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

          v17 = *(*(&v19 + 1) + 8 * v16);
          v18 = [(SiriSharedUIContentPlatterView *)self _scrollView];
          [v18 addSubview:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [(SiriSharedUIContentPlatterView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  if (a3.bottom < self->_minimumScrollViewBottomInset)
  {
    a3.bottom = self->_minimumScrollViewBottomInset;
  }

  p_contentInsets = &self->_contentInsets;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  v5.f64[0] = a3.top;
  v5.f64[1] = a3.left;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v5), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    p_contentInsets->top = a3.top;
    self->_contentInsets.left = a3.left;
    self->_contentInsets.bottom = a3.bottom;
    self->_contentInsets.right = a3.right;
    v7 = [(SiriSharedUIContentPlatterView *)self _scrollView];
    [v7 setContentInset:{p_contentInsets->top, p_contentInsets->left, p_contentInsets->bottom, p_contentInsets->right}];

    [(SiriSharedUIContentPlatterView *)self setNeedsLayout];
  }
}

- (void)safeAreaInsetsDidChange
{
  if (self->_supportsSAE && !self->_ignoreSafeAreaInsetChanges)
  {
    [(SiriSharedUIContentPlatterView *)self safeAreaInsets];
    v4 = v3;
    [(SiriSharedUIContentPlatterView *)self setContentInsets:?];
    [(SiriSharedUIContentPlatterScrollView *)self->_scrollView setContentOffset:0 animated:0.0, -v4];
    [(SiriSharedUIContentPlatterView *)self setNeedsLayout];

    [(SiriSharedUIContentPlatterView *)self layoutIfNeeded];
  }
}

- (void)setDismissalGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_dismissalGestureRecognizer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dismissalGestureRecognizer, a3);
    [(SiriSharedUIContentPlatterView *)self addGestureRecognizer:v6];
    v5 = v6;
  }
}

- (void)setFakeNavigationBarBackgroundHidden:(BOOL)a3
{
  v3 = a3;
  if ([(SiriSharedUIContentPlatterView *)self _hasFakeNavigationBarBackground])
  {
    [(UIVisualEffectView *)self->_fakeNavigationBarBackgroundView setHidden:v3];
    self->_ignoreSafeAreaInsetChanges = v3;
  }
}

- (void)setMinimumScrollViewBottomInset:(double)a3
{
  self->_minimumScrollViewBottomInset = a3;
  [(SiriSharedUIContentPlatterScrollView *)self->_scrollView contentInset];
  if (v5 < a3)
  {

    [(SiriSharedUIContentPlatterView *)self setContentInsets:?];
  }
}

- (void)setDarkenIntensity:(double)a3
{
  [(SiriSharedUIContentPlatterView *)self darkenIntensity];
  if (v5 != a3)
  {
    v6 = [(SiriSharedUIContentPlatterView *)self _darkenMaskView];
    [v6 setAlpha:a3 * 0.3];
  }
}

- (double)darkenIntensity
{
  v2 = [(SiriSharedUIContentPlatterView *)self _darkenMaskView];
  [v2 alpha];
  v4 = v3 / 0.3;

  return v4;
}

- (void)scrollViewDidScroll:(id)a3
{
  v54 = a3;
  [(SiriSharedUIContentPlatterView *)self _contentOffsetForScrollView:?];
  v5 = v4;
  v7 = v6;
  v8 = [(SiriSharedUIContentPlatterView *)self delegate];
  [v8 contentPlatterView:self didScrollWithContentOffset:{v5, v7}];

  [(SiriSharedUIContentPlatterView *)self _currentContentOffset];
  v10 = v9;
  v11 = [(SiriSharedUIContentPlatterView *)self delegate];
  [v11 contentPlatterView:self didScrollWithContentOffset:{v5, v7}];

  if (self->_supportsSAE)
  {
    v12 = v54;
  }

  else
  {
    v12 = self;
  }

  [(SiriSharedUIContentPlatterView *)v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SiriSharedUIContentPlatterView *)self _adjustedContentInsetForScrollView:v54];
  v22 = v21;
  v53 = v23;
  [(SiriSharedUIContentPlatterView *)self _contentSizeForScrollView:v54];
  v25 = v22 + v24;
  v56.origin.x = v14;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  v26 = v25 - CGRectGetHeight(v56);
  [(SiriSharedUIContentPlatterView *)self _animateScrollViewStickyHeaderIfNeededGivenCurrentContentOffset:v7 contentOffsetWhenScrolledToTop:-v22];
  if (v7 >= v10)
  {
    if (v7 > 0.0)
    {
      if (v7 < v26)
      {
        [(PLPlatterView *)self->_platterView bounds];
        Height = CGRectGetHeight(v61);
        [(SiriSharedUIContentPlatterView *)self bounds];
        if (Height != CGRectGetHeight(v62))
        {
          platterView = self->_platterView;
          [(SiriSharedUIContentPlatterView *)self bounds];
          Width = CGRectGetWidth(v63);
          [(SiriSharedUIContentPlatterView *)self bounds];
          [(PLPlatterView *)platterView setFrame:0.0, 0.0, Width, CGRectGetHeight(v64)];
        }
      }
    }

    else
    {
      [(SiriSharedUIContentPlatterView *)self bounds];
      v37 = v36;
      v39 = v38 - v7;
      v41 = v7 + v40;
      [(SiriSharedUIContentPlatterView *)self _setPlatterNeedsLayout:0];
      [(PLPlatterView *)self->_platterView setFrame:0.0, v39, v37, v41];
    }

    if (v7 > v26)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7 < 0.0)
    {
      [(SiriSharedUIContentPlatterView *)self bounds];
      v28 = v27;
      v30 = v29 - v7;
      v32 = v7 + v31;
      [(SiriSharedUIContentPlatterView *)self _setPlatterNeedsLayout:0];
      [(PLPlatterView *)self->_platterView setFrame:0.0, v30, v28, v32];
    }

    if (v7 > 0.0 && v7 < v26)
    {
      [(PLPlatterView *)self->_platterView bounds];
      v33 = CGRectGetHeight(v57);
      [(SiriSharedUIContentPlatterView *)self bounds];
      if (v33 != CGRectGetHeight(v58))
      {
        v34 = self->_platterView;
        [(SiriSharedUIContentPlatterView *)self bounds];
        v35 = CGRectGetWidth(v59);
        [(SiriSharedUIContentPlatterView *)self bounds];
        [(PLPlatterView *)v34 setFrame:0.0, 0.0, v35, CGRectGetHeight(v60)];
      }
    }

    if (v7 >= v26)
    {
LABEL_19:
      [(SiriSharedUIContentPlatterView *)self bounds];
      v46 = v45;
      v48 = v47 - (v7 - v26);
      [(SiriSharedUIContentPlatterView *)self _setPlatterNeedsLayout:0];
      [(PLPlatterView *)self->_platterView setFrame:0.0, 0.0, v46, v48];
    }
  }

  v49 = v7;
  v50 = v53 + v26;
  v51 = floorf(v49) == floorf(v50);
  v52 = [(SiriSharedUIContentPlatterView *)self dismissalGestureRecognizer];

  if (v52)
  {
    [(SiriSharedUIContentPlatterView *)self _setShouldAllowDismissalWhileScrollable:v51];
  }

  [(SiriSharedUIContentPlatterView *)self _setCurrentContentOffset:v7];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v23 = a3;
  if (self->_isInAmbient && !self->_reducedOrbOpacity && (SiriSharedUIIsTextInputEnabled() & 1) == 0)
  {
    v4 = [(SiriSharedUIContentPlatterView *)self delegate];
    [v4 contentPlatterViewScrollDidBegin];

    self->_reducedOrbOpacity = 1;
  }

  v5 = [(SiriSharedUIContentPlatterView *)self dismissalGestureRecognizer];

  if (v5)
  {
    [v23 contentSize];
    [v23 contentSize];
    v7 = v6;
    [v23 adjustedContentInset];
    v9 = v7 + v8;
    [v23 adjustedContentInset];
    v11 = v9 + v10;
    [(SiriSharedUIContentPlatterView *)self bounds];
    v12 = v11 - CGRectGetHeight(v25);
    v13 = [v23 panGestureRecognizer];
    v14 = [v23 superview];
    [v13 velocityInView:v14];
    v16 = v15;

    [v23 contentOffset];
    v18 = v17;
    *&v17 = v12;
    if (floorf(v18) == floorf(*&v17))
    {
      if (v16 < 0.0)
      {
        [(SiriSharedUIContentPlatterView *)self _setShouldAllowDismissalWhileScrollable:1];
        v19 = [(SiriSharedUIContentPlatterView *)self _scrollView];
        [v19 setScrollEnabled:0];

        v20 = [(SiriSharedUIContentPlatterView *)self _scrollView];
        [v20 setScrollEnabled:1];
      }

      if (v16 > 0.0)
      {
        [(SiriSharedUIContentPlatterView *)self _setShouldAllowDismissalWhileScrollable:1];
        v21 = [(SiriSharedUIContentPlatterView *)self dismissalGestureRecognizer];
        [v21 setEnabled:0];

        v22 = [(SiriSharedUIContentPlatterView *)self dismissalGestureRecognizer];
        [v22 setEnabled:1];
      }
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v8 = a3;
  if (self->_isInAmbient && !a4 && self->_reducedOrbOpacity && (SiriSharedUIIsTextInputEnabled() & 1) == 0)
  {
    v6 = [(SiriSharedUIContentPlatterView *)self delegate];
    [v6 contentPlatterViewScrollDidEnd];

    self->_reducedOrbOpacity = 0;
  }

  v7 = [(SiriSharedUIContentPlatterView *)self delegate];
  [(SiriSharedUIContentPlatterView *)self _contentOffsetForScrollView:v8];
  [v7 contentPlatterViewScrolledToContentOffset:?];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isInAmbient && self->_reducedOrbOpacity)
  {
    v7 = v4;
    v4 = SiriSharedUIIsTextInputEnabled();
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      v6 = [(SiriSharedUIContentPlatterView *)self delegate];
      [v6 contentPlatterViewScrollDidEnd];

      v5 = v7;
      self->_reducedOrbOpacity = 0;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_updateContentFullyScrolled
{
  [(SiriSharedUIContentPlatterView *)self _adjustedContentInsetForScrollView:self->_scrollView];
  v4 = v3;
  v6 = v5;
  [(SiriSharedUIContentPlatterScrollView *)self->_scrollView contentSize];
  v8 = v4 + v7;
  [(SiriSharedUIContentPlatterView *)self bounds];
  v9 = v8 - CGRectGetHeight(v14);
  [(SiriSharedUIContentPlatterView *)self _contentOffsetForScrollView:self->_scrollView];
  v11 = v10;
  *&v10 = v6 + v9;
  v12 = floorf(v11) == floorf(*&v10);

  [(SiriSharedUIContentPlatterView *)self _setShouldAllowDismissalWhileScrollable:v12];
}

- (CGPoint)_contentOffsetForScrollView:(id)a3
{
  [a3 contentOffset];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)_contentSizeForScrollView:(id)a3
{
  [a3 contentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)_adjustedContentInsetForScrollView:(id)a3
{
  [a3 adjustedContentInset];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_animateScrollViewStickyHeaderIfNeededGivenCurrentContentOffset:(double)a3 contentOffsetWhenScrolledToTop:(double)a4
{
  if ([(SiriSharedUIContentPlatterView *)self _hasScrollViewStickyHeader])
  {
    if (a3 <= a4)
    {
      if (!self->_showingScrollViewStickyHeader)
      {
        return;
      }

      v7 = 0;
    }

    else
    {
      if (self->_showingScrollViewStickyHeader)
      {
        return;
      }

      v7 = 1;
    }

    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v7];
    if (v8)
    {
      v9 = v8;
      objc_initWeak(&location, self);
      self->_showingScrollViewStickyHeader = [v9 BOOLValue];
      v10 = MEMORY[0x277D75D18];
      scrollViewStickyHeaderSpringAnimationBehavior = self->_scrollViewStickyHeaderSpringAnimationBehavior;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __129__SiriSharedUIContentPlatterView__animateScrollViewStickyHeaderIfNeededGivenCurrentContentOffset_contentOffsetWhenScrolledToTop___block_invoke;
      v13[3] = &unk_2783546B0;
      objc_copyWeak(&v15, &location);
      v12 = v9;
      v14 = v12;
      [v10 _animateUsingSpringBehavior:scrollViewStickyHeaderSpringAnimationBehavior tracking:0 animations:v13 completion:0];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __129__SiriSharedUIContentPlatterView__animateScrollViewStickyHeaderIfNeededGivenCurrentContentOffset_contentOffsetWhenScrolledToTop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[53];
    v4 = WeakRetained;
    [*(a1 + 32) doubleValue];
    [v3 setAlpha:?];
    WeakRetained = v4;
  }
}

- (SiriSharedUIContentPlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end