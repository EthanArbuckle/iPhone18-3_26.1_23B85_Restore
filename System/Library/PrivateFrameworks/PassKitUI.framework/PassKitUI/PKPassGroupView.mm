@interface PKPassGroupView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)gestureCollector:(id)collector recognizerShouldBegin:(id)begin;
- (BOOL)overridePageControlAlpha:(double)alpha;
- (BOOL)overrideShadowAlpha:(double)alpha;
- (BOOL)pageControlAlphaOverrideMatchesPredicate:(id)predicate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_fanningPositionForCardView:(id)view atStackIndex:(unint64_t)index withSelectedFrame:(CGRect)frame;
- (CGPoint)_stackingPositionForCardView:(id)view atStackIndex:(unint64_t)index withSeparation:(BOOL)separation;
- (CGRect)_pagingFrameForCardView:(id)view atIndex:(unint64_t)index;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassGroupView)initWithGroup:(id)group delegate:(id)delegate presentationState:(int64_t)state;
- (PKPassGroupViewDelegate)delegate;
- (PKPassViewGestureCollector)gestureCollector;
- (PKReusablePassViewQueue)passViewQueue;
- (UIEdgeInsets)alignmentRectInsets;
- (UIOffset)offsetForFrontmostPassWhileStacked;
- (_NSRange)_rangeOfFannedIndices;
- (_NSRange)_rangeOfPagingIndices;
- (_NSRange)_rangeOfVisibleIndices;
- (id)_loadCardViewForIndex:(unint64_t)index contentMode:(int64_t)mode;
- (id)_observers;
- (id)beginSuppressingPageControl;
- (id)createExternalTapGestureRecognizer;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)passViewForIndex:(unint64_t)index;
- (int64_t)_defaultContentModeForIndex:(unint64_t)index;
- (void)_addPanAndLongPressGestureRecognizers;
- (void)_applyContentMode:(int64_t)mode toPassView:(id)view animated:(BOOL)animated;
- (void)_endTrackingAnimation;
- (void)_enumerateIndicesInFannedOrderWithHandler:(id)handler;
- (void)_enumerateIndicesInStackOrderWithHandler:(id)handler;
- (void)_enumeratePassViewsInStackOrderWithHandler:(id)handler;
- (void)_groupViewTapped;
- (void)_handlePanGesture:(id)gesture;
- (void)_handlePress:(id)press;
- (void)_layoutFan;
- (void)_layoutPages;
- (void)_layoutStack;
- (void)_pageControlChanged:(id)changed;
- (void)_preventLayoutForAction:(id)action;
- (void)_removeDelayedAnimations;
- (void)_removePageControl;
- (void)_updateCachedGroupState;
- (void)_updateCachedLayoutState;
- (void)_updateDelegateResponderCache;
- (void)_updateFrontmostPassViewIfNecessary;
- (void)_updateLoadedViews:(BOOL)views;
- (void)_updatePageControlFrameAnimated:(BOOL)animated;
- (void)_updatePageControlVisibilityAnimated:(BOOL)animated withDelay:(double)delay;
- (void)_updatePageControlWithDisplayIndex;
- (void)_updatePausedState;
- (void)addPassGroupViewObserver:(id)observer;
- (void)applyContentModesAnimated:(BOOL)animated;
- (void)clearPageControlAlphaOverride;
- (void)clearShadowAlphaOverride;
- (void)dealloc;
- (void)deleteButtonPressedFromSourceView:(id)view;
- (void)didMoveToSuperview;
- (void)dismissBackOfPassIfNecessaryForUniqueID:(id)d;
- (void)endPinningFrontFaceContentMode;
- (void)faceFrameDidChangeForPassView:(id)view;
- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePassState:(id)state forPass:(id)pass atIndex:(unint64_t)index;
- (void)invalidate;
- (void)layoutSubviews;
- (void)layoutSubviewsAnimated:(BOOL)animated;
- (void)markGroupDeleted;
- (void)passViewDidResize:(id)resize animated:(BOOL)animated;
- (void)passViewExpandButtonTapped:(id)tapped;
- (void)presentDiff:(id)diff completion:(id)completion;
- (void)presentPassWithUniqueID:(id)d withContext:(id)context animated:(BOOL)animated;
- (void)removePassGroupViewObserver:(id)observer;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBlurRadius:(double)radius;
- (void)setDimmer:(double)dimmer animated:(BOOL)animated;
- (void)setFrontmostPassView:(id)view withContext:(id)context animated:(BOOL)animated;
- (void)setFrontmostPassViewFromPassIndex:(int64_t)index withContext:(id)context animated:(BOOL)animated;
- (void)setGestureCollector:(id)collector;
- (void)setLoaned:(BOOL)loaned;
- (void)setModallyPresented:(BOOL)presented;
- (void)setPassViewExpanded:(BOOL)expanded forPass:(id)pass animated:(BOOL)animated;
- (void)setPaused:(BOOL)paused;
- (void)setPresentationState:(int64_t)state withContext:(id)context animated:(BOOL)animated;
- (void)sizeToFit;
- (void)updatePageControlFrameAnimated:(BOOL)animated;
- (void)updateToStackWithProgress:(double)progress originalPosition:(CGPoint)position;
@end

@implementation PKPassGroupView

- (void)_updateDelegateResponderCache
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v17 = WeakRetained;
    v4 = objc_opt_respondsToSelector();
    p_layoutState = &self->_layoutState;
    v8 = *(p_layoutState + 16);
    v7 = p_layoutState + 16;
    v6 = v8;
    if (v4)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *v7 = v6 & 0xF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *v7 = *v7 & 0xEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *v7 = *v7 & 0xDF | v11;
    v12 = (objc_opt_respondsToSelector() & 1) == 0;
    WeakRetained = v17;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 64;
    }

    v14 = *v7;
  }

  else
  {
    v13 = 0;
    v15 = &self->_layoutState;
    v16 = *(v15 + 16);
    v7 = v15 + 16;
    v14 = v16 & 0xC7;
    *v7 = v16 & 0xC7;
  }

  *v7 = v13 | v14 & 0xBF;
}

- (void)_addPanAndLongPressGestureRecognizers
{
  if (self->_pressGestureRecognizer || (v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handlePress_], pressGestureRecognizer = self->_pressGestureRecognizer, self->_pressGestureRecognizer = v3, pressGestureRecognizer, -[UILongPressGestureRecognizer setMinimumPressDuration:](self->_pressGestureRecognizer, "setMinimumPressDuration:", 0.15), self->_longPressGestureRecognizer) || (v5 = objc_msgSend(objc_alloc(MEMORY[0x1E69DCC48]), "initWithTarget:action:", 0, 0), longPressGestureRecognizer = self->_longPressGestureRecognizer, self->_longPressGestureRecognizer = v5, longPressGestureRecognizer, -[UILongPressGestureRecognizer setMinimumPressDuration:](self->_longPressGestureRecognizer, "setMinimumPressDuration:", 0.3), self->_panGestureRecognizer))
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanGesture_];
    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = v7;

    [(PKPassGroupView *)self addGestureRecognizer:self->_pressGestureRecognizer];
    [(PKPassGroupView *)self addGestureRecognizer:self->_longPressGestureRecognizer];
    v9 = self->_panGestureRecognizer;

    [(PKPassGroupView *)self addGestureRecognizer:v9];
  }
}

- (void)_updateCachedLayoutState
{
  [(PKPassGroupView *)self _updateCachedGroupState];
  [(UIScrollView *)self->_horizontalScrollView bounds];
  self->_layoutState.bounds.origin.x = v3;
  self->_layoutState.bounds.origin.y = v4;
  self->_layoutState.bounds.size.width = v5;
  self->_layoutState.bounds.size.height = v6;
}

