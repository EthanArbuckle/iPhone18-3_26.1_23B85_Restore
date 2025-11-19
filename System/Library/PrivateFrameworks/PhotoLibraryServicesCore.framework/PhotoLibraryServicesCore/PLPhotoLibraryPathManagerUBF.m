@interface PLPhotoLibraryPathManagerUBF
+ (id)allPhotosPathsOnThisDevice;
- (BOOL)createPathsForNewLibrariesWithError:(id *)a3;
- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)a3 error:(id *)a4;
- (PLPhotoLibraryPathManagerUBF)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4;
- (id)_externalDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_scopedInternalPathManagerWithBundleScope:(unsigned __int16)a3;
- (id)addToPath:(id)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5;
- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5;
- (id)basePrivateDirectoryPath;
- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3;
- (id)cloudRestoreBackgroundCompletePath;
- (id)cloudRestoreBackgroundPhaseInProgressTokenPath;
- (id)cloudRestoreCompleteTokenPath;
- (id)cloudRestoreContextPath;
- (id)cloudRestoreForegroundPhaseCompleteTokenPath;
- (id)convertPhotoLibraryPathType:(unsigned __int8)a3;
- (id)corePathsWithError:(id *)a3 directDatabaseAccess:(BOOL)a4 limitedLibrary:(BOOL)a5;
- (id)extendedPathsWithError:(id *)a3;
- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4;
- (id)modelRestorePostProcessingCompleteTokenPath;
- (id)pathsForClientAccess:(id)a3;
- (id)pathsForExternalWriters;
- (id)pathsForLibraryFilesystemSizeCalculation;
- (id)pathsForPermissionCheck;
- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5;
- (id)purgeableSubdirectoryNamesWithType:(unsigned __int8)a3;
- (id)urlWithIdentifier:(id)a3;
- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)a3;
- (void)enumerateBundleScopesWithBlock:(id)a3;
- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5;
- (void)setExtendedAttributesWithIdentifier:(id)a3;
- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4;
@end

@implementation PLPhotoLibraryPathManagerUBF

- (id)basePrivateDirectoryPath
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v7[0] = v3;
  v7[1] = @"private";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && (__PLIsAssetsdProxyService & 1) == 0)
  {
    pl_dispatch_once(&PLIsInternalTool_didCheckReadOnly, &__block_literal_global_134_3958);
    if (PLIsInternalTool_isInternalTool != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_fault_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unauthorized client attempting to set time machine exclusion attribute on path: %@", &v9, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
  v7 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v6 error:a4];

LABEL_9:
  return v7;
}

- (id)_scopedInternalPathManagerWithBundleScope:(unsigned __int16)a3
{
  v3 = a3;
  v5 = self;
  if ([(PLPhotoLibraryPathManagerCore *)v5 bundleScope]!= v3)
  {
    if ([(PLPhotoLibraryPathManagerCore *)v5 bundleScope])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v5 file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1032 description:@"Requesting a scoped path managed from a non-main scoped path manager is not supported"];
    }

    v6 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:[(PLPhotoLibraryPathManagerUBF *)v5 photoLibraryPathTypeForBundleScope:v3]];
    v7 = [PLPhotoLibraryPathManagerUBF alloc];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
    v9 = [(PLPhotoLibraryPathManagerUBF *)v7 initWithLibraryURL:v8 bundleScope:v3];

    v5 = v9;
  }

  return v5;
}

- (id)assetMainFilePathWithDirectory:(id)a3 filename:(id)a4 bundleScope:(unsigned __int16)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1000 description:{@"Invalid parameter not satisfying: %@", @"directory"}];
  }

  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1001 description:@"can only access asset main file path on main bundle scoped path manager"];
  }

  if (([v9 hasPrefix:@"/"] & 1) == 0)
  {
    if (v5 <= 5)
    {
      if (((1 << v5) & 0x2A) != 0)
      {
        v11 = [PLPhotoLibraryPathManager alloc];
        v12 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
        v13 = [(PLPhotoLibraryPathManager *)v11 initWithLibraryURL:v12 bundleScope:v5 libraryFormat:2];

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (((1 << v5) & 5) == 0)
        {
          goto LABEL_12;
        }

        v13 = self;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      if (v5 == 2)
      {
        v15 = 23;
      }

      else
      {
        v15 = 4;
      }

      v16 = [(PLPhotoLibraryPathManagerCore *)v13 photoDirectoryWithType:v15];
      v17 = [v16 stringByAppendingPathComponent:v9];

      v9 = v17;
      goto LABEL_17;
    }

LABEL_12:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1018 description:{@"Cannot resolve path manager from invalid bundle scope %d", v5}];

    v13 = 0;
    goto LABEL_13;
  }

LABEL_17:
  v18 = [v9 stringByAppendingPathComponent:v10];

  return v18;
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)a3 type:(unsigned __int8)a4 bundleScope:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(PLPhotoLibraryPathManagerUBF *)self _scopedInternalPathManagerWithBundleScope:v5];
  v10 = [v9 photoDirectoryWithType:v6];
  v11 = [(PLPhotoLibraryPathManagerCore *)self assetAbbreviatedMetadataDirectoryForDirectory:v8 rootPath:v10];

  return v11;
}

