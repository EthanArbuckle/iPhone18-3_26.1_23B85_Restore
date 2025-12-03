@interface PLDelayedSearchIndexUpdates
+ (void)_insertWorkItemAndSignalIfNeededWithIdentifier:(id)identifier flags:(int64_t)flags library:(id)library;
+ (void)_recordAssetIfNeededForRelationshipChange:(id)change flags:(int64_t)flags;
+ (void)recordAdditionalAssetAttributesIfNeeded:(id)needed;
+ (void)recordAlbumIfNeeded:(id)needed;
+ (void)recordAssetDescriptionIfNeeded:(id)needed;
+ (void)recordAssetIfNeeded:(id)needed;
+ (void)recordCollectionShareIfNeeded:(id)needed;
+ (void)recordDetectedFaceIfNeeded:(id)needed;
+ (void)recordHighlightIfNeeded:(id)needed;
+ (void)recordMediaAnalysisAssetAttributesIfNeeded:(id)needed;
+ (void)recordMemoryIfNeeded:(id)needed;
+ (void)recordPersonIfNeeded:(id)needed;
@end

@implementation PLDelayedSearchIndexUpdates

+ (void)_insertWorkItemAndSignalIfNeededWithIdentifier:(id)identifier flags:(int64_t)flags library:(id)library
{
  libraryCopy = library;
  v7 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:identifier flags:flags inLibrary:?];
  v8 = v7;
  if (v7)
  {
    v9 = +[PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobType:](PLBackgroundJobWorkerTypes, "workerTypesMaskForBackgroundJobType:", [v7 jobType]);
    [libraryCopy signalBackgroundProcessingNeededForWorkerTypes:v9];
  }
}

+ (void)_recordAssetIfNeededForRelationshipChange:(id)change flags:(int64_t)flags
{
  changeCopy = change;
  v7 = changeCopy;
  if (changeCopy)
  {
    v16 = changeCopy;
    isDeleted = [changeCopy isDeleted];
    v7 = v16;
    if ((isDeleted & 1) == 0)
    {
      uuid = [v16 uuid];

      v7 = v16;
      if (uuid)
      {
        photoLibrary = [v16 photoLibrary];
        libraryServicesManager = [photoLibrary libraryServicesManager];
        v12 = +[PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLManagedAsset, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);
        v13 = [v12 evaluateWithObject:v16];

        v7 = v16;
        if (v13)
        {
          uuid2 = [v16 uuid];
          photoLibrary2 = [v16 photoLibrary];
          [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid2 flags:flags library:photoLibrary2];

          v7 = v16;
        }
      }
    }
  }
}

+ (void)recordMediaAnalysisAssetAttributesIfNeeded:(id)needed
{
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    changedValues = [neededCopy changedValues];
    v5 = [changedValues objectForKeyedSubscript:@"characterRecognitionAttributes"];

    if (v5 || [neededCopy isDeleted])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = [changedValues objectForKeyedSubscript:@"visualSearchAttributes"];

    isDeleted = [neededCopy isDeleted];
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = isDeleted;
    }

    if (v9)
    {
      v10 = v6 | 4;
    }

    else
    {
      v10 = v6;
    }

    v11 = [changedValues objectForKeyedSubscript:@"mediaAnalysisVersion"];

    v12 = [changedValues objectForKeyedSubscript:@"mediaAnalysisImageVersion"];

    v13 = [changedValues objectForKeyedSubscript:@"imageEmbeddingVersion"];

    v14 = [changedValues objectForKeyedSubscript:@"videoEmbeddingVersion"];
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
      asset = [neededCopy asset];
      [self _recordAssetIfNeededForRelationshipChange:asset flags:v16];
    }
  }
}

+ (void)recordAdditionalAssetAttributesIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = PLPlatformSearchSupported();
  v5 = neededCopy;
  if (v4)
  {
    changedValues = [neededCopy changedValues];
    v7 = [changedValues objectForKeyedSubscript:@"reverseLocationDataIsValid"];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [changedValues objectForKeyedSubscript:@"reverseLocationData"];
      v8 = v9 != 0;
    }

    v10 = [changedValues objectForKeyedSubscript:@"keywords"];

    v11 = [changedValues objectForKeyedSubscript:@"title"];

    v12 = [changedValues objectForKeyedSubscript:@"sceneClassifications"];

    v13 = [changedValues objectForKeyedSubscript:@"temporalSceneClassifications"];

    v14 = [changedValues objectForKeyedSubscript:@"cameraCaptureDevice"];

    v15 = [changedValues objectForKeyedSubscript:@"assetDescription"];

    v16 = [changedValues objectForKeyedSubscript:@"accessibilityDescription"];

    if (v8 || v10 || v11 || v12 || v13 || v14 || v15 || v16)
    {
      asset = [neededCopy asset];
      [self _recordAssetIfNeededForRelationshipChange:asset flags:4];
    }

    v5 = neededCopy;
  }
}

+ (void)recordAssetDescriptionIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = PLPlatformSearchSupported();
  v5 = neededCopy;
  if (v4)
  {
    changedValues = [neededCopy changedValues];
    v7 = [changedValues objectForKeyedSubscript:@"longDescription"];

    if (([neededCopy isDeleted] & 1) != 0 || v7)
    {
      assetAttributes = [neededCopy assetAttributes];
      asset = [assetAttributes asset];
      [self _recordAssetIfNeededForRelationshipChange:asset flags:4];
    }

    v5 = neededCopy;
  }
}

+ (void)recordPersonIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = PLPlatformSearchSupported();
  v5 = neededCopy;
  if (v4)
  {
    personUUID = [neededCopy personUUID];
    if (!personUUID || ([neededCopy isNotYetEligibleForSearch] & 1) != 0)
    {
      goto LABEL_14;
    }

    changedValues = [neededCopy changedValues];
    if (([neededCopy isDeleted] & 1) == 0)
    {
      v8 = [changedValues objectForKeyedSubscript:@"displayName"];
      if (v8 || ([changedValues objectForKeyedSubscript:@"fullName"], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"verifiedType"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v12 = [changedValues objectForKeyedSubscript:@"detectionType"];

        if (!v12)
        {
LABEL_13:

LABEL_14:
          v5 = neededCopy;
          goto LABEL_15;
        }
      }
    }

    if ([neededCopy isEligibleForSearchIndexing])
    {
      v9 = 8194;
    }

    else
    {
      v9 = 1;
    }

    photoLibrary = [neededCopy photoLibrary];
    [self _insertWorkItemAndSignalIfNeededWithIdentifier:personUUID flags:v9 library:photoLibrary];

    photoLibrary2 = [neededCopy photoLibrary];
    [self _insertWorkItemAndSignalIfNeededWithIdentifier:personUUID flags:256 library:photoLibrary2];

    goto LABEL_13;
  }

LABEL_15:
}

