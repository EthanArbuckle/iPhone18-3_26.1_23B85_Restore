@interface PLSharedStreamsDataStoreKey
+ (id)_keyDataWithRelativePath:(id)a3 type:(unsigned int)a4;
+ (id)_relativeDCIMFilePathForPersonID:(id)a3 albumID:(id)a4 dcimDirectory:(id)a5 fileName:(id)a6;
+ (id)_relativeFilePathForPersonID:(id)a3 albumID:(id)a4 fileName:(id)a5;
+ (id)_replacementPathExtensionForType:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (PLSharedStreamsDataStoreKey)initWithAsset:(id)a3 album:(id)a4 type:(unsigned int)a5;
- (PLSharedStreamsDataStoreKey)initWithAsset:(id)a3 collectionShare:(id)a4 type:(unsigned int)a5;
- (PLSharedStreamsDataStoreKey)initWithKeyStruct:(const void *)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)fileURLForAssetID:(id)a3;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
- (unsigned)recipeIDForAssetID:(id)a3;
- (unsigned)resourceType;
@end

@implementation PLSharedStreamsDataStoreKey

- (id)fileURLForAssetID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 libraryID];
  v6 = PLDataStoreForClassIDAndLibraryID(2, v5);

  v7 = [v6 pathManager];
  v8 = [v7 photoDirectoryWithType:23];
  v9 = [objc_opt_class() _replacementPathExtensionForType:self->_sharedStreamsResourceType];
  v10 = self->_relativePath;
  v11 = v10;
  if (v9)
  {
    v12 = [(NSString *)v10 stringByDeletingPathExtension];
    v13 = [v12 stringByAppendingPathExtension:v9];

    v11 = v13;
  }

  v14 = [v8 stringByAppendingPathComponent:v11];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
    v20 = 0;
    v16 = [objc_opt_class() refreshSandboxExtensionForURL:v15 assetID:v4 error:&v20];
    v17 = v20;
    if ((v16 & 1) == 0)
    {
      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get sandbox extension for path: %@, error: %@", buf, 0x16u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)descriptionForAssetID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(PLSharedStreamsDataStoreKey *)self fileURLForAssetID:v5];

  v9 = [v4 stringWithFormat:@"<%@>, fileURL: %@", v7, v8];

  return v9;
}

- (unsigned)recipeIDForAssetID:(id)a3
{
  sharedStreamsResourceType = self->_sharedStreamsResourceType;
  if (sharedStreamsResourceType > 9)
  {
    return 65741;
  }

  else
  {
    return dword_19C60B898[sharedStreamsResourceType];
  }
}

- (unsigned)resourceType
{
  sharedStreamsResourceType = self->_sharedStreamsResourceType;
  if (sharedStreamsResourceType > 9)
  {
    return 3;
  }

  else
  {
    return dword_19C60B8D4[sharedStreamsResourceType];
  }
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSString *)self->_relativePath length])
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [PLResourceModelValidationError malformedKeyErrorForKey:self resource:v7];
    v8 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v9];
  }

  v10 = [(PLSharedStreamsDataStoreKey *)self fileURLForAssetID:v6];
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v10 path];
  v13 = [v11 fileExistsAtPath:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [PLResourceModelValidationError unreachableKeyErrorForKey:self atURL:v10 resource:v7];
    v15 = [v8 arrayByAddingObject:v14];

    v8 = v15;
  }

  return v8;
}

- (id)uniformTypeIdentifier
{
  v4 = self->_sharedStreamsResourceType - 3;
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [**(&unk_1E7576CC0 + v4) identifier];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLSharedStreamsDataStoreKey *)self isEqualToKey:v4];
  }

  return v5;
}

- (PLSharedStreamsDataStoreKey)initWithKeyStruct:(const void *)a3
{
  v11.receiver = self;
  v11.super_class = PLSharedStreamsDataStoreKey;
  v4 = [(PLSharedStreamsDataStoreKey *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = *a3;
    v4->_sharedStreamsResourceType = *(a3 + 2);
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 3 length:v6 - 3];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    relativePath = v5->_relativePath;
    v5->_relativePath = v8;
  }

  return v5;
}

- (id)keyData
{
  v3 = objc_opt_class();
  relativePath = self->_relativePath;
  sharedStreamsResourceType = self->_sharedStreamsResourceType;

  return [v3 _keyDataWithRelativePath:relativePath type:sharedStreamsResourceType];
}

