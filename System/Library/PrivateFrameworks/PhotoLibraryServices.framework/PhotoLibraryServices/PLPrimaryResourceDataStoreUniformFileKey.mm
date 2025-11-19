@interface PLPrimaryResourceDataStoreUniformFileKey
+ (id)_fileURLFromKeyStruct:(PLPrimaryDataStore_UniformFileStrategy_KeyStruct_V1 *)a3 assetID:(id)a4;
+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4;
- (PLPrimaryResourceDataStoreUniformFileKey)initWithFilePath:(id)a3 resourceVersion:(unsigned int)a4 resourceType:(unsigned int)a5 recipeID:(unsigned int)a6 bundleScope:(unsigned __int16)a7 pathManager:(id)a8;
- (PLPrimaryResourceDataStoreUniformFileKey)initWithKeyStruct:(const void *)a3;
- (id)fileURLForAssetID:(id)a3;
- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
@end

@implementation PLPrimaryResourceDataStoreUniformFileKey

- (id)fileURLForAssetID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _fileURLFromKeyStruct:&self->_keyStruct assetID:v4];

  return v5;
}

- (PLPrimaryResourceDataStoreUniformFileKey)initWithFilePath:(id)a3 resourceVersion:(unsigned int)a4 resourceType:(unsigned int)a5 recipeID:(unsigned int)a6 bundleScope:(unsigned __int16)a7 pathManager:(id)a8
{
  v9 = a7;
  v12 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a8;
  v36.receiver = self;
  v36.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  v16 = [(PLPrimaryResourceDataStoreKey *)&v36 _init];
  v17 = v16;
  if (v16)
  {
    if (a5 == 31)
    {
      goto LABEL_22;
    }

    v18 = v16 + 8;
    v19 = *(v16 + 9);
    v16[8] = 3;
    *(v16 + 9) = v19 & 0xFFFFFE00 | (4 * (v12 & 3)) & 0xF | (16 * (a5 & 0x1F));
    v20 = [v14 pathExtension];
    v21 = v20;
    if (onceToken == -1)
    {
      if (v20)
      {
LABEL_5:
        v22 = [kFileIdentifierKeyExtensionsToFileTypes objectForKeyedSubscript:v21];
        v23 = [v22 unsignedShortValue];

        v24 = v23;
LABEL_10:

        v26 = (*(v17 + 9) | (v17[13] << 32)) & 0xFFFFFF807FFFFFFFLL | (v24 << 31);
        *(v17 + 9) = *(v17 + 9) & 0x7FFFFFFF | (v24 << 31);
        v17[13] = BYTE4(v26);

        if (([v15 isUBF] & 1) != 0 || objc_msgSend(v15, "shouldUseFileIdentifierForBundleScope:", v9))
        {
          v27 = *(v17 + 9) & 0x9FFFFFFF | (v17[13] << 32);
          *(v17 + 9) &= 0x9FFFFFFF;
        }

        else
        {
          v28 = [v14 pathExtension];
          v29 = [v28 lowercaseString];
          v30 = [v28 isEqualToString:v29];

          if (v30)
          {
            v31 = 0x20000000;
          }

          else
          {
            v32 = [v28 uppercaseString];
            v33 = [v28 isEqualToString:v32];

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

        if ((v27 & 0x7F80000000) != 0 && !(a6 >> 20))
        {
          v17[13] = BYTE4(v27);
          *(v17 + 9) = v27 & 0xE00001FF | (a6 >> 7) & 0x1E00 | (a6 >> 1 << 13) & 0xEFFFFFFF | ((a6 & 1) << 28);
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

- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  v8 = [(PLPrimaryResourceDataStoreKey *)&v21 _initFromExistingLocationOfExternalResource:v6 asset:v7];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v6 fileURL];

  if (!v10)
  {

LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v11 = [PLPrimaryResourceDataStoreUniformFileKey alloc];
  v20 = [v6 fileURL];
  v12 = [v20 path];
  v13 = [v6 version];
  v14 = [v6 resourceType];
  v15 = [v6 recipeID];
  v16 = [v7 bundleScope];
  v17 = [v7 pathManager];
  v18 = [(PLPrimaryResourceDataStoreUniformFileKey *)v11 initWithFilePath:v12 resourceVersion:v13 resourceType:v14 recipeID:v15 bundleScope:v16 pathManager:v17];

  if (!v18)
  {
    v18 = [[PLPrimaryResourceDataStoreFilePathKey alloc] initFromExistingLocationOfExternalResource:v6 asset:v7];
  }

LABEL_7:

  return v18;
}

- (id)uniformTypeIdentifier
{
  v2 = PLUTTypeFromUniformFileType(((*(&self->_keyStruct + 1) | (*(&self->_keyStruct + 5) << 32)) >> 31));
  v3 = [v2 identifier];

  return v3;
}

- (PLPrimaryResourceDataStoreUniformFileKey)initWithKeyStruct:(const void *)a3
{
  v6.receiver = self;
  v6.super_class = PLPrimaryResourceDataStoreUniformFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v6 _initWithKeyStruct:?];
  if (result)
  {
    v5 = *(a3 + 2);
    *&result->_keyStruct = *a3;
    *(&result->_keyStruct + 2) = v5;
  }

  return result;
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 libraryID];
  v9 = PLDataStoreForClassIDAndLibraryID(0, v8);

  v10 = [v9 pathManager];
  v11 = [v10 isUBF];
  if (((*(&self->_keyStruct + 1) | (*(&self->_keyStruct + 5) << 32)) & 0x7F80000000) == 0 || (*(&self->_keyStruct + 1) & 0x1F0) == 0x1F0)
  {

    goto LABEL_7;
  }

  if (v11)
  {
    v12 = *(&self->_keyStruct + 1) & 0x60000000;

    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = v7;
    v14 = [PLResourceModelValidationError malformedKeyErrorForKey:self resource:v7];
    v15 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v14];

    goto LABEL_10;
  }

  v16 = ((*(&self->_keyStruct + 1) >> 29) & 3) - 1;

  if (v16 >= 2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = v7;
  v15 = MEMORY[0x1E695E0F0];
LABEL_10:
  v17 = [(PLPrimaryResourceDataStoreUniformFileKey *)self fileURLForAssetID:v6];
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = [v17 path];
  v20 = [v18 fileExistsAtPath:v19];

  if ((v20 & 1) == 0)
  {
    if ([(PLPrimaryResourceDataStoreUniformFileKey *)self isDerivative]&& (*(&self->_keyStruct + 1) & 0x1E00) == 0x800)
    {
      v21 = [PLResourceModelValidationError unreachableFileThumbnailErrorForKey:self assetID:v6];
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

+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4
{
  v6 = a3;
  v4 = [a1 _fileURLFromKeyStruct:&v6 assetID:a4];

  return v4;
}

+ (id)_fileURLFromKeyStruct:(PLPrimaryDataStore_UniformFileStrategy_KeyStruct_V1 *)a3 assetID:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 libraryID];
  v8 = PLDataStoreForClassIDAndLibraryID(0, v7);

  v9 = [v8 keyHelperForBundleScope:{objc_msgSend(v6, "bundleScope")}];
  v10 = [v8 pathManager];
  v11 = [v10 shouldUseFileIdentifierForBundleScope:{objc_msgSend(v6, "bundleScope")}];

  if (v11)
  {
    v12 = [v6 uuid];
    [v12 UTF8String];
    v13 = _fileExtensionFromFileType(((*(a3 + 1) | (*(a3 + 5) << 32)) >> 31), (*(a3 + 1) >> 29) & 3);
    [v13 UTF8String];
    v24 = 0;
    v23 = *(v9 + 40);
    v22 = *(v9 + 24);
    v14 = PLURLForResourceProperties();
  }

  else
  {
    v12 = _fileExtensionFromFileType(((*(a3 + 1) | (*(a3 + 5) << 32)) >> 31), (*(a3 + 1) >> 29) & 3);
    [v12 UTF8String];
    v13 = [v6 filename];
    [v6 directory];
    v15 = v8;
    v17 = v16 = a1;
    v24 = *(v9 + 48);
    v22 = *(v9 + 16);
    v23 = *(v9 + 32);
    v14 = PLDCIMURLForResourceProperties();

    a1 = v16;
    v8 = v15;
  }

  if (v14)
  {
    v25 = 0;
    v18 = [a1 refreshSandboxExtensionForURL:v14 assetID:v6 error:{&v25, v22, v23, v24}];
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