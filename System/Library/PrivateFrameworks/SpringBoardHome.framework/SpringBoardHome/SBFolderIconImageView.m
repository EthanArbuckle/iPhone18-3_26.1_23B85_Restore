@interface SBFolderIconImageView
- (BOOL)canUpdateImage;
- (BOOL)usesLayersForMiniIcons;
- (CGRect)frameForMiniIconAtIndex:(unint64_t)a3;
- (CGRect)frameForMiniIconAtIndexPath:(id)a3;
- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)a3;
- (CGSize)_interiorGridSize;
- (NSArray)currentPageIconCellViews;
- (SBFolderIconImageView)initWithFrame:(CGRect)a3;
- (UIView)currentPageView;
- (double)iconGridImageAlpha;
- (id)_currentPageListModel;
- (id)_folderIconImageCache;
- (id)_leadingWrapperView;
- (id)_trailingWrapperView;
- (id)_wrapperViewDisplayingElement:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)pageElements;
- (id)representedListLayout;
- (id)snapshot;
- (unint64_t)firstVisibleMiniIconIndex;
- (unint64_t)visibleMiniIconCount;
- (void)_performScrollingDirection:(int64_t)a3 targetPageIndex:(unint64_t)a4 targetPageScrollRow:(unint64_t)a5 newLeftElement:(id)a6 newRightElement:(id)a7 animated:(BOOL)a8;
- (void)_setupGridViewsInCurrentConfiguration;
- (void)_showLeadingMinigrid;
- (void)_showLeftMinigrid;
- (void)_showRightMinigrid;
- (void)_showTrailingMinigrid;
- (void)applyGlass;
- (void)cleanupAfterFloatyFolderCrossfade;
- (void)configureMiniGridView:(id)a3;
- (void)dealloc;
- (void)didAnimateListLayoutProviderChange:(id)a3 context:(id)a4;
- (void)enumerateCurrentPageIconLayerViewsInGridView:(id)a3 usingBlock:(id)a4;
- (void)enumerateCurrentPageIconLayerViewsUsingBlock:(id)a3;
- (void)enumerateCurrentPageIconLayersUsingBlock:(id)a3;
- (void)folderIcon:(id)a3 containedIconAccessoriesDidUpdate:(id)a4;
- (void)folderIcon:(id)a3 containedIconLaunchEnabledDidChange:(id)a4;
- (void)folderIconImageCache:(id)a3 didUpdateImagesForFolderIcon:(id)a4 imageAppearance:(id)a5;
- (void)fulfillGridImageForPageElement:(id)a3;
- (void)fulfillGridViewForPageElement:(id)a3;
- (void)iconImageInfoDidChange;
- (void)iconViewFolderIconImageCacheDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)prepareToCrossfadeWithFloatyFolderView:(id)a3 allowFolderInteraction:(BOOL)a4;
- (void)scrollToFirstGapAnimated:(BOOL)a3;
- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollToTopOfPage:(unint64_t)a3 animated:(BOOL)a4;
- (void)setAllowsGlassGroupingOnMiniGridViews:(BOOL)a3;
- (void)setBackgroundAndIconGridImageAlpha:(double)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setDisplayedPageElements:(id)a3;
- (void)setFloatyFolderCrossfadeFraction:(double)a3;
- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5;
- (void)setIconGridImageAlpha:(double)a3;
- (void)setIconView:(id)a3;
- (void)setPageGridCornerRadius:(double)a3;
- (void)updateImageAnimated:(BOOL)a3;
- (void)updateOngoingAnimationState;
- (void)willAnimateListLayoutProviderChange:(id)a3 context:(id)a4;
@end

@implementation SBFolderIconImageView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v13 layoutSubviews];
  [(SBFolderIconImageView *)self bounds];
  v4 = v3;
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  [(UIView *)self->_crossfadeScalingView setCenter:?];
  [(UIView *)self->_pageGridContainer setCenter:v6, v8];
  [(UIView *)self->_pageGridContainer bounds];
  [(UIView *)self->_pageGridContainer setBounds:?];
  [(SBFolderIconImageView *)self _interiorGridSize];
  UIRectCenteredIntegralRectScale();
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  [(SBFolderIconGridViewing *)self->_leftWrapperView setCenter:0];
  [(SBFolderIconGridViewing *)self->_rightWrapperView setCenter:v4 + v10, v12];
}

