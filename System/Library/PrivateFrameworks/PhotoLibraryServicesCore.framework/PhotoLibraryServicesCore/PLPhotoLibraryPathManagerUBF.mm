@interface PLPhotoLibraryPathManagerUBF
+ (id)allPhotosPathsOnThisDevice;
- (BOOL)createPathsForNewLibrariesWithError:(id *)error;
- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)path error:(id *)error;
- (PLPhotoLibraryPathManagerUBF)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope;
- (id)_externalDirectoryWithBundleIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)_scopedInternalPathManagerWithBundleScope:(unsigned __int16)scope;
- (id)addToPath:(id)path leafType:(unsigned __int8)type additionalPathComponents:(id)components;
- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory type:(unsigned __int8)type bundleScope:(unsigned __int16)scope;
- (id)assetMainFilePathWithDirectory:(id)directory filename:(id)filename bundleScope:(unsigned __int16)scope;
- (id)basePrivateDirectoryPath;
- (id)clientOwnedDirectoryPathsForClientAccess:(id)access;
- (id)cloudRestoreBackgroundCompletePath;
- (id)cloudRestoreBackgroundPhaseInProgressTokenPath;
- (id)cloudRestoreCompleteTokenPath;
- (id)cloudRestoreContextPath;
- (id)cloudRestoreForegroundPhaseCompleteTokenPath;
- (id)convertPhotoLibraryPathType:(unsigned __int8)type;
- (id)corePathsWithError:(id *)error directDatabaseAccess:(BOOL)access limitedLibrary:(BOOL)library;
- (id)extendedPathsWithError:(id *)error;
- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components;
- (id)modelRestorePostProcessingCompleteTokenPath;
- (id)pathsForClientAccess:(id)access;
- (id)pathsForExternalWriters;
- (id)pathsForLibraryFilesystemSizeCalculation;
- (id)pathsForPermissionCheck;
- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components;
- (id)purgeableSubdirectoryNamesWithType:(unsigned __int8)type;
- (id)urlWithIdentifier:(id)identifier;
- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)scope;
- (void)enumerateBundleScopesWithBlock:(id)block;
- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)identifier mode:(unsigned __int8)mode toURLWithHandler:(id)handler;
- (void)setExtendedAttributesWithIdentifier:(id)identifier;
- (void)setExtendedAttributesWithIdentifier:(id)identifier andURL:(id)l;
@end

@implementation PLPhotoLibraryPathManagerUBF

- (id)basePrivateDirectoryPath
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  baseDirectory = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v7[0] = baseDirectory;
  v7[1] = @"private";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

- (BOOL)updateTimeMachineExclusionAttributeForExcludePath:(id)path error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
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
        v10 = pathCopy;
        _os_log_fault_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unauthorized client attempting to set time machine exclusion attribute on path: %@", &v9, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:1];
  v7 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v6 error:error];

LABEL_9:
  return v7;
}

- (id)_scopedInternalPathManagerWithBundleScope:(unsigned __int16)scope
{
  scopeCopy = scope;
  selfCopy = self;
  if ([(PLPhotoLibraryPathManagerCore *)selfCopy bundleScope]!= scopeCopy)
  {
    if ([(PLPhotoLibraryPathManagerCore *)selfCopy bundleScope])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1032 description:@"Requesting a scoped path managed from a non-main scoped path manager is not supported"];
    }

    v6 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:[(PLPhotoLibraryPathManagerUBF *)selfCopy photoLibraryPathTypeForBundleScope:scopeCopy]];
    v7 = [PLPhotoLibraryPathManagerUBF alloc];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
    v9 = [(PLPhotoLibraryPathManagerUBF *)v7 initWithLibraryURL:v8 bundleScope:scopeCopy];

    selfCopy = v9;
  }

  return selfCopy;
}

