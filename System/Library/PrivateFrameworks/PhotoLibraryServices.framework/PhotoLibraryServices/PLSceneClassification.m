@interface PLSceneClassification
+ (BOOL)isUtilityAssetForSharedLibrary:(id)a3;
+ (id)PLJunkSceneClassificationIDForLabel:(id)a3;
+ (id)fetchSceneClassificationsForAdditionalAttributes:(id)a3 managedObjectContext:(id)a4;
+ (id)insertIntoPhotoLibrary:(id)a3 asset:(id)a4 sceneIdentifier:(unint64_t)a5 confidence:(double)a6 packedBoundingBoxRect:(int64_t)a7 startTime:(double)a8 duration:(double)a9 classificationType:(int64_t)a10 thumbnailIdentifier:(id)a11;
+ (unint64_t)_pool_countOfOrphanedSceneClassificationsWithLimit:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
+ (unint64_t)countOfOrphanedSceneClassificationsWithLimit:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
+ (void)batchFetchScenesByAssetObjectIDWithAssetObjectIDs:(id)a3 library:(id)a4 includeTemporalClassifications:(BOOL)a5 sceneClassificationTypePredicate:(id)a6 completion:(id)a7;
- (BOOL)_validateInterpropertyValues:(id *)a3;
- (BOOL)isDocumentClassification;
- (BOOL)isScreenshotClassification;
- (BOOL)validateForInsert:(id *)a3;
- (id)debugLogDescription;
- (void)_checkForOrphanedSceneClassification;
- (void)willSave;
@end

@implementation PLSceneClassification

- (void)_checkForOrphanedSceneClassification
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PLSceneClassification *)self assetAttributes];
  if (v3)
  {
  }

  else
  {
    v4 = [(PLSceneClassification *)self assetAttributesForTemporalSceneClassifications];

    if (!v4)
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = [(NSManagedObject *)self pl_shortDescription];
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "Detected orphaned scene classification: %{public}@", &v7, 0xCu);
      }
    }
  }
}

- (BOOL)isScreenshotClassification
{
  v3 = [(PLSceneClassification *)self sceneIdentifier];
  v4 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:@"screenshot"];
  if (v3 == [v4 unsignedIntegerValue])
  {
    [(PLSceneClassification *)self confidence];
    v6 = v5 >= 0.58;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDocumentClassification
{
  v3 = [(PLSceneClassification *)self sceneIdentifier];
  v4 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:@"hier_text_document"];
  if (v3 == [v4 unsignedIntegerValue])
  {
    [(PLSceneClassification *)self confidence];
    v6 = v5 >= 0.59;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)willSave
{
  v9.receiver = self;
  v9.super_class = PLSceneClassification;
  [(PLManagedObject *)&v9 willSave];
  v3 = [(PLSceneClassification *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLSceneClassification *)self changedValues];
    if (([(PLSceneClassification *)self isDeleted]& 1) != 0)
    {
LABEL_12:

      goto LABEL_13;
    }

    v5 = [v4 objectForKeyedSubscript:@"sceneIdentifier"];
    if (v5)
    {
    }

    else
    {
      v6 = [v4 objectForKeyedSubscript:@"confidence"];

      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if ([(PLSceneClassification *)self isDocumentClassification])
    {
      v7 = 16;
LABEL_10:
      v8 = [(PLSceneClassification *)self assetAttributes];
      [v8 addDuplicateDetectorPerceptualProcessingStates:v7 removeProcessingStates:0];

      goto LABEL_11;
    }

    if ([(PLSceneClassification *)self isScreenshotClassification])
    {
      v7 = 64;
      goto LABEL_10;
    }

LABEL_11:
    [(PLSceneClassification *)self _checkForOrphanedSceneClassification];
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLSceneClassification;
  v5 = [(PLSceneClassification *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLSceneClassification *)self _validateInterpropertyValues:a3];
  }

  return v5;
}

- (BOOL)_validateInterpropertyValues:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributes"];
  if (![v5 count])
  {
    goto LABEL_4;
  }

  v6 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributesForTemporalSceneClassifications"];
  if ([v6 count] || (-[PLSceneClassification duration](self, "duration"), v26 != 0.0))
  {

LABEL_4:
    goto LABEL_5;
  }

  [(PLSceneClassification *)self startTime];
  v28 = v27;

  if (v28 == 0.0)
  {
    return 1;
  }

LABEL_5:
  v7 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributes"];
  if ([v7 count])
  {
LABEL_6:

    goto LABEL_7;
  }

  v9 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributesForTemporalSceneClassifications"];
  if (![v9 count])
  {

    goto LABEL_6;
  }

  [(PLSceneClassification *)self duration];
  v11 = v10;

  if (v11 > 0.0)
  {
    return 1;
  }

LABEL_7:
  v8 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributes"];
  if (![v8 count])
  {
    v12 = [(PLSceneClassification *)self objectIDsForRelationshipNamed:@"assetAttributesForTemporalSceneClassifications"];
    v13 = [v12 count];

    if (v13)
    {
      goto LABEL_13;
    }

    [(PLSceneClassification *)self startTime];
    if (v29 < 0.0 || ([(PLSceneClassification *)self duration], v30 <= 0.0))
    {
      [(PLSceneClassification *)self startTime];
      if (v31 != 0.0)
      {
        goto LABEL_13;
      }

      [(PLSceneClassification *)self duration];
      if (v32 != 0.0)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(PLSceneClassification *)self assetAttributes];
  v16 = [(PLSceneClassification *)self assetAttributesForTemporalSceneClassifications];
  [(PLSceneClassification *)self startTime];
  v18 = v17;
  [(PLSceneClassification *)self duration];
  v20 = objc_msgSend(v14, "stringWithFormat:", @"There was a validation issue when attempting to insert PLSceneClassification (assetAttributes: %p, assetAttributesForTemporalSceneClassifications: %p, startTime: %g, duration: %g, classificationType: %d"), v15, v16, v18, v19, -[PLSceneClassification classificationType](self, "classificationType");

  v21 = PLBackendGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = v20;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  if (a3)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E69BFF48];
    v33 = *MEMORY[0x1E696A278];
    v34 = v20;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    *a3 = [v22 errorWithDomain:v23 code:46502 userInfo:v24];
  }

  return 0;
}

