@interface PLResourceModelValidationError
+ (id)duplicateResourceErrorAmongResources:(id)a3 forAsset:(id)a4;
+ (id)duplicatedCPLTypeAssetErrorForAsset:(id)a3 cplType:(unint64_t)a4;
+ (id)localAvailabilityInconsistencyErrorForResource:(id)a3;
+ (id)malformedKeyErrorForKey:(id)a3 resource:(id)a4;
+ (id)malformedTableThumbnailKeyErrorForKey:(id)a3 assetID:(id)a4;
+ (id)missingRequiredResourcesErrorForAsset:(id)a3 message:(id)a4;
+ (id)tableThumbUUIDMistmatchErrorForKey:(id)a3 indexFromKey:(unint64_t)a4 assetID:(id)a5;
+ (id)unexpectedLocalResourceError:(id)a3;
+ (id)unreachableFileThumbnailErrorForKey:(id)a3 assetID:(id)a4;
+ (id)unreachableKeyErrorForKey:(id)a3 atURL:(id)a4 resource:(id)a5;
+ (id)unreachableTableThumbnailErrorForKey:(id)a3 assetID:(id)a4;
- (PLResourceModelValidationError)init;
- (id)description;
@end

@implementation PLResourceModelValidationError

- (id)description
{
  v3 = [(PLResourceModelValidationError *)self code];
  if ((v3 - 1) > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7568730[v3 - 1];
  }

  v5 = MEMORY[0x1E696AD60];
  v6 = [(PLResourceModelValidationError *)self userInfo];
  v7 = [v5 stringWithFormat:@"PLResourceModelValidationError <%p>: %@, %@", self, v4, v6];

  v8 = [(PLResourceModelValidationError *)self userInfo];
  v9 = [v8 objectForKeyedSubscript:@"dataStoreKey"];

  if (v9)
  {
    v10 = [v9 keyData];
    [v7 appendFormat:@" keyData: %@", v10];
  }

  return v7;
}

- (PLResourceModelValidationError)init
{
  v3.receiver = self;
  v3.super_class = PLResourceModelValidationError;
  return [(PLResourceModelValidationError *)&v3 init];
}

+ (id)tableThumbUUIDMistmatchErrorForKey:(id)a3 indexFromKey:(unint64_t)a4 assetID:(id)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc(objc_opt_class());
  v17[0] = v7;
  v16[0] = @"dataStoreKey";
  v16[1] = @"tableEntryIndex";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v17[1] = v10;
  v16[2] = @"assetUUID";
  v11 = [v8 uuid];

  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:11 userInfo:v13];

  if (!v11)
  {
  }

  return v14;
}

+ (id)unreachableFileThumbnailErrorForKey:(id)a3 assetID:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(objc_opt_class());
  v13[0] = @"dataStoreKey";
  v13[1] = @"assetUUID";
  v14[0] = v5;
  v8 = [v6 uuid];
  if (v8)
  {
    [v6 uuid];
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

+ (id)unreachableTableThumbnailErrorForKey:(id)a3 assetID:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(objc_opt_class());
  v13[0] = @"dataStoreKey";
  v13[1] = @"assetUUID";
  v14[0] = v5;
  v8 = [v6 uuid];
  if (v8)
  {
    [v6 uuid];
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

+ (id)unreachableKeyErrorForKey:(id)a3 atURL:(id)a4 resource:(id)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v12 = objc_alloc(objc_opt_class());
  v20[0] = v9;
  v19[0] = @"dataStoreKey";
  v19[1] = @"fileURL";
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v13;
  v19[2] = @"resource";
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [v12 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:3 userInfo:v15];

  if (v11)
  {
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  return v16;
}

+ (id)malformedTableThumbnailKeyErrorForKey:(id)a3 assetID:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v16[0] = @"dataStoreKey";
  v16[1] = @"assetUUID";
  v17[0] = v7;
  v10 = [v8 uuid];
  if (v10)
  {
    [v8 uuid];
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

+ (id)malformedKeyErrorForKey:(id)a3 resource:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v15[0] = @"dataStoreKey";
  v15[1] = @"resource";
  v16[0] = v7;
  v10 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:1 userInfo:v11];

  if (!v8)
  {
  }

  return v12;
}

+ (id)unexpectedLocalResourceError:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v9 = @"resource";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:6 userInfo:v6];

  if (!v3)
  {
  }

  return v7;
}

+ (id)localAvailabilityInconsistencyErrorForResource:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v9 = @"resource";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:5 userInfo:v6];

  if (!v3)
  {
  }

  return v7;
}

+ (id)duplicatedCPLTypeAssetErrorForAsset:(id)a3 cplType:(unint64_t)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = objc_alloc(objc_opt_class());
  v15[0] = @"cplType";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v15[1] = @"assetUUID";
  v16[0] = v9;
  v10 = [v7 uuid];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v8 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:9 userInfo:v11];

  return v12;
}

+ (id)duplicateResourceErrorAmongResources:(id)a3 forAsset:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"resources"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v10 = objc_alloc(objc_opt_class());
  v17[0] = @"resources";
  v17[1] = @"assetUUID";
  v18[0] = v7;
  v11 = [v9 uuid];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v13 = [v10 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:7 userInfo:v12];

  return v13;
}

+ (id)missingRequiredResourcesErrorForAsset:(id)a3 message:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLResourceModelValidationError.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v15[0] = @"assetUUID";
  v10 = [v7 uuid];
  v15[1] = @"message";
  v16[0] = v10;
  v16[1] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v9 initWithDomain:@"com.apple.photos.resourcemodel.validation" code:8 userInfo:v11];

  return v12;
}

@end