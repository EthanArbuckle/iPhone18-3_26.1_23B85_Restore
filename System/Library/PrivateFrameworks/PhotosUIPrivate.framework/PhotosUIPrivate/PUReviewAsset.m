@interface PUReviewAsset
+ (BOOL)_shouldShowConfidentialityWarningForAdjustments:(id)a3;
+ (BOOL)_shouldShowConfidentialityWarningForMetadata:(id)a3 creationDate:(id)a4;
+ (id)createUniqueMediaDirectoryForAssetWithIdentifier:(id)a3;
+ (id)fileURLForFullsizeImageInDirectory:(id)a3 extension:(id)a4;
+ (id)fileURLForFullsizeRenderImageInDirectory:(id)a3 extension:(id)a4;
+ (id)fileURLForFullsizeVideoInDirectory:(id)a3 extension:(id)a4;
- (BOOL)_linkFileAtURL:(id)a3 toURL:(id)a4;
- (BOOL)isAdjusted;
- (BOOL)isAnimatedImage;
- (NSString)pathForOriginalImageFile;
- (NSString)pathForOriginalVideoFile;
- (NSString)pathForTrimmedVideoFile;
- (NSString)uniformTypeIdentifier;
- (PFVideoAVObjectBuilder)videoObjectBuilder;
- (PUReviewAsset)initWithAVAsset:(id)a3 audioMix:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 captureDate:(id)a7 duration:(double)a8 previewImage:(id)a9 videoURL:(id)a10 unadjustedVideoURL:(id)a11 adjustments:(id)a12 identifier:(id)a13;
- (PUReviewAsset)initWithConformingAsset:(id)a3;
- (PUReviewAsset)initWithLivePhoto:(id)a3 fullsizeUnadjustedImageURL:(id)a4 fullsizeUnadjustedVideoURL:(id)a5 assetAdjustments:(id)a6 width:(unint64_t)a7 height:(unint64_t)a8 captureDate:(id)a9 metadata:(id)a10 duration:(double)a11 previewImage:(id)a12 identifier:(id)a13;
- (PUReviewAsset)initWithPhoto:(id)a3 mediaSubtypes:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 captureDate:(id)a7 metadata:(id)a8 burstIdentifier:(id)a9 representedCount:(unint64_t)a10 fullsizeImageURL:(id)a11 fullsizeUnadjustedImageURL:(id)a12 assetAdjustments:(id)a13 identifier:(id)a14;
- (PUReviewAsset)initWithReviewAsset:(id)a3;
- (PUReviewAsset)initWithReviewAsset:(id)a3 baseImageURL:(id)a4 renderedImageURL:(id)a5 baseVideoURL:(id)a6 renderedVideoURL:(id)a7 previewImage:(id)a8 pixelWidth:(unint64_t)a9 pixelHeight:(unint64_t)a10 assetAdjustments:(id)a11 duration:(double)a12;
- (PUReviewAsset)initWithReviewAsset:(id)a3 linkFileURLsToUniquePathsInDirectory:(id)a4;
- (PUReviewAsset)initWithReviewAsset:(id)a3 linkFileURLsToUniquePathsInDirectory:(id)a4 canPlayPhotoIris:(BOOL)a5;
- (PUReviewAsset)initWithReviewAsset:(id)a3 primaryResourceURL:(id)a4;
- (PUReviewAsset)reviewAssetWithAdjustmentOutput:(id)a3 adjustmentData:(id)a4 formatIdentifier:(id)a5 version:(id)a6;
- (double)aspectRatio;
- (id)_ensureLinkDestinationDirectoryFromBaseDirectory:(id)a3;
- (id)_uniqueDestinationURLForFileURL:(id)a3 inDirectory:(id)a4;
- (id)adjustmentOutputForInputBaseVersion:(int64_t)a3 withLivePhotoSupport:(BOOL)a4;
- (id)inputForAdjustmentWithMediaProvider:(id)a3 canHandleAdjustments:(id)a4;
- (id)primaryRenderedMediaURL;
- (id)providedImageURLForImageVersion:(int64_t)a3;
- (id)providedVideoURLForImageVersion:(int64_t)a3;
- (id)providedVideoURLForVideoVersion:(int64_t)a3;
- (id)reviewAssetRevertingAdjustments;
- (int)exifOrientationForImageVersion:(int64_t)a3;
- (int)originalEXIFOrientation;
- (unint64_t)livePhotoVisibilityState;
- (unint64_t)requestContentEditingInputWithOptions:(id)a3 completionHandler:(id)a4;
- (void)_removeFileAtURL:(id)a3;
- (void)removeAllFilesAtReferencedURLs;
@end

@implementation PUReviewAsset

