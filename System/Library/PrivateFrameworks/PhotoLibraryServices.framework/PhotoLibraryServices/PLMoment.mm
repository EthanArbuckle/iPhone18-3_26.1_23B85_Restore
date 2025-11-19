@interface PLMoment
+ (NSArray)sortByTimeSortDescriptors;
+ (id)allAssetsInManagedObjectContext:(id)a3 predicate:(id)a4 IDsOnly:(BOOL)a5 error:(id *)a6;
+ (id)allAssetsIncludedInMomentsInLibrary:(id)a3;
+ (id)allAssetsIncludedInMomentsInManagedObjectContext:(id)a3 IDsOnly:(BOOL)a4 error:(id *)a5;
+ (id)allInvalidAssetsInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)allInvalidMomentsInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)allMomentsInManagedObjectContext:(id)a3 predicate:(id)a4 idsOnly:(BOOL)a5 error:(id *)a6;
+ (id)allMomentsRequiringAnalysisInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs:(id)a3 andAssetPredicate:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
+ (id)batchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:(id)a3 library:(id)a4 error:(id *)a5;
+ (id)fetchMomentIDsNotAnalyzedForThemesInContext:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5;
+ (id)insertNewMomentInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)momentIDsWithPersonIDs:(id)a3 inContext:(id)a4;
+ (id)momentsRequiringLocationProcessingWhenCoreRoutineIsAvailableInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailableInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)momentsRequiringLocationProcessingWhenFrequentLocationsChangedInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)momentsWithLocationOfInterestInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)predicateForAssetsIncludedInMoments;
+ (id)predicateForInvalidAssets;
+ (id)predicateForInvalidMoments;
+ (void)_recalculateAssetCountsForMoment:(id)a3;
+ (void)batchFetchMomentUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 completion:(id)a5;
+ (void)enumerateAssetUUIDsForSearchIndexingWithMomentUUID:(id)a3 managedObjectContext:(id)a4 libraryIdentifier:(int64_t)a5 assetUUIDHandler:(id)a6;
- (BOOL)hasEmptyThemePlaceholder;
- (CLLocation)approximateLocation;
- (CLLocationCoordinate2D)pl_coordinate;
- (NSArray)batchedAssets;
- (NSArray)themeAssignments;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (id)_edgesToEmptyThemePlaceholder;
- (id)_fetchEdgeToTheme:(id)a3;
- (id)_fetchEmptyThemePlaceholderNode;
- (id)_fetchOrCreateEmptyThemePlaceholderNode;
- (id)_fetchOrInsertEdgeToTheme:(id)a3;
- (id)_fetchThemeAssignmentEdges;
- (id)bestAsset;
- (id)edgesIn;
- (id)edgesOut;
- (id)groupURL;
- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)a3;
- (unint64_t)countForAssetsOfKind:(signed __int16)a3;
- (unint64_t)fetchedAssetsCount;
- (void)_ensureEmptyThemePlaceholderIsSet:(BOOL)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5;
- (void)assignEmptyThemesWithAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4;
- (void)assignThemeNamed:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 withConfidence:(id)a6;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)clearThemeAssignments;
- (void)dealloc;
- (void)delete;
- (void)didTurnIntoFault;
- (void)insertAssetData:(id)a3;
- (void)prepareForDeletion;
- (void)recalculateSharedAssetContainerCachedValues;
- (void)registerForChanges;
- (void)removeAssetData:(id)a3;
- (void)removeAssetsObject:(id)a3;
- (void)replaceObjectInAssets:(id)a3 withObject:(id)a4;
- (void)reportSharedAssetContainerIncrementalChange:(id)a3 forAllAssetsCountKey:(id)a4;
- (void)setApproximateLocation:(id)a3;
- (void)setThemeAssignmentsToAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4;
- (void)unregisterForChanges;
- (void)willSave;
- (void)willTurnIntoFault;
@end

@implementation PLMoment

- (BOOL)hasEmptyThemePlaceholder
{
  v3 = [(PLMoment *)self _fetchEmptyThemePlaceholderNode];
  if (v3)
  {
    v4 = [(PLMoment *)self _edgesToEmptyThemePlaceholder];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)themeAssignments
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [(PLMoment *)self _fetchThemeAssignmentEdges];
  v3 = v2;
  if (v2)
  {
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v3;
    obj = v3;
    v23 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v23)
    {
      v21 = *v26;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v25 + 1) + 8 * i);
          v24 = [v5 targetNode];
          v6 = [[PLMomentTheme alloc] initWithNode:v24];
          v7 = [v5 valueWithCode:4002];
          v8 = [v7 integerValue];
          v9 = [v5 valueWithCode:4003];
          v10 = [v9 integerValue];
          v11 = [v5 valueWithCode:4001];
          v12 = v11;
          if (v11)
          {
            v13 = MEMORY[0x1E696AD98];
            [v11 doubleValue];
            v14 = [v13 numberWithDouble:?];
          }

          else
          {
            v14 = 0;
          }

          v15 = [PLMomentThemeAssignment alloc];
          v16 = [(PLMomentTheme *)v6 themeName];
          v17 = [(PLMomentThemeAssignment *)v15 initWithThemeName:v16 adapterVersion:v8 uemVersion:v10 confidence:v14];

          [v22 addObject:v17];
        }

        v23 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v23);
    }

    v3 = v19;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)clearThemeAssignments
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(PLMoment *)self managedObjectContext];
  v4 = [(PLMoment *)self _fetchThemeAssignmentEdges];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (([v9 isDeleted] & 1) == 0)
        {
          [v3 deleteObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v10 = [(PLMoment *)self _edgesToEmptyThemePlaceholder];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        if (([v15 isDeleted] & 1) == 0)
        {
          [v3 deleteObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)setThemeAssignmentsToAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(PLMoment *)self _fetchThemeAssignmentEdges];
  [v7 addObjectsFromArray:v8];

  v9 = [(PLMoment *)self _edgesToEmptyThemePlaceholder];
  [v7 addObjectsFromArray:v9];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 valueWithCode:4002 createIfMissing:{0, v18}];
        [v16 setIntegerValue:a3];
        v17 = [v15 valueWithCode:4003 createIfMissing:0];
        [v17 setIntegerValue:a4];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)assignEmptyThemesWithAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4
{
  [(PLMoment *)self clearThemeAssignments];

  [(PLMoment *)self _ensureEmptyThemePlaceholderIsSet:1 adapterVersion:a3 uemVersion:a4];
}

