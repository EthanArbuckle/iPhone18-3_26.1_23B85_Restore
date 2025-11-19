@interface MTConstants
+ (BOOL)excludeDirectoryFromBackup:(id)a3;
+ (id)_watchManagedAssetsDirectoryURL;
+ (id)alignmentAssetURL;
+ (id)artworkAssetURL;
+ (id)attributesForNewDirectory;
+ (id)cachesDirectory;
+ (id)dataAssetsCacheURL;
+ (id)documentsDirectory;
+ (id)libraryDirectory;
+ (id)managedObjectModelArchiveURL;
+ (id)managedObjectModelDefinitionURL;
+ (id)preferredAssetCacheURL;
+ (id)sharedAssetsCacheURL;
+ (id)sharedCacheDirectory;
+ (id)sharedContainerURL;
+ (id)sharedDocumentsDirectory;
+ (id)shazamSignatureAssetURL;
+ (id)streamedMediaAssetURL;
+ (id)ttmlAssetURL;
+ (void)_repairFilePermissionsIfNeeded;
+ (void)removeExcludeFromBackupFlagFromDirectoryIfNeeded:(id)a3;
+ (void)repairPermissionsOfDirectoryIfNeeded:(id)a3;
@end

@implementation MTConstants

+ (id)sharedContainerURL
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"243LU875E5.groups.com.apple.podcasts"];

  if (!v3)
  {
    v13 = 0;
    v4 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:@"com.apple.podcasts" error:&v13];
    v5 = v13;
    if (v5)
    {
      v6 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = @"com.apple.podcasts";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Error creating bundle record with identifier %@: %@", buf, 0x16u);
      }
    }

    v7 = [v4 groupContainerURLs];
    v3 = [v7 objectForKey:@"243LU875E5.groups.com.apple.podcasts"];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__MTConstants_sharedContainerURL__block_invoke;
  v11[3] = &unk_1E8568E28;
  v8 = v3;
  v12 = v8;
  if (sharedContainerURL_onceToken != -1)
  {
    dispatch_once(&sharedContainerURL_onceToken, v11);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __33__MTConstants_sharedContainerURL__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];
    v5 = [*(a1 + 32) path];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ MTConstants reporting sharedContainerURL: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)sharedDocumentsDirectory
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a1 sharedContainerURL];
  v4 = [v3 URLByAppendingPathComponent:@"Documents" isDirectory:1];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  v8 = 0;
  if (v4 && (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [a1 attributesForNewDirectory];
    v21 = 0;
    v7 = [v9 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:v10 error:&v21];
    v8 = v21;
  }

  if (!v4 || v8)
  {
    v11 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_ERROR, "Error retrieving shared documents directory: %@", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__MTConstants_sharedDocumentsDirectory__block_invoke;
  v17[3] = &unk_1E8568E50;
  v20 = v7;
  v19 = a1;
  v12 = v4;
  v18 = v12;
  if (sharedDocumentsDirectory_onceToken != -1)
  {
    dispatch_once(&sharedDocumentsDirectory_onceToken, v17);
  }

  v13 = v18;
  v14 = v12;

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

void __39__MTConstants_sharedDocumentsDirectory__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) repairPermissionsOfDirectoryIfNeeded:*(a1 + 32)];
  }

  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];
    v5 = [*(a1 + 32) path];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ MTConstants reporting sharedDocumentsDirectory: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)managedObjectModelDefinitionURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"MTLibrary" withExtension:@"momd"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MTConstants_managedObjectModelDefinitionURL__block_invoke;
  block[3] = &unk_1E8568E28;
  v4 = v3;
  v7 = v4;
  if (managedObjectModelDefinitionURL_onceToken != -1)
  {
    dispatch_once(&managedObjectModelDefinitionURL_onceToken, block);
  }

  return v4;
}