- (id)debugLogDescription
{
  [(PLSceneClassification *)self packedBoundingBoxRect];
  PLSplitToCGRectFromInt64();
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLSceneClassification *)self classificationType];
  v5 = [(PLSceneClassification *)self sceneIdentifier];
  [(PLSceneClassification *)self confidence];
  v7 = v6;
  v13.origin = 0u;
  v13.size = 0u;
  v8 = NSStringFromRect(v13);
  v9 = [(PLSceneClassification *)self thumbnailIdentifier];
  v10 = [v3 stringWithFormat:@"PLSceneClassification: sceneClassificationType: %d, sceneID: %lld, confidence: %f, boundingBox: %@ thumbID: %@", v4, v5, v7, v8, v9];

  return v10;
}

+ (BOOL)isUtilityAssetForSharedLibrary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([v3 isVideo] & 1) != 0 || (objc_msgSend(v3, "additionalAttributes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "sceneAnalysisVersion"), v4, v5 < 0x56))
  {
    v20 = 0;
    goto LABEL_48;
  }

  v6 = [v3 additionalAttributes];
  v7 = [v6 sceneClassifications];

  v26 = [v3 uuid];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v9)
  {

    v19 = 0;
    v11 = 0;
    goto LABEL_40;
  }

  v10 = v9;
  v25 = v3;
  v27 = 0;
  v11 = 0;
  v12 = *v29;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      v15 = [v14 sceneIdentifier];
      [v14 confidence];
      v17 = v16;
      if (v15 <= 2147483643)
      {
        if (v15 == 2147483629)
        {
          if (v16 < 0.59)
          {
            LOBYTE(v27) = 0;
            continue;
          }

          v18 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v33 = v26;
            v34 = 2048;
            v35 = v17;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Asset %@ - text document scene: %.3f", buf, 0x16u);
          }

          LOBYTE(v27) = 1;
        }

        else
        {
          if (v15 != 2147483631)
          {
            continue;
          }

          if (v16 < 0.37)
          {
            v11 = 0;
            continue;
          }

          v18 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v33 = v26;
            v34 = 2048;
            v35 = v17;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Asset %@ - tragic failure scene: %.3f", buf, 0x16u);
          }

          v11 = 1;
        }

