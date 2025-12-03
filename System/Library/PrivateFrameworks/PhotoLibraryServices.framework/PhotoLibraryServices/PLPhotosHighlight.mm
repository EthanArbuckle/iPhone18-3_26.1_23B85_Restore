@interface PLPhotosHighlight
+ (NSArray)sortByTimeSortDescriptors;
+ (id)_libraryScopePredicateForSharingConsideration:(int64_t)consideration;
+ (id)allPhotosHighlightsInManagedObjectContext:(id)context predicate:(id)predicate keyPathsForPrefetching:(id)prefetching error:(id *)error;
+ (id)allowedPropertiesForMomentList;
+ (id)batchFetchPhotosHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)ds library:(id)library error:(id *)error;
+ (id)batchFetchPhotosHighlightUUIDsByMomentUUIDsWithMomentUUIDs:(id)ds library:(id)library error:(id *)error;
+ (id)batchFetchTripHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)ds library:(id)library error:(id *)error;
+ (id)defaultPropertiesToFetchForMomentList;
+ (id)fetchHighlightsWithUUIDs:(id)ds managedObjectContext:(id)context;
+ (id)fetchHighlightsWithUUIDs:(id)ds managedObjectContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d title:(id)title;
+ (id)insertNewPhotosHighlightInManagedObjectContext:(id)context error:(id *)error;
+ (id)predicateForAllAssetsInPhotosHighlight:(id)highlight;
+ (id)predicateForAllTripHighlights;
+ (id)predicateForEmptyHighlightsOfKind:(unsigned __int16)kind;
+ (id)predicateForInvalidDayGroupHighlights;
+ (id)predicateForInvalidDayHighlights;
+ (id)predicateForInvalidHighlightsOfAllKinds;
+ (id)predicateForInvalidMonthOrYearHighlights;
+ (id)propertiesToFetch;
+ (id)stringFromHighlightKind:(unsigned __int16)kind;
+ (signed)calculateSharingCompositionForPhotosHighlight:(id)highlight;
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
- (id)_extendedAssetsForSharingConsideration:(int64_t)consideration;
- (id)_keyAssetForSharingConsideration:(int64_t)consideration;
- (int)_cachedAssetCountForCountKey:(id)key collectionKey:(id)collectionKey isShared:(BOOL)shared;
- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)key;
- (unint64_t)numberOfAssetsInExtendedForSharingConsideration:(int64_t)consideration;
- (void)_notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:(int)from to:(int)to forKeyPath:(id)path;
- (void)_notifyChildSharingCompositionDidChangeFrom:(signed __int16)from to:(signed __int16)to;
- (void)_recalculateCollageAssetsForSharingConsideration:(int64_t)consideration;
- (void)awakeFromInsert;
- (void)bumpHighlightVersion;
- (void)delete;
- (void)prepareForDeletion;
- (void)recalculateCollageAssets;
- (void)recalculateSharedAssetContainerCachedValues;
- (void)removeAssetData:(id)data;
- (void)reportSharedAssetContainerIncrementalChange:(id)change forAllAssetsCountKey:(id)key;
- (void)setKeyAssetForKindPrivate:(id)private;
- (void)setKeyAssetForKindShared:(id)shared;
- (void)setParentPhotosHighlight:(id)highlight;
- (void)willSave;
@end

@implementation PLPhotosHighlight

