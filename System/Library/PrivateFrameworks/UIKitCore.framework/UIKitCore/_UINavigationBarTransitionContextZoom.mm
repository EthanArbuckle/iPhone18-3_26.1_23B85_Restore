@interface _UINavigationBarTransitionContextZoom
- (id)prepareForInterruption;
- (void)_addTemporaryView:(id)view;
- (void)_animateBackgroundView;
- (void)_animateContentView;
- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame;
- (void)_animateLargeTitleView;
- (void)_animateSearchBar;
- (void)_cleanupZoomContent;
- (void)_finishWithFinalLayout:(id)layout invalidLayout:(id)invalidLayout;
- (void)_insertTemporaryBackgroundForLayout:(id)layout;
- (void)_prepareContentView;
- (void)_prepareLargeTitleView;
- (void)_prepareSearchBar;
- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextZoom

- (void)_addTemporaryView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    temporaryViews = self->_temporaryViews;
    v8 = viewCopy;
    if (!temporaryViews)
    {
      v6 = objc_opt_new();
      v7 = self->_temporaryViews;
      self->_temporaryViews = v6;

      temporaryViews = self->_temporaryViews;
    }

    [(NSMutableArray *)temporaryViews addObject:v8];
    viewCopy = v8;
  }
}

- (void)_insertTemporaryBackgroundForLayout:(id)layout
{
  layoutCopy = layout;
  if ((*&self->super._flags & 0x800) != 0)
  {
    v19 = layoutCopy;
    v5 = objc_opt_new();
    backgroundViewLayoutFrame = [(_UINavigationBarLayout *)v19 backgroundViewLayoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self->super._navigationBar frame];
    v14 = v13;
    v21.origin.x = backgroundViewLayoutFrame;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    v22 = CGRectOffset(v21, 0.0, v14);
    [v5 setFrame:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    [v5 setTopAligned:{-[_UIBarBackground topAligned](self->super._backgroundView, "topAligned")}];
    if (v19)
    {
      v15 = 23;
      if ((*&self->super._flags & 4) == 0)
      {
        v15 = 24;
      }

      v16 = v19[v15];
    }

    else
    {
      v16 = 0.0;
    }

    v17 = *&v16;
    if (v19)
    {
      [v17 setBackgroundTransitionProgress:v19[36]];
      v18 = v19[37];
    }

    else
    {
      [v17 setBackgroundTransitionProgress:0.0];
      v18 = 0.0;
    }

    [v17 setBackgroundAlpha:v18];
    [v5 setLayout:v17];
    [v5 transitionBackgroundViewsAnimated:0];
    [(UIView *)self->super._transitionOverlayView insertSubview:v5 atIndex:0];
    [(_UINavigationBarTransitionContextZoom *)self _addTemporaryView:v5];

    layoutCopy = v19;
  }
}

- (void)_prepareContentView
{
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentView;
  }

  v4 = toLayout;

  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_contentView;
  }

  v6 = fromLayout;

  toContentLayout = self->super._toContentLayout;
  v8 = self->super._toLayout;
  if (v8)
  {
    v8 = v8->_contentView;
  }

  v9 = v8;
  [(_UINavigationBarContentViewLayout *)toContentLayout setActive:1 contentView:v9];

  [(UIView *)self->super._contentView layoutIfNeeded];
  [(_UINavigationBarContentViewLayout *)self->super._toContentLayout setContentHidden:1];
  if (v6)
  {
    [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout setBackButtonHidden:0 titleLabelHidden:(*&self->super._flags >> 5) & 1 titleViewHidden:0 barsHidden:0];
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [augmentedTitleView _navigationBarTransitionWillBegin:3 willBeDisplayed:0];
  }

  if (v4)
  {
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [augmentedTitleView2 _navigationBarTransitionWillBegin:3 willBeDisplayed:1];
  }
}

- (void)_prepareLargeTitleView
{
  flags = self->super._flags;
  fromLargeTitleLayout = self->super._fromLargeTitleLayout;
  if ((flags & 0x20) != 0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)fromLargeTitleLayout layoutViewsWithOffset:1 useRestingTitleHeight:0.0, 0.0];
    fromLargeTitleLayout = self->super._fromLargeTitleLayout;
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  [(_UINavigationBarLargeTitleViewLayout *)fromLargeTitleLayout setContentHidden:v5];
  if ((*&self->super._flags & 0x40) != 0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout layoutViewsWithOffset:1 useRestingTitleHeight:0.0, 0.0];
  }

  toLargeTitleLayout = self->super._toLargeTitleLayout;

  [(_UINavigationBarLargeTitleViewLayout *)toLargeTitleLayout setContentHidden:1];
}

