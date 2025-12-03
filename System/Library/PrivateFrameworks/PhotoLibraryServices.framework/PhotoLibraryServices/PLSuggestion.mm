@interface PLSuggestion
+ (id)_representativeAssetIDsInSuggestion:(id)suggestion managedObjectContext:(id)context;
+ (id)_syncablePredicate;
+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d;
+ (id)predicateForAllAssetsInSuggestion:(id)suggestion managedObjectContext:(id)context;
+ (id)predicateForAllMomentsFromRepresentativeAssetsInSuggestion:(id)suggestion managedObjectContext:(id)context;
+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)subset;
+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)subset;
+ (id)suggestionObjectIDsContainingAsset:(id)asset;
+ (id)suggestionWithUUID:(id)d inManagedObjectContext:(id)context;
+ (id)suggestionWithUUID:(id)d inPhotoLibrary:(id)library;
+ (id)suggestionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context;
+ (id)suggestionsToPrefetchInManagedObjectContext:(id)context;
+ (id)suggestionsToUploadInPhotoLibrary:(id)library limit:(int64_t)limit;
+ (id)suggestionsWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (signed)_calculateSharingCompositionForSuggestion:(id)suggestion;
+ (unint64_t)_deleteSuggestionsMatchingPredicate:(id)predicate inManagedObjectContext:(id)context;
+ (unint64_t)deletePendingSuggestionsCreatedBefore:(id)before withTypes:(id)types andRejectedAssetsBySuggestionType:(id)type inManagedObjectContext:(id)context;
+ (unint64_t)deleteSuggestionsWithObjectIDs:(id)ds inManagedObjectContext:(id)context;
+ (void)resetCloudStateInPhotoLibrary:(id)library;
- (BOOL)_sharingCompositionNeedsUpdate;
- (BOOL)isEmpty;
- (BOOL)supportsCloudUpload;
- (BOOL)updateWithCPLSuggestionChange:(id)change inPhotoLibrary:(id)library;
- (id)cplSuggestionChange;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (signed)sharingComposition;
- (void)_recalculateSharingCompositionIfNeeded;
- (void)delete;
- (void)prepareForDeletion;
- (void)removeRepresentativeAsset:(id)asset;
- (void)replaceKeyAsset:(id)asset;
- (void)updateCachedCounts:(id)counts;
- (void)updateStartAndEndDate;
- (void)willSave;
@end

@implementation PLSuggestion

- (signed)sharingComposition
{
  [(PLSuggestion *)self _recalculateSharingCompositionIfNeeded];
  [(PLSuggestion *)self willAccessValueForKey:@"sharingComposition"];
  v3 = [(PLSuggestion *)self primitiveValueForKey:@"sharingComposition"];
  intValue = [v3 intValue];

  [(PLSuggestion *)self didAccessValueForKey:@"sharingComposition"];
  return intValue;
}

- (void)_recalculateSharingCompositionIfNeeded
{
  if ([(PLSuggestion *)self _sharingCompositionNeedsUpdate])
  {
    [(PLSuggestion *)self willAccessValueForKey:@"sharingComposition"];
    v3 = [(PLSuggestion *)self primitiveValueForKey:@"sharingComposition"];
    intValue = [v3 intValue];

    [(PLSuggestion *)self didAccessValueForKey:@"sharingComposition"];
    v5 = [objc_opt_class() _calculateSharingCompositionForSuggestion:self];
    if (v5 != intValue)
    {
      v6 = v5;
      [(PLSuggestion *)self willChangeValueForKey:@"sharingComposition"];
      v7 = [MEMORY[0x1E696AD98] numberWithShort:v6];
      [(PLSuggestion *)self setPrimitiveValue:v7 forKey:@"sharingComposition"];

      [(PLSuggestion *)self didChangeValueForKey:@"sharingComposition"];
    }
  }
}

