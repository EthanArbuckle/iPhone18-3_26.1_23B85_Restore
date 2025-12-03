@interface _UINavigationBarTransitionContextPush
- (void)_animateBackgroundView;
- (void)_animateContentView;
- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame;
- (void)_animateLargeTitleView;
- (void)_animateScaleTransition;
- (void)_animateSearchBar;
- (void)_finishWithFinalLayout:(id)layout invalidLayout:(id)invalidLayout;
- (void)_prepareBackgroundView;
- (void)_prepareContentView;
- (void)_prepareLargeTitleView;
- (void)_prepareScaleTransition;
- (void)_prepareSearchBar;
- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextPush

- (void)_prepareScaleTransition
{
  if ((*&self->super._flags & 0x20) != 0 && self->super._largeTitleTransitionType == 1)
  {
    [(UIView *)self->super._largeTitleView setClipsToBounds:0];
    [(UIView *)self->super._contentView setClipsToBounds:0];
    self->_titleTransitionDistance.width = _distanceFromLargeTitleToBackButton(self->super._fromLargeTitleLayout, self->super._toContentLayout, self->super._contentView);
    self->_titleTransitionDistance.height = v3;
    self->_titleTransitionDistance.width = self->_titleTransitionDistance.width - _titleTransitionAdjustmentFromLargeTitleToBackButton(self->super._fromLargeTitleLayout, self->super._toContentLayout);
    self->_titleTransitionDistanceExcludingLargeTitleOffset = self->_titleTransitionDistance;
    toLayout = self->super._toLayout;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (toLayout)
    {
      [(_UINavigationBarLayout *)toLayout _layoutFrameFor:toLayout->_largeTitleLayoutData withOrder:60];
      v7 = v8;
      v6 = v9;
    }

    fromLayout = self->super._fromLayout;
    v11 = 0.0;
    if (fromLayout)
    {
      [(_UINavigationBarLayout *)fromLayout _layoutFrameFor:fromLayout->_largeTitleLayoutData withOrder:60, 0.0];
      v5 = v12;
    }

    v13 = self->super._toLayout;
    if (v13 && v13->_largeTitleExposure > 0.0)
    {
      v14 = v6 - v5 + self->_titleTransitionDistance.height;
      self->_titleTransitionDistance.width = v7 - v11 + self->_titleTransitionDistance.width;
      self->_titleTransitionDistance.height = v14;
    }

    toContentLayout = self->super._toContentLayout;
    v16 = self->super._fromLargeTitleLayout;
    v17 = toContentLayout;
    title = [(_UINavigationBarLargeTitleViewLayout *)v16 title];
    string = [title string];

    titleLabel = [(_UINavigationBarLargeTitleViewLayout *)v16 titleLabel];

    _applyStretchTransformForTitleViewAndBackButtonLayout(5, titleLabel, v17);
    backButton = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
    _updateBackButtonSpacingForButton(backButton, 0, self->_titleTransitionDistanceExcludingLargeTitleOffset.width, self->_titleTransitionDistanceExcludingLargeTitleOffset.height);

    backButton2 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    if (backButton2)
    {
    }

    else
    {
      backButton3 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];

      if (backButton3)
      {
        backButton4 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
        visualProvider = [backButton4 visualProvider];
        backIndicatorView = [visualProvider backIndicatorView];

        [backIndicatorView frame];
        self->_endingBackIndicatorViewFrame.origin.x = v27;
        self->_endingBackIndicatorViewFrame.origin.y = v28;
        self->_endingBackIndicatorViewFrame.size.width = v29;
        self->_endingBackIndicatorViewFrame.size.height = v30;
        v31 = -7.0;
        if ((*&self->super._flags & 2) == 0)
        {
          v31 = 7.0;
        }

        [backIndicatorView setFrame:{v27 + v31, v28 + 5.0}];
        CGAffineTransformMakeScale(&v37, 0.7, 0.7);
        v36 = v37;
        [backIndicatorView setTransform:&v36];
        [backIndicatorView setAlpha:0.0];
      }
    }

    if (_textDiffersBetweenLargeTitleAndBackButtonLayouts(self->super._fromLargeTitleLayout, self->super._toContentLayout))
    {
      backButton5 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
      [backButton5 setAlpha:1.0];

      backButton6 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
      visualProvider2 = [backButton6 visualProvider];
      contentView = [visualProvider2 contentView];
      [contentView setAlpha:0.0];
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

  fromContentLayout = self->super._fromContentLayout;
  if (v7)
  {
    [(_UINavigationBarContentViewLayout *)fromContentLayout setBackButtonHidden:0 titleLabelHidden:(*&self->super._flags >> 5) & 1 titleViewHidden:0 barsHidden:0];
  }

  else
  {
    [(_UINavigationBarContentViewLayout *)fromContentLayout setContentHidden:1];
  }

  [(_UINavigationBarContentViewLayout *)self->super._toContentLayout setContentHidden:1];
  [(UIView *)self->super._contentView layoutIfNeeded];
  [(_UINavigationBarContentViewLayout *)self->super._toContentLayout freeze];
  [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout freeze];
  backButton = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
  visualProvider = [backButton visualProvider];
  contentView = [visualProvider contentView];
  [contentView frame];
  self->_endingNewBackButtonFrame.origin.x = v12;
  self->_endingNewBackButtonFrame.origin.y = v13;
  self->_endingNewBackButtonFrame.size.width = v14;
  self->_endingNewBackButtonFrame.size.height = v15;

  v16 = self->super._toLayout;
  if (v16 && (v45 = v16->_contentView) != 0)
  {
    titleControl = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleControl];
    [titleControl frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    self->_endingNewTitleViewFrame.origin.x = v24;
    self->_endingNewTitleViewFrame.origin.y = v18;
    self->_endingNewTitleViewFrame.size.width = v20;
    self->_endingNewTitleViewFrame.size.height = v22;
    flags = self->super._flags;
    titleViewGuide = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleViewGuide];
    [titleViewGuide layoutFrame];
    if ((flags & 2) != 0)
    {
      MinX = CGRectGetMinX(*&v27);
      titleControl2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleControl];
      [titleControl2 frame];
      MaxX = MinX - CGRectGetWidth(v47);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v27);
    }

    [titleControl setFrame:{MaxX, v19, v21, v23}];
    v34 = self->super._flags;
    if ((*&v34 & 0x20) == 0 || self->super._largeTitleTransitionType != 1)
    {
      self->_titleTransitionDistance.width = fabs(_distanceFromTitleToBackButton(self->super._fromContentLayout, self->super._toContentLayout, v45, (*&v34 >> 1) & 1));
      self->_titleTransitionDistance.height = 0.0;
      v35 = self->super._fromLayout;
      if (v35)
      {
        v35 = v35->_contentView;
      }

      v36 = v35;

      if (v36)
      {
        _applyStretchTransformForTitleViewAndBackButtonLayouts(4, self->super._fromContentLayout, self->super._toContentLayout);
      }

      backButton2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
      _updateBackButtonSpacingForButton(backButton2, (*&self->super._flags >> 1) & 1, self->_titleTransitionDistance.width, self->_titleTransitionDistance.height);
    }
  }

  else
  {
    v45 = 0;
  }

  backButton3 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
  [backButton3 setBackButtonMaskEnabled:1];

  _performAdditionalTitleViewClipping(self, self->super._fromContentLayout, self->super._toContentLayout);
  v39 = self->super._fromLayout;
  if (v39)
  {
    v39 = v39->_contentView;
  }

  v40 = v39;

  if (v40)
  {
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [augmentedTitleView _navigationBarTransitionWillBegin:0 willBeDisplayed:0];
  }

  v42 = self->super._toLayout;
  if (v42)
  {
    v42 = v42->_contentView;
  }

  v43 = v42;

  if (v43)
  {
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [augmentedTitleView2 _navigationBarTransitionWillBegin:0 willBeDisplayed:1];
  }

  [(UIView *)self->super._contentView layoutIfNeeded];
}

