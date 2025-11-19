@interface PLDetectedFace
+ (CGRect)cgRectFromGazeRectString:(id)a3;
+ (PLDetectedFace)detectedFaceWithUUID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)_facesMatchingPredicate:(id)a3 limit:(unint64_t)a4 inPhotoLibrary:(id)a5;
+ (id)_syncableFacesToUploadInitiallyPredicate;
+ (id)assetIDsWithAllPersonsFromPersonIDs:(id)a3 inContext:(id)a4;
+ (id)fetchDetectedFacesForAssetObjectID:(id)a3 managedObjectContext:(id)a4;
+ (id)findExistingFaceMatchingDimension:(id)a3 inFaces:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5;
+ (id)personIDsByAssetForPersonsVisibleWithPersonIDs:(id)a3 inContext:(id)a4;
+ (id)predicateForArchival;
+ (id)predicateForFetchType:(int64_t)a3;
+ (id)predicateForIncludedDetectionTypes:(id)a3;
+ (id)predicatesForFacesNeedingFaceCropGeneration;
+ (id)predicatesToExcludeNonVisibleFaces;
+ (id)stringFromGazeRect:(CGRect)a3;
+ (id)syncableFacesPredicate;
+ (id)syncableFacesToUploadInitiallyInLibrary:(id)a3 limit:(unint64_t)a4;
+ (int64_t)resetAssetForAllSyncableFacesInManagedObjectContext:(id)a3 error:(id *)a4;
+ (void)batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 fetchType:(int64_t)a5 library:(id)a6 completion:(id)a7;
+ (void)batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs:(id)a3 library:(id)a4 completion:(id)a5;
+ (void)resetCloudStateInPhotoLibrary:(id)a3;
- (BOOL)_faceIsDeletedBecauseAssetForFaceIsDeleted;
- (BOOL)_hasBodyHeightChange;
- (BOOL)_hasBodyWidthChange;
- (BOOL)_hasPersonForFaceChangeWithoutCommittedPersonForFace:(id)a3 oldAssociatedPerson:(id)a4;
- (BOOL)_hasSizeChange;
- (BOOL)_hasSizeOrTorsoDimensionChangeWithAssociatedAssetAndPerson;
- (BOOL)_isFaceAndTorso;
- (BOOL)_isFaceOnly;
- (BOOL)_isInsertedWithAssociatedAssetAndPerson;
- (BOOL)_isNeitherFaceNorTorso;
- (BOOL)_startTimeAndDurationAreValid;
- (BOOL)_validateForOperation:(id)a3 error:(id *)a4;
- (BOOL)isOrphan;
- (BOOL)isSyncableChange;
- (BOOL)isTorsoOnly;
- (BOOL)isValidForJournalPersistence;
- (BOOL)supportsCloudUpload;
- (BOOL)validForPersistenceChangedForChangedKeys:(id)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (CGRect)gazeRect;
- (id)associatedAssetForFaceOrTorso:(BOOL)a3 orTemporal:(BOOL)a4;
- (id)associatedPersonForFaceOrTorso:(BOOL)a3 orTemporal:(BOOL)a4;
- (id)cplFullRecord;
- (id)debugLogDescription;
- (id)namingDescription;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (id)photosFaceRepresentationLocalIdentifier;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)syncDescription;
- (void)_fixUpTemporalRelationships;
- (void)_recordAssetPersonEdgeAndContainmentUpdateForAsset:(id)a3 inContext:(id)a4;
- (void)_recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:(id)a3;
- (void)_touchPersonForPersistenceIfNeeded;
- (void)_updateFaceGroupIfNeeded;
- (void)_updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:(id)a3;
- (void)_verifyAssetRelationship;
- (void)_verifyTorsoRelationships;
- (void)addClusterRejectedPerson:(id)a3;
- (void)addRejectedPerson:(id)a3;
- (void)addRejectedPersonNeedingFaceCrops:(id)a3;
- (void)awakeFromInsert;
- (void)delete;
- (void)fixAssetRelationshipsForFaceTorsoOrTemporal;
- (void)fixPersonRelationshipsForFaceTorsoOrTemporal;
- (void)migration_setAssetForTorso:(id)a3;
- (void)migration_setPersonForTorso:(id)a3;
- (void)prepareForDeletion;
- (void)removeAllPersonRelationships;
- (void)removeFaceprint;
- (void)setAssociatedAsset:(id)a3;
- (void)setAssociatedPerson:(id)a3;
- (void)setEffectiveNameSource:(int)a3;
- (void)setGazeRect:(CGRect)a3;
- (void)willSave;
@end

@implementation PLDetectedFace

- (void)migration_setPersonForTorso:(id)a3
{
  v4 = a3;
  [(PLDetectedFace *)self willChangeValueForKey:@"personForTorso"];
  [(PLDetectedFace *)self setPrimitiveValue:v4 forKey:@"personForTorso"];

  [(PLDetectedFace *)self didChangeValueForKey:@"personForTorso"];
}

- (void)migration_setAssetForTorso:(id)a3
{
  v4 = a3;
  [(PLDetectedFace *)self willChangeValueForKey:@"assetForTorso"];
  [(PLDetectedFace *)self setPrimitiveValue:v4 forKey:@"assetForTorso"];

  [(PLDetectedFace *)self didChangeValueForKey:@"assetForFace"];
}

- (void)setAssociatedAsset:(id)a3
{
  v7 = a3;
  v4 = ![(PLDetectedFace *)self _isTemporalFace];
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [(PLDetectedFace *)self setAssetForFace:v5];
  [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:v6];
}

- (id)associatedAssetForFaceOrTorso:(BOOL)a3 orTemporal:(BOOL)a4
{
  v4 = a4;
  v7 = [(PLDetectedFace *)self assetForFace];
  if (!a3 && [(PLDetectedFace *)self isTorsoOnly])
  {

    v7 = 0;
  }

  if (v4 && !v7)
  {
    v7 = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
  }

  return v7;
}

- (void)setAssociatedPerson:(id)a3
{
  v7 = a3;
  v4 = ![(PLDetectedFace *)self _isTemporalFace];
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [(PLDetectedFace *)self setPersonForFace:v5];
  [(PLDetectedFace *)self setPersonForTemporalDetectedFaces:v6];
}

