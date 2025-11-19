@interface PLFileSystemAssetImporter
- (BOOL)_setupAdjustmentsFromAdjustmentFileForAsset:(id)a3;
- (BOOL)_setupPhotoAsset:(id)a3 withURL:(id)a4 unknownType:(BOOL)a5 isPlaceholder:(BOOL)a6 hasVideoComplementResource:(BOOL)a7;
- (BOOL)_setupPhotoAssetAsPhotoIrisIfNeeded:(id)a3 hasVideoComplementResource:(BOOL)a4;
- (BOOL)_setupVideoAsset:(id)a3 withURL:(id)a4;
- (PLFileSystemAssetImporter)initWithPhotoLibrary:(id)a3 libraryServicesManager:(id)a4;
- (id)_addAssetWithURL:(id)a3 existingOID:(id)a4 assetUUID:(id)a5 isPlaceholder:(BOOL)a6;
- (id)_assetAdjustmentsIfExistsForAsset:(id)a3;
- (id)addAssetWithURLs:(id)a3 assetPayload:(id)a4 forceInsert:(BOOL)a5 forceUpdate:(BOOL)a6 fixAddedDate:(BOOL)a7;
- (id)assetURLisInDatabase:(id)a3 deferredPreviewURL:(id)a4;
- (id)libraryBundlePathWithPhotoLibrary:(id)a3;
- (unint64_t)nextThumbnailIndex;
- (void)addAvailableThumbnailIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setModificationAndCreationDateOnAsset:(id)a3 withURL:(id)a4;
@end

@implementation PLFileSystemAssetImporter

- (unint64_t)nextThumbnailIndex
{
  thumbIndexes = self->_thumbIndexes;
  if (!thumbIndexes)
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_thumbIndexes;
    self->_thumbIndexes = v4;

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
    v9 = [(NSMutableIndexSet *)self->_thumbIndexes firstIndex];
    [(NSMutableIndexSet *)self->_thumbIndexes removeIndex:v9];
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

  return v9;
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

- (void)addAvailableThumbnailIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    thumbIndexes = self->_thumbIndexes;
    if (!thumbIndexes)
    {
      v7 = [MEMORY[0x1E696AD50] indexSet];
      v8 = self->_thumbIndexes;
      self->_thumbIndexes = v7;

      thumbIndexes = self->_thumbIndexes;
    }

    [(NSMutableIndexSet *)thumbIndexes addIndex:a3];
  }
}

- (BOOL)_setupVideoAsset:(id)a3 withURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 setVideoInfoFromFileAtURL:v7 mainFileMetadata:0 fullSizeRenderURL:0 overwriteOriginalProperties:1];
  if (v8)
  {
    v9 = [v6 migrateLegacyVideoAdjustments];
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v6 setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:0];
    }

    v11 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v7];
    v12 = [v11 dataForKey:*MEMORY[0x1E69BFDA8]];
    v13 = [v11 stringForKey:*MEMORY[0x1E69BFDB8]];
    v14 = [MEMORY[0x1E69BF238] fileManager];
    if (v12)
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 uuid];
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "setupVideoAsset: Setting up adjustment from extended attributes for asset: %@", &v22, 0xCu);
      }

      [PLImageWriter setAdjustmentsForNewVideo:v6 mainFileMetadata:0 withAdjustmentsDictionary:0 cameraAdjustments:v12 renderedContentPath:v13 renderedPosterFramePreviewPath:0 finalAssetSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      goto LABEL_21;
    }

    if (v10)
    {
      v17 = [v6 pathForAdjustmentFile];
      if (([v14 fileExistsAtPath:v17] & 1) == 0)
      {
        v18 = PLMigrationGetLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          if (v19)
          {
            v20 = [v6 pathForLegacySlalomRegionsArchive];
            v22 = 138412546;
            v23 = v20;
            v24 = 2112;
            v25 = v17;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "setupVideoAsset: failed to migrate %@ to %@", &v22, 0x16u);
          }
        }

        else if (v19)
        {
          v22 = 138412290;
          v23 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "setupVideoAsset: failed to create default adjustments at %@", &v22, 0xCu);
        }
      }
    }

    else if ([(PLFileSystemAssetImporter *)self _setupAdjustmentsFromAdjustmentFileForAsset:v6])
    {
      goto LABEL_21;
    }

    [v6 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
LABEL_21:
  }

  return v8;
}