- (unint64_t)numberOfAssetsInExtendedForSharingConsideration:(int64_t)consideration
{
  kind = [(PLPhotosHighlight *)self kind];
  if (kind == 3)
  {
    switch(consideration)
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

  if (kind)
  {
    return 0;
  }

  if (consideration == 2)
  {
    LODWORD(result) = [(PLPhotosHighlight *)self extendedCount];
    return result;
  }

  if (consideration == 1)
  {
    LODWORD(result) = [(PLPhotosHighlight *)self extendedCountShared];
    return result;
  }

  if (consideration)
  {
    return 0;
  }

  LODWORD(result) = [(PLPhotosHighlight *)self extendedCountPrivate];
  return result;
}

- (NSSet)dayGroupSummaryAssetsShared
{
  dayGroupSummaryAssets = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [dayGroupSummaryAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupExtendedAssetsShared
{
  dayGroupExtendedAssets = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [dayGroupExtendedAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupAssetsShared
{
  dayGroupAssets = [(PLPhotosHighlight *)self dayGroupAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [dayGroupAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)extendedAssetsShared
{
  extendedAssets = [(PLPhotosHighlight *)self extendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [extendedAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)summaryAssetsShared
{
  summaryAssets = [(PLPhotosHighlight *)self summaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [summaryAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)assetsShared
{
  assets = [(PLPhotosHighlight *)self assets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:1];
  v4 = [assets filteredSetUsingPredicate:v3];

  return v4;
}

- (void)setKeyAssetForKindShared:(id)shared
{
  sharedCopy = shared;
  kind = [(PLPhotosHighlight *)self kind];
  if (kind <= 1)
  {
    if (kind)
    {
      v5 = kind == 1;
      v6 = sharedCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(PLPhotosHighlight *)self setMonthKeyAssetShared:sharedCopy];
    }

    else
    {
      [(PLPhotosHighlight *)self setKeyAssetShared:sharedCopy];
    }

LABEL_12:
    v6 = sharedCopy;
    goto LABEL_13;
  }

  if (kind == 2)
  {
    [(PLPhotosHighlight *)self setYearKeyAssetShared:sharedCopy];
    goto LABEL_12;
  }

  v5 = kind == 3;
  v6 = sharedCopy;
  if (v5)
  {
    [(PLPhotosHighlight *)self setDayGroupKeyAssetShared:sharedCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (PLManagedAsset)keyAssetForKindShared
{
  kind = [(PLPhotosHighlight *)self kind];
  yearKeyAssetShared = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      yearKeyAssetShared = [(PLPhotosHighlight *)self yearKeyAssetShared];
    }

    else if (kind == 3)
    {
      yearKeyAssetShared = [(PLPhotosHighlight *)self dayGroupKeyAssetShared];
    }
  }

  else if (kind)
  {
    if (kind == 1)
    {
      yearKeyAssetShared = [(PLPhotosHighlight *)self monthKeyAssetShared];
    }
  }

  else
  {
    yearKeyAssetShared = [(PLPhotosHighlight *)self keyAssetShared];
  }

  return yearKeyAssetShared;
}

- (NSSet)dayGroupSummaryAssetsPrivate
{
  dayGroupSummaryAssets = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [dayGroupSummaryAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupExtendedAssetsPrivate
{
  dayGroupExtendedAssets = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [dayGroupExtendedAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)dayGroupAssetsPrivate
{
  dayGroupAssets = [(PLPhotosHighlight *)self dayGroupAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [dayGroupAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)extendedAssetsPrivate
{
  extendedAssets = [(PLPhotosHighlight *)self extendedAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [extendedAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)summaryAssetsPrivate
{
  summaryAssets = [(PLPhotosHighlight *)self summaryAssets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [summaryAssets filteredSetUsingPredicate:v3];

  return v4;
}

- (NSSet)assetsPrivate
{
  assets = [(PLPhotosHighlight *)self assets];
  v3 = [objc_opt_class() _libraryScopePredicateForSharingConsideration:0];
  v4 = [assets filteredSetUsingPredicate:v3];

  return v4;
}

- (BOOL)missingKeyAssetForKindPrivate
{
  if ([(PLPhotosHighlight *)self sharingComposition]== 1)
  {
    return 0;
  }

  keyAssetForKindPrivate = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
  v3 = keyAssetForKindPrivate == 0;

  return v3;
}

- (BOOL)missingKeyAssetForKindShared
{
  if (![(PLPhotosHighlight *)self sharingComposition])
  {
    return 0;
  }

  keyAssetForKindShared = [(PLPhotosHighlight *)self keyAssetForKindShared];
  v4 = keyAssetForKindShared == 0;

  return v4;
}

- (NSDate)localEndDate
{
  endDate = [(PLPhotosHighlight *)self endDate];
  v4 = [endDate dateByAddingTimeInterval:{-[PLPhotosHighlight endTimeZoneOffset](self, "endTimeZoneOffset")}];

  return v4;
}

- (NSDate)localStartDate
{
  startDate = [(PLPhotosHighlight *)self startDate];
  v4 = [startDate dateByAddingTimeInterval:{-[PLPhotosHighlight startTimeZoneOffset](self, "startTimeZoneOffset")}];

  return v4;
}

- (void)setKeyAssetForKindPrivate:(id)private
{
  privateCopy = private;
  kind = [(PLPhotosHighlight *)self kind];
  if (kind <= 1)
  {
    if (kind)
    {
      v5 = kind == 1;
      v6 = privateCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(PLPhotosHighlight *)self setMonthKeyAssetPrivate:privateCopy];
    }

    else
    {
      [(PLPhotosHighlight *)self setKeyAssetPrivate:privateCopy];
    }

LABEL_12:
    v6 = privateCopy;
    goto LABEL_13;
  }

  if (kind == 2)
  {
    [(PLPhotosHighlight *)self setYearKeyAssetPrivate:privateCopy];
    goto LABEL_12;
  }

  v5 = kind == 3;
  v6 = privateCopy;
  if (v5)
  {
    [(PLPhotosHighlight *)self setDayGroupKeyAssetPrivate:privateCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (PLManagedAsset)keyAssetForKindPrivate
{
  kind = [(PLPhotosHighlight *)self kind];
  yearKeyAssetPrivate = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self yearKeyAssetPrivate];
    }

    else if (kind == 3)
    {
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self dayGroupKeyAssetPrivate];
    }
  }

  else if (kind)
  {
    if (kind == 1)
    {
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self monthKeyAssetPrivate];
    }
  }

  else
  {
    yearKeyAssetPrivate = [(PLPhotosHighlight *)self keyAssetPrivate];
  }

  return yearKeyAssetPrivate;
}

- (NSArray)momentsSortedByTime
{
  moments = [(PLPhotosHighlight *)self moments];
  v3 = +[PLMoment sortByTimeSortDescriptors];
  v4 = [moments sortedArrayUsingDescriptors:v3];

  return v4;
}

- (void)delete
{
  managedObjectContext = [(PLPhotosHighlight *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)removeAssetData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:1396 description:{@"Incorrect class given in %s", "-[PLPhotosHighlight removeAssetData:]"}];
  }

  [(PLPhotosHighlight *)self willChangeValueForKey:@"assets"];
  primitiveAssets = [(PLPhotosHighlight *)self primitiveAssets];
  [primitiveAssets removeObject:dataCopy];

  [(PLPhotosHighlight *)self didChangeValueForKey:@"assets"];
}

- (void)bumpHighlightVersion
{
  if (!-[PLPhotosHighlight hasChanges](self, "hasChanges") || (-[PLPhotosHighlight changedValues](self, "changedValues"), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKeyedSubscript:@"highlightVersion"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    highlightVersion = [(PLPhotosHighlight *)self highlightVersion];
    if (highlightVersion == 0x7FFF)
    {
      v6 = 0;
    }

    else
    {
      v6 = highlightVersion + 1;
    }

    [(PLPhotosHighlight *)self setHighlightVersion:v6];
  }
}

- (id)_extendedAssetsForSharingConsideration:(int64_t)consideration
{
  if (consideration == 2)
  {
    extendedAssets = [(PLPhotosHighlight *)self extendedAssets];
  }

  else if (consideration == 1)
  {
    extendedAssets = [(PLPhotosHighlight *)self extendedAssetsShared];
  }

  else
  {
    if (consideration)
    {
      [MEMORY[0x1E695DFD8] set];
    }

    else
    {
      [(PLPhotosHighlight *)self extendedAssetsPrivate];
    }
    extendedAssets = ;
  }

  return extendedAssets;
}

- (id)_keyAssetForSharingConsideration:(int64_t)consideration
{
  if (consideration == 2)
  {
    mixedSharingCompositionKeyAssetRelationship = [(PLPhotosHighlight *)self mixedSharingCompositionKeyAssetRelationship];
    if (mixedSharingCompositionKeyAssetRelationship < 2)
    {
LABEL_6:
      keyAssetForKindPrivate = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
      goto LABEL_9;
    }

    if (mixedSharingCompositionKeyAssetRelationship != 2)
    {
      goto LABEL_4;
    }
  }

  else if (consideration != 1)
  {
    if (consideration)
    {
LABEL_4:
      keyAssetForKindPrivate = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  keyAssetForKindPrivate = [(PLPhotosHighlight *)self keyAssetForKindShared];
LABEL_9:

  return keyAssetForKindPrivate;
}

- (void)_recalculateCollageAssetsForSharingConsideration:(int64_t)consideration
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6 = [(PLPhotosHighlight *)self _extendedAssetsForSharingConsideration:consideration];
  if ([v6 count] >= 4)
  {
    v7 = [(PLPhotosHighlight *)self _keyAssetForSharingConsideration:consideration];
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
        selfCopy = self;
        v16 = 0;
        v17 = v15 - 1;
        v18 = vcvtmd_u64_f64(v13 / (v15 - 1));
        do
        {
          v19 = [v12 objectAtIndexedSubscript:{v16, selfCopy}];
          [v5 addObject:v19];

          v16 += v18;
          --v17;
        }

        while (v17);
        v20 = [v12 objectAtIndexedSubscript:v14 - 1];
        [v5 addObject:v20];

        self = selfCopy;
      }
    }
  }

  if (consideration <= 2)
  {
    [(PLManagedObject *)self pl_safeSetValue:v5 forKey:off_1E75659F0[consideration] valueDidChangeHandler:0];
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
  changedValues = [(PLPhotosHighlight *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"collageAssetsPrivate"];
  if (v4 || ([changedValues objectForKeyedSubscript:@"collageAssetsShared"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = [changedValues objectForKeyedSubscript:@"collageAssetsMixed"];

    if (v8 || ([(PLPhotosHighlight *)self isDeleted]& 1) != 0)
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = [changedValues objectForKey:@"extendedAssets"];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v9 = [changedValues objectForKey:@"keyAssetPrivate"];
      if (v9)
      {
        v6 = 1;
      }

      else
      {
        v10 = [changedValues objectForKey:@"keyAssetShared"];
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
  managedObjectContext = [(PLPhotosHighlight *)self managedObjectContext];
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
  managedObjectContext = [(PLPhotosHighlight *)self managedObjectContext];
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
    [PLDelayedSearchIndexUpdates recordHighlightIfNeeded:self];
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLPhotosHighlight;
  [(PLPhotosHighlight *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLPhotosHighlight *)self setUuid:uUIDString];
}

- (void)setParentPhotosHighlight:(id)highlight
{
  v11 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  if ([highlightCopy isEqual:self])
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v10 = highlightCopy;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "Attempt to set parentPhotosHighlight to self for highlight: %{public}@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLPhotosHighlight_setParentPhotosHighlight___block_invoke;
  v7[3] = &unk_1E75732D0;
  v8 = highlightCopy;
  v6 = highlightCopy;
  [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"parentPhotosHighlight" valueDidChangeHandler:v7];
}

- (int)_cachedSharedAssetContainerValueWithRecalcIfNeededForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  if (*(&self->super._willSaveCallCount + 2) == 1)
  {
    [(PLPhotosHighlight *)self recalculateSharedAssetContainerCachedValues];
  }

  [(PLPhotosHighlight *)self willAccessValueForKey:keyCopy];
  v6 = [(PLPhotosHighlight *)self primitiveValueForKey:keyCopy];
  intValue = [v6 intValue];

  [(PLPhotosHighlight *)self didAccessValueForKey:keyCopy];
  return intValue;
}

- (int)_cachedAssetCountForCountKey:(id)key collectionKey:(id)collectionKey isShared:(BOOL)shared
{
  sharedCopy = shared;
  v31 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  collectionKeyCopy = collectionKey;
  if (([(PLPhotosHighlight *)self hasFaultForRelationshipNamed:collectionKeyCopy]& 1) != 0)
  {
    if (*(&self->super._willSaveCallCount + 2) == 1)
    {
      [(PLPhotosHighlight *)self recalculateSharedAssetContainerCachedValues];
    }

    [(PLPhotosHighlight *)self willAccessValueForKey:keyCopy];
    v10 = [(PLPhotosHighlight *)self primitiveValueForKey:keyCopy];
    LODWORD(v11) = [v10 intValue];

    [(PLPhotosHighlight *)self didAccessValueForKey:keyCopy];
  }

  else
  {
    if (sharedCopy)
    {
      v12 = [(PLPhotosHighlight *)self valueForKey:collectionKeyCopy];
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
      v12 = [(PLPhotosHighlight *)self objectIDsForRelationshipNamed:collectionKeyCopy];
      v11 = [v12 count];
    }

    if (PLIsAssetsd())
    {
      objectID = [(PLPhotosHighlight *)self objectID];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PLPhotosHighlight__cachedAssetCountForCountKey_collectionKey_isShared___block_invoke;
      v21[3] = &unk_1E75658B0;
      v22 = objectID;
      v25 = v11;
      v23 = keyCopy;
      selfCopy = self;
      v19 = objectID;
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

- (void)reportSharedAssetContainerIncrementalChange:(id)change forAllAssetsCountKey:(id)key
{
  v80 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  keyCopy = key;
  highlightContainerChanges = [changeCopy highlightContainerChanges];
  v10 = [highlightContainerChanges count];

  if (v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:650 description:@"unexpected change type."];
  }

  if ((*(&self->super._willSaveCallCount + 1) & 1) == 0)
  {
    if ([(PLPhotosHighlight *)self isInserted])
    {
      v11 = PLMomentsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        objectID = [(PLPhotosHighlight *)self objectID];
        *buf = 138412290;
        v77 = objectID;
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
      v14 = [changeCopy debugDescription];
      objectID2 = [(PLPhotosHighlight *)self objectID];
      *buf = 138412546;
      v77 = v14;
      v78 = 2112;
      v79 = objectID2;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Processing incremental change: %@ for highlight: %@...", buf, 0x16u);
    }

    v16 = [keyCopy stringByAppendingString:@"Shared"];
    if ([changeCopy mediaType])
    {
      v17 = @"videoAssetsSuggestedByPhotosCount";
    }

    else
    {
      v17 = @"photoAssetsSuggestedByPhotosCount";
    }

    v18 = [(PLPhotosHighlight *)self primitiveValueForKey:keyCopy];
    intValue = [v18 intValue];

    v20 = [(PLPhotosHighlight *)self primitiveValueForKey:v16];
    intValue2 = [v20 intValue];

    v49 = v17;
    v22 = [(PLPhotosHighlight *)self primitiveValueForKey:v17];
    intValue3 = [v22 intValue];

    parentPhotosHighlight = [(PLPhotosHighlight *)self parentPhotosHighlight];
    parentDayGroupPhotosHighlight = [(PLPhotosHighlight *)self parentDayGroupPhotosHighlight];
    v24 = [keyCopy isEqual:@"assetsCount"];
    collectionChangeType = [changeCopy collectionChangeType];
    if ((collectionChangeType - 1) < 2)
    {
      if ([changeCopy collectionChangeType] == 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      v27 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + intValue)];
      [(PLManagedObject *)self pl_safeSetValue:v27 forKey:keyCopy valueDidChangeHandler:0];

      if ([changeCopy sharingChange] == 1)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + intValue2)];
        [(PLManagedObject *)self pl_safeSetValue:v28 forKey:v16 valueDidChangeHandler:0];
      }

      v29 = parentPhotosHighlight;
      if (![keyCopy isEqual:@"assetsCount"] || objc_msgSend(changeCopy, "suggestionStateChange") != 1)
      {
        goto LABEL_40;
      }

      v30 = v26 + intValue3;
      v31 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + intValue3)];
      v55 = MEMORY[0x1E69E9820];
      v56 = 3221225472;
      v57 = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_3;
      v58 = &unk_1E7565860;
      v32 = &v59;
      v33 = parentPhotosHighlight;
      v61 = v30;
      v34 = &v60;
      v59 = v33;
      v60 = v49;
      goto LABEL_39;
    }

    v29 = parentPhotosHighlight;
    if (collectionChangeType)
    {
      goto LABEL_40;
    }

    sharingChange = [changeCopy sharingChange];
    if (sharingChange == 2)
    {
      v36 = MEMORY[0x1E696AD98];
      if (intValue2 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = intValue2;
      }

      v37 = (v38 - 1);
    }

    else
    {
      if (sharingChange != 1)
      {
        goto LABEL_32;
      }

      v36 = MEMORY[0x1E696AD98];
      v37 = (intValue2 + 1);
    }

    v39 = [v36 numberWithInt:v37];
    [(PLManagedObject *)self pl_safeSetValue:v39 forKey:v16 valueDidChangeHandler:0];

LABEL_32:
    if (!v24)
    {
      goto LABEL_40;
    }

    suggestionStateChange = [changeCopy suggestionStateChange];
    if (suggestionStateChange == 2)
    {
      v42 = intValue3;
      if (intValue3 <= 1)
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
      v44 = parentPhotosHighlight;
      v68 = v43;
      v34 = &v67;
      v66 = v44;
      v67 = v49;
    }

    else
    {
      if (suggestionStateChange != 1)
      {
        goto LABEL_40;
      }

      v31 = [MEMORY[0x1E696AD98] numberWithInt:(intValue3 + 1)];
      v69 = MEMORY[0x1E69E9820];
      v70 = 3221225472;
      v71 = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke;
      v72 = &unk_1E7565860;
      v32 = &v73;
      v41 = parentPhotosHighlight;
      v75 = intValue3 + 1;
      v34 = &v74;
      v73 = v41;
      v74 = v49;
    }

LABEL_39:
    [PLManagedObject pl_safeSetValue:"pl_safeSetValue:forKey:valueDidChangeHandler:" forKey:v31 valueDidChangeHandler:?];

LABEL_40:
    if (([keyCopy isEqualToString:@"assetsCount"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"dayGroupAssetsCount"))
    {
      v45 = [objc_opt_class() calculateSharingCompositionForPhotosHighlight:self];
      v46 = [MEMORY[0x1E696AD98] numberWithShort:v45];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __86__PLPhotosHighlight_reportSharedAssetContainerIncrementalChange_forAllAssetsCountKey___block_invoke_4;
      v51[3] = &unk_1E7565888;
      v52 = v29;
      v54 = v45;
      v53 = parentDayGroupPhotosHighlight;
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
  selfCopy = self;
  v143 = *MEMORY[0x1E69E9840];
  *(&self->super._willSaveCallCount + 2) = 0;
  parentPhotosHighlight = [(PLPhotosHighlight *)self parentPhotosHighlight];
  parentDayGroupPhotosHighlight = [(PLPhotosHighlight *)selfCopy parentDayGroupPhotosHighlight];
  v5 = MEMORY[0x1E696AD98];
  v6 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"assets"];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v7 forKey:@"assetsCount" valueDidChangeHandler:0];

  v8 = MEMORY[0x1E696AD98];
  v9 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"dayGroupAssets"];
  v10 = [v8 numberWithInt:{objc_msgSend(v9, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v10 forKey:@"dayGroupAssetsCount" valueDidChangeHandler:0];

  v11 = MEMORY[0x1E696AD98];
  v12 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"dayGroupExtendedAssets"];
  v13 = [v11 numberWithInt:{objc_msgSend(v12, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v13 forKey:@"dayGroupExtendedAssetsCount" valueDidChangeHandler:0];

  v14 = MEMORY[0x1E696AD98];
  v15 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"dayGroupSummaryAssets"];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v16 forKey:@"dayGroupSummaryAssetsCount" valueDidChangeHandler:0];

  v17 = MEMORY[0x1E696AD98];
  v18 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"extendedAssets"];
  v19 = [v17 numberWithInt:{objc_msgSend(v18, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v19 forKey:@"extendedCount" valueDidChangeHandler:0];

  v20 = MEMORY[0x1E696AD98];
  v21 = [(PLPhotosHighlight *)selfCopy objectIDsForRelationshipNamed:@"summaryAssets"];
  v22 = [v20 numberWithInt:{objc_msgSend(v21, "count")}];
  [(PLManagedObject *)selfCopy pl_safeSetValue:v22 forKey:@"summaryCount" valueDidChangeHandler:0];

  if ([(PLPhotosHighlight *)selfCopy kind])
  {
    if ([(PLPhotosHighlight *)selfCopy kind]== 1)
    {
      v89 = parentDayGroupPhotosHighlight;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      childPhotosHighlights = [(PLPhotosHighlight *)selfCopy childPhotosHighlights];
      v24 = [childPhotosHighlights countByEnumeratingWithState:&v106 objects:v139 count:16];
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
              objc_enumerationMutation(childPhotosHighlights);
            }

            v30 = *(*(&v106 + 1) + 8 * i);
            if (![v30 kind])
            {
              v27 = [v30 photoAssetsSuggestedByPhotosCount] + v27;
              v26 = [v30 videoAssetsSuggestedByPhotosCount] + v26;
            }
          }

          v25 = [childPhotosHighlights countByEnumeratingWithState:&v106 objects:v139 count:16];
        }

        while (v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      dayGroupSummaryAssets = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [(PLManagedObject *)selfCopy pl_safeSetValue:dayGroupSummaryAssets forKey:@"photoAssetsSuggestedByPhotosCount" valueDidChangeHandler:0];
      v66 = @"videoAssetsSuggestedByPhotosCount";
      goto LABEL_86;
    }

    if ([(PLPhotosHighlight *)selfCopy kind]== 3)
    {
      v89 = parentDayGroupPhotosHighlight;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      dayGroupAssets = [(PLPhotosHighlight *)selfCopy dayGroupAssets];
      v45 = [dayGroupAssets countByEnumeratingWithState:&v102 objects:v138 count:16];
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
              objc_enumerationMutation(dayGroupAssets);
            }

            v47 = v47 + [*(*(&v102 + 1) + 8 * j) hasLibraryScope];
          }

          v46 = [dayGroupAssets countByEnumeratingWithState:&v102 objects:v138 count:16];
        }

        while (v46);
      }

      else
      {
        v47 = 0;
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInt:v47];
      [(PLManagedObject *)selfCopy pl_safeSetValue:v68 forKey:@"dayGroupAssetsCountShared" valueDidChangeHandler:0];

      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      v98 = 0u;
      dayGroupExtendedAssets = [(PLPhotosHighlight *)selfCopy dayGroupExtendedAssets];
      v70 = [dayGroupExtendedAssets countByEnumeratingWithState:&v98 objects:v137 count:16];
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
              objc_enumerationMutation(dayGroupExtendedAssets);
            }

            v72 = v72 + [*(*(&v98 + 1) + 8 * k) hasLibraryScope];
          }

          v71 = [dayGroupExtendedAssets countByEnumeratingWithState:&v98 objects:v137 count:16];
        }

        while (v71);
      }

      else
      {
        v72 = 0;
      }

      v75 = [MEMORY[0x1E696AD98] numberWithInt:v72];
      [(PLManagedObject *)selfCopy pl_safeSetValue:v75 forKey:@"dayGroupExtendedAssetsCountShared" valueDidChangeHandler:0];

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      dayGroupSummaryAssets = [(PLPhotosHighlight *)selfCopy dayGroupSummaryAssets];
      v76 = [dayGroupSummaryAssets countByEnumeratingWithState:&v94 objects:v136 count:16];
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
              objc_enumerationMutation(dayGroupSummaryAssets);
            }

            v26 = v26 + [*(*(&v94 + 1) + 8 * m) hasLibraryScope];
          }

          v77 = [dayGroupSummaryAssets countByEnumeratingWithState:&v94 objects:v136 count:16];
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

  v88 = selfCopy;
  v89 = parentDayGroupPhotosHighlight;
  v87 = parentPhotosHighlight;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  assets = [(PLPhotosHighlight *)selfCopy assets];
  v32 = [assets countByEnumeratingWithState:&v132 objects:v142 count:16];
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
        objc_enumerationMutation(assets);
      }

      v39 = *(*(&v132 + 1) + 8 * n);
      hasLibraryScope = [v39 hasLibraryScope];
      libraryScopeShareState = [v39 libraryScopeShareState];
      if (libraryScopeShareState > 65537)
      {
        if (libraryScopeShareState == 65552 || libraryScopeShareState == 65538)
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

      else if (libraryScopeShareState == 2 || libraryScopeShareState == 16)
      {
        goto LABEL_29;
      }

      v36 = (v36 + hasLibraryScope);
    }

    v33 = [assets countByEnumeratingWithState:&v132 objects:v142 count:16];
  }

  while (v33);
LABEL_47:

  v50 = [MEMORY[0x1E696AD98] numberWithInt:v36];
  selfCopy = v88;
  [(PLManagedObject *)v88 pl_safeSetValue:v50 forKey:@"assetsCountShared" valueDidChangeHandler:0];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:v35];
  v125 = MEMORY[0x1E69E9820];
  v126 = 3221225472;
  v127 = __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke;
  v128 = &unk_1E7565860;
  parentPhotosHighlight = v87;
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
  extendedAssets = [(PLPhotosHighlight *)v88 extendedAssets];
  v55 = [extendedAssets countByEnumeratingWithState:&v114 objects:v141 count:16];
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
          objc_enumerationMutation(extendedAssets);
        }

        v57 = v57 + [*(*(&v114 + 1) + 8 * ii) hasLibraryScope];
      }

      v56 = [extendedAssets countByEnumeratingWithState:&v114 objects:v141 count:16];
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
  dayGroupSummaryAssets = [(PLPhotosHighlight *)v88 summaryAssets];
  v63 = [dayGroupSummaryAssets countByEnumeratingWithState:&v110 objects:v140 count:16];
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
          objc_enumerationMutation(dayGroupSummaryAssets);
        }

        v26 = v26 + [*(*(&v110 + 1) + 8 * jj) hasLibraryScope];
      }

      v64 = [dayGroupSummaryAssets countByEnumeratingWithState:&v110 objects:v140 count:16];
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
  [(PLManagedObject *)selfCopy pl_safeSetValue:v80 forKey:v66 valueDidChangeHandler:0];

  parentDayGroupPhotosHighlight = v89;
LABEL_87:
  v81 = [objc_opt_class() calculateSharingCompositionForPhotosHighlight:selfCopy];
  v82 = [MEMORY[0x1E696AD98] numberWithShort:v81];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __64__PLPhotosHighlight_recalculateSharedAssetContainerCachedValues__block_invoke_3;
  v90[3] = &unk_1E7565888;
  v93 = v81;
  v91 = parentPhotosHighlight;
  v92 = parentDayGroupPhotosHighlight;
  v83 = parentDayGroupPhotosHighlight;
  v84 = parentPhotosHighlight;
  v85 = v83;
  v86 = v84;
  [(PLManagedObject *)selfCopy pl_safeSetValue:v82 forKey:@"sharingComposition" valueDidChangeHandler:v90];
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

- (void)_notifyChildPhotoOrVideoAssetsSuggestedByPhotosCountDidChangeFrom:(int)from to:(int)to forKeyPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"suggestedAssetsCountKey"}];
  }

  if ([(PLPhotosHighlight *)self kind]!= 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:495 description:@"only supported for month"];
  }

  v9 = to - from;
  v10 = [(PLPhotosHighlight *)self valueForKey:pathCopy];
  intValue = [v10 intValue];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:(v9 + intValue)];
  [(PLManagedObject *)self pl_safeSetValue:v12 forKey:pathCopy valueDidChangeHandler:0];
}

