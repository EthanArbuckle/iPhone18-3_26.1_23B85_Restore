@interface PLSuggestion
+ (id)_representativeAssetIDsInSuggestion:(id)a3 managedObjectContext:(id)a4;
+ (id)_syncablePredicate;
+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4;
+ (id)predicateForAllAssetsInSuggestion:(id)a3 managedObjectContext:(id)a4;
+ (id)predicateForAllMomentsFromRepresentativeAssetsInSuggestion:(id)a3 managedObjectContext:(id)a4;
+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)a3;
+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)a3;
+ (id)suggestionObjectIDsContainingAsset:(id)a3;
+ (id)suggestionWithUUID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)suggestionWithUUID:(id)a3 inPhotoLibrary:(id)a4;
+ (id)suggestionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6;
+ (id)suggestionsToPrefetchInManagedObjectContext:(id)a3;
+ (id)suggestionsToUploadInPhotoLibrary:(id)a3 limit:(int64_t)a4;
+ (id)suggestionsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (signed)_calculateSharingCompositionForSuggestion:(id)a3;
+ (unint64_t)_deleteSuggestionsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4;
+ (unint64_t)deletePendingSuggestionsCreatedBefore:(id)a3 withTypes:(id)a4 andRejectedAssetsBySuggestionType:(id)a5 inManagedObjectContext:(id)a6;
+ (unint64_t)deleteSuggestionsWithObjectIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (void)resetCloudStateInPhotoLibrary:(id)a3;
- (BOOL)_sharingCompositionNeedsUpdate;
- (BOOL)isEmpty;
- (BOOL)supportsCloudUpload;
- (BOOL)updateWithCPLSuggestionChange:(id)a3 inPhotoLibrary:(id)a4;
- (id)cplSuggestionChange;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (signed)sharingComposition;
- (void)_recalculateSharingCompositionIfNeeded;
- (void)delete;
- (void)prepareForDeletion;
- (void)removeRepresentativeAsset:(id)a3;
- (void)replaceKeyAsset:(id)a3;
- (void)updateCachedCounts:(id)a3;
- (void)updateStartAndEndDate;
- (void)willSave;
@end

@implementation PLSuggestion

- (signed)sharingComposition
{
  [(PLSuggestion *)self _recalculateSharingCompositionIfNeeded];
  [(PLSuggestion *)self willAccessValueForKey:@"sharingComposition"];
  v3 = [(PLSuggestion *)self primitiveValueForKey:@"sharingComposition"];
  v4 = [v3 intValue];

  [(PLSuggestion *)self didAccessValueForKey:@"sharingComposition"];
  return v4;
}

- (void)_recalculateSharingCompositionIfNeeded
{
  if ([(PLSuggestion *)self _sharingCompositionNeedsUpdate])
  {
    [(PLSuggestion *)self willAccessValueForKey:@"sharingComposition"];
    v3 = [(PLSuggestion *)self primitiveValueForKey:@"sharingComposition"];
    v4 = [v3 intValue];

    [(PLSuggestion *)self didAccessValueForKey:@"sharingComposition"];
    v5 = [objc_opt_class() _calculateSharingCompositionForSuggestion:self];
    if (v5 != v4)
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

  v4 = [(PLSuggestion *)self changedValues];
  v5 = [v4 objectForKeyedSubscript:@"keyAssets"];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(PLSuggestion *)self changedValues];
    v7 = [v6 objectForKeyedSubscript:@"representativeSuggestionAssets"];
    v3 = v7 != 0;
  }

  return v3;
}

