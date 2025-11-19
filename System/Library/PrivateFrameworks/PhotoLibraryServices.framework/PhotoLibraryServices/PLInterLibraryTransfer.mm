@interface PLInterLibraryTransfer
- (BOOL)_copyContextualVideoThumbnailsFrom:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5 error:(id *)a6;
- (BOOL)_copyFileFrom:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_copyFilesFromSourceAsset:(id)a3 toDestinationAsset:(id)a4 objectMap:(id)a5 filesCopied:(id)a6 error:(id *)a7;
- (BOOL)_copyMasterThumbnailFrom:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5 error:(id *)a6;
- (BOOL)_deleteAsset:(id)a3;
- (BOOL)_loadLibrariesWithError:(id *)a3;
- (BOOL)_shouldSkipRelationship:(id)a3;
- (BOOL)_shouldSkipTransferWithSourceAsset:(id)a3 destinationAsset:(id)a4;
- (BOOL)transferAssetWithUuid:(id)a3 error:(id *)a4;
- (BOOL)transferFaceCropWithUuid:(id)a3 error:(id *)a4;
- (BOOL)transferPersonWithUuid:(id)a3 error:(id *)a4;
- (PLInterLibraryTransfer)initWithSourceBundle:(id)a3 destinationBundle:(id)a4 options:(id)a5;
- (PLInterLibraryTransfer)initWithSourceLibrary:(id)a3 destinationLibrary:(id)a4 options:(id)a5;
- (id)_copyObject:(id)a3 toDestinationObject:(id)a4 toLibrary:(id)a5 objectMap:(id)a6;
- (id)_createNewObjectWithEntity:(id)a3 attributes:(id)a4 inLibrary:(id)a5;
- (id)_dedupedDestinationAssetWithSourceAsset:(id)a3 destinationLibrary:(id)a4;
- (id)_loadAssetWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5;
- (id)_loadDestinationLibraryWithError:(id *)a3;
- (id)_loadFaceCropWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5;
- (id)_loadObjectWithEntityName:(id)a3 withValues:(id)a4 forKeyPaths:(id)a5 fromLibrary:(id)a6 error:(id *)a7;
- (id)_loadPersonWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5;
- (id)_loadSourceLibraryWithError:(id *)a3;
- (id)_sourceAttributesFromObject:(id)a3;
- (void)_copyRelationship:(id)a3 fromObject:(id)a4 toObject:(id)a5 inLibrary:(id)a6 objectMap:(id)a7;
- (void)_initFileManager;
- (void)_setAttributes:(id)a3 onObject:(id)a4;
- (void)_setRelationship:(id)a3 origin:(id)a4 target:(id)a5;
- (void)_transferThumbnailsForSourceAsset:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5;
- (void)_validateSourceAsset:(id)a3 destinationAsset:(id)a4;
- (void)_validateSourceFaceCrop:(id)a3 destinationFaceCrop:(id)a4;
- (void)_validateSourcePerson:(id)a3 destinationPerson:(id)a4;
@end

@implementation PLInterLibraryTransfer

- (void)_validateSourceFaceCrop:(id)a3 destinationFaceCrop:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:960 description:{@"Invalid parameter not satisfying: %@", @"sourceFaceCrop"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:961 description:{@"Invalid parameter not satisfying: %@", @"destinationFaceCrop"}];

LABEL_3:
}

- (void)_validateSourcePerson:(id)a3 destinationPerson:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:954 description:{@"Invalid parameter not satisfying: %@", @"sourcePerson"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:955 description:{@"Invalid parameter not satisfying: %@", @"destinationPerson"}];

LABEL_3:
}

- (void)_validateSourceAsset:(id)a3 destinationAsset:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:930 description:{@"Invalid parameter not satisfying: %@", @"sourceAsset"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"destinationAsset"}];

LABEL_3:
  v10 = [v9 mainFileURL];

  if (!v10)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__80721;
    v33 = __Block_byref_object_dispose__80722;
    v34 = 0;
    v11 = [v7 photoLibrary];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __64__PLInterLibraryTransfer__validateSourceAsset_destinationAsset___block_invoke;
    v26 = &unk_1E7578910;
    v28 = &v29;
    v27 = v7;
    [v11 performBlockAndWait:&v23];

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v9 objectID];
    v14 = [v9 uuid];
    v15 = [v9 directory];
    v16 = [v9 filename];
    v17 = [v12 stringWithFormat:@"Destination objectID: %@, UUID: %@, directory: %@, filename: %@", v13, v14, v15, v16, v23, v24, v25, v26];

    v18 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = v30[5];
      *buf = 138543618;
      v36 = v19;
      v37 = 2114;
      v38 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_FAULT, "Unexpected nil destination mainFileURL when transferring assets. %{public}@ %{public}@", buf, 0x16u);
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil destination mainFileURL when transferring assets. %@ %@", v30[5], v17];
    [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Unexpected nil destination mainFileURL when transferring assets" radarDescription:v20];

    _Block_object_dispose(&v29, 8);
  }
}

void __64__PLInterLibraryTransfer__validateSourceAsset_destinationAsset___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v11 = [*(a1 + 32) objectID];
  v3 = [*(a1 + 32) uuid];
  v4 = [*(a1 + 32) directory];
  v5 = [*(a1 + 32) filename];
  v6 = [*(a1 + 32) isDeleted];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v2 stringWithFormat:@"Source objectID: %@, UUID: %@, directory: %@, filename: %@, isDeleted: isDeleted %@", v11, v3, v4, v5, v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)_transferThumbnailsForSourceAsset:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v8 = [v6 hasMasterThumb];
  v9 = [v6 hasTableThumbs];
  v10 = [v7 count];

  v11 = [v6 uuid];
  v12 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v25 = 138544386;
    v26 = v11;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = v9;
    v31 = 2048;
    v32 = [v6 effectiveThumbnailIndex];
    v33 = 1024;
    v34 = v10 == 1;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Asset %{public}@ hasMasterThumb:%d, hasTableThumbs:%d effectiveThumbnailIndex:%tu hasSourceMasterThumbOnly:%d", &v25, 0x28u);
  }

  if ((v9 | v8))
  {
    if (v9)
    {
      [v6 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if (v10 == 1)
    {
      v13 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v25 = 138543362;
        v26 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Building table thumbs for asset %{public}@", &v25, 0xCu);
      }

      v14 = objc_alloc_init(PLTableThumbnailMigrator);
      v15 = MEMORY[0x1E69BF310];
      v16 = [v6 photoLibrary];
      v17 = [v16 pathManager];
      v18 = [v15 tableThumbnailFormatsForConfigPhase:1 withPathManager:v17];

      v19 = [v6 photoLibrary];
      [(PLTableThumbnailMigrator *)v14 rebuildTableThumbForAsset:v6 inLibrary:v19 toTableFormats:v18];
    }

    else
    {
      [v6 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
    }

    v20 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 hasMasterThumb];
      v22 = [v6 hasTableThumbs];
      v23 = [v6 effectiveThumbnailIndex];
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = @"NSNotFound";
      }

      else
      {
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "effectiveThumbnailIndex")}];
      }

      v25 = 138544130;
      v26 = v11;
      v27 = 1024;
      v28 = v21;
      v29 = 1024;
      v30 = v22;
      v31 = 2114;
      v32 = v24;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "DONE  rebuilding thumbnails for asset %{public}@: hasMasterThumb:%d hasTableThumbs:%d effectiveThumbnailIndex:%{public}@", &v25, 0x22u);
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }
    }
  }
}