- (void)_notifyChildSharingCompositionDidChangeFrom:(signed __int16)from to:(signed __int16)to
{
  toCopy = to;
  sharingComposition = [(PLPhotosHighlight *)self sharingComposition];
  if ([(PLPhotosHighlight *)self sharingComposition]!= toCopy)
  {
    if (toCopy == 2)
    {
      [(PLManagedObject *)self pl_safeSetValue:&unk_1F0FBACF0 forKey:@"sharingComposition" valueDidChangeHandler:0];
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(objc_opt_class(), "calculateSharingCompositionForPhotosHighlight:", self)}];
      [(PLManagedObject *)self pl_safeSetValue:v7 forKey:@"sharingComposition" valueDidChangeHandler:0];
    }
  }

  if ([(PLPhotosHighlight *)self kind]!= 2 && [(PLPhotosHighlight *)self sharingComposition]!= sharingComposition)
  {
    parentPhotosHighlight = [(PLPhotosHighlight *)self parentPhotosHighlight];
    [parentPhotosHighlight _notifyChildSharingCompositionDidChangeFrom:sharingComposition to:{-[PLPhotosHighlight sharingComposition](self, "sharingComposition")}];
  }
}

- (NSString)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:1];
  uuid = [(PLPhotosHighlight *)self uuid];
  [(PLDescriptionBuilder *)v3 appendName:@"uuid" object:uuid];

  title = [(PLPhotosHighlight *)self title];
  if (title)
  {
    title2 = [(PLPhotosHighlight *)self title];
    if ([title2 length])
    {
      title3 = [(PLPhotosHighlight *)self title];
    }

    else
    {
      title3 = @"No title";
    }
  }

  else
  {
    title3 = @"No title";
  }

  subtitle = [(PLPhotosHighlight *)self subtitle];
  if (subtitle)
  {
    subtitle2 = [(PLPhotosHighlight *)self subtitle];
    if ([subtitle2 length])
    {
      subtitle3 = [(PLPhotosHighlight *)self subtitle];
    }

    else
    {
      subtitle3 = @"No subtitle";
    }
  }

  else
  {
    subtitle3 = @"No subtitle";
  }

  verboseSmartDescription = [(PLPhotosHighlight *)self verboseSmartDescription];
  if (verboseSmartDescription)
  {
    verboseSmartDescription2 = [(PLPhotosHighlight *)self verboseSmartDescription];
    if ([verboseSmartDescription2 length])
    {
      verboseSmartDescription3 = [(PLPhotosHighlight *)self verboseSmartDescription];
    }

    else
    {
      verboseSmartDescription3 = @"No verboseSmartDescription";
    }
  }

  else
  {
    verboseSmartDescription3 = @"No verboseSmartDescription";
  }

  [(PLDescriptionBuilder *)v3 appendName:@"title" object:title3];
  [(PLDescriptionBuilder *)v3 appendName:@"subtitle" object:subtitle3];
  [(PLDescriptionBuilder *)v3 appendName:@"verboseSmartDescription" object:verboseSmartDescription3];
  v11 = [objc_opt_class() stringFromHighlightKind:{-[PLPhotosHighlight kind](self, "kind")}];
  [(PLDescriptionBuilder *)v3 appendName:@"kind" object:v11];

  startDate = [(PLPhotosHighlight *)self startDate];
  endDate = [(PLPhotosHighlight *)self endDate];
  [(PLDescriptionBuilder *)v3 appendName:@"start date (gmt)" object:startDate];
  [(PLDescriptionBuilder *)v3 appendName:@"end date (gmt)" object:endDate];
  localStartDate = [(PLPhotosHighlight *)self localStartDate];
  localEndDate = [(PLPhotosHighlight *)self localEndDate];
  [(PLDescriptionBuilder *)v3 appendName:@"start date (local)" object:localStartDate];
  [(PLDescriptionBuilder *)v3 appendName:@"end date (local)" object:localEndDate];
  type = [(PLPhotosHighlight *)self type];
  v17 = @"unknown";
  v18 = @"unknown";
  if (type <= 7)
  {
    v18 = off_1E7565928[type];
  }

  v19 = v18;
  [(PLDescriptionBuilder *)v3 appendName:@"type" object:v19];

  category = [(PLPhotosHighlight *)self category];
  v21 = @"PLPhotosHighlightCategoryRecent";
  if (category != 1)
  {
    v21 = @"unknown";
  }

  if (category)
  {
    v22 = v21;
  }

  else
  {
    v22 = @"PLPhotosHighlightCategoryDefault";
  }

  [(PLDescriptionBuilder *)v3 appendName:@"category" object:v22];
  sharingComposition = [(PLPhotosHighlight *)self sharingComposition];
  if (sharingComposition <= 2)
  {
    v17 = off_1E7565968[sharingComposition];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"sharingComposition" object:v17];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCount](self, "assetsCount")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count" object:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCountShared](self, "assetsCountShared")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" object:v25];

  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPhotosHighlight assetsCountPrivate](self, "assetsCountPrivate")}];
  [(PLDescriptionBuilder *)v3 appendName:@"assets count (private)" object:v26];

  visibilityState = [(PLPhotosHighlight *)self visibilityState];
  if (visibilityState > 4)
  {
    v28 = @"unknown";
  }

  else
  {
    v28 = off_1E7565980[visibilityState];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility private" object:v28];
  visibilityStateShared = [(PLPhotosHighlight *)self visibilityStateShared];
  if (visibilityStateShared > 4)
  {
    v30 = @"unknown";
  }

  else
  {
    v30 = off_1E7565980[visibilityStateShared];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility shared" object:v30];
  visibilityStateMixed = [(PLPhotosHighlight *)self visibilityStateMixed];
  if (visibilityStateMixed > 4)
  {
    v32 = @"unknown";
  }

  else
  {
    v32 = off_1E7565980[visibilityStateMixed];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"visibility mixed" object:v32];
  enrichmentState = [(PLPhotosHighlight *)self enrichmentState];
  if (enrichmentState > 4)
  {
    v34 = @"unknown";
  }

  else
  {
    v34 = off_1E75659A8[enrichmentState];
  }

  [(PLDescriptionBuilder *)v3 appendName:@"enrichment state" object:v34];
  kind = [(PLPhotosHighlight *)self kind];
  v36 = kind;
  if (kind > 1)
  {
    if (kind == 2)
    {
      v75 = localEndDate;
      v76 = startDate;
      v78 = localStartDate;
      v37 = endDate;
      v39 = subtitle3;
      v38 = title3;
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self yearKeyAssetPrivate];
      localID = [yearKeyAssetPrivate localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:localID];

      yearKeyAssetShared = [(PLPhotosHighlight *)self yearKeyAssetShared];
LABEL_63:
      dayGroupKeyAssetShared = yearKeyAssetShared;
      subtitle3 = v39;
      title3 = v38;
      localID2 = [yearKeyAssetShared localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:localID2];

      childPhotosHighlights = [(PLPhotosHighlight *)self childPhotosHighlights];
      v65 = [childPhotosHighlights valueForKey:@"uuid"];
      allObjects = [v65 allObjects];
      v67 = [allObjects componentsJoinedByString:@"\n\t\t\t"];
      [(PLDescriptionBuilder *)v3 appendName:@"child uuids" object:v67];

      startDate = v76;
      localStartDate = v78;
      endDate = v37;
      localEndDate = v75;
      if (v36 == 2)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (kind == 3)
    {
      dayGroupKeyAssetPrivate = [(PLPhotosHighlight *)self dayGroupKeyAssetPrivate];
      localID3 = [dayGroupKeyAssetPrivate localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:localID3];

      dayGroupKeyAssetShared = [(PLPhotosHighlight *)self dayGroupKeyAssetShared];
      localID4 = [dayGroupKeyAssetShared localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:localID4];

      dayGroupAssets = [(PLPhotosHighlight *)self dayGroupAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"assets count", [dayGroupAssets count]);

      if ([(PLPhotosHighlight *)self dayGroupAssetsCountShared]> 0)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupAssetsCountShared]];
      }

      v77 = dayGroupKeyAssetPrivate;
      v79 = localStartDate;
      dayGroupSummaryAssets = [(PLPhotosHighlight *)self dayGroupSummaryAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"summary count", [dayGroupSummaryAssets count]);

      if ([(PLPhotosHighlight *)self dayGroupSummaryAssetsCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"summary count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupSummaryAssetsCountShared]];
      }

      v49 = endDate;
      v50 = startDate;
      dayGroupExtendedAssets = [(PLPhotosHighlight *)self dayGroupExtendedAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"extended count", [dayGroupExtendedAssets count]);

      if ([(PLPhotosHighlight *)self dayGroupExtendedAssetsCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"extended count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self dayGroupExtendedAssetsCountShared]];
      }

      childDayGroupPhotosHighlights = [(PLPhotosHighlight *)self childDayGroupPhotosHighlights];
      v53 = [childDayGroupPhotosHighlights valueForKey:@"uuid"];
      allObjects2 = [v53 allObjects];
      v55 = [allObjects2 componentsJoinedByString:@"\n\t\t\t"];
      [(PLDescriptionBuilder *)v3 appendName:@"child day uuids" object:v55];

      startDate = v50;
      endDate = v49;
      yearKeyAssetPrivate = v77;
      localStartDate = v79;
      goto LABEL_61;
    }
  }

  else
  {
    if (!kind)
    {
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self keyAssetPrivate];
      localID5 = [yearKeyAssetPrivate localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:localID5];

      dayGroupKeyAssetShared = [(PLPhotosHighlight *)self keyAssetShared];
      localID6 = [dayGroupKeyAssetShared localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:localID6];

      assets = [(PLPhotosHighlight *)self assets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"assets count", [assets count]);

      if ([(PLPhotosHighlight *)self assetsCountShared]> 0)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"assets count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self assetsCountShared]];
      }

      summaryAssets = [(PLPhotosHighlight *)self summaryAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"summary count", [summaryAssets count]);

      if ([(PLPhotosHighlight *)self summaryCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"summary count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self summaryCountShared]];
      }

      extendedAssets = [(PLPhotosHighlight *)self extendedAssets];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"extended count", [extendedAssets count]);

      if ([(PLPhotosHighlight *)self extendedCountShared]>= 1)
      {
        [(PLDescriptionBuilder *)v3 appendName:@"extended count (shared)" unsignedIntegerValue:[(PLPhotosHighlight *)self extendedCountShared]];
      }

      childDayGroupPhotosHighlights = [(PLPhotosHighlight *)self moments];
      -[PLDescriptionBuilder appendName:unsignedIntegerValue:](v3, "appendName:unsignedIntegerValue:", @"moments count", [childDayGroupPhotosHighlights count]);
      goto LABEL_61;
    }

    if (kind == 1)
    {
      v75 = localEndDate;
      v76 = startDate;
      v78 = localStartDate;
      v37 = endDate;
      v39 = subtitle3;
      v38 = title3;
      yearKeyAssetPrivate = [(PLPhotosHighlight *)self monthKeyAssetPrivate];
      localID7 = [yearKeyAssetPrivate localID];
      [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:localID7];

      yearKeyAssetShared = [(PLPhotosHighlight *)self monthKeyAssetShared];
      goto LABEL_63;
    }
  }

  localID8 = [0 localID];
  [(PLDescriptionBuilder *)v3 appendName:@"key asset private id" object:localID8];

  childDayGroupPhotosHighlights = [0 localID];
  [(PLDescriptionBuilder *)v3 appendName:@"key asset shared id" object:childDayGroupPhotosHighlights];
  dayGroupKeyAssetShared = 0;
  yearKeyAssetPrivate = 0;