- (void)_prepareLargeTitleView
{
  flags = self->super._flags;
  if ((flags & 0x20) == 0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout setContentHidden:1];
    flags = self->super._flags;
  }

  if ((flags & 0x40) != 0)
  {
    [(UIView *)self->super._largeTitleView bounds];
    v5 = self->super._flags;
    if ((v5 & 2) != 0)
    {
      v6 = -v4;
    }

    else
    {
      v6 = v4;
    }

    if ((v5 & 0x20) == 0)
    {
      [(UIView *)self->super._largeTitleView bounds];
      if (v8 == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8))
      {
        toLayout = self->super._toLayout;
        if (toLayout)
        {
          [(_UINavigationBarLayout *)toLayout _layoutFrameFor:toLayout->_largeTitleLayoutData withOrder:60];
        }

        [(UIView *)self->super._largeTitleView setFrame:?];
      }
    }

    v11 = self->super._toLayout;
    v12 = 0.0;
    v13 = 0.0;
    if (v11)
    {
      [(_UINavigationBarLayout *)v11 _layoutFrameFor:v11->_largeTitleLayoutData withOrder:60];
      v13 = v14;
    }

    fromLayout = self->super._fromLayout;
    if (fromLayout)
    {
      [(_UINavigationBarLayout *)fromLayout _layoutFrameFor:fromLayout->_largeTitleLayoutData withOrder:60];
      v12 = v16;
    }

    [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout layoutViewsWithOffset:1 useRestingTitleHeight:v6, v13 - v12];
    if ((*&self->super._flags & 2) != 0)
    {
      v17 = _slideTransitionFadeMaskImage(1);
      titleLabel = [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout titleLabel];
      [(UIView *)self->super._largeTitleView frame];
      MaxX = CGRectGetMaxX(v27);
      v20 = titleLabel;
      v21 = v17;
      v22 = 0;
    }

    else
    {
      v17 = _slideTransitionFadeMaskImage(0);
      titleLabel = [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout titleLabel];
      [(UIView *)self->super._largeTitleView frame];
      MaxX = CGRectGetMaxX(v26);
      v20 = titleLabel;
      v21 = 0;
      v22 = v17;
    }

    v23 = _wrapViewInClippingView(v20, v21, v22, 0.0, MaxX);

    [(_UINavigationBarTransitionContext *)self _addClippingView:v23];
    toLargeTitleLayout = self->super._toLargeTitleLayout;

    [(_UINavigationBarLargeTitleViewLayout *)toLargeTitleLayout setContentHidden:1];
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
      goto LABEL_26;
    }

