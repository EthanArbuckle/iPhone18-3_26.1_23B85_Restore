@interface _UINavigationBarTransitionContextCrossfade
- (void)_animateContentView;
- (void)_animateFromPalette:(id)a3 fromPaletteFrame:(CGRect)a4 toPalette:(id)a5 toPaletteFrame:(CGRect)a6;
- (void)_animateLargeTitleView;
- (void)_animateSearchBar;
- (void)_finishWithFinalLayout:(id)a3 invalidLayout:(id)a4;
- (void)_prepareContentView;
- (void)_prepareLargeTitleView;
- (void)_prepareSearchBar;
- (void)_prepareTransitionFromPalette:(id)a3 toPalette:(id)a4 toPaletteFrame:(CGRect)a5;
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UINavigationBarTransitionContextCrossfade

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
    v10 = [(_UINavigationBarContentViewLayout *)self->super._fromContentLayout augmentedTitleView];
    [v10 _navigationBarTransitionWillBegin:2 willBeDisplayed:0];
  }

  if (v4)
  {
    v11 = [(_UINavigationBarContentViewLayout *)self->super._toContentLayout augmentedTitleView];
    [v11 _navigationBarTransitionWillBegin:2 willBeDisplayed:1];
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

  v15 = fromLayout;
  p_toLayout = &self->super._toLayout;
  toLayout = self->super._toLayout;
  if (toLayout)
  {
    toLayout = toLayout->_searchBar;
  }

  v7 = toLayout;
  if (v15 != v7)
  {
    if (*p_fromLayout && *(*p_fromLayout + 114) == 1)
    {

      v15 = 0;
    }

    if (*p_toLayout && (*p_toLayout)->_hasInlineSearchBar)
    {

      v7 = 0;
    }

    if (!v15)
    {
      [(UIView *)self->super._navigationBar bounds];
      MaxY = CGRectGetMaxY(v17);
      v18.origin.x = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
      x = v18.origin.x;
      width = v18.size.width;
      height = v18.size.height;
      v12 = v18.origin.y + MaxY - CGRectGetMaxY(v18);
      [(_UINavigationBarLayout *)v7 setAlpha:0.0];
      [(_UINavigationBarLayout *)v7 setFrame:x, v12, width, height];
    }

    v13 = 0.0;
    if (!*p_toLayout || !(*p_toLayout)->_clientWantsToPreserveSearchBarAcrossTransitions)
    {
      p_fromLayout = &self->super._toLayout;
      goto LABEL_21;
    }

    [(_UINavigationBarLayout *)v15 setAlpha:0.0];
    if (*p_toLayout)
    {
      hasInlineSearchBar = (*p_toLayout)->_hasInlineSearchBar;
      if (*p_fromLayout)
      {
        v13 = 1.0;
        if (hasInlineSearchBar != *(*p_fromLayout + 114))
        {
          goto LABEL_22;
        }

LABEL_21:
        [(_UINavigationBarLayout *)v7 setAlpha:v13];
        [(_UINavigationBarLayout *)v7 setFrame:[(_UINavigationBarLayout *)*p_fromLayout searchBarLayoutFrame]];
        [(_UINavigationBarLayout *)v7 layoutIfNeeded];
        goto LABEL_22;
      }

      v13 = 1.0;
      if ((hasInlineSearchBar & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = 1.0;
      if (!*p_fromLayout || (*(*p_fromLayout + 114) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (void)_prepareTransitionFromPalette:(id)a3 toPalette:(id)a4 toPaletteFrame:(CGRect)a5
{
  if (a4 && a4 != a3)
  {
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v9 = a4;
    [v9 setFrame:{x, y, width, 0.0}];
    [v9 layoutIfNeeded];
    [v9 setTransitioning:1];
  }
}

- (void)prepare
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTransitionContextCrossfade;
  [(_UINavigationBarTransitionContext *)&v5 prepare];
  [(UIView *)self->super._navigationBar bounds];
  [(_UINavigationBarLayout *)self->super._toLayout setLayoutSize:v3, v4];
  [(_UINavigationBarTransitionContextCrossfade *)self _prepareContentView];
  [(_UINavigationBarTransitionContextCrossfade *)self _prepareLargeTitleView];
  [(_UINavigationBarTransitionContextCrossfade *)self _prepareSearchBar];
  [(_UINavigationBarTransitionContext *)self _preparePalettes];
}

- (void)_animateContentView
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

  if (v6 | v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___UINavigationBarTransitionContextCrossfade__animateContentView__block_invoke;
    v9[3] = &unk_1E70F35E0;
    v10 = v6 != 0;
    v9[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65___UINavigationBarTransitionContextCrossfade__animateContentView__block_invoke_2;
    v7[3] = &unk_1E70F35E0;
    v8 = v4 != 0;
    v7[4] = self;
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v9 partTwo:v7];
  }
}

- (void)_animateLargeTitleView
{
  if ((*&self->super._flags & 0x60) != 0)
  {
    v5[5] = v2;
    v5[6] = v3;
    v4[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68___UINavigationBarTransitionContextCrossfade__animateLargeTitleView__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68___UINavigationBarTransitionContextCrossfade__animateLargeTitleView__block_invoke_2;
    v4[3] = &unk_1E70F3590;
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v5 partTwo:v4];
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
    v30[2] = __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke;
    v30[3] = &unk_1E70F3590;
    v30[4] = self;
    v11 = v30;
    v12 = self;
    v13 = 0;
LABEL_18:
    [(_UINavigationBarTransitionContext *)v12 _animateAsTwoPartsWithOverlapIfNecessaryPartOne:v11 partTwo:v13, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28];
    return;
  }

  v9 = self->super._fromLayout;
  if (v9)
  {
    v10 = v9->_searchBar;
    if (v10)
    {

LABEL_17:
      v23 = self;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_3;
      v27 = &unk_1E70F3590;
      v28 = self;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_4;
      v22 = &unk_1E70F3590;
      v11 = &v24;
      v13 = &v19;
      v12 = self;
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
  aBlock[2] = __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_2;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  v17 = [(UIView *)self->super._contentView traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    v16[2](v16);
  }

  else
  {
    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithOverlapIfNecessaryPartOne:0 partTwo:v16];
  }
}

- (void)_animateFromPalette:(id)a3 fromPaletteFrame:(CGRect)a4 toPalette:(id)a5 toPaletteFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v15 = a3;
  v16 = a5;
  if (v15 != v16)
  {
    if (v15)
    {
      [v15 setTransitioning:1];
      [v15 setFrame:{v13, v12, v11, 0.0}];
    }

    if (v16)
    {
      [v16 setFrame:{x, y, width, height}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108___UINavigationBarTransitionContextCrossfade__animateFromPalette_fromPaletteFrame_toPalette_toPaletteFrame___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      v19 = v16;
      v17 = _Block_copy(aBlock);
    }

    else
    {
      v17 = 0;
    }

    [(_UINavigationBarTransitionContext *)self _animateAsTwoPartsWithoutOverlap:0 partTwo:v17];
  }
}

- (void)animate
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextCrossfade;
  [(_UINavigationBarTransitionContext *)&v3 animate];
  [(_UINavigationBarTransitionContextCrossfade *)self _animateContentView];
  [(_UINavigationBarTransitionContextCrossfade *)self _animateLargeTitleView];
  [(_UINavigationBarTransitionContextCrossfade *)self _animateSearchBar];
  [(_UINavigationBarTransitionContext *)self _animatePalettes];
}

- (void)_finishWithFinalLayout:(id)a3 invalidLayout:(id)a4
{
  v6 = a3;
  toLayout = self->super._toLayout;
  v8 = a4;
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

  v13 = [(_UINavigationBarLayout *)self->super._toLayout searchBarLayoutFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = self->super._toLayout;
  if (v20)
  {
    v20 = v20->_searchBar;
  }

  v21 = v20;
  [(_UINavigationBarLayout *)v21 setFrame:v13, v15, v17, v19];

  v22 = [(_UINavigationBarLayout *)self->super._fromLayout searchBarLayoutFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = self->super._fromLayout;
  if (v29)
  {
    v29 = v29->_searchBar;
  }

  v30 = v29;
  [(_UINavigationBarLayout *)v30 setFrame:v22, v24, v26, v28];

  v31 = [v6 augmentedTitleView];
  [v31 _navigationBarTransitionCompleted:2 willBeDisplayed:1];

  v32 = [v8 augmentedTitleView];
  [v32 _navigationBarTransitionCompleted:2 willBeDisplayed:0];

  v33 = [v6 titleControl];
  v34 = [v33 titleLabel];
  v44 = *(MEMORY[0x1E695EFD0] + 16);
  v46 = *MEMORY[0x1E695EFD0];
  v45 = v46;
  v47 = v44;
  v48 = *(MEMORY[0x1E695EFD0] + 32);
  v43 = v48;
  [v34 setTransform:&v46];

  v35 = [v6 backButton];
  v36 = [v35 visualProvider];
  v37 = [v36 contentView];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [v37 setTransform:&v46];

  v38 = [v8 titleControl];
  v39 = [v38 titleLabel];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [v39 setTransform:&v46];

  v40 = [v8 backButton];
  v41 = [v40 visualProvider];
  v42 = [v41 contentView];
  v46 = v45;
  v47 = v44;
  v48 = v43;
  [v42 setTransform:&v46];

  [v8 setContentHidden:0];
  [v8 removeContent];

  [v6 setContentHidden:0];
  if ((*&self->super._flags & 0x40) != 0)
  {
    [v6 setBackButtonHidden:0 titleLabelHidden:1 titleViewHidden:0 barsHidden:0];
    [(_UINavigationBarContentView *)self->super._contentView setInlineTitleViewAlpha:0.0];
  }

  [v6 cleanupAfterLayoutTransitionCompleted];
}

- (void)cancel
{
  [(_UINavigationBarTransitionContextCrossfade *)self _finishWithFinalLayout:self->super._fromContentLayout invalidLayout:self->super._toContentLayout];
  [(_UINavigationBarLargeTitleViewLayout *)self->super._toLargeTitleLayout removeContent];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextCrossfade;
  [(_UINavigationBarTransitionContext *)&v3 cancel];
}

- (void)complete
{
  [(_UINavigationBarTransitionContextCrossfade *)self _finishWithFinalLayout:self->super._toContentLayout invalidLayout:self->super._fromContentLayout];
  [(_UINavigationBarLargeTitleViewLayout *)self->super._fromLargeTitleLayout removeContent];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTransitionContextCrossfade;
  [(_UINavigationBarTransitionContext *)&v3 complete];
}

@end