LABEL_61:

LABEL_64:
  parentPhotosHighlight = [(PLPhotosHighlight *)self parentPhotosHighlight];
  uuid2 = [parentPhotosHighlight uuid];
  [(PLDescriptionBuilder *)v3 appendName:@"parent uuid" object:uuid2];

LABEL_65:
  [(PLPhotosHighlight *)self promotionScore];
  [(PLDescriptionBuilder *)v3 appendName:@"promotion score" doubleValue:?];
  [(PLDescriptionBuilder *)v3 appendName:@"start time zone offset" integerValue:[(PLPhotosHighlight *)self startTimeZoneOffset]];
  [(PLDescriptionBuilder *)v3 appendName:@"end time zone offset" integerValue:[(PLPhotosHighlight *)self endTimeZoneOffset]];
  v70 = PLDescriptionForMemoryMood([(PLPhotosHighlight *)self mood]);
  [(PLDescriptionBuilder *)v3 appendName:@"mood" object:v70];

  moments = [(PLPhotosHighlight *)self moments];
  v72 = PLDebugDescriptionForAggregateProcessedLocationType(moments);
  [(PLDescriptionBuilder *)v3 appendName:@"processed location type" object:v72];

  [(PLDescriptionBuilder *)v3 appendName:@"highlight version" integerValue:[(PLPhotosHighlight *)self highlightVersion]];
  [(PLDescriptionBuilder *)v3 appendName:@"enrichment version" integerValue:[(PLPhotosHighlight *)self enrichmentVersion]];
  build = [(PLDescriptionBuilder *)v3 build];

  return build;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLPhotosHighlight;
  v4 = [(PLPhotosHighlight *)&v12 description];
  uuid = [(PLPhotosHighlight *)self uuid];
  title = [(PLPhotosHighlight *)self title];
  v7 = [objc_opt_class() stringFromHighlightKind:{-[PLPhotosHighlight kind](self, "kind")}];
  startDate = [(PLPhotosHighlight *)self startDate];
  endDate = [(PLPhotosHighlight *)self endDate];
  v10 = [v3 stringWithFormat:@"%@ (%@) - %@ (%@) (%@ - %@)", v4, uuid, title, v7, startDate, endDate];

  return v10;
}