- (void)assignThemeNamed:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 withConfidence:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLMomentTheme.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];
  }

  v13 = [(PLMoment *)self managedObjectContext];
  v14 = [PLMomentTheme fetchExistingOrInsertThemeWithName:v11 inContext:v13];

  if (v14)
  {
    v15 = [(PLMoment *)self _fetchOrInsertEdgeToTheme:v14];
    v16 = [v15 valueWithCode:4002 createIfMissing:1];
    [v16 setIntegerValue:a4];
    v17 = [v15 valueWithCode:4003 createIfMissing:1];
    [v17 setIntegerValue:a5];
    if (v12)
    {
      v18 = [v15 valueWithCode:4001 createIfMissing:1];
      [v12 doubleValue];
      [v18 setDoubleValue:?];
    }

    [(PLMoment *)self _ensureEmptyThemePlaceholderIsSet:0 adapterVersion:a4 uemVersion:a5];
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PLMoment *)self objectID];
      *buf = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Unable to assign moment theme due to failure to lookup theme with name: %@, moment objectID: %@", buf, 0x16u);
    }
  }
}

- (id)_fetchOrInsertEdgeToTheme:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLMomentTheme.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"theme"}];
  }

  v6 = [(PLMoment *)self _fetchEdgeToTheme:v5];
  if (!v6)
  {
    v7 = [(PLMoment *)self managedObjectContext];
    v6 = [(PLManagedObject *)PLGraphEdge insertInManagedObjectContext:v7];

    [v6 setSourceMoment:self];
    v8 = [v5 sourceNode];
    [v6 setTargetNode:v8];
  }

  return v6;
}

- (id)_fetchEdgeToTheme:(id)a3
{
  v4 = a3;
  v5 = [(PLMoment *)self edgesOut];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PLMoment_PLMomentThemeAdditions___fetchEdgeToTheme___block_invoke;
  v9[3] = &unk_1E756B3D0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _pl_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __54__PLMoment_PLMomentThemeAdditions___fetchEdgeToTheme___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceMoment];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 targetNode];
    v6 = [*(a1 + 40) sourceNode];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fetchThemeAssignmentEdges
{
  v3 = [(PLMoment *)self managedObjectContext];
  v4 = [PLMomentTheme momentThemeLabelInContext:v3];

  v5 = [(PLMoment *)self edgesOut];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PLMoment_PLMomentThemeAdditions___fetchThemeAssignmentEdges__block_invoke;
  v10[3] = &unk_1E756B3A8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 _pl_filter:v10];

  v8 = [v7 allObjects];

  return v8;
}

uint64_t __62__PLMoment_PLMomentThemeAdditions___fetchThemeAssignmentEdges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDeleted])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 targetNode];
    v6 = [v5 primaryLabel];
    v4 = [v6 isEqual:*(a1 + 32)];
  }

  return v4;
}

- (void)_ensureEmptyThemePlaceholderIsSet:(BOOL)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5
{
  v7 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v9 = [(PLMoment *)self managedObjectContext];
  v10 = [(PLMoment *)self _edgesToEmptyThemePlaceholder];
  v11 = v10;
  if (v7)
  {
    v12 = [(PLMoment *)self _fetchOrCreateEmptyThemePlaceholderNode];
    if ([v11 count])
    {
      v13 = [v11 firstObject];
    }

    else
    {
      v13 = [(PLManagedObject *)PLGraphEdge insertInManagedObjectContext:v9];
      [v13 setSourceMoment:self];
      [v13 setTargetNode:v12];
    }

    v19 = [v13 valueWithCode:4002 createIfMissing:1];
    [v19 setIntegerValue:a4];
    v20 = [v13 valueWithCode:4003 createIfMissing:1];
    [v20 setIntegerValue:a5];
  }

  else if ([v10 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v9 deleteObject:{*(*(&v21 + 1) + 8 * v18++), v21}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

- (id)_edgesToEmptyThemePlaceholder
{
  v3 = [(PLMoment *)self managedObjectContext];
  v4 = [PLMomentTheme noThemesLabelInContext:v3];

  v5 = [(PLMoment *)self edgesOut];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PLMoment_PLMomentThemeAdditions___edgesToEmptyThemePlaceholder__block_invoke;
  v10[3] = &unk_1E756B3A8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 _pl_filter:v10];

  v8 = [v7 allObjects];

  return v8;
}

uint64_t __65__PLMoment_PLMomentThemeAdditions___edgesToEmptyThemePlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 targetNode];
  v4 = [v3 primaryLabel];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)_fetchOrCreateEmptyThemePlaceholderNode
{
  v3 = [(PLMoment *)self managedObjectContext];
  v4 = [PLMomentTheme noThemesLabelInContext:v3];
  v5 = [(PLMoment *)self _fetchEmptyThemePlaceholderNode];
  if (!v5)
  {
    v5 = [PLGraphNode insertGraphNodeInContext:v3 withPrimaryLabel:v4];
  }

  return v5;
}

