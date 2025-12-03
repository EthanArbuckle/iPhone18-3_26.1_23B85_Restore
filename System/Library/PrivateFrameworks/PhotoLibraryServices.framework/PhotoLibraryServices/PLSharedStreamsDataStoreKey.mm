@interface PLSharedStreamsDataStoreKey
+ (id)_keyDataWithRelativePath:(id)path type:(unsigned int)type;
+ (id)_relativeDCIMFilePathForPersonID:(id)d albumID:(id)iD dcimDirectory:(id)directory fileName:(id)name;
+ (id)_relativeFilePathForPersonID:(id)d albumID:(id)iD fileName:(id)name;
+ (id)_replacementPathExtensionForType:(unsigned int)type;
- (BOOL)isEqual:(id)equal;
- (PLSharedStreamsDataStoreKey)initWithAsset:(id)asset album:(id)album type:(unsigned int)type;
- (PLSharedStreamsDataStoreKey)initWithAsset:(id)asset collectionShare:(id)share type:(unsigned int)type;
- (PLSharedStreamsDataStoreKey)initWithKeyStruct:(const void *)struct;
- (id)descriptionForAssetID:(id)d;
- (id)fileURLForAssetID:(id)d;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
- (unsigned)recipeIDForAssetID:(id)d;
- (unsigned)resourceType;
@end

@implementation PLSharedStreamsDataStoreKey

- (id)fileURLForAssetID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryID = [dCopy libraryID];
  v6 = PLDataStoreForClassIDAndLibraryID(2, libraryID);

  pathManager = [v6 pathManager];
  v8 = [pathManager photoDirectoryWithType:23];
  v9 = [objc_opt_class() _replacementPathExtensionForType:self->_sharedStreamsResourceType];
  v10 = self->_relativePath;
  v11 = v10;
  if (v9)
  {
    stringByDeletingPathExtension = [(NSString *)v10 stringByDeletingPathExtension];
    v13 = [stringByDeletingPathExtension stringByAppendingPathExtension:v9];

    v11 = v13;
  }

  v14 = [v8 stringByAppendingPathComponent:v11];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
    v20 = 0;
    v16 = [objc_opt_class() refreshSandboxExtensionForURL:v15 assetID:dCopy error:&v20];
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

- (id)descriptionForAssetID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(PLSharedStreamsDataStoreKey *)self fileURLForAssetID:dCopy];

  v9 = [v4 stringWithFormat:@"<%@>, fileURL: %@", v7, v8];

  return v9;
}

- (unsigned)recipeIDForAssetID:(id)d
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

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  dCopy = d;
  identityCopy = identity;
  if ([(NSString *)self->_relativePath length])
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [PLResourceModelValidationError malformedKeyErrorForKey:self resource:identityCopy];
    v8 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v9];
  }

  v10 = [(PLSharedStreamsDataStoreKey *)self fileURLForAssetID:dCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v10 path];
  v13 = [defaultManager fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    v14 = [PLResourceModelValidationError unreachableKeyErrorForKey:self atURL:v10 resource:identityCopy];
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
    identifier = 0;
  }

  else
  {
    identifier = [**(&unk_1E7576CC0 + v4) identifier];
  }

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLSharedStreamsDataStoreKey *)self isEqualToKey:equalCopy];
  }

  return v5;
}

