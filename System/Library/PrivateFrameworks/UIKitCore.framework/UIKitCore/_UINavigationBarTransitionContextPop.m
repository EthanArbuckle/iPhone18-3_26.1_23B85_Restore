@interface _UINavigationBarTransitionContextPop
- (id)viewUsingEaseInCurve;
- (void)_animateBackgroundView;
- (void)_animateContentView;
- (void)_animateFromPalette:(id)a3 fromPaletteFrame:(CGRect)a4 toPalette:(id)a5 toPaletteFrame:(CGRect)a6;
- (void)_animateLargeTitleView;
- (void)_animateScaleTransition;
- (void)_animateSearchBar;
- (void)_finishWithFinalLayout:(id)a3 invalidLayout:(id)a4;
- (void)_prepareBackgroundView;
- (void)_prepareContentView;
- (void)_prepareLargeTitleView;
- (void)_prepareScaleTransition;
- (void)_prepareSearchBar;
- (void)_prepareTransitionFromPalette:(id)a3 toPalette:(id)a4 toPaletteFrame:(CGRect)a5;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextPop

- (id)viewUsingEaseInCurve
{
  if (_textDiffersBetweenLargeTitleAndBackButtonLayouts(self->super._toLargeTitleLayout, self->super._fromContentLayout))
  {
    v3 = [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout titleLabel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_prepareScaleTransition
{
  if ((*&self->super._flags & 0x40) != 0 && self->super._largeTitleTransitionType == 1)
  {
    [(UIView *)self->super._largeTitleView setClipsToBounds:0];
    [(UIView *)self->super._contentView setClipsToBounds:0];
    if ((*&self->super._flags & 0x20) == 0)
    {
      [(UIView *)self->super._largeTitleView bounds];
      if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
      {
        toLayout = self->super._toLayout;
        if (toLayout)
        {
          [(_UINavigationBarLayout *)toLayout _layoutFrameFor:toLayout->_largeTitleLayoutData withOrder:60];
        }

        [(UIView *)self->super._largeTitleView setFrame:?];
        [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout updateRestingTitleHeight];
      }
    }

    v7 = 0.0;
    [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout layoutViewsWithOffset:1 useRestingTitleHeight:0.0, 0.0];
    self->_titleTransitionAdjustment = _titleTransitionAdjustmentFromLargeTitleToBackButton(self->super._toLargeTitleLayout, self->super._fromContentLayout);
    v8 = _distanceFromLargeTitleToBackButton(self->super._toLargeTitleLayout, self->super._fromContentLayout, self->super._contentView);
    v10 = v9;
    v11 = v8 - self->_titleTransitionAdjustment;
    self->_titleTransitionDistanceExcludingLargeTitleOffset.width = v11;
    self->_titleTransitionDistanceExcludingLargeTitleOffset.height = v9;
    v12 = self->super._toLayout;
    v13 = 0.0;
    if (v12)
    {
      [(_UINavigationBarLayout *)v12 _layoutFrameFor:v12->_largeTitleLayoutData withOrder:60];
      v13 = v14;
      v7 = v15;
    }

    [(UIView *)self->super._largeTitleView frame];
    v18 = self->super._toLayout;
    if (v18)
    {
      v19 = v10 + v7 - v17;
      v20 = v11 + v13 - v16;
      if (v18->_largeTitleExposure > 0.0)
      {
        v10 = v19;
        v11 = v20;
      }
    }

    self->_titleTransitionDistance.width = v11;
    self->_titleTransitionDistance.height = v10;
    fromContentLayout = self->super._fromContentLayout;
    v22 = self->super._toLargeTitleLayout;
    v23 = fromContentLayout;
    v24 = [(_UINavigationBarLargeTitleViewLayout *)v22 title];
    v25 = [v24 string];

    v26 = [(_UINavigationBarLargeTitleViewLayout *)v22 titleLabel];

    _applyStretchTransformForTitleViewAndBackButtonLayout(2, v26, v23);
    v27 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    if (v27)
    {
      v28 = v27;
      v29 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];

      if (!v29)
      {
        v30 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
        v31 = [v30 visualProvider];
        v32 = [v31 backIndicatorView];

        [v32 setAlpha:1.0];
        v33 = *(MEMORY[0x1E695EFD0] + 16);
        v34[0] = *MEMORY[0x1E695EFD0];
        v34[1] = v33;
        v34[2] = *(MEMORY[0x1E695EFD0] + 32);
        [v32 setTransform:v34];
      }
    }
  }
}

- (void)_prepareContentView
{
  toContentLayout = self->super._toContentLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentView;
  }

  v5 = toLayout;
  [(_UINavigationBarContentViewLayout *)toContentLayout setActive:1 contentView:v5];

  [(_UINavigationBarLayout *)self->super._toLayout ensureBackButtonTruncationOccursWithContext:self];
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_contentView;
  }

  v7 = fromLayout;

  if (v7)
  {
    [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout setBackButtonHidden:0 titleLabelHidden:(*&self->super._flags >> 5) & 1 titleViewHidden:0 barsHidden:0];
  }

  [(_UINavigationBarContentViewLayout *)self->super._toContentLayout setContentHidden:1];
  v8 = self->super._toLayout;
  if (v8)
  {
    v8 = v8->_contentView;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
    [v10 setAlpha:0.3];
  }

  [(UIView *)self->super._contentView layoutIfNeeded];
  [(_UINavigationBarContentViewLayout *)self->super._toContentLayout freeze];
  [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout freeze];
  v11 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  v12 = [v11 visualProvider];
  v13 = [v12 contentView];
  [v13 frame];
  self->_endingNewBackButtonFrame.origin.x = v14;
  self->_endingNewBackButtonFrame.origin.y = v15;
  self->_endingNewBackButtonFrame.size.width = v16;
  self->_endingNewBackButtonFrame.size.height = v17;

  v18 = self->super._toLayout;
  if (v18 && (v42 = v18->_contentView) != 0)
  {
    v19 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleControl];
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    self->_endingNewTitleViewFrame.origin.x = v20;
    self->_endingNewTitleViewFrame.origin.y = v22;
    self->_endingNewTitleViewFrame.size.width = v24;
    self->_endingNewTitleViewFrame.size.height = v26;
    flags = self->super._flags;
    if ((*&flags & 0x40) == 0 || self->super._largeTitleTransitionType != 1)
    {
      v29 = _distanceFromTitleToBackButton(self->super._toContentLayout, self->super._fromContentLayout, v42, (*&flags >> 1) & 1);
      self->_titleTransitionDistance.width = v29;
      self->_titleTransitionDistance.height = 0.0;
      [v19 setFrame:{v21 - v29, v23, v25, v27}];
      _applyStretchTransformForTitleViewAndBackButtonLayouts(1, self->super._toContentLayout, self->super._fromContentLayout);
    }
  }

  else
  {
    v42 = 0;
  }

  v30 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  [v30 setBackButtonMaskEnabled:1];

  _performAdditionalTitleViewClipping(self, self->super._fromContentLayout, self->super._toContentLayout);
  v31 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  [v31 frame];
  Width = CGRectGetWidth(v44);

  v33 = fabs(self->_titleTransitionDistance.width);
  if (Width >= v33)
  {
    v33 = Width;
  }

  v34 = -v33;
  v35 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  _updateBackButtonSpacingForButton(v35, (*&self->super._flags >> 1) & 1, v34, 0.0);

  v36 = self->super._fromLayout;
  if (v36)
  {
    v36 = v36->_contentView;
  }

  v37 = v36;

  if (v37)
  {
    v38 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [v38 _navigationBarTransitionWillBegin:1 willBeDisplayed:0];
  }

  v39 = self->super._toLayout;
  if (v39)
  {
    v39 = v39->_contentView;
  }

  v40 = v39;

  if (v40)
  {
    v41 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [v41 _navigationBarTransitionWillBegin:1 willBeDisplayed:1];
  }

  [(UIView *)self->super._contentView layoutIfNeeded];
}