+ (void)recordDetectedFaceIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = PLPlatformSearchSupported();
  v5 = neededCopy;
  if (v4)
  {
    v6 = [neededCopy associatedAssetForFaceOrTorso:1 orTemporal:1];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if ([v6 isDeleted])
    {
      goto LABEL_13;
    }

    v8 = [neededCopy associatedPersonForFaceOrTorso:1 orTemporal:1];
    shouldIndexOnAssetsForSearch = [v8 shouldIndexOnAssetsForSearch];

    if (!shouldIndexOnAssetsForSearch)
    {
      goto LABEL_13;
    }

    if ([neededCopy isDeleted])
    {
      [self _recordAssetIfNeededForRelationshipChange:v7 flags:4];
LABEL_13:

      v5 = neededCopy;
      goto LABEL_14;
    }

    changedValues = [neededCopy changedValues];
    if (([neededCopy isInserted] & 1) == 0)
    {
      v11 = [changedValues objectForKeyedSubscript:@"personForFace"];
      if (v11 || ([changedValues objectForKeyedSubscript:@"personForTemporalDetectedFaces"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v14 = [changedValues objectForKeyedSubscript:@"ageType"];

        if (!v14)
        {
          goto LABEL_12;
        }
      }
    }

    uuid = [neededCopy uuid];
    photoLibrary = [neededCopy photoLibrary];
    [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid flags:16 library:photoLibrary];

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

+ (void)recordCollectionShareIfNeeded:(id)needed
{
  v16 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    uuid = [neededCopy uuid];

    if (uuid)
    {
      changedValues = [neededCopy changedValues];
      if (([neededCopy isDeleted] & 1) == 0 && (objc_msgSend(neededCopy, "isInserted") & 1) == 0)
      {
        v7 = [changedValues objectForKeyedSubscript:@"title"];
        if (v7)
        {
        }

        else
        {
          v8 = [changedValues objectForKeyedSubscript:@"creationDate"];

          if (!v8)
          {
LABEL_15:

            goto LABEL_16;
          }
        }
      }

      if (([neededCopy isDeleted] & 1) != 0 || (objc_msgSend(neededCopy, "isEligibleForSearchIndexing") & 1) == 0)
      {
        v10 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          uuid2 = [neededCopy uuid];
          v14 = 138412290;
          v15 = uuid2;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "property changes to collection share: %@ indicate remove from index", &v14, 0xCu);
        }

        v9 = 1;
      }

      else
      {
        v9 = 4096;
      }

      uuid3 = [neededCopy uuid];
      photoLibrary = [neededCopy photoLibrary];
      [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid3 flags:v9 library:photoLibrary];

      goto LABEL_15;
    }
  }

LABEL_16:
}

+ (void)recordMemoryIfNeeded:(id)needed
{
  v17 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    uuid = [neededCopy uuid];

    if (uuid)
    {
      if (([neededCopy isDeleted] & 1) != 0 || (objc_msgSend(neededCopy, "photoLibrary"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "libraryServicesManager"), v7 = objc_claimAutoreleasedReturnValue(), +[PLMemory isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLMemory, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", objc_msgSend(v7, "wellKnownPhotoLibraryIdentifier")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "evaluateWithObject:", neededCopy), v8, v7, v6, (v9 & 1) == 0))
      {
        v11 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          uuid2 = [neededCopy uuid];
          v15 = 138412290;
          v16 = uuid2;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "property changes to memory: %@ indicate remove from index", &v15, 0xCu);
        }

        v10 = 1;
      }

      else
      {
        v10 = 128;
      }

      uuid3 = [neededCopy uuid];
      photoLibrary = [neededCopy photoLibrary];
      [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid3 flags:v10 library:photoLibrary];
    }
  }
}

