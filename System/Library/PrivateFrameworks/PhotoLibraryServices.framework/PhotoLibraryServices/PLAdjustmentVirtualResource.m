@interface PLAdjustmentVirtualResource
- (PLAdjustmentVirtualResource)initWithAdjustmentFilePath:(id)a3 forAsset:(id)a4;
- (id)adjustmentDictionary;
- (int64_t)dataLength;
- (int64_t)estimatedDataLength;
@end

@implementation PLAdjustmentVirtualResource

- (id)adjustmentDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(PLVirtualResource *)self fileURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:2 error:0];
    if (v3)
    {
      v8 = 0;
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v8];
      v5 = v8;
      if (v5)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v10 = v5;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error when parsing adjustment data: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "adjustmentFileData is nil for file URL: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "adjustmentFileURL is nil for self", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (int64_t)estimatedDataLength
{
  os_unfair_lock_lock(&self->_lock);
  cachedDataLength = self->_cachedDataLength;
  if (!cachedDataLength)
  {
    os_unfair_lock_unlock(&self->_lock);
    return [MEMORY[0x1E6994B60] maxInlineDataSize] / 2;
  }

  v4 = [(NSNumber *)cachedDataLength unsignedLongLongValue];
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    return [MEMORY[0x1E6994B60] maxInlineDataSize] / 2;
  }

  return v4;
}

- (int64_t)dataLength
{
  os_unfair_lock_lock(&self->_lock);
  cachedDataLength = self->_cachedDataLength;
  if (!cachedDataLength)
  {
    v4 = [(PLVirtualResource *)self dataStoreKey];
    v5 = [(PLVirtualResource *)self assetID];
    v6 = [v4 fileURLForAssetID:v5];
    v7 = [v6 path];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 attributesOfItemAtPath:v7 error:0];

    v10 = [v9 objectForKey:*MEMORY[0x1E696A3B8]];
    if (v10)
    {
      objc_storeStrong(&self->_cachedDataLength, v10);
    }

    cachedDataLength = self->_cachedDataLength;
  }

  v11 = [(NSNumber *)cachedDataLength unsignedLongLongValue];
  os_unfair_lock_unlock(&self->_lock);
  return v11;
}

- (PLAdjustmentVirtualResource)initWithAdjustmentFilePath:(id)a3 forAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PLAdjustmentVirtualResource;
  v9 = [(PLVirtualResource *)&v16 initWithAsset:v8 resourceType:8 version:2 recipeID:0];
  if (v9)
  {
    if (!v7)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v9 file:@"PLAdjustmentVirtualResource.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"pathForAdjustmentFile"}];
    }

    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = +[PLUniformTypeIdentifier plistUniformTypeIdentifier];
    [(PLVirtualResource *)v9 setUniformTypeIdentifier:v10];

    v11 = objc_alloc_init(PLValidatedExternalResource);
    [(PLValidatedExternalResource *)v11 setResourceType:[(PLVirtualResource *)v9 resourceType]];
    [(PLValidatedExternalResource *)v11 setVersion:[(PLVirtualResource *)v9 version]];
    [(PLValidatedExternalResource *)v11 setRecipeID:[(PLVirtualResource *)v9 recipeID]];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
    [(PLValidatedExternalResource *)v11 setFileURL:v12];

    v13 = [[PLPrimaryResourceDataStoreKey alloc] initFromExistingLocationOfExternalResource:v11 asset:v8];
    [(PLVirtualResource *)v9 setDataStoreKey:v13];
  }

  return v9;
}

@end