- (BOOL)_sharingCompositionNeedsUpdate
{
  if (([(PLSuggestion *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  changedValues = [(PLSuggestion *)self changedValues];
  v5 = [changedValues objectForKeyedSubscript:@"keyAssets"];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    changedValues2 = [(PLSuggestion *)self changedValues];
    v7 = [changedValues2 objectForKeyedSubscript:@"representativeSuggestionAssets"];
    v3 = v7 != 0;
  }

  return v3;
}

- (id)cplSuggestionChange
{
  v36 = *MEMORY[0x1E69E9840];
  scopedIdentifier = [(PLSuggestion *)self scopedIdentifier];
  v3 = [MEMORY[0x1E6994C00] newChangeWithScopedIdentifier:? changeType:?];
  [v3 setType:{-[PLSuggestion type](self, "type")}];
  [v3 setSubtype:{-[PLSuggestion subtype](self, "subtype")}];
  title = [(PLSuggestion *)self title];
  [v3 setTitle:title];

  subtitle = [(PLSuggestion *)self subtitle];
  [v3 setSubtitle:subtitle];

  [v3 setState:{-[PLSuggestion state](self, "state")}];
  [v3 setVersion:{-[PLSuggestion version](self, "version")}];
  [v3 setNotificationState:{-[PLSuggestion notificationState](self, "notificationState")}];
  creationDate = [(PLSuggestion *)self creationDate];
  [v3 setCreationDate:creationDate];

  activationDate = [(PLSuggestion *)self activationDate];
  [v3 setActivationDate:activationDate];

  relevantUntilDate = [(PLSuggestion *)self relevantUntilDate];
  [v3 setRelevantUntilDate:relevantUntilDate];

  expungeDate = [(PLSuggestion *)self expungeDate];
  [v3 setExpungeDate:expungeDate];

  actionData = [(PLSuggestion *)self actionData];
  [v3 setActionData:actionData];

  featuresData = [(PLSuggestion *)self featuresData];
  v28 = v3;
  [v3 setFeaturesData:featuresData];

  v12 = objc_alloc_init(MEMORY[0x1E6994C18]);
  representativeSuggestionAssets = [(PLSuggestion *)self representativeSuggestionAssets];
  keyAssets = [(PLSuggestion *)self keyAssets];
  v15 = [MEMORY[0x1E695DFA8] setWithSet:representativeSuggestionAssets];
  [v15 unionSet:keyAssets];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = objc_alloc_init(MEMORY[0x1E6994BF8]);
        [v21 setIsKeyAsset:{objc_msgSend(keyAssets, "containsObject:", v20)}];
        [v21 setIsRepresentative:{objc_msgSend(representativeSuggestionAssets, "containsObject:", v20)}];
        v22 = objc_alloc_init(MEMORY[0x1E6994BF0]);
        cloudAssetGUID = [v20 cloudAssetGUID];
        [v22 setAssetIdentifier:cloudAssetGUID];

        [v22 setAssetFlag:v21];
        master = [v20 master];
        scopedIdentifier2 = [master scopedIdentifier];

        identifier = [scopedIdentifier2 identifier];
        [v22 setMasterIdentifier:identifier];
        [v12 addAsset:v22];
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  [v28 setRecordList:v12];

  return v28;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  scopeIdentifier = [(PLSuggestion *)self scopeIdentifier];
  uuid = [(PLSuggestion *)self uuid];
  v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:uuid];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (BOOL)updateWithCPLSuggestionChange:(id)change inPhotoLibrary:(id)library
{
  v42 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  -[PLSuggestion setType:](self, "setType:", [changeCopy type]);
  -[PLSuggestion setSubtype:](self, "setSubtype:", [changeCopy subtype]);
  title = [changeCopy title];
  [(PLSuggestion *)self setTitle:title];

  subtitle = [changeCopy subtitle];
  [(PLSuggestion *)self setSubtitle:subtitle];

  -[PLSuggestion setState:](self, "setState:", [changeCopy state]);
  -[PLSuggestion setVersion:](self, "setVersion:", [changeCopy version]);
  -[PLSuggestion setNotificationState:](self, "setNotificationState:", [changeCopy notificationState]);
  creationDate = [changeCopy creationDate];
  [(PLSuggestion *)self setCreationDate:creationDate];

  activationDate = [changeCopy activationDate];
  [(PLSuggestion *)self setActivationDate:activationDate];

  relevantUntilDate = [changeCopy relevantUntilDate];
  [(PLSuggestion *)self setRelevantUntilDate:relevantUntilDate];

  expungeDate = [changeCopy expungeDate];
  [(PLSuggestion *)self setExpungeDate:expungeDate];

  actionData = [changeCopy actionData];
  [(PLSuggestion *)self setActionData:actionData];

  featuresData = [changeCopy featuresData];
  selfCopy = self;
  [(PLSuggestion *)self setFeaturesData:featuresData];

  v35 = changeCopy;
  recordList = [changeCopy recordList];
  assets = [recordList assets];
  v17 = [assets count];
  v31 = [assets valueForKey:@"assetIdentifier"];
  v34 = libraryCopy;
  v18 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v36 = [MEMORY[0x1E695DFA8] setWithCapacity:v17];
  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:v17];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = assets;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    v24 = 1;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        assetFlag = [v26 assetFlag];
        assetIdentifier = [v26 assetIdentifier];
        if (assetIdentifier)
        {
          v29 = [v18 objectForKey:assetIdentifier];
          if (v29)
          {
            if ([assetFlag isKeyAsset])
            {
              [v19 addObject:v29];
            }

            if ([assetFlag isRepresentative])
            {
              [v36 addObject:v29];
            }
          }

          else
          {
            v24 = 0;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 1;
  }

  [(PLSuggestion *)selfCopy setKeyAssets:v19];
  [(PLSuggestion *)selfCopy setRepresentativeSuggestionAssets:v36];
  [(PLSuggestion *)selfCopy updateStartAndEndDate];
  [(PLSuggestion *)selfCopy updateCachedCounts:v34];
  [(PLSuggestion *)selfCopy setCloudLocalState:1];

  return v24 & 1;
}

- (BOOL)supportsCloudUpload
{
  _syncablePredicate = [objc_opt_class() _syncablePredicate];
  LOBYTE(self) = [_syncablePredicate evaluateWithObject:self];

  return self;
}

- (BOOL)isEmpty
{
  keyAssets = [(PLSuggestion *)self keyAssets];
  if ([keyAssets count])
  {
    v4 = 0;
  }

  else
  {
    representativeSuggestionAssets = [(PLSuggestion *)self representativeSuggestionAssets];
    v4 = [representativeSuggestionAssets count] == 0;
  }

  return v4;
}

- (void)removeRepresentativeAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managedObjectContext = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mutableRepresentativeSuggestionAssets = [(PLSuggestion *)self mutableRepresentativeSuggestionAssets];
    [mutableRepresentativeSuggestionAssets removeObject:assetCopy];

    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = assetCopy;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Removed representativeAsset %@ from suggestion %@", &v8, 0x16u);
    }
  }
}