- (CGSize)_interiorGridSize
{
  v3 = [(SBFolderIconImageView *)self _iconGridImageClass];
  v4 = [(SBFolderIconImageView *)self representedListLayout];
  [(objc_class *)v3 sizeForLayout:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)representedListLayout
{
  v2 = [(SBIconImageView *)self iconView];
  v3 = [v2 representedFolderIconLocation];
  v4 = [v2 listLayoutProvider];
  v5 = [v4 layoutForIconLocation:v3];

  return v5;
}

- (BOOL)canUpdateImage
{
  v5.receiver = self;
  v5.super_class = SBFolderIconImageView;
  v3 = [(SBIconImageView *)&v5 canUpdateImage];
  if (v3)
  {
    LOBYTE(v3) = ![(SBFolderIconImageView *)self shouldAnimateIconImageInfoChange];
  }

  return v3;
}

- (id)_folderIconImageCache
{
  v2 = [(SBIconImageView *)self iconView];
  v3 = [v2 folderIconImageCache];

  return v3;
}

- (id)pageElements
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBFolderIconImageView *)self _folderIcon];
  v4 = [v3 folder];
  v5 = [(SBIconImageView *)self iconView];
  v6 = [v5 overrideImage];
  if (v6)
  {
    v7 = objc_alloc_init(_SBFolderPageElement);
    [(_SBFolderPageElement *)v7 setFolderIcon:v3];
    [(_SBFolderPageElement *)v7 setImage:v6];
    v48[0] = v7;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    goto LABEL_19;
  }

  v35 = v5;
  v7 = [(SBFolderIconImageView *)self displayedPageElements];
  v39 = [(SBIconImageView *)self effectiveIconImageAppearance];
  [(SBIconImageView *)self iconImageInfo];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v4 listCount];
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
  v38 = v16;
  if (v16)
  {
    v17 = 0;
    v36 = v3;
    v37 = v4;
    while (1)
    {
      v18 = [v4 listAtIndex:v17];
      v19 = [v18 icons];
      v20 = [v19 bs_compactMap:&__block_literal_global_27];

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __37__SBFolderIconImageView_pageElements__block_invoke_2;
      v41[3] = &unk_1E808B490;
      v21 = v20;
      v42 = v21;
      v22 = v39;
      v43 = v22;
      v44 = v9;
      v45 = v11;
      v46 = v13;
      v47 = v15;
      v23 = [(_SBFolderPageElement *)v7 bs_firstObjectPassingTest:v41];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_alloc_init(_SBFolderPageElement);
      }

      v26 = v25;
      [(_SBFolderPageElement *)v25 setGridImagePossible:1];
      [(_SBFolderPageElement *)v26 setPageIndex:v17];
      [(_SBFolderPageElement *)v26 setFolderIcon:v3];
      if (v7 && [(_SBFolderPageElement *)v7 count]> v17)
      {
        v27 = [(_SBFolderPageElement *)v7 objectAtIndex:v17];
        v28 = [v27 visibleRow];

        v3 = v36;
      }

      else
      {
        v28 = 0;
      }

      [(_SBFolderPageElement *)v26 setVisibleRow:v28];
      [(_SBFolderPageElement *)v26 setIconIdentifiers:v21];
      [(_SBFolderPageElement *)v26 setIconImageInfo:v9, v11, v13, v15];
      if (!v24)
      {
        goto LABEL_17;
      }

      v29 = [v24 imageAppearance];
      if ([v29 isEqual:v22])
      {
        goto LABEL_16;
      }

      v30 = [v24 gridView];
      v31 = [v30 canUpdateIconTintColorFromImageAppearance:v22];

      v3 = v36;
      if (v31)
      {
        break;
      }

LABEL_17:
      [v40 addObject:v26];

      ++v17;
      v4 = v37;
      if (v38 == v17)
      {
        goto LABEL_18;
      }
    }

    v29 = [v24 gridView];
    v32 = [v22 tintColor];
    [v29 setIconTintColor:v32];

    v3 = v36;
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
  v33 = objc_alloc_init(_SBFolderPageElement);
  [(_SBFolderPageElement *)v33 setPageIndex:v38];
  [(_SBFolderPageElement *)v33 setFolderIcon:v3];
  [v40 addObject:v33];

  v6 = 0;
  v5 = v35;
LABEL_19:

  return v40;
}

- (void)_showLeftMinigrid
{
  [(SBFolderIconImageView *)self bounds];
  pageGridContainer = self->_pageGridContainer;

  [(UIView *)pageGridContainer setBounds:0.0, 0.0];
}

- (void)applyGlass
{
  v3 = [(SBIconImageView *)self effectiveIconImageStyleConfiguration];
  -[UIView sbh_applyFolderGlassWithGrouping:userInterfaceStyle:](self, "sbh_applyFolderGlassWithGrouping:userInterfaceStyle:", -[SBIconImageView allowsGlassGrouping](self, "allowsGlassGrouping"), [v3 iconGlassUserInterfaceStyle]);
}

- (BOOL)usesLayersForMiniIcons
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)firstVisibleMiniIconIndex
{
  v2 = [(SBFolderIconImageView *)self _currentPageElement];
  v3 = [v2 firstVisibleMiniIconIndex];

  return v3;
}

- (void)cleanupAfterFloatyFolderCrossfade
{
  [(SBFolderIconImageView *)self _setAnimating:0];
  [(SBFolderIconImageView *)self setUserInteractionEnabled:0];
  v3 = [(SBIconImageView *)self effectView];
  [v3 setAlpha:1.0];
  [(SBIconImageView *)self setOverlayAlpha:1.0];
  crossfadeScalingView = self->_crossfadeScalingView;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v5;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)crossfadeScalingView setTransform:v12];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setBackgroundAlpha:1.0];
  [(SBFolderView *)self->_crossfadeFolderView returnScalingView];
  v6 = [(SBIconImageView *)self iconView];
  [v6 iconImageInfo];
  v8 = v7;
  [v3 _setContinuousCornerRadius:v7];
  [(SBFolderIconImageView *)self setPageGridCornerRadius:v8];
  crossfadeFolderView = self->_crossfadeFolderView;
  [(SBFloatyFolderView *)crossfadeFolderView cornerRadius];
  [(SBFloatyFolderView *)crossfadeFolderView setCornerRadius:?];
  v10 = self->_crossfadeScalingView;
  self->_crossfadeScalingView = 0;

  v11 = self->_crossfadeFolderView;
  self->_crossfadeFolderView = 0;
}

