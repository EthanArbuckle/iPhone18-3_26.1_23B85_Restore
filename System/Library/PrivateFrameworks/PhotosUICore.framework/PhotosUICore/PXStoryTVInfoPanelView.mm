@interface PXStoryTVInfoPanelView
+ (CGSize)sizeThatFits:(CGSize)fits;
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (PXStoryTVInfoPanelView)initWithFrame:(CGRect)frame;
- (void)_dismiss;
- (void)_invalidateAutolayoutConstraints;
- (void)_invalidateColorGradeLabel;
- (void)_invalidateCompositingFilters;
- (void)_invalidateContentAlpha;
- (void)_invalidateFooterLabel;
- (void)_invalidateKeyAsset;
- (void)_invalidateMainModel;
- (void)_invalidateMusicLabel;
- (void)_invalidateRecipeManager;
- (void)_invalidateTitleLabel;
- (void)_reuseAssetView;
- (void)_updateAutolayoutConstraints;
- (void)_updateColorGradeLabel;
- (void)_updateCompositingFilters;
- (void)_updateContentAlpha;
- (void)_updateFooterLabel;
- (void)_updateKeyAsset;
- (void)_updateMainModel;
- (void)_updateMusicLabel;
- (void)_updateRecipeManager;
- (void)_updateTitleLabel;
- (void)addHostedLayer:(id)layer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setMainModel:(id)model;
- (void)setRecipeManager:(id)manager;
- (void)setUserData:(id)data;
- (void)setViewModel:(id)model;
@end

