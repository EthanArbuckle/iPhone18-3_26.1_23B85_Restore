@interface PLPersistedPersonFaceMetadata
+ (id)_detectedFacePropertiesToFetch;
+ (id)_detectedFaceRelationshipKeyPathsToPrefetch;
+ (id)_migrateDetectedFaces:(id)a3 forPersonMetadata:(id)a4 fromVersion:(unint64_t)a5;
+ (id)_persistedFaceMetadataWithDetectedFace:(id)a3 isKeyFace:(BOOL)a4 isClusterRejected:(BOOL)a5;
+ (id)_persistedFacesWithUnarchiver:(id)a3 key:(id)a4;
+ (void)enumerateMatchedAssetsWithMetadata:(id)a3 inContext:(id)a4 withBlock:(id)a5;
- (BOOL)isDeferrable;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 forConfirmedPersonUUID:(id)a4 diff:(id *)a5;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 forRejectedPersonUUID:(id)a4 diff:(id *)a5;
- (NSString)description;
- (PLPersistedPersonFaceMetadata)initWithCoder:(id)a3;
- (id)_identifier;
- (id)_insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)a3 personUUID:(id)a4 isRejected:(BOOL)a5;
- (id)jsonDictionary;
- (id)matchingFaceInManagedObejctContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

  v5 = [(PLPersistedPersonFaceMetadata *)self detectionType];
  if (v5)
  {
    v6 = [(PLPersistedPersonFaceMetadata *)self detectionType];
    v7 = [v6 integerValue] == 1;
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
  v3 = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  v32 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F0F06D80;
  }

  v34[0] = v4;
  v33[1] = @"assetCloudGUID";
  v5 = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  v31 = v5;
  if (v5)
  {
    v6 = v5;
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
  v17 = [(PLPersistedPersonFaceMetadata *)self detectionType];
  v18 = v17;
  v19 = &unk_1F0FBDA98;
  if (v17)
  {
    v19 = v17;
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

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 forRejectedPersonUUID:(id)a4 diff:(id *)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(PLPersistedPersonFaceMetadata *)self matchingFaceInManagedObejctContext:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 rejectedPersons];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke;
    v26[3] = &unk_1E7571C60;
    v12 = v8;
    v27 = v12;
    v13 = [v11 objectsPassingTest:v26];
    v14 = [v13 anyObject];

    if (v14)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v17 = [v10 clusterRejectedPersons];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __111__PLPersistedPersonFaceMetadata_matchesEntityInLibraryBackedByManagedObjectContext_forRejectedPersonUUID_diff___block_invoke_2;
      v24[3] = &unk_1E7571C60;
      v25 = v12;
      v18 = [v17 objectsPassingTest:v24];
      v19 = [v18 anyObject];

      if ((v19 != 0) != [(PLPersistedPersonFaceMetadata *)self isClusterRejected])
      {
        v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isClusterRejected](self, "isClusterRejected")}];
        [v15 setObject:v20 forKey:@"isClusterRejected"];

        v21 = [MEMORY[0x1E696AD98] numberWithBool:v19 != 0];
        [v16 setObject:v21 forKey:@"isClusterRejected"];
      }

      if (a5)
      {
        v28[0] = @"metadata";
        v28[1] = @"library";
        v29[0] = v15;
        v29[1] = v16;
        *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      }

      if ([v15 count])
      {
        v22 = 0;
      }

      else
      {
        v22 = [v16 count] == 0;
      }
    }

    else
    {
      v22 = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
    if (a5)
    {
      *a5 = 0;
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

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 forConfirmedPersonUUID:(id)a4 diff:(id *)a5
{
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(PLPersistedPersonFaceMetadata *)self matchingFaceInManagedObejctContext:a3];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [v9 personForFace];
    v13 = [v12 personUUID];
    IsEqual = PLObjectIsEqual();

    if ((IsEqual & 1) == 0)
    {
      [v10 _pl_setNonNilObject:v8 forKey:@"personUUID"];
      v15 = [v9 personForFace];
      v16 = [v15 personUUID];
      [v11 _pl_setNonNilObject:v16 forKey:@"personUUID"];
    }

    v17 = [(PLPersistedPersonFaceMetadata *)self nameSource];
    if (v17 != [v9 nameSource])
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")}];
      [v10 setObject:v18 forKey:@"nameSource"];

      v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "nameSource")}];
      [v11 setObject:v19 forKey:@"nameSource"];
    }

    v20 = [(PLPersistedPersonFaceMetadata *)self cloudNameSource];
    if (v20 != [v9 cloudNameSource])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonFaceMetadata cloudNameSource](self, "cloudNameSource")}];
      [v10 setObject:v21 forKey:@"cloudNameSource"];

      v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "cloudNameSource")}];
      [v11 setObject:v22 forKey:@"cloudNameSource"];
    }

    v23 = [(PLPersistedPersonFaceMetadata *)self isManual];
    if (v23 != [v9 manual])
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isManual](self, "isManual")}];
      [v10 setObject:v24 forKey:@"manual"];

      v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "manual")}];
      [v11 setObject:v25 forKey:@"manual"];
    }

    v26 = [v9 personBeingKeyFace];

    if ((v26 != 0) != [(PLPersistedPersonFaceMetadata *)self isRepresentative])
    {
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPersistedPersonFaceMetadata isRepresentative](self, "isRepresentative")}];
      [v10 setObject:v27 forKey:@"isKeyFace"];

      v28 = [MEMORY[0x1E696AD98] numberWithBool:v26 != 0];
      [v11 setObject:v28 forKey:@"isKeyFace"];
    }

    if (a5)
    {
      v31[0] = @"metadata";
      v31[1] = @"library";
      v32[0] = v10;
      v32[1] = v11;
      *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    }

    if ([v10 count])
    {
      v29 = 0;
    }

    else
    {
      v29 = [v11 count] == 0;
    }
  }

  else
  {
    v29 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v29;
}