- (id)associatedPersonForFaceOrTorso:(BOOL)a3 orTemporal:(BOOL)a4
{
  v4 = a4;
  v7 = [(PLDetectedFace *)self personForFace];
  if (!a3 && [(PLDetectedFace *)self isTorsoOnly])
  {

    v7 = 0;
  }

  if (v4 && !v7)
  {
    v7 = [(PLDetectedFace *)self personForTemporalDetectedFaces];
  }

  return v7;
}

- (void)setGazeRect:(CGRect)a3
{
  v4 = [objc_opt_class() stringFromGazeRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [(PLDetectedFace *)self setGazeRectString:v4];
}

- (CGRect)gazeRect
{
  v3 = objc_opt_class();
  v4 = [(PLDetectedFace *)self gazeRectString];
  [v3 cgRectFromGazeRectString:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setEffectiveNameSource:(int)a3
{
  v3 = *&a3;
  [(PLDetectedFace *)self setNameSource:?];
  if (v3 != 2)
  {

    [(PLDetectedFace *)self setCloudNameSource:v3];
  }
}

- (void)addClusterRejectedPerson:(id)a3
{
  v4 = a3;
  v5 = [(PLDetectedFace *)self mutableSetValueForKey:@"clusterRejectedPersons"];
  [v5 addObject:v4];
}

- (void)addRejectedPersonNeedingFaceCrops:(id)a3
{
  v4 = a3;
  if ([v4 verifiedType])
  {
    v5 = [(PLDetectedFace *)self mutableSetValueForKey:@"rejectedPersonsNeedingFaceCrops"];
    [v5 addObject:v4];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Scheduling a rejected face crop for an unverified Person is an error, returning quietly", v6, 2u);
    }
  }
}

- (void)addRejectedPerson:(id)a3
{
  v4 = a3;
  v5 = [(PLDetectedFace *)self rejectedPersons];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [(PLDetectedFace *)self setRejectedPersons:v6];
}

- (id)namingDescription
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"uuid";
  v6[1] = @"nameSource";
  v6[2] = @"personForFace";
  v6[3] = @"assetForFace";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [(NSManagedObject *)self truncatedDescriptionWithPropertyKeys:v3];

  return v4;
}

- (id)debugLogDescription
{
  v3 = +[PLDescriptionBuilder plainDescriptionBuilder];
  v4 = [(PLDetectedFace *)self uuid];
  [v3 appendName:@"uuid" object:v4];

  v5 = MEMORY[0x1E696AEC0];
  [(PLDetectedFace *)self centerX];
  v7 = v6;
  [(PLDetectedFace *)self centerY];
  v9 = v8;
  [(PLDetectedFace *)self size];
  v11 = [v5 stringWithFormat:@"{{%f, %f}, %f, %lldx%lld}", v7, v9, v10, -[PLDetectedFace sourceWidth](self, "sourceWidth"), -[PLDetectedFace sourceHeight](self, "sourceHeight")];
  [v3 appendName:@"circle" object:v11];
  v12 = MEMORY[0x1E696AEC0];
  [(PLDetectedFace *)self bodyCenterX];
  v14 = v13;
  [(PLDetectedFace *)self bodyCenterY];
  v16 = v15;
  [(PLDetectedFace *)self bodyWidth];
  v18 = v17;
  [(PLDetectedFace *)self bodyHeight];
  v20 = [v12 stringWithFormat:@"{{%f, %f}, %fx%f}", v14, v16, v18, v19];
  [v3 appendName:@"body" object:v20];
  [v3 appendName:@"detectionType" integerValue:{-[PLDetectedFace detectionType](self, "detectionType")}];
  [v3 appendName:@"hidden" BOOLValue:{-[PLDetectedFace hidden](self, "hidden")}];
  [v3 appendName:@"trashed" BOOLValue:{-[PLDetectedFace isInTrash](self, "isInTrash")}];
  [v3 appendName:@"manual" BOOLValue:{-[PLDetectedFace manual](self, "manual")}];
  v21 = [(PLDetectedFace *)self associatedPersonForFaceOrTorso:1 orTemporal:1];
  v22 = [v21 debugLogDescription];
  [v3 appendName:@"person" object:v22];

  v23 = [(PLDetectedFace *)self personBeingKeyFace];
  v24 = [v23 debugLogDescription];
  [v3 appendName:@"personBeingKeyFace" object:v24];

  [v3 appendName:@"nameSource" integerValue:{-[PLDetectedFace nameSource](self, "nameSource")}];
  [v3 appendName:@"cloudLocalState" integerValue:{-[PLDetectedFace cloudLocalState](self, "cloudLocalState")}];
  v25 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:1];
  v26 = [v25 uuid];
  [v3 appendName:@"asset" object:v26];

  [v3 appendName:@"confirmedFaceCropGenerationState" integerValue:{-[PLDetectedFace confirmedFaceCropGenerationState](self, "confirmedFaceCropGenerationState")}];
  [(PLDetectedFace *)self quality];
  [v3 appendName:@"quality" doubleValue:?];
  [v3 appendName:@"faceExpressionType" integerValue:{-[PLDetectedFace faceExpressionType](self, "faceExpressionType")}];
  [v3 appendName:@"headgearType" integerValue:{-[PLDetectedFace headgearType](self, "headgearType")}];
  [v3 appendName:@"hairType" integerValue:{-[PLDetectedFace hairType](self, "hairType")}];
  [v3 appendName:@"poseType" integerValue:{-[PLDetectedFace poseType](self, "poseType")}];
  [v3 appendName:@"skintoneType" integerValue:{-[PLDetectedFace skintoneType](self, "skintoneType")}];
  [v3 appendName:@"ethnicityType" integerValue:{-[PLDetectedFace ethnicityType](self, "ethnicityType")}];
  [v3 appendName:@"hasFaceMask" BOOLValue:{-[PLDetectedFace hasFaceMask](self, "hasFaceMask")}];
  [v3 appendName:@"gazeType" integerValue:{-[PLDetectedFace gazeType](self, "gazeType")}];
  [(PLDetectedFace *)self gazeCenterX];
  [v3 appendName:@"gazeCenterX" doubleValue:?];
  [(PLDetectedFace *)self gazeCenterY];
  [v3 appendName:@"gazeCenterY" doubleValue:?];
  v27 = [(PLDetectedFace *)self gazeRectString];
  [v3 appendName:@"gazeRect" object:v27];

  [(PLDetectedFace *)self gazeAngle];
  [v3 appendName:@"gazeAngle" doubleValue:v28];
  [(PLDetectedFace *)self gazeConfidence];
  [v3 appendName:@"gazeConfidence" doubleValue:v29];
  v30 = MEMORY[0x1E696AD98];
  [(PLDetectedFace *)self startTime];
  v31 = [v30 numberWithDouble:?];
  [v3 appendName:@"startTime" object:v31];

  v32 = MEMORY[0x1E696AD98];
  [(PLDetectedFace *)self duration];
  v33 = [v32 numberWithDouble:?];
  [v3 appendName:@"duration" object:v33];

  v34 = [(PLDetectedFace *)self thumbnailIdentifier];
  [v3 appendName:@"thumbID" object:v34];

  v35 = [(PLDetectedFace *)self rejectedPersons];
  v36 = [v35 _pl_map:&__block_literal_global_28911];

  [v3 appendName:@"rejectedPersons" object:v36];
  v37 = [(PLDetectedFace *)self detectionTraits];
  v38 = [v37 _pl_map:&__block_literal_global_251];

  [v3 appendName:@"detectionTraits" object:v38];
  v39 = [v3 build];

  return v39;
}