@implementation PXStoryTVInfoPanelView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  layer = [(PXStoryTVInfoPanelView *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)layer
{
  layerCopy = layer;
  layer = [(PXStoryTVInfoPanelView *)self layer];
  [layer addSublayer:layerCopy];
}

- (void)prepareForReuse
{
  [(PXStoryTVInfoPanelView *)self setUserData:0];

  [(PXStoryTVInfoPanelView *)self _reuseAssetView];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v11 = dataCopy;
    v6 = [(PXStoryTVInfoPanelViewConfiguration *)dataCopy isEqual:?];
    v5 = v11;
    if (!v6)
    {
      v7 = [(PXStoryTVInfoPanelViewConfiguration *)v11 copy];
      userData = self->_userData;
      self->_userData = v7;

      userData = [(PXStoryTVInfoPanelView *)self userData];
      viewModel = [userData viewModel];
      [(PXStoryTVInfoPanelView *)self setViewModel:viewModel];

      v5 = v11;
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_167474 == context)
  {
    if ((change & 0x40) != 0)
    {
      [(PXStoryTVInfoPanelView *)self _invalidateMainModel];
      if ((change & 0x20) == 0)
      {
LABEL_8:
        if ((change & 0x10) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        [(PXStoryTVInfoPanelView *)self _invalidateTitleLabel];
        goto LABEL_20;
      }
    }

    else if ((change & 0x20) == 0)
    {
      goto LABEL_8;
    }

    [(PXStoryTVInfoPanelView *)self _invalidateAutolayoutConstraints];
    if ((change & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (ModelObservationContext_167475 == context)
  {
    if ((change & 0x800000000000000) != 0)
    {
      [(PXStoryTVInfoPanelView *)self _invalidateContentAlpha];
      if ((change & 0x200) == 0)
      {
LABEL_12:
        if ((change & 0x100000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        [(PXStoryTVInfoPanelView *)self _invalidateColorGradeLabel];
        goto LABEL_20;
      }
    }

    else if ((change & 0x200) == 0)
    {
      goto LABEL_12;
    }

    [(PXStoryTVInfoPanelView *)self _invalidateMusicLabel];
    if ((change & 0x100000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (RecipeManagerObservationContext_167476 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVInfoPanelView.m" lineNumber:686 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (change)
  {
    [(PXStoryTVInfoPanelView *)self _invalidateKeyAsset];
    [(PXStoryTVInfoPanelView *)self _invalidateFooterLabel];
  }

LABEL_20:
}

- (void)setRecipeManager:(id)manager
{
  managerCopy = manager;
  recipeManager = self->_recipeManager;
  if (recipeManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXStoryRecipeManager *)recipeManager unregisterChangeObserver:self context:RecipeManagerObservationContext_167476];
    objc_storeStrong(&self->_recipeManager, manager);
    [(PXStoryRecipeManager *)self->_recipeManager registerChangeObserver:self context:RecipeManagerObservationContext_167476];
    [(PXStoryTVInfoPanelView *)self _invalidateKeyAsset];
    managerCopy = v7;
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:ModelObservationContext_167475];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:ModelObservationContext_167475];
    [(PXStoryTVInfoPanelView *)self _invalidateRecipeManager];
    [(PXStoryTVInfoPanelView *)self _invalidateMusicLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateColorGradeLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateContentAlpha];
    modelCopy = v7;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_167474];
    objc_storeStrong(&self->_viewModel, model);
    [(PXStoryViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_167474];
    [(PXStoryTVInfoPanelView *)self _invalidateMainModel];
    [(PXStoryTVInfoPanelView *)self _invalidateTitleLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateFooterLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateAutolayoutConstraints];
    modelCopy = v7;
  }
}

- (void)_updateAutolayoutConstraints
{
  viewModel = [(PXStoryTVInfoPanelView *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  [viewLayoutSpec infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintLeading setConstant:v4];
  [viewLayoutSpec infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintTrailing setConstant:v5];
  [viewLayoutSpec infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintBottom setConstant:v6];
  [viewLayoutSpec infoPanelHeight];
  [(NSLayoutConstraint *)self->_panelHeightConstraint setConstant:?];
  [viewLayoutSpec infoPanelButtonOffset];
  [(NSLayoutConstraint *)self->_infoButtonLeadingConstraint setConstant:?];
  [viewLayoutSpec infoPanelButtonOffset];
  [(NSLayoutConstraint *)self->_infoButtonBottomConstraint setConstant:v7];
  [viewLayoutSpec infoPanelButtonHeight];
  [(NSLayoutConstraint *)self->_infoButtonHeightConstraint setConstant:?];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintTop setConstant:?];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintBottom setConstant:v8];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintLeading setConstant:v9];
  [viewLayoutSpec infoPanelAssetToSymbolCenter];
  [(NSLayoutConstraint *)self->_musicSymbolCenterConstraint setConstant:?];
  [viewLayoutSpec infoPanelAssetToSymbolCenter];
  [(NSLayoutConstraint *)self->_colorGradeSymbolCenterConstraint setConstant:?];
  [viewLayoutSpec infoPanelAssetToMetadataLabel];
  [(NSLayoutConstraint *)self->_musicLabelLeadingConstraint setConstant:?];
  [viewLayoutSpec infoPanelAssetToMetadataLabel];
  [(NSLayoutConstraint *)self->_colorGradeLabelLeadingConstraint setConstant:?];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_colorGradeLabelTrailingConstraint setConstant:-v10];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_musicLabelTrailingConstraint setConstant:-v11];
  [viewLayoutSpec infoPanelFooterLabelBaselineFromBottom];
  [(NSLayoutConstraint *)self->_footerLabelBaselineConstraint setConstant:?];
  [viewLayoutSpec infoPanelTitleLabelBaselineFromTop];
  [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setConstant:?];
  [viewLayoutSpec infoPanelTitleToMetadataBaselines];
  [(NSLayoutConstraint *)self->_titleToMetadataBaselineConstraint setConstant:?];
  [viewLayoutSpec infoPanelMetadataToMetadataBaselines];
  [(NSLayoutConstraint *)self->_musicToColorGradeBaselineConstraint setConstant:?];
  [viewLayoutSpec infoPanelDistanceBetweenAssetAndTitleLabel];
  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:?];
  [viewLayoutSpec infoPanelDistanceBetweenAssetAndTitleLabel];
  [(NSLayoutConstraint *)self->_footerLabelLeadingConstraint setConstant:?];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:-v12];
  [viewLayoutSpec infoPanelPadding];
  [(NSLayoutConstraint *)self->_footerLabelTrailingConstraint setConstant:-v13];
  [(NSLayoutConstraint *)self->_assetContainerConstraintAspectRatio setActive:0];
  widthAnchor = [(UIView *)self->_assetContainerView widthAnchor];
  heightAnchor = [(UIView *)self->_assetContainerView heightAnchor];
  [viewLayoutSpec infoPanelAssetAspectRatio];
  v16 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:?];
  assetContainerConstraintAspectRatio = self->_assetContainerConstraintAspectRatio;
  self->_assetContainerConstraintAspectRatio = v16;

  [(NSLayoutConstraint *)self->_assetContainerConstraintAspectRatio setActive:1];
}

- (void)_invalidateAutolayoutConstraints
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutolayoutConstraints];
}