- (id)modelRestorePostProcessingCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"ModelRestorePostProcessingComplete"];

  return v3;
}

- (id)cloudRestoreContextPath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreContext.plist"];

  return v3;
}

- (id)cloudRestoreCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundCompletePath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreBackgroundComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundPhaseInProgressTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreBackgroundInProgress"];

  return v3;
}

- (id)cloudRestoreForegroundPhaseCompleteTokenPath
{
  v2 = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"CloudRestoreForegroundComplete"];

  return v3;
}

- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)a3 mode:(unsigned __int8)a4 toURLWithHandler:(id)a5
{
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PLPhotoLibraryPathManagerUBF *)self urlWithIdentifier:v8];
  if (v9)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v11 = 0;
    if (v6 == 2 && ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) != 0)
    {
      v12 = [v10 URLByDeletingLastPathComponent];
      v13 = [v12 path];
      v15 = 0;
      v14 = [PLFileUtilities createDirectoryAtPath:v13 error:&v15];
      v11 = v15;

      if (!v14)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
          _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create intermediate path for write request to url: %@ Create dir error: %@", buf, 0x16u);
        }

        v10 = 0;
      }
    }

    v9[2](v9, v10, v11);
  }

  else
  {
    v11 = 0;
  }

  if (v6 == 2)
  {
    [(PLPhotoLibraryPathManagerUBF *)self setExtendedAttributesWithIdentifier:v8 andURL:v10];
  }
}

- (void)setExtendedAttributesWithIdentifier:(id)a3 andURL:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (((PLIsReallyAssetsd_isAssetsd & 1) != 0 || __PLIsAssetsdProxyService) && ![v6 resourceVersion])
  {
    v8 = [v6 originalFilename];
    v9 = [v8 length];

    if (v9)
    {
      v22 = 0;
      fm = self->_fm;
      v11 = [v7 path];
      LODWORD(fm) = [(NSFileManager *)fm fileExistsAtPath:v11 isDirectory:&v22];
      v12 = v22;

      if (fm)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v15 = [v6 originalFilename];
        v16 = [v15 UTF8String];

        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:strlen(v16)];
        v17 = [@"com.apple.assetsd.originalFilename" UTF8String];
        v18 = [v7 path];
        LODWORD(v17) = setxattr([v18 UTF8String], v17, objc_msgSend(v14, "bytes"), objc_msgSend(v14, "length"), 0, 0);

        if (v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = [v6 originalFilename];
          v20 = __error();
          v21 = strerror(*v20);
          *buf = 138412802;
          v24 = v19;
          v25 = 2112;
          v26 = v7;
          v27 = 2080;
          v28 = v21;
          _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to write originalFilename (%@) to url: %@ Error: %s", buf, 0x20u);
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v14 = [v6 originalFilename];
        *buf = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v7;
        _os_log_debug_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Failed to write originalfilename (%@) to url: %@", buf, 0x16u);
LABEL_15:
      }
    }
  }
}

- (void)setExtendedAttributesWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryPathManagerUBF *)self urlWithIdentifier:v4];
  [(PLPhotoLibraryPathManagerUBF *)self setExtendedAttributesWithIdentifier:v4 andURL:v5];
}

- (id)urlWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 bundleScope])
  {
    v6 = -[PLPhotoLibraryPathManagerUBF _scopedInternalPathManagerWithBundleScope:](v5, "_scopedInternalPathManagerWithBundleScope:", [v4 bundleScope]);

    v5 = v6;
  }

  v29 = [v4 uuid];
  v27 = [v29 UTF8String];
  v28 = [v4 extension];
  v25 = [v28 UTF8String];
  v24 = [v4 resourceType];
  v23 = [v4 resourceVersion];
  v22 = [v4 recipeId];
  v21 = [v4 isData];
  v26 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:4];
  v20 = [v26 UTF8String];
  v7 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:9];
  v19 = [v7 UTF8String];
  v8 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:10];
  v18 = [v8 UTF8String];
  v9 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:19];
  v17 = [v9 UTF8String];
  v10 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:12];
  v11 = [v10 UTF8String];
  v12 = [(PLPhotoLibraryPathManagerCore *)v5 photoDirectoryWithType:13];
  v13 = [v12 UTF8String];
  v14 = [v4 customSuffix];
  v15 = PLURLForResourceProperties(v27, v25, v24, v23, v22, v21, v20, v19, v18, v17, v11, v13, [v14 UTF8String]);

  return v15;
}

- (void)enumerateBundleScopesWithBlock:(id)a3
{
  v12 = a3;
  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:886 description:@"can only enumerate bundle scopes on main bundle scoped path manager"];
  }

  v5 = 0;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    if (v5 != 4)
    {
      v8 = [PLPhotoLibraryPathManager alloc];
      v9 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
      v10 = [(PLPhotoLibraryPathManager *)v8 initWithLibraryURL:v9 bundleScope:v5 libraryFormat:2];

      (*(v12 + 2))(v12, v5, [(PLPhotoLibraryPathManagerUBF *)self photoLibraryPathTypeForBundleScope:v5], v10);
    }

    objc_autoreleasePoolPop(v6);
    ++v5;
  }

  while (v7 < 5);
}

- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)a3
{
  v3 = 0x1B001C161A01uLL >> (8 * a3);
  if (a3 >= 7u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 0x1F;
}

- (id)purgeableSubdirectoryNamesWithType:(unsigned __int8)a3
{
  v3 = MEMORY[0x1E695E0F0];
  if (a3 <= 0xAu && ((1 << a3) & 0x610) != 0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%X", v4];
      [v3 addObject:v5];

      v4 = (v4 + 1);
    }

    while (v4 != 16);
  }

  return v3;
}

- (id)internalDirectoryWithSubType:(unsigned __int8)a3 additionalPathComponents:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = 0;
  if (v4 > 2)
  {
    if (v4 < 6)
    {
      goto LABEL_11;
    }

    if (v4 != 6)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_11:
      internalDirectory = self->_internalDirectory;
      v11 = off_1E79322D8[v4];
      v12 = -[__CFString substringFromIndex:](v11, "substringFromIndex:", [@"PLPhotoLibraryInternalPathType" length]);
      v13 = [v12 lowercaseString];

      v7 = [(NSString *)internalDirectory stringByAppendingPathComponent:v13];

      goto LABEL_17;
    }

    v8 = self->_internalDirectory;
    v9 = @"csutaxonomy";
LABEL_16:
    v7 = [(NSString *)v8 stringByAppendingPathComponent:v9];
    goto LABEL_17;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_11;
    }

    if (v4 != 2)
    {
      goto LABEL_17;
    }

    v8 = self->_internalDirectory;
    v9 = @"lofr";
    goto LABEL_16;
  }

LABEL_12:
  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_FAULT, "Invalid subtype for internal location", v17, 2u);
  }

  v7 = 0;
LABEL_17:
  v15 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v7 leafType:1 additionalPathComponents:v6];

  return v15;
}

- (id)externalDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ((v6 - 1) >= 3)
  {
    if (v6 != 4 && v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:0];
    }
  }

  else
  {
    externalDirectory = self->_externalDirectory;
    v10 = off_1E79322B8[v6];
    v11 = -[__CFString substringFromIndex:](v10, "substringFromIndex:", [@"PLPhotoLibraryExternalPathType" length]);
    v12 = [v11 lowercaseString];

    v13 = [(NSString *)externalDirectory stringByAppendingPathComponent:v12];
  }

  v14 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v13 leafType:v5 additionalPathComponents:v8];

  return v14;
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = self->_privateCacheDirectory;
  if (v6)
  {
    privateCacheDirectory = self->_privateCacheDirectory;
    if (v6 < 0x11)
    {
      v11 = off_1E7932230[v6];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", v6, "NSString * _Nonnull PLStringFromPLPhotoLibraryCacheSubPathType(PLPhotoLibraryCacheSubPathType)"}];
      v11 = @"PLPhotoLibraryCacheSubPathTypeLast";
    }

    v12 = v11;
    v13 = -[__CFString substringFromIndex:](v12, "substringFromIndex:", [@"PLPhotoLibraryCacheSubPathType" length]);
    v14 = [v13 lowercaseString];

    v15 = [(NSString *)privateCacheDirectory stringByAppendingPathComponent:v14];

    v9 = v15;
  }

  v16 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:v5 additionalPathComponents:v8];

  return v16;
}

- (id)privateDirectoryWithSubType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = self->_privateDirectory;
  if (v6)
  {
    privateDirectory = self->_privateDirectory;
    if (v6 < 0xB)
    {
      v11 = off_1E79321B8[v6];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", v6, "NSString * _Nonnull PLStringFromPLPhotoLibrarySubPathType(PLPhotoLibrarySubPathType)"}];
      v11 = @"PLPhotoLibrarySubPathTypeLast";
    }

    v12 = v11;
    v13 = -[__CFString substringFromIndex:](v12, "substringFromIndex:", [@"PLPhotoLibrarySubPathType" length]);
    v14 = [v13 lowercaseString];

    v15 = [(NSString *)privateDirectory stringByAppendingPathComponent:v14];

    v9 = v15;
  }

  v16 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:v5 additionalPathComponents:v8];

  return v16;
}

- (id)pathsForLibraryFilesystemSizeCalculation
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)extendedPathsWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0;
  v6 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:5 createIfNeeded:1 error:&v24];
  v7 = v24;
  if (v6)
  {
    [v5 addObject:v6];
  }

  if (v7)
  {
    v8 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:8 createIfNeeded:1 error:0];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = 0;
  v8 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:8 createIfNeeded:1 error:&v23];
  v7 = v23;
  if (v8)
  {
LABEL_5:
    [v5 addObject:v8];
  }

LABEL_6:

  if (v7)
  {
    v9 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:26 createIfNeeded:1 error:0];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22 = 0;
  v9 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:26 createIfNeeded:1 error:&v22];
  v7 = v22;
  if (v9)
  {
LABEL_8:
    [v5 addObject:v9];
  }