LABEL_11:
    if ((v6 & 1) == 0)
    {
      backgroundViewLayoutFrame = [(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame];
      v12 = backgroundViewLayoutFrame;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      if ((flags & 2) != 0)
      {
        MinX = CGRectGetMinX(*&backgroundViewLayoutFrame);
        v28.origin.x = v12;
        v28.origin.y = v13;
        v28.size.width = v14;
        v28.size.height = v15;
        MaxX = MinX - CGRectGetWidth(v28);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&backgroundViewLayoutFrame);
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
      computedBackgroundViewAlpha = 0.0;
      chromelessTransitionProgress = 0.0;
      if (v22)
      {
        chromelessTransitionProgress = v22->_chromelessTransitionProgress;
      }

      [(_UINavigationBarLayout *)v20 setBackgroundTransitionProgress:chromelessTransitionProgress];
      v25 = self->super._toLayout;
      if (v25)
      {
        computedBackgroundViewAlpha = v25->_computedBackgroundViewAlpha;
      }

      [(_UINavigationBarLayout *)v21 setBackgroundAlpha:computedBackgroundViewAlpha];
      [(_UINavigationBarLayout *)v21 setShadowAlpha:0.0];
      if ((*&self->super._flags & 0x800) != 0)
      {
        [(_UIBarBackground *)self->super._backgroundView setLayout:v21];
        [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
      }

      [(UIView *)self->super._backgroundView layoutIfNeeded];
    }

    goto LABEL_26;
  }

LABEL_7:
  v6 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_26:
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

  v25 = fromLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v5 = toLayout;
  if (v25 != v5)
  {
    [(_UINavigationBarLayout *)v25 _navigationBarSlideTransitionWillBegin];
    [(_UINavigationBarLayout *)v5 _navigationBarSlideTransitionWillBegin];
    v6 = self->super._toLayout;
    if (v6 && v6->_clientWantsToPreserveSearchBarAcrossTransitions)
    {
      [(_UINavigationBarLayout *)v25 setAlpha:0.0];
      [(_UINavigationBarLayout *)v5 setAlpha:1.0];
      [(_UINavigationBarLayout *)v5 setFrame:[(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame]];
      [(_UINavigationBarLayout *)v5 layoutIfNeeded];
    }

    else
    {
      if (_searchBarHasAlphaTransitionForSlideTransitionLayouts(self->super._fromLayout, v6, 1, 0) || ![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
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
      showsScopeBar = [(UISearchBar *)v10 showsScopeBar];

      if (v8)
      {
        v12 = v8->_searchBar;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      showsScopeBar2 = [(UISearchBar *)v13 showsScopeBar];
      if (showsScopeBar != showsScopeBar2)
      {
        _scopeBar = [(_UINavigationBarLayout *)v5 _scopeBar];
        [_scopeBar setAlpha:0.0];
      }

      searchBarLayoutFrame = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
      {
        isRTL = [(_UINavigationBarTransitionContext *)self isRTL];
        v27.origin.x = searchBarLayoutFrame;
        v27.origin.y = v18;
        v27.size.width = v20;
        v27.size.height = v22;
        Width = CGRectGetWidth(v27);
        if (isRTL)
        {
          Width = -Width;
        }

        searchBarLayoutFrame = searchBarLayoutFrame + Width;
      }

      [(_UINavigationBarLayout *)v5 setFrame:searchBarLayoutFrame, v18, v20, v22];
    }

    [(_UINavigationBarLayout *)v5 layoutIfNeeded];
    [(_UINavigationBarLayout *)v25 layoutIfNeeded];
  }
}

- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  toPaletteCopy = toPalette;
  if (toPaletteCopy && toPaletteCopy != palette)
  {
    v14 = toPaletteCopy;
    [toPaletteCopy preferredHeight];
    v12 = v11;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = v12;
    v13 = x + CGRectGetWidth(v16);
    if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground]&& _paletteHasAlphaTransitionForSlideTransitionLayouts(self->super._fromLayout, self->super._toLayout, 1, 0))
    {
      [v14 setAlpha:0.0];
    }

    [v14 setFrame:{v13, y, width, v12}];
    [v14 layoutIfNeeded];
    [v14 setTransitioning:1];
    toPaletteCopy = v14;
  }
}

- (void)prepare
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPush;
  [(_UINavigationBarTransitionContext *)&v3 prepare];
  if ((*&self->super._flags & 0x20) != 0 && _shouldScaleLargeTitleToBackButton(self->super._fromLargeTitleLayout, self->super._toLargeTitleLayout, self->super._toContentLayout, 1))
  {
    self->super._largeTitleTransitionType = 1;
  }

  [(_UINavigationBarTransitionContextPush *)self _prepareContentView];
  [(_UINavigationBarTransitionContextPush *)self _prepareScaleTransition];
  [(_UINavigationBarTransitionContextPush *)self _prepareLargeTitleView];
  [(_UINavigationBarTransitionContextPush *)self _prepareBackgroundView];
  [(_UINavigationBarTransitionContextPush *)self _prepareSearchBar];
  [(_UINavigationBarTransitionContext *)self _preparePalettes];
}