- (BOOL)_copyFileFrom:(id)a3 to:(id)a4 error:(id *)a5
{
  v60[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v8 path];
    v12 = [v9 path];
    *buf = 138412546;
    v54 = v11;
    v55 = 2112;
    v56 = v12;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "BEGIN copying file from %@ to %@", buf, 0x16u);
  }

  fileManager = self->_fileManager;
  v14 = [v9 path];
  v15 = [v14 stringByDeletingLastPathComponent];
  v52 = 0;
  v16 = [(NSFileManager *)fileManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v52];
  v17 = v52;

  if (!v16)
  {
    v25 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v17;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "ERROR creating intermediate directories: %@", buf, 0xCu);
    }

    if (a5)
    {
      v26 = v17;
      v20 = 0;
      v24 = 0;
      *a5 = v17;
      goto LABEL_31;
    }

    v20 = 0;
    goto LABEL_30;
  }

  v18 = self->_fileManager;
  v51 = 0;
  v19 = [(NSFileManager *)v18 copyItemAtURL:v8 toURL:v9 error:&v51];
  v20 = v51;
  if (!v19)
  {
    if (PLErrorOrUnderlyingErrorHasDomainAndCode())
    {
      v60[0] = *MEMORY[0x1E695DB50];
      v27 = v60[0];
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      v29 = [v9 resourceValuesForKeys:v28 error:0];
      v30 = [v29 objectForKey:v27];

      v59 = v27;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      v32 = [v8 resourceValuesForKeys:v31 error:0];
      v33 = [v32 objectForKey:v27];

      LODWORD(v32) = [v30 isEqualToNumber:v33];
      v34 = PLInterLibraryTransferGetLog();
      v35 = v34;
      if (v32)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v36 = [v9 path];
          *buf = 138412290;
          v54 = v36;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "File already exists at destination path %@", buf, 0xCu);
        }

        goto LABEL_5;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v54 = v33;
        v55 = 2114;
        v56 = v30;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_INFO, "File sizes don't match source=%{public}@ dest=%{public}@. Will overwrite.", buf, 0x16u);
      }

      v37 = self->_fileManager;
      v50 = 0;
      v38 = [(NSFileManager *)v37 removeItemAtURL:v9 error:&v50];
      v39 = v50;
      if (v38)
      {

        v40 = self->_fileManager;
        v49 = 0;
        v41 = [(NSFileManager *)v40 copyItemAtURL:v8 toURL:v9 error:&v49];
        v20 = v49;

        if (v41)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v42 = PLInterLibraryTransferGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [v9 path];
          *buf = 138412546;
          v54 = v43;
          v55 = 2112;
          v56 = v39;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Unable to remove file for overwrite at path %@ error %@", buf, 0x16u);
        }
      }
    }

    v44 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v8 path];
      v46 = [v9 path];
      *buf = 138412802;
      v54 = v45;
      v55 = 2112;
      v56 = v46;
      v57 = 2112;
      v58 = v20;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "ERROR copying file from %@ to %@: %@", buf, 0x20u);
    }

    if (a5)
    {
      v47 = v20;
      v24 = 0;
      *a5 = v20;
      goto LABEL_31;
    }

LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

LABEL_5:
  v21 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v8 path];
    v23 = [v9 path];
    *buf = 138412546;
    v54 = v22;
    v55 = 2112;
    v56 = v23;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "DONE  copying file from %@ to %@", buf, 0x16u);
  }

  v24 = 1;
LABEL_31:

  return v24;
}

- (BOOL)_copyContextualVideoThumbnailsFrom:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__80721;
  v49 = __Block_byref_object_dispose__80722;
  v50 = 0;
  v13 = [v10 photoLibrary];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke;
  v42[3] = &unk_1E7578910;
  v44 = &v45;
  v14 = v10;
  v43 = v14;
  [v13 performBlockAndWait:v42];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__80721;
  v36 = __Block_byref_object_dispose__80722;
  v37 = 0;
  v15 = [v11 photoLibrary];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke_2;
  v28[3] = &unk_1E7578870;
  v30 = &v38;
  v16 = v11;
  v29 = v16;
  v31 = &v32;
  [v15 performBlockAndWait:v28];

  if (v39[3])
  {
    if ([v46[5] count])
    {
      v17 = [v16 photoLibrary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke_3;
      v21[3] = &unk_1E7572800;
      v25 = &v45;
      v26 = &v38;
      v22 = v16;
      v23 = self;
      v24 = v12;
      v27 = &v32;
      [v17 performBlockAndWait:v21];

      v18 = *(v39 + 24);
      v19 = v33[5];
      if ((v18 & 1) == 0 && a6)
      {
        v19 = v19;
        *a6 = v19;
      }

      LOBYTE(a6) = *(v39 + 24);
    }

    else
    {
      LOBYTE(a6) = 1;
    }
  }

  else if (a6)
  {
    *a6 = v33[5];
    LOBYTE(a6) = *(v39 + 24);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v45, 8);
  return a6 & 1;
}

void __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextualVideoThumbnailURLs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v6 = 0;
  v3 = [v2 deleteContextualVideoThumbnailFilesWithError:&v6];
  v4 = v6;
  v5 = v6;
  *(*(a1[5] + 8) + 24) = v3;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void __98__PLInterLibraryTransfer__copyContextualVideoThumbnailsFrom_toDestinationAsset_filesCopied_error___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(*(*(a1 + 56) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138412290;
    v17 = v3;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [PLPrimaryResourceDataStore contextualVideoThumbnailIdentifierFromFileURL:v7, v17];
        if (v8)
        {
          v9 = v8;
          v10 = [*(a1 + 32) writableFileURLForContextualVideoThumbnailIdentifier:v8];
          if (v10)
          {
            v11 = *(a1 + 40);
            v19 = 0;
            v12 = [v11 _copyFileFrom:v7 to:v10 error:&v19];
            v13 = v19;
            *(*(*(a1 + 64) + 8) + 24) = v12;
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              v14 = PLInterLibraryTransferGetLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v25 = v7;
                v26 = 2112;
                v27 = v10;
                v28 = 2112;
                v29 = v13;
                _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "ERROR copy CVT file from %@ to %@ failed: %@", buf, 0x20u);
              }

              v15 = *(*(a1 + 72) + 8);
              v16 = *(v15 + 40);
              *(v15 + 40) = v13;

              goto LABEL_19;
            }

            [*(a1 + 48) addObject:v7];
          }
        }

        else
        {
          v9 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v25 = v7;
            _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to get thumbnailIdentifier from %@", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (BOOL)_copyMasterThumbnailFrom:(id)a3 toDestinationAsset:(id)a4 filesCopied:(id)a5 error:(id *)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__80721;
  v43 = __Block_byref_object_dispose__80722;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__80721;
  v37 = __Block_byref_object_dispose__80722;
  v38 = 0;
  v13 = [v10 photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88__PLInterLibraryTransfer__copyMasterThumbnailFrom_toDestinationAsset_filesCopied_error___block_invoke;
  v29[3] = &unk_1E7578870;
  v31 = &v33;
  v14 = v10;
  v30 = v14;
  v32 = &v39;
  [v13 performBlockAndWait:v29];

  if (v40[5])
  {
    v15 = [v11 masterThumbnailFileURLIfLocal];
    v16 = v40[5];
    v28 = 0;
    v17 = [(PLInterLibraryTransfer *)self _copyFileFrom:v16 to:v15 error:&v28];
    v18 = v28;
    if (v17)
    {
      [v12 addObject:v15];
      v19 = 1;
      goto LABEL_10;
    }

    v24 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v40[5];
      *buf = 138412802;
      v48 = v25;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v18;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "ERROR copy master thumbnail file from %@ to %@ failed: %@", buf, 0x20u);
    }
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A278];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Master thumbnail file URL missing for asset %@", v34[5]];
    v46 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v18 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:70002 userInfo:v22];

    v15 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = v34[5];
      *buf = 138543362;
      v48 = v23;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "ERROR missing master thumbnail URL from source asset %{public}@", buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_10:

  if (a6)
  {
    v26 = v18;
    *a6 = v18;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v19;
}

