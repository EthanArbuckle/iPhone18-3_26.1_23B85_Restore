@interface PLPrimaryResourceDataStoreUniformFileKey
+ (id)_fileURLFromKeyStruct:(PLPrimaryDataStore_UniformFileStrategy_KeyStruct_V1 *)struct assetID:(id)d;
+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d;
- (PLPrimaryResourceDataStoreUniformFileKey)initWithFilePath:(id)path resourceVersion:(unsigned int)version resourceType:(unsigned int)type recipeID:(unsigned int)d bundleScope:(unsigned __int16)scope pathManager:(id)manager;
- (PLPrimaryResourceDataStoreUniformFileKey)initWithKeyStruct:(const void *)struct;
- (id)fileURLForAssetID:(id)d;
- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
@end

@implementation PLPrimaryResourceDataStoreUniformFileKey

- (id)fileURLForAssetID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() _fileURLFromKeyStruct:&self->_keyStruct assetID:dCopy];

  return v5;
}

- (PLPrimaryResourceDataStoreUniformFileKey)initWithFilePath:(id)path resourceVersion:(unsigned int)version resourceType:(unsigned int)type recipeID:(unsigned int)d bundleScope:(unsigned __int16)scope pathManager:(id)manager
{
  scopeCopy = scope;
  versionCopy = version;
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  managerCopy = manager;
  v36.receiver = self;
  v36.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  _init = [(PLPrimaryResourceDataStoreKey *)&v36 _init];
  v17 = _init;
  if (_init)
  {
    if (type == 31)
    {
      goto LABEL_22;
    }

    v18 = _init + 8;
    v19 = *(_init + 9);
    _init[8] = 3;
    *(_init + 9) = v19 & 0xFFFFFE00 | (4 * (versionCopy & 3)) & 0xF | (16 * (type & 0x1F));
    pathExtension = [pathCopy pathExtension];
    v21 = pathExtension;
    if (onceToken == -1)
    {
      if (pathExtension)
      {
LABEL_5:
        v22 = [kFileIdentifierKeyExtensionsToFileTypes objectForKeyedSubscript:v21];
        unsignedShortValue = [v22 unsignedShortValue];

        v24 = unsignedShortValue;
LABEL_10:

        v26 = (*(v17 + 9) | (v17[13] << 32)) & 0xFFFFFF807FFFFFFFLL | (v24 << 31);
        *(v17 + 9) = *(v17 + 9) & 0x7FFFFFFF | (v24 << 31);
        v17[13] = BYTE4(v26);

        if (([managerCopy isUBF] & 1) != 0 || objc_msgSend(managerCopy, "shouldUseFileIdentifierForBundleScope:", scopeCopy))
        {
          v27 = *(v17 + 9) & 0x9FFFFFFF | (v17[13] << 32);
          *(v17 + 9) &= 0x9FFFFFFF;
        }

        else
        {
          pathExtension2 = [pathCopy pathExtension];
          lowercaseString = [pathExtension2 lowercaseString];
          v30 = [pathExtension2 isEqualToString:lowercaseString];

          if (v30)
          {
            v31 = 0x20000000;
          }

          else
          {
            uppercaseString = [pathExtension2 uppercaseString];
            v33 = [pathExtension2 isEqualToString:uppercaseString];

            if (!v33)
            {

              v17 = 0;
              goto LABEL_22;
            }

            v31 = 0x40000000;
          }

          v34 = *(v17 + 9) & 0x9FFFFFFF | (v17[13] << 32);
          *(v17 + 9) = *(v17 + 9) & 0x9FFFFFFF | v31;
          v17[13] = BYTE4(v34);

          v27 = *(v17 + 9) | (v18[5] << 32);
        }

        if ((v27 & 0x7F80000000) != 0 && !(d >> 20))
        {
          v17[13] = BYTE4(v27);
          *(v17 + 9) = v27 & 0xE00001FF | (d >> 7) & 0x1E00 | (d >> 1 << 13) & 0xEFFFFFFF | ((d & 1) << 28);
          goto LABEL_23;
        }

LABEL_22:

        v17 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&onceToken, &__block_literal_global_81513);
      if (v21)
      {
        goto LABEL_5;
      }
    }

    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Cannot determine file type from extension: %{public}@", buf, 0xCu);
    }

    v24 = 0;
    goto LABEL_10;
  }

LABEL_23:

  return v17;
}

- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  assetCopy = asset;
  v21.receiver = self;
  v21.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  v8 = [(PLPrimaryResourceDataStoreKey *)&v21 _initFromExistingLocationOfExternalResource:resourceCopy asset:assetCopy];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  fileURL = [resourceCopy fileURL];

  if (!fileURL)
  {

LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v11 = [PLPrimaryResourceDataStoreUniformFileKey alloc];
  fileURL2 = [resourceCopy fileURL];
  path = [fileURL2 path];
  version = [resourceCopy version];
  resourceType = [resourceCopy resourceType];
  recipeID = [resourceCopy recipeID];
  bundleScope = [assetCopy bundleScope];
  pathManager = [assetCopy pathManager];
  v18 = [(PLPrimaryResourceDataStoreUniformFileKey *)v11 initWithFilePath:path resourceVersion:version resourceType:resourceType recipeID:recipeID bundleScope:bundleScope pathManager:pathManager];

  if (!v18)
  {
    v18 = [[PLPrimaryResourceDataStoreFilePathKey alloc] initFromExistingLocationOfExternalResource:resourceCopy asset:assetCopy];
  }

LABEL_7:

  return v18;
}

