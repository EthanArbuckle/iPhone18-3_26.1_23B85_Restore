@interface PLCPLFacePullSupport
+ (id)_disjointSetsByAddingSet:(id)set toSets:(id)sets;
+ (void)applyFacesChangesFromAssetChange:(id)change toAsset:(id)asset inSyncContext:(id)context;
- (BOOL)_canAssignFaceFromPerson:(id)person toPerson:(id)toPerson;
- (PLCPLFacePullSupport)initWithSyncContext:(id)context asset:(id)asset;
- (id)_applyAssetChange:(id)change toExistingFaces:(id)faces withPolicy:(int64_t)policy;
- (id)_createFaceFromFaceRef:(id)ref algorithmVersion:(int)version;
- (int64_t)_policyForApplyingFaceChangesFromAssetChange:(id)change;
- (void)_applyDimensionAndStateFromFaceReference:(id)reference toDetectedFace:(id)face;
- (void)_applyPersonFromFaceReference:(id)reference toDetectedFace:(id)face;
- (void)_finalizeFace:(id)face withFaceRef:(id)ref applyDimensionAndState:(BOOL)state;
- (void)_unlinkPersonIfVerifiedFromFace:(id)face;
- (void)applyFacesChangesFromAssetChange:(id)change;
- (void)dealloc;
@end

@implementation PLCPLFacePullSupport

+ (void)applyFacesChangesFromAssetChange:(id)change toAsset:(id)asset inSyncContext:(id)context
{
  changeCopy = change;
  assetCopy = asset;
  contextCopy = context;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PLCPLFacePullSupport alloc] initWithSyncContext:contextCopy asset:assetCopy];
  [(PLCPLFacePullSupport *)v10 applyFacesChangesFromAssetChange:changeCopy];

  objc_autoreleasePoolPop(v9);
}