- (void)_prepareSearchBar
{
  p_fromLayout = &self->super._fromLayout;
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v17 = fromLayout;
  p_toLayout = &self->super._toLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v7 = toLayout;
  if (v17 != v7)
  {
    if (*p_fromLayout && (*p_fromLayout)->_hasInlineSearchBar)
    {

      v17 = 0;
    }

    if (*p_toLayout && *(*p_toLayout + 114) == 1)
    {

      v7 = 0;
    }

    if (!v17)
    {
      [(UIView *)self->super._navigationBar bounds];
      MaxY = CGRectGetMaxY(v19);
      v20.origin.x = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
      x = v20.origin.x;
      width = v20.size.width;
      height = v20.size.height;
      v12 = v20.origin.y + MaxY - CGRectGetMaxY(v20);
      [(_UINavigationBarLayout *)v7 setAlpha:0.0];
      [(_UINavigationBarLayout *)v7 setFrame:x, v12, width, height];
    }

    if (!*p_toLayout || *(*p_toLayout + 115) != 1)
    {
      traitCollection = [(UIView *)self->super._contentView traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      v14 = 0.0;
      if (userInterfaceIdiom != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    [(_UINavigationBarLayout *)v17 setAlpha:0.0];
    if (*p_toLayout)
    {
      v13 = *(*p_toLayout + 114);
      if (*p_fromLayout)
      {
        v14 = 1.0;
        p_toLayout = p_fromLayout;
        if (v13 != (*p_fromLayout)->_hasInlineSearchBar)
        {
          goto LABEL_22;
        }

LABEL_21:
        [(_UINavigationBarLayout *)v7 setAlpha:v14];
        [(_UINavigationBarLayout *)v7 setFrame:[(_UINavigationBarLayout *)*p_toLayout searchBarLayoutFrame]];
        [(_UINavigationBarLayout *)v7 layoutIfNeeded];
        goto LABEL_22;
      }

      v14 = 1.0;
    }

    else
    {
      v14 = 1.0;
      if (!*p_fromLayout)
      {
        p_toLayout = p_fromLayout;
        goto LABEL_21;
      }

      LOBYTE(v13) = (*p_fromLayout)->_hasInlineSearchBar;
    }

    p_toLayout = p_fromLayout;
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)_prepareTransitionFromPalette:(id)palette toPalette:(id)toPalette toPaletteFrame:(CGRect)frame
{
  if (toPalette && toPalette != palette)
  {
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    toPaletteCopy = toPalette;
    [toPaletteCopy setFrame:{x, y, width, 0.0}];
    [toPaletteCopy layoutIfNeeded];
    [toPaletteCopy setTransitioning:1];
  }
}

- (void)prepare
{
  v11.receiver = self;
  v11.super_class = _UINavigationBarTransitionContextZoom;
  [(_UINavigationBarTransitionContext *)&v11 prepare];
  fromLayout = self->super._fromLayout;
  if (*&self->super._flags)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48___UINavigationBarTransitionContextZoom_prepare__block_invoke;
    v10[3] = &unk_1E70F70D0;
    v10[4] = self;
    v6 = v10;
    v4 = fromLayout;
  }

  else
  {
    [(_UINavigationBarTransitionContextZoom *)self _insertTemporaryBackgroundForLayout:fromLayout];
    [(UIView *)self->super._navigationBar frame];
    v4 = self->super._fromLayout;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48___UINavigationBarTransitionContextZoom_prepare__block_invoke_2;
    v9[3] = &unk_1E70F70F8;
    v9[5] = v5;
    v9[4] = self;
    v6 = v9;
  }

  [(_UINavigationBarLayout *)v4 iterateLayoutViews:v6];
  [(UIView *)self->super._navigationBar bounds];
  [(_UINavigationBarLayout *)self->super._toLayout setLayoutSize:v7, v8];
  [(_UINavigationBarTransitionContextZoom *)self _prepareContentView];
  [(_UINavigationBarTransitionContextZoom *)self _prepareLargeTitleView];
  [(_UINavigationBarTransitionContextZoom *)self _prepareSearchBar];
  [(_UINavigationBarTransitionContext *)self _preparePalettes];
}

- (void)_animateContentView
{
  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_contentView;
  }

  v4 = fromLayout;

  if (v4)
  {
    [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout setContentHidden:1];
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [augmentedTitleView _performNavigationBarTransition:3 willBeDisplayed:0];
  }

  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_contentView;
  }

  v7 = toLayout;

  if (v7)
  {
    [(_UINavigationBarContentViewLayout *)self->super._toContentLayout setBackButtonHidden:0 titleLabelHidden:(*&self->super._flags >> 6) & 1 titleViewHidden:0 barsHidden:0];
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [augmentedTitleView2 _performNavigationBarTransition:3 willBeDisplayed:1];
  }
}

- (void)_animateLargeTitleView
{
  flags = self->super._flags;
  if ((flags & 0x20) != 0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout setContentHidden:1];
    flags = self->super._flags;
  }

  if ((flags & 0x40) != 0)
  {
    toLargeTitleLayout = self->super._toLargeTitleLayout;

    [(_UINavigationBarLargeTitleViewLayout *)toLargeTitleLayout setContentHidden:0];
  }
}

