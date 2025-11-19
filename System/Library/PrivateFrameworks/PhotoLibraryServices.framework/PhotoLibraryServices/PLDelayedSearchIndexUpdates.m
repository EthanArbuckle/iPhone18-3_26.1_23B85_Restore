@interface PLDelayedSearchIndexUpdates
+ (void)_insertWorkItemAndSignalIfNeededWithIdentifier:(id)a3 flags:(int64_t)a4 library:(id)a5;
+ (void)_recordAssetIfNeededForRelationshipChange:(id)a3 flags:(int64_t)a4;
+ (void)recordAdditionalAssetAttributesIfNeeded:(id)a3;
+ (void)recordAlbumIfNeeded:(id)a3;
+ (void)recordAssetDescriptionIfNeeded:(id)a3;
+ (void)recordAssetIfNeeded:(id)a3;
+ (void)recordCollectionShareIfNeeded:(id)a3;
+ (void)recordDetectedFaceIfNeeded:(id)a3;
+ (void)recordHighlightIfNeeded:(id)a3;
+ (void)recordMediaAnalysisAssetAttributesIfNeeded:(id)a3;
+ (void)recordMemoryIfNeeded:(id)a3;
+ (void)recordPersonIfNeeded:(id)a3;
@end

@implementation PLDelayedSearchIndexUpdates

+ (void)_insertWorkItemAndSignalIfNeededWithIdentifier:(id)a3 flags:(int64_t)a4 library:(id)a5
{
  v10 = a5;
  v7 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:a3 flags:a4 inLibrary:?];
  v8 = v7;
  if (v7)
  {
    v9 = +[PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobType:](PLBackgroundJobWorkerTypes, "workerTypesMaskForBackgroundJobType:", [v7 jobType]);
    [v10 signalBackgroundProcessingNeededForWorkerTypes:v9];
  }
}

+ (void)_recordAssetIfNeededForRelationshipChange:(id)a3 flags:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = v6;
    v8 = [v6 isDeleted];
    v7 = v16;
    if ((v8 & 1) == 0)
    {
      v9 = [v16 uuid];

      v7 = v16;
      if (v9)
      {
        v10 = [v16 photoLibrary];
        v11 = [v10 libraryServicesManager];
        v12 = +[PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLManagedAsset, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", [v11 wellKnownPhotoLibraryIdentifier]);
        v13 = [v12 evaluateWithObject:v16];

        v7 = v16;
        if (v13)
        {
          v14 = [v16 uuid];
          v15 = [v16 photoLibrary];
          [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v14 flags:a4 library:v15];

          v7 = v16;
        }
      }
    }
  }
}

+ (void)recordMediaAnalysisAssetAttributesIfNeeded:(id)a3
{
  v18 = a3;
  if (PLPlatformSearchSupported())
  {
    v4 = [v18 changedValues];
    v5 = [v4 objectForKeyedSubscript:@"characterRecognitionAttributes"];

    if (v5 || [v18 isDeleted])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v4 objectForKeyedSubscript:@"visualSearchAttributes"];

    v8 = [v18 isDeleted];
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = v6 | 4;
    }

    else
    {
      v10 = v6;
    }

    v11 = [v4 objectForKeyedSubscript:@"mediaAnalysisVersion"];

    v12 = [v4 objectForKeyedSubscript:@"mediaAnalysisImageVersion"];

    v13 = [v4 objectForKeyedSubscript:@"imageEmbeddingVersion"];

    v14 = [v4 objectForKeyedSubscript:@"videoEmbeddingVersion"];
    v15 = v13 | v14;

    if (v15 | v11 | v12)
    {
      v16 = v10 | 4;
    }

    else
    {
      v16 = v10;
    }

    if (v16)
    {
      v17 = [v18 asset];
      [a1 _recordAssetIfNeededForRelationshipChange:v17 flags:v16];
    }
  }
}

