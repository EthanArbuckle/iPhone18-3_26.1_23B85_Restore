@interface _UINavigationBarTransitionContext
+ (CAMediaTimingFunction)fadeInFunction;
+ (CAMediaTimingFunction)fadeOutFunction;
+ (id)contextForTransition:(int64_t)transition withIdiom:(int64_t)idiom completion:(id)completion;
- (BOOL)shouldPerformTwoPartCrossfadeTransition;
- (BOOL)shouldSlideBarBackground;
- (CGPoint)startingContentOffsetForObservedScrollView;
- (NSString)description;
- (UIView)viewFadingInFromCustomAlpha;
- (_UINavigationBarLargeTitleViewLayout)fromLargeTitleViewLayout;
- (_UINavigationBarLargeTitleViewLayout)toLargeTitleViewLayout;
- (uint64_t)_removeAllClippingViews;
- (unint64_t)_animationOptions;
- (void)_addClippingView:(uint64_t)view;
- (void)_animateAsTwoPartsWithOverlap:(double)overlap partOne:(id)one partTwo:(id)two;
- (void)_animateAsTwoPartsWithOverlapIfNecessaryPartOne:(id)one partTwo:(id)two;
- (void)_animateBackgroundView;
- (void)_animateInProcessAsTwoPartsWithKeyframeID:(id)d overlap:(double)overlap partOne:(id)one partTwo:(id)two;
- (void)_animateInProcessAsTwoPartsWithOverlapIfNecessaryWithKeyframeID:(id)d fractionComplete:(double)complete partOne:(id)one partTwo:(id)two;
- (void)_animatePalettes;
- (void)_preparePalettes;
- (void)_resetContentAndLargeTitleViewCompleted:(BOOL)completed;
- (void)_resetPalettes;
- (void)_updateIncomingLayoutWidthToMatchOutgoingLayout;
- (void)cancel;
- (void)complete;
- (void)prepare;
- (void)recordUpdates:(id)updates;
- (void)setAllLargeTitleLayoutsVisible;
- (void)setAllowLargeTitles:(BOOL)titles;
- (void)setBackgroundView:(id)view isBarBackground:(BOOL)background;
- (void)setBeginWithLargeTitle:(BOOL)title;
- (void)setBeginWithTransparencyAllowed:(BOOL)allowed;
- (void)setCompact:(BOOL)compact;
- (void)setEndWithLargeTitle:(BOOL)title;
- (void)setEndWithTransparencyAllowed:(BOOL)allowed;
- (void)setFromLargeTitleViewLayout:(id)layout;
- (void)setObservedScrollViewOffsetIsApplicable:(BOOL)applicable;
- (void)setRTL:(BOOL)l;
- (void)setSharesContentViewLayouts:(BOOL)layouts;
- (void)setToLargeTitleViewLayout:(id)layout;
- (void)setTwoPart:(BOOL)part;
@end

@implementation _UINavigationBarTransitionContext

- (void)setRTL:(BOOL)l
{
  if (l)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFD | v3;
}

- (void)setCompact:(BOOL)compact
{
  if (compact)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFB | v3;
}

- (void)setAllowLargeTitles:(BOOL)titles
{
  if (titles)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFF7 | v3;
}

- (void)setTwoPart:(BOOL)part
{
  if (part)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFEF | v3;
}

- (void)setBeginWithLargeTitle:(BOOL)title
{
  if (title)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFDF | v3;
}

- (void)setEndWithLargeTitle:(BOOL)title
{
  if (title)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFBF | v3;
}

- (void)setObservedScrollViewOffsetIsApplicable:(BOOL)applicable
{
  if (applicable)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFF7F | v3;
}

- (void)setSharesContentViewLayouts:(BOOL)layouts
{
  if (layouts)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFEFF | v3;
}

- (void)setBeginWithTransparencyAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFDFF | v3;
}