- (id)primaryRenderedMediaURL
{
  v3 = [(PUReviewAsset *)self mediaType];
  if (v3 == 2)
  {
    v4 = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  }

  else if (v3 == 1)
  {
    v4 = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)reviewAssetRevertingAdjustments
{
  v3 = [(PUReviewAsset *)self adjustmentOutputForInputBaseVersion:0 withLivePhotoSupport:1];
  v4 = [v3 _baseVideoURL];
  v5 = [v3 _baseImageURL];
  v6 = [PUReviewAsset alloc];
  v7 = [(PUReviewAsset *)self pixelWidth];
  v8 = [(PUReviewAsset *)self pixelHeight];
  [(PUReviewAsset *)self duration];
  v9 = [(PUReviewAsset *)v6 initWithReviewAsset:self baseImageURL:v5 renderedImageURL:0 baseVideoURL:v4 renderedVideoURL:0 pixelWidth:v7 pixelHeight:v8 assetAdjustments:0 duration:?];

  return v9;
}

- (PUReviewAsset)reviewAssetWithAdjustmentOutput:(id)a3 adjustmentData:(id)a4 formatIdentifier:(id)a5 version:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 _baseVideoURL];
  v15 = [v13 _baseImageURL];
  v16 = [v13 renderedImageFileURL];
  v17 = [v13 renderedVideoFileURL];
  v18 = [v13 _adjustmentInputBaseVersion];

  if (v18 == 1)
  {
    v19 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Attempted to write adjustments with Penultimate base version", buf, 2u);
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v11 formatVersion:v10 data:v12 baseVersion:0 editorBundleID:0 renderTypes:0];

  v21 = [PUReviewAsset alloc];
  v22 = [(PUReviewAsset *)self pixelWidth];
  v23 = [(PUReviewAsset *)self pixelHeight];
  [(PUReviewAsset *)self duration];
  v24 = [(PUReviewAsset *)v21 initWithReviewAsset:self baseImageURL:v15 renderedImageURL:v16 baseVideoURL:v14 renderedVideoURL:v17 pixelWidth:v22 pixelHeight:v23 assetAdjustments:v20 duration:?];

  return v24;
}

- (id)adjustmentOutputForInputBaseVersion:(int64_t)a3 withLivePhotoSupport:(BOOL)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = [(PUReviewAsset *)self identifier];
  v33 = a3;
  v7 = a3 != 2;
  v8 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:v6];
  v9 = [(PUReviewAsset *)self providedImageURLForImageVersion:v7];
  v10 = [(PUReviewAsset *)self providedVideoURLForImageVersion:v7];
  if ([(PUReviewAsset *)self mediaType]== 1 && v9)
  {
    v11 = [v9 pathExtension];
    v12 = [PUReviewAsset fileURLForFullsizeImageInDirectory:v8 extension:v11];
    v35 = [PUReviewAsset fileURLForFullsizeRenderImageInDirectory:v8 extension:v11];
    v13 = 0;
    if ([(PUReviewAsset *)self isLivePhoto]&& v10)
    {
      v14 = [PUReviewAsset fileURLForFullsizeVideoComplementInDirectory:v8];
      v13 = [PUReviewAsset fileURLForFullsizeRenderVideoComplementInDirectory:v8];
    }

    else
    {
      v14 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v13 = 0;
  if ([(PUReviewAsset *)self mediaType]== 2)
  {
    v35 = 0;
    v14 = 0;
    v12 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = [v10 pathExtension];
    v14 = [PUReviewAsset fileURLForFullsizeVideoInDirectory:v8 extension:v11];
    v13 = [PUReviewAsset fileURLForFullsizeRenderVideoInDirectory:v8];
    v35 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v35 = 0;
  v14 = 0;
  v12 = 0;
LABEL_11:
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v36 = v15;
  v34 = v12;
  if (v12)
  {
    v39 = 0;
    v16 = [v15 copyItemAtURL:v9 toURL:v12 error:&v39];
    v12 = v39;
    if ((v16 & 1) == 0)
    {
      v17 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v41 = v9;
        v42 = 2114;
        v43 = v34;
        v44 = 2114;
        v45 = v12;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v15 = v36;
  }

  if (v14)
  {
    v18 = v9;
    v19 = v8;
    v20 = v6;
    v38 = v12;
    v21 = [v15 copyItemAtURL:v10 toURL:v14 error:&v38];
    v22 = v38;

    if ((v21 & 1) == 0)
    {
      v23 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v41 = v10;
        v42 = 2114;
        v43 = v14;
        v44 = 2114;
        v45 = v22;
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v6 = v20;
    v8 = v19;
    v9 = v18;
  }

  else
  {
    v22 = v12;
  }

  if (v13 && [(PUReviewAsset *)self isLivePhoto]&& !a4)
  {
    v24 = v9;
    v25 = v8;
    v26 = v6;
    v37 = v22;
    v27 = [v36 copyItemAtURL:v10 toURL:v13 error:&v37];
    v28 = v37;

    if ((v27 & 1) == 0)
    {
      v29 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v41 = v10;
        v42 = 2114;
        v43 = v13;
        v44 = 2114;
        v45 = v28;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v6 = v26;
    v8 = v25;
    v9 = v24;
  }

  else
  {
    v28 = v22;
  }

  v30 = objc_alloc_init(PUReviewAdjustmentOutput);
  [(PUReviewAdjustmentOutput *)v30 _setAdjustmentInputBaseVersion:v33];
  [(PUReviewAdjustmentOutput *)v30 _setRenderedImageFileURL:v35];
  [(PUReviewAdjustmentOutput *)v30 _setRenderedVideoFileURL:v13];
  [(PUReviewAdjustmentOutput *)v30 _setBaseImageURL:v34];
  [(PUReviewAdjustmentOutput *)v30 _setBaseVideoURL:v14];

  return v30;
}

- (id)inputForAdjustmentWithMediaProvider:(id)a3 canHandleAdjustments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUReviewAsset *)self isAdjusted];
  v9 = [(PUReviewAsset *)self assetAdjustments];
  v25 = v7;
  if (v8)
  {
    if (v7[2](v7, v9))
    {
      v10 = [v9 adjustmentBaseVersion];
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 2;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 scale];
  [v12 _referenceBounds];
  [(PUReviewAsset *)self pixelWidth];
  [(PUReviewAsset *)self pixelHeight];
  PLScaledSizeToFitSize();
  v14 = rint(v13 * 0.5);
  v16 = rint(v15 * 0.5);
  v17 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v17 setVersion:0];
  [v17 setSynchronous:1];
  [v17 setDeliveryMode:1];
  [v17 setNetworkAccessAllowed:0];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__72245;
  v32 = __Block_byref_object_dispose__72246;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __91__PUReviewAsset_AdjustmentInput__inputForAdjustmentWithMediaProvider_canHandleAdjustments___block_invoke;
  v27[3] = &unk_1E7B7D678;
  v27[4] = &v28;
  v18 = v6;
  [v6 requestImageForAsset:self targetSize:0 contentMode:v17 options:v27 resultHandler:{v14, v16}];
  v19 = v10 != 2;
  v20 = objc_alloc_init(PUReviewAdjustmentInput);
  if (v11)
  {
    v21 = [v9 adjustmentData];
  }

  else
  {
    v21 = 0;
  }

  [(PUReviewAdjustmentInput *)v20 _setKnownAdjustmentData:v21];
  if (v11)
  {
  }

  [(PUReviewAdjustmentInput *)v20 _setBaseImageVersion:v10];
  [(PUReviewAdjustmentInput *)v20 _setCurrentPreviewImage:v29[5]];
  v22 = [(PUReviewAsset *)self providedImageURLForImageVersion:v10 != 2];
  [(PUReviewAdjustmentInput *)v20 _setBaseImageFileURL:v22];

  v23 = [(PUReviewAsset *)self providedVideoURLForImageVersion:v19];
  [(PUReviewAdjustmentInput *)v20 _setBaseVideoFileURL:v23];

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (id)providedVideoURLForVideoVersion:(int64_t)a3
{
  v5 = [(PUReviewAsset *)self providedVideoURL];
  v6 = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  v7 = v6;
  v8 = v5;
  if (a3 != 1)
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (id)providedVideoURLForImageVersion:(int64_t)a3
{
  v5 = [(PUReviewAsset *)self providedVideoURL];
  v6 = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  v7 = v6;
  v8 = v5;
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (int)exifOrientationForImageVersion:(int64_t)a3
{
  v5 = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  v6 = v5;
  if ((a3 - 1) >= 2 && (a3 || v5))
  {
    v7 = 1;
  }

  else
  {
    v7 = [(PUReviewAsset *)self originalEXIFOrientation];
  }

  return v7;
}

- (id)providedImageURLForImageVersion:(int64_t)a3
{
  v5 = [(PUReviewAsset *)self providedFullsizeImageURL];
  v6 = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  v7 = v6;
  v8 = v5;
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (void)_removeFileAtURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = +[PUReviewFileManager defaultManager];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __34__PUReviewAsset__removeFileAtURL___block_invoke;
      v8[3] = &unk_1E7B80280;
      v9 = v3;
      [v7 removeItemAtURL:v9 completion:v8];
    }
  }
}

void __34__PUReviewAsset__removeFileAtURL___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@: %{public}@", &v8, 0x16u);
    }
  }
}

