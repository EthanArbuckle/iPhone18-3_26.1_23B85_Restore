@interface PLPersistedPersonFaceMetadata
+ (id)_detectedFacePropertiesToFetch;
+ (id)_detectedFaceRelationshipKeyPathsToPrefetch;
+ (id)_migrateDetectedFaces:(id)faces forPersonMetadata:(id)metadata fromVersion:(unint64_t)version;
+ (id)_persistedFaceMetadataWithDetectedFace:(id)face isKeyFace:(BOOL)keyFace isClusterRejected:(BOOL)rejected;
+ (id)_persistedFacesWithUnarchiver:(id)unarchiver key:(id)key;
+ (void)enumerateMatchedAssetsWithMetadata:(id)metadata inContext:(id)context withBlock:(id)block;
- (BOOL)isDeferrable;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context forConfirmedPersonUUID:(id)d diff:(id *)diff;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context forRejectedPersonUUID:(id)d diff:(id *)diff;
- (NSString)description;
- (PLPersistedPersonFaceMetadata)initWithCoder:(id)coder;
- (id)_identifier;
- (id)_insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)context personUUID:(id)d isRejected:(BOOL)rejected;
- (id)jsonDictionary;
- (id)matchingFaceInManagedObejctContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPersistedPersonFaceMetadata

- (BOOL)isDeferrable
{
  [(PLPersistedPersonFaceMetadata *)self centerX];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(PLPersistedPersonFaceMetadata *)self bodyCenterX];
  if (v4 != 0.0)
  {
    return 0;
  }

  detectionType = [(PLPersistedPersonFaceMetadata *)self detectionType];
  if (detectionType)
  {
    detectionType2 = [(PLPersistedPersonFaceMetadata *)self detectionType];
    v7 = [detectionType2 integerValue] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)jsonDictionary
{
  v34[15] = *MEMORY[0x1E69E9840];
  v33[0] = @"assetUUID";
  assetUUID = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  v32 = assetUUID;
  if (assetUUID)
  {
    v4 = assetUUID;
  }

  else
  {
    v4 = &stru_1F0F06D80;
  }

  v34[0] = v4;
  v33[1] = @"assetCloudGUID";
  assetCloudGUID = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  v31 = assetCloudGUID;
  if (assetCloudGUID)
  {
    v6 = assetCloudGUID;
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  v34[1] = v6;
  v33[2] = @"centerX";
  v7 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self centerX];
  v30 = [v7 numberWithDouble:?];
  v34[2] = v30;
  v33[3] = @"centerY";
  v8 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self centerY];
  v29 = [v8 numberWithDouble:?];
  v34[3] = v29;
  v33[4] = @"size";
  v9 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self size];
  v28 = [v9 numberWithDouble:?];
  v34[4] = v28;
  v33[5] = @"bodyCenterX";
  v10 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterX];
  v27 = [v10 numberWithDouble:?];
  v34[5] = v27;
  v33[6] = @"bodyCenterY";
  v11 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterY];
  v12 = [v11 numberWithDouble:?];
  v34[6] = v12;
  v33[7] = @"bodyWidth";
  v13 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self bodyWidth];
  v14 = [v13 numberWithDouble:?];
  v34[7] = v14;
  v33[8] = @"bodyHeight";
  v15 = MEMORY[0x1E696AD98];
  [(PLPersistedPersonFaceMetadata *)self bodyHeight];
  v16 = [v15 numberWithDouble:?];
  v34[8] = v16;
  v33[9] = @"detectionType";
  detectionType = [(PLPersistedPersonFaceMetadata *)self detectionType];
  v18 = detectionType;
  v19 = &unk_1F0FBDA98;
  if (detectionType)
  {
    v19 = detectionType;
  }

  v34[9] = v19;
  v33[10] = @"nameSource";
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")}];
  v34[10] = v20;
  v33[11] = @"cloudNameSource";
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata cloudNameSource](self, "cloudNameSource")}];
  v34[11] = v21;
  v33[12] = @"manual";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isManual](self, "isManual")}];
  v34[12] = v22;
  v33[13] = @"isKeyFace";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isRepresentative](self, "isRepresentative")}];
  v34[13] = v23;
  v33[14] = @"isClusterRejected";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isClusterRejected](self, "isClusterRejected")}];
  v34[14] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:15];

  return v25;
}

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context forRejectedPersonUUID:(id)d diff:(id *)diff
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [(PLPersistedPersonFaceMetadata *)self matchingFaceInManagedObejctContext:context];
  v10 = v9;
  if (v9)
  {
    rejectedPersons = [v9 rejectedPersons];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke;
    v26[3] = &unk_1E7571C60;
    v12 = dCopy;
    v27 = v12;
    v13 = [rejectedPersons objectsPassingTest:v26];
    anyObject = [v13 anyObject];

    if (anyObject)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      clusterRejectedPersons = [v10 clusterRejectedPersons];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke_2;
      v24[3] = &unk_1E7571C60;
      v25 = v12;
      v18 = [clusterRejectedPersons objectsPassingTest:v24];
      anyObject2 = [v18 anyObject];

      if ((anyObject2 != 0) != [(PLPersistedPersonFaceMetadata *)self isClusterRejected])
      {
        v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isClusterRejected](self, "isClusterRejected")}];
        [dictionary setObject:v20 forKey:@"isClusterRejected"];

        v21 = [MEMORY[0x1E696AD98] numberWithBool:anyObject2 != 0];
        [dictionary2 setObject:v21 forKey:@"isClusterRejected"];
      }

      if (diff)
      {
        v28[0] = @"metadata";
        v28[1] = @"library";
        v29[0] = dictionary;
        v29[1] = dictionary2;
        *diff = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      }

      if ([dictionary count])
      {
        v22 = 0;
      }

      else
      {
        v22 = [dictionary2 count] == 0;
      }
    }

    else
    {
      v22 = 0;
      if (diff)
      {
        *diff = 0;
      }
    }
  }

  else
  {
    v22 = 0;
    if (diff)
    {
      *diff = 0;
    }
  }

  return v22;
}