- (void)replaceKeyAsset:(id)asset
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managedObjectContext = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssets = [(PLSuggestion *)self keyAssets];
    v7 = [keyAssets count];

    if (v7 == 1)
    {
      [(PLSuggestion *)self mutableRepresentativeSuggestionAssets];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v21 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (![v13 isEqual:assetCopy])
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v15 = v13;

        if (!v15)
        {
          goto LABEL_18;
        }

        v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v15, 0}];
        [(PLSuggestion *)self setKeyAssets:v16];
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy = self;
          v24 = 2112;
          selfCopy3 = assetCopy;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Updating keyAsset for suggestion %@ from %@ to %@", buf, 0x20u);
        }
      }

      else
      {
LABEL_11:

LABEL_18:
        v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
        [(PLSuggestion *)self setKeyAssets:v15];
        [(PLSuggestion *)self setRepresentativeSuggestionAssets:v15];
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy = assetCopy;
          v24 = 2112;
          selfCopy3 = self;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Removed last keyAsset %@ from suggestion %@", buf, 0x16u);
        }
      }
    }

    else
    {
      mutableKeyAssets = [(PLSuggestion *)self mutableKeyAssets];
      [mutableKeyAssets removeObject:assetCopy];

      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = assetCopy;
        v24 = 2112;
        selfCopy3 = self;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removed keyAsset %@ from suggestion %@", buf, 0x16u);
      }
    }
  }
}

