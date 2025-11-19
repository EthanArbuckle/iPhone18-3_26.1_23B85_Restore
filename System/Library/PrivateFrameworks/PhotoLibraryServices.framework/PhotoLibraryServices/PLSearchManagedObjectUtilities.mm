@interface PLSearchManagedObjectUtilities
+ (id)bundleIdentifierForManagedObject:(id)a3 wellKnownLibraryIdentifier:(int64_t)a4;
+ (id)psiObjectForIdentifierRequiringAdditionalWork:(id)a3 entity:(unint64_t)a4;
+ (id)psiObjectForObject:(id)a3 fetchHelper:(id)a4 partialUpdateMask:(int64_t)a5 indexingContext:(id)a6;
+ (id)searchableItemForObject:(id)a3 fetchHelper:(id)a4 partialUpdateMask:(int64_t)a5 libraryIdentifier:(int64_t)a6 indexingContext:(id)a7 embeddingsFetcher:(id)a8;
@end

@implementation PLSearchManagedObjectUtilities

+ (id)bundleIdentifierForManagedObject:(id)a3 wellKnownLibraryIdentifier:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 entity];
  v7 = [v6 name];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [PLSpotlightDonationUtilities bundleIdentifierForAsset:v5 wellKnownLibraryIdentifier:a4];
  }

  else
  {
    +[PLSpotlightDonationUtilities photosBundleIdentifier];
  }
  v10 = ;

  return v10;
}

+ (id)searchableItemForObject:(id)a3 fetchHelper:(id)a4 partialUpdateMask:(int64_t)a5 libraryIdentifier:(int64_t)a6 indexingContext:(id)a7 embeddingsFetcher:(id)a8
{
  v81 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = [v13 entity];
  v18 = [v17 name];
  v19 = +[PLManagedAsset entityName];
  v20 = [v18 isEqualToString:v19];

  if (!v20)
  {
    v30 = [v13 entity];
    v31 = [v30 name];
    v32 = +[PLManagedAlbum entityName];
    v74 = v14;
    if (([v31 isEqualToString:v32] & 1) == 0)
    {
      v33 = [v13 entity];
      v34 = [v33 name];
      v35 = +[PLFetchingAlbum entityName];
      if (([v34 isEqualToString:v35] & 1) == 0)
      {
        v44 = [v13 entity];
        [v44 name];
        v45 = v73 = v15;
        +[PLCloudSharedAlbum entityName];
        v46 = v72 = v16;
        v71 = [v45 isEqualToString:v46];

        v16 = v72;
        v15 = v73;

        if ((v71 & 1) == 0)
        {
          v47 = [v13 entity];
          v48 = [v47 name];
          v49 = +[PLCollectionShare entityName];
          v50 = [v48 isEqualToString:v49];

          if (v50)
          {
            v51 = v13;
            v22 = [v51 uuid];
            v52 = [PLSpotlightCollectionShareTranslator spotlightSearchableItemFromCollectionShare:v51];
          }

          else
          {
            v53 = [v13 entity];
            v54 = [v53 name];
            v55 = +[PLMemory entityName];
            v56 = [v54 isEqualToString:v55];

            if (v56)
            {
              v51 = v13;
              v22 = [v51 uuid];
              v52 = [PLSpotlightMemoryTranslator spotlightSearchableItemFromMemory:v51];
            }

            else
            {
              v57 = [v13 entity];
              v58 = [v57 name];
              v59 = +[PLPhotosHighlight entityName];
              v60 = [v58 isEqualToString:v59];

              if (v60)
              {
                v51 = v13;
                v22 = [v51 uuid];
                v52 = [PLSpotlightHighlightTranslator spotlightSearchableItemFromHighlight:v51];
              }

              else
              {
                v61 = [v13 entity];
                v62 = [v61 name];
                v63 = +[PLPerson entityName];
                v64 = [v62 isEqualToString:v63];

                if (!v64)
                {
                  v65 = [v13 entity];
                  v66 = [v65 name];
                  v67 = +[PLGraphNode entityName];
                  v68 = [v66 isEqualToString:v67];

                  if (v68)
                  {
                    v25 = 0;
                    v22 = 0;
                    v15 = v73;
                    v14 = v74;
                    v16 = v72;
                    goto LABEL_19;
                  }

                  v37 = PLSearchBackendIndexingEngineGetLog();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    v69 = [v13 entity];
                    v70 = [v69 name];
                    *buf = 138543362;
                    v76 = v70;
                    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Invalid entity to process for search indexing: %{public}@", buf, 0xCu);
                  }

                  v25 = 0;
                  v22 = 0;
                  v15 = v73;
                  v14 = v74;
                  v16 = v72;
LABEL_18:

                  goto LABEL_19;
                }

                v51 = v13;
                v22 = [v51 personUUID];
                v52 = [PLSpotlightPersonTranslator spotlightSearchableItemFromPerson:v51];
              }
            }
          }

          v25 = v52;

          v15 = v73;
          v14 = v74;
          v16 = v72;
          if (!v25)
          {
            goto LABEL_19;
          }

LABEL_16:
          v37 = PLSearchBackendIndexWorkerGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            [v13 entity];
            v38 = v16;
            v40 = v39 = v14;
            [v40 name];
            v42 = v41 = v15;
            *buf = 138543874;
            v76 = @"inserting";
            v77 = 2114;
            v78 = v42;
            v79 = 2114;
            v80 = v22;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "search: %{public}@ object of entity %{public}@ uuid: %{public}@ ", buf, 0x20u);

            v15 = v41;
            v14 = v39;
            v16 = v38;
          }

          goto LABEL_18;
        }

LABEL_15:
        v36 = v13;
        v22 = [v36 uuid];
        v25 = [PLSpotlightAlbumTranslator spotlightSearchableItemFromAlbum:v36];

        v14 = v74;
        if (!v25)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v21 = v13;
  v22 = [v21 uuid];
  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = 3;
  }

  v24 = [v21 documentObservation];
  v25 = [PLSpotlightAssetTranslator partialSpotlightSearchableItemFromAsset:v21 fetchHelper:v14 libraryIdentifier:a6 propertySets:v23 indexingContext:v15 documentObservation:v24 embeddingsFetcher:v16];

  v26 = PLSearchBackendIndexWorkerGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = PLSearchIndexingAssetPropertySetDescription(v23);
    v28 = [v25 isUpdate];
    v29 = @"N";
    *buf = 138543874;
    v76 = v22;
    v77 = 2114;
    if (v28)
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