- (void)removeAllFilesAtReferencedURLs
{
  v3 = [(PUReviewAsset *)self providedFullsizeImageURL];
  [(PUReviewAsset *)self _removeFileAtURL:v3];

  v4 = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  [(PUReviewAsset *)self _removeFileAtURL:v4];

  v5 = [(PUReviewAsset *)self providedVideoURL];
  [(PUReviewAsset *)self _removeFileAtURL:v5];

  v6 = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  [(PUReviewAsset *)self _removeFileAtURL:v6];
}

- (BOOL)_linkFileAtURL:(id)a3 toURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isEqual:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v6 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = +[PUReviewFileManager defaultManager];
      v19 = 0;
      v12 = [v11 removeItemAtURL:v6 error:&v19];
      v13 = v19;

      if ((v12 & 1) == 0)
      {
        v14 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v21 = v6;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Failed to remove existing file at %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v18 = 0;
    v7 = [v8 copyItemAtURL:v5 toURL:v6 error:&v18];
    v15 = v18;
    if ((v7 & 1) == 0)
    {
      v16 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (id)_uniqueDestinationURLForFileURL:(id)a3 inDirectory:(id)a4
{
  v5 = a4;
  v6 = [a3 pathExtension];
  v7 = [MEMORY[0x1E69BF320] UUIDString];
  v8 = [v7 stringByAppendingPathExtension:v6];

  v9 = [v5 stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];

  return v10;
}

- (id)_ensureLinkDestinationDirectoryFromBaseDirectory:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUReviewAsset *)self identifier];
  v6 = [v4 stringByAppendingPathComponent:@"ReviewLinkedFiles"];

  v7 = [v6 stringByAppendingPathComponent:v5];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (NSString)pathForTrimmedVideoFile
{
  v2 = [(PUReviewAsset *)self pathForOriginalVideoFile];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByDeletingPathExtension];
    v5 = [v4 stringByAppendingPathExtension:@"TRIM.MOV"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)pathForOriginalVideoFile
{
  v2 = [(PUReviewAsset *)self providedVideoURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)pathForOriginalImageFile
{
  v2 = [(PUReviewAsset *)self providedFullsizeImageURL];
  v3 = [v2 path];

  return v3;
}

- (int)originalEXIFOrientation
{
  v2 = [(PUReviewAsset *)self providedImageMetadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)requestContentEditingInputWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = [(PUReviewAsset *)self assetAdjustments];
    v9 = [v8 phAdjustmentData];

    v10 = objc_alloc(MEMORY[0x1E6978790]);
    v11 = [(PUReviewAsset *)self providedFullsizeImageURL];
    if (v11)
    {
      v12 = [v10 initWithAppropriateURL:v11];
    }

    else
    {
      v13 = [(PUReviewAsset *)self providedVideoURL];
      v12 = [v10 initWithAppropriateURL:v13];
    }

    [v12 setMediaType:{-[PUReviewAsset mediaType](self, "mediaType")}];
    [v12 setMediaSubtypes:{-[PUReviewAsset mediaSubtypes](self, "mediaSubtypes")}];
    [v12 setPlaybackStyle:{-[PUReviewAsset playbackStyle](self, "playbackStyle")}];
    v14 = [(PUReviewAsset *)self creationDate];
    [v12 setCreationDate:v14];

    v15 = [(PUReviewAsset *)self location];
    [v12 setLocation:v15];

    if (!-[PUReviewAsset isAdjusted](self, "isAdjusted") || ([v6 canHandleAdjustmentData], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v6, "canHandleAdjustmentData"), v18 = objc_claimAutoreleasedReturnValue(), v19 = (v18)[2](v18, v9), v18, v17, v19))
    {
      [v12 setBaseVersion:0];
      [v12 setAdjustmentData:v9];
      v20 = [(PUReviewAsset *)self providedFullsizeImageURL];
      [v12 setFullSizeImageURL:v20];

      v21 = [(PUReviewAsset *)self providedVideoURL];
      [v12 setVideoURL:v21];

      v22 = [(PUReviewAsset *)self originalEXIFOrientation];
    }

    else
    {
      [v12 setBaseVersion:2];
      [v12 setAdjustmentData:v9];
      v23 = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
      [v12 setFullSizeImageURL:v23];

      v24 = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
      [v12 setVideoURL:v24];

      v22 = 1;
    }

    [v12 setFullSizeImageOrientation:v22];
    v7[2](v7, v12, 0);
  }

  return 0;
}