- (void)updateCachedCounts:(id)counts
{
  v38 = *MEMORY[0x1E69E9840];
  managedObjectContext = [counts managedObjectContext];
  objectID = [(PLSuggestion *)self objectID];
  v6 = [PLSuggestion predicateForAllAssetsInSuggestion:objectID managedObjectContext:managedObjectContext];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setPredicate:v6];
  v32 = 0;
  v10 = [managedObjectContext executeFetchRequest:v9 error:&v32];
  v11 = v32;
  v12 = v11;
  if (v10)
  {
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v6;
    v26 = managedObjectContext;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          [MEMORY[0x1E69BF328] maskForGuestAsset];
          [v20 savedAssetType];
          if (!PLValidatedSavedAssetTypeApplies() || [objc_opt_class() _suggestionSubtypeAllowedToContainSyndicatedAssets:{-[PLSuggestion subtype](self, "subtype")}])
          {
            if ([v20 isPhoto])
            {
              v16 = (v16 + 1);
            }

            else
            {
              v15 = v15 + [v20 isVideo];
            }

            v17 = (v17 + 1);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    [(PLSuggestion *)self setCachedCount:v17];
    [(PLSuggestion *)self setCachedPhotosCount:v16];
    [(PLSuggestion *)self setCachedVideosCount:v15];
    [(PLSuggestion *)self setSharingComposition:0];
    v6 = v25;
    managedObjectContext = v26;
    v10 = v23;
    v9 = v24;
    v12 = v22;
  }

  else
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = v6;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to update suggestion cache count. All assets predicate: %@ error: %@", buf, 0x16u);
    }
  }
}