LABEL_9:

  if (v7)
  {
    v10 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:27 createIfNeeded:1 error:0];
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = 0;
  v10 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:27 createIfNeeded:1 error:&v21];
  v7 = v21;
  if (v10)
  {
LABEL_11:
    [v5 addObject:v10];
  }

LABEL_12:

  if (v7)
  {
    v11 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:22 createIfNeeded:1 error:0];
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = 0;
  v11 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:22 createIfNeeded:1 error:&v20];
  v7 = v20;
  if (v11)
  {
LABEL_14:
    [v5 addObject:v11];
  }

LABEL_15:

  if (v7)
  {
    v12 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:28 createIfNeeded:1 error:0];
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v19 = 0;
  v12 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:28 createIfNeeded:1 error:&v19];
  v7 = v19;
  if (v12)
  {
LABEL_17:
    [v5 addObject:v12];
  }

LABEL_18:

  if (v7)
  {
    v13 = [(PLPhotoLibraryPathManagerCore *)self privateCacheDirectoryWithSubType:15 createIfNeeded:1 error:0];
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v13 = [(PLPhotoLibraryPathManagerCore *)self privateCacheDirectoryWithSubType:15 createIfNeeded:1 error:&v18];
  v7 = v18;
  if (v13)
  {
LABEL_20:
    [v5 addObject:v13];
  }

LABEL_21:

  if (a3)
  {
    v14 = v7;
    *a3 = v7;
  }

  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v5;
  }

  v16 = v15;

  return v15;
}

- (id)corePathsWithError:(id *)a3 directDatabaseAccess:(BOOL)a4 limitedLibrary:(BOOL)a5
{
  v6 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v6)
  {
    if (a5)
    {
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v21 = 0;
  v10 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:2 createIfNeeded:1 error:&v21];
  v11 = v21;
  if (v10)
  {
    [v9 addObject:v10];
  }

  if (!a5)
  {
    if (v11)
    {
      v12 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:4 createIfNeeded:1 error:0];
      if (!v12)
      {
LABEL_12:

        if (v11)
        {
          v13 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:7 createIfNeeded:1 error:0];
          if (!v13)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v19 = 0;
          v13 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:7 createIfNeeded:1 error:&v19];
          v11 = v19;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        [v9 addObject:v13];
        goto LABEL_15;
      }

LABEL_11:
      [v9 addObject:v12];
      goto LABEL_12;
    }

LABEL_10:
    v20 = 0;
    v12 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:4 createIfNeeded:1 error:&v20];
    v11 = v20;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_16:
  v14 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:1];
  if (v14)
  {
    [v9 addObject:v14];
  }

  if (a3)
  {
    v15 = v11;
    *a3 = v11;
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;

  return v16;
}

- (BOOL)createPathsForNewLibrariesWithError:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0 && !PFProcessIsLaunchedToExecuteTests())
  {
    v7 = 0;
    goto LABEL_7;
  }

  v39 = 0;
  v5 = [(PLPhotoLibraryPathManagerUBF *)self ensureFileProviderSyncExclusionAttributeIsSetWithError:&v39];
  v6 = v39;
  v7 = v6;
  if (!v5)
  {
LABEL_7:
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid client access"];
    v11 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v12 = [v11 errorWithDomain:@"com.apple.photos.error" code:46800 userInfo:v10];
LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  v38 = v6;
  v8 = [(PLPhotoLibraryPathManagerUBF *)self corePathsWithError:&v38 directDatabaseAccess:1 limitedLibrary:0];
  v9 = v38;

  if (v9)
  {
    v10 = [(PLPhotoLibraryPathManagerUBF *)self extendedPathsWithError:0];
  }

  else
  {
    v37 = 0;
    v10 = [(PLPhotoLibraryPathManagerUBF *)self extendedPathsWithError:&v37];
    v9 = v37;
  }

  v13 = [v8 count];
  v14 = [v10 count];
  [v8 unionSet:v10];
  if (!v13 || !v14 || [v8 count] != v14 + v13 || v9)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed expected directory count"];
    v7 = v22;
    if (v9)
    {
      v44[0] = *MEMORY[0x1E696A578];
      v44[1] = *MEMORY[0x1E696AA08];
      v45[0] = v22;
      v45[1] = v9;
      v23 = MEMORY[0x1E695DF20];
      v24 = v45;
      v25 = v44;
      v26 = 2;
    }

    else
    {
      v42 = *MEMORY[0x1E696A578];
      v43 = v22;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v43;
      v25 = &v42;
      v26 = 1;
    }

    v27 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46800 userInfo:v27];

    goto LABEL_29;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v8;
  v15 = [v7 countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v32 = 0;
        if ([(NSFileManager *)self->_fm fileExistsAtPath:v19 isDirectory:&v32])
        {
          v20 = v32 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate path exists: %@", v19];
          v46 = *MEMORY[0x1E696A578];
          v47 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46800 userInfo:v31];

          v21 = 0;
          goto LABEL_35;
        }
      }

      v16 = [v7 countByEnumeratingWithState:&v33 objects:v48 count:16];
      v21 = 1;
      if (v16)
      {
        continue;
      }

      break;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v21 = 1;
  }