- (void)_animateScaleTransition
{
  if ((*&self->super._flags & 0x20) != 0 && self->super._largeTitleTransitionType == 1)
  {
    toContentLayout = self->super._toContentLayout;
    v4 = self->super._fromLargeTitleLayout;
    v5 = toContentLayout;
    title = [(_UINavigationBarLargeTitleViewLayout *)v4 title];
    string = [title string];

    titleLabel = [(_UINavigationBarLargeTitleViewLayout *)v4 titleLabel];

    _applyStretchTransformForTitleViewAndBackButtonLayout(2, titleLabel, v5);
    if (_textDiffersBetweenLargeTitleAndBackButtonLayouts(self->super._fromLargeTitleLayout, self->super._toContentLayout))
    {
      _animationOptions = [(_UINavigationBarTransitionContext *)self _animationOptions];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64___UINavigationBarTransitionContextPush__animateScaleTransition__block_invoke;
      v19[3] = &unk_1E70F3590;
      v19[4] = self;
      [UIView animateKeyframesWithDuration:_animationOptions delay:v19 options:0 animations:0.0 completion:0.0];
    }

    backButton = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    if (!backButton)
    {
      backButton2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];

      if (!backButton2)
      {
        return;
      }

      backButton3 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout backButton];
      visualProvider = [backButton3 visualProvider];
      backIndicatorView = [visualProvider backIndicatorView];

      _animationOptions2 = [(_UINavigationBarTransitionContext *)self _animationOptions];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64___UINavigationBarTransitionContextPush__animateScaleTransition__block_invoke_4;
      v16[3] = &unk_1E70F35B8;
      v17 = backIndicatorView;
      selfCopy = self;
      backButton = backIndicatorView;
      [UIView animateKeyframesWithDuration:_animationOptions2 delay:v16 options:0 animations:0.0 completion:0.0];
    }
  }
}

