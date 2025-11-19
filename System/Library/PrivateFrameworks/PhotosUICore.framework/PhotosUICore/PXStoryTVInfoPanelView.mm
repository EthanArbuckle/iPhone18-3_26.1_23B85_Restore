@interface PXStoryTVInfoPanelView
+ (CGSize)sizeThatFits:(CGSize)a3;
- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4;
- (CGRect)clippingRect;
- (PXStoryTVInfoPanelView)initWithFrame:(CGRect)a3;
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
- (void)addHostedLayer:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)setMainModel:(id)a3;
- (void)setRecipeManager:(id)a3;
- (void)setUserData:(id)a3;
- (void)setViewModel:(id)a3;
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

- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXStoryTVInfoPanelView *)self layer];
  [v8 convertPoint:v7 fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTVInfoPanelView *)self layer];
  [v5 addSublayer:v4];
}

- (void)prepareForReuse
{
  [(PXStoryTVInfoPanelView *)self setUserData:0];

  [(PXStoryTVInfoPanelView *)self _reuseAssetView];
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData != v4)
  {
    v11 = v4;
    v6 = [(PXStoryTVInfoPanelViewConfiguration *)v4 isEqual:?];
    v5 = v11;
    if (!v6)
    {
      v7 = [(PXStoryTVInfoPanelViewConfiguration *)v11 copy];
      userData = self->_userData;
      self->_userData = v7;

      v9 = [(PXStoryTVInfoPanelView *)self userData];
      v10 = [v9 viewModel];
      [(PXStoryTVInfoPanelView *)self setViewModel:v10];

      v5 = v11;
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ViewModelObservationContext_167474 == a5)
  {
    if ((a4 & 0x40) != 0)
    {
      [(PXStoryTVInfoPanelView *)self _invalidateMainModel];
      if ((a4 & 0x20) == 0)
      {
LABEL_8:
        if ((a4 & 0x10) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        [(PXStoryTVInfoPanelView *)self _invalidateTitleLabel];
        goto LABEL_20;
      }
    }

    else if ((a4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    [(PXStoryTVInfoPanelView *)self _invalidateAutolayoutConstraints];
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (ModelObservationContext_167475 == a5)
  {
    if ((a4 & 0x800000000000000) != 0)
    {
      [(PXStoryTVInfoPanelView *)self _invalidateContentAlpha];
      if ((a4 & 0x200) == 0)
      {
LABEL_12:
        if ((a4 & 0x100000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        [(PXStoryTVInfoPanelView *)self _invalidateColorGradeLabel];
        goto LABEL_20;
      }
    }

    else if ((a4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    [(PXStoryTVInfoPanelView *)self _invalidateMusicLabel];
    if ((a4 & 0x100000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (RecipeManagerObservationContext_167476 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryTVInfoPanelView.m" lineNumber:686 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a4)
  {
    [(PXStoryTVInfoPanelView *)self _invalidateKeyAsset];
    [(PXStoryTVInfoPanelView *)self _invalidateFooterLabel];
  }

LABEL_20:
}

- (void)setRecipeManager:(id)a3
{
  v5 = a3;
  recipeManager = self->_recipeManager;
  if (recipeManager != v5)
  {
    v7 = v5;
    [(PXStoryRecipeManager *)recipeManager unregisterChangeObserver:self context:RecipeManagerObservationContext_167476];
    objc_storeStrong(&self->_recipeManager, a3);
    [(PXStoryRecipeManager *)self->_recipeManager registerChangeObserver:self context:RecipeManagerObservationContext_167476];
    [(PXStoryTVInfoPanelView *)self _invalidateKeyAsset];
    v5 = v7;
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  mainModel = self->_mainModel;
  if (mainModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:ModelObservationContext_167475];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:ModelObservationContext_167475];
    [(PXStoryTVInfoPanelView *)self _invalidateRecipeManager];
    [(PXStoryTVInfoPanelView *)self _invalidateMusicLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateColorGradeLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateContentAlpha];
    v5 = v7;
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXStoryViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_167474];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXStoryViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_167474];
    [(PXStoryTVInfoPanelView *)self _invalidateMainModel];
    [(PXStoryTVInfoPanelView *)self _invalidateTitleLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateFooterLabel];
    [(PXStoryTVInfoPanelView *)self _invalidateAutolayoutConstraints];
    v5 = v7;
  }
}

- (void)_updateAutolayoutConstraints
{
  v3 = [(PXStoryTVInfoPanelView *)self viewModel];
  v18 = [v3 viewLayoutSpec];

  [v18 infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintLeading setConstant:v4];
  [v18 infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintTrailing setConstant:v5];
  [v18 infoPanelMargins];
  [(NSLayoutConstraint *)self->_panelMarginConstraintBottom setConstant:v6];
  [v18 infoPanelHeight];
  [(NSLayoutConstraint *)self->_panelHeightConstraint setConstant:?];
  [v18 infoPanelButtonOffset];
  [(NSLayoutConstraint *)self->_infoButtonLeadingConstraint setConstant:?];
  [v18 infoPanelButtonOffset];
  [(NSLayoutConstraint *)self->_infoButtonBottomConstraint setConstant:v7];
  [v18 infoPanelButtonHeight];
  [(NSLayoutConstraint *)self->_infoButtonHeightConstraint setConstant:?];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintTop setConstant:?];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintBottom setConstant:v8];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_assetContainerConstraintLeading setConstant:v9];
  [v18 infoPanelAssetToSymbolCenter];
  [(NSLayoutConstraint *)self->_musicSymbolCenterConstraint setConstant:?];
  [v18 infoPanelAssetToSymbolCenter];
  [(NSLayoutConstraint *)self->_colorGradeSymbolCenterConstraint setConstant:?];
  [v18 infoPanelAssetToMetadataLabel];
  [(NSLayoutConstraint *)self->_musicLabelLeadingConstraint setConstant:?];
  [v18 infoPanelAssetToMetadataLabel];
  [(NSLayoutConstraint *)self->_colorGradeLabelLeadingConstraint setConstant:?];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_colorGradeLabelTrailingConstraint setConstant:-v10];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_musicLabelTrailingConstraint setConstant:-v11];
  [v18 infoPanelFooterLabelBaselineFromBottom];
  [(NSLayoutConstraint *)self->_footerLabelBaselineConstraint setConstant:?];
  [v18 infoPanelTitleLabelBaselineFromTop];
  [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setConstant:?];
  [v18 infoPanelTitleToMetadataBaselines];
  [(NSLayoutConstraint *)self->_titleToMetadataBaselineConstraint setConstant:?];
  [v18 infoPanelMetadataToMetadataBaselines];
  [(NSLayoutConstraint *)self->_musicToColorGradeBaselineConstraint setConstant:?];
  [v18 infoPanelDistanceBetweenAssetAndTitleLabel];
  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:?];
  [v18 infoPanelDistanceBetweenAssetAndTitleLabel];
  [(NSLayoutConstraint *)self->_footerLabelLeadingConstraint setConstant:?];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:-v12];
  [v18 infoPanelPadding];
  [(NSLayoutConstraint *)self->_footerLabelTrailingConstraint setConstant:-v13];
  [(NSLayoutConstraint *)self->_assetContainerConstraintAspectRatio setActive:0];
  v14 = [(UIView *)self->_assetContainerView widthAnchor];
  v15 = [(UIView *)self->_assetContainerView heightAnchor];
  [v18 infoPanelAssetAspectRatio];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:?];
  assetContainerConstraintAspectRatio = self->_assetContainerConstraintAspectRatio;
  self->_assetContainerConstraintAspectRatio = v16;

  [(NSLayoutConstraint *)self->_assetContainerConstraintAspectRatio setActive:1];
}

- (void)_invalidateAutolayoutConstraints
{
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutolayoutConstraints];
}

