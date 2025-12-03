@interface PLDetectedFace
+ (CGRect)cgRectFromGazeRectString:(id)string;
+ (PLDetectedFace)detectedFaceWithUUID:(id)d inManagedObjectContext:(id)context;
+ (id)_facesMatchingPredicate:(id)predicate limit:(unint64_t)limit inPhotoLibrary:(id)library;
+ (id)_syncableFacesToUploadInitiallyPredicate;
+ (id)assetIDsWithAllPersonsFromPersonIDs:(id)ds inContext:(id)context;
+ (id)fetchDetectedFacesForAssetObjectID:(id)d managedObjectContext:(id)context;
+ (id)findExistingFaceMatchingDimension:(id)dimension inFaces:(id)faces ignoreSourceAssetDimensions:(BOOL)dimensions;
+ (id)personIDsByAssetForPersonsVisibleWithPersonIDs:(id)ds inContext:(id)context;
+ (id)predicateForArchival;
+ (id)predicateForFetchType:(int64_t)type;
+ (id)predicateForIncludedDetectionTypes:(id)types;
+ (id)predicatesForFacesNeedingFaceCropGeneration;
+ (id)predicatesToExcludeNonVisibleFaces;
+ (id)stringFromGazeRect:(CGRect)rect;
+ (id)syncableFacesPredicate;
+ (id)syncableFacesToUploadInitiallyInLibrary:(id)library limit:(unint64_t)limit;
+ (int64_t)resetAssetForAllSyncableFacesInManagedObjectContext:(id)context error:(id *)error;
+ (void)batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate fetchType:(int64_t)type library:(id)library completion:(id)completion;
+ (void)batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs:(id)ds library:(id)library completion:(id)completion;
+ (void)resetCloudStateInPhotoLibrary:(id)library;
- (BOOL)_faceIsDeletedBecauseAssetForFaceIsDeleted;
- (BOOL)_hasBodyHeightChange;
- (BOOL)_hasBodyWidthChange;
- (BOOL)_hasPersonForFaceChangeWithoutCommittedPersonForFace:(id)face oldAssociatedPerson:(id)person;
- (BOOL)_hasSizeChange;
- (BOOL)_hasSizeOrTorsoDimensionChangeWithAssociatedAssetAndPerson;
- (BOOL)_isFaceAndTorso;
- (BOOL)_isFaceOnly;
- (BOOL)_isInsertedWithAssociatedAssetAndPerson;
- (BOOL)_isNeitherFaceNorTorso;
- (BOOL)_startTimeAndDurationAreValid;
- (BOOL)_validateForOperation:(id)operation error:(id *)error;
- (BOOL)isOrphan;
- (BOOL)isSyncableChange;
- (BOOL)isTorsoOnly;
- (BOOL)isValidForJournalPersistence;
- (BOOL)supportsCloudUpload;
- (BOOL)validForPersistenceChangedForChangedKeys:(id)keys;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (CGRect)gazeRect;
- (id)associatedAssetForFaceOrTorso:(BOOL)torso orTemporal:(BOOL)temporal;
- (id)associatedPersonForFaceOrTorso:(BOOL)torso orTemporal:(BOOL)temporal;
- (id)cplFullRecord;
- (id)debugLogDescription;
- (id)namingDescription;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)photosFaceRepresentationLocalIdentifier;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)syncDescription;
- (void)_fixUpTemporalRelationships;
- (void)_recordAssetPersonEdgeAndContainmentUpdateForAsset:(id)asset inContext:(id)context;
- (void)_recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:(id)values;
- (void)_touchPersonForPersistenceIfNeeded;
- (void)_updateFaceGroupIfNeeded;
- (void)_updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:(id)person;
- (void)_verifyAssetRelationship;
- (void)_verifyTorsoRelationships;
- (void)addClusterRejectedPerson:(id)person;
- (void)addRejectedPerson:(id)person;
- (void)addRejectedPersonNeedingFaceCrops:(id)crops;
- (void)awakeFromInsert;
- (void)delete;
- (void)fixAssetRelationshipsForFaceTorsoOrTemporal;
- (void)fixPersonRelationshipsForFaceTorsoOrTemporal;
- (void)migration_setAssetForTorso:(id)torso;
- (void)migration_setPersonForTorso:(id)torso;
- (void)prepareForDeletion;
- (void)removeAllPersonRelationships;
- (void)removeFaceprint;
- (void)setAssociatedAsset:(id)asset;
- (void)setAssociatedPerson:(id)person;
- (void)setEffectiveNameSource:(int)source;
- (void)setGazeRect:(CGRect)rect;
- (void)willSave;
@end

@implementation PLDetectedFace

- (void)migration_setPersonForTorso:(id)torso
{
  torsoCopy = torso;
  [(PLDetectedFace *)self willChangeValueForKey:@"personForTorso"];
  [(PLDetectedFace *)self setPrimitiveValue:torsoCopy forKey:@"personForTorso"];

  [(PLDetectedFace *)self didChangeValueForKey:@"personForTorso"];
}