- (void)_prepareLargeTitleView
{
  if ((*&self->super._flags & 0x20) != 0)
  {
    v3 = _slideTransitionFadeMaskImage(0);
    v4 = [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout titleLabel];
    [(UIView *)self->super._largeTitleView frame];
    MaxX = CGRectGetMaxX(v21);
    v6 = _wrapViewInClippingView(v4, 0, v3, 0.0, MaxX);

    [(_UINavigationBarTransitionContext *)self _addClippingView:v6];
  }

  else
  {
    [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout setContentHidden:1];
  }

  if ((*&self->super._flags & 0x40) != 0)
  {
    largeTitleTransitionType = self->super._largeTitleTransitionType;
    if (largeTitleTransitionType == 1)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout setContentHidden:1];
      toLargeTitleLayout = self->super._toLargeTitleLayout;
      v19 = [(_UINavigationBarLargeTitleViewLayout *)toLargeTitleLayout titleLabel];
      [v19 center];
      _updateLargeTitleSpacingForLayout(toLargeTitleLayout, v17, v18, -self->_titleTransitionDistanceExcludingLargeTitleOffset.width, -self->_titleTransitionDistanceExcludingLargeTitleOffset.height);
    }

    else
    {
      if (largeTitleTransitionType)
      {
        return;
      }

      [(UIView *)self->super._largeTitleView bounds];
      v10 = -v9;
      if ((*&self->super._flags & 2) != 0)
      {
        v10 = v9;
      }

      [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout layoutViewsWithOffset:1 useRestingTitleHeight:v10, 0.0];
      v19 = [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout accessoryView];
      [v19 setAlpha:0.0];
    }
  }

  else
  {
    if (!self->super._toLargeTitleLayout)
    {
      largeTitleView = self->super._largeTitleView;
      if (largeTitleView)
      {
        v12 = [(UIView *)largeTitleView superview];
        navigationBar = self->super._navigationBar;

        if (v12 == navigationBar)
        {
          v14 = [(_UINavigationBarLargeTitleView *)self->super._largeTitleView layout];
          v15 = self->super._toLargeTitleLayout;
          self->super._toLargeTitleLayout = v14;
        }
      }
    }

    v7 = self->super._toLargeTitleLayout;

    [(_UINavigationBarLargeTitleViewLayout *)v7 setContentHidden:1];
  }
}