- (void)updateStartAndEndDate
{
  v31 = *MEMORY[0x1E69E9840];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  keyAssets = [(PLSuggestion *)self keyAssets];
  v6 = [keyAssets countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(keyAssets);
        }

        dateCreated = [*(*(&v25 + 1) + 8 * v9) dateCreated];
        if ([distantFuture compare:dateCreated] == 1)
        {
          v11 = dateCreated;

          distantFuture = v11;
        }

        if ([distantPast compare:dateCreated] == -1)
        {
          v12 = dateCreated;

          distantPast = v12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [keyAssets countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  representativeSuggestionAssets = [(PLSuggestion *)self representativeSuggestionAssets];
  v14 = [representativeSuggestionAssets countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(representativeSuggestionAssets);
        }

        dateCreated2 = [*(*(&v21 + 1) + 8 * v17) dateCreated];
        if ([distantFuture compare:dateCreated2] == 1)
        {
          v19 = dateCreated2;

          distantFuture = v19;
        }

        if ([distantPast compare:dateCreated2] == -1)
        {
          v20 = dateCreated2;

          distantPast = v20;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [representativeSuggestionAssets countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  [(PLSuggestion *)self setStartDate:distantFuture];
  [(PLSuggestion *)self setEndDate:distantPast];
}

- (void)delete
{
  managedObjectContext = [(PLSuggestion *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)willSave
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PLSuggestion;
  [(PLManagedObject *)&v29 willSave];
  managedObjectContext = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(PLSuggestion *)self isDeleted]& 1) == 0)
    {
      keyAssets = [(PLSuggestion *)self keyAssets];
      if ([keyAssets count])
      {
      }

      else
      {
        representativeSuggestionAssets = [(PLSuggestion *)self representativeSuggestionAssets];
        v6 = [representativeSuggestionAssets count];

        if (!v6)
        {
          v7 = PLBackendGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(PLSuggestion *)self uuid];
            *buf = 138543362;
            v31 = uuid;
            _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting suggestion because it has no assets %{public}@", buf, 0xCu);
          }

          if ([(PLSuggestion *)self featuredState]== 1)
          {
            if ([(PLSuggestion *)self type]== 6)
            {
              v9 = PLBackendGetLog();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                uuid2 = [(PLSuggestion *)self uuid];
                *buf = 138543362;
                v31 = uuid2;
                _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Recording wallpaper suggestion reload due to wallpaper suggestion with no assets being deleted %{public}@", buf, 0xCu);
              }

              delayedSaveActions = [managedObjectContext delayedSaveActions];
              uuid3 = [(PLSuggestion *)self uuid];
              [delayedSaveActions recordWallpaperSuggestionReloadForUUID:uuid3];
            }

            else
            {
              type = [(PLSuggestion *)self type];
              v14 = PLBackendGetLog();
              v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
              if (type == 7)
              {
                if (v15)
                {
                  uuid4 = [(PLSuggestion *)self uuid];
                  *buf = 138543362;
                  v31 = uuid4;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Recording Album widget timeline invalidation due to featured suggestion with no assets being deleted %{public}@", buf, 0xCu);
                }

                delayedSaveActions2 = [managedObjectContext delayedSaveActions];
                delayedSaveActions = delayedSaveActions2;
                v18 = 1;
              }

              else
              {
                if (v15)
                {
                  uuid5 = [(PLSuggestion *)self uuid];
                  *buf = 138543362;
                  v31 = uuid5;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Recording ForYou widget timeline invalidation due to featured suggestion with no assets being deleted %{public}@", buf, 0xCu);
                }

                delayedSaveActions2 = [managedObjectContext delayedSaveActions];
                delayedSaveActions = delayedSaveActions2;
                v18 = 0;
              }

              [delayedSaveActions2 recordWidgetTimelineReloadNeededForType:v18];
            }
          }

          if ([(PLSuggestion *)self type]!= 13)
          {
            [(PLSuggestion *)self delete];
          }
        }
      }
    }

    if (([(PLSuggestion *)self isDeleted]& 1) == 0 && [(PLSuggestion *)self state]== 4 && [(PLSuggestion *)self featuredState]== 1)
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(PLSuggestion *)self uuid];
        *buf = 138543362;
        v31 = uuid6;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Setting suggestion to not featured as suggestion state has been set to denied %{public}@", buf, 0xCu);
      }

      [(PLSuggestion *)self setFeaturedState:0];
      type2 = [(PLSuggestion *)self type];
      v23 = PLBackendGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (type2 == 7)
      {
        if (v24)
        {
          uuid7 = [(PLSuggestion *)self uuid];
          *buf = 138543362;
          v31 = uuid7;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Recording Album widget timeline invalidation due to featured suggestion being denied %{public}@", buf, 0xCu);
        }

        v26 = 1;
      }

      else
      {
        if (v24)
        {
          uuid8 = [(PLSuggestion *)self uuid];
          *buf = 138543362;
          v31 = uuid8;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured suggestion being denied %{public}@", buf, 0xCu);
        }

        v26 = 0;
      }

      delayedSaveActions3 = [managedObjectContext delayedSaveActions];
      [delayedSaveActions3 recordWidgetTimelineReloadNeededForType:v26];
    }

    [(PLSuggestion *)self _recalculateSharingCompositionIfNeeded];
  }
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLSuggestion;
  [(PLSuggestion *)&v4 prepareForDeletion];
  managedObjectContext = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)subset
{
  subsetCopy = subset;
  if (!subsetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSuggestion.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", subsetCopy, @"keyAssets", @"activeLibraryScopeParticipationState", 0, @"representativeSuggestionAssets", @"activeLibraryScopeParticipationState", 0];

  return v6;
}

+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)subset
{
  subsetCopy = subset;
  if (!subsetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSuggestion.m" lineNumber:754 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", subsetCopy, @"keyAssets", @"activeLibraryScopeParticipationState", 1, @"representativeSuggestionAssets", @"activeLibraryScopeParticipationState", 1];

  return v6;
}