- (void)migration_setAssetForTorso:(id)torso
{
  torsoCopy = torso;
  [(PLDetectedFace *)self willChangeValueForKey:@"assetForTorso"];
  [(PLDetectedFace *)self setPrimitiveValue:torsoCopy forKey:@"assetForTorso"];

  [(PLDetectedFace *)self didChangeValueForKey:@"assetForFace"];
}

- (void)setAssociatedAsset:(id)asset
{
  assetCopy = asset;
  v4 = ![(PLDetectedFace *)self _isTemporalFace];
  if (v4)
  {
    v5 = assetCopy;
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
    v6 = assetCopy;
  }

  [(PLDetectedFace *)self setAssetForFace:v5];
  [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:v6];
}

- (id)associatedAssetForFaceOrTorso:(BOOL)torso orTemporal:(BOOL)temporal
{
  temporalCopy = temporal;
  assetForFace = [(PLDetectedFace *)self assetForFace];
  if (!torso && [(PLDetectedFace *)self isTorsoOnly])
  {

    assetForFace = 0;
  }

  if (temporalCopy && !assetForFace)
  {
    assetForFace = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
  }

  return assetForFace;
}

- (void)setAssociatedPerson:(id)person
{
  personCopy = person;
  v4 = ![(PLDetectedFace *)self _isTemporalFace];
  if (v4)
  {
    v5 = personCopy;
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
    v6 = personCopy;
  }

  [(PLDetectedFace *)self setPersonForFace:v5];
  [(PLDetectedFace *)self setPersonForTemporalDetectedFaces:v6];
}

- (id)associatedPersonForFaceOrTorso:(BOOL)torso orTemporal:(BOOL)temporal
{
  temporalCopy = temporal;
  personForFace = [(PLDetectedFace *)self personForFace];
  if (!torso && [(PLDetectedFace *)self isTorsoOnly])
  {

    personForFace = 0;
  }

  if (temporalCopy && !personForFace)
  {
    personForFace = [(PLDetectedFace *)self personForTemporalDetectedFaces];
  }

  return personForFace;
}