uint64_t __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personUUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personUUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context forConfirmedPersonUUID:(id)d diff:(id *)diff
{
  v32[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [(PLPersistedPersonFaceMetadata *)self matchingFaceInManagedObejctContext:context];
  if (v9)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    personForFace = [v9 personForFace];
    personUUID = [personForFace personUUID];
    IsEqual = PLObjectIsEqual();

    if ((IsEqual & 1) == 0)
    {
      [dictionary _pl_setNonNilObject:dCopy forKey:@"personUUID"];
      personForFace2 = [v9 personForFace];
      personUUID2 = [personForFace2 personUUID];
      [dictionary2 _pl_setNonNilObject:personUUID2 forKey:@"personUUID"];
    }

    nameSource = [(PLPersistedPersonFaceMetadata *)self nameSource];
    if (nameSource != [v9 nameSource])
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")}];
      [dictionary setObject:v18 forKey:@"nameSource"];

      v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "nameSource")}];
      [dictionary2 setObject:v19 forKey:@"nameSource"];
    }

    cloudNameSource = [(PLPersistedPersonFaceMetadata *)self cloudNameSource];
    if (cloudNameSource != [v9 cloudNameSource])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata cloudNameSource](self, "cloudNameSource")}];
      [dictionary setObject:v21 forKey:@"cloudNameSource"];

      v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "cloudNameSource")}];
      [dictionary2 setObject:v22 forKey:@"cloudNameSource"];
    }

    isManual = [(PLPersistedPersonFaceMetadata *)self isManual];
    if (isManual != [v9 manual])
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isManual](self, "isManual")}];
      [dictionary setObject:v24 forKey:@"manual"];

      v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "manual")}];
      [dictionary2 setObject:v25 forKey:@"manual"];
    }

    personBeingKeyFace = [v9 personBeingKeyFace];

    if ((personBeingKeyFace != 0) != [(PLPersistedPersonFaceMetadata *)self isRepresentative])
    {
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isRepresentative](self, "isRepresentative")}];
      [dictionary setObject:v27 forKey:@"isKeyFace"];

      v28 = [MEMORY[0x1E696AD98] numberWithBool:personBeingKeyFace != 0];
      [dictionary2 setObject:v28 forKey:@"isKeyFace"];
    }

    if (diff)
    {
      v31[0] = @"metadata";
      v31[1] = @"library";
      v32[0] = dictionary;
      v32[1] = dictionary2;
      *diff = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    }

    if ([dictionary count])
    {
      v29 = 0;
    }

    else
    {
      v29 = [dictionary2 count] == 0;
    }
  }

  else
  {
    v29 = 0;
    if (diff)
    {
      *diff = 0;
    }
  }

  return v29;
}

- (id)matchingFaceInManagedObejctContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[PLDetectedFace fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  assetUUID = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  v8 = [v6 predicateWithFormat:@"%K = %@", @"assetForFace.uuid", assetUUID];
  [v5 setPredicate:v8];

  [contextCopy executeFetchRequest:v5 error:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v14 centerX];
        v16 = v15;
        [(PLPersistedPersonFaceMetadata *)self centerX];
        if (vabdd_f64(v16, v17) < 0.001)
        {
          [v14 centerY];
          v19 = v18;
          [(PLPersistedPersonFaceMetadata *)self centerY];
          if (vabdd_f64(v19, v20) < 0.001)
          {
            [v14 size];
            v22 = v21;
            [(PLPersistedPersonFaceMetadata *)self size];
            if (vabdd_f64(v22, v23) < 0.001)
            {
              v24 = v14;
              goto LABEL_13;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_13:

  return v24;
}

- (id)_identifier
{
  v3 = MEMORY[0x1E696AEC0];
  assetCloudGUID = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  if (assetCloudGUID)
  {
    [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  }

  else
  {
    [(PLPersistedPersonFaceMetadata *)self assetUUID];
  }
  v5 = ;
  [(PLPersistedPersonFaceMetadata *)self size];
  v7 = v6;
  [(PLPersistedPersonFaceMetadata *)self centerX];
  v9 = v8;
  [(PLPersistedPersonFaceMetadata *)self centerY];
  v11 = [v3 stringWithFormat:@"%@%f%f%f", v5, v7, v9, v10];

  return v11;
}

- (id)_insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)context personUUID:(id)d isRejected:(BOOL)rejected
{
  rejectedCopy = rejected;
  contextCopy = context;
  dCopy = d;
  if ([(PLPersistedPersonFaceMetadata *)self isDeferrable])
  {
    v10 = [(PLManagedObject *)PLDeferredRebuildFace insertInManagedObjectContext:contextCopy];
    [(PLPersistedPersonFaceMetadata *)self centerX];
    [v10 setCenterX:?];
    [(PLPersistedPersonFaceMetadata *)self centerY];
    [v10 setCenterY:?];
    [(PLPersistedPersonFaceMetadata *)self size];
    [v10 setSize:?];
    [v10 setManual:{-[PLPersistedPersonFaceMetadata isManual](self, "isManual")}];
    [v10 setHidden:{-[PLPersistedPersonFaceMetadata isHidden](self, "isHidden")}];
    [v10 setNameSource:{-[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")}];
    [v10 setCloudNameSource:{-[PLPersistedPersonFaceMetadata cloudNameSource](self, "cloudNameSource")}];
    assetUUID = [(PLPersistedPersonFaceMetadata *)self assetUUID];
    [v10 setAssetUUID:assetUUID];

    assetCloudGUID = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
    [v10 setAssetCloudGUID:assetCloudGUID];

    [v10 setRejected:rejectedCopy];
    [v10 setClusterRejected:{-[PLPersistedPersonFaceMetadata isClusterRejected](self, "isClusterRejected")}];
    [v10 setPersonUUID:dCopy];
    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    [v10 setUuid:uUIDString];

    if ([(PLPersistedPersonFaceMetadata *)self faceAlgorithmVersion])
    {
      faceAlgorithmVersion = [(PLPersistedPersonFaceMetadata *)self faceAlgorithmVersion];
    }

    else
    {
      faceAlgorithmVersion = 1;
    }

    [v10 setFaceAlgorithmVersion:faceAlgorithmVersion];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)description
{
  v23.receiver = self;
  v23.super_class = PLPersistedPersonFaceMetadata;
  v3 = [(PLPersistedPersonFaceMetadata *)&v23 description];
  assetUUID = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  assetCloudGUID = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  [(PLPersistedPersonFaceMetadata *)self size];
  v7 = v6;
  [(PLPersistedPersonFaceMetadata *)self centerX];
  v9 = v8;
  [(PLPersistedPersonFaceMetadata *)self centerY];
  v11 = v10;
  [(PLPersistedPersonFaceMetadata *)self bodyCenterX];
  v13 = v12;
  [(PLPersistedPersonFaceMetadata *)self bodyCenterY];
  v15 = v14;
  [(PLPersistedPersonFaceMetadata *)self bodyWidth];
  v17 = v16;
  [(PLPersistedPersonFaceMetadata *)self bodyHeight];
  v19 = v18;
  detectionType = [(PLPersistedPersonFaceMetadata *)self detectionType];
  v21 = [v3 stringByAppendingFormat:@" face on %@ [%@] (face: %6.6f @ %6.6f, %6.6f) (body: %6.6fx%6.6f @ %6.6f, %6.6f) type:%d isKey:%d [manual:%d hidden:%d nameSource:%d]", assetUUID, assetCloudGUID, v7, v9, v11, v13, v15, v17, v19, objc_msgSend(detectionType, "intValue"), -[PLPersistedPersonFaceMetadata isRepresentative](self, "isRepresentative"), -[PLPersistedPersonFaceMetadata isManual](self, "isManual"), -[PLPersistedPersonFaceMetadata isHidden](self, "isHidden"), -[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")];

  return v21;
}

- (PLPersistedPersonFaceMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PLPersistedPersonFaceMetadata;
  v5 = [(PLPersistedPersonFaceMetadata *)&v12 init];
  [coderCopy decodeDoubleForKey:@"centerX"];
  [(PLPersistedPersonFaceMetadata *)v5 setCenterX:?];
  [coderCopy decodeDoubleForKey:@"centerY"];
  [(PLPersistedPersonFaceMetadata *)v5 setCenterY:?];
  [coderCopy decodeDoubleForKey:@"size"];
  [(PLPersistedPersonFaceMetadata *)v5 setSize:?];
  [coderCopy decodeDoubleForKey:@"bodyCenterX"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyCenterX:?];
  [coderCopy decodeDoubleForKey:@"bodyCenterY"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyCenterY:?];
  [coderCopy decodeDoubleForKey:@"bodyWidth"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyWidth:?];
  [coderCopy decodeDoubleForKey:@"bodyHeight"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyHeight:?];
  if ([coderCopy containsValueForKey:@"detectionType"])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(coderCopy, "decodeIntForKey:", @"detectionType"}];
    [(PLPersistedPersonFaceMetadata *)v5 setDetectionType:v6];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
  [(PLPersistedPersonFaceMetadata *)v5 setAssetUUID:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetCloudGUID"];
  [(PLPersistedPersonFaceMetadata *)v5 setAssetCloudGUID:v8];

  -[PLPersistedPersonFaceMetadata setHidden:](v5, "setHidden:", [coderCopy decodeBoolForKey:@"isHidden"]);
  -[PLPersistedPersonFaceMetadata setManual:](v5, "setManual:", [coderCopy decodeBoolForKey:@"isManual"]);
  -[PLPersistedPersonFaceMetadata setRepresentative:](v5, "setRepresentative:", [coderCopy decodeBoolForKey:@"isRepresentative"]);
  -[PLPersistedPersonFaceMetadata setFaceAlgorithmVersion:](v5, "setFaceAlgorithmVersion:", [coderCopy decodeInt32ForKey:@"faceAlgorithmVersion"]);
  if ([coderCopy containsValueForKey:@"isNameSourceAuto"])
  {
    v9 = [coderCopy decodeBoolForKey:@"isNameSourceAuto"] ^ 1;
  }

  else
  {
    v9 = [coderCopy decodeIntegerForKey:@"nameSource"];
  }

  [(PLPersistedPersonFaceMetadata *)v5 setNameSource:v9];
  if ([coderCopy containsValueForKey:@"cloudNameSource"])
  {
    nameSource = [coderCopy decodeIntForKey:@"cloudNameSource"];
  }

  else
  {
    nameSource = [(PLPersistedPersonFaceMetadata *)v5 nameSource];
  }

  [(PLPersistedPersonFaceMetadata *)v5 setCloudNameSource:nameSource];
  if ([coderCopy containsValueForKey:@"isClusterRejected"])
  {
    -[PLPersistedPersonFaceMetadata setClusterRejected:](v5, "setClusterRejected:", [coderCopy decodeBoolForKey:@"isClusterRejected"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PLPersistedPersonFaceMetadata *)self centerX];
  [coderCopy encodeDouble:@"centerX" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self centerY];
  [coderCopy encodeDouble:@"centerY" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self size];
  [coderCopy encodeDouble:@"size" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterX];
  [coderCopy encodeDouble:@"bodyCenterX" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterY];
  [coderCopy encodeDouble:@"bodyCenterY" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyWidth];
  [coderCopy encodeDouble:@"bodyWidth" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyHeight];
  [coderCopy encodeDouble:@"bodyHeight" forKey:?];
  detectionType = [(PLPersistedPersonFaceMetadata *)self detectionType];

  if (detectionType)
  {
    detectionType2 = [(PLPersistedPersonFaceMetadata *)self detectionType];
    [coderCopy encodeInt:objc_msgSend(detectionType2 forKey:{"intValue"), @"detectionType"}];
  }

  assetUUID = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  [coderCopy encodeObject:assetUUID forKey:@"assetUUID"];

  assetCloudGUID = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  [coderCopy encodeObject:assetCloudGUID forKey:@"assetCloudGUID"];

  [coderCopy encodeBool:-[PLPersistedPersonFaceMetadata isHidden](self forKey:{"isHidden"), @"isHidden"}];
  [coderCopy encodeBool:-[PLPersistedPersonFaceMetadata isManual](self forKey:{"isManual"), @"isManual"}];
  [coderCopy encodeBool:-[PLPersistedPersonFaceMetadata isRepresentative](self forKey:{"isRepresentative"), @"isRepresentative"}];
  [coderCopy encodeInteger:-[PLPersistedPersonFaceMetadata nameSource](self forKey:{"nameSource"), @"nameSource"}];
  [coderCopy encodeInteger:-[PLPersistedPersonFaceMetadata cloudNameSource](self forKey:{"cloudNameSource"), @"cloudNameSource"}];
  [coderCopy encodeBool:-[PLPersistedPersonFaceMetadata isClusterRejected](self forKey:{"isClusterRejected"), @"isClusterRejected"}];
  [coderCopy encodeInt32:-[PLPersistedPersonFaceMetadata faceAlgorithmVersion](self forKey:{"faceAlgorithmVersion"), @"faceAlgorithmVersion"}];
}

+ (void)enumerateMatchedAssetsWithMetadata:(id)metadata inContext:(id)context withBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  contextCopy = context;
  blockCopy = block;
  v20 = [metadataCopy _pl_map:&__block_literal_global_118];
  v21 = contextCopy;
  v19 = [PLManagedAsset assetsWithUUIDs:"assetsWithUUIDs:options:inManagedObjectContext:" options:? inManagedObjectContext:?];
  v10 = [v19 _pl_indexBy:&__block_literal_global_122_76918];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = metadataCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        assetUUID = [v16 assetUUID];
        v18 = [v10 objectForKeyedSubscript:assetUUID];

        if (blockCopy)
        {
          blockCopy[2](blockCopy, v16, v18);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

+ (id)_persistedFacesWithUnarchiver:(id)unarchiver key:(id)key
{
  v5 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  unarchiverCopy = unarchiver;
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [unarchiverCopy decodeObjectOfClasses:v9 forKey:keyCopy];

  return v10;
}

+ (id)_migrateDetectedFaces:(id)faces forPersonMetadata:(id)metadata fromVersion:(unint64_t)version
{
  v81 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  metadataCopy = metadata;
  if ([facesCopy count])
  {
    personUUID = [metadataCopy personUUID];
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v78 = [facesCopy count];
      v79 = 2112;
      v80 = personUUID;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Migrating %lu faces metadata for person %@", buf, 0x16u);
    }

    if (version <= 2)
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = personUUID;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Resetting name source on persisted faces during rebuild for person %@", buf, 0xCu);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v12 = facesCopy;
      v13 = [v12 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v69;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v69 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v68 + 1) + 8 * i) setNameSource:{objc_msgSend(*(*(&v68 + 1) + 8 * i), "isRepresentative")}];
          }

          v14 = [v12 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v14);
      }
    }

    if (version <= 7)
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = personUUID;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Fixing name source on manual faces during rebuild for person %@", buf, 0xCu);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v18 = facesCopy;
      v19 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v65;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v65 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v64 + 1) + 8 * j);
            if ([v24 isManual])
            {
              ++v21;
              [v24 setNameSource:3];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v78 = v21;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Fixed %lu manual face name source", buf, 0xCu);
      }

      v60 = 0u;
      v61 = 0u;
      if ([metadataCopy verifiedType] == 2)
      {
        v26 = 5;
      }

      else
      {
        v26 = 1;
      }

      v62 = 0uLL;
      v63 = 0uLL;
      v27 = v18;
      v28 = [v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v61;
        while (2)
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v61 != v30)
            {
              objc_enumerationMutation(v27);
            }

            if ([*(*(&v60 + 1) + 8 * k) nameSource] == v26)
            {
              v33 = v27;
              goto LABEL_56;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v78 = personUUID;
        v79 = 2048;
        v80 = v26;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Person %@ is missing named face during rebuild, will set representative face nameSource to %ld", buf, 0x16u);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v33 = v27;
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v73 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        while (2)
        {
          for (m = 0; m != v35; ++m)
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v56 + 1) + 8 * m);
            if ([v38 isRepresentative])
            {
              [v38 setNameSource:v26];
              goto LABEL_56;
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v56 objects:v73 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v33 = PLMigrationGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v78 = metadataCopy;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Persisted person %@ has zero named faces, no representative face. Unable to choose a face for face crop generation", buf, 0xCu);
      }

LABEL_56:

      array = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      facesCopy = v27;
      v40 = [facesCopy countByEnumeratingWithState:&v52 objects:v72 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v53;
        do
        {
          for (n = 0; n != v41; ++n)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(facesCopy);
            }

            v44 = *(*(&v52 + 1) + 8 * n);
            if ([v44 nameSource] == 5 || objc_msgSend(v44, "nameSource") == 1 || objc_msgSend(v44, "nameSource") == 3 || objc_msgSend(v44, "isManual"))
            {
              [array addObject:v44];
            }
          }

          v41 = [facesCopy countByEnumeratingWithState:&v52 objects:v72 count:16];
        }

        while (v41);
      }

      v45 = [facesCopy count];
      v46 = [array count];
      v47 = v45 - v46;
      if (v45 != v46)
      {
        v48 = v46;
        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v78 = v47;
          v79 = 2048;
          v80 = v48;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "Removing %ld non-user named faces from facesMetadata, %ld user named faces remaining", buf, 0x16u);
        }

        v50 = array;
        facesCopy = v50;
      }
    }
  }

  return facesCopy;
}