- (id)assetMainFilePathWithDirectory:(id)directory filename:(id)filename bundleScope:(unsigned __int16)scope
{
  scopeCopy = scope;
  directoryCopy = directory;
  filenameCopy = filename;
  if (!directoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1000 description:{@"Invalid parameter not satisfying: %@", @"directory"}];
  }

  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1001 description:@"can only access asset main file path on main bundle scoped path manager"];
  }

  if (([directoryCopy hasPrefix:@"/"] & 1) == 0)
  {
    if (scopeCopy <= 5)
    {
      if (((1 << scopeCopy) & 0x2A) != 0)
      {
        v11 = [PLPhotoLibraryPathManager alloc];
        libraryURL = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
        selfCopy = [(PLPhotoLibraryPathManager *)v11 initWithLibraryURL:libraryURL bundleScope:scopeCopy libraryFormat:2];

        if (!selfCopy)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (((1 << scopeCopy) & 5) == 0)
        {
          goto LABEL_12;
        }

        selfCopy = self;
        if (!selfCopy)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      if (scopeCopy == 2)
      {
        v15 = 23;
      }

      else
      {
        v15 = 4;
      }

      v16 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:v15];
      v17 = [v16 stringByAppendingPathComponent:directoryCopy];

      directoryCopy = v17;
      goto LABEL_17;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:1018 description:{@"Cannot resolve path manager from invalid bundle scope %d", scopeCopy}];

    selfCopy = 0;
    goto LABEL_13;
  }

LABEL_17:
  v18 = [directoryCopy stringByAppendingPathComponent:filenameCopy];

  return v18;
}

- (id)assetAbbreviatedMetadataDirectoryForDirectory:(id)directory type:(unsigned __int8)type bundleScope:(unsigned __int16)scope
{
  scopeCopy = scope;
  typeCopy = type;
  directoryCopy = directory;
  v9 = [(PLPhotoLibraryPathManagerUBF *)self _scopedInternalPathManagerWithBundleScope:scopeCopy];
  v10 = [v9 photoDirectoryWithType:typeCopy];
  v11 = [(PLPhotoLibraryPathManagerCore *)self assetAbbreviatedMetadataDirectoryForDirectory:directoryCopy rootPath:v10];

  return v11;
}

- (id)modelRestorePostProcessingCompleteTokenPath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"ModelRestorePostProcessingComplete"];

  return v3;
}

- (id)cloudRestoreContextPath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"CloudRestoreContext.plist"];

  return v3;
}

- (id)cloudRestoreCompleteTokenPath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"CloudRestoreComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundCompletePath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"CloudRestoreBackgroundComplete"];

  return v3;
}

- (id)cloudRestoreBackgroundPhaseInProgressTokenPath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"CloudRestoreBackgroundInProgress"];

  return v3;
}

- (id)cloudRestoreForegroundPhaseCompleteTokenPath
{
  cloudRestoreInfoDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self cloudRestoreInfoDirectoryPath];
  v3 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:@"CloudRestoreForegroundComplete"];

  return v3;
}

- (void)obtainAccessAndWaitWithFileWithIdentifier:(id)identifier mode:(unsigned __int8)mode toURLWithHandler:(id)handler
{
  modeCopy = mode;
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = [(PLPhotoLibraryPathManagerUBF *)self urlWithIdentifier:identifierCopy];
  if (handlerCopy)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v11 = 0;
    if (modeCopy == 2 && ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) != 0)
    {
      uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
      path = [uRLByDeletingLastPathComponent path];
      v15 = 0;
      v14 = [PLFileUtilities createDirectoryAtPath:path error:&v15];
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

    handlerCopy[2](handlerCopy, v10, v11);
  }

  else
  {
    v11 = 0;
  }

  if (modeCopy == 2)
  {
    [(PLPhotoLibraryPathManagerUBF *)self setExtendedAttributesWithIdentifier:identifierCopy andURL:v10];
  }
}