+ (id)psiObjectForIdentifierRequiringAdditionalWork:(id)a3 entity:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a4 > 9)
  {
    goto LABEL_4;
  }

  if (a4 != 7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLSearchManagedObjectUtilities.m" lineNumber:105 description:@"Invalid entity for additional work"];

LABEL_4:
    v9 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v11 = [PLSearchEntity decodeIdentifierString:v7 intoLabel:&v17 type:&v18 outIdentifier:&v16];
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
      v15 = [v11 error];
      *buf = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to decode search entity identifier: %{public}@, error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_5:

  return v9;
}

+ (id)psiObjectForObject:(id)a3 fetchHelper:(id)a4 partialUpdateMask:(int64_t)a5 indexingContext:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 entity];
  v13 = [v12 name];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 isEqualToString:v14];

  if (!v15)
  {
    v19 = [v9 entity];
    v20 = [v19 name];
    v21 = +[PLManagedAlbum entityName];
    if ([v20 isEqualToString:v21])
    {
LABEL_8:

LABEL_9:
      v25 = [PSIAlbumTranslator psiCollectionFromAlbum:v9 indexingContext:v11];
LABEL_10:
      v18 = v25;
      goto LABEL_11;
    }

    v22 = [v9 entity];
    v23 = [v22 name];
    v24 = +[PLFetchingAlbum entityName];
    if ([v23 isEqualToString:v24])
    {

      goto LABEL_8;
    }

    [v9 entity];
    v27 = v55 = v10;
    [v27 name];
    v28 = v56 = v11;
    v29 = +[PLCloudSharedAlbum entityName];
    v54 = [v28 isEqualToString:v29];

    v11 = v56;
    v10 = v55;

    if (v54)
    {
      goto LABEL_9;
    }

    v30 = [v9 entity];
    v31 = [v30 name];
    v32 = +[PLCollectionShare entityName];
    v33 = [v31 isEqualToString:v32];

    if (v33)
    {
      v11 = v56;
      v25 = [PSICollectionShareTranslator psiCollectionFromCollectionShare:v9 indexingContext:v56];
      goto LABEL_10;
    }

    v34 = [v9 entity];
    v35 = [v34 name];
    v36 = +[PLMemory entityName];
    v37 = [v35 isEqualToString:v36];

    if (v37)
    {
      v11 = v56;
      v25 = [PSIMemoryTranslator psiCollectionFromMemory:v9 indexingContext:v56];
      goto LABEL_10;
    }

    v38 = [v9 entity];
    v39 = [v38 name];
    v40 = +[PLPhotosHighlight entityName];
    v41 = [v39 isEqualToString:v40];

    if ((v41 & 1) == 0)
    {
      v42 = [v9 entity];
      v43 = [v42 name];
      v44 = +[PLGraphNode entityName];
      v45 = [v43 isEqualToString:v44];

      if (v45)
      {
        v46 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:v9];
        v18 = [PSISearchEntityTranslator psiGroupFromSearchEntity:v46];

        goto LABEL_23;
      }

      v47 = [v9 entity];
      v48 = [v47 name];
      v49 = +[PLPerson entityName];
      v50 = [v48 isEqualToString:v49];

      if ((v50 & 1) == 0)
      {
        v51 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = [v9 entity];
          v53 = [v52 name];
          *buf = 138543362;
          v58 = v53;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Invalid entity to process for search indexing: %{public}@", buf, 0xCu);
        }
      }
    }

    v18 = 0;
LABEL_23:
    v11 = v56;
    goto LABEL_11;
  }

  if (!a5)
  {
    a5 = 3;
  }

  v16 = v9;
  v17 = [v16 documentObservation];
  v18 = [PSIAssetTranslator psiAssetFromAsset:v16 fetchHelper:v10 propertySets:a5 indexingContext:v11 documentObservation:v17];

LABEL_11:

  return v18;
}

@end