- (_NSRange)_rangeOfPagingIndices
{
  numberOfPasses = self->_layoutState.numberOfPasses;
  selectedIndex = self->_layoutState.selectedIndex;
  v4 = 1;
  if (selectedIndex)
  {
    v4 = 2;
  }

  v5 = selectedIndex != 0;
  v6 = selectedIndex - 1;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v4 + v7 >= numberOfPasses)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 + 1;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_rangeOfVisibleIndices
{
  if ((*(&self->_layoutState + 16) & 2) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 3;
  }

  v3 = MEMORY[0x1EEE24C78](0, self->_layoutState.numberOfPasses, self->_layoutState.selectedIndex, v2);
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_updateCachedGroupState
{
  p_layoutState = &self->_layoutState;
  self->_layoutState.numberOfPasses = [(PKGroup *)self->_group passCount];
  frontmostPassIndex = [(PKGroup *)self->_group frontmostPassIndex];
  numberOfPasses = self->_layoutState.numberOfPasses;
  v6 = numberOfPasses != 0;
  v7 = numberOfPasses - 1;
  if (v6)
  {
    frontmostPassIndex2 = v7;
  }

  else
  {
    frontmostPassIndex2 = 0;
  }

  if (frontmostPassIndex < frontmostPassIndex2)
  {
    frontmostPassIndex2 = [(PKGroup *)self->_group frontmostPassIndex];
  }

  p_layoutState->selectedIndex = frontmostPassIndex2;
}

- (void)sizeToFit
{
  [(PKPassView *)self->_frontmostPassView frame];
  v4 = v3;
  v6 = v5;
  [(PKPassView *)self->_frontmostPassView sizeToFit];
  v10.receiver = self;
  v10.super_class = PKPassGroupView;
  [(PKPassGroupView *)&v10 sizeToFit];
  [(PKPassView *)self->_frontmostPassView frame];
  if (v4 != v8 || v6 != v7)
  {
    [(PKPassGroupView *)self setNeedsLayout];
  }
}

- (void)_removePageControl
{
  superview = [(UIPageControl *)self->_pageControl superview];

  if (superview)
  {
    [(UIPageControl *)self->_pageControl removeFromSuperview];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__PKPassGroupView__removePageControl__block_invoke;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
    layer = [(UIPageControl *)self->_pageControl layer];
    [layer removeAllAnimations];
    [layer clearHasBeenCommitted];
    *&self->_layoutState &= 0x9Fu;
  }
}

- (void)didMoveToSuperview
{
  v12.receiver = self;
  v12.super_class = PKPassGroupView;
  [(PKPassGroupView *)&v12 didMoveToSuperview];
  superview = [(PKPassGroupView *)self superview];
  if (superview)
  {
    superview2 = [(UIPageControl *)self->_pageControl superview];
    v5 = superview2;
    if (superview2)
    {
      v6 = superview2 == superview;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [(UIPageControl *)self->_pageControl center];
      [v5 convertPoint:superview toView:?];
      v8 = v7;
      v10 = v9;
      [superview insertSubview:self->_pageControl atIndex:0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __37__PKPassGroupView_didMoveToSuperview__block_invoke;
      v11[3] = &unk_1E8012188;
      v11[4] = self;
      v11[5] = v8;
      v11[6] = v10;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
    }
  }

  else
  {
    [(PKPassGroupView *)self _removePageControl];
  }
}

- (UIOffset)offsetForFrontmostPassWhileStacked
{
  [(PKPassGroupView *)self _rangeOfVisibleIndices];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = (v3 - 1) * 6.0;
  v5 = 0.0;
  result.vertical = v4;
  result.horizontal = v5;
  return result;
}

- (void)_updatePausedState
{
  v4 = self->_invalidated || self->_paused;
  v5 = v4;
  if (self->_effectivePaused != v5)
  {
    v7[5] = v2;
    v7[6] = v3;
    self->_effectivePaused = v5;
    passViewsByUniqueID = self->_passViewsByUniqueID;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__PKPassGroupView__updatePausedState__block_invoke;
    v7[3] = &unk_1E80253D8;
    v7[4] = self;
    [(NSMutableDictionary *)passViewsByUniqueID enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = PKPassGroupView;
  [(PKPassGroupView *)&v41 layoutSubviews];
  if (self->_preventLayoutCounter)
  {
    self->_preventedLayout = 1;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    p_layoutState = &self->_layoutState;
    v5 = *(&self->_layoutState + 16);
    if (v5)
    {
      [(PKPassGroupView *)self _removeDelayedAnimations];
    }

    self->_layoutState.delay = 0.0;
    [(PKPassGroupView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ((*(&self->_layoutState + 16) & 4) != 0)
    {
      x = self->_layoutState.priorContentOffset.x;
      y = self->_layoutState.priorContentOffset.y;
    }

    else
    {
      [(UIScrollView *)self->_horizontalScrollView contentOffset];
      x = v12;
      y = v14;
    }

    [(UIScrollView *)self->_horizontalScrollView contentSize];
    v17 = v16;
    v19 = v18;
    frontmostPassView = [(PKPassGroupView *)self frontmostPassView];
    [frontmostPassView sizeToFit];
    [frontmostPassView sizeOfFront];
    v22 = v21;
    [(UIScrollView *)self->_horizontalScrollView frame];
    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v22;
    if (!CGRectEqualToRect(v42, v43))
    {
      [(UIScrollView *)self->_horizontalScrollView setFrame:v7, v9, v11, v22];
    }

    [(PKPassGroupView *)self _updateCachedLayoutState];
    v23 = self->_layoutState.bounds.size.width * self->_layoutState.numberOfPasses;
    isScrollAnimating = [(UIScrollView *)self->_horizontalScrollView isScrollAnimating];
    if (isScrollAnimating)
    {
      v25 = v17;
    }

    else
    {
      v25 = v23;
    }

    if (isScrollAnimating)
    {
      v26 = v19;
    }

    else
    {
      v26 = v22;
    }

    if (v25 != v17 || v26 != v19)
    {
      [(UIScrollView *)self->_horizontalScrollView setContentSize:?];
    }

    self->_layoutState.instantaneousContentOffsetDelta.x = self->_layoutState.bounds.origin.x - x;
    self->_layoutState.instantaneousContentOffsetDelta.y = self->_layoutState.bounds.origin.y - y;
    if (v5)
    {
      [MEMORY[0x1E6979518] begin];
      [(PKPassGroupView *)self _beginTrackingAnimation];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __33__PKPassGroupView_layoutSubviews__block_invoke;
      v40[3] = &unk_1E8010970;
      v40[4] = self;
      [MEMORY[0x1E6979518] setCompletionBlock:v40];
    }

    [(PKPassGroupView *)self applyContentModesAnimated:v5 & 1];
    presentationState = self->_presentationState;
    if (presentationState == 3)
    {
      if ([(PKGroup *)self->_group passCount]>= 2)
      {
        layer = [(UIScrollView *)self->_horizontalScrollView layer];
        v30 = *(MEMORY[0x1E69792E8] + 48);
        v35[2] = *(MEMORY[0x1E69792E8] + 32);
        v35[3] = v30;
        v35[4] = *(MEMORY[0x1E69792E8] + 64);
        v31 = *(MEMORY[0x1E69792E8] + 80);
        v32 = *(MEMORY[0x1E69792E8] + 16);
        v35[0] = *MEMORY[0x1E69792E8];
        v35[1] = v32;
        v36 = v31;
        v37 = 0xBF847AE147AE147BLL;
        v33 = *(MEMORY[0x1E69792E8] + 112);
        v38 = *(MEMORY[0x1E69792E8] + 96);
        v39 = v33;
        [layer setSublayerTransform:v35];
      }

      presentationState = self->_presentationState;
    }

    v34 = 0.0;
    if ((presentationState - 1) >= 2)
    {
      if (presentationState == 3)
      {
        if ((*p_layoutState & 8) != 0)
        {
          if ((*p_layoutState & 0x10) != 0)
          {
            [(PKPassGroupView *)self _layoutFan];
          }
        }

        else if (v5)
        {
          if ((*(&self->_layoutState + 16) & 2) != 0)
          {
            [(PKPassGroupView *)self _layoutFan];
            self->_layoutState.delay = self->_layoutState.delay + 0.45;
          }

          [(PKPassGroupView *)self _layoutPages];
          v34 = dbl_1BE116F30[(*(&self->_layoutState + 16) & 2) == 0];
        }

        else
        {
          [(PKPassGroupView *)self _layoutPages];
        }
      }
    }

    else
    {
      [(PKPassGroupView *)self _layoutStack];
    }

    [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:(*p_layoutState & 8) == 0 withDelay:v34];
    if (v5)
    {
      [MEMORY[0x1E6979518] commit];
    }

    self->_layoutState.instantaneousContentOffsetDelta = *MEMORY[0x1E695EFF8];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_layoutStack
{
  p_layoutState = &self->_layoutState;
  v4 = *(&self->_layoutState + 16) & 1;
  x = self->_layoutState.instantaneousContentOffsetDelta.x;
  y = self->_layoutState.instantaneousContentOffsetDelta.y;
  self->_layoutState.instantaneousContentOffsetDelta = *MEMORY[0x1E695EFF8];
  v7 = self->_layoutState.bounds.origin.x;
  selectedIndex = self->_layoutState.selectedIndex;
  v9 = self->_layoutState.bounds.origin.y;
  v18.size.width = self->_layoutState.bounds.size.width;
  v18.size.height = self->_layoutState.bounds.size.height;
  v18.origin.x = v7;
  v18.origin.y = v9;
  v10 = CGRectGetWidth(v18) * selectedIndex;
  p_layoutState->bounds.origin.x = v10;
  p_layoutState->bounds.origin.y = 0.0;
  v11 = x + v10 - v7;
  [(UIScrollView *)self->_horizontalScrollView setContentOffset:0 animated:v10, 0.0];
  v12 = self->_presentationState == 2;
  _rangeOfVisibleIndices = [(PKPassGroupView *)self _rangeOfVisibleIndices];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__PKPassGroupView__layoutStack__block_invoke;
  v15[3] = &unk_1E8025360;
  v15[4] = self;
  *&v15[5] = v11;
  *&v15[6] = y + 0.0 - v9;
  v16 = v12;
  v17 = v4;
  v15[7] = _rangeOfVisibleIndices;
  v15[8] = v14;
  [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v15];
}

void __31__PKPassGroupView__layoutStack__block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 536);
    v38 = v7;
    [*(v8 + 600) bringSubviewToFront:v7];
    v10 = [v38 layer];
    [v10 position];
    v12 = v11;
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [*(a1 + 32) _stackingPositionForCardView:v38 atStackIndex:a4 withSeparation:(*(a1 + 72) & 1) == 0];
    v19 = v17;
    v20 = v18;
    if (*(a1 + 73) == 1)
    {
      v21 = v14 + v16;
      v22 = v12 + v15;
      if (v17 != v22 || v18 != v21)
      {
        v24 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"position"];
        [v24 pkui_updateForAdditiveAnimationFromPoint:v22 toPoint:{v21, v19, v20}];
        v25 = [v10 pkui_addAdditiveAnimation:v24];
      }
    }

    [v10 setPosition:{v19, v20}];
    [v10 opacity];
    v27 = *(a1 + 56);
    v28 = 0.0;
    v29 = a3 >= v27;
    v30 = a3 - v27;
    if (v29 && v30 < *(a1 + 64))
    {
      v28 = ((v9 == a3) | ((*(a1 + 72) & 1) == 0));
    }

    if (*(a1 + 73) == 1)
    {
      v31 = *&v26;
      if (v28 != *&v26)
      {
        v32 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
        [v32 pkui_updateForAdditiveAnimationFromScalar:v31 toScalar:v28];
        v33 = [v10 pkui_addAdditiveAnimation:v32];
      }
    }

    *&v26 = v28;
    [v10 setOpacity:v26];
    [v10 zPosition];
    if (v34 != 0.0)
    {
      v35 = v34;
      v36 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"zPosition"];
      [v36 pkui_updateForAdditiveAnimationFromScalar:v35 toScalar:0.0];
      v37 = [v10 pkui_addAdditiveAnimation:v36];
      [v10 setZPosition:0.0];
    }

    [v38 setDimmer:*(a1 + 73) animated:*(*(a1 + 32) + 608)];
    [v38 setModalShadowVisibility:*(a1 + 73) animated:0.0];

    v7 = v38;
  }
}

- (PKPassGroupView)initWithGroup:(id)group delegate:(id)delegate presentationState:(int64_t)state
{
  groupCopy = group;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = PKPassGroupView;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(PKPassGroupView *)&v29 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_hitTestEnabled = 1;
    v15->_modalReferenceScale = 1.0;
    [(PKPassGroupView *)v15 _updateDelegateResponderCache];
    layer = [(PKPassGroupView *)v15 layer];
    [layer setAnchorPoint:{0.5, 0.0}];
    [layer setMasksToBounds:0];
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(groupCopy, "passCount")}];
    passViewsByUniqueID = v15->_passViewsByUniqueID;
    v15->_passViewsByUniqueID = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69B9148]);
    delayedAnimations = v15->_delayedAnimations;
    v15->_delayedAnimations = v20;

    v22 = [delegateCopy groupViewReusablePassViewQueue:v15];
    objc_storeWeak(&v15->_passViewQueue, v22);

    objc_storeStrong(&v15->_group, group);
    [(PKGroup *)v15->_group addGroupObserver:v15];
    v23 = objc_alloc(MEMORY[0x1E69DCEF8]);
    [(PKPassGroupView *)v15 bounds];
    v24 = [v23 initWithFrame:?];
    horizontalScrollView = v15->_horizontalScrollView;
    v15->_horizontalScrollView = v24;

    [(UIScrollView *)v15->_horizontalScrollView setDelegate:v15];
    [(UIScrollView *)v15->_horizontalScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v15->_horizontalScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v15->_horizontalScrollView setPagingEnabled:1];
    [(UIScrollView *)v15->_horizontalScrollView setScrollsToTop:0];
    [(UIScrollView *)v15->_horizontalScrollView setClipsToBounds:0];
    [(UIScrollView *)v15->_horizontalScrollView setScrollEnabled:0];
    [(PKPassGroupView *)v15 addSubview:v15->_horizontalScrollView];
    v26 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v11, v12, v13, v14}];
    pageControl = v15->_pageControl;
    v15->_pageControl = v26;

    [(UIPageControl *)v15->_pageControl addTarget:v15 action:sel__pageControlChanged_ forControlEvents:4096];
    [(UIPageControl *)v15->_pageControl setAnchorPoint:0.5, 0.0];
    [(UIPageControl *)v15->_pageControl setAlpha:0.0];
    [(UIPageControl *)v15->_pageControl setAutoresizingMask:0];
    v15->_presentationState = state;
    [(PKPassGroupView *)v15 _addPanAndLongPressGestureRecognizers];
    [(PKPassGroupView *)v15 _updateCachedLayoutState];
    [(PKPassGroupView *)v15 setFrontmostPassViewFromPassIndex:v15->_layoutState.selectedIndex];
    [(PKPassGroupView *)v15 _updateLoadedViews:1];
    [(PKPassGroupView *)v15 applyContentModesAnimated:0];
    [(UIScrollView *)v15->_horizontalScrollView setContentOffset:CGRectGetWidth(v15->_layoutState.bounds) * v15->_layoutState.selectedIndex, 0.0];
    [(PKPassGroupView *)v15 _updatePageControlVisibilityAnimated:0 withDelay:0.0];
    [(PKPassGroupView *)v15 setAccessibilityIdentifier:*MEMORY[0x1E69B99F0]];

    objc_autoreleasePoolPop(v16);
  }

  return v15;
}

