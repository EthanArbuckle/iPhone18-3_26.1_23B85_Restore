@interface PLCPLFacePushSupport
+ (BOOL)_shouldPushBeingKeyFace:(id)face;
+ (BOOL)isFaceSyncable:(id)syncable;
+ (void)applyFaceChangesFromAsset:(id)asset toAssetChange:(id)change inPhotoLibrary:(id)library;
+ (void)markSyncableFacesAsPushedInAsset:(id)asset;
- (BOOL)_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:(id)asset;
- (PLCPLFacePushSupport)initWithSyncContext:(id)context;
- (id)_facesAdjustmentsFingerprintFromAsset:(id)asset assetChange:(id)change;
- (id)cplFaceAnalysisRefFromAsset:(id)asset algorithmVersion:(int64_t *)version;
- (id)cplFaceRefFromFace:(id)face;
- (id)cplFaceRefsFromFaces:(id)faces algorithmVersion:(int64_t *)version;
- (id)rejectedPersonIdentifiersForFace:(id)face;
- (void)applyFaceChangesFromAsset:(id)asset toAssetChange:(id)change;
@end

@implementation PLCPLFacePushSupport

+ (void)applyFaceChangesFromAsset:(id)asset toAssetChange:(id)change inPhotoLibrary:(id)library
{
  assetCopy = asset;
  changeCopy = change;
  libraryCopy = library;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PLLibrarySyncContext alloc] initWithPhotoLibrary:libraryCopy];
  v11 = [[PLCPLFacePushSupport alloc] initWithSyncContext:v10];
  [(PLCPLFacePushSupport *)v11 applyFaceChangesFromAsset:assetCopy toAssetChange:changeCopy];

  objc_autoreleasePoolPop(v9);
}

