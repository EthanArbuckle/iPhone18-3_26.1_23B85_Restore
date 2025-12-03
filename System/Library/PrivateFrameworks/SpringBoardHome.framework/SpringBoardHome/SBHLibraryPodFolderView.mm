@interface SBHLibraryPodFolderView
- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate;
- (CGPoint)_restingContentOffsetForScrollOffset:(CGPoint)offset withVelocity:(CGPoint)velocity;
- (CGPoint)scrollingStartOffset;
- (CGRect)_frameForIconListAtIndex:(unint64_t)index;
- (CGRect)_iconListFrameForPageRect:(CGRect)rect atIndex:(unint64_t)index;
- (CGSize)_iconListViewSize;
- (CGSize)_iconSpacingForIconListView;
- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)bar;
- (SBHLibraryPodFolderView)initWithConfiguration:(id)configuration;
- (UIEdgeInsets)_scrollingInteractionVisibleInsets;
- (UINavigationBar)navigationBar;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)_pageWidth;
- (void)_configureIconListView:(id)view;
- (void)_configureScrollingInteraction:(id)interaction;
- (void)_enumerateScrollableIconViewsUsingBlock:(id)block;
- (void)_layoutNavBarAndContentInsets;
- (void)_layoutSubviews;
- (void)_orientationDidChange:(int64_t)change;
- (void)_positionNavBarAbuttingListView;
- (void)_updateCycleIdleUntil:(unint64_t)until;
- (void)_updateIconListContainment:(id)containment atIndex:(unint64_t)index;
- (void)_updateScrollViewContentSize;
- (void)_updateVisibleRowRange;
- (void)_zeroFirstListViewOriginIfNeeded;
- (void)didMoveToWindow;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginScrolling:(id)scrolling;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCentersContentIfPossible:(BOOL)possible;
- (void)setFolder:(id)folder;
- (void)setHidesFeatherBlur:(BOOL)blur;
- (void)setNeedsLayout;
@end

@implementation SBHLibraryPodFolderView

- (SBHLibraryPodFolderView)initWithConfiguration:(id)configuration
{
  v12.receiver = self;
  v12.super_class = SBHLibraryPodFolderView;
  v3 = [(SBFolderView *)&v12 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 sbh_createGlassGroup];
    v5 = objc_alloc(MEMORY[0x1E698E808]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    podScrollView = v4->_podScrollView;
    v4->_podScrollView = v6;

    [(BSUIScrollView *)v4->_podScrollView _setLayoutDebuggingIdentifier:@"podScrollView"];
    [(BSUIScrollView *)v4->_podScrollView setAlwaysBounceVertical:1];
    [(BSUIScrollView *)v4->_podScrollView setContentInsetAdjustmentBehavior:3];
    [(BSUIScrollView *)v4->_podScrollView setClipsToBounds:0];
    [(BSUIScrollView *)v4->_podScrollView setDelegate:v4];
    [(BSUIScrollView *)v4->_podScrollView setDelaysContentTouches:0];
    scalingView = [(SBFolderView *)v4 scalingView];
    [scalingView addSubview:v4->_podScrollView];

    folder = [(SBFolderView *)v4 folder];
    firstList = [folder firstList];
    [firstList addListObserver:v4];

    [(SBHLibraryPodFolderView *)v4 setAccessibilityIdentifier:@"dewey-pod-expanded"];
  }

  return v4;
}

- (void)_configureScrollingInteraction:(id)interaction
{
  interactionCopy = interaction;
  [interactionCopy setConsidersFolderIconTargets:{-[SBHLibraryPodFolderView isLibraryPodCategoryFolderView](self, "isLibraryPodCategoryFolderView") ^ 1}];
}

- (void)setFolder:(id)folder
{
  folderCopy = folder;
  folder = [(SBFolderView *)self folder];
  firstList = [folder firstList];
  [firstList removeListObserver:self];

  v9.receiver = self;
  v9.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v9 setFolder:folderCopy];

  folder2 = [(SBFolderView *)self folder];
  firstList2 = [folder2 firstList];
  [firstList2 addListObserver:self];
}