- (void)dealloc
{
  [(UIPageControl *)self->_pageControl removeFromSuperview];
  [(UIScrollView *)self->_horizontalScrollView setDelegate:0];
  [(NSMutableDictionary *)self->_passViewsByUniqueID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_243];
  [(PKGroup *)self->_group removeGroupObserver:self];
  [(PKPassGroupView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKPassGroupView;
  [(PKPassGroupView *)&v3 dealloc];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKPassGroupView;
    v5 = [(PKPassGroupView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKPassGroupView;
    v5 = [(PKPassGroupView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPassView *)self->_frontmostPassView sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  if ([(PKPassGroupView *)self _willShowPageControl])
  {
    [(UIPageControl *)self->_pageControl sizeThatFits:1.79769313e308, 1.79769313e308];
    v7 = v7 + v8 + 6.0;
  }

  v9 = v5 + 8.0;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  _shouldReverseLayoutDirection = [(PKPassGroupView *)self _shouldReverseLayoutDirection];
  PKFloatRoundToPixel();
  v5 = v4;
  _willShowPageControl = [(PKPassGroupView *)self _willShowPageControl];
  v7 = 0.0;
  if (_willShowPageControl)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (_shouldReverseLayoutDirection)
  {
    v9 = 8.0 - v5;
  }

  else
  {
    v9 = v5;
  }

  if (_shouldReverseLayoutDirection)
  {
    v10 = v5;
  }

  else
  {
    v10 = 8.0 - v5;
  }

  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = PKPassGroupView;
  if ([(PKPassGroupView *)&v12 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    superview = [(UIPageControl *)self->_pageControl superview];

    if (superview)
    {
      pageControl = self->_pageControl;
      [(UIPageControl *)pageControl convertPoint:self fromView:x, y];
      v8 = [(UIPageControl *)pageControl pointInside:eventCopy withEvent:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self->_hitTestEnabled)
  {
    v13.receiver = self;
    v13.super_class = PKPassGroupView;
    v8 = [(PKPassGroupView *)&v13 hitTest:eventCopy withEvent:x, y];
    if (v8 == self)
    {
      superview = [(UIPageControl *)self->_pageControl superview];

      if (superview)
      {
        pageControl = self->_pageControl;
        [(UIPageControl *)pageControl convertPoint:self fromView:x, y];
        v11 = [(UIPageControl *)pageControl hitTest:eventCopy withEvent:?];
      }

      else
      {
        v11 = 0;
      }

      v8 = v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_preventLayoutForAction:(id)action
{
  actionCopy = action;
  if (!actionCopy || (v4 = self->_preventLayoutCounter + 1, ++self->_preventLayoutCounter, (v4 & 0x10000) != 0) || (v5 = objc_autoreleasePoolPush(), actionCopy[2](), objc_autoreleasePoolPop(v5), v6 = self->_preventLayoutCounter - 1, --self->_preventLayoutCounter, v6 >= 0x10000))
  {
    __break(1u);
  }

  else
  {
    if (!v6 && self->_preventedLayout)
    {
      self->_preventedLayout = 0;
      [(PKPassGroupView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviewsAnimated:(BOOL)animated
{
  p_layoutState = &self->_layoutState;
  v4 = *(&self->_layoutState + 16);
  *(&self->_layoutState + 16) = v4 & 0xFE | animated;
  [(PKPassGroupView *)self layoutIfNeeded];
  *(p_layoutState + 16) = *(p_layoutState + 16) & 0xFE | v4 & 1;
}

- (void)_layoutFan
{
  p_layoutState = &self->_layoutState;
  v4 = *(&self->_layoutState + 16) & 1;
  v5 = [(PKPassGroupView *)self passViewForIndex:self->_layoutState.selectedIndex];
  [(PKPassGroupView *)self _pagingFrameForCardView:v5 atIndex:p_layoutState->selectedIndex];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  instantaneousContentOffsetDelta = p_layoutState->instantaneousContentOffsetDelta;
  p_layoutState->instantaneousContentOffsetDelta = *MEMORY[0x1E695EFF8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __29__PKPassGroupView__layoutFan__block_invoke;
  v14[3] = &unk_1E8025388;
  v14[4] = self;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v4;
  [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v14];
}

void __29__PKPassGroupView__layoutFan__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  if (v35 || ([*(a1 + 32) _loadCardViewForIndex:a3 contentMode:{objc_msgSend(*(a1 + 32), "_defaultContentModeForIndex:", a3)}], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "_stackingPositionForCardView:atStackIndex:withSeparation:", v35, a4, 0), objc_msgSend(v35, "setCenter:"), v35))
  {
    v7 = [v35 layer];
    [*(*(a1 + 32) + 600) bringSubviewToFront:v35];
    [v35 center];
    v9 = v8;
    v11 = v10;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [*(a1 + 32) _pagingFrameForCardView:v35 atIndex:a3];
    [v35 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [*(a1 + 32) _fanningPositionForCardView:v35 atStackIndex:a4 withSelectedFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v15 = v14;
    v17 = v16;
    v18 = *(a1 + 32);
    if ((*(v18 + 456) & 8) != 0 && *(v18 + 464) > 0.0)
    {
      [v18 _stackingPositionForCardView:v35 atStackIndex:a4 withSeparation:1];
      v19 = *(*(a1 + 32) + 464);
      v15 = v20 * v19 + (1.0 - v19) * v15;
      v17 = v21 * v19 + (1.0 - v19) * v17;
    }

    if (*(a1 + 88) == 1)
    {
      v22 = v9 + v12;
      v23 = v11 + v13;
      if (v15 != v22 || v17 != v23)
      {
        v25 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"position"];
        [v25 pkui_updateForAdditiveAnimationFromPoint:v22 toPoint:{v23, v15, v17}];
        v26 = [v7 pkui_addAdditiveAnimation:v25];
      }
    }

    [v35 setCenter:{v15, v17}];
    [v7 opacity];
    if (*(a1 + 88) == 1 && v27 != 1.0)
    {
      v28 = v27;
      v29 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v29 pkui_updateForAdditiveAnimationFromScalar:v28 toScalar:1.0];
      v30 = [v7 pkui_addAdditiveAnimation:v29];
    }

    [v35 setAlpha:1.0];
    [v7 zPosition];
    if (v31 != 0.0)
    {
      v32 = v31;
      v33 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"zPosition"];
      [v33 pkui_updateForAdditiveAnimationFromScalar:v32 toScalar:0.0];
      v34 = [v7 pkui_addAdditiveAnimation:v33];
      [v7 setZPosition:0.0];
    }

    [v35 setDimmer:*(a1 + 88) animated:*(*(a1 + 32) + 608)];
    [v35 setModalShadowVisibility:*(a1 + 88) animated:0.0];
  }
}

- (void)_layoutPages
{
  p_layoutState = &self->_layoutState;
  v4 = *(&self->_layoutState + 16);
  instantaneousContentOffsetDelta = self->_layoutState.instantaneousContentOffsetDelta;
  [(PKPassGroupView *)self continuousShadowIndex];
  p_layoutState->instantaneousContentOffsetDelta = *MEMORY[0x1E695EFF8];
  delay = p_layoutState->delay;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PKPassGroupView__layoutPages__block_invoke;
  v7[3] = &unk_1E80253B0;
  v11 = v4 & 1;
  v7[4] = self;
  v7[5] = &v12;
  v9 = delay;
  v10 = v6;
  [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v7];
  if (v4)
  {
    p_layoutState->indeterminateAnimatedBefore = fmax(delay + CFAbsoluteTimeGetCurrent() + v13[3] * 0.3, p_layoutState->indeterminateAnimatedBefore);
  }

  _Block_object_dispose(&v12, 8);
}

void __31__PKPassGroupView__layoutPages__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v39 = v5;
    [*(*(a1 + 32) + 600) bringSubviewToFront:v5];
    v6 = [v39 layer];
    [v6 position];
    v8 = v7;
    v10 = v9;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    [*(a1 + 32) _pagingFrameForCardView:v39 atIndex:a3];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v6 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [v6 anchorPoint];
    v22 = v14 + v21 * v18;
    v24 = v16 + v23 * v20;
    if (*(a1 + 80) == 1)
    {
      v25 = v10 + v12;
      v26 = v8 + v11;
      if (v22 != v26 || v24 != v25)
      {
        v28 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"position"];
        [v28 pkui_updateForAdditiveAnimationFromPoint:v26 toPoint:{v25, v22, v24}];
        [v28 duration];
        *(*(*(a1 + 40) + 8) + 24) = fmax(v29, *(*(*(a1 + 40) + 8) + 24));
        if (*(a1 + 64) <= 0.0)
        {
          v30 = [v6 pkui_addAdditiveAnimation:v28];
        }

        else
        {
          [v28 setBeginTime:?];
        }
      }
    }

    [v6 setPosition:{v22, v24}];
    [v6 opacity];
    if (*(a1 + 80) == 1 && *&v31 != 1.0)
    {
      v32 = *&v31;
      v33 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v33 pkui_updateForAdditiveAnimationFromScalar:v32 toScalar:1.0];
      v34 = [v6 pkui_addAdditiveAnimation:v33];
    }

    LODWORD(v31) = 1.0;
    [v6 setOpacity:v31];
    [v6 zPosition];
    if (v35 != 0.0)
    {
      v36 = v35;
      v37 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"zPosition"];
      [v37 pkui_updateForAdditiveAnimationFromScalar:v36 toScalar:0.0];
      v38 = [v6 pkui_addAdditiveAnimation:v37];
      [v6 setZPosition:0.0];
    }

    [v39 setDimmer:*(a1 + 80) animated:*(*(a1 + 32) + 608)];
    if (vabdd_f64(*(a1 + 72), a3) < 1.0)
    {
      PKSpringAnimationSolveForInput();
    }

    [v39 setModalShadowVisibility:*(a1 + 80) animated:? withDelay:?];

    v5 = v39;
  }
}

void __31__PKPassGroupView__layoutPages__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v14 = a2;
  [v14 position];
  v6 = v5;
  v8 = v7;
  v9 = [v4 fromValue];

  [v9 CGPointValue];
  v11 = v10;
  v13 = v12;

  [v14 setPosition:{v6 + v11, v8 + v13}];
}

- (void)updateToStackWithProgress:(double)progress originalPosition:(CGPoint)position
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_presentationState == 3)
  {
    y = position.y;
    x = position.x;
    p_layoutState = &self->_layoutState;
    layoutState = self->_layoutState;
    if ((layoutState & 8) == 0)
    {
      *p_layoutState = layoutState | 8;
      self->_layoutState.indeterminateProgress = 0.0;
      trackers = [(PKRemoveableAnimationTrackerStore *)self->_delayedAnimations trackers];
      if ([trackers count])
      {
        [(PKPassGroupView *)self _removeDelayedAnimations];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = trackers;
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          v13 = *v32;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v11);
              }

              if ([*(*(&v31 + 1) + 8 * i) isPreempted])
              {
                LOBYTE(v12) = 16;
                goto LABEL_14;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        *p_layoutState = *p_layoutState & 0xEF | v12;
        [(PKPassGroupView *)self setNeedsLayout];
        [(PKPassGroupView *)self layoutSubviewsAnimated:1];
      }

      [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];

      layoutState = *p_layoutState;
    }

    v15 = 1.0;
    v16 = fmin(fmax(progress, 0.0), 1.0);
    if ((layoutState & 0x10) != 0)
    {
      if (v16 >= 0.85)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = v16 / 0.85;
      }

      [(PKPassGroupView *)self setNeedsLayout];
      p_layoutState->indeterminateProgress = v18;
    }

    else
    {
      if (v16 < 0.2)
      {
        v15 = 0.0;
        v17 = v16 / 0.2;
      }

      else
      {
        v17 = 1.0;
        if (v16 < 1.0)
        {
          v15 = 1.0;
          if (fmax(v16 + -0.2, 0.0) / 0.8 < 0.8)
          {
            PKSpringAnimationSolveForInput();
            v17 = v15;
          }
        }
      }

      p_layoutState->indeterminateProgress = v15;
      layer = [(PKPassGroupView *)self layer];
      [layer position];
      v21 = v20;
      v23 = v22;

      v24 = x - v21;
      v25 = y - v23;
      v26 = CFAbsoluteTimeGetCurrent() < p_layoutState->indeterminateAnimatedBefore;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __62__PKPassGroupView_updateToStackWithProgress_originalPosition___block_invoke;
      v28[3] = &unk_1E8025360;
      v27 = v26;
      v28[4] = self;
      *&v28[5] = v24;
      *&v28[6] = v25;
      v29 = v16 >= 0.2;
      v30 = v27;
      *&v28[7] = v17;
      *&v28[8] = v16;
      [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v28];
    }
  }
}

void __62__PKPassGroupView_updateToStackWithProgress_originalPosition___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v43 = v7;
    v8 = [v7 layer];
    [*(a1 + 32) _pagingFrameForCardView:v43 atIndex:a3];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 anchorPoint];
    v19 = *(a1 + 32);
    v20 = *(v19 + 67);
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v20 != a3)
    {
      v21 = *(a1 + 40);
      v23 = *(a1 + 48);
      v22 = -5.0;
    }

    v24 = v10 + v17 * v14 + v21;
    v25 = v12 + v18 * v16;
    v26 = v19[76];
    v27 = v25 + v23;
    v28 = fmax(v26, 0.025);
    if (v20 == a3)
    {
      v29 = v19[76];
    }

    else
    {
      v29 = v28;
    }

    [v19 _stackingPositionForCardView:v43 atStackIndex:a4 withSeparation:1];
    if (*(a1 + 72))
    {
      v32 = *(a1 + 56);
      v33 = v30 * v32 + (1.0 - v32) * v24;
      v34 = v31 * v32 + (1.0 - v32) * v27;
      v35 = v32 * 0.0 + (1.0 - v32) * v22;
      v36 = *(*(a1 + 32) + 608) * v32 + (1.0 - v32) * v29;
    }

    else
    {
      v37 = fmax(v26, 0.0);
      v38 = *(a1 + 56);
      v33 = v24 * v38 + (1.0 - v38) * v24;
      v34 = v27 * v38 + (1.0 - v38) * v27;
      v35 = v22 * v38 + (1.0 - v38) * 0.0;
      v36 = v29 * v38 + (1.0 - v38) * v37;
    }

    if (*(a1 + 73) == 1)
    {
      [v8 position];
      v40 = v39;
      v41 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"position.x"];
      [v41 pkui_updateForAdditiveAnimationFromScalar:v40 toScalar:v33];
      v42 = [v8 pkui_addAdditiveAnimation:v41];
    }

    [v8 setPosition:{v33, v34}];
    [v8 setZPosition:v35];
    [v43 setDimmer:0 animated:v36];
    [v43 setModalShadowVisibility:{(1.0 - *(a1 + 64)) * objc_msgSend(v43, "isModallyPresented")}];

    v7 = v43;
  }
}