+ (id)_libraryScopePredicateForSharingConsideration:(int64_t)consideration
{
  if (_libraryScopePredicateForSharingConsideration__sOnceToken != -1)
  {
    dispatch_once(&_libraryScopePredicateForSharingConsideration__sOnceToken, &__block_literal_global_4646);
  }

  v4 = &_libraryScopePredicateForSharingConsideration__sPredicatePrivate;
  if (consideration)
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

+ (id)batchFetchPhotosHighlightUUIDsByMomentUUIDsWithMomentUUIDs:(id)ds library:(id)library error:(id *)error
{
  v48[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:1359 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLMoment entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];
  [v14 setPredicate:dsCopy];
  [v14 setResultType:2];
  v48[0] = @"uuid";
  v48[1] = @"highlight.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  [v14 setPropertiesToFetch:v16];

  if (!error)
  {
    v42 = 0;
    error = &v42;
  }

  v17 = [managedObjectContext executeFetchRequest:v14 error:error];
  if (v17)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v33 = dsCopy;
      v34 = v14;
      v35 = managedObjectContext;
      v36 = libraryCopy;
      v37 = dsCopy;
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
            [dictionary setObject:v25 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v21);
      libraryCopy = v36;
      dsCopy = v37;
      v14 = v34;
      managedObjectContext = v35;
      dsCopy = v33;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = *error;
      *buf = 138412290;
      v44 = v30;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error fetching highlight UUID for moment UUID: %@", buf, 0xCu);
    }

    dictionary = 0;
  }

  return dictionary;
}

