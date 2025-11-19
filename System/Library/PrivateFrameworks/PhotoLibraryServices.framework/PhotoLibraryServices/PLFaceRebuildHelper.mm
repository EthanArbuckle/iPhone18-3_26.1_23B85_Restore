@interface PLFaceRebuildHelper
- (PLFaceRebuildHelper)initWithContext:(id)a3;
- (id)findExistingDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4;
- (id)findOrInsertDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4;
- (id)insertDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4;
- (void)rebuildDetectedFace:(id)a3 onAsset:(id)a4 person:(id)a5;
- (void)rebuildHiddenFace:(id)a3 onAsset:(id)a4;
- (void)rebuildRejectedFace:(id)a3 onAsset:(id)a4 person:(id)a5;
@end

@implementation PLFaceRebuildHelper

- (id)findExistingDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 additionalDescription];
  v8 = [PLFaceDimension alloc];
  v9 = [v5 width];
  v10 = [v5 height];
  [v6 centerX];
  v12 = v11;
  [v6 centerY];
  v14 = v13;
  [v6 size];
  v16 = v15;

  [v7 bodyCenterX];
  v18 = v17;
  [v7 bodyCenterY];
  v20 = v19;
  [v7 bodyWidth];
  v22 = v21;
  [v7 bodyCenterY];
  v24 = [(PLFaceDimension *)v8 initWithSourceWidth:v9 sourceHeight:v10 centerX:v12 centerY:v14 size:v16 bodyCenterX:v18 bodyCenterY:v20 bodyWidth:v22 bodyHeight:v23];
  v25 = [v5 mutableDetectedFaces];

  v26 = [PLDetectedFace findExistingFaceMatchingDimension:v24 inFaces:v25 ignoreSourceAssetDimensions:1];

  return v26;
}

- (id)insertDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v17 = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Inserting new face", v17, 2u);
  }

  v9 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:self->_context];
  [v6 centerX];
  [v9 setCenterX:?];
  [v6 centerY];
  [v9 setCenterY:?];
  [v6 size];
  [v9 setSize:?];
  v10 = [v6 additionalDescription];
  v11 = v10;
  if (v10)
  {
    [v10 bodyCenterX];
    [v9 setBodyCenterX:?];
    [v11 bodyCenterY];
    [v9 setBodyCenterY:?];
    [v11 bodyWidth];
    [v9 setBodyWidth:?];
    [v11 bodyHeight];
    [v9 setBodyHeight:?];
    v12 = [v11 detectionType];

    if (v12)
    {
      v13 = [v11 detectionType];
      [v9 setDetectionType:{objc_msgSend(v13, "intValue")}];
    }

    if ([v11 faceAlgorithmVersion])
    {
      v14 = [v11 faceAlgorithmVersion];
    }

    else
    {
      v14 = 1;
    }

    [v9 setFaceAlgorithmVersion:v14];
  }

  [v9 setManual:{objc_msgSend(v6, "isManual")}];
  [v9 setHidden:{objc_msgSend(v6, "isHidden")}];
  [v9 setNameSource:{objc_msgSend(v6, "nameSource")}];
  [v9 setCloudNameSource:{objc_msgSend(v6, "cloudNameSource")}];
  [v9 setSourceWidth:{objc_msgSend(v7, "width")}];
  [v9 setSourceHeight:{objc_msgSend(v7, "height")}];
  v15 = [v7 mutableDetectedFaces];

  [v15 addObject:v9];

  return v9;
}

- (id)findOrInsertDetectedFaceForRebuildFace:(id)a3 onAsset:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PLFaceRebuildHelper *)self findExistingDetectedFaceForRebuildFace:v6 onAsset:v7];
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
    v9 = [(PLFaceRebuildHelper *)self insertDetectedFaceForRebuildFace:v6 onAsset:v7];
  }

  return v9;
}

- (void)rebuildHiddenFace:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Rebuilding hidden face", v10, 2u);
  }

  v9 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:v6 onAsset:v7];
}

- (void)rebuildRejectedFace:(id)a3 onAsset:(id)a4 person:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLMigrationGetLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Rebuilding rejected face", &v17, 2u);
    }

    v13 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:v8 onAsset:v9];
    v12 = v13;
    if (v13)
    {
      [v13 addRejectedPerson:v10];
      if ([v8 isClusterRejected])
      {
        [v12 addClusterRejectedPerson:v10];
        [v12 addRejectedPersonNeedingFaceCrops:v10];
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v9 uuid];
          v16 = [v10 pl_shortDescription];
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Face rebuild scheduling rejected face crop generation for asset %@ person %@", &v17, 0x16u);
        }
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Skipping rebuild of rejected face because person is nil: %@", &v17, 0xCu);
  }
}

- (void)rebuildDetectedFace:(id)a3 onAsset:(id)a4 person:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLMigrationGetLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Rebuilding detected face", &v17, 2u);
    }

    v13 = [(PLFaceRebuildHelper *)self findOrInsertDetectedFaceForRebuildFace:v8 onAsset:v9];
    v12 = v13;
    if (v13)
    {
      [v13 setAssociatedPerson:v10];
      if ([v8 isRepresentative])
      {
        [v10 setKeyFace:v12 pickSource:{objc_msgSend(v10, "keyFacePickSource")}];
      }

      if ((_PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]) & 1) == 0 && ([v8 nameSource] == 1 || objc_msgSend(v8, "nameSource") == 5))
      {
        [v12 setConfirmedFaceCropGenerationState:1];
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v9 uuid];
          v16 = [v10 pl_shortDescription];
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Face rebuild scheduling confirmed face crop generation for asset %@ person %@", &v17, 0x16u);
        }
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Skipping rebuild of detected face because person is nil: %@", &v17, 0xCu);
  }
}

- (PLFaceRebuildHelper)initWithContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLFaceRebuildHelper;
  v6 = [(PLFaceRebuildHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = v7;
  }

  return v7;
}

@end