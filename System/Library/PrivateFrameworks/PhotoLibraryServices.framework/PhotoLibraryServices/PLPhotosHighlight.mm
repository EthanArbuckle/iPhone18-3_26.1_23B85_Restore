@interface PLPhotosHighlight
+ (NSArray)sortByTimeSortDescriptors;
+ (id)_libraryScopePredicateForSharingConsideration:(int64_t)a3;
+ (id)allPhotosHighlightsInManagedObjectContext:(id)a3 predicate:(id)a4 keyPathsForPrefetching:(id)a5 error:(id *)a6;
+ (id)allowedPropertiesForMomentList;
+ (id)batchFetchPhotosHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 error:(id *)a5;
+ (id)batchFetchPhotosHighlightUUIDsByMomentUUIDsWithMomentUUIDs:(id)a3 library:(id)a4 error:(id *)a5;
+ (id)batchFetchTripHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 error:(id *)a5;
+ (id)defaultPropertiesToFetchForMomentList;
+ (id)fetchHighlightsWithUUIDs:(id)a3 managedObjectContext:(id)a4;
+ (id)fetchHighlightsWithUUIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (id)fetchRequest;
+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4 title:(id)a5;
+ (id)insertNewPhotosHighlightInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)predicateForAllAssetsInPhotosHighlight:(id)a3;
+ (id)predicateForAllTripHighlights;
+ (id)predicateForEmptyHighlightsOfKind:(unsigned __int16)a3;
+ (id)predicateForInvalidDayGroupHighlights;
+ (id)predicateForInvalidDayHighlights;
+ (id)predicateForInvalidHighlightsOfAllKinds;
+ (id)predicateForInvalidMonthOrYearHighlights;
+ (id)propertiesToFetch;
+ (id)stringFromHighlightKind:(unsigned __int16)a3;
+ (signed)calculateSharingCompositionForPhotosHighlight:(id)a3;
- (BOOL)_needsRecalculateCollageAssets;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)missingKeyAssetForKindPrivate;
- (BOOL)missingKeyAssetForKindShared;
- (NSArray)momentsSortedByTime;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSSet)assetsPrivate;
- (NSSet)assetsShared;
- (NSSet)dayGroupAssetsPrivate;
- (NSSet)dayGroupAssetsShared;
- (NSSet)dayGroupExtendedAssetsPrivate;
- (NSSet)dayGroupExtendedAssetsShared;
- (NSSet)dayGroupSummaryAssetsPrivate;
- (NSSet)dayGroupSummaryAssetsShared;
- (NSSet)extendedAssetsPrivate;
- (NSSet)extendedAssetsShared;
- (NSSet)summaryAssetsPrivate;
- (NSSet)summaryAssetsShared;
- (NSString)debugDescription;
- (NSString)description;
- (PLManagedAsset)keyAssetForKindPrivate;
- (PLManagedAsset)keyAssetForKindShared;
- (id)_extendedAssetsForSharingConsideration:(int64_t)a3;
- (id)_keyAssetForSharingConsideration:(int64_t)a3;
- (int)_cachedAssetCountForCountKey:(id)a3 collectionKey:(id)a4 isShared:(BOOL)a5;
- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)a3;
- (unint64_t)numberOfAssetsInExtendedForSharingConsideration:(int64_t)a3;
- (void)_notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:(int)a3 to:(int)a4 forKeyPath:(id)a5;
- (void)_notifyChildSharingCompositionDidChangeFrom:(signed __int16)a3 to:(signed __int16)a4;
- (void)_recalculateCollageAssetsForSharingConsideration:(int64_t)a3;
- (void)awakeFromInsert;
- (void)bumpHighlightVersion;
- (void)delete;
- (void)prepareForDeletion;
- (void)recalculateCollageAssets;
- (void)recalculateSharedAssetContainerCachedValues;
- (void)removeAssetData:(id)a3;
- (void)reportSharedAssetContainerIncrementalChange:(id)a3 forAllAssetsCountKey:(id)a4;
- (void)setKeyAssetForKindPrivate:(id)a3;
- (void)setKeyAssetForKindShared:(id)a3;
- (void)setParentPhotosHighlight:(id)a3;
- (void)willSave;
@end

@implementation PLPhotosHighlight