- (id)_fetchEmptyThemePlaceholderNode
{
  v3 = [(PLMoment *)self managedObjectContext];
  v4 = [PLMomentTheme noThemesLabelInContext:v3];

  v5 = [(PLMoment *)self edgesOut];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PLMoment_PLMomentThemeAdditions___fetchEmptyThemePlaceholderNode__block_invoke;
  v10[3] = &unk_1E756B3A8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 _pl_firstObjectPassingTest:v10];

  v8 = [v7 targetNode];

  return v8;
}

uint64_t __67__PLMoment_PLMomentThemeAdditions___fetchEmptyThemePlaceholderNode__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 targetNode];
  v4 = [v3 primaryLabel];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

+ (id)fetchMomentIDsNotAnalyzedForThemesInContext:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5
{
  v55[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = +[PLMoment fetchRequest];
  [v9 setResultType:1];
  v50 = 0;
  v10 = [v7 executeFetchRequest:v9 error:&v50];
  v11 = v50;
  [v8 addObjectsFromArray:v10];

  if (v8)
  {
    v38 = a4;
    v39 = a5;
    v12 = [PLMomentTheme momentThemeLabelInContext:v7];
    v13 = [PLMomentTheme noThemesLabelInContext:v7];
    v14 = +[PLGraphEdge fetchRequest];
    v37 = v13;
    v40 = v12;
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil AND (%K = %@ OR %K = %@)", @"sourceMoment", @"targetNode.primaryLabel", v12, @"targetNode.primaryLabel", v13];
    [v14 setPredicate:v15];

    v55[0] = @"sourceMoment";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    [v14 setPropertiesToFetch:v16];

    v54 = @"values";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    [v14 setRelationshipKeyPathsForPrefetching:v17];

    v49 = v11;
    v18 = [v7 executeFetchRequest:v14 error:&v49];
    v19 = v49;

    v20 = [MEMORY[0x1E695DF90] dictionary];
    v35 = v18;
    v36 = v19;
    if (v18)
    {
      v34 = v9;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v32 = v7;
        v33 = v8;
        v24 = *v46;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v46 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v45 + 1) + 8 * i);
            v27 = [v26 sourceMoment];
            v28 = [v27 objectID];

            v29 = [v20 objectForKeyedSubscript:v28];
            if (!v29)
            {
              v29 = [MEMORY[0x1E695DFA8] set];
              [v20 setObject:v29 forKeyedSubscript:v28];
            }

            [v29 addObject:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v23);
        v7 = v32;
        v8 = v33;
      }

      v9 = v34;
    }

    else
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v19;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch moment/theme edges with error: %@", buf, 0xCu);
      }
    }

    v30 = v40;

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __106__PLMoment_PLMomentThemeAdditions__fetchMomentIDsNotAnalyzedForThemesInContext_adapterVersion_uemVersion___block_invoke;
    v41[3] = &unk_1E756B3F8;
    v43 = v38;
    v44 = v39;
    v42 = v8;
    [v20 enumerateKeysAndObjectsUsingBlock:v41];

    v11 = v36;
  }

  else
  {
    v30 = PLBackendGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v11;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to fetch moment IDs with error: %@", buf, 0xCu);
    }
  }

  return v8;
}

void __106__PLMoment_PLMomentThemeAdditions__fetchMomentIDsNotAnalyzedForThemesInContext_adapterVersion_uemVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 valueWithCode:{4002, v20}];
        v13 = [v11 valueWithCode:4003];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15 || (v16 = [v12 integerValue], v17 = objc_msgSend(v14, "integerValue"), v16 < *(a1 + 40)))
        {

LABEL_16:
          goto LABEL_17;
        }

        v18 = v17;
        v19 = *(a1 + 48);

        if (v18 < v19)
        {
          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 32) removeObject:v5];
LABEL_17:
}

+ (void)enumerateAssetUUIDsForSearchIndexingWithMomentUUID:(id)a3 managedObjectContext:(id)a4 libraryIdentifier:(int64_t)a5 assetUUIDHandler:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 length];
  if (v11 && v10 && v12)
  {
    v13 = +[PLMoment fetchRequest];
    [v13 setResultType:1];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", v9];
    [v13 setPredicate:v14];

    v58 = 0;
    v15 = [v10 executeFetchRequest:v13 error:&v58];
    v16 = v58;
    v17 = [v15 firstObject];
    v18 = v17;
    if (v17)
    {
      v43 = a5;
      v44 = v17;
      v45 = v16;
      v46 = v15;
      v47 = v13;
      v48 = v11;
      v49 = v10;
      v19 = [v10 deletedObjects];
      v50 = [MEMORY[0x1E695DFA8] set];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v55;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v55 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v54 + 1) + 8 * i);
            v26 = [v25 entity];
            v27 = [v26 name];
            v28 = +[PLManagedAsset entityName];
            v29 = [v27 isEqualToString:v28];

            if (v29)
            {
              v30 = v25;
              v31 = [v30 uuid];
              if (v31)
              {
                [v50 addObject:v31];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
        }

        while (v22);
      }

      v18 = v44;
      v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K == %@", @"moment", v44];
      v33 = [PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:v43];
      v34 = MEMORY[0x1E695D5E0];
      v35 = +[PLManagedAsset entityName];
      v36 = [v34 fetchRequestWithEntityName:v35];

      [v36 setResultType:2];
      v60[0] = @"objectID";
      v60[1] = @"uuid";
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
      [v36 setPropertiesToFetch:v37];

      v38 = MEMORY[0x1E696AB28];
      v59[0] = v32;
      v59[1] = v33;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
      v40 = [v38 andPredicateWithSubpredicates:v39];
      [v36 setPredicate:v40];

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __135__PLMoment_SearchIndexing__enumerateAssetUUIDsForSearchIndexingWithMomentUUID_managedObjectContext_libraryIdentifier_assetUUIDHandler___block_invoke;
      v51[3] = &unk_1E756BF90;
      v52 = v50;
      v11 = v48;
      v53 = v48;
      v41 = v50;
      v10 = v49;
      v42 = [v49 enumerateObjectsFromFetchRequest:v36 count:0 usingDefaultBatchSizeWithBlock:v51];

      v15 = v46;
      v13 = v47;
      v16 = v45;
    }

    else
    {
      v20 = PLSearchBackendPhotosDatabaseFetchGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v63 = v9;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Cannot find moment with uuid: %{public}@", buf, 0xCu);
      }
    }
  }
}