- (void)_animateContentView
{
  v58[1] = *MEMORY[0x1E69E9840];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __60___UINavigationBarTransitionContextPush__animateContentView__block_invoke;
  v57[3] = &unk_1E70F7030;
  v57[4] = self;
  [UIView _animateInProcessAlongsideTransition:v57];
  toContentLayout = self->super._toContentLayout;
  if (toContentLayout)
  {
    x = self->_endingNewBackButtonFrame.origin.x;
    y = self->_endingNewBackButtonFrame.origin.y;
    width = self->_endingNewBackButtonFrame.size.width;
    height = self->_endingNewBackButtonFrame.size.height;
    backButton = [(_UINavigationBarContentViewLayout *)toContentLayout backButton];
    visualProvider = [backButton visualProvider];
    contentView = [visualProvider contentView];
    [contentView setFrame:{x, y, width, height}];
  }

  fromContentLayout = self->super._fromContentLayout;
  if (fromContentLayout)
  {
    backButton2 = [(_UINavigationBarContentViewLayout *)fromContentLayout backButton];
    backButton3 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout backButton];
    [backButton3 frame];
    v14 = CGRectGetWidth(v59);
    _updateBackButtonSpacingForButton(backButton2, (*&self->super._flags >> 1) & 1, -v14, 0.0);
  }

  titleControl = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout titleControl];
  v16 = +[UIView _hasInProcessProgressAnimator];
  if (titleControl)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  self->_unfreezeTitleControlOnFinish = v17;
  v18 = self->super._toContentLayout;
  if (v17)
  {
    v58[0] = titleControl;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [(_UINavigationBarContentViewLayout *)v18 unfreezeExceptViews:v19];
  }

  else
  {
    [(_UINavigationBarContentViewLayout *)self->super._toContentLayout unfreezeExceptViews:0];
  }

  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    v21 = fromLayout->_contentView;
    if (v21)
    {
      if ((*&self->super._flags & 0x20) != 0)
      {
        largeTitleTransitionType = self->super._largeTitleTransitionType;

        if (largeTitleTransitionType == 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      titleControl2 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout titleControl];
      [titleControl2 frame];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __60___UINavigationBarTransitionContextPush__animateContentView__block_invoke_3;
      v51[3] = &unk_1E70F7058;
      v53 = v24;
      v54 = v25;
      v55 = v26;
      v56 = v27;
      v51[4] = self;
      v52 = titleControl2;
      v28 = titleControl2;
      [UIView _animateInProcessAlongsideTransition:v51];
      _applyStretchTransformForTitleViewAndBackButtonLayouts(1, self->super._fromContentLayout, self->super._toContentLayout);
    }
  }

LABEL_17:
  [titleControl frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __60___UINavigationBarTransitionContextPush__animateContentView__block_invoke_4;
  v44[3] = &unk_1E70F7058;
  v37 = titleControl;
  v47 = v30;
  v48 = v32;
  v49 = v34;
  v50 = v36;
  v45 = v37;
  selfCopy = self;
  [UIView _animateInProcessAlongsideTransition:v44];
  v38 = self->super._fromLayout;
  if (v38)
  {
    v38 = v38->_contentView;
  }

  v39 = v38;

  if (v39)
  {
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [augmentedTitleView _performNavigationBarTransition:0 willBeDisplayed:0];
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentView;
  }

  v42 = toLayout;

  if (v42)
  {
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [augmentedTitleView2 _performNavigationBarTransition:0 willBeDisplayed:1];
  }
}

