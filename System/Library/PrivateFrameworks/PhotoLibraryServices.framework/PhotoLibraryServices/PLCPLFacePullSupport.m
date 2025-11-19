@interface PLCPLFacePullSupport
+ (id)_disjointSetsByAddingSet:(id)a3 toSets:(id)a4;
+ (void)applyFacesChangesFromAssetChange:(id)a3 toAsset:(id)a4 inSyncContext:(id)a5;
- (BOOL)_canAssignFaceFromPerson:(id)a3 toPerson:(id)a4;
- (PLCPLFacePullSupport)initWithSyncContext:(id)a3 asset:(id)a4;
- (id)_applyAssetChange:(id)a3 toExistingFaces:(id)a4 withPolicy:(int64_t)a5;
- (id)_createFaceFromFaceRef:(id)a3 algorithmVersion:(int)a4;
- (int64_t)_policyForApplyingFaceChangesFromAssetChange:(id)a3;
- (void)_applyDimensionAndStateFromFaceReference:(id)a3 toDetectedFace:(id)a4;
- (void)_applyPersonFromFaceReference:(id)a3 toDetectedFace:(id)a4;
- (void)_finalizeFace:(id)a3 withFaceRef:(id)a4 applyDimensionAndState:(BOOL)a5;
- (void)_unlinkPersonIfVerifiedFromFace:(id)a3;
- (void)applyFacesChangesFromAssetChange:(id)a3;
- (void)dealloc;
@end

@implementation PLCPLFacePullSupport

+ (void)applyFacesChangesFromAssetChange:(id)a3 toAsset:(id)a4 inSyncContext:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PLCPLFacePullSupport alloc] initWithSyncContext:v8 asset:v7];
  [(PLCPLFacePullSupport *)v10 applyFacesChangesFromAssetChange:v11];

  objc_autoreleasePoolPop(v9);
}

- (void)_applyPersonFromFaceReference:(id)a3 toDetectedFace:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v48 = v6;
  v8 = [v6 personIdentifier];
  v45 = v8;
  v47 = v7;
  if (v8)
  {
    v9 = [(PLSyncContext *)self->_syncContext personForUUID:v8, v8];
    v10 = self;
    if (v9)
    {
      v11 = [v7 personForFace];
      if ([(PLCPLFacePullSupport *)self _canAssignFaceFromPerson:v11 toPerson:v9])
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v12 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v48 pointerDescription];
            v14 = [v9 syncDescription];
            *buf = 138412546;
            v55 = v13;
            v56 = 2112;
            v57 = v14;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Applying faceRef %@ for %@", buf, 0x16u);
          }
        }

        v15 = [v48 nameSource];
        [v7 setCloudNameSource:v15];
        if (v15 >= 7)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v16 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v48 pointerDescription];
              *buf = 138412546;
              v55 = v17;
              v56 = 1024;
              LODWORD(v57) = v15;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%@ has unsupported name source %d, defaulting to not-set", buf, 0x12u);
            }
          }

          v15 = 0;
        }

        [v7 setNameSource:v15];
        if ([v48 isKeyFace])
        {
          if (PLNameSourceIsSyncable([v7 nameSource]))
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v18 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v7 pointerDescription];
                v20 = [v9 pointerDescription];
                *buf = 138412546;
                v55 = v19;
                v56 = 2112;
                v57 = v20;
                _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Setting keyFace %@ to person %@", buf, 0x16u);
              }
            }

            [v7 setPersonBeingKeyFace:v9];
            [v9 setKeyFaceToPicked];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v27 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = v48;
              _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Key faceRef %@ has invalid nameSource, keeping face, but dropping being key", buf, 0xCu);
            }
          }
        }

        [v7 setAssociatedPerson:v9];
        if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
        {
          v28 = [v48 detectionType];
          if (!v28)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v29 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v55 = v48;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "FaceRef record has unknown detectionType, defaulting to Human detectionType %@", buf, 0xCu);
              }
            }

            v28 = 1;
          }

          [v7 setDetectionType:v28];
        }
      }

      else if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v24 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v48 pointerDescription];
          v26 = [v9 syncDescription];
          *buf = 138412546;
          v55 = v25;
          v56 = 2112;
          v57 = v26;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Unable to assign faceRef %@ to person %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v23 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v48;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to find person for faceRef %@", buf, 0xCu);
        }
      }

      [(PLCPLFacePullSupport *)self _unlinkPersonIfVerifiedFromFace:v7];
    }
  }

  else
  {
    v10 = self;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v21 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v48 pointerDescription];
        *buf = 138412290;
        v55 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "faceRef %@ has no person", buf, 0xCu);
      }
    }

    [(PLCPLFacePullSupport *)v10 _unlinkPersonIfVerifiedFromFace:v7, v45];
  }

  v30 = MEMORY[0x1E6994D48];
  v31 = [v48 rejectedPersonIdentifiers];
  v32 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v31, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v49 + 1) + 8 * i);
        v39 = [(PLSyncContext *)v10->_syncContext personForUUID:v38];
        if (v39)
        {
          if ((*v30 & 1) == 0)
          {
            v40 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v39 syncDescription];
              [v48 pointerDescription];
              v43 = v42 = v10;
              *buf = 138412546;
              v55 = v41;
              v56 = 2112;
              v57 = v43;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Adding rejectedPerson %@ for faceRef %@", buf, 0x16u);

              v10 = v42;
              v30 = MEMORY[0x1E6994D48];
            }
          }

          [v32 addObject:v39];
        }

        else if ((*v30 & 1) == 0)
        {
          v44 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v55 = v38;
            v56 = 2112;
            v57 = v48;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Unable to find rejected person with UUID %@ for %@", buf, 0x16u);
          }
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v35);
  }

  [v47 setRejectedPersons:v32];
}