- (PFVideoAVObjectBuilder)videoObjectBuilder
{
  v3 = MEMORY[0x1E6988168];
  v4 = [(PUReviewAsset *)self providedVideoURL];
  v5 = [v3 assetWithURL:v4];

  if ([(PUReviewAsset *)self isHighFramerateVideo])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(PUReviewAsset *)self assetAdjustments];
  }

  v7 = [MEMORY[0x1E69C0910] videoAdjustmentsFromAssetAdjustmentsIfRecognized:v6];
  v8 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v5 videoAdjustments:v7];

  return v8;
}

- (unint64_t)livePhotoVisibilityState
{
  if (![(PUReviewAsset *)self isLivePhoto])
  {
    return 0;
  }

  v3 = [(PUReviewAsset *)self isAdjusted];
  v4 = [(PUReviewAsset *)self canPlayPhotoIris];
  v5 = 4;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v4 || !v3)
  {
    v7 = 0;
  }

  return v6 | v5 | !v4 | v7;
}

- (BOOL)isAdjusted
{
  v2 = [(PUReviewAsset *)self assetAdjustments];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isAnimatedImage
{
  v2 = [(PUReviewAsset *)self uniformTypeIdentifier];
  if (v2)
  {
    v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:v2];
    v4 = [v3 conformsToType:*MEMORY[0x1E6982DE8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)uniformTypeIdentifier
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PUReviewAsset *)self providedFullsizeImageURL];
  v4 = [v3 pathExtension];
  v5 = [v2 typeWithFilenameExtension:v4];
  v6 = [v5 identifier];

  return v6;
}

- (double)aspectRatio
{
  if (![(PUReviewAsset *)self pixelHeight])
  {
    return 1.0;
  }

  v3 = [(PUReviewAsset *)self pixelWidth];
  return v3 / [(PUReviewAsset *)self pixelHeight];
}