- (void)removeFaceprint
{
  v3 = [(PLDetectedFace *)self faceprint];
  [v3 setFace:0];
  v2 = [v3 managedObjectContext];
  [v2 deleteObject:v3];
}

- (BOOL)_startTimeAndDurationAreValid
{
  [(PLDetectedFace *)self startTime];
  if (v3 >= 0.0)
  {
    [(PLDetectedFace *)self duration];
    if (v4 > 0.0)
    {
      return 1;
    }
  }

  [(PLDetectedFace *)self startTime];
  if (v6 != 0.0)
  {
    return 0;
  }

  [(PLDetectedFace *)self duration];
  return v7 == 0.0;
}

- (BOOL)_isNeitherFaceNorTorso
{
  [(PLDetectedFace *)self centerX];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(PLDetectedFace *)self bodyCenterX];
  return v4 == 0.0;
}

- (BOOL)_isFaceAndTorso
{
  [(PLDetectedFace *)self centerX];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(PLDetectedFace *)self bodyCenterX];
  return v4 != 0.0;
}

- (BOOL)_isFaceOnly
{
  [(PLDetectedFace *)self centerX];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(PLDetectedFace *)self bodyCenterX];
  return v4 == 0.0;
}

- (BOOL)isTorsoOnly
{
  [(PLDetectedFace *)self centerX];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(PLDetectedFace *)self bodyCenterX];
  return v4 != 0.0;
}

- (void)_recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:(id)a3
{
  v25 = a3;
  v4 = objc_autoreleasePoolPush();
  if (![(PLDetectedFace *)self _faceIsDeletedBecauseAssetForFaceIsDeleted])
  {
    v5 = [(PLDetectedFace *)self managedObjectContext];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !MEMORY[0x19EAEE520]())
    {
      goto LABEL_9;
    }

    v6 = [(PLDetectedFace *)self assetForFace];
    v7 = [v25 objectForKey:@"personForFace"];
    v8 = [(PLManagedObject *)self pl_committedValueForKey:@"personForFace"];
    v9 = [v25 objectForKey:@"assetForFace"];
    if ([(PLDetectedFace *)self _isInsertedWithAssociatedAssetAndPerson]|| [(PLDetectedFace *)self _hasSizeOrTorsoDimensionChangeWithAssociatedAssetAndPerson]|| [(PLDetectedFace *)self _hasPersonForFaceChangeWithoutCommittedPersonForFace:v7 oldAssociatedPerson:v8])
    {
      [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v6 inContext:v5];
      goto LABEL_8;
    }

    if ([(PLDetectedFace *)self isUpdated]&& v9 && ([(PLDetectedFace *)self personForFace], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 | v8, v10, v11))
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = v12;
      if (v9 == v12)
      {
      }

      else
      {
        v14 = [(PLDetectedFace *)self personForFace];

        if (v14)
        {
          [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v9 inContext:v5];
        }
      }

      v21 = [(PLManagedObject *)self pl_committedValueForKey:@"assetForFace"];
      v24 = PLNullToNil();

      if (v24)
      {
        [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v21 inContext:v5];
      }
    }

    else
    {
      if ([(PLDetectedFace *)self isUpdated]&& v7 && v6 && v8)
      {
        v15 = [v5 delayedSaveActions];
        [v15 recordAssetPersonEdgeUpdateNeededForAsset:v6];

        v16 = [MEMORY[0x1E695DFB0] null];

        if (v7 != v16)
        {
          v17 = [v5 delayedSaveActions];
          [v17 recordSocialGroupContainmentUpdateNeededForPerson:v7 andAsset:v6];
        }

        v18 = [v8 mergeTargetPerson];
        v19 = PLNullToNil();

        if (!v19)
        {
          v20 = [v5 delayedSaveActions];
          [v20 recordSocialGroupContainmentUpdateNeededForPerson:v8 andAsset:v6];
        }

        goto LABEL_8;
      }

      if (![(PLDetectedFace *)self isDeleted])
      {
LABEL_8:

LABEL_9:
        goto LABEL_10;
      }

      v21 = [(PLManagedObject *)self pl_committedValueForKey:@"assetForFace"];
      v22 = [(PLManagedObject *)self pl_committedValueForKey:@"personForFace"];
      v23 = v22;
      if (v21 && v22)
      {
        [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v21 inContext:v5];
      }
    }

    goto LABEL_8;
  }

LABEL_10:
  objc_autoreleasePoolPop(v4);
}

- (void)_updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:(id)a3
{
  v14 = a3;
  v4 = PLNullToNil();
  if (v4 && (v5 = v4, v6 = [v14 detectionType], v7 = -[PLDetectedFace detectionType](self, "detectionType"), v5, v6 != v7))
  {
    [v14 updateDetectionTypeIfNeeded];
  }

  else if ([(PLDetectedFace *)self isInserted])
  {
    v8 = [(PLDetectedFace *)self personForFace];
    if (v8)
    {
      v9 = v8;
      v10 = [(PLDetectedFace *)self personForFace];
      v11 = [v10 detectionType];
      v12 = [(PLDetectedFace *)self detectionType];

      if (v11 != v12)
      {
        v13 = [(PLDetectedFace *)self personForFace];
        [v13 updateDetectionTypeIfNeeded];
      }
    }
  }
}

- (void)_recordAssetPersonEdgeAndContainmentUpdateForAsset:(id)a3 inContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 delayedSaveActions];
  [v7 recordAssetPersonEdgeUpdateNeededForAsset:v6];

  v8 = [v5 delayedSaveActions];

  [v8 recordSocialGroupContainmentUpdateNeededForAsset:v6];
}