void __88__PLInterLibraryTransfer__copyMasterThumbnailFrom_toDestinationAsset_filesCopied_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) masterThumbnailFileURLIfLocal];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_copyFilesFromSourceAsset:(id)a3 toDestinationAsset:(id)a4 objectMap:(id)a5 filesCopied:(id)a6 error:(id *)a7
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v65 = a4;
  v12 = a5;
  v66 = a6;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__80721;
  v85 = __Block_byref_object_dispose__80722;
  v86 = 0;
  v13 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v14 = [v11 photoLibrary];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __99__PLInterLibraryTransfer__copyFilesFromSourceAsset_toDestinationAsset_objectMap_filesCopied_error___block_invoke;
  v76[3] = &unk_1E75778C0;
  v80 = &v81;
  v63 = v11;
  v77 = v63;
  v62 = v12;
  v78 = v62;
  v68 = v13;
  v79 = v68;
  [v14 performBlockAndWait:v76];

  [v65 modernResources];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  obj = v73 = 0u;
  v15 = [obj countByEnumeratingWithState:&v72 objects:v95 count:16];
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *v73;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v73 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v72 + 1) + 8 * i);
      v19 = [v68 objectForKey:v18];
      v20 = [v18 fileURL];
      v21 = v20;
      if (v19)
      {
        v22 = v20 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        if (!(v19 | v20))
        {
          v25 = PLInterLibraryTransferGetLog();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          *buf = 138412290;
          v90 = v18;
          v27 = v25;
          v28 = OS_LOG_TYPE_DEBUG;
          v29 = "skipping resource: both source and dest file URLs are nil for %@";
          v30 = 12;
          goto LABEL_22;
        }

        if (!v20 || (-[PLInterLibraryTransfer options](self, "options"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 ignoreMissingSourceFileURLs], v23, !v24))
        {
          v47 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = v82[5];
            *buf = 138543874;
            v90 = v48;
            v91 = 2112;
            v92 = v19;
            v93 = 2112;
            v94 = v21;
            _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "copy file URL missing for asset %{public}@: source %@ dest %@", buf, 0x20u);
          }

          v49 = @"destination";
          if (!v19)
          {
            v49 = @"source";
          }

          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ file URL missing for asset %@", v49, v82[5], v62];
          v50 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A278];
          v88 = v25;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v52 = [v50 errorWithDomain:*MEMORY[0x1E69BFF48] code:70002 userInfo:v51];
          if (a7)
          {
            v52 = v52;
            *a7 = v52;
          }

          goto LABEL_50;
        }

        v25 = PLInterLibraryTransferGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = v82[5];
          *buf = 138543618;
          v90 = v26;
          v91 = 2112;
          v92 = v21;
          v27 = v25;
          v28 = OS_LOG_TYPE_ERROR;
          v29 = "ignoring sourceFileURL missing for asset %{public}@, dest %@";
          v30 = 22;
LABEL_22:
          _os_log_impl(&dword_19BF1F000, v27, v28, v29, buf, v30);
        }
      }

      else
      {
        v71 = 0;
        v31 = [(PLInterLibraryTransfer *)self _copyFileFrom:v19 to:v20 error:&v71];
        v32 = v71;
        v25 = v32;
        if (v31)
        {
          [v66 addObject:v21];
          if ([v18 copyPurgeabilityFromFileURL:v19])
          {
            goto LABEL_29;
          }

          v33 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = [v18 fileURL];
            v35 = [v34 path];
            *buf = 138412290;
            v90 = v35;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to update purgeability of resource at %@", buf, 0xCu);
          }
        }

        else
        {
          v36 = [(PLInterLibraryTransfer *)self options];
          if (![v36 ignoreMissingSourceFiles])
          {

LABEL_46:
            v54 = PLInterLibraryTransferGetLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v90 = v19;
              v91 = 2112;
              v92 = v21;
              v93 = 2112;
              v94 = v25;
              _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "copy file from %@ to %@ failed: %@", buf, 0x20u);
            }

            if (a7)
            {
              v55 = v25;
              *a7 = v25;
            }

LABEL_50:

            v56 = obj;
            goto LABEL_55;
          }

          HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();

          if (!HasDomainAndCode)
          {
            goto LABEL_46;
          }

          v38 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = v82[5];
            *buf = 138543618;
            v90 = v39;
            v91 = 2112;
            v92 = v19;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_INFO, "      skipped missing source file for asset %{public}@ URL: %@", buf, 0x16u);
          }

          v33 = v25;
          v25 = 0;
        }
      }

LABEL_29:
    }

    v15 = [obj countByEnumeratingWithState:&v72 objects:v95 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v70 = 0;
  v40 = [(PLInterLibraryTransfer *)self _copyMasterThumbnailFrom:v63 toDestinationAsset:v65 filesCopied:v66 error:&v70];
  v41 = v70;
  v19 = v41;
  if (v40)
  {

    v69 = 0;
    v42 = [(PLInterLibraryTransfer *)self _copyContextualVideoThumbnailsFrom:v63 toDestinationAsset:v65 filesCopied:v66 error:&v69];
    v43 = v69;
    v19 = v43;
    if (v42)
    {

      [v65 persistMetadataToFilesystem];
      v44 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = v82[5];
        *buf = 138543362;
        v90 = v45;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEBUG, "DONE  copying files from source asset %{public}@", buf, 0xCu);
      }

      v46 = 1;
      goto LABEL_60;
    }

    if (a7)
    {
      v57 = v43;
LABEL_53:
      *a7 = v19;
    }
  }

  else if (a7)
  {
    v53 = v41;
    goto LABEL_53;
  }

  v56 = v19;
LABEL_55:

  v44 = PLInterLibraryTransferGetLog();
  v58 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
  v59 = a7;
  if (v58)
  {
    v60 = v82[5];
    if (a7)
    {
      v59 = *a7;
    }

    *buf = 138543618;
    v90 = v60;
    v91 = 2112;
    v92 = v59;
    _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "ERROR copying files from source asset %{public}@ %@", buf, 0x16u);
  }

  v46 = 0;
LABEL_60:

  _Block_object_dispose(&v81, 8);
  return v46;
}

void __99__PLInterLibraryTransfer__copyFilesFromSourceAsset_toDestinationAsset_objectMap_filesCopied_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "BEGIN copying files from source asset %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) modernResources];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 fileURL];
        if (v13)
        {
          v14 = [*(a1 + 40) objectForKey:v12];
          [*(a1 + 48) setObject:v13 forKey:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_setAttributes:(id)a3 onObject:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        if (v12)
        {
          [v6 setValue:v12 forKey:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_setRelationship:(id)a3 origin:(id)a4 target:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v13 isToMany];
  v10 = [v13 name];
  if (v9)
  {
    v11 = [v7 valueForKey:v10];

    if (v11)
    {
      [v11 addObject:v8];
      v10 = v11;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFA8] setWithObject:v8];
      v12 = [v13 name];
      [v7 setValue:v10 forKey:v12];
    }
  }

  else
  {
    [v7 setValue:v8 forKey:v10];
  }
}