+ (id)batchFetchTripHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)ds library:(id)library error:(id *)error
{
  v56[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:1319 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K IN %@", @"dayGroupHighlightBeingAssets", @"type", &unk_1F0FBF340];
  v17 = MEMORY[0x1E696AB28];
  v43 = v16;
  v44 = dsCopy;
  v56[0] = dsCopy;
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

  if (!error)
  {
    v49 = 0;
    error = &v49;
  }

  v22 = [managedObjectContext executeFetchRequest:v14 error:error];
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
      v39 = managedObjectContext;
      v40 = libraryCopy;
      v41 = dsCopy;
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
      libraryCopy = v40;
      dsCopy = v41;
      v20 = v38;
      managedObjectContext = v39;
      v14 = v42;
    }
  }

  else
  {
    v24 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v35 = *error;
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Trip Highlight fetch using asset UUIDs failed with error: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

+ (id)batchFetchPhotosHighlightUUIDsByAssetUUIDsWithAssetUUIDs:(id)ds library:(id)library error:(id *)error
{
  v46[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlight.m" lineNumber:1282 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];
  [v14 setPredicate:dsCopy];
  [v14 setResultType:2];
  v46[0] = @"uuid";
  v46[1] = @"highlightBeingAssets.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v14 setPropertiesToFetch:v16];

  if (!error)
  {
    v42 = 0;
    error = &v42;
  }

  v17 = [managedObjectContext executeFetchRequest:v14 error:error];
  if (v17)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v33 = dsCopy;
      v34 = v14;
      v35 = managedObjectContext;
      v36 = libraryCopy;
      v37 = dsCopy;
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
            [dictionary setObject:v25 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v21);
      libraryCopy = v36;
      dsCopy = v37;
      v14 = v34;
      managedObjectContext = v35;
      dsCopy = v33;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = *error;
      *buf = 138412290;
      v44 = v30;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Highlight fetch using asset UUIDs failed with error: %@", buf, 0xCu);
    }

    dictionary = 0;
  }

  return dictionary;
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
  predicateForInvalidDayHighlights = [self predicateForInvalidDayHighlights];
  predicateForInvalidDayGroupHighlights = [self predicateForInvalidDayGroupHighlights];
  v10[1] = predicateForInvalidDayGroupHighlights;
  predicateForInvalidMonthOrYearHighlights = [self predicateForInvalidMonthOrYearHighlights];
  v10[2] = predicateForInvalidMonthOrYearHighlights;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v8 = [v3 orPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForEmptyHighlightsOfKind:(unsigned __int16)kind
{
  kindCopy = kind;
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [self _predicateForHighlightsOfKind:?];
  if (kindCopy > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:off_1E7565A08[kindCopy]];
  }

  v6 = MEMORY[0x1E696AB28];
  v10[0] = v4;
  v10[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForAllAssetsInPhotosHighlight:(id)highlight
{
  v18 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  kind = [highlightCopy kind];
  v5 = kind;
  if ((kind - 1) < 2)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uuid = [highlightCopy uuid];
      *buf = 67109378;
      v15 = v5;
      v16 = 2112;
      v17 = uuid;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error: kind %d not supported for fetching all assets - highlight UUID: %@", buf, 0x12u);
    }

    goto LABEL_8;
  }

  if (kind == 3)
  {
    v6 = MEMORY[0x1E696AE18];
    objectID = [highlightCopy objectID];
    v8 = objectID;
    v9 = @"dayGroupHighlightBeingAssets";
    goto LABEL_10;
  }

  if (kind)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_11;
  }

  v6 = MEMORY[0x1E696AE18];
  objectID = [highlightCopy objectID];
  v8 = objectID;
  v9 = @"highlightBeingAssets";
LABEL_10:
  v12 = [v6 predicateWithFormat:@"%K = %@", v9, objectID];

LABEL_11:

  return v12;
}