- (BOOL)_hasBodyHeightChange
{
  v2 = [(PLDetectedFace *)self changedValues];
  v3 = [v2 objectForKey:@"bodyHeight"];
  v4 = PLNullToNil();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_hasBodyWidthChange
{
  v2 = [(PLDetectedFace *)self changedValues];
  v3 = [v2 objectForKey:@"bodyWidth"];
  v4 = PLNullToNil();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_hasSizeChange
{
  v2 = [(PLDetectedFace *)self changedValues];
  v3 = [v2 objectForKey:@"size"];
  v4 = PLNullToNil();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_hasSizeOrTorsoDimensionChangeWithAssociatedAssetAndPerson
{
  if (![(PLDetectedFace *)self isUpdated])
  {
    return 0;
  }

  v3 = [(PLDetectedFace *)self personForFace];
  if (v3)
  {
    v4 = [(PLDetectedFace *)self assetForFace];
    if (v4)
    {
      v5 = [(PLDetectedFace *)self _hasSizeChange]|| [(PLDetectedFace *)self _hasBodyWidthChange]|| [(PLDetectedFace *)self _hasBodyHeightChange];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasPersonForFaceChangeWithoutCommittedPersonForFace:(id)a3 oldAssociatedPerson:(id)a4
{
  v7 = [(PLDetectedFace *)self isUpdated];
  v8 = 0;
  if (!a4 && a3 && v7)
  {
    v9 = [(PLDetectedFace *)self assetForFace];
    v8 = v9 != 0;
  }

  return v8;
}

- (BOOL)_isInsertedWithAssociatedAssetAndPerson
{
  if (![(PLDetectedFace *)self isInserted])
  {
    return 0;
  }

  v3 = [(PLDetectedFace *)self personForFace];
  if (v3)
  {
    v4 = [(PLDetectedFace *)self assetForFace];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_faceIsDeletedBecauseAssetForFaceIsDeleted
{
  if ([(PLDetectedFace *)self isDeleted])
  {
    v3 = [(PLManagedObject *)self pl_committedValueForKey:@"assetForFace"];
    v4 = v3;
    if (v3)
    {
      v5 = ([v3 isDeleted] << 31) >> 31;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)_verifyTorsoRelationships
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForTorso"];
  v4 = [v3 firstObject];

  v5 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForTorso"];
  v6 = [v5 firstObject];

  if (v4)
  {
    v7 = [(PLDetectedFace *)self assetForTorso];
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(PLDetectedFace *)self uuid];
      v10 = [v7 uuid];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "assetForTorso is unexpected set on face %{public}@ to %{public}@", &v15, 0x16u);
    }
  }

  if (v6)
  {
    v11 = [(PLDetectedFace *)self personForTorso];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [(PLDetectedFace *)self uuid];
      v14 = [v11 personUUID];
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "personForTorso is unexpected set on face %{public}@ to %{public}@", &v15, 0x16u);
    }
  }
}

- (void)_fixUpTemporalRelationships
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForFace"];
  v4 = [v3 firstObject];

  v5 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForTemporalDetectedFaces"];
  v6 = [v5 firstObject];

  v7 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForFace"];
  v8 = [v7 firstObject];

  v9 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForTemporalDetectedFaces"];
  v10 = [v9 firstObject];

  if ([(PLDetectedFace *)self _isTemporalFace])
  {
    if (v4 | v8)
    {
      if (!v6 && v4)
      {
        v11 = [(PLDetectedFace *)self assetForFace];
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [(PLDetectedFace *)self uuid];
          v14 = [v11 uuid];
          v26 = 138543618;
          v27 = v13;
          v28 = 2114;
          v29 = v14;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up temporal face %{public}@, moving asset %{public}@ to temporal", &v26, 0x16u);
        }

        [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:v11];
        [(PLDetectedFace *)self setAssetForFace:0];
      }

      if (!v10 && v8)
      {
        v15 = [(PLDetectedFace *)self personForFace];
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [(PLDetectedFace *)self uuid];
          v18 = [v15 personUUID];
          v26 = 138543618;
          v27 = v17;
          v28 = 2114;
          v29 = v18;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up temporal face %{public}@, moving person %{public}@ to temporal", &v26, 0x16u);
        }

        [(PLDetectedFace *)self setPersonForTemporalDetectedFaces:v15];
        [(PLDetectedFace *)self setPersonForFace:0];
LABEL_24:
      }
    }
  }

  else if (v6 | v10)
  {
    if (!v4 && v6)
    {
      v19 = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [(PLDetectedFace *)self uuid];
        v22 = [v19 uuid];
        v26 = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up still face %{public}@, moving asset %{public}@ from temporal", &v26, 0x16u);
      }

      [(PLDetectedFace *)self setAssetForFace:v19];
      [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:0];
    }

    if (!v8 && v10)
    {
      v15 = [(PLDetectedFace *)self personForTemporalDetectedFaces];
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [(PLDetectedFace *)self uuid];
        v25 = [v15 personUUID];
        v26 = 138543618;
        v27 = v24;
        v28 = 2114;
        v29 = v25;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up still face %{public}@, moving person %{public}@ from temporal", &v26, 0x16u);
      }

      [(PLDetectedFace *)self setPersonForFace:v15];
      [(PLDetectedFace *)self setPersonForTemporalDetectedFaces:0];
      goto LABEL_24;
    }
  }
}

- (void)_verifyAssetRelationship
{
  v16 = *MEMORY[0x1E69E9840];
  if (([(PLDetectedFace *)self isDeleted]& 1) == 0 && ![(PLDetectedFace *)self isTrainingFace])
  {
    v4 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForFace"];
    if ([v4 count])
    {
      v5 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForTemporalDetectedFaces"];
      v6 = [v5 count];

      if (!v6)
      {
        return;
      }
    }

    else
    {
    }

    v7 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForFace"];
    if ([v7 count])
    {
    }

    else
    {
      v12 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForTemporalDetectedFaces"];
      v13 = [v12 count];

      if (v13)
      {
        return;
      }
    }

    if ((PLIsSuppressingLogsForUnitTesting() & 1) == 0)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = self;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Face unexpectedly has no asset: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 BOOLForKey:@"EnableFaceAssertions"];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:447 description:{@"Face unexpectedly has no asset: %@", self}];
    }
  }
}

