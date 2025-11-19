@interface PLPhotoLibraryFileIdentifier
+ (BOOL)isValidFileIdentifierParametersForUUID:(id)a3 utiString:(id)a4 originalFilename:(id)a5;
+ (BOOL)isValidOriginalURL:(id)a3;
+ (id)fileIdentifierForValidOriginalURL:(id)a3 originalsDirectoryName:(id)a4;
+ (id)uuidFromURL:(id)a3;
- (PLPhotoLibraryFileIdentifier)init;
- (PLPhotoLibraryFileIdentifier)initWithAssetUuid:(id)a3 bundleScope:(unsigned __int16)a4 uti:(id)a5 resourceVersion:(unsigned int)a6 resourceType:(unsigned int)a7 recipeID:(unsigned int)a8 originalFilename:(id)a9 customSuffix:(id)a10;
- (id)description;
- (id)extension;
@end

@implementation PLPhotoLibraryFileIdentifier

- (id)extension
{
  v3 = [(PLPhotoLibraryFileIdentifier *)self uti];
  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
    if (-[PLPhotoLibraryFileIdentifier resourceType](self, "resourceType") == 5 && [v4 isEqual:*MEMORY[0x1E6982D60]])
    {
      v5 = *MEMORY[0x1E69C0E20];
LABEL_7:
      v6 = v5;
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v4 fallbackIdentifier:v3];
  if (v5)
  {
    goto LABEL_7;
  }

  v7 = [(PLPhotoLibraryFileIdentifier *)self originalFilename];
  v8 = [v7 pathExtension];
  v9 = [v8 lowercaseString];

  v10 = [v9 rangeOfString:&stru_1F1F77B60];
  v6 = 0;
  if (v9 && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v9];
    v6 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v11 fallbackIdentifier:0];
    if (!v6)
    {
      v6 = v9;
    }
  }

LABEL_14:

  return v6;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PLPhotoLibraryFileIdentifier *)self uuid];
  v6 = [(PLPhotoLibraryFileIdentifier *)self bundleScope];
  uti = self->_uti;
  v8 = [(PLPhotoLibraryFileIdentifier *)self resourceVersion];
  v9 = [(PLPhotoLibraryFileIdentifier *)self resourceType];
  v10 = [(PLPhotoLibraryFileIdentifier *)self recipeId]>> 16;
  v11 = [(PLPhotoLibraryFileIdentifier *)self recipeId]>> 1;
  v12 = [(PLPhotoLibraryFileIdentifier *)self originalFilename];
  v13 = [v15 stringWithFormat:@"%@ (%p), uuid=%@, bundleScope=%d uti=%@, resourceVersion=%d, resourceType=%d, recipeClassID=%d, recipeVarationID=%d originalFilename=%@", v4, self, v5, v6, uti, v8, v9, v10, v11, v12];

  return v13;
}

- (PLPhotoLibraryFileIdentifier)initWithAssetUuid:(id)a3 bundleScope:(unsigned __int16)a4 uti:(id)a5 resourceVersion:(unsigned int)a6 resourceType:(unsigned int)a7 recipeID:(unsigned int)a8 originalFilename:(id)a9 customSuffix:(id)a10
{
  v14 = a3;
  v15 = a5;
  v16 = a9;
  v17 = a10;
  if (!v14)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  if (!(v15 | v16))
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:47 description:@"Either UTI or originalFilename must be non-nil"];
  }

  v28.receiver = self;
  v28.super_class = PLPhotoLibraryFileIdentifier;
  v18 = [(PLPhotoLibraryFileIdentifier *)&v28 init];
  if (v18)
  {
    v19 = [v14 uppercaseString];
    uuid = v18->_uuid;
    v18->_uuid = v19;

    v18->_bundleScope = a4;
    objc_storeStrong(&v18->_uti, a5);
    v18->_resourceType = a7;
    v18->_resourceVersion = a6;
    v18->_recipeId = a8;
    objc_storeStrong(&v18->_originalFilename, a9);
    if (v15)
    {
      v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:v15];
      v18->_isData = [v21 conformsToType:*MEMORY[0x1E6982D60]];
    }

    objc_storeStrong(&v18->_customSuffix, a10);
  }

  return v18;
}

- (PLPhotoLibraryFileIdentifier)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid initializer used: %s", "-[PLPhotoLibraryFileIdentifier init]"}];

  return 0;
}

