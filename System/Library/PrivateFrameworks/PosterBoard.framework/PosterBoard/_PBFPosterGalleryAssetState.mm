@interface _PBFPosterGalleryAssetState
- (PRPosterDescriptorGalleryOptions)galleryOptions;
- (_PBFPosterGalleryAssetState)initWithPreview:(id)preview;
- (void)invalidate;
- (void)setLivePosterFuture:(id)future;
- (void)setShouldPrefetch:(BOOL)prefetch;
- (void)setVisible:(BOOL)visible;
@end

@implementation _PBFPosterGalleryAssetState

- (_PBFPosterGalleryAssetState)initWithPreview:(id)preview
{
  previewCopy = preview;
  v26.receiver = self;
  v26.super_class = _PBFPosterGalleryAssetState;
  v6 = [(_PBFPosterGalleryAssetState *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preview, preview);
    posterDescriptorLookupInfo = [previewCopy posterDescriptorLookupInfo];
    v9 = MEMORY[0x277CCACA8];
    posterDescriptorExtension = [posterDescriptorLookupInfo posterDescriptorExtension];
    posterExtensionBundleIdentifier = [posterDescriptorExtension posterExtensionBundleIdentifier];
    posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
    descriptorIdentifier = [posterDescriptorPath descriptorIdentifier];
    previewUniqueIdentifier = [previewCopy previewUniqueIdentifier];
    v15 = [v9 stringWithFormat:@"%@:%@:%@", posterExtensionBundleIdentifier, descriptorIdentifier, previewUniqueIdentifier];

    type = [previewCopy type];
    LOBYTE(posterExtensionBundleIdentifier) = [type isEqual:PBFPreviewTypeHero];

    if ((posterExtensionBundleIdentifier & 1) == 0)
    {
      if (PRIsLowQualityDevice())
      {
        v7->_willUseLivePreview = 0;
      }

      else
      {
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        if (([processInfo isLowPowerModeEnabled] & 1) != 0 || objc_msgSend(processInfo, "thermalState") >= 3)
        {
          v18 = PBFLogAssetHelper();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "low power mode enabled/ thermal state is critical - forbidding live previews", buf, 2u);
          }
        }

        else if (([previewCopy galleryDisplayStyle] - 1) >= 3)
        {
          v7->_willUseLivePreview = 0;
        }

        else
        {
          v7->_willUseLivePreview = 1;
          v24 = [v15 stringByAppendingString:@".live"];

          v15 = v24;
        }
      }
    }

    v19 = objc_opt_new();
    asset = v7->_asset;
    v7->_asset = v19;

    v21 = [[PBFPosterSnapshotCollection alloc] initWithUniqueIdentifier:v15];
    snapshotCollection = v7->_snapshotCollection;
    v7->_snapshotCollection = v21;
  }

  return v7;
}

- (PRPosterDescriptorGalleryOptions)galleryOptions
{
  p_galleryOptions = &self->_galleryOptions;
  galleryOptions = self->_galleryOptions;
  if (galleryOptions || self->_galleryOptionsDidFail)
  {
    v5 = galleryOptions;
    goto LABEL_4;
  }

  posterDescriptorLookupInfo = [(PBFPosterPreview *)self->_preview posterDescriptorLookupInfo];
  posterDescriptorExtension = [posterDescriptorLookupInfo posterDescriptorExtension];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
  descriptorIdentifier = [posterDescriptorPath descriptorIdentifier];
  identity = [posterDescriptorPath identity];
  type = [identity type];

  if (type == 2)
  {
    posterExtensionInfoPlist = [posterDescriptorExtension posterExtensionInfoPlist];
    v5 = [posterExtensionInfoPlist pbf_posterBoardPosterDescriptorHeroGalleryOptionsForStaticDescriptorIdentifier:descriptorIdentifier];
  }

  else
  {
    identity2 = [posterDescriptorPath identity];
    type2 = [identity2 type];

    if (type2 != 1)
    {
LABEL_16:
      v5 = 0;
      self->_galleryOptionsDidFail = 1;
      goto LABEL_17;
    }

    posterExtensionInfoPlist = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:posterDescriptorPath];
    galleryOptions = [posterExtensionInfoPlist galleryOptions];
    v17 = galleryOptions;
    if (galleryOptions)
    {
      v18 = galleryOptions;
    }

    else
    {
      v18 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:posterDescriptorPath error:0];
    }

    v5 = v18;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  objc_storeStrong(p_galleryOptions, v5);
LABEL_17:

LABEL_4:

  return v5;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    visibleCopy = visible;
    self->_isVisible = visible;
    asset = [(_PBFPosterGalleryAssetState *)self asset];
    assetViewController = [asset assetViewController];

    [assetViewController setVisible:visibleCopy];
    heroMicaPackageView = [(_PBFPosterGalleryAssetState *)self heroMicaPackageView];
    [heroMicaPackageView setVisible:visibleCopy];
  }
}

- (void)setShouldPrefetch:(BOOL)prefetch
{
  if (self->_shouldPrefetch != prefetch)
  {
    self->_shouldPrefetch = prefetch;
  }
}

- (void)invalidate
{
  asset = [(_PBFPosterGalleryAssetState *)self asset];
  assetViewController = [asset assetViewController];

  view = [assetViewController view];
  [view removeFromSuperview];

  [assetViewController removeFromParentViewController];
  asset2 = [(_PBFPosterGalleryAssetState *)self asset];
  [asset2 setAssetViewController:0];

  [(_PBFPosterGalleryAssetState *)self setHeroImage:0];
  heroImageView = [(_PBFPosterGalleryAssetState *)self heroImageView];
  [heroImageView removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setHeroImageView:0];
  heroMicaPackageView = [(_PBFPosterGalleryAssetState *)self heroMicaPackageView];
  [heroMicaPackageView removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setHeroMicaPackageView:0];
  snapshotBundleLayoutView = [(_PBFPosterGalleryAssetState *)self snapshotBundleLayoutView];
  [snapshotBundleLayoutView removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setSnapshotBundleLayoutView:0];
  preview = self->_preview;
  self->_preview = 0;
}

- (void)setLivePosterFuture:(id)future
{
  futureCopy = future;
  livePosterFuture = self->_livePosterFuture;
  p_livePosterFuture = &self->_livePosterFuture;
  v6 = livePosterFuture;
  if (livePosterFuture != futureCopy)
  {
    v9 = futureCopy;
    [(PFTFuture *)v6 cancel];
    objc_storeStrong(p_livePosterFuture, future);
    futureCopy = v9;
  }
}

@end