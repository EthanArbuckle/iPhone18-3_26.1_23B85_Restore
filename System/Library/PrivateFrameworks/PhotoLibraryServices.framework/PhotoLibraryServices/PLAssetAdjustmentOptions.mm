@interface PLAssetAdjustmentOptions
+ (id)assetAdjustmentOptionsForApplyingResourcesFromCPL;
+ (id)assetAdjustmentOptionsForCinematicCaptureIngestWithMainFileMetadata:(id)metadata;
+ (id)assetAdjustmentOptionsForImageWriterWithEditedRenderURL:(id)l async:(BOOL)async fullSizeRenderSize:(CGSize)size mainFileMetadata:(id)metadata;
+ (id)assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:(id)metadata;
+ (id)assetAdjustmentOptionsForRevertingToOriginal;
+ (id)assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:(id)metadata;
- (BOOL)shouldOverwriteFullSizeRenderSize;
- (CGSize)fullSizeRenderSize;
- (PLAssetAdjustmentOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_setPropertiesOnCopy:(id)copy;
@end

@implementation PLAssetAdjustmentOptions

- (CGSize)fullSizeRenderSize
{
  width = self->_fullSizeRenderSize.width;
  height = self->_fullSizeRenderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PLMutableAssetAdjustmentOptions);
  [(PLAssetAdjustmentOptions *)self _setPropertiesOnCopy:v4];
  return v4;
}

+ (id)assetAdjustmentOptionsForCinematicCaptureIngestWithMainFileMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(self);
  *(v5 + 24) = *MEMORY[0x1E695F060];
  v6 = *(v5 + 6);
  *(v5 + 6) = metadataCopy;

  v5[11] = 0;
  *(v5 + 4) = 257;

  return v5;
}

+ (id)assetAdjustmentOptionsForApplyingResourcesFromCPL
{
  v2 = objc_alloc_init(self);
  *(v2 + 11) = 257;

  return v2;
}

+ (id)assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(self);
  v5[9] = 1;
  v6 = *(v5 + 6);
  *(v5 + 6) = metadataCopy;

  v5[10] = 1;
  *(v5 + 2) = 1;

  return v5;
}

+ (id)assetAdjustmentOptionsForImageWriterWithEditedRenderURL:(id)l async:(BOOL)async fullSizeRenderSize:(CGSize)size mainFileMetadata:(id)metadata
{
  height = size.height;
  width = size.width;
  asyncCopy = async;
  lCopy = l;
  metadataCopy = metadata;
  v13 = objc_alloc_init(self);
  v14 = *(v13 + 7);
  *(v13 + 7) = lCopy;
  v15 = lCopy;

  v13[3] = width;
  v13[4] = height;
  v16 = *(v13 + 6);
  *(v13 + 6) = metadataCopy;

  *(v13 + 11) = 1;
  if (asyncCopy)
  {
    *(v13 + 8) = 1;
    v17 = 9;
  }

  else
  {
    v17 = 10;
  }

  *(v13 + v17) = 1;

  return v13;
}

+ (id)assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(self);
  v5[5] = 257;
  *(v5 + 12) = 1;
  v6 = *(v5 + 6);
  *(v5 + 6) = metadataCopy;

  return v5;
}

+ (id)assetAdjustmentOptionsForRevertingToOriginal
{
  v2 = objc_alloc_init(self);
  v2[5] = 257;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PLAssetAdjustmentOptions);
  [(PLAssetAdjustmentOptions *)self _setPropertiesOnCopy:v4];
  return v4;
}

- (void)_setPropertiesOnCopy:(id)copy
{
  copyCopy = copy;
  copyCopy[8] = [(PLAssetAdjustmentOptions *)self isSubstandardRender];
  copyCopy[9] = [(PLAssetAdjustmentOptions *)self isDeferred];
  copyCopy[10] = [(PLAssetAdjustmentOptions *)self shouldUpdateAttributes];
  copyCopy[11] = [(PLAssetAdjustmentOptions *)self shouldGenerateThumbnails];
  copyCopy[12] = [(PLAssetAdjustmentOptions *)self shouldCheckForLegacyCameraAutoAdjustment];
  copyCopy[13] = [(PLAssetAdjustmentOptions *)self skipCheckCameraAutoAdjustment];
  copyCopy[14] = [(PLAssetAdjustmentOptions *)self skipCheckCameraAutoAdjustment];
  *(copyCopy + 2) = [(PLAssetAdjustmentOptions *)self fileIngestionType];
  [(PLAssetAdjustmentOptions *)self fullSizeRenderSize];
  *(copyCopy + 3) = v5;
  *(copyCopy + 4) = v6;
  [(PLAssetAdjustmentOptions *)self fullSizeRenderDuration];
  *(copyCopy + 5) = v7;
  mainFileMetadata = [(PLAssetAdjustmentOptions *)self mainFileMetadata];
  v9 = *(copyCopy + 6);
  *(copyCopy + 6) = mainFileMetadata;

  renderedContentURL = [(PLAssetAdjustmentOptions *)self renderedContentURL];
  v11 = *(copyCopy + 7);
  *(copyCopy + 7) = renderedContentURL;

  penultimateRenderedJPEGData = [(PLAssetAdjustmentOptions *)self penultimateRenderedJPEGData];
  v13 = *(copyCopy + 8);
  *(copyCopy + 8) = penultimateRenderedJPEGData;

  penultimateRenderedVideoContentURL = [(PLAssetAdjustmentOptions *)self penultimateRenderedVideoContentURL];
  v15 = *(copyCopy + 9);
  *(copyCopy + 9) = penultimateRenderedVideoContentURL;

  renderedVideoComplementContentURL = [(PLAssetAdjustmentOptions *)self renderedVideoComplementContentURL];
  v17 = *(copyCopy + 10);
  *(copyCopy + 10) = renderedVideoComplementContentURL;

  penultimateRenderedVideoComplementContentURL = [(PLAssetAdjustmentOptions *)self penultimateRenderedVideoComplementContentURL];
  v19 = *(copyCopy + 11);
  *(copyCopy + 11) = penultimateRenderedVideoComplementContentURL;

  renderedVideoPosterContentURL = [(PLAssetAdjustmentOptions *)self renderedVideoPosterContentURL];
  v21 = *(copyCopy + 12);
  *(copyCopy + 12) = renderedVideoPosterContentURL;

  adjustmentSecondaryDataURL = [(PLAssetAdjustmentOptions *)self adjustmentSecondaryDataURL];
  v23 = *(copyCopy + 13);
  *(copyCopy + 13) = adjustmentSecondaryDataURL;
}

- (BOOL)shouldOverwriteFullSizeRenderSize
{
  if ([(PLAssetAdjustmentOptions *)self isSubstandardRender]|| (v3 = [(PLAssetAdjustmentOptions *)self isDeferred]))
  {
    [(PLAssetAdjustmentOptions *)self fullSizeRenderSize];
    if (v4 <= 0.0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      [(PLAssetAdjustmentOptions *)self fullSizeRenderSize];
      LOBYTE(v3) = v5 > 0.0;
    }
  }

  return v3;
}

- (PLAssetAdjustmentOptions)init
{
  v3.receiver = self;
  v3.super_class = PLAssetAdjustmentOptions;
  result = [(PLAssetAdjustmentOptions *)&v3 init];
  if (result)
  {
    result->_fileIngestionType = 4;
    result->_fullSizeRenderSize = *MEMORY[0x1E695F060];
    result->_fullSizeRenderDuration = 0.0;
  }

  return result;
}

@end