@interface PLCloudBatchDownloader
+ (id)_adjustmentStateDictionaryForComparingIncomingFaceRecordForAsset:(id)a3;
- (BOOL)_shouldHandleNotificationChangeForMemory:(id)a3 memoryRecord:(id)a4 wasPersisted:(BOOL)a5;
- (BOOL)_shouldIgnoreIncomingManualOrderChange:(id)a3 localPerson:(id)a4;
- (BOOL)_shouldIgnoreIncomingPersonTypeChange:(id)a3 localPerson:(id)a4;
- (PLCloudBatchDownloader)initWithLibraryServicesManager:(id)a3 manager:(id)a4;
- (id)_debugPrintAlbumOrderForAssets:(id)a3;
- (id)_findMaster:(id)a3 fromAdditionalRecordInBatch:(id)a4 inLibrary:(id)a5;
- (id)_handleAssetRecords:(id)a3 inSyncContext:(id)a4 withChangeBatch:(id)a5 insertedAssetUUIDs:(id *)a6;
- (id)_handleMasterRecords:(id)a3 inLibrary:(id)a4;
- (id)_handleMemoryRecords:(id)a3 inLibrary:(id)a4;
- (id)_handlePersonRecords:(id)a3 inLibrary:(id)a4 includesTiboSchema:(BOOL *)a5;
- (id)_handleSuggestionRecords:(id)a3 inLibrary:(id)a4;
- (id)_mergeTargetFromPersons:(id)a3;
- (id)deletedRecordsFromBatch:(id)a3;
- (id)handleIncomingBatch:(id)a3;
- (void)_assetsAndCloudMastersFromAssetRecords:(id)a3 assetsByScopedIdentifier:(id *)a4 mastersByScopedIdentifier:(id *)a5 inLibrary:(id)a6;
- (void)_dropDeferredRebuildFacesInPhotoLibrary:(id)a3;
- (void)_handleAlbumRecords:(id)a3 inLibrary:(id)a4;
- (void)_handleCommentChangeRecords:(id)a3 inLibrary:(id)a4;
- (void)_handleDeleteRecords:(id)a3 inLibrary:(id)a4;
- (void)_handleExpungedRecords:(id)a3 inLibrary:(id)a4;
- (void)_handleFaceCropRecords:(id)a3 inLibrary:(id)a4;
- (void)_handleRelationsForAlbumRecords:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5;
- (void)_handleRelationsForAssetRecords:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5;
- (void)_handleScopeChanges:(id)a3 inLibrary:(id)a4;
- (void)_handleSocialGroupRecords:(id)a3 inLibrary:(id)a4;
- (void)_mergeExistingPersonsWithPerson:(id)a3 inPhotoLibrary:(id)a4;
- (void)_mergeUpdatedPersons:(id)a3 inLibrary:(id)a4;
- (void)_processNotificationUpdatesForMemories:(id)a3;
- (void)_saveIfNeeded:(id)a3;
- (void)_triggerBackgroundDownloadFailureForResources:(id)a3;
@end

@implementation PLCloudBatchDownloader

- (void)_triggerBackgroundDownloadFailureForResources:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [PLInternalResource triggerBackgroundDownloadFailureForResources:v4 cloudPhotoLibraryManager:WeakRetained];
}

- (id)handleIncomingBatch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PLCloudDownloadBatchDetails);
  v6 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v7 = [v6 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudBatchDownloader handleIncomingBatch:]"];

  v8 = [v7 managedObjectContext];
  [v8 setLocalOnlyDelete:1];

  v9 = [[PLLibrarySyncContext alloc] initWithPhotoLibrary:v7];
  v10 = [(PLLibrarySyncContext *)v9 recordOrganizer];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__41484;
  v30[4] = __Block_byref_object_dispose__41485;
  v31 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke;
  v22[3] = &unk_1E7576968;
  v11 = v4;
  v23 = v11;
  v24 = v10;
  v25 = self;
  v26 = v7;
  v12 = v5;
  v27 = v12;
  v13 = v9;
  v28 = v13;
  v29 = v30;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke_2;
  v19[3] = &unk_1E75761B8;
  v19[4] = self;
  v14 = v24;
  v20 = v14;
  v15 = v26;
  v21 = v15;
  [v15 performTransactionAndWait:v22 completionHandler:v19];
  v16 = v21;
  v17 = v12;

  _Block_object_dispose(v30, 8);

  return v17;
}

void __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) records];
  [*(a1 + 40) organizeRecords:v2];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) scopeRecords];
  [v3 _handleScopeChanges:v4 inLibrary:*(a1 + 56)];

  v36 = 0;
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) personRecords];
  v7 = [v5 _handlePersonRecords:v6 inLibrary:*(a1 + 56) includesTiboSchema:&v36];

  if (v36 == 1)
  {
    [*(a1 + 48) _dropDeferredRebuildFacesInPhotoLibrary:*(a1 + 56)];
  }

  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) albumRecords];
  [v8 _handleAlbumRecords:v9 inLibrary:*(a1 + 56)];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) masterRecords];
  v12 = [v10 _handleMasterRecords:v11 inLibrary:*(a1 + 56)];

  [*(a1 + 64) unionBatchDetails:v12];
  v13 = *(a1 + 48);
  v14 = [*(a1 + 40) assetRecords];
  v15 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(*(a1 + 80) + 8);
  obj = *(v17 + 40);
  v18 = [v13 _handleAssetRecords:v14 inSyncContext:v16 withChangeBatch:v15 insertedAssetUUIDs:&obj];
  objc_storeStrong((v17 + 40), obj);

  [*(a1 + 64) unionBatchDetails:v18];
  v19 = *(a1 + 48);
  v20 = [*(a1 + 40) memoryRecords];
  v21 = [v19 _handleMemoryRecords:v20 inLibrary:*(a1 + 56)];

  [*(a1 + 64) unionBatchDetails:v21];
  v22 = *(a1 + 48);
  v23 = [*(a1 + 40) faceCropRecords];
  [v22 _handleFaceCropRecords:v23 inLibrary:*(a1 + 56)];

  v24 = *(a1 + 48);
  v25 = [*(a1 + 40) suggestionRecords];
  v26 = [v24 _handleSuggestionRecords:v25 inLibrary:*(a1 + 56)];

  [*(a1 + 64) unionBatchDetails:v26];
  [*(a1 + 48) _mergeUpdatedPersons:v7 inLibrary:*(a1 + 56)];
  v27 = *(a1 + 48);
  v28 = [*(a1 + 40) socialGroupRecords];
  [v27 _handleSocialGroupRecords:v28 inLibrary:*(a1 + 56)];

  v29 = *(a1 + 48);
  v30 = [*(a1 + 40) commentRecords];
  [v29 _handleCommentChangeRecords:v30 inLibrary:*(a1 + 56)];

  v31 = *(a1 + 48);
  v32 = [*(a1 + 40) deleteRecords];
  [v31 _handleDeleteRecords:v32 inLibrary:*(a1 + 56)];

  v33 = *(a1 + 48);
  v34 = [*(a1 + 40) expungedRecords];
  [v33 _handleExpungedRecords:v34 inLibrary:*(a1 + 56)];
}

void __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [PLRelationshipOrderKeyManager alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke_3;
  v19[3] = &unk_1E7574C88;
  v19[4] = *(a1 + 32);
  v3 = [(PLRelationshipOrderKeyManager *)v2 initWithGenerateContextBlock:v19];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) assetRecordsWithContainerChange];
  [v4 _handleRelationsForAssetRecords:v5 orderKeyManager:v3 inLibrary:*(a1 + 48)];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) albumRecordsWithContainerChange];
  [v6 _handleRelationsForAlbumRecords:v7 orderKeyManager:v3 inLibrary:*(a1 + 48)];

  v8 = [*(a1 + 48) managedObjectContext];
  v18 = 0;
  v9 = [v8 save:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [*(a1 + 48) managedObjectContext];
    v17 = v10;
    v12 = [(PLRelationshipOrderKeyManager *)v3 writeStashedLocationValuesInContext:v11 error:&v17];
    v13 = v17;

    if (v12 || (*MEMORY[0x1E6994D48] & 1) != 0)
    {
      goto LABEL_11;
    }

    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save order keys: %@", buf, 0xCu);
    }

LABEL_10:

LABEL_11:
    v10 = v13;
    goto LABEL_12;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save relation records: %@", buf, 0xCu);
    }

    v13 = v10;
    goto LABEL_10;
  }

LABEL_12:
  v15 = [*(a1 + 48) managedObjectContext];
  [PLManagedAsset clearImportSessionObjectIDCacheOnManagedObjectContext:v15];

  v16 = [*(a1 + 48) libraryBundle];
  [v16 touch];
}

uint64_t __46__PLCloudBatchDownloader_handleIncomingBatch___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) databaseContext];
  v2 = [v1 newShortLivedCplLibraryWithNameSuffix:"-[PLCloudBatchDownloader handleIncomingBatch:]_block_invoke_3"];
  v3 = v2;

  return [v2 managedObjectContext];
}

- (id)deletedRecordsFromBatch:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 changeType] & 0x400) != 0)
        {
          v11 = [v10 scopedIdentifier];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_handleRelationsForAlbumRecords:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v22 = a4;
  v8 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v23 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 scopedIdentifier];
        v17 = [v16 identifier];

        if (([@"----Root-Folder----" isEqualToString:v17] & 1) == 0 && (objc_msgSend(@"----Project-Root-Folder----", "isEqualToString:", v17) & 1) == 0)
        {
          v18 = [PLGenericAlbum albumWithCloudGUID:v17 inLibrary:v8];
          v19 = v8;
          v20 = v18;
          if (v18)
          {
            [v18 updateAlbumFolderRelation:v14 orderKeyManager:v22 inLibrary:v19];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v21 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v29 = v17;
              v30 = 2112;
              v31 = v14;
              _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Can't find album with id %@, ignoring record %@", buf, 0x16u);
            }
          }

          v8 = v23;
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v11);
  }
}