- (PLSharedStreamsDataStoreKey)initWithAsset:(id)a3 album:(id)a4 type:(unsigned int)a5
{
  v5 = *&a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 cloudGUID];
  if (![v10 length])
  {
    goto LABEL_7;
  }

  v11 = [v9 cloudPersonID];
  if (![v11 length])
  {

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v8 filename];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v8 pathManager];
    v15 = [v14 isUBF];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [v9 cloudPersonID];
      v18 = [v9 cloudGUID];
      v19 = [v8 filename];
      v20 = [v16 _relativeFilePathForPersonID:v17 albumID:v18 fileName:v19];
    }

    else
    {
      v27 = [v8 assetID];
      v28 = [v27 directory];
      v17 = [v28 lastPathComponent];

      v29 = objc_opt_class();
      v18 = [v9 cloudPersonID];
      v19 = [v9 cloudGUID];
      v30 = [v8 filename];
      v20 = [v29 _relativeDCIMFilePathForPersonID:v18 albumID:v19 dcimDirectory:v17 fileName:v30];
    }

    v31 = [v20 dataUsingEncoding:4];
    if ([v31 length] > 0xFC)
    {
      v33 = 0;
    }

    else
    {
      v32 = [objc_opt_class() _keyDataWithRelativePath:v20 type:v5];
      v33 = -[PLSharedStreamsDataStoreKey initWithKeyStruct:]([PLSharedStreamsDataStoreKey alloc], "initWithKeyStruct:", [v32 bytes]);
    }

    v25 = v33;
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [v9 cloudGUID];
    v23 = [v9 cloudPersonID];
    v24 = [v8 filename];
    v34 = 138412802;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[RM]: Attempt to init PLSharedStreamsDataStoreKey with missing info. cloudGUID: %@, cloudPersonID: %@, filename: %@", &v34, 0x20u);
  }

  v25 = 0;
LABEL_12:

  return v25;
}

- (PLSharedStreamsDataStoreKey)initWithAsset:(id)a3 collectionShare:(id)a4 type:(unsigned int)a5
{
  v5 = *&a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  if (![v10 length])
  {
    goto LABEL_7;
  }

  v11 = [v9 cloudPersonID];
  if (![v11 length])
  {

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v8 filename];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v8 pathManager];
    v15 = [v14 isUBF];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [v9 cloudPersonID];
      v18 = [v9 scopeIdentifier];
      v19 = [v8 filename];
      v20 = [v16 _relativeFilePathForPersonID:v17 albumID:v18 fileName:v19];
    }

    else
    {
      v27 = [v8 assetID];
      v28 = [v27 directory];
      v17 = [v28 lastPathComponent];

      v29 = objc_opt_class();
      v18 = [v9 cloudPersonID];
      v19 = [v9 scopeIdentifier];
      v30 = [v8 filename];
      v20 = [v29 _relativeDCIMFilePathForPersonID:v18 albumID:v19 dcimDirectory:v17 fileName:v30];
    }

    v31 = [v20 dataUsingEncoding:4];
    if ([v31 length] > 0xFC)
    {
      v33 = 0;
    }

    else
    {
      v32 = [objc_opt_class() _keyDataWithRelativePath:v20 type:v5];
      v33 = -[PLSharedStreamsDataStoreKey initWithKeyStruct:]([PLSharedStreamsDataStoreKey alloc], "initWithKeyStruct:", [v32 bytes]);
    }

    v25 = v33;
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [v9 scopeIdentifier];
    v23 = [v9 cloudPersonID];
    v24 = [v8 filename];
    v34 = 138412802;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[RM]: Attempt to init PLSharedStreamsDataStoreKey with missing info. scopeIdentifier: %@, cloudPersonID: %@, filename: %@", &v34, 0x20u);
  }

  v25 = 0;
LABEL_12:

  return v25;
}

+ (id)_keyDataWithRelativePath:(id)a3 type:(unsigned int)a4
{
  v4 = a4;
  v5 = [a3 dataUsingEncoding:4];
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v5, "length") + 3}];
  v10 = [v5 length] + 3;
  v9 = 0;
  v8 = v4;
  [v6 appendBytes:&v10 length:1];
  [v6 appendBytes:&v9 length:1];
  [v6 appendBytes:&v8 length:1];
  [v6 appendData:v5];

  return v6;
}

+ (id)_relativeDCIMFilePathForPersonID:(id)a3 albumID:(id)a4 dcimDirectory:(id)a5 fileName:(id)a6
{
  v17[4] = *MEMORY[0x1E69E9840];
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 arrayWithObjects:v17 count:4];
  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v14];

  return v15;
}

+ (id)_relativeFilePathForPersonID:(id)a3 albumID:(id)a4 fileName:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 arrayWithObjects:&v14 count:3];
  v12 = [MEMORY[0x1E696AEC0] pathWithComponents:{v11, v14, v15, v16, v17}];

  return v12;
}

+ (id)_replacementPathExtensionForType:(unsigned int)a3
{
  if (a3 - 4 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7576C98[a3 - 4];
  }
}

@end