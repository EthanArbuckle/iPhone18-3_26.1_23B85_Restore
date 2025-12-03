@interface PLSearchManagedObjectUtilities
+ (id)bundleIdentifierForManagedObject:(id)object wellKnownLibraryIdentifier:(int64_t)identifier;
+ (id)psiObjectForIdentifierRequiringAdditionalWork:(id)work entity:(unint64_t)entity;
+ (id)psiObjectForObject:(id)object fetchHelper:(id)helper partialUpdateMask:(int64_t)mask indexingContext:(id)context;
+ (id)searchableItemForObject:(id)object fetchHelper:(id)helper partialUpdateMask:(int64_t)mask libraryIdentifier:(int64_t)identifier indexingContext:(id)context embeddingsFetcher:(id)fetcher;
@end

@implementation PLSearchManagedObjectUtilities

+ (id)bundleIdentifierForManagedObject:(id)object wellKnownLibraryIdentifier:(int64_t)identifier
{
  objectCopy = object;
  entity = [objectCopy entity];
  name = [entity name];
  v8 = +[PLManagedAsset entityName];
  v9 = [name isEqualToString:v8];

  if (v9)
  {
    [PLSpotlightDonationUtilities bundleIdentifierForAsset:objectCopy wellKnownLibraryIdentifier:identifier];
  }

  else
  {
    +[PLSpotlightDonationUtilities photosBundleIdentifier];
  }
  v10 = ;

  return v10;
}