- (unint64_t)numberOfAssetsInExtendedForSharingConsideration:(int64_t)a3
{
  v5 = [(PLPhotosHighlight *)self kind];
  if (v5 == 3)
  {
    switch(a3)
    {
      case 2:
        LODWORD(result) = [(PLPhotosHighlight *)self dayGroupExtendedAssetsCount];
        return result;
      case 1:
        LODWORD(result) = [(PLPhotosHighlight *)self dayGroupExtendedAssetsCountShared];
        return result;
      case 0:
        LODWORD(result) = [(PLPhotosHighlight *)self dayGroupExtendedAssetsCountPrivate];
        return result;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

  if (a3 == 2)
  {
    LODWORD(result) = [(PLPhotosHighlight *)self extendedCount];
    return result;
  }

  if (a3 == 1)
  {
    LODWORD(result) = [(PLPhotosHighlight *)self extendedCountShared];
    return result;
  }

  if (a3)
  {
    return 0;
  }

  LODWORD(result) = [(PLPhotosHighlight *)self extendedCountPrivate];
  return result;
}

- (NSSet)dayGroupSummaryAssetsShared
{
  v2 = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupExtendedAssetsShared
{
  v2 = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupAssetsShared
{
  v2 = [(PLPhotosHighlight *)self dayGroupAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)extendedAssetsShared
{
  v2 = [(PLPhotosHighlight *)self extendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)summaryAssetsShared
{
  v2 = [(PLPhotosHighlight *)self summaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)assetsShared
{
  v2 = [(PLPhotosHighlight *)self assets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (void)setKeyAssetForKindShared:(id)a3
{
  v7 = a3;
  v4 = [(PLPhotosHighlight *)self kind];
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = v4 == 1;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(PLPhotosHighlight *)self setMonthKeyAssetShared:v7];
    }

    else
    {
      [(PLPhotosHighlight *)self setKeyAssetShared:v7];
    }

LABEL_12:
    v6 = v7;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    [(PLPhotosHighlight *)self setYearKeyAssetShared:v7];
    goto LABEL_12;
  }

  v5 = v4 == 3;
  v6 = v7;
  if (v5)
  {
    [(PLPhotosHighlight *)self setDayGroupKeyAssetShared:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (PLManagedAsset)keyAssetForKindShared
{
  v3 = [(PLPhotosHighlight *)self kind];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = [(PLPhotosHighlight *)self yearKeyAssetShared];
    }

    else if (v3 == 3)
    {
      v4 = [(PLPhotosHighlight *)self dayGroupKeyAssetShared];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(PLPhotosHighlight *)self monthKeyAssetShared];
    }
  }

  else
  {
    v4 = [(PLPhotosHighlight *)self keyAssetShared];
  }

  return v4;
}

- (NSSet)dayGroupSummaryAssetsPrivate
{
  v2 = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupExtendedAssetsPrivate
{
  v2 = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupAssetsPrivate
{
  v2 = [(PLPhotosHighlight *)self dayGroupAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)extendedAssetsPrivate
{
  v2 = [(PLPhotosHighlight *)self extendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)summaryAssetsPrivate
{
  v2 = [(PLPhotosHighlight *)self summaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)assetsPrivate
{
  v2 = [(PLPhotosHighlight *)self assets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (BOOL)missingKeyAssetForKindPrivate
{
  if ([(PLPhotosHighlight *)self sharingComposition]== 1)
  {
    return 0;
  }

  v4 = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
  v3 = v4 == 0;

  return v3;
}

- (BOOL)missingKeyAssetForKindShared
{
  if (![(PLPhotosHighlight *)self sharingComposition])
  {
    return 0;
  }

  v3 = [(PLPhotosHighlight *)self keyAssetForKindShared];
  v4 = v3 == 0;

  return v4;
}

- (NSDate)localEndDate
{
  v3 = [(PLPhotosHighlight *)self endDate];
  v4 = [v3 dateByAddingTimeInterval:{-[PLPhotosHighlight endTimeZoneOffset](self, "endTimeZoneOffset")}];

  return v4;
}

- (NSDate)localStartDate
{
  v3 = [(PLPhotosHighlight *)self startDate];
  v4 = [v3 dateByAddingTimeInterval:{-[PLPhotosHighlight startTimeZoneOffset](self, "startTimeZoneOffset")}];

  return v4;
}

- (void)setKeyAssetForKindPrivate:(id)a3
{
  v7 = a3;
  v4 = [(PLPhotosHighlight *)self kind];
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = v4 == 1;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(PLPhotosHighlight *)self setMonthKeyAssetPrivate:v7];
    }

    else
    {
      [(PLPhotosHighlight *)self setKeyAssetPrivate:v7];
    }

LABEL_12:
    v6 = v7;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    [(PLPhotosHighlight *)self setYearKeyAssetPrivate:v7];
    goto LABEL_12;
  }

  v5 = v4 == 3;
  v6 = v7;
  if (v5)
  {
    [(PLPhotosHighlight *)self setDayGroupKeyAssetPrivate:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (PLManagedAsset)keyAssetForKindPrivate
{
  v3 = [(PLPhotosHighlight *)self kind];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = [(PLPhotosHighlight *)self yearKeyAssetPrivate];
    }

    else if (v3 == 3)
    {
      v4 = [(PLPhotosHighlight *)self dayGroupKeyAssetPrivate];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(PLPhotosHighlight *)self monthKeyAssetPrivate];
    }
  }

  else
  {
    v4 = [(PLPhotosHighlight *)self keyAssetPrivate];
  }

  return v4;
}

- (NSArray)momentsSortedByTime
{
  v2 = [(PLPhotosHighlight *)self moments];
  v3 = +[PLMoment sortByTimeSortDescriptors];
  v4 = [v2 sortedArrayUsingDescriptors:v3];

  return v4;
}

- (void)delete
{
  v3 = [(PLPhotosHighlight *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)removeAssetData:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:1396 description:{@"Incorrect class given in %s", "-[PLPhotosHighlight removeAssetData:]"}];
  }

  [(PLPhotosHighlight *)self willChangeValueForKey:@"assets"];
  v5 = [(PLPhotosHighlight *)self primitiveAssets];
  [v5 removeObject:v7];

  [(PLPhotosHighlight *)self didChangeValueForKey:@"assets"];
}

- (void)bumpHighlightVersion
{
  if (!-[PLPhotosHighlight hasChanges](self, "hasChanges") || (-[PLPhotosHighlight changedValues](self, "changedValues"), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKeyedSubscript:@"highlightVersion"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v5 = [(PLPhotosHighlight *)self highlightVersion];
    if (v5 == 0x7FFF)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 + 1;
    }

    [(PLPhotosHighlight *)self setHighlightVersion:v6];
  }
}

- (id)_extendedAssetsForSharingConsideration:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(PLPhotosHighlight *)self extendedAssets];
  }

  else if (a3 == 1)
  {
    v3 = [(PLPhotosHighlight *)self extendedAssetsShared];
  }

  else
  {
    if (a3)
    {
      [MEMORY[0x1E695DFD8] set];
    }

    else
    {
      [(PLPhotosHighlight *)self extendedAssetsPrivate];
    }
    v3 = ;
  }

  return v3;
}

- (id)_keyAssetForSharingConsideration:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(PLPhotosHighlight *)self mixedSharingCompositionKeyAssetRelationship];
    if (v5 < 2)
    {
LABEL_6:
      v4 = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
      goto LABEL_9;
    }

    if (v5 != 2)
    {
      goto LABEL_4;
    }
  }

  else if (a3 != 1)
  {
    if (a3)
    {
LABEL_4:
      v4 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v4 = [(PLPhotosHighlight *)self keyAssetForKindShared];
LABEL_9:

  return v4;
}

- (void)_recalculateCollageAssetsForSharingConsideration:(int64_t)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6 = [(PLPhotosHighlight *)self _extendedAssetsForSharingConsideration:a3];
  if ([v6 count] >= 4)
  {
    v7 = [(PLPhotosHighlight *)self _keyAssetForSharingConsideration:a3];
    if (v7)
    {
      [v5 addObject:v7];
      v8 = [v6 mutableCopy];
      [v8 removeObject:v7];

      v6 = v8;
    }

    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v22[0] = v9;
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
    v22[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v12 = [v6 sortedArrayUsingDescriptors:v11];

    v13 = [v12 count];
    if (v13)
    {
      v14 = v13;
      v15 = 3;
      if (!v7)
      {
        v15 = 4;
      }

      if (v13 <= v15)
      {
        [v5 addObjectsFromArray:v12];
      }

      else
      {
        v21 = self;
        v16 = 0;
        v17 = v15 - 1;
        v18 = vcvtmd_u64_f64(v13 / (v15 - 1));
        do
        {
          v19 = [v12 objectAtIndexedSubscript:{v16, v21}];
          [v5 addObject:v19];

          v16 += v18;
          --v17;
        }

        while (v17);
        v20 = [v12 objectAtIndexedSubscript:v14 - 1];
        [v5 addObject:v20];

        self = v21;
      }
    }
  }

  if (a3 <= 2)
  {
    [(PLManagedObject *)self pl_safeSetValue:v5 forKey:off_1E75659F0[a3] valueDidChangeHandler:0];
  }
}

- (void)recalculateCollageAssets
{
  [(PLPhotosHighlight *)self _recalculateCollageAssetsForSharingConsideration:0];
  [(PLPhotosHighlight *)self _recalculateCollageAssetsForSharingConsideration:1];

  [(PLPhotosHighlight *)self _recalculateCollageAssetsForSharingConsideration:2];
}

- (BOOL)_needsRecalculateCollageAssets
{
  v3 = [(PLPhotosHighlight *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"collageAssetsPrivate"];
  if (v4 || ([v3 objectForKeyedSubscript:@"collageAssetsShared"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = [v3 objectForKeyedSubscript:@"collageAssetsMixed"];

    if (v8 || ([(PLPhotosHighlight *)self isDeleted]& 1) != 0)
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = [v3 objectForKey:@"extendedAssets"];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 objectForKey:@"keyAssetPrivate"];
      if (v9)
      {
        v6 = 1;
      }

      else
      {
        v10 = [v3 objectForKey:@"keyAssetShared"];
        v6 = v10 != 0;
      }
    }
  }

LABEL_5:
  return v6;
}

- (void)willSave
{
  v4.receiver = self;
  v4.super_class = PLPhotosHighlight;
  [(PLManagedObject *)&v4 willSave];
  v3 = [(PLPhotosHighlight *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(&self->super._willSaveCallCount + 2) == 1 && ([(PLPhotosHighlight *)self isDeleted]& 1) == 0)
    {
      [(PLPhotosHighlight *)self recalculateSharedAssetContainerCachedValues];
    }

    if (([(PLPhotosHighlight *)self isDeleted]& 1) == 0)
    {
      [PLDelayedSearchIndexUpdates recordHighlightIfNeeded:self];
    }

    if (_os_feature_enabled_impl() && ![(PLPhotosHighlight *)self kind]&& [(PLPhotosHighlight *)self _needsRecalculateCollageAssets])
    {
      [(PLPhotosHighlight *)self recalculateCollageAssets];
    }
  }
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLPhotosHighlight;
  [(PLPhotosHighlight *)&v5 prepareForDeletion];
  objc_opt_class();
  v3 = [(PLPhotosHighlight *)self managedObjectContext];
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
    [PLDelayedSearchIndexUpdates recordHighlightIfNeeded:self];
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLPhotosHighlight;
  [(PLPhotosHighlight *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLPhotosHighlight *)self setUuid:v3];
}

- (void)setParentPhotosHighlight:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqual:self])
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "Attempt to set parentPhotosHighlight to self for highlight: %{public}@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLPhotosHighlight_setParentPhotosHighlight___block_invoke;
  v7[3] = &unk_1E75732D0;
  v8 = v4;
  v6 = v4;
  [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"parentPhotosHighlight" valueDidChangeHandler:v7];
}

- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  if (*(&self->super._willSaveCallCount + 2) == 1)
  {
    [(PLPhotosHighlight *)self recalculateSharedAssetContainerCachedValues];
  }

  [(PLPhotosHighlight *)self willAccessValueForKey:v5];
  v6 = [(PLPhotosHighlight *)self primitiveValueForKey:v5];
  v7 = [v6 intValue];

  [(PLPhotosHighlight *)self didAccessValueForKey:v5];
  return v7;
}

- (int)_cachedAssetCountForCountKey:(id)a3 collectionKey:(id)a4 isShared:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (([(PLPhotosHighlight *)self hasFaultForRelationshipNamed:v9]& 1) != 0)
  {
    if (*(&self->super._willSaveCallCount + 2) == 1)
    {
      [(PLPhotosHighlight *)self recalculateSharedAssetContainerCachedValues];
    }

    [(PLPhotosHighlight *)self willAccessValueForKey:v8];
    v10 = [(PLPhotosHighlight *)self primitiveValueForKey:v8];
    LODWORD(v11) = [v10 intValue];

    [(PLPhotosHighlight *)self didAccessValueForKey:v8];
  }

  else
  {
    if (v5)
    {
      v12 = [(PLPhotosHighlight *)self valueForKey:v9];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        LODWORD(v11) = 0;
        v15 = *v27;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v11 = v11 + [*(*(&v26 + 1) + 8 * i) hasLibraryScope];
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = [(PLPhotosHighlight *)self objectIDsForRelationshipNamed:v9];
      v11 = [v12 count];
    }

    if (PLIsAssetsd())
    {
      v17 = [(PLPhotosHighlight *)self objectID];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PLPhotosHighlight__cachedAssetCountForCountKey_collectionKey_isShared___block_invoke;
      v21[3] = &unk_1E75658B0;
      v22 = v17;
      v25 = v11;
      v23 = v8;
      v24 = self;
      v19 = v17;
      [(PLManagedObject *)self pl_safeSetValue:v18 forKey:v23 valueDidChangeHandler:v21];
    }
  }

  return v11;
}

void __73__PLPhotosHighlight__cachedAssetCountForCountKey_collectionKey_isShared___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLMomentsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Fixing cached count for object: %@ on key: %@ from %@ to %@...", &v8, 0x2Au);
  }

  *(*(a1 + 48) + 66) = 1;
}