- (id)cplSuggestionChange
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = [(PLSuggestion *)self scopedIdentifier];
  v3 = [MEMORY[0x1E6994C00] newChangeWithScopedIdentifier:? changeType:?];
  [v3 setType:{-[PLSuggestion type](self, "type")}];
  [v3 setSubtype:{-[PLSuggestion subtype](self, "subtype")}];
  v4 = [(PLSuggestion *)self title];
  [v3 setTitle:v4];

  v5 = [(PLSuggestion *)self subtitle];
  [v3 setSubtitle:v5];

  [v3 setState:{-[PLSuggestion state](self, "state")}];
  [v3 setVersion:{-[PLSuggestion version](self, "version")}];
  [v3 setNotificationState:{-[PLSuggestion notificationState](self, "notificationState")}];
  v6 = [(PLSuggestion *)self creationDate];
  [v3 setCreationDate:v6];

  v7 = [(PLSuggestion *)self activationDate];
  [v3 setActivationDate:v7];

  v8 = [(PLSuggestion *)self relevantUntilDate];
  [v3 setRelevantUntilDate:v8];

  v9 = [(PLSuggestion *)self expungeDate];
  [v3 setExpungeDate:v9];

  v10 = [(PLSuggestion *)self actionData];
  [v3 setActionData:v10];

  v11 = [(PLSuggestion *)self featuresData];
  v28 = v3;
  [v3 setFeaturesData:v11];

  v12 = objc_alloc_init(MEMORY[0x1E6994C18]);
  v13 = [(PLSuggestion *)self representativeSuggestionAssets];
  v14 = [(PLSuggestion *)self keyAssets];
  v15 = [MEMORY[0x1E695DFA8] setWithSet:v13];
  [v15 unionSet:v14];
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
        [v21 setIsKeyAsset:{objc_msgSend(v14, "containsObject:", v20)}];
        [v21 setIsRepresentative:{objc_msgSend(v13, "containsObject:", v20)}];
        v22 = objc_alloc_init(MEMORY[0x1E6994BF0]);
        v23 = [v20 cloudAssetGUID];
        [v22 setAssetIdentifier:v23];

        [v22 setAssetFlag:v21];
        v24 = [v20 master];
        v25 = [v24 scopedIdentifier];

        v26 = [v25 identifier];
        [v22 setMasterIdentifier:v26];
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
  v4 = [(PLSuggestion *)self scopeIdentifier];
  v5 = [(PLSuggestion *)self uuid];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (BOOL)updateWithCPLSuggestionChange:(id)a3 inPhotoLibrary:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  -[PLSuggestion setType:](self, "setType:", [v6 type]);
  -[PLSuggestion setSubtype:](self, "setSubtype:", [v6 subtype]);
  v8 = [v6 title];
  [(PLSuggestion *)self setTitle:v8];

  v9 = [v6 subtitle];
  [(PLSuggestion *)self setSubtitle:v9];

  -[PLSuggestion setState:](self, "setState:", [v6 state]);
  -[PLSuggestion setVersion:](self, "setVersion:", [v6 version]);
  -[PLSuggestion setNotificationState:](self, "setNotificationState:", [v6 notificationState]);
  v10 = [v6 creationDate];
  [(PLSuggestion *)self setCreationDate:v10];

  v11 = [v6 activationDate];
  [(PLSuggestion *)self setActivationDate:v11];

  v12 = [v6 relevantUntilDate];
  [(PLSuggestion *)self setRelevantUntilDate:v12];

  v13 = [v6 expungeDate];
  [(PLSuggestion *)self setExpungeDate:v13];

  v14 = [v6 actionData];
  [(PLSuggestion *)self setActionData:v14];

  v15 = [v6 featuresData];
  v33 = self;
  [(PLSuggestion *)self setFeaturesData:v15];

  v35 = v6;
  v32 = [v6 recordList];
  v16 = [v32 assets];
  v17 = [v16 count];
  v31 = [v16 valueForKey:@"assetIdentifier"];
  v34 = v7;
  v18 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v36 = [MEMORY[0x1E695DFA8] setWithCapacity:v17];
  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:v17];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v16;
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
        v27 = [v26 assetFlag];
        v28 = [v26 assetIdentifier];
        if (v28)
        {
          v29 = [v18 objectForKey:v28];
          if (v29)
          {
            if ([v27 isKeyAsset])
            {
              [v19 addObject:v29];
            }

            if ([v27 isRepresentative])
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

  [(PLSuggestion *)v33 setKeyAssets:v19];
  [(PLSuggestion *)v33 setRepresentativeSuggestionAssets:v36];
  [(PLSuggestion *)v33 updateStartAndEndDate];
  [(PLSuggestion *)v33 updateCachedCounts:v34];
  [(PLSuggestion *)v33 setCloudLocalState:1];

  return v24 & 1;
}

- (BOOL)supportsCloudUpload
{
  v3 = [objc_opt_class() _syncablePredicate];
  LOBYTE(self) = [v3 evaluateWithObject:self];

  return self;
}

- (BOOL)isEmpty
{
  v3 = [(PLSuggestion *)self keyAssets];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PLSuggestion *)self representativeSuggestionAssets];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)removeRepresentativeAsset:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PLSuggestion *)self mutableRepresentativeSuggestionAssets];
    [v6 removeObject:v4];

    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Removed representativeAsset %@ from suggestion %@", &v8, 0x16u);
    }
  }
}

