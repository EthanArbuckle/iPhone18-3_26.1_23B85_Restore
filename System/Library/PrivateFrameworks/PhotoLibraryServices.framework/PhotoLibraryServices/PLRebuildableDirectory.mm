@interface PLRebuildableDirectory
+ (id)rebuildableDirectoryWithURL:(id)l isCPLAssets:(BOOL)assets isPhotoStream:(BOOL)stream photoLibrary:(id)library startTime:(double)time;
+ (void)collectFileURLs:(id)ls urlsToSkip:(id)skip forAddingToAlbum:(id)album intoAssetsArray:(id)array assetsKind:(int)kind testCreationDates:(BOOL)dates startTime:(double)time pathManager:(id)self0;
- (id)debugDescription;
- (id)description;
- (void)_collectContentsOfDirectoryURL:(id)l urlsToSkip:(id)skip forAddingToAlbum:(id)album intoAssetsArray:(id)array assetsKind:(int)kind startTime:(double)time;
- (void)gatherAssetsToImport:(id)import pendingAssetsCount:(unint64_t *)count onDiskURLsToSkip:(id)skip cameraRollOnly:(BOOL)only;
@end

@implementation PLRebuildableDirectory

- (void)_collectContentsOfDirectoryURL:(id)l urlsToSkip:(id)skip forAddingToAlbum:(id)album intoAssetsArray:(id)array assetsKind:(int)kind startTime:(double)time
{
  v9 = *&kind;
  v14 = MEMORY[0x1E695DEC8];
  v15 = *MEMORY[0x1E695DC30];
  v16 = *MEMORY[0x1E695DAA8];
  arrayCopy = array;
  albumCopy = album;
  skipCopy = skip;
  lCopy = l;
  v25 = [v14 arrayWithObjects:{v15, v16, 0}];
  v21 = [(NSFileManager *)self->_fm enumeratorAtURL:lCopy includingPropertiesForKeys:v25 options:1 errorHandler:&__block_literal_global_36];

  v22 = objc_opt_class();
  photoLibrary = [(PLRebuildableDirectory *)self photoLibrary];
  pathManager = [photoLibrary pathManager];
  [v22 collectFileURLs:v21 urlsToSkip:skipCopy forAddingToAlbum:albumCopy intoAssetsArray:arrayCopy assetsKind:v9 testCreationDates:1 startTime:time pathManager:pathManager];
}

uint64_t __122__PLRebuildableDirectory__collectContentsOfDirectoryURL_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_startTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 path];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate asset dir '%@': %@", &v9, 0x16u);
  }

  return 1;
}

- (void)gatherAssetsToImport:(id)import pendingAssetsCount:(unint64_t *)count onDiskURLsToSkip:(id)skip cameraRollOnly:(BOOL)only
{
  onlyCopy = only;
  countCopy = count;
  v52 = *MEMORY[0x1E69E9840];
  importCopy = import;
  skipCopy = skip;
  fm = self->_fm;
  v11 = [(PLRebuildableDirectory *)self url];
  v12 = *MEMORY[0x1E695DC30];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
  v14 = [(NSFileManager *)fm enumeratorAtURL:v11 includingPropertiesForKeys:v13 options:1 errorHandler:&__block_literal_global_93297];

  if (![(PLRebuildableDirectory *)self isPhotoStream])
  {
    v37 = 0;
    goto LABEL_11;
  }

  v15 = [(PLRebuildableDirectory *)self url];
  v46 = 0;
  v16 = [v15 getResourceValue:&v46 forKey:v12 error:0];
  v17 = v46;
  v18 = v17;
  if (!v16)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v19 = [v17 length];

  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = PLMigrationGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(PLRebuildableDirectory *)self url];
    *buf = 138412546;
    v49 = v21;
    v50 = 2112;
    v51 = v18;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Will rebuild Photo Stream content at %@ for stream ID %@", buf, 0x16u);
  }

  v37 = v18;