- (void)reportSharedAssetContainerIncrementalChange:(id)a3 forAllAssetsCountKey:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 highlightContainerChanges];
  v10 = [v9 count];

  if (v10)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:650 description:@"unexpected change type."];
  }

  if ((*(&self->super._willSaveCallCount + 1) & 1) == 0)
  {
    if ([(PLPhotosHighlight *)self isInserted])
    {
      v11 = PLMomentsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(PLPhotosHighlight *)self objectID];
        *buf = 138412290;
        v77 = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Marking highlight: %@ as waiting for recalc...", buf, 0xCu);
      }

      *(&self->super._willSaveCallCount + 2) = 1;
      goto LABEL_44;
    }

    if (([(PLPhotosHighlight *)self isDeleted]& 1) != 0)
    {
      goto LABEL_44;
    }

    v13 = PLMomentsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v7 debugDescription];
      v15 = [(PLPhotosHighlight *)self objectID];
      *buf = 138412546;
      v77 = v14;
      v78 = 2112;
      v79 = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Processing incremental change: %@ for highlight: %@...", buf, 0x16u);
    }

    v16 = [v8 stringByAppendingString:@"Shared"];
    if ([v7 mediaType])
    {
      v17 = @"videoAssetsSuggestedByPhotosCount";
    }

    else
    {
      v17 = @"photoAssetsSuggestedByPhotosCount";
    }

    v18 = [(PLPhotosHighlight *)self primitiveValueForKey:v8];
    v19 = [v18 intValue];

    v20 = [(PLPhotosHighlight *)self primitiveValueForKey:v16];
    v21 = [v20 intValue];

    v49 = v17;
    v22 = [(PLPhotosHighlight *)self primitiveValueForKey:v17];
    v48 = [v22 intValue];

    v23 = [(PLPhotosHighlight *)self parentPhotosHighlight];
    v50 = [(PLPhotosHighlight *)self parentDayGroupPhotosHighlight];
    v24 = [v8 isEqual:@"assetsCount"];
    v25 = [v7 collectionChangeType];
    if ((v25 - 1) < 2)
    {
      if ([v7 collectionChangeType] == 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      v27 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + v19)];
      [(PLManagedObject *)self pl_safeSetValue:v27 forKey:v8 valueDidChangeHandler:0];

      if ([v7 sharingChange] == 1)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + v21)];
        [(PLManagedObject *)self pl_safeSetValue:v28 forKey:v16 valueDidChangeHandler:0];
      }

      v29 = v23;
      if (![v8 isEqual:@"assetsCount"] || objc_msgSend(v7, "suggestionStateChange") != 1)
      {
        goto LABEL_40;
      }

      v30 = v26 + v48;
      v31 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + v48)];
      v55 = MEMORY[0x1E69E9820];
      v56 = 3221225472;
      v57 = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_3;
      v58 = &unk_1E7565860;
      v32 = &v59;
      v33 = v23;
      v61 = v30;
      v34 = &v60;
      v59 = v33;
      v60 = v49;
      goto LABEL_39;
    }

    v29 = v23;
    if (v25)
    {
      goto LABEL_40;
    }

    v35 = [v7 sharingChange];
    if (v35 == 2)
    {
      v36 = MEMORY[0x1E696AD98];
      if (v21 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v21;
      }

      v37 = (v38 - 1);
    }

    else
    {
      if (v35 != 1)
      {
        goto LABEL_32;
      }

      v36 = MEMORY[0x1E696AD98];
      v37 = (v21 + 1);
    }

    v39 = [v36 numberWithInt:v37];
    [(PLManagedObject *)self pl_safeSetValue:v39 forKey:v16 valueDidChangeHandler:0];

LABEL_32:
    if (!v24)
    {
      goto LABEL_40;
    }

    v40 = [v7 suggestionStateChange];
    if (v40 == 2)
    {
      v42 = v48;
      if (v48 <= 1)
      {
        v42 = 1;
      }

      v43 = v42 - 1;
      v31 = [MEMORY[0x1E696AD98] numberWithInt:(v42 - 1)];
      v62 = MEMORY[0x1E69E9820];
      v63 = 3221225472;
      v64 = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_2;
      v65 = &unk_1E7565860;
      v32 = &v66;
      v44 = v23;
      v68 = v43;
      v34 = &v67;
      v66 = v44;
      v67 = v49;
    }

    else
    {
      if (v40 != 1)
      {
        goto LABEL_40;
      }

      v31 = [MEMORY[0x1E696AD98] numberWithInt:(v48 + 1)];
      v69 = MEMORY[0x1E69E9820];
      v70 = 3221225472;
      v71 = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke;
      v72 = &unk_1E7565860;
      v32 = &v73;
      v41 = v23;
      v75 = v48 + 1;
      v34 = &v74;
      v73 = v41;
      v74 = v49;
    }