- (void)_handleRelationsForAssetRecords:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5
{
  v138[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v92 = a5;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v130 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Setting relations for asset records %@", buf, 0xCu);
    }
  }

  v85 = v8;
  v86 = [MEMORY[0x1E695DF90] dictionary];
  v97 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [v7 valueForKey:@"scopedIdentifier"];
  v138[0] = @"albums";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:1];
  v84 = v10;
  v12 = [PLManagedAsset assetsWithScopedIdentifiers:v10 prefetchResources:0 relationshipKeyPathsForPrefetching:v11 inLibrary:v92];

  v91 = [MEMORY[0x1E695DFA8] set];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v124;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v124 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v123 + 1) + 8 * i) containerRelations];
        v19 = MEMORY[0x1E695DFD8];
        v20 = [v18 _pl_map:&__block_literal_global_174];
        v21 = [v19 setWithArray:v20];

        [v91 unionSet:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v15);
  }

  v22 = [v91 allObjects];
  v23 = [(PLGenericAlbum *)PLManagedAlbum albumsWithCloudGUIDs:v22 inLibrary:v92];

  v83 = v23;
  v98 = [v23 _pl_indexBy:&__block_literal_global_178];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = v12;
  v87 = v13;
  v93 = [obj countByEnumeratingWithState:&v119 objects:v136 count:16];
  if (v93)
  {
    v90 = *v120;
    do
    {
      v24 = 0;
      do
      {
        if (*v120 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v95 = v24;
        v25 = *(*(&v119 + 1) + 8 * v24);
        context = objc_autoreleasePoolPush();
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v26 = v13;
        v27 = [v26 countByEnumeratingWithState:&v115 objects:v135 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v116;
LABEL_19:
          v30 = 0;
          while (1)
          {
            if (*v116 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v115 + 1) + 8 * v30);
            v32 = [v31 scopedIdentifier];
            v33 = [v25 scopedIdentifier];
            v34 = [v32 isEqual:v33];

            if (v34)
            {
              break;
            }

            if (v28 == ++v30)
            {
              v28 = [v26 countByEnumeratingWithState:&v115 objects:v135 count:16];
              if (!v28)
              {
                goto LABEL_25;
              }

              goto LABEL_19;
            }
          }

          v35 = v31;

          if (v35)
          {
            v36 = [MEMORY[0x1E695DFA8] set];
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v37 = [v25 albums];
            v38 = [v37 countByEnumeratingWithState:&v111 objects:v134 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v112;
              do
              {
                for (j = 0; j != v39; ++j)
                {
                  if (*v112 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = [*(*(&v111 + 1) + 8 * j) cloudGUID];
                  if (v42)
                  {
                    [v36 addObject:v42];
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v111 objects:v134 count:16];
              }

              while (v39);
            }

            v89 = v35;
            v43 = [v35 containerRelations];
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v96 = v43;
            v44 = [v43 countByEnumeratingWithState:&v107 objects:v133 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v108;
              do
              {
                for (k = 0; k != v45; ++k)
                {
                  if (*v108 != v46)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v48 = *(*(&v107 + 1) + 8 * k);
                  v49 = [v48 containerIdentifier];
                  if (v49)
                  {
                    v50 = [v48 position];
                    v51 = [v98 objectForKeyedSubscript:v49];
                    if (v51)
                    {
                      if ([v48 isKeyAsset])
                      {
                        v52 = [v51 customKeyAsset];

                        if (v52 != v25)
                        {
                          if ((*MEMORY[0x1E6994D48] & 1) == 0)
                          {
                            v53 = __CPLAssetsdOSLogDomain();
                            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                            {
                              v54 = [v25 cloudAssetGUID];
                              *buf = 138412546;
                              v130 = v54;
                              v131 = 2112;
                              *v132 = v49;
                              _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "setting custom key asset %@ for album %@", buf, 0x16u);
                            }
                          }

                          [v51 setCustomKeyAsset:v25];
                        }
                      }

                      if ((*MEMORY[0x1E6994D48] & 1) == 0)
                      {
                        v55 = __CPLAssetsdOSLogDomain();
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                        {
                          v56 = [v25 cloudAssetGUID];
                          *buf = 138412802;
                          v130 = v56;
                          v131 = 1024;
                          *v132 = v50;
                          *&v132[4] = 2112;
                          *&v132[6] = v49;
                          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEBUG, "Received asset %@ with position: %d for album: %@", buf, 0x1Cu);
                        }
                      }

                      v57 = objc_alloc_init(PLTransientOrderKey);
                      [(PLTransientOrderKey *)v57 setOrderValue:v50];
                      v58 = [v25 objectID];
                      [(PLTransientOrderKey *)v57 setObjectID:v58];

                      v59 = [v51 objectID];
                      v60 = [v97 objectForKey:v59];
                      if (!v60)
                      {
                        v60 = [MEMORY[0x1E695DF70] array];
                        [v97 setObject:v60 forKey:v59];
                      }

                      [v60 addObject:v57];

                      goto LABEL_63;
                    }

                    if ((*MEMORY[0x1E6994D48] & 1) == 0)
                    {
                      v57 = __CPLAssetsdOSLogDomain();
                      if (os_log_type_enabled(&v57->super, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v130 = v48;
                        _os_log_impl(&dword_19BF1F000, &v57->super, OS_LOG_TYPE_DEFAULT, "Unable to find an album for the container relation %@", buf, 0xCu);
                      }

LABEL_63:
                    }

                    [v36 removeObject:v49];
                    goto LABEL_65;
                  }

                  if (*MEMORY[0x1E6994D48])
                  {
                    goto LABEL_66;
                  }

                  v51 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v130 = v48;
                    _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Found container relation %@ without container identifier, skipping", buf, 0xCu);
                  }

LABEL_65:

LABEL_66:
                }

                v45 = [v96 countByEnumeratingWithState:&v107 objects:v133 count:16];
              }

              while (v45);
            }

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v61 = v36;
            v62 = [v61 countByEnumeratingWithState:&v103 objects:v128 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v104;
              do
              {
                for (m = 0; m != v63; ++m)
                {
                  if (*v104 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = *(*(&v103 + 1) + 8 * m);
                  v67 = [v86 objectForKey:v66];
                  if (!v67)
                  {
                    v67 = [MEMORY[0x1E695DF70] array];
                    [v86 setObject:v67 forKey:v66];
                  }

                  [v67 addObject:v25];
                }

                v63 = [v61 countByEnumeratingWithState:&v103 objects:v128 count:16];
              }

              while (v63);
            }

            v13 = v87;
            v68 = v89;
            goto LABEL_81;
          }
        }

        else
        {
LABEL_25:
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_82;
        }

        v68 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v69 = [v25 scopedIdentifier];
          *buf = 138412290;
          v130 = v69;
          _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_DEBUG, "Can't find CPLAssetChange matching asset scopedIdentifier %@, ignoring asset", buf, 0xCu);
        }

LABEL_81:

LABEL_82:
        objc_autoreleasePoolPop(context);
        v24 = v95 + 1;
      }

      while (v95 + 1 != v93);
      v93 = [obj countByEnumeratingWithState:&v119 objects:v136 count:16];
    }

    while (v93);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v70 = v86;
  v71 = [v70 countByEnumeratingWithState:&v99 objects:v127 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v100;
    do
    {
      for (n = 0; n != v72; ++n)
      {
        if (*v100 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v99 + 1) + 8 * n);
        v76 = [(PLGenericAlbum *)PLManagedAlbum albumWithCloudGUID:v75 inLibrary:v92];
        v77 = v76;
        if (v76 && ([v76 isCameraAlbum] & 1) == 0)
        {
          v78 = [v70 objectForKey:v75];
          if (v78)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v79 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v80 = [v78 count];
                *buf = 134218242;
                v130 = v80;
                v131 = 2112;
                *v132 = v75;
                _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "Removing %lu assets from album %@", buf, 0x16u);
              }
            }

            v81 = [v77 mutableAssets];
            [v81 removeObjectsInArray:v78];
          }
        }
      }

      v72 = [v70 countByEnumeratingWithState:&v99 objects:v127 count:16];
    }

    while (v72);
  }

  if ([v97 count])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v82 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v130 = v97;
        _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_DEBUG, "Update album assets order with %@", buf, 0xCu);
      }
    }

    [v85 updateAlbumAssetsUsingTransientOrdersByAlbumOID:v97 inLibrary:v92];
  }
}

- (id)_debugPrintAlbumOrderForAssets:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = [v10 albums];
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v35;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v34 + 1) + 8 * j);
              if (([v16 isCameraAlbum] & 1) == 0 && !objc_msgSend(v16, "trashedState"))
              {
                [v4 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v28 = v5;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    v20 = &stru_1F0F06D80;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v30 + 1) + 8 * k);
        v23 = [v22 title];
        v24 = [v22 cloudGUID];
        v25 = [(__CFString *)v20 stringByAppendingFormat:@"Album Title: %@ cloudGUID: %@\n", v23, v24, v28];

        v26 = [v22 descriptionOfAssetOrderValues];
        v20 = [v25 stringByAppendingFormat:@"%@\n", v26];
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = &stru_1F0F06D80;
  }

  return v20;
}

- (void)_handleExpungedRecords:(id)a3 inLibrary:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v22 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v22)
  {
    v8 = 0x1E6994000uLL;
    v9 = off_1E7560000;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 scopedIdentifier];
        v15 = [v14 identifier];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(__objc2_class *)v9[53] assetWithScopedIdentifier:v14 inLibrary:v6 prefetchResources:0];
          v17 = v16;
          if (v16 && [v16 trashedState] != 2)
          {
            [v17 expunge];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [PLGenericAlbum albumWithCloudGUID:v15 inLibrary:v6];
            v17 = v18;
            if (v18 && [v18 trashedState] != 2)
            {
              [v17 applyTrashedState:2 cascade:0];
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_19;
            }

            v19 = v8;
            v20 = v7;
            v21 = [v6 managedObjectContext];
            v17 = [PLPerson personWithUUID:v15 inManagedObjectContext:v21];

            if (v17)
            {
              [v17 deletePersonWithReason:4];
            }

            v7 = v20;
            v8 = v19;
            v9 = off_1E7560000;
          }
        }

LABEL_19:
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v22 != v11);
      v22 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v22);
  }
}

- (void)_handleDeleteRecords:(id)a3 inLibrary:(id)a4
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    goto LABEL_161;
  }

  v79 = a2;
  v81 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[CPL]Syncing batch downloaded from cloud: deleting local asset to match iCloud Library"];
  v82 = [PLAssetTransactionReason transactionReason:v8];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v80 = v6;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (!v10)
  {
    goto LABEL_147;
  }

  v11 = v10;
  v12 = *v93;
  do
  {
    v13 = 0;
    do
    {
      if (*v93 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v92 + 1) + 8 * v13);
      v15 = [v14 scopedIdentifier];
      v16 = [v15 identifier];
      if (!v15)
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_41;
        }

        v23 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v99 = v14;
          v24 = v23;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = "Skipping deleting a CPLRecordChange %@ without identifier";
          goto LABEL_23;
        }

LABEL_24:

        goto LABEL_41;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v17 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v99 = v15;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Trying to delete %@", buf, 0xCu);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [PLGenericAlbum albumWithCloudGUID:v16 inLibrary:v7];
        if (([v16 isEqualToString:@"----Project-Root-Folder----"]& 1) != 0 || [v16 isEqualToString:@"----Root-Folder----"])
        {
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_40;
          }

          v19 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v99 = v16;
          v20 = v19;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = "Root folder deletion record should not exist, cloudGUID = %{public}@";
          goto LABEL_18;
        }

        if (v18)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v30 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v18;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Found album %@ to delete", buf, 0xCu);
            }
          }

          [v18 delete];
          goto LABEL_40;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v19 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v99 = v16;
          v20 = v19;
          v21 = OS_LOG_TYPE_DEFAULT;
          v22 = "Could not find album with UUID %{public}@ to delete. Skipping";
          goto LABEL_18;
        }

LABEL_40:

        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [PLManagedAsset assetWithScopedIdentifier:v15 inLibrary:v7 prefetchResources:1];
        v18 = v27;
        if (v27)
        {
          v28 = [v27 allAssetCPLResources];
          [(PLCloudBatchDownloader *)self _triggerBackgroundDownloadFailureForResources:v28];

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v29 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v18;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Found asset %@ to delete", buf, 0xCu);
            }
          }

          [v18 deleteWithReason:v82];
          goto LABEL_40;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v19 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v99 = v16;
          v20 = v19;
          v21 = OS_LOG_TYPE_DEFAULT;
          v22 = "Could not find asset with UUID %@ to delete. Skipping";
          goto LABEL_18;
        }

        goto LABEL_40;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v81 addObject:v15];
        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [v7 managedObjectContext];
        v32 = [PLPerson personWithUUID:v16 inManagedObjectContext:v31];

        if (v32)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v33 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v32;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Found person %@ to delete", buf, 0xCu);
            }
          }

          [(PLCloudBatchDownloader *)self _saveIfNeeded:v7];
          v34 = [v7 libraryServicesManager];
          v35 = [v34 databaseContext];

          if (!v35)
          {
            v66 = [MEMORY[0x1E696AAA8] currentHandler];
            [v66 handleFailureInMethod:v79 object:self file:@"PLCloudBatchDownloader.m" lineNumber:1292 description:{@"Invalid parameter not satisfying: %@", @"databaseContext"}];
          }

          v36 = [v35 newShortLivedLibraryWithName:"[PLCloudBatchDownloader _handleDeleteRecords:inLibrary:]"];
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 3221225472;
          v89[2] = __57__PLCloudBatchDownloader__handleDeleteRecords_inLibrary___block_invoke;
          v89[3] = &unk_1E7578848;
          v90 = v36;
          v91 = v32;
          v37 = v36;
          [v37 performTransactionAndWait:v89];

LABEL_95:
LABEL_96:
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v35 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v99 = v16;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Could not find person with UUID %@ to delete. Skipping", buf, 0xCu);
          }

          goto LABEL_96;
        }

        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [PLMemory memoryWithUUID:v16 inPhotoLibrary:v7];
        if (v18)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v38 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_59;
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_40;
        }

        v19 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v99 = v16;
        v20 = v19;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = "Could not find Memory with UUID %@ to delete. Skipping";
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = [v7 managedObjectContext];
        v32 = [PLUserFeedback userFeedbackWithUUID:v16 inManagedObjectContext:v41];

        v35 = [PLSuggestion suggestionWithUUID:v16 inPhotoLibrary:v7];
        if (v35)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v42 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v35;
              _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Deleting %@", buf, 0xCu);
            }
          }

          v43 = [v7 managedObjectContext];
          v37 = v43;
          v44 = v35;
LABEL_94:
          [v43 deleteObject:v44];
          goto LABEL_95;
        }

        if (v32)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v48 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v32;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Deleting %@", buf, 0xCu);
            }
          }

          v43 = [v7 managedObjectContext];
          v37 = v43;
          v44 = v32;
          goto LABEL_94;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_96;
        }

        v37 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        *buf = 138412290;
        v99 = v16;
        v51 = v37;
        v52 = "Could not find Suggetion or UserFeedback with UUID %@ to delete. Skipping";