void __135__PLMoment_SearchIndexing__enumerateAssetUUIDsForSearchIndexingWithMomentUUID_managedObjectContext_libraryIdentifier_assetUUIDHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"uuid"];
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)edgesIn
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  v3 = [v2 edgesIn];

  return v3;
}

- (id)edgesOut
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  v3 = [v2 edgesOut];

  return v3;
}

- (CLLocationCoordinate2D)pl_coordinate
{
  if (!self->_didCacheCoordinate)
  {
    [(PLMoment *)self approximateLongitude];
    v4 = v3;
    [(PLMoment *)self approximateLatitude];
    p_cachedCoordinate = &self->_cachedCoordinate;
    if (v5 == 0.0 && v4 == 0.0)
    {
      *p_cachedCoordinate = *MEMORY[0x1E6985CC0];
    }

    else
    {
      v7 = CLLocationCoordinate2DMake(v5, v4);
      p_cachedCoordinate->latitude = v7.latitude;
      self->_cachedCoordinate.longitude = v7.longitude;
    }

    self->_didCacheCoordinate = 1;
  }

  latitude = self->_cachedCoordinate.latitude;
  longitude = self->_cachedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSDate)localEndDate
{
  v3 = [(PLMoment *)self endDate];
  v4 = [v3 dateByAddingTimeInterval:{-[PLMoment timeZoneOffset](self, "timeZoneOffset")}];

  return v4;
}

- (NSDate)localStartDate
{
  v3 = [(PLMoment *)self startDate];
  v4 = [v3 dateByAddingTimeInterval:{-[PLMoment timeZoneOffset](self, "timeZoneOffset")}];

  return v4;
}

- (unint64_t)fetchedAssetsCount
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"moment", self];
  [v5 setPredicate:v6];

  v7 = [(PLMoment *)self managedObjectContext];
  v12 = 0;
  v8 = [v7 countForFetchRequest:v5 error:&v12];
  v9 = v12;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to fetch assets count: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (NSArray)batchedAssets
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setFetchBatchSize:100];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"moment", self];
  [v5 setPredicate:v6];

  v21[0] = @"additionalAttributes";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v5 setRelationshipKeyPathsForPrefetching:v7];

  v8 = [(PLMoment *)self managedObjectContext];
  v16 = 0;
  v9 = [v8 executeFetchRequest:v5 error:&v16];
  v10 = v16;
  if (!v9)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to fetch batchedAssets: %@", buf, 0xCu);
    }
  }

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v9 count];
    v14 = [(PLManagedObject *)self shortObjectIDURI];
    *buf = 134218242;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Batch fetched %lu assets from moment %@", buf, 0x16u);
  }

  return v9;
}

- (void)removeAssetsObject:(id)a3
{
  v4 = a3;
  [(PLMoment *)self willChangeValueForKey:@"assets"];
  v5 = [(PLMoment *)self primitiveAssets];
  [v5 removeObject:v4];

  [(PLMoment *)self didChangeValueForKey:@"assets"];
  [(PLMoment *)self willChangeValueForKey:@"sharingComposition"];
  [(PLMoment *)self setPrimitiveValue:&unk_1F0FBEA28 forKey:@"sharingComposition"];

  [(PLMoment *)self didChangeValueForKey:@"sharingComposition"];
}

- (void)replaceObjectInAssets:(id)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PLMoment *)self willChangeValueForKey:@"assets"];
  v8 = [(PLMoment *)self primitiveAssets];
  [v8 removeObject:v7];

  v9 = [(PLMoment *)self primitiveAssets];
  [v9 addObject:v6];

  [(PLMoment *)self didChangeValueForKey:@"assets"];
}

- (void)didTurnIntoFault
{
  cachedApproximateLocation = self->_cachedApproximateLocation;
  self->_cachedApproximateLocation = 0;

  self->_didCacheApproximateLocation = 0;
  v4.receiver = self;
  v4.super_class = PLMoment;
  [(PLMoment *)&v4 didTurnIntoFault];
}

