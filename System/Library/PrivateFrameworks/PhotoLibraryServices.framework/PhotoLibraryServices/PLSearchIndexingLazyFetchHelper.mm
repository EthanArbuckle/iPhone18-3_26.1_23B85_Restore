@interface PLSearchIndexingLazyFetchHelper
- (BOOL)_isEntityLocalizationAllowedForIndexingSearchEntity:(id)a3 withIndexLocaleIdentifier:(id)a4;
- (PLSearchIndexingLazyFetchHelper)initWithObject:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5;
- (id)albumsEligibleForSearchIndexing;
- (id)allDetectedFaces;
- (id)allSceneClassifications;
- (id)memoriesEligibleForSearchIndexing;
- (void)enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:(id)a3 withBlock:(id)a4;
- (void)enumerateSearchEntityRelationsForPerson:(id)a3 block:(id)a4;
@end

@implementation PLSearchIndexingLazyFetchHelper

- (void)enumerateSearchEntityRelationsForPerson:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 fullName];
  if ([v8 length])
  {
  }

  else
  {
    v9 = [v6 displayName];
    v10 = [v9 length];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  relationsByPersonUUID = self->_relationsByPersonUUID;
  v12 = [v6 personUUID];
  v13 = [(NSMutableDictionary *)relationsByPersonUUID objectForKeyedSubscript:v12];

  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__PLSearchIndexingLazyFetchHelper_enumerateSearchEntityRelationsForPerson_block___block_invoke_2;
    v18[3] = &unk_1E7571B30;
    v19 = v7;
    [v13 enumerateObjectsUsingBlock:v18];
    v14 = v19;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PLSearchIndexingLazyFetchHelper_enumerateSearchEntityRelationsForPerson_block___block_invoke;
    v20[3] = &unk_1E7571B08;
    v21 = v15;
    v22 = v7;
    v14 = v15;
    [v6 enumerateAssetSearchEntityPersonRelationsWithBlock:v20];
    v16 = self->_relationsByPersonUUID;
    v17 = [v6 personUUID];
    [(NSMutableDictionary *)v16 setObject:v14 forKeyedSubscript:v17];
  }

LABEL_8:
}

void __81__PLSearchIndexingLazyFetchHelper_enumerateSearchEntityRelationsForPerson_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v6(v5, v7, a3);
  [*(a1 + 32) addObject:v7];
}

- (BOOL)_isEntityLocalizationAllowedForIndexingSearchEntity:(id)a3 withIndexLocaleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 localeIdentifier];
  if (v6)
  {
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  momentSearchEntities = self->_momentSearchEntities;
  if (momentSearchEntities)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __100__PLSearchIndexingLazyFetchHelper_enumerateMomentSearchEntitiesWithIndexLocaleIdentifier_withBlock___block_invoke_2;
    v17[3] = &unk_1E7571AE0;
    v18 = v7;
    [(NSArray *)momentSearchEntities enumerateObjectsUsingBlock:v17];
    v10 = v18;
  }

  else
  {
    v11 = self->_object;
    v10 = [(PLManagedObject *)v11 moment];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__PLSearchIndexingLazyFetchHelper_enumerateMomentSearchEntitiesWithIndexLocaleIdentifier_withBlock___block_invoke;
    v19[3] = &unk_1E7571AB8;
    v19[4] = self;
    v20 = v6;
    v21 = v11;
    v23 = v8;
    v13 = v12;
    v22 = v13;
    v14 = v11;
    [v10 enumerateAssetSearchEntitiesWithBlock:v19];
    v15 = self->_momentSearchEntities;
    self->_momentSearchEntities = v13;
    v16 = v13;
  }
}

void __100__PLSearchIndexingLazyFetchHelper_enumerateMomentSearchEntitiesWithIndexLocaleIdentifier_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(a1 + 32) _isEntityLocalizationAllowedForIndexingSearchEntity:v9 withIndexLocaleIdentifier:*(a1 + 40)])
  {
    v6 = [PLSearchEntity dateIntervalForMomentEdge:v5];
    v7 = [*(a1 + 48) dateCreated];
    v8 = [v6 containsDate:v7];

    if ((v8 & 1) != 0 || !v6)
    {
      (*(*(a1 + 64) + 16))();
      [*(a1 + 56) addObject:v9];
    }
  }
}