- (CGPoint)_stackingPositionForCardView:(id)view atStackIndex:(unint64_t)index withSeparation:(BOOL)separation
{
  separationCopy = separation;
  viewCopy = view;
  [viewCopy bounds];
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (separationCopy)
  {
    v15 = v8 + index * 6.0;
  }

  else
  {
    v15 = v8;
  }

  [viewCopy anchorPoint];
  v17 = v16;
  v19 = v18;

  v20 = v10 + v17 * v12;
  v21 = v15 + v19 * v14;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)_fanningPositionForCardView:(id)view atStackIndex:(unint64_t)index withSelectedFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;
  [viewCopy anchorPoint];
  v14 = v13;
  v16 = v15;

  v17 = x + v14 * v10;
  v18 = y + index * 60.0 + v16 * v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGRect)_pagingFrameForCardView:(id)view atIndex:(unint64_t)index
{
  [view bounds];
  v7 = v6;
  v9 = v8;
  v10.n128_f64[0] = index;
  v11.n128_f64[0] = (self->_layoutState.bounds.size.width - v6) * 0.5 + index * self->_layoutState.bounds.size.width;
  PKFloatFloorToPixel(v11, v10);
  v13 = 0.0;
  v14 = v7;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(PKPassGroupView *)self _updatePausedState];
  }
}

- (void)setFrontmostPassViewFromPassIndex:(int64_t)index withContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  v9 = [(PKPassGroupView *)self passViewForIndex:index];
  [(PKPassGroupView *)self setFrontmostPassView:v9 withContext:contextCopy animated:animatedCopy];
}

- (void)setFrontmostPassView:(id)view withContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  contextCopy = context;
  frontmostPassView = self->_frontmostPassView;
  if (frontmostPassView != viewCopy)
  {
    v20 = viewCopy;
    if (frontmostPassView)
    {
      contentMode = [(PKPassView *)frontmostPassView contentMode];
      frontmostPassView = self->_frontmostPassView;
    }

    else
    {
      contentMode = 1;
    }

    [(PKPassView *)frontmostPassView setModallyPresented:0];
    objc_storeStrong(&self->_frontmostPassView, view);
    v13 = self->_frontmostPassView;
    if (v13)
    {
      if (self->_modallyPresented)
      {
        [(PKPassView *)v13 setModallyPresented:1];
      }

      if (self->_frontFaceContentModePinningCounter && contentMode > [(PKPassView *)self->_frontmostPassView contentMode])
      {
        [(PKPassView *)self->_frontmostPassView setContentMode:contentMode animated:animatedCopy];
      }
    }

    [(PKPassGroupView *)self sizeToFit];
    [(PKPassGroupView *)self _updatePageControlFrameAnimated:1];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _observers = [(PKPassGroupView *)self _observers];
    v15 = [_observers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(_observers);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v19 groupView:self frontmostPassViewDidChange:self->_frontmostPassView withContext:contextCopy];
          }
        }

        v16 = [_observers countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    viewCopy = v20;
  }
}

- (void)setPresentationState:(int64_t)state withContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  presentationState = self->_presentationState;
  layoutState = self->_layoutState;
  if (presentationState != state || (layoutState & 8) != 0)
  {
    self->_presentationState = state;
    v17 = contextCopy;
    if (presentationState != state && !animatedCopy)
    {
      [(PKPassGroupView *)self _removeDelayedAnimations];
      state = self->_presentationState;
    }

    v12 = state == 3 && [(PKGroup *)self->_group passCount]> 1;
    presentFanned = [v17 presentFanned];
    v14 = presentFanned;
    *&self->_layoutState &= 0xE7u;
    if (v12)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    if (((layoutState & 0x18) == 8) | presentFanned & 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    *(&self->_layoutState + 16) = *(&self->_layoutState + 16) & 0xFD | v16;
    [(PKPassGroupView *)self setNeedsLayout];
    [(PKPassGroupView *)self layoutSubviewsAnimated:animatedCopy & ~(v12 & v14)];
    *(&self->_layoutState + 16) &= ~2u;
    [(PKPassGroupView *)self _updatePausedState];
    [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:animatedCopy withDelay:0.0];
    contextCopy = v17;
  }
}

- (void)deleteButtonPressedFromSourceView:(id)view
{
  viewCopy = view;
  pass = [(PKPassView *)self->_frontmostPassView pass];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (pass && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained groupView:self deleteButtonPressedForPass:pass sourceView:viewCopy];
  }
}

- (void)setPassViewExpanded:(BOOL)expanded forPass:(id)pass animated:(BOOL)animated
{
  expandedCopy = expanded;
  passViewsByUniqueID = self->_passViewsByUniqueID;
  uniqueID = [pass uniqueID];
  v8 = [(NSMutableDictionary *)passViewsByUniqueID objectForKey:uniqueID];

  [v8 setFrontFaceExpanded:expandedCopy animated:1];
}