LABEL_35:
  v8 = v7;
LABEL_30:

  if (a3)
  {
    v28 = v12;
    *a3 = v12;
  }

  return v21;
}

- (id)pathsForExternalWriters
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(PLPhotoLibraryPathManagerUBF *)self basePrivateDirectoryPath];
  v9[0] = v4;
  v5 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:0];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 setWithArray:v6];

  return v7;
}

- (id)pathsForPermissionCheck
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd != 1)
  {
    goto LABEL_5;
  }

  v3 = [(PLPhotoLibraryPathManagerUBF *)self corePathsWithError:0 directDatabaseAccess:1 limitedLibrary:0];
  v4 = [(PLPhotoLibraryPathManagerUBF *)self basePrivateDirectoryPath];
  [v3 addObject:v4];

  v5 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:11 createIfNeeded:1 error:0];
  if (v5)
  {
    [v3 addObject:v5];
  }

  if (!v3)
  {
LABEL_5:
    v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v3;
}

- (id)pathsForClientAccess:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 directDatabaseAccessAuthorized];
  v6 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:0];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = v5;
  v8 = -[PLPhotoLibraryPathManagerUBF corePathsWithError:directDatabaseAccess:limitedLibrary:](self, "corePathsWithError:directDatabaseAccess:limitedLibrary:", 0, v5, [v4 limitedLibraryMode]);
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    v12 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        v15 = [v14 hasPrefix:v6];
        if (v14 && (v15 & 1) == 0)
        {
          [v7 setObject:v12 forKey:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v10);
  }

  v16 = [(PLPhotoLibraryPathManagerUBF *)self clientOwnedDirectoryPathsForClientAccess:v4];
  [v7 addEntriesFromDictionary:v16];
  if (([v4 limitedLibraryMode] & 1) == 0)
  {
    [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:self->_scopesBaseDirectory];
  }

  if ([v4 cloudInternalEntitled])
  {
    v17 = [v4 trustedCallerBundleID];
    if ([v17 isEqualToString:@"com.apple.mediastream.mstreamd"])
    {
      v18 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:22];
      if (v18)
      {
        [v7 setObject:MEMORY[0x1E695E118] forKey:v18];
      }

      v19 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:15];
      if (v19)
      {
        [v7 setObject:MEMORY[0x1E695E118] forKey:v19];
      }
    }
  }

  v20 = objc_opt_class();
  v21 = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
  v22 = [v20 wellKnownPhotoLibraryIdentifierForURL:v21];

  if (v22 <= 1)
  {
    v23 = [(PLPhotoLibraryPathManagerCore *)self pathForCPLStatus];
    if (v23)
    {
      [v7 setObject:MEMORY[0x1E695E110] forKey:v23];
    }
  }

  if (v52 && [v4 directDatabaseWriteAuthorized])
  {
    v24 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:2 createIfNeeded:0 error:0];
    if (v24)
    {
      v25 = [v7 objectForKeyedSubscript:v24];

      if (!v25)
      {
        v50 = [MEMORY[0x1E696AAA8] currentHandler];
        [v50 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:574 description:{@"Invalid parameter not satisfying: %@", @"dict[databaseDirectory] != nil"}];
      }

      [v7 setObject:MEMORY[0x1E695E118] forKey:v24];
    }
  }

  v26 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:18 createIfNeeded:1 error:0];
  if ([v4 analyticsCacheWriteEntitled])
  {
    if (v26)
    {
      v27 = MEMORY[0x1E695E118];
LABEL_38:
      [v7 setObject:v27 forKey:v26];
    }
  }

  else if ([v4 analyticsCacheReadEntitled] && v26)
  {
    v27 = MEMORY[0x1E695E110];
    goto LABEL_38;
  }

  if (([v4 analyticsCacheWriteEntitled] & 1) != 0 || objc_msgSend(v4, "analyticsCacheReadEntitled"))
  {
    v28 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:18 createIfNeeded:1 error:0];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "analyticsCacheWriteEntitled")}];
    v30 = v29;
    if (v28 && v29)
    {
      [v7 setObject:v29 forKey:v28];
    }
  }

  if (([v4 smartSharingCacheWriteEntitled] & 1) != 0 || objc_msgSend(v4, "smartSharingCacheReadEntitled"))
  {
    v31 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:21 createIfNeeded:1 error:0];
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "smartSharingCacheWriteEntitled")}];
    v33 = v32;
    if (v31 && v32)
    {
      [v7 setObject:v32 forKey:v31];
    }
  }

  if ([v4 internalDataReadWriteAuthorized])
  {
    v34 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:1 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v34)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v34];
    }

    v35 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:3 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v35)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v35];
    }

    v36 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:4 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v36)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v36];
    }

    v37 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:5 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v37)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v37];
    }
  }

  if ([v4 photosMessagesEntitled])
  {
    v38 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:7 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v38)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v38];
    }
  }

  v39 = [(PLPhotoLibraryPathManagerCore *)self capabilities];
  v40 = [v39 isNetworkVolume];

  if (v40)
  {
    v41 = [(PLPhotoLibraryPathManagerUBF *)self photosDatabasePath];
    v42 = [PLFileUtilities proxyLockFilePathForDatabasePath:v41];
    v43 = [v42 stringByDeletingLastPathComponent];

    if (v43)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v43];
    }

    v44 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:2 createIfNeeded:0 error:0];
    v45 = [PLFileUtilities proxyLockCoordinatingFilePathForDatabaseDirectory:v44 databaseName:@"Photos.sqlite"];
    if (v45)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v45];
    }
  }

  if (([v4 coreSceneUnderstandingTaxonomyReadAuthorized] & 1) != 0 || objc_msgSend(v4, "coreSceneUnderstandingTaxonomyWriteAuthorized"))
  {
    v46 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:1 error:0];
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "coreSceneUnderstandingTaxonomyWriteAuthorized")}];
    v48 = v47;
    if (v46 && v47)
    {
      [v7 setObject:v47 forKey:v46];
    }
  }

  return v7;
}

