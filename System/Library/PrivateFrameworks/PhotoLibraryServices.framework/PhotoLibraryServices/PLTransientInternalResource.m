@interface PLTransientInternalResource
+ (id)insertResourceForCloudMaster:(id)a3 withExternalCloudResource:(id)a4;
- (BOOL)isOriginalResource;
- (PLUniformTypeIdentifier)uniformTypeIdentifier;
- (id)validatedExternalResourceRepresentationUsingFileURL:(id)a3;
- (unint64_t)cplType;
- (void)applyTrashedState:(signed __int16)a3 trashedDate:(id)a4;
- (void)setCplType:(unint64_t)a3;
- (void)setUniformTypeIdentifier:(id)a3;
- (void)updateResourceWithExternalCPLResource:(id)a3;
@end

@implementation PLTransientInternalResource

+ (id)insertResourceForCloudMaster:(id)a3 withExternalCloudResource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 managedObjectContext];
  v9 = [a1 insertInManagedObjectContext:v8];

  [v9 updateResourceWithExternalCPLResource:v6];
  [v9 setMaster:v7];

  return v9;
}

- (void)applyTrashedState:(signed __int16)a3 trashedDate:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![PLInternalResource supportsTrashedStateForResourceIdentity:self])
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v17 = 67109376;
      *&v17[4] = v4;
      *&v17[8] = 2048;
      *&v17[10] = [(PLTransientInternalResource *)self cplType];
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Unexpected resource type for trash state: %d, with CPL resource type: %lu, ignoring", v17, 0x12u);
    }

    goto LABEL_23;
  }

  if (v4 == 2)
  {
    if ([(PLTransientInternalResource *)self trashedState]== 1)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PLTransientInternalResource *)self objectID];
        v14 = [(PLTransientInternalResource *)self master];
        v15 = [v14 scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = v13;
        *&v17[12] = 2114;
        *&v17[14] = v15;
        v16 = "Expunging already trashed transient resource %{public}@ on asset %{public}@";
LABEL_20:
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, v16, v17, 0x16u);
      }
    }

    else
    {
      if ([(PLTransientInternalResource *)self trashedState])
      {
LABEL_22:
        [(PLTransientInternalResource *)self setTrashedState:2, *v17, *&v17[16], v18];
        v7 = [(PLTransientInternalResource *)self managedObjectContext];
        [v7 deleteObject:self];
        goto LABEL_23;
      }

      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PLTransientInternalResource *)self objectID];
        v14 = [(PLTransientInternalResource *)self master];
        v15 = [v14 scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = v13;
        *&v17[12] = 2114;
        *&v17[14] = v15;
        v16 = "Expunging resource, skipping trash state on resource %{public}@ on asset %{public}@";
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (![(PLTransientInternalResource *)self trashedState])
    {
      [(PLTransientInternalResource *)self setTrashedState:1];
      [(PLTransientInternalResource *)self setTrashedDate:v6];
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PLTransientInternalResource *)self objectID];
        v9 = [(PLTransientInternalResource *)self master];
        v10 = [v9 scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = v8;
        *&v17[12] = 2114;
        *&v17[14] = v10;
        v11 = "Trashed transient resource %{public}@ on asset %{public}@";
        goto LABEL_13;
      }

LABEL_23:
    }
  }

  else if (!v4 && [(PLTransientInternalResource *)self trashedState]== 1)
  {
    [(PLTransientInternalResource *)self setTrashedState:0];
    [(PLTransientInternalResource *)self setTrashedDate:0];
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLTransientInternalResource *)self objectID];
      v9 = [(PLTransientInternalResource *)self master];
      v10 = [v9 scopedIdentifier];
      *v17 = 138543618;
      *&v17[4] = v8;
      *&v17[12] = 2114;
      *&v17[14] = v10;
      v11 = "Untrashed transient resource %{public}@ on asset %{public}@";
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, v11, v17, 0x16u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }
}