+ (id)fileIdentifierForValidOriginalURL:(id)a3 originalsDirectoryName:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"originalsDirectoryName"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1545;
  v24 = __Block_byref_object_dispose__1546;
  v25 = 0;
  v9 = [a1 uuidFromURL:v7];
  if (v9)
  {
    v10 = PLAllowedResourceTypesForOriginalResources();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__PLPhotoLibraryFileIdentifier_fileIdentifierForValidOriginalURL_originalsDirectoryName___block_invoke;
    v15[3] = &unk_1E792FC38;
    v16 = v9;
    v17 = v7;
    v18 = v8;
    v19 = &v20;
    [v10 enumerateObjectsUsingBlock:v15];

    v11 = v16;
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_DEFAULT, "FileIdentifier - filenameUUID is nil for url: %@", buf, 0xCu);
    }
  }

  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __89__PLPhotoLibraryFileIdentifier_fileIdentifierForValidOriginalURL_originalsDirectoryName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = [PLPhotoLibraryFileIdentifier alloc];
  v7 = *(a1 + 32);
  v8 = [v5 integerValue];
  v9 = [*(a1 + 40) lastPathComponent];
  obj = [(PLPhotoLibraryFileIdentifier *)v6 initWithAssetUuid:v7 bundleScope:0 uti:0 resourceVersion:0 resourceType:v8 recipeID:0 originalFilename:v9 customSuffix:0];

  v20 = [*(a1 + 32) UTF8String];
  v10 = [(PLPhotoLibraryFileIdentifier *)obj extension];
  v11 = [v10 UTF8String];
  LODWORD(v9) = [v5 integerValue];

  v12 = PLPathForResourceProperties(v20, v11, v9, 0, 0, -[PLPhotoLibraryFileIdentifier isData](obj, "isData"), [*(a1 + 48) UTF8String], objc_msgSend(@"resources/renders", "UTF8String"), objc_msgSend(@"resources/derivatives", "UTF8String"), objc_msgSend(@"resources/caches/compute", "UTF8String"), objc_msgSend(@"resources/derivatives/masters", "UTF8String"), objc_msgSend(@"resources/derivatives/cvt", "UTF8String"), 0);

  v13 = [*(a1 + 40) path];
  v14 = [v13 pathComponents];

  v15 = [v12 pathComponents];
  v16 = [v14 count];
  if (v16 > [v15 count])
  {
    v17 = [v14 subarrayWithRange:{objc_msgSend(v14, "count") - objc_msgSend(v15, "count"), objc_msgSend(v15, "count")}];
    v18 = [v17 isEqualToArray:v15];

    if (v18)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
      *a4 = 1;
    }
  }
}

+ (BOOL)isValidOriginalURL:(id)a3
{
  v3 = [a1 fileIdentifierForValidOriginalURL:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)uuidFromURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  if ([v3 length] < 0x24)
  {
    v9 = 0;
  }

  else
  {
    v4 = [v3 substringToIndex:36];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    v6 = v5;
    if (v5 && ([v5 UUIDString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", v4), v7, v8))
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)isValidFileIdentifierParametersForUUID:(id)a3 utiString:(id)a4 originalFilename:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  v11 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 isDynamic] ^ 1;
    if (!v10)
    {
LABEL_11:
      if (v10)
      {
        goto LABEL_12;
      }

LABEL_7:
      if (PFOSVariantHasInternalDiagnostics() && (PFProcessIsLaunchedToExecuteTests() & 1) == 0)
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v21 = 138543874;
          v22 = v7;
          v23 = 2114;
          v24 = v8;
          v25 = 2112;
          v26 = v9;
          v17 = v16;
          v18 = OS_LOG_TYPE_FAULT;
          goto LABEL_15;
        }
      }

      else
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = 138543874;
          v22 = v7;
          v23 = 2114;
          v24 = v8;
          v25 = 2112;
          v26 = v9;
          v17 = v16;
          v18 = OS_LOG_TYPE_ERROR;
LABEL_15:
          _os_log_impl(&dword_1AA9BD000, v17, v18, "isValidFileIdentifierParameters failed validation with uuid: %{public}@, utiString: %{public}@, originalFilename: %@", &v21, 0x20u);
        }
      }

      v19 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    goto LABEL_11;
  }

  v14 = [v9 pathExtension];
  v15 = [v14 length];

  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_12:
  v19 = 1;
LABEL_17:

  return v19;
}

@end