+ (void)recordAdditionalAssetAttributesIfNeeded:(id)a3
{
  v18 = a3;
  v4 = PLPlatformSearchSupported();
  v5 = v18;
  if (v4)
  {
    v6 = [v18 changedValues];
    v7 = [v6 objectForKeyedSubscript:@"reverseLocationDataIsValid"];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 objectForKeyedSubscript:@"reverseLocationData"];
      v8 = v9 != 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"keywords"];

    v11 = [v6 objectForKeyedSubscript:@"title"];

    v12 = [v6 objectForKeyedSubscript:@"sceneClassifications"];

    v13 = [v6 objectForKeyedSubscript:@"temporalSceneClassifications"];

    v14 = [v6 objectForKeyedSubscript:@"cameraCaptureDevice"];

    v15 = [v6 objectForKeyedSubscript:@"assetDescription"];

    v16 = [v6 objectForKeyedSubscript:@"accessibilityDescription"];

    if (v8 || v10 || v11 || v12 || v13 || v14 || v15 || v16)
    {
      v17 = [v18 asset];
      [a1 _recordAssetIfNeededForRelationshipChange:v17 flags:4];
    }

    v5 = v18;
  }
}

+ (void)recordAssetDescriptionIfNeeded:(id)a3
{
  v10 = a3;
  v4 = PLPlatformSearchSupported();
  v5 = v10;
  if (v4)
  {
    v6 = [v10 changedValues];
    v7 = [v6 objectForKeyedSubscript:@"longDescription"];

    if (([v10 isDeleted] & 1) != 0 || v7)
    {
      v8 = [v10 assetAttributes];
      v9 = [v8 asset];
      [a1 _recordAssetIfNeededForRelationshipChange:v9 flags:4];
    }

    v5 = v10;
  }
}

+ (void)recordPersonIfNeeded:(id)a3
{
  v13 = a3;
  v4 = PLPlatformSearchSupported();
  v5 = v13;
  if (v4)
  {
    v6 = [v13 personUUID];
    if (!v6 || ([v13 isNotYetEligibleForSearch] & 1) != 0)
    {
      goto LABEL_14;
    }

    v7 = [v13 changedValues];
    if (([v13 isDeleted] & 1) == 0)
    {
      v8 = [v7 objectForKeyedSubscript:@"displayName"];
      if (v8 || ([v7 objectForKeyedSubscript:@"fullName"], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "objectForKeyedSubscript:", @"verifiedType"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v12 = [v7 objectForKeyedSubscript:@"detectionType"];

        if (!v12)
        {
LABEL_13:

LABEL_14:
          v5 = v13;
          goto LABEL_15;
        }
      }
    }

    if ([v13 isEligibleForSearchIndexing])
    {
      v9 = 8194;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v13 photoLibrary];
    [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v6 flags:v9 library:v10];

    v11 = [v13 photoLibrary];
    [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v6 flags:256 library:v11];

    goto LABEL_13;
  }

LABEL_15:
}

+ (void)recordDetectedFaceIfNeeded:(id)a3
{
  v15 = a3;
  v4 = PLPlatformSearchSupported();
  v5 = v15;
  if (v4)
  {
    v6 = [v15 associatedAssetForFaceOrTorso:1 orTemporal:1];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if ([v6 isDeleted])
    {
      goto LABEL_13;
    }

    v8 = [v15 associatedPersonForFaceOrTorso:1 orTemporal:1];
    v9 = [v8 shouldIndexOnAssetsForSearch];

    if (!v9)
    {
      goto LABEL_13;
    }

    if ([v15 isDeleted])
    {
      [a1 _recordAssetIfNeededForRelationshipChange:v7 flags:4];
LABEL_13:

      v5 = v15;
      goto LABEL_14;
    }

    v10 = [v15 changedValues];
    if (([v15 isInserted] & 1) == 0)
    {
      v11 = [v10 objectForKeyedSubscript:@"personForFace"];
      if (v11 || ([v10 objectForKeyedSubscript:@"personForTemporalDetectedFaces"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v14 = [v10 objectForKeyedSubscript:@"ageType"];

        if (!v14)
        {
          goto LABEL_12;
        }
      }
    }

    v12 = [v15 uuid];
    v13 = [v15 photoLibrary];
    [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v12 flags:16 library:v13];

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

+ (void)recordCollectionShareIfNeeded:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLPlatformSearchSupported())
  {
    v5 = [v4 uuid];

    if (v5)
    {
      v6 = [v4 changedValues];
      if (([v4 isDeleted] & 1) == 0 && (objc_msgSend(v4, "isInserted") & 1) == 0)
      {
        v7 = [v6 objectForKeyedSubscript:@"title"];
        if (v7)
        {
        }

        else
        {
          v8 = [v6 objectForKeyedSubscript:@"creationDate"];

          if (!v8)
          {
LABEL_15:

            goto LABEL_16;
          }
        }
      }

      if (([v4 isDeleted] & 1) != 0 || (objc_msgSend(v4, "isEligibleForSearchIndexing") & 1) == 0)
      {
        v10 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v4 uuid];
          v14 = 138412290;
          v15 = v11;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "property changes to collection share: %@ indicate remove from index", &v14, 0xCu);
        }

        v9 = 1;
      }

      else
      {
        v9 = 4096;
      }

      v12 = [v4 uuid];
      v13 = [v4 photoLibrary];
      [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v12 flags:v9 library:v13];

      goto LABEL_15;
    }
  }

LABEL_16:
}