- (void)replaceKeyAsset:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PLSuggestion *)self keyAssets];
    v7 = [v6 count];

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
          if (![v13 isEqual:v4])
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
          v23 = self;
          v24 = 2112;
          v25 = v4;
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
          v23 = v4;
          v24 = 2112;
          v25 = self;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Removed last keyAsset %@ from suggestion %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = [(PLSuggestion *)self mutableKeyAssets];
      [v14 removeObject:v4];

      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v4;
        v24 = 2112;
        v25 = self;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removed keyAsset %@ from suggestion %@", buf, 0x16u);
      }
    }
  }
}

- (void)updateCachedCounts:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [a3 managedObjectContext];
  v5 = [(PLSuggestion *)self objectID];
  v6 = [PLSuggestion predicateForAllAssetsInSuggestion:v5 managedObjectContext:v4];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setPredicate:v6];
  v32 = 0;
  v10 = [v4 executeFetchRequest:v9 error:&v32];
  v11 = v32;
  v12 = v11;
  if (v10)
  {
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v6;
    v26 = v4;
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
    v4 = v26;
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
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(PLSuggestion *)self keyAssets];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v25 + 1) + 8 * v9) dateCreated];
        if ([v3 compare:v10] == 1)
        {
          v11 = v10;

          v3 = v11;
        }

        if ([v4 compare:v10] == -1)
        {
          v12 = v10;

          v4 = v12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(PLSuggestion *)self representativeSuggestionAssets];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) dateCreated];
        if ([v3 compare:v18] == 1)
        {
          v19 = v18;

          v3 = v19;
        }

        if ([v4 compare:v18] == -1)
        {
          v20 = v18;

          v4 = v20;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  [(PLSuggestion *)self setStartDate:v3];
  [(PLSuggestion *)self setEndDate:v4];
}

- (void)delete
{
  v3 = [(PLSuggestion *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)willSave
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PLSuggestion;
  [(PLManagedObject *)&v29 willSave];
  v3 = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(PLSuggestion *)self isDeleted]& 1) == 0)
    {
      v4 = [(PLSuggestion *)self keyAssets];
      if ([v4 count])
      {
      }

      else
      {
        v5 = [(PLSuggestion *)self representativeSuggestionAssets];
        v6 = [v5 count];

        if (!v6)
        {
          v7 = PLBackendGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [(PLSuggestion *)self uuid];
            *buf = 138543362;
            v31 = v8;
            _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting suggestion because it has no assets %{public}@", buf, 0xCu);
          }

          if ([(PLSuggestion *)self featuredState]== 1)
          {
            if ([(PLSuggestion *)self type]== 6)
            {
              v9 = PLBackendGetLog();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                v10 = [(PLSuggestion *)self uuid];
                *buf = 138543362;
                v31 = v10;
                _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Recording wallpaper suggestion reload due to wallpaper suggestion with no assets being deleted %{public}@", buf, 0xCu);
              }

              v11 = [v3 delayedSaveActions];
              v12 = [(PLSuggestion *)self uuid];
              [v11 recordWallpaperSuggestionReloadForUUID:v12];
            }

            else
            {
              v13 = [(PLSuggestion *)self type];
              v14 = PLBackendGetLog();
              v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
              if (v13 == 7)
              {
                if (v15)
                {
                  v16 = [(PLSuggestion *)self uuid];
                  *buf = 138543362;
                  v31 = v16;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Recording Album widget timeline invalidation due to featured suggestion with no assets being deleted %{public}@", buf, 0xCu);
                }

                v17 = [v3 delayedSaveActions];
                v11 = v17;
                v18 = 1;
              }

              else
              {
                if (v15)
                {
                  v19 = [(PLSuggestion *)self uuid];
                  *buf = 138543362;
                  v31 = v19;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Recording ForYou widget timeline invalidation due to featured suggestion with no assets being deleted %{public}@", buf, 0xCu);
                }

                v17 = [v3 delayedSaveActions];
                v11 = v17;
                v18 = 0;
              }

              [v17 recordWidgetTimelineReloadNeededForType:v18];
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
        v21 = [(PLSuggestion *)self uuid];
        *buf = 138543362;
        v31 = v21;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Setting suggestion to not featured as suggestion state has been set to denied %{public}@", buf, 0xCu);
      }

      [(PLSuggestion *)self setFeaturedState:0];
      v22 = [(PLSuggestion *)self type];
      v23 = PLBackendGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22 == 7)
      {
        if (v24)
        {
          v25 = [(PLSuggestion *)self uuid];
          *buf = 138543362;
          v31 = v25;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Recording Album widget timeline invalidation due to featured suggestion being denied %{public}@", buf, 0xCu);
        }

        v26 = 1;
      }

      else
      {
        if (v24)
        {
          v27 = [(PLSuggestion *)self uuid];
          *buf = 138543362;
          v31 = v27;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured suggestion being denied %{public}@", buf, 0xCu);
        }

        v26 = 0;
      }

      v28 = [v3 delayedSaveActions];
      [v28 recordWidgetTimelineReloadNeededForType:v26];
    }

    [(PLSuggestion *)self _recalculateSharingCompositionIfNeeded];
  }
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLSuggestion;
  [(PLSuggestion *)&v4 prepareForDeletion];
  v3 = [(PLSuggestion *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    [v3 recordCloudDeletionForObject:self];
  }
}

