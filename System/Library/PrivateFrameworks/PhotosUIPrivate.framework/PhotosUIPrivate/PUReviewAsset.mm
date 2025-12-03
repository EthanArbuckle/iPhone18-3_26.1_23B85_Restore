@interface PUReviewAsset
+ (BOOL)_shouldShowConfidentialityWarningForAdjustments:(id)adjustments;
+ (BOOL)_shouldShowConfidentialityWarningForMetadata:(id)metadata creationDate:(id)date;
+ (id)createUniqueMediaDirectoryForAssetWithIdentifier:(id)identifier;
+ (id)fileURLForFullsizeImageInDirectory:(id)directory extension:(id)extension;
+ (id)fileURLForFullsizeRenderImageInDirectory:(id)directory extension:(id)extension;
+ (id)fileURLForFullsizeVideoInDirectory:(id)directory extension:(id)extension;
- (BOOL)_linkFileAtURL:(id)l toURL:(id)rL;
- (BOOL)isAdjusted;
- (BOOL)isAnimatedImage;
- (NSString)pathForOriginalImageFile;
- (NSString)pathForOriginalVideoFile;
- (NSString)pathForTrimmedVideoFile;
- (NSString)uniformTypeIdentifier;
- (PFVideoAVObjectBuilder)videoObjectBuilder;
- (PUReviewAsset)initWithAVAsset:(id)asset audioMix:(id)mix width:(unint64_t)width height:(unint64_t)height captureDate:(id)date duration:(double)duration previewImage:(id)image videoURL:(id)self0 unadjustedVideoURL:(id)self1 adjustments:(id)self2 identifier:(id)self3;
- (PUReviewAsset)initWithConformingAsset:(id)asset;
- (PUReviewAsset)initWithLivePhoto:(id)photo fullsizeUnadjustedImageURL:(id)l fullsizeUnadjustedVideoURL:(id)rL assetAdjustments:(id)adjustments width:(unint64_t)width height:(unint64_t)height captureDate:(id)date metadata:(id)self0 duration:(double)self1 previewImage:(id)self2 identifier:(id)self3;
- (PUReviewAsset)initWithPhoto:(id)photo mediaSubtypes:(unint64_t)subtypes width:(unint64_t)width height:(unint64_t)height captureDate:(id)date metadata:(id)metadata burstIdentifier:(id)identifier representedCount:(unint64_t)self0 fullsizeImageURL:(id)self1 fullsizeUnadjustedImageURL:(id)self2 assetAdjustments:(id)self3 identifier:(id)self4;
- (PUReviewAsset)initWithReviewAsset:(id)asset;
- (PUReviewAsset)initWithReviewAsset:(id)asset baseImageURL:(id)l renderedImageURL:(id)rL baseVideoURL:(id)uRL renderedVideoURL:(id)videoURL previewImage:(id)image pixelWidth:(unint64_t)width pixelHeight:(unint64_t)self0 assetAdjustments:(id)self1 duration:(double)self2;
- (PUReviewAsset)initWithReviewAsset:(id)asset linkFileURLsToUniquePathsInDirectory:(id)directory;
- (PUReviewAsset)initWithReviewAsset:(id)asset linkFileURLsToUniquePathsInDirectory:(id)directory canPlayPhotoIris:(BOOL)iris;
- (PUReviewAsset)initWithReviewAsset:(id)asset primaryResourceURL:(id)l;
- (PUReviewAsset)reviewAssetWithAdjustmentOutput:(id)output adjustmentData:(id)data formatIdentifier:(id)identifier version:(id)version;
- (double)aspectRatio;
- (id)_ensureLinkDestinationDirectoryFromBaseDirectory:(id)directory;
- (id)_uniqueDestinationURLForFileURL:(id)l inDirectory:(id)directory;
- (id)adjustmentOutputForInputBaseVersion:(int64_t)version withLivePhotoSupport:(BOOL)support;
- (id)inputForAdjustmentWithMediaProvider:(id)provider canHandleAdjustments:(id)adjustments;
- (id)primaryRenderedMediaURL;
- (id)providedImageURLForImageVersion:(int64_t)version;
- (id)providedVideoURLForImageVersion:(int64_t)version;
- (id)providedVideoURLForVideoVersion:(int64_t)version;
- (id)reviewAssetRevertingAdjustments;
- (int)exifOrientationForImageVersion:(int64_t)version;
- (int)originalEXIFOrientation;
- (unint64_t)livePhotoVisibilityState;
- (unint64_t)requestContentEditingInputWithOptions:(id)options completionHandler:(id)handler;
- (void)_removeFileAtURL:(id)l;
- (void)removeAllFilesAtReferencedURLs;
@end

@implementation PUReviewAsset

- (id)primaryRenderedMediaURL
{
  mediaType = [(PUReviewAsset *)self mediaType];
  if (mediaType == 2)
  {
    providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  }

  else if (mediaType == 1)
  {
    providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  }

  else
  {
    providedFullsizeRenderVideoURL = 0;
  }

  return providedFullsizeRenderVideoURL;
}

- (id)reviewAssetRevertingAdjustments
{
  v3 = [(PUReviewAsset *)self adjustmentOutputForInputBaseVersion:0 withLivePhotoSupport:1];
  _baseVideoURL = [v3 _baseVideoURL];
  _baseImageURL = [v3 _baseImageURL];
  v6 = [PUReviewAsset alloc];
  pixelWidth = [(PUReviewAsset *)self pixelWidth];
  pixelHeight = [(PUReviewAsset *)self pixelHeight];
  [(PUReviewAsset *)self duration];
  v9 = [(PUReviewAsset *)v6 initWithReviewAsset:self baseImageURL:_baseImageURL renderedImageURL:0 baseVideoURL:_baseVideoURL renderedVideoURL:0 pixelWidth:pixelWidth pixelHeight:pixelHeight assetAdjustments:0 duration:?];

  return v9;
}