+ (void)recordMemoryIfNeeded:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLPlatformSearchSupported())
  {
    v5 = [v4 uuid];

    if (v5)
    {
      if (([v4 isDeleted] & 1) != 0 || (objc_msgSend(v4, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "libraryServicesManager"), v7 = objc_claimAutoreleasedReturnValue(), +[PLMemory isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLMemory, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", objc_msgSend(v7, "wellKnownPhotoLibraryIdentifier")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "evaluateWithObject:", v4), v8, v7, v6, (v9 & 1) == 0))
      {
        v11 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v4 uuid];
          v15 = 138412290;
          v16 = v12;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "property changes to memory: %@ indicate remove from index", &v15, 0xCu);
        }

        v10 = 1;
      }

      else
      {
        v10 = 128;
      }

      v13 = [v4 uuid];
      v14 = [v4 photoLibrary];
      [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v13 flags:v10 library:v14];
    }
  }
}

+ (void)recordHighlightIfNeeded:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLPlatformSearchSupported())
  {
    v5 = [v4 uuid];

    if (v5)
    {
      v6 = [v4 changedValues];
      if ([v4 isDeleted] & 1) != 0 || (objc_msgSend(v4, "isInserted"))
      {
        goto LABEL_30;
      }

      v7 = [v6 objectForKeyedSubscript:@"verboseSmartDescription"];
      if (!v7)
      {
        v7 = [v6 objectForKeyedSubscript:@"subtitle"];
        if (!v7)
        {
          v7 = [v6 objectForKeyedSubscript:@"title"];
          if (!v7)
          {
            v7 = [v6 objectForKeyedSubscript:@"startDate"];
            if (!v7)
            {
              v7 = [v6 objectForKeyedSubscript:@"endDate"];
              if (!v7)
              {
                v7 = [v6 objectForKeyedSubscript:@"startTimeZoneOffset"];
                if (!v7)
                {
                  v8 = [v6 objectForKeyedSubscript:@"endTimeZoneOffset"];
                  if (!v8)
                  {
                    v9 = [v6 objectForKeyedSubscript:@"type"];
                    if (!v9)
                    {
                      v10 = [v6 objectForKeyedSubscript:@"assets"];
                      if (!v10)
                      {
                        v11 = [v6 objectForKeyedSubscript:@"dayGroupAssets"];
                        if (!v11)
                        {
                          v12 = [v6 objectForKeyedSubscript:@"childDayGroupPhotosHighlights"];
                          if (!v12)
                          {
                            v13 = [v6 objectForKeyedSubscript:@"moments"];
                            if (!v13)
                            {
                              v14 = [v6 objectForKeyedSubscript:@"keyAssetPrivate"];
                              if (!v14)
                              {
                                v15 = [v6 objectForKeyedSubscript:@"dayGroupKeyAssetPrivate"];
                                if (!v15)
                                {
                                  v16 = [v6 objectForKeyedSubscript:@"keyAssetShared"];
                                  if (!v16)
                                  {
                                    v22 = [v6 objectForKeyedSubscript:@"dayGroupKeyAssetShared"];

                                    if (!v22)
                                    {
LABEL_37:

                                      goto LABEL_38;
                                    }

LABEL_30:
                                    if (([v4 isDeleted] & 1) != 0 || (objc_msgSend(v4, "isEligibleForSearchIndexing") & 1) == 0)
                                    {
                                      v18 = PLSearchBackendIndexStatusGetLog();
                                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                                      {
                                        v19 = [v4 uuid];
                                        v23 = 138412290;
                                        v24 = v19;
                                        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "property changes to highlight: %@ indicate remove from index", &v23, 0xCu);
                                      }

                                      v17 = 1;
                                    }

                                    else
                                    {
                                      v17 = 64;
                                    }

                                    v20 = [v4 uuid];
                                    v21 = [v4 photoLibrary];
                                    [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v20 flags:v17 library:v21];

                                    goto LABEL_37;
                                  }

                                  v15 = 0;
                                }

                                v14 = 0;
                              }

                              v13 = 0;
                            }

                            v12 = 0;
                          }

                          v11 = 0;
                        }

                        v10 = 0;
                      }

                      v9 = 0;
                    }

                    v8 = 0;
                  }

                  v7 = 0;
                }
              }
            }
          }
        }
      }

      goto LABEL_30;
    }
  }

