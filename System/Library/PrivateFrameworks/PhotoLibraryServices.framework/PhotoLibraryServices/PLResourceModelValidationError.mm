@interface PLResourceModelValidationError
+ (id)duplicateResourceErrorAmongResources:(id)resources forAsset:(id)asset;
+ (id)duplicatedCPLTypeAssetErrorForAsset:(id)asset cplType:(unint64_t)type;
+ (id)localAvailabilityInconsistencyErrorForResource:(id)resource;
+ (id)malformedKeyErrorForKey:(id)key resource:(id)resource;
+ (id)malformedTableThumbnailKeyErrorForKey:(id)key assetID:(id)d;
+ (id)missingRequiredResourcesErrorForAsset:(id)asset message:(id)message;
+ (id)tableThumbUUIDMistmatchErrorForKey:(id)key indexFromKey:(unint64_t)fromKey assetID:(id)d;
+ (id)unexpectedLocalResourceError:(id)error;
+ (id)unreachableFileThumbnailErrorForKey:(id)key assetID:(id)d;
+ (id)unreachableKeyErrorForKey:(id)key atURL:(id)l resource:(id)resource;
+ (id)unreachableTableThumbnailErrorForKey:(id)key assetID:(id)d;
- (PLResourceModelValidationError)init;
- (id)description;
@end

@implementation PLResourceModelValidationError

- (id)description
{
  code = [(PLResourceModelValidationError *)self code];
  if ((code - 1) > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7568730[code - 1];
  }

  v5 = MEMORY[0x1E696AD60];
  userInfo = [(PLResourceModelValidationError *)self userInfo];
  v7 = [v5 stringWithFormat:@"PLResourceModelValidationError <%p>: %@, %@", self, v4, userInfo];

  userInfo2 = [(PLResourceModelValidationError *)self userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"dataStoreKey"];

  if (v9)
  {
    keyData = [v9 keyData];
    [v7 appendFormat:@" keyData: %@", keyData];
  }

  return v7;
}

- (PLResourceModelValidationError)init
{
  v3.receiver = self;
  v3.super_class = PLResourceModelValidationError;
  return [(PLResourceModelValidationError *)&v3 init];
}

+ (id)tableThumbUUIDMistmatchErrorForKey:(id)key indexFromKey:(unint64_t)fromKey assetID:(id)d
{
  v17[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  v9 = objc_alloc(objc_opt_class());
  v17[0] = keyCopy;
  v16[0] = @"dataStoreKey";
  v16[1] = @"tableEntryIndex";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fromKey];
  v17[1] = v10;
  v16[2] = @"assetUUID";
  uuid = [dCopy uuid];

  null = uuid;
  if (!uuid)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:11 userInfo:v13];

  if (!uuid)
  {
  }

  return v14;
}

+ (id)unreachableFileThumbnailErrorForKey:(id)key assetID:(id)d
{
  v14[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v13[0] = @"dataStoreKey";
  v13[1] = @"assetUUID";
  v14[0] = keyCopy;
  uuid = [dCopy uuid];
  if (uuid)
  {
    [dCopy uuid];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v9 = ;
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v7 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:10 userInfo:v10];

  return v11;
}

+ (id)unreachableTableThumbnailErrorForKey:(id)key assetID:(id)d
{
  v14[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v13[0] = @"dataStoreKey";
  v13[1] = @"assetUUID";
  v14[0] = keyCopy;
  uuid = [dCopy uuid];
  if (uuid)
  {
    [dCopy uuid];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v9 = ;
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v7 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:4 userInfo:v10];

  return v11;
}

+ (id)unreachableKeyErrorForKey:(id)key atURL:(id)l resource:(id)resource
{
  v20[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  lCopy = l;
  resourceCopy = resource;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v12 = objc_alloc(objc_opt_class());
  v20[0] = keyCopy;
  v19[0] = @"dataStoreKey";
  v19[1] = @"fileURL";
  null = lCopy;
  if (!lCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null;
  v19[2] = @"resource";
  null2 = resourceCopy;
  if (!resourceCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null2;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [v12 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:3 userInfo:v15];

  if (resourceCopy)
  {
    if (lCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (lCopy)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  return v16;
}

+ (id)malformedTableThumbnailKeyErrorForKey:(id)key assetID:(id)d
{
  v17[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v16[0] = @"dataStoreKey";
  v16[1] = @"assetUUID";
  v17[0] = keyCopy;
  uuid = [dCopy uuid];
  if (uuid)
  {
    [dCopy uuid];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v11 = ;
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:2 userInfo:v12];

  return v13;
}

+ (id)malformedKeyErrorForKey:(id)key resource:(id)resource
{
  v16[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  resourceCopy = resource;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v15[0] = @"dataStoreKey";
  v15[1] = @"resource";
  v16[0] = keyCopy;
  null = resourceCopy;
  if (!resourceCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:1 userInfo:v11];

  if (!resourceCopy)
  {
  }

  return v12;
}

+ (id)unexpectedLocalResourceError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = objc_alloc(objc_opt_class());
  v9 = @"resource";
  null = errorCopy;
  if (!errorCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:6 userInfo:v6];

  if (!errorCopy)
  {
  }

  return v7;
}

+ (id)localAvailabilityInconsistencyErrorForResource:(id)resource
{
  v10[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v4 = objc_alloc(objc_opt_class());
  v9 = @"resource";
  null = resourceCopy;
  if (!resourceCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:5 userInfo:v6];

  if (!resourceCopy)
  {
  }

  return v7;
}

+ (id)duplicatedCPLTypeAssetErrorForAsset:(id)asset cplType:(unint64_t)type
{
  v16[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = objc_alloc(objc_opt_class());
  v15[0] = @"cplType";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v15[1] = @"assetUUID";
  v16[0] = v9;
  uuid = [assetCopy uuid];
  v16[1] = uuid;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v8 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:9 userInfo:v11];

  return v12;
}

+ (id)duplicateResourceErrorAmongResources:(id)resources forAsset:(id)asset
{
  v18[2] = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  assetCopy = asset;
  v9 = assetCopy;
  if (resourcesCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"resources"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v10 = objc_alloc(objc_opt_class());
  v17[0] = @"resources";
  v17[1] = @"assetUUID";
  v18[0] = resourcesCopy;
  uuid = [v9 uuid];
  v18[1] = uuid;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v13 = [v10 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:7 userInfo:v12];

  return v13;
}

+ (id)missingRequiredResourcesErrorForAsset:(id)asset message:(id)message
{
  v16[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  messageCopy = message;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceModelValidationError.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v15[0] = @"assetUUID";
  uuid = [assetCopy uuid];
  v15[1] = @"message";
  v16[0] = uuid;
  v16[1] = messageCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:8 userInfo:v11];

  return v12;
}

@end