- (void)applyContentModesAnimated:(BOOL)animated
{
  presentationState = self->_presentationState;
  if (presentationState == 1)
  {
    if ((*(&self->_layoutState + 16) & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = [WeakRetained groupViewContentModeForFrontmostPassWhenStacked:self];
      goto LABEL_11;
    }

LABEL_8:
    selectedIndex = self->_layoutState.selectedIndex;
    v6 = 2;
    goto LABEL_13;
  }

  if (presentationState == 2)
  {
    if ((*(&self->_layoutState + 16) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = [WeakRetained groupViewContentModeForFrontmostPassWhenPiled:self withDefaultContentMode:2];
LABEL_11:
      v6 = v8;

      presentationState = self->_presentationState;
LABEL_12:
      selectedIndex = self->_layoutState.selectedIndex;
      if ((presentationState - 1) >= 2)
      {
        if (presentationState != 3)
        {
          v11 = 0;
          v10 = 1;
          goto LABEL_20;
        }

        goto LABEL_15;
      }

LABEL_13:
      v10 = 1;
      v11 = 1;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (presentationState != 3)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = 5;
LABEL_15:
  if (self->_animationCounter)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  selectedIndex = [(PKPassGroupView *)self _rangeOfPagingIndices];
LABEL_20:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__PKPassGroupView_applyContentModesAnimated___block_invoke;
  v12[3] = &unk_1E8025400;
  v12[4] = self;
  v12[5] = selectedIndex;
  v12[6] = v10;
  v12[7] = v6;
  v12[8] = v11;
  animatedCopy = animated;
  [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v12];
}

uint64_t __45__PKPassGroupView_applyContentModesAnimated___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 40);
    v4 = a3 - v3 < *(result + 48) && a3 >= v3;
    v5 = 64;
    if (v4)
    {
      v5 = 56;
    }

    return [*(result + 32) _applyContentMode:*(result + v5) toPassView:a2 animated:*(result + 72)];
  }

  return result;
}

- (void)endPinningFrontFaceContentMode
{
  v2 = self->_frontFaceContentModePinningCounter - 1;
  self->_frontFaceContentModePinningCounter = v2;
  if (!v2)
  {
    [(PKPassGroupView *)self applyContentModesAnimated:0];
  }
}

- (void)presentDiff:(id)diff completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  completionCopy = completion;
  if (diffCopy)
  {
    passUniqueID = [diffCopy passUniqueID];
    [(PKPassGroupView *)self presentPassWithUniqueID:passUniqueID];
    v9 = [(NSMutableDictionary *)self->_passViewsByUniqueID objectForKey:passUniqueID];
    [v9 presentDiff:diffCopy completion:completionCopy];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    passUniqueID = self->_passViewsByUniqueID;
    v10 = [(NSMutableDictionary *)passUniqueID countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(passUniqueID);
          }

          v14 = [(NSMutableDictionary *)self->_passViewsByUniqueID objectForKey:*(*(&v15 + 1) + 8 * v13), v15];
          [v14 presentDiff:0 completion:completionCopy];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableDictionary *)passUniqueID countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)presentPassWithUniqueID:(id)d withContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  v8 = [(PKGroup *)self->_group indexForPassUniqueID:d];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    [(PKGroup *)self->_group setFrontmostPassIndex:v8];
    [(PKPassGroupView *)self setFrontmostPassViewFromPassIndex:v9 withContext:contextCopy animated:animatedCopy];
    [(PKPassGroupView *)self _updateCachedGroupState];
    [(PKPassGroupView *)self _updateLoadedViews:1];
    if (self->_presentationState == 3)
    {
      [(UIScrollView *)self->_horizontalScrollView setContentOffset:1 animated:self->_layoutState.bounds.size.width * v9, 0.0];
      [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
    }

    else
    {
      [(PKPassGroupView *)self setPresentationState:3 withContext:contextCopy animated:1];
    }
  }
}

- (void)setDimmer:(double)dimmer animated:(BOOL)animated
{
  self->_dimmerValue = dimmer;
  frontmostPassView = [(PKPassGroupView *)self frontmostPassView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PKPassGroupView_setDimmer_animated___block_invoke;
  v8[3] = &unk_1E8025428;
  v9 = frontmostPassView;
  selfCopy = self;
  animatedCopy = animated;
  v7 = frontmostPassView;
  [(PKPassGroupView *)self _enumeratePassViewsInStackOrderWithHandler:v8];
}

void __38__PKPassGroupView_setDimmer_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (*(a1 + 32) == v3)
    {
      v4 = *(*(a1 + 40) + 608);
      v5 = *(a1 + 48);
    }

    else
    {
      v4 = 0.0;
      v5 = 0;
    }

    [v3 setDimmer:v5 animated:v4];
    v3 = v6;
  }
}

- (void)_endTrackingAnimation
{
  v2 = self->_animationCounter - 1;
  self->_animationCounter = v2;
  if (!v2)
  {
    [(PKPassGroupView *)self applyContentModesAnimated:0];
  }
}

- (_NSRange)_rangeOfFannedIndices
{
  v2 = MEMORY[0x1EEE24C78](0, self->_layoutState.numberOfPasses, self->_layoutState.selectedIndex, 5);
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)_enumerateIndicesInStackOrderWithHandler:(id)handler
{
  handlerCopy = handler;
  [(PKPassGroupView *)self _rangeOfVisibleIndices];
  PKEnumerateRangeInStackOrder();
}

- (void)_enumerateIndicesInFannedOrderWithHandler:(id)handler
{
  handlerCopy = handler;
  [(PKPassGroupView *)self _rangeOfFannedIndices];
  PKEnumerateRangeInStackOrder();
}

- (void)_enumeratePassViewsInStackOrderWithHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    allKeys = [(NSMutableDictionary *)self->_passViewsByUniqueID allKeys];
    v6 = [allKeys mutableCopy];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke;
    v25[3] = &unk_1E8025450;
    v25[4] = self;
    v7 = v6;
    v26 = v7;
    [(PKPassGroupView *)self _enumerateIndicesInStackOrderWithHandler:v25];
    if ([v7 count])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke_2;
      v21[3] = &unk_1E8025478;
      v22 = v7;
      selfCopy = self;
      v24 = handlerCopy;
      [(PKPassGroupView *)self _enumerateIndicesInFannedOrderWithHandler:v21];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
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

          v13 = [(PKGroup *)self->_group indexForPassUniqueID:*(*(&v17 + 1) + 8 * v12)];
          v14 = [(PKPassGroupView *)self passViewForIndex:v13];
          if (v14)
          {
            (*(handlerCopy + 2))(handlerCopy, v14, v13, 0);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v10);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke_3;
    v15[3] = &unk_1E80254A0;
    v15[4] = self;
    v16 = handlerCopy;
    [(PKPassGroupView *)self _enumerateIndicesInStackOrderWithHandler:v15];
  }
}

void __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 752) passAtIndex:a2];
  v5 = [v3 uniqueID];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) removeObject:v5];
    v4 = v5;
  }
}

void __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) count])
  {
    v7 = [*(*(a1 + 40) + 752) passAtIndex:a2];
    v11 = [v7 uniqueID];

    v8 = v11;
    if (v11)
    {
      v9 = [*(a1 + 32) containsObject:v11];
      v8 = v11;
      if (v9)
      {
        [*(a1 + 32) removeObject:v11];
        v10 = [*(a1 + 40) passViewForIndex:a2];
        if (v10)
        {
          (*(*(a1 + 48) + 16))();
        }

        v8 = v11;
      }
    }
  }

  else
  {
    *a4 = 1;
  }
}

void __62__PKPassGroupView__enumeratePassViewsInStackOrderWithHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) passViewForIndex:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_applyContentMode:(int64_t)mode toPassView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  contentMode = [(PKPassView *)viewCopy contentMode];
  if (self->_animationCounter)
  {
    v9 = 0;
  }

  else if (self->_frontFaceContentModePinningCounter)
  {
    v9 = self->_frontmostPassView != viewCopy;
  }

  else
  {
    v9 = 1;
  }

  if (contentMode < mode)
  {
    v9 = 1;
  }

  if (contentMode != mode && v9)
  {
    v10 = animatedCopy ? 0.5 : 0.0;
    if (mode == 5 || contentMode != 5 || !animatedCopy || ([(PKPassView *)viewCopy setContentMode:4 animated:1], mode != 4))
    {
      [(PKPassView *)viewCopy setContentMode:mode animated:animatedCopy withDelay:v10];
    }
  }
}

- (void)_updateLoadedViews:(BOOL)views
{
  v5 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PKPassGroupView__updateLoadedViews___block_invoke;
  v6[3] = &unk_1E80254F0;
  viewsCopy = views;
  v6[4] = self;
  v6[5] = &v8;
  [(PKPassGroupView *)self _preventLayoutForAction:v6];
  if (*(v9 + 24) == 1)
  {
    [(PKPassGroupView *)self setNeedsLayout];
  }

  _Block_object_dispose(&v8, 8);
  objc_autoreleasePoolPop(v5);
}

void __38__PKPassGroupView__updateLoadedViews___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _rangeOfPagingIndices];
  v5 = v4;
  v6 = [*(*v2 + 584) allKeys];
  v7 = [v6 mutableCopy];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__66;
  v32 = __Block_byref_object_dispose__66;
  v33 = 0;
  v8 = *v2;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__PKPassGroupView__updateLoadedViews___block_invoke_75;
  v21[3] = &unk_1E80254C8;
  v27 = *(a1 + 48);
  v25 = v3;
  v26 = v5;
  v9 = *(a1 + 40);
  v21[4] = v8;
  v23 = v9;
  v24 = &v28;
  v10 = v7;
  v22 = v10;
  [v8 _enumerateIndicesInStackOrderWithHandler:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v34 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [*(*(a1 + 32) + 584) objectForKey:{v15, v17}];
        [v16 removeFromSuperview];
        [v16 setDelegate:0];
        [*(*(a1 + 32) + 584) removeObjectForKey:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v34 count:16];
    }

    while (v12);
  }

  if (v29[5])
  {
    [*(a1 + 32) setFrontmostPassView:?];
  }

  _Block_object_dispose(&v28, 8);
}

void __38__PKPassGroupView__updateLoadedViews___block_invoke_75(uint64_t a1, unint64_t a2)
{
  v4 = [*(*(a1 + 32) + 752) passAtIndex:a2];
  v11 = [v4 uniqueID];

  v5 = [*(*(a1 + 32) + 584) objectForKey:v11];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v5;
    [*(v6 + 600) bringSubviewToFront:v5];
  }

  else if (*(v6 + 448) != 3 || (*(a1 + 80) & 1) != 0 || (v7 = 0, v8 = *(a1 + 64), v9 = a2 >= v8, v10 = a2 - v8, v9) && v10 < *(a1 + 72))
  {
    v7 = [v6 _loadCardViewForIndex:a2 contentMode:{objc_msgSend(*(a1 + 32), "_defaultContentModeForIndex:", a2)}];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(a1 + 32) + 536) == a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  }

  if (v11)
  {
    [*(a1 + 40) removeObject:v11];
  }
}

- (id)_loadCardViewForIndex:(unint64_t)index contentMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_passViewQueue);
  dequeueReusablePassView = [WeakRetained dequeueReusablePassView];

  if (dequeueReusablePassView)
  {
    goto LABEL_2;
  }

  if (self->_invalidated)
  {
    dequeueReusablePassView = 0;
    goto LABEL_10;
  }

  v10 = [(PKGroup *)self->_group passAtIndex:index];
  v11 = [(PKGroup *)self->_group stateAtIndex:index];
  v12 = objc_loadWeakRetained(&self->_delegate);
  v13 = [v12 groupViewPassesSuppressedContent:self];

  dequeueReusablePassView = [[PKPassView alloc] initWithPass:v10 content:mode suppressedContent:v13];
  [(PKPassView *)dequeueReusablePassView setPassState:v11];

  if (dequeueReusablePassView)
  {
LABEL_2:
    [(PKPassView *)dequeueReusablePassView setDelegate:self];
    [(UIScrollView *)self->_horizontalScrollView addSubview:dequeueReusablePassView];
    uniqueID = [(PKPassView *)dequeueReusablePassView uniqueID];
    if (uniqueID)
    {
      [(NSMutableDictionary *)self->_passViewsByUniqueID setObject:dequeueReusablePassView forKey:uniqueID];
    }

    [(PKPassView *)dequeueReusablePassView setPaused:self->_effectivePaused];
    [(PKPassView *)dequeueReusablePassView sizeToFit];
    if (self->_presentationState == 3)
    {
      [(PKPassGroupView *)self _pagingFrameForCardView:dequeueReusablePassView atIndex:index];
      [(PKPassView *)dequeueReusablePassView setFrame:?];
    }
  }