- (void)setGazeRect:(CGRect)rect
{
  v4 = [objc_opt_class() stringFromGazeRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  [(PLDetectedFace *)self setGazeRectString:v4];
}

- (CGRect)gazeRect
{
  v3 = objc_opt_class();
  gazeRectString = [(PLDetectedFace *)self gazeRectString];
  [v3 cgRectFromGazeRectString:gazeRectString];
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

- (void)setEffectiveNameSource:(int)source
{
  v3 = *&source;
  [(PLDetectedFace *)self setNameSource:?];
  if (v3 != 2)
  {

    [(PLDetectedFace *)self setCloudNameSource:v3];
  }
}

- (void)addClusterRejectedPerson:(id)person
{
  personCopy = person;
  v5 = [(PLDetectedFace *)self mutableSetValueForKey:@"clusterRejectedPersons"];
  [v5 addObject:personCopy];
}

- (void)addRejectedPersonNeedingFaceCrops:(id)crops
{
  cropsCopy = crops;
  if ([cropsCopy verifiedType])
  {
    v5 = [(PLDetectedFace *)self mutableSetValueForKey:@"rejectedPersonsNeedingFaceCrops"];
    [v5 addObject:cropsCopy];
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

- (void)addRejectedPerson:(id)person
{
  personCopy = person;
  rejectedPersons = [(PLDetectedFace *)self rejectedPersons];
  v6 = [rejectedPersons mutableCopy];

  [v6 addObject:personCopy];
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
  uuid = [(PLDetectedFace *)self uuid];
  [v3 appendName:@"uuid" object:uuid];

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
  debugLogDescription = [v21 debugLogDescription];
  [v3 appendName:@"person" object:debugLogDescription];

  personBeingKeyFace = [(PLDetectedFace *)self personBeingKeyFace];
  debugLogDescription2 = [personBeingKeyFace debugLogDescription];
  [v3 appendName:@"personBeingKeyFace" object:debugLogDescription2];

  [v3 appendName:@"nameSource" integerValue:{-[PLDetectedFace nameSource](self, "nameSource")}];
  [v3 appendName:@"cloudLocalState" integerValue:{-[PLDetectedFace cloudLocalState](self, "cloudLocalState")}];
  v25 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:1];
  uuid2 = [v25 uuid];
  [v3 appendName:@"asset" object:uuid2];

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
  gazeRectString = [(PLDetectedFace *)self gazeRectString];
  [v3 appendName:@"gazeRect" object:gazeRectString];

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

  thumbnailIdentifier = [(PLDetectedFace *)self thumbnailIdentifier];
  [v3 appendName:@"thumbID" object:thumbnailIdentifier];

  rejectedPersons = [(PLDetectedFace *)self rejectedPersons];
  v36 = [rejectedPersons _pl_map:&__block_literal_global_28911];

  [v3 appendName:@"rejectedPersons" object:v36];
  detectionTraits = [(PLDetectedFace *)self detectionTraits];
  v38 = [detectionTraits _pl_map:&__block_literal_global_251];

  [v3 appendName:@"detectionTraits" object:v38];
  build = [v3 build];

  return build;
}

- (void)removeFaceprint
{
  faceprint = [(PLDetectedFace *)self faceprint];
  [faceprint setFace:0];
  managedObjectContext = [faceprint managedObjectContext];
  [managedObjectContext deleteObject:faceprint];
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

- (void)_recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:(id)values
{
  valuesCopy = values;
  v4 = objc_autoreleasePoolPush();
  if (![(PLDetectedFace *)self _faceIsDeletedBecauseAssetForFaceIsDeleted])
  {
    managedObjectContext = [(PLDetectedFace *)self managedObjectContext];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !MEMORY[0x19EAEE520]())
    {
      goto LABEL_9;
    }

    assetForFace = [(PLDetectedFace *)self assetForFace];
    v7 = [valuesCopy objectForKey:@"personForFace"];
    v8 = [(PLManagedObject *)self pl_committedValueForKey:@"personForFace"];
    v9 = [valuesCopy objectForKey:@"assetForFace"];
    if ([(PLDetectedFace *)self _isInsertedWithAssociatedAssetAndPerson]|| [(PLDetectedFace *)self _hasSizeOrTorsoDimensionChangeWithAssociatedAssetAndPerson]|| [(PLDetectedFace *)self _hasPersonForFaceChangeWithoutCommittedPersonForFace:v7 oldAssociatedPerson:v8])
    {
      [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:assetForFace inContext:managedObjectContext];
      goto LABEL_8;
    }

    if ([(PLDetectedFace *)self isUpdated]&& v9 && ([(PLDetectedFace *)self personForFace], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 | v8, v10, v11))
    {
      null = [MEMORY[0x1E695DFB0] null];
      v13 = null;
      if (v9 == null)
      {
      }

      else
      {
        personForFace = [(PLDetectedFace *)self personForFace];

        if (personForFace)
        {
          [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v9 inContext:managedObjectContext];
        }
      }

      v21 = [(PLManagedObject *)self pl_committedValueForKey:@"assetForFace"];
      v24 = PLNullToNil();

      if (v24)
      {
        [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v21 inContext:managedObjectContext];
      }
    }

    else
    {
      if ([(PLDetectedFace *)self isUpdated]&& v7 && assetForFace && v8)
      {
        delayedSaveActions = [managedObjectContext delayedSaveActions];
        [delayedSaveActions recordAssetPersonEdgeUpdateNeededForAsset:assetForFace];

        null2 = [MEMORY[0x1E695DFB0] null];

        if (v7 != null2)
        {
          delayedSaveActions2 = [managedObjectContext delayedSaveActions];
          [delayedSaveActions2 recordSocialGroupContainmentUpdateNeededForPerson:v7 andAsset:assetForFace];
        }

        mergeTargetPerson = [v8 mergeTargetPerson];
        v19 = PLNullToNil();

        if (!v19)
        {
          delayedSaveActions3 = [managedObjectContext delayedSaveActions];
          [delayedSaveActions3 recordSocialGroupContainmentUpdateNeededForPerson:v8 andAsset:assetForFace];
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
        [(PLDetectedFace *)self _recordAssetPersonEdgeAndContainmentUpdateForAsset:v21 inContext:managedObjectContext];
      }
    }

    goto LABEL_8;
  }

LABEL_10:
  objc_autoreleasePoolPop(v4);
}

- (void)_updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:(id)person
{
  personCopy = person;
  v4 = PLNullToNil();
  if (v4 && (v5 = v4, v6 = [personCopy detectionType], v7 = -[PLDetectedFace detectionType](self, "detectionType"), v5, v6 != v7))
  {
    [personCopy updateDetectionTypeIfNeeded];
  }

  else if ([(PLDetectedFace *)self isInserted])
  {
    personForFace = [(PLDetectedFace *)self personForFace];
    if (personForFace)
    {
      v9 = personForFace;
      personForFace2 = [(PLDetectedFace *)self personForFace];
      detectionType = [personForFace2 detectionType];
      detectionType2 = [(PLDetectedFace *)self detectionType];

      if (detectionType != detectionType2)
      {
        personForFace3 = [(PLDetectedFace *)self personForFace];
        [personForFace3 updateDetectionTypeIfNeeded];
      }
    }
  }
}

- (void)_recordAssetPersonEdgeAndContainmentUpdateForAsset:(id)asset inContext:(id)context
{
  contextCopy = context;
  assetCopy = asset;
  delayedSaveActions = [contextCopy delayedSaveActions];
  [delayedSaveActions recordAssetPersonEdgeUpdateNeededForAsset:assetCopy];

  delayedSaveActions2 = [contextCopy delayedSaveActions];

  [delayedSaveActions2 recordSocialGroupContainmentUpdateNeededForAsset:assetCopy];
}

- (BOOL)_hasBodyHeightChange
{
  changedValues = [(PLDetectedFace *)self changedValues];
  v3 = [changedValues objectForKey:@"bodyHeight"];
  v4 = PLNullToNil();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_hasBodyWidthChange
{
  changedValues = [(PLDetectedFace *)self changedValues];
  v3 = [changedValues objectForKey:@"bodyWidth"];
  v4 = PLNullToNil();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_hasSizeChange
{
  changedValues = [(PLDetectedFace *)self changedValues];
  v3 = [changedValues objectForKey:@"size"];
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

  personForFace = [(PLDetectedFace *)self personForFace];
  if (personForFace)
  {
    assetForFace = [(PLDetectedFace *)self assetForFace];
    if (assetForFace)
    {
      _hasBodyHeightChange = [(PLDetectedFace *)self _hasSizeChange]|| [(PLDetectedFace *)self _hasBodyWidthChange]|| [(PLDetectedFace *)self _hasBodyHeightChange];
    }

    else
    {
      _hasBodyHeightChange = 0;
    }
  }

  else
  {
    _hasBodyHeightChange = 0;
  }

  return _hasBodyHeightChange;
}

- (BOOL)_hasPersonForFaceChangeWithoutCommittedPersonForFace:(id)face oldAssociatedPerson:(id)person
{
  isUpdated = [(PLDetectedFace *)self isUpdated];
  v8 = 0;
  if (!person && face && isUpdated)
  {
    assetForFace = [(PLDetectedFace *)self assetForFace];
    v8 = assetForFace != 0;
  }

  return v8;
}

- (BOOL)_isInsertedWithAssociatedAssetAndPerson
{
  if (![(PLDetectedFace *)self isInserted])
  {
    return 0;
  }

  personForFace = [(PLDetectedFace *)self personForFace];
  if (personForFace)
  {
    assetForFace = [(PLDetectedFace *)self assetForFace];
    v5 = assetForFace != 0;
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
  firstObject = [v3 firstObject];

  v5 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForTorso"];
  firstObject2 = [v5 firstObject];

  if (firstObject)
  {
    assetForTorso = [(PLDetectedFace *)self assetForTorso];
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      uuid = [(PLDetectedFace *)self uuid];
      uuid2 = [assetForTorso uuid];
      v15 = 138543618;
      v16 = uuid;
      v17 = 2114;
      v18 = uuid2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "assetForTorso is unexpected set on face %{public}@ to %{public}@", &v15, 0x16u);
    }
  }

  if (firstObject2)
  {
    personForTorso = [(PLDetectedFace *)self personForTorso];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      uuid3 = [(PLDetectedFace *)self uuid];
      personUUID = [personForTorso personUUID];
      v15 = 138543618;
      v16 = uuid3;
      v17 = 2114;
      v18 = personUUID;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "personForTorso is unexpected set on face %{public}@ to %{public}@", &v15, 0x16u);
    }
  }
}

- (void)_fixUpTemporalRelationships
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForFace"];
  firstObject = [v3 firstObject];

  v5 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"assetForTemporalDetectedFaces"];
  firstObject2 = [v5 firstObject];

  v7 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForFace"];
  firstObject3 = [v7 firstObject];

  v9 = [(PLDetectedFace *)self objectIDsForRelationshipNamed:@"personForTemporalDetectedFaces"];
  firstObject4 = [v9 firstObject];

  if ([(PLDetectedFace *)self _isTemporalFace])
  {
    if (firstObject | firstObject3)
    {
      if (!firstObject2 && firstObject)
      {
        assetForFace = [(PLDetectedFace *)self assetForFace];
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          uuid = [(PLDetectedFace *)self uuid];
          uuid2 = [assetForFace uuid];
          v26 = 138543618;
          v27 = uuid;
          v28 = 2114;
          v29 = uuid2;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up temporal face %{public}@, moving asset %{public}@ to temporal", &v26, 0x16u);
        }

        [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:assetForFace];
        [(PLDetectedFace *)self setAssetForFace:0];
      }

      if (!firstObject4 && firstObject3)
      {
        personForFace = [(PLDetectedFace *)self personForFace];
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          uuid3 = [(PLDetectedFace *)self uuid];
          personUUID = [personForFace personUUID];
          v26 = 138543618;
          v27 = uuid3;
          v28 = 2114;
          v29 = personUUID;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up temporal face %{public}@, moving person %{public}@ to temporal", &v26, 0x16u);
        }

        [(PLDetectedFace *)self setPersonForTemporalDetectedFaces:personForFace];
        [(PLDetectedFace *)self setPersonForFace:0];
LABEL_24:
      }
    }
  }

  else if (firstObject2 | firstObject4)
  {
    if (!firstObject && firstObject2)
    {
      assetForTemporalDetectedFaces = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        uuid4 = [(PLDetectedFace *)self uuid];
        uuid5 = [assetForTemporalDetectedFaces uuid];
        v26 = 138543618;
        v27 = uuid4;
        v28 = 2114;
        v29 = uuid5;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up still face %{public}@, moving asset %{public}@ from temporal", &v26, 0x16u);
      }

      [(PLDetectedFace *)self setAssetForFace:assetForTemporalDetectedFaces];
      [(PLDetectedFace *)self setAssetForTemporalDetectedFaces:0];
    }

    if (!firstObject3 && firstObject4)
    {
      personForFace = [(PLDetectedFace *)self personForTemporalDetectedFaces];
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid6 = [(PLDetectedFace *)self uuid];
        personUUID2 = [personForFace personUUID];
        v26 = 138543618;
        v27 = uuid6;
        v28 = 2114;
        v29 = personUUID2;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "PLDetectedFace validation fixing up still face %{public}@, moving person %{public}@ from temporal", &v26, 0x16u);
      }

      [(PLDetectedFace *)self setPersonForFace:personForFace];
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
        selfCopy = self;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Face unexpectedly has no asset: %@", buf, 0xCu);
      }
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults BOOLForKey:@"EnableFaceAssertions"];

    if (v10)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:447 description:{@"Face unexpectedly has no asset: %@", self}];
    }
  }
}