- (id)clientOwnedDirectoryPathsForClientAccess:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 trustedCallerBundleID];

  v8 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:v7 createIfNeeded:1];
  if (v8)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
  }

  v9 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithBundleIdentifier:v7 createIfNeeded:1];
  if (v9)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
  }

  return v6;
}

- (id)photoDirectoryWithType:(unsigned __int8)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(PLPhotoLibraryPathManagerUBF *)self convertPhotoLibraryPathType:v6];
  v10 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:v5 additionalPathComponents:v8];

  return v10;
}

- (id)addToPath:(id)a3 leafType:(unsigned __int8)a4 additionalPathComponents:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = 0;
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    if (v6 != 1)
    {
      goto LABEL_13;
    }

    v10 = v7;
LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  switch(v6)
  {
    case 2:
      v11 = @"PLPhotoLibrarySubPathLeafTypeDerivatives";
      v12 = [@"PLPhotoLibrarySubPathLeafTypeDerivatives" substringFromIndex:{objc_msgSend(@"PLPhotoLibrarySubPathLeafType", "length")}];
      v13 = [v12 lowercaseString];

      v9 = [v7 stringByAppendingPathComponent:v13];

      break;
    case 3:
      v10 = [v7 stringByAppendingPathComponent:@"cloudsync.noindex"];
      goto LABEL_12;
    case 4:
LABEL_9:
      v9 = v7;
      goto LABEL_15;
  }

LABEL_13:
  if ([v8 length])
  {
    v14 = [v9 stringByAppendingPathComponent:v8];

    v9 = v14;
  }

LABEL_15:

  return v9;
}

- (id)convertPhotoLibraryPathType:(unsigned __int8)a3
{
  switch(a3)
  {
    case 0u:
    case 0x24u:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid path type conversion: %s", "-[PLPhotoLibraryPathManagerUBF convertPhotoLibraryPathType:]"}];
      goto LABEL_8;
    case 1u:
    case 0x1Du:
      v5 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
      goto LABEL_35;
    case 2u:
      v4 = 128;
      goto LABEL_34;
    case 3u:
      v4 = 136;
      goto LABEL_34;
    case 4u:
    case 0x1Eu:
    case 0x20u:
      v4 = 144;
      goto LABEL_34;
    case 5u:
    case 0x22u:
      v4 = 152;
      goto LABEL_34;
    case 6u:
      v4 = 160;
      goto LABEL_34;
    case 7u:
      v4 = 240;
      goto LABEL_34;
    case 8u:
      v4 = 248;
      goto LABEL_34;
    case 9u:
      v4 = 256;
      goto LABEL_34;
    case 0xAu:
      v4 = 264;
      goto LABEL_34;
    case 0xBu:
      v4 = 272;
      goto LABEL_34;
    case 0xCu:
      v4 = 280;
      goto LABEL_34;
    case 0xDu:
      v4 = 288;
      goto LABEL_34;
    case 0xEu:
    case 0x23u:
      v4 = 296;
      goto LABEL_34;
    case 0xFu:
      v4 = 304;
      goto LABEL_34;
    case 0x10u:
      v4 = 312;
      goto LABEL_34;
    case 0x11u:
      v4 = 320;
      goto LABEL_34;
    case 0x12u:
      v4 = 328;
      goto LABEL_34;
    case 0x13u:
      v4 = 336;
      goto LABEL_34;
    case 0x14u:
      v4 = 352;
      goto LABEL_34;
    case 0x15u:
      v4 = 344;
      goto LABEL_34;
    case 0x16u:
      v4 = 184;
      goto LABEL_34;
    case 0x17u:
      v4 = 192;
      goto LABEL_34;
    case 0x18u:
      v4 = 200;
      goto LABEL_34;
    case 0x19u:
      v4 = 208;
      goto LABEL_34;
    case 0x1Au:
      v4 = 224;
      goto LABEL_34;
    case 0x1Bu:
      v4 = 232;
      goto LABEL_34;
    case 0x1Cu:
      v4 = 216;
LABEL_34:
      v5 = *(&self->super.super.isa + v4);
      goto LABEL_35;
    case 0x1Fu:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid video key frames legacy path type (non-UBF only): %s", "-[PLPhotoLibraryPathManagerUBF convertPhotoLibraryPathType:]"}];
LABEL_8:
      v5 = 0;
      goto LABEL_35;
    case 0x21u:
      v5 = [(PLPhotoLibraryPathManagerUBF *)self photoDirectoryWithType:14 leafType:3 additionalPathComponents:0];
LABEL_35:

      break;
    default:
      v5 = 0;

      break;
  }

  return v5;
}

