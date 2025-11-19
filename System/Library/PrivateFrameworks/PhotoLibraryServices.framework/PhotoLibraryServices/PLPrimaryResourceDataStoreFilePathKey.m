@interface PLPrimaryResourceDataStoreFilePathKey
+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4;
- (PLPrimaryResourceDataStoreFilePathKey)initWithFilePath:(id)a3 andLibraryID:(id)a4;
- (PLPrimaryResourceDataStoreFilePathKey)initWithKeyStruct:(const void *)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)extension;
- (id)fileURLForAssetID:(id)a3;
- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
@end

@implementation PLPrimaryResourceDataStoreFilePathKey

- (id)descriptionForAssetID:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v6 = [(PLPrimaryResourceDataStoreKey *)&v13 descriptionForAssetID:v4];
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
  v2 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  v3 = [v2 pathExtension];

  return v3;
}

- (PLPrimaryResourceDataStoreFilePathKey)initWithFilePath:(id)a3 andLibraryID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v9 = [(PLPrimaryResourceDataStoreKey *)&v37 _init];
  if (!v9)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:v9 file:@"PLPrimaryResourceDataStoreFilePathKey.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];
  }

  v10 = PLPathManagerFromLibraryID();
  v11 = [v10 photoDirectoryWithType:1];
  v12 = v7;
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

    v29 = v9 + 4;
    v9[4] &= 0xE3FFu;
    v31 = v12;
    goto LABEL_21;
  }

  v18 = 5120;
LABEL_19:

  v29 = v9 + 4;
  v9[4] = v9[4] & 0xE3FF | v18;
  v30 = [v14 stringByAppendingString:v15];
  v31 = [v12 substringFromIndex:{objc_msgSend(v30, "length")}];

LABEL_21:
  [v9 setFilePathSuffix:v31];
  v32 = [v31 dataUsingEncoding:4];
  v33 = [v32 length];

  v34 = 16;
  if (v33 > 0x10)
  {
    v34 = v33;
  }

  *v29 = *v29 & 0xFC00 | v34;

LABEL_24:
  return v9;
}

- (id)uniformTypeIdentifier
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PLPrimaryResourceDataStoreFilePathKey *)self extension];
  v4 = [v2 resourceModelTypeForFilenameExtension:v3];
  v5 = [v4 identifier];

  return v5;
}

- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v8 = [(PLPrimaryResourceDataStoreKey *)&v18 _initFromExistingLocationOfExternalResource:v6 asset:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 fileURL];

    if (v10)
    {
      v11 = [v6 fileURL];
    }

    else
    {
      if ([v6 resourceType] == 3)
      {
        v13 = [v7 pathForVideoComplementFile];
        if (v13)
        {
LABEL_10:
          v15 = [v7 assetID];
          v16 = [v15 libraryID];

          v12 = [v9 initWithFilePath:v13 andLibraryID:v16];
          v9 = v16;
          goto LABEL_11;
        }

LABEL_7:
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v11 = [v7 mainFileURL];
    }

    v14 = v11;
    v13 = [v11 path];

    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)fileURLForAssetID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];

  if (!v5)
  {
    goto LABEL_11;
  }

  if ((*&self->_keyStruct & 0x1C00) != 0)
  {
    if (v4)
    {
      v6 = [v4 libraryID];
      v7 = PLDataStoreForClassIDAndLibraryID(0, v6);

      v8 = [v7 pathManager];
      v9 = [v8 photoDirectoryWithType:1];

      v10 = [v9 stringByAppendingString:off_1E7571380[(*&self->_keyStruct >> 10) & 7]];
      v11 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
      v12 = [v10 stringByAppendingString:v11];

      if (v12)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v12 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  v18 = 0;
  v14 = [objc_opt_class() refreshSandboxExtensionForURL:v13 assetID:v4 error:&v18];
  v15 = v18;
  if ((v14 & 1) == 0)
  {
    v16 = PLImageManagerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to get sandbox extension for path: %@, error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (PLPrimaryResourceDataStoreFilePathKey)initWithKeyStruct:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreFilePathKey;
  v4 = [(PLPrimaryResourceDataStoreKey *)&v9 _initWithKeyStruct:?];
  v5 = v4;
  if (v4)
  {
    v6 = *a3;
    *&v4->_keyStruct = *a3;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 + 2 length:v6 encoding:4];
    [(PLPrimaryResourceDataStoreFilePathKey *)v5 setFilePathSuffix:v7];
  }

  return v5;
}

- (id)keyData
{
  v3 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  v4 = [v3 length];

  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:v4 + 2];
  [v5 appendBytes:&self->_keyStruct length:2];
  v6 = [(PLPrimaryResourceDataStoreFilePathKey *)self filePathSuffix];
  v7 = [v6 dataUsingEncoding:4];

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

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a4;
  v7 = [(PLPrimaryResourceDataStoreFilePathKey *)self fileURLForAssetID:a3];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v12 = [PLResourceModelValidationError unreachableKeyErrorForKey:self atURL:v7 resource:v6];
    v11 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v12];
  }

  return v11;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"PLPrimaryResourceDataStoreFilePathKey.m" lineNumber:177 description:@"fileURLForPayload not supported for filePath key."];

  return 0;
}

@end