- (id)matchingFaceInManagedObejctContext:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLDetectedFace fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  v7 = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  v8 = [v6 predicateWithFormat:@"%K = %@", @"assetForFace.uuid", v7];
  [v5 setPredicate:v8];

  [v4 executeFetchRequest:v5 error:0];
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
  v4 = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  if (v4)
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

- (id)_insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)a3 personUUID:(id)a4 isRejected:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(PLPersistedPersonFaceMetadata *)self isDeferrable])
  {
    v10 = [(PLManagedObject *)PLDeferredRebuildFace insertInManagedObjectContext:v8];
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
    v11 = [(PLPersistedPersonFaceMetadata *)self assetUUID];
    [v10 setAssetUUID:v11];

    v12 = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
    [v10 setAssetCloudGUID:v12];

    [v10 setRejected:v5];
    [v10 setClusterRejected:{-[PLPersistedPersonFaceMetadata isClusterRejected](self, "isClusterRejected")}];
    [v10 setPersonUUID:v9];
    v13 = [MEMORY[0x1E69BF320] UUIDString];
    [v10 setUuid:v13];

    if ([(PLPersistedPersonFaceMetadata *)self faceAlgorithmVersion])
    {
      v14 = [(PLPersistedPersonFaceMetadata *)self faceAlgorithmVersion];
    }

    else
    {
      v14 = 1;
    }

    [v10 setFaceAlgorithmVersion:v14];
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
  v4 = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  v5 = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
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
  v20 = [(PLPersistedPersonFaceMetadata *)self detectionType];
  v21 = [v3 stringByAppendingFormat:@" face on %@ [%@] (face: %6.6f @ %6.6f, %6.6f) (body: %6.6fx%6.6f @ %6.6f, %6.6f) type:%d isKey:%d [manual:%d hidden:%d nameSource:%d]", v4, v5, v7, v9, v11, v13, v15, v17, v19, objc_msgSend(v20, "intValue"), -[PLPersistedPersonFaceMetadata isRepresentative](self, "isRepresentative"), -[PLPersistedPersonFaceMetadata isManual](self, "isManual"), -[PLPersistedPersonFaceMetadata isHidden](self, "isHidden"), -[PLPersistedPersonFaceMetadata nameSource](self, "nameSource")];

  return v21;
}

- (PLPersistedPersonFaceMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLPersistedPersonFaceMetadata;
  v5 = [(PLPersistedPersonFaceMetadata *)&v12 init];
  [v4 decodeDoubleForKey:@"centerX"];
  [(PLPersistedPersonFaceMetadata *)v5 setCenterX:?];
  [v4 decodeDoubleForKey:@"centerY"];
  [(PLPersistedPersonFaceMetadata *)v5 setCenterY:?];
  [v4 decodeDoubleForKey:@"size"];
  [(PLPersistedPersonFaceMetadata *)v5 setSize:?];
  [v4 decodeDoubleForKey:@"bodyCenterX"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyCenterX:?];
  [v4 decodeDoubleForKey:@"bodyCenterY"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyCenterY:?];
  [v4 decodeDoubleForKey:@"bodyWidth"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyWidth:?];
  [v4 decodeDoubleForKey:@"bodyHeight"];
  [(PLPersistedPersonFaceMetadata *)v5 setBodyHeight:?];
  if ([v4 containsValueForKey:@"detectionType"])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "decodeIntForKey:", @"detectionType"}];
    [(PLPersistedPersonFaceMetadata *)v5 setDetectionType:v6];
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
  [(PLPersistedPersonFaceMetadata *)v5 setAssetUUID:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetCloudGUID"];
  [(PLPersistedPersonFaceMetadata *)v5 setAssetCloudGUID:v8];

  -[PLPersistedPersonFaceMetadata setHidden:](v5, "setHidden:", [v4 decodeBoolForKey:@"isHidden"]);
  -[PLPersistedPersonFaceMetadata setManual:](v5, "setManual:", [v4 decodeBoolForKey:@"isManual"]);
  -[PLPersistedPersonFaceMetadata setRepresentative:](v5, "setRepresentative:", [v4 decodeBoolForKey:@"isRepresentative"]);
  -[PLPersistedPersonFaceMetadata setFaceAlgorithmVersion:](v5, "setFaceAlgorithmVersion:", [v4 decodeInt32ForKey:@"faceAlgorithmVersion"]);
  if ([v4 containsValueForKey:@"isNameSourceAuto"])
  {
    v9 = [v4 decodeBoolForKey:@"isNameSourceAuto"] ^ 1;
  }

  else
  {
    v9 = [v4 decodeIntegerForKey:@"nameSource"];
  }

  [(PLPersistedPersonFaceMetadata *)v5 setNameSource:v9];
  if ([v4 containsValueForKey:@"cloudNameSource"])
  {
    v10 = [v4 decodeIntForKey:@"cloudNameSource"];
  }

  else
  {
    v10 = [(PLPersistedPersonFaceMetadata *)v5 nameSource];
  }

  [(PLPersistedPersonFaceMetadata *)v5 setCloudNameSource:v10];
  if ([v4 containsValueForKey:@"isClusterRejected"])
  {
    -[PLPersistedPersonFaceMetadata setClusterRejected:](v5, "setClusterRejected:", [v4 decodeBoolForKey:@"isClusterRejected"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(PLPersistedPersonFaceMetadata *)self centerX];
  [v8 encodeDouble:@"centerX" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self centerY];
  [v8 encodeDouble:@"centerY" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self size];
  [v8 encodeDouble:@"size" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterX];
  [v8 encodeDouble:@"bodyCenterX" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyCenterY];
  [v8 encodeDouble:@"bodyCenterY" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyWidth];
  [v8 encodeDouble:@"bodyWidth" forKey:?];
  [(PLPersistedPersonFaceMetadata *)self bodyHeight];
  [v8 encodeDouble:@"bodyHeight" forKey:?];
  v4 = [(PLPersistedPersonFaceMetadata *)self detectionType];

  if (v4)
  {
    v5 = [(PLPersistedPersonFaceMetadata *)self detectionType];
    [v8 encodeInt:objc_msgSend(v5 forKey:{"intValue"), @"detectionType"}];
  }

  v6 = [(PLPersistedPersonFaceMetadata *)self assetUUID];
  [v8 encodeObject:v6 forKey:@"assetUUID"];

  v7 = [(PLPersistedPersonFaceMetadata *)self assetCloudGUID];
  [v8 encodeObject:v7 forKey:@"assetCloudGUID"];

  [v8 encodeBool:-[PLPersistedPersonFaceMetadata isHidden](self forKey:{"isHidden"), @"isHidden"}];
  [v8 encodeBool:-[PLPersistedPersonFaceMetadata isManual](self forKey:{"isManual"), @"isManual"}];
  [v8 encodeBool:-[PLPersistedPersonFaceMetadata isRepresentative](self forKey:{"isRepresentative"), @"isRepresentative"}];
  [v8 encodeInteger:-[PLPersistedPersonFaceMetadata nameSource](self forKey:{"nameSource"), @"nameSource"}];
  [v8 encodeInteger:-[PLPersistedPersonFaceMetadata cloudNameSource](self forKey:{"cloudNameSource"), @"cloudNameSource"}];
  [v8 encodeBool:-[PLPersistedPersonFaceMetadata isClusterRejected](self forKey:{"isClusterRejected"), @"isClusterRejected"}];
  [v8 encodeInt32:-[PLPersistedPersonFaceMetadata faceAlgorithmVersion](self forKey:{"faceAlgorithmVersion"), @"faceAlgorithmVersion"}];
}

+ (void)enumerateMatchedAssetsWithMetadata:(id)a3 inContext:(id)a4 withBlock:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v20 = [v7 _pl_map:&__block_literal_global_118];
  v21 = v8;
  v19 = [PLManagedAsset assetsWithUUIDs:"assetsWithUUIDs:options:inManagedObjectContext:" options:? inManagedObjectContext:?];
  v10 = [v19 _pl_indexBy:&__block_literal_global_122_76918];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v7;
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
        v17 = [v16 assetUUID];
        v18 = [v10 objectForKeyedSubscript:v17];

        if (v9)
        {
          v9[2](v9, v16, v18);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

+ (id)_persistedFacesWithUnarchiver:(id)a3 key:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v7 decodeObjectOfClasses:v9 forKey:v6];

  return v10;
}

+ (id)_migrateDetectedFaces:(id)a3 forPersonMetadata:(id)a4 fromVersion:(unint64_t)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [v8 personUUID];
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v78 = [v7 count];
      v79 = 2112;
      v80 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Migrating %lu faces metadata for person %@", buf, 0x16u);
    }

    if (a5 <= 2)
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = v9;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Resetting name source on persisted faces during rebuild for person %@", buf, 0xCu);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v12 = v7;
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

    if (a5 <= 7)
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = v9;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Fixing name source on manual faces during rebuild for person %@", buf, 0xCu);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v18 = v7;
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
      if ([v8 verifiedType] == 2)
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
        v78 = v9;
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
        v78 = v8;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Persisted person %@ has zero named faces, no representative face. Unable to choose a face for face crop generation", buf, 0xCu);
      }