LABEL_39:
    [PLManagedObject pl_safeSetValue:"pl_safeSetValue:forKey:valueDidChangeHandler:" forKey:v31 valueDidChangeHandler:?];

LABEL_40:
    if (([v8 isEqualToString:@"assetsCount"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"dayGroupAssetsCount"))
    {
      v45 = [objc_opt_class() calculateSharingCompositionForPhotosHighlight:self];
      v46 = [MEMORY[0x1E696AD98] numberWithShort:v45];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_4;
      v51[3] = &unk_1E7565888;
      v52 = v29;
      v54 = v45;
      v53 = v50;
      [(PLManagedObject *)self pl_safeSetValue:v46 forKey:@"sharingComposition" valueDidChangeHandler:v51];
    }
  }

LABEL_44:
}

void __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) kind] == 1)
  {
    [*(a1 + 32) _notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:objc_msgSend(v3 to:"intValue") forKeyPath:{*(a1 + 48), *(a1 + 40)}];
  }
}

void __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) kind] == 1)
  {
    [*(a1 + 32) _notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:objc_msgSend(v3 to:"intValue") forKeyPath:{*(a1 + 48), *(a1 + 40)}];
  }
}

void __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) kind] == 1)
  {
    [*(a1 + 32) _notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:objc_msgSend(v3 to:"intValue") forKeyPath:{*(a1 + 48), *(a1 + 40)}];
  }
}

uint64_t __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _notifyChildSharingCompositionDidChangeFrom:objc_msgSend(v4 to:{"shortValue"), *(a1 + 48)}];
  v5 = *(a1 + 40);
  v6 = [v4 shortValue];

  v7 = *(a1 + 48);

  return [v5 _notifyChildSharingCompositionDidChangeFrom:v6 to:v7];
}

- (void)recalculateSharedAssetContainerCachedValues
{
  v2 = self;
  v143 = *MEMORY[0x1E69E9840];
  *(&self->super._willSaveCallCount + 2) = 0;
  v3 = [(PLPhotosHighlight *)self parentPhotosHighlight];
  v4 = [(PLPhotosHighlight *)v2 parentDayGroupPhotosHighlight];
  v5 = MEMORY[0x1E696AD98];
  v6 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"assets"];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v7 forKey:@"assetsCount" valueDidChangeHandler:0];

  v8 = MEMORY[0x1E696AD98];
  v9 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"dayGroupAssets"];
  v10 = [v8 numberWithInt:{objc_msgSend(v9, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v10 forKey:@"dayGroupAssetsCount" valueDidChangeHandler:0];

  v11 = MEMORY[0x1E696AD98];
  v12 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"dayGroupExtendedAssets"];
  v13 = [v11 numberWithInt:{objc_msgSend(v12, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v13 forKey:@"dayGroupExtendedAssetsCount" valueDidChangeHandler:0];

  v14 = MEMORY[0x1E696AD98];
  v15 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"dayGroupSummaryAssets"];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v16 forKey:@"dayGroupSummaryAssetsCount" valueDidChangeHandler:0];

  v17 = MEMORY[0x1E696AD98];
  v18 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"extendedAssets"];
  v19 = [v17 numberWithInt:{objc_msgSend(v18, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v19 forKey:@"extendedCount" valueDidChangeHandler:0];

  v20 = MEMORY[0x1E696AD98];
  v21 = [(PLPhotosHighlight *)v2 objectIDsForRelationshipNamed:@"summaryAssets"];
  v22 = [v20 numberWithInt:{objc_msgSend(v21, "count")}];
  [(PLManagedObject *)v2 pl_safeSetValue:v22 forKey:@"summaryCount" valueDidChangeHandler:0];

  if ([(PLPhotosHighlight *)v2 kind])
  {
    if ([(PLPhotosHighlight *)v2 kind]== 1)
    {
      v89 = v4;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v23 = [(PLPhotosHighlight *)v2 childPhotosHighlights];
      v24 = [v23 countByEnumeratingWithState:&v106 objects:v139 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        v27 = 0;
        v28 = *v107;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v107 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v106 + 1) + 8 * i);
            if (![v30 kind])
            {
              v27 = [v30 photoAssetsSuggestedByPhotosCount] + v27;
              v26 = [v30 videoAssetsSuggestedByPhotosCount] + v26;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v106 objects:v139 count:16];
        }

        while (v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v62 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [(PLManagedObject *)v2 pl_safeSetValue:v62 forKey:@"photoAssetsSuggestedByPhotosCount" valueDidChangeHandler:0];
      v66 = @"videoAssetsSuggestedByPhotosCount";
      goto LABEL_86;
    }

    if ([(PLPhotosHighlight *)v2 kind]== 3)
    {
      v89 = v4;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v44 = [(PLPhotosHighlight *)v2 dayGroupAssets];
      v45 = [v44 countByEnumeratingWithState:&v102 objects:v138 count:16];
      if (v45)
      {
        v46 = v45;
        LODWORD(v47) = 0;
        v48 = *v103;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v103 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v47 = v47 + [*(*(&v102 + 1) + 8 * j) hasLibraryScope];
          }

          v46 = [v44 countByEnumeratingWithState:&v102 objects:v138 count:16];
        }

        while (v46);
      }

      else
      {
        v47 = 0;
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInt:v47];
      [(PLManagedObject *)v2 pl_safeSetValue:v68 forKey:@"dayGroupAssetsCountShared" valueDidChangeHandler:0];

      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      v98 = 0u;
      v69 = [(PLPhotosHighlight *)v2 dayGroupExtendedAssets];
      v70 = [v69 countByEnumeratingWithState:&v98 objects:v137 count:16];
      if (v70)
      {
        v71 = v70;
        LODWORD(v72) = 0;
        v73 = *v99;
        do
        {
          for (k = 0; k != v71; ++k)
          {
            if (*v99 != v73)
            {
              objc_enumerationMutation(v69);
            }

            v72 = v72 + [*(*(&v98 + 1) + 8 * k) hasLibraryScope];
          }

          v71 = [v69 countByEnumeratingWithState:&v98 objects:v137 count:16];
        }

        while (v71);
      }

      else
      {
        v72 = 0;
      }

      v75 = [MEMORY[0x1E696AD98] numberWithInt:v72];
      [(PLManagedObject *)v2 pl_safeSetValue:v75 forKey:@"dayGroupExtendedAssetsCountShared" valueDidChangeHandler:0];

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v62 = [(PLPhotosHighlight *)v2 dayGroupSummaryAssets];
      v76 = [v62 countByEnumeratingWithState:&v94 objects:v136 count:16];
      if (v76)
      {
        v77 = v76;
        LODWORD(v26) = 0;
        v78 = *v95;
        v66 = @"dayGroupSummaryAssetsCountShared";
        do
        {
          for (m = 0; m != v77; ++m)
          {
            if (*v95 != v78)
            {
              objc_enumerationMutation(v62);
            }

            v26 = v26 + [*(*(&v94 + 1) + 8 * m) hasLibraryScope];
          }

          v77 = [v62 countByEnumeratingWithState:&v94 objects:v136 count:16];
        }

        while (v77);
      }

      else
      {
        v26 = 0;
        v66 = @"dayGroupSummaryAssetsCountShared";
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v88 = v2;
  v89 = v4;
  v87 = v3;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v31 = [(PLPhotosHighlight *)v2 assets];
  v32 = [v31 countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (!v32)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_47;
  }

  v33 = v32;
  v34 = 0;
  v35 = 0;
  LODWORD(v36) = 0;
  v37 = *v133;
  do
  {
    for (n = 0; n != v33; ++n)
    {
      if (*v133 != v37)
      {
        objc_enumerationMutation(v31);
      }

      v39 = *(*(&v132 + 1) + 8 * n);
      v40 = [v39 hasLibraryScope];
      v41 = [v39 libraryScopeShareState];
      if (v41 > 65537)
      {
        if (v41 == 65552 || v41 == 65538)
        {
LABEL_29:
          if ([v39 kind])
          {
            if ([v39 kind] == 1)
            {
              v34 = (v34 + 1);
            }

            else
            {
              v34 = v34;
            }
          }

          else
          {
            v35 = (v35 + 1);
          }
        }
      }

      else if (v41 == 2 || v41 == 16)
      {
        goto LABEL_29;
      }

      v36 = (v36 + v40);
    }

    v33 = [v31 countByEnumeratingWithState:&v132 objects:v142 count:16];
  }

  while (v33);
LABEL_47:

  v50 = [MEMORY[0x1E696AD98] numberWithInt:v36];
  v2 = v88;
  [(PLManagedObject *)v88 pl_safeSetValue:v50 forKey:@"assetsCountShared" valueDidChangeHandler:0];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:v35];
  v125 = MEMORY[0x1E69E9820];
  v126 = 3221225472;
  v127 = __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke;
  v128 = &unk_1E7565860;
  v3 = v87;
  v52 = v87;
  v131 = v35;
  v129 = v52;
  v130 = @"photoAssetsSuggestedByPhotosCount";
  [PLManagedObject pl_safeSetValue:v88 forKey:"pl_safeSetValue:forKey:valueDidChangeHandler:" valueDidChangeHandler:v51];

  v53 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v118 = MEMORY[0x1E69E9820];
  v119 = 3221225472;
  v120 = __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke_2;
  v121 = &unk_1E7565860;
  v124 = v34;
  v122 = v52;
  v123 = @"videoAssetsSuggestedByPhotosCount";
  [PLManagedObject pl_safeSetValue:v88 forKey:"pl_safeSetValue:forKey:valueDidChangeHandler:" valueDidChangeHandler:v53];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v54 = [(PLPhotosHighlight *)v88 extendedAssets];
  v55 = [v54 countByEnumeratingWithState:&v114 objects:v141 count:16];
  if (v55)
  {
    v56 = v55;
    LODWORD(v57) = 0;
    v58 = *v115;
    v59 = 0x1E696A000;
    do
    {
      for (ii = 0; ii != v56; ++ii)
      {
        if (*v115 != v58)
        {
          objc_enumerationMutation(v54);
        }

        v57 = v57 + [*(*(&v114 + 1) + 8 * ii) hasLibraryScope];
      }

      v56 = [v54 countByEnumeratingWithState:&v114 objects:v141 count:16];
    }

    while (v56);
  }

  else
  {
    v57 = 0;
    v59 = 0x1E696A000uLL;
  }

  v61 = [*(v59 + 3480) numberWithInt:v57];
  [(PLManagedObject *)v88 pl_safeSetValue:v61 forKey:@"extendedCountShared" valueDidChangeHandler:0];

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v62 = [(PLPhotosHighlight *)v88 summaryAssets];
  v63 = [v62 countByEnumeratingWithState:&v110 objects:v140 count:16];
  if (v63)
  {
    v64 = v63;
    LODWORD(v26) = 0;
    v65 = *v111;
    v66 = @"summaryCountShared";
    do
    {
      for (jj = 0; jj != v64; ++jj)
      {
        if (*v111 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v26 = v26 + [*(*(&v110 + 1) + 8 * jj) hasLibraryScope];
      }

      v64 = [v62 countByEnumeratingWithState:&v110 objects:v140 count:16];
    }

    while (v64);
  }

  else
  {
    v26 = 0;
    v66 = @"summaryCountShared";
  }

LABEL_86:

  v80 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  [(PLManagedObject *)v2 pl_safeSetValue:v80 forKey:v66 valueDidChangeHandler:0];

  v4 = v89;
LABEL_87:
  v81 = [objc_opt_class() calculateSharingCompositionForPhotosHighlight:v2];
  v82 = [MEMORY[0x1E696AD98] numberWithShort:v81];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke_3;
  v90[3] = &unk_1E7565888;
  v93 = v81;
  v91 = v3;
  v92 = v4;
  v83 = v4;
  v84 = v3;
  v85 = v83;
  v86 = v84;
  [(PLManagedObject *)v2 pl_safeSetValue:v82 forKey:@"sharingComposition" valueDidChangeHandler:v90];
}

void __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) kind] == 1)
  {
    [*(a1 + 32) _notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:objc_msgSend(v3 to:"intValue") forKeyPath:{*(a1 + 48), *(a1 + 40)}];
  }
}

