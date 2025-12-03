@interface PLFileSystemAssetImporter
- (BOOL)_setupAdjustmentsFromAdjustmentFileForAsset:(id)asset;
- (BOOL)_setupPhotoAsset:(id)asset withURL:(id)l unknownType:(BOOL)type isPlaceholder:(BOOL)placeholder hasVideoComplementResource:(BOOL)resource;
- (BOOL)_setupPhotoAssetAsPhotoIrisIfNeeded:(id)needed hasVideoComplementResource:(BOOL)resource;
- (BOOL)_setupVideoAsset:(id)asset withURL:(id)l;
- (PLFileSystemAssetImporter)initWithPhotoLibrary:(id)library libraryServicesManager:(id)manager;
- (id)_addAssetWithURL:(id)l existingOID:(id)d assetUUID:(id)iD isPlaceholder:(BOOL)placeholder;
- (id)_assetAdjustmentsIfExistsForAsset:(id)asset;
- (id)addAssetWithURLs:(id)ls assetPayload:(id)payload forceInsert:(BOOL)insert forceUpdate:(BOOL)update fixAddedDate:(BOOL)date;
- (id)assetURLisInDatabase:(id)database deferredPreviewURL:(id)l;
- (id)libraryBundlePathWithPhotoLibrary:(id)library;
- (unint64_t)nextThumbnailIndex;
- (void)addAvailableThumbnailIndex:(unint64_t)index;
- (void)dealloc;
- (void)setModificationAndCreationDateOnAsset:(id)asset withURL:(id)l;
@end

@implementation PLFileSystemAssetImporter

- (unint64_t)nextThumbnailIndex
{
  thumbIndexes = self->_thumbIndexes;
  if (!thumbIndexes)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_thumbIndexes;
    self->_thumbIndexes = indexSet;

    thumbIndexes = self->_thumbIndexes;
  }

  if ([(NSMutableIndexSet *)thumbIndexes count])
  {
    goto LABEL_7;
  }

  v6 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PLFileSystemAssetImporter_nextThumbnailIndex__block_invoke;
  aBlock[3] = &unk_1E7569EC0;
  aBlock[4] = self;
  v7 = v6;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  [PLThumbnailIndexes getAvailableThumbnailIndexesInLibrary:self->_photoLibrary withCount:[(PLFileSystemAssetImporter *)self thumbnailBatchFetchSize] handler:v8];
    ;
  }

  if ([(NSMutableIndexSet *)self->_thumbIndexes count])
  {
LABEL_7:
    firstIndex = [(NSMutableIndexSet *)self->_thumbIndexes firstIndex];
    [(NSMutableIndexSet *)self->_thumbIndexes removeIndex:firstIndex];
  }

  else
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to get thumbnail index. This is bad.", v12, 2u);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return firstIndex;
}

intptr_t __47__PLFileSystemAssetImporter_nextThumbnailIndex__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 40) addIndexes:a2];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)addAvailableThumbnailIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    thumbIndexes = self->_thumbIndexes;
    if (!thumbIndexes)
    {
      indexSet = [MEMORY[0x1E696AD50] indexSet];
      v8 = self->_thumbIndexes;
      self->_thumbIndexes = indexSet;

      thumbIndexes = self->_thumbIndexes;
    }

    [(NSMutableIndexSet *)thumbIndexes addIndex:index];
  }
}

- (BOOL)_setupVideoAsset:(id)asset withURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lCopy = l;
  v8 = [assetCopy setVideoInfoFromFileAtURL:lCopy mainFileMetadata:0 fullSizeRenderURL:0 overwriteOriginalProperties:1];
  if (v8)
  {
    migrateLegacyVideoAdjustments = [assetCopy migrateLegacyVideoAdjustments];
    if (migrateLegacyVideoAdjustments)
    {
      v10 = 1;
    }

    else
    {
      v10 = [assetCopy setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:0];
    }

    v11 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:lCopy];
    v12 = [v11 dataForKey:*MEMORY[0x1E69BFDA8]];
    v13 = [v11 stringForKey:*MEMORY[0x1E69BFDB8]];
    fileManager = [MEMORY[0x1E69BF238] fileManager];
    if (v12)
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [assetCopy uuid];
        v22 = 138412290;
        v23 = uuid;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "setupVideoAsset: Setting up adjustment from extended attributes for asset: %@", &v22, 0xCu);
      }

      [PLImageWriter setAdjustmentsForNewVideo:assetCopy mainFileMetadata:0 withAdjustmentsDictionary:0 cameraAdjustments:v12 renderedContentPath:v13 renderedPosterFramePreviewPath:0 finalAssetSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      goto LABEL_21;
    }

    if (v10)
    {
      pathForAdjustmentFile = [assetCopy pathForAdjustmentFile];
      if (([fileManager fileExistsAtPath:pathForAdjustmentFile] & 1) == 0)
      {
        v18 = PLMigrationGetLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        if (migrateLegacyVideoAdjustments)
        {
          if (v19)
          {
            pathForLegacySlalomRegionsArchive = [assetCopy pathForLegacySlalomRegionsArchive];
            v22 = 138412546;
            v23 = pathForLegacySlalomRegionsArchive;
            v24 = 2112;
            v25 = pathForAdjustmentFile;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "setupVideoAsset: failed to migrate %@ to %@", &v22, 0x16u);
          }
        }

        else if (v19)
        {
          v22 = 138412290;
          v23 = pathForAdjustmentFile;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "setupVideoAsset: failed to create default adjustments at %@", &v22, 0xCu);
        }
      }
    }

    else if ([(PLFileSystemAssetImporter *)self _setupAdjustmentsFromAdjustmentFileForAsset:assetCopy])
    {
      goto LABEL_21;
    }

    [assetCopy generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
LABEL_21:
  }

  return v8;
}

- (BOOL)_setupPhotoAsset:(id)asset withURL:(id)l unknownType:(BOOL)type isPlaceholder:(BOOL)placeholder hasVideoComplementResource:(BOOL)resource
{
  resourceCopy = resource;
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lCopy = l;
  v13 = objc_autoreleasePoolPush();
  if (type)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69C0718]);
    photoLibrary = [assetCopy photoLibrary];
    libraryBundle = [photoLibrary libraryBundle];
    timeZoneLookup = [libraryBundle timeZoneLookup];
    v14 = [v15 initWithImageURL:lCopy contentType:0 options:12 timeZoneLookup:timeZoneLookup cacheImageSource:1 cacheImageData:0];

    if ([assetCopy setImageInfoFromImageMetadata:v14 overwriteOriginalProperties:1])
    {
      [(PLFileSystemAssetImporter *)self _setupPhotoAssetAsPhotoIrisIfNeeded:assetCopy hasVideoComplementResource:resourceCopy];
      if ([v14 cgImageMetadata])
      {
        [assetCopy setFaceRegionsFromImageMetadata:{objc_msgSend(v14, "cgImageMetadata")}];
      }
    }
  }

  if (!-[PLFileSystemAssetImporter _setupAdjustmentsFromAdjustmentFileForAsset:](self, "_setupAdjustmentsFromAdjustmentFileForAsset:", assetCopy) || ([assetCopy additionalAttributes], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "unmanagedAdjustment"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v21 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:lCopy];
    v22 = [v21 dataForKey:*MEMORY[0x1E69BFDA8]];
    v23 = [v21 stringForKey:*MEMORY[0x1E69BFDB8]];
    v24 = v23;
    if (v22)
    {
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v24;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "PLFileSystemAssetImporter: setting adjustments, preview image file %@", buf, 0xCu);
      }

      LOBYTE(v27) = 1;
      [PLImageWriter setAdjustmentsForNewPhoto:assetCopy mainFileMetadata:v14 cameraAdjustmentData:v22 adjustmentDataPath:0 filteredImagePath:v24 cameraMetadata:0 finalAssetSize:*MEMORY[0x1E695F060] isSubstandardRender:*(MEMORY[0x1E695F060] + 8), v27];
    }

    else
    {

      *buf = 0;
      v21 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:lCopy];
      [v21 getUInt16:buf forKey:*MEMORY[0x1E69BFD10]];
    }
  }

  if (!type)
  {
    [assetCopy generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
  }

  objc_autoreleasePoolPop(v13);
  return 1;
}