LABEL_10:

  return dequeueReusablePassView;
}

- (int64_t)_defaultContentModeForIndex:(unint64_t)index
{
  presentationState = self->_presentationState;
  if (presentationState == 1)
  {
    goto LABEL_4;
  }

  if (presentationState == 3)
  {
    return 5;
  }

  if (presentationState != 2)
  {
    return 2;
  }

LABEL_4:
  if (self->_layoutState.selectedIndex == index)
  {
    return 2;
  }

  return 1;
}

- (id)passViewForIndex:(unint64_t)index
{
  v4 = [(PKGroup *)self->_group passAtIndex:index];
  uniqueID = [v4 uniqueID];

  v6 = [(NSMutableDictionary *)self->_passViewsByUniqueID objectForKey:uniqueID];

  return v6;
}

- (void)_removeDelayedAnimations
{
  [(PKRemoveableAnimationTrackerStore *)self->_delayedAnimations preempt];
  delayedAnimations = self->_delayedAnimations;

  [(PKRemoveableAnimationTrackerStore *)delayedAnimations clear];
}

- (void)updatePageControlFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  superview = [(UIPageControl *)self->_pageControl superview];
  if ((*&self->_layoutState & 4) != 0 || superview)
  {
    v7 = superview;
    superview2 = [(PKPassGroupView *)self superview];

    if (v7 == superview2)
    {
      [(PKPassGroupView *)self _updatePageControlFrameAnimated:animatedCopy];
    }

    else
    {
      [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
    }

    superview = v7;
  }
}

- (id)beginSuppressingPageControl
{
  pageControlSuppressionCounter = self->_pageControlSuppressionCounter;
  self->_pageControlSuppressionCounter = pageControlSuppressionCounter + 1;
  if (pageControlSuppressionCounter)
  {
    if (pageControlSuppressionCounter != 0xFFFF)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
LABEL_5:
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69B8798]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__PKPassGroupView_beginSuppressingPageControl__block_invoke_2;
  v13[3] = &unk_1E80111D0;
  objc_copyWeak(&v15, &location);
  v14 = &__block_literal_global_79;
  v5 = [v4 initWithBlock:v13];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKPassGroupView_beginSuppressingPageControl__block_invoke_3;
  v9[3] = &unk_1E8025538;
  v10 = v5;
  v6 = v5;
  objc_copyWeak(&v12, &location);
  v11 = &__block_literal_global_79;
  v7 = _Block_copy(v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v7;
}

void __46__PKPassGroupView_beginSuppressingPageControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (v3 = v2[216] - 1, --v2[216], v3 < 0x10000))
  {
    if (!v3)
    {
      v4 = v2;
      [v2 _updatePageControlVisibilityAnimated:1 withDelay:0.0];
      v2 = v4;
    }
  }

  else
  {
    __break(1u);
  }
}

void __46__PKPassGroupView_beginSuppressingPageControl__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __46__PKPassGroupView_beginSuppressingPageControl__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) invalidate])
  {
    __break(1u);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      (*(*(a1 + 40) + 16))();
      WeakRetained = v3;
    }
  }
}

- (BOOL)overrideShadowAlpha:(double)alpha
{
  if (self->_shadowHasAlphaOverride && self->_shadowAlphaOverride == alpha)
  {
    return 0;
  }

  [(PKPassGroupView *)self setNeedsLayout];
  shadowHasAlphaOverride = self->_shadowHasAlphaOverride;
  v5 = 1;
  self->_shadowHasAlphaOverride = 1;
  self->_shadowAlphaOverride = alpha;
  if (!shadowHasAlphaOverride)
  {
    [(PKPassGroupView *)self layoutSubviewsAnimated:1];
  }

  return v5;
}

- (void)clearShadowAlphaOverride
{
  if (self->_shadowHasAlphaOverride)
  {
    [(PKPassGroupView *)self setNeedsLayout];
    self->_shadowHasAlphaOverride = 0;
    if (self->_presentationState == 3)
    {

      [(PKPassGroupView *)self layoutSubviewsAnimated:1];
    }
  }
}

- (BOOL)overridePageControlAlpha:(double)alpha
{
  pageControlHasAlphaOverride = self->_pageControlHasAlphaOverride;
  if (pageControlHasAlphaOverride && self->_pageControlAlphaOverride == alpha)
  {
    return 0;
  }

  v6 = 1;
  self->_pageControlHasAlphaOverride = 1;
  self->_pageControlAlphaOverride = alpha;
  if ((*&self->_layoutState & 2) != 0)
  {
    [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:!pageControlHasAlphaOverride withDelay:0.0, v3, v4];
    return 1;
  }

  return v6;
}

- (void)clearPageControlAlphaOverride
{
  if (self->_pageControlHasAlphaOverride)
  {
    self->_pageControlHasAlphaOverride = 0;
    if ((*&self->_layoutState & 2) != 0)
    {
      [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
    }
  }
}

- (BOOL)pageControlAlphaOverrideMatchesPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v5 = predicateCopy;
    if (self->_pageControlHasAlphaOverride)
    {
      v6 = (*(predicateCopy + 2))(predicateCopy, self->_pageControlAlphaOverride);
    }

    else
    {
      v6 = 0;
    }

    LOBYTE(predicateCopy) = v6;
  }

  else
  {
    __break(1u);
  }

  return predicateCopy;
}

- (void)_pageControlChanged:(id)changed
{
  if (self->_presentationState == 3)
  {
    displayIndex = [(PKPassGroupView *)self displayIndex];
    currentPage = [(UIPageControl *)self->_pageControl currentPage];
    if (displayIndex != currentPage)
    {
      v8 = CGRectGetWidth(self->_layoutState.bounds) * currentPage;
      horizontalScrollView = self->_horizontalScrollView;

      [(UIScrollView *)horizontalScrollView setContentOffset:1 animated:v8, 0.0];
    }
  }

  else
  {
    pageControl = self->_pageControl;
    selectedIndex = self->_layoutState.selectedIndex;

    [(UIPageControl *)pageControl setCurrentPage:selectedIndex];
  }
}

- (void)_updatePageControlFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  superview = [(UIPageControl *)self->_pageControl superview];

  if (superview)
  {
    p_layoutState = &self->_layoutState;
    if ((*(&self->_layoutState + 16) & 0x40) != 0)
    {
      v39 = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained groupViewModalReferenceScale:self isValid:&v39];
      v9 = v8;

      if (v39 == 1)
      {
        self->_modalReferenceScale = v9;
      }
    }

    if (animatedCopy)
    {
      v10 = *p_layoutState;
      if ((v10 & 0x20) != 0)
      {
        v11 = (v10 >> 6) & 1;
        if (self->_pageControlAnimationCounter)
        {
          LOBYTE(animatedCopy) = 1;
        }

        else
        {
          LOBYTE(animatedCopy) = v11;
        }
      }

      else
      {
        LOBYTE(animatedCopy) = 0;
      }
    }

    [(UIPageControl *)self->_pageControl frame];
    [(UIPageControl *)self->_pageControl sizeThatFits:1.79769313e308, 1.79769313e308];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPassGroupView__updatePageControlFrameAnimated___block_invoke;
    aBlock[3] = &unk_1E8025560;
    v38 = animatedCopy;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    superview2 = [(PKPassView *)self->_frontmostPassView superview];

    if (superview2)
    {
      [(PKPassGroupView *)self center];
      v35 = v15;
      v36 = v14;
      [(PKPassGroupView *)self anchorPoint];
      v17 = v16;
      v19 = v18;
      [(PKPassGroupView *)self bounds];
      v21 = v20;
      v23 = v22;
      [(PKPassView *)self->_frontmostPassView frameOfVisibleFace];
      [(PKPassGroupView *)self convertRect:self->_frontmostPassView fromView:?];
      PKFloatRoundToPixel();
      PKSizeAlignedInRect();
      v25 = v24;
      v27 = v26;
      PKFloatRoundToPixel();
      v29 = v36 - v17 * v21 + v28;
      PKFloatRoundToPixel();
      v31.n128_f64[0] = v35 - v19 * v23 + v30;
    }

    else
    {
      if ((*p_layoutState & 0x20) == 0)
      {
LABEL_16:

        return;
      }

      PKSizeAlignedInRect();
      v29 = v32;
      v25 = v33;
      v27 = v34;
    }

    (*(v12 + 2))(v12, self->_pageControl, v29, v31, v25, v27);
    goto LABEL_16;
  }
}

void __51__PKPassGroupView__updatePageControlFrameAnimated___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = a2;
  [v13 pkui_setBounds:0 animated:{v11, v12, a5, a6}];
  [v13 anchorPoint];
  [v13 pkui_setPosition:*(a1 + 40) animated:{a3 + v14 * a5, a4 + v15 * a6}];

  *(*(a1 + 32) + 456) |= 0x20u;
}

- (void)_updatePageControlWithDisplayIndex
{
  displayIndex = [(PKPassGroupView *)self displayIndex];
  if (displayIndex != [(UIPageControl *)self->_pageControl currentPage])
  {
    pageControl = self->_pageControl;

    [(UIPageControl *)pageControl setCurrentPage:displayIndex];
  }
}

- (void)_updatePageControlVisibilityAnimated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  superview = [(PKPassGroupView *)self superview];
  passCount = [(PKGroup *)self->_group passCount];
  layoutState = self->_layoutState;
  v10 = passCount > 1 && self->_modallyPresented;
  v11 = layoutState & 0xFE | v10;
  *&self->_layoutState = v11;
  v12 = v10 && self->_presentationState == 3;
  if (v12 && (layoutState & 8) == 0)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | v11 & 0xFB;
  *&self->_layoutState = v14;
  if (superview && v12)
  {
    *&self->_layoutState = v14 & 0xFD | (2 * (self->_pageControlSuppressionCounter == 0));
  }

  else
  {
    *&self->_layoutState = v14 & 0xFD;
    if (!superview)
    {
      [(PKPassGroupView *)self _removePageControl];
      goto LABEL_20;
    }
  }

  superview2 = [(UIPageControl *)self->_pageControl superview];
  v16 = superview2;
  if (superview2 != superview)
  {
    if (superview2)
    {
      [(UIPageControl *)self->_pageControl center];
      [v16 convertPoint:superview toView:?];
      v18 = v17;
      v20 = v19;
      [superview insertSubview:self->_pageControl atIndex:0];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke;
      v50[3] = &unk_1E8012188;
      v50[4] = self;
      v50[5] = v18;
      v50[6] = v20;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v50];
    }

    else if (*&self->_layoutState)
    {
      [superview insertSubview:self->_pageControl atIndex:0];
    }
  }

