@interface PLSearchIndexingLazyFetchHelper
- (BOOL)_isEntityLocalizationAllowedForIndexingSearchEntity:(id)entity withIndexLocaleIdentifier:(id)identifier;
- (PLSearchIndexingLazyFetchHelper)initWithObject:(id)object libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context;
- (id)albumsEligibleForSearchIndexing;
- (id)allDetectedFaces;
- (id)allSceneClassifications;
- (id)memoriesEligibleForSearchIndexing;
- (void)enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:(id)identifier withBlock:(id)block;
- (void)enumerateSearchEntityRelationsForPerson:(id)person block:(id)block;
@end

@implementation PLSearchIndexingLazyFetchHelper

- (void)enumerateSearchEntityRelationsForPerson:(id)person block:(id)block
{
  personCopy = person;
  blockCopy = block;
  fullName = [personCopy fullName];
  if ([fullName length])
  {
  }

  else
  {
    displayName = [personCopy displayName];
    v10 = [displayName length];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  relationsByPersonUUID = self->_relationsByPersonUUID;
  personUUID = [personCopy personUUID];
  v13 = [(NSMutableDictionary *)relationsByPersonUUID objectForKeyedSubscript:personUUID];

  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__PLSearchIndexingLazyFetchHelper_enumerateSearchEntityRelationsForPerson_block___block_invoke_2;
    v18[3] = &unk_1E7571B30;
    v19 = blockCopy;
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
    v22 = blockCopy;
    v14 = v15;
    [personCopy enumerateAssetSearchEntityPersonRelationsWithBlock:v20];
    v16 = self->_relationsByPersonUUID;
    personUUID2 = [personCopy personUUID];
    [(NSMutableDictionary *)v16 setObject:v14 forKeyedSubscript:personUUID2];
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

- (BOOL)_isEntityLocalizationAllowedForIndexingSearchEntity:(id)entity withIndexLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  localeIdentifier = [entity localeIdentifier];
  if (localeIdentifier)
  {
    v7 = [identifierCopy isEqualToString:localeIdentifier];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:(id)identifier withBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v8 = blockCopy;
  momentSearchEntities = self->_momentSearchEntities;
  if (momentSearchEntities)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __100__PLSearchIndexingLazyFetchHelper_enumerateMomentSearchEntitiesWithIndexLocaleIdentifier_withBlock___block_invoke_2;
    v17[3] = &unk_1E7571AE0;
    v18 = blockCopy;
    [(NSArray *)momentSearchEntities enumerateObjectsUsingBlock:v17];
    moment = v18;
  }

  else
  {
    v11 = self->_object;
    moment = [(PLManagedObject *)v11 moment];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__PLSearchIndexingLazyFetchHelper_enumerateMomentSearchEntitiesWithIndexLocaleIdentifier_withBlock___block_invoke;
    v19[3] = &unk_1E7571AB8;
    v19[4] = self;
    v20 = identifierCopy;
    v21 = v11;
    v23 = v8;
    v13 = v12;
    v22 = v13;
    v14 = v11;
    [moment enumerateAssetSearchEntitiesWithBlock:v19];
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
    objectID = [(PLManagedObject *)self->_object objectID];
    v5 = [PLGenericAlbum fetchAlbumsForAssetObjectID:objectID libraryIdentifier:self->_libraryIdentifier managedObjectContext:self->_moc];

    if ([v5 isSuccess])
    {
      result = [v5 result];
      v7 = self->_albumsEligibleForSearchIndexing;
      self->_albumsEligibleForSearchIndexing = result;
    }

    else
    {
      v8 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        objectID2 = [(PLManagedObject *)self->_object objectID];
        error = [v5 error];
        v12 = 138543618;
        v13 = objectID2;
        v14 = 2112;
        v15 = error;
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
    memoriesBeingCuratedAssets = [(PLManagedObject *)v4 memoriesBeingCuratedAssets];
    v7 = [memoriesBeingCuratedAssets countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(memoriesBeingCuratedAssets);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEligibleForSearchIndexing])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [memoriesBeingCuratedAssets countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    additionalAttributes = [(PLManagedObject *)v4 additionalAttributes];
    v6 = [PLSceneClassification fetchSceneClassificationsForAdditionalAttributes:additionalAttributes managedObjectContext:self->_moc];

    if ([v6 isSuccess])
    {
      result = [v6 result];
      v8 = self->_allSceneClasifications;
      self->_allSceneClasifications = result;
    }

    else
    {
      v9 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        objectID = [(PLManagedObject *)self->_object objectID];
        error = [v6 error];
        v13 = 138543618;
        v14 = objectID;
        v15 = 2112;
        v16 = error;
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
    objectID = [(PLManagedObject *)self->_object objectID];
    v5 = [PLDetectedFace fetchDetectedFacesForAssetObjectID:objectID managedObjectContext:self->_moc];

    if ([v5 isSuccess])
    {
      result = [v5 result];
      v7 = self->_allDetectedFaces;
      self->_allDetectedFaces = result;
    }

    else
    {
      v8 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        objectID2 = [(PLManagedObject *)self->_object objectID];
        error = [v5 error];
        v12 = 138543618;
        v13 = objectID2;
        v14 = 2112;
        v15 = error;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error fetching detected faces for asset: %{public}@, error: %@", &v12, 0x16u);
      }
    }

    allDetectedFaces = self->_allDetectedFaces;
  }

  return allDetectedFaces;
}

- (PLSearchIndexingLazyFetchHelper)initWithObject:(id)object libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = PLSearchIndexingLazyFetchHelper;
  v11 = [(PLSearchIndexingLazyFetchHelper *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, object);
    v12->_libraryIdentifier = identifier;
    objc_storeStrong(&v12->_moc, context);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationsByPersonUUID = v12->_relationsByPersonUUID;
    v12->_relationsByPersonUUID = v13;
  }

  return v12;
}

@end