- (id)rejectedPersonIdentifiersForFace:(id)face
{
  v26 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  array = [MEMORY[0x1E695DF70] array];
  v18 = faceCopy;
  rejectedPersons = [faceCopy rejectedPersons];
  allObjects = [rejectedPersons allObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = MEMORY[0x1E6994D48];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        personUUID = [v13 personUUID];
        if (personUUID)
        {
          [array addObject:personUUID];
        }

        else if ((*v11 & 1) == 0)
        {
          v15 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            pl_shortDescription = [v13 pl_shortDescription];
            *buf = 138412290;
            v24 = pl_shortDescription;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unexpected person with nil personUUID: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [array sortUsingComparator:&__block_literal_global_78903];

  return array;
}

- (id)cplFaceRefFromFace:(id)face
{
  faceCopy = face;
  v5 = objc_alloc_init(MEMORY[0x1E6994AD0]);
  [faceCopy centerX];
  [v5 setCenterX:?];
  [faceCopy centerY];
  [v5 setCenterY:?];
  [faceCopy size];
  [v5 setSize:?];
  [faceCopy bodyCenterX];
  [v5 setBodyCenterX:?];
  [faceCopy bodyCenterY];
  [v5 setBodyCenterY:?];
  [faceCopy bodyWidth];
  [v5 setBodyWidth:?];
  [faceCopy bodyHeight];
  [v5 setBodyHeight:?];
  [v5 setManual:{objc_msgSend(faceCopy, "manual")}];
  [v5 setKeyFace:{objc_msgSend(objc_opt_class(), "_shouldPushBeingKeyFace:", faceCopy)}];
  [v5 setNameSource:{objc_msgSend(faceCopy, "cloudNameSource")}];
  if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
  {
    [v5 setDetectionType:{objc_msgSend(faceCopy, "detectionType")}];
  }

  personForFace = [faceCopy personForFace];
  if ([personForFace graphVerified] & 1) != 0 || (objc_msgSend(personForFace, "userVerified"))
  {
    personUUID = [personForFace personUUID];
    [v5 setPersonIdentifier:personUUID];
  }

  else
  {
    [v5 setPersonIdentifier:0];
  }

  v8 = [(PLCPLFacePushSupport *)self rejectedPersonIdentifiersForFace:faceCopy];
  [v5 setRejectedPersonIdentifiers:v8];

  return v5;
}

- (id)cplFaceRefsFromFaces:(id)faces algorithmVersion:(int64_t *)version
{
  v22 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = facesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    faceAlgorithmVersion = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (!faceAlgorithmVersion)
        {
          faceAlgorithmVersion = [*(*(&v17 + 1) + 8 * i) faceAlgorithmVersion];
        }

        if ([objc_opt_class() isFaceSyncable:v14])
        {
          v15 = [(PLCPLFacePushSupport *)self cplFaceRefFromFace:v14];
          [array addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    faceAlgorithmVersion = 0;
  }

  if (version)
  {
    *version = faceAlgorithmVersion;
  }

  return array;
}

- (id)_facesAdjustmentsFingerprintFromAsset:(id)asset assetChange:(id)change
{
  assetCopy = asset;
  changeCopy = change;
  if (-[PLCPLFacePushSupport _faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:](self, "_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:", assetCopy) && [assetCopy faceDetectionComplete])
  {
    if ([assetCopy hasAdjustments])
    {
      adjustments = [changeCopy adjustments];
      otherAdjustmentsFingerprint = [adjustments otherAdjustmentsFingerprint];

      if (otherAdjustmentsFingerprint)
      {
        goto LABEL_7;
      }

      syncedAdjustmentFingerprint = [assetCopy syncedAdjustmentFingerprint];
    }

    else
    {
      syncedAdjustmentFingerprint = *MEMORY[0x1E6994948];
    }

    otherAdjustmentsFingerprint = syncedAdjustmentFingerprint;
  }

  else
  {
    otherAdjustmentsFingerprint = 0;
  }

LABEL_7:

  return otherAdjustmentsFingerprint;
}

- (BOOL)_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:(id)asset
{
  assetCopy = asset;
  dateForComparingAdjustmentVersions = [assetCopy dateForComparingAdjustmentVersions];
  faceAdjustmentVersion = [assetCopy faceAdjustmentVersion];

  LOBYTE(assetCopy) = [dateForComparingAdjustmentVersions isEqualToDate:faceAdjustmentVersion];
  return assetCopy;
}

- (id)cplFaceAnalysisRefFromAsset:(id)asset algorithmVersion:(int64_t *)version
{
  detectedFaces = [asset detectedFaces];
  allObjects = [detectedFaces allObjects];

  v8 = [(PLCPLFacePushSupport *)self cplFaceRefsFromFaces:allObjects algorithmVersion:version];
  v9 = objc_alloc_init(MEMORY[0x1E6994AC0]);
  if ([v8 count])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  [v9 setFaces:v10];

  return v9;
}

- (void)applyFaceChangesFromAsset:(id)asset toAssetChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  changeCopy = change;
  if ([(PLSyncContext *)self->_syncContext serverSupportsVision])
  {
    v14 = 0;
    v8 = [(PLCPLFacePushSupport *)self cplFaceAnalysisRefFromAsset:assetCopy algorithmVersion:&v14];
    [changeCopy setFaces:v8];
    faces = [v8 faces];
    v10 = [faces count];

    if (v10)
    {
      [changeCopy setFacesVersion:v14];
      v11 = [(PLCPLFacePushSupport *)self _facesAdjustmentsFingerprintFromAsset:assetCopy assetChange:changeCopy];
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          syncDescription = [assetCopy syncDescription];
          *buf = 138412546;
          v16 = v11;
          v17 = 2112;
          v18 = syncDescription;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Pushing faces adjustment fingerprint (%@) for asset: %@", buf, 0x16u);
        }
      }

      [changeCopy setFacesAdjustmentsFingerprint:v11];
    }
  }
}

- (PLCPLFacePushSupport)initWithSyncContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PLCPLFacePushSupport;
  v6 = [(PLCPLFacePushSupport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncContext, context);
    v8 = v7;
  }

  return v7;
}

+ (void)markSyncableFacesAsPushedInAsset:(id)asset
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  detectedFaces = [asset detectedFaces];
  v4 = [detectedFaces countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(detectedFaces);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (+[PLCPLFacePushSupport isFaceSyncable:](PLCPLFacePushSupport, "isFaceSyncable:", v8) && [v8 cloudLocalState] != 1)
        {
          [v8 setCloudLocalState:1];
        }
      }

      v5 = [detectedFaces countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (BOOL)_shouldPushBeingKeyFace:(id)face
{
  faceCopy = face;
  personForFace = [faceCopy personForFace];
  personUUID = [personForFace personUUID];

  personBeingKeyFace = [faceCopy personBeingKeyFace];
  personUUID2 = [personBeingKeyFace personUUID];

  if (personUUID && [personUUID isEqualToString:personUUID2])
  {
    personBeingKeyFace2 = [faceCopy personBeingKeyFace];
    keyFaceIsPicked = [personBeingKeyFace2 keyFaceIsPicked];
  }

  else
  {
    keyFaceIsPicked = 0;
  }

  return keyFaceIsPicked;
}

+ (BOOL)isFaceSyncable:(id)syncable
{
  syncableCopy = syncable;
  v4 = +[PLDetectedFace syncableFacesPredicate];
  v5 = [v4 evaluateWithObject:syncableCopy];

  return v5;
}

@end