LABEL_20:
  superview3 = [(UIPageControl *)self->_pageControl superview];

  if (passCount != [(UIPageControl *)self->_pageControl numberOfPages])
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:passCount];
  }

  if (superview3)
  {
    v22 = animatedCopy;
  }

  else
  {
    v22 = 0;
  }

  [(PKPassGroupView *)self _updatePageControlFrameAnimated:v22];
  layer = [(UIPageControl *)self->_pageControl layer];
  pageControlAlphaOverride = 0.0;
  if ((*&self->_layoutState & 2) != 0)
  {
    pageControlAlphaOverride = 1.0;
    if (self->_pageControlHasAlphaOverride)
    {
      pageControlAlphaOverride = self->_pageControlAlphaOverride;
    }
  }

  v49 = 0;
  pageControl = self->_pageControl;
  if (v22)
  {
    mEMORY[0x1E69B92B0] = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [(UIPageControl *)pageControl pkui_setAlpha:mEMORY[0x1E69B92B0] withAnimationFactory:&v49 animation:0 removePriorAnimation:pageControlAlphaOverride];
  }

  else
  {
    [(UIPageControl *)pageControl pkui_setAlpha:0 withAnimationFactory:&v49 animation:0 removePriorAnimation:pageControlAlphaOverride];
    if (pageControlAlphaOverride != v27)
    {
      [layer removeAnimationForKey:@"opacity"];
    }
  }

  v28 = self->_layoutState;
  if (superview3 && pageControlAlphaOverride > 0.0)
  {
    v28 |= 0x40u;
    *&self->_layoutState = v28;
  }

  if (v49)
  {
    [v49 duration];
    v30 = v29;
    [v49 setBeginTime:delay];
    if ((v28 & 4) == 0)
    {
      [(UIScrollView *)self->_horizontalScrollView setScrollEnabled:(*&self->_layoutState >> 2) & 1];
    }

    ++self->_scrollEnabledAnimationCounter;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_2;
    aBlock[3] = &unk_1E8025588;
    aBlock[4] = v47;
    v31 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    v32 = v49;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_3;
    v42[3] = &unk_1E801ECE0;
    v44[1] = v30;
    v44[2] = *&delay;
    objc_copyWeak(v44, &location);
    v33 = v31;
    v43 = v33;
    [v32 pkui_setDidStartHandler:v42];
    ++self->_pageControlAnimationCounter;
    v34 = v49;
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_5;
    v39 = &unk_1E80110B8;
    objc_copyWeak(&v41, &location);
    v35 = v33;
    v40 = v35;
    [v34 pkui_setCompletionHandler:&v36];
    [layer removeAnimationForKey:{@"opacity", v36, v37, v38, v39}];
    [layer addAnimation:v49 forKey:@"opacity"];

    objc_destroyWeak(&v41);
    objc_destroyWeak(v44);
    objc_destroyWeak(&location);

    _Block_object_dispose(v47, 8);
  }

  else
  {
    if ((v28 & 4) == 0 || !self->_scrollEnabledAnimationCounter)
    {
      [(UIScrollView *)self->_horizontalScrollView setScrollEnabled:(v28 >> 2) & 1];
      LOBYTE(v28) = self->_layoutState;
    }

    if ((v28 & 1) == 0 && (v28 & 2) == 0 && !self->_pageControlAnimationCounter)
    {
      [(PKPassGroupView *)self _removePageControl];
    }
  }
}

void __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = *(*(a1 + 32) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      v6 = *(v3 + 208) - 1;
      *(v3 + 208) = v6;
      if (!v6)
      {
        v7 = v3;
        [v3[75] setScrollEnabled:(*(v3 + 456) >> 2) & 1];
        v4 = v7;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, (fmax(*(a1 + 48) - *(a1 + 56), 0.0) * 0.5 * 1000000000.0));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_4;
  v3[3] = &unk_1E80111D0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(&v5);
}

void __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __66__PKPassGroupView__updatePageControlVisibilityAnimated_withDelay___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
    v3 = *(v5 + 207) - 1;
    *(v5 + 207) = v3;
    if ((*(v5 + 456) & 1) == 0 && !v3 && (*(v5 + 456) & 2) == 0)
    {
      [v5 _removePageControl];
      WeakRetained = v5;
    }
  }
}

- (void)setBlurRadius:(double)radius
{
  if (self->_blurRadius != radius)
  {
    if (!self->_filter)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __33__PKPassGroupView_setBlurRadius___block_invoke;
      v7[3] = &unk_1E8010970;
      v7[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    }

    self->_blurRadius = radius;
    layer = [(PKPassGroupView *)self layer];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blurRadius];
    [layer setValue:v6 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

void __33__PKPassGroupView_setBlurRadius___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979928]];
  v4 = *(a1 + 32);
  v5 = *(v4 + 576);
  *(v4 + 576) = v3;

  [*(*(a1 + 32) + 576) setValue:&unk_1F3CC7F88 forKeyPath:@"inputRadius"];
  [*(*(a1 + 32) + 576) setName:@"gaussianBlur"];
  v6 = [*(a1 + 32) layer];
  v8[0] = *(*(a1 + 32) + 576);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v6 setFilters:v7];
}

- (void)setModallyPresented:(BOOL)presented
{
  if (self->_modallyPresented != presented)
  {
    v9 = v3;
    self->_modallyPresented = presented;
    frontmostPassView = self->_frontmostPassView;
    if (frontmostPassView)
    {
      [(PKPassView *)frontmostPassView setModallyPresented:?];
    }

    [(PKPassGroupView *)self sizeToFit:v4];

    [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
  }
}

- (void)setLoaned:(BOOL)loaned
{
  if (self->_loaned != loaned)
  {
    self->_loaned = loaned;
  }
}

- (void)setGestureCollector:(id)collector
{
  obj = collector;
  WeakRetained = objc_loadWeakRetained(&self->_gestureCollector);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained unregisterGroupView:self];
    }

    objc_storeWeak(&self->_gestureCollector, obj);
    [obj registerGroupView:self withPressGestureRecognizer:self->_pressGestureRecognizer longPressGestureRecognizer:self->_longPressGestureRecognizer panGestureRecognizer:self->_panGestureRecognizer delegate:self];
  }
}

- (void)_handlePress:(id)press
{
  state = [press state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    self->_pressed = 1;
    if (self->_effectivePressed)
    {
      return;
    }

    self->_effectivePressed = 1;
    self->_effectivePressStart = CFAbsoluteTimeGetCurrent();
    pressTimer = self->_pressTimer;
    if (pressTimer)
    {
      self->_pressTimer = 0;
      v7 = pressTimer;

      dispatch_source_cancel(v7);
    }
  }

  else
  {
    self->_pressed = 0;
    if (!self->_effectivePressed || self->_pressTimer)
    {
      return;
    }

    v5 = fmax(self->_effectivePressStart - CFAbsoluteTimeGetCurrent() + 0.2, 0.0);
    if (v5 >= 0.00833333333 && !self->_invalidated)
    {
      v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v9 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      objc_initWeak(&location, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __32__PKPassGroupView__handlePress___block_invoke;
      handler[3] = &unk_1E8010998;
      objc_copyWeak(&v14, &location);
      dispatch_source_set_event_handler(v8, handler);
      v10 = self->_pressTimer;
      self->_pressTimer = v8;
      v11 = v8;

      dispatch_resume(v11);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      return;
    }

    self->_effectivePressed = self->_pressed;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained groupViewPressedDidChange:self];
  }
}

void __32__PKPassGroupView__handlePress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[86];
    if (v3)
    {
      v6 = v2;
      dispatch_source_cancel(v3);
      v4 = v6[86];
      v6[86] = 0;

      v2 = v6;
    }

    if ((*(v2 + 674) & 1) == 0 && *(v2 + 675) == 1)
    {
      *(v2 + 675) = 0;
      v7 = v2;
      v5 = objc_loadWeakRetained(v2 + 81);
      if (objc_opt_respondsToSelector())
      {
        [v5 groupViewPressedDidChange:v7];
      }

      v2 = v7;
    }
  }
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained groupViewPanDidEnd:self];
    }
  }

  else
  {
    if (state != 2)
    {
      if (state != 1)
      {
        goto LABEL_10;
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained groupViewPanDidBegin:self];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [gestureCopy translationInView:self];
      v7 = v6;
      v9 = v8;
      [gestureCopy velocityInView:self];
      [WeakRetained groupView:self panned:v7 withVelocity:{v9, v10, v11}];
    }
  }

LABEL_10:
}