- (PUReviewAsset)initWithAVAsset:(id)a3 audioMix:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 captureDate:(id)a7 duration:(double)a8 previewImage:(id)a9 videoURL:(id)a10 unadjustedVideoURL:(id)a11 adjustments:(id)a12 identifier:(id)a13
{
  v38 = a7;
  v37 = a9;
  v36 = a10;
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v39.receiver = self;
  v39.super_class = PUReviewAsset;
  v21 = [(PUReviewAsset *)&v39 init];
  if (v21)
  {
    v22 = [v20 copy];
    v23 = *(v21 + 5);
    *(v21 + 5) = v22;

    *(v21 + 6) = 2;
    *(v21 + 7) = 0;
    *(v21 + 8) = 4;
    *(v21 + 9) = a5;
    *(v21 + 10) = a6;
    *(v21 + 15) = a8;
    objc_storeStrong(v21 + 12, a7);
    objc_storeStrong(v21 + 14, a7);
    *(v21 + 5) = 0;
    v24 = MEMORY[0x1E6960C70];
    v25 = *MEMORY[0x1E6960C70];
    *(v21 + 200) = *MEMORY[0x1E6960C70];
    v26 = *(v24 + 16);
    *(v21 + 27) = v26;
    *(v21 + 14) = v25;
    *(v21 + 30) = v26;
    v21[13] = 0;
    v27 = *(v21 + 16);
    *(v21 + 16) = 0;

    *(v21 + 17) = 0;
    objc_storeStrong(v21 + 18, a9);
    v28 = (v21 + 176);
    v29 = v18;
    if (v18)
    {
      objc_storeStrong(v28, a11);
      v28 = (v21 + 184);
    }

    objc_storeStrong(v28, a10);
    objc_storeStrong(v21 + 24, a12);
    v21[8] = [objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v21 + 24)];
    if (v19)
    {
      v30 = MEMORY[0x1E69C0910];
      v31 = [v19 adjustmentFormatIdentifier];
      v32 = [v19 adjustmentFormatVersion];
      LODWORD(v30) = [v30 isRecognizedSlowMotionFormatWithIdentifier:v31 version:v32];

      if (v30)
      {
        *(v21 + 7) = 0x20000;
      }
    }

    v33 = v21;
    v18 = v29;
  }

  return v21;
}

- (PUReviewAsset)initWithLivePhoto:(id)a3 fullsizeUnadjustedImageURL:(id)a4 fullsizeUnadjustedVideoURL:(id)a5 assetAdjustments:(id)a6 width:(unint64_t)a7 height:(unint64_t)a8 captureDate:(id)a9 metadata:(id)a10 duration:(double)a11 previewImage:(id)a12 identifier:(id)a13
{
  v19 = a3;
  obj = a4;
  v20 = a4;
  v21 = a5;
  v41 = a6;
  v42 = a6;
  v44 = a9;
  v43 = a10;
  v22 = a12;
  v23 = a13;
  v46.receiver = self;
  v46.super_class = PUReviewAsset;
  v24 = v21;
  v25 = [(PUReviewAsset *)&v46 init];
  if (v25)
  {
    v26 = [v23 copy];
    v27 = *(v25 + 5);
    *(v25 + 5) = v26;

    *(v25 + 3) = xmmword_1B3CFCEC0;
    *(v25 + 7) = 0;
    *(v25 + 8) = 3;
    *(v25 + 9) = a7;
    *(v25 + 10) = a8;
    objc_storeStrong(v25 + 12, a9);
    objc_storeStrong(v25 + 14, a9);
    v25[10] = v19 != 0;
    v25[12] = v19 != 0;
    v25[11] = v19 == 0;
    if (v19)
    {
      [v19 photoTime];
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
    }

    *(v25 + 200) = v45;
    CMTimeMakeWithSeconds(&v45, a11, 600);
    *(v25 + 224) = v45;
    v25[13] = 0;
    v28 = *(v25 + 16);
    *(v25 + 16) = 0;

    *(v25 + 17) = 0;
    objc_storeStrong(v25 + 18, a12);
    v29 = [v19 imageURL];
    if (v20 && v24)
    {
      v30 = *(v25 + 21);
      *(v25 + 21) = v29;

      v31 = [v19 videoURL];
      v32 = *(v25 + 23);
      *(v25 + 23) = v31;

      objc_storeStrong(v25 + 20, obj);
      v33 = v24;
    }

    else
    {
      v34 = *(v25 + 20);
      *(v25 + 20) = v29;

      v33 = [v19 videoURL];
    }

    v35 = *(v25 + 22);
    *(v25 + 22) = v33;

    objc_storeStrong(v25 + 19, a10);
    objc_storeStrong(v25 + 24, v41);
    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v25 + 24)])
    {
      v36 = 1;
    }

    else
    {
      v36 = [objc_opt_class() _shouldShowConfidentialityWarningForMetadata:v43 creationDate:v44];
    }

    v25[8] = v36;
    v37 = v25;
  }

  return v25;
}