- (SBFolderIconImageView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SBFolderIconImageView;
  v3 = [(SBIconImageView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    pageGridContainer = v3->_pageGridContainer;
    v3->_pageGridContainer = v4;

    [(SBFolderIconImageView *)v3 insertSubview:v3->_pageGridContainer atIndex:0];
    [(UIView *)v3->_pageGridContainer setClipsToBounds:1];
    [(UIView *)v3->_pageGridContainer setUserInteractionEnabled:0];
    [objc_opt_class() allowsLayersForMiniIcons];
    v6 = objc_opt_self();

    v7 = objc_alloc_init(v6);
    leftWrapperView = v3->_leftWrapperView;
    v3->_leftWrapperView = v7;

    [(SBFolderIconGridViewing *)v3->_leftWrapperView setFolderIconImageView:v3];
    [(UIView *)v3->_pageGridContainer addSubview:v3->_leftWrapperView];
    v9 = objc_alloc_init(v6);
    rightWrapperView = v3->_rightWrapperView;
    v3->_rightWrapperView = v9;

    [(SBFolderIconGridViewing *)v3->_rightWrapperView setFolderIconImageView:v3];
    [(UIView *)v3->_pageGridContainer insertSubview:v3->_rightWrapperView aboveSubview:v3->_leftWrapperView];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v4.receiver = self;
  v4.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v4 dealloc];
}

- (void)updateImageAnimated:(BOOL)a3
{
  if ([(SBFolderIconImageView *)self canUpdateImage])
  {
    v7 = [(SBFolderIconImageView *)self _folderIcon];
    v4 = [v7 folder];
    if (v7 && v4)
    {
      v5 = [(SBIconImageView *)self effectiveIconImageAppearance];
      [(SBFolderIconImageView *)self setDisplayedImageAppearance:v5];
      v6 = [(SBFolderIconImageView *)self pageElements];
      [(SBFolderIconImageView *)self setDisplayedPageElements:v6];
    }
  }
}

BOOL __37__SBFolderIconImageView_pageElements__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 iconIdentifiers];
  v5 = [v4 isEqualToArray:*(a1 + 32)];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v3 imageAppearance];
  if (![v6 isEqual:*(a1 + 40)])
  {
    v7 = [v3 gridView];
    v8 = [v7 canUpdateIconTintColorFromImageAppearance:*(a1 + 40)];

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

LABEL_5:
  [v3 iconImageInfo];
  v13 = SBIconImageInfoEqualToIconImageInfo(v9, v10, v11, v12, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
LABEL_7:

  return v13;
}

- (void)willAnimateListLayoutProviderChange:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v31 willAnimateListLayoutProviderChange:v6 context:v7];
  [(SBFolderIconImageView *)self setShouldAnimateIconImageInfoChange:1];
  if ([objc_opt_class() allowsLayersForMiniIcons])
  {
    v8 = [(SBIconImageView *)self location];
    v9 = [v6 layoutForIconLocation:v8];
    v10 = SBHIconListLayoutFolderIconGridCellIconImageInfo(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(SBIconImageView *)self effectiveIconImageAppearance];
    v18 = [(SBFolderIconImageView *)self cellIconImageOptions];
    v19 = [(SBFolderIconImageView *)self _currentPageListModel];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__SBFolderIconImageView_willAnimateListLayoutProviderChange_context___block_invoke;
    v23[3] = &unk_1E808B4B8;
    v26 = v10;
    v27 = v12;
    v28 = v14;
    v29 = v16;
    v30 = v18;
    v24 = v17;
    v25 = v20;
    v21 = v20;
    v22 = v17;
    [v19 enumerateIconsUsingBlock:v23];
    [v7 setObject:v21 forKey:@"SBFolderIconImageViewPrefetchAssertions"];
  }
}

uint64_t __69__SBFolderIconImageView_willAnimateListLayoutProviderChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 prefetchIconLayerWithInfo:*(a1 + 32) imageAppearance:*(a1 + 80) imageOptions:2 priority:@"folder icon animation" reason:3 prefetchBehavior:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)didAnimateListLayoutProviderChange:(id)a3 context:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v8 didAnimateListLayoutProviderChange:a3 context:a4];
  [(SBFolderIconImageView *)self setShouldAnimateIconImageInfoChange:0];
  pageGridContainer = self->_pageGridContainer;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v6;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)pageGridContainer setTransform:v7];
  [(SBFolderIconImageView *)self updateImageAnimated:0];
}

- (void)iconImageInfoDidChange
{
  v13.receiver = self;
  v13.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v13 iconImageInfoDidChange];
  if ([(SBFolderIconImageView *)self shouldAnimateIconImageInfoChange]&& ![(SBFolderIconImageView *)self isAnimatingIconImageInfoChange])
  {
    [(SBIconImageView *)self iconImageInfo];
    v4 = v3;
    [(UIView *)self->_pageGridContainer bounds];
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v4 / v5, v4 / v5);
    pageGridContainer = self->_pageGridContainer;
    if (pageGridContainer)
    {
      [(UIView *)pageGridContainer transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v12;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      [(SBFolderIconImageView *)self setAnimatingIconImageInfoChange:1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v9 = v12;
      v8[2] = __47__SBFolderIconImageView_iconImageInfoDidChange__block_invoke;
      v8[3] = &unk_1E808B4E0;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__SBFolderIconImageView_iconImageInfoDidChange__block_invoke_2;
      v7[3] = &unk_1E8088F40;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v7 completion:0.2];
    }
  }
}