+ (void)recordHighlightIfNeeded:(id)needed
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    uuid = [neededCopy uuid];

    if (uuid)
    {
      changedValues = [neededCopy changedValues];
      if ([neededCopy isDeleted] & 1) != 0 || (objc_msgSend(neededCopy, "isInserted"))
      {
        goto LABEL_30;
      }

      v7 = [changedValues objectForKeyedSubscript:@"verboseSmartDescription"];
      if (!v7)
      {
        v7 = [changedValues objectForKeyedSubscript:@"subtitle"];
        if (!v7)
        {
          v7 = [changedValues objectForKeyedSubscript:@"title"];
          if (!v7)
          {
            v7 = [changedValues objectForKeyedSubscript:@"startDate"];
            if (!v7)
            {
              v7 = [changedValues objectForKeyedSubscript:@"endDate"];
              if (!v7)
              {
                v7 = [changedValues objectForKeyedSubscript:@"startTimeZoneOffset"];
                if (!v7)
                {
                  v8 = [changedValues objectForKeyedSubscript:@"endTimeZoneOffset"];
                  if (!v8)
                  {
                    v9 = [changedValues objectForKeyedSubscript:@"type"];
                    if (!v9)
                    {
                      v10 = [changedValues objectForKeyedSubscript:@"assets"];
                      if (!v10)
                      {
                        v11 = [changedValues objectForKeyedSubscript:@"dayGroupAssets"];
                        if (!v11)
                        {
                          v12 = [changedValues objectForKeyedSubscript:@"childDayGroupPhotosHighlights"];
                          if (!v12)
                          {
                            v13 = [changedValues objectForKeyedSubscript:@"moments"];
                            if (!v13)
                            {
                              v14 = [changedValues objectForKeyedSubscript:@"keyAssetPrivate"];
                              if (!v14)
                              {
                                v15 = [changedValues objectForKeyedSubscript:@"dayGroupKeyAssetPrivate"];
                                if (!v15)
                                {
                                  v16 = [changedValues objectForKeyedSubscript:@"keyAssetShared"];
                                  if (!v16)
                                  {
                                    v22 = [changedValues objectForKeyedSubscript:@"dayGroupKeyAssetShared"];

                                    if (!v22)
                                    {
LABEL_37:

                                      goto LABEL_38;
                                    }

LABEL_30:
                                    if (([neededCopy isDeleted] & 1) != 0 || (objc_msgSend(neededCopy, "isEligibleForSearchIndexing") & 1) == 0)
                                    {
                                      v18 = PLSearchBackendIndexStatusGetLog();
                                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                                      {
                                        uuid2 = [neededCopy uuid];
                                        v23 = 138412290;
                                        v24 = uuid2;
                                        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "property changes to highlight: %@ indicate remove from index", &v23, 0xCu);
                                      }

                                      v17 = 1;
                                    }

                                    else
                                    {
                                      v17 = 64;
                                    }

                                    uuid3 = [neededCopy uuid];
                                    photoLibrary = [neededCopy photoLibrary];
                                    [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid3 flags:v17 library:photoLibrary];

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

+ (void)recordAlbumIfNeeded:(id)needed
{
  v21 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    uuid = [neededCopy uuid];

    if (uuid)
    {
      if ([neededCopy isCandidateForSearchIndexing])
      {
        changedValues = [neededCopy changedValues];
        if (([neededCopy isDeleted] & 1) == 0 && (objc_msgSend(neededCopy, "isInserted") & 1) == 0)
        {
          v7 = [changedValues objectForKeyedSubscript:@"trashedState"];
          if (v7 || ([changedValues objectForKeyedSubscript:@"startDate"], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"endDate"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"assets"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v18 = [changedValues objectForKeyedSubscript:@"title"];

            if (!v18)
            {
LABEL_20:

              goto LABEL_21;
            }
          }
        }

        if (([neededCopy isDeleted] & 1) != 0 || (objc_msgSend(neededCopy, "photoLibrary"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "libraryServicesManager"), v9 = objc_claimAutoreleasedReturnValue(), +[PLGenericAlbum isEligibleForSearchIndexingPredicateForLibraryIdentifier:](PLGenericAlbum, "isEligibleForSearchIndexingPredicateForLibraryIdentifier:", objc_msgSend(v9, "wellKnownPhotoLibraryIdentifier")), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "evaluateWithObject:", neededCopy), v10, v9, v8, !v11))
        {
          v14 = PLSearchBackendIndexStatusGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            uuid2 = [neededCopy uuid];
            v19 = 138412290;
            v20 = uuid2;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "property changes to album: %@ indicate remove from index", &v19, 0xCu);
          }

          v13 = 1;
        }

        else if (([neededCopy isInserted] & 1) != 0 || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"trashedState"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
        {
          v13 = 34;
        }

        else
        {
          v13 = 32;
        }

        uuid3 = [neededCopy uuid];
        photoLibrary = [neededCopy photoLibrary];
        [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid3 flags:v13 library:photoLibrary];

        goto LABEL_20;
      }
    }
  }

LABEL_21:
}

+ (void)recordAssetIfNeeded:(id)needed
{
  v46 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (PLPlatformSearchSupported())
  {
    uuid = [neededCopy uuid];

    if (uuid)
    {
      isEligibleForSearchIndexing = [neededCopy isEligibleForSearchIndexing];
      changedValues = [neededCopy changedValues];
      if (([neededCopy isDeleted] & 1) == 0)
      {
        if (isEligibleForSearchIndexing)
        {
          goto LABEL_8;
        }

        if ([neededCopy isInserted])
        {
          goto LABEL_29;
        }

        v31 = [changedValues objectForKeyedSubscript:@"visibilityState"];
        if (v31 || ([changedValues objectForKeyedSubscript:@"savedAssetType"], (v31 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"hidden"), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v32 = [changedValues objectForKeyedSubscript:@"trashedState"];

          if (!v32)
          {
            goto LABEL_29;
          }
        }
      }

      photoLibrary = [neededCopy photoLibrary];
      libraryServicesManager = [photoLibrary libraryServicesManager];
      wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

      if (wellKnownPhotoLibraryIdentifier != 3)
      {
        v27 = PLSearchBackendIndexStatusGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          uuid2 = [neededCopy uuid];
          *buf = 138412290;
          v45 = uuid2;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "property changes to asset: %@ indicate remove from index", buf, 0xCu);
        }

        uuid3 = [neededCopy uuid];
        photoLibrary2 = [neededCopy photoLibrary];
        [self _insertWorkItemAndSignalIfNeededWithIdentifier:uuid3 flags:1 library:photoLibrary2];

        goto LABEL_29;
      }

      if (!isEligibleForSearchIndexing)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_8:
      v11 = [changedValues objectForKeyedSubscript:@"dateCreated"];

      v42 = [changedValues objectForKeyedSubscript:@"favorite"];

      v41 = [changedValues objectForKeyedSubscript:@"kind"];

      v40 = [changedValues objectForKeyedSubscript:@"kindSubtype"];

      v39 = [changedValues objectForKeyedSubscript:@"depthType"];

      v38 = [changedValues objectForKeyedSubscript:@"avalanchePickType"];

      v37 = [changedValues objectForKeyedSubscript:@"playbackVariation"];

      v36 = [changedValues objectForKeyedSubscript:@"playbackStyle"];

      v34 = [changedValues objectForKeyedSubscript:@"visibilityState"];
      v35 = v11 | v34;

      v12 = [changedValues objectForKeyedSubscript:@"savedAssetType"];

      v13 = [changedValues objectForKeyedSubscript:@"hidden"];

      [changedValues objectForKeyedSubscript:@"trashedState"];
      v14 = v43 = self;

      v33 = [changedValues objectForKeyedSubscript:@"dayGroupHighlightBeingAssets"];

      v15 = [changedValues objectForKeyedSubscript:@"albums"];

      v16 = [changedValues objectForKeyedSubscript:@"memoriesBeingCuratedAssets"];

      v17 = [changedValues objectForKeyedSubscript:@"moment"];

      v18 = [changedValues objectForKeyedSubscript:@"libraryScope"];

      v19 = [changedValues objectForKeyedSubscript:@"libraryScopeContributors"];

      isInserted = [neededCopy isInserted];
      if (v13)
      {
        v21 = 1;
      }

      else
      {
        v21 = isInserted;
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
        uuid4 = [neededCopy uuid];
        photoLibrary3 = [neededCopy photoLibrary];
        [v43 _insertWorkItemAndSignalIfNeededWithIdentifier:uuid4 flags:v24 library:photoLibrary3];
      }

      goto LABEL_29;
    }
  }

LABEL_30:
}

@end