- (void)willSave
{
  v12.receiver = self;
  v12.super_class = PLMoment;
  [(PLManagedObject *)&v12 willSave];
  v3 = [(PLMoment *)self managedObjectContext];
  if ([(PLMoment *)self isDeleted]&& ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]()))
  {
    v4 = [(PLMoment *)self managedObjectContext];
    [PLGraphNode cleanupDanglingNodeReferencesToDeletedActorsInContext:v4];
  }

  v5 = [(PLMoment *)self changedValues];
  v6 = PLPlatformMomentsSupported();
  if (v6)
  {
    if (([(PLMoment *)self isDeleted]& 1) == 0)
    {
      if ([PLMomentGenerationDataManager isManagedObjectContextMomentarilyBlessed:v3])
      {
        v7 = [v5 objectForKeyedSubscript:@"modificationDate"];

        if (!v7)
        {
          v8 = [MEMORY[0x1E695DF00] date];
          [(PLMoment *)self setModificationDate:v8];
        }
      }
    }
  }

  if (self->_waitingForSharedAssetContainerRecalc && ([(PLMoment *)self isDeleted]& 1) == 0)
  {
    [(PLMoment *)self recalculateSharedAssetContainerCachedValues];
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 objectForKeyedSubscript:@"processedLocation"];
      if (v9)
      {

LABEL_17:
        v10 = [v3 delayedSaveActions];
        [v10 recordMomentForHighlightUpdate:self];

        goto LABEL_20;
      }

      if (+[PLAggregationProcessor isEnabled])
      {
        v11 = [v5 objectForKeyedSubscript:@"aggregationScore"];

        if (v11)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_20:
}

- (void)insertAssetData:(id)a3
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  [(PLMoment *)self willChangeValueForKey:@"assets" withSetMutation:1 usingObjects:v5];
  v4 = [(PLMoment *)self primitiveAssets];
  [v4 minusSet:v5];

  [(PLMoment *)self didChangeValueForKey:@"assets" withSetMutation:2 usingObjects:v5];
}

- (void)removeAssetData:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObject:v5];
  [(PLMoment *)self willChangeValueForKey:@"assets" withSetMutation:2 usingObjects:v6];

  v7 = [(PLMoment *)self primitiveAssets];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:v5];

  [(PLMoment *)self didChangeValueForKey:@"assets" withSetMutation:2 usingObjects:v9];
}

- (void)delete
{
  v3 = [(PLMoment *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)prepareForDeletion
{
  v3.receiver = self;
  v3.super_class = PLMoment;
  [(PLMoment *)&v3 prepareForDeletion];
  if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    [PLGraphNode registerDeletedNodeActorForDanglingNodeCleanup:self];
  }
}

- (id)bestAsset
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(PLMoment *)self assets];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    v7 = 0.0;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      [v9 curationScore];
      v11 = v10;
      if (!v5 || v10 > v7)
      {
        v12 = v9;

        v7 = v11;
        v5 = v12;
        if (v11 == 1.0)
        {
          break;
        }
      }

      if (v4 == ++v8)
      {
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v12 = v5;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)unregisterForChanges
{
  if ([(PLMoment *)self isRegisteredForChanges])
  {
    if ([(PLMoment *)self didRegisteredWithUserInterfaceContext])
    {
      v3 = +[PLChangeNotificationCenter defaultCenter];
      [(PLMoment *)self removeObserver:v3 forKeyPath:@"assets" context:&PLChangeNotificationCenterKVOContext];

      [(PLMoment *)self setDidRegisteredWithUserInterfaceContext:0];
    }

    [(PLMoment *)self setIsRegisteredForChanges:0];
  }
}

- (void)registerForChanges
{
  if (![(PLMoment *)self isRegisteredForChanges])
  {
    if ([(PLManagedObject *)self isRegisteredWithUserInterfaceContext])
    {
      [(PLMoment *)self setDidRegisteredWithUserInterfaceContext:1];
      v3 = +[PLChangeNotificationCenter defaultCenter];
      [(PLMoment *)self addObserver:v3 forKeyPath:@"assets" options:8 context:&PLChangeNotificationCenterKVOContext];
    }

    [(PLMoment *)self setIsRegisteredForChanges:1];
  }
}

- (void)setApproximateLocation:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_cachedApproximateLocation, a3);
  self->_didCacheApproximateLocation = 1;
  if (v8)
  {
    [v8 coordinate];
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E6985CC0];
    v7 = *(MEMORY[0x1E6985CC0] + 8);
  }

  [(PLMoment *)self setApproximateLatitude:v5];
  [(PLMoment *)self setApproximateLongitude:v7];
}

- (CLLocation)approximateLocation
{
  if (!self->_didCacheApproximateLocation)
  {
    [(PLMoment *)self approximateLongitude];
    v4 = v3;
    [(PLMoment *)self approximateLatitude];
    v6 = CLLocationCoordinate2DMake(v5, v4);
    if ([PLLocationUtils canUseCoordinate:?])
    {
      v7 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v6.latitude longitude:v6.longitude];
    }

    else
    {
      v7 = 0;
    }

    cachedApproximateLocation = self->_cachedApproximateLocation;
    self->_cachedApproximateLocation = v7;

    self->_didCacheApproximateLocation = 1;
  }

  v9 = self->_cachedApproximateLocation;

  return v9;
}

- (void)recalculateSharedAssetContainerCachedValues
{
  self->_waitingForSharedAssetContainerRecalc = 0;
  [objc_opt_class() _recalculateAssetCountsForMoment:self];
  v3 = [(PLMoment *)self assetsCount];
  v4 = [(PLMoment *)self assetsCountShared];
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithShort:v6];
  [(PLManagedObject *)self pl_safeSetValue:v7 forKey:@"sharingComposition" valueDidChangeHandler:0];
}