- (BOOL)isOrphan
{
  assetForFace = [(PLDetectedFace *)self assetForFace];
  if (assetForFace)
  {
    v4 = 0;
  }

  else
  {
    assetForTemporalDetectedFaces = [(PLDetectedFace *)self assetForTemporalDetectedFaces];
    if (assetForTemporalDetectedFaces)
    {
      v4 = 0;
    }

    else
    {
      faceCrop = [(PLDetectedFace *)self faceCrop];
      v4 = faceCrop == 0;
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
  entity = [(PLDetectedFace *)self entity];
  v4 = +[PLPerson entity];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  relationshipsByName = [entity relationshipsByName];
  allValues = [relationshipsByName allValues];

  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        destinationEntity = [v11 destinationEntity];
        v13 = [destinationEntity isEqual:v4];

        if (v13)
        {
          name = [v11 name];
          [(PLDetectedFace *)self setValue:0 forKey:name];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    faceGroup = [(PLDetectedFace *)self faceGroup];
    associatedPerson = PLBackendGetLog();
    v6 = os_log_type_enabled(associatedPerson, OS_LOG_TYPE_DEBUG);
    if (faceGroup)
    {
      if (v6)
      {
        pl_shortDescription = [(NSManagedObject *)self pl_shortDescription];
        v10 = 138412546;
        v11 = pl_shortDescription;
        v12 = 2112;
        v13 = faceGroup;
        _os_log_impl(&dword_19BF1F000, associatedPerson, OS_LOG_TYPE_DEBUG, "Moving face %@ to algorithmic face group: %@", &v10, 0x16u);
      }

      associatedPerson = [faceGroup associatedPerson];
      mutableFaces = [associatedPerson mutableFaces];
      if (([mutableFaces containsObject:self] & 1) == 0)
      {
        [mutableFaces addObject:self];
      }
    }

    else if (v6)
    {
      pl_shortDescription2 = [(NSManagedObject *)self pl_shortDescription];
      v10 = 138412290;
      v11 = pl_shortDescription2;
      _os_log_impl(&dword_19BF1F000, associatedPerson, OS_LOG_TYPE_DEBUG, "Unable to find algorithmic face group for face: %@", &v10, 0xCu);
    }
  }
}

- (void)_touchPersonForPersistenceIfNeeded
{
  pathManager = [(PLManagedObject *)self pathManager];
  isDCIM = [pathManager isDCIM];

  if (isDCIM)
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
  changedValues = [(PLDetectedFace *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"centerX"];
  v5 = [changedValues objectForKey:@"personForFace"];
  if ((_os_feature_enabled_impl() & 1) != 0 || (-[PLManagedObject photoLibrary](self, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isUnitTesting], v6, v7))
  {
    [(PLDetectedFace *)self _recordAssetPersonEdgeUpdatesAndSocialGroupUpdatesIfNeededWithChangedValues:changedValues];
  }

  [(PLDetectedFace *)self _updatePersonForFaceDetectionTypeIfNeededWithPossibleNewPerson:v5];
  if (!v5)
  {
    goto LABEL_7;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v9 = null;
  if (v5 == null)
  {
  }

  else
  {
    verifiedType = [v5 verifiedType];

    if (verifiedType)
    {
LABEL_7:
      trainingType = [(PLDetectedFace *)self trainingType];
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

  trainingType = [(PLDetectedFace *)self trainingType];
  null2 = [MEMORY[0x1E695DFB0] null];
  v12 = [v5 isEqual:null2] ^ 1;

LABEL_14:
  if (trainingType)
  {
    v14 = v5 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 || v12)
  {
    faceGroup = [(PLDetectedFace *)self faceGroup];
    v16 = faceGroup;
    if (faceGroup && [faceGroup personBuilderState] != 1)
    {
      [v16 setPersonBuilderState:1];
    }
  }

  if (v5)
  {
    personBeingKeyFace = [(PLDetectedFace *)self personBeingKeyFace];
    if (personBeingKeyFace)
    {
      v18 = personBeingKeyFace;
      personBeingKeyFace2 = [(PLDetectedFace *)self personBeingKeyFace];
      v20 = [personBeingKeyFace2 isEqual:v5];

      if ((v20 & 1) == 0)
      {
        [(PLDetectedFace *)self setPersonBeingKeyFace:0];
      }
    }
  }

  v21 = [changedValues objectForKey:@"rejectedPersons"];

  if (v21)
  {
    rejectedPersons = [(PLDetectedFace *)self rejectedPersons];
    clusterRejectedPersons = [(PLDetectedFace *)self clusterRejectedPersons];
    v24 = [clusterRejectedPersons mutableCopy];
    [v24 intersectSet:rejectedPersons];
    if ((clusterRejectedPersons == 0) != (v24 == 0) || ![clusterRejectedPersons isEqualToSet:v24] || (objc_msgSend(v24, "isEqualToSet:", clusterRejectedPersons) & 1) == 0)
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
      changedValues2 = [v26 changedValues];
      v28 = [changedValues2 objectForKeyedSubscript:@"modificationDate"];

      if (!v28)
      {
        date = [MEMORY[0x1E695DF00] date];
        [v26 setModificationDate:date];
      }
    }
  }

  if (!v4)
  {
    v30 = [changedValues objectForKeyedSubscript:@"centerY"];
    if (v30)
    {
    }

    else
    {
      v31 = [changedValues objectForKeyedSubscript:@"size"];

      if (!v31)
      {
        goto LABEL_44;
      }
    }
  }

  v32 = [(PLDetectedFace *)self associatedAssetForFaceOrTorso:1 orTemporal:1];
  [v32 revalidateFaceAreaPoints];

LABEL_44:
  managedObjectContext = [(PLDetectedFace *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(PLDetectedFace *)self isDeleted]& 1) == 0)
    {
      [PLDelayedSearchIndexUpdates recordDetectedFaceIfNeeded:self];
    }

    [(PLDetectedFace *)self _updateFaceGroupIfNeeded];
    [(PLDetectedFace *)self _verifyAssetRelationship];
    v34 = [changedValues objectForKey:@"nameSource"];
    v35 = v34;
    if (v34)
    {
      integerValue = [v34 integerValue];
      v44[0] = @"nameSource";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      v42 = changedValues;
      v38 = v37 = v4;
      v39 = [(PLDetectedFace *)self committedValuesForKeys:v38];
      v40 = [v39 objectForKey:@"nameSource"];
      integerValue2 = [v40 integerValue];

      v4 = v37;
      changedValues = v42;
      if (integerValue == 5 || (integerValue & 0xFFFFFFFFFFFFFFFDLL) == 1 || integerValue2 == 5 || (integerValue2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
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
  managedObjectContext = [(PLDetectedFace *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = managedObjectContext;
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

- (BOOL)_validateForOperation:(id)operation error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  _startTimeAndDurationAreValid = [(PLDetectedFace *)self _startTimeAndDurationAreValid];
  if (!_startTimeAndDurationAreValid)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      pl_shortDescription = [(NSManagedObject *)self pl_shortDescription];
      [(PLDetectedFace *)self startTime];
      v11 = v10;
      [(PLDetectedFace *)self duration];
      *buf = 138544130;
      v27 = pl_shortDescription;
      v28 = 2114;
      v29 = operationCopy;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "PLDetectedFace %{public}@ failed validation for %{public}@, startTime: %g, duration: %g", buf, 0x2Au);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v24 = *MEMORY[0x1E696A278];
      v15 = MEMORY[0x1E696AEC0];
      [(PLDetectedFace *)self startTime];
      v17 = v16;
      [(PLDetectedFace *)self duration];
      v19 = [v15 stringWithFormat:@"There was a validation issue when attempting to %@ PLDetectedFace (startTime: %g, duration: %g)", operationCopy, v17, v18];
      v25 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v13 errorWithDomain:v14 code:46502 userInfo:v20];

      v22 = v21;
      *error = v21;
    }
  }

  return _startTimeAndDurationAreValid;
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = PLDetectedFace;
  v5 = [(PLDetectedFace *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLDetectedFace *)self _validateForOperation:@"update" error:update];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLDetectedFace;
  v5 = [(PLDetectedFace *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLDetectedFace *)self _validateForOperation:@"insert" error:insert];
  }

  return v5;
}

- (void)delete
{
  managedObjectContext = [(PLDetectedFace *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLDetectedFace;
  [(PLDetectedFace *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLDetectedFace *)self setUuid:uUIDString];
}

+ (id)assetIDsWithAllPersonsFromPersonIDs:(id)ds inContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  [v9 becomeCurrentWithPendingUnitCount:1];
  v10 = [self personIDsByAssetForPersonsVisibleWithPersonIDs:dsCopy inContext:contextCopy];
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
  v13 = dsCopy;
  v23 = v13;
  v14 = array;
  v24 = v14;
  [v10 enumerateKeysAndObjectsUsingBlock:&v18];
  [v9 resignCurrent];
  if (*(v27 + 24) == 1)
  {
    array2 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array2 = v14;
  }

  v16 = array2;

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

+ (id)personIDsByAssetForPersonsVisibleWithPersonIDs:(id)ds inContext:(id)context
{
  v41[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLDetectedFace entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v41[0] = @"assetForFace";
  v41[1] = @"personForFace";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [v9 setPropertiesToFetch:v10];

  [v9 setResultType:2];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace", dsCopy];
  [v9 setPredicate:dsCopy];

  v37 = 0;
  v12 = [contextCopy executeFetchRequest:v9 error:&v37];
  v13 = v37;
  v14 = v13;
  if (v12)
  {
    v28 = v13;
    v30 = dsCopy;
    v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v12, "count")}];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PLDetectedFace_personIDsByAssetForPersonsVisibleWithPersonIDs_inContext___block_invoke;
    aBlock[3] = &unk_1E756A750;
    v27 = dictionary;
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
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];

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
    dictionary2 = v27;
LABEL_12:

    dsCopy = v30;
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

    dictionary2 = 0;
  }

  return dictionary2;
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

+ (id)predicateForFetchType:(int64_t)type
{
  if (type == 1)
  {
    v3 = +[PLDetectedFace predicateToExcludeFaceDetection];
  }

  else if (type)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[PLDetectedFace predicateToExcludeBodyOnlyDetection];
  }

  return v3;
}

+ (id)predicateForIncludedDetectionTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy containsObject:&unk_1F0FBC148])
  {
    v4 = [typesCopy containsObject:&unk_1F0FBC160];

    if (v4)
    {
      typesCopy = 0;
    }

    else
    {
      typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"detectionType", &unk_1F0FBC148];
    }
  }

  else
  {
    typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", typesCopy];
  }

  return typesCopy;
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