uint64_t __47__SBFolderIconImageView_iconImageInfoDidChange__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 624);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)prepareForReuse
{
  v3 = [(SBFolderIconImageView *)self layer];
  [v3 setShouldRasterize:0];

  [(SBFolderIconImageView *)self scrollToTopOfFirstPageAnimated:0];
  [(SBFolderIconImageView *)self setBackgroundAndIconGridImageAlpha:1.0];
  [(SBFolderIconImageView *)self setDisplayedPageElements:0];
  v4.receiver = self;
  v4.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v4 prepareForReuse];
}

- (void)iconViewFolderIconImageCacheDidChange
{
  v8.receiver = self;
  v8.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v8 iconViewFolderIconImageCacheDidChange];
  [(SBFolderIconImageView *)self updateImageAnimated:0];
  v3 = [(SBFolderIconImageView *)self _folderIconImageCache];
  v4 = [(SBIconImageView *)self icon];
  if (v4)
  {
    [v3 addObserver:self forFolderIcon:v4];
  }

  if (-[SBFolderIconImageView shouldAnimateIconImageInfoChange](self, "shouldAnimateIconImageInfoChange") && ([objc_opt_class() allowsLayersForMiniIcons] & 1) == 0)
  {
    v5 = [(SBFolderIconImageView *)self pageElements];
    v6 = [v5 firstObject];
    v7 = [v6 image];
    if (!v7)
    {
      [(SBFolderIconImageView *)self fulfillGridImageForPageElement:v6];
    }
  }
}

- (id)snapshot
{
  [(SBFolderIconImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBFolderIconImageView *)self _imageFromRect:?];
  [v11 size];
  v13 = v12;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  if (v13 > CGRectGetHeight(v22))
  {
    v14 = [(SBFolderIconImageView *)self traitCollection];
    [v14 displayScale];
    v16 = v15;

    v17 = MEMORY[0x1E69DCAB8];
    v18 = [v11 sbf_CGImageBackedImage];
    v19 = [v17 imageWithCGImage:objc_msgSend(v18 scale:"CGImage") orientation:{0, v16}];

    v11 = v19;
  }

  return v11;
}

- (void)updateOngoingAnimationState
{
  v2.receiver = self;
  v2.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v2 updateOngoingAnimationState];
}

- (void)scrollToFirstGapAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(NSArray *)self->_pageElements count])
  {
    return;
  }

  v24 = [(SBFolderIconImageView *)self _folderIcon];
  v5 = [v24 folder];
  v6 = [v5 _indexPathToRevealForJiggleMode];

  v7 = SBFolderRelativeListIndex(v6);
  if (v6)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < [(NSArray *)self->_pageElements count])
    {
      v9 = [(NSArray *)self->_pageElements objectAtIndex:v8];
      v23 = [v9 firstVisibleRowForGap];
      v10 = MEMORY[0x1E69DDA98];
      v11 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      currentPageIndex = self->_currentPageIndex;
      if (v8 >= currentPageIndex)
      {
        if (v8 <= currentPageIndex)
        {
          v18 = [*v10 userInterfaceLayoutDirection];
          v19 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
          v14 = 0;
          v20 = v18 == 0;
          if (v18)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          if (v20)
          {
            v17 = 0;
          }

          else
          {
            v17 = v19;
          }

          goto LABEL_34;
        }

        if (v11 == 1)
        {
          v13 = v8;
        }

        else
        {
          v13 = self->_currentPageIndex;
        }

        if (v11 == 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v11 == 1)
        {
          v15 = self->_currentPageIndex;
        }

        else
        {
          v15 = v8;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v13 = self->_currentPageIndex;
        }

        else
        {
          v13 = v8;
        }

        if (v11 == 1)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        if (v11 == 1)
        {
          v15 = v8;
        }

        else
        {
          v15 = self->_currentPageIndex;
        }
      }

      v16 = [(NSArray *)self->_pageElements objectAtIndex:v13];
      v17 = [(NSArray *)self->_pageElements objectAtIndex:v15];
LABEL_34:
      v21 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
      v22 = v21;
      if (self->_currentPageIndex != v8 || [v21 visibleRow] != v23)
      {
        [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:v8 targetPageScrollRow:v23 newLeftElement:v16 newRightElement:v17 animated:v3];
      }
    }
  }
}

