@interface PLCPLFaceRebuildSupport
+ (void)rebuildDeferredFacesForAsset:(id)asset inManagedObjectContext:(id)context;
- (PLCPLFaceRebuildSupport)initWithAsset:(id)asset managedObjectContext:(id)context;
- (id)fetchDeferredFacesToRebuild;
- (id)fetchPersonForDeferredFace:(id)face;
- (void)rebuildAllFaces;
- (void)rebuildDetectedFace:(id)face;
- (void)rebuildFace:(id)face;
- (void)rebuildHiddenFace:(id)face;
- (void)rebuildRejectedFace:(id)face;
@end

@implementation PLCPLFaceRebuildSupport

- (id)fetchPersonForDeferredFace:(id)face
{
  personUUID = [face personUUID];
  v5 = [PLPerson personWithUUID:personUUID inManagedObjectContext:self->_context];

  return v5;
}

- (id)fetchDeferredFacesToRebuild
{
  cloudAssetGUID = [(PLManagedAsset *)self->_asset cloudAssetGUID];
  v4 = [PLDeferredRebuildFace deferredFacesWithAssetCloudGUID:cloudAssetGUID inManagedObjectContext:self->_context];

  return v4;
}

- (void)rebuildHiddenFace:(id)face
{
  [(PLFaceRebuildHelper *)self->_rebuildHelper rebuildHiddenFace:face onAsset:self->_asset];
  ++self->_hiddenFaceCount;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Rebuilt hidden face", v5, 2u);
    }
  }
}

- (void)rebuildRejectedFace:(id)face
{
  faceCopy = face;
  v5 = [(PLCPLFaceRebuildSupport *)self fetchPersonForDeferredFace:faceCopy];
  [(PLFaceRebuildHelper *)self->_rebuildHelper rebuildRejectedFace:faceCopy onAsset:self->_asset person:v5];

  ++self->_rejectedFaceCount;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Rebuilt rejected face", v7, 2u);
    }
  }
}

- (void)rebuildDetectedFace:(id)face
{
  faceCopy = face;
  v5 = [(PLCPLFaceRebuildSupport *)self fetchPersonForDeferredFace:faceCopy];
  [(PLFaceRebuildHelper *)self->_rebuildHelper rebuildDetectedFace:faceCopy onAsset:self->_asset person:v5];

  ++self->_detectedFaceCount;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Rebuilt detected face", v7, 2u);
    }
  }
}

- (void)rebuildFace:(id)face
{
  v13 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = faceCopy;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Rebuilding deferred face: %@", &v11, 0xCu);
    }
  }

  if (([faceCopy rejected] & 1) != 0 || (objc_msgSend(faceCopy, "personUUID"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    if ([faceCopy rejected] && (objc_msgSend(faceCopy, "personUUID"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      [(PLCPLFaceRebuildSupport *)self rebuildRejectedFace:faceCopy];
    }

    else if ([faceCopy isHidden] && (objc_msgSend(faceCopy, "personUUID"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      [(PLCPLFaceRebuildSupport *)self rebuildHiddenFace:faceCopy];
    }

    else if ((*v5 & 1) == 0)
    {
      v10 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = faceCopy;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unexpected deferred face state: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    [(PLCPLFaceRebuildSupport *)self rebuildDetectedFace:faceCopy];
  }
}

- (void)rebuildAllFaces
{
  v29 = *MEMORY[0x1E69E9840];
  fetchDeferredFacesToRebuild = [(PLCPLFaceRebuildSupport *)self fetchDeferredFacesToRebuild];
  if ([fetchDeferredFacesToRebuild count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = fetchDeferredFacesToRebuild;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          [(PLCPLFaceRebuildSupport *)self rebuildFace:v9, v16];
          [(NSManagedObjectContext *)self->_context deleteObject:v9];
          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v28 count:16];
      }

      while (v6);
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        detectedFaceCount = self->_detectedFaceCount;
        rejectedFaceCount = self->_rejectedFaceCount;
        hiddenFaceCount = self->_hiddenFaceCount;
        cloudAssetGUID = [(PLManagedAsset *)self->_asset cloudAssetGUID];
        *buf = 67109890;
        v21 = detectedFaceCount;
        v22 = 1024;
        v23 = rejectedFaceCount;
        v24 = 1024;
        v25 = hiddenFaceCount;
        v26 = 2112;
        v27 = cloudAssetGUID;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Rebuilt %d detected, %d rejected, %d hidden for asset: %@", buf, 0x1Eu);
      }
    }
  }
}

- (PLCPLFaceRebuildSupport)initWithAsset:(id)asset managedObjectContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PLCPLFaceRebuildSupport;
  v9 = [(PLCPLFaceRebuildSupport *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_context, context);
    v11 = [[PLFaceRebuildHelper alloc] initWithContext:v10->_context];
    rebuildHelper = v10->_rebuildHelper;
    v10->_rebuildHelper = v11;

    v13 = v10;
  }

  return v10;
}

+ (void)rebuildDeferredFacesForAsset:(id)asset inManagedObjectContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  v6 = objc_autoreleasePoolPush();
  v7 = [[PLCPLFaceRebuildSupport alloc] initWithAsset:assetCopy managedObjectContext:contextCopy];
  [(PLCPLFaceRebuildSupport *)v7 rebuildAllFaces];

  objc_autoreleasePoolPop(v6);
}

@end