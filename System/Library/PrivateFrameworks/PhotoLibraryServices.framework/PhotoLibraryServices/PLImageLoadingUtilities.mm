@interface PLImageLoadingUtilities
+ (BOOL)canAccessImageForAsset:(id)asset;
+ (id)newSynchronousImageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder outImageProperties:(const __CFDictionary *)properties outDeliveredPlaceholder:(BOOL *)deliveredPlaceholder;
+ (id)synchronousImageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed networkAccessForced:(BOOL)forced trackCPLDownload:(BOOL)download outImageProperties:(const __CFDictionary *)self0 outImageDataInfo:(id *)self1 outCPLDownloadContext:(id *)self2;
+ (void)_assetsdImageForAsset:(id)asset withFormat:(id)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed trackCPLDownload:(BOOL)download sync:(BOOL)sync isCanceledHandler:(id)self0 completion:(id)self1;
+ (void)_imageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed networkAccessForced:(BOOL)forced trackCPLDownload:(BOOL)download isCanceledHandler:(id)self0 completion:(id)self1 sync:(BOOL)self2;
@end

@implementation PLImageLoadingUtilities

+ (id)newSynchronousImageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder outImageProperties:(const __CFDictionary *)properties outDeliveredPlaceholder:(BOOL *)deliveredPlaceholder
{
  v12 = 0;
  v8 = [self synchronousImageForAsset:asset withFormat:format allowPlaceholder:placeholder optimalSourcePixelSize:0 networkAccessAllowed:0 networkAccessForced:0 trackCPLDownload:0.0 outImageProperties:0.0 outImageDataInfo:properties outCPLDownloadContext:&v12, 0];
  v9 = v12;
  v10 = v9;
  if (deliveredPlaceholder)
  {
    *deliveredPlaceholder = [v9 deliveredPlaceholder];
  }

  return v8;
}

+ (id)synchronousImageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed networkAccessForced:(BOOL)forced trackCPLDownload:(BOOL)download outImageProperties:(const __CFDictionary *)self0 outImageDataInfo:(id *)self1 outCPLDownloadContext:(id *)self2
{
  downloadCopy = download;
  forcedCopy = forced;
  allowedCopy = allowed;
  height = size.height;
  width = size.width;
  placeholderCopy = placeholder;
  formatCopy = format;
  assetCopy = asset;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24891;
  v45 = __Block_byref_object_dispose__24892;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__24891;
  v35 = __Block_byref_object_dispose__24892;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__24891;
  v29 = __Block_byref_object_dispose__24892;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __219__PLImageLoadingUtilities_synchronousImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_networkAccessForced_trackCPLDownload_outImageProperties_outImageDataInfo_outCPLDownloadContext___block_invoke;
  v24[3] = &unk_1E7569E50;
  v24[4] = &v41;
  v24[5] = &v37;
  v24[6] = &v31;
  v24[7] = &v25;
  LOBYTE(v23) = 1;
  [self _imageForAsset:assetCopy withFormat:formatCopy allowPlaceholder:placeholderCopy optimalSourcePixelSize:allowedCopy networkAccessAllowed:forcedCopy networkAccessForced:downloadCopy trackCPLDownload:width isCanceledHandler:height completion:0 sync:v24, v23];
  if (properties)
  {
    *properties = v38[3];
  }

  if (info)
  {
    *info = v32[5];
  }

  if (context)
  {
    *context = v26[5];
  }

  v21 = v42[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v21;
}

void __219__PLImageLoadingUtilities_synchronousImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_networkAccessForced_trackCPLDownload_outImageProperties_outImageDataInfo_outCPLDownloadContext___block_invoke(void *a1, void *a2, const void *a3, void *a4, void *a5)
{
  v16 = a2;
  v10 = a4;
  v11 = a5;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  if (a3)
  {
    v12 = CFRetain(a3);
    v13 = CFAutorelease(v12);
  }

  else
  {
    v13 = 0;
  }

  *(*(a1[5] + 8) + 24) = v13;
  if (v10)
  {
    v14 = CFAutorelease(v10);
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v14);
  if (v11)
  {
    v15 = CFAutorelease(v11);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), v15);
}