- (PUReviewAsset)initWithPhoto:(id)a3 mediaSubtypes:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 captureDate:(id)a7 metadata:(id)a8 burstIdentifier:(id)a9 representedCount:(unint64_t)a10 fullsizeImageURL:(id)a11 fullsizeUnadjustedImageURL:(id)a12 assetAdjustments:(id)a13 identifier:(id)a14
{
  v40 = a3;
  v42 = a7;
  v41 = a8;
  v18 = a9;
  v19 = a11;
  v20 = a12;
  v39 = a13;
  v21 = a14;
  v43.receiver = self;
  v43.super_class = PUReviewAsset;
  v22 = [(PUReviewAsset *)&v43 init];
  if (v22)
  {
    v23 = [v21 copy];
    v24 = *(v22 + 5);
    *(v22 + 5) = v23;

    *(v22 + 6) = 1;
    *(v22 + 7) = a4;
    *(v22 + 7) = 0;
    *(v22 + 8) = 1;
    *(v22 + 9) = a5;
    *(v22 + 10) = a6;
    objc_storeStrong(v22 + 12, a7);
    objc_storeStrong(v22 + 13, a7);
    objc_storeStrong(v22 + 14, a7);
    *(v22 + 5) = 0;
    v25 = MEMORY[0x1E6960C70];
    v26 = *MEMORY[0x1E6960C70];
    *(v22 + 200) = *MEMORY[0x1E6960C70];
    v27 = *(v25 + 16);
    *(v22 + 27) = v27;
    *(v22 + 14) = v26;
    *(v22 + 30) = v27;
    v22[13] = v18 != 0;
    v28 = [v18 copy];
    v29 = *(v22 + 16);
    *(v22 + 16) = v28;

    *(v22 + 17) = a10;
    objc_storeStrong(v22 + 18, a3);
    objc_storeStrong(v22 + 19, a8);
    v30 = v19;
    if (v20)
    {
      v31 = *(v22 + 21);
      *(v22 + 21) = v30;

      v30 = v20;
    }

    v32 = *(v22 + 20);
    *(v22 + 20) = v30;

    objc_storeStrong(v22 + 24, a13);
    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v22 + 24)])
    {
      v33 = 1;
    }

    else
    {
      v33 = [objc_opt_class() _shouldShowConfidentialityWarningForMetadata:v41 creationDate:v42];
    }

    v22[8] = v33;
    v34 = v22;
  }

  return v22;
}

- (PUReviewAsset)initWithReviewAsset:(id)a3 baseImageURL:(id)a4 renderedImageURL:(id)a5 baseVideoURL:(id)a6 renderedVideoURL:(id)a7 previewImage:(id)a8 pixelWidth:(unint64_t)a9 pixelHeight:(unint64_t)a10 assetAdjustments:(id)a11 duration:(double)a12
{
  v19 = a3;
  v54 = a4;
  v53 = a5;
  obj = a6;
  v55 = a6;
  v52 = a7;
  v20 = a8;
  v21 = a11;
  v22 = [(PUReviewAsset *)self initWithReviewAsset:v19];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_12;
  }

  v22->_pixelWidth = a9;
  v22->_pixelHeight = a10;
  v22->_duration = a12;
  if (v21)
  {
    v47 = [v21 adjustmentBaseVersion] != 0;
    v48 = a4;
    v24 = v20;
    v25 = objc_alloc(MEMORY[0x1E69C0660]);
    [v21 adjustmentFormatIdentifier];
    v26 = v49 = a7;
    [v21 adjustmentFormatVersion];
    v27 = v50 = v19;
    v28 = [v21 adjustmentData];
    v29 = [v21 editorBundleID];
    v30 = v25;
    v20 = v24;
    a4 = v48;
    v31 = [v30 initWithFormatIdentifier:v26 formatVersion:v27 data:v28 baseVersion:0 editorBundleID:v29 renderTypes:0];

    v32 = v47;
    v19 = v50;

    a7 = v49;
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  objc_storeStrong(&v23->_assetAdjustments, v31);
  v33 = [objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:v23->_assetAdjustments];
  v23->_requiresConfidentiality = (v33 | [v19 requiresConfidentiality]) & 1;
  if (v20)
  {
    if (!v32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v32)
  {
    providedPreviewImage = 0;
  }

  else
  {
    providedPreviewImage = v23->_providedPreviewImage;
  }

  v20 = providedPreviewImage;
  if (v32)
  {
LABEL_7:
    v34 = [(PUReviewAsset *)v23 providedImageMetadata];
    v35 = v31;
    v36 = v20;
    v37 = a7;
    v38 = [v34 mutableCopy];

    [v38 setObject:&unk_1F2B7EA38 forKeyedSubscript:*MEMORY[0x1E696DE78]];
    v39 = [v38 copy];
    providedImageMetadata = v23->_providedImageMetadata;
    v23->_providedImageMetadata = v39;

    a7 = v37;
    v20 = v36;
    v31 = v35;
  }

LABEL_8:
  objc_storeStrong(&v23->_providedFullsizeImageURL, a4);
  objc_storeStrong(&v23->_providedFullsizeRenderImageURL, a5);
  objc_storeStrong(&v23->_providedVideoURL, obj);
  objc_storeStrong(&v23->_providedFullsizeRenderVideoURL, a7);
  objc_storeStrong(&v23->_providedPreviewImage, v20);
  if ([(PUReviewAsset *)v23 isLivePhoto]&& !v23->_providedVideoURL)
  {
    v23->_mediaSubtypes = [(PUReviewAsset *)v23 mediaSubtypes]& 0xFFFFFFFFFFFFFFF7;
    *&v23->_livePhoto = 0;
    v23->_canPlayPhotoIris = 0;
    v41 = MEMORY[0x1E6960C70];
    v42 = *MEMORY[0x1E6960C70];
    *&v23->_livePhotoSynchronizedDisplayTime.value = *MEMORY[0x1E6960C70];
    v43 = *(v41 + 16);
    v23->_livePhotoSynchronizedDisplayTime.epoch = v43;
    *&v23->_livePhotoDuration.value = v42;
    v23->_livePhotoDuration.epoch = v43;
  }

  v44 = v23;

LABEL_12:
  return v23;
}

- (PUReviewAsset)initWithReviewAsset:(id)a3 primaryResourceURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUReviewAsset *)self initWithReviewAsset:v6];
  if (v8)
  {
    v9 = [v6 mediaType];
    if (v9 == 1)
    {
      v10 = 160;
    }

    else
    {
      if (v9 != 2)
      {
LABEL_7:
        v13 = v8;
        goto LABEL_8;
      }

      v10 = 176;
    }

    v11 = [v7 copy];
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = v11;

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (PUReviewAsset)initWithReviewAsset:(id)a3 linkFileURLsToUniquePathsInDirectory:(id)a4 canPlayPhotoIris:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PUReviewAsset *)self initWithConformingAsset:v8];
  v11 = v10;
  if (v10)
  {
    v10->_canPlayPhotoIris = v5;
    if (v5)
    {
      v10->_playbackStyle = 3;
    }

    v12 = [(PUReviewAsset *)v10 _ensureLinkDestinationDirectoryFromBaseDirectory:v9];
    v13 = [v8 providedFullsizeImageURL];
    if (v13)
    {
      v14 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:v13 inDirectory:v12];
      providedFullsizeImageURL = v11->_providedFullsizeImageURL;
      v11->_providedFullsizeImageURL = v14;

      v16 = [(PUReviewAsset *)v11 _linkFileAtURL:v13 toURL:v11->_providedFullsizeImageURL];
    }

    else
    {
      v16 = 1;
    }

    v18 = [v8 providedFullsizeRenderImageURL];
    if (v18)
    {
      v19 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:v18 inDirectory:v12];
      providedFullsizeRenderImageURL = v11->_providedFullsizeRenderImageURL;
      v11->_providedFullsizeRenderImageURL = v19;

      if (v16)
      {
        v16 = [(PUReviewAsset *)v11 _linkFileAtURL:v18 toURL:v11->_providedFullsizeRenderImageURL];
      }
    }

    v21 = [v8 providedVideoURL];
    if (v21)
    {
      v22 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:v21 inDirectory:v12];
      providedVideoURL = v11->_providedVideoURL;
      v11->_providedVideoURL = v22;

      if (v16)
      {
        v16 = [(PUReviewAsset *)v11 _linkFileAtURL:v21 toURL:v11->_providedVideoURL];
      }
    }

    v24 = [v8 providedFullsizeRenderVideoURL];
    if (v24)
    {
      v25 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:v24 inDirectory:v12];
      providedFullsizeRenderVideoURL = v11->_providedFullsizeRenderVideoURL;
      v11->_providedFullsizeRenderVideoURL = v25;

      if (v16)
      {
        v27 = [(PUReviewAsset *)v11 _linkFileAtURL:v24 toURL:v11->_providedFullsizeRenderVideoURL];
        v28 = v11;
        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v28 = v11;
      if (v16)
      {
LABEL_20:
        v17 = v28;

        goto LABEL_21;
      }
    }

    [(PUReviewAsset *)v11 removeAllFilesAtReferencedURLs];
    v28 = 0;
    goto LABEL_20;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (PUReviewAsset)initWithReviewAsset:(id)a3 linkFileURLsToUniquePathsInDirectory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[PUReviewAsset initWithReviewAsset:linkFileURLsToUniquePathsInDirectory:canPlayPhotoIris:](self, "initWithReviewAsset:linkFileURLsToUniquePathsInDirectory:canPlayPhotoIris:", v7, v6, [v7 canPlayPhotoIris]);

  return v8;
}