- (BOOL)_canAssignFaceFromPerson:(id)a3 toPerson:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 personUUID];
  v9 = [v7 personUUID];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if ([v7 graphVerified])
    {
      syncContext = self->_syncContext;
      v12 = [v6 personUUID];
      LOBYTE(syncContext) = [(PLSyncContext *)syncContext personUUIDIsDeleted:v12];

      if ((syncContext & 1) == 0)
      {
        if ([v6 userVerified])
        {
          LOBYTE(v13) = 0;
          goto LABEL_5;
        }

        if ([v6 graphVerified])
        {
          v13 = ![PLPerson person:v6 isBetterMergeTargetThanPerson:v7];
          goto LABEL_5;
        }
      }
    }
  }

  LOBYTE(v13) = 1;
LABEL_5:

  return v13;
}

- (void)_unlinkPersonIfVerifiedFromFace:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 personForFace];
  v5 = v4;
  if (v4 && (([v4 userVerified] & 1) != 0 || objc_msgSend(v5, "graphVerified")))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 pointerDescription];
        v8 = [v3 personForFace];
        v9 = [v8 syncDescription];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Unlinking face %@ from person %@", &v10, 0x16u);
      }
    }

    [v3 setPersonBeingKeyFace:0];
    [v3 setAssociatedPerson:0];
  }
}

- (void)_applyDimensionAndStateFromFaceReference:(id)a3 toDetectedFace:(id)a4
{
  v8 = a4;
  v5 = a3;
  [v5 centerX];
  [v8 setCenterX:?];
  [v5 centerY];
  [v8 setCenterY:?];
  [v5 size];
  [v8 setSize:?];
  [v8 setManual:{objc_msgSend(v5, "isManual")}];
  [v5 bodyCenterX];
  [v8 setBodyCenterX:?];
  [v5 bodyCenterY];
  [v8 setBodyCenterY:?];
  [v5 bodyWidth];
  [v8 setBodyWidth:?];
  [v5 bodyHeight];
  v7 = v6;

  [v8 setBodyHeight:v7];
}