- (void)scrollToTopOfPage:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSArray *)self->_pageElements count];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  if (v7 <= a3)
  {
    return;
  }

  if (self->_currentPageIndex == a3)
  {
    v8 = [(NSArray *)self->_pageElements objectAtIndex:a3];
    v9 = [v8 visibleRow];

    if (!v9)
    {
      return;
    }
  }

  v10 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v11 = v10;
  currentPageIndex = self->_currentPageIndex;
  if (currentPageIndex <= a3)
  {
    if (currentPageIndex >= a3)
    {
      v17 = [(NSArray *)self->_pageElements objectAtIndex:?];
      v14 = 0;
      if (v11 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v19 = v18;
      if (v11 == 1)
      {
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_33;
    }

    if (v10 == 1)
    {
      v13 = a3;
    }

    else
    {
      v13 = self->_currentPageIndex;
    }

    if (v10 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v10 == 1)
    {
      v15 = self->_currentPageIndex;
    }

    else
    {
      v15 = a3;
    }
  }

  else
  {
    if (v10 == 1)
    {
      v13 = self->_currentPageIndex;
    }

    else
    {
      v13 = a3;
    }

    if (v10 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (v10 == 1)
    {
      v15 = a3;
    }

    else
    {
      v15 = self->_currentPageIndex;
    }
  }

  v19 = [(NSArray *)self->_pageElements objectAtIndex:v13];
  v16 = [(NSArray *)self->_pageElements objectAtIndex:v15];
LABEL_33:
  [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:a3 targetPageScrollRow:0 newLeftElement:v19 newRightElement:v16 animated:v4];
}

- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(NSArray *)self->_pageElements count]> a3)
  {
    v7 = [(SBFolderIconImageView *)self _folderIcon];
    v8 = [v7 folder];
    v9 = [v8 indexPathForFirstFreeSlotAvoidingFirstList:0];

    if (SBFolderRelativeListIndex(v9) == a3)
    {
      v10 = [(NSArray *)self->_pageElements objectAtIndex:a3];
      v11 = [v10 firstVisibleRowForGap];
    }

    else
    {
      v11 = 0;
    }

    currentPageIndex = self->_currentPageIndex;
    if (currentPageIndex <= a3)
    {
      v17 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
      if (currentPageIndex >= a3)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        v13 = [(NSArray *)self->_pageElements objectAtIndex:a3];
        v14 = 2;
      }
    }

    else
    {
      v17 = [(NSArray *)self->_pageElements objectAtIndex:a3];
      v13 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
      v14 = 1;
    }

    v15 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
    v16 = v15;
    if (self->_currentPageIndex != a3 || [v15 visibleRow] != v11)
    {
      [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:a3 targetPageScrollRow:v11 newLeftElement:v17 newRightElement:v13 animated:v4];
    }
  }
}

- (unint64_t)visibleMiniIconCount
{
  v2 = [(SBFolderIconImageView *)self representedListLayout];
  v3 = [v2 numberOfRowsForOrientation:1];
  v4 = [v2 numberOfColumnsForOrientation:1] * v3;

  return v4;
}

- (CGRect)frameForMiniIconAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:a3 listIndex:self->_currentPageIndex];
  [(SBFolderIconImageView *)self frameForMiniIconAtIndexPath:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)a3
{
  [(SBFolderIconImageView *)self frameForMiniIconAtIndex:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBIconImageView *)self visibleBounds];
  v13 = v5 - v12;
  v15 = v7 - v14;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForMiniIconAtIndexPath:(id)a3
{
  v4 = a3;
  [(SBFolderIconImageView *)self layoutIfNeeded];
  v5 = [(NSArray *)self->_pageElements count];
  if (v5 <= [v4 sbListIndex])
  {
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v6 = [v4 sbIconIndex];
    v7 = -[NSArray objectAtIndex:](self->_pageElements, "objectAtIndex:", [v4 sbListIndex]);
    v8 = [v7 gridImage];
    v13 = objc_opt_class();
    v14 = [(SBFolderIconImageView *)self _wrapperViewDisplayingElement:v7];
    v15 = [(SBFolderIconImageView *)self representedListLayout];
    v16 = [(SBFolderIconImageView *)self firstVisibleMiniIconIndex];
    v17 = [(SBFolderIconImageView *)self _folderIcon];
    v18 = [v17 gridCellIndexForIconIndex:v6];

    [v13 rectAtIndex:v16 inLayout:v15 maxCount:{objc_msgSend(v8, "numberOfCells")}];
    v20 = v19;
    [v13 rectAtIndex:v18 inLayout:v15 maxCount:{objc_msgSend(v8, "numberOfCells")}];
    v22 = v21;
    v11 = v23;
    v12 = v24;
    v26 = v25 - v20;
    [v14 bounds];
    if (v28 == *MEMORY[0x1E695F060] && v27 == *(MEMORY[0x1E695F060] + 8))
    {
      [(SBFolderIconImageView *)self _interiorGridSize];
      [(SBFolderIconImageView *)self bounds];
      UIRectCenteredIntegralRectScale();
      v9 = v22 + v34;
      v10 = v26 + v35;
    }

    else
    {
      [(SBFolderIconImageView *)self convertRect:v14 fromView:v22, v26, v11, v12];
      v9 = v30;
      v10 = v31;
      v11 = v32;
      v12 = v33;
    }
  }

  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (double)iconGridImageAlpha
{
  [(SBFolderIconGridViewing *)self->_leftWrapperView alpha];
  v4 = v3;
  [(SBFolderIconGridViewing *)self->_rightWrapperView alpha];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (void)setIconGridImageAlpha:(double)a3
{
  [(SBFolderIconGridViewing *)self->_leftWrapperView setAlpha:?];
  rightWrapperView = self->_rightWrapperView;

  [(SBFolderIconGridViewing *)rightWrapperView setAlpha:a3];
}

- (void)setBackgroundAndIconGridImageAlpha:(double)a3
{
  [(SBFolderIconGridViewing *)self->_leftWrapperView setAlpha:?];
  rightWrapperView = self->_rightWrapperView;

  [(SBFolderIconGridViewing *)rightWrapperView setAlpha:a3];
}

- (void)prepareToCrossfadeWithFloatyFolderView:(id)a3 allowFolderInteraction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SBFolderIconImageView *)self _setAnimating:1];
  [(SBFolderIconImageView *)self setUserInteractionEnabled:v4];
  crossfadeFolderView = self->_crossfadeFolderView;
  self->_crossfadeFolderView = v6;
  v8 = v6;

  v9 = [(SBFolderView *)v8 borrowScalingView];
  crossfadeScalingView = self->_crossfadeScalingView;
  self->_crossfadeScalingView = v9;

  [(SBFolderIconImageView *)self insertSubview:self->_crossfadeScalingView atIndex:0];
  [(SBIconImageView *)self visibleBounds];
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_crossfadeScalingView bounds];
  v16 = self->_crossfadeScalingView;
  CGAffineTransformMakeScale(&v18, v12 / v15, v14 / v17);
  [(UIView *)v16 setTransform:&v18];

  [(SBFolderIconImageView *)self setFloatyFolderCrossfadeFraction:0.0];
  [(SBFolderIconImageView *)self layoutIfNeeded];
}