- (PLSharedStreamsDataStoreKey)initWithKeyStruct:(const void *)struct
{
  v11.receiver = self;
  v11.super_class = PLSharedStreamsDataStoreKey;
  v4 = [(PLSharedStreamsDataStoreKey *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = *struct;
    v4->_sharedStreamsResourceType = *(struct + 2);
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:struct + 3 length:v6 - 3];
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

- (PLSharedStreamsDataStoreKey)initWithAsset:(id)asset album:(id)album type:(unsigned int)type
{
  v5 = *&type;
  v40 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  albumCopy = album;
  cloudGUID = [albumCopy cloudGUID];
  if (![cloudGUID length])
  {
    goto LABEL_7;
  }

  cloudPersonID = [albumCopy cloudPersonID];
  if (![cloudPersonID length])
  {

LABEL_7:
    goto LABEL_8;
  }

  filename = [assetCopy filename];
  v13 = [filename length];

  if (v13)
  {
    pathManager = [assetCopy pathManager];
    isUBF = [pathManager isUBF];

    if (isUBF)
    {
      v16 = objc_opt_class();
      cloudPersonID2 = [albumCopy cloudPersonID];
      cloudGUID2 = [albumCopy cloudGUID];
      filename2 = [assetCopy filename];
      v20 = [v16 _relativeFilePathForPersonID:cloudPersonID2 albumID:cloudGUID2 fileName:filename2];
    }

    else
    {
      assetID = [assetCopy assetID];
      directory = [assetID directory];
      cloudPersonID2 = [directory lastPathComponent];

      v29 = objc_opt_class();
      cloudGUID2 = [albumCopy cloudPersonID];
      filename2 = [albumCopy cloudGUID];
      filename3 = [assetCopy filename];
      v20 = [v29 _relativeDCIMFilePathForPersonID:cloudGUID2 albumID:filename2 dcimDirectory:cloudPersonID2 fileName:filename3];
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
    cloudGUID3 = [albumCopy cloudGUID];
    cloudPersonID3 = [albumCopy cloudPersonID];
    filename4 = [assetCopy filename];
    v34 = 138412802;
    v35 = cloudGUID3;
    v36 = 2112;
    v37 = cloudPersonID3;
    v38 = 2112;
    v39 = filename4;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[RM]: Attempt to init PLSharedStreamsDataStoreKey with missing info. cloudGUID: %@, cloudPersonID: %@, filename: %@", &v34, 0x20u);
  }

  v25 = 0;
LABEL_12:

  return v25;
}

- (PLSharedStreamsDataStoreKey)initWithAsset:(id)asset collectionShare:(id)share type:(unsigned int)type
{
  v5 = *&type;
  v40 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  shareCopy = share;
  scopeIdentifier = [shareCopy scopeIdentifier];
  if (![scopeIdentifier length])
  {
    goto LABEL_7;
  }

  cloudPersonID = [shareCopy cloudPersonID];
  if (![cloudPersonID length])
  {

LABEL_7:
    goto LABEL_8;
  }

  filename = [assetCopy filename];
  v13 = [filename length];

  if (v13)
  {
    pathManager = [assetCopy pathManager];
    isUBF = [pathManager isUBF];

    if (isUBF)
    {
      v16 = objc_opt_class();
      cloudPersonID2 = [shareCopy cloudPersonID];
      scopeIdentifier2 = [shareCopy scopeIdentifier];
      filename2 = [assetCopy filename];
      v20 = [v16 _relativeFilePathForPersonID:cloudPersonID2 albumID:scopeIdentifier2 fileName:filename2];
    }

    else
    {
      assetID = [assetCopy assetID];
      directory = [assetID directory];
      cloudPersonID2 = [directory lastPathComponent];

      v29 = objc_opt_class();
      scopeIdentifier2 = [shareCopy cloudPersonID];
      filename2 = [shareCopy scopeIdentifier];
      filename3 = [assetCopy filename];
      v20 = [v29 _relativeDCIMFilePathForPersonID:scopeIdentifier2 albumID:filename2 dcimDirectory:cloudPersonID2 fileName:filename3];
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
    scopeIdentifier3 = [shareCopy scopeIdentifier];
    cloudPersonID3 = [shareCopy cloudPersonID];
    filename4 = [assetCopy filename];
    v34 = 138412802;
    v35 = scopeIdentifier3;
    v36 = 2112;
    v37 = cloudPersonID3;
    v38 = 2112;
    v39 = filename4;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[RM]: Attempt to init PLSharedStreamsDataStoreKey with missing info. scopeIdentifier: %@, cloudPersonID: %@, filename: %@", &v34, 0x20u);
  }

  v25 = 0;
LABEL_12:

  return v25;
}

+ (id)_keyDataWithRelativePath:(id)path type:(unsigned int)type
{
  typeCopy = type;
  v5 = [path dataUsingEncoding:4];
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v5, "length") + 3}];
  v10 = [v5 length] + 3;
  v9 = 0;
  v8 = typeCopy;
  [v6 appendBytes:&v10 length:1];
  [v6 appendBytes:&v9 length:1];
  [v6 appendBytes:&v8 length:1];
  [v6 appendData:v5];

  return v6;
}

+ (id)_relativeDCIMFilePathForPersonID:(id)d albumID:(id)iD dcimDirectory:(id)directory fileName:(id)name
{
  v17[4] = *MEMORY[0x1E69E9840];
  v17[0] = d;
  v17[1] = iD;
  v17[2] = directory;
  v17[3] = name;
  v9 = MEMORY[0x1E695DEC8];
  nameCopy = name;
  directoryCopy = directory;
  iDCopy = iD;
  dCopy = d;
  v14 = [v9 arrayWithObjects:v17 count:4];
  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v14];

  return v15;
}

+ (id)_relativeFilePathForPersonID:(id)d albumID:(id)iD fileName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v7 = MEMORY[0x1E695DEC8];
  nameCopy2 = name;
  iDCopy2 = iD;
  dCopy2 = d;
  v11 = [v7 arrayWithObjects:&dCopy count:3];
  v12 = [MEMORY[0x1E696AEC0] pathWithComponents:{v11, dCopy, iDCopy, nameCopy, v17}];

  return v12;
}

+ (id)_replacementPathExtensionForType:(unsigned int)type
{
  if (type - 4 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7576C98[type - 4];
  }
}

@end