- (void)reportSharedAssetContainerIncrementalChange:(id)a3 forAllAssetsCountKey:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 highlightContainerChanges];
  v8 = [v7 count];

  if (v8)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLMoment.m" lineNumber:271 description:@"unexpected change type."];
  }

  if (!self->_waitingForSharedAssetContainerRecalc)
  {
    if ([(PLMoment *)self isInserted])
    {
      v9 = PLMomentsGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(PLMoment *)self objectID];
        v25 = 138412290;
        v26 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Marking moment: %@ as waiting for recalc...", &v25, 0xCu);
      }

      self->_waitingForSharedAssetContainerRecalc = 1;
      goto LABEL_30;
    }

    if (([(PLMoment *)self isDeleted]& 1) != 0)
    {
      goto LABEL_30;
    }

    v11 = PLMomentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 debugDescription];
      v13 = [(PLMoment *)self objectID];
      v25 = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Processing incremental change: %@ for moment: %@...", &v25, 0x16u);
    }

    v14 = [v6 collectionChangeType];
    if ((v14 - 1) < 2)
    {
      if ([v6 collectionChangeType] == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLMoment cachedCount](self, "cachedCount") + v15}];
      [(PLManagedObject *)self pl_safeSetValue:v16 forKey:@"cachedCount" valueDidChangeHandler:0];

      if ([v6 sharingChange] != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v14)
    {
      v17 = [v6 sharingChange];
      if (v17 == 1)
      {
        v15 = 1;
        goto LABEL_22;
      }

      if (v17 == 2)
      {
        v15 = -1;
LABEL_22:
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLMoment cachedCountShared](self, "cachedCountShared") + v15}];
        [(PLManagedObject *)self pl_safeSetValue:v18 forKey:@"cachedCountShared" valueDidChangeHandler:0];
      }
    }

LABEL_23:
    v19 = [(PLMoment *)self assetsCount];
    v20 = [(PLMoment *)self assetsCountShared];
    if (v19 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithShort:v22];
    [(PLManagedObject *)self pl_safeSetValue:v23 forKey:@"sharingComposition" valueDidChangeHandler:0];
  }

LABEL_30:
}

- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLMoment.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  if (self->_waitingForSharedAssetContainerRecalc)
  {
    [(PLMoment *)self recalculateSharedAssetContainerCachedValues];
  }

  [(PLMoment *)self willAccessValueForKey:v5];
  v6 = [(PLMoment *)self primitiveValueForKey:v5];
  v7 = [v6 intValue];

  [(PLMoment *)self didAccessValueForKey:v5];
  return v7;
}

- (void)dealloc
{
  [(PLMoment *)self unregisterForChanges];
  cachedApproximateLocation = self->_cachedApproximateLocation;
  self->_cachedApproximateLocation = 0;

  v4.receiver = self;
  v4.super_class = PLMoment;
  [(PLMoment *)&v4 dealloc];
}

- (void)willTurnIntoFault
{
  [(PLMoment *)self unregisterForChanges];
  v3.receiver = self;
  v3.super_class = PLMoment;
  [(PLMoment *)&v3 willTurnIntoFault];
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = PLMoment;
  [(PLMoment *)&v3 awakeFromFetch];
  [(PLMoment *)self registerForChanges];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLMoment;
  [(PLMoment *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLMoment *)self setUuid:v3];

  [(PLMoment *)self registerForChanges];
}

- (unint64_t)countForAssetsOfKind:(signed __int16)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(PLMoment *)self managedObjectContext];
  v6 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v7 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:v5];
  if (v7)
  {
    [v6 setEntity:v7];
    v8 = MEMORY[0x1E696AE18];
    v9 = [(PLMoment *)self objectID];
    v10 = [v8 predicateWithFormat:@"kind = %d AND moment = %@", v3, v9];
    [v6 setPredicate:v10];

    v15 = 0;
    v11 = [v5 countForFetchRequest:v6 error:&v15];
    v12 = v15;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v17 = v3;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "_countForAssetsOfKind:%d fetch request failed: %@", buf, 0x12u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (NSArray)sortByTimeSortDescriptors
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:{1, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)momentIDsWithPersonIDs:(id)a3 inContext:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = +[PLGraphEdge fetchRequest];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil AND %K IN %@", @"sourceAsset", @"targetPerson", v5];
    [v7 setPredicate:v8];

    v18[0] = @"sourceAsset.moment";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v7 setPropertiesToFetch:v9];

    [v7 setReturnsDistinctResults:1];
    [v7 setResultType:2];
    v15 = 0;
    v10 = [v6 executeFetchRequest:v7 error:&v15];
    v11 = v15;
    if (v10)
    {
      v12 = [v10 _pl_map:&__block_literal_global_102831];
      v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
    }

    else
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Unable to fetch momentIDsWithPersonIDs: %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DFD8] set];
  }

  return v13;
}

+ (void)_recalculateAssetCountsForMoment:(id)a3
{
  v64[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasFaultForRelationshipNamed:@"assets"])
  {
    v5 = MEMORY[0x1E695D5E0];
    v6 = +[PLManagedAsset entityName];
    v7 = [v5 fetchRequestWithEntityName:v6];

    v64[0] = @"libraryScope";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
    [v7 setPropertiesToGroupBy:v8];

    [v7 setIncludesPendingChanges:1];
    v9 = MEMORY[0x1E696ABC8];
    v10 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    v63 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    v12 = [v9 expressionForFunction:@"count:" arguments:v11];

    v13 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v13 setName:@"count"];
    [v13 setExpression:v12];
    [v13 setExpressionResultType:200];
    v62[0] = @"libraryScope";
    v62[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    [v7 setPropertiesToFetch:v14];

    [v7 setResultType:2];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"moment", v4];
    [v7 setPredicate:v15];

    v16 = [v4 managedObjectContext];
    v53 = 0;
    v17 = [v16 executeFetchRequest:v7 error:&v53];
    v18 = v53;

    if (v17)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v20)
      {
        v21 = v20;
        v44 = v4;
        v40 = v18;
        v41 = v17;
        v42 = v13;
        v43 = v7;
        v22 = 0;
        v23 = 0;
        v24 = *v50;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v50 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v49 + 1) + 8 * i);
            v27 = [v26 objectForKeyedSubscript:@"count"];
            v28 = [v27 intValue];

            v29 = [v26 objectForKeyedSubscript:@"libraryScope"];

            if (v29)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0;
            }

            v22 += v30;
            if (!v29)
            {
              v23 = v28;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v49 objects:v61 count:16];
        }

        while (v21);
        v7 = v43;
        v4 = v44;
        v13 = v42;
        v18 = v40;
        v17 = v41;