- (void)_applyPersonFromFaceReference:(id)reference toDetectedFace:(id)face
{
  v58 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  faceCopy = face;
  v48 = referenceCopy;
  personIdentifier = [referenceCopy personIdentifier];
  v45 = personIdentifier;
  v47 = faceCopy;
  if (personIdentifier)
  {
    v9 = [(PLSyncContext *)self->_syncContext personForUUID:personIdentifier, personIdentifier];
    selfCopy2 = self;
    if (v9)
    {
      personForFace = [faceCopy personForFace];
      if ([(PLCPLFacePullSupport *)self _canAssignFaceFromPerson:personForFace toPerson:v9])
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v12 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            pointerDescription = [v48 pointerDescription];
            syncDescription = [v9 syncDescription];
            *buf = 138412546;
            v55 = pointerDescription;
            v56 = 2112;
            v57 = syncDescription;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Applying faceRef %@ for %@", buf, 0x16u);
          }
        }

        nameSource = [v48 nameSource];
        [faceCopy setCloudNameSource:nameSource];
        if (nameSource >= 7)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v16 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              pointerDescription2 = [v48 pointerDescription];
              *buf = 138412546;
              v55 = pointerDescription2;
              v56 = 1024;
              LODWORD(v57) = nameSource;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%@ has unsupported name source %d, defaulting to not-set", buf, 0x12u);
            }
          }

          nameSource = 0;
        }

        [faceCopy setNameSource:nameSource];
        if ([v48 isKeyFace])
        {
          if (PLNameSourceIsSyncable([faceCopy nameSource]))
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v18 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                pointerDescription3 = [faceCopy pointerDescription];
                pointerDescription4 = [v9 pointerDescription];
                *buf = 138412546;
                v55 = pointerDescription3;
                v56 = 2112;
                v57 = pointerDescription4;
                _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Setting keyFace %@ to person %@", buf, 0x16u);
              }
            }

            [faceCopy setPersonBeingKeyFace:v9];
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

        [faceCopy setAssociatedPerson:v9];
        if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
        {
          detectionType = [v48 detectionType];
          if (!detectionType)
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

            detectionType = 1;
          }

          [faceCopy setDetectionType:detectionType];
        }
      }

      else if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v24 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          pointerDescription5 = [v48 pointerDescription];
          syncDescription2 = [v9 syncDescription];
          *buf = 138412546;
          v55 = pointerDescription5;
          v56 = 2112;
          v57 = syncDescription2;
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

      [(PLCPLFacePullSupport *)self _unlinkPersonIfVerifiedFromFace:faceCopy];
    }
  }

  else
  {
    selfCopy2 = self;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v21 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        pointerDescription6 = [v48 pointerDescription];
        *buf = 138412290;
        v55 = pointerDescription6;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "faceRef %@ has no person", buf, 0xCu);
      }
    }

    [(PLCPLFacePullSupport *)selfCopy2 _unlinkPersonIfVerifiedFromFace:faceCopy, v45];
  }

  v30 = MEMORY[0x1E6994D48];
  rejectedPersonIdentifiers = [v48 rejectedPersonIdentifiers];
  v32 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(rejectedPersonIdentifiers, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = rejectedPersonIdentifiers;
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
        v39 = [(PLSyncContext *)selfCopy2->_syncContext personForUUID:v38];
        if (v39)
        {
          if ((*v30 & 1) == 0)
          {
            v40 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              syncDescription3 = [v39 syncDescription];
              [v48 pointerDescription];
              v43 = v42 = selfCopy2;
              *buf = 138412546;
              v55 = syncDescription3;
              v56 = 2112;
              v57 = v43;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Adding rejectedPerson %@ for faceRef %@", buf, 0x16u);

              selfCopy2 = v42;
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

- (BOOL)_canAssignFaceFromPerson:(id)person toPerson:(id)toPerson
{
  personCopy = person;
  toPersonCopy = toPerson;
  personUUID = [personCopy personUUID];
  personUUID2 = [toPersonCopy personUUID];
  v10 = [personUUID isEqualToString:personUUID2];

  if ((v10 & 1) == 0)
  {
    if ([toPersonCopy graphVerified])
    {
      syncContext = self->_syncContext;
      personUUID3 = [personCopy personUUID];
      LOBYTE(syncContext) = [(PLSyncContext *)syncContext personUUIDIsDeleted:personUUID3];

      if ((syncContext & 1) == 0)
      {
        if ([personCopy userVerified])
        {
          LOBYTE(v13) = 0;
          goto LABEL_5;
        }

        if ([personCopy graphVerified])
        {
          v13 = ![PLPerson person:personCopy isBetterMergeTargetThanPerson:toPersonCopy];
          goto LABEL_5;
        }
      }
    }
  }

  LOBYTE(v13) = 1;
LABEL_5:

  return v13;
}

- (void)_unlinkPersonIfVerifiedFromFace:(id)face
{
  v14 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  personForFace = [faceCopy personForFace];
  v5 = personForFace;
  if (personForFace && (([personForFace userVerified] & 1) != 0 || objc_msgSend(v5, "graphVerified")))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        pointerDescription = [faceCopy pointerDescription];
        personForFace2 = [faceCopy personForFace];
        syncDescription = [personForFace2 syncDescription];
        v10 = 138412546;
        v11 = pointerDescription;
        v12 = 2112;
        v13 = syncDescription;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Unlinking face %@ from person %@", &v10, 0x16u);
      }
    }

    [faceCopy setPersonBeingKeyFace:0];
    [faceCopy setAssociatedPerson:0];
  }
}