LABEL_109:
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
        goto LABEL_95;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v7 managedObjectContext];
        v18 = [PLGraphNode fetchNodeWithUUID:v16 inManagedObjectContext:v45];

        if (v18)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v38 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v18;
              v39 = v38;
              v40 = "Deleting social group node: %@";
LABEL_60:
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_40;
        }

        v19 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v99 = v16;
        v20 = v19;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = "Could not find SocialGroup with UUID %@ to delete. Skipping";
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [PLCloudSharedComment cloudSharedCommentWithGUID:v16 inLibrary:v7];
        v18 = v46;
        if (v46)
        {
          v47 = [v46 asset];
          if (v47)
          {
            v19 = v47;
            [v47 deleteComment:v18];
          }

          else
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v58 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v99 = v16;
                _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "CloudSharedComment with UUID %@ to delete has no asset", buf, 0xCu);
              }
            }

            v59 = [v7 managedObjectContext];
            [v59 deleteObject:v18];

            v19 = 0;
          }

          goto LABEL_19;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v19 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v99 = v16;
          v20 = v19;
          v21 = OS_LOG_TYPE_DEFAULT;
          v22 = "Could not find CloudSharedComment with UUID %@ to delete. Skipping";
          goto LABEL_18;
        }

        goto LABEL_40;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = v16;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
        v50 = [PLFaceCrop faceCropsWithUUIDs:v49 inPhotoLibrary:v7];
        v18 = [v50 firstObject];

        if (v18)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v38 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
LABEL_59:
              *buf = 138412290;
              v99 = v18;
              v39 = v38;
              v40 = "Deleting %@";
              goto LABEL_60;
            }

LABEL_61:
          }

LABEL_62:
          v19 = [v7 managedObjectContext];
          [v19 deleteObject:v18];
LABEL_19:

          goto LABEL_40;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_40;
        }

        v19 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v99 = v16;
        v20 = v19;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = "Could not find FaceCrop with UUID %@ to delete. Skipping";
LABEL_18:
        _os_log_impl(&dword_19BF1F000, v20, v21, v22, buf, 0xCu);
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v14 scopeIdentifier];
        v53 = [v7 managedObjectContext];
        v54 = [PLShare shareWithScopeIdentifier:v32 includeTrashed:1 inManagedObjectContext:v53];

        v35 = v54;
        if (v54)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v55 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                [v35 compactDescription];
                v76 = v32;
                v57 = v56 = v35;
                *buf = 138412290;
                v99 = v57;
                _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Trashing %@", buf, 0xCu);

                v35 = v56;
                v32 = v76;
              }
            }

            [v35 trash];
          }

          else
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v60 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                [v35 compactDescription];
                v77 = v32;
                v62 = v61 = v35;
                *buf = 138412290;
                v99 = v62;
                _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Deleting %@", buf, 0xCu);

                v35 = v61;
                v32 = v77;
              }
            }

            v88 = 0;
            v78 = v35;
            v63 = [v35 incrementallyDeleteAndSaveWithError:&v88];
            v64 = v88;
            if ((v63 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v65 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v99 = v64;
                _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Failed to prepare assets for scope deletion: %@", buf, 0xCu);
              }
            }

            v35 = v78;
          }

          goto LABEL_96;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_96;
        }

        v37 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        *buf = 138412290;
        v99 = v15;
        v51 = v37;
        v52 = "Cound not find share with scopeIdentifier %@";
        goto LABEL_109;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v23 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v99 = v14;
          v24 = v23;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = "Ignoring unsupported record type for deletion: %@";
LABEL_23:
          _os_log_impl(&dword_19BF1F000, v24, v25, v26, buf, 0xCu);
        }

        goto LABEL_24;
      }

LABEL_41:

      ++v13;
    }

    while (v11 != v13);
    v67 = [v9 countByEnumeratingWithState:&v92 objects:v100 count:16];
    v11 = v67;
  }

  while (v67);
LABEL_147:

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v68 = v81;
  v69 = [v68 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v85;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v85 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v84 + 1) + 8 * i);
        v74 = [PLCloudMaster cloudMasterWithScopedIdentifier:v73 prefetchResources:0 inLibrary:v7];
        if (v74)
        {
          [PLCloudMaster deleteMasterIfNecessary:v74 inLibrary:v7];
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v75 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v99 = v73;
            _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_DEBUG, "Unable to find master %@ to delete", buf, 0xCu);
          }
        }
      }

      v70 = [v68 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v70);
  }

  v6 = v80;
LABEL_161:
}

void __57__PLCloudBatchDownloader__handleDeleteRecords_inLibrary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) objectID];
  v9 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Deleting %@ in transient moc", buf, 0xCu);
      }
    }

    [v4 deletePersonWithReason:4];
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch transient person %@ to delete in transient moc: %@", buf, 0x16u);
    }
  }
}

- (void)_handleFaceCropRecords:(id)a3 inLibrary:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = MEMORY[0x1E6994D48];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 resourceData];

        if (v15)
        {
          v16 = [PLFaceCrop insertOrUpdateWithCPLFaceCrop:v13 inPhotoLibrary:v6];
        }

        else
        {
          if ((*v11 & 1) == 0)
          {
            v17 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v13;
              _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Skipping faceCrop without resource data %@", buf, 0xCu);
            }
          }

          v16 = 0;
        }

        if ((*v11 & 1) == 0)
        {
          v18 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v24 = v16;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "insert/update local faceCrop %@ with cloud faceCrop %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }
}

- (void)_mergeUpdatedPersons:(id)a3 inLibrary:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        [(PLCloudBatchDownloader *)self _mergeExistingPersonsWithPerson:v13 inPhotoLibrary:v7, v15];
        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_processNotificationUpdatesForMemories:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 photoLibrary];
        v10 = [v8 uuid];
        if ([v8 notificationState] == 1)
        {
          v11 = +[PLNotificationManager _notificationDeliveryDate];
          v12 = +[PLNotificationManager sharedManager];
          [v12 postNotificationForInterestingMemoryWithMemoryUUID:v10 library:v9 notificationDeliveryDate:v11];
        }

        else
        {
          if ([v8 notificationState] != 2)
          {
            goto LABEL_11;
          }

          v11 = +[PLNotificationManager sharedManager];
          [v11 removeNotificationForInterestingMemoryWithUUID:v10];
        }

LABEL_11:
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_handleCommentChangeRecords:(id)a3 inLibrary:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 scopedIdentifier];
        v14 = [v13 identifier];
        v15 = [PLCloudSharedComment cloudSharedCommentWithGUID:v14 inLibrary:v6];

        if (!v15)
        {
          v16 = [v6 managedObjectContext];
          v15 = [(PLManagedObject *)PLCloudSharedComment insertInManagedObjectContext:v16];

          v17 = [v11 scopedIdentifier];
          v18 = [v17 identifier];
          [v15 setCloudGUID:v18];
        }

        [v15 updateWithCPLCommentChange:v11 inPhotoLibrary:v6];

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)_handleSocialGroupRecords:(id)a3 inLibrary:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v25 = *v27;
    *&v8 = 138412290;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 scopedIdentifier];
        v14 = [v13 identifier];
        v15 = [v6 managedObjectContext];
        v16 = [PLGraphNode fetchNodeWithUUID:v14 inManagedObjectContext:v15];

        if (v16)
        {
          v17 = [PLGraphNodeContainer newNodeContainerWithNode:v16];
        }

        else
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v18 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v31 = v11;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Inserting new local socialGroup since we did not find one with the same identifier %@", buf, 0xCu);
            }
          }

          v19 = [v6 managedObjectContext];
          v17 = [PLSocialGroup newNodeContainerWithManagedObjectContext:v19];

          v20 = [v11 scopedIdentifier];
          v21 = [v20 identifier];
          [v17 setUuid:v21];
        }

        [v17 updateSocialGroupwithCPLSocialGroupChange:v11 inPhotoLibrary:{v6, v23}];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v22 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = v17;
            v32 = 2112;
            v33 = v11;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Insert/update local socialGroup %@ with cloud socialGroup %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }
}

- (id)_handleSuggestionRecords:(id)a3 inLibrary:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v59 = objc_opt_new();
  v58 = objc_opt_new();
  v61 = objc_alloc_init(PLCloudDownloadBatchDetails);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v7 = v5;
  v66 = [v7 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (!v66)
  {
    v50 = 0;
    v51 = v7;
    goto LABEL_62;
  }

  v62 = 0;
  v8 = off_1E7561000;
  v65 = *v68;
  v60 = v6;
  v63 = v7;
  do
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v68 != v65)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v67 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      if (![(__objc2_class *)v8[26] shouldHandleCPLSuggestionChange:v10])
      {
        v29 = [v10 scopedIdentifier];
        v25 = [v29 identifier];

        v26 = [PLSuggestion suggestionWithUUID:v25 inPhotoLibrary:v6];
        if (!v26)
        {
          v26 = [PLSuggestion insertIntoPhotoLibrary:v6 withUUID:v25];
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v30 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v72 = v26;
              v73 = 2112;
              v74 = v10;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Created new local suggestion %@ with cloud suggestion %@", buf, 0x16u);
            }
          }
        }

        v31 = [v26 updateWithCPLSuggestionChange:v10 inPhotoLibrary:v6];
        WeakRetained = objc_loadWeakRetained(&self->_manager);
        v33 = [WeakRetained deviceLibraryConfiguration] - 3;

        if (v33 >= 0xFFFFFFFFFFFFFFFELL && (v31 & 1) == 0)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v34 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v26 uuid];
              v36 = objc_loadWeakRetained(&self->_manager);
              v37 = [v36 deviceLibraryConfiguration];
              v38 = @"unknown";
              if (v37 <= 2)
              {
                v38 = off_1E756E888[v37];
              }

              v39 = v38;
              *buf = 138412802;
              v72 = v35;
              v73 = 2112;
              v74 = v10;
              v75 = 2112;
              v76 = v39;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Deleting local suggestion %@ for cloud suggestion %@ in limited device-library configuration: %@", buf, 0x20u);

              v6 = v60;
            }
          }

          v40 = [v6 managedObjectContext];
          [v40 deleteObject:v26];
          goto LABEL_50;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v41 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v72 = v26;
            v73 = 2112;
            v74 = v10;
            _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Updating local suggestion %@ with cloud suggestion %@", buf, 0x16u);
          }
        }

        v42 = [v26 creationDate];
        v40 = v42;
        if (!v62 || [v42 compare:v62] == 1)
        {
          v43 = v40;

          v62 = v43;
        }

        [(PLCloudDownloadBatchDetails *)v61 setNeedsWidgetTimelineReload:1];
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v10, "type")}];
        if ([v10 type] == 6 && objc_msgSend(v10, "state") == 4)
        {
          v45 = [v58 objectForKeyedSubscript:v44];
          if (!v45)
          {
            v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v58 setObject:v45 forKeyedSubscript:v44];
          }

          v46 = [v26 keyAssets];
          v47 = [v46 anyObject];
          v48 = [v47 objectID];

          if (v48)
          {
            [v45 addObject:v48];
            goto LABEL_47;
          }

          v6 = v60;
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v49 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v25;
              _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Unexpectedly found no key asset for suggestion %@", buf, 0xCu);
            }

LABEL_47:
            v6 = v60;
          }
        }

        else
        {
          [v59 addObject:v44];
        }

LABEL_50:
        v7 = v63;
LABEL_51:

        goto LABEL_52;
      }

      v12 = v8[26];
      v13 = [v10 scopedIdentifier];
      v14 = [v13 identifier];
      v15 = [v6 managedObjectContext];
      v16 = [(__objc2_class *)v12 userFeedbackWithUUID:v14 inManagedObjectContext:v15];

      if (!v16)
      {
        v17 = v8[26];
        v18 = [v6 managedObjectContext];
        v19 = [v10 scopedIdentifier];
        v20 = [v19 identifier];
        v16 = [(__objc2_class *)v17 insertIntoManagedObjectContext:v18 withUUID:v20];

        [v16 setCreationType:2];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v21 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v16 detailedDescription];
            *buf = 138412290;
            v72 = v22;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Created new local user feedback %@", buf, 0xCu);
          }
        }
      }

      v23 = v8[26];
      v24 = [v6 managedObjectContext];
      v25 = [(__objc2_class *)v23 updateUserFeedback:v16 withCPLSuggestionChange:v10 inManagedObjectContext:v24];

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v26 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v25 detailedDescription];
          v28 = [v10 cplFullDescription];
          *buf = 138412546;
          v72 = v27;
          v73 = 2112;
          v74 = v28;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Updated new local user feedback %@ with cloud suggestion %@", buf, 0x16u);
        }

        goto LABEL_51;
      }