- (BOOL)_setupAdjustmentsFromAdjustmentFileForAsset:(id)asset
{
  v40 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = [(PLFileSystemAssetImporter *)self _assetAdjustmentsIfExistsForAsset:assetCopy];
  v6 = v5;
  if (v5)
  {
    adjustmentTimestamp = [v5 adjustmentTimestamp];

    if (!adjustmentTimestamp)
    {
      dateCreated = [assetCopy dateCreated];
      [v6 setAdjustmentTimestamp:dateCreated];
    }

    fileManager = [MEMORY[0x1E69BF238] fileManager];
    v35 = 0;
    v33 = fileManager;
    if ([assetCopy isPhoto])
    {
      v10 = [assetCopy pathForBestAvailableFullsizeRenderImageFileOutIsSubstandard:&v35];
      if (v10)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
      }

      else
      {
        v11 = 0;
      }

      pathForPenultimateFullsizeRenderImageFile = [assetCopy pathForPenultimateFullsizeRenderImageFile];
      if (pathForPenultimateFullsizeRenderImageFile && [fileManager fileExistsAtPath:pathForPenultimateFullsizeRenderImageFile])
      {
        v34 = 0;
        v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathForPenultimateFullsizeRenderImageFile options:1 error:&v34];
        v23 = v34;
        if ([v22 length])
        {
          v21 = v22;
        }

        else
        {
          v24 = PLMigrationGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = pathForPenultimateFullsizeRenderImageFile;
            v38 = 2112;
            v39 = v23;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "PLFileSystemAssetImporter: Unable to read data from file '%@'. %@", buf, 0x16u);
          }

          v21 = 0;
        }

        fileManager = v33;
      }

      else
      {
        v21 = 0;
      }

      if ([assetCopy isPhotoIris])
      {
        pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
        v26 = fileManager;
        v27 = v26;
        buf[0] = 0;
        if (pathForFullsizeRenderVideoFile && [v26 fileExistsAtPath:pathForFullsizeRenderVideoFile isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForFullsizeRenderVideoFile isDirectory:0];
        }

        else
        {
          v20 = 0;
        }

        pathForPenultimateFullsizeRenderVideoFile = [assetCopy pathForPenultimateFullsizeRenderVideoFile];
        v29 = v27;
        v30 = v29;
        buf[0] = 0;
        if (pathForPenultimateFullsizeRenderVideoFile && [v29 fileExistsAtPath:pathForPenultimateFullsizeRenderVideoFile isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForPenultimateFullsizeRenderVideoFile isDirectory:0];
        }

        else
        {
          v19 = 0;
        }

        [assetCopy setPlaybackStyle:3];
        [assetCopy setPlaybackVariationAndLoopingStyleFromAdjustmentRenderTypes:{objc_msgSend(v6, "adjustmentRenderTypes")}];
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v18 = 0;
    }

    else
    {
      if (![assetCopy isVideo])
      {
        v19 = 0;
        v20 = 0;
        v18 = 0;
        v21 = 0;
        v11 = 0;
LABEL_41:
        v31 = +[PLMutableAssetAdjustmentOptions assetAdjustmentOptionsForFileSystemImport];
        [v31 setRenderedContentURL:v11];
        [v31 setPenultimateRenderedJPEGData:v21];
        [v31 setPenultimateRenderedVideoContentURL:v18];
        [v31 setSubstandardRender:v35];
        [v31 setRenderedVideoComplementContentURL:v20];
        [v31 setPenultimateRenderedVideoComplementContentURL:v19];
        [v31 setShouldCheckForLegacyCameraAutoAdjustment:1];
        [assetCopy setAdjustments:v6 options:v31];

        goto LABEL_42;
      }

      pathForFullsizeRenderVideoFile2 = [assetCopy pathForFullsizeRenderVideoFile];
      v13 = fileManager;
      v14 = v13;
      buf[0] = 0;
      if (pathForFullsizeRenderVideoFile2 && [v13 fileExistsAtPath:pathForFullsizeRenderVideoFile2 isDirectory:buf] && (buf[0] & 1) == 0)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForFullsizeRenderVideoFile2 isDirectory:0];
      }

      else
      {
        v11 = 0;
      }

      pathForPenultimateFullsizeRenderImageFile = [assetCopy pathForPenultimateFullsizeRenderVideoFile];
      v16 = v14;
      v17 = v16;
      buf[0] = 0;
      if (pathForPenultimateFullsizeRenderImageFile && [v16 fileExistsAtPath:pathForPenultimateFullsizeRenderImageFile isDirectory:buf] && (buf[0] & 1) == 0)
      {
        v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForPenultimateFullsizeRenderImageFile isDirectory:0];
      }

      else
      {
        v18 = 0;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v10 = pathForPenultimateFullsizeRenderImageFile;
    }

    goto LABEL_41;
  }

LABEL_42:

  return v6 != 0;
}