LABEL_38:
}

+ (void)recordAlbumIfNeeded:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLPlatformSearchSupported())
  {
    v5 = [v4 uuid];

    if (v5)
    {
      if ([v4 isCandidateForSearchIndexing])
      {
        v6 = [v4 changedValues];
        if (([v4 isDeleted] & 1) == 0 && (objc_msgSend(v4, "isInserted") & 1) == 0)
        {
          v7 = [v6 objectForKeyedSubscript:@"trashedState"];
          if (v7 || ([v6 objectForKeyedSubscript:@"startDate"], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "objectForKeyedSubscript:", @"endDate"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "objectForKeyedSubscript:", @"assets"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v18 = [v6 objectForKeyedSubscript:@"title"];

            if (!v18)
            {
LABEL_20:

              goto LABEL_21;
            }
          }
        }

        if (([v4 isDeleted] & 1) != 0 || (objc_msgSend(v4, "photoLibrary"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "libraryServicesManager"), v9 = objc_claimAutoreleasedReturnValue(), +[PLGenericAlbum isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLGenericAlbum, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", objc_msgSend(v9, "wellKnownPhotoLibraryIdentifier")), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "evaluateWithObject:", v4), v10, v9, v8, !v11))
        {
          v14 = PLSearchBackendIndexStatusGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v4 uuid];
            v19 = 138412290;
            v20 = v15;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "property changes to album: %@ indicate remove from index", &v19, 0xCu);
          }

          v13 = 1;
        }

        else if (([v4 isInserted] & 1) != 0 || (objc_msgSend(v6, "objectForKeyedSubscript:", @"trashedState"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
        {
          v13 = 34;
        }

        else
        {
          v13 = 32;
        }

        v16 = [v4 uuid];
        v17 = [v4 photoLibrary];
        [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v16 flags:v13 library:v17];

        goto LABEL_20;
      }
    }
  }

LABEL_21:
}

+ (void)recordAssetIfNeeded:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLPlatformSearchSupported())
  {
    v5 = [v4 uuid];

    if (v5)
    {
      v6 = [v4 isEligibleForSearchIndexing];
      v7 = [v4 changedValues];
      if (([v4 isDeleted] & 1) == 0)
      {
        if (v6)
        {
          goto LABEL_8;
        }

        if ([v4 isInserted])
        {
          goto LABEL_29;
        }

        v31 = [v7 objectForKeyedSubscript:@"visibilityState"];
        if (v31 || ([v7 objectForKeyedSubscript:@"savedAssetType"], (v31 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "objectForKeyedSubscript:", @"hidden"), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v32 = [v7 objectForKeyedSubscript:@"trashedState"];

          if (!v32)
          {
            goto LABEL_29;
          }
        }
      }

      v8 = [v4 photoLibrary];
      v9 = [v8 libraryServicesManager];
      v10 = [v9 wellKnownPhotoLibraryIdentifier];

      if (v10 != 3)
      {
        v27 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v4 uuid];
          *buf = 138412290;
          v45 = v28;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "property changes to asset: %@ indicate remove from index", buf, 0xCu);
        }

        v29 = [v4 uuid];
        v30 = [v4 photoLibrary];
        [a1 _insertWorkItemAndSignalIfNeededWithIdentifier:v29 flags:1 library:v30];

        goto LABEL_29;
      }

      if (!v6)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_8:
      v11 = [v7 objectForKeyedSubscript:@"dateCreated"];

      v42 = [v7 objectForKeyedSubscript:@"favorite"];

      v41 = [v7 objectForKeyedSubscript:@"kind"];

      v40 = [v7 objectForKeyedSubscript:@"kindSubtype"];

      v39 = [v7 objectForKeyedSubscript:@"depthType"];

      v38 = [v7 objectForKeyedSubscript:@"avalanchePickType"];

      v37 = [v7 objectForKeyedSubscript:@"playbackVariation"];

      v36 = [v7 objectForKeyedSubscript:@"playbackStyle"];

      v34 = [v7 objectForKeyedSubscript:@"visibilityState"];
      v35 = v11 | v34;

      v12 = [v7 objectForKeyedSubscript:@"savedAssetType"];

      v13 = [v7 objectForKeyedSubscript:@"hidden"];

      [v7 objectForKeyedSubscript:@"trashedState"];
      v14 = v43 = a1;

      v33 = [v7 objectForKeyedSubscript:@"dayGroupHighlightBeingAssets"];

      v15 = [v7 objectForKeyedSubscript:@"albums"];

      v16 = [v7 objectForKeyedSubscript:@"memoriesBeingCuratedAssets"];

      v17 = [v7 objectForKeyedSubscript:@"moment"];

      v18 = [v7 objectForKeyedSubscript:@"libraryScope"];

      v19 = [v7 objectForKeyedSubscript:@"libraryScopeContributors"];

      v20 = [v4 isInserted];
      if (v13)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      if (v14)
      {
        v21 = 1;
      }

      if (v12)
      {
        v21 = 1;
      }

      if (v34)
      {
        v21 = 1;
      }

      v22 = v21 == 0;
      v23 = 14;
      if (v22)
      {
        v23 = 0;
      }

      if (v35 | v12 | v13 | v14 | v42 | v41 | v40 | v39 | v38 | v37 | v36 | v33 | v15 | v16 | v17 | v18 | v19)
      {
        v24 = v23 | 4;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        v25 = [v4 uuid];
        v26 = [v4 photoLibrary];
        [v43 _insertWorkItemAndSignalIfNeededWithIdentifier:v25 flags:v24 library:v26];
      }

      goto LABEL_29;
    }
  }

LABEL_30:
}

@end