@interface PLThumbFileManagerCore
+ ($2825F4736939C4A6D3AD43837233062D)maxMasterSizeFromSourceImageSize:(id)size format:(id)format;
+ (id)_fileIdentifierForThumbnailIdentifierComponents:(id)components recipeID:(unsigned int)d;
+ (id)thumbnailIdentifierURLComponentsForUBFWithAssetUUID:(id)d bundleScope:(unsigned __int16)scope;
+ (id)thumbnailPathForThumbIdentifier:(id)identifier withPathManager:(id)manager recipeID:(unsigned int)d forDelete:(BOOL)delete;
- (NSString)description;
- (PLThumbFileManagerCore)initWithImageFormat:(id)format pathManager:(id)manager;
- (id)imageDataWithIdentifier:(id)identifier orIndex:(unint64_t)index width:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight dataOffset:(int *)self0;
- (id)thumbnailPathForThumbIdentifier:(id)identifier;
- (void)deleteEntryWithIdentifier:(id)identifier;
- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)identifier withToken:(id)token;
@end

@implementation PLThumbFileManagerCore

- (id)imageDataWithIdentifier:(id)identifier orIndex:(unint64_t)index width:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight dataOffset:(int *)self0
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v12 = MEMORY[0x1E695DEF0];
    v13 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:identifierCopy];
    v14 = [v12 dataWithContentsOfFile:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)identifier withToken:(id)token
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  tokenCopy = token;
  v8 = identifierCopy;
  if ([tokenCopy length] && objc_msgSend(v8, "length"))
  {
    v9 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:tokenCopy];
    v10 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:v8];
    if (([v10 isEqualToString:v9] & 1) == 0)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [defaultManager moveItemAtPath:v9 toPath:v10 error:0];

      if ((v12 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
        [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        LOBYTE(stringByDeletingLastPathComponent) = [defaultManager3 moveItemAtPath:v9 toPath:v10 error:0];

        if ((stringByDeletingLastPathComponent & 1) == 0)
        {
          v16 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138412546;
            v18 = v9;
            v19 = 2112;
            v20 = v10;
            _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_DEFAULT, "couldn't move thumbnail from %@ to %@", &v17, 0x16u);
          }
        }
      }
    }
  }
}

- (void)deleteEntryWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) != 0 || __PLIsAssetsdProxyService)
  {
    v5 = [objc_opt_class() thumbnailPathForThumbIdentifier:identifierCopy withPathManager:self->_pathManager recipeID:self->_recipeId forDelete:1];
    if (!v5)
    {
LABEL_8:

      goto LABEL_9;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [defaultManager removeItemAtPath:v5 error:&v11];
    v8 = v11;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v10 = PLIsErrorFileNotFound(v8);

      if (v10)
      {
        goto LABEL_7;
      }

      defaultManager = PLThumbnailsGetLog();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1AA9BD000, defaultManager, OS_LOG_TYPE_ERROR, "Could not delete master thumb at path %@", buf, 0xCu);
      }
    }

LABEL_7:
    goto LABEL_8;
  }

LABEL_9:
}

- (id)thumbnailPathForThumbIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() thumbnailPathForThumbIdentifier:identifierCopy withPathManager:self->_pathManager recipeID:self->_recipeId forDelete:0];

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PLThumbFileManagerCore;
  v3 = [(PLThumbFileManagerCore *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" _format %@", self->_format];
  [v4 appendFormat:@" r/o %d", self->_readOnly];
  [v4 appendFormat:@" _recipeId %d", self->_recipeId];

  return v4;
}

- (PLThumbFileManagerCore)initWithImageFormat:(id)format pathManager:(id)manager
{
  formatCopy = format;
  managerCopy = manager;
  if (!formatCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbFileManagerCore.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  v14.receiver = self;
  v14.super_class = PLThumbFileManagerCore;
  v10 = [(PLThumbFileManagerCore *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_format, format);
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v11->_readOnly = ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) == 0;
    objc_storeStrong(&v11->_pathManager, manager);
    v11->_recipeId = (2 * [formatCopy formatID]) | 0x40001;
  }

  return v11;
}