- (void)setFloatyFolderCrossfadeFraction:(double)a3
{
  v15 = [(SBIconImageView *)self effectView];
  [v15 setAlpha:1.0 - a3];
  [(SBIconImageView *)self setOverlayAlpha:1.0 - a3];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setBackgroundAlpha:a3];
  [(SBIconImageView *)self visibleBounds];
  v6 = v5;
  [(UIView *)self->_crossfadeScalingView bounds];
  v8 = v6 / v7;
  v9 = [(SBIconImageView *)self iconView];
  [v9 iconImageInfo];
  v11 = v10;
  [(SBFloatyFolderView *)self->_crossfadeFolderView cornerRadius];
  v13 = v12;
  v14 = v8 * v12 * a3 + (1.0 - a3) * v11;
  [v15 _setContinuousCornerRadius:v14];
  [(SBFolderIconImageView *)self setPageGridCornerRadius:v14];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setCornerRadius:v13 * a3 + (1.0 - a3) * (v11 / v8)];
}

- (void)setContentVisibility:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v15 setContentVisibility:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(SBFolderIconImageView *)self displayedPageElements];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) gridView];
        [v10 setContentVisibility:a3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFolderIconImageView;
  v4 = [(SBIconImageView *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_animating withName:@"animating"];

  return v4;
}

- (void)folderIconImageCache:(id)a3 didUpdateImagesForFolderIcon:(id)a4 imageAppearance:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(SBFolderIconImageView *)self displayedImageAppearance];
  if (!v10 || [v9 isEqual:v10])
  {

LABEL_5:
    [(SBFolderIconImageView *)self updateImageAnimated:0];
    goto LABEL_6;
  }

LABEL_6:
}

- (void)_performScrollingDirection:(int64_t)a3 targetPageIndex:(unint64_t)a4 targetPageScrollRow:(unint64_t)a5 newLeftElement:(id)a6 newRightElement:(id)a7 animated:(BOOL)a8
{
  v8 = a8;
  p_leftWrapperView = &self->_leftWrapperView;
  leftWrapperView = self->_leftWrapperView;
  v16 = a7;
  [(SBFolderIconGridViewing *)leftWrapperView setElement:a6];
  p_rightWrapperView = &self->_rightWrapperView;
  [(SBFolderIconGridViewing *)self->_rightWrapperView setElement:v16];

  if (a3 == 1)
  {
    [(SBFolderIconImageView *)self _showRightMinigrid];
    p_rightWrapperView = p_leftWrapperView;
LABEL_5:
    [(SBFolderIconGridViewing *)*p_rightWrapperView positionAtRow:a5];
    if (v8)
    {
      v18 = 0.4;
    }

    else
    {
      v18 = 0.0;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    [(SBFolderIconImageView *)self _showLeftMinigrid];
    goto LABEL_5;
  }

  if (v8)
  {
    v18 = 0.4;
  }

  else
  {
    v18 = 0.0;
  }

  if (!a3)
  {
    v19 = 1;
    goto LABEL_15;
  }

LABEL_12:
  if (v8)
  {
    [(SBFolderIconImageView *)self _setAnimating:1];
    [(SBFolderIconImageView *)self setAllowsGlassGroupingOnMiniGridViews:0];
  }

  [(SBFolderIconImageView *)self setShowingRightPage:a3 == 2];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke;
  v27[3] = &unk_1E8088CB8;
  v27[4] = self;
  v27[5] = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_2;
  v25[3] = &unk_1E808B508;
  v26 = v8;
  v25[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v27 options:v25 animations:v18 completion:0.0];
  v19 = 0;
LABEL_15:
  v20 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
  v21 = [v20 visibleRow];
  if (v19 && v21 != a5)
  {
    if (v8)
    {
      [(SBFolderIconImageView *)self _setAnimating:1];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_3;
    v24[3] = &unk_1E8088CB8;
    v24[4] = self;
    v24[5] = a5;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_4;
    v22[3] = &unk_1E808B508;
    v23 = v8;
    v22[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v24 options:v22 animations:v18 completion:0.0];
  }

  self->_currentPageIndex = a4;
  if (!v8)
  {
    [(SBFolderIconImageView *)self updateImageAnimated:0];
  }
}

uint64_t __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 1)
  {
    return [*(result + 32) _showLeftMinigrid];
  }

  if (v1 == 2)
  {
    return [*(result + 32) _showRightMinigrid];
  }

  return result;
}

