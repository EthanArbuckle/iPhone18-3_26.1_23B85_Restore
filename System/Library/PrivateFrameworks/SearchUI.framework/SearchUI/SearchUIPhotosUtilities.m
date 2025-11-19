@interface SearchUIPhotosUtilities
+ (id)coreSpotlightIdentifierForAsset:(id)a3;
+ (id)fetchAssetsForImages:(id)a3;
+ (id)fetchOptionsForLibrary:(id)a3;
+ (id)fetchResultForPhotoIdentifiers:(id)a3 isSyndicated:(BOOL)a4;
+ (id)personWithIdentifier:(id)a3 isSyndicated:(BOOL)a4;
+ (id)sharedPhotoLibraryIsSyndicated:(BOOL)a3;
+ (void)shutdownPhotoLibraries;
@end

@implementation SearchUIPhotosUtilities

+ (void)shutdownPhotoLibraries
{
  v2 = SearchUIGeneralLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v2, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: attempting to grab a lock for clearing a photo library", buf, 2u);
  }

  os_unfair_lock_lock(&sPhotoLibraryLock);
  v3 = SearchUIGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1DA169000, v3, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: clearing photo library", v16, 2u);
  }

  if (systemPhotoLibrary)
  {
    v4 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
    if (v4)
    {
      [MEMORY[0x1E69789A8] unsafeShutdownLibraryWithPhotoLibraryURL:v4];
      v5 = systemPhotoLibrary;
      systemPhotoLibrary = 0;

      v6 = SearchUIGeneralLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: cleared systemPhotoLibrary", v15, 2u);
      }
    }
  }

  if (syndicatedPhotoLibrary)
  {
    v7 = [MEMORY[0x1E69789A8] wellKnownPhotoLibraryURLForIdentifier:3];
    if (v7)
    {
      [MEMORY[0x1E69789A8] unsafeShutdownLibraryWithPhotoLibraryURL:v7];
      v8 = syndicatedPhotoLibrary;
      syndicatedPhotoLibrary = 0;

      v9 = SearchUIGeneralLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1DA169000, v9, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: cleared syndicatedPhotoLibrary", v14, 2u);
      }
    }
  }

  v10 = SearchUIGeneralLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: returning lock", v13, 2u);
  }

  os_unfair_lock_unlock(&sPhotoLibraryLock);
  v11 = SearchUIGeneralLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DA169000, v11, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: lock returned", v12, 2u);
  }
}

+ (id)sharedPhotoLibraryIsSyndicated:(BOOL)a3
{
  v3 = a3;
  if (sharedPhotoLibraryIsSyndicated__enableMultiLibraryModeOnceToken != -1)
  {
    +[SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:];
  }

  v4 = SearchUIGeneralLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v4, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: attempting to grab a lock for opening a photo library", buf, 2u);
  }

  os_unfair_lock_lock(&sPhotoLibraryLock);
  v5 = SearchUIGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: opening photo library", buf, 2u);
  }

  v6 = &systemPhotoLibrary;
  if (v3)
  {
    v7 = &syndicatedPhotoLibrary;
  }

  else
  {
    v7 = &systemPhotoLibrary;
  }

  v8 = *v7;
  if (!v8)
  {
    if (v3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v16 = 0;
    if (v3)
    {
      v6 = &syndicatedPhotoLibrary;
    }

    v8 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:v9 error:&v16];
    v10 = v16;
    objc_storeStrong(v6, v8);
    if (v10)
    {
      v11 = SearchUIGeneralLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIPhotosUtilities *)v10 sharedPhotoLibraryIsSyndicated:v3, v11];
      }
    }

    if (!v8)
    {
      v12 = SearchUIGeneralLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:v12];
      }
    }
  }

  v13 = SearchUIGeneralLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v13, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: returning lock", buf, 2u);
  }

  os_unfair_lock_unlock(&sPhotoLibraryLock);
  v14 = SearchUIGeneralLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v14, OS_LOG_TYPE_DEFAULT, "SearchUIPhotoUtilities: lock returned", buf, 2u);
  }

  return v8;
}