void __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) kind] == 1)
  {
    [*(a1 + 32) _notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:objc_msgSend(v3 to:"intValue") forKeyPath:{*(a1 + 48), *(a1 + 40)}];
  }
}

uint64_t __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _notifyChildSharingCompositionDidChangeFrom:objc_msgSend(v4 to:{"shortValue"), *(a1 + 48)}];
  v5 = *(a1 + 40);
  v6 = [v4 shortValue];

  v7 = *(a1 + 48);

  return [v5 _notifyChildSharingCompositionDidChangeFrom:v6 to:v7];
}

- (void)_notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:(int)a3 to:(int)a4 forKeyPath:(id)a5
{
  v15 = a5;
  if (!v15)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"suggestedAssetsCountKey"}];
  }

  if ([(PLPhotosHighlight *)self kind]!= 1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:495 description:@"only supported for month"];
  }

  v9 = a4 - a3;
  v10 = [(PLPhotosHighlight *)self valueForKey:v15];
  v11 = [v10 intValue];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:(v9 + v11)];
  [(PLManagedObject *)self pl_safeSetValue:v12 forKey:v15 valueDidChangeHandler:0];
}

- (void)_notifyChildSharingCompositionDidChangeFrom:(signed __int16)a3 to:(signed __int16)a4
{
  v4 = a4;
  v6 = [(PLPhotosHighlight *)self sharingComposition];
  if ([(PLPhotosHighlight *)self sharingComposition]!= v4)
  {
    if (v4 == 2)
    {
      [(PLManagedObject *)self pl_safeSetValue:&unk_1F0FBACF0 forKey:@"sharingComposition" valueDidChangeHandler:0];
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(objc_opt_class(), "calculateSharingCompositionForPhotosHighlight:", self)}];
      [(PLManagedObject *)self pl_safeSetValue:v7 forKey:@"sharingComposition" valueDidChangeHandler:0];
    }
  }

  if ([(PLPhotosHighlight *)self kind]!= 2 && [(PLPhotosHighlight *)self sharingComposition]!= v6)
  {
    v8 = [(PLPhotosHighlight *)self parentPhotosHighlight];
    [v8 _notifyChildSharingCompositionDidChangeFrom:v6 to:{-[PLPhotosHighlight sharingComposition](self, "sharingComposition")}];
  }
}

