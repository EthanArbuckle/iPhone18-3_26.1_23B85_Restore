@interface SBFolderIconImageView
- (BOOL)canUpdateImage;
- (BOOL)usesLayersForMiniIcons;
- (CGRect)frameForMiniIconAtIndex:(unint64_t)index;
- (CGRect)frameForMiniIconAtIndexPath:(id)path;
- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)index;
- (CGSize)_interiorGridSize;
- (NSArray)currentPageIconCellViews;
- (SBFolderIconImageView)initWithFrame:(CGRect)frame;
- (UIView)currentPageView;
- (double)iconGridImageAlpha;
- (id)_currentPageListModel;
- (id)_folderIconImageCache;
- (id)_leadingWrapperView;
- (id)_trailingWrapperView;
- (id)_wrapperViewDisplayingElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)pageElements;
- (id)representedListLayout;
- (id)snapshot;
- (unint64_t)firstVisibleMiniIconIndex;
- (unint64_t)visibleMiniIconCount;
- (void)_performScrollingDirection:(int64_t)direction targetPageIndex:(unint64_t)index targetPageScrollRow:(unint64_t)row newLeftElement:(id)element newRightElement:(id)rightElement animated:(BOOL)animated;
- (void)_setupGridViewsInCurrentConfiguration;
- (void)_showLeadingMinigrid;
- (void)_showLeftMinigrid;
- (void)_showRightMinigrid;
- (void)_showTrailingMinigrid;
- (void)applyGlass;
- (void)cleanupAfterFloatyFolderCrossfade;
- (void)configureMiniGridView:(id)view;
- (void)dealloc;
- (void)didAnimateListLayoutProviderChange:(id)change context:(id)context;
- (void)enumerateCurrentPageIconLayerViewsInGridView:(id)view usingBlock:(id)block;
- (void)enumerateCurrentPageIconLayerViewsUsingBlock:(id)block;
- (void)enumerateCurrentPageIconLayersUsingBlock:(id)block;
- (void)folderIcon:(id)icon containedIconAccessoriesDidUpdate:(id)update;
- (void)folderIcon:(id)icon containedIconLaunchEnabledDidChange:(id)change;
- (void)folderIconImageCache:(id)cache didUpdateImagesForFolderIcon:(id)icon imageAppearance:(id)appearance;
- (void)fulfillGridImageForPageElement:(id)element;
- (void)fulfillGridViewForPageElement:(id)element;
- (void)iconImageInfoDidChange;
- (void)iconViewFolderIconImageCacheDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)prepareToCrossfadeWithFloatyFolderView:(id)view allowFolderInteraction:(BOOL)interaction;
- (void)scrollToFirstGapAnimated:(BOOL)animated;
- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)page animated:(BOOL)animated;
- (void)scrollToTopOfPage:(unint64_t)page animated:(BOOL)animated;
- (void)setAllowsGlassGroupingOnMiniGridViews:(BOOL)views;
- (void)setBackgroundAndIconGridImageAlpha:(double)alpha;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setDisplayedPageElements:(id)elements;
- (void)setFloatyFolderCrossfadeFraction:(double)fraction;
- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated;
- (void)setIconGridImageAlpha:(double)alpha;
- (void)setIconView:(id)view;
- (void)setPageGridCornerRadius:(double)radius;
- (void)updateImageAnimated:(BOOL)animated;
- (void)updateOngoingAnimationState;
- (void)willAnimateListLayoutProviderChange:(id)change context:(id)context;
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
  _iconGridImageClass = [(SBFolderIconImageView *)self _iconGridImageClass];
  representedListLayout = [(SBFolderIconImageView *)self representedListLayout];
  [(objc_class *)_iconGridImageClass sizeForLayout:representedListLayout];
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
  iconView = [(SBIconImageView *)self iconView];
  representedFolderIconLocation = [iconView representedFolderIconLocation];
  listLayoutProvider = [iconView listLayoutProvider];
  v5 = [listLayoutProvider layoutForIconLocation:representedFolderIconLocation];

  return v5;
}

- (BOOL)canUpdateImage
{
  v5.receiver = self;
  v5.super_class = SBFolderIconImageView;
  canUpdateImage = [(SBIconImageView *)&v5 canUpdateImage];
  if (canUpdateImage)
  {
    LOBYTE(canUpdateImage) = ![(SBFolderIconImageView *)self shouldAnimateIconImageInfoChange];
  }

  return canUpdateImage;
}