- (void)_updateCompositingFilters
{
  v10 = *MEMORY[0x1E6979CE8];
  traitCollection = [(PXStoryTVInfoPanelView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v5 = *MEMORY[0x1E6979CF8];

    v10 = v5;
  }

  layer = [(UIImageView *)self->_musicSymbolView layer];
  [layer setCompositingFilter:v10];

  layer2 = [(UILabel *)self->_musicLabel layer];
  [layer2 setCompositingFilter:v10];

  layer3 = [(UIImageView *)self->_colorGradeSymbolView layer];
  [layer3 setCompositingFilter:v10];

  layer4 = [(UILabel *)self->_colorGradeLabel layer];
  [layer4 setCompositingFilter:v10];
}

- (void)_invalidateCompositingFilters
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateCompositingFilters];
}

- (void)_updateContentAlpha
{
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  [mainModel infoPanelVisibilityFraction];
  v5 = v4;

  [(UIView *)self->_backgroundView setAlpha:v5];
  [(UIView *)self->_assetContainerView setAlpha:v5];
  [(UILabel *)self->_titleLabel setAlpha:v5];
  [(UIImageView *)self->_musicSymbolView setAlpha:v5];
  [(UILabel *)self->_musicLabel setAlpha:v5];
  [(UIImageView *)self->_colorGradeSymbolView setAlpha:v5];
  [(UILabel *)self->_colorGradeLabel setAlpha:v5];
  footerLabel = self->_footerLabel;

  [(UILabel *)footerLabel setAlpha:v5];
}

- (void)_invalidateContentAlpha
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentAlpha];
}

- (void)_updateFooterLabel
{
  recipeManager = [(PXStoryTVInfoPanelView *)self recipeManager];
  recipe = [recipeManager recipe];
  curatedAssets = [recipe curatedAssets];

  if (curatedAssets)
  {
    [curatedAssets countOfAssetsWithMediaType:1];
    [curatedAssets countOfAssetsWithMediaType:2];
    v5 = PLLocalizedCountDescription();
    v6 = +[PXStorySettings sharedInstance];
    simulateLongChromeStrings = [v6 simulateLongChromeStrings];

    if (simulateLongChromeStrings)
    {
      v8 = [v5 px_stringByRepeating:10];

      v5 = v8;
    }

    [(UILabel *)self->_footerLabel setHidden:0];
    [(UILabel *)self->_footerLabel setText:v5];
  }

  else
  {
    [(UILabel *)self->_footerLabel setHidden:1];
    [(UILabel *)self->_footerLabel setText:&stru_1F1741150];
  }
}

- (void)_invalidateFooterLabel
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterLabel];
}

- (void)_updateColorGradeLabel
{
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  currentStyle = [mainModel currentStyle];
  customColorGradeKind = [currentStyle customColorGradeKind];

  if (!customColorGradeKind)
  {
    mainModel2 = [(PXStoryTVInfoPanelView *)self mainModel];
    currentStyle2 = [mainModel2 currentStyle];
    originalColorGradeCategory = [currentStyle2 originalColorGradeCategory];

    mainModel3 = [(PXStoryTVInfoPanelView *)self mainModel];
    colorGradingRepository = [mainModel3 colorGradingRepository];
    customColorGradeKind = [colorGradingRepository colorGradeKindForColorGradeCategory:originalColorGradeCategory];
  }

  mainModel4 = [(PXStoryTVInfoPanelView *)self mainModel];
  colorGradingRepository2 = [mainModel4 colorGradingRepository];
  v16 = [colorGradingRepository2 localizedTitleForColorGradeKind:customColorGradeKind];

  v13 = +[PXStorySettings sharedInstance];
  LODWORD(mainModel4) = [v13 simulateLongChromeStrings];

  if (mainModel4)
  {
    v14 = [v16 px_stringByRepeating:10];

    v15 = v14;
  }

  else
  {
    v15 = v16;
  }

  v17 = v15;
  [(UILabel *)self->_colorGradeLabel setText:v15];
}