- (id)_assetAdjustmentsIfExistsForAsset:(id)asset
{
  v35 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  pathForAdjustmentFile = [assetCopy pathForAdjustmentFile];
  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v6 = pathForAdjustmentFile;
  v7 = fileManager;
  v8 = v7;
  buf[0] = 0;
  if (v6 && [v7 fileExistsAtPath:v6 isDirectory:buf] && (buf[0] & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v32 = 0;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v9 error:&v32];
    v11 = v32;
    if (!v10)
    {
      goto LABEL_16;
    }

    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0970]];
    if (!v12)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      pathForAdjustmentDataFile = [assetCopy pathForAdjustmentDataFile];
      v15 = [defaultManager fileExistsAtPath:pathForAdjustmentDataFile];

      if (v15)
      {
        v16 = MEMORY[0x1E695DEF0];
        pathForAdjustmentDataFile2 = [assetCopy pathForAdjustmentDataFile];
        v12 = [v16 dataWithContentsOfFile:pathForAdjustmentDataFile2 options:1 error:0];
      }

      else
      {
        v12 = 0;
      }
    }

    v29 = v11;
    v30 = v9;
    v31 = assetCopy;
    v19 = objc_alloc(MEMORY[0x1E69C0660]);
    v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0980]];
    v21 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0990]];
    v22 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0968]];
    integerValue = [v22 integerValue];
    v24 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0978]];
    v25 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0998]];
    v18 = [v19 initWithFormatIdentifier:v20 formatVersion:v21 data:v12 baseVersion:integerValue editorBundleID:v24 renderTypes:{objc_msgSend(v25, "unsignedIntValue")}];

    v26 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C09A0]];
    if (v26)
    {
      [v18 setAdjustmentTimestamp:v26];
    }

    v9 = v30;
    assetCopy = v31;
    v11 = v29;
    if (!v18)
    {
LABEL_16:
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "PLFileSystemAssetImporter: Failed to create PFAssetAdjustments from '%@'", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_setupPhotoAssetAsPhotoIrisIfNeeded:(id)needed hasVideoComplementResource:(BOOL)resource
{
  resourceCopy = resource;
  neededCopy = needed;
  if (([neededCopy isPhoto] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFileSystemAssetImporter.m" lineNumber:717 description:@"expect photo asset"];
  }

  if (([neededCopy isPhotoIris] & 1) == 0)
  {
    if ([neededCopy videoCpDurationValue])
    {
      [neededCopy setKindSubtype:2];
      if ([neededCopy canPlayPhotoIris])
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      if ([neededCopy playbackStyle] != v9)
      {
        [neededCopy setPlaybackStyle:v9];
      }

      goto LABEL_17;
    }

    if (!resourceCopy)
    {
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    pathForVideoComplementFile = [neededCopy pathForVideoComplementFile];
    mainFileURL = [neededCopy mainFileURL];
    v8 = 0;
    if (!mainFileURL || !pathForVideoComplementFile)
    {
LABEL_24:

      goto LABEL_18;
    }

    v12 = objc_alloc(MEMORY[0x1E69C0918]);
    path = [mainFileURL path];
    v14 = [v12 initWithPathToVideo:pathForVideoComplementFile pathToImage:path];

    pairingIdentifier = [v14 pairingIdentifier];
    v16 = pairingIdentifier;
    v26 = 0uLL;
    v27 = 0;
    if (v14)
    {
      [v14 imageDisplayTime];
      v24 = 0uLL;
      v25 = 0;
      [v14 originalVideoDuration];
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v24 = 0uLL;
      v25 = 0;
      if (!pairingIdentifier)
      {
        goto LABEL_21;
      }
    }

    if (BYTE12(v24))
    {
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForVideoComplementFile];
      v22 = v24;
      v23 = v25;
      v20 = v26;
      v21 = v27;
      v8 = [neededCopy becomePhotoIrisWithMediaGroupUUID:v16 mainFileMetadata:0 videoURL:v18 videoDuration:&v22 stillDisplayTime:&v20 options:0];

      goto LABEL_23;
    }

LABEL_21:
    v8 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v8 = 1;
LABEL_18:

  return v8;
}

- (void)setModificationAndCreationDateOnAsset:(id)asset withURL:(id)l
{
  assetCopy = asset;
  lCopy = l;
  modificationDate = [assetCopy modificationDate];

  dateCreated = [assetCopy dateCreated];

  additionalAttributes = [assetCopy additionalAttributes];
  exifTimestampString = [additionalAttributes exifTimestampString];

  additionalAttributes2 = [assetCopy additionalAttributes];
  timeZoneName = [additionalAttributes2 timeZoneName];
  if (timeZoneName)
  {
    additionalAttributes3 = [assetCopy additionalAttributes];
    timeZoneOffset = [additionalAttributes3 timeZoneOffset];
    v14 = timeZoneOffset == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!modificationDate || !dateCreated || !exifTimestampString || v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69C0718]);
    photoLibrary = [assetCopy photoLibrary];
    libraryBundle = [photoLibrary libraryBundle];
    timeZoneLookup = [libraryBundle timeZoneLookup];
    v19 = [v15 initWithMediaURL:lCopy timeZoneLookup:timeZoneLookup];

    if (modificationDate)
    {
      if (dateCreated)
      {
        goto LABEL_10;
      }
    }

    else
    {
      fileSystemProperties = [v19 fileSystemProperties];
      v26 = [fileSystemProperties objectForKeyedSubscript:*MEMORY[0x1E696A350]];
      [assetCopy setModificationDate:v26];

      if (dateCreated)
      {
LABEL_10:
        if (exifTimestampString)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    utcCreationDate = [v19 utcCreationDate];
    [assetCopy setDateCreated:utcCreationDate];

    LOWORD(utcCreationDate) = [v19 creationDateSource];
    additionalAttributes4 = [assetCopy additionalAttributes];
    [additionalAttributes4 setDateCreatedSource:utcCreationDate];

    if (exifTimestampString)
    {
LABEL_11:
      if (!v14)
      {
LABEL_13:
        dateCreated2 = [assetCopy dateCreated];
        [dateCreated2 timeIntervalSinceReferenceDate];
        [assetCopy setSortToken:?];

        goto LABEL_14;
      }

LABEL_12:
      timeZoneName2 = [v19 timeZoneName];
      additionalAttributes5 = [assetCopy additionalAttributes];
      [additionalAttributes5 setTimeZoneName:timeZoneName2];

      timeZoneOffset2 = [v19 timeZoneOffset];
      additionalAttributes6 = [assetCopy additionalAttributes];
      [additionalAttributes6 setTimeZoneOffset:timeZoneOffset2];

      goto LABEL_13;
    }

LABEL_19:
    creationDateString = [v19 creationDateString];
    additionalAttributes7 = [assetCopy additionalAttributes];
    [additionalAttributes7 setExifTimestampString:creationDateString];

    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (id)addAssetWithURLs:(id)ls assetPayload:(id)payload forceInsert:(BOOL)insert forceUpdate:(BOOL)update fixAddedDate:(BOOL)date
{
  updateCopy = update;
  insertCopy = insert;
  v207 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  payloadCopy = payload;
  if (insertCopy && updateCopy)
  {
    v130 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot call addAssetWithURLs with both forceInsert and forceUpdate" userInfo:0];
    objc_exception_throw(v130);
  }

  v154 = payloadCopy;
  payloadID = [payloadCopy payloadID];
  payloadIDString = [payloadID payloadIDString];

  if (payloadIDString)
  {
    v15 = 0;
  }

  else
  {
    v15 = updateCopy;
  }

  v152 = v15;
  if (payloadIDString)
  {
    v16 = 0;
  }

  else
  {
    v16 = insertCopy;
  }

  v189 = 0;
  v190 = &v189;
  v191 = 0x3032000000;
  v192 = __Block_byref_object_copy__25088;
  v193 = __Block_byref_object_dispose__25089;
  v194 = 0;
  v17 = [PLPhotoLibrary masterURLFromSidecarURLs:lsCopy];
  v188 = 0;
  v159 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v17 exists:&v188 includeUnknownAttributes:0];
  v18 = objc_initWeak(&location, self);

  v19 = objc_alloc(MEMORY[0x1E69BF270]);
  v185[0] = MEMORY[0x1E69E9820];
  v185[1] = 3221225472;
  v185[2] = __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke;
  v185[3] = &unk_1E7573318;
  objc_copyWeak(&v187, &location);
  v20 = v17;
  v186 = v20;
  v157 = [v19 initWithBlock:v185];

  objc_destroyWeak(&v187);
  objc_destroyWeak(&location);
  v184 = 0;
  pathManager = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  LODWORD(v19) = [pathManager isUBF];

  v149 = v16 || v152;
  if (!v19)
  {
    v158 = [v159 UUIDStringForKey:*MEMORY[0x1E69BFE68]];
    if (payloadIDString)
    {
      v27 = payloadIDString;

      v158 = v27;
    }

    [v159 getInt32:&v184 forKey:*MEMORY[0x1E69BFDC8]];
    v147 = [PLImageWriter semanticEnhanceSceneIsValid:v184];
    if ([PLImageWriter isDeferredPhotoPreviewURL:v20])
    {
      objectValue = [v157 objectValue];
      isDeferredPhotoProxy = [objectValue isDeferredPhotoProxy];

      if (isDeferredPhotoProxy)
      {
        objectValue2 = [v157 objectValue];
        deferredPhotoProcessingIdentifier = [objectValue2 deferredPhotoProcessingIdentifier];
      }

      else
      {
        deferredPhotoProcessingIdentifier = 0;
      }

      v156 = deferredPhotoProcessingIdentifier;
      v145 = deferredPhotoProcessingIdentifier != 0 || v147;
      if (deferredPhotoProcessingIdentifier != 0 || v147)
      {
        pathExtension = [v20 pathExtension];
        v155 = [PLImageWriter finalizedAssetURLForDeferredPhotoPreviewURL:v20 extension:pathExtension];

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          path = [v20 path];
          path2 = [v155 path];
          location = 138412802;
          *location_4 = path;
          *&location_4[8] = 2114;
          *&location_4[10] = v156;
          v197 = 2112;
          v198 = path2;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: Found deferred photo preview: %@ with identifier %{public}@ for base asset %@", &location, 0x20u);
        }
      }

      else
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          path3 = [v20 path];
          v38 = path3;
          v39 = @"missing";
          if (isDeferredPhotoProxy)
          {
            v39 = @"has";
          }

          location = 138412546;
          *location_4 = path3;
          *&location_4[8] = 2112;
          *&location_4[10] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "addAssetWithURLs: Found unsupported deferred photo preview: %@ %@ proxy flag, missing identifier. Adding as regular asset", &location, 0x16u);
        }

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          path4 = [v20 path];
          location = 138412290;
          *location_4 = path4;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "addAssetWithURLs: Found unsupported deferred photo preview: %@ adding as regular asset", &location, 0xCu);
        }

        v155 = 0;
        v156 = 0;
      }
    }

    else
    {
      v155 = 0;
      v156 = 0;
      v145 = 0;
    }

    v41 = [PLImageWriter isSpatialOverCaptureURL:v20];
    v42 = v41;
    if (v41)
    {
      v43 = PLMigrationGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        path5 = [v20 path];
        location = 138543362;
        *location_4 = path5;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: spatial over capture cannot be imported without original asset resource: %{public}@, skipping", &location, 0xCu);
      }

      v149 = 0;
    }

    pathExtension2 = [v20 pathExtension];
    if ([PLPhotoLibrary isAdjustmentEnvelopeExtension:pathExtension2])
    {
      v45 = PLMigrationGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        path6 = [v20 path];
        location = 138543362;
        *location_4 = path6;
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import adjustment envelope as asset primary assetURL: %{public}@, skipping", &location, 0xCu);
      }

      goto LABEL_41;
    }

    if (v188 != 1)
    {

      goto LABEL_73;
    }

    if (![PLPhotoLibrary isVideoFileExtension:pathExtension2])
    {
      v179 = 31;
      [v159 getUInt16:&v179 forKey:*MEMORY[0x1E69BFE10]];
      if (v179 == 4)
      {
        v53 = PLMigrationGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          path7 = [v20 path];
          location = 138543362;
          *location_4 = path7;
          _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import alternate image as asset primary assetURL: %{public}@, skipping", &location, 0xCu);
        }

        goto LABEL_41;
      }

      goto LABEL_73;
    }

    mediaGroupUUID = [v154 mediaGroupUUID];
    if (mediaGroupUUID)
    {
      goto LABEL_71;
    }

    mediaGroupUUID = [v159 stringForKey:*MEMORY[0x1E69BFDE0]];
    if (mediaGroupUUID)
    {
      goto LABEL_71;
    }

    v48 = [MEMORY[0x1E6987E28] assetWithURL:v20];
    v49 = PFVideoComplementMetadataForVideoAVAssetPreloadingValues();
    pairingIdentifier = [v49 pairingIdentifier];
    v143 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:v48 timeZoneLookup:0];
    v139 = v49;
    if (!v143)
    {
      v50 = PLMigrationGetLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location) = 0;
        _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "Failed to check for existence of variation identifier", &location, 2u);
      }
    }

    if (pairingIdentifier)
    {
      if (v49)
      {
        [v49 videoDuration];
        if ((v182 & 0x100000000) != 0)
        {
          [v49 imageDisplayTime];
          if ((v180 & 1) == 0)
          {
            v51 = PLMigrationGetLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              path8 = [v20 path];
              location = 138543362;
              *location_4 = path8;
              _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Found invalid still display time on video complement: %{public}@", &location, 0xCu);
            }
          }

          mediaGroupUUID = pairingIdentifier;
LABEL_70:

          if (!mediaGroupUUID)
          {
LABEL_72:

LABEL_73:
            if (v42)
            {
              goto LABEL_92;
            }

            goto LABEL_74;
          }

LABEL_71:
          if (![PLManagedAsset isOrphanedMediaGroupUUID:mediaGroupUUID])
          {
            v86 = PLMigrationGetLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              path9 = [v20 path];
              location = 138412546;
              *location_4 = mediaGroupUUID;
              *&location_4[8] = 2114;
              *&location_4[10] = path9;
              _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: video with identifier %{mediaGroupUUID}@ appears to be compliment resources of an iris asset: %{public}@, skipping", &location, 0x16u);
            }

            goto LABEL_41;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v181 = 0;
        v182 = 0;
        v183 = 0;
      }

      playbackVariation = [v143 playbackVariation];
      v56 = [playbackVariation unsignedIntegerValue] == 0;

      if (v56)
      {
        v57 = PLMigrationGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          path10 = [v20 path];
          location = 138543618;
          *location_4 = pairingIdentifier;
          *&location_4[8] = 2114;
          *&location_4[10] = path10;
          _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Video with media group ID %{public}@ does not have playback variation, nor valid still & video duration %{public}@", &location, 0x16u);
        }
      }
    }

    mediaGroupUUID = 0;
    goto LABEL_70;
  }

  pathExtension2 = [MEMORY[0x1E69BF298] fileIdentifierForValidOriginalURL:v20];
  uuid = [pathExtension2 uuid];
  [pathExtension2 resourceType];
  [pathExtension2 resourceVersion];
  [pathExtension2 recipeId];
  v158 = uuid;
  if (PLResourceTypeIsAllowedForUseInFilename())
  {
    v24 = PLMigrationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      resourceType = [pathExtension2 resourceType];
      path11 = [v20 path];
      location = 67109378;
      *location_4 = resourceType;
      *&location_4[4] = 2114;
      *&location_4[6] = path11;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import allowed resource with type %d as asset primary assetURL: %{public}@, skipping", &location, 0x12u);
    }

    v155 = 0;
    v156 = 0;
