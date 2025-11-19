@interface PLPairingProcessor
- (BOOL)_copyFromURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)_copyResourceOfType:(unsigned int)a3 onAsset:(id)a4 toType:(unsigned int)a5 onAsset:(id)a6 error:(id *)a7;
- (BOOL)processPairingForFetchRequest:(id)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)updatePrimaryAsset:(id)a3 andRemoveAssetIfPossible:(id)a4;
- (PLPairingProcessor)init;
- (void)_deleteResourceOfType:(unsigned int)a3 forAsset:(id)a4 verifyInserted:(BOOL)a5 deleteFile:(BOOL)a6;
@end

@implementation PLPairingProcessor

- (void)_deleteResourceOfType:(unsigned int)a3 forAsset:(id)a4 verifyInserted:(BOOL)a5 deleteFile:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = _originalResourceOfType(v9, a3);
  v11 = v10;
  if (v10 && (!v7 || [v10 isInserted]))
  {
    [v11 deleteResource];
  }

  if (v6)
  {
    v12 = _pathForResourceType(v9, a3);
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      v15 = [v14 removeItemAtURL:v13 error:&v18];
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

- (BOOL)updatePrimaryAsset:(id)a3 andRemoveAssetIfPossible:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 hasAdjustments];
  if ((v7 & 1) == 0)
  {
    v8 = [v6 albums];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          if ([v13 kindValue] == 2)
          {
            v14 = [v13 mutableAssets];
            v15 = [v14 indexOfObject:v6];
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v14 insertObject:v5 atIndex:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v10);
    }

    v16 = [v6 addedDate];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = [v5 addedDate];
    [v19 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 > v21)
    {
      v22 = [v6 importSession];
      [v5 setImportSession:v22];

      v23 = [v5 importSession];
      [v23 updateImportDatesFromAddedAsset:v5];
    }

    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v6 additionalAttributes];
      v26 = [v25 originalFilename];
      *buf = 138412290;
      v38 = v26;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "PLPairing: deleting asset %@", buf, 0xCu);
    }

    v27 = MEMORY[0x1E696AEC0];
    v28 = [v6 uuid];
    v29 = [v5 uuid];
    v30 = [v27 stringWithFormat:@"Asset (%@) was paired as a resource of another asset (%@)", v28, v29];
    v31 = [PLAssetTransactionReason transactionReason:v30];
    [v6 deleteWithReason:v31];
  }

  return v7 ^ 1;
}

- (BOOL)_copyFromURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "PLPairing: copying %@ to %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v11 = [v10 copyItemAtURL:v7 toURL:v8 error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = *MEMORY[0x1E69BFDE8];
    v19 = 0;
    v14 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:v8 inDomain:v13 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v8;
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
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error trying to copy %@ to %@: %@", buf, 0x20u);
    }
  }

  if (a5)
  {
    v17 = v12;
    *a5 = v12;
  }

  return v12 == 0;
}

- (BOOL)_copyResourceOfType:(unsigned int)a3 onAsset:(id)a4 toType:(unsigned int)a5 onAsset:(id)a6 error:(id *)a7
{
  v9 = *&a5;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v33 = a6;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__60370;
  v43 = __Block_byref_object_dispose__60371;
  v44 = 0;
  v12 = _originalResourceOfType(v11, a3);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 fileURL];
    if (v14)
    {
      v15 = [v11 pathManager];
      if ([v15 isUBF])
      {
        v30 = objc_alloc(MEMORY[0x1E69BF298]);
        v31 = [v33 uuid];
        v16 = [v13 uniformTypeIdentifier];
        v17 = [v16 identifier];
        v18 = [v13 fileURL];
        v19 = [v18 lastPathComponent];
        v20 = [v30 initWithAssetUuid:v31 bundleScope:0 uti:v17 resourceVersion:0 resourceType:v9 recipeID:0 originalFilename:v19 customSuffix:0];

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __71__PLPairingProcessor__copyResourceOfType_onAsset_toType_onAsset_error___block_invoke;
        v35[3] = &unk_1E756E8C0;
        v36 = v14;
        v37 = self;
        v38 = &v39;
        [v15 obtainAccessAndWaitWithFileWithIdentifier:v20 mode:2 toURLWithHandler:v35];
        v21 = v36;
      }

      else
      {
        v21 = _pathForResourceType(v33, v9);
        if (v21)
        {
          v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
          v28 = PLBackendGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v48 = v14;
            v49 = 2112;
            v50 = v27;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "PLPairing: copying %@ to %@", buf, 0x16u);
          }

          v34 = 0;
          [(PLPairingProcessor *)self _copyFromURL:v14 toURL:v27 error:&v34];
          v20 = v34;
        }

        else
        {
          v20 = 0;
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
      v15 = [v13 objectID];
      v46[1] = v15;
      v45[2] = @"Asset UUID";
      v20 = [v11 uuid];
      v46[2] = v20;
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

  if (a7)
  {
    *a7 = v40[5];
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

- (BOOL)processPairingForFetchRequest:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ((!MEMORY[0x19EAEE520]() || (PLIsAssetsd() & 1) == 0) && (PLIsReallyAssetsd() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = NSStringFromSelector(a2);
    [v27 handleFailureInMethod:a2 object:self file:@"PLPairing.m" lineNumber:168 description:{@"%@: Only do pairing in server", v28}];

    if (v9)
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

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v34 = a5;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __68__PLPairingProcessor_processPairingForFetchRequest_inContext_error___block_invoke;
  v42[3] = &unk_1E75781C0;
  v42[4] = self;
  v12 = v11;
  v43 = v12;
  v33 = v10;
  v35 = v9;
  v13 = [v10 enumerateObjectsFromFetchRequest:v9 count:&v44 batchSize:100 usingBlock:v42];
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

            v26 = [v24 allValues];
            [v21 removeObjectsInArray:v26];

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

  a5 = v34;
  v9 = v35;
  v10 = v33;
LABEL_25:

  if (a5)
  {
    v31 = v17;
    *a5 = v17;
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