- (PUReviewAsset)reviewAssetWithAdjustmentOutput:(id)output adjustmentData:(id)data formatIdentifier:(id)identifier version:(id)version
{
  versionCopy = version;
  identifierCopy = identifier;
  dataCopy = data;
  outputCopy = output;
  _baseVideoURL = [outputCopy _baseVideoURL];
  _baseImageURL = [outputCopy _baseImageURL];
  renderedImageFileURL = [outputCopy renderedImageFileURL];
  renderedVideoFileURL = [outputCopy renderedVideoFileURL];
  _adjustmentInputBaseVersion = [outputCopy _adjustmentInputBaseVersion];

  if (_adjustmentInputBaseVersion == 1)
  {
    v19 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Attempted to write adjustments with Penultimate base version", buf, 2u);
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:identifierCopy formatVersion:versionCopy data:dataCopy baseVersion:0 editorBundleID:0 renderTypes:0];

  v21 = [PUReviewAsset alloc];
  pixelWidth = [(PUReviewAsset *)self pixelWidth];
  pixelHeight = [(PUReviewAsset *)self pixelHeight];
  [(PUReviewAsset *)self duration];
  v24 = [(PUReviewAsset *)v21 initWithReviewAsset:self baseImageURL:_baseImageURL renderedImageURL:renderedImageFileURL baseVideoURL:_baseVideoURL renderedVideoURL:renderedVideoFileURL pixelWidth:pixelWidth pixelHeight:pixelHeight assetAdjustments:v20 duration:?];

  return v24;
}

- (id)adjustmentOutputForInputBaseVersion:(int64_t)version withLivePhotoSupport:(BOOL)support
{
  v46 = *MEMORY[0x1E69E9840];
  identifier = [(PUReviewAsset *)self identifier];
  versionCopy = version;
  v7 = version != 2;
  v8 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:identifier];
  v9 = [(PUReviewAsset *)self providedImageURLForImageVersion:v7];
  v10 = [(PUReviewAsset *)self providedVideoURLForImageVersion:v7];
  if ([(PUReviewAsset *)self mediaType]== 1 && v9)
  {
    pathExtension = [v9 pathExtension];
    v12 = [PUReviewAsset fileURLForFullsizeImageInDirectory:v8 extension:pathExtension];
    v35 = [PUReviewAsset fileURLForFullsizeRenderImageInDirectory:v8 extension:pathExtension];
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

    pathExtension = [v10 pathExtension];
    v14 = [PUReviewAsset fileURLForFullsizeVideoInDirectory:v8 extension:pathExtension];
    v13 = [PUReviewAsset fileURLForFullsizeRenderVideoInDirectory:v8];
    v35 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v35 = 0;
  v14 = 0;
  v12 = 0;
LABEL_11:
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v36 = defaultManager;
  v34 = v12;
  if (v12)
  {
    v39 = 0;
    v16 = [defaultManager copyItemAtURL:v9 toURL:v12 error:&v39];
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

    defaultManager = v36;
  }

  if (v14)
  {
    v18 = v9;
    v19 = v8;
    v20 = identifier;
    v38 = v12;
    v21 = [defaultManager copyItemAtURL:v10 toURL:v14 error:&v38];
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

    identifier = v20;
    v8 = v19;
    v9 = v18;
  }

  else
  {
    v22 = v12;
  }

  if (v13 && [(PUReviewAsset *)self isLivePhoto]&& !support)
  {
    v24 = v9;
    v25 = v8;
    v26 = identifier;
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

    identifier = v26;
    v8 = v25;
    v9 = v24;
  }

  else
  {
    v28 = v22;
  }

  v30 = objc_alloc_init(PUReviewAdjustmentOutput);
  [(PUReviewAdjustmentOutput *)v30 _setAdjustmentInputBaseVersion:versionCopy];
  [(PUReviewAdjustmentOutput *)v30 _setRenderedImageFileURL:v35];
  [(PUReviewAdjustmentOutput *)v30 _setRenderedVideoFileURL:v13];
  [(PUReviewAdjustmentOutput *)v30 _setBaseImageURL:v34];
  [(PUReviewAdjustmentOutput *)v30 _setBaseVideoURL:v14];

  return v30;
}