- (void)_copyRelationship:(id)a3 fromObject:(id)a4 toObject:(id)a5 inLibrary:(id)a6 objectMap:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v42 = a4;
  v50 = a5;
  v44 = a6;
  v49 = a7;
  v43 = v12;
  v13 = [(PLInterLibraryTransfer *)self _shouldSkipRelationship:v12];
  v14 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (v13)
    {
      v15 = @" SKIP";
    }

    else
    {
      v15 = @"BEGIN";
    }

    obj = [v12 name];
    v47 = [v12 inverseRelationship];
    if ([v47 isToMany])
    {
      v16 = @"many";
    }

    else
    {
      v16 = @"1";
    }

    if ([v12 isToMany])
    {
      v17 = @"many";
    }

    else
    {
      v17 = @"1";
    }

    v18 = [v43 destinationEntity];
    v19 = [v18 name];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v42];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v50];
    *buf = 138544898;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = obj;
    *&buf[22] = 2114;
    v71 = v16;
    *v72 = 2114;
    *&v72[2] = v17;
    *&v72[10] = 2114;
    *&v72[12] = v19;
    v73 = 2112;
    v74 = v20;
    v75 = 2112;
    v76 = v21;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ copying relationship %{public}@ (%{public}@:%{public}@ %{public}@) from source %@ to dest %@", buf, 0x48u);
  }

  if (!v13)
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__80721;
    v67 = __Block_byref_object_dispose__80722;
    v68 = 0;
    v22 = [v42 managedObjectContext];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __84__PLInterLibraryTransfer__copyRelationship_fromObject_toObject_inLibrary_objectMap___block_invoke;
    v59[3] = &unk_1E7578820;
    v23 = v42;
    v60 = v23;
    v24 = v43;
    v61 = v24;
    v62 = &v63;
    [v22 performBlockAndWait:v59];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = v64[5];
    v25 = [obja countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v25)
    {
      v48 = *v56;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v55 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v71 = __Block_byref_object_copy__80721;
          *v72 = __Block_byref_object_dispose__80722;
          *&v72[8] = 0;
          v28 = [v23 managedObjectContext];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __84__PLInterLibraryTransfer__copyRelationship_fromObject_toObject_inLibrary_objectMap___block_invoke_138;
          v51[3] = &unk_1E7578820;
          v54 = buf;
          v52 = v23;
          v53 = v27;
          [v28 performBlockAndWait:v51];

          v29 = [v49 objectForKey:*(*&buf[8] + 40)];
          if (v29)
          {
            goto LABEL_23;
          }

          if ([v24 isToMany])
          {
            v30 = 0;
          }

          else
          {
            v31 = [v24 name];
            v30 = [v50 valueForKey:v31];
          }

          v29 = [(PLInterLibraryTransfer *)self _copyObject:*(*&buf[8] + 40) toDestinationObject:v30 toLibrary:v44 objectMap:v49];

          if (v29)
          {
LABEL_23:
            [(PLInterLibraryTransfer *)self _setRelationship:v24 origin:v50 target:v29];
            v32 = [v24 inverseRelationship];
            [(PLInterLibraryTransfer *)self _setRelationship:v32 origin:v29 target:v50];
          }

          _Block_object_dispose(buf, 8);
        }

        v25 = [obja countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v25);
    }

    v33 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v24 name];
      v35 = [v24 inverseRelationship];
      v36 = @"many";
      if ([v35 isToMany])
      {
        v37 = @"many";
      }

      else
      {
        v37 = @"1";
      }

      if (![v24 isToMany])
      {
        v36 = @"1";
      }

      v38 = [v24 destinationEntity];
      v39 = [v38 name];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v23];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v50];
      *buf = 138544642;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2114;
      v71 = v36;
      *v72 = 2114;
      *&v72[2] = v39;
      *&v72[10] = 2112;
      *&v72[12] = v40;
      v73 = 2112;
      v74 = v41;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "DONE  copying relationship %{public}@ (%{public}@:%{public}@ %{public}@) from source %@ to dest %@", buf, 0x3Eu);
    }

    _Block_object_dispose(&v63, 8);
  }
}

void __84__PLInterLibraryTransfer__copyRelationship_fromObject_toObject_inLibrary_objectMap___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  v4 = [v2 valueForKey:v3];

  if ([*(a1 + 40) isToMany])
  {
    v5 = [v4 allObjects];
    v6 = [v5 valueForKey:@"objectID"];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = [v4 objectID];
    v17[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

LABEL_6:
  v9 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 40) destinationEntity];
    v11 = [v10 name];
    v12 = [*(*(*(a1 + 48) + 8) + 40) count];
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "        %{public}@: %tu", &v13, 0x16u);
  }
}

void __84__PLInterLibraryTransfer__copyRelationship_fromObject_toObject_inLibrary_objectMap___block_invoke_138(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [v5 objectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_shouldSkipRelationship:(id)a3
{
  v5 = a3;
  v6 = [v5 isToMany];
  if (v6)
  {
    v3 = [v5 inverseRelationship];
    if ([v3 isToMany])
    {
      v7 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = [(PLInterLibraryTransfer *)self options];
  v9 = [v8 excludedEntityNames];
  v10 = [v5 destinationEntity];
  v11 = [v10 name];
  v7 = [v9 containsObject:v11];

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)_createNewObjectWithEntity:(id)a3 attributes:(id)a4 inLibrary:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 name];
    v19 = 138543362;
    v20 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "BEGIN creating new object with entity name %{public}@", &v19, 0xCu);
  }

  v13 = objc_alloc(MEMORY[0x1E695D620]);
  v14 = [v9 managedObjectContext];

  v15 = [v13 initWithEntity:v8 insertIntoManagedObjectContext:v14];
  [(PLInterLibraryTransfer *)self _setAttributes:v10 onObject:v15];

  v16 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 name];
    v19 = 138543618;
    v20 = v17;
    v21 = 2048;
    v22 = v15;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "DONE  creating new object with entity name %{public}@: %p", &v19, 0x16u);
  }

  return v15;
}

- (id)_copyObject:(id)a3 toDestinationObject:(id)a4 toLibrary:(id)a5 objectMap:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v10];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v11];
    *buf = 138543618;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "BEGIN copying source obj %{public}@ to dest %{public}@", buf, 0x16u);
  }

  v17 = [(PLInterLibraryTransfer *)self _sourceAttributesFromObject:v10];
  v18 = MEMORY[0x1E695D5B8];
  v19 = [v10 entity];
  v20 = [v19 name];
  v21 = [v12 managedObjectContext];
  v22 = [v18 entityForName:v20 inManagedObjectContext:v21];

  if (v11)
  {
    [(PLInterLibraryTransfer *)self _setAttributes:v17 onObject:v11];
LABEL_6:
    [v13 setObject:v11 forKey:v10];
    v23 = [v10 entity];
    v24 = [v23 relationshipsByName];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__PLInterLibraryTransfer__copyObject_toDestinationObject_toLibrary_objectMap___block_invoke;
    v30[3] = &unk_1E75727D8;
    v30[4] = self;
    v31 = v10;
    v25 = v11;
    v32 = v25;
    v33 = v12;
    v34 = v13;
    [v24 enumerateKeysAndObjectsUsingBlock:v30];

    goto LABEL_7;
  }

  v11 = [(PLInterLibraryTransfer *)self _createNewObjectWithEntity:v22 attributes:v17 inLibrary:v12];
  if (v11)
  {
    goto LABEL_6;
  }

  v25 = 0;
LABEL_7:
  v26 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v10];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v25];
    *buf = 138543618;
    v36 = v27;
    v37 = 2114;
    v38 = v28;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "DONE  copying source obj %{public}@ to dest %{public}@", buf, 0x16u);
  }

  return v25;
}

- (id)_sourceAttributesFromObject:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v6 = [v4 managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PLInterLibraryTransfer__sourceAttributesFromObject___block_invoke;
  v12[3] = &unk_1E75761B8;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  [v6 performBlockAndWait:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __54__PLInterLibraryTransfer__sourceAttributesFromObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entity];
  v3 = [v2 attributesByName];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLInterLibraryTransfer__sourceAttributesFromObject___block_invoke_2;
  v5[3] = &unk_1E75727B0;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __54__PLInterLibraryTransfer__sourceAttributesFromObject___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) options];
  v4 = [v3 excludedAttributeNames];
  v5 = [v4 containsObject:v8];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) valueForKey:v8];
    [v6 setObject:v7 forKey:v8];
  }
}