LABEL_11:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v14;
  v22 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v40 = *v43;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        if ([(PLRebuildableDirectory *)self isPhotoStream])
        {
          v27 = 2;
        }

        else
        {
          v27 = 7;
        }

        v41 = v27;
        if ([(PLRebuildableDirectory *)self isCPLAssets])
        {
          v41 = 0;
        }

        else
        {
          if (![PLModelMigrator shouldImportAssetsFromDCIMSubDirectoryAtURL:v25 assetsKind:&v41])
          {
            v30 = PLMigrationGetLog();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }

          if (onlyCopy && v41 == 1)
          {
            v30 = PLMigrationGetLog();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_38;
            }

LABEL_37:
            path = [v25 path];
            *buf = 138412290;
            v49 = path;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "Skipping sub level '%@'.", buf, 0xCu);

            goto LABEL_38;
          }
        }

        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v25 path];
          *buf = 138412290;
          v49 = path2;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Searching sub level '%@'.", buf, 0xCu);
        }

        if (onlyCopy)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          if ([(PLRebuildableDirectory *)self isPhotoStream]&& v37)
          {
            [(PLRebuildableDirectory *)self photoLibrary];
            v32 = v31 = onlyCopy;
            v30 = [PLPhotoStreamAlbum photoStreamAlbumWithStreamID:v37 inPhotoLibrary:v32 createIfNeeded:1];

            onlyCopy = v31;
          }
        }

        v33 = [importCopy count];
        [(PLRebuildableDirectory *)self _collectContentsOfDirectoryURL:v25 urlsToSkip:skipCopy forAddingToAlbum:v30 intoAssetsArray:importCopy assetsKind:v41 startTime:self->_startTime];
        v34 = [importCopy count];
        if (!onlyCopy && v34 != v33)
        {
          *countCopy = [importCopy count];
        }

LABEL_38:

        objc_autoreleasePoolPop(v26);
      }

      v23 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v23);
  }
}

uint64_t __98__PLRebuildableDirectory_gatherAssetsToImport_pendingAssetsCount_onDiskURLsToSkip_cameraRollOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 path];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate sub dir '%@': %@", &v9, 0x16u);
  }

  return 1;
}

- (id)description
{
  v2 = [(PLRebuildableDirectory *)self url];
  path = [v2 path];

  return path;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLRebuildableDirectory *)self url];
  path = [v5 path];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v4, self, path];

  return v7;
}

+ (void)collectFileURLs:(id)ls urlsToSkip:(id)skip forAddingToAlbum:(id)album intoAssetsArray:(id)array assetsKind:(int)kind testCreationDates:(BOOL)dates startTime:(double)time pathManager:(id)self0
{
  v68 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  skipCopy = skip;
  albumCopy = album;
  arrayCopy = array;
  managerCopy = manager;
  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!dates)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    time = v18;
  }

  v42 = managerCopy;
  isUBF = [managerCopy isUBF];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v20 = lsCopy;
  v21 = [v20 countByEnumeratingWithState:&v57 objects:v67 count:16];
  v22 = skipCopy;
  v48 = v20;
  if (v21)
  {
    v23 = v21;
    v24 = *v58;
    v25 = *MEMORY[0x1E695DB78];
    v46 = *MEMORY[0x1E695DAA8];
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v57 + 1) + 8 * i);
        if (isUBF)
        {
          v56 = 0;
          [v27 getResourceValue:&v56 forKey:v25 error:0];
          v28 = v56;
          if ([v28 BOOLValue])
          {
            goto LABEL_23;
          }

          if (([MEMORY[0x1E69BF298] isValidOriginalURL:v27] & 1) == 0)
          {
            v33 = PLMigrationGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              lastPathComponent = [v27 lastPathComponent];
              *buf = 138412290;
              v62 = lastPathComponent;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Skipping URL with invalid filename: %@", buf, 0xCu);

              v20 = v48;
            }

LABEL_23:
            continue;
          }
        }

        if ([v22 containsObject:v27])
        {
          continue;
        }

        v29 = objc_autoreleasePoolPush();
        if (![PLManagedAsset isValidFileURLForImport:v27])
        {
          v30 = PLMigrationGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v62 = v27;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "_collectFileURLs: skipping %@, not valid for import", buf, 0xCu);
          }

          goto LABEL_32;
        }

        v55 = 0;
        [v27 getResourceValue:&v55 forKey:v46 error:0];
        v30 = v55;
        [v30 timeIntervalSinceReferenceDate];
        if (time < v31)
        {
          stringByDeletingPathExtension = PLMigrationGetLog();
          if (os_log_type_enabled(stringByDeletingPathExtension, OS_LOG_TYPE_ERROR))
          {
            v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
            *buf = 138412802;
            v62 = v27;
            v63 = 2112;
            v64 = v30;
            v65 = 2112;
            v66 = v35;
            _os_log_impl(&dword_19BF1F000, stringByDeletingPathExtension, OS_LOG_TYPE_ERROR, "File import will skip %@ because it was created on %@, after we started import on %@", buf, 0x20u);
            goto LABEL_30;
          }
        }

        else
        {
          if (isUBF)
          {
            stringByDeletingPathExtension = [MEMORY[0x1E69BF298] uuidFromURL:v27];
            if (!stringByDeletingPathExtension)
            {
              goto LABEL_31;
            }

LABEL_27:
            v35 = [v45 objectForKeyedSubscript:stringByDeletingPathExtension];
            if (!v35)
            {
              v35 = [[PLFileSystemImportAsset alloc] initWithDestinationAlbum:albumCopy assetKind:kind];
              [v45 setObject:v35 forKeyedSubscript:stringByDeletingPathExtension];
            }

            [(PLFileSystemImportAsset *)v35 addURL:v27];
LABEL_30:

            v20 = v48;
            goto LABEL_31;
          }

          lastPathComponent2 = [v27 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];

          v20 = v48;
          if (stringByDeletingPathExtension)
          {
            goto LABEL_27;
          }
        }