- (id)inputForAdjustmentWithMediaProvider:(id)provider canHandleAdjustments:(id)adjustments
{
  providerCopy = provider;
  adjustmentsCopy = adjustments;
  isAdjusted = [(PUReviewAsset *)self isAdjusted];
  assetAdjustments = [(PUReviewAsset *)self assetAdjustments];
  v25 = adjustmentsCopy;
  if (isAdjusted)
  {
    if (adjustmentsCopy[2](adjustmentsCopy, assetAdjustments))
    {
      adjustmentBaseVersion = [assetAdjustments adjustmentBaseVersion];
      v11 = 1;
    }

    else
    {
      v11 = 0;
      adjustmentBaseVersion = 2;
    }
  }

  else
  {
    v11 = 0;
    adjustmentBaseVersion = 0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [mainScreen _referenceBounds];
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
  v18 = providerCopy;
  [providerCopy requestImageForAsset:self targetSize:0 contentMode:v17 options:v27 resultHandler:{v14, v16}];
  v19 = adjustmentBaseVersion != 2;
  v20 = objc_alloc_init(PUReviewAdjustmentInput);
  if (v11)
  {
    adjustmentData = [assetAdjustments adjustmentData];
  }

  else
  {
    adjustmentData = 0;
  }

  [(PUReviewAdjustmentInput *)v20 _setKnownAdjustmentData:adjustmentData];
  if (v11)
  {
  }

  [(PUReviewAdjustmentInput *)v20 _setBaseImageVersion:adjustmentBaseVersion];
  [(PUReviewAdjustmentInput *)v20 _setCurrentPreviewImage:v29[5]];
  v22 = [(PUReviewAsset *)self providedImageURLForImageVersion:adjustmentBaseVersion != 2];
  [(PUReviewAdjustmentInput *)v20 _setBaseImageFileURL:v22];

  v23 = [(PUReviewAsset *)self providedVideoURLForImageVersion:v19];
  [(PUReviewAdjustmentInput *)v20 _setBaseVideoFileURL:v23];

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (id)providedVideoURLForVideoVersion:(int64_t)version
{
  providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
  providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  v7 = providedFullsizeRenderVideoURL;
  v8 = providedVideoURL;
  if (version != 1)
  {
    if (version)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (providedFullsizeRenderVideoURL)
    {
      v8 = providedFullsizeRenderVideoURL;
    }

    else
    {
      v8 = providedVideoURL;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (id)providedVideoURLForImageVersion:(int64_t)version
{
  providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
  providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  v7 = providedFullsizeRenderVideoURL;
  v8 = providedVideoURL;
  if ((version - 1) >= 2)
  {
    if (version)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (providedFullsizeRenderVideoURL)
    {
      v8 = providedFullsizeRenderVideoURL;
    }

    else
    {
      v8 = providedVideoURL;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (int)exifOrientationForImageVersion:(int64_t)version
{
  providedFullsizeRenderImageURL = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  v6 = providedFullsizeRenderImageURL;
  if ((version - 1) >= 2 && (version || providedFullsizeRenderImageURL))
  {
    originalEXIFOrientation = 1;
  }

  else
  {
    originalEXIFOrientation = [(PUReviewAsset *)self originalEXIFOrientation];
  }

  return originalEXIFOrientation;
}

- (id)providedImageURLForImageVersion:(int64_t)version
{
  providedFullsizeImageURL = [(PUReviewAsset *)self providedFullsizeImageURL];
  providedFullsizeRenderImageURL = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  v7 = providedFullsizeRenderImageURL;
  v8 = providedFullsizeImageURL;
  if ((version - 1) >= 2)
  {
    if (version)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (providedFullsizeRenderImageURL)
    {
      v8 = providedFullsizeRenderImageURL;
    }

    else
    {
      v8 = providedFullsizeImageURL;
    }
  }

  v9 = v8;
LABEL_8:
  v10 = v9;

  return v9;
}

- (void)_removeFileAtURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v6 = [defaultManager fileExistsAtPath:path];

    if (v6)
    {
      v7 = +[PUReviewFileManager defaultManager];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __34__PUReviewAsset__removeFileAtURL___block_invoke;
      v8[3] = &unk_1E7B80280;
      v9 = lCopy;
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
  providedFullsizeImageURL = [(PUReviewAsset *)self providedFullsizeImageURL];
  [(PUReviewAsset *)self _removeFileAtURL:providedFullsizeImageURL];

  providedFullsizeRenderImageURL = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
  [(PUReviewAsset *)self _removeFileAtURL:providedFullsizeRenderImageURL];

  providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
  [(PUReviewAsset *)self _removeFileAtURL:providedVideoURL];

  providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
  [(PUReviewAsset *)self _removeFileAtURL:providedFullsizeRenderVideoURL];
}

- (BOOL)_linkFileAtURL:(id)l toURL:(id)rL
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isEqual:rLCopy])
  {
    v7 = 1;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [rLCopy path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      v11 = +[PUReviewFileManager defaultManager];
      v19 = 0;
      v12 = [v11 removeItemAtURL:rLCopy error:&v19];
      v13 = v19;

      if ((v12 & 1) == 0)
      {
        v14 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v21 = rLCopy;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Failed to remove existing file at %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v18 = 0;
    v7 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:&v18];
    v15 = v18;
    if ((v7 & 1) == 0)
    {
      v16 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = lCopy;
        v22 = 2114;
        v23 = rLCopy;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (id)_uniqueDestinationURLForFileURL:(id)l inDirectory:(id)directory
{
  directoryCopy = directory;
  pathExtension = [l pathExtension];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  v8 = [uUIDString stringByAppendingPathExtension:pathExtension];

  v9 = [directoryCopy stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];

  return v10;
}

- (id)_ensureLinkDestinationDirectoryFromBaseDirectory:(id)directory
{
  v17 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  identifier = [(PUReviewAsset *)self identifier];
  v6 = [directoryCopy stringByAppendingPathComponent:@"ReviewLinkedFiles"];

  v7 = [v6 stringByAppendingPathComponent:identifier];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v12];
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
  pathForOriginalVideoFile = [(PUReviewAsset *)self pathForOriginalVideoFile];
  v3 = pathForOriginalVideoFile;
  if (pathForOriginalVideoFile)
  {
    stringByDeletingPathExtension = [pathForOriginalVideoFile stringByDeletingPathExtension];
    v5 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"TRIM.MOV"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)pathForOriginalVideoFile
{
  providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
  path = [providedVideoURL path];

  return path;
}

- (NSString)pathForOriginalImageFile
{
  providedFullsizeImageURL = [(PUReviewAsset *)self providedFullsizeImageURL];
  path = [providedFullsizeImageURL path];

  return path;
}

- (int)originalEXIFOrientation
{
  providedImageMetadata = [(PUReviewAsset *)self providedImageMetadata];
  v3 = [providedImageMetadata objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (unint64_t)requestContentEditingInputWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  if (handler)
  {
    handlerCopy = handler;
    assetAdjustments = [(PUReviewAsset *)self assetAdjustments];
    phAdjustmentData = [assetAdjustments phAdjustmentData];

    v10 = objc_alloc(MEMORY[0x1E6978790]);
    providedFullsizeImageURL = [(PUReviewAsset *)self providedFullsizeImageURL];
    if (providedFullsizeImageURL)
    {
      v12 = [v10 initWithAppropriateURL:providedFullsizeImageURL];
    }

    else
    {
      providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
      v12 = [v10 initWithAppropriateURL:providedVideoURL];
    }

    [v12 setMediaType:{-[PUReviewAsset mediaType](self, "mediaType")}];
    [v12 setMediaSubtypes:{-[PUReviewAsset mediaSubtypes](self, "mediaSubtypes")}];
    [v12 setPlaybackStyle:{-[PUReviewAsset playbackStyle](self, "playbackStyle")}];
    creationDate = [(PUReviewAsset *)self creationDate];
    [v12 setCreationDate:creationDate];

    location = [(PUReviewAsset *)self location];
    [v12 setLocation:location];

    if (!-[PUReviewAsset isAdjusted](self, "isAdjusted") || ([optionsCopy canHandleAdjustmentData], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(optionsCopy, "canHandleAdjustmentData"), v18 = objc_claimAutoreleasedReturnValue(), v19 = (v18)[2](v18, phAdjustmentData), v18, v17, v19))
    {
      [v12 setBaseVersion:0];
      [v12 setAdjustmentData:phAdjustmentData];
      providedFullsizeImageURL2 = [(PUReviewAsset *)self providedFullsizeImageURL];
      [v12 setFullSizeImageURL:providedFullsizeImageURL2];

      providedVideoURL2 = [(PUReviewAsset *)self providedVideoURL];
      [v12 setVideoURL:providedVideoURL2];

      originalEXIFOrientation = [(PUReviewAsset *)self originalEXIFOrientation];
    }

    else
    {
      [v12 setBaseVersion:2];
      [v12 setAdjustmentData:phAdjustmentData];
      providedFullsizeRenderImageURL = [(PUReviewAsset *)self providedFullsizeRenderImageURL];
      [v12 setFullSizeImageURL:providedFullsizeRenderImageURL];

      providedFullsizeRenderVideoURL = [(PUReviewAsset *)self providedFullsizeRenderVideoURL];
      [v12 setVideoURL:providedFullsizeRenderVideoURL];

      originalEXIFOrientation = 1;
    }

    [v12 setFullSizeImageOrientation:originalEXIFOrientation];
    handlerCopy[2](handlerCopy, v12, 0);
  }

  return 0;
}

- (PFVideoAVObjectBuilder)videoObjectBuilder
{
  v3 = MEMORY[0x1E6988168];
  providedVideoURL = [(PUReviewAsset *)self providedVideoURL];
  v5 = [v3 assetWithURL:providedVideoURL];

  if ([(PUReviewAsset *)self isHighFramerateVideo])
  {
    assetAdjustments = 0;
  }

  else
  {
    assetAdjustments = [(PUReviewAsset *)self assetAdjustments];
  }

  v7 = [MEMORY[0x1E69C0910] videoAdjustmentsFromAssetAdjustmentsIfRecognized:assetAdjustments];
  v8 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v5 videoAdjustments:v7];

  return v8;
}

- (unint64_t)livePhotoVisibilityState
{
  if (![(PUReviewAsset *)self isLivePhoto])
  {
    return 0;
  }

  isAdjusted = [(PUReviewAsset *)self isAdjusted];
  canPlayPhotoIris = [(PUReviewAsset *)self canPlayPhotoIris];
  v5 = 4;
  if (canPlayPhotoIris)
  {
    v5 = 0;
  }

  v6 = 2;
  if (!isAdjusted)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!canPlayPhotoIris || !isAdjusted)
  {
    v7 = 0;
  }

  return v6 | v5 | !canPlayPhotoIris | v7;
}

- (BOOL)isAdjusted
{
  assetAdjustments = [(PUReviewAsset *)self assetAdjustments];
  v3 = assetAdjustments != 0;

  return v3;
}

- (BOOL)isAnimatedImage
{
  uniformTypeIdentifier = [(PUReviewAsset *)self uniformTypeIdentifier];
  if (uniformTypeIdentifier)
  {
    v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:uniformTypeIdentifier];
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
  providedFullsizeImageURL = [(PUReviewAsset *)self providedFullsizeImageURL];
  pathExtension = [providedFullsizeImageURL pathExtension];
  v5 = [v2 typeWithFilenameExtension:pathExtension];
  identifier = [v5 identifier];

  return identifier;
}

- (double)aspectRatio
{
  if (![(PUReviewAsset *)self pixelHeight])
  {
    return 1.0;
  }

  pixelWidth = [(PUReviewAsset *)self pixelWidth];
  return pixelWidth / [(PUReviewAsset *)self pixelHeight];
}

- (PUReviewAsset)initWithAVAsset:(id)asset audioMix:(id)mix width:(unint64_t)width height:(unint64_t)height captureDate:(id)date duration:(double)duration previewImage:(id)image videoURL:(id)self0 unadjustedVideoURL:(id)self1 adjustments:(id)self2 identifier:(id)self3
{
  dateCopy = date;
  imageCopy = image;
  lCopy = l;
  rLCopy = rL;
  adjustmentsCopy = adjustments;
  identifierCopy = identifier;
  v39.receiver = self;
  v39.super_class = PUReviewAsset;
  v21 = [(PUReviewAsset *)&v39 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    v23 = *(v21 + 5);
    *(v21 + 5) = v22;

    *(v21 + 6) = 2;
    *(v21 + 7) = 0;
    *(v21 + 8) = 4;
    *(v21 + 9) = width;
    *(v21 + 10) = height;
    *(v21 + 15) = duration;
    objc_storeStrong(v21 + 12, date);
    objc_storeStrong(v21 + 14, date);
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
    objc_storeStrong(v21 + 18, image);
    v28 = (v21 + 176);
    v29 = rLCopy;
    if (rLCopy)
    {
      objc_storeStrong(v28, rL);
      v28 = (v21 + 184);
    }

    objc_storeStrong(v28, l);
    objc_storeStrong(v21 + 24, adjustments);
    v21[8] = [objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v21 + 24)];
    if (adjustmentsCopy)
    {
      v30 = MEMORY[0x1E69C0910];
      adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
      adjustmentFormatVersion = [adjustmentsCopy adjustmentFormatVersion];
      LODWORD(v30) = [v30 isRecognizedSlowMotionFormatWithIdentifier:adjustmentFormatIdentifier version:adjustmentFormatVersion];

      if (v30)
      {
        *(v21 + 7) = 0x20000;
      }
    }

    v33 = v21;
    rLCopy = v29;
  }

  return v21;
}

- (PUReviewAsset)initWithLivePhoto:(id)photo fullsizeUnadjustedImageURL:(id)l fullsizeUnadjustedVideoURL:(id)rL assetAdjustments:(id)adjustments width:(unint64_t)width height:(unint64_t)height captureDate:(id)date metadata:(id)self0 duration:(double)self1 previewImage:(id)self2 identifier:(id)self3
{
  photoCopy = photo;
  obj = l;
  lCopy = l;
  rLCopy = rL;
  adjustmentsCopy = adjustments;
  adjustmentsCopy2 = adjustments;
  dateCopy = date;
  metadataCopy = metadata;
  imageCopy = image;
  identifierCopy = identifier;
  v46.receiver = self;
  v46.super_class = PUReviewAsset;
  v24 = rLCopy;
  v25 = [(PUReviewAsset *)&v46 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    v27 = *(v25 + 5);
    *(v25 + 5) = v26;

    *(v25 + 3) = xmmword_1B3CFCEC0;
    *(v25 + 7) = 0;
    *(v25 + 8) = 3;
    *(v25 + 9) = width;
    *(v25 + 10) = height;
    objc_storeStrong(v25 + 12, date);
    objc_storeStrong(v25 + 14, date);
    v25[10] = photoCopy != 0;
    v25[12] = photoCopy != 0;
    v25[11] = photoCopy == 0;
    if (photoCopy)
    {
      [photoCopy photoTime];
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
    }

    *(v25 + 200) = v45;
    CMTimeMakeWithSeconds(&v45, duration, 600);
    *(v25 + 224) = v45;
    v25[13] = 0;
    v28 = *(v25 + 16);
    *(v25 + 16) = 0;

    *(v25 + 17) = 0;
    objc_storeStrong(v25 + 18, image);
    imageURL = [photoCopy imageURL];
    if (lCopy && v24)
    {
      v30 = *(v25 + 21);
      *(v25 + 21) = imageURL;

      videoURL = [photoCopy videoURL];
      v32 = *(v25 + 23);
      *(v25 + 23) = videoURL;

      objc_storeStrong(v25 + 20, obj);
      videoURL2 = v24;
    }

    else
    {
      v34 = *(v25 + 20);
      *(v25 + 20) = imageURL;

      videoURL2 = [photoCopy videoURL];
    }

    v35 = *(v25 + 22);
    *(v25 + 22) = videoURL2;

    objc_storeStrong(v25 + 19, metadata);
    objc_storeStrong(v25 + 24, adjustmentsCopy);
    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v25 + 24)])
    {
      v36 = 1;
    }

    else
    {
      v36 = [objc_opt_class() _shouldShowConfidentialityWarningForMetadata:metadataCopy creationDate:dateCopy];
    }

    v25[8] = v36;
    v37 = v25;
  }

  return v25;
}

- (PUReviewAsset)initWithPhoto:(id)photo mediaSubtypes:(unint64_t)subtypes width:(unint64_t)width height:(unint64_t)height captureDate:(id)date metadata:(id)metadata burstIdentifier:(id)identifier representedCount:(unint64_t)self0 fullsizeImageURL:(id)self1 fullsizeUnadjustedImageURL:(id)self2 assetAdjustments:(id)self3 identifier:(id)self4
{
  photoCopy = photo;
  dateCopy = date;
  metadataCopy = metadata;
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  adjustmentsCopy = adjustments;
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
    *(v22 + 7) = subtypes;
    *(v22 + 7) = 0;
    *(v22 + 8) = 1;
    *(v22 + 9) = width;
    *(v22 + 10) = height;
    objc_storeStrong(v22 + 12, date);
    objc_storeStrong(v22 + 13, date);
    objc_storeStrong(v22 + 14, date);
    *(v22 + 5) = 0;
    v25 = MEMORY[0x1E6960C70];
    v26 = *MEMORY[0x1E6960C70];
    *(v22 + 200) = *MEMORY[0x1E6960C70];
    v27 = *(v25 + 16);
    *(v22 + 27) = v27;
    *(v22 + 14) = v26;
    *(v22 + 30) = v27;
    v22[13] = identifierCopy != 0;
    v28 = [identifierCopy copy];
    v29 = *(v22 + 16);
    *(v22 + 16) = v28;

    *(v22 + 17) = count;
    objc_storeStrong(v22 + 18, photo);
    objc_storeStrong(v22 + 19, metadata);
    v30 = lCopy;
    if (rLCopy)
    {
      v31 = *(v22 + 21);
      *(v22 + 21) = v30;

      v30 = rLCopy;
    }

    v32 = *(v22 + 20);
    *(v22 + 20) = v30;

    objc_storeStrong(v22 + 24, adjustments);
    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v22 + 24)])
    {
      v33 = 1;
    }

    else
    {
      v33 = [objc_opt_class() _shouldShowConfidentialityWarningForMetadata:metadataCopy creationDate:dateCopy];
    }

    v22[8] = v33;
    v34 = v22;
  }

  return v22;
}