- (NSString)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:1];
  v4 = [(PLPhotosHighlight *)self uuid];
  [(PLDescriptionBuilder *)v3 appendName:@"uuid" object:v4];

  v5 = [(PLPhotosHighlight *)self title];
  if (v5)
  {
    v6 = [(PLPhotosHighlight *)self title];
    if ([v6 length])
    {
      v82 = [(PLPhotosHighlight *)self title];
    }

    else
    {
      v82 = @"No title";
    }
  }

  else
  {
    v82 = @"No title";
  }

  v7 = [(PLPhotosHighlight *)self subtitle];
  if (v7)
  {
    v8 = [(PLPhotosHighlight *)self subtitle];
    if ([v8 length])
    {
      v81 = [(PLPhotosHighlight *)self subtitle];
    }

    else
    {
      v81 = @"No subtitle";
    }
  }

  else
  {
    v81 = @"No subtitle";
  }

  v9 = [(PLPhotosHighlight *)self verboseSmartDescription];
  if (v9)
  {
    v10 = [(PLPhotosHighlight *)self verboseSmartDescription];
    if ([v10 length])
    {
      v80 = [(PLPhotosHighlight *)self verboseSmartDescription];
    }

    else
    {
      v80 = @"No verboseSmartDescription";
    }
  }

  else
  {
    v80 = @"No verboseSmartDescription";
  }

  [(PLDescriptionBuilder *)v3 appendName:@"title" object:v82];
  [(PLDescriptionBuilder *)v3 appendName:@"subtitle" object:v81];
  [(PLDescriptionBuilder *)v3 appendName:@"verboseSmartDescription" object:v80];
  v11 = [objc_opt_class() stringFromHighlightKind:{-[PLPhotosHighlight kind](self, "kind")}];
  [(PLDescriptionBuilder *)v3 appendName:@"kind" object:v11];

  v12 = [(PLPhotosHighlight *)self startDate];
  v13 = [(PLPhotosHighlight *)self endDate];
  [(PLDescriptionBuilder *)v3 appendName:@"start date (gmt)" object:v12];
  [(PLDescriptionBuilder *)v3 appendName:@"end date (gmt)" object:v13];
  v14 = [(PLPhotosHighlight *)self localStartDate];
  v15 = [(PLPhotosHighlight *)self localEndDate];
  [(PLDescriptionBuilder *)v3 appendName:@"start date (local)" object:v14];
  [(PLDescriptionBuilder *)v3 appendName:@"end date (local)" object:v15];
  v16 = [(PLPhotosHighlight *)self type];
  v17 = @"unknown";
  v18 = @"unknown";
  if (v16 <= 7)
  {
    v18 = off_1E7565928[v16];
  }

  v19 = v18;
  [(PLDescriptionBuilder *)v3 appendName:@"type" object:v19];

  v20 = [(PLPhotosHighlight *)self category];
  v21 = @"PLPhotosHighlightCategoryRecent";
  if (v20 != 1)
  {
    v21 = @"unknown";
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = @"PLPhotosHighlightCategoryDefault";
  }

  [(PLDescriptionBuilder *)v3 appendName:@"category" object:v22];
  v23 = [(PLPhotosHighlight *)self sharingComposition];
  if (v23 <= 2)
  {
    v17 = off_1E7565968[v23];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"sharingComposition" object:v17];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCount](self, "assetsCount")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count" object:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCountShared](self, "assetsCountShared")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" object:v25];

  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCountPrivate](self, "assetsCountPrivate")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count (private)" object:v26];

  v27 = [(PLPhotosHighlight *)self visibilityState];
  if (v27 > 4)
  {
    v28 = @"unknown";
  }

  else
  {
    v28 = off_1E7565980[v27];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility private" object:v28];
  v29 = [(PLPhotosHighlight *)self visibilityStateShared];
  if (v29 > 4)
  {
    v30 = @"unknown";
  }

  else
  {
    v30 = off_1E7565980[v29];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility shared" object:v30];
  v31 = [(PLPhotosHighlight *)self visibilityStateMixed];
  if (v31 > 4)
  {
    v32 = @"unknown";
  }

  else
  {
    v32 = off_1E7565980[v31];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility mixed" object:v32];
  v33 = [(PLPhotosHighlight *)self enrichmentState];
  if (v33 > 4)
  {
    v34 = @"unknown";
  }

  else
  {
    v34 = off_1E75659A8[v33];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"enrichment state" object:v34];
  v35 = [(PLPhotosHighlight *)self kind];
  v36 = v35;
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v75 = v15;
      v76 = v12;
      v78 = v14;
      v37 = v13;
      v39 = v81;
      v38 = v82;
      v40 = [(PLPhotosHighlight *)self yearKeyAssetPrivate];
      v62 = [v40 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:v62];

      v42 = [(PLPhotosHighlight *)self yearKeyAssetShared];
LABEL_63:
      v45 = v42;
      v81 = v39;
      v82 = v38;
      v63 = [v42 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:v63];

      v64 = [(PLPhotosHighlight *)self childPhotosHighlights];
      v65 = [v64 valueForKey:@"uuid"];
      v66 = [v65 allObjects];
      v67 = [v66 componentsJoinedByString:@"\n\t\t\t"];
      [(PLDescriptionBuilder *)v3 appendName:@"child uuids" object:v67];

      v12 = v76;
      v14 = v78;
      v13 = v37;
      v15 = v75;
      if (v36 == 2)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v35 == 3)
    {
      v43 = [(PLPhotosHighlight *)self dayGroupKeyAssetPrivate];
      v44 = [v43 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:v44];

      v45 = [(PLPhotosHighlight *)self dayGroupKeyAssetShared];
      v46 = [v45 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:v46];

      v47 = [(PLPhotosHighlight *)self dayGroupAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"assets count", [v47 count]);

      if ([(PLPhotosHighlight *)self dayGroupAssetsCountShared]> 0)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupAssetsCountShared]];
      }

      v77 = v43;
      v79 = v14;
      v48 = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"summary count", [v48 count]);

      if ([(PLPhotosHighlight *)self dayGroupSummaryAssetsCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"summary count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupSummaryAssetsCountShared]];
      }

      v49 = v13;
      v50 = v12;
      v51 = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"extended count", [v51 count]);

      if ([(PLPhotosHighlight *)self dayGroupExtendedAssetsCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"extended count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupExtendedAssetsCountShared]];
      }

      v52 = [(PLPhotosHighlight *)self childDayGroupPhotosHighlights];
      v53 = [v52 valueForKey:@"uuid"];
      v54 = [v53 allObjects];
      v55 = [v54 componentsJoinedByString:@"\n\t\t\t"];
      [(PLDescriptionBuilder *)v3 appendName:@"child day uuids" object:v55];

      v12 = v50;
      v13 = v49;
      v40 = v77;
      v14 = v79;
      goto LABEL_61;
    }
  }

  else
  {
    if (!v35)
    {
      v40 = [(PLPhotosHighlight *)self keyAssetPrivate];
      v57 = [v40 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:v57];

      v45 = [(PLPhotosHighlight *)self keyAssetShared];
      v58 = [v45 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:v58];

      v59 = [(PLPhotosHighlight *)self assets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"assets count", [v59 count]);

      if ([(PLPhotosHighlight *)self assetsCountShared]> 0)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self assetsCountShared]];
      }

      v60 = [(PLPhotosHighlight *)self summaryAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"summary count", [v60 count]);

      if ([(PLPhotosHighlight *)self summaryCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"summary count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self summaryCountShared]];
      }

      v61 = [(PLPhotosHighlight *)self extendedAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"extended count", [v61 count]);

      if ([(PLPhotosHighlight *)self extendedCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"extended count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self extendedCountShared]];
      }

      v52 = [(PLPhotosHighlight *)self moments];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"moments count", [v52 count]);
      goto LABEL_61;
    }

    if (v35 == 1)
    {
      v75 = v15;
      v76 = v12;
      v78 = v14;
      v37 = v13;
      v39 = v81;
      v38 = v82;
      v40 = [(PLPhotosHighlight *)self monthKeyAssetPrivate];
      v41 = [v40 localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:v41];

      v42 = [(PLPhotosHighlight *)self monthKeyAssetShared];
      goto LABEL_63;
    }
  }

  v56 = [0 localID];
  [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:v56];

  v52 = [0 localID];
  [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:v52];
  v45 = 0;
  v40 = 0;
LABEL_61:

LABEL_64:
  v68 = [(PLPhotosHighlight *)self parentPhotosHighlight];
  v69 = [v68 uuid];
  [(PLDescriptionBuilder *)v3 appendName:@"parent uuid" object:v69];

LABEL_65:
  [(PLPhotosHighlight *)self promotionScore];
  [(PLDescriptionBuilder *)v3 appendName:@"promotion score" doubleValue:?];
  [(PLDescriptionBuilder *)v3 appendName:@"start time zone offset" integerValue:[(PLPhotosHighlight *)self startTimeZoneOffset]];
  [(PLDescriptionBuilder *)v3 appendName:@"end time zone offset" integerValue:[(PLPhotosHighlight *)self endTimeZoneOffset]];
  v70 = PLDescriptionForMemoryMood([(PLPhotosHighlight *)self mood]);
  [(PLDescriptionBuilder *)v3 appendName:@"mood" object:v70];

  v71 = [(PLPhotosHighlight *)self moments];
  v72 = PLDebugDescriptionForAggregateProcessedLocationType(v71);
  [(PLDescriptionBuilder *)v3 appendName:@"processed location type" object:v72];

  [(PLDescriptionBuilder *)v3 appendName:@"highlight version" integerValue:[(PLPhotosHighlight *)self highlightVersion]];
  [(PLDescriptionBuilder *)v3 appendName:@"enrichment version" integerValue:[(PLPhotosHighlight *)self enrichmentVersion]];
  v73 = [(PLDescriptionBuilder *)v3 build];

  return v73;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLPhotosHighlight;
  v4 = [(PLPhotosHighlight *)&v12 description];
  v5 = [(PLPhotosHighlight *)self uuid];
  v6 = [(PLPhotosHighlight *)self title];
  v7 = [objc_opt_class() stringFromHighlightKind:{-[PLPhotosHighlight kind](self, "kind")}];
  v8 = [(PLPhotosHighlight *)self startDate];
  v9 = [(PLPhotosHighlight *)self endDate];
  v10 = [v3 stringWithFormat:@"%@ (%@) - %@ (%@) (%@ - %@)", v4, v5, v6, v7, v8, v9];

  return v10;
}

+ (id)_libraryScopePredicateForSharingConsideration:(int64_t)a3
{
  if (_libraryScopePredicateForSharingConsideration__sOnceToken != -1)
  {
    dispatch_once(&_libraryScopePredicateForSharingConsideration__sOnceToken, &__block_literal_global_4646);
  }

  v4 = &_libraryScopePredicateForSharingConsideration__sPredicatePrivate;
  if (a3)
  {
    v4 = &_libraryScopePredicateForSharingConsideration__sPredicateShared;
  }

  v5 = *v4;

  return v5;
}

void __67__PLPhotosHighlight__libraryScopePredicateForSharingConsideration___block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_489];
  v1 = _libraryScopePredicateForSharingConsideration__sPredicateShared;
  _libraryScopePredicateForSharingConsideration__sPredicateShared = v0;

  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_491];
  v3 = _libraryScopePredicateForSharingConsideration__sPredicatePrivate;
  _libraryScopePredicateForSharingConsideration__sPredicatePrivate = v2;
}

+ (NSArray)sortByTimeSortDescriptors
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:{1, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)batchFetchPhotosHighlightUUIDsByMomentUUIDsWithMomentUUIDs:(id)a3 library:(id)a4 error:(id *)a5
{
  v48[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PLPhotosHighlight.m" lineNumber:1359 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v10 managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLMoment entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v9];
  [v14 setPredicate:v15];
  [v14 setResultType:2];
  v48[0] = @"uuid";
  v48[1] = @"highlight.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  [v14 setPropertiesToFetch:v16];

  if (!a5)
  {
    v42 = 0;
    a5 = &v42;
  }

  v17 = [v11 executeFetchRequest:v14 error:a5];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v33 = v15;
      v34 = v14;
      v35 = v11;
      v36 = v10;
      v37 = v9;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
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
              v44 = v27;
              v45 = 2112;
              v46 = v25;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Error fetching highlight UUID for moment UUID: %@, highlight UUID: %@", buf, 0x16u);
            }
          }

          else
          {
            [v18 setObject:v25 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v21);
      v10 = v36;
      v9 = v37;
      v14 = v34;
      v11 = v35;
      v15 = v33;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = *a5;
      *buf = 138412290;
      v44 = v30;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error fetching highlight UUID for moment UUID: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)batchFetchTripHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 error:(id *)a5
{
  v56[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:a1 file:@"PLPhotosHighlight.m" lineNumber:1319 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v10 managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v9];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K IN %@", @"dayGroupHighlightBeingAssets", @"type", &unk_1F0FBF340];
  v17 = MEMORY[0x1E696AB28];
  v43 = v16;
  v44 = v15;
  v56[0] = v15;
  v56[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = v19;
  [v14 setPredicate:v19];
  [v14 setResultType:2];
  v55[0] = @"uuid";
  v55[1] = @"dayGroupHighlightBeingAssets.uuid";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  [v14 setPropertiesToFetch:v21];

  if (!a5)
  {
    v49 = 0;
    a5 = &v49;
  }

  v22 = [v11 executeFetchRequest:v14 error:a5];
  if (v22)
  {
    v42 = v14;
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v38 = v20;
      v39 = v11;
      v40 = v10;
      v41 = v9;
      v27 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v45 + 1) + 8 * i);
          v30 = [v29 objectForKeyedSubscript:@"dayGroupHighlightBeingAssets.uuid"];
          v31 = [v29 objectForKeyedSubscript:@"uuid"];
          v32 = v31;
          if (v30)
          {
            v33 = v31 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            v34 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v51 = v32;
              v52 = 2114;
              v53 = v30;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Could not fetch trip highlight for asset UUID: %{public}@, trip highlight UUID:%{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v23 setObject:v30 forKey:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v26);
      v10 = v40;
      v9 = v41;
      v20 = v38;
      v11 = v39;
      v14 = v42;
    }
  }

  else
  {
    v24 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v35 = *a5;
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Trip Highlight fetch using asset UUIDs failed with error: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

+ (id)batchFetchPhotosHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)a3 library:(id)a4 error:(id *)a5
{
  v46[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PLPhotosHighlight.m" lineNumber:1282 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v10 managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v9];
  [v14 setPredicate:v15];
  [v14 setResultType:2];
  v46[0] = @"uuid";
  v46[1] = @"highlightBeingAssets.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v14 setPropertiesToFetch:v16];

  if (!a5)
  {
    v42 = 0;
    a5 = &v42;
  }

  v17 = [v11 executeFetchRequest:v14 error:a5];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v33 = v15;
      v34 = v14;
      v35 = v11;
      v36 = v10;
      v37 = v9;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"highlightBeingAssets.uuid"];
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
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v44 = v27;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "Couldn't fetch highlight for asset UUID: %@", buf, 0xCu);
            }
          }

          else
          {
            [v18 setObject:v25 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v21);
      v10 = v36;
      v9 = v37;
      v14 = v34;
      v11 = v35;
      v15 = v33;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = *a5;
      *buf = 138412290;
      v44 = v30;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Highlight fetch using asset UUIDs failed with error: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)predicateForAllTripHighlights
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %u OR %K = %u OR %K = %u", @"type", 1, @"type", 2, @"type", 4];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 andPredicateWithSubpredicates:v4];

  return v5;
}