- (void)_updateCompositingFilters
{
  v10 = *MEMORY[0x1E6979CE8];
  v3 = [(PXStoryTVInfoPanelView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = *MEMORY[0x1E6979CF8];

    v10 = v5;
  }

  v6 = [(UIImageView *)self->_musicSymbolView layer];
  [v6 setCompositingFilter:v10];

  v7 = [(UILabel *)self->_musicLabel layer];
  [v7 setCompositingFilter:v10];

  v8 = [(UIImageView *)self->_colorGradeSymbolView layer];
  [v8 setCompositingFilter:v10];

  v9 = [(UILabel *)self->_colorGradeLabel layer];
  [v9 setCompositingFilter:v10];
}

- (void)_invalidateCompositingFilters
{
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCompositingFilters];
}

- (void)_updateContentAlpha
{
  v3 = [(PXStoryTVInfoPanelView *)self mainModel];
  [v3 infoPanelVisibilityFraction];
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
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentAlpha];
}

- (void)_updateFooterLabel
{
  v3 = [(PXStoryTVInfoPanelView *)self recipeManager];
  v4 = [v3 recipe];
  v9 = [v4 curatedAssets];

  if (v9)
  {
    [v9 countOfAssetsWithMediaType:1];
    [v9 countOfAssetsWithMediaType:2];
    v5 = PLLocalizedCountDescription();
    v6 = +[PXStorySettings sharedInstance];
    v7 = [v6 simulateLongChromeStrings];

    if (v7)
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
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterLabel];
}

- (void)_updateColorGradeLabel
{
  v3 = [(PXStoryTVInfoPanelView *)self mainModel];
  v4 = [v3 currentStyle];
  v5 = [v4 customColorGradeKind];

  if (!v5)
  {
    v6 = [(PXStoryTVInfoPanelView *)self mainModel];
    v7 = [v6 currentStyle];
    v8 = [v7 originalColorGradeCategory];

    v9 = [(PXStoryTVInfoPanelView *)self mainModel];
    v10 = [v9 colorGradingRepository];
    v5 = [v10 colorGradeKindForColorGradeCategory:v8];
  }

  v11 = [(PXStoryTVInfoPanelView *)self mainModel];
  v12 = [v11 colorGradingRepository];
  v16 = [v12 localizedTitleForColorGradeKind:v5];

  v13 = +[PXStorySettings sharedInstance];
  LODWORD(v11) = [v13 simulateLongChromeStrings];

  if (v11)
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
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateColorGradeLabel];
}