- (BOOL)isOrphan
{
  v3 = [(PLDetectedFace *)self assetForFace];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(PLDetectedFace *)self faceCrop];
      v4 = v6 == 0;
    }
  }

  return v4;
}

- (void)fixAssetRelationshipsForFaceTorsoOrTemporal
{
  v3 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:1];
  if (v3)
  {
    v4 = v3;
    [(PLDetectedFace *)self setAssociatedAsset:v3];
    v3 = v4;
  }
}

- (void)fixPersonRelationshipsForFaceTorsoOrTemporal
{
  v3 = [(PLDetectedFace *)self associatedPersonForFaceOrTorso:1 orTemporal:1];
  if (v3)
  {
    v4 = v3;
    [(PLDetectedFace *)self setAssociatedPerson:v3];
    v3 = v4;
  }
}

- (void)removeAllPersonRelationships
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self entity];
  v4 = +[PLPerson entity];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 relationshipsByName];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 destinationEntity];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = [v11 name];
          [(PLDetectedFace *)self setValue:0 forKey:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_updateFaceGroupIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self associatedPersonForFaceOrTorso:1 orTemporal:0];

  if (!v3)
  {
    v4 = [(PLDetectedFace *)self faceGroup];
    v5 = PLBackendGetLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        v7 = [(NSManagedObject *)self pl_shortDescription];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Moving face %@ to algorithmic face group: %@", &v10, 0x16u);
      }

      v5 = [v4 associatedPerson];
      v8 = [v5 mutableFaces];
      if (([v8 containsObject:self] & 1) == 0)
      {
        [v8 addObject:self];
      }
    }

    else if (v6)
    {
      v9 = [(NSManagedObject *)self pl_shortDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Unable to find algorithmic face group for face: %@", &v10, 0xCu);
    }
  }
}

- (void)_touchPersonForPersistenceIfNeeded
{
  v3 = [(PLManagedObject *)self pathManager];
  v4 = [v3 isDCIM];

  if (v4)
  {
    v5 = [(PLDetectedFace *)self associatedPersonForFaceOrTorso:1 orTemporal:0];
    if (([v5 isInserted] & 1) == 0 && (objc_msgSend(v5, "isUpdated") & 1) == 0)
    {
      [v5 setEffectiveVerifiedType:{objc_msgSend(v5, "verifiedType")}];
    }
  }
}

- (void)willSave
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = PLDetectedFace;
  [(PLManagedObject *)&v43 willSave];
  [(PLDetectedFace *)self _fixUpTemporalRelationships];
  [(PLDetectedFace *)self _verifyTorsoRelationships];
  v3 = [(PLDetectedFace *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"centerX"];
  v5 = [v3 objectForKey:@"personForFace"];
  if ((_os_feature_enabled_impl() & 1) != 0 || (-[PLManagedObject photoLibrary](self, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isUnitTesting], v6, v7))
  {
    [(PLDetectedFace *)self _recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:v3];
  }

  [(PLDetectedFace *)self _updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:v5];
  if (!v5)
  {
    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = v8;
  if (v5 == v8)
  {
  }

  else
  {
    v10 = [v5 verifiedType];

    if (v10)
    {
LABEL_7:
      v11 = [(PLDetectedFace *)self trainingType];
      v12 = 0;
      goto LABEL_14;
    }
  }

  if ([(PLDetectedFace *)self nameSource])
  {
    [(PLDetectedFace *)self setNameSource:0];
  }

  if ([(PLDetectedFace *)self confirmedFaceCropGenerationState])
  {
    [(PLDetectedFace *)self setConfirmedFaceCropGenerationState:0];
  }

  v11 = [(PLDetectedFace *)self trainingType];
  v13 = [MEMORY[0x1E695DFB0] null];
  v12 = [v5 isEqual:v13] ^ 1;

LABEL_14:
  if (v11)
  {
    v14 = v5 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 || v12)
  {
    v15 = [(PLDetectedFace *)self faceGroup];
    v16 = v15;
    if (v15 && [v15 personBuilderState] != 1)
    {
      [v16 setPersonBuilderState:1];
    }
  }

  if (v5)
  {
    v17 = [(PLDetectedFace *)self personBeingKeyFace];
    if (v17)
    {
      v18 = v17;
      v19 = [(PLDetectedFace *)self personBeingKeyFace];
      v20 = [v19 isEqual:v5];

      if ((v20 & 1) == 0)
      {
        [(PLDetectedFace *)self setPersonBeingKeyFace:0];
      }
    }
  }

  v21 = [v3 objectForKey:@"rejectedPersons"];

  if (v21)
  {
    v22 = [(PLDetectedFace *)self rejectedPersons];
    v23 = [(PLDetectedFace *)self clusterRejectedPersons];
    v24 = [v23 mutableCopy];
    [v24 intersectSet:v22];
    if ((v23 == 0) != (v24 == 0) || ![v23 isEqualToSet:v24] || (objc_msgSend(v24, "isEqualToSet:", v23) & 1) == 0)
    {
      [(PLDetectedFace *)self setClusterRejectedPersons:v24];
    }
  }

  if ([(PLDetectedFace *)self isSyncableChange])
  {
    v25 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:0];

    if (v25)
    {
      v26 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:0];
      v27 = [v26 changedValues];
      v28 = [v27 objectForKeyedSubscript:@"modificationDate"];

      if (!v28)
      {
        v29 = [MEMORY[0x1E695DF00] date];
        [v26 setModificationDate:v29];
      }
    }
  }

  if (!v4)
  {
    v30 = [v3 objectForKeyedSubscript:@"centerY"];
    if (v30)
    {
    }

    else
    {
      v31 = [v3 objectForKeyedSubscript:@"size"];

      if (!v31)
      {
        goto LABEL_44;
      }
    }
  }

  v32 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:1];
  [v32 revalidateFaceAreaPoints];

LABEL_44:
  v33 = [(PLDetectedFace *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(PLDetectedFace *)self isDeleted]& 1) == 0)
    {
      [PLDelayedSearchIndexUpdates recordDetectedFaceIfNeeded:self];
    }

    [(PLDetectedFace *)self _updateFaceGroupIfNeeded];
    [(PLDetectedFace *)self _verifyAssetRelationship];
    v34 = [v3 objectForKey:@"nameSource"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 integerValue];
      v44[0] = @"nameSource";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      v42 = v3;
      v38 = v37 = v4;
      v39 = [(PLDetectedFace *)self committedValuesForKeys:v38];
      v40 = [v39 objectForKey:@"nameSource"];
      v41 = [v40 integerValue];

      v4 = v37;
      v3 = v42;
      if (v36 == 5 || (v36 & 0xFFFFFFFFFFFFFFFDLL) == 1 || v41 == 5 || (v41 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        [(PLDetectedFace *)self _touchPersonForPersistenceIfNeeded];
      }
    }
  }
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLDetectedFace;
  [(PLDetectedFace *)&v5 prepareForDeletion];
  objc_opt_class();
  v3 = [(PLDetectedFace *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [PLDelayedSearchIndexUpdates recordDetectedFaceIfNeeded:self];
  }
}