- (void)_animateSearchBar
{
  fromLayout = self->super._fromLayout;
  if (fromLayout && (v4 = fromLayout->_searchBar) != 0)
  {
  }

  else
  {
    toLayout = self->super._toLayout;
    if (toLayout)
    {
      toLayout = toLayout->_searchBar;
    }

    v6 = toLayout;

    if (!v6)
    {
      return;
    }
  }

  v7 = self->super._toLayout;
  if (v7)
  {
    v7 = v7->_searchBar;
  }

  v8 = v7;

  if (!v8)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke;
    v30[3] = &unk_1E70F3590;
    v30[4] = self;
    v11 = v30;
    selfCopy4 = self;
    v13 = 0;
LABEL_18:
    [(_UINavigationBarTransitionContext *)selfCopy4 _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v11 partTwo:v13, v19, v20, v21, v22, selfCopy2, v24, v25, v26, v27, selfCopy3];
    return;
  }

  v9 = self->super._fromLayout;
  if (v9)
  {
    v10 = v9->_searchBar;
    if (v10)
    {

LABEL_17:
      selfCopy2 = self;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_3;
      v27 = &unk_1E70F3590;
      selfCopy3 = self;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_4;
      v22 = &unk_1E70F3590;
      v11 = &v24;
      v13 = &v19;
      selfCopy4 = self;
      goto LABEL_18;
    }
  }

  v14 = self->super._toLayout;
  if (v14)
  {
    v14 = v14->_contentView;
  }

  v15 = v14;

  if (v15)
  {
    goto LABEL_17;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_2;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  traitCollection = [(UIView *)self->super._contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v16[2](v16);
  }

  else
  {
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:0 partTwo:v16];
  }
}

- (void)_animateFromPalette:(id)palette fromPaletteFrame:(CGRect)frame toPalette:(id)toPalette toPaletteFrame:(CGRect)paletteFrame
{
  height = paletteFrame.size.height;
  width = paletteFrame.size.width;
  y = paletteFrame.origin.y;
  x = paletteFrame.origin.x;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  if (paletteCopy != toPaletteCopy)
  {
    if (paletteCopy)
    {
      [paletteCopy setTransitioning:1];
      [paletteCopy setFrame:{v13, v12, v11, 0.0}];
    }

    if (toPaletteCopy)
    {
      [toPaletteCopy setFrame:{x, y, width, height}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __103___UINavigationBarTransitionContextZoom__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      v19 = toPaletteCopy;
      v17 = _Block_copy(aBlock);
    }

    else
    {
      v17 = 0;
    }

    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithoutOverlap:0 partTwo:v17];
  }
}

- (void)_animateBackgroundView
{
  if ((*&self->super._flags & 1) == 0)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __63___UINavigationBarTransitionContextZoom__animateBackgroundView__block_invoke;
    v2[3] = &unk_1E70F3590;
    v2[4] = self;
    [UIView performWithoutAnimation:v2];
  }
}

- (void)animate
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTransitionContextZoom;
  [(_UINavigationBarTransitionContext *)&v4 animate];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48___UINavigationBarTransitionContextZoom_animate__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
}