- (UINavigationBar)navigationBar
{
  navBar = self->_navBar;
  if (!navBar)
  {
    v4 = [SBHFeatherBlurNavigationBar alloc];
    v5 = [(SBHFeatherBlurNavigationBar *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_navBar;
    self->_navBar = v5;

    [(SBHFeatherBlurNavigationBar *)self->_navBar setDelegate:self];
    [(SBHFeatherBlurNavigationBar *)self->_navBar setHidesFeatherBlur:self->_hidesFeatherBlur];
    v7 = self->_navBar;
    [(SBHLibraryPodFolderView *)self _layoutMarginsforNavigationBar:v7];
    [(SBHFeatherBlurNavigationBar *)v7 setDirectionalLayoutMargins:?];
    scalingView = [(SBFolderView *)self scalingView];
    [scalingView addSubview:self->_navBar];

    navBar = self->_navBar;
  }

  return navBar;
}

- (void)setCentersContentIfPossible:(BOOL)possible
{
  if (self->_centersContentIfPossible != possible)
  {
    self->_centersContentIfPossible = possible;
    [(SBHLibraryPodFolderView *)self setNeedsLayout];
  }
}

- (void)setHidesFeatherBlur:(BOOL)blur
{
  if (self->_hidesFeatherBlur != blur)
  {
    self->_hidesFeatherBlur = blur;
    [(SBHFeatherBlurNavigationBar *)self->_navBar setHidesFeatherBlur:?];
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v3 setNeedsLayout];
  [(SBHFeatherBlurNavigationBar *)self->_navBar setNeedsLayout];
}

- (void)_layoutSubviews
{
  [(SBHLibraryPodFolderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BSUIScrollView *)self->_podScrollView frame];
  if ((BSRectEqualToRect() & 1) == 0)
  {
    [(BSUIScrollView *)self->_podScrollView setFrame:v4, v6, v8, v10];
  }

  [(SBHLibraryPodFolderView *)self _updateScrollViewContentSize];
  [(SBHLibraryPodFolderView *)self _zeroFirstListViewOriginIfNeeded];
  if (self->_navBar)
  {

    [(SBHLibraryPodFolderView *)self _layoutNavBarAndContentInsets];
  }
}

- (void)_layoutNavBarAndContentInsets
{
  v73 = *MEMORY[0x1E69E9840];
  [(BSUIScrollView *)self->_podScrollView contentOffset];
  [(BSUIScrollView *)self->_podScrollView adjustedContentInset];
  v3 = BSFloatLessThanOrEqualToFloat();
  [(SBHFeatherBlurNavigationBar *)self->_navBar sb_minimumNavbarHeight];
  self->_minimumNavBarHeight = v4;
  [(SBHFeatherBlurNavigationBar *)self->_navBar sb_maximumNavbarHeight];
  self->_maximumNavBarHeight = v5;
  safeAreaLayoutGuide = [(SBHLibraryPodFolderView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(SBHLibraryPodFolderView *)self _scrollViewContentSize];
  v16 = v15;
  v74.origin.x = v8;
  v74.origin.y = v10;
  v74.size.width = v12;
  v74.size.height = v14;
  CGRectGetWidth(v74);
  v17 = v16 + self->_minimumNavBarHeight;
  v75.origin.x = v8;
  v75.origin.y = v10;
  v75.size.width = v12;
  v75.size.height = v14;
  MinY = CGRectGetMinY(v75);
  v18 = MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 24);
  v76.origin.x = v8;
  v76.origin.y = v10;
  v76.size.width = v12;
  v76.size.height = v14;
  if (CGRectGetHeight(v76) <= v17)
  {
    self->_usingCenteredLayout = 0;
  }

  else
  {
    centersContentIfPossible = self->_centersContentIfPossible;
    self->_usingCenteredLayout = centersContentIfPossible;
    if (centersContentIfPossible)
    {
      UIRectCenteredRect();
      x = v77.origin.x;
      width = v77.size.width;
      y = v77.origin.y;
      rect = v77.size.height;
      maximumNavBarHeight = CGRectGetMinY(v77) - MinY + self->_minimumNavBarHeight;
      v78.origin.x = v8;
      v78.origin.y = v10;
      v78.size.width = v12;
      v78.size.height = v14;
      MaxY = CGRectGetMaxY(v78);
      v79.origin.x = x;
      v79.size.width = width;
      v79.origin.y = y;
      v79.size.height = rect;
      v25 = MaxY - CGRectGetMaxY(v79);
      goto LABEL_6;
    }
  }

  v25 = *(v18 + 16);
  maximumNavBarHeight = self->_maximumNavBarHeight;
LABEL_6:
  [(BSUIScrollView *)self->_podScrollView contentInset:*&rect];
  if (v29 != v19 || v26 != maximumNavBarHeight || v28 != v20 || v27 != v25)
  {
    [(BSUIScrollView *)self->_podScrollView setContentInset:maximumNavBarHeight, v19, v25, v20];
    [(BSUIScrollView *)self->_podScrollView setScrollIndicatorInsets:maximumNavBarHeight, v19, v25, v20];
  }

  [(SBHLibraryPodFolderView *)self _positionNavBarAbuttingListView];
  if (v3 && ![(BSUIScrollView *)self->_podScrollView isScrolling])
  {
    podScrollView = self->_podScrollView;
    [(BSUIScrollView *)podScrollView adjustedContentInset];
    [(BSUIScrollView *)podScrollView setContentOffset:0.0, -v34];
  }

  superview = [(SBHLibraryPodFolderView *)self superview];
  if (superview)
  {
    podScrollViewGradientMaskLayers = self->_podScrollViewGradientMaskLayers;

    if (!podScrollViewGradientMaskLayers)
    {
      v37 = [MEMORY[0x1E69D3FC0] configureGradientMaskForFeatherBlurRecipe:2 onContentView:self->_podScrollView];
      v38 = self->_podScrollViewGradientMaskLayers;
      self->_podScrollViewGradientMaskLayers = v37;
    }
  }

  if (self->_podScrollViewGradientMaskLayers)
  {
    [MEMORY[0x1E69D3FC0] gradientMaskLayerInsetsForFeatherBlurRecipe:2];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(SBHFeatherBlurNavigationBar *)self->_navBar gradientMaskFrame];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    window = [(SBHLibraryPodFolderView *)self window];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v54 = self->_podScrollViewGradientMaskLayers;
    v55 = [(NSArray *)v54 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = v52 - (v40 + v44);
      v58 = v50 - (v42 + v46);
      v59 = v42 + v48;
      v60 = *v69;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v69 != v60)
          {
            objc_enumerationMutation(v54);
          }

          v62 = *(*(&v68 + 1) + 8 * i);
          [v62 setFrame:{v59, 0.0, v58, v57}];
          v63 = [MEMORY[0x1E69D3FC0] matchMoveAnimationForFrame:window relativeToView:{v59, 0.0, v58, v57}];
          [v62 addAnimation:v63 forKey:@"SBLibraryPodFolderViewMatchMoveAnimation"];
        }

        v56 = [(NSArray *)v54 countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v56);
    }
  }
}

