@interface PLGeneratedAssetDescription
+ (id)_fetchGeneratedAssetDescriptionEdgesForAsset:(id)asset;
+ (id)_labelIDWithCode:(int)code context:(id)context;
+ (id)_labelWithCode:(int)code context:(id)context;
+ (id)_newNodeContainerWithManagedObjectContext:(id)context dictionary:(id)dictionary;
+ (id)fetchGeneratedAssetDescriptionNodesForAsset:(id)asset;
+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType:(int64_t)type forAssetsIDs:(id)ds inLibrary:(id)library;
+ (id)newNodeContainerWithManagedObjectContext:(id)context;
+ (void)_enumerateGraphNodesForAssetObjectIDs:(id)ds inContext:(id)context withBlock:(id)block;
+ (void)_updateAsset:(id)asset nodeContainer:(id)container;
+ (void)prepareForDeletingIncomingEdge:(id)edge;
+ (void)resetGeneratedAssetDescriptionsForAsset:(id)asset;
+ (void)resetGeneratedAssetDescriptionsForAsset:(id)asset sourceTypes:(id)types;
+ (void)setGeneratedAssetDescriptionForAsset:(id)asset fromDictionaries:(id)dictionaries;
- (NSString)descriptionText;
- (id)_insertEdgeForAsset:(id)asset;
- (id)asset;
- (id)description;
- (int64_t)analysisSourceType;
- (signed)analysisVersion;
- (void)_updateChangeFlagForProperties;
- (void)setAnalysisSourceType:(int64_t)type;
- (void)setAnalysisVersion:(signed __int16)version;
- (void)setDescriptionText:(id)text;
@end

@implementation PLGeneratedAssetDescription

+ (void)resetGeneratedAssetDescriptionsForAsset:(id)asset sourceTypes:(id)types
{
  v38 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typesCopy = types;
  v8 = [typesCopy containsObject:&unk_1F0FBAF90];
  v9 = [typesCopy containsObject:&unk_1F0FBAFA8];
  if (v8 && v9)
  {
    [self resetGeneratedAssetDescriptionsForAsset:assetCopy];
  }

  else
  {
    [assetCopy managedObjectContext];
    v31 = v30 = assetCopy;
    [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:assetCopy];
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
          targetNode = [v14 targetNode];
          v17 = [(PLGraphNodeContainer *)v15 initWithNode:targetNode];

          v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLGeneratedAssetDescription analysisSourceType](v17, "analysisSourceType")}];
          v19 = [typesCopy containsObject:v18];

          if (v19)
          {
            targetNode2 = [v14 targetNode];

            if (targetNode2)
            {
              targetNode3 = [v14 targetNode];
              [v31 deleteObject:targetNode3];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    assetCopy = v30;
    if (v28)
    {
      mediaAnalysisAttributes = [v30 mediaAnalysisAttributes];
      imageCaptionVersion = [mediaAnalysisAttributes imageCaptionVersion];

      if (imageCaptionVersion)
      {
        mediaAnalysisAttributes2 = [v30 mediaAnalysisAttributes];
        [mediaAnalysisAttributes2 setImageCaptionVersion:0];
      }
    }

    if (v29)
    {
      mediaAnalysisAttributes3 = [v30 mediaAnalysisAttributes];
      videoCaptionVersion = [mediaAnalysisAttributes3 videoCaptionVersion];

      if (videoCaptionVersion)
      {
        mediaAnalysisAttributes4 = [v30 mediaAnalysisAttributes];
        [mediaAnalysisAttributes4 setVideoCaptionVersion:0];
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  asset = [(PLGeneratedAssetDescription *)self asset];
  pl_shortDescription = [asset pl_shortDescription];
  descriptionText = [(PLGeneratedAssetDescription *)self descriptionText];
  v7 = [v3 stringWithFormat:@"\nasset: %@\ndescriptionText: %@\nanalysisVersion: %llu\nanalysisSourceType: %ld", pl_shortDescription, descriptionText, -[PLGeneratedAssetDescription analysisVersion](self, "analysisVersion"), -[PLGeneratedAssetDescription analysisSourceType](self, "analysisSourceType")];

  return v7;
}

- (void)_updateChangeFlagForProperties
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setChangeFlag0:{objc_msgSend(sourceNode, "changeFlag0") + 1}];
}

- (id)asset
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  edgesIn = [sourceNode edgesIn];
  anyObject = [edgesIn anyObject];
  sourceAsset = [anyObject sourceAsset];

  return sourceAsset;
}