+ (id)allPhotosHighlightsInManagedObjectContext:(id)context predicate:(id)predicate keyPathsForPrefetching:(id)prefetching error:(id *)error
{
  contextCopy = context;
  predicateCopy = predicate;
  prefetchingCopy = prefetching;
  v13 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v15 = [v13 fetchRequestWithEntityName:entityName];

  [v15 setFetchBatchSize:100];
  if (predicateCopy)
  {
    [v15 setPredicate:predicateCopy];
  }

  if (prefetchingCopy)
  {
    [v15 setRelationshipKeyPathsForPrefetching:prefetchingCopy];
  }

  v16 = [contextCopy executeFetchRequest:v15 error:error];

  return v16;
}

+ (id)insertNewPhotosHighlightInManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  entityName = [self entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, error);

  return v8;
}

+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d title:(id)title
{
  dCopy = d;
  titleCopy = title;
  managedObjectContext = [library managedObjectContext];
  entityName = [self entityName];
  v12 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  if (v12)
  {
    [v12 setUuid:dCopy];
    [v12 setTitle:titleCopy];
  }

  return v12;
}

+ (id)fetchRequest
{
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  entityName = [self entityName];
  v5 = [v3 initWithEntityName:entityName];

  return v5;
}

+ (signed)calculateSharingCompositionForPhotosHighlight:(id)highlight
{
  v23 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  kind = [highlightCopy kind];
  if ((kind - 1) >= 2)
  {
    if (kind != 3 && kind)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      if ([highlightCopy kind] == 3)
      {
        dayGroupAssetsCountShared = [highlightCopy dayGroupAssetsCountShared];
      }

      else
      {
        dayGroupAssetsCountShared = [highlightCopy assetsCountShared];
      }

      v14 = dayGroupAssetsCountShared;
      if ([highlightCopy kind] == 3)
      {
        dayGroupAssetsCountPrivate = [highlightCopy dayGroupAssetsCountPrivate];
      }

      else
      {
        dayGroupAssetsCountPrivate = [highlightCopy assetsCountPrivate];
      }

      if (dayGroupAssetsCountPrivate)
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
  childPhotosHighlights = [highlightCopy childPhotosHighlights];
  v7 = [childPhotosHighlights countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(childPhotosHighlights);
      }

      sharingComposition = [*(*(&v18 + 1) + 8 * i) sharingComposition];
      if (sharingComposition == 2)
      {
        v8 = 1;
      }

      else if (sharingComposition != 1)
      {
        if (!sharingComposition)
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

    v7 = [childPhotosHighlights countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (id)stringFromHighlightKind:(unsigned __int16)kind
{
  if (kind > 3u)
  {
    return @"Unknown kind";
  }

  else
  {
    return off_1E75659D0[kind];
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

  uuid = [(PLPhotosHighlight *)self uuid];
  if (!uuid)
  {
    return 0;
  }

  photoLibrary = uuid;
  startDate = [(PLPhotosHighlight *)self startDate];
  if (startDate)
  {
    v6 = startDate;
    endDate = [(PLPhotosHighlight *)self endDate];

    if (endDate)
    {
      keyAssetForKindPrivate = [(PLPhotosHighlight *)self keyAssetForKindPrivate];
      dateCreated = [keyAssetForKindPrivate dateCreated];
      if (dateCreated)
      {

LABEL_9:
        v13 = objc_opt_class();
        photoLibrary = [(PLManagedObject *)self photoLibrary];
        v14 = [v13 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
        v10 = [v14 evaluateWithObject:self];

        goto LABEL_10;
      }

      keyAssetForKindShared = [(PLPhotosHighlight *)self keyAssetForKindShared];
      dateCreated2 = [keyAssetForKindShared dateCreated];

      if (dateCreated2)
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

+ (id)fetchHighlightsWithUUIDs:(id)ds managedObjectContext:(id)context error:(id *)error
{
  v14[3] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v9 = +[PLPhotosHighlight fetchRequest];
  v14[0] = @"uuid";
  v14[1] = @"title";
  v14[2] = @"keyAssetPrivate";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v9 setPropertiesToFetch:v10];

  [v9 setIncludesPendingChanges:0];
  if ([dsCopy count] >= 0x65)
  {
    [v9 setFetchBatchSize:100];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];
  [v9 setPredicate:dsCopy];

  [v9 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
  v12 = [contextCopy executeFetchRequest:v9 error:error];

  return v12;
}

+ (id)fetchHighlightsWithUUIDs:(id)ds managedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  v8 = +[PLPhotosHighlight fetchRequest];
  propertiesToFetch = [self propertiesToFetch];
  [v8 setPropertiesToFetch:propertiesToFetch];

  [v8 setIncludesPendingChanges:0];
  if ([dsCopy count] >= 0x65)
  {
    [v8 setFetchBatchSize:100];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];
  [v8 setPredicate:dsCopy];

  [v8 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
  v15 = 0;
  v11 = [contextCopy executeFetchRequest:v8 error:&v15];

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