LABEL_20:

        if (v17)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v56 = v7;
        v57 = 2112;
        v58 = a1;
        v59 = 2112;
        v60 = v18;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error executing count of collections fetch %@ for %@: %@", buf, 0x20u);
      }
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_20;
  }

  v22 = 0;
LABEL_21:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = [v4 assets];
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v46;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v45 + 1) + 8 * j);
        if (([v37 isDeleted] & 1) == 0)
        {
          ++v34;
          v22 += [v37 hasLibraryScope];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v33);
  }

  else
  {
    v34 = 0;
  }

  v23 = v34 - v22;
LABEL_33:
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v23 + v22];
  [v4 pl_safeSetValue:v38 forKey:@"cachedCount" valueDidChangeHandler:0];

  v39 = [MEMORY[0x1E696AD98] numberWithInt:v22];
  [v4 pl_safeSetValue:v39 forKey:@"cachedCountShared" valueDidChangeHandler:0];
}

+ (id)allAssetsIncludedInMomentsInLibrary:(id)a3
{
  v4 = [a3 managedObjectContext];
  v7 = 0;
  v5 = [a1 allAssetsIncludedInMomentsInManagedObjectContext:v4 IDsOnly:0 error:&v7];

  return v5;
}

- (id)groupURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLMoment *)self uuid];
  v5 = [v3 stringWithFormat:@"%@://%@/?%@=%@", @"assets-library", @"group", @"id", v4];
  v6 = [v2 URLWithString:v5];

  return v6;
}

+ (id)allAssetsInManagedObjectContext:(id)a3 predicate:(id)a4 IDsOnly:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v20[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695D5E0];
  v10 = a4;
  v11 = a3;
  v12 = +[PLManagedAsset entityName];
  v13 = [v9 fetchRequestWithEntityName:v12];

  [v13 setPredicate:v10];
  [v13 setFetchBatchSize:100];
  if (v7)
  {
    [v13 setResultType:1];
    [v13 setIncludesPropertyValues:0];
  }

  [v13 setRelationshipKeyPathsForPrefetching:&unk_1F0FC0168];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.originalFilename" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v13 setSortDescriptors:v17];

  v18 = [v11 executeFetchRequest:v13 error:a6];

  return v18;
}

+ (id)allInvalidAssetsInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 predicateForInvalidAssets];
  v8 = [a1 allAssetsInManagedObjectContext:v6 predicate:v7 IDsOnly:0 error:a4];

  return v8;
}

+ (id)allAssetsIncludedInMomentsInManagedObjectContext:(id)a3 IDsOnly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [a1 predicateForAssetsIncludedInMoments];
  v10 = [a1 allAssetsInManagedObjectContext:v8 predicate:v9 IDsOnly:v6 error:a5];

  return v10;
}

+ (id)batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs:(id)a3 andAssetPredicate:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v36[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"PLMoment.m" lineNumber:881 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v14 = MEMORY[0x1E695D5E0];
  v15 = +[PLManagedAsset entityName];
  v16 = [v14 fetchRequestWithEntityName:v15];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v11];
  v18 = v17;
  if (v12)
  {
    v19 = MEMORY[0x1E696AB28];
    v36[0] = v17;
    v36[1] = v12;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    [v16 setPredicate:v21];
  }

  else
  {
    [v16 setPredicate:v17];
  }

  v35 = @"moment";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v16 setRelationshipKeyPathsForPrefetching:v22];

  [v16 setIncludesPropertyValues:0];
  v34 = 0;
  v23 = [v13 executeFetchRequest:v16 error:&v34];
  v24 = v34;
  v25 = v24;
  if (v23)
  {
    v26 = [MEMORY[0x1E695DF90] dictionary];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __137__PLMoment_PLMoment_Private__batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs_andAssetPredicate_inManagedObjectContext_error___block_invoke;
    v32[3] = &unk_1E7575368;
    v27 = v26;
    v33 = v27;
    v28 = [v13 enumerateObjectsFromFetchRequest:v16 count:0 usingDefaultBatchSizeWithBlock:v32];
  }

  else if (a6)
  {
    v29 = v24;
    v27 = 0;
    *a6 = v25;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __137__PLMoment_PLMoment_Private__batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs_andAssetPredicate_inManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 moment];
  v5 = [v4 objectID];

  v6 = [v3 objectID];

  if (v5 && v6)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Error fetching moment for asset objectID: %@, moment objectID: %@", &v8, 0x16u);
    }
  }
}