- (void)_finishWithFinalLayout:(id)layout invalidLayout:(id)invalidLayout
{
  layoutCopy = layout;
  toLayout = self->super._toLayout;
  invalidLayoutCopy = invalidLayout;
  if (toLayout)
  {
    searchBar = toLayout->_searchBar;
  }

  else
  {
    searchBar = 0;
  }

  v10 = searchBar;
  [(UIView *)v10 setAlpha:1.0];

  fromLayout = self->super._fromLayout;
  if (fromLayout)
  {
    fromLayout = fromLayout->_searchBar;
  }

  v12 = fromLayout;
  [(_UINavigationBarLayout *)v12 setAlpha:1.0];

  searchBarLayoutFrame = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = self->super._toLayout;
  if (v20)
  {
    v20 = v20->_searchBar;
  }

  v21 = v20;
  [(_UINavigationBarLayout *)v21 setFrame:searchBarLayoutFrame, v15, v17, v19];

  searchBarLayoutFrame2 = [(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = self->super._fromLayout;
  if (v29)
  {
    v29 = v29->_searchBar;
  }

  v30 = v29;
  [(_UINavigationBarLayout *)v30 setFrame:searchBarLayoutFrame2, v24, v26, v28];

  augmentedTitleView = [layoutCopy augmentedTitleView];
  [augmentedTitleView _navigationBarTransitionCompleted:3 willBeDisplayed:1];

  augmentedTitleView2 = [invalidLayoutCopy augmentedTitleView];
  [augmentedTitleView2 _navigationBarTransitionCompleted:3 willBeDisplayed:0];

  titleControl = [layoutCopy titleControl];
  titleLabel = [titleControl titleLabel];
  v44 = *(MEMORY[0x1E695EFD0] + 16);
  v46 = *MEMORY[0x1E695EFD0];
  v45 = v46;
  v47 = v44;
  v48 = *(MEMORY[0x1E695EFD0] + 32);
  v43 = v48;
  [titleLabel setTransform:&v46];

  backButton = [layoutCopy backButton];
  visualProvider = [backButton visualProvider];
  contentView = [visualProvider contentView];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [contentView setTransform:&v46];

  titleControl2 = [invalidLayoutCopy titleControl];
  titleLabel2 = [titleControl2 titleLabel];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [titleLabel2 setTransform:&v46];

  backButton2 = [invalidLayoutCopy backButton];
  visualProvider2 = [backButton2 visualProvider];
  contentView2 = [visualProvider2 contentView];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [contentView2 setTransform:&v46];

  [invalidLayoutCopy setContentHidden:0];
  [invalidLayoutCopy removeContent];

  [layoutCopy setContentHidden:0];
  if ((*&self->super._flags & 0x40) != 0)
  {
    [layoutCopy setBackButtonHidden:0 titleLabelHidden:1 titleViewHidden:0 barsHidden:0];
    [(_UINavigationBarContentView *)self->super._contentView setInlineTitleViewAlpha:0.0];
  }

  [layoutCopy cleanupAfterLayoutTransitionCompleted];
}

- (id)prepareForInterruption
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarTransitionContextZoom;
  prepareForInterruption = [(_UINavigationBarTransitionContext *)&v9 prepareForInterruption];
  self->_isDeferringCleanup = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UINavigationBarTransitionContextZoom_prepareForInterruption__block_invoke;
  v7[3] = &unk_1E70F4A50;
  v7[4] = self;
  v8 = prepareForInterruption;
  v4 = prepareForInterruption;
  v5 = _Block_copy(v7);

  return v5;
}

- (void)_cleanupZoomContent
{
  v13 = *MEMORY[0x1E69E9840];
  [(_UINavigationBarLayout *)self->super._fromLayout iterateLayoutViews:?];
  [(_UINavigationBarLayout *)self->super._toLayout iterateLayoutViews:?];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_temporaryViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_temporaryViews removeAllObjects];
}

- (void)cancel
{
  [(_UINavigationBarTransitionContextZoom *)self _finishWithFinalLayout:self->super._fromContentLayout invalidLayout:self->super._toContentLayout];
  [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout removeContent];
  if (!self->_isDeferringCleanup)
  {
    [(_UINavigationBarTransitionContextZoom *)self _cleanupZoomContent];
  }

  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextZoom;
  [(_UINavigationBarTransitionContext *)&v3 cancel];
}

- (void)complete
{
  [(_UINavigationBarTransitionContextZoom *)self _finishWithFinalLayout:self->super._toContentLayout invalidLayout:self->super._fromContentLayout];
  [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout removeContent];
  if (!self->_isDeferringCleanup)
  {
    [(_UINavigationBarTransitionContextZoom *)self _cleanupZoomContent];
  }

  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextZoom;
  [(_UINavigationBarTransitionContext *)&v3 complete];
}

@end