- (BOOL)_setupPhotoAsset:(id)a3 withURL:(id)a4 unknownType:(BOOL)a5 isPlaceholder:(BOOL)a6 hasVideoComplementResource:(BOOL)a7
{
  v7 = a7;
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = objc_autoreleasePoolPush();
  if (a5)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69C0718]);
    v16 = [v11 photoLibrary];
    v17 = [v16 libraryBundle];
    v18 = [v17 timeZoneLookup];
    v14 = [v15 initWithImageURL:v12 contentType:0 options:12 timeZoneLookup:v18 cacheImageSource:1 cacheImageData:0];

    if ([v11 setImageInfoFromImageMetadata:v14 overwriteOriginalProperties:1])
    {
      [(PLFileSystemAssetImporter *)self _setupPhotoAssetAsPhotoIrisIfNeeded:v11 hasVideoComplementResource:v7];
      if ([v14 cgImageMetadata])
      {
        [v11 setFaceRegionsFromImageMetadata:{objc_msgSend(v14, "cgImageMetadata")}];
      }
    }
  }

  if (!-[PLFileSystemAssetImporter _setupAdjustmentsFromAdjustmentFileForAsset:](self, "_setupAdjustmentsFromAdjustmentFileForAsset:", v11) || ([v11 additionalAttributes], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "unmanagedAdjustment"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v21 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v12];
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
      [PLImageWriter setAdjustmentsForNewPhoto:v11 mainFileMetadata:v14 cameraAdjustmentData:v22 adjustmentDataPath:0 filteredImagePath:v24 cameraMetadata:0 finalAssetSize:*MEMORY[0x1E695F060] isSubstandardRender:*(MEMORY[0x1E695F060] + 8), v27];
    }

    else
    {

      *buf = 0;
      v21 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v12];
      [v21 getUInt16:buf forKey:*MEMORY[0x1E69BFD10]];
    }
  }

  if (!a5)
  {
    [v11 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
  }

  objc_autoreleasePoolPop(v13);
  return 1;
}

- (BOOL)_setupAdjustmentsFromAdjustmentFileForAsset:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLFileSystemAssetImporter *)self _assetAdjustmentsIfExistsForAsset:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 adjustmentTimestamp];

    if (!v7)
    {
      v8 = [v4 dateCreated];
      [v6 setAdjustmentTimestamp:v8];
    }

    v9 = [MEMORY[0x1E69BF238] fileManager];
    v35 = 0;
    v33 = v9;
    if ([v4 isPhoto])
    {
      v10 = [v4 pathForBestAvailableFullsizeRenderImageFileOutIsSubstandard:&v35];
      if (v10)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
      }

      else
      {
        v11 = 0;
      }

      v15 = [v4 pathForPenultimateFullsizeRenderImageFile];
      if (v15 && [v9 fileExistsAtPath:v15])
      {
        v34 = 0;
        v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v15 options:1 error:&v34];
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
            v37 = v15;
            v38 = 2112;
            v39 = v23;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "PLFileSystemAssetImporter: Unable to read data from file '%@'. %@", buf, 0x16u);
          }

          v21 = 0;
        }

        v9 = v33;
      }

      else
      {
        v21 = 0;
      }

      if ([v4 isPhotoIris])
      {
        v25 = [v4 pathForFullsizeRenderVideoFile];
        v26 = v9;
        v27 = v26;
        buf[0] = 0;
        if (v25 && [v26 fileExistsAtPath:v25 isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25 isDirectory:0];
        }

        else
        {
          v20 = 0;
        }

        v28 = [v4 pathForPenultimateFullsizeRenderVideoFile];
        v29 = v27;
        v30 = v29;
        buf[0] = 0;
        if (v28 && [v29 fileExistsAtPath:v28 isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28 isDirectory:0];
        }

        else
        {
          v19 = 0;
        }

        [v4 setPlaybackStyle:3];
        [v4 setPlaybackVariationAndLoopingStyleFromAdjustmentRenderTypes:{objc_msgSend(v6, "adjustmentRenderTypes")}];
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
      if (![v4 isVideo])
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
        [v4 setAdjustments:v6 options:v31];

        goto LABEL_42;
      }

      v12 = [v4 pathForFullsizeRenderVideoFile];
      v13 = v9;
      v14 = v13;
      buf[0] = 0;
      if (v12 && [v13 fileExistsAtPath:v12 isDirectory:buf] && (buf[0] & 1) == 0)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
      }

      else
      {
        v11 = 0;
      }

      v15 = [v4 pathForPenultimateFullsizeRenderVideoFile];
      v16 = v14;
      v17 = v16;
      buf[0] = 0;
      if (v15 && [v16 fileExistsAtPath:v15 isDirectory:buf] && (buf[0] & 1) == 0)
      {
        v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0];
      }

      else
      {
        v18 = 0;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v10 = v15;
    }

    goto LABEL_41;
  }