- (BOOL)_shouldSkipTransferWithSourceAsset:(id)a3 destinationAsset:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 || (-[PLInterLibraryTransfer options](self, "options"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 updateExistingObjects], v8, (v9 & 1) != 0))
  {
    *v62 = 0;
    v63 = v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__80721;
    v66 = __Block_byref_object_dispose__80722;
    v67 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__80721;
    v56 = __Block_byref_object_dispose__80722;
    v57 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v10 = [v6 photoLibrary];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __78__PLInterLibraryTransfer__shouldSkipTransferWithSourceAsset_destinationAsset___block_invoke;
    v42[3] = &unk_1E7576AF0;
    v44 = &v52;
    v43 = v6;
    v45 = v62;
    v46 = &v58;
    v47 = &v48;
    [v10 performBlockAndWait:v42];

    if (*(v49 + 12) != 3)
    {
      v14 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = v53[5];
        v16 = *(v49 + 12);
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = 3;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_FAULT, "Skipping sync of asset %{public}@ because bundleScope=%hu but only %hu is supported.", buf, 0x18u);
      }

      goto LABEL_13;
    }

    if (!v7)
    {
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = __Block_byref_object_copy__80721;
    v75 = __Block_byref_object_dispose__80722;
    v76 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v11 = [v7 photoLibrary];
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __78__PLInterLibraryTransfer__shouldSkipTransferWithSourceAsset_destinationAsset___block_invoke_115;
    v34 = &unk_1E7578870;
    v36 = buf;
    v35 = v7;
    v37 = &v38;
    [v11 performBlockAndWait:&v31];

    v12 = *(v63 + 5);
    if (v12 && *(*&buf[8] + 40) && [v12 compare:{v31, v32, v33, v34}] != 1)
    {
      v21 = PLInterLibraryTransferGetLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_27:

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(buf, 8);

LABEL_13:
        v17 = 1;
LABEL_20:

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);

        _Block_object_dispose(&v58, 8);
        _Block_object_dispose(v62, 8);

        goto LABEL_21;
      }

      v28 = v53[5];
      v29 = *(v63 + 5);
      v30 = *(*&buf[8] + 40);
      *v68 = 138543874;
      v69 = v28;
      v70 = 2114;
      *v71 = v29;
      *&v71[8] = 2114;
      v72 = v30;
      v25 = "Skipping sync of asset %{public}@ because sourceModDate=%{public}@ and destModDate=%{public}@";
      v26 = v21;
      v27 = 32;
    }

    else
    {
      v13 = [(PLInterLibraryTransfer *)self options:v31];
      if ([v13 allowSavedAssetTypeChanges])
      {

LABEL_18:
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_19;
      }

      v19 = *(v59 + 12) == *(v39 + 12);

      if (v19)
      {
        goto LABEL_18;
      }

      v21 = PLInterLibraryTransferGetLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      v22 = v53[5];
      v23 = *(v59 + 12);
      v24 = *(v39 + 12);
      *v68 = 138543874;
      v69 = v22;
      v70 = 1024;
      *v71 = v23;
      *&v71[4] = 1024;
      *&v71[6] = v24;
      v25 = "Skipping sync of asset %{public}@ because sourceSavedAssetType=%hd and destSavedAssetType=%hd";
      v26 = v21;
      v27 = 24;
    }

    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, v25, v68, v27);
    goto LABEL_27;
  }

  v18 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v62 = 0;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "updateExistingObjects is NO and destination asset already exists", v62, 2u);
  }

  v17 = 1;
LABEL_21:

  return v17;
}

uint64_t __78__PLInterLibraryTransfer__shouldSkipTransferWithSourceAsset_destinationAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) modificationDate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) savedAssetType];
  result = [*(a1 + 32) bundleScope];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

uint64_t __78__PLInterLibraryTransfer__shouldSkipTransferWithSourceAsset_destinationAsset___block_invoke_115(uint64_t a1)
{
  v2 = [*(a1 + 32) modificationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) savedAssetType];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_dedupedDestinationAssetWithSourceAsset:(id)a3 destinationLibrary:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = a4;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = self;
  v7 = [(PLInterLibraryTransfer *)self options];
  v8 = [v7 keysForDeDupe];

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v6 photoLibrary];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __85__PLInterLibraryTransfer__dedupedDestinationAssetWithSourceAsset_destinationLibrary___block_invoke;
        v28[3] = &unk_1E75761B8;
        v29 = v6;
        v30 = v13;
        v31 = v27;
        [v14 performBlockAndWait:v28];
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v10);
  }

  v15 = v25;
  if ([v27 count])
  {
    v16 = 0;
    while (1)
    {
      v17 = v16;
      v18 = +[PLManagedAsset entityName];
      v19 = [(PLInterLibraryTransfer *)v26 options];
      v20 = [v19 keysForDeDupe];
      v16 = [(PLInterLibraryTransfer *)v26 _loadObjectWithEntityName:v18 withValues:v27 forKeyPaths:v20 fromLibrary:v15 error:0];

      if (!v16)
      {
        break;
      }

      v21 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(PLInterLibraryTransfer *)v26 options];
        v23 = [v22 keysForDeDupe];
        *buf = 138543618;
        v37 = v23;
        v38 = 2114;
        v39 = v27;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Found existing asset with %{public}@ %{public}@ but different uuid", buf, 0x16u);
      }

      if (![(PLInterLibraryTransfer *)v26 _deleteAsset:v16])
      {

        break;
      }
    }
  }

  return 0;
}

void __85__PLInterLibraryTransfer__dedupedDestinationAssetWithSourceAsset_destinationLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:*(a1 + 40)];
  v3 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    [v3 addObject:v2];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [v3 addObject:v4];
  }
}

- (BOOL)_deleteAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 photoLibrary];

  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"asset.photoLibrary"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [v5 photoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PLInterLibraryTransfer__deleteAsset___block_invoke;
  v12[3] = &unk_1E7578820;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v7 performTransactionAndWait:v12];

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __39__PLInterLibraryTransfer__deleteAsset___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) options];
  [v2 allowDeleteOfSavedAssetTypes];
  [*(a1 + 40) savedAssetType];
  v3 = PLValidatedSavedAssetTypeApplies();

  if (v3)
  {
    v4 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) uuid];
      v6 = [*(a1 + 40) photoLibrary];
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Deleting asset %{public}@ from %@", &v9, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = [PLAssetTransactionReason transactionReason:@"InterLibraryTransfer: Delete existing duplicate asset"];
    [v7 deleteWithReason:v8];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)_loadObjectWithEntityName:(id)a3 withValues:(id)a4 forKeyPaths:(id)a5 fromLibrary:(id)a6 error:(id *)a7
{
  v46[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__80721;
  v41 = __Block_byref_object_dispose__80722;
  v42 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __93__PLInterLibraryTransfer__loadObjectWithEntityName_withValues_forKeyPaths_fromLibrary_error___block_invoke;
  v31 = &unk_1E75780D8;
  v15 = v12;
  v32 = v15;
  v16 = v11;
  v33 = v16;
  v17 = v13;
  v34 = v17;
  v18 = v14;
  v35 = v18;
  v36 = &v37;
  [v18 performBlockAndWait:&v28];
  v19 = v38[5];
  if (a7 && !v19)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load %@ with %@ %@", v16, v17, v15, v28, v29, v30, v31, v32, v33, v34];
    v21 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A278];
    v46[0] = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v22];

    v24 = v23;
    *a7 = v23;
    v25 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v23;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v19 = v38[5];
  }

  v26 = v19;

  _Block_object_dispose(&v37, 8);

  return v26;
}

void __93__PLInterLibraryTransfer__loadObjectWithEntityName_withValues_forKeyPaths_fromLibrary_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 40)];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__PLInterLibraryTransfer__loadObjectWithEntityName_withValues_forKeyPaths_fromLibrary_error___block_invoke_2;
    v15[3] = &unk_1E7572788;
    v16 = *(a1 + 32);
    v6 = v4;
    v17 = v6;
    [v5 enumerateObjectsUsingBlock:v15];
    v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];
    [v3 setPredicate:v7];
    [v3 setFetchLimit:1];
    v8 = [*(a1 + 56) managedObjectContext];
    v14 = 0;
    v9 = [v8 executeFetchRequest:v3 error:&v14];
    v10 = v14;

    if ([v9 count])
    {
      v11 = [v9 objectAtIndex:0];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    objc_autoreleasePoolPop(v2);
  }
}

void __93__PLInterLibraryTransfer__loadObjectWithEntityName_withValues_forKeyPaths_fromLibrary_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", v6, v8];

  [*(a1 + 40) addObject:v7];
}

- (id)_loadAssetWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = +[PLManagedAsset entityName];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = @"uuid";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v13 = [(PLInterLibraryTransfer *)self _loadObjectWithEntityName:v10 withValues:v11 forKeyPaths:v12 fromLibrary:v8 error:a5];

  return v13;
}

- (id)_loadPersonWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = +[PLPerson entityName];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = @"personUUID";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v13 = [(PLInterLibraryTransfer *)self _loadObjectWithEntityName:v10 withValues:v11 forKeyPaths:v12 fromLibrary:v8 error:a5];

  return v13;
}