- (void)setAnalysisSourceType:(int64_t)type
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:1000 createIfMissing:1];

  [v6 setIntegerValue:type];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (int64_t)analysisSourceType
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:1000];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setAnalysisVersion:(signed __int16)version
{
  versionCopy = version;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:1002 createIfMissing:1];

  [v6 setIntegerValue:versionCopy];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (signed)analysisVersion
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:1002];

  LOWORD(sourceNode) = [v3 integerValue];
  return sourceNode;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:1001 createIfMissing:1];

  [v6 setStringValue:textCopy];
  [(PLGeneratedAssetDescription *)self _updateChangeFlagForProperties];
}

- (NSString)descriptionText
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:1001];

  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)_insertEdgeForAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGeneratedAssetDescription.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  managedObjectContext = [sourceNode managedObjectContext];

  v8 = [PLGeneratedAssetDescription _labelWithCode:1300 context:managedObjectContext];
  v9 = [PLGraphEdge insertGraphEdgeInContext:managedObjectContext withPrimaryLabel:v8];

  sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
  [v9 setTargetNode:sourceNode2];

  [v9 setSourceAsset:assetCopy];

  return v9;
}

+ (void)resetGeneratedAssetDescriptionsForAsset:(id)asset
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managedObjectContext = [assetCopy managedObjectContext];
  v5 = [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:assetCopy];
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
        targetNode = [v10 targetNode];

        if (targetNode)
        {
          targetNode2 = [v10 targetNode];
          [managedObjectContext deleteObject:targetNode2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
  imageCaptionVersion = [mediaAnalysisAttributes imageCaptionVersion];

  if (imageCaptionVersion)
  {
    mediaAnalysisAttributes2 = [assetCopy mediaAnalysisAttributes];
    [mediaAnalysisAttributes2 setImageCaptionVersion:0];
  }

  mediaAnalysisAttributes3 = [assetCopy mediaAnalysisAttributes];
  videoCaptionVersion = [mediaAnalysisAttributes3 videoCaptionVersion];

  if (videoCaptionVersion)
  {
    mediaAnalysisAttributes4 = [assetCopy mediaAnalysisAttributes];
    [mediaAnalysisAttributes4 setVideoCaptionVersion:0];
  }
}

+ (void)setGeneratedAssetDescriptionForAsset:(id)asset fromDictionaries:(id)dictionaries
{
  v56 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dictionariesCopy = dictionaries;
  v6 = [dictionariesCopy mutableCopy];
  v7 = assetCopy;
  [PLGeneratedAssetDescription _fetchGeneratedAssetDescriptionEdgesForAsset:assetCopy];
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
        targetNode = [*(*(&v49 + 1) + 8 * v8) targetNode];
        v10 = [(PLGraphNodeContainer *)PLGeneratedAssetDescription newNodeContainerWithNode:targetNode];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = dictionariesCopy;
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
              integerValue = [v16 integerValue];
              if (integerValue == [v10 analysisSourceType])
              {
                v18 = [v11 objectForKeyedSubscript:v16];
                v19 = [v18 objectForKeyedSubscript:@"descriptionText"];
                [v10 setDescriptionText:v19];

                v20 = [v11 objectForKeyedSubscript:v16];
                v21 = [v20 objectForKeyedSubscript:@"analysisVersion"];
                [v10 setAnalysisVersion:{objc_msgSend(v21, "integerValue")}];

                [self _updateAsset:v7 nodeContainer:v10];
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
        managedObjectContext = [v7 managedObjectContext];
        v27 = [self newNodeContainerWithManagedObjectContext:managedObjectContext];

        v28 = [dictionariesCopy objectForKeyedSubscript:v25];
        v29 = [v28 objectForKeyedSubscript:@"descriptionText"];
        [v27 setDescriptionText:v29];

        v30 = [dictionariesCopy objectForKeyedSubscript:v25];
        v31 = [v30 objectForKeyedSubscript:@"analysisVersion"];
        [v27 setAnalysisVersion:{objc_msgSend(v31, "integerValue")}];

        [v27 setAnalysisSourceType:{objc_msgSend(v25, "integerValue")}];
        v32 = [v27 _insertEdgeForAsset:v7];
        [self _updateAsset:v7 nodeContainer:v27];
      }

      v23 = [v36 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v23);
  }
}

+ (void)_updateAsset:(id)asset nodeContainer:(id)container
{
  assetCopy = asset;
  containerCopy = container;
  if (![containerCopy analysisSourceType])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGeneratedAssetDescription.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"description.analysisSourceType != PLGeneratedAssetDescriptionSourceTypeUnknown"}];
  }

  mediaAnalysisAttributesInsertingIfNecessary = [assetCopy mediaAnalysisAttributesInsertingIfNecessary];
  analysisSourceType = [containerCopy analysisSourceType];
  if (analysisSourceType == 2)
  {
    [mediaAnalysisAttributesInsertingIfNecessary setVideoCaptionVersion:{objc_msgSend(containerCopy, "analysisVersion")}];
  }

  else if (analysisSourceType == 1)
  {
    [mediaAnalysisAttributesInsertingIfNecessary setImageCaptionVersion:{objc_msgSend(containerCopy, "analysisVersion")}];
  }
}