- (id)_folderIconImageCache
{
  iconView = [(SBIconImageView *)self iconView];
  folderIconImageCache = [iconView folderIconImageCache];

  return folderIconImageCache;
}

- (id)pageElements
{
  v48[1] = *MEMORY[0x1E69E9840];
  _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
  folder = [_folderIcon folder];
  iconView = [(SBIconImageView *)self iconView];
  overrideImage = [iconView overrideImage];
  if (overrideImage)
  {
    displayedPageElements = objc_alloc_init(_SBFolderPageElement);
    [(_SBFolderPageElement *)displayedPageElements setFolderIcon:_folderIcon];
    [(_SBFolderPageElement *)displayedPageElements setImage:overrideImage];
    v48[0] = displayedPageElements;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    goto LABEL_19;
  }

  v35 = iconView;
  displayedPageElements = [(SBFolderIconImageView *)self displayedPageElements];
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  [(SBIconImageView *)self iconImageInfo];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  listCount = [folder listCount];
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:listCount];
  v38 = listCount;
  if (listCount)
  {
    v17 = 0;
    v36 = _folderIcon;
    v37 = folder;
    while (1)
    {
      v18 = [folder listAtIndex:v17];
      icons = [v18 icons];
      v20 = [icons bs_compactMap:&__block_literal_global_27];

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __37__SBFolderIconImageView_pageElements__block_invoke_2;
      v41[3] = &unk_1E808B490;
      v21 = v20;
      v42 = v21;
      v22 = effectiveIconImageAppearance;
      v43 = v22;
      v44 = v9;
      v45 = v11;
      v46 = v13;
      v47 = v15;
      v23 = [(_SBFolderPageElement *)displayedPageElements bs_firstObjectPassingTest:v41];
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
      [(_SBFolderPageElement *)v26 setFolderIcon:_folderIcon];
      if (displayedPageElements && [(_SBFolderPageElement *)displayedPageElements count]> v17)
      {
        v27 = [(_SBFolderPageElement *)displayedPageElements objectAtIndex:v17];
        visibleRow = [v27 visibleRow];

        _folderIcon = v36;
      }

      else
      {
        visibleRow = 0;
      }

      [(_SBFolderPageElement *)v26 setVisibleRow:visibleRow];
      [(_SBFolderPageElement *)v26 setIconIdentifiers:v21];
      [(_SBFolderPageElement *)v26 setIconImageInfo:v9, v11, v13, v15];
      if (!v24)
      {
        goto LABEL_17;
      }

      imageAppearance = [v24 imageAppearance];
      if ([imageAppearance isEqual:v22])
      {
        goto LABEL_16;
      }

      gridView = [v24 gridView];
      v31 = [gridView canUpdateIconTintColorFromImageAppearance:v22];

      _folderIcon = v36;
      if (v31)
      {
        break;
      }

LABEL_17:
      [v40 addObject:v26];

      ++v17;
      folder = v37;
      if (v38 == v17)
      {
        goto LABEL_18;
      }
    }

    imageAppearance = [v24 gridView];
    tintColor = [v22 tintColor];
    [imageAppearance setIconTintColor:tintColor];

    _folderIcon = v36;
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
  v33 = objc_alloc_init(_SBFolderPageElement);
  [(_SBFolderPageElement *)v33 setPageIndex:v38];
  [(_SBFolderPageElement *)v33 setFolderIcon:_folderIcon];
  [v40 addObject:v33];

  overrideImage = 0;
  iconView = v35;
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
  effectiveIconImageStyleConfiguration = [(SBIconImageView *)self effectiveIconImageStyleConfiguration];
  -[UIView sbh_applyFolderGlassWithGrouping:userInterfaceStyle:](self, "sbh_applyFolderGlassWithGrouping:userInterfaceStyle:", -[SBIconImageView allowsGlassGrouping](self, "allowsGlassGrouping"), [effectiveIconImageStyleConfiguration iconGlassUserInterfaceStyle]);
}

- (BOOL)usesLayersForMiniIcons
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)firstVisibleMiniIconIndex
{
  _currentPageElement = [(SBFolderIconImageView *)self _currentPageElement];
  firstVisibleMiniIconIndex = [_currentPageElement firstVisibleMiniIconIndex];

  return firstVisibleMiniIconIndex;
}