- (id)albumsEligibleForSearchIndexing
{
  v16 = *MEMORY[0x1E69E9840];
  albumsEligibleForSearchIndexing = self->_albumsEligibleForSearchIndexing;
  if (!albumsEligibleForSearchIndexing)
  {
    v4 = [(PLManagedObject *)self->_object objectID];
    v5 = [PLGenericAlbum fetchAlbumsForAssetObjectID:v4 libraryIdentifier:self->_libraryIdentifier managedObjectContext:self->_moc];

    if ([v5 isSuccess])
    {
      v6 = [v5 result];
      v7 = self->_albumsEligibleForSearchIndexing;
      self->_albumsEligibleForSearchIndexing = v6;
    }

    else
    {
      v8 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(PLManagedObject *)self->_object objectID];
        v10 = [v5 error];
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error fetching albums for asset: %{public}@, error: %@", &v12, 0x16u);
      }
    }

    albumsEligibleForSearchIndexing = self->_albumsEligibleForSearchIndexing;
  }

  return albumsEligibleForSearchIndexing;
}

- (id)memoriesEligibleForSearchIndexing
{
  v20 = *MEMORY[0x1E69E9840];
  memoriesBeingCuratedAssets = self->_memoriesBeingCuratedAssets;
  if (!memoriesBeingCuratedAssets)
  {
    v4 = self->_object;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(PLManagedObject *)v4 memoriesBeingCuratedAssets];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEligibleForSearchIndexing])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    v13 = self->_memoriesBeingCuratedAssets;
    self->_memoriesBeingCuratedAssets = v12;

    memoriesBeingCuratedAssets = self->_memoriesBeingCuratedAssets;
  }

  return memoriesBeingCuratedAssets;
}

- (id)allSceneClassifications
{
  v17 = *MEMORY[0x1E69E9840];
  allSceneClasifications = self->_allSceneClasifications;
  if (!allSceneClasifications)
  {
    v4 = self->_object;
    v5 = [(PLManagedObject *)v4 additionalAttributes];
    v6 = [PLSceneClassification fetchSceneClassificationsForAdditionalAttributes:v5 managedObjectContext:self->_moc];

    if ([v6 isSuccess])
    {
      v7 = [v6 result];
      v8 = self->_allSceneClasifications;
      self->_allSceneClasifications = v7;
    }

    else
    {
      v9 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(PLManagedObject *)self->_object objectID];
        v11 = [v6 error];
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching scenes for asset: %{public}@, error: %@", &v13, 0x16u);
      }
    }

    allSceneClasifications = self->_allSceneClasifications;
  }

  return allSceneClasifications;
}

- (id)allDetectedFaces
{
  v16 = *MEMORY[0x1E69E9840];
  allDetectedFaces = self->_allDetectedFaces;
  if (!allDetectedFaces)
  {
    v4 = [(PLManagedObject *)self->_object objectID];
    v5 = [PLDetectedFace fetchDetectedFacesForAssetObjectID:v4 managedObjectContext:self->_moc];

    if ([v5 isSuccess])
    {
      v6 = [v5 result];
      v7 = self->_allDetectedFaces;
      self->_allDetectedFaces = v6;
    }

    else
    {
      v8 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(PLManagedObject *)self->_object objectID];
        v10 = [v5 error];
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error fetching detected faces for asset: %{public}@, error: %@", &v12, 0x16u);
      }
    }

    allDetectedFaces = self->_allDetectedFaces;
  }

  return allDetectedFaces;
}

- (PLSearchIndexingLazyFetchHelper)initWithObject:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PLSearchIndexingLazyFetchHelper;
  v11 = [(PLSearchIndexingLazyFetchHelper *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, a3);
    v12->_libraryIdentifier = a4;
    objc_storeStrong(&v12->_moc, a5);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationsByPersonUUID = v12->_relationsByPersonUUID;
    v12->_relationsByPersonUUID = v13;
  }

  return v12;
}

@end