- (void)_applyDimensionAndStateFromFaceReference:(id)reference toDetectedFace:(id)face
{
  faceCopy = face;
  referenceCopy = reference;
  [referenceCopy centerX];
  [faceCopy setCenterX:?];
  [referenceCopy centerY];
  [faceCopy setCenterY:?];
  [referenceCopy size];
  [faceCopy setSize:?];
  [faceCopy setManual:{objc_msgSend(referenceCopy, "isManual")}];
  [referenceCopy bodyCenterX];
  [faceCopy setBodyCenterX:?];
  [referenceCopy bodyCenterY];
  [faceCopy setBodyCenterY:?];
  [referenceCopy bodyWidth];
  [faceCopy setBodyWidth:?];
  [referenceCopy bodyHeight];
  v7 = v6;

  [faceCopy setBodyHeight:v7];
}

- (void)_finalizeFace:(id)face withFaceRef:(id)ref applyDimensionAndState:(BOOL)state
{
  stateCopy = state;
  faceCopy = face;
  refCopy = ref;
  if (stateCopy)
  {
    [(PLCPLFacePullSupport *)self _applyDimensionAndStateFromFaceReference:refCopy toDetectedFace:faceCopy];
  }

  [(PLCPLFacePullSupport *)self _applyPersonFromFaceReference:refCopy toDetectedFace:faceCopy];
  [faceCopy setCloudLocalState:1];
  [faceCopy setSourceWidth:{-[PLSyncableAsset width](self->_currentAsset, "width")}];
  [faceCopy setSourceHeight:{-[PLSyncableAsset height](self->_currentAsset, "height")}];
}

- (id)_createFaceFromFaceRef:(id)ref algorithmVersion:(int)version
{
  v4 = *&version;
  syncContext = self->_syncContext;
  refCopy = ref;
  makeFace = [(PLSyncContext *)syncContext makeFace];
  [(PLCPLFacePullSupport *)self _finalizeFace:makeFace withFaceRef:refCopy applyDimensionAndState:1];

  [makeFace setFaceAlgorithmVersion:v4];

  return makeFace;
}