- (void)_animateLargeTitleView
{
  [(UIView *)self->super._largeTitleView bounds];
  if ((*&self->super._flags & 2) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  titleLabel = [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout titleLabel];
  [titleLabel center];
  v7 = v6;
  v9 = v8;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___UINavigationBarTransitionContextPush__animateLargeTitleView__block_invoke;
  v10[3] = &unk_1E70F7080;
  v10[4] = self;
  *&v10[5] = v4;
  v10[6] = v7;
  v10[7] = v9;
  [UIView _animateInProcessAlongsideTransition:v10];
}

- (void)_animateBackgroundView
{
  if (![(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
  {
    v28.receiver = self;
    v28.super_class = _UINavigationBarTransitionContextPush;
    [(_UINavigationBarTransitionContext *)&v28 _animateBackgroundView];
    return;
  }

  flags = self->super._flags;
  if ((flags & 0x200) != 0)
  {
    fromLayout = self->super._fromLayout;
    if (fromLayout)
    {
      LODWORD(fromLayout) = fromLayout->_chromelessTransitionProgress == 1.0;
    }
  }

  else
  {
    LODWORD(fromLayout) = 0;
  }

  if ((*&self->super._flags & 0x400) != 0)
  {
    toLayout = self->super._toLayout;
    if (toLayout)
    {
      LODWORD(toLayout) = toLayout->_chromelessTransitionProgress == 1.0;
    }
  }

  else
  {
    LODWORD(toLayout) = 0;
  }

  if ((fromLayout | toLayout))
  {
    if (fromLayout & 1 | ((toLayout & 1) == 0))
    {
      if (toLayout & 1 | ((fromLayout & 1) == 0))
      {
        return;
      }

      MaxX = [(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame];
      backgroundView = self->super._backgroundView;
    }

    else
    {
      backgroundViewLayoutFrame = [(_UINavigationBarLayout *)self->super._fromLayout backgroundViewLayoutFrame];
      v22 = backgroundViewLayoutFrame;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      if ((flags & 2) != 0)
      {
        MaxX = CGRectGetMaxX(*&backgroundViewLayoutFrame);
      }

      else
      {
        MinX = CGRectGetMinX(*&backgroundViewLayoutFrame);
        v30.origin.x = v22;
        v30.origin.y = v23;
        v30.size.width = v24;
        v30.size.height = v25;
        MaxX = MinX - CGRectGetWidth(v30);
      }

      backgroundView = self->super._backgroundView;
      v7 = v23;
      v8 = v24;
      v9 = v25;
    }

    [(UIView *)backgroundView setFrame:MaxX, v7, v8, v9];
  }

  else
  {
    [(UIView *)self->super._backgroundView setFrame:[(_UINavigationBarLayout *)self->super._toLayout backgroundViewLayoutFrame]];
    v11 = self->super._toLayout;
    if (v11)
    {
      v12 = 184;
      if ((*&self->super._flags & 4) == 0)
      {
        v12 = 192;
      }

      v11 = *(&v11->super.isa + v12);
    }

    v13 = v11;
    v14 = self->super._toLayout;
    computedBackgroundViewAlpha = 0.0;
    chromelessTransitionProgress = 0.0;
    if (v14)
    {
      chromelessTransitionProgress = v14->_chromelessTransitionProgress;
    }

    v27 = v13;
    [(_UINavigationBarLayout *)v13 setBackgroundTransitionProgress:chromelessTransitionProgress];
    v17 = self->super._toLayout;
    if (v17)
    {
      computedBackgroundViewAlpha = v17->_computedBackgroundViewAlpha;
    }

    [(_UINavigationBarLayout *)v27 setBackgroundAlpha:computedBackgroundViewAlpha];
    [(_UINavigationBarLayout *)v27 setShadowAlpha:1.0];
    if ((*&self->super._flags & 0x800) != 0)
    {
      [(_UIBarBackground *)self->super._backgroundView setLayout:v27];
      [(_UIBarBackground *)self->super._backgroundView transitionBackgroundViews];
    }
  }
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
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __58___UINavigationBarTransitionContextPush__animateSearchBar__block_invoke;
      v30[3] = &unk_1E70F5C08;
      v30[4] = self;
      v31 = v6;
      [UIView _animateInProcessAlongsideTransition:v30];
    }

    v7 = self->super._toLayout;
    if (!v7 || !v7->_clientWantsToPreserveSearchBarAcrossTransitions)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __58___UINavigationBarTransitionContextPush__animateSearchBar__block_invoke_2;
      v28[3] = &unk_1E70F35B8;
      v28[4] = self;
      v8 = v4;
      v29 = v8;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __58___UINavigationBarTransitionContextPush__animateSearchBar__block_invoke_3;
      v26[3] = &unk_1E70F3590;
      v9 = v6;
      v27 = v9;
      [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v28 partTwo:v26];
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
      showsScopeBar = [(UISearchBar *)v13 showsScopeBar];

      if (v11)
      {
        v15 = v11->_searchBar;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      showsScopeBar2 = [(UISearchBar *)v16 showsScopeBar];
      if (showsScopeBar != showsScopeBar2)
      {
        _scopeBar = [(_UINavigationBarLayout *)v8 _scopeBar];
        _scopeBar2 = [(_UINavigationBarLayout *)v9 _scopeBar];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __58___UINavigationBarTransitionContextPush__animateSearchBar__block_invoke_4;
        v23[3] = &unk_1E70F35B8;
        v24 = v8;
        v25 = v9;
        [UIView animateKeyframesWithDuration:0 delay:v23 options:0 animations:0.0 completion:0.0];
      }

      if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground])
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __58___UINavigationBarTransitionContextPush__animateSearchBar__block_invoke_7;
        v20[3] = &unk_1E70F5C08;
        v21 = v8;
        selfCopy = self;
        [UIView _animateInProcessAlongsideTransition:v20];
      }
    }
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
  v18 = toPaletteCopy;
  if (paletteCopy != toPaletteCopy)
  {
    if (paletteCopy)
    {
      v31.origin.x = v14;
      v31.origin.y = v13;
      v31.size.width = v12;
      v31.size.height = v11;
      v19 = CGRectGetWidth(v31);
      v20 = -v19;
      if (v18)
      {
        v32.origin.x = -v19;
        v32.origin.y = v13;
        v32.size.width = v12;
        v32.size.height = v11;
        v11 = CGRectGetHeight(v32);
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v21 = CGRectGetHeight(v33);
        if (v11 >= v21)
        {
          v11 = v21;
        }
      }

      if ([(_UINavigationBarTransitionContext *)self shouldSlideBarBackground]&& _paletteHasAlphaTransitionForSlideTransitionLayouts(self->super._fromLayout, self->super._toLayout, 0, 1))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __103___UINavigationBarTransitionContextPush__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
        aBlock[3] = &unk_1E70F3590;
        v30 = paletteCopy;
        v22 = _Block_copy(aBlock);
      }

      else
      {
        v22 = 0;
      }

      [paletteCopy setTransitioning:1];
      [paletteCopy setFrame:{v20, v13, v12, v11}];
      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = 0;
      if (toPaletteCopy)
      {
LABEL_11:
        [v18 setFrame:{x, y, width, height}];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __103___UINavigationBarTransitionContextPush__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke_2;
        v27 = &unk_1E70F3590;
        v28 = v18;
        v23 = _Block_copy(&v24);

LABEL_14:
        [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithoutOverlap:v22 partTwo:v23, v24, v25, v26, v27];

        goto LABEL_15;
      }
    }

    v23 = 0;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)animate
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPush;
  [(_UINavigationBarTransitionContext *)&v3 animate];
  [(_UINavigationBarTransitionContextPush *)self _animateContentView];
  [(_UINavigationBarTransitionContextPush *)self _animateScaleTransition];
  [(_UINavigationBarTransitionContextPush *)self _animateLargeTitleView];
  [(_UINavigationBarTransitionContextPush *)self _animateSearchBar];
  [(_UINavigationBarTransitionContext *)self _animatePalettes];
}