- (id)uniformTypeIdentifier
{
  v2 = PLUTTypeFromUniformFileType(((*(&self->_keyStruct + 1) | (*(&self->_keyStruct + 5) << 32)) >> 31));
  identifier = [v2 identifier];

  return identifier;
}

- (PLPrimaryResourceDataStoreUniformFileKey)initWithKeyStruct:(const void *)struct
{
  v6.receiver = self;
  v6.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v6 _initWithKeyStruct:?];
  if (result)
  {
    v5 = *(struct + 2);
    *&result->_keyStruct = *struct;
    *(&result->_keyStruct + 2) = v5;
  }

  return result;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  dCopy = d;
  identityCopy = identity;
  libraryID = [dCopy libraryID];
  v9 = PLDataStoreForClassIDAndLibraryID(0, libraryID);

  pathManager = [v9 pathManager];
  isUBF = [pathManager isUBF];
  if (((*(&self->_keyStruct + 1) | (*(&self->_keyStruct + 5) << 32)) & 0x7F80000000) == 0 || (*(&self->_keyStruct + 1) & 0x1F0) == 0x1F0)
  {

    goto LABEL_7;
  }

  if (isUBF)
  {
    v12 = *(&self->_keyStruct + 1) & 0x60000000;

    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = identityCopy;
    v14 = [PLResourceModelValidationError malformedKeyErrorForKey:self resource:identityCopy];
    v15 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v14];

    goto LABEL_10;
  }

  v16 = ((*(&self->_keyStruct + 1) >> 29) & 3) - 1;

  if (v16 >= 2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = identityCopy;
  v15 = MEMORY[0x1E695E0F0];
LABEL_10:
  v17 = [(PLPrimaryResourceDataStoreUniformFileKey *)self fileURLForAssetID:dCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v17 path];
  v20 = [defaultManager fileExistsAtPath:path];

  if ((v20 & 1) == 0)
  {
    if ([(PLPrimaryResourceDataStoreUniformFileKey *)self isDerivative]&& (*(&self->_keyStruct + 1) & 0x1E00) == 0x800)
    {
      v21 = [PLResourceModelValidationError unreachableFileThumbnailErrorForKey:self assetID:dCopy];
    }

    else
    {
      v21 = [PLResourceModelValidationError unreachableKeyErrorForKey:self atURL:v17 resource:v13];
    }

    v22 = v21;
    v23 = [v15 arrayByAddingObject:v21];

    v15 = v23;
  }

  return v15;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d
{
  dataCopy = data;
  v4 = [self _fileURLFromKeyStruct:&dataCopy assetID:d];

  return v4;
}

+ (id)_fileURLFromKeyStruct:(PLPrimaryDataStore_UniformFileStrategy_KeyStruct_V1 *)struct assetID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryID = [dCopy libraryID];
  v8 = PLDataStoreForClassIDAndLibraryID(0, libraryID);

  v9 = [v8 keyHelperForBundleScope:{objc_msgSend(dCopy, "bundleScope")}];
  pathManager = [v8 pathManager];
  v11 = [pathManager shouldUseFileIdentifierForBundleScope:{objc_msgSend(dCopy, "bundleScope")}];

  if (v11)
  {
    uuid = [dCopy uuid];
    [uuid UTF8String];
    filename = _fileExtensionFromFileType(((*(struct + 1) | (*(struct + 5) << 32)) >> 31), (*(struct + 1) >> 29) & 3);
    [filename UTF8String];
    v24 = 0;
    v23 = *(v9 + 40);
    v22 = *(v9 + 24);
    v14 = PLURLForResourceProperties();
  }

  else
  {
    uuid = _fileExtensionFromFileType(((*(struct + 1) | (*(struct + 5) << 32)) >> 31), (*(struct + 1) >> 29) & 3);
    [uuid UTF8String];
    filename = [dCopy filename];
    [dCopy directory];
    v15 = v8;
    v17 = v16 = self;
    v24 = *(v9 + 48);
    v22 = *(v9 + 16);
    v23 = *(v9 + 32);
    v14 = PLDCIMURLForResourceProperties();

    self = v16;
    v8 = v15;
  }

  if (v14)
  {
    v25 = 0;
    v18 = [self refreshSandboxExtensionForURL:v14 assetID:dCopy error:{&v25, v22, v23, v24}];
    v19 = v25;
    if ((v18 & 1) == 0)
    {
      v20 = PLImageManagerGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to get sandbox extension for url: %@, error: %@", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v14;
}

@end