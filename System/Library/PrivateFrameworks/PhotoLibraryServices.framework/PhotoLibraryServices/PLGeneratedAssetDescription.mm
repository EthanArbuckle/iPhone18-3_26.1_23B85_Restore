@interface PLGeneratedAssetDescription
+ (id)_fetchGeneratedAssetDescriptionEdgesForAsset:(id)a3;
+ (id)_labelIDWithCode:(int)a3 context:(id)a4;
+ (id)_labelWithCode:(int)a3 context:(id)a4;
+ (id)_newNodeContainerWithManagedObjectContext:(id)a3 dictionary:(id)a4;
+ (id)fetchGeneratedAssetDescriptionNodesForAsset:(id)a3;
+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType:(int64_t)a3 forAssetsIDs:(id)a4 inLibrary:(id)a5;
+ (id)newNodeContainerWithManagedObjectContext:(id)a3;
+ (void)_enumerateGraphNodesForAssetObjectIDs:(id)a3 inContext:(id)a4 withBlock:(id)a5;
+ (void)_updateAsset:(id)a3 nodeContainer:(id)a4;
+ (void)prepareForDeletingIncomingEdge:(id)a3;
+ (void)resetGeneratedAssetDescriptionsForAsset:(id)a3;
+ (void)resetGeneratedAssetDescriptionsForAsset:(id)a3 sourceTypes:(id)a4;
+ (void)setGeneratedAssetDescriptionForAsset:(id)a3 fromDictionaries:(id)a4;
- (NSString)descriptionText;
- (id)_insertEdgeForAsset:(id)a3;
- (id)asset;
- (id)description;
- (int64_t)analysisSourceType;
- (signed)analysisVersion;
- (void)_updateChangeFlagForProperties;
- (void)setAnalysisSourceType:(int64_t)a3;
- (void)setAnalysisVersion:(signed __int16)a3;
- (void)setDescriptionText:(id)a3;
@end

@implementation PLGeneratedAssetDescription

+ (void)resetGeneratedAssetDescriptionsForAsset:(id)a3 sourceTypes:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 containsObject:&unk_1F0FBAF90];
  v9 = [v7 containsObject:&unk_1F0FBAFA8];
  if (v8 && v9)
  {
    [a1 resetGeneratedAssetDescriptionsForAsset:v6];
  }

  else
  {
    [v6 managedObjectContext];
    v31 = v30 = v6;
    [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:v6];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [PLGeneratedAssetDescription alloc];
          v16 = [v14 targetNode];
          v17 = [(PLGraphNodeContainer *)v15 initWithNode:v16];

          v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLGeneratedAssetDescription analysisSourceType](v17, "analysisSourceType")}];
          v19 = [v7 containsObject:v18];

          if (v19)
          {
            v20 = [v14 targetNode];

            if (v20)
            {
              v21 = [v14 targetNode];
              [v31 deleteObject:v21];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    v6 = v30;
    if (v28)
    {
      v22 = [v30 mediaAnalysisAttributes];
      v23 = [v22 imageCaptionVersion];

      if (v23)
      {
        v24 = [v30 mediaAnalysisAttributes];
        [v24 setImageCaptionVersion:0];
      }
    }

    if (v29)
    {
      v25 = [v30 mediaAnalysisAttributes];
      v26 = [v25 videoCaptionVersion];

      if (v26)
      {
        v27 = [v30 mediaAnalysisAttributes];
        [v27 setVideoCaptionVersion:0];
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLGeneratedAssetDescription *)self asset];
  v5 = [v4 pl_shortDescription];
  v6 = [(PLGeneratedAssetDescription *)self descriptionText];
  v7 = [v3 stringWithFormat:@"\nasset: %@\ndescriptionText: %@\nanalysisVersion: %llu\nanalysisSourceType: %ld", v5, v6, -[PLGeneratedAssetDescription analysisVersion](self, "analysisVersion"), -[PLGeneratedAssetDescription analysisSourceType](self, "analysisSourceType")];

  return v7;
}

- (void)_updateChangeFlagForProperties
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  [v2 setChangeFlag0:{objc_msgSend(v2, "changeFlag0") + 1}];
}