- (void)setEndWithTransparencyAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFBFF | v3;
}

- (void)setBackgroundView:(id)view isBarBackground:(BOOL)background
{
  backgroundCopy = background;
  objc_storeStrong(&self->_backgroundView, view);
  if (backgroundCopy)
  {
    v6 = 2048;
  }

  else
  {
    v6 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7FF | v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UINavigationBarTransitionContext;
  v4 = [(_UINavigationBarTransitionContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ from=%p to=%p", v4, self->_fromLayout, self->_toLayout];

  return v5;
}

- (BOOL)shouldSlideBarBackground
{
  if (self->_apiVersion < 1)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    navigationBar = [(_UINavigationBarTransitionContext *)self navigationBar];
    v3 = [navigationBar _shouldCrossFadeBackgroundVisility] ^ 1;
  }

  return v3;
}

+ (id)contextForTransition:(int64_t)transition withIdiom:(int64_t)idiom completion:(id)completion
{
  completionCopy = completion;
  if (transition <= 2)
  {
    if (!transition)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTransitionContext.m" lineNumber:213 description:@"_UINavigationBarTransitionDefault is not valid as a requested transition"];

LABEL_12:
      v12 = 0;
      goto LABEL_14;
    }

    if (transition == 1 || transition == 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTransitionContext.m" lineNumber:217 description:{@"Unknown transition %li", transition}];

    goto LABEL_12;
  }

  if (transition > 5 && transition != 6)
  {
    goto LABEL_11;
  }

LABEL_13:
  v12 = objc_opt_class();
LABEL_14:
  v13 = objc_alloc_init(v12);
  v14 = v13;
  if (idiom == 6)
  {
    *(v13 + 80) |= 0x10u;
  }

  *(v13 + 8) = xmmword_18A678660;
  [v13 setCompletionHandler:completionCopy];

  return v14;
}

- (void)recordUpdates:(id)updates
{
  updatesCopy = updates;
  v28 = updatesCopy;
  if ((*&self->_flags & 0x100) != 0)
  {
    v13 = updatesCopy;
    contentView = self->_contentView;
    if (contentView)
    {
      layout = [(_UINavigationBarContentView *)contentView layout];
      if (!layout)
      {
        fromLayout = self->_fromLayout;
        if (fromLayout && (v17 = fromLayout->_contentViewLayout) != 0 || (toLayout = self->_toLayout) != 0 && (v17 = toLayout->_contentViewLayout) != 0)
        {
          layout = v17;
          [(_UINavigationBarContentView *)self->_contentView adoptLayout:v17];
        }

        else
        {
          [(_UINavigationBarContentView *)self->_contentView adoptNewLayout];
          layout = [(_UINavigationBarContentView *)self->_contentView layout];
        }
      }

      objc_storeStrong(&self->_fromContentLayout, layout);
      [(_UINavigationBarLayout *)&self->_fromLayout->super.isa setContentViewLayout:layout];
      toContentLayout = self->_toContentLayout;
      self->_toContentLayout = layout;
      v20 = layout;

      [(_UINavigationBarLayout *)&self->_toLayout->super.isa setContentViewLayout:v20];
      v13 = v28;
    }

    largeTitleView = self->_largeTitleView;
    if (largeTitleView)
    {
      layout2 = [(_UINavigationBarLargeTitleView *)largeTitleView layout];
      if (!layout2)
      {
        v23 = self->_fromLayout;
        if (v23 && (v24 = v23->_largeTitleViewLayout) != 0 || (v25 = self->_toLayout) != 0 && (v24 = v25->_largeTitleViewLayout) != 0)
        {
          layout2 = v24;
          [(_UINavigationBarLargeTitleView *)self->_largeTitleView adoptLayout:v24];
        }

        else
        {
          [(_UINavigationBarLargeTitleView *)self->_largeTitleView adoptNewLayout];
          layout2 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView layout];
        }
      }

      objc_storeStrong(&self->_fromLargeTitleLayout, layout2);
      [(_UINavigationBarLayout *)&self->_fromLayout->super.isa setLargeTitleViewLayout:layout2];
      toLargeTitleLayout = self->_toLargeTitleLayout;
      self->_toLargeTitleLayout = layout2;
      v27 = layout2;

      [(_UINavigationBarLayout *)&self->_toLayout->super.isa setLargeTitleViewLayout:v27];
      v13 = v28;
    }

    (v13[2])(v13);
  }

  else
  {
    [(_UINavigationBarLayout *)self->_fromLayout recordFromStateForTransition:self];
    v5 = self->_fromLayout;
    if (v5)
    {
      contentViewLayout = v5->_contentViewLayout;
    }

    else
    {
      contentViewLayout = 0;
    }

    objc_storeStrong(&self->_fromContentLayout, contentViewLayout);
    v7 = self->_fromLayout;
    if (v7)
    {
      largeTitleViewLayout = v7->_largeTitleViewLayout;
    }

    else
    {
      largeTitleViewLayout = 0;
    }

    objc_storeStrong(&self->_fromLargeTitleLayout, largeTitleViewLayout);
    [(_UINavigationBarLayout *)self->_toLayout prepareToRecordToState:self];
    v28[2]();
    if ([(_UINavigationBarContentViewLayout *)self->_fromContentLayout titleAlignment]== 1)
    {
      [(_UINavigationBarContentViewLayout *)self->_fromContentLayout replaceTitleViewWithSnapshot];
    }

    [(_UINavigationBarContentViewLayout *)self->_fromContentLayout replaceLeadingBarWithSnapshot];
    [(_UINavigationBarContentViewLayout *)self->_fromContentLayout replaceTrailingBarWithSnapshot];
    [(_UINavigationBarLayout *)self->_toLayout recordToStateForTransition:self];
    v9 = self->_toLayout;
    if (v9)
    {
      v10 = v9->_contentViewLayout;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&self->_toContentLayout, v10);
    v11 = self->_toLayout;
    if (v11)
    {
      v12 = v11->_largeTitleViewLayout;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&self->_toLargeTitleLayout, v12);
  }
}

- (void)prepare
{
  flags = self->_flags;
  if ((flags & 8) == 0)
  {
    *&self->_flags = flags & 0xFF97;
  }

  fromLayout = self->_fromLayout;
  if (fromLayout)
  {
    backgroundAlpha = self->_backgroundAlpha;
    if (fromLayout->_requestedBackgroundViewAlpha != backgroundAlpha)
    {
      fromLayout->_requestedBackgroundViewAlpha = backgroundAlpha;
      [(_UINavigationBarLayout *)fromLayout _updateLayoutOutputs];
      fromLayout = self->_fromLayout;
    }
  }

  [(_UINavigationBarLayout *)fromLayout updateLayout];
  toLayout = self->_toLayout;
  if (toLayout && toLayout->_layoutSize.width != 0.0)
  {
    goto LABEL_13;
  }

  v7 = self->_fromLayout;
  if (v7)
  {
    width = v7->_layoutSize.width;
  }

  else
  {
    width = 0.0;
  }

  [(_UINavigationBarLayout *)toLayout setLayoutSize:10000.0];
  v9 = *&self->_flags & 0x48;
  layoutHeights = [(_UINavigationBarLayout *)self->_toLayout layoutHeights];
  if (v9 == 8)
  {
    v11 = layoutHeights;
  }

  [(_UINavigationBarLayout *)self->_toLayout setLayoutSize:v11];
  toLayout = self->_toLayout;
  if (toLayout)
  {
LABEL_13:
    v12 = self->_backgroundAlpha;
    if (toLayout->_requestedBackgroundViewAlpha != v12)
    {
      toLayout->_requestedBackgroundViewAlpha = v12;
      [(_UINavigationBarLayout *)toLayout _updateLayoutOutputs];
      toLayout = self->_toLayout;
    }
  }

  [(_UINavigationBarLayout *)toLayout updateLayout];
  v13 = self->_fromLayout;
  v14 = self->_toLayout;
  navigationBar = self->_navigationBar;

  [(_UINavigationBarLayout *)v13 interleaveViewsWithLayout:v14 inNavigationBar:navigationBar];
}

- (BOOL)shouldPerformTwoPartCrossfadeTransition
{
  if ((*&self->_flags & 0x600) == 0)
  {
    return 0;
  }

  toLayout = self->_toLayout;
  v3 = 0.0;
  chromelessTransitionProgress = 0.0;
  if (toLayout)
  {
    chromelessTransitionProgress = toLayout->_chromelessTransitionProgress;
  }

  fromLayout = self->_fromLayout;
  if (fromLayout)
  {
    v3 = fromLayout->_chromelessTransitionProgress;
  }

  return chromelessTransitionProgress != v3;
}

- (void)_animateBackgroundView
{
  [(UIView *)self->_backgroundView setFrame:[(_UINavigationBarLayout *)self->_toLayout backgroundViewLayoutFrame]];
  toLayout = self->_toLayout;
  if (toLayout)
  {
    v4 = 184;
    if ((*&self->_flags & 4) == 0)
    {
      v4 = 192;
    }

    toLayout = *(&toLayout->super.isa + v4);
  }

  v5 = toLayout;
  v6 = v5;
  v7 = self->_toLayout;
  computedBackgroundViewAlpha = 0.0;
  chromelessTransitionProgress = 0.0;
  if (v7)
  {
    chromelessTransitionProgress = v7->_chromelessTransitionProgress;
  }

  [(_UINavigationBarLayout *)v5 setBackgroundTransitionProgress:chromelessTransitionProgress];
  v10 = self->_toLayout;
  if (v10)
  {
    computedBackgroundViewAlpha = v10->_computedBackgroundViewAlpha;
  }

  [(_UINavigationBarLayout *)v6 setBackgroundAlpha:computedBackgroundViewAlpha];
  if ((*&self->_flags & 0x800) != 0)
  {
    [(_UIBarBackground *)self->_backgroundView setLayout:v6];
  }

  if ([(_UINavigationBarTransitionContext *)self shouldPerformTwoPartCrossfadeTransition])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___UINavigationBarTransitionContext__animateBackgroundView__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    _UIBarsTwoPartCrossfadeTransitionProgress(v11, 0, chromelessTransitionProgress);
  }

  else
  {
    if ((*&self->_flags & 0x800) != 0)
    {
      [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
    }

    [(UINavigationBar *)self->_navigationBar _updatePaletteBackgroundIfNecessary];
  }
}

- (void)setAllLargeTitleLayoutsVisible
{
  [(_UINavigationBarLargeTitleViewLayout *)self->_toLargeTitleLayout setContentHidden:0];
  fromLargeTitleLayout = self->_fromLargeTitleLayout;

  [(_UINavigationBarLargeTitleViewLayout *)fromLargeTitleLayout setContentHidden:0];
}

- (void)_resetContentAndLargeTitleViewCompleted:(BOOL)completed
{
  v4 = 72;
  if (completed)
  {
    v4 = 80;
  }

  [*(&self->super.isa + v4) finalizeStateFromTransition:self];
  [(_UINavigationBarContentView *)self->_contentView clearTransitionContext];
  largeTitleView = self->_largeTitleView;

  [(_UINavigationBarLargeTitleView *)largeTitleView clearTransitionContext];
}

- (void)complete
{
  [(_UINavigationBarTransitionContext *)self _resetContentAndLargeTitleViewCompleted:1];
  [(_UINavigationBarTransitionContext *)self setAllLargeTitleLayoutsVisible];
  [(_UINavigationBarLayout *)self->_fromLayout removeViewsNotInLayout:?];
  flags = self->_flags;
  if ((flags & 0x800) != 0)
  {
    toLayout = self->_toLayout;
    if (toLayout)
    {
      v5 = (flags & 4) == 0;
      v6 = 184;
      if (v5)
      {
        v6 = 192;
      }

      toLayout = *(&toLayout->super.isa + v6);
    }

    v7 = toLayout;
    [(_UIBarBackground *)self->_backgroundView setLayout:v7];

    [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
  }

  [(_UINavigationBarTransitionContext *)self _resetPalettes];
}

- (void)_resetPalettes
{
  if (self)
  {
    v2 = *(self + 72);
    if (v2)
    {
      v2 = v2[32];
    }

    v3 = v2;
    [v3 setTransitioning:0];

    v4 = *(self + 72);
    if (v4)
    {
      v4 = v4[32];
    }

    v5 = v4;
    [v5 setAlpha:1.0];

    v6 = *(self + 72);
    if (v6)
    {
      v6 = v6[33];
    }

    v7 = v6;
    [v7 setTransitioning:0];

    v8 = *(self + 72);
    if (v8)
    {
      v8 = v8[33];
    }

    v9 = v8;
    [v9 setAlpha:1.0];

    v10 = *(self + 80);
    if (v10)
    {
      v10 = v10[32];
    }

    v11 = v10;
    [v11 setTransitioning:0];

    v12 = *(self + 80);
    if (v12)
    {
      v12 = v12[32];
    }

    v13 = v12;
    [v13 setAlpha:1.0];

    v14 = *(self + 80);
    if (v14)
    {
      v14 = v14[33];
    }

    v15 = v14;
    [v15 setTransitioning:0];

    v16 = *(self + 80);
    if (v16)
    {
      v16 = v16[33];
    }

    v17 = v16;
    [v17 setAlpha:1.0];
  }
}

- (void)cancel
{
  [(_UINavigationBarTransitionContext *)self _resetContentAndLargeTitleViewCompleted:0];
  [(_UINavigationBarTransitionContext *)self setAllLargeTitleLayoutsVisible];
  [(_UINavigationBarLayout *)self->_toLayout removeViewsNotInLayout:?];
  flags = self->_flags;
  if ((flags & 0x800) != 0)
  {
    fromLayout = self->_fromLayout;
    if (fromLayout)
    {
      v5 = (flags & 4) == 0;
      v6 = 184;
      if (v5)
      {
        v6 = 192;
      }

      fromLayout = *(&fromLayout->super.isa + v6);
    }

    v7 = fromLayout;
    [(_UIBarBackground *)self->_backgroundView setLayout:v7];

    [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
  }

  [(_UINavigationBarTransitionContext *)self _resetPalettes];
}

- (UIView)viewFadingInFromCustomAlpha
{
  if ([(_UINavigationBarTransitionContext *)self transition]!= 2)
  {
    goto LABEL_5;
  }

  backButton = [(_UINavigationBarContentViewLayout *)self->_toContentLayout backButton];
  if (!backButton)
  {
    goto LABEL_6;
  }

  v4 = backButton;
  backButton2 = [(_UINavigationBarContentViewLayout *)self->_fromContentLayout backButton];

  if (backButton2)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_toContentLayout backButton];
  }

  else
  {
LABEL_5:
    backButton = 0;
  }

LABEL_6:

  return backButton;
}

+ (CAMediaTimingFunction)fadeInFunction
{
  if (qword_1ED498CD0 != -1)
  {
    dispatch_once(&qword_1ED498CD0, &__block_literal_global_25_0);
  }

  v3 = _MergedGlobals_67;

  return v3;
}

+ (CAMediaTimingFunction)fadeOutFunction
{
  if (qword_1ED498CE0 != -1)
  {
    dispatch_once(&qword_1ED498CE0, &__block_literal_global_28);
  }

  v3 = qword_1ED498CD8;

  return v3;
}

- (void)_addClippingView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (view && v3)
  {
    v5 = *(view + 168);
    v8 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = *(view + 168);
      *(view + 168) = v6;

      v5 = *(view + 168);
    }

    [v5 addObject:v8];
    v4 = v8;
  }
}