+ (id)predicateForInvalidMonthOrYearHighlights
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"childPhotosHighlights.@count = 0"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %u", 1];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %u", 2];
  v5 = MEMORY[0x1E696AB28];
  v13[0] = v3;
  v13[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v5 orPredicateWithSubpredicates:v6];

  v8 = MEMORY[0x1E696AB28];
  v12[0] = v2;
  v12[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)predicateForInvalidDayGroupHighlights
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"childDayGroupPhotosHighlights.@count = 0"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dayGroupAssets.@count = 0"];
  v12[0] = v2;
  v12[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v5 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %u", 3];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v5;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForInvalidDayHighlights
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"moments.@count = 0"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assets.@count = 0"];
  v12[0] = v2;
  v12[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v5 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %u", 0];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v5;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForInvalidHighlightsOfAllKinds
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForInvalidDayHighlights];
  v5 = [a1 predicateForInvalidDayGroupHighlights];
  v10[1] = v5;
  v6 = [a1 predicateForInvalidMonthOrYearHighlights];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v8 = [v3 orPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForEmptyHighlightsOfKind:(unsigned __int16)a3
{
  v3 = a3;
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [a1 _predicateForHighlightsOfKind:?];
  if (v3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:off_1E7565A08[v3]];
  }

  v6 = MEMORY[0x1E696AB28];
  v10[0] = v4;
  v10[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForAllAssetsInPhotosHighlight:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 kind];
  v5 = v4;
  if ((v4 - 1) < 2)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 uuid];
      *buf = 67109378;
      v15 = v5;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error: kind %d not supported for fetching all assets - highlight UUID: %@", buf, 0x12u);
    }

    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v6 = MEMORY[0x1E696AE18];
    v7 = [v3 objectID];
    v8 = v7;
    v9 = @"dayGroupHighlightBeingAssets";
    goto LABEL_10;
  }

  if (v4)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_11;
  }

  v6 = MEMORY[0x1E696AE18];
  v7 = [v3 objectID];
  v8 = v7;
  v9 = @"highlightBeingAssets";
LABEL_10:
  v12 = [v6 predicateWithFormat:@"%K = %@", v9, v7];

LABEL_11:

  return v12;
}

+ (id)allPhotosHighlightsInManagedObjectContext:(id)a3 predicate:(id)a4 keyPathsForPrefetching:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E695D5E0];
  v14 = [a1 entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  [v15 setFetchBatchSize:100];
  if (v11)
  {
    [v15 setPredicate:v11];
  }

  if (v12)
  {
    [v15 setRelationshipKeyPathsForPrefetching:v12];
  }

  v16 = [v10 executeFetchRequest:v15 error:a6];

  return v16;
}

+ (id)insertNewPhotosHighlightInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, v6, a4);

  return v8;
}

+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4 title:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 managedObjectContext];
  v11 = [a1 entityName];
  v12 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v11, v10, 0);

  if (v12)
  {
    [v12 setUuid:v8];
    [v12 setTitle:v9];
  }

  return v12;
}

+ (id)fetchRequest
{
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  v4 = [a1 entityName];
  v5 = [v3 initWithEntityName:v4];

  return v5;
}

+ (signed)calculateSharingCompositionForPhotosHighlight:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 kind];
  if ((v4 - 1) >= 2)
  {
    if (v4 != 3 && v4)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      if ([v3 kind] == 3)
      {
        v5 = [v3 dayGroupAssetsCountShared];
      }

      else
      {
        v5 = [v3 assetsCountShared];
      }

      v14 = v5;
      if ([v3 kind] == 3)
      {
        v15 = [v3 dayGroupAssetsCountPrivate];
      }

      else
      {
        v15 = [v3 assetsCountPrivate];
      }

      if (v15)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      if (v14)
      {
        LOWORD(v7) = v16;
      }

      else
      {
        LOWORD(v7) = 0;
      }
    }

    goto LABEL_41;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v3 childPhotosHighlights];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = 0;
  v9 = 0;
  v10 = *v19;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [*(*(&v18 + 1) + 8 * i) sharingComposition];
      if (v12 == 2)
      {
        v8 = 1;
      }

      else if (v12 != 1)
      {
        if (!v12)
        {
          v8 = 1;
        }

        if ((v9 & 1) == 0)
        {
          continue;
        }

        goto LABEL_19;
      }

      v9 = 1;
LABEL_19:
      if (v8)
      {
        LOWORD(v7) = 2;
        goto LABEL_29;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (v8)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v9)
  {
    LOWORD(v7) = v13;
  }

  else
  {
    LOWORD(v7) = 0;
  }

LABEL_29:

LABEL_41:
  return v7;
}

+ (id)stringFromHighlightKind:(unsigned __int16)a3
{
  if (a3 > 3u)
  {
    return @"Unknown kind";
  }

  else
  {
    return off_1E75659D0[a3];
  }
}

+ (id)defaultPropertiesToFetchForMomentList
{
  pl_dispatch_once();
  v2 = defaultPropertiesToFetchForMomentList_pl_once_object_29;

  return v2;
}

void __80__PLPhotosHighlight_PLMomentList_Private__defaultPropertiesToFetchForMomentList__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = +[PLManagedObject objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"kind";
  v4[3] = @"endDate";
  v4[4] = @"startDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v1 copy];
  v3 = defaultPropertiesToFetchForMomentList_pl_once_object_29;
  defaultPropertiesToFetchForMomentList_pl_once_object_29 = v2;
}

+ (id)allowedPropertiesForMomentList
{
  pl_dispatch_once();
  v2 = allowedPropertiesForMomentList_pl_once_object_28;

  return v2;
}

void __73__PLPhotosHighlight_PLMomentList_Private__allowedPropertiesForMomentList__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = +[PLManagedObject objectIDDescription];
  v6[0] = v1;
  v6[1] = @"objectID";
  v6[2] = @"uuid";
  v6[3] = @"kind";
  v6[4] = @"endDate";
  v6[5] = @"startDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v3 = [v0 setWithArray:v2];
  v4 = [v3 copy];
  v5 = allowedPropertiesForMomentList_pl_once_object_28;
  allowedPropertiesForMomentList_pl_once_object_28 = v4;
}

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLPhotosHighlight *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v3 = [(PLPhotosHighlight *)self uuid];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PLPhotosHighlight *)self startDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(PLPhotosHighlight *)self endDate];

    if (v7)
    {
      v8 = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
      v9 = [v8 dateCreated];
      if (v9)
      {

LABEL_9:
        v13 = objc_opt_class();
        v4 = [(PLManagedObject *)self photoLibrary];
        v14 = [v13 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v4)}];
        v10 = [v14 evaluateWithObject:self];

        goto LABEL_10;
      }

      v11 = [(PLPhotosHighlight *)self keyAssetForKindShared];
      v12 = [v11 dateCreated];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)fetchHighlightsWithUUIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v14[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[PLPhotosHighlight fetchRequest];
  v14[0] = @"uuid";
  v14[1] = @"title";
  v14[2] = @"keyAssetPrivate";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v9 setPropertiesToFetch:v10];

  [v9 setIncludesPendingChanges:0];
  if ([v7 count] >= 0x65)
  {
    [v9 setFetchBatchSize:100];
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v7];
  [v9 setPredicate:v11];

  [v9 setFetchLimit:{objc_msgSend(v7, "count")}];
  v12 = [v8 executeFetchRequest:v9 error:a5];

  return v12;
}

+ (id)fetchHighlightsWithUUIDs:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PLPhotosHighlight fetchRequest];
  v9 = [a1 propertiesToFetch];
  [v8 setPropertiesToFetch:v9];

  [v8 setIncludesPendingChanges:0];
  if ([v6 count] >= 0x65)
  {
    [v8 setFetchBatchSize:100];
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v6];
  [v8 setPredicate:v10];

  [v8 setFetchLimit:{objc_msgSend(v6, "count")}];
  v15 = 0;
  v11 = [v7 executeFetchRequest:v8 error:&v15];

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

+ (id)propertiesToFetch
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"uuid";
  v4[1] = @"title";
  v4[2] = @"keyAssetPrivate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

@end