@interface PLAssetAdjustmentOptions
+ (id)assetAdjustmentOptionsForApplyingResourcesFromCPL;
+ (id)assetAdjustmentOptionsForCinematicCaptureIngestWithMainFileMetadata:(id)a3;
+ (id)assetAdjustmentOptionsForImageWriterWithEditedRenderURL:(id)a3 async:(BOOL)a4 fullSizeRenderSize:(CGSize)a5 mainFileMetadata:(id)a6;
+ (id)assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:(id)a3;
+ (id)assetAdjustmentOptionsForRevertingToOriginal;
+ (id)assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:(id)a3;
- (BOOL)shouldOverwriteFullSizeRenderSize;
- (CGSize)fullSizeRenderSize;
- (PLAssetAdjustmentOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_setPropertiesOnCopy:(id)a3;
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PLMutableAssetAdjustmentOptions);
  [(PLAssetAdjustmentOptions *)self _setPropertiesOnCopy:v4];
  return v4;
}

+ (id)assetAdjustmentOptionsForCinematicCaptureIngestWithMainFileMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  *(v5 + 24) = *MEMORY[0x1E695F060];
  v6 = *(v5 + 6);
  *(v5 + 6) = v4;

  v5[11] = 0;
  *(v5 + 4) = 257;

  return v5;
}

+ (id)assetAdjustmentOptionsForApplyingResourcesFromCPL
{
  v2 = objc_alloc_init(a1);
  *(v2 + 11) = 257;

  return v2;
}

+ (id)assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v5[9] = 1;
  v6 = *(v5 + 6);
  *(v5 + 6) = v4;

  v5[10] = 1;
  *(v5 + 2) = 1;

  return v5;
}

+ (id)assetAdjustmentOptionsForImageWriterWithEditedRenderURL:(id)a3 async:(BOOL)a4 fullSizeRenderSize:(CGSize)a5 mainFileMetadata:(id)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v11 = a3;
  v12 = a6;
  v13 = objc_alloc_init(a1);
  v14 = *(v13 + 7);
  *(v13 + 7) = v11;
  v15 = v11;

  v13[3] = width;
  v13[4] = height;
  v16 = *(v13 + 6);
  *(v13 + 6) = v12;

  *(v13 + 11) = 1;
  if (v9)
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

+ (id)assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v5[5] = 257;
  *(v5 + 12) = 1;
  v6 = *(v5 + 6);
  *(v5 + 6) = v4;

  return v5;
}

+ (id)assetAdjustmentOptionsForRevertingToOriginal
{
  v2 = objc_alloc_init(a1);
  v2[5] = 257;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PLAssetAdjustmentOptions);
  [(PLAssetAdjustmentOptions *)self _setPropertiesOnCopy:v4];
  return v4;
}

- (void)_setPropertiesOnCopy:(id)a3
{
  v4 = a3;
  v4[8] = [(PLAssetAdjustmentOptions *)self isSubstandardRender];
  v4[9] = [(PLAssetAdjustmentOptions *)self isDeferred];
  v4[10] = [(PLAssetAdjustmentOptions *)self shouldUpdateAttributes];
  v4[11] = [(PLAssetAdjustmentOptions *)self shouldGenerateThumbnails];
  v4[12] = [(PLAssetAdjustmentOptions *)self shouldCheckForLegacyCameraAutoAdjustment];
  v4[13] = [(PLAssetAdjustmentOptions *)self skipCheckCameraAutoAdjustment];
  v4[14] = [(PLAssetAdjustmentOptions *)self skipCheckCameraAutoAdjustment];
  *(v4 + 2) = [(PLAssetAdjustmentOptions *)self fileIngestionType];
  [(PLAssetAdjustmentOptions *)self fullSizeRenderSize];
  *(v4 + 3) = v5;
  *(v4 + 4) = v6;
  [(PLAssetAdjustmentOptions *)self fullSizeRenderDuration];
  *(v4 + 5) = v7;
  v8 = [(PLAssetAdjustmentOptions *)self mainFileMetadata];
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  v10 = [(PLAssetAdjustmentOptions *)self renderedContentURL];
  v11 = *(v4 + 7);
  *(v4 + 7) = v10;

  v12 = [(PLAssetAdjustmentOptions *)self penultimateRenderedJPEGData];
  v13 = *(v4 + 8);
  *(v4 + 8) = v12;

  v14 = [(PLAssetAdjustmentOptions *)self penultimateRenderedVideoContentURL];
  v15 = *(v4 + 9);
  *(v4 + 9) = v14;

  v16 = [(PLAssetAdjustmentOptions *)self renderedVideoComplementContentURL];
  v17 = *(v4 + 10);
  *(v4 + 10) = v16;

  v18 = [(PLAssetAdjustmentOptions *)self penultimateRenderedVideoComplementContentURL];
  v19 = *(v4 + 11);
  *(v4 + 11) = v18;

  v20 = [(PLAssetAdjustmentOptions *)self renderedVideoPosterContentURL];
  v21 = *(v4 + 12);
  *(v4 + 12) = v20;

  v22 = [(PLAssetAdjustmentOptions *)self adjustmentSecondaryDataURL];
  v23 = *(v4 + 13);
  *(v4 + 13) = v22;
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