LABEL_52:

      objc_autoreleasePoolPop(v11);
      v8 = off_1E7561000;
    }

    v66 = [v7 countByEnumeratingWithState:&v67 objects:v77 count:16];
  }

  while (v66);

  v50 = v62;
  if (v62)
  {
    v51 = [MEMORY[0x1E695DEE8] currentCalendar];
    v52 = [v51 startOfDayForDate:v62];
    v53 = [v51 dateByAddingUnit:16 value:1 toDate:v52 options:0];
    if (v53)
    {
      v54 = [v6 managedObjectContext];
      v55 = [PLSuggestion deletePendingSuggestionsCreatedBefore:v53 withTypes:v59 andRejectedAssetsBySuggestionType:v58 inManagedObjectContext:v54];

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v56 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v72 = v55;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Deleted %lu pending suggestions", buf, 0xCu);
        }
      }
    }

LABEL_62:
  }

  return v61;
}

- (BOOL)_shouldHandleNotificationChangeForMemory:(id)a3 memoryRecord:(id)a4 wasPersisted:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 notificationState];
  if (v9)
  {
    v10 = v9;
    v11 = [v7 creationDate];
    if (!v11)
    {
      if (*MEMORY[0x1E6994D48])
      {
        LOBYTE(v20) = 0;
        goto LABEL_33;
      }

      v21 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v7 uuid];
        *buf = 138412290;
        *v32 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Error: No creation data for memory with UUID: %@", buf, 0xCu);
      }

      LOBYTE(v20) = 0;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v12 = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [v12 isDateInToday:v11];

    v14 = 0;
    v15 = MEMORY[0x1E6994D48];
    if (v10 != 1 || !v13)
    {
LABEL_23:
      if (v10 == [v7 notificationState] && v5)
      {
        v20 = 0;
      }

      else if (v10 == 2)
      {
        v20 = 1;
      }

      else
      {
        v20 = v14;
      }

      if (*v15)
      {
        goto LABEL_33;
      }

      v21 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v8 scopedIdentifier];
        [v8 score];
        v27 = v26;
        v28 = [v8 creationDate];
        *buf = 67110402;
        *v32 = v20;
        *&v32[4] = 2112;
        *&v32[6] = v25;
        v33 = 2048;
        v34 = v27;
        v35 = 1024;
        v36 = v5;
        v37 = 1024;
        v38 = v13;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Handling change %d, for memory %@, state %.2f, was persisted %d, created today %d, creationDate %@", buf, 0x32u);
      }

      goto LABEL_32;
    }

    v16 = [v7 photoLibrary];
    v30 = 0;
    v17 = [PLMemory countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeenInPhotoLibrary:v16 excludingMemory:v7 error:&v30];
    v18 = v30;

    if (v17)
    {
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*v15 & 1) == 0)
        {
          v23 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v7 uuid];
            *buf = 138412290;
            *v32 = v24;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Clearing notification state of memory %@, already have notification today", buf, 0xCu);
          }
        }

        [v7 setNotificationState:0];
        v14 = 0;
        goto LABEL_22;
      }

      if ((*v15 & 1) == 0)
      {
        v19 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v32 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error fetching countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeen, error: %@", buf, 0xCu);
        }
      }
    }

    v14 = 1;
LABEL_22:

    goto LABEL_23;
  }

  LOBYTE(v20) = 0;
LABEL_34:

  return v20;
}

- (id)_handleMemoryRecords:(id)a3 inLibrary:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v44 = objc_opt_new();
  v43 = [MEMORY[0x1E695DEE8] currentCalendar];
  v48 = objc_alloc_init(PLCloudDownloadBatchDetails);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = v5;
  v52 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (!v52)
  {
    v45 = 0;
    goto LABEL_52;
  }

  v45 = 0;
  v51 = *v54;
  v46 = v7;
  v47 = v6;
  do
  {
    for (i = 0; i != v52; ++i)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v53 + 1) + 8 * i);
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 scopedIdentifier];
      v12 = [v11 identifier];

      v13 = [PLMemory memoryWithUUID:v12 inPhotoLibrary:v6];
      v14 = [v9 creationDate];

      if (!v14)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v32 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v58 = v9;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_FAULT, "Skipping CPLMemory record with nil creationDate: %@", buf, 0xCu);
          }
        }

        v33 = MEMORY[0x1E696AEC0];
        v34 = [v9 scopedIdentifier];
        v31 = [v33 stringWithFormat:@"Attempted to pull a CPLMemory %@ with nil creationDate. \n\nSee rdar://problem/81107309", v34];

        v35 = @"TTR: CPLMemory with nil creationDate";
        goto LABEL_33;
      }

      v15 = [v9 title];

      if (!v15)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v36 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v58 = v9;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_FAULT, "Skipping CPLMemory record with nil title: %@", buf, 0xCu);
          }
        }

        v37 = MEMORY[0x1E696AEC0];
        v38 = [v9 scopedIdentifier];
        v31 = [v37 stringWithFormat:@"Attempted to pull a CPLMemory %@ with nil title. \n\nSee rdar://problem/81107309", v38];

        v35 = @"TTR: CPLMemory with nil title";
LABEL_33:
        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Cloud Photo Library state detected" message:@"Please file a Radar against Photos" radarTitle:v35 radarDescription:v31];
        v16 = v13;
        goto LABEL_48;
      }

      v50 = v10;
      v16 = v13;
      if (!v13)
      {
        v17 = [v6 managedObjectContext];
        v18 = [v9 title];
        v19 = [v9 subtitle];
        v20 = [v9 creationDate];
        v16 = [PLMemory insertIntoContext:v17 withUUID:v12 title:v18 subtitle:v19 creationDate:v20];

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v21 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v16;
            v59 = 2112;
            v60 = v9;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Created new local memory %@ with cloud memory %@", buf, 0x16u);
          }
        }

        v7 = v46;
        v6 = v47;
      }

      v22 = [v16 updateWithCPLMemoryChange:v9 inPhotoLibrary:v6];
      WeakRetained = objc_loadWeakRetained(&self->_manager);
      v24 = [WeakRetained deviceLibraryConfiguration] - 3;

      if (v24 < 0xFFFFFFFFFFFFFFFELL || (v22 & 1) != 0)
      {
        v10 = v50;
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v39 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v16;
            v59 = 2112;
            v60 = v9;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Updating local memory %@ with cloud memory %@", buf, 0x16u);
          }
        }

        if ([v9 graphVersion] < 0x301u)
        {
          v31 = [v16 creationDate];
        }

        else
        {
          if ([(PLCloudBatchDownloader *)self _shouldHandleNotificationChangeForMemory:v16 memoryRecord:v9 wasPersisted:v13 != 0])
          {
            [v44 addObject:v16];
          }

          v31 = [v16 creationDate];
          if (([v16 isUserCreatedMemory] & 1) == 0)
          {
            if (!v45 || [v31 compare:v45] == 1)
            {
              v31 = v31;

              v45 = v31;
            }

            v10 = v50;
          }
        }

        [(PLCloudDownloadBatchDetails *)v48 setNeedsWidgetTimelineReload:1];
      }

      else
      {
        v10 = v50;
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v25 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v16 uuid];
            v27 = objc_loadWeakRetained(&self->_manager);
            v28 = [v27 deviceLibraryConfiguration];
            v29 = @"unknown";
            if (v28 <= 2)
            {
              v29 = off_1E756E888[v28];
            }

            v30 = v29;
            *buf = 138412802;
            v58 = v26;
            v59 = 2112;
            v60 = v9;
            v61 = 2112;
            v62 = v30;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Deleting local memory %@ for cloud memory %@ in limited device-library configuration: %@", buf, 0x20u);

            v10 = v50;
          }
        }

        v31 = [v6 managedObjectContext];
        [v31 deleteObject:v16];
      }

LABEL_48:

      objc_autoreleasePoolPop(v10);
    }

    v52 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
  }

  while (v52);
LABEL_52:

  if ([v44 count])
  {
    [(PLCloudBatchDownloader *)self _processNotificationUpdatesForMemories:v44];
  }

  if (v45)
  {
    v40 = [v43 startOfDayForDate:v45];
    v41 = [v43 dateByAddingUnit:16 value:1 toDate:v40 options:0];
    if (v41)
    {
      [PLMemory deletePendingMemoriesCreatedBefore:v41 inPhotoLibrary:v6];
    }
  }

  return v48;
}