- (void)_finalizeFace:(id)a3 withFaceRef:(id)a4 applyDimensionAndState:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v8 = a4;
  if (v5)
  {
    [(PLCPLFacePullSupport *)self _applyDimensionAndStateFromFaceReference:v8 toDetectedFace:v9];
  }

  [(PLCPLFacePullSupport *)self _applyPersonFromFaceReference:v8 toDetectedFace:v9];
  [v9 setCloudLocalState:1];
  [v9 setSourceWidth:{-[PLSyncableAsset width](self->_currentAsset, "width")}];
  [v9 setSourceHeight:{-[PLSyncableAsset height](self->_currentAsset, "height")}];
}

- (id)_createFaceFromFaceRef:(id)a3 algorithmVersion:(int)a4
{
  v4 = *&a4;
  syncContext = self->_syncContext;
  v7 = a3;
  v8 = [(PLSyncContext *)syncContext makeFace];
  [(PLCPLFacePullSupport *)self _finalizeFace:v8 withFaceRef:v7 applyDimensionAndState:1];

  [v8 setFaceAlgorithmVersion:v4];

  return v8;
}

- (id)_applyAssetChange:(id)a3 toExistingFaces:(id)a4 withPolicy:(int64_t)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v70 = a4;
  [MEMORY[0x1E695DFA8] set];
  v68 = v67 = a5;
  if (!a5)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"manual == NO"];
    v10 = [v70 filteredSetUsingPredicate:v9];

    [v68 unionSet:v10];
  }

  v66 = v8;
  v11 = [v8 faces];
  v12 = [v11 faces];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v72;
    do
    {
      v16 = 0;
      do
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v71 + 1) + 8 * v16);
        v18 = [PLFaceDimension alloc];
        v19 = [(PLSyncableAsset *)self->_currentAsset width];
        v20 = [(PLSyncableAsset *)self->_currentAsset height];
        [v17 centerX];
        v22 = v21;
        [v17 centerY];
        v24 = v23;
        [v17 size];
        v26 = v25;
        [v17 bodyCenterX];
        v28 = v27;
        [v17 bodyCenterY];
        v30 = v29;
        [v17 bodyWidth];
        v32 = v31;
        [v17 bodyHeight];
        v34 = [(PLFaceDimension *)v18 initWithSourceWidth:v19 sourceHeight:v20 centerX:v22 centerY:v24 size:v26 bodyCenterX:v28 bodyCenterY:v30 bodyWidth:v32 bodyHeight:v33];
        if ([v17 isManual])
        {
          v35 = [PLDetectedFace findExistingFaceMatchingDimension:v34 inFaces:v70 ignoreSourceAssetDimensions:1];
          if (v35)
          {
            v36 = v35;
            if ([v35 manual])
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v37 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v36 syncDescription];
                  *buf = 138412546;
                  v76 = v38;
                  v77 = 2112;
                  v78 = v17;
                  _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Updating manual face %@ with %@", buf, 0x16u);
                }
              }

              v39 = self;
              v40 = v36;
              v41 = v17;
              v42 = 1;
            }

            else
            {
              if (v67)
              {
                if (v67 == 1)
                {
                  v48 = [(PLCPLFacePullSupport *)self _createFaceFromFaceRef:v17 algorithmVersion:0];
                  if ((*MEMORY[0x1E6994D48] & 1) == 0)
                  {
                    v52 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      v53 = [v48 syncDescription];
                      *buf = 138412546;
                      v76 = v53;
                      v77 = 2112;
                      v78 = v17;
                      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Made a new manual face %@ with %@", buf, 0x16u);
                    }
                  }

                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v54 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = [v36 syncDescription];
                  *buf = 138412546;
                  v76 = v55;
                  v77 = 2112;
                  v78 = v17;
                  _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Found existing face %@ matching %@", buf, 0x16u);
                }
              }

              v39 = self;
              v40 = v36;
              v41 = v17;
              v42 = 0;
            }

            [(PLCPLFacePullSupport *)v39 _finalizeFace:v40 withFaceRef:v41 applyDimensionAndState:v42];
            v56 = v36;
            goto LABEL_48;
          }

          v48 = [(PLCPLFacePullSupport *)self _createFaceFromFaceRef:v17 algorithmVersion:0];
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v50 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = [v48 syncDescription];
              *buf = 138412546;
              v76 = v51;
              v77 = 2112;
              v78 = v17;
              _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "Made a new manual face %@ with %@", buf, 0x16u);
            }
          }

