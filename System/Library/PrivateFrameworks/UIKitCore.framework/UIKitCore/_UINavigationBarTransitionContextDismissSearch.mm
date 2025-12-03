@interface _UINavigationBarTransitionContextDismissSearch
- (BOOL)_shouldCrossfadeDismissal;
- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame;
- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextDismissSearch

- (BOOL)_shouldCrossfadeDismissal
{
  _searchController = [(UISearchBar *)self->_transitioningSearchBar _searchController];
  if (([_searchController obscuresBackgroundDuringPresentation] & 1) == 0)
  {
    _searchController2 = [(UISearchBar *)self->_transitioningSearchBar _searchController];
    if (![_searchController2 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      v4 = 0;
LABEL_17:

      goto LABEL_18;
    }

    toLayout = self->super._toLayout;
    if (toLayout)
    {
      v7 = toLayout->_searchBar;
      if (v7)
      {
        v13.origin.x = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
        if (CGRectGetHeight(v13) != 0.0)
        {
          v4 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if ((*&self->super._flags & 0x40) != 0)
    {
      v8 = self->super._toLayout;
      v9 = 0.0;
      height = 0.0;
      if (v8)
      {
        height = v8->_layoutSize.height;
      }

      fromLayout = self->super._fromLayout;
      if (fromLayout)
      {
        v9 = fromLayout->_layoutSize.height;
      }

      v4 = height == v9;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_18:

  return v4;
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
  v28.receiver = self;
  v28.super_class = _UINavigationBarTransitionContextDismissSearch;
  [(_UINavigationBarTransitionContext *)&v28 prepare];
  [(_UINavigationBarLayout *)self->super._toLayout finalizeStateFromTransition:self];
  [(_UINavigationBarContentView *)self->super._contentView clearTransitionContext];
  [(_UINavigationBarLargeTitleView *)self->super._largeTitleView clearTransitionContext];
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    searchBar = fromLayout->_searchBar;
  }

  else
  {
    searchBar = 0;
  }

  objc_storeStrong(&self->_transitioningSearchBar, searchBar);
  _isIntegratedIntoToolbarOrNavigationBarContent = [(UISearchBar *)self->_transitioningSearchBar _isIntegratedIntoToolbarOrNavigationBarContent];
  if (_isIntegratedIntoToolbarOrNavigationBarContent)
  {
    _viewStackedInNavigationBar = [(UISearchBar *)self->_transitioningSearchBar _viewStackedInNavigationBar];
  }

  else
  {
    _viewStackedInNavigationBar = 0;
  }

  objc_storeStrong(&self->_transitioningScopeBarContainer, _viewStackedInNavigationBar);
  if (_isIntegratedIntoToolbarOrNavigationBarContent)
  {
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    representedSearchLayoutState = toLayout->_representedSearchLayoutState;
  }

  else
  {
    representedSearchLayoutState = 0;
  }

  [(UISearchBar *)self->_transitioningSearchBar _prepareForTransitionToSearchLayoutState:representedSearchLayoutState];
  if ((*&self->super._flags & 0x40) != 0)
  {
    largeTitleView = self->super._largeTitleView;
    v10 = self->super._fromLayout;
    if (v10)
    {
      v10 = v10->_largeTitleView;
    }

    v11 = v10;

    if (largeTitleView != v11)
    {
      v12 = self->super._toLayout;
      if (v12)
      {
        [(_UINavigationBarLayout *)v12 _layoutFrameFor:v12->_largeTitleLayoutData withOrder:60];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = self->super._toLayout;
      }

      else
      {
        v19 = 0;
        v16 = 0.0;
        v18 = 0.0;
        v14 = 0.0;
      }

      [(UIView *)self->super._largeTitleView setFrame:v14, _hiddenLargeTitleMinY(self->super._fromLayout, v19, _isIntegratedIntoToolbarOrNavigationBarContent), v16, v18];
      [(UIView *)self->super._largeTitleView layoutIfNeeded];
      [(UIView *)self->super._largeTitleView setAlpha:0.0];
    }
  }

  v20 = self->super._toLayout;
  if (v20)
  {
    v20 = v20->_contentView;
  }

  v21 = v20;
  v22 = self->super._fromLayout;
  if (v22)
  {
    v22 = v22->_contentView;
  }

  v23 = v22;

  if (v21 != v23)
  {
    [(_UINavigationBarLayout *)v21 setAlpha:0.0];
  }

  v24 = self->super._fromLayout;
  if (v24)
  {
    v24 = v24->_bottomPalette;
  }

  v25 = v24;

  if (!v25)
  {
    v26 = self->super._toLayout;
    if (v26)
    {
      v26 = v26->_bottomPalette;
    }

    v27 = v26;
    [(_UINavigationBarLayout *)v27 setAlpha:0.0];
  }

  [(_UINavigationBarTransitionContext *)self _preparePalettes];
  [(UIView *)self->super._tabBarHostedView setAlpha:0.0];
  [(UISearchBar *)self->_transitioningSearchBar _setBarPosition:2];
  if ([(_UINavigationBarTransitionContextDismissSearch *)self _shouldCrossfadeDismissal])
  {
    [(UISearchBar *)self->_transitioningSearchBar _freezeForAnimatedTransitionToSearchLayoutState:2];
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
      aBlock[2] = __112___UINavigationBarTransitionContextDismissSearch__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
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
  if ([(UISearchBar *)self->_transitioningSearchBar _usesLegacyVisualProvider])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTransitionContext.m" lineNumber:3279 description:@"A search bar with a legacy visual provider should not end up in this code path. This is a UIKit bug"];
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    backgroundAlpha = self->super._backgroundAlpha;
    if (toLayout->_requestedBackgroundViewAlpha != backgroundAlpha)
    {
      toLayout->_requestedBackgroundViewAlpha = backgroundAlpha;
      [(_UINavigationBarLayout *)toLayout _updateLayoutOutputs];
      toLayout = self->super._toLayout;
    }
  }

  [(_UINavigationBarLayout *)toLayout updateLayout];
  v40.receiver = self;
  v40.super_class = _UINavigationBarTransitionContextDismissSearch;
  [(_UINavigationBarTransitionContext *)&v40 animate];
  navigationBar = [(_UINavigationBarTransitionContext *)self navigationBar];
  [navigationBar frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = self->super._toLayout;
  if (v13)
  {
    height = v13->_layoutSize.height;
  }

  else
  {
    height = 0.0;
  }

  navigationBar2 = [(_UINavigationBarTransitionContext *)self navigationBar];
  [navigationBar2 setFrame:{v8, v10, v12, height}];

  _shouldCrossfadeDismissal = [(_UINavigationBarTransitionContextDismissSearch *)self _shouldCrossfadeDismissal];
  if (!_shouldCrossfadeDismissal && ![(UISearchBar *)self->_transitioningSearchBar _isIntegratedIntoToolbarOrNavigationBarContent])
  {
    [(UISearchBar *)self->_transitioningSearchBar setFrame:[(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame]];
  }

  v17 = self->super._toLayout;
  if (v17)
  {
    representedSearchLayoutState = v17->_representedSearchLayoutState;
  }

  else
  {
    representedSearchLayoutState = 0;
  }

  [(UISearchBar *)self->_transitioningSearchBar _animateTransitionToSearchLayoutState:representedSearchLayoutState];
  if (self->_transitioningScopeBarContainer)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __57___UINavigationBarTransitionContextDismissSearch_animate__block_invoke;
    v39[3] = &unk_1E70F3590;
    v39[4] = self;
    [UIView animateKeyframesWithDuration:0 delay:v39 options:0 animations:0.0 completion:0.0];
  }

  v19 = self->super._toLayout;
  if (v19)
  {
    v19 = v19->_backgroundView;
  }

  v20 = v19;
  [(_UINavigationBarLayout *)v20 setFrame:[(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame]];
  [(_UINavigationBarLayout *)v20 layoutIfNeeded];
  if ((*&self->super._flags & 0x40) == 0)
  {
    v21 = 0;
    if ((*&self->super._flags & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v22 = self->super._toLayout;
  if (v22)
  {
    v22 = v22->_largeTitleView;
  }

  v21 = v22;
  v23 = self->super._toLayout;
  if (v23)
  {
    [(_UINavigationBarLayout *)v23 _layoutFrameFor:v23->_largeTitleLayoutData withOrder:60];
  }

  [(_UINavigationBarLayout *)v21 setFrame:?];
  [(_UINavigationBarLayout *)v21 layoutIfNeeded];
  if ((*&self->super._flags & 0x800) != 0)
  {
LABEL_25:
    v24 = self->super._toLayout;
    computedBackgroundViewAlpha = 0.0;
    if (v24)
    {
      chromelessTransitionProgress = v24->_chromelessTransitionProgress;
      v24 = v24->_backgroundView;
    }

    else
    {
      chromelessTransitionProgress = 0.0;
    }

    v27 = v24;
    layout = [(_UINavigationBarLayout *)v27 layout];
    [layout setBackgroundTransitionProgress:chromelessTransitionProgress];

    v29 = self->super._toLayout;
    if (v29)
    {
      computedBackgroundViewAlpha = v29->_computedBackgroundViewAlpha;
      v29 = v29->_backgroundView;
    }

    v30 = v29;
    layout2 = [(_UINavigationBarLayout *)v30 layout];
    [layout2 setBackgroundAlpha:computedBackgroundViewAlpha];

    v32 = self->super._toLayout;
    if (v32)
    {
      v32 = v32->_backgroundView;
    }

    v33 = v32;
    [(_UINavigationBarLayout *)v33 transitionBackgroundViews];
  }

LABEL_32:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___UINavigationBarTransitionContextDismissSearch_animate__block_invoke_3;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v34 = v21;
  v38 = v34;
  v35 = _Block_copy(aBlock);
  if (_shouldCrossfadeDismissal)
  {
    [(UIView *)self->_transitioningSearchBar setAlpha:0.0];
    v35[2](v35);
  }

  else
  {
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlap:0 partOne:v35 partTwo:-0.3];
  }

  [(_UINavigationBarTransitionContext *)self _animatePalettes];
  [(UIView *)self->super._tabBarHostedView setAlpha:1.0];
}

- (void)complete
{
  v23.receiver = self;
  v23.super_class = _UINavigationBarTransitionContextDismissSearch;
  [(_UINavigationBarTransitionContext *)&v23 complete];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    representedSearchLayoutState = toLayout->_representedSearchLayoutState;
  }

  else
  {
    representedSearchLayoutState = 0;
  }

  [(UISearchBar *)self->_transitioningSearchBar _completeTransitionToSearchLayoutState:representedSearchLayoutState];
  if (![(UISearchBar *)self->_transitioningSearchBar _isIntegratedIntoToolbarOrNavigationBarContent])
  {
    [(UIView *)self->super._navigationBar bounds];
    v8 = self->super._toLayout;
    if (v8)
    {
      width = v8->_layoutSize.width;
      height = v8->_layoutSize.height;
    }

    else
    {
      height = 0.0;
      width = 0.0;
    }

    if (v6 == width && v7 == height)
    {
      goto LABEL_23;
    }

    _searchController = [(UISearchBar *)self->_transitioningSearchBar _searchController];
    v13 = _searchController;
    if (_searchController)
    {
      v14 = (_searchController[279] >> 5) & 3;
      if (v14)
      {

        if (v14 == 1)
        {
LABEL_22:
          [(UIView *)self->super._navigationBar bounds];
          [(_UINavigationBarLayout *)self->super._toLayout setLayoutSize:v16, v17];
          [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
          v8 = self->super._toLayout;
LABEL_23:
          [(UISearchBar *)self->_transitioningSearchBar setFrame:[(_UINavigationBarLayout *)v8 searchBarLayoutFrame]];
          goto LABEL_24;
        }

LABEL_19:
        if (os_variant_has_internal_diagnostics())
        {
          v20 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "What changed the navigation bar bounds size to something unexpected during the animation if it wasn't a showsScopeBar change?", buf, 2u);
          }
        }

        else
        {
          v15 = *(__UILogGetCategoryCachedImpl("Assert", &complete___s_category) + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "What changed the navigation bar bounds size to something unexpected during the animation if it wasn't a showsScopeBar change?", buf, 2u);
          }
        }

        goto LABEL_22;
      }

      dyld_program_sdk_at_least();
    }

    goto LABEL_19;
  }

  v5 = self->super._toLayout;
  if (v5 && v5->_representedSearchLayoutState == 1)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58___UINavigationBarTransitionContextDismissSearch_complete__block_invoke;
    v21[3] = &unk_1E70F3590;
    v21[4] = self;
    [UIView performWithoutAnimation:v21];
    [(UISearchBar *)self->_transitioningSearchBar _growToSearchFieldIfNecessary];
  }

LABEL_24:
  [(UIView *)self->_transitioningSearchBar setAlpha:1.0];
  [(UIView *)self->_transitioningScopeBarContainer setAlpha:0.0];
  transitioningSearchBar = self->_transitioningSearchBar;
  self->_transitioningSearchBar = 0;

  transitioningScopeBarContainer = self->_transitioningScopeBarContainer;
  self->_transitioningScopeBarContainer = 0;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = _UINavigationBarTransitionContextDismissSearch;
  [(_UINavigationBarTransitionContext *)&v7 cancel];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    representedSearchLayoutState = toLayout->_representedSearchLayoutState;
  }

  else
  {
    representedSearchLayoutState = 0;
  }

  [(UISearchBar *)self->_transitioningSearchBar _cancelTransitionToSearchLayoutState:representedSearchLayoutState];
  [(UIView *)self->_transitioningSearchBar setAlpha:1.0];
  [(UIView *)self->_transitioningScopeBarContainer setAlpha:1.0];
  transitioningSearchBar = self->_transitioningSearchBar;
  self->_transitioningSearchBar = 0;

  transitioningScopeBarContainer = self->_transitioningScopeBarContainer;
  self->_transitioningScopeBarContainer = 0;
}

@end