+ (void)_enumerateGraphNodesForAssetObjectIDs:(id)ds inContext:(id)context withBlock:(id)block
{
  v34[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  blockCopy = block;
  v10 = [PLGeneratedAssetDescription _labelIDWithCode:1300 context:contextCopy];
  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v10];
  v34[0] = v12;
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"sourceAsset", dsCopy];
  v34[1] = dsCopy;
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
  v19 = [contextCopy executeFetchRequest:v16 error:&v27];
  v20 = v27;
  if (!v19)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = dsCopy;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch generated asset descriptions for assets %{public}@ with error %@", buf, 0x16u);
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__PLGeneratedAssetDescription__enumerateGraphNodesForAssetObjectIDs_inContext_withBlock___block_invoke;
  v24[3] = &unk_1E756BF90;
  v25 = contextCopy;
  v26 = blockCopy;
  v22 = blockCopy;
  v23 = contextCopy;
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

+ (id)fetchGeneratedAssetDescriptionNodesForAsset:(id)asset
{
  v4 = MEMORY[0x1E695DFA8];
  assetCopy = asset;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x1E695DFD8];
  objectID = [assetCopy objectID];
  v9 = [v7 setWithObject:objectID];
  managedObjectContext = [assetCopy managedObjectContext];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLGeneratedAssetDescription_fetchGeneratedAssetDescriptionNodesForAsset___block_invoke;
  v13[3] = &unk_1E7566A00;
  v11 = v6;
  v14 = v11;
  [self _enumerateGraphNodesForAssetObjectIDs:v9 inContext:managedObjectContext withBlock:v13];

  return v11;
}

+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType:(int64_t)type forAssetsIDs:(id)ds inLibrary:(id)library
{
  dsCopy = ds;
  v8 = MEMORY[0x1E695DF90];
  libraryCopy = library;
  dictionary = [v8 dictionary];
  managedObjectContext = [libraryCopy managedObjectContext];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__PLGeneratedAssetDescription_fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType_forAssetsIDs_inLibrary___block_invoke;
  v18[3] = &unk_1E7576168;
  v19 = managedObjectContext;
  v20 = dsCopy;
  typeCopy = type;
  v12 = dictionary;
  v21 = v12;
  v13 = dsCopy;
  v14 = managedObjectContext;
  [libraryCopy performBlockAndWait:v18];

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

+ (id)_fetchGeneratedAssetDescriptionEdgesForAsset:(id)asset
{
  v22[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managedObjectContext = [assetCopy managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLGraphEdge entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [PLGeneratedAssetDescription _labelIDWithCode:1300 context:managedObjectContext];
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v8];
  v22[0] = v10;
  assetCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"sourceAsset", assetCopy];

  v22[1] = assetCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];
  [v7 setPredicate:v13];

  v19 = 0;
  v14 = [managedObjectContext executeFetchRequest:v7 error:&v19];
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

+ (id)_newNodeContainerWithManagedObjectContext:(id)context dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = [self newNodeContainerWithManagedObjectContext:context];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"descriptionText"];
  [v7 setDescriptionText:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"analysisVersion"];
  [v7 setAnalysisVersion:{objc_msgSend(v9, "integerValue")}];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"analysisSourceType"];

  [v7 setAnalysisSourceType:{objc_msgSend(v10, "integerValue")}];
  return v7;
}

+ (id)_labelIDWithCode:(int)code context:(id)context
{
  v4 = *&code;
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache objectIDForLabelWithCode:v4 inContext:contextCopy];

  return v7;
}

+ (id)_labelWithCode:(int)code context:(id)context
{
  v4 = *&code;
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache labelWithCode:v4 inContext:contextCopy];

  return v7;
}

+ (void)prepareForDeletingIncomingEdge:(id)edge
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___PLGeneratedAssetDescription;
  edgeCopy = edge;
  objc_msgSendSuper2(&v6, sel_prepareForDeletingIncomingEdge_, edgeCopy);
  managedObjectContext = [edgeCopy managedObjectContext];
  targetNode = [edgeCopy targetNode];

  [managedObjectContext deleteObject:targetNode];
}

+ (id)newNodeContainerWithManagedObjectContext:(id)context
{
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v6 = [pl_graphCache labelWithCode:1300 inContext:contextCopy];
  v7 = [PLGraphNode insertGraphNodeInContext:contextCopy withPrimaryLabel:v6];

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___PLGeneratedAssetDescription;
  v8 = [objc_msgSendSuper2(&v12 alloc)];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v8 setUuid:uUIDString];

  return v8;
}

@end