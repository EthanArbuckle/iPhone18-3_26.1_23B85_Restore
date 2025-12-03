@interface PLPairingProcessor
- (BOOL)_copyFromURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)_copyResourceOfType:(unsigned int)type onAsset:(id)asset toType:(unsigned int)toType onAsset:(id)onAsset error:(id *)error;
- (BOOL)processPairingForFetchRequest:(id)request inContext:(id)context error:(id *)error;
- (BOOL)updatePrimaryAsset:(id)asset andRemoveAssetIfPossible:(id)possible;
- (PLPairingProcessor)init;
- (void)_deleteResourceOfType:(unsigned int)type forAsset:(id)asset verifyInserted:(BOOL)inserted deleteFile:(BOOL)file;
@end

@implementation PLPairingProcessor

- (void)_deleteResourceOfType:(unsigned int)type forAsset:(id)asset verifyInserted:(BOOL)inserted deleteFile:(BOOL)file
{
  fileCopy = file;
  insertedCopy = inserted;
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v10 = _originalResourceOfType(assetCopy, type);
  v11 = v10;
  if (v10 && (!insertedCopy || [v10 isInserted]))
  {
    [v11 deleteResource];
  }

  if (fileCopy)
  {
    v12 = _pathForResourceType(assetCopy, type);
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      v15 = [defaultManager removeItemAtURL:v13 error:&v18];
      v16 = v18;

      if ((v15 & 1) == 0)
      {
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v13;
          v21 = 2112;
          v22 = v16;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Error trying to clean up copy at %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error trying to clean up copy at %@: path was nil", buf, 0xCu);
      }
    }
  }
}

- (BOOL)updatePrimaryAsset:(id)asset andRemoveAssetIfPossible:(id)possible
{
  v40 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  possibleCopy = possible;
  hasAdjustments = [possibleCopy hasAdjustments];
  if ((hasAdjustments & 1) == 0)
  {
    albums = [possibleCopy albums];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [albums countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(albums);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          if ([v13 kindValue] == 2)
          {
            mutableAssets = [v13 mutableAssets];
            v15 = [mutableAssets indexOfObject:possibleCopy];
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [mutableAssets insertObject:assetCopy atIndex:v15];
            }
          }
        }

        v10 = [albums countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v10);
    }

    addedDate = [possibleCopy addedDate];
    [addedDate timeIntervalSinceReferenceDate];
    v18 = v17;
    addedDate2 = [assetCopy addedDate];
    [addedDate2 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 > v21)
    {
      importSession = [possibleCopy importSession];
      [assetCopy setImportSession:importSession];

      importSession2 = [assetCopy importSession];
      [importSession2 updateImportDatesFromAddedAsset:assetCopy];
    }

    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      additionalAttributes = [possibleCopy additionalAttributes];
      originalFilename = [additionalAttributes originalFilename];
      *buf = 138412290;
      v38 = originalFilename;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "PLPairing: deleting asset %@", buf, 0xCu);
    }

    v27 = MEMORY[0x1E696AEC0];
    uuid = [possibleCopy uuid];
    uuid2 = [assetCopy uuid];
    v30 = [v27 stringWithFormat:@"Asset (%@) was paired as a resource of another asset (%@)", uuid, uuid2];
    v31 = [PLAssetTransactionReason transactionReason:v30];
    [possibleCopy deleteWithReason:v31];
  }

  return hasAdjustments ^ 1;
}