+ (id)_persistedFaceMetadataWithDetectedFace:(id)face isKeyFace:(BOOL)keyFace isClusterRejected:(BOOL)rejected
{
  rejectedCopy = rejected;
  keyFaceCopy = keyFace;
  faceCopy = face;
  if (!faceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistedPersonMetadata.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v10 = [faceCopy associatedAssetForFaceOrTorso:1 orTemporal:0];
  uuid = [v10 uuid];
  if (uuid)
  {
    v12 = objc_alloc_init(self);
    [v12 setAssetUUID:uuid];
    cloudAssetGUID = [v10 cloudAssetGUID];
    [v12 setAssetCloudGUID:cloudAssetGUID];

    [faceCopy centerX];
    [v12 setCenterX:?];
    [faceCopy centerY];
    [v12 setCenterY:?];
    [faceCopy size];
    [v12 setSize:?];
    [faceCopy bodyCenterX];
    [v12 setBodyCenterX:?];
    [faceCopy bodyCenterY];
    [v12 setBodyCenterY:?];
    [faceCopy bodyWidth];
    [v12 setBodyWidth:?];
    [faceCopy bodyHeight];
    [v12 setBodyHeight:?];
    v14 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(faceCopy, "detectionType")}];
    [v12 setDetectionType:v14];

    [v12 setHidden:{objc_msgSend(faceCopy, "hidden")}];
    [v12 setManual:{objc_msgSend(faceCopy, "manual")}];
    [v12 setRepresentative:keyFaceCopy];
    [v12 setNameSource:{objc_msgSend(faceCopy, "nameSource")}];
    [v12 setCloudNameSource:{objc_msgSend(faceCopy, "cloudNameSource")}];
    [v12 setClusterRejected:rejectedCopy];
    [v12 setFaceAlgorithmVersion:{objc_msgSend(faceCopy, "faceAlgorithmVersion")}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_detectedFaceRelationshipKeyPathsToPrefetch
{
  pl_dispatch_once();
  v2 = _detectedFaceRelationshipKeyPathsToPrefetch_pl_once_object_16;

  return v2;
}

void __76__PLPersistedPersonFaceMetadata__detectedFaceRelationshipKeyPathsToPrefetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"assetForFace";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = _detectedFaceRelationshipKeyPathsToPrefetch_pl_once_object_16;
  _detectedFaceRelationshipKeyPathsToPrefetch_pl_once_object_16 = v1;
}

+ (id)_detectedFacePropertiesToFetch
{
  pl_dispatch_once();
  v2 = _detectedFacePropertiesToFetch_pl_once_object_15;

  return v2;
}

void __63__PLPersistedPersonFaceMetadata__detectedFacePropertiesToFetch__block_invoke()
{
  v3[13] = *MEMORY[0x1E69E9840];
  v3[0] = @"centerX";
  v3[1] = @"centerY";
  v3[2] = @"size";
  v3[3] = @"bodyCenterX";
  v3[4] = @"bodyCenterY";
  v3[5] = @"bodyWidth";
  v3[6] = @"bodyHeight";
  v3[7] = @"detectionType";
  v3[8] = @"manual";
  v3[9] = @"hidden";
  v3[10] = @"nameSource";
  v3[11] = @"cloudNameSource";
  v3[12] = @"faceAlgorithmVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:13];
  v1 = [v0 copy];
  v2 = _detectedFacePropertiesToFetch_pl_once_object_15;
  _detectedFacePropertiesToFetch_pl_once_object_15 = v1;
}

@end