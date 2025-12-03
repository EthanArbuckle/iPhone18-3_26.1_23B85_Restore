@interface PLPrimaryResourceDataStoreFilePathKey
+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d;
- (PLPrimaryResourceDataStoreFilePathKey)initWithFilePath:(id)path andLibraryID:(id)d;
- (PLPrimaryResourceDataStoreFilePathKey)initWithKeyStruct:(const void *)struct;
- (id)descriptionForAssetID:(id)d;
- (id)extension;
- (id)fileURLForAssetID:(id)d;
- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
@end

@implementation PLPrimaryResourceDataStoreFilePathKey

- (id)descriptionForAssetID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v6 = [(PLPrimaryResourceDataStoreKey *)&v13 descriptionForAssetID:dCopy];
  v7 = v6;
  keyStruct = self->_keyStruct;
  v9 = off_1E75713C0[(keyStruct >> 10) & 7];
  if ((keyStruct & 0x300) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = @"v1";
  }

  v11 = [v5 stringWithFormat:@"%@, (%@, %@)", v6, v9, v10];

  return v11;
}

- (id)extension
{
  filePathSuffix = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  pathExtension = [filePathSuffix pathExtension];

  return pathExtension;
}

- (PLPrimaryResourceDataStoreFilePathKey)initWithFilePath:(id)path andLibraryID:(id)d
{
  pathCopy = path;
  dCopy = d;
  v37.receiver = self;
  v37.super_class = PLPrimaryResourceDataStoreFilePathKey;
  _init = [(PLPrimaryResourceDataStoreKey *)&v37 _init];
  if (!_init)
  {
    goto LABEL_24;
  }

  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:_init file:@"PLPrimaryResourceDataStoreFilePathKey.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];
  }

  v10 = PLPathManagerFromLibraryID();
  v11 = [v10 photoDirectoryWithType:1];
  v12 = pathCopy;
  v13 = v11;
  v14 = v13;
  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = @"/PhotoData/Thumbnails/V2/PhotoData/CPLAssets/group";
  v16 = [v13 stringByAppendingString:@"/PhotoData/Thumbnails/V2/PhotoData/CPLAssets/group"];
  v17 = [v12 hasPrefix:v16];

  if ((v17 & 1) == 0)
  {
    v15 = @"/PhotoData/Metadata/PhotoData/CPLAssets/group";
    v19 = [v14 stringByAppendingString:@"/PhotoData/Metadata/PhotoData/CPLAssets/group"];
    v20 = [v12 hasPrefix:v19];

    if (v20)
    {
      v18 = 4096;
      goto LABEL_19;
    }

    v15 = @"/PhotoData/CPLAssets/group";
    v21 = [v14 stringByAppendingString:@"/PhotoData/CPLAssets/group"];
    v22 = [v12 hasPrefix:v21];

    if (v22)
    {
      v18 = 6144;
      goto LABEL_19;
    }

    v15 = @"/PhotoData/Thumbnails/V2/PhotoData/";
    v23 = [v14 stringByAppendingString:@"/PhotoData/Thumbnails/V2/PhotoData/"];
    v24 = [v12 hasPrefix:v23];

    if (v24)
    {
      v18 = 3072;
      goto LABEL_19;
    }

    v15 = @"/PhotoData/";
    v25 = [v14 stringByAppendingString:@"/PhotoData/"];
    v26 = [v12 hasPrefix:v25];

    if (v26)
    {
      v18 = 1024;
      goto LABEL_19;
    }

    v15 = @"/DCIM/";
    v27 = [v14 stringByAppendingString:@"/DCIM/"];
    v28 = [v12 hasPrefix:v27];

    if (v28)
    {
      v18 = 2048;
      goto LABEL_19;
    }

    if ([v12 hasPrefix:v14])
    {
      v15 = &stru_1F0F06D80;
      v18 = 7168;
      goto LABEL_19;
    }

LABEL_20:

    v29 = _init + 4;
    _init[4] &= 0xE3FFu;
    v31 = v12;
    goto LABEL_21;
  }

  v18 = 5120;
LABEL_19:

  v29 = _init + 4;
  _init[4] = _init[4] & 0xE3FF | v18;
  v30 = [v14 stringByAppendingString:v15];
  v31 = [v12 substringFromIndex:{objc_msgSend(v30, "length")}];

