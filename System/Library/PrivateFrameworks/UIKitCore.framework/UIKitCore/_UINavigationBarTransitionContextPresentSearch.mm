@interface _UINavigationBarTransitionContextPresentSearch
- (void)_animateBackgroundView;
- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame;
- (void)_prepareBackgroundView;
- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame;
- (void)_resetContentAndLargeTitleViewCompleted:(BOOL)completed;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextPresentSearch

- (void)_prepareBackgroundView
{
  if (![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
  {
    return;
  }

  if ((*&self->super._flags & 0x200) != 0 && (fromLayout = self->super._fromLayout) != 0)
  {
    v3 = fromLayout->_chromelessTransitionProgress != 1.0;
    if ((*&self->super._flags & 0x400) != 0)
    {
LABEL_7:
      toLayout = self->super._toLayout;
      if (toLayout)
      {
        LODWORD(toLayout) = toLayout->_chromelessTransitionProgress == 1.0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 1;
    if ((*&self->super._flags & 0x400) != 0)
    {
      goto LABEL_7;
    }
  }

  LODWORD(toLayout) = 0;
LABEL_9:
  if (((v3 | toLayout) & 1) == 0)
  {
    [(UIView *)self->super._backgroundView setFrame:[(_UINavigationBarLayout *)self->super._fromLayout backgroundViewLayoutFrame]];
    v6 = self->super._toLayout;
    if (v6)
    {
      v7 = 184;
      if ((*&self->super._flags & 4) == 0)
      {
        v7 = 192;
      }

      v6 = *(&v6->super.isa + v7);
    }

    v8 = v6;
    v9 = self->super._fromLayout;
    computedBackgroundViewAlpha = 0.0;
    chromelessTransitionProgress = 0.0;
    if (v9)
    {
      chromelessTransitionProgress = v9->_chromelessTransitionProgress;
    }

    v13 = v8;
    [(_UINavigationBarLayout *)v8 setBackgroundTransitionProgress:chromelessTransitionProgress];
    v12 = self->super._fromLayout;
    if (v12)
    {
      computedBackgroundViewAlpha = v12->_computedBackgroundViewAlpha;
    }

    [(_UINavigationBarLayout *)v13 setBackgroundAlpha:computedBackgroundViewAlpha];
    [(_UINavigationBarLayout *)v13 setShadowAlpha:0.0];
    if ((*&self->super._flags & 0x800) != 0)
    {
      [(_UIBarBackground *)self->super._backgroundView setLayout:v13];
      [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
    }

    [(UIView *)self->super._backgroundView layoutIfNeeded];
  }
}

- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame
{
  if (toPalette && toPalette != palette)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    toPaletteCopy = toPalette;
    [toPaletteCopy setAlpha:0.0];
    [toPaletteCopy setFrame:{x, y, width, height}];
    [toPaletteCopy layoutIfNeeded];
    [toPaletteCopy setTransitioning:1];
  }
}

- (void)prepare
{
  [(_UINavigationBarTransitionContext *)self _updateIncomingLayoutWidthToMatchOutgoingLayout];
  v16.receiver = self;
  v16.super_class = _UINavigationBarTransitionContextPresentSearch;
  [(_UINavigationBarTransitionContext *)&v16 prepare];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v4 = toLayout;
  [(_UINavigationBarLayout *)v4 _prepareForTransitionToSearchLayoutState:3];
  v5 = self->super._toLayout;
  if (v5)
  {
    width = v5->_layoutSize.width;
  }

  else
  {
    width = 0.0;
  }

  if ([(_UINavigationBarTransitionContext *)self observedScrollViewOffsetIsApplicable]&& (([(_UINavigationBarTransitionContext *)self startingContentOffsetForObservedScrollView], (fromLayout = self->super._fromLayout) == 0) ? (height = 0.0) : (height = fromLayout->_layoutSize.height), v7 > -height))
  {
    layoutHeights = [(_UINavigationBarLayout *)self->super._toLayout layoutHeights];
  }

  else
  {
    [(_UINavigationBarLayout *)self->super._toLayout layoutHeights];
  }

  [(_UINavigationBarLayout *)self->super._toLayout setLayoutSize:layoutHeights];
  [(_UINavigationBarTransitionContextPresentSearch *)self _prepareBackgroundView];
  [(_UINavigationBarTransitionContext *)self _preparePalettes];
  [(UIView *)self->super._tabBarHostedView setAlpha:1.0];
  _searchController = [(_UINavigationBarLayout *)v4 _searchController];
  _hidesNavigationBarDuringPresentationRespectingInlineSearch = [_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch];

  if (_hidesNavigationBarDuringPresentationRespectingInlineSearch)
  {
    navigationBar = [(_UINavigationBarTransitionContext *)self navigationBar];
    -[_UINavigationBarLayout _setBarPosition:](v4, "_setBarPosition:", [navigationBar barPosition]);
  }

  else
  {
    [(_UINavigationBarLayout *)v4 _setBarPosition:2];
    if ([(_UINavigationBarLayout *)v4 _isIntegratedIntoToolbarOrNavigationBarContent])
    {
      _viewStackedInNavigationBar = [(_UINavigationBarLayout *)v4 _viewStackedInNavigationBar];
      transitioningScopeBarContainer = self->_transitioningScopeBarContainer;
      self->_transitioningScopeBarContainer = _viewStackedInNavigationBar;

      [(UIView *)self->_transitioningScopeBarContainer setAlpha:0.0];
      [(UIView *)self->_transitioningScopeBarContainer setHidden:0];
      [(UIView *)self->_transitioningScopeBarContainer setFrame:[(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame]];
      [(UIView *)self->_transitioningScopeBarContainer layoutIfNeeded];
    }
  }
}

- (void)_animateBackgroundView
{
  if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
  {
    [(UIView *)self->super._backgroundView setFrame:[(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame]];
    toLayout = self->super._toLayout;
    if (toLayout)
    {
      v4 = 184;
      if ((*&self->super._flags & 4) == 0)
      {
        v4 = 192;
      }

      toLayout = *(&toLayout->super.isa + v4);
    }

    v5 = toLayout;
    v6 = self->super._toLayout;
    computedBackgroundViewAlpha = 0.0;
    chromelessTransitionProgress = 0.0;
    if (v6)
    {
      chromelessTransitionProgress = v6->_chromelessTransitionProgress;
    }

    v10 = v5;
    [(_UINavigationBarLayout *)v5 setBackgroundTransitionProgress:chromelessTransitionProgress];
    v9 = self->super._toLayout;
    if (v9)
    {
      computedBackgroundViewAlpha = v9->_computedBackgroundViewAlpha;
    }

    [(_UINavigationBarLayout *)v10 setBackgroundAlpha:computedBackgroundViewAlpha];
    [(_UINavigationBarLayout *)v10 setShadowAlpha:1.0];
    if ((*&self->super._flags & 0x800) != 0)
    {
      [(_UIBarBackground *)self->super._backgroundView setLayout:v10];
      [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UINavigationBarTransitionContextPresentSearch;
    [(_UINavigationBarTransitionContext *)&v11 _animateBackgroundView];
  }
}

- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame
{
  height = paletteFrame.size.height;
  width = paletteFrame.size.width;
  y = paletteFrame.origin.y;
  x = paletteFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  if (paletteCopy != toPaletteCopy)
  {
    if (paletteCopy)
    {
      [paletteCopy setAlpha:0.0];
      [paletteCopy setTransitioning:1];
      [paletteCopy setFrame:{v14, v13, v12, v11}];
    }

    if (toPaletteCopy)
    {
      [toPaletteCopy setFrame:{x, y, width, height}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __112___UINavigationBarTransitionContextPresentSearch__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      v20 = toPaletteCopy;
      v18 = _Block_copy(aBlock);
    }

    else
    {
      v18 = 0;
    }

    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithoutOverlap:0 partTwo:v18];
  }
}

- (void)animate
{
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v5 = toLayout;
  if ([(_UINavigationBarLayout *)v5 _usesLegacyVisualProvider])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTransitionContext.m" lineNumber:3090 description:@"A search bar with a legacy visual provider should not end up in this code path. This is a UIKit bug"];
  }

  v6 = self->super._toLayout;
  if (v6)
  {
    backgroundAlpha = self->super._backgroundAlpha;
    if (v6->_requestedBackgroundViewAlpha != backgroundAlpha)
    {
      v6->_requestedBackgroundViewAlpha = backgroundAlpha;
      [(_UINavigationBarLayout *)v6 _updateLayoutOutputs];
      v6 = self->super._toLayout;
    }
  }

  [(_UINavigationBarLayout *)v6 updateLayout];
  v29.receiver = self;
  v29.super_class = _UINavigationBarTransitionContextPresentSearch;
  [(_UINavigationBarTransitionContext *)&v29 animate];
  [(_UINavigationBarLayout *)self->super._toLayout updateLayout];
  navigationBar = [(_UINavigationBarTransitionContext *)self navigationBar];
  [navigationBar frame];
  [navigationBar setFrame:?];
  searchBarLayoutFrame = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _isIntegratedIntoToolbarOrNavigationBarContent = [(_UINavigationBarLayout *)v5 _isIntegratedIntoToolbarOrNavigationBarContent];
  if (_isIntegratedIntoToolbarOrNavigationBarContent)
  {
    [(UIView *)self->_transitioningScopeBarContainer setFrame:searchBarLayoutFrame, v11, v13, v15];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke;
    v28[3] = &unk_1E70F3590;
    v28[4] = self;
    [UIView animateKeyframesWithDuration:0 delay:v28 options:0 animations:0.0 completion:0.0];
  }

  else
  {
    [(_UINavigationBarLayout *)v5 setFrame:searchBarLayoutFrame, v11, v13, v15];
  }

  _stack = [navigationBar _stack];
  topItem = [_stack topItem];
  [topItem _updateSearchBarItemGroup];

  [(_UINavigationBarLayout *)v5 _animateTransitionToSearchLayoutState:3];
  v19 = self->super._toLayout;
  if (v19)
  {
    v19 = v19->_backgroundView;
  }

  v20 = v19;
  [(_UINavigationBarLayout *)v20 setFrame:[(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame]];
  [(_UINavigationBarLayout *)v20 layoutIfNeeded];
  if ((*&self->super._flags & 0x20) != 0)
  {
    fromLayout = self->super._fromLayout;
    if (fromLayout)
    {
      fromLayout = fromLayout->_largeTitleView;
    }

    v22 = fromLayout;
    [(_UINavigationBarLayout *)v22 frame];
    [(_UINavigationBarLayout *)v22 setFrame:v23, _hiddenLargeTitleMinY(self->super._toLayout, self->super._fromLayout, _isIntegratedIntoToolbarOrNavigationBarContent), v24, v25];
    [(_UINavigationBarLayout *)v22 layoutIfNeeded];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke_3;
  v27[3] = &unk_1E70F3590;
  v27[4] = self;
  [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlap:v27 partOne:0 partTwo:-0.3];
  [(_UINavigationBarTransitionContext *)self _animatePalettes];
  [(UIView *)self->super._tabBarHostedView setAlpha:0.0];
}

- (void)_resetContentAndLargeTitleViewCompleted:(BOOL)completed
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTransitionContextPresentSearch;
  [(_UINavigationBarTransitionContext *)&v4 _resetContentAndLargeTitleViewCompleted:completed];
  [(UIView *)self->super._contentView setAlpha:1.0];
}

- (void)complete
{
  v13.receiver = self;
  v13.super_class = _UINavigationBarTransitionContextPresentSearch;
  [(_UINavigationBarTransitionContext *)&v13 complete];
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_contentViewLayout;
  }

  v4 = fromLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentViewLayout;
  }

  v6 = toLayout;

  if (v4 != v6)
  {
    [(_UINavigationBarLayout *)v4 removeContent];
  }

  v7 = self->super._toLayout;
  if (v7)
  {
    v7 = v7->_searchBar;
  }

  v8 = v7;
  [(_UINavigationBarLayout *)v8 _completeTransitionToSearchLayoutState:3];

  v9 = self->super._toLayout;
  if (v9)
  {
    v9 = v9->_bottomPalette;
  }

  v10 = v9;

  if (!v10)
  {
    v11 = self->super._fromLayout;
    if (v11)
    {
      v11 = v11->_bottomPalette;
    }

    v12 = v11;
    [(_UINavigationBarLayout *)v12 removeFromSuperview];
  }
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTransitionContextPresentSearch;
  [(_UINavigationBarTransitionContext *)&v8 cancel];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v4 = toLayout;
  v5 = self->super._toLayout;
  if (v5)
  {
    v5 = v5->_searchBar;
  }

  v6 = v5;
  [(_UINavigationBarLayout *)v6 _cancelTransitionToSearchLayoutState:3];

  if ([(_UINavigationBarLayout *)v4 _isIntegratedIntoToolbarOrNavigationBarContent])
  {
    [(UIView *)self->_transitioningScopeBarContainer setAlpha:0.0];
    transitioningScopeBarContainer = self->_transitioningScopeBarContainer;
    self->_transitioningScopeBarContainer = 0;
  }
}

@end