- (void)setExtendedAttributesWithIdentifier:(id)identifier andURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (((PLIsReallyAssetsd_isAssetsd & 1) != 0 || __PLIsAssetsdProxyService) && ![identifierCopy resourceVersion])
  {
    originalFilename = [identifierCopy originalFilename];
    v9 = [originalFilename length];

    if (v9)
    {
      v22 = 0;
      fm = self->_fm;
      path = [lCopy path];
      LODWORD(fm) = [(NSFileManager *)fm fileExistsAtPath:path isDirectory:&v22];
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
        originalFilename2 = [identifierCopy originalFilename];
        uTF8String = [originalFilename2 UTF8String];

        originalFilename4 = [MEMORY[0x1E695DEF0] dataWithBytes:uTF8String length:strlen(uTF8String)];
        uTF8String2 = [@"com.apple.assetsd.originalFilename" UTF8String];
        path2 = [lCopy path];
        LODWORD(uTF8String2) = setxattr([path2 UTF8String], uTF8String2, objc_msgSend(originalFilename4, "bytes"), objc_msgSend(originalFilename4, "length"), 0, 0);

        if (uTF8String2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          originalFilename3 = [identifierCopy originalFilename];
          v20 = __error();
          v21 = strerror(*v20);
          *buf = 138412802;
          v24 = originalFilename3;
          v25 = 2112;
          v26 = lCopy;
          v27 = 2080;
          v28 = v21;
          _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to write originalFilename (%@) to url: %@ Error: %s", buf, 0x20u);
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        originalFilename4 = [identifierCopy originalFilename];
        *buf = 138412546;
        v24 = originalFilename4;
        v25 = 2112;
        v26 = lCopy;
        _os_log_debug_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Failed to write originalfilename (%@) to url: %@", buf, 0x16u);
LABEL_15:
      }
    }
  }
}

- (void)setExtendedAttributesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PLPhotoLibraryPathManagerUBF *)self urlWithIdentifier:identifierCopy];
  [(PLPhotoLibraryPathManagerUBF *)self setExtendedAttributesWithIdentifier:identifierCopy andURL:v5];
}

- (id)urlWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  if ([identifierCopy bundleScope])
  {
    v6 = -[PLPhotoLibraryPathManagerUBF _scopedInternalPathManagerWithBundleScope:](selfCopy, "_scopedInternalPathManagerWithBundleScope:", [identifierCopy bundleScope]);

    selfCopy = v6;
  }

  uuid = [identifierCopy uuid];
  uTF8String = [uuid UTF8String];
  extension = [identifierCopy extension];
  uTF8String2 = [extension UTF8String];
  resourceType = [identifierCopy resourceType];
  resourceVersion = [identifierCopy resourceVersion];
  recipeId = [identifierCopy recipeId];
  isData = [identifierCopy isData];
  v26 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:4];
  uTF8String3 = [v26 UTF8String];
  v7 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:9];
  uTF8String4 = [v7 UTF8String];
  v8 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:10];
  uTF8String5 = [v8 UTF8String];
  v9 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:19];
  uTF8String6 = [v9 UTF8String];
  v10 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:12];
  uTF8String7 = [v10 UTF8String];
  v12 = [(PLPhotoLibraryPathManagerCore *)selfCopy photoDirectoryWithType:13];
  uTF8String8 = [v12 UTF8String];
  customSuffix = [identifierCopy customSuffix];
  v15 = PLURLForResourceProperties(uTF8String, uTF8String2, resourceType, resourceVersion, recipeId, isData, uTF8String3, uTF8String4, uTF8String5, uTF8String6, uTF8String7, uTF8String8, [customSuffix UTF8String]);

  return v15;
}

- (void)enumerateBundleScopesWithBlock:(id)block
{
  blockCopy = block;
  if ([(PLPhotoLibraryPathManagerCore *)self bundleScope])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:886 description:@"can only enumerate bundle scopes on main bundle scoped path manager"];
  }

  v5 = 0;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    if (v5 != 4)
    {
      v8 = [PLPhotoLibraryPathManager alloc];
      libraryURL = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
      v10 = [(PLPhotoLibraryPathManager *)v8 initWithLibraryURL:libraryURL bundleScope:v5 libraryFormat:2];

      (*(blockCopy + 2))(blockCopy, v5, [(PLPhotoLibraryPathManagerUBF *)self photoLibraryPathTypeForBundleScope:v5], v10);
    }

    objc_autoreleasePoolPop(v6);
    ++v5;
  }

  while (v7 < 5);
}