- (id)_handleAssetRecords:(id)a3 inSyncContext:(id)a4 withChangeBatch:(id)a5 insertedAssetUUIDs:(id *)a6
{
  v289 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v198 = a5;
  v195 = v9;
  v209 = [v9 photoLibrary];
  v192 = [v209 mainScopeIdentifier];
  v201 = [v209 managedObjectContext];
  v188 = objc_alloc_init(PLCloudDownloadBatchDetails);
  v191 = [MEMORY[0x1E695DFA8] set];
  v176 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v194 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v179 = [MEMORY[0x1E695DF70] array];
  v181 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v180 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v183 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v182 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v193 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v201];
  v269 = 0;
  v268 = 0;
  [(PLCloudBatchDownloader *)self _assetsAndCloudMastersFromAssetRecords:v8 assetsByScopedIdentifier:&v269 mastersByScopedIdentifier:&v268 inLibrary:v209];
  v199 = v269;
  v197 = v268;
  v186 = [PLManagedAsset isComputeSyncEnabledForDirection:1 library:v209];
  v189 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v187 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v267 = 0u;
  v266 = 0u;
  v265 = 0u;
  v264 = 0u;
  obj = v8;
  v200 = [obj countByEnumeratingWithState:&v264 objects:v288 count:16];
  if (!v200)
  {
    v177 = 0;
    v178 = 0;
    goto LABEL_190;
  }

  v177 = 0;
  v178 = 0;
  v196 = *v265;
  do
  {
    v10 = 0;
    do
    {
      if (*v265 != v196)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v202 = v10;
      v12 = *(*(&v264 + 1) + 8 * v10);
      context = objc_autoreleasePoolPush();
      v211 = v12;
      v13 = [(__CFString *)v211 scopedIdentifier];
      *v284 = 0;
      *&v284[8] = v284;
      *&v284[16] = 0x3032000000;
      v285 = __Block_byref_object_copy__41484;
      v286 = __Block_byref_object_dispose__41485;
      v287 = [(__CFString *)v211 masterScopedIdentifier];
      v221 = [v199 objectForKey:v13];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __95__PLCloudBatchDownloader__handleAssetRecords_inSyncContext_withChangeBatch_insertedAssetUUIDs___block_invoke;
      aBlock[3] = &unk_1E756C230;
      v14 = v197;
      v258 = v14;
      v263 = v284;
      v204 = v13;
      v259 = v204;
      v260 = self;
      v15 = v198;
      v261 = v15;
      v207 = v209;
      v262 = v207;
      v205 = _Block_copy(aBlock);
      v16 = v221;
      if (v221)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v17 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v279 = v221;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Found asset %@", buf, 0xCu);
          }

          v16 = v221;
        }

        if (!-[__CFString hasChangeType:](v211, "hasChangeType:", 64) || (WeakRetained = objc_loadWeakRetained(&self->_manager), v19 = [WeakRetained deviceLibraryConfiguration], objc_msgSend(v193, "scopeIdentifier"), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v19) = -[__CFString qualifiesForDeviceLibraryConfiguration:sharingScopeIdentifier:mainScopeIdentifier:](v211, "qualifiesForDeviceLibraryConfiguration:sharingScopeIdentifier:mainScopeIdentifier:", v19, v20, v192), v20, WeakRetained, v16 = v221, (v19 & 1) != 0))
        {
          if ([(__CFString *)v211 isFullRecord])
          {
            v21 = [(__CFString *)v16 master];
            if (v21 || ([PLCloudMaster cloudMasterWithScopedIdentifier:*(*&v284[8] + 40) prefetchResources:0 inLibrary:v207], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v22 = 0;
            }

            else
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v46 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v279 = v211;
                  v280 = 2112;
                  v281 = v21;
                  _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "%@ is known to the library with no master. Trying to fix-up library with cloudMaster %@", buf, 0x16u);
                }

                v16 = v221;
              }

              [PLManagedAsset fixupCloudPhotoLibraryAsset:v16 withCloudMaster:v21 inLibrary:v207];
              v22 = 1;
            }

            v16 = v221;
          }

          else
          {
            v22 = 0;
          }

          v215 = [(__CFString *)v16 master];
          if (!v215 || !*(*&v284[8] + 40))
          {
            goto LABEL_115;
          }

          v47 = [(__CFString *)v16 master];
          v48 = [v47 scopedIdentifier];
          v49 = [v48 isEqual:*(*&v284[8] + 40)];

          if ((v49 & 1) == 0)
          {
            v215 = [(__CFString *)v221 master];
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v50 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = [v215 scopedIdentifier];
                v52 = *(*&v284[8] + 40);
                *buf = 138412802;
                v279 = v211;
                v280 = 2112;
                v281 = v51;
                v282 = 2112;
                v283 = v52;
                _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "Going to remap asset record %@ master from %@ to %@", buf, 0x20u);
              }
            }

            v217 = v205[2]();
            if (v217)
            {
              v53 = [v215 fingerprintScheme];
              if ([v53 isForStableHash])
              {
                v54 = [v217 fingerprintScheme];
                v55 = [v54 providesEnhancedPrivacy];

                if (v55)
                {
                  v56 = [v215 scopedIdentifier];
                  v185 = [v56 identifier];

                  v184 = [v217 stableHashFromOriginalResourceError:0];
                  v57 = v221;
                  v58 = [v185 isEqualToString:v184];
                  goto LABEL_95;
                }
              }

              else
              {
              }

              v62 = [v215 fingerprintScheme];
              if ([v62 providesEnhancedPrivacy])
              {
                v63 = [v217 fingerprintScheme];
                v64 = [v63 isForStableHash];

                if (v64)
                {
                  v185 = [v215 stableHashFromOriginalResourceError:0];
                  v62 = [v217 scopedIdentifier];
                  v184 = [v62 identifier];
                  goto LABEL_81;
                }

                v184 = 0;
                v185 = 0;
              }

              else
              {
                v184 = 0;
                v185 = 0;
LABEL_81:
              }

              v57 = v221;
              v58 = [v185 isEqualToString:v184];
LABEL_95:
              v71 = v58;
              v72 = [(__CFString *)v57 allMasterCPLResources];
              v255 = 0u;
              v256 = 0u;
              v253 = 0u;
              v254 = 0u;
              v219 = v72;
              v73 = [v219 countByEnumeratingWithState:&v253 objects:v277 count:16];
              if (v73)
              {
                v74 = *v254;
                do
                {
                  for (i = 0; i != v73; ++i)
                  {
                    if (*v254 != v74)
                    {
                      objc_enumerationMutation(v219);
                    }

                    v76 = *(*(&v253 + 1) + 8 * i);
                    if (!v71 || ([v217 rm_cloudResourcesForResourceType:{objc_msgSend(*(*(&v253 + 1) + 8 * i), "cplType")}], v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "firstObject"), v78 = objc_claimAutoreleasedReturnValue(), v77, !v78) || (objc_msgSend(v78, "fingerprint"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "stableHash"), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v215, "fingerprintContext"), v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v76, "isEquivalentToFingerprint:andStableHash:fingerprintContext:", v79, v80, v81), v81, v80, v79, v78, (v82 & 1) == 0))
                    {
                      [(__CFString *)v221 removeLocalFileForResource:v76 allowDCIMPath:1];
                    }

                    [v76 deleteResource];
                  }

                  v73 = [v219 countByEnumeratingWithState:&v253 objects:v277 count:16];
                }

                while (v73);
              }

              [PLManagedAsset fixupCloudPhotoLibraryAsset:v221 withCloudMaster:v217 inLibrary:v207];
              if ((v71 & 1) == 0)
              {
                [(__CFString *)v221 invalidateThumbnailIfNeededAfterMasterResourceChangeInLibrary:v207];
              }

              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v83 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = [v215 scopedIdentifier];
                  v85 = [v217 scopedIdentifier];
                  *buf = 138412802;
                  v279 = v211;
                  v280 = 2112;
                  v281 = v84;
                  v282 = 2112;
                  v283 = v85;
                  _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Existing asset record's %@ master has been remapped from %@ to %@", buf, 0x20u);
                }
              }

              [PLCloudMaster deleteMasterIfNecessary:v215 inLibrary:v207];

              v22 = 1;
LABEL_113:

LABEL_114:
            }

            else
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v60 = __CPLAssetsdOSLogDomain();
                v185 = v60;
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = *(*&v284[8] + 40);
                  *buf = 138412546;
                  v279 = v61;
                  v280 = 2112;
                  v281 = v211;
                  _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Unable to find new master %@ to remap asset %@", buf, 0x16u);
                }

                goto LABEL_113;
              }
            }

LABEL_115:
          }

          v86 = v221;
          if ([(__CFString *)v211 hasChangeType:32])
          {
            v215 = [objc_opt_class() _adjustmentStateDictionaryForComparingIncomingFaceRecordForAsset:v221];
            v87 = [(__CFString *)v221 cloudIdentifier];
            [v195 setAssetAdjustmentState:v215 forCloudIdentifier:v87];

            v86 = v221;
          }

          else
          {
            v215 = 0;
          }

          if ([(__CFString *)v86 cloudLocalState]!= 1)
          {
            [(__CFString *)v86 setCloudLocalState:1];
          }

          if ([(__CFString *)v86 isPartOfBurst])
          {
            v88 = [(__CFString *)v86 avalancheUUID];
            [v191 addObject:v88];
          }

          v89 = [(__CFString *)v211 burstIdentifier];
          v90 = v89 == 0;

          if (!v90)
          {
            v91 = [(__CFString *)v211 burstIdentifier];
            [v191 addObject:v91];
          }

          v92 = v194;
          v93 = v221;
          if ((_os_feature_enabled_impl() & 1) == 0 && [(__CFString *)v211 hasChangeType:64])
          {
            [(__CFString *)v221 applySharingPropertiesFromAssetChange:v211 inLibrary:v207];
          }

          if ([(__CFString *)v211 hasChangeType:2])
          {
            [(__CFString *)v221 applyPropertiesFromAssetChange:v211 inLibrary:v207];
          }

          if ([(__CFString *)v211 hasChangeType:8])
          {
            [(PLCloudDownloadBatchDetails *)v188 setHasResourceChanges:1];
            if (([(__CFString *)v211 isFullRecord]& 1) == 0 && ([(__CFString *)v221 isPlaceholderAsset]& 1) == 0)
            {
              v94 = [(__CFString *)v221 allAssetCPLResources];
              [(PLCloudBatchDownloader *)self _triggerBackgroundDownloadFailureForResources:v94];

              v92 = v194;
              v93 = v221;
            }

            v95 = [(__CFString *)v93 rm_applyResourcesFromAssetChange:v211 inLibrary:v207];
            if ([v95 count])
            {
              [v92 unionSet:v95];
            }

            v92 = v194;
            v93 = v221;
          }

          if ([(__CFString *)v211 hasChangeType:2])
          {
            buf[0] = 0;
            [(__CFString *)v93 applyComputeSyncPropertiesFromAssetChange:v211 inLibrary:v207 didInstallComputeSyncResource:buf computeSyncDownloadEnabled:v186];
            if (buf[0] == 1)
            {
              [(PLCloudDownloadBatchDetails *)v188 setHasResourceChanges:1];
            }
          }

          if ([(__CFString *)v211 isFullRecord])
          {
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v96 = [(__CFString *)v93 allMasterCPLResources];
            v97 = [v96 countByEnumeratingWithState:&v249 objects:v276 count:16];
            if (v97)
            {
              v98 = *v250;
              do
              {
                for (j = 0; j != v97; ++j)
                {
                  if (*v250 != v98)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v100 = *(*(&v249 + 1) + 8 * j);
                  if ([v100 isLocallyAvailable])
                  {
                    [v92 addObject:v100];
                  }
                }

                v97 = [v96 countByEnumeratingWithState:&v249 objects:v276 count:16];
              }

              while (v97);
            }

            v93 = v221;
          }

          if ([(__CFString *)v211 hasChangeType:32])
          {
            [(__CFString *)v93 applyFacesFromAssetChange:v211 inSyncContext:v195];
          }

          if (([(__CFString *)v211 hasChangeType:2]& 1) != 0 || [(__CFString *)v211 hasChangeType:8])
          {
            [(__CFString *)v93 postProcessResourceDependentPropertyChangesFromAssetChange:v211 inLibrary:v207];
          }

          v101 = [(__CFString *)v93 cloudIdentifier];
          [v195 setAssetAdjustmentState:0 forCloudIdentifier:v101];

          if (v22)
          {
            v102 = [PLResourceDataStoreManager updateDerivativeResourcesForAsset:v221 forLifecycleEvent:2];
          }

          v103 = [(__CFString *)v221 momentShare];
          if (v103)
          {
            v104 = v22;
          }

          else
          {
            v104 = 0;
          }

          if (v104)
          {
            v105 = [(__CFString *)v221 momentShare];
            [v189 addObject:v105];
          }

          v106 = [(__CFString *)v221 collectionShare];
          if (v106)
          {
            v107 = v22;
          }

          else
          {
            v107 = 0;
          }

          if (v107)
          {
            v108 = [(__CFString *)v221 collectionShare];
            [v187 addObject:v108];
          }

          if ([(__CFString *)v221 isPlaceholderAsset])
          {
            v109 = [(__CFString *)v221 momentShare];

            if (v109)
            {
              -[__CFString fixupPlaceholderAssetWithSavedAssetType:](v221, "fixupPlaceholderAssetWithSavedAssetType:", [MEMORY[0x1E69BF328] savedAssetTypeForMomentSharedAsset]);
              v110 = [(__CFString *)v221 momentShare];
              [v189 addObject:v110];
              goto LABEL_175;
            }

            v113 = [(__CFString *)v221 collectionShare];

            if (v113)
            {
              -[__CFString fixupPlaceholderAssetWithSavedAssetType:](v221, "fixupPlaceholderAssetWithSavedAssetType:", [MEMORY[0x1E69BF328] savedAssetTypeForCollectionShareAsset]);
              v110 = [(__CFString *)v221 collectionShare];
              [v187 addObject:v110];
              goto LABEL_175;
            }

            -[__CFString fixupPlaceholderAssetWithSavedAssetType:](v221, "fixupPlaceholderAssetWithSavedAssetType:", [MEMORY[0x1E69BF328] savedAssetTypeForCloudPhotoLibraryAsset]);
            v110 = [(__CFString *)v221 additionalAttributes];
            v114 = [v110 syndicationIdentifier];
            if (v114)
            {
              v115 = ([(__CFString *)v221 syndicationState]& 2) == 0;

              if (v115)
              {
                v34 = v221;
                [(__CFString *)v221 syndicatedAssetDidSaveToUserLibrary];
LABEL_177:

LABEL_178:
                v26 = v211;
                goto LABEL_179;
              }
            }

            else
            {
LABEL_175:
            }
          }

          else
          {
            v111 = [(__CFString *)v221 additionalAttributes];
            v112 = [v111 sourceAssetForDuplicationCPLScopedIdentifier];

            if (v112)
            {
              v110 = [(__CFString *)v221 additionalAttributes];
              [v110 setSourceAssetForDuplicationCPLScopedIdentifier:0];
              goto LABEL_175;
            }
          }

          v34 = v221;
          goto LABEL_177;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v35 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = objc_loadWeakRetained(&self->_manager);
            v37 = [v36 deviceLibraryConfiguration];
            v38 = @"unknown";
            if (v37 <= 2)
            {
              v38 = off_1E756E888[v37];
            }

            v39 = v38;
            *buf = 138412546;
            v279 = v211;
            v280 = 2112;
            v281 = v39;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Deleting asset for record %@, asset does not qualify for device-library configuration: %@", buf, 0x16u);
          }

          v16 = v221;
        }

        [v181 addObject:v16];
        v40 = [PLMemory memoryObjectIDsContainingAsset:v16];
        [v183 unionSet:v40];

        v34 = v221;
        v214 = [PLSuggestion suggestionObjectIDsContainingAsset:v221];
        [v182 unionSet:v214];

        goto LABEL_178;
      }

      v23 = objc_loadWeakRetained(&self->_manager);
      v24 = [v23 deviceLibraryConfiguration];
      v25 = [v193 scopeIdentifier];
      LOBYTE(v24) = [(__CFString *)v211 qualifiesForDeviceLibraryConfiguration:v24 sharingScopeIdentifier:v25 mainScopeIdentifier:v192];

      if ((v24 & 1) == 0)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v29 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_loadWeakRetained(&self->_manager);
            v31 = [v30 deviceLibraryConfiguration];
            v32 = @"unknown";
            if (v31 <= 2)
            {
              v32 = off_1E756E888[v31];
            }

            v33 = v32;
            *buf = 138412546;
            v279 = v211;
            v280 = 2112;
            v281 = v33;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Skipping asset record %@, no existing asset and new asset does not qualify for device-library configuration: %@", buf, 0x16u);
          }
        }

        v34 = [v14 objectForKeyedSubscript:*(*&v284[8] + 40)];
        if (v34)
        {
          [v180 addObject:v34];
          v213 = v34;
          v34 = 0;
        }

        else
        {
        }

        goto LABEL_178;
      }

      if (([(__CFString *)v211 isFullRecord]& 1) != 0 || ![(__CFString *)v211 hasChangeType:64])
      {
        v26 = v211;
      }

      else
      {
        v26 = [v15 additionalRecordWithScopedIdentifier:v204];

        v27 = [(__CFString *)v26 masterScopedIdentifier];
        v28 = *(*&v284[8] + 40);
        *(*&v284[8] + 40) = v27;
      }

      if (([(__CFString *)v26 isFullRecord]& 1) != 0)
      {
        if (*(*&v284[8] + 40))
        {
          v215 = v205[2]();
          if (v215)
          {
            v41 = [PLManagedAsset createCloudPhotoLibraryAssetWithAssetRecord:v26 withCloudMaster:v215 inLibrary:v207];
            v42 = v41;
            if (v41)
            {
              v221 = v41;
              if ([(__CFString *)v41 isPhoto])
              {
                ++v178;
              }

              else
              {
                v177 += [(__CFString *)v42 isVideo];
              }

              v66 = [(__CFString *)v42 momentShare];
              v67 = v66;
              v217 = v66;
              if (v66)
              {
                if ([v66 shouldNotifyOnUploadCompletion])
                {
                  v68 = [v67 momentShareAssets];
                  v69 = [v68 count];
                  LODWORD(v69) = v69 == [v67 assetCount];

                  if (v69)
                  {
                    v70 = [v217 uuid];
                    [v176 addObject:v70];
                  }
                }
              }

              [v179 addObject:v221];
              v22 = 1;
              v211 = v26;
              goto LABEL_114;
            }

            if (*MEMORY[0x1E6994D48])
            {
              goto LABEL_86;
            }

            v65 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v279 = v26;
              _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Failed to create asset from assetRecord %@ ", buf, 0xCu);
            }
          }

          else
          {
            if (*MEMORY[0x1E6994D48])
            {
              v215 = 0;
              goto LABEL_86;
            }

            v65 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v279 = v26;
              _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Failed to create asset from assetRecord %@, can't find master", buf, 0xCu);
            }

            v215 = 0;
          }