LABEL_42:

  return v6 != 0;
}

- (id)_assetAdjustmentsIfExistsForAsset:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pathForAdjustmentFile];
  v5 = [MEMORY[0x1E69BF238] fileManager];
  v6 = v4;
  v7 = v5;
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
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v3 pathForAdjustmentDataFile];
      v15 = [v13 fileExistsAtPath:v14];

      if (v15)
      {
        v16 = MEMORY[0x1E695DEF0];
        v17 = [v3 pathForAdjustmentDataFile];
        v12 = [v16 dataWithContentsOfFile:v17 options:1 error:0];
      }

      else
      {
        v12 = 0;
      }
    }

    v29 = v11;
    v30 = v9;
    v31 = v3;
    v19 = objc_alloc(MEMORY[0x1E69C0660]);
    v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0980]];
    v21 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0990]];
    v22 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0968]];
    v23 = [v22 integerValue];
    v24 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0978]];
    v25 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0998]];
    v18 = [v19 initWithFormatIdentifier:v20 formatVersion:v21 data:v12 baseVersion:v23 editorBundleID:v24 renderTypes:{objc_msgSend(v25, "unsignedIntValue")}];

    v26 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C09A0]];
    if (v26)
    {
      [v18 setAdjustmentTimestamp:v26];
    }

    v9 = v30;
    v3 = v31;
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