- (unsigned)photoLibraryPathTypeForBundleScope:(unsigned __int16)scope
{
  v3 = 0x1B001C161A01uLL >> (8 * scope);
  if (scope >= 7u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 0x1F;
}

- (id)purgeableSubdirectoryNamesWithType:(unsigned __int8)type
{
  v3 = MEMORY[0x1E695E0F0];
  if (type <= 0xAu && ((1 << type) & 0x610) != 0)
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

- (id)internalDirectoryWithSubType:(unsigned __int8)type additionalPathComponents:(id)components
{
  typeCopy = type;
  componentsCopy = components;
  v7 = 0;
  if (typeCopy > 2)
  {
    if (typeCopy < 6)
    {
      goto LABEL_11;
    }

    if (typeCopy != 6)
    {
      if (typeCopy != 7)
      {
        if (typeCopy != 8)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_11:
      internalDirectory = self->_internalDirectory;
      v11 = off_1E79322D8[typeCopy];
      v12 = -[__CFString substringFromIndex:](v11, "substringFromIndex:", [@"PLPhotoLibraryInternalPathType" length]);
      lowercaseString = [v12 lowercaseString];

      v7 = [(NSString *)internalDirectory stringByAppendingPathComponent:lowercaseString];

      goto LABEL_17;
    }

    v8 = self->_internalDirectory;
    v9 = @"csutaxonomy";
LABEL_16:
    v7 = [(NSString *)v8 stringByAppendingPathComponent:v9];
    goto LABEL_17;
  }

  if (typeCopy)
  {
    if (typeCopy == 1)
    {
      goto LABEL_11;
    }

    if (typeCopy != 2)
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
  v15 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v7 leafType:1 additionalPathComponents:componentsCopy];

  return v15;
}

- (id)externalDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  if ((typeCopy - 1) >= 3)
  {
    if (typeCopy != 4 && typeCopy)
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
    v10 = off_1E79322B8[typeCopy];
    v11 = -[__CFString substringFromIndex:](v10, "substringFromIndex:", [@"PLPhotoLibraryExternalPathType" length]);
    lowercaseString = [v11 lowercaseString];

    v13 = [(NSString *)externalDirectory stringByAppendingPathComponent:lowercaseString];
  }

  v14 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v13 leafType:leafTypeCopy additionalPathComponents:componentsCopy];

  return v14;
}

- (id)privateCacheDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v9 = self->_privateCacheDirectory;
  if (typeCopy)
  {
    privateCacheDirectory = self->_privateCacheDirectory;
    if (typeCopy < 0x11)
    {
      v11 = off_1E7932230[typeCopy];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", typeCopy, "NSString * _Nonnull PLStringFromPLPhotoLibraryCacheSubPathType(PLPhotoLibraryCacheSubPathType)"}];
      v11 = @"PLPhotoLibraryCacheSubPathTypeLast";
    }

    v12 = v11;
    v13 = -[__CFString substringFromIndex:](v12, "substringFromIndex:", [@"PLPhotoLibraryCacheSubPathType" length]);
    lowercaseString = [v13 lowercaseString];

    v15 = [(NSString *)privateCacheDirectory stringByAppendingPathComponent:lowercaseString];

    v9 = v15;
  }

  v16 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:leafTypeCopy additionalPathComponents:componentsCopy];

  return v16;
}

- (id)privateDirectoryWithSubType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v9 = self->_privateDirectory;
  if (typeCopy)
  {
    privateDirectory = self->_privateDirectory;
    if (typeCopy < 0xB)
    {
      v11 = off_1E79321B8[typeCopy];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", typeCopy, "NSString * _Nonnull PLStringFromPLPhotoLibrarySubPathType(PLPhotoLibrarySubPathType)"}];
      v11 = @"PLPhotoLibrarySubPathTypeLast";
    }

    v12 = v11;
    v13 = -[__CFString substringFromIndex:](v12, "substringFromIndex:", [@"PLPhotoLibrarySubPathType" length]);
    lowercaseString = [v13 lowercaseString];

    v15 = [(NSString *)privateDirectory stringByAppendingPathComponent:lowercaseString];

    v9 = v15;
  }

  v16 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:leafTypeCopy additionalPathComponents:componentsCopy];

  return v16;
}