- (void)_invalidateColorGradeLabel
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateColorGradeLabel];
}

- (void)_updateMusicLabel
{
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  currentSongResource = [mainModel currentSongResource];

  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];
  v5 = px_storyResourceSongAsset;
  if (px_storyResourceSongAsset)
  {
    title = [px_storyResourceSongAsset title];
    artistName = [v5 artistName];
    v8 = +[PXStorySettings sharedInstance];
    simulateLongChromeStrings = [v8 simulateLongChromeStrings];

    if (simulateLongChromeStrings)
    {
      [title px_stringByRepeating:10];
      objc_claimAutoreleasedReturnValue();

      [artistName px_stringByRepeating:10];
      objc_claimAutoreleasedReturnValue();
    }

    PXLocalizedStringFromTable(@"InteractiveMemoryChromeLandscapeSongTitleFormat", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  [(UILabel *)self->_musicLabel setHidden:1];
  [(UIImageView *)self->_musicSymbolView setHidden:1];
}

- (void)_invalidateMusicLabel
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateMusicLabel];
}

- (void)_updateTitleLabel
{
  v18 = objc_opt_new();
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  currentAssetCollection = [mainModel currentAssetCollection];

  defaultHelper = [off_1E77217B8 defaultHelper];
  localizedTitle = [currentAssetCollection localizedTitle];
  v7 = [defaultHelper displayableTextForTitle:localizedTitle intent:1];

  if ([v7 length])
  {
    v8 = +[PXStorySettings sharedInstance];
    simulateLongChromeStrings = [v8 simulateLongChromeStrings];

    if (simulateLongChromeStrings)
    {
      v10 = [v7 px_stringByRepeating:10];

      v7 = v10;
    }

    [v18 addObject:v7];
  }

  defaultHelper2 = [off_1E77217B8 defaultHelper];
  localizedSubtitle = [currentAssetCollection localizedSubtitle];
  v13 = [defaultHelper2 displayableTextForTitle:localizedSubtitle intent:1];

  if ([v13 length])
  {
    v14 = +[PXStorySettings sharedInstance];
    simulateLongChromeStrings2 = [v14 simulateLongChromeStrings];

    if (simulateLongChromeStrings2)
    {
      v16 = [v13 px_stringByRepeating:10];

      v13 = v16;
    }

    [v18 addObject:v13];
  }

  if ([v18 count] == 2)
  {
    PXLocalizedStringFromTable(@"InteractiveMemoryInfoPanelTitleFormat", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    [v18 firstObject];
    objc_claimAutoreleasedReturnValue();
    [v18 lastObject];
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if ([v18 count] == 1)
  {
    firstObject = [v18 firstObject];
    [(UILabel *)self->_titleLabel setText:firstObject];
  }

  else
  {
    [(UILabel *)self->_titleLabel setText:&stru_1F1741150];
  }
}

- (void)_invalidateTitleLabel
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateTitleLabel];
}

- (void)_updateKeyAsset
{
  [(PXStoryTVInfoPanelView *)self _reuseAssetView];
  recipeManager = [(PXStoryTVInfoPanelView *)self recipeManager];
  recipe = [recipeManager recipe];
  keyAsset = [recipe keyAsset];

  if (keyAsset)
  {
    defaultManager = [off_1E77217B0 defaultManager];
    v6 = [defaultManager imageProviderForAsset:keyAsset];

    v7 = [PXDisplayAssetContentView checkOutViewForAsset:keyAsset withPlaybackStyle:1];
    assetView = self->_assetView;
    self->_assetView = v7;

    [(PXDisplayAssetContentView *)self->_assetView setMediaProvider:v6];
    [(UIView *)self->_assetContainerView bounds];
    [(PXDisplayAssetContentView *)self->_assetView setFrame:?];
    [(PXDisplayAssetContentView *)self->_assetView setCanDisplayLoadingIndicator:1];
    [(PXDisplayAssetContentView *)self->_assetView setAutoresizingMask:18];
    [(UIView *)self->_assetContainerView addSubview:self->_assetView];
  }
}