LABEL_35:
          v36 = 0;
          goto LABEL_62;
        }

        v43 = v17;
        if ([v43 hasCenterX])
        {
          [v43 centerX];
          v45 = v44 != 0.0;
        }

        else
        {
          v45 = 0;
        }

        v46 = [v43 isTorsoOnly];
        if (([v43 hasNameSource] & 1) == 0)
        {

LABEL_28:
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_66;
          }

          v48 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v76 = v43;
            _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Dropping unexpected faceRef %@", buf, 0xCu);
          }

          goto LABEL_65;
        }

        IsSyncable = PLNameSourceIsSyncable([v43 nameSource]);

        if (((v45 | v46) & 1) == 0 || !IsSyncable)
        {
          goto LABEL_28;
        }

        if (!v67)
        {
          v57 = [PLDetectedFace findExistingFaceMatchingDimension:v34 inFaces:v70 ignoreSourceAssetDimensions:1];
          if (v57)
          {
            v58 = v57;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v59 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = [v58 syncDescription];
                *buf = 138412546;
                v76 = v60;
                v77 = 2112;
                v78 = v43;
                _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "Found existing face %@ matching %@", buf, 0x16u);
              }
            }

            [(PLCPLFacePullSupport *)self _finalizeFace:v58 withFaceRef:v43 applyDimensionAndState:0];
            v56 = v58;
LABEL_48:
            v36 = v56;
            v48 = v56;
            goto LABEL_62;
          }

          if ([(PLSyncableAsset *)self->_currentAsset faceDetectionComplete])
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v61 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v76 = v43;
                _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "Face detection complete and a matching face for downloaded face is not found, dropping the face %@", buf, 0xCu);
              }
            }

            v36 = 0;
LABEL_61:
            v48 = 0;
            goto LABEL_62;
          }

          v48 = -[PLCPLFacePullSupport _createFaceFromFaceRef:algorithmVersion:](self, "_createFaceFromFaceRef:algorithmVersion:", v43, [v66 facesVersion]);
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v62 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v48 syncDescription];
              *buf = 138412546;
              v76 = v63;
              v77 = 2112;
              v78 = v43;
              _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Made a new detected face %@ with %@", buf, 0x16u);
            }
          }

          goto LABEL_35;
        }

        if (v67 != 1)
        {
          goto LABEL_66;
        }

        v48 = -[PLCPLFacePullSupport _createFaceFromFaceRef:algorithmVersion:](self, "_createFaceFromFaceRef:algorithmVersion:", v43, [v66 facesVersion]);
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_63;
        }

        v36 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v48 syncDescription];
          *buf = 138412546;
          v76 = v49;
          v77 = 2112;
          v78 = v43;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Made a new detected face %@ with %@", buf, 0x16u);
        }

LABEL_62:

LABEL_63:
        if (!v48)
        {
          goto LABEL_66;
        }

        [v68 addObject:v48];
LABEL_65:

LABEL_66:
        ++v16;
      }

      while (v14 != v16);
      v64 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
      v14 = v64;
    }

    while (v64);
  }

  return v68;
}