- (void)cleanupAfterFloatyFolderCrossfade
{
  [(SBFolderIconImageView *)self _setAnimating:0];
  [(SBFolderIconImageView *)self setUserInteractionEnabled:0];
  effectView = [(SBIconImageView *)self effectView];
  [effectView setAlpha:1.0];
  [(SBIconImageView *)self setOverlayAlpha:1.0];
  crossfadeScalingView = self->_crossfadeScalingView;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v5;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)crossfadeScalingView setTransform:v12];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setBackgroundAlpha:1.0];
  [(SBFolderView *)self->_crossfadeFolderView returnScalingView];
  iconView = [(SBIconImageView *)self iconView];
  [iconView iconImageInfo];
  v8 = v7;
  [effectView _setContinuousCornerRadius:v7];
  [(SBFolderIconImageView *)self setPageGridCornerRadius:v8];
  crossfadeFolderView = self->_crossfadeFolderView;
  [(SBFloatyFolderView *)crossfadeFolderView cornerRadius];
  [(SBFloatyFolderView *)crossfadeFolderView setCornerRadius:?];
  v10 = self->_crossfadeScalingView;
  self->_crossfadeScalingView = 0;

  v11 = self->_crossfadeFolderView;
  self->_crossfadeFolderView = 0;
}

- (SBFolderIconImageView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SBFolderIconImageView;
  v3 = [(SBIconImageView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v4.receiver = self;
  v4.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v4 dealloc];
}

- (void)updateImageAnimated:(BOOL)animated
{
  if ([(SBFolderIconImageView *)self canUpdateImage])
  {
    _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
    folder = [_folderIcon folder];
    if (_folderIcon && folder)
    {
      effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
      [(SBFolderIconImageView *)self setDisplayedImageAppearance:effectiveIconImageAppearance];
      pageElements = [(SBFolderIconImageView *)self pageElements];
      [(SBFolderIconImageView *)self setDisplayedPageElements:pageElements];
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

- (void)willAnimateListLayoutProviderChange:(id)change context:(id)context
{
  changeCopy = change;
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v31 willAnimateListLayoutProviderChange:changeCopy context:contextCopy];
  [(SBFolderIconImageView *)self setShouldAnimateIconImageInfoChange:1];
  if ([objc_opt_class() allowsLayersForMiniIcons])
  {
    location = [(SBIconImageView *)self location];
    v9 = [changeCopy layoutForIconLocation:location];
    v10 = SBHIconListLayoutFolderIconGridCellIconImageInfo(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
    cellIconImageOptions = [(SBFolderIconImageView *)self cellIconImageOptions];
    _currentPageListModel = [(SBFolderIconImageView *)self _currentPageListModel];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__SBFolderIconImageView_willAnimateListLayoutProviderChange_context___block_invoke;
    v23[3] = &unk_1E808B4B8;
    v26 = v10;
    v27 = v12;
    v28 = v14;
    v29 = v16;
    v30 = cellIconImageOptions;
    v24 = effectiveIconImageAppearance;
    v25 = v20;
    v21 = v20;
    v22 = effectiveIconImageAppearance;
    [_currentPageListModel enumerateIconsUsingBlock:v23];
    [contextCopy setObject:v21 forKey:@"SBFolderIconImageViewPrefetchAssertions"];
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

- (void)didAnimateListLayoutProviderChange:(id)change context:(id)context
{
  v8.receiver = self;
  v8.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v8 didAnimateListLayoutProviderChange:change context:context];
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
  layer = [(SBFolderIconImageView *)self layer];
  [layer setShouldRasterize:0];

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
  _folderIconImageCache = [(SBFolderIconImageView *)self _folderIconImageCache];
  icon = [(SBIconImageView *)self icon];
  if (icon)
  {
    [_folderIconImageCache addObserver:self forFolderIcon:icon];
  }

  if (-[SBFolderIconImageView shouldAnimateIconImageInfoChange](self, "shouldAnimateIconImageInfoChange") && ([objc_opt_class() allowsLayersForMiniIcons] & 1) == 0)
  {
    pageElements = [(SBFolderIconImageView *)self pageElements];
    firstObject = [pageElements firstObject];
    image = [firstObject image];
    if (!image)
    {
      [(SBFolderIconImageView *)self fulfillGridImageForPageElement:firstObject];
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
    traitCollection = [(SBFolderIconImageView *)self traitCollection];
    [traitCollection displayScale];
    v16 = v15;

    v17 = MEMORY[0x1E69DCAB8];
    sbf_CGImageBackedImage = [v11 sbf_CGImageBackedImage];
    v19 = [v17 imageWithCGImage:objc_msgSend(sbf_CGImageBackedImage scale:"CGImage") orientation:{0, v16}];

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

- (void)scrollToFirstGapAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NSArray *)self->_pageElements count])
  {
    return;
  }

  _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
  folder = [_folderIcon folder];
  _indexPathToRevealForJiggleMode = [folder _indexPathToRevealForJiggleMode];

  v7 = SBFolderRelativeListIndex(_indexPathToRevealForJiggleMode);
  if (_indexPathToRevealForJiggleMode)
  {
    v8 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < [(NSArray *)self->_pageElements count])
    {
      v9 = [(NSArray *)self->_pageElements objectAtIndex:v8];
      firstVisibleRowForGap = [v9 firstVisibleRowForGap];
      v10 = MEMORY[0x1E69DDA98];
      userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      currentPageIndex = self->_currentPageIndex;
      if (v8 >= currentPageIndex)
      {
        if (v8 <= currentPageIndex)
        {
          userInterfaceLayoutDirection2 = [*v10 userInterfaceLayoutDirection];
          v19 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
          v14 = 0;
          v20 = userInterfaceLayoutDirection2 == 0;
          if (userInterfaceLayoutDirection2)
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

        if (userInterfaceLayoutDirection == 1)
        {
          v13 = v8;
        }

        else
        {
          v13 = self->_currentPageIndex;
        }

        if (userInterfaceLayoutDirection == 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (userInterfaceLayoutDirection == 1)
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
        if (userInterfaceLayoutDirection == 1)
        {
          v13 = self->_currentPageIndex;
        }

        else
        {
          v13 = v8;
        }

        if (userInterfaceLayoutDirection == 1)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        if (userInterfaceLayoutDirection == 1)
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
      if (self->_currentPageIndex != v8 || [v21 visibleRow] != firstVisibleRowForGap)
      {
        [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:v8 targetPageScrollRow:firstVisibleRowForGap newLeftElement:v16 newRightElement:v17 animated:animatedCopy];
      }
    }
  }
}

- (void)scrollToTopOfPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(NSArray *)self->_pageElements count];
  if (page == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  if (v7 <= page)
  {
    return;
  }

  if (self->_currentPageIndex == page)
  {
    v8 = [(NSArray *)self->_pageElements objectAtIndex:page];
    visibleRow = [v8 visibleRow];

    if (!visibleRow)
    {
      return;
    }
  }

  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v11 = userInterfaceLayoutDirection;
  currentPageIndex = self->_currentPageIndex;
  if (currentPageIndex <= page)
  {
    if (currentPageIndex >= page)
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

    if (userInterfaceLayoutDirection == 1)
    {
      pageCopy3 = page;
    }

    else
    {
      pageCopy3 = self->_currentPageIndex;
    }

    if (userInterfaceLayoutDirection == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (userInterfaceLayoutDirection == 1)
    {
      pageCopy4 = self->_currentPageIndex;
    }

    else
    {
      pageCopy4 = page;
    }
  }

  else
  {
    if (userInterfaceLayoutDirection == 1)
    {
      pageCopy3 = self->_currentPageIndex;
    }

    else
    {
      pageCopy3 = page;
    }

    if (userInterfaceLayoutDirection == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (userInterfaceLayoutDirection == 1)
    {
      pageCopy4 = page;
    }

    else
    {
      pageCopy4 = self->_currentPageIndex;
    }
  }

  v19 = [(NSArray *)self->_pageElements objectAtIndex:pageCopy3];
  v16 = [(NSArray *)self->_pageElements objectAtIndex:pageCopy4];
LABEL_33:
  [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:page targetPageScrollRow:0 newLeftElement:v19 newRightElement:v16 animated:animatedCopy];
}

- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSArray *)self->_pageElements count]> page)
  {
    _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
    folder = [_folderIcon folder];
    v9 = [folder indexPathForFirstFreeSlotAvoidingFirstList:0];

    if (SBFolderRelativeListIndex(v9) == page)
    {
      v10 = [(NSArray *)self->_pageElements objectAtIndex:page];
      firstVisibleRowForGap = [v10 firstVisibleRowForGap];
    }

    else
    {
      firstVisibleRowForGap = 0;
    }

    currentPageIndex = self->_currentPageIndex;
    if (currentPageIndex <= page)
    {
      v17 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
      if (currentPageIndex >= page)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        v13 = [(NSArray *)self->_pageElements objectAtIndex:page];
        v14 = 2;
      }
    }

    else
    {
      v17 = [(NSArray *)self->_pageElements objectAtIndex:page];
      v13 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
      v14 = 1;
    }

    v15 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
    v16 = v15;
    if (self->_currentPageIndex != page || [v15 visibleRow] != firstVisibleRowForGap)
    {
      [(SBFolderIconImageView *)self _performScrollingDirection:v14 targetPageIndex:page targetPageScrollRow:firstVisibleRowForGap newLeftElement:v17 newRightElement:v13 animated:animatedCopy];
    }
  }
}

- (unint64_t)visibleMiniIconCount
{
  representedListLayout = [(SBFolderIconImageView *)self representedListLayout];
  v3 = [representedListLayout numberOfRowsForOrientation:1];
  v4 = [representedListLayout numberOfColumnsForOrientation:1] * v3;

  return v4;
}

- (CGRect)frameForMiniIconAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:index listIndex:self->_currentPageIndex];
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

- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)index
{
  [(SBFolderIconImageView *)self frameForMiniIconAtIndex:index];
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

- (CGRect)frameForMiniIconAtIndexPath:(id)path
{
  pathCopy = path;
  [(SBFolderIconImageView *)self layoutIfNeeded];
  v5 = [(NSArray *)self->_pageElements count];
  if (v5 <= [pathCopy sbListIndex])
  {
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    sbIconIndex = [pathCopy sbIconIndex];
    v7 = -[NSArray objectAtIndex:](self->_pageElements, "objectAtIndex:", [pathCopy sbListIndex]);
    gridImage = [v7 gridImage];
    v13 = objc_opt_class();
    v14 = [(SBFolderIconImageView *)self _wrapperViewDisplayingElement:v7];
    representedListLayout = [(SBFolderIconImageView *)self representedListLayout];
    firstVisibleMiniIconIndex = [(SBFolderIconImageView *)self firstVisibleMiniIconIndex];
    _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
    v18 = [_folderIcon gridCellIndexForIconIndex:sbIconIndex];

    [v13 rectAtIndex:firstVisibleMiniIconIndex inLayout:representedListLayout maxCount:{objc_msgSend(gridImage, "numberOfCells")}];
    v20 = v19;
    [v13 rectAtIndex:v18 inLayout:representedListLayout maxCount:{objc_msgSend(gridImage, "numberOfCells")}];
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

- (void)setIconGridImageAlpha:(double)alpha
{
  [(SBFolderIconGridViewing *)self->_leftWrapperView setAlpha:?];
  rightWrapperView = self->_rightWrapperView;

  [(SBFolderIconGridViewing *)rightWrapperView setAlpha:alpha];
}

- (void)setBackgroundAndIconGridImageAlpha:(double)alpha
{
  [(SBFolderIconGridViewing *)self->_leftWrapperView setAlpha:?];
  rightWrapperView = self->_rightWrapperView;

  [(SBFolderIconGridViewing *)rightWrapperView setAlpha:alpha];
}

- (void)prepareToCrossfadeWithFloatyFolderView:(id)view allowFolderInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  viewCopy = view;
  [(SBFolderIconImageView *)self _setAnimating:1];
  [(SBFolderIconImageView *)self setUserInteractionEnabled:interactionCopy];
  crossfadeFolderView = self->_crossfadeFolderView;
  self->_crossfadeFolderView = viewCopy;
  v8 = viewCopy;

  borrowScalingView = [(SBFolderView *)v8 borrowScalingView];
  crossfadeScalingView = self->_crossfadeScalingView;
  self->_crossfadeScalingView = borrowScalingView;

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

- (void)setFloatyFolderCrossfadeFraction:(double)fraction
{
  effectView = [(SBIconImageView *)self effectView];
  [effectView setAlpha:1.0 - fraction];
  [(SBIconImageView *)self setOverlayAlpha:1.0 - fraction];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setBackgroundAlpha:fraction];
  [(SBIconImageView *)self visibleBounds];
  v6 = v5;
  [(UIView *)self->_crossfadeScalingView bounds];
  v8 = v6 / v7;
  iconView = [(SBIconImageView *)self iconView];
  [iconView iconImageInfo];
  v11 = v10;
  [(SBFloatyFolderView *)self->_crossfadeFolderView cornerRadius];
  v13 = v12;
  v14 = v8 * v12 * fraction + (1.0 - fraction) * v11;
  [effectView _setContinuousCornerRadius:v14];
  [(SBFolderIconImageView *)self setPageGridCornerRadius:v14];
  [(SBFloatyFolderView *)self->_crossfadeFolderView setCornerRadius:v13 * fraction + (1.0 - fraction) * (v11 / v8)];
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v15 setContentVisibility:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  displayedPageElements = [(SBFolderIconImageView *)self displayedPageElements];
  v6 = [displayedPageElements countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(displayedPageElements);
        }

        gridView = [*(*(&v11 + 1) + 8 * v9) gridView];
        [gridView setContentVisibility:visibility];

        ++v9;
      }

      while (v7 != v9);
      v7 = [displayedPageElements countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBFolderIconImageView;
  v4 = [(SBIconImageView *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_animating withName:@"animating"];

  return v4;
}

- (void)folderIconImageCache:(id)cache didUpdateImagesForFolderIcon:(id)icon imageAppearance:(id)appearance
{
  cacheCopy = cache;
  iconCopy = icon;
  appearanceCopy = appearance;
  if (!appearanceCopy)
  {
    goto LABEL_5;
  }

  displayedImageAppearance = [(SBFolderIconImageView *)self displayedImageAppearance];
  if (!displayedImageAppearance || [appearanceCopy isEqual:displayedImageAppearance])
  {

LABEL_5:
    [(SBFolderIconImageView *)self updateImageAnimated:0];
    goto LABEL_6;
  }

LABEL_6:
}

- (void)_performScrollingDirection:(int64_t)direction targetPageIndex:(unint64_t)index targetPageScrollRow:(unint64_t)row newLeftElement:(id)element newRightElement:(id)rightElement animated:(BOOL)animated
{
  animatedCopy = animated;
  p_leftWrapperView = &self->_leftWrapperView;
  leftWrapperView = self->_leftWrapperView;
  rightElementCopy = rightElement;
  [(SBFolderIconGridViewing *)leftWrapperView setElement:element];
  p_rightWrapperView = &self->_rightWrapperView;
  [(SBFolderIconGridViewing *)self->_rightWrapperView setElement:rightElementCopy];

  if (direction == 1)
  {
    [(SBFolderIconImageView *)self _showRightMinigrid];
    p_rightWrapperView = p_leftWrapperView;
LABEL_5:
    [(SBFolderIconGridViewing *)*p_rightWrapperView positionAtRow:row];
    if (animatedCopy)
    {
      v18 = 0.4;
    }

    else
    {
      v18 = 0.0;
    }

    goto LABEL_12;
  }

  if (direction == 2)
  {
    [(SBFolderIconImageView *)self _showLeftMinigrid];
    goto LABEL_5;
  }

  if (animatedCopy)
  {
    v18 = 0.4;
  }

  else
  {
    v18 = 0.0;
  }

  if (!direction)
  {
    v19 = 1;
    goto LABEL_15;
  }

LABEL_12:
  if (animatedCopy)
  {
    [(SBFolderIconImageView *)self _setAnimating:1];
    [(SBFolderIconImageView *)self setAllowsGlassGroupingOnMiniGridViews:0];
  }

  [(SBFolderIconImageView *)self setShowingRightPage:direction == 2];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke;
  v27[3] = &unk_1E8088CB8;
  v27[4] = self;
  v27[5] = direction;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_2;
  v25[3] = &unk_1E808B508;
  v26 = animatedCopy;
  v25[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v27 options:v25 animations:v18 completion:0.0];
  v19 = 0;
LABEL_15:
  v20 = [(NSArray *)self->_pageElements objectAtIndex:self->_currentPageIndex];
  visibleRow = [v20 visibleRow];
  if (v19 && visibleRow != row)
  {
    if (animatedCopy)
    {
      [(SBFolderIconImageView *)self _setAnimating:1];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_3;
    v24[3] = &unk_1E8088CB8;
    v24[4] = self;
    v24[5] = row;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__SBFolderIconImageView__performScrollingDirection_targetPageIndex_targetPageScrollRow_newLeftElement_newRightElement_animated___block_invoke_4;
    v22[3] = &unk_1E808B508;
    v23 = animatedCopy;
    v22[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v24 options:v22 animations:v18 completion:0.0];
  }

  self->_currentPageIndex = index;
  if (!animatedCopy)
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

- (void)setAllowsGlassGroupingOnMiniGridViews:(BOOL)views
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBFolderIconImageView_setAllowsGlassGroupingOnMiniGridViews___block_invoke;
  aBlock[3] = &__block_descriptor_33_e31_v32__0__SBIcon_8__UIView_16_B24l;
  viewsCopy = views;
  v4 = _Block_copy(aBlock);
  element = [(SBFolderIconGridViewing *)self->_rightWrapperView element];
  gridView = [element gridView];
  [gridView enumerateIconsAndViewsUsingBlock:v4];

  element2 = [(SBFolderIconGridViewing *)self->_leftWrapperView element];
  gridView2 = [element2 gridView];
  [gridView2 enumerateIconsAndViewsUsingBlock:v4];
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

- (void)setIconView:(id)view
{
  v7.receiver = self;
  v7.super_class = SBFolderIconImageView;
  viewCopy = view;
  [(SBIconImageView *)&v7 setIconView:viewCopy];
  [viewCopy iconImageInfo];
  v6 = v5;

  [(SBFolderIconImageView *)self setPageGridCornerRadius:v6];
}

- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  iconCopy = icon;
  locationCopy = location;
  _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
  _folderIconImageCache = [(SBFolderIconImageView *)self _folderIconImageCache];
  v12 = _folderIconImageCache;
  if (_folderIcon)
  {
    [_folderIconImageCache removeObserver:self forFolderIcon:_folderIcon];
  }

  [_folderIcon removeObserver:self];
  v13.receiver = self;
  v13.super_class = SBFolderIconImageView;
  [(SBIconImageView *)&v13 setIcon:iconCopy location:locationCopy animated:animatedCopy];

  if (iconCopy)
  {
    [v12 addObserver:self forFolderIcon:iconCopy];
  }

  if ([(SBFolderIconImageView *)self usesLayersForMiniIcons])
  {
    [iconCopy addObserver:self];
  }
}

- (id)_currentPageListModel
{
  _currentPageElement = [(SBFolderIconImageView *)self _currentPageElement];
  folderIcon = [_currentPageElement folderIcon];
  folder = [folderIcon folder];
  v5 = [folder listAtIndex:{objc_msgSend(_currentPageElement, "pageIndex")}];

  return v5;
}

- (UIView)currentPageView
{
  isShowingRightPage = [(SBFolderIconImageView *)self isShowingRightPage];
  v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  if (isShowingRightPage)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (NSArray)currentPageIconCellViews
{
  _currentPageElement = [(SBFolderIconImageView *)self _currentPageElement];
  gridView = [_currentPageElement gridView];
  subviews = [gridView subviews];

  return subviews;
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

  isShowingRightPage = [(SBFolderIconImageView *)self isShowingRightPage];
  leftWrapperView = self->_leftWrapperView;
  if (isShowingRightPage)
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

- (void)setDisplayedPageElements:(id)elements
{
  if (self->_pageElements != elements)
  {
    v4 = [elements copy];
    pageElements = self->_pageElements;
    self->_pageElements = v4;

    [(SBFolderIconImageView *)self _setupGridViewsInCurrentConfiguration];

    [(SBFolderIconImageView *)self setNeedsLayout];
  }
}

- (id)_leadingWrapperView
{
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  if (userInterfaceLayoutDirection == 1)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_trailingWrapperView
{
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SBFolderIconImageView__rightWrapperView;
  if (userInterfaceLayoutDirection == 1)
  {
    v4 = &OBJC_IVAR___SBFolderIconImageView__leftWrapperView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_wrapperViewDisplayingElement:(id)element
{
  elementCopy = element;
  p_leftWrapperView = &self->_leftWrapperView;
  element = [(SBFolderIconGridViewing *)self->_leftWrapperView element];

  if (element == elementCopy || (p_leftWrapperView = &self->_rightWrapperView, [(SBFolderIconGridViewing *)self->_rightWrapperView element], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == elementCopy))
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

- (void)fulfillGridImageForPageElement:(id)element
{
  v19 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  _folderIconImageCache = [(SBFolderIconImageView *)self _folderIconImageCache];
  _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  pageIndex = [elementCopy pageIndex];
  if (_folderIconImageCache)
  {
    v9 = [_folderIconImageCache imageForPageAtIndex:pageIndex inFolderIcon:_folderIcon imageAppearance:effectiveIconImageAppearance];
    if (v9)
    {
      goto LABEL_11;
    }

    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = _folderIconImageCache;
      v15 = 2112;
      v16 = _folderIcon;
      v17 = 2048;
      v18 = pageIndex;
      _os_log_error_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_ERROR, "Did not get a folder icon image from image cache: %@, folder icon: %@, page index: %lu", &v13, 0x20u);
    }
  }

  representedListLayout = [(SBFolderIconImageView *)self representedListLayout];
  v9 = [SBFolderIconImageCache imageForPageAtIndex:pageIndex inFolderIcon:_folderIcon imageAppearance:effectiveIconImageAppearance listLayout:representedListLayout gridCellImageProvider:0 pool:0];
  if (!v9)
  {
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = _folderIcon;
      v15 = 2048;
      v16 = pageIndex;
      v17 = 2112;
      v18 = representedListLayout;
      _os_log_error_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_ERROR, "Did not get a folder icon image from cache-less constructor for folder icon: %@, page index: %lu, layout: %@", &v13, 0x20u);
    }
  }

LABEL_11:
  [elementCopy setGridImage:v9];
}

- (void)fulfillGridViewForPageElement:(id)element
{
  elementCopy = element;
  _folderIcon = [(SBFolderIconImageView *)self _folderIcon];
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  pageIndex = [elementCopy pageIndex];
  cellIconImageOptions = [(SBFolderIconImageView *)self cellIconImageOptions];
  _folderIconImageCache = [(SBFolderIconImageView *)self _folderIconImageCache];
  v10 = [_folderIconImageCache miniGridViewForPageAtIndex:pageIndex inFolderIcon:_folderIcon imageAppearance:effectiveIconImageAppearance options:cellIconImageOptions];
  [(SBFolderIconImageView *)self configureMiniGridView:v10];
  [elementCopy setGridView:v10];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__SBFolderIconImageView_fulfillGridViewForPageElement___block_invoke;
  v11[3] = &unk_1E808B550;
  v11[4] = self;
  [(SBFolderIconImageView *)self enumerateCurrentPageIconLayerViewsInGridView:v10 usingBlock:v11];
}

- (void)configureMiniGridView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer setMinificationFilter:*MEMORY[0x1E6979D68]];
  [viewCopy setContentVisibility:{-[SBIconImageView contentVisibility](self, "contentVisibility")}];
}

- (void)setPageGridCornerRadius:(double)radius
{
  [(SBFolderIconImageView *)self _setContinuousCornerRadius:?];
  pageGridContainer = self->_pageGridContainer;

  [(UIView *)pageGridContainer _setContinuousCornerRadius:radius];
}

- (void)enumerateCurrentPageIconLayerViewsUsingBlock:(id)block
{
  pageElements = self->_pageElements;
  currentPageIndex = self->_currentPageIndex;
  blockCopy = block;
  v8 = [(NSArray *)pageElements objectAtIndex:currentPageIndex];
  gridView = [v8 gridView];
  [(SBFolderIconImageView *)self enumerateCurrentPageIconLayerViewsInGridView:gridView usingBlock:blockCopy];
}

- (void)enumerateCurrentPageIconLayerViewsInGridView:(id)view usingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SBFolderIconImageView_enumerateCurrentPageIconLayerViewsInGridView_usingBlock___block_invoke;
  v7[3] = &unk_1E808B578;
  v8 = blockCopy;
  v6 = blockCopy;
  [view enumerateIconsAndViewsUsingBlock:v7];
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

- (void)enumerateCurrentPageIconLayersUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SBFolderIconImageView_enumerateCurrentPageIconLayersUsingBlock___block_invoke;
  v6[3] = &unk_1E808B5A0;
  v7 = blockCopy;
  v5 = blockCopy;
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

- (void)folderIcon:(id)icon containedIconAccessoriesDidUpdate:(id)update
{
  [(SBFolderIconImageView *)self setDisplayedPageElements:0, update];

  [(SBFolderIconImageView *)self updateImageAnimated:0];
}

- (void)folderIcon:(id)icon containedIconLaunchEnabledDidChange:(id)change
{
  [(SBFolderIconImageView *)self setDisplayedPageElements:0, change];

  [(SBFolderIconImageView *)self updateImageAnimated:0];
}

@end