- (id)asset
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 edgesIn];
  v4 = [v3 anyObject];
  v5 = [v4 sourceAsset];

  return v5;
}

- (void)setAnalysisSourceType:(int64_t)a3
{
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:1000 createIfMissing:1];

  [v6 setIntegerValue:a3];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (int64_t)analysisSourceType
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:1000];

  v4 = [v3 integerValue];
  return v4;
}

- (void)setAnalysisVersion:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:1002 createIfMissing:1];

  [v6 setIntegerValue:v3];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (signed)analysisVersion
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:1002];

  LOWORD(v2) = [v3 integerValue];
  return v2;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:1001 createIfMissing:1];

  [v6 setStringValue:v4];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (NSString)descriptionText
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:1001];

  v4 = [v3 stringValue];

  return v4;
}

- (id)_insertEdgeForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLGeneratedAssetDescription.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [(PLGraphNodeContainer *)self sourceNode];
  v7 = [v6 managedObjectContext];

  v8 = [PLGeneratedAssetDescription _labelWithCode:1300 context:v7];
  v9 = [PLGraphEdge insertGraphEdgeInContext:v7 withPrimaryLabel:v8];

  v10 = [(PLGraphNodeContainer *)self sourceNode];
  [v9 setTargetNode:v10];

  [v9 setSourceAsset:v5];

  return v9;
}

+ (void)resetGeneratedAssetDescriptionsForAsset:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 targetNode];

        if (v11)
        {
          v12 = [v10 targetNode];
          [v4 deleteObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [v3 mediaAnalysisAttributes];
  v14 = [v13 imageCaptionVersion];

  if (v14)
  {
    v15 = [v3 mediaAnalysisAttributes];
    [v15 setImageCaptionVersion:0];
  }

  v16 = [v3 mediaAnalysisAttributes];
  v17 = [v16 videoCaptionVersion];

  if (v17)
  {
    v18 = [v3 mediaAnalysisAttributes];
    [v18 setVideoCaptionVersion:0];
  }
}

+ (void)setGeneratedAssetDescriptionForAsset:(id)a3 fromDictionaries:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v39 = a4;
  v6 = [v39 mutableCopy];
  v7 = v5;
  [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:v5];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v35 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v35)
  {
    v34 = *v50;
    do
    {
      v8 = 0;
      do
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v9 = [*(*(&v49 + 1) + 8 * v8) targetNode];
        v10 = [(PLGraphNodeContainer *)PLGeneratedAssetDescription newNodeContainerWithNode:v9];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = v39;
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v46;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v46 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v45 + 1) + 8 * i);
              v17 = [v16 integerValue];
              if (v17 == [v10 analysisSourceType])
              {
                v18 = [v11 objectForKeyedSubscript:v16];
                v19 = [v18 objectForKeyedSubscript:@"descriptionText"];
                [v10 setDescriptionText:v19];

                v20 = [v11 objectForKeyedSubscript:v16];
                v21 = [v20 objectForKeyedSubscript:@"analysisVersion"];
                [v10 setAnalysisVersion:{objc_msgSend(v21, "integerValue")}];

                [a1 _updateAsset:v7 nodeContainer:v10];
                [v6 removeObjectForKey:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v13);
        }

        v8 = v37 + 1;
      }

      while ((v37 + 1) != v35);
      v35 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v35);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = v6;
  v22 = [v36 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v38 = *v42;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v25 = *(*(&v41 + 1) + 8 * j);
        v26 = [v7 managedObjectContext];
        v27 = [a1 newNodeContainerWithManagedObjectContext:v26];

        v28 = [v39 objectForKeyedSubscript:v25];
        v29 = [v28 objectForKeyedSubscript:@"descriptionText"];
        [v27 setDescriptionText:v29];

        v30 = [v39 objectForKeyedSubscript:v25];
        v31 = [v30 objectForKeyedSubscript:@"analysisVersion"];
        [v27 setAnalysisVersion:{objc_msgSend(v31, "integerValue")}];

        [v27 setAnalysisSourceType:{objc_msgSend(v25, "integerValue")}];
        v32 = [v27 _insertEdgeForAsset:v7];
        [a1 _updateAsset:v7 nodeContainer:v27];
      }

      v23 = [v36 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v23);
  }
}