- (id)_externalDirectoryWithBundleIdentifier:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v24[0] = v8;
  v24[1] = @"external";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v7 pathWithComponents:v9];

  if (v6)
  {
    v11 = [v10 stringByAppendingPathComponent:v6];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  if (v4)
  {
    v17 = 0;
    v13 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v17];
    v14 = v17;
    if (v13)
    {
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      [v15 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];
    }

    else
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = "[PLPhotoLibraryPathManagerUBF _externalDirectoryWithBundleIdentifier:createIfNeeded:]";
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
      }
    }
  }

  return v12;
}

- (PLPhotoLibraryPathManagerUBF)initWithLibraryURL:(id)a3 bundleScope:(unsigned __int16)a4
{
  v92.receiver = self;
  v92.super_class = PLPhotoLibraryPathManagerUBF;
  v4 = [(PLPhotoLibraryPathManagerCore *)&v92 initWithLibraryURL:a3 bundleScope:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PLPhotoLibraryPathManagerCore *)v4 baseDirectory];
    v7 = [v6 stringByAppendingPathComponent:@"database"];
    databaseDirectory = v5->_databaseDirectory;
    v5->_databaseDirectory = v7;

    v9 = [(NSString *)v5->_databaseDirectory stringByAppendingPathComponent:@"search"];
    searchDatabaseDirectory = v5->_searchDatabaseDirectory;
    v5->_searchDatabaseDirectory = v9;

    v11 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v12 = [v11 stringByAppendingPathComponent:@"originals"];
    originalsDirectory = v5->_originalsDirectory;
    v5->_originalsDirectory = v12;

    v14 = PLBundleIdentifier();
    v15 = [(PLPhotoLibraryPathManagerCore *)v5 privateDirectoryWithBundleIdentifier:v14 createIfNeeded:0];
    privateDirectory = v5->_privateDirectory;
    v5->_privateDirectory = v15;

    v17 = [(NSString *)v5->_privateDirectory stringByAppendingPathComponent:@"caches"];
    privateCacheDirectory = v5->_privateCacheDirectory;
    v5->_privateCacheDirectory = v17;

    v19 = [(NSString *)v5->_privateCacheDirectory stringByAppendingPathComponent:@"restore"];
    restoreInfoDirectory = v5->_restoreInfoDirectory;
    v5->_restoreInfoDirectory = v19;

    v21 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v22 = [v21 stringByAppendingPathComponent:@"scopes"];
    scopesBaseDirectory = v5->_scopesBaseDirectory;
    v5->_scopesBaseDirectory = v22;

    v24 = [(NSString *)v5->_scopesBaseDirectory stringByAppendingPathComponent:@"cloudsharing"];
    scopesPhotoCloudSharingDirectory = v5->_scopesPhotoCloudSharingDirectory;
    v5->_scopesPhotoCloudSharingDirectory = v24;

    v26 = [(NSString *)v5->_scopesPhotoCloudSharingDirectory stringByAppendingPathComponent:@"data"];
    scopesPhotoCloudSharingDataDirectory = v5->_scopesPhotoCloudSharingDataDirectory;
    v5->_scopesPhotoCloudSharingDataDirectory = v26;

    v28 = [(NSString *)v5->_scopesPhotoCloudSharingDirectory stringByAppendingPathComponent:@"metadata"];
    scopesPhotoCloudSharingMetadataDirectory = v5->_scopesPhotoCloudSharingMetadataDirectory;
    v5->_scopesPhotoCloudSharingMetadataDirectory = v28;

    v30 = [(NSString *)v5->_scopesPhotoCloudSharingDirectory stringByAppendingPathComponent:@"caches"];
    scopesPhotoCloudSharingCacheDirectory = v5->_scopesPhotoCloudSharingCacheDirectory;
    v5->_scopesPhotoCloudSharingCacheDirectory = v30;

    v32 = [(NSString *)v5->_scopesBaseDirectory stringByAppendingPathComponent:@"momentshared"];
    scopesMomentSharedDirectory = v5->_scopesMomentSharedDirectory;
    v5->_scopesMomentSharedDirectory = v32;

    v34 = [(NSString *)v5->_scopesBaseDirectory stringByAppendingPathComponent:@"collectionshare"];
    scopesCollectionShareDirectory = v5->_scopesCollectionShareDirectory;
    v5->_scopesCollectionShareDirectory = v34;

    v36 = [(NSString *)v5->_scopesBaseDirectory stringByAppendingPathComponent:@"syndication"];
    scopesSyndicationDirectory = v5->_scopesSyndicationDirectory;
    v5->_scopesSyndicationDirectory = v36;

    v38 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v39 = [v38 stringByAppendingPathComponent:@"resources"];
    resourcesDirectory = v5->_resourcesDirectory;
    v5->_resourcesDirectory = v39;

    v41 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v42 = [v41 stringByAppendingPathComponent:@"resources/renders"];
    rendersDirectory = v5->_rendersDirectory;
    v5->_rendersDirectory = v42;

    v44 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v45 = [v44 stringByAppendingPathComponent:@"resources/derivatives"];
    derivativesDirectory = v5->_derivativesDirectory;
    v5->_derivativesDirectory = v45;

    v47 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v48 = [v47 stringByAppendingPathComponent:@"resources/derivatives/thumbs"];
    derivativesThumbsDirectory = v5->_derivativesThumbsDirectory;
    v5->_derivativesThumbsDirectory = v48;

    v50 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v51 = [v50 stringByAppendingPathComponent:@"resources/derivatives/masters"];
    derivativesMasterThumbsDirectory = v5->_derivativesMasterThumbsDirectory;
    v5->_derivativesMasterThumbsDirectory = v51;

    v53 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v54 = [v53 stringByAppendingPathComponent:@"resources/derivatives/cvt"];
    derivativesContextualVideoThumbnailsDirectory = v5->_derivativesContextualVideoThumbnailsDirectory;
    v5->_derivativesContextualVideoThumbnailsDirectory = v54;

    v56 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v57 = [v56 stringByAppendingPathComponent:@"resources/journals"];
    journalsDirectory = v5->_journalsDirectory;
    v5->_journalsDirectory = v57;

    v59 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v60 = [v59 stringByAppendingPathComponent:@"resources/cpl"];
    resourcesCPLDataDirectory = v5->_resourcesCPLDataDirectory;
    v5->_resourcesCPLDataDirectory = v60;

    v62 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v63 = [v62 stringByAppendingPathComponent:@"resources/streams"];
    resourcesPhotoStreamsDataDirectory = v5->_resourcesPhotoStreamsDataDirectory;
    v5->_resourcesPhotoStreamsDataDirectory = v63;

    v65 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v66 = [v65 stringByAppendingPathComponent:@"resources/projects/data"];
    resourcesProjectsDataDirectory = v5->_resourcesProjectsDataDirectory;
    v5->_resourcesProjectsDataDirectory = v66;

    v68 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v69 = [v68 stringByAppendingPathComponent:@"resources/projects/legacy"];
    resourcesProjectsLegacyDirectory = v5->_resourcesProjectsLegacyDirectory;
    v5->_resourcesProjectsLegacyDirectory = v69;

    v71 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v72 = [v71 stringByAppendingPathComponent:@"resources/caches/analytics"];
    resourcesAnalyticsDirectory = v5->_resourcesAnalyticsDirectory;
    v5->_resourcesAnalyticsDirectory = v72;

    v74 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v75 = [v74 stringByAppendingPathComponent:@"resources/caches/compute"];
    resourcesComputeDirectory = v5->_resourcesComputeDirectory;
    v5->_resourcesComputeDirectory = v75;

    v77 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v78 = [v77 stringByAppendingPathComponent:@"resources/smartsharing"];
    resourcesSmartSharingDirectory = v5->_resourcesSmartSharingDirectory;
    v5->_resourcesSmartSharingDirectory = v78;

    v80 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v81 = [v80 stringByAppendingPathComponent:@"resources/partialvideo"];
    resourcesPartialVideoDirectory = v5->_resourcesPartialVideoDirectory;
    v5->_resourcesPartialVideoDirectory = v81;

    v83 = PLBundleIdentifier();
    v84 = [(PLPhotoLibraryPathManagerUBF *)v5 _externalDirectoryWithBundleIdentifier:v83 createIfNeeded:0];
    externalDirectory = v5->_externalDirectory;
    v5->_externalDirectory = v84;

    v86 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v87 = [v86 stringByAppendingPathComponent:@"internal"];
    internalDirectory = v5->_internalDirectory;
    v5->_internalDirectory = v87;

    v89 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fm = v5->_fm;
    v5->_fm = v89;

    [(PLPhotoLibraryPathManagerCore *)v5 postInit];
  }

  return v5;
}

+ (id)allPhotosPathsOnThisDevice
{
  if (allPhotosPathsOnThisDevice_onceToken != -1)
  {
    dispatch_once(&allPhotosPathsOnThisDevice_onceToken, &__block_literal_global_189);
  }

  v3 = allPhotosPathsOnThisDevice_bundlePaths;

  return v3;
}

void __58__PLPhotoLibraryPathManagerUBF_allPhotosPathsOnThisDevice__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 4; ++i)
  {
    if ((i | 2) == 3)
    {
      v2 = [PLPhotoLibraryPathManagerCore wellKnownPhotoLibraryURLForIdentifier:i];
      v3 = v2;
      if (v2)
      {
        v4 = [v2 path];
        [v0 addObject:v4];
      }
    }
  }

  v5 = allPhotosPathsOnThisDevice_bundlePaths;
  allPhotosPathsOnThisDevice_bundlePaths = v0;
}

@end