LABEL_41:

LABEL_92:
    allObjects = [lsCopy allObjects];
    v78 = [allObjects _pl_map:&__block_literal_global_25122];

    if (v188)
    {
      v79 = PLMigrationGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        path12 = [v20 path];
        location = 138543618;
        *location_4 = path12;
        *&location_4[8] = 2114;
        *&location_4[10] = v78;
        _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: asset couldn't be added (invalid file resources): %{public}@, skipping files: %{public}@", &location, 0x16u);
      }
    }

    else
    {
      v79 = PLMigrationGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        path13 = [v20 path];
        location = 138543618;
        *location_4 = path13;
        *&location_4[8] = 2114;
        *&location_4[10] = v78;
        _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: file couldn't be opened (deleted or read failed): %{public}@, skipping files: %{public}@", &location, 0x16u);
      }
    }

    goto LABEL_98;
  }

  v145 = 0;
  v155 = 0;
  v156 = 0;
  v147 = 0;
LABEL_74:
  if (v188 != 1)
  {
    goto LABEL_92;
  }

  v59 = MEMORY[0x1E69BF238];
  path14 = [v20 path];
  v61 = [v59 fileLengthForFilePath:path14] == 0;

  if (v61)
  {
    pathExtension2 = PLMigrationGetLog();
    if (os_log_type_enabled(pathExtension2, OS_LOG_TYPE_FAULT))
    {
      path15 = [v20 path];
      location = 138543362;
      *location_4 = path15;
      _os_log_impl(&dword_19BF1F000, pathExtension2, OS_LOG_TYPE_FAULT, "addAssetWithURLs: attempting to import zero size primary assetURL: %{public}@, skipping", &location, 0xCu);
    }

    goto LABEL_41;
  }

  if ((v188 & 1) == 0)
  {
    goto LABEL_92;
  }

  if (![PLManagedAsset hasRequiredExtendedAttributesForPersistanceAttributes:v159])
  {
    v62 = PLMigrationGetLog();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      path16 = [v20 path];
      location = 138543362;
      *location_4 = path16;
      _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, "addAssetWithURLs: ERROR - missing required extended attributes for file at URL: %{public}@", &location, 0xCu);
    }
  }

  LOWORD(v179) = 0;
  v132 = *MEMORY[0x1E69BFD50];
  [v159 getUInt16:&v179 forKey:?];
  v131 = *MEMORY[0x1E69BFD58];
  v133 = [v159 stringForKey:?];
  v64 = [(NSString *)self->_photoLibraryStoreUUID isEqualToString:?];
  v134 = v64;
  v65 = v179 > 2u && v64;
  if (v65 == 1)
  {
    v66 = PLMigrationGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      path17 = [v20 path];
      location = 138543618;
      *location_4 = path17;
      *&location_4[8] = 2114;
      *&location_4[10] = v158;
      _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "addAssetWithURLs: ERROR - previously tried this URL and failed: %{public}@ [%{public}@])", &location, 0x16u);
    }

    v149 = 0;
  }

  lastPathComponent = [v20 lastPathComponent];
  uRLByDeletingLastPathComponent = [v20 URLByDeletingLastPathComponent];
  path18 = [uRLByDeletingLastPathComponent path];

  pathManager2 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  v144 = [PLManagedAsset pathForAdjustmentFileWithPathManager:pathManager2 bundleScope:0 uuid:v158 directory:path18 filename:lastPathComponent];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v71 = [defaultManager fileExistsAtPath:v144];

  if (v71)
  {
    v72 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v144];
    v73 = v72;
    if (v72 && ([v72 objectForKeyedSubscript:*MEMORY[0x1E69BF370]], v74 = objc_claimAutoreleasedReturnValue(), v75 = v74 == 0, v74, v75))
    {
      pathManager3 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
      v89 = [PLManagedAsset pathForAdjustmentDataFileWithPathManager:pathManager3 bundleScope:0 uuid:v158 directory:path18 filename:lastPathComponent];

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v91 = [defaultManager2 fileExistsAtPath:v89];

      if ((v91 & 1) == 0)
      {
        v92 = PLMigrationGetLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          path19 = [v20 path];
          location = 138543618;
          *location_4 = path19;
          *&location_4[8] = 2114;
          *&location_4[10] = v158;
          _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "addAssetWithURLs: ERROR - missing adjustment data blob for adjusted asset: %{public}@ [%{public}@])", &location, 0x16u);
        }

        v149 = 0;
        v65 = 1;
      }

      v76 = v91 ^ 1;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v76 = 0;
  }

  v94 = v158;
  v95 = v155;
  if (v145)
  {
    v96 = v20;
  }

  else
  {
    v95 = v20;
    v96 = 0;
  }

  v138 = v95;
  v137 = v96;
  if (((v76 | v16) & 1) == 0)
  {
    v97 = v94;
    pathManager4 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
    isUBF = [pathManager4 isUBF];

    if (isUBF)
    {
      if (v65)
      {
        v136 = 0;
        v65 = 1;
LABEL_147:
        v158 = v97;
        goto LABEL_148;
      }

      v136 = [(NSMutableDictionary *)self->_existingOIDsByUUID objectForKey:v97];
      if (!v136)
      {
        v136 = 0;
        v65 = 0;
        goto LABEL_147;
      }

      v101 = PLMigrationGetLog();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
      {
        path20 = [v138 path];
        location = 138543618;
        *location_4 = path20;
        *&location_4[8] = 2114;
        *&location_4[10] = v97;
        _os_log_impl(&dword_19BF1F000, v101, OS_LOG_TYPE_DEBUG, "addAssetWithURLs: EXISTING ASSET (%{public}@ [%{public}@]) (UUID matches existing asset)", &location, 0x16u);
      }
    }

    else
    {
      v100 = [(PLFileSystemAssetImporter *)self assetURLisInDatabase:v138 deferredPreviewURL:v137];
      v101 = v100;
      if (v100)
      {
        v102 = v65;
      }

      else
      {
        v102 = 1;
      }

      if (v102)
      {
        if ((v65 & 1) == 0)
        {
          if ([(NSMutableSet *)self->_existingUUIDs containsObject:v97])
          {
            uUIDString = [MEMORY[0x1E69BF320] UUIDString];
            [MEMORY[0x1E69BF230] persistUUIDString:uUIDString forKey:*MEMORY[0x1E69BFE68] fileURL:v20];
            v107 = PLMigrationGetLog();
            v158 = uUIDString;
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              path21 = [v138 path];
              location = 138543874;
              *location_4 = path21;
              *&location_4[8] = 2114;
              *&location_4[10] = v97;
              v197 = 2114;
              v198 = v158;
              _os_log_impl(&dword_19BF1F000, v107, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: DUPLICATE UUID (%{public}@ [%{public}@] -> new UUID %{public}@)", &location, 0x20u);
            }

            v136 = 0;
            v65 = 0;
            goto LABEL_145;
          }

          v136 = 0;
          v65 = 0;
LABEL_144:
          v158 = v97;
LABEL_145:

          goto LABEL_148;
        }

        v136 = 0;
      }

      else
      {
        if (([v100 isEqual:v97]& 1) != 0)
        {
          v104 = PLMigrationGetLog();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            path22 = [v138 path];
            location = 138543618;
            *location_4 = path22;
            *&location_4[8] = 2114;
            *&location_4[10] = v97;
            _os_log_impl(&dword_19BF1F000, v104, OS_LOG_TYPE_DEBUG, "addAssetWithURLs: DUPLICATE PATH (%{public}@ [%{public}@]) (URL and UUID match database entry)", &location, 0x16u);
          }
        }

        else
        {
          v109 = PLMigrationGetLog();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            path23 = [v138 path];
            location = 138543874;
            *location_4 = path23;
            *&location_4[8] = 2114;
            *&location_4[10] = v97;
            v197 = 2114;
            v198 = v101;
            _os_log_impl(&dword_19BF1F000, v109, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: DUPLICATE PATH (%{public}@ [%{public}@] -> new UUID %{public}@)", &location, 0x20u);
          }

          [MEMORY[0x1E69BF230] persistUUIDString:v101 forKey:*MEMORY[0x1E69BFE68] fileURL:v20];
        }

        v136 = [(NSMutableDictionary *)self->_existingOIDsByUUID objectForKey:v101];
      }
    }

    v65 = 1;
    goto LABEL_144;
  }

  v136 = 0;
  v97 = v94;
  v158 = v94;