- (PUReviewAsset)initWithConformingAsset:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PUReviewAsset;
  v5 = [(PUReviewAsset *)&v38 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    *(v5 + 6) = [v4 mediaType];
    *(v5 + 7) = [v4 mediaSubtypes];
    *(v5 + 8) = [v4 playbackStyle];
    *(v5 + 7) = [v4 playbackVariation];
    *(v5 + 9) = [v4 pixelWidth];
    *(v5 + 10) = [v4 pixelHeight];
    v8 = [v4 location];
    v9 = *(v5 + 11);
    *(v5 + 11) = v8;

    v10 = [v4 creationDate];
    v11 = *(v5 + 12);
    *(v5 + 12) = v10;

    v12 = [v4 modificationDate];
    v13 = *(v5 + 14);
    *(v5 + 14) = v12;

    v5[9] = [v4 isHDR];
    [v4 duration];
    *(v5 + 15) = v14;
    v5[10] = [v4 isLivePhoto];
    v5[12] = [v4 canPlayPhotoIris];
    v5[11] = [v4 isLivePhotoPlaceholder];
    if (v4)
    {
      [v4 livePhotoSynchronizedDisplayTime];
      *(v5 + 200) = v36;
      *(v5 + 27) = v37;
      [v4 livePhotoDuration];
    }

    else
    {
      *(v5 + 25) = 0;
      *(v5 + 26) = 0;
      *(v5 + 27) = 0;
      v36 = 0uLL;
      v37 = 0;
    }

    *(v5 + 14) = v36;
    *(v5 + 30) = v37;
    v5[13] = [v4 representsBurst];
    v15 = [v4 burstIdentifier];
    v16 = *(v5 + 16);
    *(v5 + 16) = v15;

    *(v5 + 17) = [v4 numberOfRepresentedAssets];
    v17 = [v4 providedPreviewImage];
    v18 = *(v5 + 18);
    *(v5 + 18) = v17;

    v19 = [v4 providedImageMetadata];
    v20 = *(v5 + 19);
    *(v5 + 19) = v19;

    v21 = [v4 assetAdjustments];
    v22 = *(v5 + 24);
    *(v5 + 24) = v21;

    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v5 + 24)])
    {
      v5[8] = 1;
    }

    else
    {
      v23 = objc_opt_class();
      v24 = [v5 providedImageMetadata];
      v25 = [v5 creationDate];
      v5[8] = [v23 _shouldShowConfidentialityWarningForMetadata:v24 creationDate:v25];
    }

    v26 = [v4 providedFullsizeImageURL];
    v27 = *(v5 + 20);
    *(v5 + 20) = v26;

    v28 = [v4 providedFullsizeRenderImageURL];
    v29 = *(v5 + 21);
    *(v5 + 21) = v28;

    v30 = [v4 providedVideoURL];
    v31 = *(v5 + 22);
    *(v5 + 22) = v30;

    v32 = [v4 providedFullsizeRenderVideoURL];
    v33 = *(v5 + 23);
    *(v5 + 23) = v32;

    v34 = v5;
  }

  return v5;
}