+ (signed)_calculateSharingCompositionForSuggestion:(id)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v4 = MEMORY[0x1E695DFA8];
  keyAssets = [suggestionCopy keyAssets];
  v6 = [v4 setWithSet:keyAssets];

  representativeSuggestionAssets = [suggestionCopy representativeSuggestionAssets];
  [v6 unionSet:representativeSuggestionAssets];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v12 += [*(*(&v17 + 1) + 8 * i) hasLibraryScope] & 1;
    }

    v11 += v10;
    v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v10);

  if (v11 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v15;
}

+ (id)suggestionObjectIDsContainingAsset:(id)asset
{
  v3 = MEMORY[0x1E695DFA8];
  assetCopy = asset;
  v5 = objc_alloc_init(v3);
  v6 = [assetCopy objectIDsForRelationshipNamed:@"suggestionsBeingKeyAssets"];
  [v5 addObjectsFromArray:v6];

  v7 = [assetCopy objectIDsForRelationshipNamed:@"suggestionsBeingRepresentativeAssets"];

  [v5 addObjectsFromArray:v7];

  return v5;
}

+ (unint64_t)deleteSuggestionsWithObjectIDs:(id)ds inManagedObjectContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ suggestions", buf, 0xCu);
      }
    }

    v10 = MEMORY[0x1E696AE18];
    allObjects = [dsCopy allObjects];
    v12 = [v10 predicateWithFormat:@"SELF IN %@", allObjects];

    v13 = [self _deleteSuggestionsMatchingPredicate:v12 inManagedObjectContext:contextCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)deletePendingSuggestionsCreatedBefore:(id)before withTypes:(id)types andRejectedAssetsBySuggestionType:(id)type inManagedObjectContext:(id)context
{
  v59 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  typesCopy = types;
  typeCopy = type;
  contextCopy = context;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v54 = beforeCopy;
      v55 = 2112;
      v56 = typesCopy;
      v57 = 2112;
      v58 = typeCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Removing pending suggestions created before %@, types: %@, rejectedAssetsByType: %@", buf, 0x20u);
    }
  }

  v14 = 0x1E696A000uLL;
  v15 = 0x1E696A000;
  if ([typesCopy count])
  {
    typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"type", typesCopy];
    if (![typeCopy count])
    {
      v17 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v18 = [typeCopy count];
    typesCopy = 0;
    v17 = 0;
    v19 = 0;
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  v41 = typesCopy;
  v42 = contextCopy;
  v44 = typesCopy;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = typeCopy;
  v21 = typeCopy;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        v27 = [v21 objectForKeyedSubscript:v26];
        v28 = v14;
        v29 = [*(v14 + 3608) predicateWithFormat:@"%K == %d and any %K in %@", @"type", objc_msgSend(v26, "intValue"), @"keyAssets", v27];
        [v20 addObject:v29];

        v14 = v28;
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v23);
  }

  v15 = 0x1E696A000uLL;
  v17 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v20];

  typesCopy = v41;
  if (!v41)
  {
    v19 = v17;
    typesCopy = v44;
    contextCopy = v42;
    typeCopy = v43;
LABEL_22:
    v34 = v19;
    if (v34)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  typesCopy = v44;
  contextCopy = v42;
  typeCopy = v43;
  if (!v17)
  {
LABEL_20:
    v19 = typesCopy;
    goto LABEL_22;
  }

  v30 = v14;
  v31 = MEMORY[0x1E696AB28];
  v51[0] = v41;
  v51[1] = v17;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v33 = v31;
  v14 = v30;
  v34 = [v33 orPredicateWithSubpredicates:v32];

  if (v34)
  {
LABEL_23:
    beforeCopy = [*(v14 + 3608) predicateWithFormat:@"%K == %d and %K < %@", @"state", 0, @"creationDate", beforeCopy];
    v37 = *(v15 + 2856);
    v50[0] = beforeCopy;
    v50[1] = v34;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v39 = [v37 andPredicateWithSubpredicates:v38];

    v35 = [self _deleteSuggestionsMatchingPredicate:v39 inManagedObjectContext:contextCopy];
    goto LABEL_24;
  }

LABEL_19:
  v35 = 0;
LABEL_24:

  return v35;
}