uint64_t __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 40) == 1)
    {
      [*(result + 32) updateImageAnimated:0];
      [*(v2 + 32) _setAnimating:0];
      v3 = *(v2 + 32);

      return [v3 setAllowsGlassGroupingOnMiniGridViews:1];
    }
  }

  return result;
}

uint64_t __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 40) == 1)
    {
      [*(result + 32) updateImageAnimated:0];
      v3 = *(v2 + 32);

      return [v3 _setAnimating:0];
    }
  }

  return result;
}

- (void)setAllowsGlassGroupingOnMiniGridViews:(BOOL)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBFolderIconImageView_setAllowsGlassGroupingOnMiniGridViews___block_invoke;
  aBlock[3] = &__block_descriptor_33_e31_v32__0__SBIcon_8__UIView_16_B24l;
  v10 = a3;
  v4 = _Block_copy(aBlock);
  v5 = [(SBFolderIconGridViewing *)self->_rightWrapperView element];
  v6 = [v5 gridView];
  [v6 enumerateIconsAndViewsUsingBlock:v4];

  v7 = [(SBFolderIconGridViewing *)self->_leftWrapperView element];
  v8 = [v7 gridView];
  [v8 enumerateIconsAndViewsUsingBlock:v4];
}

void __63__SBFolderIconImageView_setAllowsGlassGroupingOnMiniGridViews___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v6 setAllowsGlassGrouping:*(a1 + 32)];
  }
}

- (void)setIconView:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFolderIconImageView;
  v4 = a3;
  [(SBIconImageView *)&v7 setIconView:v4];
  [v4 iconImageInfo];
  v6 = v5;

  [(SBFolderIconImageView *)self setPageGridCornerRadius:v6];
}

- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SBFolderIconImageView *)self _folderIcon];
  v11 = [(SBFolderIconImageView *)self _folderIconImageCache];
  v12 = v11;
  if (v10)
  {
    [v11 removeObserver:self forFolderIcon:v10];
  }

  [v10 removeObserver:self];
  v13.receiver = self;
  v13.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v13 setIcon:v8 location:v9 animated:v5];

  if (v8)
  {
    [v12 addObserver:self forFolderIcon:v8];
  }

  if ([(SBFolderIconImageView *)self usesLayersForMiniIcons])
  {
    [v8 addObserver:self];
  }
}

- (id)_currentPageListModel
{
  v2 = [(SBFolderIconImageView *)self _currentPageElement];
  v3 = [v2 folderIcon];
  v4 = [v3 folder];
  v5 = [v4 listAtIndex:{objc_msgSend(v2, "pageIndex")}];

  return v5;
}

- (UIView)currentPageView
{
  v3 = [(SBFolderIconImageView *)self isShowingRightPage];
  v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  if (v3)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (NSArray)currentPageIconCellViews
{
  v2 = [(SBFolderIconImageView *)self _currentPageElement];
  v3 = [v2 gridView];
  v4 = [v3 subviews];

  return v4;
}

- (void)_setupGridViewsInCurrentConfiguration
{
  currentPageIndex = self->_currentPageIndex;
  v4 = [(NSArray *)self->_pageElements count]- 1;
  if (currentPageIndex < v4)
  {
    v4 = currentPageIndex;
  }

  self->_currentPageIndex = v4;
  if ([(NSArray *)self->_pageElements count])
  {
    v7 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
  }

  else
  {
    v7 = 0;
  }

  v5 = [(SBFolderIconImageView *)self isShowingRightPage];
  leftWrapperView = self->_leftWrapperView;
  if (v5)
  {
    [(SBFolderIconGridViewing *)leftWrapperView setElement:0];
    [(SBFolderIconGridViewing *)self->_rightWrapperView setElement:v7];
    [(SBFolderIconImageView *)self _showRightMinigrid];
  }

  else
  {
    [(SBFolderIconGridViewing *)leftWrapperView setElement:v7];
    [(SBFolderIconGridViewing *)self->_rightWrapperView setElement:0];
    [(SBFolderIconImageView *)self _showLeftMinigrid];
  }
}

- (void)setDisplayedPageElements:(id)a3
{
  if (self->_pageElements != a3)
  {
    v4 = [a3 copy];
    pageElements = self->_pageElements;
    self->_pageElements = v4;

    [(SBFolderIconImageView *)self _setupGridViewsInCurrentConfiguration];

    [(SBFolderIconImageView *)self setNeedsLayout];
  }
}

- (id)_leadingWrapperView
{
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  if (v3 == 1)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_trailingWrapperView
{
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  if (v3 == 1)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_wrapperViewDisplayingElement:(id)a3
{
  v4 = a3;
  p_leftWrapperView = &self->_leftWrapperView;
  v6 = [(SBFolderIconGridViewing *)self->_leftWrapperView element];

  if (v6 == v4 || (p_leftWrapperView = &self->_rightWrapperView, [(SBFolderIconGridViewing *)self->_rightWrapperView element], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v4))
  {
    v8 = *p_leftWrapperView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_showRightMinigrid
{
  [(SBFolderIconImageView *)self bounds];
  pageGridContainer = self->_pageGridContainer;

  [(UIView *)pageGridContainer setBounds:v3, 0.0];
}

- (void)_showLeadingMinigrid
{
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {

    [(SBFolderIconImageView *)self _showRightMinigrid];
  }

  else
  {

    [(SBFolderIconImageView *)self _showLeftMinigrid];
  }
}

- (void)_showTrailingMinigrid
{
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {

    [(SBFolderIconImageView *)self _showLeftMinigrid];
  }

  else
  {

    [(SBFolderIconImageView *)self _showRightMinigrid];
  }
}

- (void)fulfillGridImageForPageElement:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBFolderIconImageView *)self _folderIconImageCache];
  v6 = [(SBFolderIconImageView *)self _folderIcon];
  v7 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v8 = [v4 pageIndex];
  if (v5)
  {
    v9 = [v5 imageForPageAtIndex:v8 inFolderIcon:v6 imageAppearance:v7];
    if (v9)
    {
      goto LABEL_11;
    }

    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2048;
      v18 = v8;
      _os_log_error_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_ERROR, "Did not get a folder icon image from image cache: %@, folder icon: %@, page index: %lu", &v13, 0x20u);
    }
  }

  v11 = [(SBFolderIconImageView *)self representedListLayout];
  v9 = [SBFolderIconImageCache imageForPageAtIndex:v8 inFolderIcon:v6 imageAppearance:v7 listLayout:v11 gridCellImageProvider:0 pool:0];
  if (!v9)
  {
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v6;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_ERROR, "Did not get a folder icon image from cache-less constructor for folder icon: %@, page index: %lu, layout: %@", &v13, 0x20u);
    }
  }

