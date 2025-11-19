@interface PLThumbFileManagerCore
+ ($2825F4736939C4A6D3AD43837233062D)maxMasterSizeFromSourceImageSize:(id)a3 format:(id)a4;
+ (id)_fileIdentifierForThumbnailIdentifierComponents:(id)a3 recipeID:(unsigned int)a4;
+ (id)thumbnailIdentifierURLComponentsForUBFWithAssetUUID:(id)a3 bundleScope:(unsigned __int16)a4;
+ (id)thumbnailPathForThumbIdentifier:(id)a3 withPathManager:(id)a4 recipeID:(unsigned int)a5 forDelete:(BOOL)a6;
- (NSString)description;
- (PLThumbFileManagerCore)initWithImageFormat:(id)a3 pathManager:(id)a4;
- (id)imageDataWithIdentifier:(id)a3 orIndex:(unint64_t)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 dataOffset:(int *)a10;
- (id)thumbnailPathForThumbIdentifier:(id)a3;
- (void)deleteEntryWithIdentifier:(id)a3;
- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3 withToken:(id)a4;
@end

@implementation PLThumbFileManagerCore

- (id)imageDataWithIdentifier:(id)a3 orIndex:(unint64_t)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 dataOffset:(int *)a10
{
  v11 = a3;
  if ([v11 length])
  {
    v12 = MEMORY[0x1E695DEF0];
    v13 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:v11];
    v14 = [v12 dataWithContentsOfFile:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3 withToken:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:v7];
    v10 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:v8];
    if (([v10 isEqualToString:v9] & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v11 moveItemAtPath:v9 toPath:v10 error:0];

      if ((v12 & 1) == 0)
      {
        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v14 = [v10 stringByDeletingLastPathComponent];
        [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];

        v15 = [MEMORY[0x1E696AC08] defaultManager];
        LOBYTE(v14) = [v15 moveItemAtPath:v9 toPath:v10 error:0];

        if ((v14 & 1) == 0)
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

- (void)deleteEntryWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) != 0 || __PLIsAssetsdProxyService)
  {
    v5 = [objc_opt_class() thumbnailPathForThumbIdentifier:v4 withPathManager:self->_pathManager recipeID:self->_recipeId forDelete:1];
    if (!v5)
    {
LABEL_8:

      goto LABEL_9;
    }

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [v6 removeItemAtPath:v5 error:&v11];
    v8 = v11;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v10 = PLIsErrorFileNotFound(v8);

      if (v10)
      {
        goto LABEL_7;
      }

      v6 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Could not delete master thumb at path %@", buf, 0xCu);
      }
    }

LABEL_7:
    goto LABEL_8;
  }

LABEL_9:
}

- (id)thumbnailPathForThumbIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() thumbnailPathForThumbIdentifier:v4 withPathManager:self->_pathManager recipeID:self->_recipeId forDelete:0];

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

- (PLThumbFileManagerCore)initWithImageFormat:(id)a3 pathManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLThumbFileManagerCore.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  v14.receiver = self;
  v14.super_class = PLThumbFileManagerCore;
  v10 = [(PLThumbFileManagerCore *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_format, a3);
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v11->_readOnly = ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) == 0;
    objc_storeStrong(&v11->_pathManager, a4);
    v11->_recipeId = (2 * [v8 formatID]) | 0x40001;
  }

  return v11;
}

+ ($2825F4736939C4A6D3AD43837233062D)maxMasterSizeFromSourceImageSize:(id)a3 format:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [v6 dimension];
  v8 = v7;
  [v6 dimension];
  v10 = v8 | (v9 << 32);
  v11 = [v6 formatMode];
  if (v11 > 2)
  {
    if ((v11 - 3) >= 2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        [v6 scaledSizeForSourceSize:{a3.var0, a3.var1}];
        v10 = v12 | (v13 << 32);
      }

      goto LABEL_11;
    }

LABEL_7:
    [v6 dimension];
    v10 = PLScaleDimensionsToShortSide(*&a3, v14, (5 * v14));
    goto LABEL_11;
  }

  v15 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = a1;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "Invalid format mode for ThumbFile (%@)", &v17, 0xCu);
  }

LABEL_11:
  return v10;
}

+ (id)thumbnailPathForThumbIdentifier:(id)a3 withPathManager:(id)a4 recipeID:(unsigned int)a5 forDelete:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v31 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v11];
  v14 = [v13 scheme];
  v15 = [v14 isEqualToString:@"ubf"];

  if (v15)
  {
    v16 = [objc_opt_class() _fileIdentifierForThumbnailIdentifierComponents:v13 recipeID:v7];
    v17 = [v12 readOnlyUrlWithIdentifier:v16];
    v18 = [v17 path];
  }

  else
  {
    v20 = [v13 scheme];
    v21 = [v20 isEqualToString:@"dcim"];

    if (!v21)
    {
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v11;
        _os_log_impl(&dword_1AA9BD000, v23, OS_LOG_TYPE_ERROR, "Invalid thumbnail identifier scheme: %@", buf, 0xCu);
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"PLThumbFileManagerCore.m" lineNumber:108 description:@"Invalid thumbnail identfier scheme"];

      v19 = 0;
      goto LABEL_13;
    }

    if (!v6)
    {
      v26 = MEMORY[0x1E696AEC0];
      v16 = [v12 photoDirectoryWithType:12 createIfNeeded:1 error:0];
      v27 = [v13 path];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.JPG", v7 >> 1];
      v19 = [v26 stringWithFormat:@"%@/%@/%@", v16, v27, v28];

      goto LABEL_5;
    }

    v22 = MEMORY[0x1E696AEC0];
    v16 = [v12 photoDirectoryWithType:12 createIfNeeded:1 error:0];
    v17 = [v13 path];
    v18 = [v22 stringWithFormat:@"%@/%@", v16, v17];
  }

  v19 = v18;

LABEL_5:
LABEL_13:

LABEL_14:

  return v19;
}

+ (id)_fileIdentifierForThumbnailIdentifierComponents:(id)a3 recipeID:(unsigned int)a4
{
  v4 = *&a4;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 path];
  v9 = [v8 pathComponents];

  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 integerValue];

    v12 = [v9 objectAtIndexedSubscript:1];
    v13 = [PLPhotoLibraryFileIdentifier alloc];
    v14 = [*MEMORY[0x1E6982E58] identifier];
    v15 = [(PLPhotoLibraryFileIdentifier *)v13 initWithAssetUuid:v12 bundleScope:v11 uti:v14 resourceVersion:3 recipeID:v4];
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 string];
      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Invalid thumbnail identifier for file identifier: %@", &v20, 0xCu);
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLThumbFileManagerCore.m" lineNumber:83 description:@"Invalid thumbnail identifier for file identifier"];

    v15 = 0;
  }

  return v15;
}

+ (id)thumbnailIdentifierURLComponentsForUBFWithAssetUUID:(id)a3 bundleScope:(unsigned __int16)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E696AF20];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"ubf"];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d/%@", v4, v6];

  [v7 setPath:v8];

  return v7;
}

@end