+ (id)fetchResultForPhotoIdentifiers:(id)a3 isSyndicated:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [a1 sharedPhotoLibraryIsSyndicated:v4];
    if (v7)
    {
      v8 = [a1 fetchOptionsForLibrary:v7];
      if (v4)
      {
        [MEMORY[0x1E6978630] fetchAssetsWithSyndicationIdentifiers:v6 options:v8 includeRejected:1];
      }

      else
      {
        [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v6 options:v8];
      }
      v9 = ;
      if (!v9)
      {
        v10 = SearchUIGeneralLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = [MEMORY[0x1E696AD98] numberWithBool:v4];
          v13 = 138412802;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          v17 = 2112;
          v18 = v12;
          _os_log_error_impl(&dword_1DA169000, v10, OS_LOG_TYPE_ERROR, "SearchUIPhotoUtilities: fetchResult failed for photoIdentifier: %@, fetchOptions %@, isSyndicated %@", &v13, 0x20u);
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchAssetsForImages:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v60;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v59 + 1) + 8 * i);
        if ([v11 isSyndicated])
        {
          v12 = v4;
        }

        else
        {
          v12 = v5;
        }

        v13 = [v11 photoIdentifier];
        [v12 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v8);
  }

  v14 = objc_opt_new();
  v15 = [SearchUIPhotosUtilities fetchResultForPhotoIdentifiers:v4 isSyndicated:1];
  if (v15)
  {
    [v14 addObject:v15];
  }

  v40 = v6;
  v42 = v15;
  v43 = v5;
  v44 = v4;
  v16 = [SearchUIPhotosUtilities fetchResultForPhotoIdentifiers:v5 isSyndicated:0];
  if (v16)
  {
    [v14 addObject:v16];
  }

  v41 = v16;
  v17 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v18)
  {
    v19 = v18;
    v46 = *v56;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v55 + 1) + 8 * j);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v52;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v52 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v51 + 1) + 8 * k);
              v28 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:v27];
              [v17 setObject:v27 forKeyedSubscript:v28];
            }

            v24 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v24);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v19);
  }

  v29 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v40;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v47 + 1) + 8 * m) photoIdentifier];
        v36 = [v17 objectForKeyedSubscript:v35];

        if (v36)
        {
          [v29 addObject:v36];
        }

        else
        {
          v37 = [MEMORY[0x1E695DFB0] null];
          [v29 addObject:v37];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v32);
  }

  v38 = [v29 copy];

  return v38;
}

+ (id)personWithIdentifier:(id)a3 isSyndicated:(BOOL)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    v6 = [SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:v4];
    v7 = [SearchUIPhotosUtilities fetchOptionsForLibrary:v6];
    v8 = MEMORY[0x1E6978980];
    v13[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [v8 fetchPersonsWithLocalIdentifiers:v9 options:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 firstObject];

  return v11;
}

+ (id)fetchOptionsForLibrary:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 librarySpecificFetchOptions];
  v8[0] = *MEMORY[0x1E6978C20];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 addFetchPropertySets:v5];

  [v4 setIncludeGuestAssets:1];
  v6 = [v3 wellKnownPhotoLibraryIdentifier];

  if (v6 == 1)
  {
    [v4 setIncludeAssetSourceTypes:7];
  }

  return v4;
}

+ (id)coreSpotlightIdentifierForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 wellKnownPhotoLibraryIdentifier];

  v6 = [v3 curationProperties];
  v7 = [v6 syndicationIdentifier];

  if (v5 == 3 && v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v3 uuid];
  }

  v9 = v8;

  return v9;
}

+ (void)sharedPhotoLibraryIsSyndicated:(NSObject *)a3 .cold.2(uint64_t a1, char a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a2 & 1];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1DA169000, a3, OS_LOG_TYPE_ERROR, "SearchUIPhotoUtilities: Error opening photo library: %@, %@", &v6, 0x16u);
}

@end