+ (id)searchableItemForObject:(id)object fetchHelper:(id)helper partialUpdateMask:(int64_t)mask libraryIdentifier:(int64_t)identifier indexingContext:(id)context embeddingsFetcher:(id)fetcher
{
  v81 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helperCopy = helper;
  contextCopy = context;
  fetcherCopy = fetcher;
  entity = [objectCopy entity];
  name = [entity name];
  v19 = +[PLManagedAsset entityName];
  v20 = [name isEqualToString:v19];

  if (!v20)
  {
    entity2 = [objectCopy entity];
    name2 = [entity2 name];
    v32 = +[PLManagedAlbum entityName];
    v74 = helperCopy;
    if (([name2 isEqualToString:v32] & 1) == 0)
    {
      entity3 = [objectCopy entity];
      name3 = [entity3 name];
      v35 = +[PLFetchingAlbum entityName];
      if (([name3 isEqualToString:v35] & 1) == 0)
      {
        entity4 = [objectCopy entity];
        [entity4 name];
        v45 = v73 = contextCopy;
        +[PLCloudSharedAlbum entityName];
        v46 = v72 = fetcherCopy;
        v71 = [v45 isEqualToString:v46];

        fetcherCopy = v72;
        contextCopy = v73;

        if ((v71 & 1) == 0)
        {
          entity5 = [objectCopy entity];
          name4 = [entity5 name];
          v49 = +[PLCollectionShare entityName];
          v50 = [name4 isEqualToString:v49];

          if (v50)
          {
            v51 = objectCopy;
            uuid = [v51 uuid];
            v52 = [PLSpotlightCollectionShareTranslator spotlightSearchableItemFromCollectionShare:v51];
          }

          else
          {
            entity6 = [objectCopy entity];
            name5 = [entity6 name];
            v55 = +[PLMemory entityName];
            v56 = [name5 isEqualToString:v55];

            if (v56)
            {
              v51 = objectCopy;
              uuid = [v51 uuid];
              v52 = [PLSpotlightMemoryTranslator spotlightSearchableItemFromMemory:v51];
            }

            else
            {
              entity7 = [objectCopy entity];
              name6 = [entity7 name];
              v59 = +[PLPhotosHighlight entityName];
              v60 = [name6 isEqualToString:v59];

              if (v60)
              {
                v51 = objectCopy;
                uuid = [v51 uuid];
                v52 = [PLSpotlightHighlightTranslator spotlightSearchableItemFromHighlight:v51];
              }

              else
              {
                entity8 = [objectCopy entity];
                name7 = [entity8 name];
                v63 = +[PLPerson entityName];
                v64 = [name7 isEqualToString:v63];

                if (!v64)
                {
                  entity9 = [objectCopy entity];
                  name8 = [entity9 name];
                  v67 = +[PLGraphNode entityName];
                  v68 = [name8 isEqualToString:v67];

                  if (v68)
                  {
                    v25 = 0;
                    uuid = 0;
                    contextCopy = v73;
                    helperCopy = v74;
                    fetcherCopy = v72;
                    goto LABEL_19;
                  }

                  v37 = PLSearchBackendIndexingEngineGetLog();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    entity10 = [objectCopy entity];
                    name9 = [entity10 name];
                    *buf = 138543362;
                    v76 = name9;
                    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Invalid entity to process for search indexing: %{public}@", buf, 0xCu);
                  }

                  v25 = 0;
                  uuid = 0;
                  contextCopy = v73;
                  helperCopy = v74;
                  fetcherCopy = v72;
LABEL_18:

                  goto LABEL_19;
                }

                v51 = objectCopy;
                uuid = [v51 personUUID];
                v52 = [PLSpotlightPersonTranslator spotlightSearchableItemFromPerson:v51];
              }
            }
          }

          v25 = v52;

          contextCopy = v73;
          helperCopy = v74;
          fetcherCopy = v72;
          if (!v25)
          {
            goto LABEL_19;
          }

LABEL_16:
          v37 = PLSearchBackendIndexWorkerGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            [objectCopy entity];
            v38 = fetcherCopy;
            v40 = v39 = helperCopy;
            [v40 name];
            v42 = v41 = contextCopy;
            *buf = 138543874;
            v76 = @"inserting";
            v77 = 2114;
            v78 = v42;
            v79 = 2114;
            v80 = uuid;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "search: %{public}@ object of entity %{public}@ uuid: %{public}@ ", buf, 0x20u);

            contextCopy = v41;
            helperCopy = v39;
            fetcherCopy = v38;
          }

          goto LABEL_18;
        }

LABEL_15:
        v36 = objectCopy;
        uuid = [v36 uuid];
        v25 = [PLSpotlightAlbumTranslator spotlightSearchableItemFromAlbum:v36];

        helperCopy = v74;
        if (!v25)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v21 = objectCopy;
  uuid = [v21 uuid];
  if (mask)
  {
    maskCopy = mask;
  }

  else
  {
    maskCopy = 3;
  }

  documentObservation = [v21 documentObservation];
  v25 = [PLSpotlightAssetTranslator partialSpotlightSearchableItemFromAsset:v21 fetchHelper:helperCopy libraryIdentifier:identifier propertySets:maskCopy indexingContext:contextCopy documentObservation:documentObservation embeddingsFetcher:fetcherCopy];

  v26 = PLSearchBackendIndexWorkerGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = PLSearchIndexingAssetPropertySetDescription(maskCopy);
    isUpdate = [v25 isUpdate];
    v29 = @"N";
    *buf = 138543874;
    v76 = uuid;
    v77 = 2114;
    if (isUpdate)
    {
      v29 = @"Y";
    }

    v78 = v27;
    v79 = 2114;
    v80 = v29;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "search: donation for asset %{public}@ with property sets %{public}@ isUpdate: %{public}@", buf, 0x20u);
  }

  if (v25)
  {
    goto LABEL_16;
  }

LABEL_19:

  return v25;
}