LABEL_86:
          v34 = 0;
          v211 = v26;
          goto LABEL_177;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v59 = __CPLAssetsdOSLogDomain();
          v215 = v59;
          if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_86;
          }

          *buf = 138412290;
          v279 = v26;
          v44 = v59;
          v45 = "Skipping asset record %@, can't create asset, no master identifier";
          goto LABEL_68;
        }
      }

      else if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v43 = __CPLAssetsdOSLogDomain();
        v215 = v43;
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_86;
        }

        *buf = 138412290;
        v279 = v26;
        v44 = v43;
        v45 = "Skipping asset record %@, received a non-full record from CPL and we can't find the asset to apply this change to";
LABEL_68:
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
        goto LABEL_86;
      }

      v34 = 0;
LABEL_179:

      _Block_object_dispose(v284, 8);
      objc_autoreleasePoolPop(context);
      v10 = v202 + 1;
    }

    while (v202 + 1 != v200);
    v116 = [obj countByEnumeratingWithState:&v264 objects:v288 count:16];
    v200 = v116;
  }

  while (v116);
LABEL_190:

  v247 = 0u;
  v248 = 0u;
  v245 = 0u;
  v246 = 0u;
  v220 = v189;
  v117 = [v220 countByEnumeratingWithState:&v245 objects:v275 count:16];
  if (v117)
  {
    v118 = *v246;
    do
    {
      for (k = 0; k != v117; ++k)
      {
        if (*v246 != v118)
        {
          objc_enumerationMutation(v220);
        }

        v120 = *(*(&v245 + 1) + 8 * k);
        [v120 recomputeCachedValues];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v121 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            v122 = [v120 scopeIdentifier];
            v123 = [v120 uuid];
            *v284 = 138543618;
            *&v284[4] = v122;
            *&v284[12] = 2114;
            *&v284[14] = v123;
            _os_log_impl(&dword_19BF1F000, v121, OS_LOG_TYPE_DEFAULT, "Recomputed uploaded asset counts on MomentShare %{public}@ %{public}@ after handling asset records", v284, 0x16u);
          }
        }
      }

      v117 = [v220 countByEnumeratingWithState:&v245 objects:v275 count:16];
    }

    while (v117);
  }

  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v218 = v187;
  v124 = [v218 countByEnumeratingWithState:&v241 objects:v274 count:16];
  if (v124)
  {
    v125 = *v242;
    do
    {
      for (m = 0; m != v124; ++m)
      {
        if (*v242 != v125)
        {
          objc_enumerationMutation(v218);
        }

        v127 = *(*(&v241 + 1) + 8 * m);
        [v127 recomputeCachedValues];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v128 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v129 = [v127 scopeIdentifier];
            v130 = [v127 uuid];
            *v284 = 138543618;
            *&v284[4] = v129;
            *&v284[12] = 2114;
            *&v284[14] = v130;
            _os_log_impl(&dword_19BF1F000, v128, OS_LOG_TYPE_DEFAULT, "Recomputed uploaded asset counts on CollectionShare %{public}@ %{public}@ after handling asset records", v284, 0x16u);
          }
        }
      }

      v124 = [v218 countByEnumeratingWithState:&v241 objects:v274 count:16];
    }

    while (v124);
  }

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v216 = v191;
  v131 = [v216 countByEnumeratingWithState:&v237 objects:v273 count:16];
  if (v131)
  {
    v132 = *v238;
    do
    {
      for (n = 0; n != v131; ++n)
      {
        if (*v238 != v132)
        {
          objc_enumerationMutation(v216);
        }

        v134 = *(*(&v237 + 1) + 8 * n);
        v135 = [PLAvalanche assetsWithAvalancheUUID:v134 sourceType:1 inManagedObjectContext:v201];
        if ([v135 count] && !+[PLAvalanche isValidBurstWithAssets:](PLAvalanche, "isValidBurstWithAssets:", v135))
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v136 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              *v284 = 138412290;
              *&v284[4] = v134;
              _os_log_impl(&dword_19BF1F000, v136, OS_LOG_TYPE_DEFAULT, "Found burst on a download, revalidating %@", v284, 0xCu);
            }
          }

          v137 = [PLAvalanche revalidateAvalancheAssets:v135 inLibrary:v209 deleteNonPicks:0 allowDissolve:0];
        }
      }

      v131 = [v216 countByEnumeratingWithState:&v237 objects:v273 count:16];
    }

    while (v131);
  }

  [(PLCloudDownloadBatchDetails *)v188 setNumberOfPhotos:v178];
  [(PLCloudDownloadBatchDetails *)v188 setNumberOfVideos:v177];
  [(PLCloudDownloadBatchDetails *)v188 setCmmUUIDsToNotify:v176];
  if ([v194 count])
  {
    v138 = [v209 managedObjectContext];
    v139 = [v194 allObjects];
    v236 = 0;
    v140 = [v138 obtainPermanentIDsForObjects:v139 error:&v236];
    v141 = v236;

    if ((v140 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v142 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        *v284 = 138412546;
        *&v284[4] = v194;
        *&v284[12] = 2112;
        *&v284[14] = v141;
        _os_log_impl(&dword_19BF1F000, v142, OS_LOG_TYPE_ERROR, "Unable to obtain permanent ID for %@: %@", v284, 0x16u);
      }
    }

    v143 = [v194 valueForKey:@"objectID"];
    [(PLCloudDownloadBatchDetails *)v188 setConfirmedResourceIDs:v143];
  }

  [PLManagedAsset markMomentShareAndCollectionShareAssetsAsCopied:v179];
  *v284 = 0;
  *&v284[8] = v284;
  *&v284[16] = 0x3032000000;
  v285 = __Block_byref_object_copy__41484;
  v286 = __Block_byref_object_dispose__41485;
  v287 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v179, "count")}];
  v235[0] = MEMORY[0x1E69E9820];
  v235[1] = 3221225472;
  v235[2] = __95__PLCloudBatchDownloader__handleAssetRecords_inSyncContext_withChangeBatch_insertedAssetUUIDs___block_invoke_115;
  v235[3] = &unk_1E756C258;
  v235[4] = v284;
  v144 = [v179 _pl_filter:v235];
  v145 = [*(*&v284[8] + 40) allObjects];
  v206 = [PLImportSession albumsWithImportSessionIDs:v145 inManagedObjectContext:v201];

  v146 = [v206 _pl_indexBy:&__block_literal_global_120];
  v222 = [v146 mutableCopy];

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v212 = v144;
  v147 = [v212 countByEnumeratingWithState:&v231 objects:v272 count:16];
  if (v147)
  {
    v148 = *v232;
    do
    {
      for (ii = 0; ii != v147; ++ii)
      {
        if (*v232 != v148)
        {
          objc_enumerationMutation(v212);
        }

        v150 = *(*(&v231 + 1) + 8 * ii);
        v151 = [v150 master];
        v152 = [v151 importSessionID];

        v153 = [v222 objectForKeyedSubscript:v152];
        if (!v153)
        {
          v153 = [PLImportSession insertNewImportSessionAlbumWithImportSessionID:v152 inManagedObjectContext:v201];
          [v222 setObject:v153 forKeyedSubscript:v152];
        }

        [v150 setImportSession:v153];
        [v153 updateImportDatesFromAddedAsset:v150];
      }

      v147 = [v212 countByEnumeratingWithState:&v231 objects:v272 count:16];
    }

    while (v147);
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v208 = v181;
  v154 = [v208 countByEnumeratingWithState:&v227 objects:v271 count:16];
  if (v154)
  {
    v155 = *v228;
    do
    {
      for (jj = 0; jj != v154; ++jj)
      {
        if (*v228 != v155)
        {
          objc_enumerationMutation(v208);
        }

        v157 = *(*(&v227 + 1) + 8 * jj);
        [v157 setLocalOnlyDelete:1];
        v158 = MEMORY[0x1E696AEC0];
        v159 = objc_loadWeakRetained(&self->_manager);
        v160 = [v159 deviceLibraryConfiguration];
        v161 = @"unknown";
        if (v160 <= 2)
        {
          v161 = off_1E756E888[v160];
        }

        v162 = v161;
        v163 = [v158 stringWithFormat:@"Asset does not qualify for device-library configuration: %@", v162];
        v164 = [PLAssetTransactionReason transactionReason:v163];
        [v157 deleteWithReason:v164];
      }

      v154 = [v208 countByEnumeratingWithState:&v227 objects:v271 count:16];
    }

    while (v154);
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v165 = v180;
  v166 = [v165 countByEnumeratingWithState:&v223 objects:v270 count:16];
  if (v166)
  {
    v167 = *v224;
    do
    {
      for (kk = 0; kk != v166; ++kk)
      {
        if (*v224 != v167)
        {
          objc_enumerationMutation(v165);
        }

        [PLCloudMaster deleteMasterIfNecessary:*(*(&v223 + 1) + 8 * kk) inLibrary:v209];
      }

      v166 = [v165 countByEnumeratingWithState:&v223 objects:v270 count:16];
    }

    while (v166);
  }

  v169 = [v209 managedObjectContext];
  [PLMemory deleteMemoriesWithObjectIDs:v183 inManagedObjectContext:v169];

  v170 = [v209 managedObjectContext];
  [PLSuggestion deleteSuggestionsWithObjectIDs:v182 inManagedObjectContext:v170];

  if (a6)
  {
    v171 = MEMORY[0x1E695DFD8];
    v172 = [v179 valueForKey:@"uuid"];
    *a6 = [v171 setWithArray:v172];
  }

  v173 = v188;

  _Block_object_dispose(v284, 8);

  return v173;
}

id __95__PLCloudBatchDownloader__handleAssetRecords_inSyncContext_withChangeBatch_insertedAssetUUIDs___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
  if (!v2)
  {
    v3 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 72) + 8) + 40);
        v6 = *(a1 + 40);
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Can't find the master %@ for asset %@ in Photos db or in the batch. Checking batch additionalRecords", &v10, 0x16u);
      }
    }

    v2 = [*(a1 + 48) _findMaster:*(*(*(a1 + 72) + 8) + 40) fromAdditionalRecordInBatch:*(a1 + 56) inLibrary:*(a1 + 64)];
    if (!v2)
    {
      if ((*v3 & 1) == 0)
      {
        v7 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(*(a1 + 72) + 8) + 40);
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Can't find the master %@ on the additionalRecord", &v10, 0xCu);
        }
      }

      v2 = 0;
    }
  }

  return v2;
}