- (void)_prepareBackgroundView
{
  if (![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
  {
    return;
  }

  flags = self->super._flags;
  if ((flags & 0x200) != 0 && (fromLayout = self->super._fromLayout) != 0)
  {
    v4 = fromLayout->_chromelessTransitionProgress == 1.0;
    if ((*&self->super._flags & 0x400) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->super._flags & 0x400) == 0)
    {
      goto LABEL_7;
    }
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    v6 = toLayout->_chromelessTransitionProgress == 1.0;
    if (!v4)
    {
      goto LABEL_24;
    }

LABEL_11:
    if ((v6 & 1) == 0)
    {
      v8 = [(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame];
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      if ((flags & 2) != 0)
      {
        MaxX = CGRectGetMaxX(*&v8);
      }

      else
      {
        MinX = CGRectGetMinX(*&v8);
        v26.origin.x = v12;
        v26.origin.y = v13;
        v26.size.width = v14;
        v26.size.height = v15;
        MaxX = MinX - CGRectGetWidth(v26);
      }

      [(UIView *)self->super._backgroundView setFrame:MaxX, v13, v14, v15];
      v18 = self->super._toLayout;
      if (v18)
      {
        v19 = 184;
        if ((*&self->super._flags & 4) == 0)
        {
          v19 = 192;
        }

        v18 = *(&v18->super.isa + v19);
      }

      v20 = v18;
      v21 = v20;
      v22 = self->super._toLayout;
      if (v22)
      {
        chromelessTransitionProgress = v22->_chromelessTransitionProgress;
      }

      else
      {
        chromelessTransitionProgress = 0.0;
      }

      [(_UINavigationBarLayout *)v20 setBackgroundTransitionProgress:chromelessTransitionProgress];
      [(_UINavigationBarLayout *)v21 setBackgroundAlpha:self->super._backgroundAlpha];
      [(_UINavigationBarLayout *)v21 setShadowAlpha:0.0];
      if ((*&self->super._flags & 0x800) != 0)
      {
        [(_UIBarBackground *)self->super._backgroundView setLayout:v21];
        [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
      }
    }

    goto LABEL_24;
  }

LABEL_7:
  v6 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_24:
  if (v4 != v6)
  {
    navigationBar = self->super._navigationBar;

    [(UINavigationBar *)navigationBar _updatePaletteBackgroundIfNecessary];
  }
}

- (void)_prepareSearchBar
{
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v27 = fromLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v5 = toLayout;
  if (v27 != v5)
  {
    [(_UINavigationBarLayout *)v27 _navigationBarSlideTransitionWillBegin];
    [(_UINavigationBarLayout *)v5 _navigationBarSlideTransitionWillBegin];
    v6 = self->super._fromLayout;
    if (v6 && v6->_clientWantsToPreserveSearchBarAcrossTransitions)
    {
      [(_UINavigationBarLayout *)v27 setAlpha:0.0];
      [(_UINavigationBarLayout *)v5 setAlpha:1.0];
      [(_UINavigationBarLayout *)v5 setFrame:[(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame]];
      [(_UINavigationBarLayout *)v5 layoutIfNeeded];
    }

    else
    {
      if (_searchBarHasAlphaTransitionForSlideTransitionLayouts(v6, self->super._toLayout, 0, 0) || ![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
      {
        [(_UINavigationBarLayout *)v5 setAlpha:0.0];
      }

      v7 = self->super._fromLayout;
      v8 = self->super._toLayout;
      if (v7)
      {
        searchBar = v7->_searchBar;
      }

      else
      {
        searchBar = 0;
      }

      v10 = searchBar;
      v11 = [(UISearchBar *)v10 showsScopeBar];

      if (v8)
      {
        v12 = v8->_searchBar;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [(UISearchBar *)v13 showsScopeBar];
      if (v11 != v14)
      {
        v15 = [(_UINavigationBarLayout *)v5 _scopeBar];
        [v15 setAlpha:0.0];
      }

      v16 = [(_UINavigationBarLayout *)v5 _searchController];
      v17 = [v16 isActive];

      v18 = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (!v17 && [(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
      {
        v25 = [(_UINavigationBarTransitionContext *)self isRTL];
        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        Width = CGRectGetWidth(v29);
        if (!v25)
        {
          Width = -Width;
        }

        v18 = v18 + Width;
      }

      [(_UINavigationBarLayout *)v5 setFrame:v18, v20, v22, v24];
    }
  }
}

- (void)_prepareTransitionFromPalette:(id)a3 toPalette:(id)a4 toPaletteFrame:(CGRect)a5
{
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  if (v10 && v10 != a3)
  {
    v14 = v10;
    [v10 preferredHeight];
    v12 = v11;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = v12;
    v13 = x - CGRectGetWidth(v16);
    if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground]&& _paletteHasAlphaTransitionForSlideTransitionLayouts(self->super._fromLayout, self->super._toLayout, 0, 0))
    {
      [v14 setAlpha:0.0];
    }

    [v14 setFrame:{v13, y, width, v12}];
    [v14 layoutIfNeeded];
    [v14 setTransitioning:1];
    v10 = v14;
  }
}

- (void)prepare
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTransitionContextPop;
  [(_UINavigationBarTransitionContext *)&v6 prepare];
  if ((*&self->super._flags & 0x40) != 0 && _shouldScaleLargeTitleToBackButton(self->super._fromLargeTitleLayout, self->super._toLargeTitleLayout, self->super._fromContentLayout, 0))
  {
    self->super._largeTitleTransitionType = 1;
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    width = toLayout->_layoutSize.width;
  }

  else
  {
    width = 0.0;
  }

  [(UIView *)self->super._navigationBar bounds];
  [(_UINavigationBarLayout *)self->super._toLayout setLayoutSize:v5];
  [(_UINavigationBarTransitionContextPop *)self _prepareContentView];
  [(_UINavigationBarTransitionContextPop *)self _prepareScaleTransition];
  [(_UINavigationBarTransitionContextPop *)self _prepareLargeTitleView];
  [(_UINavigationBarTransitionContextPop *)self _prepareBackgroundView];
  [(_UINavigationBarTransitionContextPop *)self _prepareSearchBar];
  [(_UINavigationBarTransitionContext *)self _preparePalettes];
}

- (void)_animateScaleTransition
{
  if ((*&self->super._flags & 0x40) != 0 && self->super._largeTitleTransitionType == 1)
  {
    height = self->_titleTransitionDistance.height;
    v4 = self->_titleTransitionDistance.width - self->_titleTransitionAdjustment;
    v5 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    _updateBackButtonSpacingForButton(v5, 0, v4, height);

    fromContentLayout = self->super._fromContentLayout;
    v7 = self->super._toLargeTitleLayout;
    v8 = fromContentLayout;
    v9 = [(_UINavigationBarLargeTitleViewLayout *)v7 title];
    v10 = [v9 string];

    v11 = [(_UINavigationBarLargeTitleViewLayout *)v7 titleLabel];

    _applyStretchTransformForTitleViewAndBackButtonLayout(5, v11, v8);
    if (_textDiffersBetweenLargeTitleAndBackButtonLayouts(self->super._toLargeTitleLayout, self->super._fromContentLayout))
    {
      [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout setContentAlpha:0.0];
      v12 = [(_UINavigationBarTransitionContext *)self _animationOptions];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [UIView animateKeyframesWithDuration:v12 delay:v36 options:0 animations:0.0 completion:0.0];
    }

    v13 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    if (v13)
    {
      v14 = v13;
      v15 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];

      if (!v15)
      {
        v16 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
        v17 = [v16 visualProvider];
        v18 = [v17 backIndicatorView];

        [v18 frame];
        v22 = v21;
        v24 = v23;
        v25 = -7.0;
        if ((*&self->super._flags & 2) == 0)
        {
          v25 = 7.0;
        }

        v26 = v19 + v25;
        v27 = v20 + 5.0;
        v28 = [(_UINavigationBarTransitionContext *)self _animationOptions];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_5;
        v30[3] = &unk_1E70F3B20;
        v31 = v18;
        v32 = v26;
        v33 = v27;
        v34 = v22;
        v35 = v24;
        v29 = v18;
        [UIView animateKeyframesWithDuration:v28 delay:v30 options:0 animations:0.0 completion:0.0];
      }
    }
  }
}

- (void)_animateContentView
{
  v51[1] = *MEMORY[0x1E69E9840];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke;
  v50[3] = &unk_1E70F7030;
  v50[4] = self;
  [UIView _animateInProcessAlongsideTransition:v50];
  x = self->_endingNewBackButtonFrame.origin.x;
  y = self->_endingNewBackButtonFrame.origin.y;
  width = self->_endingNewBackButtonFrame.size.width;
  height = self->_endingNewBackButtonFrame.size.height;
  v7 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  v8 = [v7 visualProvider];
  v9 = [v8 contentView];
  [v9 setFrame:{x, y, width, height}];

  v10 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout titleControl];
  [v10 frame];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_3;
  v44[3] = &unk_1E70F7058;
  v44[4] = self;
  v46 = v11;
  v47 = v12;
  v48 = v13;
  v49 = v14;
  v15 = v10;
  v45 = v15;
  [UIView _animateInProcessAlongsideTransition:v44];
  if ((*&self->super._flags & 0x40) == 0 || self->super._largeTitleTransitionType != 1)
  {
    v16 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    _updateBackButtonSpacingForButton(v16, (*&self->super._flags >> 1) & 1, fabs(self->_titleTransitionDistance.width), 0.0);

    _applyStretchTransformForTitleViewAndBackButtonLayouts(4, self->super._toContentLayout, self->super._fromContentLayout);
  }

  v17 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleControl];
  v18 = +[UIView _hasInProcessProgressAnimator];
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  self->_unfreezeTitleControlOnFinish = v19;
  toContentLayout = self->super._toContentLayout;
  if (v19)
  {
    v51[0] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [(_UINavigationBarContentViewLayout *)toContentLayout unfreezeExceptViews:v21];
  }

  else
  {
    [(_UINavigationBarContentViewLayout *)self->super._toContentLayout unfreezeExceptViews:0];
  }

  [v17 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_4;
  v37[3] = &unk_1E70F7058;
  v30 = v17;
  v40 = v23;
  v41 = v25;
  v42 = v27;
  v43 = v29;
  v38 = v30;
  v39 = self;
  [UIView _animateInProcessAlongsideTransition:v37];
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_contentView;
  }

  v32 = fromLayout;

  if (v32)
  {
    v33 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [v33 _performNavigationBarTransition:1 willBeDisplayed:0];
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentView;
  }

  v35 = toLayout;

  if (v35)
  {
    v36 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [v36 _performNavigationBarTransition:1 willBeDisplayed:1];
  }
}

- (void)_animateLargeTitleView
{
  [(UIView *)self->super._largeTitleView bounds];
  v4 = v3;
  flags = self->super._flags;
  fromLayout = self->super._fromLayout;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (fromLayout)
  {
    [(_UINavigationBarLayout *)fromLayout _layoutFrameFor:fromLayout->_largeTitleLayoutData withOrder:60];
    v9 = v10;
    v8 = v11;
  }

  toLayout = self->super._toLayout;
  v13 = 0.0;
  if (toLayout)
  {
    [(_UINavigationBarLayout *)toLayout _layoutFrameFor:toLayout->_largeTitleLayoutData withOrder:60, 0.0];
    v7 = v14;
  }

  v15 = -v4;
  if ((flags & 2) == 0)
  {
    v15 = v4;
  }

  v16 = v15 - (v13 - v9);
  v17 = v8 - v7 + 0.0;
  v18 = [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout titleLabel];
  [v18 center];
  v20 = v19;
  v22 = v21;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62___UINavigationBarTransitionContextPop__animateLargeTitleView__block_invoke;
  v23[3] = &unk_1E70F70A8;
  v23[4] = self;
  *&v23[5] = v16;
  *&v23[6] = v17;
  v23[7] = v20;
  v23[8] = v22;
  [UIView _animateInProcessAlongsideTransition:v23];
}

- (void)_animateBackgroundView
{
  if (![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
  {
    v30.receiver = self;
    v30.super_class = _UINavigationBarTransitionContextPop;
    [(_UINavigationBarTransitionContext *)&v30 _animateBackgroundView];
    return;
  }

  flags = self->super._flags;
  if ((flags & 0x200) != 0)
  {
    fromLayout = self->super._fromLayout;
    if (fromLayout)
    {
      LOBYTE(fromLayout) = fromLayout->_chromelessTransitionProgress == 1.0;
    }
  }

  else
  {
    LOBYTE(fromLayout) = 0;
  }

  toLayout = self->super._toLayout;
  if ((*&self->super._flags & 0x400) == 0)
  {
    goto LABEL_13;
  }

  if (!toLayout)
  {
    goto LABEL_34;
  }

  if (toLayout->_chromelessTransitionProgress != 1.0)
  {
LABEL_13:
    if (toLayout)
    {
      v6 = (flags & 4) == 0;
      v7 = 184;
      if (v6)
      {
        v7 = 192;
      }

      v8 = *(&toLayout->super.isa + v7);
      goto LABEL_17;
    }

LABEL_34:
    v8 = 0;
LABEL_17:
    v29 = v8;
    v9 = self->super._toLayout;
    computedBackgroundViewAlpha = 0.0;
    chromelessTransitionProgress = 0.0;
    if (v9)
    {
      chromelessTransitionProgress = v9->_chromelessTransitionProgress;
    }

    [v29 setBackgroundTransitionProgress:chromelessTransitionProgress];
    v12 = self->super._toLayout;
    if (v12)
    {
      computedBackgroundViewAlpha = v12->_computedBackgroundViewAlpha;
    }

    [v29 setBackgroundAlpha:computedBackgroundViewAlpha];
    MaxX = [(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    goto LABEL_22;
  }

  if (fromLayout)
  {
    v29 = 0;
    if ((*&self->super._flags & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = self->super._fromLayout;
  if (v20)
  {
    v6 = (flags & 4) == 0;
    v21 = 184;
    if (v6)
    {
      v21 = 192;
    }

    v22 = *(&v20->super.isa + v21);
  }

  else
  {
    v22 = 0;
  }

  v29 = v22;
  v23 = [(_UINavigationBarLayout *)self->super._fromLayout backgroundViewLayoutFrame];
  v27 = v23;
  v15 = v24;
  v17 = v25;
  v19 = v26;
  if ((*&self->super._flags & 2) != 0)
  {
    MinX = CGRectGetMinX(*&v23);
    v32.origin.x = v27;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    MaxX = MinX - CGRectGetWidth(v32);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v23);
  }

LABEL_22:
  [(UIView *)self->super._backgroundView setFrame:MaxX, v15, v17, v19];
  if ((*&self->super._flags & 0x800) != 0)
  {
LABEL_23:
    [(_UIBarBackground *)self->super._backgroundView setLayout:v29];
    [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
  }

LABEL_24:
  [(UIView *)self->super._backgroundView layoutIfNeeded];
}

- (void)_animateSearchBar
{
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v4 = fromLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v6 = toLayout;
  if (v4 != v6)
  {
    if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke;
      v28[3] = &unk_1E70F5C08;
      v28[4] = self;
      v29 = v6;
      [UIView _animateInProcessAlongsideTransition:v28];
    }

    v7 = self->super._fromLayout;
    if (!v7 || !v7->_clientWantsToPreserveSearchBarAcrossTransitions)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_2;
      v26[3] = &unk_1E70F35B8;
      v26[4] = self;
      v8 = v4;
      v27 = v8;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_3;
      v24[3] = &unk_1E70F3590;
      v9 = v6;
      v25 = v9;
      [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v26 partTwo:v24];
      v10 = self->super._fromLayout;
      v11 = self->super._toLayout;
      if (v10)
      {
        searchBar = v10->_searchBar;
      }

      else
      {
        searchBar = 0;
      }

      v13 = searchBar;
      v14 = [(UISearchBar *)v13 showsScopeBar];

      if (v11)
      {
        v15 = v11->_searchBar;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [(UISearchBar *)v16 showsScopeBar];
      if (v14 != v17)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_4;
        v21[3] = &unk_1E70F35B8;
        v22 = v8;
        v23 = v9;
        [UIView animateKeyframesWithDuration:0 delay:v21 options:0 animations:0.0 completion:0.0];
      }

      if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_7;
        v18[3] = &unk_1E70F5C08;
        v19 = v8;
        v20 = self;
        [UIView _animateInProcessAlongsideTransition:v18];
      }
    }
  }
}

- (void)_animateFromPalette:(id)a3 fromPaletteFrame:(CGRect)a4 toPalette:(id)a5 toPaletteFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = a3;
  v17 = a5;
  v18 = v17;
  if (v16 != v17)
  {
    if (v16)
    {
      v34.origin.x = v14;
      v34.origin.y = v13;
      v34.size.width = v12;
      v34.size.height = v11;
      v19 = CGRectGetWidth(v34);
      v20 = v19;
      if (v18)
      {
        v21 = v13;
        v22 = v12;
        v23 = v11;
        v11 = CGRectGetHeight(*&v19);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v24 = CGRectGetHeight(v35);
        if (v11 >= v24)
        {
          v11 = v24;
        }
      }

      if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground]&& _paletteHasAlphaTransitionForSlideTransitionLayouts(self->super._fromLayout, self->super._toLayout, 1, 1))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __102___UINavigationBarTransitionContextPop__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
        aBlock[3] = &unk_1E70F3590;
        v33 = v16;
        v25 = _Block_copy(aBlock);
      }

      else
      {
        v25 = 0;
      }

      [v16 setTransitioning:1];
      [v16 setFrame:{v20, v13, v12, v11}];
      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v25 = 0;
      if (v17)
      {
LABEL_11:
        [v18 setFrame:{x, y, width, height}];
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __102___UINavigationBarTransitionContextPop__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke_2;
        v30 = &unk_1E70F3590;
        v31 = v18;
        v26 = _Block_copy(&v27);

LABEL_14:
        [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithoutOverlap:v25 partTwo:v26, v27, v28, v29, v30];

        goto LABEL_15;
      }
    }

    v26 = 0;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)animate
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPop;
  [(_UINavigationBarTransitionContext *)&v3 animate];
  [(_UINavigationBarTransitionContextPop *)self _animateContentView];
  [(_UINavigationBarTransitionContextPop *)self _animateScaleTransition];
  [(_UINavigationBarTransitionContextPop *)self _animateLargeTitleView];
  [(_UINavigationBarTransitionContextPop *)self _animateSearchBar];
  [(_UINavigationBarTransitionContext *)self _animatePalettes];
}

- (void)_finishWithFinalLayout:(id)a3 invalidLayout:(id)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_UINavigationBarLayout *)self->super._fromLayout updateLayout];
  [(_UINavigationBarLayout *)self->super._toLayout updateLayout];
  if (v6)
  {
    v8 = v6[20];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v7)
  {
    v10 = v7[20];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    v12 = v6[21];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (v7)
  {
    v14 = v7[21];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v9 augmentedTitleView];
  [v16 _navigationBarTransitionCompleted:1 willBeDisplayed:1];

  v17 = [v11 augmentedTitleView];
  [v17 _navigationBarTransitionCompleted:1 willBeDisplayed:0];

  v18 = [v9 titleControl];
  v19 = [v18 titleLabel];
  v64 = *(MEMORY[0x1E695EFD0] + 16);
  v66 = *MEMORY[0x1E695EFD0];
  v65 = v66;
  v67 = v64;
  v68 = *(MEMORY[0x1E695EFD0] + 32);
  v63 = v68;
  [v19 setTransform:&v66];

  v20 = [v9 backButton];
  v21 = [v20 visualProvider];
  v22 = [v21 contentView];
  v66 = v65;
  v67 = v64;
  v68 = v63;
  [v22 setTransform:&v66];

  v23 = [v11 titleControl];
  v24 = [v23 titleLabel];
  v66 = v65;
  v67 = v64;
  v68 = v63;
  [v24 setTransform:&v66];

  v25 = [v11 backButton];
  v26 = [v25 visualProvider];
  v27 = [v26 contentView];
  v66 = v65;
  v67 = v64;
  v68 = v63;
  [v27 setTransform:&v66];

  [v11 setContentHidden:0];
  v28 = [v11 backButton];
  [v28 setBackButtonMaskEnabled:0];

  [v11 removeContent];
  [v15 removeContent];
  [(_UINavigationBarTransitionContext *)self _removeAllClippingViews];
  [v13 cleanupAfterLayoutTransitionCompleted];
  [v9 cleanupAfterLayoutTransitionCompleted];
  v29 = *(MEMORY[0x1E695F058] + 16);
  self->_endingNewTitleViewFrame.origin = *MEMORY[0x1E695F058];
  self->_endingNewTitleViewFrame.size = v29;
  [v9 setContentHidden:0];
  v30 = [v9 backButton];
  [v30 setBackButtonMaskEnabled:0];

  [(UIView *)self->super._largeTitleView setClipsToBounds:1];
  [(UIView *)self->super._contentView setClipsToBounds:1];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v32 = toLayout;
  [(_UINavigationBarLayout *)v32 setAlpha:1.0];

  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v34 = fromLayout;
  [(_UINavigationBarLayout *)v34 setAlpha:1.0];

  v35 = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = self->super._toLayout;
  if (v42)
  {
    v42 = v42->_searchBar;
  }

  v43 = v42;
  [(_UINavigationBarLayout *)v43 setFrame:v35, v37, v39, v41];

  v44 = [(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = self->super._fromLayout;
  if (v51)
  {
    v51 = v51->_searchBar;
  }

  v52 = v51;
  [(_UINavigationBarLayout *)v52 setFrame:v44, v46, v48, v50];

  if (v6)
  {
    v53 = 23;
    if ((*&self->super._flags & 4) == 0)
    {
      v53 = 24;
    }

    v54 = v6[v53];
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  [v55 setShadowAlpha:1.0];
  [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout unfreeze];
  if (self->_unfreezeTitleControlOnFinish)
  {
    toContentLayout = self->super._toContentLayout;
    v57 = [(_UINavigationBarContentViewLayout *)toContentLayout titleControl];
    v69[0] = v57;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
    [(_UINavigationBarContentViewLayout *)toContentLayout unfreezeOnlyViews:v58];
  }

  if (v6)
  {
    v59 = v6[30];
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;
  [v60 _navigationBarSlideTransitionDidEnd];

  if (v7)
  {
    v61 = v7[30];
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;
  [v62 _navigationBarSlideTransitionDidEnd];
}

- (void)cancel
{
  [(_UINavigationBarTransitionContextPop *)self _finishWithFinalLayout:self->super._fromLayout invalidLayout:self->super._toLayout];
  [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout removeContent];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPop;
  [(_UINavigationBarTransitionContext *)&v3 cancel];
}

- (void)complete
{
  [(_UINavigationBarTransitionContextPop *)self _finishWithFinalLayout:self->super._toLayout invalidLayout:self->super._fromLayout];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPop;
  [(_UINavigationBarTransitionContext *)&v3 complete];
}

@end