- (id)pathsForLibraryFilesystemSizeCalculation
{
  v2 = MEMORY[0x1E695DFD8];
  baseDirectory = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v4 = [v2 setWithObject:baseDirectory];

  return v4;
}

- (id)extendedPathsWithError:(id *)error
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

  if (error)
  {
    v14 = v7;
    *error = v7;
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

- (id)corePathsWithError:(id *)error directDatabaseAccess:(BOOL)access limitedLibrary:(BOOL)library
{
  accessCopy = access;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!accessCopy)
  {
    if (library)
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

  if (!library)
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

  if (error)
  {
    v15 = v11;
    *error = v11;
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

- (BOOL)createPathsForNewLibrariesWithError:(id *)error
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

  if (error)
  {
    v28 = v12;
    *error = v12;
  }

  return v21;
}

- (id)pathsForExternalWriters
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  basePrivateDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self basePrivateDirectoryPath];
  v9[0] = basePrivateDirectoryPath;
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
  basePrivateDirectoryPath = [(PLPhotoLibraryPathManagerUBF *)self basePrivateDirectoryPath];
  [v3 addObject:basePrivateDirectoryPath];

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

- (id)pathsForClientAccess:(id)access
{
  v58 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  directDatabaseAccessAuthorized = [accessCopy directDatabaseAccessAuthorized];
  v6 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:0 createIfNeeded:0];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = directDatabaseAccessAuthorized;
  v8 = -[PLPhotoLibraryPathManagerUBF corePathsWithError:directDatabaseAccess:limitedLibrary:](self, "corePathsWithError:directDatabaseAccess:limitedLibrary:", 0, directDatabaseAccessAuthorized, [accessCopy limitedLibraryMode]);
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

  v16 = [(PLPhotoLibraryPathManagerUBF *)self clientOwnedDirectoryPathsForClientAccess:accessCopy];
  [v7 addEntriesFromDictionary:v16];
  if (([accessCopy limitedLibraryMode] & 1) == 0)
  {
    [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:self->_scopesBaseDirectory];
  }

  if ([accessCopy cloudInternalEntitled])
  {
    trustedCallerBundleID = [accessCopy trustedCallerBundleID];
    if ([trustedCallerBundleID isEqualToString:@"com.apple.mediastream.mstreamd"])
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
  libraryURL = [(PLPhotoLibraryPathManagerCore *)self libraryURL];
  v22 = [v20 wellKnownPhotoLibraryIdentifierForURL:libraryURL];

  if (v22 <= 1)
  {
    pathForCPLStatus = [(PLPhotoLibraryPathManagerCore *)self pathForCPLStatus];
    if (pathForCPLStatus)
    {
      [v7 setObject:MEMORY[0x1E695E110] forKey:pathForCPLStatus];
    }
  }

  if (v52 && [accessCopy directDatabaseWriteAuthorized])
  {
    v24 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:2 createIfNeeded:0 error:0];
    if (v24)
    {
      v25 = [v7 objectForKeyedSubscript:v24];

      if (!v25)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerUBF.m" lineNumber:574 description:{@"Invalid parameter not satisfying: %@", @"dict[databaseDirectory] != nil"}];
      }

      [v7 setObject:MEMORY[0x1E695E118] forKey:v24];
    }
  }

  v26 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:18 createIfNeeded:1 error:0];
  if ([accessCopy analyticsCacheWriteEntitled])
  {
    if (v26)
    {
      v27 = MEMORY[0x1E695E118];
LABEL_38:
      [v7 setObject:v27 forKey:v26];
    }
  }

  else if ([accessCopy analyticsCacheReadEntitled] && v26)
  {
    v27 = MEMORY[0x1E695E110];
    goto LABEL_38;
  }

  if (([accessCopy analyticsCacheWriteEntitled] & 1) != 0 || objc_msgSend(accessCopy, "analyticsCacheReadEntitled"))
  {
    v28 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:18 createIfNeeded:1 error:0];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(accessCopy, "analyticsCacheWriteEntitled")}];
    v30 = v29;
    if (v28 && v29)
    {
      [v7 setObject:v29 forKey:v28];
    }
  }

  if (([accessCopy smartSharingCacheWriteEntitled] & 1) != 0 || objc_msgSend(accessCopy, "smartSharingCacheReadEntitled"))
  {
    v31 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:21 createIfNeeded:1 error:0];
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(accessCopy, "smartSharingCacheWriteEntitled")}];
    v33 = v32;
    if (v31 && v32)
    {
      [v7 setObject:v32 forKey:v31];
    }
  }

  if ([accessCopy internalDataReadWriteAuthorized])
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

  if ([accessCopy photosMessagesEntitled])
  {
    v38 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:7 additionalPathComponents:0 createIfNeeded:1 error:0];
    if (v38)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v38];
    }
  }

  capabilities = [(PLPhotoLibraryPathManagerCore *)self capabilities];
  isNetworkVolume = [capabilities isNetworkVolume];

  if (isNetworkVolume)
  {
    photosDatabasePath = [(PLPhotoLibraryPathManagerUBF *)self photosDatabasePath];
    v42 = [PLFileUtilities proxyLockFilePathForDatabasePath:photosDatabasePath];
    stringByDeletingLastPathComponent = [v42 stringByDeletingLastPathComponent];

    if (stringByDeletingLastPathComponent)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:stringByDeletingLastPathComponent];
    }

    v44 = [(PLPhotoLibraryPathManagerCore *)self photoDirectoryWithType:2 createIfNeeded:0 error:0];
    v45 = [PLFileUtilities proxyLockCoordinatingFilePathForDatabaseDirectory:v44 databaseName:@"Photos.sqlite"];
    if (v45)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:v45];
    }
  }

  if (([accessCopy coreSceneUnderstandingTaxonomyReadAuthorized] & 1) != 0 || objc_msgSend(accessCopy, "coreSceneUnderstandingTaxonomyWriteAuthorized"))
  {
    v46 = [(PLPhotoLibraryPathManagerCore *)self internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:1 error:0];
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(accessCopy, "coreSceneUnderstandingTaxonomyWriteAuthorized")}];
    v48 = v47;
    if (v46 && v47)
    {
      [v7 setObject:v47 forKey:v46];
    }
  }

  return v7;
}