- (id)_loadFaceCropWithUuid:(id)a3 fromLibrary:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = +[PLFaceCrop entityName];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = @"uuid";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v13 = [(PLInterLibraryTransfer *)self _loadObjectWithEntityName:v10 withValues:v11 forKeyPaths:v12 fromLibrary:v8 error:a5];

  return v13;
}

- (id)_loadDestinationLibraryWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyMergesContext:0];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setRequiredState:7];
  v6 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(PLInterLibraryTransfer *)self destinationBundle];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Loading destination library from bundle %@", buf, 0xCu);
  }

  v8 = [(PLInterLibraryTransfer *)self destinationBundle];
  v14 = 0;
  v9 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLInterLibraryTransfer _loadDestinationLibraryWithError:]" loadedFromBundle:v8 options:v5 error:&v14];
  v10 = v14;

  if (!v9)
  {
    v11 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Inter-library transfer failed. Unable to load destination library: %@", buf, 0xCu);
    }

    if (a3)
    {
      v12 = v10;
      *a3 = v10;
    }
  }

  return v9;
}

- (id)_loadSourceLibraryWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setAutomaticallyMergesContext:0];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v5 setRequiredState:7];
  v6 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(PLInterLibraryTransfer *)self sourceBundle];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Loading source library from bundle %@", buf, 0xCu);
  }

  v8 = [(PLInterLibraryTransfer *)self sourceBundle];
  v14 = 0;
  v9 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLInterLibraryTransfer _loadSourceLibraryWithError:]" loadedFromBundle:v8 options:v5 error:&v14];
  v10 = v14;

  if (!v9)
  {
    v11 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Inter-library transfer failed. Unable to load source library: %@", buf, 0xCu);
    }

    if (a3)
    {
      v12 = v10;
      *a3 = v10;
    }
  }

  return v9;
}

- (BOOL)transferFaceCropWithUuid:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__80721;
  v49 = __Block_byref_object_dispose__80722;
  v50 = 0;
  obj = 0;
  v7 = [(PLInterLibraryTransfer *)self _loadLibrariesWithError:&obj];
  objc_storeStrong(&v50, obj);
  if (v7)
  {
    sourceLibrary = self->_sourceLibrary;
    v9 = (v46 + 5);
    v43 = v46[5];
    v10 = [(PLInterLibraryTransfer *)self _loadFaceCropWithUuid:v6 fromLibrary:sourceLibrary error:&v43];
    objc_storeStrong(v9, v43);
    if (!v10)
    {
      v13 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Load source face crop failed", v37, 2u);
      }

      if (a4)
      {
        *a4 = v46[5];
      }

      v12 = *(v52 + 24);
      goto LABEL_29;
    }

    *v37 = 0;
    v38 = v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__80721;
    v41 = __Block_byref_object_dispose__80722;
    v42 = [(PLInterLibraryTransfer *)self _loadFaceCropWithUuid:v6 fromLibrary:self->_destinationLibrary error:0];
    if (*(v38 + 5))
    {
      v11 = PLInterLibraryTransferGetLog();
      v12 = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v56 = v6;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Skipping transfer of face crop %{public}@ because destination already exists", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v14 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v56 = v6;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "transferFaceCropWithUuid:%{public}@ begin", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke;
    aBlock[3] = &unk_1E7572760;
    v16 = v6;
    v30 = v16;
    v31 = self;
    v34 = v37;
    v32 = v10;
    v11 = v15;
    v33 = v11;
    v35 = &v51;
    v36 = &v45;
    v17 = _Block_copy(aBlock);
    v18 = [(PLInterLibraryTransfer *)self options];
    v19 = [v18 skipContextSave];

    destinationLibrary = self->_destinationLibrary;
    if (v19)
    {
      [(PLPhotoLibrary *)destinationLibrary performBlockAndWait:v17];
    }

    else
    {
      [(PLPhotoLibrary *)destinationLibrary performTransactionAndWait:v17];
    }

    if (*(v52 + 24) == 1)
    {
      v21 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v56 = v16;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Verifying face crop transfer for uuid %{public}@", buf, 0xCu);
      }

      v22 = self->_destinationLibrary;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke_84;
      v26[3] = &unk_1E7578820;
      v28 = &v51;
      v26[4] = self;
      v27 = v16;
      [(PLPhotoLibrary *)v22 performBlockAndWait:v26];

      v23 = *(v52 + 24);
      v24 = v46[5];
      if ((v23 & 1) != 0 || !a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = v46[5];
      if (!a4)
      {
LABEL_27:

        v12 = *(v52 + 24);
LABEL_28:

        _Block_object_dispose(v37, 8);
LABEL_29:

        goto LABEL_30;
      }
    }

    v24 = v24;
    *a4 = v24;
    goto LABEL_27;
  }

  if (a4)
  {
    *a4 = v46[5];
  }

  v12 = *(v52 + 24);
LABEL_30:
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v12 & 1;
}

void __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke(uint64_t a1)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v2 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Starting copyObject phase for face crop %{public}@", &buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 32) managedObjectContext];
  [PLMomentGenerationDataManager setManagedObjectContextMomentarilyBlessed:v4];

  v5 = [*(a1 + 40) _copyObject:*(a1 + 48) toDestinationObject:*(*(*(a1 + 64) + 8) + 40) toLibrary:*(*(a1 + 40) + 32) objectMap:*(a1 + 56)];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 40) != 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A278];
    v57[0] = @"_copyObject failed for face crop";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v10 = [v8 errorWithDomain:*MEMORY[0x1E69BFF48] code:70001 userInfo:v9];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Finished copyObject phase for face crop %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__80721;
  v54 = __Block_byref_object_dispose__80722;
  v55 = 0;
  v15 = *(*(a1 + 40) + 24);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke_77;
  v42[3] = &unk_1E7578910;
  v43 = *(a1 + 48);
  p_buf = &buf;
  [v15 performBlockAndWait:v42];
  v16 = *(*(&buf + 1) + 40);
  v17 = [*(*(a1 + 40) + 32) managedObjectContext];
  v18 = [PLPerson personWithUUID:v16 inManagedObjectContext:v17];

  if (v18)
  {
    v19 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = [v18 personUUID];
      *v47 = 138543618;
      v48 = v20;
      v49 = 2114;
      v50 = v21;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "transferFaceCropWithUuid:%{public}@ associating with person %{public}@", v47, 0x16u);
    }

    [*(*(*(a1 + 64) + 8) + 40) setPerson:v18];
    v22 = [*(*(a1 + 40) + 40) excludedEntityNames];
    v23 = +[PLDetectedFace entityName];
    v24 = [v22 containsObject:v23];

    if (v24)
    {
      v25 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 32);
        *v47 = 138543362;
        v48 = v26;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "transferFaceCropWithUuid:%{public}@ marking face crop dirty", v47, 0xCu);
      }

      [*(*(*(a1 + 64) + 8) + 40) setState:0];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v27 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      v29 = *(*(&buf + 1) + 40);
      *v47 = 138543618;
      v48 = v28;
      v49 = 2114;
      v50 = v29;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "transferFaceCropWithUuid:%{public}@ no destPerson found with uuid %{public}@", v47, 0x16u);
    }

    v30 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A278];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no destPerson found with uuid %@", *(*(&buf + 1) + 40)];
    v46 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v33 = [v30 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v32];
    v34 = *(*(a1 + 80) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;
  }

  v36 = *(a1 + 40);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [v36 _validateSourceFaceCrop:*(a1 + 48) destinationFaceCrop:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    v37 = [v36 options];
    v38 = [v37 skipContextSave];

    if ((v38 & 1) == 0)
    {
      v39 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 32);
        *v47 = 138543362;
        v48 = v40;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "transferFaceCropWithUuid:%{public}@ failed, rolling back destination library", v47, 0xCu);
      }

      v41 = [*(*(a1 + 40) + 32) managedObjectContext];
      [v41 rollback];
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke_84(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[4];
  v8 = 0;
  v5 = [v2 _loadFaceCropWithUuid:v3 fromLibrary:v4 error:&v8];
  v6 = v8;
  *(*(a1[6] + 8) + 24) = v5 != 0;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Transfer verification failed with error: %@", buf, 0xCu);
    }
  }
}