- (void)_finishWithFinalLayout:(id)layout invalidLayout:(id)invalidLayout
{
  v71[1] = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  invalidLayoutCopy = invalidLayout;
  [(_UINavigationBarLayout *)self->super._fromLayout updateLayout];
  [(_UINavigationBarLayout *)self->super._toLayout updateLayout];
  if (layoutCopy)
  {
    v8 = layoutCopy[20];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (invalidLayoutCopy)
  {
    v10 = invalidLayoutCopy[20];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (layoutCopy)
  {
    v12 = layoutCopy[21];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (invalidLayoutCopy)
  {
    v14 = invalidLayoutCopy[21];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  augmentedTitleView = [v9 augmentedTitleView];
  [augmentedTitleView _navigationBarTransitionCompleted:0 willBeDisplayed:1];

  augmentedTitleView2 = [v11 augmentedTitleView];
  [augmentedTitleView2 _navigationBarTransitionCompleted:0 willBeDisplayed:0];

  titleLabel = [v13 titleLabel];
  v66 = *(MEMORY[0x1E695EFD0] + 16);
  v68 = *MEMORY[0x1E695EFD0];
  v67 = v68;
  v69 = v66;
  v70 = *(MEMORY[0x1E695EFD0] + 32);
  v65 = v70;
  [titleLabel setTransform:&v68];

  titleControl = [v9 titleControl];
  titleLabel2 = [titleControl titleLabel];
  v68 = v67;
  v69 = v66;
  v70 = v65;
  [titleLabel2 setTransform:&v68];

  backButton = [v9 backButton];
  visualProvider = [backButton visualProvider];
  contentView = [visualProvider contentView];
  v68 = v67;
  v69 = v66;
  v70 = v65;
  [contentView setTransform:&v68];

  titleLabel3 = [v15 titleLabel];
  v68 = v67;
  v69 = v66;
  v70 = v65;
  [titleLabel3 setTransform:&v68];

  titleControl2 = [v11 titleControl];
  titleLabel4 = [titleControl2 titleLabel];
  v68 = v67;
  v69 = v66;
  v70 = v65;
  [titleLabel4 setTransform:&v68];

  backButton2 = [v11 backButton];
  visualProvider2 = [backButton2 visualProvider];
  contentView2 = [visualProvider2 contentView];
  v68 = v67;
  v69 = v66;
  v70 = v65;
  [contentView2 setTransform:&v68];

  [v11 setContentHidden:0];
  backButton3 = [v11 backButton];
  [backButton3 setBackButtonMaskEnabled:0];

  [v11 removeContent];
  [v15 removeContent];
  [(_UINavigationBarTransitionContext *)self _removeAllClippingViews];
  [v13 cleanupAfterLayoutTransitionCompleted];
  [v9 cleanupAfterLayoutTransitionCompleted];
  v31 = *(MEMORY[0x1E695F058] + 16);
  self->_endingNewTitleViewFrame.origin = *MEMORY[0x1E695F058];
  self->_endingNewTitleViewFrame.size = v31;
  [v9 setContentHidden:0];
  backButton4 = [v9 backButton];
  [backButton4 setBackButtonMaskEnabled:0];

  [(UIView *)self->super._largeTitleView setClipsToBounds:1];
  [(UIView *)self->super._contentView setClipsToBounds:1];
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v34 = toLayout;
  [(_UINavigationBarLayout *)v34 setAlpha:1.0];

  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v36 = fromLayout;
  [(_UINavigationBarLayout *)v36 setAlpha:1.0];

  searchBarLayoutFrame = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = self->super._toLayout;
  if (v44)
  {
    v44 = v44->_searchBar;
  }

  v45 = v44;
  [(_UINavigationBarLayout *)v45 setFrame:searchBarLayoutFrame, v39, v41, v43];

  searchBarLayoutFrame2 = [(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = self->super._fromLayout;
  if (v53)
  {
    v53 = v53->_searchBar;
  }

  v54 = v53;
  [(_UINavigationBarLayout *)v54 setFrame:searchBarLayoutFrame2, v48, v50, v52];

  if (layoutCopy)
  {
    v55 = 23;
    if ((*&self->super._flags & 4) == 0)
    {
      v55 = 24;
    }

    v56 = layoutCopy[v55];
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  [v57 setShadowAlpha:1.0];
  [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout unfreeze];
  if (self->_unfreezeTitleControlOnFinish)
  {
    toContentLayout = self->super._toContentLayout;
    titleControl3 = [(_UINavigationBarContentViewLayout *)toContentLayout titleControl];
    v71[0] = titleControl3;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
    [(_UINavigationBarContentViewLayout *)toContentLayout unfreezeOnlyViews:v60];
  }

  if (layoutCopy)
  {
    v61 = layoutCopy[30];
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;
  [v62 _navigationBarSlideTransitionDidEnd];

  if (invalidLayoutCopy)
  {
    v63 = invalidLayoutCopy[30];
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;
  [v64 _navigationBarSlideTransitionDidEnd];
}

- (void)cancel
{
  [(_UINavigationBarTransitionContextPush *)self _finishWithFinalLayout:self->super._fromLayout invalidLayout:self->super._toLayout];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPush;
  [(_UINavigationBarTransitionContext *)&v3 cancel];
}

- (void)complete
{
  [(_UINavigationBarTransitionContextPush *)self _finishWithFinalLayout:self->super._toLayout invalidLayout:self->super._fromLayout];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextPush;
  [(_UINavigationBarTransitionContext *)&v3 complete];
}

@end