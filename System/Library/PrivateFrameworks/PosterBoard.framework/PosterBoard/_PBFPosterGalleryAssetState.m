@interface _PBFPosterGalleryAssetState
- (PRPosterDescriptorGalleryOptions)galleryOptions;
- (_PBFPosterGalleryAssetState)initWithPreview:(id)a3;
- (void)invalidate;
- (void)setLivePosterFuture:(id)a3;
- (void)setShouldPrefetch:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation _PBFPosterGalleryAssetState

- (_PBFPosterGalleryAssetState)initWithPreview:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = _PBFPosterGalleryAssetState;
  v6 = [(_PBFPosterGalleryAssetState *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preview, a3);
    v8 = [v5 posterDescriptorLookupInfo];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 posterDescriptorExtension];
    v11 = [v10 posterExtensionBundleIdentifier];
    v12 = [v8 posterDescriptorPath];
    v13 = [v12 descriptorIdentifier];
    v14 = [v5 previewUniqueIdentifier];
    v15 = [v9 stringWithFormat:@"%@:%@:%@", v11, v13, v14];

    v16 = [v5 type];
    LOBYTE(v11) = [v16 isEqual:PBFPreviewTypeHero];

    if ((v11 & 1) == 0)
    {
      if (PRIsLowQualityDevice())
      {
        v7->_willUseLivePreview = 0;
      }

      else
      {
        v17 = [MEMORY[0x277CCAC38] processInfo];
        if (([v17 isLowPowerModeEnabled] & 1) != 0 || objc_msgSend(v17, "thermalState") >= 3)
        {
          v18 = PBFLogAssetHelper();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "low power mode enabled/ thermal state is critical - forbidding live previews", buf, 2u);
          }
        }

        else if (([v5 galleryDisplayStyle] - 1) >= 3)
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

  v7 = [(PBFPosterPreview *)self->_preview posterDescriptorLookupInfo];
  v8 = [v7 posterDescriptorExtension];
  v9 = [v7 posterDescriptorPath];
  v10 = [v9 descriptorIdentifier];
  v11 = [v9 identity];
  v12 = [v11 type];

  if (v12 == 2)
  {
    v13 = [v8 posterExtensionInfoPlist];
    v5 = [v13 pbf_posterBoardPosterDescriptorHeroGalleryOptionsForStaticDescriptorIdentifier:v10];
  }

  else
  {
    v14 = [v9 identity];
    v15 = [v14 type];

    if (v15 != 1)
    {
LABEL_16:
      v5 = 0;
      self->_galleryOptionsDidFail = 1;
      goto LABEL_17;
    }

    v13 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:v9];
    v16 = [v13 galleryOptions];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:v9 error:0];
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

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    v4 = a3;
    self->_isVisible = a3;
    v6 = [(_PBFPosterGalleryAssetState *)self asset];
    v8 = [v6 assetViewController];

    [v8 setVisible:v4];
    v7 = [(_PBFPosterGalleryAssetState *)self heroMicaPackageView];
    [v7 setVisible:v4];
  }
}

- (void)setShouldPrefetch:(BOOL)a3
{
  if (self->_shouldPrefetch != a3)
  {
    self->_shouldPrefetch = a3;
  }
}

- (void)invalidate
{
  v3 = [(_PBFPosterGalleryAssetState *)self asset];
  v10 = [v3 assetViewController];

  v4 = [v10 view];
  [v4 removeFromSuperview];

  [v10 removeFromParentViewController];
  v5 = [(_PBFPosterGalleryAssetState *)self asset];
  [v5 setAssetViewController:0];

  [(_PBFPosterGalleryAssetState *)self setHeroImage:0];
  v6 = [(_PBFPosterGalleryAssetState *)self heroImageView];
  [v6 removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setHeroImageView:0];
  v7 = [(_PBFPosterGalleryAssetState *)self heroMicaPackageView];
  [v7 removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setHeroMicaPackageView:0];
  v8 = [(_PBFPosterGalleryAssetState *)self snapshotBundleLayoutView];
  [v8 removeFromSuperview];

  [(_PBFPosterGalleryAssetState *)self setSnapshotBundleLayoutView:0];
  preview = self->_preview;
  self->_preview = 0;
}

- (void)setLivePosterFuture:(id)a3
{
  v5 = a3;
  livePosterFuture = self->_livePosterFuture;
  p_livePosterFuture = &self->_livePosterFuture;
  v6 = livePosterFuture;
  if (livePosterFuture != v5)
  {
    v9 = v5;
    [(PFTFuture *)v6 cancel];
    objc_storeStrong(p_livePosterFuture, a3);
    v5 = v9;
  }
}

@end