LABEL_30:

        continue;
      }

      if (v15 == 2147483646)
      {
        if (v16 < 0.54)
        {
          BYTE4(v27) = 0;
          continue;
        }

        v18 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v33 = v26;
          v34 = 2048;
          v35 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Asset %@ - poor quality scene: %.3f", buf, 0x16u);
        }

        BYTE4(v27) = 1;
        goto LABEL_30;
      }

      if (v15 == 2147483644 && v16 >= 0.31)
      {
        v21 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v33 = v26;
          v34 = 2048;
          v35 = v17;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Asset %@ - negative utility scene: %.3f", buf, 0x16u);
        }

        v20 = 0;
        v23 = v8;
        v3 = v25;
        goto LABEL_46;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v3 = v25;
  v19 = BYTE4(v27);
  if (v27)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (v19 & 1) != 0 || (v11)
  {
LABEL_43:
    v23 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v26;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Asset %@ is considered as utility", buf, 0xCu);
    }

    v20 = 1;
LABEL_46:
  }

  else
  {
    v20 = 0;
  }

LABEL_48:
  return v20;
}

+ (id)PLJunkSceneClassificationIDForLabel:(id)a3
{
  v3 = PLJunkSceneClassificationIDForLabel__once;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&PLJunkSceneClassificationIDForLabel__once, &__block_literal_global_57343);
  }

  v5 = [PLJunkSceneClassificationIDForLabel__mapping objectForKeyedSubscript:v4];

  return v5;
}

void __61__PLSceneClassification_PLJunkSceneClassificationIDForLabel___block_invoke()
{
  v3[21] = *MEMORY[0x1E69E9840];
  v2[0] = @"hier_text_document";
  v2[1] = @"hier_tragic_failure";
  v3[0] = &unk_1F0FBCEC8;
  v3[1] = &unk_1F0FBCEE0;
  v2[2] = @"bad_framing";
  v2[3] = @"bad_lighting";
  v3[2] = &unk_1F0FBCEF8;
  v3[3] = &unk_1F0FBCF10;
  v2[4] = @"blurry";
  v2[5] = @"food_or_drink";
  v3[4] = &unk_1F0FBCF28;
  v3[5] = &unk_1F0FBCF40;
  v2[6] = @"junk_other";
  v2[7] = @"medical_reference";
  v3[6] = &unk_1F0FBCF58;
  v3[7] = &unk_1F0FBCF70;
  v2[8] = @"negative";
  v2[9] = @"receipt_or_document";
  v3[8] = &unk_1F0FBCF88;
  v3[9] = &unk_1F0FBCFA0;
  v2[10] = @"repair_reference";
  v2[11] = @"screenshot";
  v3[10] = &unk_1F0FBCFB8;
  v3[11] = &unk_1F0FBCFD0;
  v2[12] = @"shopping_reference";
  v2[13] = @"utility_reference";
  v3[12] = &unk_1F0FBCFE8;
  v3[13] = &unk_1F0FBD000;
  v2[14] = @"junk_negative";
  v2[15] = @"hier_negative";
  v3[14] = &unk_1F0FBD018;
  v3[15] = &unk_1F0FBD018;
  v2[16] = @"junk_non_memorable";
  v2[17] = @"hier_non_memorable";
  v3[16] = &unk_1F0FBD030;
  v3[17] = &unk_1F0FBD030;
  v2[18] = @"junk_poor_quality";
  v2[19] = @"hier_poor_quality";
  v3[18] = &unk_1F0FBD048;
  v3[19] = &unk_1F0FBD048;
  v2[20] = @"junk";
  v3[20] = &unk_1F0FBD060;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:21];
  v1 = PLJunkSceneClassificationIDForLabel__mapping;
  PLJunkSceneClassificationIDForLabel__mapping = v0;
}