+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLSuggestion.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", v5, @"keyAssets", @"activeLibraryScopeParticipationState", 0, @"representativeSuggestionAssets", @"activeLibraryScopeParticipationState", 0];

  return v6;
}

+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLSuggestion.m" lineNumber:754 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", v5, @"keyAssets", @"activeLibraryScopeParticipationState", 1, @"representativeSuggestionAssets", @"activeLibraryScopeParticipationState", 1];

  return v6;
}

+ (signed)_calculateSharingCompositionForSuggestion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v5 = [v3 keyAssets];
  v6 = [v4 setWithSet:v5];

  v7 = [v3 representativeSuggestionAssets];
  [v6 unionSet:v7];

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

+ (id)suggestionObjectIDsContainingAsset:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectIDsForRelationshipNamed:@"suggestionsBeingKeyAssets"];
  [v5 addObjectsFromArray:v6];

  v7 = [v4 objectIDsForRelationshipNamed:@"suggestionsBeingRepresentativeAssets"];

  [v5 addObjectsFromArray:v7];

  return v5;
}

+ (unint64_t)deleteSuggestionsWithObjectIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ suggestions", buf, 0xCu);
      }
    }

    v10 = MEMORY[0x1E696AE18];
    v11 = [v6 allObjects];
    v12 = [v10 predicateWithFormat:@"SELF IN %@", v11];

    v13 = [a1 _deleteSuggestionsMatchingPredicate:v12 inManagedObjectContext:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)deletePendingSuggestionsCreatedBefore:(id)a3 withTypes:(id)a4 andRejectedAssetsBySuggestionType:(id)a5 inManagedObjectContext:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v54 = v9;
      v55 = 2112;
      v56 = v10;
      v57 = 2112;
      v58 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Removing pending suggestions created before %@, types: %@, rejectedAssetsByType: %@", buf, 0x20u);
    }
  }

  v14 = 0x1E696A000uLL;
  v15 = 0x1E696A000;
  if ([v10 count])
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"type", v10];
    if (![v11 count])
    {
      v17 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v18 = [v11 count];
    v16 = 0;
    v17 = 0;
    v19 = 0;
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  v41 = v16;
  v42 = v12;
  v44 = v10;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = v11;
  v21 = v11;
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

  v16 = v41;
  if (!v41)
  {
    v19 = v17;
    v10 = v44;
    v12 = v42;
    v11 = v43;
LABEL_22:
    v34 = v19;
    if (v34)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v10 = v44;
  v12 = v42;
  v11 = v43;
  if (!v17)
  {
LABEL_20:
    v19 = v16;
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
    v36 = [*(v14 + 3608) predicateWithFormat:@"%K == %d and %K < %@", @"state", 0, @"creationDate", v9];
    v37 = *(v15 + 2856);
    v50[0] = v36;
    v50[1] = v34;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v39 = [v37 andPredicateWithSubpredicates:v38];

    v35 = [a1 _deleteSuggestionsMatchingPredicate:v39 inManagedObjectContext:v12];
    goto LABEL_24;
  }

LABEL_19:
  v35 = 0;
LABEL_24:

  return v35;
}

+ (unint64_t)_deleteSuggestionsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  v10 = [a1 entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setPredicate:v6];
  v19 = 0;
  v12 = [v7 enumerateObjectsFromFetchRequest:v11 count:&v19 batchSize:100 usingBlock:&__block_literal_global_110];
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

+ (id)suggestionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
  v28 = a1;
  v13 = v10;
  v24 = v13;
  v14 = v11;
  v29 = a5;
  v25 = v14;
  v27 = &v30;
  v15 = v12;
  v26 = v15;
  [v15 performBlockAndWait:&v20];
  v16 = v31[5];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = [MEMORY[0x1E695DEC8] array];
  }

  v18 = v17;

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

