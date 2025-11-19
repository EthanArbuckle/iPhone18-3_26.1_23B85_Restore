@interface PLCPLFacePushSupport
+ (BOOL)_shouldPushBeingKeyFace:(id)a3;
+ (BOOL)isFaceSyncable:(id)a3;
+ (void)applyFaceChangesFromAsset:(id)a3 toAssetChange:(id)a4 inPhotoLibrary:(id)a5;
+ (void)markSyncableFacesAsPushedInAsset:(id)a3;
- (BOOL)_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:(id)a3;
- (PLCPLFacePushSupport)initWithSyncContext:(id)a3;
- (id)_facesAdjustmentsFingerprintFromAsset:(id)a3 assetChange:(id)a4;
- (id)cplFaceAnalysisRefFromAsset:(id)a3 algorithmVersion:(int64_t *)a4;
- (id)cplFaceRefFromFace:(id)a3;
- (id)cplFaceRefsFromFaces:(id)a3 algorithmVersion:(int64_t *)a4;
- (id)rejectedPersonIdentifiersForFace:(id)a3;
- (void)applyFaceChangesFromAsset:(id)a3 toAssetChange:(id)a4;
@end

@implementation PLCPLFacePushSupport

+ (void)applyFaceChangesFromAsset:(id)a3 toAssetChange:(id)a4 inPhotoLibrary:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PLLibrarySyncContext alloc] initWithPhotoLibrary:v8];
  v11 = [[PLCPLFacePushSupport alloc] initWithSyncContext:v10];
  [(PLCPLFacePushSupport *)v11 applyFaceChangesFromAsset:v12 toAssetChange:v7];

  objc_autoreleasePoolPop(v9);
}

- (id)rejectedPersonIdentifiersForFace:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = v3;
  v5 = [v3 rejectedPersons];
  v6 = [v5 allObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
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
        v14 = [v13 personUUID];
        if (v14)
        {
          [v4 addObject:v14];
        }

        else if ((*v11 & 1) == 0)
        {
          v15 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v13 pl_shortDescription];
            *buf = 138412290;
            v24 = v16;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unexpected person with nil personUUID: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [v4 sortUsingComparator:&__block_literal_global_78903];

  return v4;
}

- (id)cplFaceRefFromFace:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6994AD0]);
  [v4 centerX];
  [v5 setCenterX:?];
  [v4 centerY];
  [v5 setCenterY:?];
  [v4 size];
  [v5 setSize:?];
  [v4 bodyCenterX];
  [v5 setBodyCenterX:?];
  [v4 bodyCenterY];
  [v5 setBodyCenterY:?];
  [v4 bodyWidth];
  [v5 setBodyWidth:?];
  [v4 bodyHeight];
  [v5 setBodyHeight:?];
  [v5 setManual:{objc_msgSend(v4, "manual")}];
  [v5 setKeyFace:{objc_msgSend(objc_opt_class(), "_shouldPushBeingKeyFace:", v4)}];
  [v5 setNameSource:{objc_msgSend(v4, "cloudNameSource")}];
  if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
  {
    [v5 setDetectionType:{objc_msgSend(v4, "detectionType")}];
  }

  v6 = [v4 personForFace];
  if ([v6 graphVerified] & 1) != 0 || (objc_msgSend(v6, "userVerified"))
  {
    v7 = [v6 personUUID];
    [v5 setPersonIdentifier:v7];
  }

  else
  {
    [v5 setPersonIdentifier:0];
  }

  v8 = [(PLCPLFacePushSupport *)self rejectedPersonIdentifiersForFace:v4];
  [v5 setRejectedPersonIdentifiers:v8];

  return v5;
}

- (id)cplFaceRefsFromFaces:(id)a3 algorithmVersion:(int64_t *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
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
        if (!v11)
        {
          v11 = [*(*(&v17 + 1) + 8 * i) faceAlgorithmVersion];
        }

        if ([objc_opt_class() isFaceSyncable:v14])
        {
          v15 = [(PLCPLFacePushSupport *)self cplFaceRefFromFace:v14];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return v7;
}

- (id)_facesAdjustmentsFingerprintFromAsset:(id)a3 assetChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PLCPLFacePushSupport _faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:](self, "_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:", v6) && [v6 faceDetectionComplete])
  {
    if ([v6 hasAdjustments])
    {
      v8 = [v7 adjustments];
      v9 = [v8 otherAdjustmentsFingerprint];

      if (v9)
      {
        goto LABEL_7;
      }

      v10 = [v6 syncedAdjustmentFingerprint];
    }

    else
    {
      v10 = *MEMORY[0x1E6994948];
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)_faceAnalysisWasPerformedOnLatestAdjustmentOfAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 dateForComparingAdjustmentVersions];
  v5 = [v3 faceAdjustmentVersion];

  LOBYTE(v3) = [v4 isEqualToDate:v5];
  return v3;
}

- (id)cplFaceAnalysisRefFromAsset:(id)a3 algorithmVersion:(int64_t *)a4
{
  v6 = [a3 detectedFaces];
  v7 = [v6 allObjects];

  v8 = [(PLCPLFacePushSupport *)self cplFaceRefsFromFaces:v7 algorithmVersion:a4];
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

- (void)applyFaceChangesFromAsset:(id)a3 toAssetChange:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PLSyncContext *)self->_syncContext serverSupportsVision])
  {
    v14 = 0;
    v8 = [(PLCPLFacePushSupport *)self cplFaceAnalysisRefFromAsset:v6 algorithmVersion:&v14];
    [v7 setFaces:v8];
    v9 = [v8 faces];
    v10 = [v9 count];

    if (v10)
    {
      [v7 setFacesVersion:v14];
      v11 = [(PLCPLFacePushSupport *)self _facesAdjustmentsFingerprintFromAsset:v6 assetChange:v7];
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v6 syncDescription];
          *buf = 138412546;
          v16 = v11;
          v17 = 2112;
          v18 = v13;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Pushing faces adjustment fingerprint (%@) for asset: %@", buf, 0x16u);
        }
      }

      [v7 setFacesAdjustmentsFingerprint:v11];
    }
  }
}

- (PLCPLFacePushSupport)initWithSyncContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLCPLFacePushSupport;
  v6 = [(PLCPLFacePushSupport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncContext, a3);
    v8 = v7;
  }

  return v7;
}

+ (void)markSyncableFacesAsPushedInAsset:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 detectedFaces];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (+[PLCPLFacePushSupport isFaceSyncable:](PLCPLFacePushSupport, "isFaceSyncable:", v8) && [v8 cloudLocalState] != 1)
        {
          [v8 setCloudLocalState:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (BOOL)_shouldPushBeingKeyFace:(id)a3
{
  v3 = a3;
  v4 = [v3 personForFace];
  v5 = [v4 personUUID];

  v6 = [v3 personBeingKeyFace];
  v7 = [v6 personUUID];

  if (v5 && [v5 isEqualToString:v7])
  {
    v8 = [v3 personBeingKeyFace];
    v9 = [v8 keyFaceIsPicked];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isFaceSyncable:(id)a3
{
  v3 = a3;
  v4 = +[PLDetectedFace syncableFacesPredicate];
  v5 = [v4 evaluateWithObject:v3];

  return v5;
}

@end