+ ($2825F4736939C4A6D3AD43837233062D)maxMasterSizeFromSourceImageSize:(id)size format:(id)format
{
  v19 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  [formatCopy dimension];
  v8 = v7;
  [formatCopy dimension];
  v10 = v8 | (v9 << 32);
  formatMode = [formatCopy formatMode];
  if (formatMode > 2)
  {
    if ((formatMode - 3) >= 2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (formatMode)
  {
    if (formatMode != 1)
    {
      if (formatMode == 2)
      {
        [formatCopy scaledSizeForSourceSize:{size.var0, size.var1}];
        v10 = v12 | (v13 << 32);
      }

      goto LABEL_11;
    }

LABEL_7:
    [formatCopy dimension];
    v10 = PLScaleDimensionsToShortSide(*&size, v14, (5 * v14));
    goto LABEL_11;
  }

  v15 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "Invalid format mode for ThumbFile (%@)", &v17, 0xCu);
  }

LABEL_11:
  return v10;
}

+ (id)thumbnailPathForThumbIdentifier:(id)identifier withPathManager:(id)manager recipeID:(unsigned int)d forDelete:(BOOL)delete
{
  deleteCopy = delete;
  v7 = *&d;
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  managerCopy = manager;
  if (!identifierCopy)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:identifierCopy];
  scheme = [v13 scheme];
  v15 = [scheme isEqualToString:@"ubf"];

  if (v15)
  {
    v16 = [objc_opt_class() _fileIdentifierForThumbnailIdentifierComponents:v13 recipeID:v7];
    path3 = [managerCopy readOnlyUrlWithIdentifier:v16];
    path = [path3 path];
  }

  else
  {
    scheme2 = [v13 scheme];
    v21 = [scheme2 isEqualToString:@"dcim"];

    if (!v21)
    {
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = identifierCopy;
        _os_log_impl(&dword_1AA9BD000, v23, OS_LOG_TYPE_ERROR, "Invalid thumbnail identifier scheme: %@", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbFileManagerCore.m" lineNumber:108 description:@"Invalid thumbnail identfier scheme"];

      v19 = 0;
      goto LABEL_13;
    }

    if (!deleteCopy)
    {
      v26 = MEMORY[0x1E696AEC0];
      v16 = [managerCopy photoDirectoryWithType:12 createIfNeeded:1 error:0];
      path2 = [v13 path];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.JPG", v7 >> 1];
      v19 = [v26 stringWithFormat:@"%@/%@/%@", v16, path2, v28];

      goto LABEL_5;
    }

    v22 = MEMORY[0x1E696AEC0];
    v16 = [managerCopy photoDirectoryWithType:12 createIfNeeded:1 error:0];
    path3 = [v13 path];
    path = [v22 stringWithFormat:@"%@/%@", v16, path3];
  }

  v19 = path;

LABEL_5:
LABEL_13:

LABEL_14:

  return v19;
}

+ (id)_fileIdentifierForThumbnailIdentifierComponents:(id)components recipeID:(unsigned int)d
{
  v4 = *&d;
  v22 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  path = [componentsCopy path];
  pathComponents = [path pathComponents];

  if ([pathComponents count] == 2)
  {
    v10 = [pathComponents objectAtIndexedSubscript:0];
    integerValue = [v10 integerValue];

    v12 = [pathComponents objectAtIndexedSubscript:1];
    v13 = [PLPhotoLibraryFileIdentifier alloc];
    identifier = [*MEMORY[0x1E6982E58] identifier];
    v15 = [(PLPhotoLibraryFileIdentifier *)v13 initWithAssetUuid:v12 bundleScope:integerValue uti:identifier resourceVersion:3 recipeID:v4];
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      string = [componentsCopy string];
      v20 = 138412290;
      v21 = string;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Invalid thumbnail identifier for file identifier: %@", &v20, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbFileManagerCore.m" lineNumber:83 description:@"Invalid thumbnail identifier for file identifier"];

    v15 = 0;
  }

  return v15;
}

+ (id)thumbnailIdentifierURLComponentsForUBFWithAssetUUID:(id)d bundleScope:(unsigned __int16)scope
{
  scopeCopy = scope;
  v5 = MEMORY[0x1E696AF20];
  dCopy = d;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"ubf"];
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d/%@", scopeCopy, dCopy];

  [v7 setPath:dCopy];

  return v7;
}

@end