- (BOOL)_validateForOperation:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLDetectedFace *)self _startTimeAndDurationAreValid];
  if (!v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(NSManagedObject *)self pl_shortDescription];
      [(PLDetectedFace *)self startTime];
      v11 = v10;
      [(PLDetectedFace *)self duration];
      *buf = 138544130;
      v27 = v9;
      v28 = 2114;
      v29 = v6;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "PLDetectedFace %{public}@ failed validation for %{public}@, startTime: %g, duration: %g", buf, 0x2Au);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v24 = *MEMORY[0x1E696A278];
      v15 = MEMORY[0x1E696AEC0];
      [(PLDetectedFace *)self startTime];
      v17 = v16;
      [(PLDetectedFace *)self duration];
      v19 = [v15 stringWithFormat:@"There was a validation issue when attempting to %@ PLDetectedFace (startTime: %g, duration: %g)", v6, v17, v18];
      v25 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v13 errorWithDomain:v14 code:46502 userInfo:v20];

      v22 = v21;
      *a4 = v21;
    }
  }

  return v7;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLDetectedFace;
  v5 = [(PLDetectedFace *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLDetectedFace *)self _validateForOperation:@"update" error:a3];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLDetectedFace;
  v5 = [(PLDetectedFace *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLDetectedFace *)self _validateForOperation:@"insert" error:a3];
  }

  return v5;
}

- (void)delete
{
  v3 = [(PLDetectedFace *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLDetectedFace;
  [(PLDetectedFace *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLDetectedFace *)self setUuid:v3];
}

+ (id)assetIDsWithAllPersonsFromPersonIDs:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  [v9 becomeCurrentWithPendingUnitCount:1];
  v10 = [a1 personIDsByAssetForPersonsVisibleWithPersonIDs:v6 inContext:v7];
  [v9 resignCurrent];
  [v9 becomeCurrentWithPendingUnitCount:1];
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v10, "count")}];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __64__PLDetectedFace_assetIDsWithAllPersonsFromPersonIDs_inContext___block_invoke;
  v21 = &unk_1E756A778;
  v12 = v11;
  v22 = v12;
  v25 = &v26;
  v13 = v6;
  v23 = v13;
  v14 = v8;
  v24 = v14;
  [v10 enumerateKeysAndObjectsUsingBlock:&v18];
  [v9 resignCurrent];
  if (*(v27 + 24) == 1)
  {
    v15 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __64__PLDetectedFace_assetIDsWithAllPersonsFromPersonIDs_inContext___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  if ([v7 isCancelled])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  v9 = [v8 count];

  if (v9 == [*(a1 + 40) count])
  {
    [*(a1 + 48) addObject:v10];
  }

  [*(a1 + 32) resignCurrent];
}

+ (id)personIDsByAssetForPersonsVisibleWithPersonIDs:(id)a3 inContext:(id)a4
{
  v41[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLDetectedFace entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v41[0] = @"assetForFace";
  v41[1] = @"personForFace";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [v9 setPropertiesToFetch:v10];

  [v9 setResultType:2];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace", v5];
  [v9 setPredicate:v11];

  v37 = 0;
  v12 = [v6 executeFetchRequest:v9 error:&v37];
  v13 = v37;
  v14 = v13;
  if (v12)
  {
    v28 = v13;
    v30 = v5;
    v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v12, "count")}];
    v16 = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PLDetectedFace_personIDsByAssetForPersonsVisibleWithPersonIDs_inContext___block_invoke;
    aBlock[3] = &unk_1E756A750;
    v27 = v16;
    v36 = v27;
    v17 = _Block_copy(aBlock);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v12;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (([v15 isCancelled]& 1) != 0)
          {
            v25 = [MEMORY[0x1E695DF90] dictionary];

            v24 = v27;
            goto LABEL_12;
          }

          [v15 becomeCurrentWithPendingUnitCount:1];
          v17[2](v17, @"assetForFace", @"personForFace", v23);
          [v15 resignCurrent];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v24 = v27;
    v25 = v27;
LABEL_12:

    v5 = v30;
    v12 = v29;
    v14 = v28;
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to fetch: %@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

uint64_t __75__PLDetectedFace_personIDsByAssetForPersonsVisibleWithPersonIDs_inContext___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  v10 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DFA8] set];
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v9];
    }

    [v13 addObject:v10];
  }

  return v12;
}

+ (id)predicateForFetchType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[PLDetectedFace predicateToExcludeFaceDetection];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[PLDetectedFace predicateToExcludeBodyOnlyDetection];
  }

  return v3;
}

+ (id)predicateForIncludedDetectionTypes:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&unk_1F0FBC148])
  {
    v4 = [v3 containsObject:&unk_1F0FBC160];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"detectionType", &unk_1F0FBC148];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", v3];
  }

  return v5;
}

+ (id)predicateForArchival
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"manual"];
  v13[0] = v3;
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"nameSource", &unk_1F0FBFA30];
  v12[0] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trainingType", 0];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v4 andPredicateWithSubpredicates:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v2 orPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)predicatesForFacesNeedingFaceCropGeneration
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"confirmedFaceCropGenerationState == %d", 1];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejectedPersonsNeedingFaceCrops.@count > 0"];
  v4 = MEMORY[0x1E696AB28];
  v12[0] = v2;
  v12[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [v4 orPredicateWithSubpredicates:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"faceCrop == NULL"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"manual == NO"];
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  return v9;
}