LABEL_56:

      v39 = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v7 = v27;
      v40 = [v7 countByEnumeratingWithState:&v52 objects:v72 count:16];
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
              objc_enumerationMutation(v7);
            }

            v44 = *(*(&v52 + 1) + 8 * n);
            if ([v44 nameSource] == 5 || objc_msgSend(v44, "nameSource") == 1 || objc_msgSend(v44, "nameSource") == 3 || objc_msgSend(v44, "isManual"))
            {
              [v39 addObject:v44];
            }
          }

          v41 = [v7 countByEnumeratingWithState:&v52 objects:v72 count:16];
        }

        while (v41);
      }

      v45 = [v7 count];
      v46 = [v39 count];
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

        v50 = v39;
        v7 = v50;
      }
    }
  }

  return v7;
}

+ (id)_persistedFaceMetadataWithDetectedFace:(id)a3 isKeyFace:(BOOL)a4 isClusterRejected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLPersistedPersonMetadata.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v10 = [v9 associatedAssetForFaceOrTorso:1 orTemporal:0];
  v11 = [v10 uuid];
  if (v11)
  {
    v12 = objc_alloc_init(a1);
    [v12 setAssetUUID:v11];
    v13 = [v10 cloudAssetGUID];
    [v12 setAssetCloudGUID:v13];

    [v9 centerX];
    [v12 setCenterX:?];
    [v9 centerY];
    [v12 setCenterY:?];
    [v9 size];
    [v12 setSize:?];
    [v9 bodyCenterX];
    [v12 setBodyCenterX:?];
    [v9 bodyCenterY];
    [v12 setBodyCenterY:?];
    [v9 bodyWidth];
    [v12 setBodyWidth:?];
    [v9 bodyHeight];
    [v12 setBodyHeight:?];
    v14 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v9, "detectionType")}];
    [v12 setDetectionType:v14];

    [v12 setHidden:{objc_msgSend(v9, "hidden")}];
    [v12 setManual:{objc_msgSend(v9, "manual")}];
    [v12 setRepresentative:v6];
    [v12 setNameSource:{objc_msgSend(v9, "nameSource")}];
    [v12 setCloudNameSource:{objc_msgSend(v9, "cloudNameSource")}];
    [v12 setClusterRejected:v5];
    [v12 setFaceAlgorithmVersion:{objc_msgSend(v9, "faceAlgorithmVersion")}];
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