+ (void)batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs:(id)ds library:(id)library completion:(id)completion
{
  dsCopy = ds;
  libraryCopy = library;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:864 description:@"Completion handler is mandatory"];

    if (libraryCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    goto LABEL_3;
  }

  if (!libraryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PLDetectedFace_batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs_library_completion___block_invoke;
  v17[3] = &unk_1E7576078;
  v18 = libraryCopy;
  v19 = dsCopy;
  v20 = completionCopy;
  selfCopy = self;
  v12 = completionCopy;
  v13 = dsCopy;
  v14 = libraryCopy;
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

+ (void)batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate fetchType:(int64_t)type library:(id)library completion:(id)completion
{
  dsCopy = ds;
  predicateCopy = predicate;
  libraryCopy = library;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:827 description:@"Completion handler is mandatory"];

    if (libraryCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDetectedFace.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    goto LABEL_3;
  }

  if (!libraryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__PLDetectedFace_batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs_predicate_fetchType_library_completion___block_invoke;
  v23[3] = &unk_1E7570538;
  v24 = libraryCopy;
  v25 = dsCopy;
  selfCopy = self;
  typeCopy = type;
  v26 = predicateCopy;
  v27 = completionCopy;
  v17 = completionCopy;
  v18 = predicateCopy;
  v19 = dsCopy;
  v20 = libraryCopy;
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

+ (id)stringFromGazeRect:(CGRect)rect
{
  __asm { FMOV            V4.2D, #-1.0 }

  if (*&rect.origin.x == _Q4 && *&rect.origin.y == *(&_Q4 + 1) && *&rect.size.width == _Q4 && *&rect.size.height == *(&_Q4 + 1))
  {
    v10 = 0;
  }

  else
  {
    v10 = DCIM_NSStringFromCGRect();
  }

  return v10;
}

+ (CGRect)cgRectFromGazeRectString:(id)string
{
  if (string)
  {
    return NSRectFromString(string);
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

+ (PLDetectedFace)detectedFaceWithUUID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E695D5E0];
    entityName = [self entityName];
    v11 = [v9 fetchRequestWithEntityName:entityName];

    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@", dCopy];
    [v11 setPredicate:dCopy];
    [v11 setFetchLimit:1];
    v16 = 0;
    v13 = [contextCopy executeFetchRequest:v11 error:&v16];
    if ([v13 count])
    {
      firstObject = [v13 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetchDetectedFacesForAssetObjectID:(id)d managedObjectContext:(id)context
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  dCopy = d;
  v8 = +[PLDetectedFace entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR %K == %@", @"assetForFace", dCopy, @"assetForTemporalDetectedFaces", dCopy];

  [v9 setPredicate:dCopy];
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
  v13 = [contextCopy executeFetchRequest:v9 error:&v17];

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

- (BOOL)validForPersistenceChangedForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy containsObject:@"manual"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keysCopy containsObject:@"nameSource"];
  }

  return v4;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLDetectedFace *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLDetectedFaceJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  uuid = [(PLDetectedFace *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

- (BOOL)isValidForJournalPersistence
{
  if (([(PLDetectedFace *)self manual]& 1) == 0 && [(PLDetectedFace *)self nameSource]!= 3 && [(PLDetectedFace *)self nameSource]!= 1 && [(PLDetectedFace *)self nameSource]!= 5)
  {
    return 0;
  }

  assetForFace = [(PLDetectedFace *)self assetForFace];
  v4 = assetForFace != 0;

  return v4;
}

- (id)photosFaceRepresentationLocalIdentifier
{
  v4 = NSClassFromString(&cfstr_Phface.isa);
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:306 description:@"photosFaceLocalIdentifier: cannot load PHFace class."];
  }

  uuid = [(PLDetectedFace *)self uuid];
  v6 = [(objc_class *)v4 localIdentifierWithUUID:uuid];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:206 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (id)scopedIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:201 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (id)scopeIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectedFace+CPL.m" lineNumber:196 description:{@"Faces don't produce a change record, they are appended to assets if they are synced at all"}];

  return 0;
}

- (BOOL)isSyncableChange
{
  v16[1] = *MEMORY[0x1E69E9840];
  changedValues = [(PLDetectedFace *)self changedValues];
  v4 = [changedValues objectForKey:@"nameSource"];

  if (v4)
  {
    v16[0] = @"nameSource";
    LOBYTE(v4) = 1;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v6 = [(PLDetectedFace *)self committedValuesForKeys:v5];

    v7 = [v6 objectForKey:@"nameSource"];
    intValue = [v7 intValue];

    if ((PLNameSourceIsSyncable([(PLDetectedFace *)self nameSource]) & 1) == 0)
    {
      LOBYTE(v4) = PLNameSourceIsSyncable(intValue);
    }
  }

  v9 = [changedValues objectForKey:@"rejectedPersons"];

  v10 = [changedValues objectForKey:@"personBeingKeyFace"];
  if (v10)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v12 = v10 == null || [v10 keyFacePickSource] == 1;
  }

  else
  {
    v12 = 0;
  }

  isTrainingFace = [(PLDetectedFace *)self isTrainingFace];
  if ((isTrainingFace | v4))
  {
    v14 = ~isTrainingFace;
  }

  else
  {
    v14 = v9 != 0 || v12;
  }

  return v14 & 1;
}

- (BOOL)supportsCloudUpload
{
  serverSupportsVision = [MEMORY[0x1E6994A80] serverSupportsVision];
  if (serverSupportsVision)
  {
    LOBYTE(serverSupportsVision) = ![(PLDetectedFace *)self isTrainingFace];
  }

  return serverSupportsVision;
}

+ (void)resetCloudStateInPhotoLibrary:(id)library
{
  v20[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v8 = [v6 initWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"cloudLocalState", 0];
  [v8 setResultType:2];
  v19 = @"cloudLocalState";
  v20[0] = &unk_1F0FBE9C8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v8 setPropertiesToUpdate:v10];

  [v8 setPredicate:v9];
  managedObjectContext = [libraryCopy managedObjectContext];
  v16 = 0;
  v12 = [managedObjectContext executeRequest:v8 error:&v16];
  v13 = v16;

  if (v12)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        result = [v12 result];
        *buf = 138412290;
        v18 = result;
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

+ (int64_t)resetAssetForAllSyncableFacesInManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 1];
  photoLibrary = [contextCopy photoLibrary];
  v9 = [self _facesMatchingPredicate:v7 limit:0 inPhotoLibrary:photoLibrary];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLDetectedFace_CPL__resetAssetForAllSyncableFacesInManagedObjectContext_error___block_invoke;
  v14[3] = &unk_1E7575218;
  v14[4] = &v15;
  v10 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v14];
  v11 = v16;
  if (v10)
  {
    v16[3] = 0x7FFFFFFFFFFFFFFFLL;
    if (error)
    {
      v10 = v10;
      *error = v10;
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

+ (id)syncableFacesToUploadInitiallyInLibrary:(id)library limit:(unint64_t)limit
{
  libraryCopy = library;
  _syncableFacesToUploadInitiallyPredicate = [self _syncableFacesToUploadInitiallyPredicate];
  v8 = [self _facesMatchingPredicate:_syncableFacesToUploadInitiallyPredicate limit:limit inPhotoLibrary:libraryCopy];

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
  syncableFacesPredicate = [self syncableFacesPredicate];
  v13[1] = syncableFacesPredicate;
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

+ (id)_facesMatchingPredicate:(id)predicate limit:(unint64_t)limit inPhotoLibrary:(id)library
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v14 = [v12 fetchRequestWithEntityName:entityName];

  if (predicateCopy)
  {
    [v14 setPredicate:predicateCopy];
  }

  [v14 setFetchBatchSize:100];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v19 = 0;
  v15 = [managedObjectContext executeFetchRequest:v14 error:&v19];
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

+ (id)findExistingFaceMatchingDimension:(id)dimension inFaces:(id)faces ignoreSourceAssetDimensions:(BOOL)dimensions
{
  dimensionsCopy = dimensions;
  v24 = *MEMORY[0x1E69E9840];
  dimensionCopy = dimension;
  facesCopy = faces;
  v17 = 0;
  v9 = [MEMORY[0x1E69C07D8] sortedViableMergeCandidateFacesFor:dimensionCopy from:facesCopy ignoreSourceAssetDimensions:dimensionsCopy matchScores:&v17];
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
      v19 = dimensionCopy;
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
  v12 = [MEMORY[0x1E69C07D8] sortedViableMergeCandidateTorsosFor:dimensionCopy from:facesCopy ignoreSourceAssetDimensions:dimensionsCopy matchScores:&v16];
  v13 = v16;

  if ([v12 count] >= 2 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = dimensionCopy;
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
  firstObject = [v9 firstObject];

  return firstObject;
}

@end