- (PUReviewAsset)initWithReviewAsset:(id)asset baseImageURL:(id)l renderedImageURL:(id)rL baseVideoURL:(id)uRL renderedVideoURL:(id)videoURL previewImage:(id)image pixelWidth:(unint64_t)width pixelHeight:(unint64_t)self0 assetAdjustments:(id)self1 duration:(double)self2
{
  assetCopy = asset;
  lCopy = l;
  rLCopy = rL;
  obj = uRL;
  uRLCopy = uRL;
  videoURLCopy = videoURL;
  imageCopy = image;
  adjustmentsCopy = adjustments;
  v22 = [(PUReviewAsset *)self initWithReviewAsset:assetCopy];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_12;
  }

  v22->_pixelWidth = width;
  v22->_pixelHeight = height;
  v22->_duration = duration;
  if (adjustmentsCopy)
  {
    v47 = [adjustmentsCopy adjustmentBaseVersion] != 0;
    lCopy2 = l;
    v24 = imageCopy;
    v25 = objc_alloc(MEMORY[0x1E69C0660]);
    [adjustmentsCopy adjustmentFormatIdentifier];
    v26 = v49 = videoURL;
    [adjustmentsCopy adjustmentFormatVersion];
    v27 = v50 = assetCopy;
    adjustmentData = [adjustmentsCopy adjustmentData];
    editorBundleID = [adjustmentsCopy editorBundleID];
    v30 = v25;
    imageCopy = v24;
    l = lCopy2;
    v31 = [v30 initWithFormatIdentifier:v26 formatVersion:v27 data:adjustmentData baseVersion:0 editorBundleID:editorBundleID renderTypes:0];

    v32 = v47;
    assetCopy = v50;

    videoURL = v49;
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  objc_storeStrong(&v23->_assetAdjustments, v31);
  v33 = [objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:v23->_assetAdjustments];
  v23->_requiresConfidentiality = (v33 | [assetCopy requiresConfidentiality]) & 1;
  if (imageCopy)
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

  imageCopy = providedPreviewImage;
  if (v32)
  {
LABEL_7:
    providedImageMetadata = [(PUReviewAsset *)v23 providedImageMetadata];
    v35 = v31;
    v36 = imageCopy;
    videoURLCopy2 = videoURL;
    v38 = [providedImageMetadata mutableCopy];

    [v38 setObject:&unk_1F2B7EA38 forKeyedSubscript:*MEMORY[0x1E696DE78]];
    v39 = [v38 copy];
    providedImageMetadata = v23->_providedImageMetadata;
    v23->_providedImageMetadata = v39;

    videoURL = videoURLCopy2;
    imageCopy = v36;
    v31 = v35;
  }

LABEL_8:
  objc_storeStrong(&v23->_providedFullsizeImageURL, l);
  objc_storeStrong(&v23->_providedFullsizeRenderImageURL, rL);
  objc_storeStrong(&v23->_providedVideoURL, obj);
  objc_storeStrong(&v23->_providedFullsizeRenderVideoURL, videoURL);
  objc_storeStrong(&v23->_providedPreviewImage, imageCopy);
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

- (PUReviewAsset)initWithReviewAsset:(id)asset primaryResourceURL:(id)l
{
  assetCopy = asset;
  lCopy = l;
  v8 = [(PUReviewAsset *)self initWithReviewAsset:assetCopy];
  if (v8)
  {
    mediaType = [assetCopy mediaType];
    if (mediaType == 1)
    {
      v10 = 160;
    }

    else
    {
      if (mediaType != 2)
      {
LABEL_7:
        v13 = v8;
        goto LABEL_8;
      }

      v10 = 176;
    }

    v11 = [lCopy copy];
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = v11;

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (PUReviewAsset)initWithReviewAsset:(id)asset linkFileURLsToUniquePathsInDirectory:(id)directory canPlayPhotoIris:(BOOL)iris
{
  irisCopy = iris;
  assetCopy = asset;
  directoryCopy = directory;
  v10 = [(PUReviewAsset *)self initWithConformingAsset:assetCopy];
  v11 = v10;
  if (v10)
  {
    v10->_canPlayPhotoIris = irisCopy;
    if (irisCopy)
    {
      v10->_playbackStyle = 3;
    }

    v12 = [(PUReviewAsset *)v10 _ensureLinkDestinationDirectoryFromBaseDirectory:directoryCopy];
    providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
    if (providedFullsizeImageURL)
    {
      v14 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:providedFullsizeImageURL inDirectory:v12];
      providedFullsizeImageURL = v11->_providedFullsizeImageURL;
      v11->_providedFullsizeImageURL = v14;

      v16 = [(PUReviewAsset *)v11 _linkFileAtURL:providedFullsizeImageURL toURL:v11->_providedFullsizeImageURL];
    }

    else
    {
      v16 = 1;
    }

    providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
    if (providedFullsizeRenderImageURL)
    {
      v19 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:providedFullsizeRenderImageURL inDirectory:v12];
      providedFullsizeRenderImageURL = v11->_providedFullsizeRenderImageURL;
      v11->_providedFullsizeRenderImageURL = v19;

      if (v16)
      {
        v16 = [(PUReviewAsset *)v11 _linkFileAtURL:providedFullsizeRenderImageURL toURL:v11->_providedFullsizeRenderImageURL];
      }
    }

    providedVideoURL = [assetCopy providedVideoURL];
    if (providedVideoURL)
    {
      v22 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:providedVideoURL inDirectory:v12];
      providedVideoURL = v11->_providedVideoURL;
      v11->_providedVideoURL = v22;

      if (v16)
      {
        v16 = [(PUReviewAsset *)v11 _linkFileAtURL:providedVideoURL toURL:v11->_providedVideoURL];
      }
    }

    providedFullsizeRenderVideoURL = [assetCopy providedFullsizeRenderVideoURL];
    if (providedFullsizeRenderVideoURL)
    {
      v25 = [(PUReviewAsset *)v11 _uniqueDestinationURLForFileURL:providedFullsizeRenderVideoURL inDirectory:v12];
      providedFullsizeRenderVideoURL = v11->_providedFullsizeRenderVideoURL;
      v11->_providedFullsizeRenderVideoURL = v25;

      if (v16)
      {
        v27 = [(PUReviewAsset *)v11 _linkFileAtURL:providedFullsizeRenderVideoURL toURL:v11->_providedFullsizeRenderVideoURL];
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

- (PUReviewAsset)initWithReviewAsset:(id)asset linkFileURLsToUniquePathsInDirectory:(id)directory
{
  directoryCopy = directory;
  assetCopy = asset;
  v8 = -[PUReviewAsset initWithReviewAsset:linkFileURLsToUniquePathsInDirectory:canPlayPhotoIris:](self, "initWithReviewAsset:linkFileURLsToUniquePathsInDirectory:canPlayPhotoIris:", assetCopy, directoryCopy, [assetCopy canPlayPhotoIris]);

  return v8;
}

- (PUReviewAsset)initWithConformingAsset:(id)asset
{
  assetCopy = asset;
  v38.receiver = self;
  v38.super_class = PUReviewAsset;
  v5 = [(PUReviewAsset *)&v38 init];
  if (v5)
  {
    identifier = [assetCopy identifier];
    v7 = *(v5 + 5);
    *(v5 + 5) = identifier;

    *(v5 + 6) = [assetCopy mediaType];
    *(v5 + 7) = [assetCopy mediaSubtypes];
    *(v5 + 8) = [assetCopy playbackStyle];
    *(v5 + 7) = [assetCopy playbackVariation];
    *(v5 + 9) = [assetCopy pixelWidth];
    *(v5 + 10) = [assetCopy pixelHeight];
    location = [assetCopy location];
    v9 = *(v5 + 11);
    *(v5 + 11) = location;

    creationDate = [assetCopy creationDate];
    v11 = *(v5 + 12);
    *(v5 + 12) = creationDate;

    modificationDate = [assetCopy modificationDate];
    v13 = *(v5 + 14);
    *(v5 + 14) = modificationDate;

    v5[9] = [assetCopy isHDR];
    [assetCopy duration];
    *(v5 + 15) = v14;
    v5[10] = [assetCopy isLivePhoto];
    v5[12] = [assetCopy canPlayPhotoIris];
    v5[11] = [assetCopy isLivePhotoPlaceholder];
    if (assetCopy)
    {
      [assetCopy livePhotoSynchronizedDisplayTime];
      *(v5 + 200) = v36;
      *(v5 + 27) = v37;
      [assetCopy livePhotoDuration];
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
    v5[13] = [assetCopy representsBurst];
    burstIdentifier = [assetCopy burstIdentifier];
    v16 = *(v5 + 16);
    *(v5 + 16) = burstIdentifier;

    *(v5 + 17) = [assetCopy numberOfRepresentedAssets];
    providedPreviewImage = [assetCopy providedPreviewImage];
    v18 = *(v5 + 18);
    *(v5 + 18) = providedPreviewImage;

    providedImageMetadata = [assetCopy providedImageMetadata];
    v20 = *(v5 + 19);
    *(v5 + 19) = providedImageMetadata;

    assetAdjustments = [assetCopy assetAdjustments];
    v22 = *(v5 + 24);
    *(v5 + 24) = assetAdjustments;

    if ([objc_opt_class() _shouldShowConfidentialityWarningForAdjustments:*(v5 + 24)])
    {
      v5[8] = 1;
    }

    else
    {
      v23 = objc_opt_class();
      providedImageMetadata2 = [v5 providedImageMetadata];
      creationDate2 = [v5 creationDate];
      v5[8] = [v23 _shouldShowConfidentialityWarningForMetadata:providedImageMetadata2 creationDate:creationDate2];
    }

    providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
    v27 = *(v5 + 20);
    *(v5 + 20) = providedFullsizeImageURL;

    providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
    v29 = *(v5 + 21);
    *(v5 + 21) = providedFullsizeRenderImageURL;

    providedVideoURL = [assetCopy providedVideoURL];
    v31 = *(v5 + 22);
    *(v5 + 22) = providedVideoURL;

    providedFullsizeRenderVideoURL = [assetCopy providedFullsizeRenderVideoURL];
    v33 = *(v5 + 23);
    *(v5 + 23) = providedFullsizeRenderVideoURL;

    v34 = v5;
  }

  return v5;
}

- (PUReviewAsset)initWithReviewAsset:(id)asset
{
  assetCopy = asset;
  v35.receiver = self;
  v35.super_class = PUReviewAsset;
  v5 = [(PUReviewAsset *)&v35 init];
  if (v5)
  {
    identifier = [assetCopy identifier];
    v7 = *(v5 + 5);
    *(v5 + 5) = identifier;

    *(v5 + 6) = [assetCopy mediaType];
    *(v5 + 7) = [assetCopy mediaSubtypes];
    *(v5 + 8) = [assetCopy playbackStyle];
    *(v5 + 7) = [assetCopy playbackVariation];
    *(v5 + 9) = [assetCopy pixelWidth];
    *(v5 + 10) = [assetCopy pixelHeight];
    location = [assetCopy location];
    v9 = *(v5 + 11);
    *(v5 + 11) = location;

    creationDate = [assetCopy creationDate];
    v11 = *(v5 + 12);
    *(v5 + 12) = creationDate;

    modificationDate = [assetCopy modificationDate];
    v13 = *(v5 + 14);
    *(v5 + 14) = modificationDate;

    v5[9] = [assetCopy isHDR];
    [assetCopy duration];
    *(v5 + 15) = v14;
    v5[10] = [assetCopy isLivePhoto];
    v5[12] = [assetCopy canPlayPhotoIris];
    v5[11] = [assetCopy isLivePhotoPlaceholder];
    if (assetCopy)
    {
      [assetCopy livePhotoSynchronizedDisplayTime];
      *(v5 + 200) = v33;
      *(v5 + 27) = v34;
      [assetCopy livePhotoDuration];
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
    v5[13] = [assetCopy representsBurst];
    burstIdentifier = [assetCopy burstIdentifier];
    v16 = *(v5 + 16);
    *(v5 + 16) = burstIdentifier;

    *(v5 + 17) = [assetCopy numberOfRepresentedAssets];
    providedPreviewImage = [assetCopy providedPreviewImage];
    v18 = *(v5 + 18);
    *(v5 + 18) = providedPreviewImage;

    providedImageMetadata = [assetCopy providedImageMetadata];
    v20 = *(v5 + 19);
    *(v5 + 19) = providedImageMetadata;

    assetAdjustments = [assetCopy assetAdjustments];
    v22 = *(v5 + 24);
    *(v5 + 24) = assetAdjustments;

    providedFullsizeImageURL = [assetCopy providedFullsizeImageURL];
    v24 = *(v5 + 20);
    *(v5 + 20) = providedFullsizeImageURL;

    providedFullsizeRenderImageURL = [assetCopy providedFullsizeRenderImageURL];
    v26 = *(v5 + 21);
    *(v5 + 21) = providedFullsizeRenderImageURL;

    providedVideoURL = [assetCopy providedVideoURL];
    v28 = *(v5 + 22);
    *(v5 + 22) = providedVideoURL;

    providedFullsizeRenderVideoURL = [assetCopy providedFullsizeRenderVideoURL];
    v30 = *(v5 + 23);
    *(v5 + 23) = providedFullsizeRenderVideoURL;

    v5[8] = [assetCopy requiresConfidentiality];
    v31 = v5;
  }

  return v5;
}

+ (id)fileURLForFullsizeVideoInDirectory:(id)directory extension:(id)extension
{
  directoryCopy = directory;
  v6 = [@"Video" stringByAppendingPathExtension:extension];
  v7 = [directoryCopy URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)fileURLForFullsizeRenderImageInDirectory:(id)directory extension:(id)extension
{
  directoryCopy = directory;
  v6 = [@"RenderedImage" stringByAppendingPathExtension:extension];
  v7 = [directoryCopy URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)fileURLForFullsizeImageInDirectory:(id)directory extension:(id)extension
{
  directoryCopy = directory;
  v6 = [@"Image" stringByAppendingPathExtension:extension];
  v7 = [directoryCopy URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)createUniqueMediaDirectoryForAssetWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"ReviewData"];

  v6 = [v5 stringByAppendingPathComponent:identifierCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v9 = [v6 stringByAppendingPathComponent:uUIDString];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v15];
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

+ (BOOL)_shouldShowConfidentialityWarningForMetadata:(id)metadata creationDate:(id)date
{
  metadataCopy = metadata;
  if ([self _shouldCheckConfidentiality])
  {
    [metadataCopy count];
  }

  return 0;
}

+ (BOOL)_shouldShowConfidentialityWarningForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  if ([self _shouldCheckConfidentiality])
  {
    v5 = [self _confidentialityWarningsVersionForAdjustments:adjustmentsCopy];
    if (v5)
    {
      mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
      LOBYTE(v5) = v5 >= [mEMORY[0x1E69C3A18] confidentialityWarningsVersion];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end