+ (id)batchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:(id)a3 library:(id)a4 error:(id *)a5
{
  v49[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"PLMoment.m" lineNumber:837 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v10 managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLMoment entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"highlight.uuid", v9];
  [v14 setPredicate:v15];
  [v14 setResultType:2];
  v49[0] = @"uuid";
  v49[1] = @"highlight.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v14 setPropertiesToFetch:v16];

  if (!a5)
  {
    v43 = 0;
    a5 = &v43;
  }

  v17 = [v11 executeFetchRequest:v14 error:a5];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v34 = v15;
      v35 = v14;
      v36 = v11;
      v37 = v10;
      v38 = v9;
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"highlight.uuid"];
          v26 = [v24 objectForKeyedSubscript:@"uuid"];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            v29 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v45 = v27;
              v46 = 2112;
              v47 = v25;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Error fetching highlight UUID for moment UUID: %@, highlight UUID: %@", buf, 0x16u);
            }
          }

          else
          {
            v30 = [v18 objectForKeyedSubscript:v25];
            v29 = v30;
            if (!v30)
            {
              v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v18 setObject:v29 forKeyedSubscript:v25];
            }

            [v29 addObject:v27];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v21);
      v10 = v37;
      v9 = v38;
      v14 = v35;
      v11 = v36;
      v15 = v34;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v31 = *a5;
      *buf = 138412290;
      v45 = v31;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error fetching momentUUID by highlightUUID: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

+ (void)batchFetchMomentUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 completion:(id)a5
{
  v49[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PLMoment.m" lineNumber:803 description:@"Completion handler is mandatory"];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:a1 file:@"PLMoment.m" lineNumber:804 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  v12 = [v10 managedObjectContext];
  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v9];
  [v15 setPredicate:v16];
  [v15 setResultType:2];
  v49[0] = @"uuid";
  v49[1] = @"moment.uuid";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v15 setPropertiesToFetch:v17];

  v43 = 0;
  v18 = [v12 executeFetchRequest:v15 error:&v43];
  v19 = v43;
  if (v19)
  {
    v11[2](v11, 0, v19);
  }

  else
  {
    v34 = v16;
    v35 = v15;
    v36 = v12;
    v37 = v11;
    v38 = v9;
    v20 = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = [v26 objectForKeyedSubscript:@"moment.uuid"];
          v28 = [v26 objectForKeyedSubscript:@"uuid"];
          v29 = v28;
          if (v27)
          {
            v30 = v28 == 0;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            v31 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v45 = v29;
              v46 = 2114;
              v47 = v27;
              _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Could not fetch moment for asset UUID: %{public}@, moment UUID: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v20 setObject:v27 forKey:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v23);
    }

    v11 = v37;
    (v37)[2](v37, v20, 0);

    v9 = v38;
    v15 = v35;
    v12 = v36;
    v16 = v34;
    v19 = 0;
  }
}

+ (id)predicateForInvalidAssets
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"highlightBeingAssets = nil"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"moment = nil"];
  v13[0] = v3;
  v13[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v6 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v6;
  v8 = [a1 predicateForAssetsIncludedInMoments];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v7 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)predicateForInvalidMoments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"highlight = nil"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assets.@count = 0"];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForAssetsIncludedInMoments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsIncludedInMoments"), 1}];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == NO AND %K == %d", @"visibilityState", 0, @"hidden", @"trashedState", 0, v3];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)momentsWithLocationOfInterestInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d", @"processedLocation", 3, @"processedLocation", 4];
  [v9 setPredicate:v10];
  v11 = [v7 executeFetchRequest:v9 error:a4];

  return v11;
}

+ (id)momentsRequiringLocationProcessingWhenFrequentLocationsChangedInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d OR %K == %d OR %K == %d OR %K == %d OR %K == %d", @"processedLocation", 0, @"processedLocation", 8, @"processedLocation", 9, @"processedLocation", 5, @"processedLocation", 1, @"processedLocation", 6];
  [v9 setPredicate:v10];
  v11 = [v7 executeFetchRequest:v9 error:a4];

  return v11;
}

+ (id)momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailableInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d", @"processedLocation", 0, @"processedLocation", 9];
  [v9 setPredicate:v10];
  v11 = [v7 executeFetchRequest:v9 error:a4];

  return v11;
}

+ (id)momentsRequiringLocationProcessingWhenCoreRoutineIsAvailableInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d OR %K == %d", @"processedLocation", 0, @"processedLocation", 8, @"processedLocation", 1];
  [v9 setPredicate:v10];
  v11 = [v7 executeFetchRequest:v9 error:a4];

  return v11;
}

+ (id)allMomentsRequiringAnalysisInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets.additionalAttributes.reverseLocationDataIsValid == NO"];
  [v9 setPredicate:v10];
  v11 = [v7 executeFetchRequest:v9 error:a4];

  return v11;
}

+ (id)allMomentsInManagedObjectContext:(id)a3 predicate:(id)a4 idsOnly:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E695D5E0];
  v12 = a4;
  v13 = [a1 entityName];
  v14 = [v11 fetchRequestWithEntityName:v13];

  [v14 setPredicate:v12];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"representativeDate" ascending:1];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v14 setSortDescriptors:v16];

  [v14 setFetchBatchSize:100];
  if (v7)
  {
    [v14 setResultType:1];
    [v14 setIncludesPropertyValues:0];
  }

  v17 = [v10 executeFetchRequest:v14 error:a6];

  return v17;
}

+ (id)allInvalidMomentsInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[PLMoment predicateForInvalidMoments];
  v8 = [a1 allMomentsInManagedObjectContext:v6 predicate:v7 idsOnly:0 error:a4];

  return v8;
}

+ (id)insertNewMomentInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, v6, a4);

  return v8;
}

@end