BOOL __95__PLCloudBatchDownloader__handleAssetRecords_inSyncContext_withChangeBatch_insertedAssetUUIDs___block_invoke_115(uint64_t a1, void *a2)
{
  v3 = [a2 master];
  v4 = [v3 importSessionID];

  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  return v4 != 0;
}

- (void)_assetsAndCloudMastersFromAssetRecords:(id)a3 assetsByScopedIdentifier:(id *)a4 mastersByScopedIdentifier:(id *)a5 inLibrary:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v25 = a6;
  v8 = [MEMORY[0x1E695DFA8] setWithObject:@"master"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = v9;
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v13);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        if ([v15 hasChangeType:2])
        {
          [v8 addObject:@"additionalAttributes"];
        }

        if ([v15 hasChangeType:8])
        {
          [v8 addObject:@"modernResources"];
        }

        v17 = [v15 keywords];

        if (v17)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"additionalAttributes", @"keywords"];
          [v8 addObject:v18];
        }

        objc_autoreleasePoolPop(v16);
      }

      v9 = v13;
      v11 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  if (a4)
  {
    v19 = NSStringFromSelector(sel_scopedIdentifier);
    v20 = [v9 valueForKey:v19];
    v21 = [v8 allObjects];
    *a4 = [PLManagedAsset assetsByScopedIdentifiers:v20 relationshipKeyPathsForPrefetching:v21 inLibrary:v25];
  }

  v22 = [v9 _pl_map:&__block_literal_global_41721];
  if (v22)
  {
    *a5 = [PLCloudMaster cloudMastersByScopedIdentifiers:v22 relationshipKeyPathsForPrefetching:0 inLibrary:v25];
  }
}

- (id)_findMaster:(id)a3 fromAdditionalRecordInBatch:(id)a4 inLibrary:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [a4 additionalRecordWithScopedIdentifier:a3];
  v10 = v9;
  if (v9)
  {
    v16[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [(PLCloudBatchDownloader *)self _handleMasterRecords:v11 inLibrary:v8];

    v13 = [v10 scopedIdentifier];
    v14 = [PLCloudMaster cloudMasterWithScopedIdentifier:v13 prefetchResources:0 inLibrary:v8];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_handleMasterRecords:(id)a3 inLibrary:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PLCloudDownloadBatchDetails);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = NSStringFromSelector(sel_scopedIdentifier);
  v10 = [v5 valueForKey:v9];

  v42 = v10;
  v11 = [PLCloudMaster cloudMastersByScopedIdentifiers:v10 relationshipKeyPathsForPrefetching:0 inLibrary:v6];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = v5;
  v46 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v46)
  {
    v45 = *v51;
    v13 = MEMORY[0x1E6994D48];
    v44 = v11;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v16 = [v15 scopedIdentifier];
        v17 = [v11 objectForKeyedSubscript:v16];

        if (v17)
        {
          goto LABEL_7;
        }

        if ((*v13 & 1) == 0)
        {
          v25 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v55 = v15;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "Creating cloudMaster from masterChange %@", buf, 0xCu);
          }
        }

        v26 = [v15 scopedIdentifier];
        v49 = 0;
        v27 = [PLShare getShareIfNecessary:&v49 forCPLRecordWithClass:objc_opt_class() scopedIdentifier:v26 inLibrary:v6];
        v28 = v49;
        v29 = v28;
        if (v27)
        {
          [v26 identifier];
          v30 = v12;
          v31 = v8;
          v33 = v32 = v7;
          v17 = [PLCloudMaster insertIntoPhotoLibrary:v6 withCloudMasterGUID:v33 inShare:v29];
          [v17 setCloudLocalState:3];

          v7 = v32;
          v8 = v31;
          v12 = v30;
          v11 = v44;

          if (v17)
          {
            v13 = MEMORY[0x1E6994D48];
LABEL_7:
            if ([v17 cloudLocalState] != 3)
            {
              [v17 setCloudLocalState:3];
            }

            if ([v15 hasChangeType:2])
            {
              if ((*v13 & 1) == 0)
              {
                v18 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v55 = v15;
                  _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Applying properties change from masterChange %@", buf, 0xCu);
                }
              }

              [v17 applyPropertiesFromCPLMasterChange:v15];
            }

            if ([v15 hasChangeType:8])
            {
              [(PLCloudDownloadBatchDetails *)v7 setHasResourceChanges:1];
              if (([v15 isFullRecord] & 1) == 0 && objc_msgSend(v17, "placeholderState") != 1)
              {
                v19 = [v17 allAssetAttachedResources];
                [(PLCloudBatchDownloader *)self _triggerBackgroundDownloadFailureForResources:v19];
              }

              if ((*v13 & 1) == 0)
              {
                v20 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v55 = v15;
                  _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Applying resource change from masterChange %@", buf, 0xCu);
                }
              }

              v21 = [v17 rm_applyResourcesFromCPLMasterChange:v15 inPhotoLibrary:v6];
              if ([v21 count])
              {
                [v8 unionSet:v21];
              }
            }

            if ([v15 hasChangeType:2])
            {
              v22 = [v15 expungeableResourceStates];
              v23 = [v22 count];

              if (v23)
              {
                v13 = MEMORY[0x1E6994D48];
                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v24 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v55 = v15;
                    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Applying expungeable resource states change from masterChange %@", buf, 0xCu);
                  }
                }

                [v17 rm_applyExpungeableResourceStatesFromCPLMasterChange:v15 inPhotoLibrary:v6];
              }

              else
              {
                v13 = MEMORY[0x1E6994D48];
              }
            }

            goto LABEL_47;
          }
        }

        else
        {
        }

        v13 = MEMORY[0x1E6994D48];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v34 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v15;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Unable to create cloudMaster for %@", buf, 0xCu);
          }
        }

        v17 = 0;
LABEL_47:

        objc_autoreleasePoolPop(context);
      }

      v46 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v46);
  }

  if ([v8 count])
  {
    v35 = [v6 managedObjectContext];
    v36 = [v8 allObjects];
    v48 = 0;
    v37 = [v35 obtainPermanentIDsForObjects:v36 error:&v48];
    v38 = v48;

    if ((v37 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v39 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v8;
        v56 = 2112;
        v57 = v38;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Unable to obtain permanent ID for %@: %@", buf, 0x16u);
      }
    }

    v40 = [v8 valueForKey:@"objectID"];
    [(PLCloudDownloadBatchDetails *)v7 setConfirmedResourceIDs:v40];
  }

  return v7;
}

- (void)_handleAlbumRecords:(id)a3 inLibrary:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [v11 name];
        v13 = [v11 scopedIdentifier];
        v14 = [v13 identifier];

        v15 = [v11 parentIdentifier];

        if (v15)
        {
          v16 = [v11 parentIdentifier];
          v17 = [PLGenericAlbum albumWithCloudGUID:v16 inLibrary:v6];

          if (!v17)
          {
            v17 = [PLManagedFolder insertNewFolderWithTitle:@"Folder" kind:4000 intoLibrary:v6];
            v18 = [v11 parentIdentifier];
            [v17 setCloudGUID:v18];
          }
        }

        v19 = [PLGenericAlbum albumWithCloudGUID:v14 inLibrary:v6];
        if (v19)
        {
          goto LABEL_33;
        }

        if (![v11 albumType])
        {
          v21 = [PLGenericAlbum insertNewAlbumWithTitle:v12 intoLibrary:v6];
          goto LABEL_20;
        }

        if ([v11 albumType] == 3)
        {
          if (([v14 isEqualToString:@"----Root-Folder----"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"----Project-Root-Folder----"))
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v20 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v36 = v14;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Dropping root album from albumChange with cloudGUID: %@. Cannot find it locally", buf, 0xCu);
              }
            }

LABEL_27:
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v22 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v11 albumType];
                *buf = 138412546;
                v36 = v14;
                v37 = 2048;
                v38 = v25;
                _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Dropping album from albumChange %@, unsupported type: %lu", buf, 0x16u);
              }

              v19 = 0;
              goto LABEL_31;
            }

            v19 = 0;
            goto LABEL_32;
          }

          v21 = [PLManagedFolder insertNewFolderWithTitle:v12 kind:4000 intoLibrary:v6];
LABEL_20:
          v19 = v21;
          if (!v21)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        if ([v11 albumType] != 7)
        {
          goto LABEL_27;
        }

        v23 = [v11 projectDocumentType];
        if (v23)
        {
          v24 = v23;
          v19 = [PLGenericAlbum insertNewProjectAlbumWithTitle:v12 documentType:v23 intoLibrary:v6];

          if (!v19)
          {
            goto LABEL_27;
          }

LABEL_21:
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v22 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v36 = v14;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Created album from albumChange %@", buf, 0xCu);
            }

LABEL_31:
          }

LABEL_32:
          [v19 setCloudLocalState:1];
LABEL_33:
          [v19 applyPropertiesFromAlbumChange:v11];
          goto LABEL_34;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v26 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v36 = v11;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_FAULT, "Skipping CPLAlbum record of project type with nil projectDocumentType: %@", buf, 0xCu);
          }
        }

        v27 = MEMORY[0x1E696AEC0];
        v28 = [v11 scopedIdentifier];
        v19 = [v27 stringWithFormat:@"Attempted to pull a CPLAlbum project record %@ with nil projectDocumentType. \n\nSee rdar://problem/77014185", v28];

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Cloud Photo Library state detected" message:@"Please file a Radar against Photos" radarTitle:@"TTR: CPLAlbum project record with nil projectDocumentType" radarDescription:v19];
LABEL_34:

        ++v10;
      }

      while (v8 != v10);
      v29 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      v8 = v29;
    }

    while (v29);
  }
}

- (void)_handleScopeChanges:(id)a3 inLibrary:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = MEMORY[0x1E6994D48];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 scopeType];
        if (v14 <= 3)
        {
          if (v14 >= 2)
          {
            if ((v14 - 2) >= 2)
            {
              continue;
            }

            v15 = [PLMomentShare insertOrUpdateShareWithCPLScopeChange:v13 inPhotoLibrary:v7];
            if ((*v11 & 1) == 0)
            {
              v16 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v15 compactDescription];
                *buf = 138412290;
                v29 = v17;
                _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Created or updated moment share %@", buf, 0xCu);
              }

LABEL_17:
            }

LABEL_18:

            continue;
          }

LABEL_23:
          if ((*v11 & 1) == 0)
          {
            v21 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v13;
              _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Ignoring unsupported scope type for scopeChange %@", buf, 0xCu);
            }
          }

          continue;
        }

        if ((v14 - 4) < 2)
        {
          WeakRetained = objc_loadWeakRetained(&self->_manager);
          v19 = [WeakRetained deviceLibraryConfiguration];

          if (v19 <= 2 && ((3u >> (v19 & 7)) & 1) != 0)
          {
            v20 = objc_loadWeakRetained(&self->_manager);
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __56__PLCloudBatchDownloader__handleScopeChanges_inLibrary___block_invoke;
            v22[3] = &unk_1E7578848;
            v22[4] = v13;
            v23 = v7;
            [v20 performTransactionOnLibraryScopeSynchronizationQueue:v22];
          }
        }

        else
        {
          if ((v14 - 7) < 2)
          {
            v15 = [PLCollectionShare insertOrUpdateShareWithCPLScopeChange:v13 inPhotoLibrary:v7];
            if ((*v11 & 1) == 0)
            {
              v16 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v29 = v15;
                _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Created or updated collection share %@", buf, 0xCu);
              }

              goto LABEL_17;
            }

            goto LABEL_18;
          }

          if (v14 == 9)
          {
            goto LABEL_23;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }
}

void __56__PLCloudBatchDownloader__handleScopeChanges_inLibrary___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [PLLibraryScope insertOrUpdateShareWithCPLScopeChange:*(a1 + 32) inPhotoLibrary:*(a1 + 40)];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v2 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Created or updated library scope %@", &v3, 0xCu);
    }
  }
}