- (void)_positionNavBarAbuttingListView
{
  [(SBHLibraryPodFolderView *)self bounds];
  v4 = v3;
  rect = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BSUIScrollView *)self->_podScrollView contentOffset];
  v12 = -v11;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MinY = CGRectGetMinY(v29);
  minimumNavBarHeight = self->_minimumNavBarHeight;
  safeAreaLayoutGuide = [(SBHLibraryPodFolderView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v17 = minimumNavBarHeight + v16;

  v18 = v12 - MinY;
  [(SBHLibraryPodFolderView *)self bounds];
  v20 = v19;
  v22 = v21;
  v30.origin.x = rect;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  Height = CGRectGetHeight(v30);
  if (v17 >= v18)
  {
    v24 = v17;
  }

  else
  {
    v24 = v18;
  }

  navBar = self->_navBar;
  if (Height <= v24)
  {
    v26 = Height;
  }

  else
  {
    v26 = v24;
  }

  [(SBHFeatherBlurNavigationBar *)navBar sbf_setBoundsAndPositionFromFrame:v20, MinY, v22, v26];
}

- (CGPoint)_restingContentOffsetForScrollOffset:(CGPoint)offset withVelocity:(CGPoint)velocity
{
  y = offset.y;
  x = offset.x;
  v34 = *MEMORY[0x1E69E9840];
  if (self->_usingCenteredLayout)
  {
    v7 = [(SBHLibraryPodFolderView *)self safeAreaLayoutGuide:offset.x];
    [v7 layoutFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v36.origin.x = v9;
    v36.origin.y = v11;
    v36.size.width = v13;
    v36.size.height = v15;
    MinY = CGRectGetMinY(v36);
    v17 = -y - MinY;
    if (v17 >= self->_minimumNavBarHeight && v17 < self->_maximumNavBarHeight)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      _restingHeights = [(SBHFeatherBlurNavigationBar *)self->_navBar _restingHeights];
      v19 = [_restingHeights countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        v22 = 1.79769313e308;
        v23 = NAN;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(_restingHeights);
            }

            [*(*(&v29 + 1) + 8 * i) doubleValue];
            v26 = vabdd_f64(v25, v17);
            if (v26 < v22)
            {
              v23 = v25;
              v22 = v26;
            }
          }

          v20 = [_restingHeights countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      else
      {
        v23 = NAN;
      }

      y = -(MinY + v23);
    }
  }

  v27 = x;
  v28 = y;
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)_zeroFirstListViewOriginIfNeeded
{
  if ([(SBFolderView *)self iconListViewCount])
  {
    firstIconListView = [(SBFolderView *)self firstIconListView];
    [firstIconListView frame];
    [firstIconListView setFrame:?];
  }

  [(SBHLibraryPodFolderView *)self _updateVisibleRowRange];
}

- (void)_updateScrollViewContentSize
{
  podScrollView = self->_podScrollView;
  [(SBHLibraryPodFolderView *)self _scrollViewContentSize];

  [(BSUIScrollView *)podScrollView setContentSize:?];
}

- (double)_pageWidth
{
  [(BSUIScrollView *)self->_podScrollView frame];

  return CGRectGetWidth(*&v2);
}

- (void)_updateIconListContainment:(id)containment atIndex:(unint64_t)index
{
  containmentCopy = containment;
  superview = [containmentCopy superview];
  podScrollView = self->_podScrollView;

  if (superview != podScrollView)
  {
    [(BSUIScrollView *)self->_podScrollView addSubview:containmentCopy];
  }
}

- (CGRect)_iconListFrameForPageRect:(CGRect)rect atIndex:(unint64_t)index
{
  v15.receiver = self;
  v15.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v15 _iconListFrameForPageRect:index atIndex:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BSUIScrollView *)self->_podScrollView bounds];
  UIRectCenteredXInRect();
  MinX = CGRectGetMinX(v16);
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = MinX;
  return result;
}