- (uint64_t)_removeAllClippingViews
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(result + 168);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 168) removeAllObjects];
  }

  return result;
}

- (void)_preparePalettes
{
  if (self)
  {
    v2 = self[9];
    if (v2)
    {
      v2 = v2[32];
    }

    v3 = v2;
    v4 = self[10];
    if (v4)
    {
      v4 = v4[32];
    }

    v5 = v4;
    [self _prepareTransitionFromPalette:v3 toPalette:v5 toPaletteFrame:-[_UINavigationBarLayout topPaletteLayoutFrame](self[10])];

    v6 = self[9];
    if (v6)
    {
      v6 = v6[33];
    }

    v10 = v6;
    v7 = self[10];
    if (v7)
    {
      v7 = v7[33];
    }

    v8 = v7;
    v9 = self[10];
    if (v9)
    {
      [v9 _layoutFrameFor:v9[9] withOrder:30];
    }

    [self _prepareTransitionFromPalette:v10 toPalette:v8 toPaletteFrame:?];
  }
}

- (void)_animatePalettes
{
  if (self)
  {
    v2 = self[9];
    if (v2)
    {
      v2 = v2[32];
    }

    v3 = v2;
    topPaletteLayoutFrame = [(_UINavigationBarLayout *)self[9] topPaletteLayoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = self[10];
    if (v11)
    {
      v11 = v11[32];
    }

    v12 = v11;
    topPaletteLayoutFrame2 = [(_UINavigationBarLayout *)self[10] topPaletteLayoutFrame];
    [self _animateFromPalette:v3 fromPaletteFrame:v12 toPalette:topPaletteLayoutFrame toPaletteFrame:{v6, v8, v10, topPaletteLayoutFrame2, v14, v15, v16}];

    v17 = self[9];
    if (v17)
    {
      v17 = v17[33];
    }

    v38 = v17;
    v18 = self[9];
    if (v18)
    {
      [v18 _layoutFrameFor:v18[9] withOrder:30];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
    }

    else
    {
      v22 = 0.0;
      v24 = 0.0;
      v26 = 0.0;
      v20 = 0.0;
    }

    v27 = self[10];
    if (v27)
    {
      v27 = v27[33];
    }

    v28 = v27;
    v29 = self[10];
    if (v29)
    {
      [v29 _layoutFrameFor:v29[9] withOrder:30];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
    }

    else
    {
      v33 = 0.0;
      v35 = 0.0;
      v37 = 0.0;
      v31 = 0.0;
    }

    [self _animateFromPalette:v38 fromPaletteFrame:v28 toPalette:v20 toPaletteFrame:{v22, v24, v26, v31, v33, v35, v37}];
  }
}

- (unint64_t)_animationOptions
{
  if ([(UINavigationBar *)self->_navigationBar _canPreemptTransition])
  {
    return 327746;
  }

  else
  {
    return 327744;
  }
}

- (void)_animateAsTwoPartsWithOverlap:(double)overlap partOne:(id)one partTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  if (oneCopy | twoCopy)
  {
    _animationOptions = [(_UINavigationBarTransitionContext *)self _animationOptions];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83___UINavigationBarTransitionContext__animateAsTwoPartsWithOverlap_partOne_partTwo___block_invoke;
    v11[3] = &unk_1E70F6FE0;
    v11[4] = self;
    v12 = oneCopy;
    v14 = overlap * 0.5;
    v13 = twoCopy;
    [UIView animateKeyframesWithDuration:_animationOptions delay:v11 options:0 animations:0.0 completion:0.0];
  }
}