- (void)_invalidateKeyAsset
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateKeyAsset];
}

- (void)_updateRecipeManager
{
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  recipeManager = [mainModel recipeManager];
  [(PXStoryTVInfoPanelView *)self setRecipeManager:recipeManager];
}

- (void)_invalidateRecipeManager
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecipeManager];
}

- (void)_updateMainModel
{
  userData = [(PXStoryTVInfoPanelView *)self userData];
  viewModel = [userData viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryTVInfoPanelView *)self setMainModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_dismiss
{
  mainModel = [(PXStoryTVInfoPanelView *)self mainModel];
  [mainModel performChanges:&__block_literal_global_167511];
}

- (void)_reuseAssetView
{
  assetView = self->_assetView;
  if (assetView)
  {
    [(PXDisplayAssetContentView *)assetView removeFromSuperview];
    [PXDisplayAssetContentView checkInView:self->_assetView];
    v4 = self->_assetView;
    self->_assetView = 0;
  }
}

- (void)layoutSubviews
{
  updater = [(PXStoryTVInfoPanelView *)self updater];
  [updater updateIfNeeded];

  v4.receiver = self;
  v4.super_class = PXStoryTVInfoPanelView;
  [(PXStoryTVInfoPanelView *)&v4 layoutSubviews];
}

- (void)dealloc
{
  [(PXStoryTVInfoPanelView *)self _reuseAssetView];
  v3.receiver = self;
  v3.super_class = PXStoryTVInfoPanelView;
  [(PXStoryTVInfoPanelView *)&v3 dealloc];
}

- (PXStoryTVInfoPanelView)initWithFrame:(CGRect)frame
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PXStoryTVInfoPanelView;
  v3 = [(PXStoryTVInfoPanelView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateMainModel];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateRecipeManager];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateKeyAsset];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateTitleLabel];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateMusicLabel];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateColorGradeLabel];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateFooterLabel];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateContentAlpha needsUpdate:1];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateCompositingFilters needsUpdate:1];
    if (MEMORY[0x1A590D320]([(PXUpdater *)v3->_updater addUpdateSelector:sel__updateAutolayoutConstraints]))
    {
      v6 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:3];
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(UIView *)v7 _setBackground:v6];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC730] effectWithStyle:4];
      v7 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v6];
    }

    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v7;

    [(UIView *)v3->_backgroundView setClipsToBounds:1];
    if (MEMORY[0x1A590D320]([(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0]))
    {
      v9 = 48.0;
    }

    else
    {
      v9 = 24.0;
    }

    layer = [(UIView *)v3->_backgroundView layer];
    [layer setCornerRadius:v9];

    v11 = *MEMORY[0x1E69796E8];
    layer2 = [(UIView *)v3->_backgroundView layer];
    [layer2 setCornerCurve:v11];

    [(PXStoryTVInfoPanelView *)v3 addSubview:v3->_backgroundView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    assetContainerView = v3->_assetContainerView;
    v3->_assetContainerView = v13;

    [(UIView *)v3->_assetContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIView *)v3->_assetContainerView setBackgroundColor:systemGrayColor];

    if (MEMORY[0x1A590D320]())
    {
      v16 = 25.0;
    }

    else
    {
      v16 = 12.0;
    }

    layer3 = [(UIView *)v3->_assetContainerView layer];
    [layer3 setCornerRadius:v16];

    layer4 = [(UIView *)v3->_assetContainerView layer];
    [layer4 setCornerCurve:v11];

    [(UIView *)v3->_assetContainerView setClipsToBounds:1];
    [(PXStoryTVInfoPanelView *)v3 addSubview:v3->_assetContainerView];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v19;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    PXFontWithTextStyleAndWeight();
  }

  return 0;
}

void __40__PXStoryTVInfoPanelView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DCAE0];
  v3 = a2;
  [objc_alloc_init(v2) setTranslatesAutoresizingMaskIntoConstraints:0];
  PXFontWithTextStyle();
}

+ (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 1920.0;
  v4 = 400.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end