- (id)_mergeTargetFromPersons:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (!v6 || [PLPerson person:*(*(&v13 + 1) + 8 * i) isBetterMergeTargetThanPerson:v6])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [v6 finalMergeTargetPerson];

  return v11;
}

- (void)_mergeExistingPersonsWithPerson:(id)a3 inPhotoLibrary:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 personUri];
  if ([v9 length] && objc_msgSend(MEMORY[0x1E6994A80], "serverSupportsVision"))
  {
    v10 = [v8 managedObjectContext];
    v11 = [PLPerson personsWithPersonUri:v9 inManagedObjectContext:v10];

    if ([v11 count] < 2)
    {
LABEL_28:

      goto LABEL_29;
    }

    v29 = a2;
    v30 = self;
    v33 = v8;
    v34 = v7;
    v12 = [(PLCloudBatchDownloader *)self _mergeTargetFromPersons:v11];
    v13 = [v12 finalMergeTargetPerson];

    v31 = v13;
    v14 = [v13 personUUID];
    v15 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v11;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          v22 = [v21 personUUID];
          if ([v22 isEqualToString:v14])
          {
          }

          else
          {
            v23 = [v21 isTombstone];

            if ((v23 & 1) == 0)
            {
              [v15 addObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      v8 = v33;
      v7 = v34;
      v24 = v31;
      v11 = v32;
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v25 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v43 = v15;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v9;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Merging persons %@ to person %@ with same personUri %@", buf, 0x20u);
        }
      }

      [(PLCloudBatchDownloader *)v30 _saveIfNeeded:v33];
      v26 = [v33 libraryServicesManager];
      v27 = [v26 databaseContext];

      if (!v27)
      {
        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        [v28 handleFailureInMethod:v29 object:v30 file:@"PLCloudBatchDownloader.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"databaseContext"}];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __73__PLCloudBatchDownloader__mergeExistingPersonsWithPerson_inPhotoLibrary___block_invoke;
      v35[3] = &unk_1E756C1E8;
      v36 = v31;
      v37 = v15;
      [v27 performTransactionSync:v35 withName:"[PLCloudBatchDownloader _mergeExistingPersonsWithPerson:inPhotoLibrary:]"];
    }

    else
    {
      v8 = v33;
      v7 = v34;
      v24 = v31;
      v11 = v32;
      if (*MEMORY[0x1E6994D48])
      {
LABEL_27:

        goto LABEL_28;
      }

      v27 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v34;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Unexpected personToMerge for person %@", buf, 0xCu);
      }
    }

    goto LABEL_27;
  }

LABEL_29:
}

void __73__PLCloudBatchDownloader__mergeExistingPersonsWithPerson_inPhotoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [a2 managedObjectContext];
  v4 = [*(a1 + 32) objectID];
  v26 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v26];
  v6 = v26;

  if (v5)
  {
    v19 = v5;
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = v6;
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 objectID];
          v21 = v6;
          v15 = [v3 existingObjectWithID:v14 error:&v21];
          v6 = v21;

          if (v15)
          {
            [v7 addObject:v15];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v16 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v13;
              v29 = 2112;
              v30 = v6;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch personToMerge %@ in transient moc: %@", buf, 0x16u);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v9);
    }

    v5 = v19;
    v17 = [v19 pickKeyFaceOptimalStateForContactDedupeWithPersons:v7];
    [v19 mergePersons:v7 withOptimalState:v17];

LABEL_19:
    goto LABEL_20;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch merge target person %@ in transient moc: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_dropDeferredRebuildFacesInPhotoLibrary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PLDeferredRebuildFace fetchRequest];
  v5 = [v3 managedObjectContext];
  v24 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v24];
  v7 = v24;

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v3 managedObjectContext];
          [v14 deleteObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v15 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v8 count];
        *buf = 134217984;
        v27 = v16;
        v17 = "Dropped all deferred rebuild faces (count: %lu)";
        v18 = v15;
        v19 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
        _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v7;
      v17 = "Unable to fetch deferred rebuild faces with error %@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }

LABEL_16:
  }
}

- (BOOL)_shouldIgnoreIncomingManualOrderChange:(id)a3 localPerson:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6 && ((v7 = [v5 verifiedType], v7 == 4) || v7 == 2) && objc_msgSend(v5, "manualSortOrder") >= 1024)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 manualSortOrder];
        v10 = [v6 personUUID];
        v13 = 134218242;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring incoming person manualOrder (%td) change from cloud graph person %{public}@", &v13, 0x16u);
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldIgnoreIncomingPersonTypeChange:(id)a3 localPerson:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 isHiddenGraphPerson] && ((v7 = objc_msgSend(v5, "verifiedType"), v7 == 4) || v7 == 2))
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 personUUID];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring incoming person change to hidden graph person %{public}@", &v12, 0xCu);
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_handlePersonRecords:(id)a3 inLibrary:(id)a4 includesTiboSchema:(BOOL *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v48 = a4;
  v47 = [v48 managedObjectContext];
  v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v7;
  v50 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (!v50)
  {
    v43 = 0;
    v8 = 0x1E6994000uLL;
    goto LABEL_87;
  }

  v40 = a2;
  v43 = 0;
  v49 = *v54;
  v8 = 0x1E6994000;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v54 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v53 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      if ([v10 personType] != -1 || objc_msgSend(v10, "verifiedType") != 2 && objc_msgSend(v10, "verifiedType") != 4)
      {
        v12 = [v10 scopedIdentifier];
        v13 = [v12 scopeIdentifier];
        v14 = [v48 mainScopeIdentifier];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v38 = [MEMORY[0x1E696AAA8] currentHandler];
          [v38 handleFailureInMethod:v40 object:self file:@"PLCloudBatchDownloader.m" lineNumber:136 description:@"person record is only supported in main library"];
        }

        v16 = [v12 identifier];
        v17 = [v10 fullName];
        v18 = [PLPerson personWithUUID:v16 inManagedObjectContext:v47];
        if (!v18)
        {
          if (([v10 isFullRecord] & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v26 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v58 = v10;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Existing person not found for an updated person record %@", buf, 0xCu);
            }
          }

          v27 = [v48 managedObjectContext];
          v19 = [PLPerson insertIntoManagedObjectContext:v27 withPersonUUID:v16 fullName:v17 verifiedType:0];

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v28 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v19 syncDescription];
              *buf = 138412546;
              v58 = v29;
              v59 = 2112;
              v60 = v10;
              _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Inserted new person %@ for personRecord %@", buf, 0x16u);
            }
          }

          if (v19)
          {
            v24 = 1;
            v25 = 1;
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v19 = v18;
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v20 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v19 syncDescription];
            *buf = 138412546;
            v58 = v21;
            v59 = 2112;
            v60 = v10;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Updating local person %@ with person record %@", buf, 0x16u);
          }
        }

        if ([v10 isFullRecord] && (*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v22 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v19 syncDescription];
            *buf = 138412546;
            v58 = v23;
            v59 = 2112;
            v60 = v10;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Found existing person %@ for a full person record %@", buf, 0x16u);
          }
        }

        v24 = ![(PLCloudBatchDownloader *)self _shouldIgnoreIncomingPersonTypeChange:v10 localPerson:v19];
        v25 = ![(PLCloudBatchDownloader *)self _shouldIgnoreIncomingManualOrderChange:v10 localPerson:v19];
LABEL_36:
        [v19 setFullName:v17];
        v30 = [v10 displayName];
        [v19 setDisplayName:v30];

        if (v24)
        {
          [v19 setType:{objc_msgSend(v10, "personType")}];
        }

        if (v25)
        {
          [v19 setManualOrder:{objc_msgSend(v10, "manualSortOrder")}];
        }

        v8 = 0x1E6994000uLL;
        if ([MEMORY[0x1E6994B38] serverSupportsAssetSortOrder])
        {
          [v19 setAssetSortOrder:{objc_msgSend(v10, "assetSortOrder")}];
        }

        if (![MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
        {
          [v19 setEffectiveVerifiedType:1];
          goto LABEL_59;
        }

        if (![v10 verifiedType])
        {
          goto LABEL_59;
        }

        v31 = [v10 verifiedType];
        v32 = 0;
        if (v31 <= 1)
        {
          if (v31 != -2)
          {
            if (v31 != 1)
            {
              goto LABEL_58;
            }

            goto LABEL_52;
          }

          v32 = 4294967294;
        }

        else if (v31 == 2 || v31 == 4)
        {
          if ([v19 cloudVerifiedType] == 1)
          {
            v32 = 1;
            goto LABEL_58;
          }

          v32 = 2;
        }

        else
        {
          if (v31 != 3)
          {
LABEL_58:
            [v19 setVerifiedType:v32];
            v43 = 1;
LABEL_59:
            if ([MEMORY[0x1E6994B38] serverSupportsMergeTargetRef])
            {
              v33 = [v10 mergeTargetPersonIdentifier];
              v34 = v33;
              if (v33)
              {
                if ([v33 isEqualToString:v16])
                {
                  if ((*MEMORY[0x1E6994D48] & 1) == 0)
                  {
                    v35 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v58 = v10;
                      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Person record %@ points to itself as the merge target, setting the local merge target to nil", buf, 0xCu);
                    }
                  }

                  [v19 setMergeTargetPerson:0];
                }

                else
                {
                  [v42 setObject:v34 forKey:v16];
                }
              }
            }

            if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
            {
              v36 = [v10 detectionType];
              [v19 setCloudDetectionType:v36];
              if (v36 || [v19 detectionType])
              {
                if (v36 == [v19 detectionType] || v36 > 4 || ((1 << v36) & 0x1A) == 0)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                v36 = 1;
              }

              [v19 setDetectionType:v36];
              [v19 assignDetectionTypeFromFaces];
            }

LABEL_78:
            v37 = [v10 contactMatchingDictionary];
            if ([v19 verifiedType] == -2)
            {

              v37 = 0;
            }

            [v19 applyCPLChangeForContactMatchingDictionary:v37];
            [v19 setCloudLocalState:1];
            [v46 addObject:v19];

LABEL_81:
            goto LABEL_82;
          }

LABEL_52:
          v32 = 1;
        }

        [v19 setCloudVerifiedType:v32];
        goto LABEL_58;
      }

      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_83;
      }

      v12 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v10;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Dropping hidden graph person record %@", buf, 0xCu);
      }

LABEL_82:

LABEL_83:
      objc_autoreleasePoolPop(v11);
    }

    v50 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  }

  while (v50);
LABEL_87:

  if ([*(v8 + 2872) serverSupportsMergeTargetRef])
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __76__PLCloudBatchDownloader__handlePersonRecords_inLibrary_includesTiboSchema___block_invoke;
    v51[3] = &unk_1E7577D60;
    v52 = v47;
    [v42 enumerateKeysAndObjectsUsingBlock:v51];
  }

  if (a5)
  {
    *a5 = v43 & 1;
  }

  return v46;
}

void __76__PLCloudBatchDownloader__handlePersonRecords_inLibrary_includesTiboSchema___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [PLPerson personWithUUID:v5 inManagedObjectContext:*(a1 + 32)];
  v8 = [PLPerson personWithUUID:v6 inManagedObjectContext:*(a1 + 32)];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to find merge target person with identifier %@ for person %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v12 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Setting %@ merge target person to %@ after processing all persons", &v13, 0x16u);
      }
    }

    [v7 setCPLSyncedMergeTarget:v9];
  }
}

- (void)_saveIfNeeded:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = [v4 hasChanges];

  if (v5)
  {
    v6 = [v3 managedObjectContext];
    v10 = 0;
    v7 = [v6 save:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to save CPL changes: %@", buf, 0xCu);
      }
    }
  }
}

- (PLCloudBatchDownloader)initWithLibraryServicesManager:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLCloudBatchDownloader;
  v9 = [(PLCloudBatchDownloader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lsm, a3);
    objc_storeWeak(&v10->_manager, v8);
  }

  return v10;
}

+ (id)_adjustmentStateDictionaryForComparingIncomingFaceRecordForAsset:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"PLCPLAssetHasAdjustmentsKey";
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "hasAdjustments")}];
  v10[1] = @"PLCPLAssetAdjustmentFingerprintKey";
  v11[0] = v5;
  v6 = [v4 syncedAdjustmentFingerprint];

  v7 = &stru_1F0F06D80;
  if (v6)
  {
    v7 = v6;
  }

  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

@end