- (void)_animateInProcessAsTwoPartsWithKeyframeID:(id)d overlap:(double)overlap partOne:(id)one partTwo:(id)two
{
  dCopy = d;
  oneCopy = one;
  twoCopy = two;
  if (oneCopy | twoCopy)
  {
    _animationOptions = [(_UINavigationBarTransitionContext *)self _animationOptions];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103___UINavigationBarTransitionContext__animateInProcessAsTwoPartsWithKeyframeID_overlap_partOne_partTwo___block_invoke;
    v14[3] = &unk_1E70F7008;
    v17 = oneCopy;
    v15 = dCopy;
    selfCopy = self;
    v19 = overlap * 0.5;
    v18 = twoCopy;
    [UIView _animateInProcessKeyframesAlongsideTransitionWithOptions:_animationOptions animations:v14];
  }
}

- (void)_animateAsTwoPartsWithOverlapIfNecessaryPartOne:(id)one partTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  if ((*&self->_flags & 0x10) != 0)
  {
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlap:oneCopy partOne:twoCopy partTwo:self->_twoPartAnimationOverlapDuration];
  }

  else
  {
    if (oneCopy)
    {
      oneCopy[2](oneCopy);
    }

    if (twoCopy)
    {
      twoCopy[2](twoCopy);
    }
  }
}