LABEL_148:
  v111 = v65 ^ 1 | v149;
  if (!v134 && (v111 & 1) != 0)
  {
    [MEMORY[0x1E69BF230] persistString:self->_photoLibraryStoreUUID forKey:v131 fileURL:v20];
    if (v179)
    {
      [MEMORY[0x1E69BF230] persistUInt16:0 forKey:v132 fileURL:v20];
    }
  }

  +[PLDelayedFiledSystemDeletions waitForAllDelayedDeletionsToFinish];
  v112 = objc_alloc_init(MEMORY[0x1E696AC08]);
  path24 = [v20 path];
  v114 = [v112 fileExistsAtPath:path24];

  if (!v114)
  {
    v128 = PLMigrationGetLog();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      path25 = [v20 path];
      location = 138543362;
      *location_4 = path25;
      _os_log_impl(&dword_19BF1F000, v128, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: delayed file deletion in-flight during import, previously found file no longer exists: %{public}@, skipping", &location, 0xCu);
    }

    goto LABEL_168;
  }

  if (((v76 ^ 1) & v111) != 1)
  {
    goto LABEL_164;
  }

  v115 = PLMigrationGetLog();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    path26 = [v138 path];
    photoLibraryStoreUUID = self->_photoLibraryStoreUUID;
    v150 = [(NSMutableSet *)self->_existingUUIDs containsObject:v97];
    v118 = [(PLFileSystemAssetImporter *)self assetURLisInDatabase:v138 deferredPreviewURL:v137];
    location = 138544898;
    *location_4 = path26;
    *&location_4[8] = 2114;
    *&location_4[10] = v97;
    v197 = 2114;
    v198 = v133;
    v199 = 2114;
    v200 = photoLibraryStoreUUID;
    v201 = 1024;
    v202 = v134;
    v203 = 1024;
    v204 = v150;
    v205 = 1024;
    v206 = v118 != 0;
    _os_log_impl(&dword_19BF1F000, v115, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: (%{public}@ [%{public}@], rebuild %{public}@ database %{public}@, same? %d, exists %d, url dupe %d)", &location, 0x3Cu);
  }

  v119 = PLMigrationGetLog();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    v120 = v179;
    path27 = [v20 path];
    location = 67109378;
    *location_4 = v120 + 1;
    *&location_4[4] = 2114;
    *&location_4[6] = path27;
    _os_log_impl(&dword_19BF1F000, v119, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: PROGRESS - Setting progress flag %d for master URL: %{public}@", &location, 0x12u);
  }

  [MEMORY[0x1E69BF230] persistUInt16:(v179 + 1) forKey:v132 fileURL:v20];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke_64;
  aBlock[3] = &unk_1E7569E98;
  v173 = &v189;
  aBlock[4] = self;
  v151 = v138;
  v163 = v151;
  v175 = v152;
  v153 = v136;
  v164 = v153;
  v135 = v158;
  v165 = v135;
  v176 = v145;
  v166 = v20;
  v167 = payloadIDString;
  v168 = v154;
  v169 = lsCopy;
  v170 = v157;
  v146 = v156;
  v171 = v146;
  v177 = v147;
  v174 = v184;
  v172 = v159;
  dateCopy = date;
  v122 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke_67;
  v160[3] = &unk_1E7576AA0;
  v124 = v122;
  v161 = v124;
  [WeakRetained performBlockWithImportMutex:v160];

  v125 = v190[5];
  if (v125)
  {
    if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
    {
      avalancheUUID = [v190[5] avalancheUUID];
      if (avalancheUUID)
      {
        avalanchePickTypeIsVisible = [v190[5] avalanchePickTypeIsVisible];

        if ((avalanchePickTypeIsVisible & 1) == 0)
        {
          [v190[5] setVisibilityState:2];
        }
      }
    }
  }

  if (v125)
  {
LABEL_164:
    self->_hasProcessedAnyAssets = 1;
LABEL_168:

LABEL_98:
    v82 = v190[5];
    v83 = v156;
    goto LABEL_99;
  }

  v82 = 0;
  v83 = v146;
  v158 = v135;