LABEL_11:
  [v4 setGridImage:v9];
}

- (void)fulfillGridViewForPageElement:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderIconImageView *)self _folderIcon];
  v6 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v7 = [v4 pageIndex];
  v8 = [(SBFolderIconImageView *)self cellIconImageOptions];
  v9 = [(SBFolderIconImageView *)self _folderIconImageCache];
  v10 = [v9 miniGridViewForPageAtIndex:v7 inFolderIcon:v5 imageAppearance:v6 options:v8];
  [(SBFolderIconImageView *)self configureMiniGridView:v10];
  [v4 setGridView:v10];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__SBFolderIconImageView_fulfillGridViewForPageElement___block_invoke;
  v11[3] = &unk_1E808B550;
  v11[4] = self;
  [(SBFolderIconImageView *)self enumerateCurrentPageIconLayerViewsInGridView:v10 usingBlock:v11];
}

- (void)configureMiniGridView:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  [v5 setMinificationFilter:*MEMORY[0x1E6979D68]];
  [v4 setContentVisibility:{-[SBIconImageView contentVisibility](self, "contentVisibility")}];
}

- (void)setPageGridCornerRadius:(double)a3
{
  [(SBFolderIconImageView *)self _setContinuousCornerRadius:?];
  pageGridContainer = self->_pageGridContainer;

  [(UIView *)pageGridContainer _setContinuousCornerRadius:a3];
}

- (void)enumerateCurrentPageIconLayerViewsUsingBlock:(id)a3
{
  pageElements = self->_pageElements;
  currentPageIndex = self->_currentPageIndex;
  v6 = a3;
  v8 = [(NSArray *)pageElements objectAtIndex:currentPageIndex];
  v7 = [v8 gridView];
  [(SBFolderIconImageView *)self enumerateCurrentPageIconLayerViewsInGridView:v7 usingBlock:v6];
}

- (void)enumerateCurrentPageIconLayerViewsInGridView:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SBFolderIconImageView_enumerateCurrentPageIconLayerViewsInGridView_usingBlock___block_invoke;
  v7[3] = &unk_1E808B578;
  v8 = v5;
  v6 = v5;
  [a3 enumerateIconsAndViewsUsingBlock:v7];
}

void __81__SBFolderIconImageView_enumerateCurrentPageIconLayerViewsInGridView_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateCurrentPageIconLayersUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SBFolderIconImageView_enumerateCurrentPageIconLayersUsingBlock___block_invoke;
  v6[3] = &unk_1E808B5A0;
  v7 = v4;
  v5 = v4;
  [(SBFolderIconImageView *)self enumerateCurrentPageIconLayerViewsUsingBlock:v6];
}

void __66__SBFolderIconImageView_enumerateCurrentPageIconLayersUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 iconContentLayer];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)folderIcon:(id)a3 containedIconAccessoriesDidUpdate:(id)a4
{
  [(SBFolderIconImageView *)self setDisplayedPageElements:0, a4];

  [(SBFolderIconImageView *)self updateImageAnimated:0];
}

- (void)folderIcon:(id)a3 containedIconLaunchEnabledDidChange:(id)a4
{
  [(SBFolderIconImageView *)self setDisplayedPageElements:0, a4];

  [(SBFolderIconImageView *)self updateImageAnimated:0];
}

@end