+ (id)predicatesToExcludeNonVisibleFaces
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset predicateToExcludeHiddenAssetsWithHiddenKeyPath:@"assetForFace.hidden"];
  v10[0] = v2;
  v3 = [PLManagedAsset predicateToExcludeTrashedAssetsWithTrashedStateKeyPath:@"assetForFace.trashedState"];
  v10[1] = v3;
  v4 = [PLManagedAsset predicateToExcludeNonvisibleBurstAssetsWithAvalanchePickTypeKeyPath:@"assetForFace.avalanchePickType"];
  v10[2] = v4;
  v5 = [PLManagedAsset predicateToExcludeVideosWithVideoKeyFrameSetWithKeyPathToAsset:@"assetForFace"];
  v10[3] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO", @"hidden"];
  v10[4] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"assetForFace"];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (void)batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs:(id)a3 library:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLDetectedFace.m" lineNumber:864 description:@"Completion handler is mandatory"];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLDetectedFace.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PLDetectedFace_batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs_library_completion___block_invoke;
  v17[3] = &unk_1E7576078;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  v21 = a1;
  v12 = v11;
  v13 = v9;
  v14 = v10;
  [v14 performBlockAndWait:v17];
}

void __90__PLDetectedFace_batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs_library_completion___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personBeingKeyFace", *(a1 + 40)];
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLDetectedFace entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v15[0] = @"personBeingKeyFace";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v6 setRelationshipKeyPathsForPrefetching:v7];

  [v6 setPredicate:v3];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLDetectedFace_batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs_library_completion___block_invoke_2;
  v12[3] = &unk_1E756A728;
  v14 = *(a1 + 56);
  v9 = v8;
  v13 = v9;
  v10 = [v2 enumerateObjectsFromFetchRequest:v6 count:0 usingDefaultBatchSizeWithBlock:v12];
  if (v10)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v9];
    (*(*(a1 + 48) + 16))();
  }
}

void __90__PLDetectedFace_batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs_library_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectIDsForRelationshipNamed:@"personBeingKeyFace"];
  v4 = [v3 firstObject];

  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

+ (void)batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 fetchType:(int64_t)a5 library:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLDetectedFace.m" lineNumber:827 description:@"Completion handler is mandatory"];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLDetectedFace.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__PLDetectedFace_batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs_predicate_fetchType_library_completion___block_invoke;
  v23[3] = &unk_1E7570538;
  v24 = v15;
  v25 = v13;
  v28 = a1;
  v29 = a5;
  v26 = v14;
  v27 = v16;
  v17 = v16;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  [v20 performBlockAndWait:v23];
}

void __106__PLDetectedFace_batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs_predicate_fetchType_library_completion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v16[0] = @"assetForFace";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K IN %@", @"assetForFace", @"uuid", *(a1 + 40)];
  [v7 addObject:v8];

  v9 = [PLDetectedFace predicateForFetchType:*(a1 + 72)];
  [v7 _pl_addNonNilObject:v9];

  [v7 _pl_addNonNilObject:*(a1 + 48)];
  v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
  [v5 setPredicate:v10];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__PLDetectedFace_batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs_predicate_fetchType_library_completion___block_invoke_2;
  v14[3] = &unk_1E75770B8;
  v12 = v11;
  v15 = v12;
  v13 = [v2 enumerateObjectsFromFetchRequest:v5 count:0 usingDefaultBatchSizeWithBlock:v14];
  (*(*(a1 + 56) + 16))();
}

void __106__PLDetectedFace_batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs_predicate_fetchType_library_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 assetForFace];
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKey:v5];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 32) setObject:v6 forKey:v5];
    }

    [v6 addObject:v3];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "assetUUID is nil for face %@", &v8, 0xCu);
    }
  }
}

+ (id)stringFromGazeRect:(CGRect)a3
{
  __asm { FMOV            V4.2D, #-1.0 }

  if (*&a3.origin.x == _Q4 && *&a3.origin.y == *(&_Q4 + 1) && *&a3.size.width == _Q4 && *&a3.size.height == *(&_Q4 + 1))
  {
    v10 = 0;
  }

  else
  {
    v10 = DCIM_NSStringFromCGRect();
  }

  return v10;
}

+ (CGRect)cgRectFromGazeRectString:(id)a3
{
  if (a3)
  {
    return NSRectFromString(a3);
  }

  else
  {
    result.origin.x = -1.0;
    result.origin.y = -1.0;
    result.size.width = -1.0;
    result.size.height = -1.0;
  }

  return result;
}

+ (PLDetectedFace)detectedFaceWithUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E695D5E0];
    v10 = [a1 entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@", v6];
    [v11 setPredicate:v12];
    [v11 setFetchLimit:1];
    v16 = 0;
    v13 = [v7 executeFetchRequest:v11 error:&v16];
    if ([v13 count])
    {
      v14 = [v13 firstObject];
    }

    else
    {
      v14 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)fetchDetectedFacesForAssetObjectID:(id)a3 managedObjectContext:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a4;
  v7 = a3;
  v8 = +[PLDetectedFace entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR %K == %@", @"assetForFace", v7, @"assetForTemporalDetectedFaces", v7];

  [v9 setPredicate:v10];
  v19[0] = @"personForFace";
  v19[1] = @"personForTemporalDetectedFaces";
  v19[2] = @"detectionTraits";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v18[0] = @"detectionType";
  v18[1] = @"ageType";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v9 setPropertiesToFetch:v12];

  v17 = 0;
  v13 = [v6 executeFetchRequest:v9 error:&v17];

  v14 = v17;
  if (v13)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v13];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v14];
  }
  v15 = ;

  return v15;
}

- (BOOL)validForPersistenceChangedForChangedKeys:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:@"manual"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:@"nameSource"];
  }

  return v4;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLDetectedFace *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLDetectedFaceJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLDetectedFace *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

- (BOOL)isValidForJournalPersistence
{
  if (([(PLDetectedFace *)self manual]& 1) == 0 && [(PLDetectedFace *)self nameSource]!= 3 && [(PLDetectedFace *)self nameSource]!= 1 && [(PLDetectedFace *)self nameSource]!= 5)
  {
    return 0;
  }

  v3 = [(PLDetectedFace *)self assetForFace];
  v4 = v3 != 0;

  return v4;
}

- (id)photosFaceRepresentationLocalIdentifier
{
  v4 = NSClassFromString(&cfstr_Phface.isa);
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:306 description:@"photosFaceLocalIdentifier: cannot load PHFace class."];
  }

  v5 = [(PLDetectedFace *)self uuid];
  v6 = [(objc_class *)v4 localIdentifierWithUUID:v5];

  return v6;
}