LABEL_99:

  _Block_object_dispose(&v189, 8);

  return v82;
}

id __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x1E69C0718]);
    v4 = *(a1 + 32);
    v5 = [WeakRetained[1] libraryBundle];
    v6 = [v5 timeZoneLookup];
    v7 = [v3 initWithImageURL:v4 contentType:0 timeZoneLookup:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke_64(uint64_t a1)
{
  v1 = a1;
  v114 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v1 + 132) == 1)
  {
    v3 = *(v1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 _addAssetWithURL:*(v1 + 40) existingOID:v3 assetUUID:*(v1 + 56) isPlaceholder:*(v1 + 133)];
  v5 = *(*(v1 + 120) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(v1 + 120) + 8) + 40);
  if (!v7)
  {
    return;
  }

  if (![v7 isInserted])
  {
    v19 = [*(*(*(v1 + 120) + 8) + 40) addedDate];

    if (!v19)
    {
      v20 = *(*(*(v1 + 120) + 8) + 40);
      v21 = [v20 dateCreated];
      [v20 setAddedDate:v21];
    }

    goto LABEL_27;
  }

  v8 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:*(v1 + 64)];
  v9 = *MEMORY[0x1E69BFE68];
  v10 = [v8 UUIDStringForKey:*MEMORY[0x1E69BFE68]];

  if (v10)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(v1 + 64) path];
      *buf = 138543618;
      v109 = v10;
      v110 = 2114;
      v111 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: asset uuid: %{public}@ found in file attribute of master with URL: %{public}@", buf, 0x16u);
    }

    if ([*(v1 + 56) isEqualToString:v10])
    {
      goto LABEL_26;
    }

    [MEMORY[0x1E69BF230] persistUUIDString:*(v1 + 56) forKey:v9 fileURL:*(v1 + 64)];
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(v1 + 64) path];
      v15 = *(v1 + 56);
      *buf = 138543874;
      v109 = v14;
      v110 = 2114;
      v111 = v10;
      v112 = 2114;
      v113 = v15;
      v16 = "addAssetWithURLs: updated asset UUID attribute on path from filename asset uuid (%{public}@ [%{public}@] -> new UUID %{public}@)";
      v17 = v13;
      v18 = 32;
LABEL_17:
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_24:
    }
  }

  else
  {
    v22 = *(v1 + 56);
    if (!v22)
    {
      v24 = [*(*(v1 + 32) + 8) libraryServicesManager];
      v25 = [v24 modelMigrator];
      v13 = [v25 archivedAssetUUIDForURL:*(v1 + 40)];

      if (v13)
      {
        [MEMORY[0x1E69BF230] persistUUIDString:v13 forKey:v9 fileURL:*(v1 + 64)];
        v14 = PLMigrationGetLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        v26 = [*(v1 + 64) path];
        *buf = 138543618;
        v109 = v13;
        v110 = 2114;
        v111 = v26;
        v27 = "addAssetWithURLs: forcing uuid: %{public}@ for master URL: %{public}@";
        v28 = v14;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 22;
      }

      else
      {
        v14 = PLMigrationGetLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v26 = [*(v1 + 64) path];
        *buf = 138543362;
        v109 = v26;
        v27 = "addAssetWithURLs: unable to find uuid for master URL: %{public}@";
        v28 = v14;
        v29 = OS_LOG_TYPE_ERROR;
        v30 = 12;
      }

      _os_log_impl(&dword_19BF1F000, v28, v29, v27, buf, v30);

      goto LABEL_24;
    }

    [MEMORY[0x1E69BF230] persistUUIDString:v22 forKey:v9 fileURL:*(v1 + 64)];
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v1 + 56);
      v14 = [*(v1 + 64) path];
      *buf = 138543618;
      v109 = v23;
      v110 = 2114;
      v111 = v14;
      v16 = "addAssetWithURLs: setting uuid (was nil): %{public}@ for master URL: %{public}@";
      v17 = v13;
      v18 = 22;
      goto LABEL_17;
    }
  }