- (int64_t)_policyForApplyingFaceChangesFromAssetChange:(id)a3
{
  v4 = [a3 facesAdjustmentsFingerprint];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEqualToString:*MEMORY[0x1E6994948]];
    syncContext = self->_syncContext;
    v8 = [(PLSyncableAsset *)self->_currentAsset cloudIdentifier];
    v9 = [(PLSyncContext *)syncContext assetAdjustmentStateForCloudIdentifier:v8];

    v10 = [v9 objectForKey:@"PLCPLAssetHasAdjustmentsKey"];
    v11 = [v10 BOOLValue];

    v12 = [v9 objectForKey:@"PLCPLAssetAdjustmentFingerprintKey"];
    if (v6)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v13 && (v6 == v11 || ([v5 isEqualToString:v12] & 1) == 0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)applyFacesChangesFromAssetChange:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLSyncContext *)self->_syncContext serverSupportsVision])
  {
    v5 = [(PLCPLFacePullSupport *)self _policyForApplyingFaceChangesFromAssetChange:v4];
    v6 = [(PLSyncableAsset *)self->_currentAsset detectedFaces];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTrainingFace == YES"];
    v8 = [v6 filteredSetUsingPredicate:v7];

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTrainingFace == NO"];
    v30 = v6;
    v10 = [v6 filteredSetUsingPredicate:v9];

    v11 = [v4 faces];
    v12 = [v11 faces];
    v13 = [v12 count];

    v14 = [v10 count];
    v15 = v14;
    v16 = MEMORY[0x1E6994D48];
    if ((v13 || v14 && v5 == 1) && (*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v17 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"KeepLocal-MergeCloud";
        if (v5 == 1)
        {
          v18 = @"DropLocal-KeepCloud";
        }

        v19 = v18;
        *buf = 138413058;
        v32 = v19;
        v33 = 2048;
        v34 = v13;
        v35 = 2048;
        v36 = v15;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Applying face changes with policy %@ on %lu cloud faces, %lu local faces for asset change %@", buf, 0x2Au);

        v16 = MEMORY[0x1E6994D48];
      }
    }

    v20 = [MEMORY[0x1E695DFA8] set];
    [v20 unionSet:v8];
    v21 = [(PLCPLFacePullSupport *)self _applyAssetChange:v4 toExistingFaces:v10 withPolicy:v5];
    [v20 unionSet:v21];
    if ([v21 count] && (*v16 & 1) == 0)
    {
      v22 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v21 count];
        *buf = 134217984;
        v32 = v23;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Keeping %ld faces after sync", buf, 0xCu);
      }
    }

    v24 = v8;
    v25 = v16;
    v26 = [(PLSyncableAsset *)self->_currentAsset detectedFaces];
    v27 = [v26 mutableCopy];

    [v27 minusSet:v20];
    if ([v27 count])
    {
      if ((*v25 & 1) == 0)
      {
        v28 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v27 count];
          *buf = 134217984;
          v32 = v29;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Deleting %lu faces", buf, 0xCu);
        }
      }

      [(PLSyncContext *)self->_syncContext deleteFaces:v27];
    }

    [(PLSyncableAsset *)self->_currentAsset setDetectedFaces:v20];
    if (v5 == 1 && [(PLSyncableAsset *)self->_currentAsset faceDetectionComplete])
    {
      [(PLSyncableAsset *)self->_currentAsset markForNeedingFaceDetection];
    }
  }
}

- (void)dealloc
{
  syncContext = self->_syncContext;
  self->_syncContext = 0;

  currentAsset = self->_currentAsset;
  self->_currentAsset = 0;

  v5.receiver = self;
  v5.super_class = PLCPLFacePullSupport;
  [(PLCPLFacePullSupport *)&v5 dealloc];
}

- (PLCPLFacePullSupport)initWithSyncContext:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLCPLFacePullSupport;
  v9 = [(PLCPLFacePullSupport *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncContext, a3);
    objc_storeStrong(&v10->_currentAsset, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)_disjointSetsByAddingSet:(id)a3 toSets:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E695DFA8] setWithSet:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v8 intersectsSet:{v14, v16}])
        {
          [v8 unionSet:v14];
        }

        else
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v7 addObject:v8];

  return v7;
}

@end