- (BOOL)gestureCollector:(id)collector recognizerShouldBegin:(id)begin
{
  collectorCopy = collector;
  beginCopy = begin;
  if (collectorCopy && (v8 = beginCopy) != 0)
  {
    if (self->_longPressGestureRecognizer == beginCopy && (*(&self->_layoutState + 16) & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [WeakRetained groupViewShouldAllowPanning:self];
    }

    else
    {
      v9 = 1;
    }

    LOBYTE(beginCopy) = v9;
  }

  else
  {
    __break(1u);
  }

  return beginCopy;
}

- (void)_updateFrontmostPassViewIfNecessary
{
  displayIndex = [(PKPassGroupView *)self displayIndex];
  if (displayIndex != self->_layoutState.selectedIndex)
  {
    v4 = displayIndex;
    if ([(PKPassView *)self->_frontmostPassView isFrontFaceExpanded])
    {
      [(PKPassView *)self->_frontmostPassView setFrontFaceExpanded:0 animated:1];
    }

    [(PKGroup *)self->_group setFrontmostPassIndex:v4];
    [(PKPassGroupView *)self setFrontmostPassViewFromPassIndex:v4];

    [(PKPassGroupView *)self _updateCachedGroupState];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  horizontalScrollView = self->_horizontalScrollView;
  if (horizontalScrollView == scrollCopy && self->_presentationState == 3)
  {
    v10 = scrollCopy;
    [(UIScrollView *)horizontalScrollView bounds];
    self->_layoutState.bounds.origin.x = v6;
    self->_layoutState.bounds.origin.y = v7;
    self->_layoutState.bounds.size.width = v8;
    self->_layoutState.bounds.size.height = v9;
    if (([(UIScrollView *)v10 isScrollAnimating]& 1) == 0)
    {
      [(PKPassGroupView *)self _updateFrontmostPassViewIfNecessary];
      [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
    }

    [(PKPassGroupView *)self _updateLoadedViews:0];
    [(PKPassGroupView *)self setNeedsLayout];
    scrollCopy = v10;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  horizontalScrollView = self->_horizontalScrollView;
  if (horizontalScrollView == draggingCopy)
  {
    v12 = draggingCopy;
    if (self->_presentationState == 3 && !decelerate)
    {
      [(UIScrollView *)horizontalScrollView bounds];
      self->_layoutState.bounds.origin.x = v8;
      self->_layoutState.bounds.origin.y = v9;
      self->_layoutState.bounds.size.width = v10;
      self->_layoutState.bounds.size.height = v11;
      [(PKPassGroupView *)self _updateFrontmostPassViewIfNecessary];
      [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
      [(PKPassGroupView *)self _updateLoadedViews:1];
      draggingCopy = v12;
    }

    if (!decelerate)
    {
      [(PKPassGroupView *)self setNeedsLayout];
      draggingCopy = v12;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  horizontalScrollView = self->_horizontalScrollView;
  if (horizontalScrollView == deceleratingCopy)
  {
    v10 = deceleratingCopy;
    if (self->_presentationState == 3)
    {
      [(UIScrollView *)horizontalScrollView bounds];
      self->_layoutState.bounds.origin.x = v6;
      self->_layoutState.bounds.origin.y = v7;
      self->_layoutState.bounds.size.width = v8;
      self->_layoutState.bounds.size.height = v9;
      [(PKPassGroupView *)self _updateFrontmostPassViewIfNecessary];
      [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
      [(PKPassGroupView *)self _updateLoadedViews:1];
    }

    [(PKPassGroupView *)self setNeedsLayout];
    deceleratingCopy = v10;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  horizontalScrollView = self->_horizontalScrollView;
  if (horizontalScrollView == animationCopy)
  {
    v10 = animationCopy;
    if (self->_presentationState == 3)
    {
      [(UIScrollView *)horizontalScrollView bounds];
      self->_layoutState.bounds.origin.x = v6;
      self->_layoutState.bounds.origin.y = v7;
      self->_layoutState.bounds.size.width = v8;
      self->_layoutState.bounds.size.height = v9;
      [(PKPassGroupView *)self _updateFrontmostPassViewIfNecessary];
      [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
      [(PKPassGroupView *)self _updateLoadedViews:1];
    }

    [(PKPassGroupView *)self setNeedsLayout];
    animationCopy = v10;
  }
}

- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v27 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  [(PKPassGroupView *)self _updateCachedGroupState];
  _rangeOfVisibleIndices = [(PKPassGroupView *)self _rangeOfVisibleIndices];
  if (index < _rangeOfVisibleIndices || index - _rangeOfVisibleIndices >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = self->_presentationState != 3;
    v12 = [(PKPassGroupView *)self _loadCardViewForIndex:index contentMode:[(PKPassGroupView *)self _defaultContentModeForIndex:index]];
    layer = [v12 layer];
    MidX = CGRectGetMidX(self->_layoutState.bounds);
    [layer setPosition:{MidX, CGRectGetMaxY(self->_layoutState.bounds)}];
  }

  selectedIndex = self->_layoutState.selectedIndex;
  if (self->_presentationState == 3)
  {
    if (selectedIndex >= index)
    {
      [groupCopy setFrontmostPassIndex:selectedIndex + 1];
      [(PKPassGroupView *)self setFrontmostPassViewFromPassIndex:selectedIndex + 1];
      [(PKPassGroupView *)self _updateCachedGroupState];
      selectedIndex = self->_layoutState.selectedIndex;
    }

    [(UIScrollView *)self->_horizontalScrollView setContentOffset:v11 animated:CGRectGetWidth(self->_layoutState.bounds) * selectedIndex, 0.0];
  }

  else
  {
    [(PKPassGroupView *)self setFrontmostPassViewFromPassIndex:self->_layoutState.selectedIndex];
  }

  if ([groupCopy passCount] == 2)
  {
    [(PKPassGroupView *)self sizeToFit];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    _observers = [(PKPassGroupView *)self _observers];
    v17 = [_observers countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(_observers);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 groupViewDidUpdatePageControlVisibility:self];
          }
        }

        v18 = [_observers countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  [(PKPassGroupView *)self setNeedsLayout];
  [(PKPassGroupView *)self layoutSubviewsAnimated:v11];
  [(PKPassGroupView *)self setDimmer:0 animated:self->_dimmerValue];
  [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
  [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
}

- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v37 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v10 = [(NSMutableDictionary *)self->_passViewsByUniqueID objectForKey:uniqueID];
  v11 = v10;
  if (v10)
  {
    contentMode = [(PKPassView *)v10 contentMode];
    if ((contentMode - 1) <= 2)
    {
      [passCopy loadImageSetSync:2 preheat:0];
    }

    [(PKPassView *)v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(PKPassView *)v11 removeFromSuperview];
    [(PKPassView *)v11 setDelegate:0];
    v30 = uniqueID;
    [(NSMutableDictionary *)self->_passViewsByUniqueID removeObjectForKey:uniqueID];
    v21 = [(PKPassGroupView *)self _loadCardViewForIndex:index contentMode:contentMode];
    [v21 setFrame:{v14, v16, v18, v20}];
    if (v11 == self->_frontmostPassView)
    {
      [(PKPassGroupView *)self setFrontmostPassView:v21];
    }

    v31 = passCopy;
    _rangeOfVisibleIndices = [(PKPassGroupView *)self _rangeOfVisibleIndices];
    if (index >= _rangeOfVisibleIndices && index - _rangeOfVisibleIndices < v23)
    {
      [(PKPassGroupView *)self setNeedsLayout];
      [(PKPassGroupView *)self layoutSubviewsAnimated:0];
      [v21 setContentMode:contentMode animated:0];
    }

    [(PKPassGroupView *)self setDimmer:0 animated:self->_dimmerValue];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    _observers = [(PKPassGroupView *)self _observers];
    v25 = [_observers countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(_observers);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v29 groupView:self didUpdatePassView:v21];
          }
        }

        v26 = [_observers countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }

    uniqueID = v30;
    passCopy = v31;
  }
}

- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index
{
  v25 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  passCopy = pass;
  [(PKPassGroupView *)self layoutIfNeeded];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__PKPassGroupView_group_didRemovePass_atIndex___block_invoke;
  v21[3] = &unk_1E8012C50;
  v21[4] = self;
  v10 = passCopy;
  v22 = v10;
  indexCopy = index;
  [(PKPassGroupView *)self _preventLayoutForAction:v21];
  [(PKPassGroupView *)self setNeedsLayout];
  if (self->_presentationState == 3)
  {
    [(PKPassGroupView *)self layoutSubviewsAnimated:1];
    *(&self->_layoutState + 16) &= ~4u;
    if ([groupCopy passCount] == 1)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      _observers = [(PKPassGroupView *)self _observers];
      v12 = [_observers countByEnumeratingWithState:&v17 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(_observers);
            }

            v16 = *(*(&v17 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v16 groupViewDidUpdatePageControlVisibility:self];
            }
          }

          v13 = [_observers countByEnumeratingWithState:&v17 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {
    [(PKPassGroupView *)self layoutSubviewsAnimated:0];
  }

  [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.0];
  [(PKPassGroupView *)self _updatePageControlWithDisplayIndex];
}

void __47__PKPassGroupView_group_didRemovePass_atIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 536);
  [*(v2 + 600) contentOffset];
  v5 = v4;
  v7 = v6;
  [*(a1 + 32) _updateCachedGroupState];
  v19 = [*(a1 + 40) uniqueID];
  v8 = [*(*(a1 + 32) + 584) objectForKey:?];
  v9 = *(a1 + 32);
  if (v9[83])
  {
    if ([v9[83] isEqualToString:v19])
    {
      *(*(a1 + 32) + 673) = 1;
    }
  }

  else
  {
    [v9 dismissBackOfPassIfNecessaryForUniqueID:v19];
  }

  [v8 setDelegate:0];
  [*(*(a1 + 32) + 584) removeObjectForKey:v19];
  [v8 removeFromSuperview];
  v10 = *(a1 + 32);
  if (v8 == *(v10 + 744))
  {
    if (v3 >= *(v10 + 528) - 1)
    {
      v3 = *(v10 + 528) - 1;
    }
  }

  else if (v3)
  {
    v11 = *(a1 + 48);
    v12 = *(v10 + 528);
    v13 = v3 - 1;
    if (v3 - 1 >= v12 - 1)
    {
      v13 = v12 - 1;
    }

    if (v11 < v3 || v11 >= v12)
    {
      v3 = v13;
    }
  }

  [*(v10 + 752) setFrontmostPassIndex:v3];
  [*(a1 + 32) _updateCachedGroupState];
  [*(a1 + 32) setFrontmostPassViewFromPassIndex:v3];
  [*(a1 + 32) _updateLoadedViews:1];
  [*(a1 + 32) setDimmer:0 animated:*(*(a1 + 32) + 608)];
  v15 = *(a1 + 32);
  if (*(v15 + 448) == 3)
  {
    *(v15 + 472) |= 4u;
    v16 = *(a1 + 32) + 456;
    *(v16 + 40) = v5;
    *(v16 + 48) = v7;
    v17 = *(*(a1 + 32) + 536);
    v18 = CGRectGetWidth(*(*(a1 + 32) + 544)) * v17;
    [*(a1 + 32) sizeToFit];
    [*(*(a1 + 32) + 600) setContentOffset:0 animated:{v18, 0.0}];
  }
}

- (void)group:(id)group didUpdatePassState:(id)state forPass:(id)pass atIndex:(unint64_t)index
{
  stateCopy = state;
  uniqueID = [pass uniqueID];
  v9 = [(NSMutableDictionary *)self->_passViewsByUniqueID objectForKey:uniqueID];
  [v9 setPassState:stateCopy];
}

- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  [(PKPassGroupView *)self setNeedsLayout:group];

  [(PKPassGroupView *)self layoutSubviewsAnimated:1];
}

- (void)markGroupDeleted
{
  self->_groupWasMarkedDeleted = 1;
  if (!self->_passBeingPresented)
  {
    [(PKPassGroupView *)self dismissBackOfPassIfNecessaryForUniqueID:0];
  }
}

- (void)dismissBackOfPassIfNecessaryForUniqueID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_detailsVC);
  if (WeakRetained && (!dCopy || !self->_passBeingPresented || [dCopy isEqualToString:?]))
  {
    presentingViewController = [WeakRetained presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)createExternalTapGestureRecognizer
{
  v2 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapRecognized_];
  [v2 setNumberOfTapsRequired:1];
  [v2 setNumberOfTouchesRequired:1];
  return v2;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_gestureCollector);
    if (WeakRetained)
    {
      objc_storeWeak(&self->_gestureCollector, 0);
      [WeakRetained unregisterGroupView:self];
    }

    [(NSMutableDictionary *)self->_passViewsByUniqueID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_112];
    pressTimer = self->_pressTimer;
    if (pressTimer)
    {
      self->_pressTimer = 0;
      v5 = pressTimer;

      dispatch_source_cancel(v5);
    }

    [(PKPassGroupView *)self _updatePausedState];
  }
}

- (void)_groupViewTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained groupViewTapped:self];
  }
}

- (void)passViewDidResize:(id)resize animated:(BOOL)animated
{
  if (self->_frontmostPassView == resize)
  {
    [(PKPassGroupView *)self sizeToFit];

    [(PKPassGroupView *)self _updatePageControlVisibilityAnimated:1 withDelay:0.65];
  }
}

- (void)passViewExpandButtonTapped:(id)tapped
{
  if (self->_frontmostPassView == tapped)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained groupViewExpandButtonTapped:self];
    }
  }
}

- (void)faceFrameDidChangeForPassView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_frontmostPassView == viewCopy)
  {
    [(PKPassGroupView *)self updatePageControlFrameAnimated:0];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _observers = [(PKPassGroupView *)self _observers];
    v6 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_observers);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 groupView:self faceViewFrameDidChangeForFrontmostPassView:viewCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  return allObjects;
}

- (void)addPassGroupViewObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  if (!observers)
  {
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = self->_observers;
    self->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePassGroupViewObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (PKReusablePassViewQueue)passViewQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_passViewQueue);

  return WeakRetained;
}

- (PKPassViewGestureCollector)gestureCollector
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureCollector);

  return WeakRetained;
}

- (PKPassGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end