LABEL_31:

        v22 = skipCopy;
LABEL_32:

        objc_autoreleasePoolPop(v29);
      }

      v23 = [v20 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v23);
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ((isUBF & 1) == 0)
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke;
    v52[3] = &unk_1E7574568;
    v53 = v45;
    v54 = v37;
    [v53 enumerateKeysAndObjectsUsingBlock:v52];
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke_3;
  v49[3] = &unk_1E7574568;
  v50 = v37;
  v51 = v41;
  v38 = v41;
  v39 = v37;
  [v45 enumerateKeysAndObjectsUsingBlock:v49];
}

void __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke_2;
  v10[3] = &unk_1E7574540;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = v6;
  v14 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  v9 = _Block_copy(v10);
  v9[2](v9, *MEMORY[0x1E69BFFB0]);
  v9[2](v9, *MEMORY[0x1E69BFCF0]);
  v9[2](v9, *MEMORY[0x1E69BFF98]);
}

void __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __137__PLRebuildableDirectory_collectFileURLs_urlsToSkip_forAddingToAlbum_intoAssetsArray_assetsKind_testCreationDates_startTime_pathManager___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) stringByAppendingString:a2];
  v3 = [*(a1 + 40) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 48);
    v6 = [v3 urls];
    [v5 addURLs:v6];

    [*(a1 + 56) addObject:v7];
  }
}

+ (id)rebuildableDirectoryWithURL:(id)l isCPLAssets:(BOOL)assets isPhotoStream:(BOOL)stream photoLibrary:(id)library startTime:(double)time
{
  streamCopy = stream;
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  libraryCopy = library;
  v14 = objc_alloc_init(PLRebuildableDirectory);
  if (streamCopy)
  {
    v15 = MEMORY[0x1E696AE88];
    lastPathComponent = [lCopy lastPathComponent];
    v17 = [v15 scannerWithString:lastPathComponent];

    [v17 setCharactersToBeSkipped:0];
    if ([v17 scanLongLong:0] && objc_msgSend(v17, "isAtEnd"))
    {
      p_super = PLMigrationGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        path = [lCopy path];
        v25 = 138412290;
        v26 = path;
        _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_DEFAULT, "Found valid PhotoStream directory at %@", &v25, 0xCu);
      }
    }

    else
    {
      v20 = PLMigrationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [lCopy path];
        v25 = 138412290;
        v26 = path2;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Invalid PhotoStream directory at %@", &v25, 0xCu);
      }

      p_super = &v14->super;
      v14 = 0;
    }
  }

  if (v14)
  {
    if ([lCopy checkResourceIsReachableAndReturnError:0])
    {
      objc_storeStrong(&v14->_url, l);
      v14->_isCPLAssets = assets;
      v14->_isPhotoStream = streamCopy;
      objc_storeStrong(&v14->_photoLibrary, library);
      v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
      fm = v14->_fm;
      v14->_fm = v22;

      v14->_startTime = time;
    }

    else
    {

      v14 = 0;
    }
  }

  return v14;
}

@end