+ (void)batchFetchScenesByAssetObjectIDWithAssetObjectIDs:(id)a3 library:(id)a4 includeTemporalClassifications:(BOOL)a5 sceneClassificationTypePredicate:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __158__PLSceneClassification_batchFetchScenesByAssetObjectIDWithAssetObjectIDs_library_includeTemporalClassifications_sceneClassificationTypePredicate_completion___block_invoke;
  v19[3] = &unk_1E7572620;
  v20 = v12;
  v21 = v11;
  v24 = a5;
  v22 = v13;
  v23 = v14;
  v15 = v11;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  [v18 performBlockAndWait:v19];
}

void __158__PLSceneClassification_batchFetchScenesByAssetObjectIDWithAssetObjectIDs_library_includeTemporalClassifications_sceneClassificationTypePredicate_completion___block_invoke(uint64_t a1)
{
  v92[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLAdditionalAssetAttributes entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset", *(a1 + 40)];
  [v5 setPredicate:v6];
  [v5 setResultType:2];
  v7 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v7 setName:@"assetObjectID"];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"asset"];
  [v7 setExpression:v8];

  [v7 setExpressionResultType:2000];
  v9 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v9 setName:@"additionalAttributes"];
  v10 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v9 setExpression:v10];

  [v9 setExpressionResultType:2000];
  v92[0] = v7;
  v92[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  [v5 setPropertiesToFetch:v11];

  v84 = 0;
  v12 = [v2 executeFetchRequest:v5 error:&v84];
  v13 = v84;
  if (v13)
  {
    v14 = v13;
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v91 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Batch fetching scenes error: %@", buf, 0xCu);
    }

    v16 = *(*(a1 + 56) + 16);
    v17 = v14;
    v16();
    goto LABEL_39;
  }

  v68 = v9;
  v69 = v7;
  v72 = v2;
  v73 = a1;
  v70 = v6;
  v71 = v5;
  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v19 = v18 = v12;
  v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v67 = v18;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v81;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v81 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v80 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:@"additionalAttributes"];
        v28 = [v26 objectForKeyedSubscript:@"assetObjectID"];
        [v20 setObject:v28 forKey:v27];
        [v19 addObject:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v23);
  }

  v29 = MEMORY[0x1E695D5E0];
  v30 = +[PLSceneClassification entityName];
  v31 = [v29 fetchRequestWithEntityName:v30];

  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetAttributes", v19];
  if (*(v73 + 64) == 1)
  {
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetAttributesForTemporalSceneClassifications", v19];
    v34 = v32;
    v35 = MEMORY[0x1E696AB28];
    v88[0] = v34;
    v88[1] = v33;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
    v32 = [v35 orPredicateWithSubpredicates:v36];
  }

  v2 = v72;
  v37 = *(v73 + 48);
  if (v37)
  {
    v38 = MEMORY[0x1E696AB28];
    v87[0] = v32;
    v87[1] = v37;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v40 = v39 = v32;
    v41 = [v38 andPredicateWithSubpredicates:v40];

    v32 = v41;
  }

  v42 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v42 setName:@"assetAttributes"];
  v43 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"assetAttributes"];
  [v42 setExpression:v43];

  [v42 setExpressionResultType:2000];
  v44 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v44 setName:@"assetAttributesForTemporalSceneClassifications"];
  v45 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"assetAttributesForTemporalSceneClassifications"];
  [v44 setExpression:v45];

  [v44 setExpressionResultType:2000];
  v86[0] = v42;
  v86[1] = v44;
  v66 = v44;
  v86[2] = @"confidence";
  v86[3] = @"sceneIdentifier";
  v86[4] = @"packedBoundingBoxRect";
  v86[5] = @"startTime";
  v86[6] = @"duration";
  v86[7] = @"classificationType";
  v86[8] = @"thumbnailIdentifier";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:9];
  [v31 setPropertiesToFetch:v46];

  [v31 setResultType:2];
  [v31 setPredicate:v32];
  v47 = [MEMORY[0x1E695DF90] dictionary];
  v79 = 0;
  v48 = [v72 executeFetchRequest:v31 error:&v79];
  v17 = v79;
  if (!v17)
  {
    v62 = v19;
    v63 = v42;
    v64 = v32;
    v65 = v31;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v48;
    v50 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (!v50)
    {
      goto LABEL_37;
    }

    v51 = v50;
    v52 = *v76;
    v53 = v48;
    while (1)
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v76 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v75 + 1) + 8 * j);
        v56 = [v55 objectForKeyedSubscript:@"assetAttributes"];
        if (v56)
        {
          v57 = v56;
        }

        else
        {
          v57 = [v55 objectForKeyedSubscript:@"assetAttributesForTemporalSceneClassifications"];
          if (!v57)
          {
            v58 = 0;
            v61 = 0;
            goto LABEL_35;
          }
        }

        v58 = [v20 objectForKey:v57];
        v59 = [v47 objectForKey:v58];
        if (v59)
        {
          v60 = 1;
        }

        else
        {
          v60 = v58 == 0;
        }

        if (v60)
        {
          v61 = v59;
        }

        else
        {
          v61 = [MEMORY[0x1E695DF70] array];
          [v47 setObject:v61 forKeyedSubscript:v58];
        }