+ (id)suggestionsToPrefetchInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [[PLGlobalValues alloc] initWithManagedObjectContext:v4];
  if ([(PLGlobalValues *)v5 shouldPrefetchWidgetResources])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %d and %K == %d", @"state", 1, @"featuredState", 1];
    v7 = [a1 suggestionsMatchingPredicate:v6 sortDescriptors:0 limit:0 inManagedObjectContext:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)suggestionsToUploadInPhotoLibrary:(id)a3 limit:(int64_t)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _syncablePredicate];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState == %d", 0];
  v9 = MEMORY[0x1E696AB28];
  v18[0] = v7;
  v18[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

  v14 = [v6 managedObjectContext];

  v15 = [a1 suggestionsMatchingPredicate:v11 sortDescriptors:v13 limit:a4 inManagedObjectContext:v14];

  return v15;
}

+ (void)resetCloudStateInPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  v7 = [a1 entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC0708];
  [v8 setPredicate:v9];
  v10 = [v4 managedObjectContext];
  v15 = 0;
  v11 = [v10 executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 result];
        *buf = 138412290;
        v17 = v14;
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

+ (id)predicateForAllMomentsFromRepresentativeAssetsInSuggestion:(id)a3 managedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _representativeAssetIDsInSuggestion:v6 managedObjectContext:v5];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN (%@)", v7];

  return v8;
}

+ (id)predicateForAllAssetsInSuggestion:(id)a3 managedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _representativeAssetIDsInSuggestion:v6 managedObjectContext:v5];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY moment.assets IN (%@) AND noindex(trashedState) == %d AND noindex(kindSubtype) != %d AND noindex(kindSubtype) != %d AND additionalAttributes.importedBy != %d", v7, 0, 10, 103, 7];

  return v8;
}

+ (id)_representativeAssetIDsInSuggestion:(id)a3 managedObjectContext:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__39092;
  v26 = __Block_byref_object_dispose__39093;
  v27 = MEMORY[0x1E695E0F0];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  if ([v5 isTemporaryID])
  {
    v21 = 0;
    v10 = [v6 existingObjectWithID:v5 error:&v21];
    v11 = v21;
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
        v29 = v5;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch existingObjectWithID %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"suggestionsBeingRepresentativeAssets CONTAINS %@", v5];
    [v9 setPredicate:v11];
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
    v17 = v6;
    v18 = v9;
    v19 = v5;
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

+ (id)suggestionsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", a3];
  v9 = [v7 managedObjectContext];

  v10 = [a1 suggestionsMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:v9];

  return v10;
}

+ (id)suggestionWithUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"uuid", a3];
  v9 = [a1 suggestionsMatchingPredicate:v8 sortDescriptors:0 limit:1 inManagedObjectContext:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)suggestionWithUUID:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = [a4 managedObjectContext];
  v8 = [a1 suggestionWithUUID:v6 inManagedObjectContext:v7];

  return v8;
}

+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4
{
  v6 = a4;
  v7 = [a3 managedObjectContext];
  v8 = [a1 entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

  if (v9)
  {
    [v9 setUuid:v6];
  }

  return v9;
}

@end