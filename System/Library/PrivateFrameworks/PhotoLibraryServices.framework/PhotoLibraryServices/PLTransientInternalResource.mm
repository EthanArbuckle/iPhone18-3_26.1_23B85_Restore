@interface PLTransientInternalResource
+ (id)insertResourceForCloudMaster:(id)master withExternalCloudResource:(id)resource;
- (BOOL)isOriginalResource;
- (PLUniformTypeIdentifier)uniformTypeIdentifier;
- (id)validatedExternalResourceRepresentationUsingFileURL:(id)l;
- (unint64_t)cplType;
- (void)applyTrashedState:(signed __int16)state trashedDate:(id)date;
- (void)setCplType:(unint64_t)type;
- (void)setUniformTypeIdentifier:(id)identifier;
- (void)updateResourceWithExternalCPLResource:(id)resource;
@end

@implementation PLTransientInternalResource

+ (id)insertResourceForCloudMaster:(id)master withExternalCloudResource:(id)resource
{
  resourceCopy = resource;
  masterCopy = master;
  managedObjectContext = [masterCopy managedObjectContext];
  v9 = [self insertInManagedObjectContext:managedObjectContext];

  [v9 updateResourceWithExternalCPLResource:resourceCopy];
  [v9 setMaster:masterCopy];

  return v9;
}