- (void)_animateInProcessAsTwoPartsWithOverlapIfNecessaryWithKeyframeID:(id)d fractionComplete:(double)complete partOne:(id)one partTwo:(id)two
{
  dCopy = d;
  oneCopy = one;
  twoCopy = two;
  if ((*&self->_flags & 0x10) != 0)
  {
    [(_UINavigationBarTransitionContext *)self _animateInProcessAsTwoPartsWithKeyframeID:dCopy overlap:oneCopy partOne:twoCopy partTwo:self->_twoPartAnimationOverlapDuration];
  }

  else
  {
    if (oneCopy)
    {
      oneCopy[2](oneCopy, complete);
    }

    if (twoCopy)
    {
      twoCopy[2](twoCopy, complete);
    }
  }
}

- (void)_updateIncomingLayoutWidthToMatchOutgoingLayout
{
  toLayout = self->_toLayout;
  width = 0.0;
  height = 0.0;
  if (toLayout)
  {
    height = toLayout->_layoutSize.height;
  }

  fromLayout = self->_fromLayout;
  if (fromLayout)
  {
    width = fromLayout->_layoutSize.width;
  }

  [(_UINavigationBarLayout *)toLayout setLayoutSize:height];
}

- (_UINavigationBarLargeTitleViewLayout)fromLargeTitleViewLayout
{
  fromLayout = [(_UINavigationBarTransitionContext *)self fromLayout];
  v3 = fromLayout;
  if (fromLayout)
  {
    v4 = *(fromLayout + 168);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setFromLargeTitleViewLayout:(id)layout
{
  layoutCopy = layout;
  fromLayout = [(_UINavigationBarTransitionContext *)self fromLayout];
  [(_UINavigationBarLayout *)fromLayout setLargeTitleViewLayout:layoutCopy];
}

- (_UINavigationBarLargeTitleViewLayout)toLargeTitleViewLayout
{
  toLayout = [(_UINavigationBarTransitionContext *)self toLayout];
  v3 = toLayout;
  if (toLayout)
  {
    v4 = *(toLayout + 168);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setToLargeTitleViewLayout:(id)layout
{
  layoutCopy = layout;
  toLayout = [(_UINavigationBarTransitionContext *)self toLayout];
  [(_UINavigationBarLayout *)toLayout setLargeTitleViewLayout:layoutCopy];
}

- (CGPoint)startingContentOffsetForObservedScrollView
{
  x = self->_startingContentOffsetForObservedScrollView.x;
  y = self->_startingContentOffsetForObservedScrollView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end