+ (unint64_t)_deleteSuggestionsMatchingPredicate:(id)predicate inManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  [v11 setPredicate:predicateCopy];
  v19 = 0;
  v12 = [contextCopy enumerateObjectsFromFetchRequest:v11 count:&v19 batchSize:100 usingBlock:&__block_literal_global_110];
  if (v12)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v12;
        v14 = "Error fetching suggestions: %{public}@";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v15, v16, v14, buf, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v21 = v19;
      v14 = "Deleted %{public}lu suggestions";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:
  }

  v17 = v19;

  objc_autoreleasePoolPop(v8);
  return v17;
}

+ (id)suggestionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__39092;
  v34 = __Block_byref_object_dispose__39093;
  v35 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __90__PLSuggestion_suggestionsMatchingPredicate_sortDescriptors_limit_inManagedObjectContext___block_invoke;
  v23 = &unk_1E7576DD0;
  selfCopy = self;
  v13 = predicateCopy;
  v24 = v13;
  v14 = descriptorsCopy;
  limitCopy = limit;
  v25 = v14;
  v27 = &v30;
  v15 = contextCopy;
  v26 = v15;
  [v15 performBlockAndWait:&v20];
  v16 = v31[5];
  if (v16)
  {
    array = v16;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v18 = array;

  _Block_object_dispose(&v30, 8);

  return v18;
}

void __90__PLSuggestion_suggestionsMatchingPredicate_sortDescriptors_limit_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 64) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchBatchSize:100];
  [v4 setPredicate:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v4 setSortDescriptors:?];
  }

  if (*(a1 + 72) >= 1)
  {
    [v4 setFetchLimit:?];
  }

  v5 = *(a1 + 48);
  v11 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v11];
  v7 = v11;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 56) + 8) + 40) && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch suggestions: %@", buf, 0xCu);
    }
  }
}

+ (id)suggestionsToPrefetchInManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  if ([(PLGlobalValues *)v5 shouldPrefetchWidgetResources])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %d and %K == %d", @"state", 1, @"featuredState", 1];
    v7 = [self suggestionsMatchingPredicate:v6 sortDescriptors:0 limit:0 inManagedObjectContext:contextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)suggestionsToUploadInPhotoLibrary:(id)library limit:(int64_t)limit
{
  v18[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  _syncablePredicate = [self _syncablePredicate];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState == %d", 0];
  v9 = MEMORY[0x1E696AB28];
  v18[0] = _syncablePredicate;
  v18[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

  managedObjectContext = [libraryCopy managedObjectContext];

  v15 = [self suggestionsMatchingPredicate:v11 sortDescriptors:v13 limit:limit inManagedObjectContext:managedObjectContext];

  return v15;
}

+ (void)resetCloudStateInPhotoLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v8 = [v6 initWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC0708];
  [v8 setPredicate:v9];
  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = 0;
  v11 = [managedObjectContext executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        result = [v11 result];
        *buf = 138412290;
        v17 = result;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Batch updated %@ Suggestions", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to batch update Suggestions: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)_syncablePredicate
{
  if (_syncablePredicate_onceToken != -1)
  {
    dispatch_once(&_syncablePredicate_onceToken, &__block_literal_global_39122);
  }

  v3 = _syncablePredicate_syncablePredicate;

  return v3;
}

void __34__PLSuggestion__syncablePredicate__block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", 4];
  v1 = _syncablePredicate_statePredicate;
  _syncablePredicate_statePredicate = v0;

  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"type", 7];
  v3 = _syncablePredicate_typePredicate;
  _syncablePredicate_typePredicate = v2;

  v4 = MEMORY[0x1E696AB28];
  v8[0] = _syncablePredicate_statePredicate;
  v8[1] = _syncablePredicate_typePredicate;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];
  v7 = _syncablePredicate_syncablePredicate;
  _syncablePredicate_syncablePredicate = v6;
}