- (PUReviewAsset)initWithReviewAsset:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PUReviewAsset;
  v5 = [(PUReviewAsset *)&v35 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    *(v5 + 6) = [v4 mediaType];
    *(v5 + 7) = [v4 mediaSubtypes];
    *(v5 + 8) = [v4 playbackStyle];
    *(v5 + 7) = [v4 playbackVariation];
    *(v5 + 9) = [v4 pixelWidth];
    *(v5 + 10) = [v4 pixelHeight];
    v8 = [v4 location];
    v9 = *(v5 + 11);
    *(v5 + 11) = v8;

    v10 = [v4 creationDate];
    v11 = *(v5 + 12);
    *(v5 + 12) = v10;

    v12 = [v4 modificationDate];
    v13 = *(v5 + 14);
    *(v5 + 14) = v12;

    v5[9] = [v4 isHDR];
    [v4 duration];
    *(v5 + 15) = v14;
    v5[10] = [v4 isLivePhoto];
    v5[12] = [v4 canPlayPhotoIris];
    v5[11] = [v4 isLivePhotoPlaceholder];
    if (v4)
    {
      [v4 livePhotoSynchronizedDisplayTime];
      *(v5 + 200) = v33;
      *(v5 + 27) = v34;
      [v4 livePhotoDuration];
    }

    else
    {
      *(v5 + 25) = 0;
      *(v5 + 26) = 0;
      *(v5 + 27) = 0;
      v33 = 0uLL;
      v34 = 0;
    }

    *(v5 + 14) = v33;
    *(v5 + 30) = v34;
    v5[13] = [v4 representsBurst];
    v15 = [v4 burstIdentifier];
    v16 = *(v5 + 16);
    *(v5 + 16) = v15;

    *(v5 + 17) = [v4 numberOfRepresentedAssets];
    v17 = [v4 providedPreviewImage];
    v18 = *(v5 + 18);
    *(v5 + 18) = v17;

    v19 = [v4 providedImageMetadata];
    v20 = *(v5 + 19);
    *(v5 + 19) = v19;

    v21 = [v4 assetAdjustments];
    v22 = *(v5 + 24);
    *(v5 + 24) = v21;

    v23 = [v4 providedFullsizeImageURL];
    v24 = *(v5 + 20);
    *(v5 + 20) = v23;

    v25 = [v4 providedFullsizeRenderImageURL];
    v26 = *(v5 + 21);
    *(v5 + 21) = v25;

    v27 = [v4 providedVideoURL];
    v28 = *(v5 + 22);
    *(v5 + 22) = v27;

    v29 = [v4 providedFullsizeRenderVideoURL];
    v30 = *(v5 + 23);
    *(v5 + 23) = v29;

    v5[8] = [v4 requiresConfidentiality];
    v31 = v5;
  }

  return v5;
}

+ (id)fileURLForFullsizeVideoInDirectory:(id)a3 extension:(id)a4
{
  v5 = a3;
  v6 = [@"Video" stringByAppendingPathExtension:a4];
  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)fileURLForFullsizeRenderImageInDirectory:(id)a3 extension:(id)a4
{
  v5 = a3;
  v6 = [@"RenderedImage" stringByAppendingPathExtension:a4];
  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)fileURLForFullsizeImageInDirectory:(id)a3 extension:(id)a4
{
  v5 = a3;
  v6 = [@"Image" stringByAppendingPathExtension:a4];
  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)createUniqueMediaDirectoryForAssetWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"ReviewData"];

  v6 = [v5 stringByAppendingPathComponent:v3];

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [v6 stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v15];
  v11 = v15;

  if (v11)
  {
    v12 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:1];

  return v13;
}

+ (BOOL)_shouldShowConfidentialityWarningForMetadata:(id)a3 creationDate:(id)a4
{
  v5 = a3;
  if ([a1 _shouldCheckConfidentiality])
  {
    [v5 count];
  }

  return 0;
}

+ (BOOL)_shouldShowConfidentialityWarningForAdjustments:(id)a3
{
  v4 = a3;
  if ([a1 _shouldCheckConfidentiality])
  {
    v5 = [a1 _confidentialityWarningsVersionForAdjustments:v4];
    if (v5)
    {
      v6 = [MEMORY[0x1E69C3A18] sharedInstance];
      LOBYTE(v5) = v5 >= [v6 confidentialityWarningsVersion];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end