void __46__MTConstants_managedObjectModelDefinitionURL__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [*(a1 + 32) path];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ [%@] MTConstants reporting managedObjectModelDefinitionURL as %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)sharedCacheDirectory
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"243LU875E5.groups.com.apple.podcasts"];

  v5 = [v4 URLByAppendingPathComponent:@"Cache" isDirectory:1];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v5 path];
    v8 = [v6 fileExistsAtPath:v7];

    if (v8)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [a1 attributesForNewDirectory];
    v24 = 0;
    v13 = [v11 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v12 error:&v24];
    v9 = v24;

    if (v13)
    {
LABEL_6:
      [objc_opt_class() excludeDirectoryFromBackup:v5];
      v10 = 1;
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v10 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

LABEL_9:
  v14 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v9;
    _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_ERROR, "Error retrieving shared cache directory: %@", buf, 0xCu);
  }

LABEL_12:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__MTConstants_sharedCacheDirectory__block_invoke;
  v20[3] = &unk_1E8568E50;
  v23 = v10;
  v22 = a1;
  v15 = v5;
  v21 = v15;
  if (sharedCacheDirectory_onceToken != -1)
  {
    dispatch_once(&sharedCacheDirectory_onceToken, v20);
  }

  v16 = v21;
  v17 = v15;

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

void __35__MTConstants_sharedCacheDirectory__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) repairPermissionsOfDirectoryIfNeeded:*(a1 + 32)];
  }

  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];
    v5 = [*(a1 + 32) path];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ MTConstants reporting sharedCacheDirectory: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)documentsDirectory
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  v4 = [v3 lastObject];

  return v4;
}

+ (id)artworkAssetURL
{
  v2 = [a1 preferredAssetCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Artwork"];

  return v3;
}

+ (id)preferredAssetCacheURL
{
  v3 = [a1 sharedAssetsCacheURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 dataAssetsCacheURL];
  }

  v6 = v5;

  return v6;
}

+ (id)sharedAssetsCacheURL
{
  v2 = [a1 sharedCacheDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Assets"];

  return v3;
}

+ (id)alignmentAssetURL
{
  v2 = [a1 preferredAssetCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Alignments"];

  return v3;
}

+ (id)libraryDirectory
{
  v2 = [a1 cachesDirectory];
  v3 = [v2 URLByDeletingLastPathComponent];

  return v3;
}

+ (id)cachesDirectory
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];
  v4 = [v3 lastObject];

  return v4;
}

+ (id)ttmlAssetURL
{
  v2 = [a1 preferredAssetCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"TTML"];

  return v3;
}

+ (id)shazamSignatureAssetURL
{
  v2 = [a1 preferredAssetCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"ShazamSignatures"];

  return v3;
}

+ (id)managedObjectModelArchiveURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"Archive" withExtension:@"momd"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MTConstants_managedObjectModelArchiveURL__block_invoke;
  block[3] = &unk_1E8568E28;
  v4 = v3;
  v7 = v4;
  if (managedObjectModelArchiveURL_onceToken != -1)
  {
    dispatch_once(&managedObjectModelArchiveURL_onceToken, block);
  }

  return v4;
}

void __43__MTConstants_managedObjectModelArchiveURL__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [*(a1 + 32) path];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ [%@] MTConstants reporting managedObjectModelDefinitionURL as %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_repairFilePermissionsIfNeeded
{
  v5 = [a1 sharedContainerURL];
  v3 = [v5 URLByAppendingPathComponent:@"Documents" isDirectory:1];
  [a1 repairPermissionsOfDirectoryIfNeeded:v3];
  v4 = [v5 URLByAppendingPathComponent:@"Cache" isDirectory:1];
  [a1 repairPermissionsOfDirectoryIfNeeded:v4];
}