- (id)_applyAssetChange:(id)change toExistingFaces:(id)faces withPolicy:(int64_t)policy
{
  v80 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  facesCopy = faces;
  [MEMORY[0x1E695DFA8] set];
  v68 = v67 = policy;
  if (!policy)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"manual == NO"];
    v10 = [facesCopy filteredSetUsingPredicate:v9];

    [v68 unionSet:v10];
  }

  v66 = changeCopy;
  faces = [changeCopy faces];
  v11Faces = [faces faces];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v11Faces;
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
        width = [(PLSyncableAsset *)self->_currentAsset width];
        height = [(PLSyncableAsset *)self->_currentAsset height];
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
        v34 = [(PLFaceDimension *)v18 initWithSourceWidth:width sourceHeight:height centerX:v22 centerY:v24 size:v26 bodyCenterX:v28 bodyCenterY:v30 bodyWidth:v32 bodyHeight:v33];
        if ([v17 isManual])
        {
          v35 = [PLDetectedFace findExistingFaceMatchingDimension:v34 inFaces:facesCopy ignoreSourceAssetDimensions:1];
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
                  syncDescription = [v36 syncDescription];
                  *buf = 138412546;
                  v76 = syncDescription;
                  v77 = 2112;
                  v78 = v17;
                  _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Updating manual face %@ with %@", buf, 0x16u);
                }
              }

              selfCopy2 = self;
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
                      syncDescription2 = [v48 syncDescription];
                      *buf = 138412546;
                      v76 = syncDescription2;
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
                  syncDescription3 = [v36 syncDescription];
                  *buf = 138412546;
                  v76 = syncDescription3;
                  v77 = 2112;
                  v78 = v17;
                  _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Found existing face %@ matching %@", buf, 0x16u);
                }
              }

              selfCopy2 = self;
              v40 = v36;
              v41 = v17;
              v42 = 0;
            }

            [(PLCPLFacePullSupport *)selfCopy2 _finalizeFace:v40 withFaceRef:v41 applyDimensionAndState:v42];
            v56 = v36;
            goto LABEL_48;
          }

          v48 = [(PLCPLFacePullSupport *)self _createFaceFromFaceRef:v17 algorithmVersion:0];
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v50 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              syncDescription4 = [v48 syncDescription];
              *buf = 138412546;
              v76 = syncDescription4;
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

        isTorsoOnly = [v43 isTorsoOnly];
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

        if (((v45 | isTorsoOnly) & 1) == 0 || !IsSyncable)
        {
          goto LABEL_28;
        }

        if (!v67)
        {
          v57 = [PLDetectedFace findExistingFaceMatchingDimension:v34 inFaces:facesCopy ignoreSourceAssetDimensions:1];
          if (v57)
          {
            v58 = v57;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v59 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                syncDescription5 = [v58 syncDescription];
                *buf = 138412546;
                v76 = syncDescription5;
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
              syncDescription6 = [v48 syncDescription];
              *buf = 138412546;
              v76 = syncDescription6;
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
          syncDescription7 = [v48 syncDescription];
          *buf = 138412546;
          v76 = syncDescription7;
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

- (int64_t)_policyForApplyingFaceChangesFromAssetChange:(id)change
{
  facesAdjustmentsFingerprint = [change facesAdjustmentsFingerprint];
  v5 = facesAdjustmentsFingerprint;
  if (facesAdjustmentsFingerprint)
  {
    v6 = [facesAdjustmentsFingerprint isEqualToString:*MEMORY[0x1E6994948]];
    syncContext = self->_syncContext;
    cloudIdentifier = [(PLSyncableAsset *)self->_currentAsset cloudIdentifier];
    v9 = [(PLSyncContext *)syncContext assetAdjustmentStateForCloudIdentifier:cloudIdentifier];

    v10 = [v9 objectForKey:@"PLCPLAssetHasAdjustmentsKey"];
    bOOLValue = [v10 BOOLValue];

    v12 = [v9 objectForKey:@"PLCPLAssetAdjustmentFingerprintKey"];
    if (v6)
    {
      v13 = bOOLValue == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v13 && (v6 == bOOLValue || ([v5 isEqualToString:v12] & 1) == 0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)applyFacesChangesFromAssetChange:(id)change
{
  v39 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(PLSyncContext *)self->_syncContext serverSupportsVision])
  {
    v5 = [(PLCPLFacePullSupport *)self _policyForApplyingFaceChangesFromAssetChange:changeCopy];
    detectedFaces = [(PLSyncableAsset *)self->_currentAsset detectedFaces];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTrainingFace == YES"];
    v8 = [detectedFaces filteredSetUsingPredicate:v7];

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTrainingFace == NO"];
    v30 = detectedFaces;
    v10 = [detectedFaces filteredSetUsingPredicate:v9];

    faces = [changeCopy faces];
    v11Faces = [faces faces];
    v13 = [v11Faces count];

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
        v38 = changeCopy;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Applying face changes with policy %@ on %lu cloud faces, %lu local faces for asset change %@", buf, 0x2Au);

        v16 = MEMORY[0x1E6994D48];
      }
    }

    v20 = [MEMORY[0x1E695DFA8] set];
    [v20 unionSet:v8];
    v21 = [(PLCPLFacePullSupport *)self _applyAssetChange:changeCopy toExistingFaces:v10 withPolicy:v5];
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
    detectedFaces2 = [(PLSyncableAsset *)self->_currentAsset detectedFaces];
    v27 = [detectedFaces2 mutableCopy];

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

- (PLCPLFacePullSupport)initWithSyncContext:(id)context asset:(id)asset
{
  contextCopy = context;
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = PLCPLFacePullSupport;
  v9 = [(PLCPLFacePullSupport *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncContext, context);
    objc_storeStrong(&v10->_currentAsset, asset);
    v11 = v10;
  }

  return v10;
}

+ (id)_disjointSetsByAddingSet:(id)set toSets:(id)sets
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  setsCopy = sets;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E695DFA8] setWithSet:setCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = setsCopy;
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