@interface PLFaceRebuildHelper
- (PLFaceRebuildHelper)initWithContext:(id)context;
- (id)findExistingDetectedFaceForRebuildFace:(id)face onAsset:(id)asset;
- (id)findOrInsertDetectedFaceForRebuildFace:(id)face onAsset:(id)asset;
- (id)insertDetectedFaceForRebuildFace:(id)face onAsset:(id)asset;
- (void)rebuildDetectedFace:(id)face onAsset:(id)asset person:(id)person;
- (void)rebuildHiddenFace:(id)face onAsset:(id)asset;
- (void)rebuildRejectedFace:(id)face onAsset:(id)asset person:(id)person;
@end

@implementation PLFaceRebuildHelper

- (id)findExistingDetectedFaceForRebuildFace:(id)face onAsset:(id)asset
{
  assetCopy = asset;
  faceCopy = face;
  additionalDescription = [faceCopy additionalDescription];
  v8 = [PLFaceDimension alloc];
  width = [assetCopy width];
  height = [assetCopy height];
  [faceCopy centerX];
  v12 = v11;
  [faceCopy centerY];
  v14 = v13;
  [faceCopy size];
  v16 = v15;

  [additionalDescription bodyCenterX];
  v18 = v17;
  [additionalDescription bodyCenterY];
  v20 = v19;
  [additionalDescription bodyWidth];
  v22 = v21;
  [additionalDescription bodyCenterY];
  v24 = [(PLFaceDimension *)v8 initWithSourceWidth:width sourceHeight:height centerX:v12 centerY:v14 size:v16 bodyCenterX:v18 bodyCenterY:v20 bodyWidth:v22 bodyHeight:v23];
  mutableDetectedFaces = [assetCopy mutableDetectedFaces];

  v26 = [PLDetectedFace findExistingFaceMatchingDimension:v24 inFaces:mutableDetectedFaces ignoreSourceAssetDimensions:1];

  return v26;
}

- (id)insertDetectedFaceForRebuildFace:(id)face onAsset:(id)asset
{
  faceCopy = face;
  assetCopy = asset;
  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v17 = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Inserting new face", v17, 2u);
  }

  v9 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:self->_context];
  [faceCopy centerX];
  [v9 setCenterX:?];
  [faceCopy centerY];
  [v9 setCenterY:?];
  [faceCopy size];
  [v9 setSize:?];
  additionalDescription = [faceCopy additionalDescription];
  v11 = additionalDescription;
  if (additionalDescription)
  {
    [additionalDescription bodyCenterX];
    [v9 setBodyCenterX:?];
    [v11 bodyCenterY];
    [v9 setBodyCenterY:?];
    [v11 bodyWidth];
    [v9 setBodyWidth:?];
    [v11 bodyHeight];
    [v9 setBodyHeight:?];
    detectionType = [v11 detectionType];

    if (detectionType)
    {
      detectionType2 = [v11 detectionType];
      [v9 setDetectionType:{objc_msgSend(detectionType2, "intValue")}];
    }

    if ([v11 faceAlgorithmVersion])
    {
      faceAlgorithmVersion = [v11 faceAlgorithmVersion];
    }

    else
    {
      faceAlgorithmVersion = 1;
    }

    [v9 setFaceAlgorithmVersion:faceAlgorithmVersion];
  }

  [v9 setManual:{objc_msgSend(faceCopy, "isManual")}];
  [v9 setHidden:{objc_msgSend(faceCopy, "isHidden")}];
  [v9 setNameSource:{objc_msgSend(faceCopy, "nameSource")}];
  [v9 setCloudNameSource:{objc_msgSend(faceCopy, "cloudNameSource")}];
  [v9 setSourceWidth:{objc_msgSend(assetCopy, "width")}];
  [v9 setSourceHeight:{objc_msgSend(assetCopy, "height")}];
  mutableDetectedFaces = [assetCopy mutableDetectedFaces];

  [mutableDetectedFaces addObject:v9];

  return v9;
}

- (id)findOrInsertDetectedFaceForRebuildFace:(id)face onAsset:(id)asset
{
  v14 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  assetCopy = asset;
  v8 = [(PLFaceRebuildHelper *)self findExistingDetectedFaceForRebuildFace:faceCopy onAsset:assetCopy];
  if (v8)
  {
    v9 = v8;
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Found existing face: %@", &v12, 0xCu);
    }
  }

  else
  {
    v9 = [(PLFaceRebuildHelper *)self insertDetectedFaceForRebuildFace:faceCopy onAsset:assetCopy];
  }

  return v9;
}

- (void)rebuildHiddenFace:(id)face onAsset:(id)asset
{
  faceCopy = face;
  assetCopy = asset;
  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Rebuilding hidden face", v10, 2u);
  }

  v9 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:faceCopy onAsset:assetCopy];
}

- (void)rebuildRejectedFace:(id)face onAsset:(id)asset person:(id)person
{
  v21 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  assetCopy = asset;
  personCopy = person;
  v11 = PLMigrationGetLog();
  v12 = v11;
  if (personCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Rebuilding rejected face", &v17, 2u);
    }

    v13 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:faceCopy onAsset:assetCopy];
    v12 = v13;
    if (v13)
    {
      [v13 addRejectedPerson:personCopy];
      if ([faceCopy isClusterRejected])
      {
        [v12 addClusterRejectedPerson:personCopy];
        [v12 addRejectedPersonNeedingFaceCrops:personCopy];
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          uuid = [assetCopy uuid];
          pl_shortDescription = [personCopy pl_shortDescription];
          v17 = 138412546;
          v18 = uuid;
          v19 = 2112;
          v20 = pl_shortDescription;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Face rebuild scheduling rejected face crop generation for asset %@ person %@", &v17, 0x16u);
        }
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = faceCopy;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Skipping rebuild of rejected face because person is nil: %@", &v17, 0xCu);
  }
}

- (void)rebuildDetectedFace:(id)face onAsset:(id)asset person:(id)person
{
  v21 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  assetCopy = asset;
  personCopy = person;
  v11 = PLMigrationGetLog();
  v12 = v11;
  if (personCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Rebuilding detected face", &v17, 2u);
    }

    v13 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:faceCopy onAsset:assetCopy];
    v12 = v13;
    if (v13)
    {
      [v13 setAssociatedPerson:personCopy];
      if ([faceCopy isRepresentative])
      {
        [personCopy setKeyFace:v12 pickSource:{objc_msgSend(personCopy, "keyFacePickSource")}];
      }

      if ((_PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]) & 1) == 0 && ([faceCopy nameSource] == 1 || objc_msgSend(faceCopy, "nameSource") == 5))
      {
        [v12 setConfirmedFaceCropGenerationState:1];
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          uuid = [assetCopy uuid];
          pl_shortDescription = [personCopy pl_shortDescription];
          v17 = 138412546;
          v18 = uuid;
          v19 = 2112;
          v20 = pl_shortDescription;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Face rebuild scheduling confirmed face crop generation for asset %@ person %@", &v17, 0x16u);
        }
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = faceCopy;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Skipping rebuild of detected face because person is nil: %@", &v17, 0xCu);
  }
}

- (PLFaceRebuildHelper)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PLFaceRebuildHelper;
  v6 = [(PLFaceRebuildHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = v7;
  }

  return v7;
}

@end