- (void)applyTrashedState:(signed __int16)state trashedDate:(id)date
{
  stateCopy = state;
  v18 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (![PLInternalResource supportsTrashedStateForResourceIdentity:self])
  {
    managedObjectContext = PLBackendGetLog();
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_INFO))
    {
      *v17 = 67109376;
      *&v17[4] = stateCopy;
      *&v17[8] = 2048;
      *&v17[10] = [(PLTransientInternalResource *)self cplType];
      _os_log_impl(&dword_19BF1F000, managedObjectContext, OS_LOG_TYPE_INFO, "Unexpected resource type for trash state: %d, with CPL resource type: %lu, ignoring", v17, 0x12u);
    }

    goto LABEL_23;
  }

  if (stateCopy == 2)
  {
    if ([(PLTransientInternalResource *)self trashedState]== 1)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PLTransientInternalResource *)self objectID];
        master = [(PLTransientInternalResource *)self master];
        scopedIdentifier = [master scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = objectID;
        *&v17[12] = 2114;
        *&v17[14] = scopedIdentifier;
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
        managedObjectContext = [(PLTransientInternalResource *)self managedObjectContext];
        [managedObjectContext deleteObject:self];
        goto LABEL_23;
      }

      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PLTransientInternalResource *)self objectID];
        master = [(PLTransientInternalResource *)self master];
        scopedIdentifier = [master scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = objectID;
        *&v17[12] = 2114;
        *&v17[14] = scopedIdentifier;
        v16 = "Expunging resource, skipping trash state on resource %{public}@ on asset %{public}@";
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

  if (stateCopy == 1)
  {
    if (![(PLTransientInternalResource *)self trashedState])
    {
      [(PLTransientInternalResource *)self setTrashedState:1];
      [(PLTransientInternalResource *)self setTrashedDate:dateCopy];
      managedObjectContext = PLBackendGetLog();
      if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
      {
        objectID2 = [(PLTransientInternalResource *)self objectID];
        master2 = [(PLTransientInternalResource *)self master];
        scopedIdentifier2 = [master2 scopedIdentifier];
        *v17 = 138543618;
        *&v17[4] = objectID2;
        *&v17[12] = 2114;
        *&v17[14] = scopedIdentifier2;
        v11 = "Trashed transient resource %{public}@ on asset %{public}@";
        goto LABEL_13;
      }

LABEL_23:
    }
  }

  else if (!stateCopy && [(PLTransientInternalResource *)self trashedState]== 1)
  {
    [(PLTransientInternalResource *)self setTrashedState:0];
    [(PLTransientInternalResource *)self setTrashedDate:0];
    managedObjectContext = PLBackendGetLog();
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
    {
      objectID2 = [(PLTransientInternalResource *)self objectID];
      master2 = [(PLTransientInternalResource *)self master];
      scopedIdentifier2 = [master2 scopedIdentifier];
      *v17 = 138543618;
      *&v17[4] = objectID2;
      *&v17[12] = 2114;
      *&v17[14] = scopedIdentifier2;
      v11 = "Untrashed transient resource %{public}@ on asset %{public}@";
LABEL_13:
      _os_log_impl(&dword_19BF1F000, managedObjectContext, OS_LOG_TYPE_DEFAULT, v11, v17, 0x16u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }
}

- (id)validatedExternalResourceRepresentationUsingFileURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(PLValidatedExternalCloudResource);
  [(PLValidatedExternalResource *)v5 setVersion:[(PLTransientInternalResource *)self version]];
  [(PLValidatedExternalResource *)v5 setResourceType:[(PLTransientInternalResource *)self resourceType]];
  [(PLValidatedExternalResource *)v5 setRecipeID:[(PLTransientInternalResource *)self recipeID]];
  uniformTypeIdentifier = [(PLTransientInternalResource *)self uniformTypeIdentifier];
  [(PLValidatedExternalResource *)v5 setUniformTypeIdentifier:uniformTypeIdentifier];

  [(PLValidatedExternalResource *)v5 setFileURL:lCopy];
  [(PLValidatedExternalResource *)v5 setDataLength:[(PLTransientInternalResource *)self dataLength]];
  [(PLValidatedExternalResource *)v5 setUnorientedWidth:[(PLTransientInternalResource *)self unorientedWidth]];
  [(PLValidatedExternalResource *)v5 setUnorientedHeight:[(PLTransientInternalResource *)self unorientedHeight]];
  codecFourCharCodeName = [(PLTransientInternalResource *)self codecFourCharCodeName];
  [(PLValidatedExternalResource *)v5 setCodecFourCharCode:codecFourCharCodeName];

  [(PLValidatedExternalResource *)v5 setTrashedState:[(PLTransientInternalResource *)self trashedState]];
  trashedDate = [(PLTransientInternalResource *)self trashedDate];
  [(PLValidatedExternalResource *)v5 setTrashedDate:trashedDate];

  [(PLValidatedExternalCloudResource *)v5 setCplType:[(PLTransientInternalResource *)self cplType]];
  [(PLValidatedExternalCloudResource *)v5 setRemoteAvailability:[(PLTransientInternalResource *)self remoteAvailability]];
  [(PLValidatedExternalCloudResource *)v5 setCloudLocalState:3];
  master = [(PLTransientInternalResource *)self master];
  creationDate = [master creationDate];
  [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:creationDate];

  fingerprint = [(PLTransientInternalResource *)self fingerprint];
  [(PLValidatedExternalCloudResource *)v5 setFingerprint:fingerprint];

  stableHash = [(PLTransientInternalResource *)self stableHash];
  [(PLValidatedExternalCloudResource *)v5 setStableHash:stableHash];

  return v5;
}

- (void)updateResourceWithExternalCPLResource:(id)resource
{
  resourceCopy = resource;
  -[PLTransientInternalResource setResourceType:](self, "setResourceType:", [resourceCopy resourceType]);
  -[PLTransientInternalResource setVersion:](self, "setVersion:", [resourceCopy version]);
  -[PLTransientInternalResource setRecipeID:](self, "setRecipeID:", [resourceCopy recipeID]);
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];

  if (uniformTypeIdentifier)
  {
    uniformTypeIdentifier2 = [resourceCopy uniformTypeIdentifier];
    [(PLTransientInternalResource *)self setUniformTypeIdentifier:uniformTypeIdentifier2];
  }

  -[PLTransientInternalResource setUnorientedWidth:](self, "setUnorientedWidth:", [resourceCopy unorientedWidth]);
  -[PLTransientInternalResource setUnorientedHeight:](self, "setUnorientedHeight:", [resourceCopy unorientedHeight]);
  -[PLTransientInternalResource setDataLength:](self, "setDataLength:", [resourceCopy dataLength]);
  codecFourCharCode = [resourceCopy codecFourCharCode];

  if (codecFourCharCode)
  {
    codecFourCharCode2 = [resourceCopy codecFourCharCode];
    [(PLTransientInternalResource *)self setCodecFourCharCodeName:codecFourCharCode2];
  }

  -[PLTransientInternalResource setRemoteAvailability:](self, "setRemoteAvailability:", [resourceCopy remoteAvailability]);
  -[PLTransientInternalResource setCplType:](self, "setCplType:", [resourceCopy cplType]);
  fingerprint = [resourceCopy fingerprint];

  if (fingerprint)
  {
    fingerprint2 = [resourceCopy fingerprint];
    [(PLTransientInternalResource *)self setFingerprint:fingerprint2];

    stableHash = [resourceCopy stableHash];
    [(PLTransientInternalResource *)self setStableHash:stableHash];
  }
}

- (void)setUniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniformTypeIdentifier = [(PLTransientInternalResource *)self uniformTypeIdentifier];
  v5 = [uniformTypeIdentifier isEqualToUniformTypeIdentifier:identifierCopy];

  if ((v5 & 1) == 0)
  {
    if (identifierCopy)
    {
      identifier = [identifierCopy identifier];
      [(PLTransientInternalResource *)self setUti:identifier];
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
  selfCopy = self;
  if ([(PLTransientInternalResource *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLTransientInternalResource *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (void)setCplType:(unint64_t)type
{
  [(PLTransientInternalResource *)self willChangeValueForKey:@"cplType"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [(PLTransientInternalResource *)self setPrimitiveValue:v5 forKey:@"cplType"];

  [(PLTransientInternalResource *)self didChangeValueForKey:@"cplType"];
}

- (unint64_t)cplType
{
  [(PLTransientInternalResource *)self willAccessValueForKey:@"cplType"];
  v3 = [(PLTransientInternalResource *)self primitiveValueForKey:@"cplType"];
  [(PLTransientInternalResource *)self didAccessValueForKey:@"cplType"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end