+ (id)psiObjectForIdentifierRequiringAdditionalWork:(id)work entity:(unint64_t)entity
{
  v23 = *MEMORY[0x1E69E9840];
  workCopy = work;
  if (entity > 9)
  {
    goto LABEL_4;
  }

  if (entity != 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchManagedObjectUtilities.m" lineNumber:105 description:@"Invalid entity for additional work"];

LABEL_4:
    v9 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v11 = [PLSearchEntity decodeIdentifierString:workCopy intoLabel:&v17 type:&v18 outIdentifier:&v16];
  v12 = v17;
  v13 = v16;
  if ([v11 isSuccess])
  {
    v9 = [PSISearchEntityTranslator zeroScorePSIGroupFromLabel:v12 type:v18 identifier:v13];
  }

  else
  {
    v14 = PLSearchBackendIndexWorkerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      error = [v11 error];
      *buf = 138543618;
      v20 = workCopy;
      v21 = 2112;
      v22 = error;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to decode search entity identifier: %{public}@, error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_5:

  return v9;
}

+ (id)psiObjectForObject:(id)object fetchHelper:(id)helper partialUpdateMask:(int64_t)mask indexingContext:(id)context
{
  v59 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helperCopy = helper;
  contextCopy = context;
  entity = [objectCopy entity];
  name = [entity name];
  v14 = +[PLManagedAsset entityName];
  v15 = [name isEqualToString:v14];

  if (!v15)
  {
    entity2 = [objectCopy entity];
    name2 = [entity2 name];
    v21 = +[PLManagedAlbum entityName];
    if ([name2 isEqualToString:v21])
    {
LABEL_8:

LABEL_9:
      v25 = [PSIAlbumTranslator psiCollectionFromAlbum:objectCopy indexingContext:contextCopy];
LABEL_10:
      v18 = v25;
      goto LABEL_11;
    }

    entity3 = [objectCopy entity];
    name3 = [entity3 name];
    v24 = +[PLFetchingAlbum entityName];
    if ([name3 isEqualToString:v24])
    {

      goto LABEL_8;
    }

    [objectCopy entity];
    v27 = v55 = helperCopy;
    [v27 name];
    v28 = v56 = contextCopy;
    v29 = +[PLCloudSharedAlbum entityName];
    v54 = [v28 isEqualToString:v29];

    contextCopy = v56;
    helperCopy = v55;

    if (v54)
    {
      goto LABEL_9;
    }

    entity4 = [objectCopy entity];
    name4 = [entity4 name];
    v32 = +[PLCollectionShare entityName];
    v33 = [name4 isEqualToString:v32];

    if (v33)
    {
      contextCopy = v56;
      v25 = [PSICollectionShareTranslator psiCollectionFromCollectionShare:objectCopy indexingContext:v56];
      goto LABEL_10;
    }

    entity5 = [objectCopy entity];
    name5 = [entity5 name];
    v36 = +[PLMemory entityName];
    v37 = [name5 isEqualToString:v36];

    if (v37)
    {
      contextCopy = v56;
      v25 = [PSIMemoryTranslator psiCollectionFromMemory:objectCopy indexingContext:v56];
      goto LABEL_10;
    }

    entity6 = [objectCopy entity];
    name6 = [entity6 name];
    v40 = +[PLPhotosHighlight entityName];
    v41 = [name6 isEqualToString:v40];

    if ((v41 & 1) == 0)
    {
      entity7 = [objectCopy entity];
      name7 = [entity7 name];
      v44 = +[PLGraphNode entityName];
      v45 = [name7 isEqualToString:v44];

      if (v45)
      {
        v46 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:objectCopy];
        v18 = [PSISearchEntityTranslator psiGroupFromSearchEntity:v46];

        goto LABEL_23;
      }

      entity8 = [objectCopy entity];
      name8 = [entity8 name];
      v49 = +[PLPerson entityName];
      v50 = [name8 isEqualToString:v49];

      if ((v50 & 1) == 0)
      {
        v51 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          entity9 = [objectCopy entity];
          name9 = [entity9 name];
          *buf = 138543362;
          v58 = name9;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Invalid entity to process for search indexing: %{public}@", buf, 0xCu);
        }
      }
    }

    v18 = 0;
LABEL_23:
    contextCopy = v56;
    goto LABEL_11;
  }

  if (!mask)
  {
    mask = 3;
  }

  v16 = objectCopy;
  documentObservation = [v16 documentObservation];
  v18 = [PSIAssetTranslator psiAssetFromAsset:v16 fetchHelper:helperCopy propertySets:mask indexingContext:contextCopy documentObservation:documentObservation];

LABEL_11:

  return v18;
}

@end