- (BOOL)_copyFromURL:(id)l toURL:(id)rL error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = lCopy;
    v23 = 2112;
    v24 = rLCopy;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "PLPairing: copying %@ to %@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v11 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = *MEMORY[0x1E69BFDE8];
    v19 = 0;
    v14 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:rLCopy inDomain:v13 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = rLCopy;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to strip extended attributes from %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v22 = lCopy;
      v23 = 2112;
      v24 = rLCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error trying to copy %@ to %@: %@", buf, 0x20u);
    }
  }

  if (error)
  {
    v17 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)_copyResourceOfType:(unsigned int)type onAsset:(id)asset toType:(unsigned int)toType onAsset:(id)onAsset error:(id *)error
{
  v9 = *&toType;
  v51 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  onAssetCopy = onAsset;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__60370;
  v43 = __Block_byref_object_dispose__60371;
  v44 = 0;
  v12 = _originalResourceOfType(assetCopy, type);
  v13 = v12;
  if (v12)
  {
    fileURL = [v12 fileURL];
    if (fileURL)
    {
      pathManager = [assetCopy pathManager];
      if ([pathManager isUBF])
      {
        v30 = objc_alloc(MEMORY[0x1E69BF298]);
        uuid = [onAssetCopy uuid];
        uniformTypeIdentifier = [v13 uniformTypeIdentifier];
        identifier = [uniformTypeIdentifier identifier];
        fileURL2 = [v13 fileURL];
        lastPathComponent = [fileURL2 lastPathComponent];
        uuid2 = [v30 initWithAssetUuid:uuid bundleScope:0 uti:identifier resourceVersion:0 resourceType:v9 recipeID:0 originalFilename:lastPathComponent customSuffix:0];

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __71__PLPairingProcessor__copyResourceOfType_onAsset_toType_onAsset_error___block_invoke;
        v35[3] = &unk_1E756E8C0;
        v36 = fileURL;
        selfCopy = self;
        v38 = &v39;
        [pathManager obtainAccessAndWaitWithFileWithIdentifier:uuid2 mode:2 toURLWithHandler:v35];
        v21 = v36;
      }

      else
      {
        v21 = _pathForResourceType(onAssetCopy, v9);
        if (v21)
        {
          v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
          v28 = PLBackendGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v48 = fileURL;
            v49 = 2112;
            v50 = v27;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "PLPairing: copying %@ to %@", buf, 0x16u);
          }

          v34 = 0;
          [(PLPairingProcessor *)self _copyFromURL:fileURL toURL:v27 error:&v34];
          uuid2 = v34;
        }

        else
        {
          uuid2 = 0;
        }
      }
    }

    else
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A278];
      v46[0] = @"Couldn't get file URL.";
      v45[0] = v24;
      v45[1] = @"Resource Object Id";
      pathManager = [v13 objectID];
      v46[1] = pathManager;
      v45[2] = @"Asset UUID";
      uuid2 = [assetCopy uuid];
      v46[2] = uuid2;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
      v25 = [v23 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v21];
      v26 = v40[5];
      v40[5] = v25;
    }

    v22 = v40[5] == 0;
  }

  else
  {
    v22 = 0;
  }

  if (error)
  {
    *error = v40[5];
  }

  _Block_object_dispose(&v39, 8);
  return v22;
}

void __71__PLPairingProcessor__copyResourceOfType_onAsset_toType_onAsset_error___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = a1[4];
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "PLPairing: copying %@ to %@", buf, 0x16u);
    }

    v10 = a1[4];
    v9 = a1[5];
    v11 = *(a1[6] + 8);
    v14 = *(v11 + 40);
    [v9 _copyFromURL:v10 toURL:v5 error:&v14];
    v12 = v14;
    v13 = (v11 + 40);
  }

  else
  {
    v13 = (*(a1[6] + 8) + 40);
    v12 = a3;
  }

  objc_storeStrong(v13, v12);
}

- (BOOL)processPairingForFetchRequest:(id)request inContext:(id)context error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  if ((!MEMORY[0x19EAEE520]() || (PLIsAssetsd() & 1) == 0) && (PLIsReallyAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPairing.m" lineNumber:168 description:{@"%@: Only do pairing in server", v28}];

    if (requestCopy)
    {
      goto LABEL_5;
    }

LABEL_24:
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E69BFF48];
    v45 = *MEMORY[0x1E696A278];
    v46 = @"Couldn't make a request for assets with live photo group UUIDs in the library.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v17 = [v29 errorWithDomain:v30 code:41003 userInfo:v14];
    goto LABEL_25;
  }

  if (!requestCopy)
  {
    goto LABEL_24;
  }

LABEL_5:
  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __68__PLPairingProcessor_processPairingForFetchRequest_inContext_error___block_invoke;
  v42[3] = &unk_1E75781C0;
  v42[4] = self;
  v12 = dictionary;
  v43 = v12;
  v33 = contextCopy;
  v35 = requestCopy;
  v13 = [contextCopy enumerateObjectsFromFetchRequest:requestCopy count:&v44 batchSize:100 usingBlock:v42];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v36 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v14 objectForKeyedSubscript:v19];
        if ([v21 count] >= 2)
        {
          v22 = v17;
          while (1)
          {
            v23 = [(PLPairingProcessor *)self firstGroupFromAssets:v21];
            if (!v23)
            {
              break;
            }

            v24 = v23;
            v37 = v22;
            v25 = [(PLPairingProcessor *)self combinePair:v23 error:&v37];
            v17 = v37;

            if (v25)
            {
              [(PLPairingProcessor *)self setDeferredProcessingIfNescessaryForAsset:v25];
            }

            allValues = [v24 allValues];
            [v21 removeObjectsInArray:allValues];

            v22 = v17;
            if ([v21 count] <= 1)
            {
              goto LABEL_18;
            }
          }

          v17 = v22;
        }

LABEL_18:

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  error = errorCopy;
  requestCopy = v35;
  contextCopy = v33;
LABEL_25:

  if (error)
  {
    v31 = v17;
    *error = v17;
  }

  return v17 == 0;
}

void __68__PLPairingProcessor_processPairingForFetchRequest_inContext_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) groupIDForAsset:?];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

- (PLPairingProcessor)init
{
  v6.receiver = self;
  v6.super_class = PLPairingProcessor;
  v2 = [(PLPairingProcessor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForUserLibrary"), 0}];
    locatedInUsersPhotoLibrary = v2->_locatedInUsersPhotoLibrary;
    v2->_locatedInUsersPhotoLibrary = v3;
  }

  return v2;
}

@end