+ (void)_imageForAsset:(id)asset withFormat:(unsigned __int16)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed networkAccessForced:(BOOL)forced trackCPLDownload:(BOOL)download isCanceledHandler:(id)self0 completion:(id)self1 sync:(BOOL)self2
{
  downloadCopy = download;
  forcedCopy = forced;
  allowedCopy = allowed;
  height = size.height;
  width = size.width;
  placeholderCopy = placeholder;
  formatCopy = format;
  assetCopy = asset;
  handlerCopy = handler;
  completionCopy = completion;
  if ([self canAccessImageForAsset:assetCopy])
  {
    v51 = handlerCopy;
    v52 = [MEMORY[0x1E69BF260] formatWithID:formatCopy];
    isThumbnail = [v52 isThumbnail];
    v24 = PLIsAssetsd();
    if ((v24 & 1) == 0 && (allowedCopy && forcedCopy || isThumbnail != 1))
    {
      handlerCopy = v51;
      [self _assetsdImageForAsset:assetCopy withFormat:v52 allowPlaceholder:placeholderCopy optimalSourcePixelSize:allowedCopy networkAccessAllowed:downloadCopy trackCPLDownload:sync sync:width isCanceledHandler:height completion:v51, completionCopy];
LABEL_49:

      goto LABEL_50;
    }

    cf = 0;
    v25 = objc_autoreleasePoolPush();
    if (formatCopy == 3039)
    {
      IsIPad = PLPhysicalDeviceIsIPad();
      isVideo = [assetCopy isVideo];
      v28 = isThumbnail ^ 1u;
      if (((isThumbnail ^ 1) & 1) == 0 && (isVideo & 1) == 0)
      {
        if (((IsIPad | v24 ^ 1) & 1) == 0 && [assetCopy isJPEG] && (objc_msgSend(assetCopy, "isVideo") & 1) == 0)
        {
          pathForOriginalFile = [assetCopy pathForOriginalFile];
LABEL_19:
          v33 = pathForOriginalFile;
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (isThumbnail)
      {
        goto LABEL_26;
      }

      if (formatCopy == 9997)
      {
        pathForOriginalFile = [assetCopy pathForPenultimateFullsizeRenderImageFile];
        goto LABEL_19;
      }

      v28 = 1;
    }

    v53 = 0;
    v54 = 0;
    v34 = [PLResourceChooser fileReservationForLargeDisplayableImageFileForAsset:assetCopy format:v52 allowMetadataSnapshot:0 forceLarge:v28 outFilePath:&v53 outImageType:&v54];
    v35 = v53;
    v33 = v35;
    if ((isThumbnail & 1) != 0 || v54 != 9 && v54 != 7)
    {
LABEL_27:
      if ([v33 length])
      {
        v36 = PLCreateImageFromFileWithFormat(v33, 0, 0, formatCopy, 0, &cf, 0);
        if (!((v36 == 0) | isThumbnail & 1))
        {
          pathForOriginalFile2 = [assetCopy pathForOriginalFile];
          handlerCopy = v51;
          if (([v33 isEqualToString:pathForOriginalFile2] & 1) == 0)
          {

            goto LABEL_36;
          }

          isPrimaryImageFormat = [assetCopy isPrimaryImageFormat];

          if (isPrimaryImageFormat)
          {
LABEL_36:
            if (cf)
            {
              CFRetain(cf);
            }

            objc_autoreleasePoolPop(v25);
            v45 = 0;
            if (placeholderCopy && !v36)
            {
              if ([assetCopy hasAllThumbs])
              {
                v36 = 0;
                v45 = 0;
              }

              else
              {
                v45 = objc_alloc_init(MEMORY[0x1E69BF258]);
                [v45 setDeliveredPlaceholder:1];
                v46 = +[PLPlaceholderThumbnailManager sharedManager];
                [assetCopy imageSize];
                v36 = [v46 newPlaceholderImageForFormat:formatCopy photoImageSize:?];
              }
            }

            if (v36)
            {
              v47 = cf;
            }

            else
            {
              v47 = 0;
            }

            completionCopy[2](completionCopy, v36, v47, v45, 0);
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_49;
          }

          [assetCopy orientation];
          v39 = PLImageOrientationFromExifOrientation();
          if (v39 != MEMORY[0x19EAED900](v36))
          {
            v40 = DCIM_CGImageRefFromPLImage();
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = MEMORY[0x19EAED870](v36);
              if (!v41)
              {
                goto LABEL_55;
              }
            }

            v48 = CFGetTypeID(v41);
            if (v48 == CGImageGetTypeID())
            {
              v49 = DCIM_newPLImageWithCGImage();
LABEL_56:
              v50 = v49;

              v36 = v50;
              goto LABEL_35;
            }

LABEL_55:
            v49 = DCIM_newPLImageWithIOSurface();
            goto LABEL_56;
          }
        }
      }

      else
      {
        pl_photoLibrary = [assetCopy pl_photoLibrary];
        thumbnailManager = [pl_photoLibrary thumbnailManager];
        v44 = [thumbnailManager newImageForAsset:assetCopy format:v52];

        v36 = DCIM_newPLImageWithCGImage();
        CGImageRelease(v44);
      }

LABEL_35:
      handlerCopy = v51;
      goto LABEL_36;
    }

LABEL_26:
    v33 = 0;
    goto LABEL_27;
  }

  if (placeholderCopy)
  {
    v30 = objc_alloc_init(MEMORY[0x1E69BF258]);
    [v30 setDeliveredPlaceholder:1];
    v31 = +[PLPlaceholderThumbnailManager sharedManager];
    [assetCopy imageSize];
    v32 = [v31 newPlaceholderImageForFormat:formatCopy photoImageSize:?];
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  completionCopy[2](completionCopy, v32, 0, v30, 0);

LABEL_50:
}

+ (void)_assetsdImageForAsset:(id)asset withFormat:(id)format allowPlaceholder:(BOOL)placeholder optimalSourcePixelSize:(CGSize)size networkAccessAllowed:(BOOL)allowed trackCPLDownload:(BOOL)download sync:(BOOL)sync isCanceledHandler:(id)self0 completion:(id)self1
{
  syncCopy = sync;
  allowedCopy = allowed;
  downloadCopy = download;
  height = size.height;
  width = size.width;
  placeholderCopy = placeholder;
  assetCopy = asset;
  formatCopy = format;
  handlerCopy = handler;
  completionCopy = completion;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3010000000;
  v79 = 0;
  v80 = 0;
  v78 = &unk_19C721442;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__24891;
  v73 = __Block_byref_object_dispose__24892;
  v74 = 0;
  pl_photoLibrary = [assetCopy pl_photoLibrary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke;
    v65[3] = &unk_1E7578870;
    v67 = &v69;
    v66 = assetCopy;
    v68 = &v75;
    [pl_photoLibrary performBlockAndWait:v65 completionHandler:0];
  }

  else
  {
    objectID = [assetCopy objectID];
    v22 = v70[5];
    v70[5] = objectID;

    [assetCopy imageSize];
    v23 = v76;
    v76[4] = v24;
    v23[5] = v25;
  }

  formatID = [formatCopy formatID];
  v42 = v70[5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_2;
  aBlock[3] = &unk_1E7569E28;
  v27 = handlerCopy;
  v58 = v27;
  v28 = completionCopy;
  v59 = v28;
  v29 = pl_photoLibrary;
  v55 = v29;
  v30 = assetCopy;
  v56 = v30;
  v63 = formatID;
  v61 = width;
  v62 = height;
  v64 = placeholderCopy;
  v31 = formatCopy;
  v57 = v31;
  v60 = &v75;
  v32 = _Block_copy(aBlock);
  if (syncCopy)
  {
    v33 = +[PLAssetsSaver sharedAssetsSaver];
    v52 = 0;
    v53 = 0;
    v34 = [v33 requestSynchronousImageForAssetOID:v42 withFormat:formatID allowPlaceholder:placeholderCopy wantURLOnly:0 networkAccessAllowed:allowedCopy trackCPLDownload:downloadCopy outImageDataInfo:&v53 outCPLDownloadContext:&v52];
    v35 = v53;
    v36 = v52;

    v32[2](v32, v34, v35, v36);
  }

  else
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__24891;
    v50 = __Block_byref_object_dispose__24892;
    v51 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pl_photoLibrary2 = [v30 pl_photoLibrary];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_31;
      v43[3] = &unk_1E7578910;
      v45 = &v46;
      v44 = v30;
      [pl_photoLibrary2 performBlockAndWait:v43 completionHandler:0];
    }

    else
    {
      objectID2 = [v30 objectID];
      pl_photoLibrary2 = v47[5];
      v47[5] = objectID2;
    }

    v39 = +[PLAssetsSaver sharedAssetsSaver];
    [v39 requestAsynchronousImageForAssetOID:v47[5] withFormat:formatID allowPlaceholder:placeholderCopy wantURLOnly:0 networkAccessAllowed:allowedCopy trackCPLDownload:downloadCopy completionBlock:v32];

    _Block_object_dispose(&v46, 8);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);
}

uint64_t __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) imageSize];
  v6 = *(*(a1 + 48) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  return result;
}