LABEL_35:
        [v61 addObject:v55];
      }

      v48 = v53;
      v51 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      if (!v51)
      {
LABEL_37:

        (*(*(v73 + 56) + 16))();
        v2 = v72;
        v32 = v64;
        v31 = v65;
        v17 = 0;
        v42 = v63;
        v19 = v62;
        goto LABEL_38;
      }
    }
  }

  v49 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v91 = v17;
    _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Batch fetching scenes error: %@", buf, 0xCu);
  }

  (*(*(v73 + 56) + 16))();
LABEL_38:

  v6 = v70;
  v5 = v71;
  v9 = v68;
  v7 = v69;
  v12 = v67;
LABEL_39:
}

+ (unint64_t)_pool_countOfOrphanedSceneClassificationsWithLimit:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = +[PLSceneClassification entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetAttributes"];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetAttributesForTemporalSceneClassifications", v12];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setFetchLimit:a3];
  [v10 setResultType:1];
  v16 = [v8 executeFetchRequest:v10 error:a5];

  if (v16)
  {
    v17 = [v16 count];
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v17;
}

+ (unint64_t)countOfOrphanedSceneClassificationsWithLimit:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v14 = 0;
  v10 = [a1 _pool_countOfOrphanedSceneClassificationsWithLimit:a3 inContext:v8 error:&v14];
  v11 = v14;
  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v10;
}

+ (id)insertIntoPhotoLibrary:(id)a3 asset:(id)a4 sceneIdentifier:(unint64_t)a5 confidence:(double)a6 packedBoundingBoxRect:(int64_t)a7 startTime:(double)a8 duration:(double)a9 classificationType:(int64_t)a10 thumbnailIdentifier:(id)a11
{
  v21 = a3;
  v22 = a4;
  v23 = a11;
  if (!v21)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PLSceneClassification.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v24 = [v21 managedObjectContext];
  if (v22)
  {
    v25 = [a1 entityName];
    v26 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v25, v24, 0);

    [v26 setSceneIdentifier:a5];
    [v26 setConfidence:a6];
    [v26 setPackedBoundingBoxRect:a7];
    [v26 setStartTime:a8];
    [v26 setDuration:a9];
    [v26 setClassificationType:a10];
    [v26 setThumbnailIdentifier:v23];
    v27 = [v22 additionalAttributes];
    if (a10 <= 7)
    {
      if (((1 << a10) & 0xF3) != 0)
      {
        [v26 setAssetAttributes:v27];
      }

      else
      {
        [v26 setAssetAttributesForTemporalSceneClassifications:v27];
      }
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v28 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Unable to insert PLSceneClassification for a nil asset.", buf, 2u);
      }
    }

    v26 = 0;
  }

  return v26;
}

+ (id)fetchSceneClassificationsForAdditionalAttributes:(id)a3 managedObjectContext:(id)a4
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = a4;
  v7 = a3;
  v8 = +[PLSceneClassification entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR %K == %@", @"assetAttributes", v7, @"assetAttributesForTemporalSceneClassifications", v7];

  [v9 setPredicate:v10];
  v15 = 0;
  v11 = [v6 executeFetchRequest:v9 error:&v15];

  v12 = v15;
  if (v11)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v11];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v12];
  }
  v13 = ;

  return v13;
}

@end