- (void)_updateMusicLabel
{
  v3 = [(PXStoryTVInfoPanelView *)self mainModel];
  v10 = [v3 currentSongResource];

  v4 = [v10 px_storyResourceSongAsset];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 title];
    v7 = [v5 artistName];
    v8 = +[PXStorySettings sharedInstance];
    v9 = [v8 simulateLongChromeStrings];

    if (v9)
    {
      [v6 px_stringByRepeating:10];
      objc_claimAutoreleasedReturnValue();

      [v7 px_stringByRepeating:10];
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
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMusicLabel];
}

- (void)_updateTitleLabel
{
  v18 = objc_opt_new();
  v3 = [(PXStoryTVInfoPanelView *)self mainModel];
  v4 = [v3 currentAssetCollection];

  v5 = [off_1E77217B8 defaultHelper];
  v6 = [v4 localizedTitle];
  v7 = [v5 displayableTextForTitle:v6 intent:1];

  if ([v7 length])
  {
    v8 = +[PXStorySettings sharedInstance];
    v9 = [v8 simulateLongChromeStrings];

    if (v9)
    {
      v10 = [v7 px_stringByRepeating:10];

      v7 = v10;
    }

    [v18 addObject:v7];
  }

  v11 = [off_1E77217B8 defaultHelper];
  v12 = [v4 localizedSubtitle];
  v13 = [v11 displayableTextForTitle:v12 intent:1];

  if ([v13 length])
  {
    v14 = +[PXStorySettings sharedInstance];
    v15 = [v14 simulateLongChromeStrings];

    if (v15)
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
    v17 = [v18 firstObject];
    [(UILabel *)self->_titleLabel setText:v17];
  }

  else
  {
    [(UILabel *)self->_titleLabel setText:&stru_1F1741150];
  }
}

- (void)_invalidateTitleLabel
{
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTitleLabel];
}

- (void)_updateKeyAsset
{
  [(PXStoryTVInfoPanelView *)self _reuseAssetView];
  v3 = [(PXStoryTVInfoPanelView *)self recipeManager];
  v4 = [v3 recipe];
  v9 = [v4 keyAsset];

  if (v9)
  {
    v5 = [off_1E77217B0 defaultManager];
    v6 = [v5 imageProviderForAsset:v9];

    v7 = [PXDisplayAssetContentView checkOutViewForAsset:v9 withPlaybackStyle:1];
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
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateKeyAsset];
}

- (void)_updateRecipeManager
{
  v4 = [(PXStoryTVInfoPanelView *)self mainModel];
  v3 = [v4 recipeManager];
  [(PXStoryTVInfoPanelView *)self setRecipeManager:v3];
}

- (void)_invalidateRecipeManager
{
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecipeManager];
}

- (void)_updateMainModel
{
  v5 = [(PXStoryTVInfoPanelView *)self userData];
  v3 = [v5 viewModel];
  v4 = [v3 mainModel];
  [(PXStoryTVInfoPanelView *)self setMainModel:v4];
}

- (void)_invalidateMainModel
{
  v2 = [(PXStoryTVInfoPanelView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_dismiss
{
  v2 = [(PXStoryTVInfoPanelView *)self mainModel];
  [v2 performChanges:&__block_literal_global_167511];
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
  v3 = [(PXStoryTVInfoPanelView *)self updater];
  [v3 updateIfNeeded];

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

- (PXStoryTVInfoPanelView)initWithFrame:(CGRect)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PXStoryTVInfoPanelView;
  v3 = [(PXStoryTVInfoPanelView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v10 = [(UIView *)v3->_backgroundView layer];
    [v10 setCornerRadius:v9];

    v11 = *MEMORY[0x1E69796E8];
    v12 = [(UIView *)v3->_backgroundView layer];
    [v12 setCornerCurve:v11];

    [(PXStoryTVInfoPanelView *)v3 addSubview:v3->_backgroundView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    assetContainerView = v3->_assetContainerView;
    v3->_assetContainerView = v13;

    [(UIView *)v3->_assetContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIView *)v3->_assetContainerView setBackgroundColor:v15];

    if (MEMORY[0x1A590D320]())
    {
      v16 = 25.0;
    }

    else
    {
      v16 = 12.0;
    }

    v17 = [(UIView *)v3->_assetContainerView layer];
    [v17 setCornerRadius:v16];

    v18 = [(UIView *)v3->_assetContainerView layer];
    [v18 setCornerCurve:v11];

    [(UIView *)v3->_assetContainerView setClipsToBounds:1];
    [(PXStoryTVInfoPanelView *)v3 addSubview:v3->_assetContainerView];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v19;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v21];

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

+ (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 1920.0;
  v4 = 400.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end