- (void)_configureIconListView:(id)view
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodFolderView;
  viewCopy = view;
  [(SBFolderView *)&v5 _configureIconListView:viewCopy];
  [viewCopy setBoundsSizeTracksContentSize:{1, v5.receiver, v5.super_class}];
  [viewCopy addLayoutObserver:self];
  [(SBHLibraryPodFolderView *)self _iconSpacingForIconListView];
  [viewCopy setIconSpacing:?];
}

- (CGSize)_iconSpacingForIconListView
{
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibrary"];

  appLibraryVisualConfiguration = [v4 appLibraryVisualConfiguration];
  if (([(SBFolderView *)self orientation]- 3) > 1)
  {
    [appLibraryVisualConfiguration portraitCategoryPodIconSpacing];
  }

  else
  {
    [appLibraryVisualConfiguration landscapeCategoryPodIconSpacing];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)_frameForIconListAtIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v7 _frameForIconListAtIndex:index];
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)_iconListViewSize
{
  if ([(SBFolderView *)self iconListViewCount])
  {
    firstIconListView = [(SBFolderView *)self firstIconListView];
    [firstIconListView bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_orientationDidChange:(int64_t)change
{
  [(SBHLibraryPodFolderView *)self _iconSpacingForIconListView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SBHLibraryPodFolderView__orientationDidChange___block_invoke;
  v8[3] = &__block_descriptor_48_e28_v24__0__SBIconListView_8_B16l;
  v8[4] = v5;
  v8[5] = v6;
  [(SBFolderView *)self enumerateIconListViewsUsingBlock:v8];
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v7 _orientationDidChange:change];
}

- (UIEdgeInsets)_scrollingInteractionVisibleInsets
{
  [(BSUIScrollView *)self->_podScrollView adjustedContentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_enumerateScrollableIconViewsUsingBlock:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  currentIconListView = [(SBFolderView *)self currentIconListView];
  [currentIconListView icons];
  v40 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v39 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v28 = v6;
    v29 = currentIconListView;
    v26 = *v37;
    while (2)
    {
      v10 = 0;
      v27 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [currentIconListView displayedIconViewForIcon:{v11, v26}];
        if (v12)
        {
          v13 = v12;
          customIconImageViewController = [v12 customIconImageViewController];
          v15 = v11;
          v16 = customIconImageViewController;
          if (([v15 isCategoryIcon] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v17 = v16) != 0)
          {
            v30 = v17;
            v31 = v16;
            iconListView = [v17 iconListView];
            icons = [iconListView icons];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v20 = icons;
            v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v33;
              while (2)
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v33 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [iconListView displayedIconViewForIcon:*(*(&v32 + 1) + 8 * i)];
                  if (v25)
                  {
                    blockCopy[2](blockCopy, v25, &v40);
                    if (v40 == 1)
                    {

                      v6 = v28;
                      currentIconListView = v29;
                      v16 = v31;
                      goto LABEL_26;
                    }
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            v6 = v28;
            currentIconListView = v29;
            v9 = v26;
            v8 = v27;
            v16 = v31;
          }

          else
          {
            blockCopy[2](blockCopy, v13, &v40);
            if (v40 == 1)
            {
LABEL_26:

              goto LABEL_27;
            }
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_podScrollView == scroll)
  {
    scrollCopy = scroll;
    [(SBHLibraryPodFolderView *)self _updateVisibleRowRange];
    if (self->_navBar)
    {
      [(SBHLibraryPodFolderView *)self _positionNavBarAbuttingListView];
    }

    [(SBFolderView *)self _scrollingInteractionScrollViewDidScroll:scrollCopy];
    WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);
    [WeakRetained scrollViewDidScroll:scrollCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHLibraryPodFolderView;
    scrollCopy2 = scroll;
    [(SBFolderView *)&v7 scrollViewDidScroll:scrollCopy2];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  if (self->_podScrollView == draggingCopy)
  {
    if (self->_navBar)
    {
      [(SBHLibraryPodFolderView *)self _restingContentOffsetForScrollOffset:offset->x withVelocity:offset->y, x, y];
      offset->x = v10;
      offset->y = v11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);
    [WeakRetained scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHLibraryPodFolderView;
    [(SBFolderView *)&v13 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (self->_podScrollView == draggingCopy)
  {
    [(SBFolderView *)self _updateScrollingInteractionIsScrolling:1];
    WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);
    [WeakRetained scrollViewWillBeginDragging:draggingCopy];
  }

  [(SBHFeatherBlurNavigationBar *)self->_navBar setAllowsAnimatedUpdating:1];
  v6.receiver = self;
  v6.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v6 scrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewWillBeginScrolling:(id)scrolling
{
  if (self->_podScrollView == scrolling)
  {
    scrollingCopy = scrolling;
    WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);
    [WeakRetained scrollViewWillBeginScrolling:scrollingCopy];

    [scrollingCopy contentOffset];
    v8 = v7;
    v10 = v9;

    [(SBHLibraryPodFolderView *)self setScrollingStartOffset:v8, v10];

    [(SBHLibraryPodFolderView *)self setExtraIdleScrollVisibleRows:0];
  }
}

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  v6.receiver = self;
  v6.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndScrolling:scrollingCopy];
  if (self->_podScrollView == scrollingCopy)
  {
    [(SBFolderView *)self _updateScrollingInteractionIsScrolling:0];
    WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);
    [WeakRetained scrollViewDidEndScrolling:scrollingCopy];

    [(SBHLibraryPodFolderView *)self setExtraIdleScrollVisibleRows:0];
  }

  [(SBHFeatherBlurNavigationBar *)self->_navBar setAllowsAnimatedUpdating:0];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v3 didMoveToWindow];
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  [(SBHLibraryPodFolderView *)self _updateVisibleRowRange];
}

- (void)_updateVisibleRowRange
{
  firstIconListView = [(SBFolderView *)self firstIconListView];
  [(BSUIScrollView *)self->_podScrollView contentOffset];
  v4 = v3;
  [(BSUIScrollView *)self->_podScrollView bounds];
  Height = CGRectGetHeight(v19);
  v6 = nexttoward(v4 + Height, v4);
  [(SBHLibraryPodFolderView *)self scrollingStartOffset];
  v8 = v7;
  v9 = [firstIconListView rowAtPoint:{0.0, v4}];
  v10 = [firstIconListView rowAtPoint:{0.0, v6}];
  extraIdleScrollVisibleRows = [(SBHLibraryPodFolderView *)self extraIdleScrollVisibleRows];
  v12 = v10 - v9 + extraIdleScrollVisibleRows;
  v13 = v9 - extraIdleScrollVisibleRows;
  if (v9 < extraIdleScrollVisibleRows)
  {
    v13 = 0;
  }

  if (v4 >= v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  iconRowsForCurrentOrientation = [firstIconListView iconRowsForCurrentOrientation];
  if (v14 + v12 + 1 < iconRowsForCurrentOrientation)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = iconRowsForCurrentOrientation - v14;
  }

  [firstIconListView setVisibleRowRange:{v14, v16}];
  [firstIconListView layoutIconsIfNeeded];
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  iconViewCopy = iconView;
  icon = [iconViewCopy icon];
  isCategoryIcon = [icon isCategoryIcon];

  if (isCategoryIcon)
  {
    [iconViewCopy setAllowsEditingAnimation:0];
  }
}

- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)bar
{
  barCopy = bar;
  v5 = SBHScreenTypeForCurrentDevice();
  if (SBHScreenTypeIsPhone(v5) || ![(SBHLibraryPodFolderView *)self isLibraryPodCategoryFolderView])
  {
    listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
    v8 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

    SBHIconListLayoutNonDefaultIconGridSizeClassLayoutInsets(v8, 1);
    v10 = v12 + 4.0;
  }

  else
  {
    listLayoutProvider2 = [(SBFolderView *)self listLayoutProvider];
    iconLocation = [(SBFolderView *)self iconLocation];
    v8 = [listLayoutProvider2 layoutForIconLocation:iconLocation];

    [v8 layoutInsetsForOrientation:{-[SBFolderView orientation](self, "orientation")}];
    v10 = v9;
  }

  if ([barCopy insetsLayoutMarginsFromSafeArea])
  {
    effectiveUserInterfaceLayoutDirection = [barCopy effectiveUserInterfaceLayoutDirection];
    [(SBHLibraryPodFolderView *)self safeAreaInsets];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v14 = v15;
    }

    v17 = v10 + v14;
    v10 = v10 + v16;
  }

  else
  {
    v17 = v10;
  }

  v18 = 0.0;
  v19 = 0.0;
  v20 = v17;
  v21 = v10;
  result.trailing = v21;
  result.bottom = v19;
  result.leading = v20;
  result.top = v18;
  return result;
}

- (void)_updateCycleIdleUntil:(unint64_t)until
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodFolderView;
  [(SBFolderView *)&v5 _updateCycleIdleUntil:until];
  if ([(SBFolderView *)self contentVisibility]!= 2)
  {
    extraIdleScrollVisibleRows = [(SBHLibraryPodFolderView *)self extraIdleScrollVisibleRows];
    if (extraIdleScrollVisibleRows <= 9)
    {
      [(SBHLibraryPodFolderView *)self setExtraIdleScrollVisibleRows:extraIdleScrollVisibleRows + 1];
      [(SBHLibraryPodFolderView *)self _updateVisibleRowRange];
    }
  }
}

- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_librarySearchControllerScrollViewDelegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (CGPoint)scrollingStartOffset
{
  x = self->_scrollingStartOffset.x;
  y = self->_scrollingStartOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end