+ (id)predicateForAllMomentsFromRepresentativeAssetsInSuggestion:(id)suggestion managedObjectContext:(id)context
{
  contextCopy = context;
  suggestionCopy = suggestion;
  v7 = [objc_opt_class() _representativeAssetIDsInSuggestion:suggestionCopy managedObjectContext:contextCopy];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN (%@)", v7];

  return v8;
}

+ (id)predicateForAllAssetsInSuggestion:(id)suggestion managedObjectContext:(id)context
{
  contextCopy = context;
  suggestionCopy = suggestion;
  v7 = [objc_opt_class() _representativeAssetIDsInSuggestion:suggestionCopy managedObjectContext:contextCopy];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY moment.assets IN (%@) AND noindex(trashedState) == %d AND noindex(kindSubtype) != %d AND noindex(kindSubtype) != %d AND additionalAttributes.importedBy != %d", v7, 0, 10, 103, 7];

  return v8;
}

+ (id)_representativeAssetIDsInSuggestion:(id)suggestion managedObjectContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__39092;
  v26 = __Block_byref_object_dispose__39093;
  v27 = MEMORY[0x1E695E0F0];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  if ([suggestionCopy isTemporaryID])
  {
    v21 = 0;
    v10 = [contextCopy existingObjectWithID:suggestionCopy error:&v21];
    suggestionCopy = v21;
    v12 = v10 != 0;
    if (v10)
    {
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"suggestionsBeingRepresentativeAssets CONTAINS %@", v10];
      [v9 setPredicate:v13];
    }

    else
    {
      v13 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = suggestionCopy;
        v30 = 2112;
        v31 = suggestionCopy;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch existingObjectWithID %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    suggestionCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"suggestionsBeingRepresentativeAssets CONTAINS %@", suggestionCopy];
    [v9 setPredicate:suggestionCopy];
    v12 = 1;
  }

  [v9 setResultType:1];
  [v9 setIncludesPropertyValues:0];
  if (v12)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__PLSuggestion__representativeAssetIDsInSuggestion_managedObjectContext___block_invoke;
    v16[3] = &unk_1E75778C0;
    v20 = &v22;
    v17 = contextCopy;
    v18 = v9;
    v19 = suggestionCopy;
    [v17 performBlockAndWait:v16];
  }

  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __73__PLSuggestion__representativeAssetIDsInSuggestion_managedObjectContext___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v12];
  v5 = v12;
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[7] + 8) + 40))
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch representative asset IDs for %@: %@", buf, 0x16u);
    }

    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = MEMORY[0x1E695E0F0];
  }
}

+ (id)suggestionsWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", ds];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self suggestionsMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (id)suggestionWithUUID:(id)d inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"uuid", d];
  v9 = [self suggestionsMatchingPredicate:v8 sortDescriptors:0 limit:1 inManagedObjectContext:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)suggestionWithUUID:(id)d inPhotoLibrary:(id)library
{
  dCopy = d;
  managedObjectContext = [library managedObjectContext];
  v8 = [self suggestionWithUUID:dCopy inManagedObjectContext:managedObjectContext];

  return v8;
}

+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d
{
  dCopy = d;
  managedObjectContext = [library managedObjectContext];
  entityName = [self entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  if (v9)
  {
    [v9 setUuid:dCopy];
  }

  return v9;
}

@end