- (BOOL)_setupPhotoAssetAsPhotoIrisIfNeeded:(id)a3 hasVideoComplementResource:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([v7 isPhoto] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLFileSystemAssetImporter.m" lineNumber:717 description:@"expect photo asset"];
  }

  if (([v7 isPhotoIris] & 1) == 0)
  {
    if ([v7 videoCpDurationValue])
    {
      [v7 setKindSubtype:2];
      if ([v7 canPlayPhotoIris])
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      if ([v7 playbackStyle] != v9)
      {
        [v7 setPlaybackStyle:v9];
      }

      goto LABEL_17;
    }

    if (!v4)
    {
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    v10 = [v7 pathForVideoComplementFile];
    v11 = [v7 mainFileURL];
    v8 = 0;
    if (!v11 || !v10)
    {
LABEL_24:

      goto LABEL_18;
    }

    v12 = objc_alloc(MEMORY[0x1E69C0918]);
    v13 = [v11 path];
    v14 = [v12 initWithPathToVideo:v10 pathToImage:v13];

    v15 = [v14 pairingIdentifier];
    v16 = v15;
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
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    if (BYTE12(v24))
    {
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
      v22 = v24;
      v23 = v25;
      v20 = v26;
      v21 = v27;
      v8 = [v7 becomePhotoIrisWithMediaGroupUUID:v16 mainFileMetadata:0 videoURL:v18 videoDuration:&v22 stillDisplayTime:&v20 options:0];

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

- (void)setModificationAndCreationDateOnAsset:(id)a3 withURL:(id)a4
{
  v31 = a3;
  v5 = a4;
  v6 = [v31 modificationDate];

  v7 = [v31 dateCreated];

  v8 = [v31 additionalAttributes];
  v9 = [v8 exifTimestampString];

  v10 = [v31 additionalAttributes];
  v11 = [v10 timeZoneName];
  if (v11)
  {
    v12 = [v31 additionalAttributes];
    v13 = [v12 timeZoneOffset];
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v6 || !v7 || !v9 || v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69C0718]);
    v16 = [v31 photoLibrary];
    v17 = [v16 libraryBundle];
    v18 = [v17 timeZoneLookup];
    v19 = [v15 initWithMediaURL:v5 timeZoneLookup:v18];

    if (v6)
    {
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = [v19 fileSystemProperties];
      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
      [v31 setModificationDate:v26];

      if (v7)
      {
LABEL_10:
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    v27 = [v19 utcCreationDate];
    [v31 setDateCreated:v27];

    LOWORD(v27) = [v19 creationDateSource];
    v28 = [v31 additionalAttributes];
    [v28 setDateCreatedSource:v27];

    if (v9)
    {
LABEL_11:
      if (!v14)
      {
LABEL_13:
        v24 = [v31 dateCreated];
        [v24 timeIntervalSinceReferenceDate];
        [v31 setSortToken:?];

        goto LABEL_14;
      }

LABEL_12:
      v20 = [v19 timeZoneName];
      v21 = [v31 additionalAttributes];
      [v21 setTimeZoneName:v20];

      v22 = [v19 timeZoneOffset];
      v23 = [v31 additionalAttributes];
      [v23 setTimeZoneOffset:v22];

      goto LABEL_13;
    }

LABEL_19:
    v29 = [v19 creationDateString];
    v30 = [v31 additionalAttributes];
    [v30 setExifTimestampString:v29];

    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (id)addAssetWithURLs:(id)a3 assetPayload:(id)a4 forceInsert:(BOOL)a5 forceUpdate:(BOOL)a6 fixAddedDate:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v207 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (v8 && v7)
  {
    v130 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot call addAssetWithURLs with both forceInsert and forceUpdate" userInfo:0];
    objc_exception_throw(v130);
  }

  v154 = v12;
  v13 = [v12 payloadID];
  v14 = [v13 payloadIDString];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v7;
  }

  v152 = v15;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  v189 = 0;
  v190 = &v189;
  v191 = 0x3032000000;
  v192 = __Block_byref_object_copy__25088;
  v193 = __Block_byref_object_dispose__25089;
  v194 = 0;
  v17 = [PLPhotoLibrary masterURLFromSidecarURLs:v11];
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
  v21 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  LODWORD(v19) = [v21 isUBF];

  v149 = v16 || v152;
  if (!v19)
  {
    v158 = [v159 UUIDStringForKey:*MEMORY[0x1E69BFE68]];
    if (v14)
    {
      v27 = v14;

      v158 = v27;
    }

    [v159 getInt32:&v184 forKey:*MEMORY[0x1E69BFDC8]];
    v147 = [PLImageWriter semanticEnhanceSceneIsValid:v184];
    if ([PLImageWriter isDeferredPhotoPreviewURL:v20])
    {
      v28 = [v157 objectValue];
      v29 = [v28 isDeferredPhotoProxy];

      if (v29)
      {
        v30 = [v157 objectValue];
        v31 = [v30 deferredPhotoProcessingIdentifier];
      }

      else
      {
        v31 = 0;
      }

      v156 = v31;
      v145 = v31 != 0 || v147;
      if (v31 != 0 || v147)
      {
        v32 = [v20 pathExtension];
        v155 = [PLImageWriter finalizedAssetURLForDeferredPhotoPreviewURL:v20 extension:v32];

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v20 path];
          v35 = [v155 path];
          location = 138412802;
          *location_4 = v34;
          *&location_4[8] = 2114;
          *&location_4[10] = v156;
          v197 = 2112;
          v198 = v35;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: Found deferred photo preview: %@ with identifier %{public}@ for base asset %@", &location, 0x20u);
        }
      }

      else
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [v20 path];
          v38 = v37;
          v39 = @"missing";
          if (v29)
          {
            v39 = @"has";
          }

          location = 138412546;
          *location_4 = v37;
          *&location_4[8] = 2112;
          *&location_4[10] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "addAssetWithURLs: Found unsupported deferred photo preview: %@ %@ proxy flag, missing identifier. Adding as regular asset", &location, 0x16u);
        }

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v40 = [v20 path];
          location = 138412290;
          *location_4 = v40;
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
        v44 = [v20 path];
        location = 138543362;
        *location_4 = v44;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: spatial over capture cannot be imported without original asset resource: %{public}@, skipping", &location, 0xCu);
      }

      v149 = 0;
    }

    v22 = [v20 pathExtension];
    if ([PLPhotoLibrary isAdjustmentEnvelopeExtension:v22])
    {
      v45 = PLMigrationGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v20 path];
        location = 138543362;
        *location_4 = v46;
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import adjustment envelope as asset primary assetURL: %{public}@, skipping", &location, 0xCu);
      }

      goto LABEL_41;
    }

    if (v188 != 1)
    {

      goto LABEL_73;
    }

    if (![PLPhotoLibrary isVideoFileExtension:v22])
    {
      v179 = 31;
      [v159 getUInt16:&v179 forKey:*MEMORY[0x1E69BFE10]];
      if (v179 == 4)
      {
        v53 = PLMigrationGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v20 path];
          location = 138543362;
          *location_4 = v54;
          _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import alternate image as asset primary assetURL: %{public}@, skipping", &location, 0xCu);
        }

        goto LABEL_41;
      }

      goto LABEL_73;
    }

    v47 = [v154 mediaGroupUUID];
    if (v47)
    {
      goto LABEL_71;
    }

    v47 = [v159 stringForKey:*MEMORY[0x1E69BFDE0]];
    if (v47)
    {
      goto LABEL_71;
    }

    v48 = [MEMORY[0x1E6987E28] assetWithURL:v20];
    v49 = PFVideoComplementMetadataForVideoAVAssetPreloadingValues();
    v141 = [v49 pairingIdentifier];
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

    if (v141)
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
              v52 = [v20 path];
              location = 138543362;
              *location_4 = v52;
              _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Found invalid still display time on video complement: %{public}@", &location, 0xCu);
            }
          }

          v47 = v141;