LABEL_21:
  [_init setFilePathSuffix:v31];
  v32 = [v31 dataUsingEncoding:4];
  v33 = [v32 length];

  v34 = 16;
  if (v33 > 0x10)
  {
    v34 = v33;
  }

  *v29 = *v29 & 0xFC00 | v34;

LABEL_24:
  return _init;
}

- (id)uniformTypeIdentifier
{
  v2 = MEMORY[0x1E69C08F0];
  extension = [(PLPrimaryResourceDataStoreFilePathKey *)self extension];
  v4 = [v2 resourceModelTypeForFilenameExtension:extension];
  identifier = [v4 identifier];

  return identifier;
}

- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v8 = [(PLPrimaryResourceDataStoreKey *)&v18 _initFromExistingLocationOfExternalResource:resourceCopy asset:assetCopy];
  if (v8)
  {
    v9 = v8;
    fileURL = [resourceCopy fileURL];

    if (fileURL)
    {
      fileURL2 = [resourceCopy fileURL];
    }

    else
    {
      if ([resourceCopy resourceType] == 3)
      {
        pathForVideoComplementFile = [assetCopy pathForVideoComplementFile];
        if (pathForVideoComplementFile)
        {
LABEL_10:
          assetID = [assetCopy assetID];
          libraryID = [assetID libraryID];

          v12 = [v9 initWithFilePath:pathForVideoComplementFile andLibraryID:libraryID];
          v9 = libraryID;
          goto LABEL_11;
        }

LABEL_7:
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }

      fileURL2 = [assetCopy mainFileURL];
    }

    v14 = fileURL2;
    pathForVideoComplementFile = [fileURL2 path];

    if (pathForVideoComplementFile)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)fileURLForAssetID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  filePathSuffix = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];

  if (!filePathSuffix)
  {
    goto LABEL_11;
  }

  if ((*&self->_keyStruct & 0x1C00) != 0)
  {
    if (dCopy)
    {
      libraryID = [dCopy libraryID];
      v7 = PLDataStoreForClassIDAndLibraryID(0, libraryID);

      pathManager = [v7 pathManager];
      v9 = [pathManager photoDirectoryWithType:1];

      v10 = [v9 stringByAppendingString:off_1E7571380[(*&self->_keyStruct >> 10) & 7]];
      filePathSuffix2 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
      filePathSuffix3 = [v10 stringByAppendingString:filePathSuffix2];

      if (filePathSuffix3)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  filePathSuffix3 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  if (!filePathSuffix3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePathSuffix3 isDirectory:0];
  v18 = 0;
  v14 = [objc_opt_class() refreshSandboxExtensionForURL:v13 assetID:dCopy error:&v18];
  v15 = v18;
  if ((v14 & 1) == 0)
  {
    v16 = PLImageManagerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = filePathSuffix3;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to get sandbox extension for path: %@, error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (PLPrimaryResourceDataStoreFilePathKey)initWithKeyStruct:(const void *)struct
{
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v4 = [(PLPrimaryResourceDataStoreKey *)&v9 _initWithKeyStruct:?];
  v5 = v4;
  if (v4)
  {
    v6 = *struct;
    *&v4->_keyStruct = *struct;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:struct + 2 length:v6 encoding:4];
    [(PLPrimaryResourceDataStoreFilePathKey *)v5 setFilePathSuffix:v7];
  }

  return v5;
}

- (id)keyData
{
  filePathSuffix = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  v4 = [filePathSuffix length];

  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:v4 + 2];
  [v5 appendBytes:&self->_keyStruct length:2];
  filePathSuffix2 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  v7 = [filePathSuffix2 dataUsingEncoding:4];

  if ([v7 length] <= 0xF)
  {
    v8 = malloc_type_calloc(0x10uLL, 1uLL, 0x56D3095uLL);
    [v7 bytes];
    [v7 length];
    __strncpy_chk();
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:16];

    v7 = v9;
  }

  [v5 appendData:v7];

  return v5;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  identityCopy = identity;
  v7 = [(PLPrimaryResourceDataStoreFilePathKey *)self fileURLForAssetID:d];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v12 = [PLResourceModelValidationError unreachableKeyErrorForKey:self atURL:v7 resource:identityCopy];
    v11 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v12];
  }

  return v11;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStoreFilePathKey.m" lineNumber:177 description:@"fileURLForPayload not supported for filePath key."];

  return 0;
}

@end