- (id)validatedExternalResourceRepresentationUsingFileURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PLValidatedExternalCloudResource);
  [(PLValidatedExternalResource *)v5 setVersion:[(PLTransientInternalResource *)self version]];
  [(PLValidatedExternalResource *)v5 setResourceType:[(PLTransientInternalResource *)self resourceType]];
  [(PLValidatedExternalResource *)v5 setRecipeID:[(PLTransientInternalResource *)self recipeID]];
  v6 = [(PLTransientInternalResource *)self uniformTypeIdentifier];
  [(PLValidatedExternalResource *)v5 setUniformTypeIdentifier:v6];

  [(PLValidatedExternalResource *)v5 setFileURL:v4];
  [(PLValidatedExternalResource *)v5 setDataLength:[(PLTransientInternalResource *)self dataLength]];
  [(PLValidatedExternalResource *)v5 setUnorientedWidth:[(PLTransientInternalResource *)self unorientedWidth]];
  [(PLValidatedExternalResource *)v5 setUnorientedHeight:[(PLTransientInternalResource *)self unorientedHeight]];
  v7 = [(PLTransientInternalResource *)self codecFourCharCodeName];
  [(PLValidatedExternalResource *)v5 setCodecFourCharCode:v7];

  [(PLValidatedExternalResource *)v5 setTrashedState:[(PLTransientInternalResource *)self trashedState]];
  v8 = [(PLTransientInternalResource *)self trashedDate];
  [(PLValidatedExternalResource *)v5 setTrashedDate:v8];

  [(PLValidatedExternalCloudResource *)v5 setCplType:[(PLTransientInternalResource *)self cplType]];
  [(PLValidatedExternalCloudResource *)v5 setRemoteAvailability:[(PLTransientInternalResource *)self remoteAvailability]];
  [(PLValidatedExternalCloudResource *)v5 setCloudLocalState:3];
  v9 = [(PLTransientInternalResource *)self master];
  v10 = [v9 creationDate];
  [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:v10];

  v11 = [(PLTransientInternalResource *)self fingerprint];
  [(PLValidatedExternalCloudResource *)v5 setFingerprint:v11];

  v12 = [(PLTransientInternalResource *)self stableHash];
  [(PLValidatedExternalCloudResource *)v5 setStableHash:v12];

  return v5;
}

- (void)updateResourceWithExternalCPLResource:(id)a3
{
  v11 = a3;
  -[PLTransientInternalResource setResourceType:](self, "setResourceType:", [v11 resourceType]);
  -[PLTransientInternalResource setVersion:](self, "setVersion:", [v11 version]);
  -[PLTransientInternalResource setRecipeID:](self, "setRecipeID:", [v11 recipeID]);
  v4 = [v11 uniformTypeIdentifier];

  if (v4)
  {
    v5 = [v11 uniformTypeIdentifier];
    [(PLTransientInternalResource *)self setUniformTypeIdentifier:v5];
  }

  -[PLTransientInternalResource setUnorientedWidth:](self, "setUnorientedWidth:", [v11 unorientedWidth]);
  -[PLTransientInternalResource setUnorientedHeight:](self, "setUnorientedHeight:", [v11 unorientedHeight]);
  -[PLTransientInternalResource setDataLength:](self, "setDataLength:", [v11 dataLength]);
  v6 = [v11 codecFourCharCode];

  if (v6)
  {
    v7 = [v11 codecFourCharCode];
    [(PLTransientInternalResource *)self setCodecFourCharCodeName:v7];
  }

  -[PLTransientInternalResource setRemoteAvailability:](self, "setRemoteAvailability:", [v11 remoteAvailability]);
  -[PLTransientInternalResource setCplType:](self, "setCplType:", [v11 cplType]);
  v8 = [v11 fingerprint];

  if (v8)
  {
    v9 = [v11 fingerprint];
    [(PLTransientInternalResource *)self setFingerprint:v9];

    v10 = [v11 stableHash];
    [(PLTransientInternalResource *)self setStableHash:v10];
  }
}

- (void)setUniformTypeIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(PLTransientInternalResource *)self uniformTypeIdentifier];
  v5 = [v4 isEqualToUniformTypeIdentifier:v7];

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      v6 = [v7 identifier];
      [(PLTransientInternalResource *)self setUti:v6];
    }

    else
    {
      [(PLTransientInternalResource *)self setUti:0];
    }
  }
}

- (PLUniformTypeIdentifier)uniformTypeIdentifier
{
  v3 = [(PLTransientInternalResource *)self uti];

  if (v3)
  {
    v4 = [(PLTransientInternalResource *)self uti];
    v5 = [PLUniformTypeIdentifier utiWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isOriginalResource
{
  v2 = self;
  if ([(PLTransientInternalResource *)v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLTransientInternalResource *)v2 recipeID]& 1) == 0;
  }

  return v3;
}

- (void)setCplType:(unint64_t)a3
{
  [(PLTransientInternalResource *)self willChangeValueForKey:@"cplType"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(PLTransientInternalResource *)self setPrimitiveValue:v5 forKey:@"cplType"];

  [(PLTransientInternalResource *)self didChangeValueForKey:@"cplType"];
}

- (unint64_t)cplType
{
  [(PLTransientInternalResource *)self willAccessValueForKey:@"cplType"];
  v3 = [(PLTransientInternalResource *)self primitiveValueForKey:@"cplType"];
  [(PLTransientInternalResource *)self didAccessValueForKey:@"cplType"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

@end