void __57__PLInterLibraryTransfer_transferFaceCropWithUuid_error___block_invoke_77(uint64_t a1)
{
  v5 = [*(a1 + 32) person];
  v2 = [v5 personUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)transferPersonWithUuid:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__80721;
  v48 = __Block_byref_object_dispose__80722;
  v49 = 0;
  obj = 0;
  v7 = [(PLInterLibraryTransfer *)self _loadLibrariesWithError:&obj];
  objc_storeStrong(&v49, obj);
  if (v7)
  {
    sourceLibrary = self->_sourceLibrary;
    v9 = (v45 + 5);
    v42 = v45[5];
    v10 = [(PLInterLibraryTransfer *)self _loadPersonWithUuid:v6 fromLibrary:sourceLibrary error:&v42];
    objc_storeStrong(v9, v42);
    if (v10)
    {
      *v36 = 0;
      v37 = v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__80721;
      v40 = __Block_byref_object_dispose__80722;
      v41 = [(PLInterLibraryTransfer *)self _loadPersonWithUuid:v6 fromLibrary:self->_destinationLibrary error:0];
      v11 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v55 = v6;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "transferPersonWithUuid:%{public}@ begin", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke;
      aBlock[3] = &unk_1E7572760;
      v13 = v6;
      v29 = v13;
      v30 = self;
      v33 = v36;
      v31 = v10;
      v14 = v12;
      v32 = v14;
      v34 = &v50;
      v35 = &v44;
      v15 = _Block_copy(aBlock);
      v16 = [(PLInterLibraryTransfer *)self options];
      v17 = [v16 skipContextSave];

      destinationLibrary = self->_destinationLibrary;
      if (v17)
      {
        [(PLPhotoLibrary *)destinationLibrary performBlockAndWait:v15];
      }

      else
      {
        [(PLPhotoLibrary *)destinationLibrary performTransactionAndWait:v15];
      }

      v21 = v51;
      v19 = *(v51 + 24);
      if (v19 == 1)
      {
        v22 = PLInterLibraryTransferGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v55 = v13;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Verifying person transfer for uuid %{public}@", buf, 0xCu);
        }

        v23 = self->_destinationLibrary;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke_73;
        v25[3] = &unk_1E7578820;
        v27 = &v50;
        v25[4] = self;
        v26 = v13;
        [(PLPhotoLibrary *)v23 performBlockAndWait:v25];

        v21 = v51;
        v19 = *(v51 + 24);
      }

      if (!v19)
      {
        if (a4)
        {
          *a4 = v45[5];
          v21 = v51;
        }

        LOBYTE(v19) = *(v21 + 24);
      }

      _Block_object_dispose(v36, 8);
    }

    else
    {
      v20 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Load source person failed", v36, 2u);
      }

      if (a4)
      {
        *a4 = v45[5];
      }

      LOBYTE(v19) = *(v51 + 24);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v45[5];
    }

    LOBYTE(v19) = *(v51 + 24);
  }

  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  return v19 & 1;
}

void __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke(uint64_t a1)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v2 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Starting copyObject phase for person %{public}@", &buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 32) managedObjectContext];
  [PLMomentGenerationDataManager setManagedObjectContextMomentarilyBlessed:v4];

  v5 = [*(a1 + 40) _copyObject:*(a1 + 48) toDestinationObject:*(*(*(a1 + 64) + 8) + 40) toLibrary:*(*(a1 + 40) + 32) objectMap:*(a1 + 56)];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 40) != 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A278];
    v55[0] = @"_copyObject failed";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v10 = [v8 errorWithDomain:*MEMORY[0x1E69BFF48] code:70001 userInfo:v9];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Finished copyObject phase for person %{public}@", &buf, 0xCu);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) verifiedType] == -2)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__80721;
    v52 = __Block_byref_object_dispose__80722;
    v53 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__80721;
    v41 = __Block_byref_object_dispose__80722;
    v42 = 0;
    v15 = *(*(a1 + 40) + 24);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke_69;
    v33[3] = &unk_1E7578870;
    p_buf = &buf;
    v34 = *(a1 + 48);
    v36 = &v37;
    [v15 performBlockAndWait:v33];
    v16 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v38[5];
      *v45 = 138543618;
      v46 = v17;
      v47 = 2114;
      v48 = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Person %{public}@ is a tombstone. Will copy merge target person %{public}@", v45, 0x16u);
    }

    v19 = v38[5];
    if (v19)
    {
      v20 = [*(a1 + 40) _loadPersonWithUuid:v19 fromLibrary:*(*(a1 + 40) + 32) error:0];
      v21 = [*(a1 + 40) _copyObject:*(*(&buf + 1) + 40) toDestinationObject:v20 toLibrary:*(*(a1 + 40) + 32) objectMap:*(a1 + 56)];

      if (v21)
      {
        [*(*(*(a1 + 64) + 8) + 40) setMergeTargetPerson:v21];
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v22 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A278];
        v44 = @"_copyObject failed for merge target person";
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v24 = [v22 errorWithDomain:*MEMORY[0x1E69BFF48] code:70001 userInfo:v23];
        v25 = *(*(a1 + 80) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&buf, 8);
  }

  v27 = *(a1 + 40);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [v27 _validateSourcePerson:*(a1 + 48) destinationPerson:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    v28 = [v27 options];
    v29 = [v28 skipContextSave];

    if ((v29 & 1) == 0)
    {
      v30 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "transferPersonWithUuid:%{public}@ failed, rolling back destination library asset", &buf, 0xCu);
      }

      v32 = [*(*(a1 + 40) + 32) managedObjectContext];
      [v32 rollback];
    }
  }
}

void __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke_73(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[4];
  v8 = 0;
  v5 = [v2 _loadPersonWithUuid:v3 fromLibrary:v4 error:&v8];
  v6 = v8;
  *(*(a1[6] + 8) + 24) = v5 != 0;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Transfer verification failed with error: %@", buf, 0xCu);
    }
  }
}