LABEL_26:
LABEL_27:
  if (*(v1 + 72))
  {
    if (*(v1 + 56))
    {
      [*(*(*(v1 + 120) + 8) + 40) setUuid:?];
    }

    v31 = PLMigrationGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(v1 + 56);
      v33 = *(v1 + 80);
      *buf = 138543618;
      v109 = v32;
      v110 = 2114;
      v111 = v33;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "addAssetWithURLs: applying asset metadata from journal payload, uuid: %{public}@, payload: %{public}@", buf, 0x16u);
    }

    [*(v1 + 80) applyPayloadToManagedObject:*(*(*(v1 + 120) + 8) + 40) payloadAttributesToUpdate:0];
  }

  else
  {
    [*(*(*(v1 + 120) + 8) + 40) synchronizeWithPersistedFileSystemAttributes];
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v34 = *(v1 + 88);
  v35 = [v34 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (!v35)
  {

    v71 = 0;
    v94 = 0;
    goto LABEL_71;
  }

  v96 = 0;
  v97 = 0;
  v94 = 0;
  v99 = 0;
  v36 = 0;
  v37 = *v104;
  v93 = *MEMORY[0x1E696D9B0];
  v38 = off_1E7560000;
  v98 = v1;
  v100 = v34;
  v101 = *v104;
  do
  {
    v39 = 0;
    do
    {
      if (*v104 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v40 = *(*(&v103 + 1) + 8 * v39);
      v41 = v38[53];
      v42 = [v40 pathExtension];
      LODWORD(v41) = [(__objc2_class *)v41 isValidFileExtensionForImport:v42];

      if (v41 && ([v40 isEqual:*(v1 + 64)] & 1) == 0)
      {
        v43 = [v40 lastPathComponent];
        v44 = [*(*(*(v1 + 120) + 8) + 40) pathForSpatialOverCaptureContentFile];
        v45 = [v44 lastPathComponent];
        if ([v43 isEqualToString:v45])
        {
          v36 = 1;
          goto LABEL_43;
        }

        v102 = v36;
        [*(*(*(v1 + 120) + 8) + 40) pathForVideoComplementSpatialOverCaptureContentFile];
        v47 = v46 = v1;
        v48 = [v47 lastPathComponent];
        v49 = [v43 isEqualToString:v48];

        if (v49)
        {
          v36 = 1;
          v1 = v46;
          v34 = v100;
          v37 = v101;
          goto LABEL_53;
        }

        v50 = [*(*(*(v46 + 120) + 8) + 40) pathForDeferredProcessingPreviewFile];
        v51 = [v50 lastPathComponent];
        v52 = [v43 isEqualToString:v51];

        v1 = v46;
        v37 = v101;
        if (v52)
        {
          v99 = 1;
          v34 = v100;
        }

        else
        {
          v53 = [*(*(*(v46 + 120) + 8) + 40) pathForVideoComplementFile];
          v54 = [v53 lastPathComponent];
          v55 = [v43 isEqualToString:v54];

          v34 = v100;
          if (v55)
          {
            v97 = 0x100000001;
          }

          else
          {
            v56 = [*(*(*(v1 + 120) + 8) + 40) pathForDeferredVideoComplementFile];
            v57 = [v56 lastPathComponent];
            v58 = [v43 isEqualToString:v57];

            if ((v58 & 1) == 0)
            {
              v59 = CGImageSourceCreateWithURL(v40, 0);
              if (v59)
              {
                v60 = v59;
                v61 = CGImageSourceCopyProperties(v59, 0);
                v62 = [(__CFDictionary *)v61 objectForKey:v93];
                v63 = v62;
                if (v62)
                {
                  v44 = DateCreatedFromExifDictionary(v62);
                }

                else
                {
                  v44 = 0;
                }

                CFRelease(v60);

                v1 = v98;
              }

              else
              {
                v44 = 0;
              }

              v95 = *(*(*(v1 + 120) + 8) + 40);
              v45 = [*(v98 + 96) objectValue];
              v64 = [v45 orientation];
              v65 = [*(*(v98 + 32) + 8) pathManager];
              LODWORD(v92) = v64;
              v1 = v98;
              [v95 addSidecarFileAtIndex:v96 sidecarURL:v40 withFilename:0 compressedSize:0 captureDate:v44 modificationDate:0 uniformTypeIdentifier:0 imageOrientation:v92 pathManager:v65];

              ++v96;
              v36 = v102;
              v37 = v101;
LABEL_43:

LABEL_53:
              v38 = off_1E7560000;
              goto LABEL_54;
            }

            BYTE4(v97) = 1;
            v94 = 1;
          }
        }

        v36 = v102;
        goto LABEL_53;
      }

LABEL_54:
      ++v39;
    }

    while (v35 != v39);
    v66 = [v34 countByEnumeratingWithState:&v103 objects:v107 count:16];
    v35 = v66;
  }

  while (v66);

  if (v36)
  {
    [*(*(*(v1 + 120) + 8) + 40) setCameraProcessingAdjustmentState:1];
    v67 = [*(v1 + 32) _assetAdjustmentsIfExistsForAsset:*(*(*(v1 + 120) + 8) + 40)];
    v68 = [*(v1 + 96) objectValue];
    v69 = [v68 spatialOverCaptureIdentifier];
    v70 = [*(*(*(v1 + 120) + 8) + 40) additionalAttributes];
    [v70 setSpatialOverCaptureGroupIdentifier:v69];

    if (v67)
    {
      [*(*(*(v1 + 120) + 8) + 40) setCameraProcessingAdjustmentStateFromAdjustmentRenderTypes:{objc_msgSend(v67, "adjustmentRenderTypes")}];
    }
  }

  LOBYTE(v35) = v97;
  v71 = BYTE4(v97);
  if (v99)
  {
LABEL_72:
    if (*(v1 + 133) == 1 && *(v1 + 104))
    {
      [*(*(*(v1 + 120) + 8) + 40) setDeferredProcessingNeeded:1];
      v72 = [*(*(*(v1 + 120) + 8) + 40) additionalAttributes];
      [v72 setDeferredPhotoIdentifier:*(v1 + 104)];
    }

    if (*(v1 + 134) == 1)
    {
      v73 = PLMigrationGetLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(v1 + 128);
        *buf = 67109120;
        LODWORD(v109) = v74;
        _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: asset is SemDev scene %d", buf, 8u);
      }

      v75 = [*(*(*(v1 + 120) + 8) + 40) additionalAttributes];
      [v75 setDeferredProcessingCandidateOptions:{objc_msgSend(v75, "deferredProcessingCandidateOptions") | 8}];

      if ((*(v1 + 134) & 1) != 0 && !*(v1 + 104))
      {
        [*(*(*(v1 + 120) + 8) + 40) setDeferredProcessingNeeded:10];
      }
    }

    [*(*(*(v1 + 120) + 8) + 40) synchronizeWithPersistedFileSystemAttributes];
    goto LABEL_82;
  }

LABEL_71:
  if (*(v1 + 133) == 1)
  {
    goto LABEL_72;
  }

LABEL_82:
  if ((v94 & 1) != 0 && (v35 & 1) == 0)
  {
    [*(*(*(v1 + 120) + 8) + 40) setVideoDeferredProcessingNeeded:1];
  }

  if ([*(*(*(v1 + 120) + 8) + 40) isPhoto])
  {
    if ([*(v1 + 32) _setupPhotoAsset:*(*(*(v1 + 120) + 8) + 40) withURL:*(v1 + 64) isPlaceholder:*(v1 + 133) hasVideoComplementResource:v71 & 1])
    {
      goto LABEL_95;
    }

LABEL_102:
    v89 = PLMigrationGetLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = [*(v1 + 64) path];
      *buf = 138543362;
      v109 = v90;
      _os_log_impl(&dword_19BF1F000, v89, OS_LOG_TYPE_ERROR, "Unable to add %{public}@.", buf, 0xCu);
    }

    [*(*(*(v1 + 120) + 8) + 40) deleteFromDatabaseOnly];
    v91 = *(*(v1 + 120) + 8);
    v87 = *(v91 + 40);
    *(v91 + 40) = 0;
  }

  else
  {
    if ([*(*(*(v1 + 120) + 8) + 40) isVideo])
    {
      if ([*(v1 + 32) _setupVideoAsset:*(*(*(v1 + 120) + 8) + 40) withURL:*(v1 + 64)])
      {
        goto LABEL_95;
      }

      goto LABEL_102;
    }

    v76 = [*(v1 + 64) pathExtension];
    v77 = [PLManagedAsset isValidFileExtensionForImport:v76];

    if (!v77)
    {
      goto LABEL_102;
    }

    v78 = PLMigrationGetLog();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = [*(v1 + 64) path];
      *buf = 138543362;
      v109 = v79;
      _os_log_impl(&dword_19BF1F000, v78, OS_LOG_TYPE_ERROR, "Unknown asset, importing as an unknown type:%{public}@", buf, 0xCu);
    }

    if (([*(v1 + 32) _setupUnknownAsset:*(*(*(v1 + 120) + 8) + 40) withURL:*(v1 + 64)] & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_95:
    [*(*(*(v1 + 120) + 8) + 40) setLocationFromPersistedAttributes:*(v1 + 112)];
    [*(v1 + 32) setModificationAndCreationDateOnAsset:*(*(*(v1 + 120) + 8) + 40) withURL:*(v1 + 64)];
    if (*(v1 + 135) == 1)
    {
      v80 = [*(*(v1 + 32) + 8) libraryServicesManager];
      v81 = [v80 modelMigrator];
      [v81 fixPossiblyIncorrectAddedDateForAsset:*(*(*(v1 + 120) + 8) + 40)];
    }

    if ([*(*(*(v1 + 120) + 8) + 40) deferredProcessingNeeded] || objc_msgSend(*(*(*(v1 + 120) + 8) + 40), "videoDeferredProcessingNeeded"))
    {
      v82 = [*(*(*(v1 + 120) + 8) + 40) photoLibrary];
      v83 = [v82 libraryServicesManager];
      v84 = [v83 backgroundJobService];
      v85 = [*(*(*(v1 + 120) + 8) + 40) photoLibrary];
      v86 = +[PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:videoDeferredProcessingNeeded:](PLBackgroundJobWorkerTypes, "typesMaskForDeferredProcessingNeeded:videoDeferredProcessingNeeded:", [*(*(*(v1 + 120) + 8) + 40) deferredProcessingNeeded], objc_msgSend(*(*(*(v1 + 120) + 8) + 40), "videoDeferredProcessingNeeded"));
      [v84 signalBackgroundProcessingNeededOnLibrary:v85 workerTypes:v86];
    }

    [MEMORY[0x1E69BF230] persistUInt16:0 forKey:*MEMORY[0x1E69BFD50] fileURL:*(v1 + 64)];
    v87 = PLMigrationGetLog();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = [*(v1 + 64) path];
      *buf = 138543362;
      v109 = v88;
      _os_log_impl(&dword_19BF1F000, v87, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: DONE - remove progress flag: %{public}@", buf, 0xCu);
    }
  }
}

void __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke_67(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id __96__PLFileSystemAssetImporter_addAssetWithURLs_assetPayload_forceInsert_forceUpdate_fixAddedDate___block_invoke_69(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (id)assetURLisInDatabase:(id)database deferredPreviewURL:(id)l
{
  databaseCopy = database;
  lCopy = l;
  if ([(NSMutableDictionary *)self->_existingUUIDsByUppercasePath count])
  {
    v8 = [(NSString *)self->_libraryBundlePath length];
    path = [databaseCopy path];
    v10 = path;
    if (lCopy)
    {
      path2 = [lCopy path];
    }

    else
    {
      path2 = path;
    }

    v13 = path2;
    stringByResolvingSymlinksInPath = [path2 stringByResolvingSymlinksInPath];

    v15 = [stringByResolvingSymlinksInPath hasPrefix:self->_libraryBundlePath];
    v12 = 0;
    if ([v10 length] > v8 && v15)
    {
      if (lCopy)
      {
        lastPathComponent = [v10 lastPathComponent];
        pathManager = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
        uRLByDeletingLastPathComponent = [databaseCopy URLByDeletingLastPathComponent];
        path3 = [uRLByDeletingLastPathComponent path];
        v20 = [pathManager assetAbbreviatedMetadataDirectoryForDirectory:path3 type:32 bundleScope:0];

        v21 = [v20 stringByAppendingPathComponent:lastPathComponent];
      }

      else
      {
        v21 = [stringByResolvingSymlinksInPath substringFromIndex:v8 + 1];
      }

      uppercaseString = [v21 uppercaseString];

      v12 = [(NSMutableDictionary *)self->_existingUUIDsByUppercasePath objectForKey:uppercaseString];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_addAssetWithURL:(id)l existingOID:(id)d assetUUID:(id)iD isPlaceholder:(BOOL)placeholder
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  v13 = objc_autoreleasePoolPush();
  photoLibrary = self->_photoLibrary;
  if (dCopy)
  {
    v15 = [PLManagedAsset assetWithObjectID:dCopy inLibrary:photoLibrary];
    if (v15)
    {
      v16 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = [PLManagedAsset assetWithUUID:iDCopy inLibrary:photoLibrary];
    if (v17)
    {
      v16 = v17;
      v18 = PLMigrationGetLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
LABEL_21:

        goto LABEL_22;
      }

      path = [lCopy path];
      *buf = 138543618;
      v41 = path;
      v42 = 2114;
      v43 = iDCopy;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "addAssetWithURLs: EXISTING ASSET (%{public}@ [%{public}@]) (UUID already inserted by asset creation request?)", buf, 0x16u);
LABEL_20:

      goto LABEL_21;
    }
  }

  managedObjectContext = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v16 = [(PLManagedObject *)PLManagedAsset insertInManagedObjectContext:managedObjectContext];

  if (!v16)
  {
LABEL_22:
    objc_autoreleasePoolPop(v13);
    v34 = 0;
    goto LABEL_23;
  }

LABEL_8:
  v21 = iDCopy;
  v22 = v13;
  lastPathComponent = [lCopy lastPathComponent];
  [v16 setFilename:lastPathComponent];

  filename = [v16 filename];
  [v16 setOriginalFilename:filename];

  pathManager = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path2 = [uRLByDeletingLastPathComponent path];
  v28 = [pathManager assetAbbreviatedMetadataDirectoryForDirectory:path2 type:32 bundleScope:0];
  [v16 setDirectory:v28];

  v13 = v22;
  iDCopy = v21;
  if (!placeholder)
  {
    v39 = 0;
    v29 = *MEMORY[0x1E695DB50];
    v38 = 0;
    v30 = [lCopy getResourceValue:&v39 forKey:v29 error:&v38];
    path = v39;
    v18 = v38;
    if (v30)
    {
      if (path)
      {
        [v16 setOriginalFilesize:{objc_msgSend(path, "unsignedLongLongValue")}];

        goto LABEL_12;
      }

      v35 = PLMigrationGetLog();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v35 = PLMigrationGetLog();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        [v16 deleteFromDatabaseOnly];
        goto LABEL_20;
      }
    }

    path3 = [lCopy path];
    *buf = 138412546;
    v41 = path3;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Unable to get file size for %@: %@", buf, 0x16u);

    goto LABEL_19;
  }

LABEL_12:
  pathExtension = [lCopy pathExtension];
  v32 = [PLManagedAsset isKnownFileExtension:pathExtension];

  if (v32)
  {
    pathExtension2 = [lCopy pathExtension];
    [v16 setUniformTypeIdentifierFromPathExtension:pathExtension2];
  }

  [v16 updateAssetKindFromUniformTypeIdentifier];
  objc_autoreleasePoolPop(v13);
  v16 = v16;
  v34 = v16;
LABEL_23:

  return v34;
}

- (void)dealloc
{
  if ([(NSMutableIndexSet *)self->_thumbIndexes count])
  {
    [PLThumbnailIndexes recycleThumbnailIndexes:self->_thumbIndexes inLibrary:self->_photoLibrary];
  }

  v3.receiver = self;
  v3.super_class = PLFileSystemAssetImporter;
  [(PLFileSystemAssetImporter *)&v3 dealloc];
}

- (id)libraryBundlePathWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  isUBF = [pathManager isUBF];

  if (isUBF)
  {
    pathManager2 = [libraryCopy pathManager];
    v7 = pathManager2;
    v8 = 4;
  }

  else
  {
    if (PLIsEDUMode())
    {
      v7 = NSHomeDirectory();
      v9 = [v7 stringByAppendingPathComponent:@"Media"];
      goto LABEL_7;
    }

    pathManager2 = [libraryCopy pathManager];
    v7 = pathManager2;
    v8 = 1;
  }

  v9 = [pathManager2 photoDirectoryWithType:v8];
LABEL_7:
  v10 = v9;

  return v10;
}

- (PLFileSystemAssetImporter)initWithPhotoLibrary:(id)library libraryServicesManager:(id)manager
{
  libraryCopy = library;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = PLFileSystemAssetImporter;
  v10 = [(PLFileSystemAssetImporter *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, library);
    if (!managerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PLFileSystemAssetImporter.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
    }

    objc_storeWeak(&v11->_libraryServicesManager, managerCopy);
    v12 = [(PLFileSystemAssetImporter *)v11 libraryBundlePathWithPhotoLibrary:libraryCopy];
    libraryBundlePath = v11->_libraryBundlePath;
    v11->_libraryBundlePath = v12;

    managedObjectContextStoreUUID = [libraryCopy managedObjectContextStoreUUID];
    photoLibraryStoreUUID = v11->_photoLibraryStoreUUID;
    v11->_photoLibraryStoreUUID = managedObjectContextStoreUUID;

    v11->_thumbnailBatchFetchSize = 50;
  }

  return v11;
}

@end