+ (id)attributesForNewDirectory
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A328];
  v6[0] = *MEMORY[0x1E696A360];
  v6[1] = v2;
  v7[0] = @"mobile";
  v7[1] = @"mobile";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)repairPermissionsOfDirectoryIfNeeded:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!getuid())
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v8 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v4;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "Checking if file permissions need repairing for %@", buf, 0xCu);
      }

      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v4 path];
      v34 = 0;
      v11 = [v9 attributesOfItemAtPath:v10 error:&v34];
      v12 = v34;

      if (!v11)
      {
        v13 = _MTLogCategoryDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v12;
          _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "Error while reading file attributes: %@", buf, 0xCu);
        }

        goto LABEL_24;
      }

      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A360]];
      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A328]];
      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A358]];
      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A320]];
      if (([v15 isEqual:&unk_1F54BD538] & 1) == 0 && (objc_msgSend(v16, "isEqual:", &unk_1F54BD538) & 1) == 0)
      {
        v19 = _MTLogCategoryDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v36 = v13;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_DEFAULT, "Permissions do not need repair. (File owner: %@, File Group Owner: %@)", buf, 0x16u);
        }

        v23 = v12;
        goto LABEL_23;
      }

      v31 = v16;
      v32 = v15;
      v17 = v14;
      v18 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v4;
        _os_log_impl(&dword_1D8CEC000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to repair file permissions for %@", buf, 0xCu);
      }

      v19 = [a1 attributesForNewDirectory];
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v21 = [v4 path];
      v33 = v12;
      v22 = [v20 setAttributes:v19 ofItemAtPath:v21 error:&v33];
      v23 = v33;

      v24 = _MTLogCategoryDefault();
      v25 = v24;
      if (v23 || (v22 & 1) == 0)
      {
        v14 = v17;
        v16 = v31;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v23;
          v26 = "Error fixing file permissions: %@";
          v27 = v25;
          v28 = OS_LOG_TYPE_ERROR;
          v29 = 12;
          goto LABEL_18;
        }
      }

      else
      {
        v14 = v17;
        v16 = v31;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v26 = "Successfully repaired file permissions.";
          v27 = v25;
          v28 = OS_LOG_TYPE_DEFAULT;
          v29 = 2;
LABEL_18:
          _os_log_impl(&dword_1D8CEC000, v27, v28, v26, buf, v29);
        }
      }

      v15 = v32;
LABEL_23:

      v12 = v23;
LABEL_24:
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (void)removeExcludeFromBackupFlagFromDirectoryIfNeeded:(id)a3
{
  v3 = a3;
  if (+[PFClientUtil isPodcastsApp])
  {
    v4 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MTConstants_removeExcludeFromBackupFlagFromDirectoryIfNeeded___block_invoke;
    block[3] = &unk_1E8568E28;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void __64__MTConstants_removeExcludeFromBackupFlagFromDirectoryIfNeeded___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E695DB80];
  v15 = 0;
  v4 = [v2 setResourceValue:MEMORY[0x1E695E110] forKey:v3 error:&v15];
  v5 = v15;
  v6 = _MTLogCategoryDefault();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v17 = v8;
      v9 = "Removed 'NSURLIsExcludedFromBackupKey' flag from cache directory %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1D8CEC000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    v9 = "Unable to remove extended attributed for %@ - %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)excludeDirectoryFromBackup:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E695DB80];
  v10 = 0;
  v5 = [v3 setResourceValue:MEMORY[0x1E695E118] forKey:v4 error:&v10];
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)dataAssetsCacheURL
{
  v2 = [a1 cachesDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Assets"];

  return v3;
}

+ (id)streamedMediaAssetURL
{
  v2 = [a1 preferredAssetCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"StreamedMedia"];

  return v3;
}

+ (id)_watchManagedAssetsDirectoryURL
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 sharedCacheDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Episodes" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0;
  v9 = [v8 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v18];
  v7 = v18;

  if (v9)
  {
LABEL_4:
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_ERROR, "Error retrieving managed assets directory: %@", buf, 0xCu);
  }

LABEL_8:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__MTConstants__watchManagedAssetsDirectoryURL__block_invoke;
  v16[3] = &unk_1E8568E28;
  v11 = v3;
  v17 = v11;
  if (_watchManagedAssetsDirectoryURL_onceToken != -1)
  {
    dispatch_once(&_watchManagedAssetsDirectoryURL_onceToken, v16);
  }

  v12 = v17;
  v13 = v11;

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void __46__MTConstants__watchManagedAssetsDirectoryURL__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];
    v5 = [*(a1 + 32) path];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "%@ MTConstants reporting managed assets directory: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end