void __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 56);
  if (!v10 || !(*(v10 + 16))())
  {
    v11 = [v8 UTI];
    if (!v11)
    {
      v12 = [v8 URL];

      if (v12)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_3;
        v26[3] = &unk_1E7571418;
        v13 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(a1 + 96);
        [v13 performBlock:v26];
      }
    }

    if (v7)
    {
      if (*(a1 + 80) == 0.0 && *(a1 + 88) == 0.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v15 = DCIM_NSValueFromCGSize();
        [v14 setObject:v15 forKey:@"kPLOptimalSourcePixelSizeKey"];
      }

      v16 = PLCreateImageFromDataWithFormat(v7, 0, *(a1 + 96), v11, 1, 0, v14);
      if (v9 | v16)
      {
        v17 = v16;

        if (v17)
        {
LABEL_22:
          (*(*(a1 + 64) + 16))();

          goto LABEL_23;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_27;
        v23 = &unk_1E7571418;
        v18 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(a1 + 96);
        [v18 performBlock:&v20];
      }
    }

    if (*(a1 + 98) == 1 && [*(a1 + 48) isThumbnail])
    {
      if (v8)
      {
        [v8 setDeliveredPlaceholder:1];
      }

      v19 = [PLPlaceholderThumbnailManager sharedManager:v20];
      v17 = [v19 newPlaceholderImageForFormat:*(a1 + 96) photoImageSize:*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_22;
  }

  (*(*(a1 + 64) + 16))();
LABEL_23:
}

void __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "assetsd returned an image URL but no UTI for asset: %@ with format %u", &v5, 0x12u);
  }
}

void __172__PLImageLoadingUtilities__assetsdImageForAsset_withFormat_allowPlaceholder_optimalSourcePixelSize_networkAccessAllowed_trackCPLDownload_sync_isCanceledHandler_completion___block_invoke_27(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Unable to create image from data for asset %@ with format %u", &v5, 0x12u);
  }
}

+ (BOOL)canAccessImageForAsset:(id)asset
{
  assetCopy = asset;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pl_photoLibrary = [assetCopy pl_photoLibrary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__PLImageLoadingUtilities_canAccessImageForAsset___block_invoke;
    v7[3] = &unk_1E7578910;
    v9 = &v10;
    v8 = assetCopy;
    [pl_photoLibrary performBlockAndWait:v7];

    complete = *(v11 + 24);
  }

  else
  {
    complete = [assetCopy complete];
    *(v11 + 24) = complete;
  }

  _Block_object_dispose(&v10, 8);

  return complete & 1;
}

uint64_t __50__PLImageLoadingUtilities_canAccessImageForAsset___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) complete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end