- (id)syncDescription
{
  v6[11] = *MEMORY[0x1E69E9840];
  v6[0] = @"uuid";
  v6[1] = @"nameSource";
  v6[2] = @"manual";
  v6[3] = @"assetForFace";
  v6[4] = @"personForFace";
  v6[5] = @"personBeingKeyFace";
  v6[6] = @"cloudLocalState";
  v6[7] = @"cloudNameSource";
  v6[8] = @"centerX";
  v6[9] = @"centerY";
  v6[10] = @"size";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:11];
  v4 = [(NSManagedObject *)self truncatedDescriptionWithPropertyKeys:v3];

  return v4;
}

- (id)cplFullRecord
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:206 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (id)scopedIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:201 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (id)scopeIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:196 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (BOOL)isSyncableChange
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self changedValues];
  v4 = [v3 objectForKey:@"nameSource"];

  if (v4)
  {
    v16[0] = @"nameSource";
    LOBYTE(v4) = 1;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v6 = [(PLDetectedFace *)self committedValuesForKeys:v5];

    v7 = [v6 objectForKey:@"nameSource"];
    v8 = [v7 intValue];

    if ((PLNameSourceIsSyncable([(PLDetectedFace *)self nameSource]) & 1) == 0)
    {
      LOBYTE(v4) = PLNameSourceIsSyncable(v8);
    }
  }

  v9 = [v3 objectForKey:@"rejectedPersons"];

  v10 = [v3 objectForKey:@"personBeingKeyFace"];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = v10 == v11 || [v10 keyFacePickSource] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PLDetectedFace *)self isTrainingFace];
  if ((v13 | v4))
  {
    v14 = ~v13;
  }

  else
  {
    v14 = v9 != 0 || v12;
  }

  return v14 & 1;
}

- (BOOL)supportsCloudUpload
{
  v3 = [MEMORY[0x1E6994A80] serverSupportsVision];
  if (v3)
  {
    LOBYTE(v3) = ![(PLDetectedFace *)self isTrainingFace];
  }

  return v3;
}

+ (void)resetCloudStateInPhotoLibrary:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  v7 = [a1 entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"cloudLocalState", 0];
  [v8 setResultType:2];
  v19 = @"cloudLocalState";
  v20[0] = &unk_1F0FBE9C8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v8 setPropertiesToUpdate:v10];

  [v8 setPredicate:v9];
  v11 = [v4 managedObjectContext];
  v16 = 0;
  v12 = [v11 executeRequest:v8 error:&v16];
  v13 = v16;

  if (v12)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 result];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch updated %@ detectedFaces", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to batch update detectedFaces: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (int64_t)resetAssetForAllSyncableFacesInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 1];
  v8 = [v6 photoLibrary];
  v9 = [a1 _facesMatchingPredicate:v7 limit:0 inPhotoLibrary:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLDetectedFace_CPL__resetAssetForAllSyncableFacesInManagedObjectContext_error___block_invoke;
  v14[3] = &unk_1E7575218;
  v14[4] = &v15;
  v10 = [v6 enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v14];
  v11 = v16;
  if (v10)
  {
    v16[3] = 0x7FFFFFFFFFFFFFFFLL;
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
      v11 = v16;
    }
  }

  v12 = v11[3];

  _Block_object_dispose(&v15, 8);
  return v12;
}

void __81__PLDetectedFace_CPL__resetAssetForAllSyncableFacesInManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 assetForFace];
  if ([v4 cloudLocalState] == 1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v4 setModificationDate:v3];

    [v4 setCloudLocalState:0];
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

+ (id)syncableFacesToUploadInitiallyInLibrary:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _syncableFacesToUploadInitiallyPredicate];
  v8 = [a1 _facesMatchingPredicate:v7 limit:a4 inPhotoLibrary:v6];

  return v8;
}

+ (id)_syncableFacesToUploadInitiallyPredicate
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v14[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"assetForFace.cloudLocalState", &unk_1F0FC0138];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  v8 = MEMORY[0x1E696AB28];
  v13[0] = v7;
  v9 = [a1 syncableFacesPredicate];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v8 andPredicateWithSubpredicates:v10];

  return v11;
}

+ (id)syncableFacesPredicate
{
  pl_dispatch_once();
  v2 = syncableFacesPredicate_predicate;

  return v2;
}

void __45__PLDetectedFace_CPL__syncableFacesPredicate__block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"nameSource", &unk_1F0FC0150];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 1 OR %K.@count > 0", @"manual", @"rejectedPersons"];
  v2 = MEMORY[0x1E696AB28];
  v15[0] = v0;
  v15[1] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v4 = [v2 orPredicateWithSubpredicates:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trainingType", 0];
  if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K > %d", @"detectionType", 1, @"detectionType", 2];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"detectionType", 1, v12, v13];
  }
  v6 = ;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0", @"duration"];
  v8 = MEMORY[0x1E696AB28];
  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = syncableFacesPredicate_predicate;
  syncableFacesPredicate_predicate = v10;
}

+ (id)_facesMatchingPredicate:(id)a3 limit:(unint64_t)a4 inPhotoLibrary:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 managedObjectContext];
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695D5E0];
  v13 = [a1 entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  if (v8)
  {
    [v14 setPredicate:v8];
  }

  [v14 setFetchBatchSize:100];
  if (a4)
  {
    [v14 setFetchLimit:a4];
  }

  v19 = 0;
  v15 = [v10 executeFetchRequest:v14 error:&v19];
  v16 = v19;
  if (!v15 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch faces: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v11);

  return v15;
}

+ (id)findExistingFaceMatchingDimension:(id)a3 inFaces:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v9 = [MEMORY[0x1E69C07D8] sortedViableMergeCandidateFacesFor:v7 from:v8 ignoreSourceAssetDimensions:v5 matchScores:&v17];
  v10 = v17;
  if ([v9 count] >= 2)
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_12;
    }

    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "More than 1 viable face matches query face %@, matching scores: %@ for faces: %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  if ([v9 count])
  {
    goto LABEL_12;
  }

  v16 = v10;
  v12 = [MEMORY[0x1E69C07D8] sortedViableMergeCandidateTorsosFor:v7 from:v8 ignoreSourceAssetDimensions:v5 matchScores:&v16];
  v13 = v16;

  if ([v12 count] >= 2 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "More than 1 viable torso matches query face %@, matching scores: %@ for faces: %@", buf, 0x20u);
    }

    v9 = v12;
    v10 = v13;
LABEL_11:

    goto LABEL_12;
  }

  v9 = v12;
  v10 = v13;
LABEL_12:
  v14 = [v9 firstObject];

  return v14;
}

@end