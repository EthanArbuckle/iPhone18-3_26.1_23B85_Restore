@interface PLPhotoLibraryFileIdentifier
+ (BOOL)isValidFileIdentifierParametersForUUID:(id)d utiString:(id)string originalFilename:(id)filename;
+ (BOOL)isValidOriginalURL:(id)l;
+ (id)fileIdentifierForValidOriginalURL:(id)l originalsDirectoryName:(id)name;
+ (id)uuidFromURL:(id)l;
- (PLPhotoLibraryFileIdentifier)init;
- (PLPhotoLibraryFileIdentifier)initWithAssetUuid:(id)uuid bundleScope:(unsigned __int16)scope uti:(id)uti resourceVersion:(unsigned int)version resourceType:(unsigned int)type recipeID:(unsigned int)d originalFilename:(id)filename customSuffix:(id)self0;
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

  originalFilename = [(PLPhotoLibraryFileIdentifier *)self originalFilename];
  pathExtension = [originalFilename pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  v10 = [lowercaseString rangeOfString:&stru_1F1F77B60];
  v6 = 0;
  if (lowercaseString && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:lowercaseString];
    v6 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v11 fallbackIdentifier:0];
    if (!v6)
    {
      v6 = lowercaseString;
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
  uuid = [(PLPhotoLibraryFileIdentifier *)self uuid];
  bundleScope = [(PLPhotoLibraryFileIdentifier *)self bundleScope];
  uti = self->_uti;
  resourceVersion = [(PLPhotoLibraryFileIdentifier *)self resourceVersion];
  resourceType = [(PLPhotoLibraryFileIdentifier *)self resourceType];
  v10 = [(PLPhotoLibraryFileIdentifier *)self recipeId]>> 16;
  v11 = [(PLPhotoLibraryFileIdentifier *)self recipeId]>> 1;
  originalFilename = [(PLPhotoLibraryFileIdentifier *)self originalFilename];
  v13 = [v15 stringWithFormat:@"%@ (%p), uuid=%@, bundleScope=%d uti=%@, resourceVersion=%d, resourceType=%d, recipeClassID=%d, recipeVarationID=%d originalFilename=%@", v4, self, uuid, bundleScope, uti, resourceVersion, resourceType, v10, v11, originalFilename];

  return v13;
}

- (PLPhotoLibraryFileIdentifier)initWithAssetUuid:(id)uuid bundleScope:(unsigned __int16)scope uti:(id)uti resourceVersion:(unsigned int)version resourceType:(unsigned int)type recipeID:(unsigned int)d originalFilename:(id)filename customSuffix:(id)self0
{
  uuidCopy = uuid;
  utiCopy = uti;
  filenameCopy = filename;
  suffixCopy = suffix;
  if (!uuidCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  if (!(utiCopy | filenameCopy))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:47 description:@"Either UTI or originalFilename must be non-nil"];
  }

  v28.receiver = self;
  v28.super_class = PLPhotoLibraryFileIdentifier;
  v18 = [(PLPhotoLibraryFileIdentifier *)&v28 init];
  if (v18)
  {
    uppercaseString = [uuidCopy uppercaseString];
    uuid = v18->_uuid;
    v18->_uuid = uppercaseString;

    v18->_bundleScope = scope;
    objc_storeStrong(&v18->_uti, uti);
    v18->_resourceType = type;
    v18->_resourceVersion = version;
    v18->_recipeId = d;
    objc_storeStrong(&v18->_originalFilename, filename);
    if (utiCopy)
    {
      v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:utiCopy];
      v18->_isData = [v21 conformsToType:*MEMORY[0x1E6982D60]];
    }

    objc_storeStrong(&v18->_customSuffix, suffix);
  }

  return v18;
}

- (PLPhotoLibraryFileIdentifier)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid initializer used: %s", "-[PLPhotoLibraryFileIdentifier init]"}];

  return 0;
}

+ (id)fileIdentifierForValidOriginalURL:(id)l originalsDirectoryName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryFileIdentifier.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"originalsDirectoryName"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1545;
  v24 = __Block_byref_object_dispose__1546;
  v25 = 0;
  v9 = [self uuidFromURL:lCopy];
  if (v9)
  {
    v10 = PLAllowedResourceTypesForOriginalResources();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__PLPhotoLibraryFileIdentifier_fileIdentifierForValidOriginalURL_originalsDirectoryName___block_invoke;
    v15[3] = &unk_1E792FC38;
    v16 = v9;
    v17 = lCopy;
    v18 = nameCopy;
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
      v27 = lCopy;
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

+ (BOOL)isValidOriginalURL:(id)l
{
  v3 = [self fileIdentifierForValidOriginalURL:l];
  v4 = v3 != 0;

  return v4;
}

+ (id)uuidFromURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  if ([lastPathComponent length] < 0x24)
  {
    v9 = 0;
  }

  else
  {
    v4 = [lastPathComponent substringToIndex:36];
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

+ (BOOL)isValidFileIdentifierParametersForUUID:(id)d utiString:(id)string originalFilename:(id)filename
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  stringCopy = string;
  filenameCopy = filename;
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  v11 = [MEMORY[0x1E69C08F0] typeWithIdentifier:stringCopy];
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
          v22 = dCopy;
          v23 = 2114;
          v24 = stringCopy;
          v25 = 2112;
          v26 = filenameCopy;
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
          v22 = dCopy;
          v23 = 2114;
          v24 = stringCopy;
          v25 = 2112;
          v26 = filenameCopy;
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

  pathExtension = [filenameCopy pathExtension];
  v15 = [pathExtension length];

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