- (id)clientOwnedDirectoryPathsForClientAccess:(id)access
{
  v4 = MEMORY[0x1E695DF90];
  accessCopy = access;
  v6 = objc_alloc_init(v4);
  trustedCallerBundleID = [accessCopy trustedCallerBundleID];

  v8 = [(PLPhotoLibraryPathManagerUBF *)self _externalDirectoryWithBundleIdentifier:trustedCallerBundleID createIfNeeded:1];
  if (v8)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
  }

  v9 = [(PLPhotoLibraryPathManagerCore *)self privateDirectoryWithBundleIdentifier:trustedCallerBundleID createIfNeeded:1];
  if (v9)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
  }

  return v6;
}

- (id)photoDirectoryWithType:(unsigned __int8)type leafType:(unsigned __int8)leafType additionalPathComponents:(id)components
{
  leafTypeCopy = leafType;
  typeCopy = type;
  componentsCopy = components;
  v9 = [(PLPhotoLibraryPathManagerUBF *)self convertPhotoLibraryPathType:typeCopy];
  v10 = [(PLPhotoLibraryPathManagerUBF *)self addToPath:v9 leafType:leafTypeCopy additionalPathComponents:componentsCopy];

  return v10;
}

- (id)addToPath:(id)path leafType:(unsigned __int8)type additionalPathComponents:(id)components
{
  typeCopy = type;
  pathCopy = path;
  componentsCopy = components;
  v9 = 0;
  if (typeCopy <= 1)
  {
    if (!typeCopy)
    {
      goto LABEL_9;
    }

    if (typeCopy != 1)
    {
      goto LABEL_13;
    }

    v10 = pathCopy;
LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  switch(typeCopy)
  {
    case 2:
      v11 = @"PLPhotoLibrarySubPathLeafTypeDerivatives";
      v12 = [@"PLPhotoLibrarySubPathLeafTypeDerivatives" substringFromIndex:{objc_msgSend(@"PLPhotoLibrarySubPathLeafType", "length")}];
      lowercaseString = [v12 lowercaseString];

      v9 = [pathCopy stringByAppendingPathComponent:lowercaseString];

      break;
    case 3:
      v10 = [pathCopy stringByAppendingPathComponent:@"cloudsync.noindex"];
      goto LABEL_12;
    case 4:
LABEL_9:
      v9 = pathCopy;
      goto LABEL_15;
  }

LABEL_13:
  if ([componentsCopy length])
  {
    v14 = [v9 stringByAppendingPathComponent:componentsCopy];

    v9 = v14;
  }

LABEL_15:

  return v9;
}

- (id)convertPhotoLibraryPathType:(unsigned __int8)type
{
  switch(type)
  {
    case 0u:
    case 0x24u:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid path type conversion: %s", "-[PLPhotoLibraryPathManagerUBF convertPhotoLibraryPathType:]"}];
      goto LABEL_8;
    case 1u:
    case 0x1Du:
      baseDirectory = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
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
      baseDirectory = *(&self->super.super.isa + v4);
      goto LABEL_35;
    case 0x1Fu:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid video key frames legacy path type (non-UBF only): %s", "-[PLPhotoLibraryPathManagerUBF convertPhotoLibraryPathType:]"}];
LABEL_8:
      baseDirectory = 0;
      goto LABEL_35;
    case 0x21u:
      baseDirectory = [(PLPhotoLibraryPathManagerUBF *)self photoDirectoryWithType:14 leafType:3 additionalPathComponents:0];
LABEL_35:

      break;
    default:
      baseDirectory = 0;

      break;
  }

  return baseDirectory;
}

- (id)_externalDirectoryWithBundleIdentifier:(id)identifier createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v24[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696AEC0];
  baseDirectory = [(PLPhotoLibraryPathManagerCore *)self baseDirectory];
  v24[0] = baseDirectory;
  v24[1] = @"external";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v7 pathWithComponents:v9];

  if (identifierCopy)
  {
    v11 = [v10 stringByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  if (neededCopy)
  {
    v17 = 0;
    v13 = [(PLPhotoLibraryPathManagerCore *)self internalValidateCreationRequestWithError:&v17];
    v14 = v17;
    if (v13)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];
    }

    else
    {
      defaultManager = PLBackendGetLog();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = "[PLPhotoLibraryPathManagerUBF _externalDirectoryWithBundleIdentifier:createIfNeeded:]";
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_1AA9BD000, defaultManager, OS_LOG_TYPE_ERROR, "%{public}s: failed to create directory: %@ with error: %@", buf, 0x20u);
      }
    }
  }

  return v12;
}