void __55__PLInterLibraryTransfer_transferPersonWithUuid_error___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) mergeTargetPerson];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 40) + 8) + 40) personUUID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)transferAssetWithUuid:(id)a3 error:(id *)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__80721;
  v72 = __Block_byref_object_dispose__80722;
  v73 = 0;
  obj = 0;
  v6 = [(PLInterLibraryTransfer *)self _loadLibrariesWithError:&obj];
  objc_storeStrong(&v73, obj);
  if (v6)
  {
    [(PLInterLibraryTransfer *)self _initFileManager];
    sourceLibrary = self->_sourceLibrary;
    v8 = (v69 + 5);
    v66 = v69[5];
    v39 = [(PLInterLibraryTransfer *)self _loadAssetWithUuid:v41 fromLibrary:sourceLibrary error:&v66];
    objc_storeStrong(v8, v66);
    if (v39)
    {
      *buf = 0;
      v61 = buf;
      v62 = 0x3032000000;
      v63 = __Block_byref_object_copy__80721;
      v64 = __Block_byref_object_dispose__80722;
      v65 = [(PLInterLibraryTransfer *)self _loadAssetWithUuid:v41 fromLibrary:self->_destinationLibrary error:0];
      v9 = *(v61 + 5);
      if (!v9)
      {
        v10 = [(PLInterLibraryTransfer *)self _dedupedDestinationAssetWithSourceAsset:v39 destinationLibrary:self->_destinationLibrary];
        v11 = *(v61 + 5);
        *(v61 + 5) = v10;

        v9 = *(v61 + 5);
      }

      if ([(PLInterLibraryTransfer *)self _shouldSkipTransferWithSourceAsset:v39 destinationAsset:v9])
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        v14 = PLInterLibraryTransferGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v79 = 138543362;
          v80 = v41;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "transferAssetWithUuid:%{public}@ begin", v79, 0xCu);
        }

        v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v16 = [MEMORY[0x1E695DFA8] set];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PLInterLibraryTransfer_transferAssetWithUuid_error___block_invoke;
        aBlock[3] = &unk_1E7572738;
        v17 = v41;
        v51 = v17;
        v52 = self;
        v56 = buf;
        v53 = v39;
        v35 = v15;
        v54 = v35;
        v57 = &v74;
        v58 = &v68;
        v59 = a2;
        v37 = v16;
        v55 = v37;
        v38 = _Block_copy(aBlock);
        v18 = [(PLInterLibraryTransfer *)self options];
        v19 = [v18 skipContextSave];

        destinationLibrary = self->_destinationLibrary;
        if (v19)
        {
          [(PLPhotoLibrary *)destinationLibrary performBlockAndWait:v38, v35];
        }

        else
        {
          [(PLPhotoLibrary *)destinationLibrary performTransactionAndWait:v38, v35];
        }

        v12 = *(v75 + 24);
        if (v12 == 1)
        {
          v21 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *v79 = 138543362;
            v80 = v17;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Verifying asset transfer for uuid %{public}@", v79, 0xCu);
          }

          v22 = self->_destinationLibrary;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __54__PLInterLibraryTransfer_transferAssetWithUuid_error___block_invoke_68;
          v47[3] = &unk_1E7578820;
          v49 = &v74;
          v47[4] = self;
          v48 = v17;
          [(PLPhotoLibrary *)v22 performBlockAndWait:v47];

          v12 = *(v75 + 24);
        }

        if (!v12)
        {
          v23 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v37 count];
            *v79 = 138543618;
            v80 = v17;
            v81 = 2048;
            v82 = v24;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "transferAssetWithUuid:%{public}@ failed, removing %tu copied files", v79, 0x16u);
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = v37;
          v26 = [v25 countByEnumeratingWithState:&v43 objects:v78 count:16];
          if (v26)
          {
            v27 = *v44;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v44 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v43 + 1) + 8 * i);
                fileManager = self->_fileManager;
                v42 = 0;
                v31 = [(NSFileManager *)fileManager removeItemAtURL:v29 error:&v42];
                v32 = v42;
                if (!v31)
                {
                  v33 = PLInterLibraryTransferGetLog();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *v79 = 138412290;
                    v80 = v32;
                    _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Remove file failed with error %@", v79, 0xCu);
                  }
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v43 objects:v78 count:16];
            }

            while (v26);
          }

          if (a4)
          {
            *a4 = v69[5];
          }

          LOBYTE(v12) = *(v75 + 24);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Load source asset failed", buf, 2u);
      }

      if (a4)
      {
        *a4 = v69[5];
      }

      LOBYTE(v12) = *(v75 + 24);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v69[5];
    }

    LOBYTE(v12) = *(v75 + 24);
  }

  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  return v12 & 1;
}

void __54__PLInterLibraryTransfer_transferAssetWithUuid_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v37 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Starting copyObject phase for asset %{public}@", buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 32) managedObjectContext];
  [PLMomentGenerationDataManager setManagedObjectContextMomentarilyBlessed:v4];

  v5 = [*(a1 + 40) _copyObject:*(a1 + 48) toDestinationObject:*(*(*(a1 + 72) + 8) + 40) toLibrary:*(*(a1 + 40) + 32) objectMap:*(a1 + 56)];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 72) + 8) + 40) != 0;
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v34 = *MEMORY[0x1E696A278];
    v35 = @"_copyObject failed";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v11 = [v8 errorWithDomain:v9 code:70001 userInfo:v10];
    v12 = *(*(a1 + 88) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    *buf = 138543362;
    v37 = v15;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Finished copyObject phase for asset %{public}@", buf, 0xCu);
  }

  v16 = [*(*(a1 + 40) + 24) pathManager];
  if (([v16 shouldUseFileIdentifierForBundleScope:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "bundleScope")}] & 1) == 0)
  {

    goto LABEL_9;
  }

  v17 = [*(*(a1 + 40) + 32) pathManager];
  v18 = [v17 shouldUseFileIdentifierForBundleScope:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "bundleScope")}];

  if ((v18 & 1) == 0)
  {
LABEL_9:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"PLInterLibraryTransfer.m" lineNumber:119 description:@"Can only perform inter library transfer for asset that is located in a UBF based bundle scope in both source and destination library"];
  }

  if (*(*(*(a1 + 80) + 8) + 24) != 1)
  {
    goto LABEL_15;
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  v23 = *(*(*(a1 + 72) + 8) + 40);
  v24 = *(a1 + 56);
  v33 = 0;
  v25 = [v20 _copyFilesFromSourceAsset:v21 toDestinationAsset:v23 objectMap:v24 filesCopied:v22 error:&v33];
  v26 = v33;
  v27 = v33;
  *(*(*(a1 + 80) + 8) + 24) = v25;
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v26);
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    [*(a1 + 40) _validateSourceAsset:*(a1 + 48) destinationAsset:*(*(*(a1 + 72) + 8) + 40)];
    [*(a1 + 40) _transferThumbnailsForSourceAsset:*(a1 + 48) toDestinationAsset:*(*(*(a1 + 72) + 8) + 40) filesCopied:*(a1 + 64)];
  }

  else
  {
LABEL_15:
    v28 = [*(a1 + 40) options];
    v29 = [v28 skipContextSave];

    if ((v29 & 1) == 0)
    {
      v30 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        *buf = 138543362;
        v37 = v31;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "transferAssetWithUuid:%{public}@ failed, rolling back destination library asset", buf, 0xCu);
      }

      v32 = [*(*(a1 + 40) + 32) managedObjectContext];
      [v32 rollback];
    }
  }
}

void __54__PLInterLibraryTransfer_transferAssetWithUuid_error___block_invoke_68(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[4];
  v8 = 0;
  v5 = [v2 _loadAssetWithUuid:v3 fromLibrary:v4 error:&v8];
  v6 = v8;
  *(*(a1[6] + 8) + 24) = v5 != 0;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Transfer verification failed with error: %@", buf, 0xCu);
    }
  }
}

- (void)_initFileManager
{
  if (!self->_fileManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = self->_fileManager;
    self->_fileManager = v4;
  }
}

- (BOOL)_loadLibrariesWithError:(id *)a3
{
  if (self->_sourceLibrary && self->_destinationLibrary)
  {
    return 1;
  }

  v15 = 0;
  v6 = [(PLInterLibraryTransfer *)self _loadSourceLibraryWithError:&v15];
  v7 = v15;
  sourceLibrary = self->_sourceLibrary;
  self->_sourceLibrary = v6;

  if (self->_sourceLibrary)
  {
    v14 = v7;
    v9 = [(PLInterLibraryTransfer *)self _loadDestinationLibraryWithError:&v14];
    v10 = v14;

    v7 = v10;
  }

  else
  {
    v9 = 0;
  }

  destinationLibrary = self->_destinationLibrary;
  self->_destinationLibrary = v9;

  if (self->_sourceLibrary && self->_destinationLibrary)
  {
    v5 = 1;
  }

  else if (a3)
  {
    v12 = v7;
    v5 = 0;
    *a3 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PLInterLibraryTransfer)initWithSourceLibrary:(id)a3 destinationLibrary:(id)a4 options:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PLInterLibraryTransfer;
  v12 = [(PLInterLibraryTransfer *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceLibrary, a3);
    objc_storeStrong(&v13->_destinationLibrary, a4);
    objc_storeStrong(&v13->_options, a5);
    v14 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Initialized inter-library transfer with sourceLibrary %@ destinationLibrary %@", buf, 0x16u);
    }
  }

  return v13;
}

- (PLInterLibraryTransfer)initWithSourceBundle:(id)a3 destinationBundle:(id)a4 options:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 skipContextSave])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLInterLibraryTransfer.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"options.skipContextSave == NO"}];
  }

  v18.receiver = self;
  v18.super_class = PLInterLibraryTransfer;
  v13 = [(PLInterLibraryTransfer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceBundle, a3);
    objc_storeStrong(&v14->_destinationBundle, a4);
    objc_storeStrong(&v14->_options, a5);
    v15 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Initialized inter-library transfer with sourceBundle %@ destinationBundle %@", buf, 0x16u);
    }
  }

  return v14;
}

@end