+ (void)_updateAsset:(id)a3 nodeContainer:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (![v7 analysisSourceType])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLGeneratedAssetDescription.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"description.analysisSourceType != PLGeneratedAssetDescriptionSourceTypeUnknown"}];
  }

  v8 = [v11 mediaAnalysisAttributesInsertingIfNecessary];
  v9 = [v7 analysisSourceType];
  if (v9 == 2)
  {
    [v8 setVideoCaptionVersion:{objc_msgSend(v7, "analysisVersion")}];
  }

  else if (v9 == 1)
  {
    [v8 setImageCaptionVersion:{objc_msgSend(v7, "analysisVersion")}];
  }
}

+ (void)_enumerateGraphNodesForAssetObjectIDs:(id)a3 inContext:(id)a4 withBlock:(id)a5
{
  v34[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PLGeneratedAssetDescription _labelIDWithCode:1300 context:v8];
  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v10];
  v34[0] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"sourceAsset", v7];
  v34[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];

  v16 = +[PLGraphEdge fetchRequest];
  [v16 setPredicate:v15];
  [v16 setResultType:2];
  [v16 setFetchBatchSize:200];
  v33[0] = @"objectID";
  v33[1] = @"targetNode";
  v33[2] = @"sourceAsset";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v16 setPropertiesToFetch:v17];

  v32 = @"targetNode";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v16 setRelationshipKeyPathsForPrefetching:v18];

  v27 = 0;
  v19 = [v8 executeFetchRequest:v16 error:&v27];
  v20 = v27;
  if (!v19)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v7;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch generated asset descriptions for assets %{public}@ with error %@", buf, 0x16u);
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__PLGeneratedAssetDescription__enumerateGraphNodesForAssetObjectIDs_inContext_withBlock___block_invoke;
  v24[3] = &unk_1E756BF90;
  v25 = v8;
  v26 = v9;
  v22 = v9;
  v23 = v8;
  [v19 enumerateObjectsUsingBlock:v24];
}

void __89__PLGeneratedAssetDescription__enumerateGraphNodesForAssetObjectIDs_inContext_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"targetNode"];
  v7 = [*(a1 + 32) objectWithID:v6];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v10 objectForKeyedSubscript:@"sourceAsset"];
    (*(v8 + 16))(v8, v7, v9, a4);
  }
}

+ (id)fetchGeneratedAssetDescriptionNodesForAsset:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v5 objectID];
  v9 = [v7 setWithObject:v8];
  v10 = [v5 managedObjectContext];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLGeneratedAssetDescription_fetchGeneratedAssetDescriptionNodesForAsset___block_invoke;
  v13[3] = &unk_1E7566A00;
  v11 = v6;
  v14 = v11;
  [a1 _enumerateGraphNodesForAssetObjectIDs:v9 inContext:v10 withBlock:v13];

  return v11;
}

+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType:(int64_t)a3 forAssetsIDs:(id)a4 inLibrary:(id)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v10 = [v8 dictionary];
  v11 = [v9 managedObjectContext];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__PLGeneratedAssetDescription_fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType_forAssetsIDs_inLibrary___block_invoke;
  v18[3] = &unk_1E7576168;
  v19 = v11;
  v20 = v7;
  v22 = a3;
  v12 = v10;
  v21 = v12;
  v13 = v7;
  v14 = v11;
  [v9 performBlockAndWait:v18];

  v15 = v21;
  v16 = v12;

  return v12;
}