LABEL_70:

          if (!v47)
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
          if (![PLManagedAsset isOrphanedMediaGroupUUID:v47])
          {
            v86 = PLMigrationGetLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v87 = [v20 path];
              location = 138412546;
              *location_4 = v47;
              *&location_4[8] = 2114;
              *&location_4[10] = v87;
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

      v55 = [v143 playbackVariation];
      v56 = [v55 unsignedIntegerValue] == 0;

      if (v56)
      {
        v57 = PLMigrationGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v20 path];
          location = 138543618;
          *location_4 = v141;
          *&location_4[8] = 2114;
          *&location_4[10] = v58;
          _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Video with media group ID %{public}@ does not have playback variation, nor valid still & video duration %{public}@", &location, 0x16u);
        }
      }
    }

    v47 = 0;
    goto LABEL_70;
  }

  v22 = [MEMORY[0x1E69BF298] fileIdentifierForValidOriginalURL:v20];
  v23 = [v22 uuid];
  [v22 resourceType];
  [v22 resourceVersion];
  [v22 recipeId];
  v158 = v23;
  if (PLResourceTypeIsAllowedForUseInFilename())
  {
    v24 = PLMigrationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v22 resourceType];
      v26 = [v20 path];
      location = 67109378;
      *location_4 = v25;
      *&location_4[4] = 2114;
      *&location_4[6] = v26;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "addAssetWithURLs: cannot import allowed resource with type %d as asset primary assetURL: %{public}@, skipping", &location, 0x12u);
    }

    v155 = 0;
    v156 = 0;
LABEL_41:

LABEL_92:
    v77 = [v11 allObjects];
    v78 = [v77 _pl_map:&__block_literal_global_25122];

    if (v188)
    {
      v79 = PLMigrationGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [v20 path];
        location = 138543618;
        *location_4 = v80;
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
        v81 = [v20 path];
        location = 138543618;
        *location_4 = v81;
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
  v60 = [v20 path];
  v61 = [v59 fileLengthForFilePath:v60] == 0;

  if (v61)
  {
    v22 = PLMigrationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v85 = [v20 path];
      location = 138543362;
      *location_4 = v85;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_FAULT, "addAssetWithURLs: attempting to import zero size primary assetURL: %{public}@, skipping", &location, 0xCu);
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
      v63 = [v20 path];
      location = 138543362;
      *location_4 = v63;
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
      v67 = [v20 path];
      location = 138543618;
      *location_4 = v67;
      *&location_4[8] = 2114;
      *&location_4[10] = v158;
      _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "addAssetWithURLs: ERROR - previously tried this URL and failed: %{public}@ [%{public}@])", &location, 0x16u);
    }

    v149 = 0;
  }

  v142 = [v20 lastPathComponent];
  v68 = [v20 URLByDeletingLastPathComponent];
  v140 = [v68 path];

  v69 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  v144 = [PLManagedAsset pathForAdjustmentFileWithPathManager:v69 bundleScope:0 uuid:v158 directory:v140 filename:v142];

  v70 = [MEMORY[0x1E696AC08] defaultManager];
  v71 = [v70 fileExistsAtPath:v144];

  if (v71)
  {
    v72 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v144];
    v73 = v72;
    if (v72 && ([v72 objectForKeyedSubscript:*MEMORY[0x1E69BF370]], v74 = objc_claimAutoreleasedReturnValue(), v75 = v74 == 0, v74, v75))
    {
      v88 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
      v89 = [PLManagedAsset pathForAdjustmentDataFileWithPathManager:v88 bundleScope:0 uuid:v158 directory:v140 filename:v142];

      v90 = [MEMORY[0x1E696AC08] defaultManager];
      v91 = [v90 fileExistsAtPath:v89];

      if ((v91 & 1) == 0)
      {
        v92 = PLMigrationGetLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v93 = [v20 path];
          location = 138543618;
          *location_4 = v93;
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
    v98 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
    v99 = [v98 isUBF];

    if (v99)
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
        v103 = [v138 path];
        location = 138543618;
        *location_4 = v103;
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
            v106 = [MEMORY[0x1E69BF320] UUIDString];
            [MEMORY[0x1E69BF230] persistUUIDString:v106 forKey:*MEMORY[0x1E69BFE68] fileURL:v20];
            v107 = PLMigrationGetLog();
            v158 = v106;
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              v108 = [v138 path];
              location = 138543874;
              *location_4 = v108;
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
            v105 = [v138 path];
            location = 138543618;
            *location_4 = v105;
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
            v110 = [v138 path];
            location = 138543874;
            *location_4 = v110;
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
  v113 = [v20 path];
  v114 = [v112 fileExistsAtPath:v113];

  if (!v114)
  {
    v128 = PLMigrationGetLog();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v129 = [v20 path];
      location = 138543362;
      *location_4 = v129;
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
    v116 = [v138 path];
    photoLibraryStoreUUID = self->_photoLibraryStoreUUID;
    v150 = [(NSMutableSet *)self->_existingUUIDs containsObject:v97];
    v118 = [(PLFileSystemAssetImporter *)self assetURLisInDatabase:v138 deferredPreviewURL:v137];
    location = 138544898;
    *location_4 = v116;
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
    v121 = [v20 path];
    location = 67109378;
    *location_4 = v120 + 1;
    *&location_4[4] = 2114;
    *&location_4[6] = v121;
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
  v167 = v14;
  v168 = v154;
  v169 = v11;
  v170 = v157;
  v146 = v156;
  v171 = v146;
  v177 = v147;
  v174 = v184;
  v172 = v159;
  v178 = a7;
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
      v126 = [v190[5] avalancheUUID];
      if (v126)
      {
        v127 = [v190[5] avalanchePickTypeIsVisible];

        if ((v127 & 1) == 0)
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

- (id)assetURLisInDatabase:(id)a3 deferredPreviewURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableDictionary *)self->_existingUUIDsByUppercasePath count])
  {
    v8 = [(NSString *)self->_libraryBundlePath length];
    v9 = [v6 path];
    v10 = v9;
    if (v7)
    {
      v11 = [v7 path];
    }

    else
    {
      v11 = v9;
    }

    v13 = v11;
    v14 = [v11 stringByResolvingSymlinksInPath];

    v15 = [v14 hasPrefix:self->_libraryBundlePath];
    v12 = 0;
    if ([v10 length] > v8 && v15)
    {
      if (v7)
      {
        v16 = [v10 lastPathComponent];
        v17 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
        v18 = [v6 URLByDeletingLastPathComponent];
        v19 = [v18 path];
        v20 = [v17 assetAbbreviatedMetadataDirectoryForDirectory:v19 type:32 bundleScope:0];

        v21 = [v20 stringByAppendingPathComponent:v16];
      }

      else
      {
        v21 = [v14 substringFromIndex:v8 + 1];
      }

      v22 = [v21 uppercaseString];

      v12 = [(NSMutableDictionary *)self->_existingUUIDsByUppercasePath objectForKey:v22];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_addAssetWithURL:(id)a3 existingOID:(id)a4 assetUUID:(id)a5 isPlaceholder:(BOOL)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  photoLibrary = self->_photoLibrary;
  if (v11)
  {
    v15 = [PLManagedAsset assetWithObjectID:v11 inLibrary:photoLibrary];
    if (v15)
    {
      v16 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = [PLManagedAsset assetWithUUID:v12 inLibrary:photoLibrary];
    if (v17)
    {
      v16 = v17;
      v18 = PLMigrationGetLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
LABEL_21:

        goto LABEL_22;
      }

      v19 = [v10 path];
      *buf = 138543618;
      v41 = v19;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "addAssetWithURLs: EXISTING ASSET (%{public}@ [%{public}@]) (UUID already inserted by asset creation request?)", buf, 0x16u);
LABEL_20:

      goto LABEL_21;
    }
  }

  v20 = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v16 = [(PLManagedObject *)PLManagedAsset insertInManagedObjectContext:v20];

  if (!v16)
  {
LABEL_22:
    objc_autoreleasePoolPop(v13);
    v34 = 0;
    goto LABEL_23;
  }

LABEL_8:
  v21 = v12;
  v22 = v13;
  v23 = [v10 lastPathComponent];
  [v16 setFilename:v23];

  v24 = [v16 filename];
  [v16 setOriginalFilename:v24];

  v25 = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  v26 = [v10 URLByDeletingLastPathComponent];
  v27 = [v26 path];
  v28 = [v25 assetAbbreviatedMetadataDirectoryForDirectory:v27 type:32 bundleScope:0];
  [v16 setDirectory:v28];

  v13 = v22;
  v12 = v21;
  if (!a6)
  {
    v39 = 0;
    v29 = *MEMORY[0x1E695DB50];
    v38 = 0;
    v30 = [v10 getResourceValue:&v39 forKey:v29 error:&v38];
    v19 = v39;
    v18 = v38;
    if (v30)
    {
      if (v19)
      {
        [v16 setOriginalFilesize:{objc_msgSend(v19, "unsignedLongLongValue")}];

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

    v36 = [v10 path];
    *buf = 138412546;
    v41 = v36;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Unable to get file size for %@: %@", buf, 0x16u);

    goto LABEL_19;
  }

LABEL_12:
  v31 = [v10 pathExtension];
  v32 = [PLManagedAsset isKnownFileExtension:v31];

  if (v32)
  {
    v33 = [v10 pathExtension];
    [v16 setUniformTypeIdentifierFromPathExtension:v33];
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

- (id)libraryBundlePathWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 pathManager];
  v5 = [v4 isUBF];

  if (v5)
  {
    v6 = [v3 pathManager];
    v7 = v6;
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

    v6 = [v3 pathManager];
    v7 = v6;
    v8 = 1;
  }

  v9 = [v6 photoDirectoryWithType:v8];
LABEL_7:
  v10 = v9;

  return v10;
}

- (PLFileSystemAssetImporter)initWithPhotoLibrary:(id)a3 libraryServicesManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = PLFileSystemAssetImporter;
  v10 = [(PLFileSystemAssetImporter *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, a3);
    if (!v9)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:v11 file:@"PLFileSystemAssetImporter.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
    }

    objc_storeWeak(&v11->_libraryServicesManager, v9);
    v12 = [(PLFileSystemAssetImporter *)v11 libraryBundlePathWithPhotoLibrary:v8];
    libraryBundlePath = v11->_libraryBundlePath;
    v11->_libraryBundlePath = v12;

    v14 = [v8 managedObjectContextStoreUUID];
    photoLibraryStoreUUID = v11->_photoLibraryStoreUUID;
    v11->_photoLibraryStoreUUID = v14;

    v11->_thumbnailBatchFetchSize = 50;
  }

  return v11;
}

@end