- (PLPhotoLibraryPathManagerUBF)initWithLibraryURL:(id)l bundleScope:(unsigned __int16)scope
{
  v92.receiver = self;
  v92.super_class = PLPhotoLibraryPathManagerUBF;
  v4 = [(PLPhotoLibraryPathManagerCore *)&v92 initWithLibraryURL:l bundleScope:scope];
  v5 = v4;
  if (v4)
  {
    baseDirectory = [(PLPhotoLibraryPathManagerCore *)v4 baseDirectory];
    v7 = [baseDirectory stringByAppendingPathComponent:@"database"];
    databaseDirectory = v5->_databaseDirectory;
    v5->_databaseDirectory = v7;

    v9 = [(NSString *)v5->_databaseDirectory stringByAppendingPathComponent:@"search"];
    searchDatabaseDirectory = v5->_searchDatabaseDirectory;
    v5->_searchDatabaseDirectory = v9;

    baseDirectory2 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v12 = [baseDirectory2 stringByAppendingPathComponent:@"originals"];
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

    baseDirectory3 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v22 = [baseDirectory3 stringByAppendingPathComponent:@"scopes"];
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

    baseDirectory4 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v39 = [baseDirectory4 stringByAppendingPathComponent:@"resources"];
    resourcesDirectory = v5->_resourcesDirectory;
    v5->_resourcesDirectory = v39;

    baseDirectory5 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v42 = [baseDirectory5 stringByAppendingPathComponent:@"resources/renders"];
    rendersDirectory = v5->_rendersDirectory;
    v5->_rendersDirectory = v42;

    baseDirectory6 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v45 = [baseDirectory6 stringByAppendingPathComponent:@"resources/derivatives"];
    derivativesDirectory = v5->_derivativesDirectory;
    v5->_derivativesDirectory = v45;

    baseDirectory7 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v48 = [baseDirectory7 stringByAppendingPathComponent:@"resources/derivatives/thumbs"];
    derivativesThumbsDirectory = v5->_derivativesThumbsDirectory;
    v5->_derivativesThumbsDirectory = v48;

    baseDirectory8 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v51 = [baseDirectory8 stringByAppendingPathComponent:@"resources/derivatives/masters"];
    derivativesMasterThumbsDirectory = v5->_derivativesMasterThumbsDirectory;
    v5->_derivativesMasterThumbsDirectory = v51;

    baseDirectory9 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v54 = [baseDirectory9 stringByAppendingPathComponent:@"resources/derivatives/cvt"];
    derivativesContextualVideoThumbnailsDirectory = v5->_derivativesContextualVideoThumbnailsDirectory;
    v5->_derivativesContextualVideoThumbnailsDirectory = v54;

    baseDirectory10 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v57 = [baseDirectory10 stringByAppendingPathComponent:@"resources/journals"];
    journalsDirectory = v5->_journalsDirectory;
    v5->_journalsDirectory = v57;

    baseDirectory11 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v60 = [baseDirectory11 stringByAppendingPathComponent:@"resources/cpl"];
    resourcesCPLDataDirectory = v5->_resourcesCPLDataDirectory;
    v5->_resourcesCPLDataDirectory = v60;

    baseDirectory12 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v63 = [baseDirectory12 stringByAppendingPathComponent:@"resources/streams"];
    resourcesPhotoStreamsDataDirectory = v5->_resourcesPhotoStreamsDataDirectory;
    v5->_resourcesPhotoStreamsDataDirectory = v63;

    baseDirectory13 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v66 = [baseDirectory13 stringByAppendingPathComponent:@"resources/projects/data"];
    resourcesProjectsDataDirectory = v5->_resourcesProjectsDataDirectory;
    v5->_resourcesProjectsDataDirectory = v66;

    baseDirectory14 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v69 = [baseDirectory14 stringByAppendingPathComponent:@"resources/projects/legacy"];
    resourcesProjectsLegacyDirectory = v5->_resourcesProjectsLegacyDirectory;
    v5->_resourcesProjectsLegacyDirectory = v69;

    baseDirectory15 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v72 = [baseDirectory15 stringByAppendingPathComponent:@"resources/caches/analytics"];
    resourcesAnalyticsDirectory = v5->_resourcesAnalyticsDirectory;
    v5->_resourcesAnalyticsDirectory = v72;

    baseDirectory16 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v75 = [baseDirectory16 stringByAppendingPathComponent:@"resources/caches/compute"];
    resourcesComputeDirectory = v5->_resourcesComputeDirectory;
    v5->_resourcesComputeDirectory = v75;

    baseDirectory17 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v78 = [baseDirectory17 stringByAppendingPathComponent:@"resources/smartsharing"];
    resourcesSmartSharingDirectory = v5->_resourcesSmartSharingDirectory;
    v5->_resourcesSmartSharingDirectory = v78;

    baseDirectory18 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v81 = [baseDirectory18 stringByAppendingPathComponent:@"resources/partialvideo"];
    resourcesPartialVideoDirectory = v5->_resourcesPartialVideoDirectory;
    v5->_resourcesPartialVideoDirectory = v81;

    v83 = PLBundleIdentifier();
    v84 = [(PLPhotoLibraryPathManagerUBF *)v5 _externalDirectoryWithBundleIdentifier:v83 createIfNeeded:0];
    externalDirectory = v5->_externalDirectory;
    v5->_externalDirectory = v84;

    baseDirectory19 = [(PLPhotoLibraryPathManagerCore *)v5 baseDirectory];
    v87 = [baseDirectory19 stringByAppendingPathComponent:@"internal"];
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