void __110__PLGeneratedAssetDescription_fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType_forAssetsIDs_inLibrary___block_invoke(uint64_t a1)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = [PLGeneratedAssetDescription _labelIDWithCode:1300 context:*(a1 + 32)];
  v3 = MEMORY[0x1E696AB28];
  v31 = v2;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %@", @"primaryLabel", v2];
  v43[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"sourceAsset", *(a1 + 40)];
  v43[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  v8 = +[PLGraphEdge fetchRequest];
  v30 = v7;
  [v8 setPredicate:v7];
  [v8 setResultType:0];
  v42 = @"targetNode";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v10 = *(a1 + 32);
  v36 = 0;
  v29 = v8;
  v11 = [v10 executeFetchRequest:v8 error:&v36];
  v12 = v36;
  if (!v11)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v39 = v14;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch generated asset descriptions for assets %@ with error %@", buf, 0x16u);
    }
  }

  v28 = v12;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [v20 targetNode];
        v22 = [v20 sourceAsset];
        v23 = [v22 objectID];

        v24 = [(PLGraphNodeContainer *)PLGeneratedAssetDescription newNodeContainerWithNode:v21];
        if ([v24 analysisSourceType] == *(a1 + 56))
        {
          v25 = [*(a1 + 48) objectForKeyedSubscript:v23];

          if (v25)
          {
            v26 = PLBackendGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = *(a1 + 56);
              *buf = 134218242;
              v39 = v27;
              v40 = 2114;
              v41 = v23;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Found more that one generated asset description node for type %ld for asset %{public}@", buf, 0x16u);
            }
          }

          [*(a1 + 48) setObject:v24 forKeyedSubscript:v23];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v17);
  }
}

+ (id)_fetchGeneratedAssetDescriptionEdgesForAsset:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLGraphEdge entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [PLGeneratedAssetDescription _labelIDWithCode:1300 context:v4];
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v8];
  v22[0] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"sourceAsset", v3];

  v22[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];
  [v7 setPredicate:v13];

  v19 = 0;
  v14 = [v4 executeFetchRequest:v7 error:&v19];
  v15 = v19;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Fetch for edges failed: %@", buf, 0xCu);
    }
  }

  return v14;
}

+ (id)_newNodeContainerWithManagedObjectContext:(id)a3 dictionary:(id)a4
{
  v6 = a4;
  v7 = [a1 newNodeContainerWithManagedObjectContext:a3];
  v8 = [v6 objectForKeyedSubscript:@"descriptionText"];
  [v7 setDescriptionText:v8];

  v9 = [v6 objectForKeyedSubscript:@"analysisVersion"];
  [v7 setAnalysisVersion:{objc_msgSend(v9, "integerValue")}];

  v10 = [v6 objectForKeyedSubscript:@"analysisSourceType"];

  [v7 setAnalysisSourceType:{objc_msgSend(v10, "integerValue")}];
  return v7;
}

+ (id)_labelIDWithCode:(int)a3 context:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [v5 pl_graphCache];
  v7 = [v6 objectIDForLabelWithCode:v4 inContext:v5];

  return v7;
}

+ (id)_labelWithCode:(int)a3 context:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [v5 pl_graphCache];
  v7 = [v6 labelWithCode:v4 inContext:v5];

  return v7;
}

+ (void)prepareForDeletingIncomingEdge:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___PLGeneratedAssetDescription;
  v3 = a3;
  objc_msgSendSuper2(&v6, sel_prepareForDeletingIncomingEdge_, v3);
  v4 = [v3 managedObjectContext];
  v5 = [v3 targetNode];

  [v4 deleteObject:v5];
}

+ (id)newNodeContainerWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [v4 pl_graphCache];
  v6 = [v5 labelWithCode:1300 inContext:v4];
  v7 = [PLGraphNode insertGraphNodeInContext:v4 withPrimaryLabel:v6];

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___PLGeneratedAssetDescription;
  v8 = [objc_msgSendSuper2(&v12 alloc)];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  [v8 setUuid:v10];

  return v8;
}

@end