@interface PLCloudBatchUploader
- (BOOL)_hasUnuploadedResourceForAsset:(id)a3 resourceType:(unint64_t)a4 cloudMaster:(id)a5;
- (BOOL)_processRepushAlbumError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 orderKeyManager:(id)a6 inLibrary:(id)a7;
- (BOOL)_updateDeletionRecordListForKey:(id)a3 removingRecordID:(id)a4;
- (BOOL)_validateAdditionalAssetAttributes:(id)a3 onRelatedObject:(id)a4;
- (BOOL)_validateAsset:(id)a3 onRelatedObject:(id)a4;
- (PLCloudBatchUploader)initWithLibraryServicesManager:(id)a3;
- (id)_checkScopeValidityForDeletingRecords:(id)a3 includeMainScopeIdentifier:(id)a4 withRecordChangeClass:(Class)a5 managedObjectContext:(id)a6;
- (id)_fetchChangesFromLocalEvent:(id)a3 shouldTriggerPrefetch:(BOOL *)a4 inLibrary:(id)a5;
- (id)_getLocalRecordFromCPLRecord:(id)a3 inLibrary:(id)a4;
- (id)_personsToUploadIncludingReverseOrderedMergeTargetsForPersons:(id)a3;
- (id)_syncDescriptionForObject:(id)a3;
- (id)_validateAssets:(id)a3 fromCloudUuidDeleteList:(id)a4;
- (id)createBatchesForChanges:(id)a3 outInsertedPhotoCount:(unint64_t *)a4 outInsertedVideoCount:(unint64_t *)a5 withUploadTracker:(id)a6 inLibrary:(id)a7;
- (id)pop;
- (id)processCommitError:(id)a3 andFinalizeError:(id)a4 forUploadBatchContainer:(id)a5 withUploadTracker:(id)a6 inLibrary:(id)a7;
- (void)_addAsset:(id)a3 toAssetChanges:(id)a4 isInsert:(BOOL)a5 seenAssetUuid:(id)a6;
- (void)_addLocalResourcesToRecord:(id)a3 inLibrary:(id)a4;
- (void)_cleanUploadedResources:(id)a3 inLibrary:(id)a4;
- (void)_clearSuccessfullyPushedDeletedRecords:(id)a3;
- (void)_handleInvalidAsset:(id)a3;
- (void)_handleSharingChanges:(id)a3 forUploadEvent:(id)a4 inManagedObjectContext:(id)a5;
- (void)_incrementUploadAttemptsAndPushStateForAssets:(id)a3;
- (void)_processAlbumInserts:(id)a3 albumChanges:(id)a4 withBatchManager:(id)a5 inLibrary:(id)a6;
- (void)_processChangeToFullRecordCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6;
- (void)_processGenerateDerivativesCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6;
- (void)_processIncludeMasterCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6;
- (void)_processInvalidExpungeableResourceTypesCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6;
- (void)_processInvalidResourceCopySourceCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 orderKeyManager:(id)a6 inLibrary:(id)a7;
- (void)_processInvalidScopeCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6;
- (void)_processPendingObjects:(id)a3 forEntityName:(id)a4 withBatchManager:(id)a5 inLibrary:(id)a6;
- (void)_processQuarantineRecordsCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 uploadTracker:(id)a6 inLibrary:(id)a7;
- (void)_promptForNilAssetUUID:(id)a3 isInsert:(BOOL)a4;
- (void)_promptToFileRadarWithTitle:(id)a3 description:(id)a4;
- (void)_pushBatches:(id)a3;
- (void)_quarantineObject:(id)a3 uploadTracker:(id)a4;
- (void)_sendAlbums:(id)a3 toBatchManager:(id)a4 orderKeyManager:(id)a5 inLibrary:(id)a6;
- (void)_sendAssets:(id)a3 toBatchManager:(id)a4 orderKeyManager:(id)a5 inLibrary:(id)a6;
- (void)_sendOneBatch:(id)a3 toBatchManager:(id)a4 inLibrary:(id)a5;
- (void)_sortData:(id)a3 isInsert:(BOOL)a4 forUploadChanges:(id)a5 shouldTriggerPrefetch:(BOOL *)a6 inManagedObjectContext:(id)a7;
- (void)_sortRelationshipData:(id)a3 forUploadChanges:(id)a4 inManagedObjectContext:(id)a5;
- (void)clearUploadArray;
- (void)handleUploadBatchesFromLocalEvent:(id)a3 outInsertedPhotoCount:(unint64_t *)a4 outInsertedVideoCount:(unint64_t *)a5 shouldTriggerPrefetch:(BOOL *)a6 withUploadTracker:(id)a7 inLibrary:(id)a8;
- (void)processMomentSharesNeedingForceSyncInLibrary:(id)a3;
- (void)quarantineRecord:(id)a3 uploadTracker:(id)a4 inLibrary:(id)a5;
- (void)recordDeletions:(id)a3;
- (void)recordMomentSharesNeedingForceSync:(id)a3 inLibrary:(id)a4;
- (void)tryToFixCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 uploadTracker:(id)a6 orderKeyManager:(id)a7 inLibrary:(id)a8;
- (void)uploadDeletedRecordsFromPlist:(id)a3;
- (void)uploadFullPhotoLibraryToCloud:(id)a3;
@end

@implementation PLCloudBatchUploader

- (void)processMomentSharesNeedingForceSyncInLibrary:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_momentSharesNeedingForceSync count])
  {
    v5 = [(NSMutableSet *)self->_momentSharesNeedingForceSync allObjects];
    [PLMomentShare forceSyncMomentShares:v5 photoLibrary:v4];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PLCloudBatchUploader_processMomentSharesNeedingForceSyncInLibrary___block_invoke;
    v6[3] = &unk_1E75781E8;
    v6[4] = self;
    [v4 performBlockAndWait:v6];
    [(NSMutableSet *)self->_momentSharesNeedingForceSync removeAllObjects];
  }
}

void __69__PLCloudBatchUploader_processMomentSharesNeedingForceSyncInLibrary___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 56);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setForceSyncAttempted:{1, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)recordMomentSharesNeedingForceSync:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PLCloudBatchUploader_recordMomentSharesNeedingForceSync_inLibrary___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a4 performBlockAndWait:v8];
}

void __69__PLCloudBatchUploader_recordMomentSharesNeedingForceSync_inLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v7 + 1) + 8 * v6) forceSyncAttempted] & 1) == 0)
        {
          [*(*(a1 + 40) + 56) addObjectsFromArray:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)processCommitError:(id)a3 andFinalizeError:(id)a4 forUploadBatchContainer:(id)a5 withUploadTracker:(id)a6 inLibrary:(id)a7
{
  v88 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v41 = a4;
  v43 = a5;
  v35 = a6;
  v55 = a7;
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v40 = [v43 batch];
  if (v39 | v41)
  {
    if ([PLCloudPhotoLibraryManager needResetSyncErrorType:?]|| [PLCloudPhotoLibraryManager needResetSyncErrorType:v41])
    {
      v38 = 1;
LABEL_5:
      v44 = 1;
      goto LABEL_23;
    }

    if ([v40 count])
    {
      if ([v43 wasFixed] & 1) != 0 || (objc_msgSend(v43, "wasSplit"))
      {
        v12 = MEMORY[0x1E6994D48];
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = [v43 retryCount];
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Batch retry count: %d", buf, 8u);
          }
        }

        if ([v43 wasSplit] && objc_msgSend(v43, "retryCount"))
        {
          if ((*v12 & 1) == 0)
          {
            v14 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [v43 retryCount];
              *buf = 67109120;
              *&buf[4] = v15;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Batch exceeded max retry count: %d for permanent failure, marking as failed", buf, 8u);
            }
          }

          v38 = 0;
          goto LABEL_5;
        }

        v16 = [v43 batchesSplitForError];
        [(PLCloudBatchUploader *)self _pushBatches:v16];
      }

      else
      {
        [(PLCloudBatchUploader *)self _push:v43];
        [v43 setWasFixed:1];
        [v43 incrementRetryCount];
      }
    }
  }

  v38 = 0;
  v44 = 0;
LABEL_23:
  v53 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  v47 = [MEMORY[0x1E695DF70] array];
  v46 = [MEMORY[0x1E695DF70] array];
  v45 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v36 = [MEMORY[0x1E695DF70] array];
  v54 = [MEMORY[0x1E695DF70] array];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v17 = [v40 records];
  v18 = [v17 countByEnumeratingWithState:&v79 objects:v87 count:16];
  v19 = v44 | ((v39 | v41) == 0);
  if (v18)
  {
    v20 = *v80;
    do
    {
      v21 = 0;
      do
      {
        if (*v80 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v79 + 1) + 8 * v21);
        if ((v19 & [v22 supportsResources]) == 1)
        {
          [(PLCloudBatchUploader *)self _cleanUploadedResources:v22 inLibrary:v55];
        }

        v23 = [v22 scopedIdentifier];
        v24 = [v23 identifier];
        if (v24)
        {
          if ([v22 changeType] == 1024)
          {
            [v54 addObject:v22];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v53 addObject:v23];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v52 addObject:v24];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v51 addObject:v23];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v50 addObject:v24];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([PLUserFeedback shouldHandleCPLSuggestionChange:v22])
                      {
                        [v47 addObject:v24];
                      }

                      else
                      {
                        [v48 addObject:v24];
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v46 addObject:v24];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v45 addObject:v24];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v42 addObject:v24];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [v37 addObject:v24];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v36 addObject:v24];
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing identifier for change %@, Please file a Radar to Photos Backend iCloud with 'cplctl diagnose' logs and relate to 32789330", objc_opt_class(), v35];
          PLSimulateCrash();
        }

        ++v21;
      }

      while (v18 != v21);
      v26 = [v17 countByEnumeratingWithState:&v79 objects:v87 count:16];
      v18 = v26;
    }

    while (v26);
  }

  v27 = 0;
  *buf = 0;
  v84 = buf;
  v75 = 0;
  v76 = &v75;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0x2020000000;
  v78 = 0;
  if (((v38 | v19 ^ 1) & 1) == 0)
  {
    if (v44)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    if ((v44 & 1) == 0 && [v54 count] && -[NSMutableDictionary count](self->_recordsToDelete, "count"))
    {
      [(PLCloudBatchUploader *)self _clearSuccessfullyPushedDeletedRecords:v54];
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __112__PLCloudBatchUploader_processCommitError_andFinalizeError_forUploadBatchContainer_withUploadTracker_inLibrary___block_invoke;
    v56[3] = &unk_1E75647C8;
    v57 = v52;
    v58 = v55;
    v73 = v28;
    v59 = v50;
    v60 = v48;
    v61 = v47;
    v62 = v46;
    v63 = v42;
    v64 = v37;
    v65 = v36;
    v66 = v53;
    v71 = buf;
    v72 = &v75;
    v67 = v51;
    v74 = v44;
    v68 = v35;
    v69 = v49;
    v70 = v45;
    [v58 performTransactionAndWait:v56];

    v27 = *(v84 + 3);
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
  [v49 setValue:v29 forKey:@"pushedPhotoCount"];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v76[3]];
  [v49 setValue:v30 forKey:@"pushedVideoCount"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:v38];
  [v49 setValue:v31 forKey:@"resetSyncNeeded"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:(v39 | v41) != 0];
  [v49 setValue:v32 forKey:@"hadError"];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:v44];
  [v49 setObject:v33 forKey:@"hadPermanentError"];

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(buf, 8);

  return v49;
}

void __112__PLCloudBatchUploader_processCommitError_andFinalizeError_forUploadBatchContainer_withUploadTracker_inLibrary___block_invoke(uint64_t a1)
{
  v230 = *MEMORY[0x1E69E9840];
  [PLGenericAlbum albumsWithCloudGUIDs:*(a1 + 32) inLibrary:*(a1 + 40)];
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  obj = v213 = 0u;
  v2 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v211;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v211 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v210 + 1) + 8 * i);
        v7 = [v6 cloudLocalState];
        v8 = *(a1 + 160);
        if (v8 != v7)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v9 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v10 = [v6 cloudGUID];
              v11 = *(a1 + 160);
              *buf = 138412546;
              v217 = v10;
              v218 = 1024;
              LODWORD(v219) = v11;
              _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Album %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v8) = *(a1 + 160);
          }

          [v6 setCloudLocalState:v8];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
    }

    while (v3);
  }

  [PLMemory memoriesWithUUIDs:*(a1 + 48) inPhotoLibrary:*(a1 + 40)];
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v164 = v209 = 0u;
  v12 = [v164 countByEnumeratingWithState:&v206 objects:v228 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v207;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v207 != v14)
        {
          objc_enumerationMutation(v164);
        }

        v16 = *(*(&v206 + 1) + 8 * j);
        v17 = [v16 cloudLocalState];
        v18 = *(a1 + 160);
        if (v18 != v17)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v19 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v16 uuid];
              v21 = *(a1 + 160);
              *buf = 138412546;
              v217 = v20;
              v218 = 1024;
              LODWORD(v219) = v21;
              _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Memory %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v18) = *(a1 + 160);
          }

          [v16 setCloudLocalState:v18];
        }
      }

      v13 = [v164 countByEnumeratingWithState:&v206 objects:v228 count:16];
    }

    while (v13);
  }

  [PLSuggestion suggestionsWithUUIDs:*(a1 + 56) inPhotoLibrary:*(a1 + 40)];
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v163 = v205 = 0u;
  v22 = [v163 countByEnumeratingWithState:&v202 objects:v227 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v203;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v203 != v24)
        {
          objc_enumerationMutation(v163);
        }

        v26 = *(*(&v202 + 1) + 8 * k);
        v27 = [v26 cloudLocalState];
        v28 = *(a1 + 160);
        if (v28 != v27)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v29 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v30 = [v26 uuid];
              v31 = *(a1 + 160);
              *buf = 138412546;
              v217 = v30;
              v218 = 1024;
              LODWORD(v219) = v31;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "Suggestion %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v28) = *(a1 + 160);
          }

          [v26 setCloudLocalState:v28];
        }
      }

      v23 = [v163 countByEnumeratingWithState:&v202 objects:v227 count:16];
    }

    while (v23);
  }

  v32 = *(a1 + 64);
  v33 = [*(a1 + 40) managedObjectContext];
  v34 = [PLUserFeedback userFeedbacksWithUUIDs:v32 inManagedObjectContext:v33];

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v162 = v34;
  v35 = [v162 countByEnumeratingWithState:&v198 objects:v226 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v199;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v199 != v37)
        {
          objc_enumerationMutation(v162);
        }

        v39 = *(*(&v198 + 1) + 8 * m);
        v40 = [v39 cloudLocalState];
        v41 = *(a1 + 160);
        if (v41 != v40)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v42 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v43 = [v39 uuid];
              v44 = *(a1 + 160);
              *buf = 138412546;
              v217 = v43;
              v218 = 1024;
              LODWORD(v219) = v44;
              _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEBUG, "User Feedback %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v41) = *(a1 + 160);
          }

          [v39 setCloudLocalState:v41];
        }
      }

      v36 = [v162 countByEnumeratingWithState:&v198 objects:v226 count:16];
    }

    while (v36);
  }

  v45 = *(a1 + 72);
  v46 = [*(a1 + 40) managedObjectContext];
  v47 = [PLPerson personsWithUUIDs:v45 inManagedObjectContext:v46];

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v161 = v47;
  v48 = [v161 countByEnumeratingWithState:&v194 objects:v225 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v195;
    do
    {
      for (n = 0; n != v49; ++n)
      {
        if (*v195 != v50)
        {
          objc_enumerationMutation(v161);
        }

        v52 = *(*(&v194 + 1) + 8 * n);
        v53 = [v52 cloudLocalState];
        v54 = *(a1 + 160);
        if (v54 != v53)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v55 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              v56 = [v52 personUUID];
              v57 = *(a1 + 160);
              *buf = 138412546;
              v217 = v56;
              v218 = 1024;
              LODWORD(v219) = v57;
              _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEBUG, "Person %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v54) = *(a1 + 160);
          }

          [v52 setCloudLocalState:v54];
        }
      }

      v49 = [v161 countByEnumeratingWithState:&v194 objects:v225 count:16];
    }

    while (v49);
  }

  v58 = *(a1 + 80);
  v59 = [*(a1 + 40) managedObjectContext];
  v60 = [(PLShare *)PLLibraryScope sharesWithScopeIdentifiers:v58 includeTrashed:1 inManagedObjectContext:v59];

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v160 = v60;
  v61 = [v160 countByEnumeratingWithState:&v190 objects:v224 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v191;
    do
    {
      for (ii = 0; ii != v62; ++ii)
      {
        if (*v191 != v63)
        {
          objc_enumerationMutation(v160);
        }

        v65 = *(*(&v190 + 1) + 8 * ii);
        v66 = [v65 cloudLocalState];
        v67 = *(a1 + 160);
        if (v67 != v66)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v68 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              v69 = [v65 uuid];
              v70 = *(a1 + 160);
              *buf = 138412546;
              v217 = v69;
              v218 = 1024;
              LODWORD(v219) = v70;
              _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_DEBUG, "Library Scope %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v67) = *(a1 + 160);
          }

          [v65 setCloudLocalState:v67];
        }
      }

      v62 = [v160 countByEnumeratingWithState:&v190 objects:v224 count:16];
    }

    while (v62);
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v71 = *(a1 + 88);
  v72 = [v71 countByEnumeratingWithState:&v186 objects:v223 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v187;
    v75 = 0x1E755F000uLL;
    v76 = off_1E7560000;
    do
    {
      v77 = 0;
      v158 = v73;
      do
      {
        if (*v187 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v78 = *(*(&v186 + 1) + 8 * v77);
        v79 = *(v75 + 3872);
        v80 = [*(a1 + 40) managedObjectContext];
        v81 = [v79 fetchNodeWithUUID:v78 inManagedObjectContext:v80];

        if (v81)
        {
          v82 = [(__objc2_class *)v76[471] newNodeContainerWithNode:v81];
          v83 = [v82 cloudLocalState];
          v84 = *(a1 + 160);
          if (v84 != v83)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v85 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                [v82 uuid];
                v86 = v74;
                v87 = v75;
                v88 = v71;
                v90 = v89 = v76;
                v91 = *(a1 + 160);
                *buf = 138412546;
                v217 = v90;
                v218 = 1024;
                LODWORD(v219) = v91;
                _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEBUG, "Social Group %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);

                v76 = v89;
                v71 = v88;
                v75 = v87;
                v74 = v86;
                v73 = v158;
              }

              LOWORD(v84) = *(a1 + 160);
            }

            [v82 setCloudLocalState:v84];
          }
        }

        else
        {
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_95;
          }

          v82 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v217 = v78;
            _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_DEBUG, "PLCloudBatchUploader nil social group node with UUID: %@", buf, 0xCu);
          }
        }

LABEL_95:
        ++v77;
      }

      while (v73 != v77);
      v73 = [v71 countByEnumeratingWithState:&v186 objects:v223 count:16];
    }

    while (v73);
  }

  [PLCloudSharedComment cloudSharedCommentsWithGUIDs:*(a1 + 96) inLibrary:*(a1 + 40)];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v159 = v185 = 0u;
  v92 = [v159 countByEnumeratingWithState:&v182 objects:v222 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v183;
    do
    {
      for (jj = 0; jj != v93; ++jj)
      {
        if (*v183 != v94)
        {
          objc_enumerationMutation(v159);
        }

        v96 = *(*(&v182 + 1) + 8 * jj);
        v97 = [v96 cloudLocalState];
        v98 = *(a1 + 160);
        if (v98 != v97)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v99 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
            {
              v100 = [v96 cloudGUID];
              v101 = *(a1 + 160);
              *buf = 138543618;
              v217 = v100;
              v218 = 1024;
              LODWORD(v219) = v101;
              _os_log_impl(&dword_19BF1F000, v99, OS_LOG_TYPE_DEBUG, "Comment %{public}@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v98) = *(a1 + 160);
          }

          [v96 setCloudLocalState:v98];
        }

        v102 = [v96 isMyComment];
        if (v102)
        {
          v103 = v102;
          v104 = [v96 shareParticipant];

          if (!v104)
          {
            v105 = [v96 collectionShare];
            v106 = [v105 currentUserParticipant];
            [v96 setShareParticipant:v106];
          }
        }
      }

      v93 = [v159 countByEnumeratingWithState:&v182 objects:v222 count:16];
    }

    while (v93);
  }

  v107 = [MEMORY[0x1E695DFA8] set];
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v108 = *(a1 + 104);
  v109 = [v108 countByEnumeratingWithState:&v178 objects:v221 count:16];
  if (!v109)
  {

    goto LABEL_139;
  }

  v111 = v109;
  v112 = 0;
  v113 = *v179;
  *&v110 = 138412546;
  v157 = v110;
  do
  {
    for (kk = 0; kk != v111; ++kk)
    {
      if (*v179 != v113)
      {
        objc_enumerationMutation(v108);
      }

      v115 = *(*(&v178 + 1) + 8 * kk);
      v116 = [PLManagedAsset assetWithScopedIdentifier:v115 inLibrary:*(a1 + 40) prefetchResources:1, v157];
      v117 = v116;
      if (v116)
      {
        [v116 setUploadAttempts:0];
        [v117 setLastUploadAttemptDate:0];
        v118 = [v117 cloudLocalState];
        v119 = *(a1 + 160);
        if (v119 != v118)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v120 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
            {
              v121 = [v117 cloudAssetGUID];
              v122 = *(a1 + 160);
              *buf = v157;
              v217 = v121;
              v218 = 1024;
              LODWORD(v219) = v122;
              _os_log_impl(&dword_19BF1F000, v120, OS_LOG_TYPE_DEBUG, "Asset %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v119) = *(a1 + 160);
          }

          [v117 setCloudLocalState:v119];
          v112 |= *(a1 + 160) == 2;
        }

        if ([v117 shouldIncludeInCPLCounts])
        {
          v123 = [v117 isPhoto];
          v124 = a1 + 144;
          if ((v123 & 1) != 0 || (v125 = [v117 isVideo], v124 = a1 + 152, v125))
          {
            ++*(*(*v124 + 8) + 24);
          }
        }

        [PLCPLFacePushSupport markSyncableFacesAsPushedInAsset:v117];
        v126 = [v117 allAssetCPLResources];
        [v107 unionSet:v126];
      }

      else
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_134;
        }

        v126 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v217 = v115;
          _os_log_impl(&dword_19BF1F000, v126, OS_LOG_TYPE_ERROR, "Failed to find asset %@ in pushed assets", buf, 0xCu);
        }
      }

LABEL_134:
    }

    v111 = [v108 countByEnumeratingWithState:&v178 objects:v221 count:16];
  }

  while (v111);

  if (v112)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.failedtopush", 0, 0, 0);
  }

LABEL_139:
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v128 = *(a1 + 112);
  v129 = [v128 countByEnumeratingWithState:&v174 objects:v220 count:16];
  if (!v129)
  {
    goto LABEL_166;
  }

  v130 = v129;
  v131 = *v175;
  while (2)
  {
    v132 = 0;
    while (2)
    {
      if (*v175 != v131)
      {
        objc_enumerationMutation(v128);
      }

      v133 = *(*(&v174 + 1) + 8 * v132);
      v134 = [PLCloudMaster cloudMasterWithScopedIdentifier:v133 prefetchResources:0 inLibrary:*(a1 + 40)];
      v135 = v134;
      if (v134)
      {
        if (*(a1 + 160) != [v134 cloudLocalState])
        {
          if ([v135 cloudLocalState] == 3)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v136 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v217 = v135;
                _os_log_impl(&dword_19BF1F000, v136, OS_LOG_TYPE_DEBUG, "Master %@ was uploaded before, leaving the state as Uploaded", buf, 0xCu);
              }
            }
          }

          else
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v138 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
              {
                v139 = @"Failed";
                if (*(a1 + 160) == 1)
                {
                  v139 = @"Pushed";
                }

                *buf = 138412546;
                v217 = v135;
                v218 = 2112;
                v219 = v139;
                _os_log_impl(&dword_19BF1F000, v138, OS_LOG_TYPE_DEBUG, "Master %@ was pushed, marking cloudLocalState to %@", buf, 0x16u);
              }
            }

            [v135 setCloudLocalState:*(a1 + 160)];
          }
        }

        v137 = [v135 allAssetAttachedResources];
        [v107 unionSet:v137];
        if (*(a1 + 162) == 1)
        {
          [*(a1 + 120) stopTrackingMaster:v135];
          [*(a1 + 128) setObject:MEMORY[0x1E695E118] forKey:@"changedTotalSizeOfUnpushedOriginal"];
        }

        goto LABEL_163;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v137 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v217 = v133;
          _os_log_impl(&dword_19BF1F000, v137, OS_LOG_TYPE_ERROR, "Failed to find master %@ in pushed masters", buf, 0xCu);
        }

LABEL_163:
      }

      if (v130 != ++v132)
      {
        continue;
      }

      break;
    }

    v130 = [v128 countByEnumeratingWithState:&v174 objects:v220 count:16];
    if (v130)
    {
      continue;
    }

    break;
  }

LABEL_166:

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v140 = v107;
  v141 = [v140 countByEnumeratingWithState:&v170 objects:v215 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v171;
    do
    {
      for (mm = 0; mm != v142; ++mm)
      {
        if (*v171 != v143)
        {
          objc_enumerationMutation(v140);
        }

        v145 = *(*(&v170 + 1) + 8 * mm);
        if (*(a1 + 160) != [v145 cloudLocalState] && objc_msgSend(v145, "cloudLocalState") != 3)
        {
          [v145 setCloudLocalState:*(a1 + 160)];
        }
      }

      v142 = [v140 countByEnumeratingWithState:&v170 objects:v215 count:16];
    }

    while (v142);
  }

  [PLFaceCrop faceCropsWithUUIDs:*(a1 + 136) inPhotoLibrary:*(a1 + 40)];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v146 = v169 = 0u;
  v147 = [v146 countByEnumeratingWithState:&v166 objects:v214 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v167;
    do
    {
      for (nn = 0; nn != v148; ++nn)
      {
        if (*v167 != v149)
        {
          objc_enumerationMutation(v146);
        }

        v151 = *(*(&v166 + 1) + 8 * nn);
        v152 = [v151 cloudLocalState];
        v153 = *(a1 + 160);
        if (v153 != v152)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v154 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
            {
              v155 = [v151 uuid];
              v156 = *(a1 + 160);
              *buf = 138412546;
              v217 = v155;
              v218 = 1024;
              LODWORD(v219) = v156;
              _os_log_impl(&dword_19BF1F000, v154, OS_LOG_TYPE_DEBUG, "faceCrop %@ was pushed, marking cloudLocalState to %d", buf, 0x12u);
            }

            LOWORD(v153) = *(a1 + 160);
          }

          [v151 setCloudLocalState:v153];
        }
      }

      v148 = [v146 countByEnumeratingWithState:&v166 objects:v214 count:16];
    }

    while (v148);
  }
}

- (void)_clearSuccessfullyPushedDeletedRecords:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v26 + 1) + 8 * i) scopedIdentifier];
        v10 = [v9 identifier];

        objc_opt_class();
        v11 = @"RKVersion";
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v11 = @"RKMaster", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"RKMemory", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"RKPerson", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"RKFaceCrop", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"RKAlbum", (objc_opt_isKindOfClass()))
        {
          if ([(PLCloudBatchUploader *)self _updateDeletionRecordListForKey:v11 removingRecordID:v10])
          {
            v6 = 1;
          }

          else if ([(__CFString *)v11 isEqualToString:@"RKAlbum"])
          {
            v6 = [(PLCloudBatchUploader *)self _updateDeletionRecordListForKey:@"RKFolder" removingRecordID:v10];
          }

          else
          {
            v6 = 0;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v5);
    if (v6)
    {
      v12 = [(NSMutableDictionary *)self->_recordsToDelete count];
      v13 = MEMORY[0x1E6994D48];
      if (v12)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            recordsToDeletePlistPath = self->_recordsToDeletePlistPath;
            v16 = [(NSMutableDictionary *)self->_recordsToDelete count];
            *buf = 138543618;
            v31 = recordsToDeletePlistPath;
            v32 = 1026;
            LODWORD(v33) = v16;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Updating %{public}@: still has %{public}d records", buf, 0x12u);
          }
        }

        [(NSMutableDictionary *)self->_recordsToDelete writeToFile:self->_recordsToDeletePlistPath atomically:1];
        goto LABEL_37;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v17 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_recordsToDeletePlistPath;
          *buf = 138543362;
          v31 = v18;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Deleting %{public}@", buf, 0xCu);
        }
      }

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = self->_recordsToDeletePlistPath;
      v25 = 0;
      [v19 removeItemAtPath:v20 error:&v25];
      v21 = v25;

      if (v21)
      {
        if (*v13)
        {
LABEL_36:

          goto LABEL_37;
        }

        v22 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = self->_recordsToDeletePlistPath;
          *buf = 138543618;
          v31 = v23;
          v32 = 2114;
          v33 = v21;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v22 = self->_recordsToDeletePlistPath;
        self->_recordsToDeletePlistPath = 0;
      }

      goto LABEL_36;
    }
  }

LABEL_37:
}

- (BOOL)_updateDeletionRecordListForKey:(id)a3 removingRecordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_recordsToDelete objectForKey:v6];
  if ([v8 count] && objc_msgSend(v8, "containsObject:", v7))
  {
    [v8 removeObject:v7];
    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_recordsToDelete removeObjectForKey:v6];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_processRepushAlbumError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 orderKeyManager:(id)a6 inLibrary:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v18 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need to repush these albums", buf, 0x20u);
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __100__PLCloudBatchUploader__processRepushAlbumError_inUploadBatch_forRecords_orderKeyManager_inLibrary___block_invoke;
  v25[3] = &unk_1E75647A0;
  v19 = v15;
  v26 = v19;
  v20 = v17;
  v32 = a2;
  v27 = v20;
  v28 = self;
  v21 = v16;
  v29 = v21;
  v31 = &v33;
  v22 = v14;
  v30 = v22;
  [v20 performBlockAndWait:v25];
  v23 = *(v34 + 24);

  _Block_object_dispose(&v33, 8);
  return v23 & 1;
}

void __100__PLCloudBatchUploader__processRepushAlbumError_inUploadBatch_forRecords_orderKeyManager_inLibrary___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 scopeIdentifier];
        v9 = [*(a1 + 40) mainScopeIdentifier];
        v10 = [v8 isEqualToString:v9];

        if ((v10 & 1) == 0)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:*(a1 + 80) object:*(a1 + 48) file:@"PLCloudBatchUploader.m" lineNumber:2233 description:@"albums are only supported in main scope"];
        }

        v11 = [v7 identifier];
        v12 = [PLGenericAlbum albumWithCloudGUID:v11 inLibrary:*(a1 + 40)];

        if (!v12)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v21 = v7;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Can't generate CPLRecordChange for album %@, forcing a reset sync", buf, 0xCu);
            }
          }

          *(*(*(a1 + 72) + 8) + 24) = 1;
          goto LABEL_20;
        }

        v13 = [v12 cplAlbumChangeInPhotoLibrary:*(a1 + 40) orderKeyManager:*(a1 + 56)];
        if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
        {
          [*(a1 + 64) removeRecordWithScopedIdentifier:v7];
          if (v13)
          {
            [*(a1 + 64) addRecord:v13];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (void)_processGenerateDerivativesCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need to re-generate derivatives", buf, 0x20u);
    }
  }

  v25 = v10;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v11 records];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 scopedIdentifier];
        v22 = [v12 containsObject:v21];

        if (v22)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v23 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v20;
              _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Re-generating derivatives for record %@", buf, 0xCu);
            }
          }

          [(PLCloudBatchUploader *)self _addLocalResourcesToRecord:v20 inLibrary:v13];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)tryToFixCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 uploadTracker:(id)a6 orderKeyManager:(id)a7 inLibrary:(id)a8
{
  v43 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v15 objectForKey:@"regenerateDerivativeError"];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [v15 objectForKey:@"regenerateDerivativeError"];
    [(PLCloudBatchUploader *)self _processGenerateDerivativesCommitError:v43 inUploadBatch:v14 forRecords:v21 inLibrary:v18];
  }

  v22 = [v15 objectForKey:@"needMasterError"];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [v15 objectForKey:@"needMasterError"];
    [(PLCloudBatchUploader *)self _processIncludeMasterCommitError:v43 inUploadBatch:v14 forRecords:v24 inLibrary:v18];
  }

  v25 = [v15 objectForKey:@"needFullChangeError"];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [v15 objectForKey:@"needFullChangeError"];
    [(PLCloudBatchUploader *)self _processChangeToFullRecordCommitError:v43 inUploadBatch:v14 forRecords:v27 inLibrary:v18];
  }

  v28 = [v15 objectForKey:@"repushAlbumError"];
  v29 = [v28 count];

  if (v29)
  {
    v30 = [v15 objectForKey:@"repushAlbumError"];
    [(PLCloudBatchUploader *)self _processRepushAlbumError:v43 inUploadBatch:v14 forRecords:v30 orderKeyManager:v17 inLibrary:v18];
  }

  v31 = [v15 objectForKey:@"quarantinedRecordError"];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [v15 objectForKey:@"quarantinedRecordError"];
    [(PLCloudBatchUploader *)self _processQuarantineRecordsCommitError:v43 inUploadBatch:v14 forRecords:v33 uploadTracker:v16 inLibrary:v18];
  }

  v34 = [v15 objectForKey:@"invalidScopeError"];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [v15 objectForKey:@"invalidScopeError"];
    [(PLCloudBatchUploader *)self _processInvalidScopeCommitError:v43 inUploadBatch:v14 forRecords:v36 inLibrary:v18];
  }

  v37 = [v15 objectForKey:@"invalidResourceCopySourceError"];
  v38 = [v37 count];

  if (v38)
  {
    v39 = [v15 objectForKey:@"invalidResourceCopySourceError"];
    [(PLCloudBatchUploader *)self _processInvalidResourceCopySourceCommitError:v43 inUploadBatch:v14 forRecords:v39 orderKeyManager:v17 inLibrary:v18];
  }

  v40 = [v15 objectForKey:@"invalidExpungeableResourceTypes"];
  v41 = [v40 count];

  if (v41)
  {
    v42 = [v15 objectForKey:@"invalidExpungeableResourceTypes"];
    [(PLCloudBatchUploader *)self _processInvalidExpungeableResourceTypesCommitError:v43 inUploadBatch:v14 forRecords:v42 inLibrary:v18];
  }
}

- (void)_addLocalResourcesToRecord:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PLCloudBatchUploader__addLocalResourcesToRecord_inLibrary___block_invoke;
  v12[3] = &unk_1E75761B8;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PLCloudBatchUploader__addLocalResourcesToRecord_inLibrary___block_invoke_225;
  v10[3] = &unk_1E75781E8;
  v11 = v13;
  v8 = v13;
  v9 = v7;
  [v9 performTransactionAndWait:v12 completionHandler:v10];
}

void __61__PLCloudBatchUploader__addLocalResourcesToRecord_inLibrary___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scopedIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [PLCloudMaster cloudMasterWithScopedIdentifier:v2 prefetchResources:0 inLibrary:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 assets];
      v6 = [v5 anyObject];

      if (v6)
      {
        v7 = [v6 createResourcesForMaster:v4 shouldGenerateDerivatives:*(*(a1 + 48) + 33) inPhotoLibrary:*(a1 + 40)];
        if (v7)
        {
          v8 = v7;
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v9 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(a1 + 32);
              v17 = 138412546;
              v18 = v8;
              v19 = 2112;
              v20 = v10;
              _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Setting master resources %@ to record %@", &v17, 0x16u);
            }
          }

          [*(a1 + 32) setResources:v8];
        }

        else
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v16 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = 138412290;
              v18 = v4;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to create master resources for %@", &v17, 0xCu);
            }
          }

          v8 = 0;
        }
      }

      else
      {
        if (*MEMORY[0x1E6994D48])
        {
          v6 = 0;
          goto LABEL_36;
        }

        v8 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v17 = 138412290;
          v18 = v4;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to find any asset for cloudMaster %@", &v17, 0xCu);
        }
      }

LABEL_36:
LABEL_37:

      goto LABEL_38;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v17 = 138412290;
      v18 = v2;
      v15 = "Unable to find cloudMaster with scopedIdentifier %@";
LABEL_29:
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, v15, &v17, 0xCu);
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [PLManagedAsset assetWithScopedIdentifier:v2 inLibrary:*(a1 + 40) prefetchResources:1];
    v4 = v11;
    if (v11)
    {
      v6 = [v11 createResourcesForAssetInPhotoLibrary:*(a1 + 40) shouldGenerateDerivatives:*(*(a1 + 48) + 33)];
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v17 = 138412546;
          v18 = v6;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Setting asset resources %@ to record %@", &v17, 0x16u);
        }
      }

      [*(a1 + 32) setResources:v6];
      goto LABEL_36;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v17 = 138412290;
      v18 = v2;
      v15 = "Unable to find asset with scopedIdentifier %@";
      goto LABEL_29;
    }

LABEL_39:
    v4 = 0;
    goto LABEL_37;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Incorrect record type to re-generate derivatives for record: %@", &v17, 0xCu);
    }

    goto LABEL_37;
  }

LABEL_38:
}

void __61__PLCloudBatchUploader__addLocalResourcesToRecord_inLibrary___block_invoke_225(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) resources];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setCanGenerateDerivative:0];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_processInvalidExpungeableResourceTypesCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Received error while uploading batch: %@ forRecords: %@ : Error: %@. We need to repush the full master record.", buf, 0x20u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__PLCloudBatchUploader__processInvalidExpungeableResourceTypesCommitError_inUploadBatch_forRecords_inLibrary___block_invoke;
  v18[3] = &unk_1E7578100;
  v19 = v11;
  v20 = v12;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v15 performTransactionAndWait:v18];
}

void __110__PLCloudBatchUploader__processInvalidExpungeableResourceTypesCommitError_inUploadBatch_forRecords_inLibrary___block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v47 = [MEMORY[0x1E695DFA8] set];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v3 = [*(a1 + 32) records];
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v77;
    v7 = MEMORY[0x1E6994D48];
    v48 = v3;
    v49 = a1;
    v50 = *v77;
    do
    {
      v8 = 0;
      v51 = v5;
      do
      {
        if (*v77 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v76 + 1) + 8 * v8);
        v55 = [v9 scopedIdentifier];
        if ([*(a1 + 40) containsObject:?])
        {
          v10 = [*(a1 + 48) _getLocalRecordFromCPLRecord:v9 inLibrary:*(a1 + 56)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v10;
            v53 = v8;
            v11 = v10;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v54 = v11;
            v12 = [v11 assets];
            v13 = [v12 countByEnumeratingWithState:&v72 objects:v86 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v73;
LABEL_10:
              v16 = 0;
              while (1)
              {
                if (*v73 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v72 + 1) + 8 * v16);
                if ([v17 uploadAttempts] >= 3)
                {
                  break;
                }

                [v17 incrementUploadAttempts];
                if (v14 == ++v16)
                {
                  v14 = [v12 countByEnumeratingWithState:&v72 objects:v86 count:16];
                  if (v14)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_16;
                }
              }

              if ((*v7 & 1) == 0)
              {
                v20 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [v54 scopedIdentifier];
                  *buf = 138412290;
                  v85 = v21;
                  _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Exceeded max invalid expungeable resource master repush attempts for cloud master: %@", buf, 0xCu);
                }
              }

              [v2 addObject:v55];
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v22 = [v54 assets];
              v23 = [v22 countByEnumeratingWithState:&v68 objects:v83 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v69;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v69 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v68 + 1) + 8 * i);
                    v28 = [v27 scopedIdentifier];
                    if (v28)
                    {
                      if ((*v7 & 1) == 0)
                      {
                        v29 = __CPLAssetsdOSLogDomain();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v85 = v28;
                          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Removing CPLAssetChange %@ from batch", buf, 0xCu);
                        }
                      }

                      [v2 addObject:v28];
                    }

                    else if ((*v7 & 1) == 0)
                    {
                      v30 = __CPLAssetsdOSLogDomain();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v85 = v27;
                        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Asset with nil scopedIdentifier %@", buf, 0xCu);
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v68 objects:v83 count:16];
                }

                while (v24);
              }

              [v54 setCloudLocalState:2];
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v31 = [v54 allAssetAttachedResources];
              v32 = [v31 countByEnumeratingWithState:&v64 objects:v82 count:16];
              v3 = v48;
              a1 = v49;
              v8 = v53;
              if (v32)
              {
                v33 = v32;
                v34 = *v65;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v65 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    [*(*(&v64 + 1) + 8 * j) setCloudLocalState:2];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v64 objects:v82 count:16];
                }

                while (v33);
              }

              v5 = v51;
              v10 = v52;
              if ((*v7 & 1) == 0)
              {
                v18 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v85 = v55;
                  _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Removing CPLMasterChange %@ from batch and marking cloud master as CPLPushFailed", buf, 0xCu);
                }

                goto LABEL_52;
              }
            }

            else
            {
LABEL_16:

              v18 = [v54 cplFullRecord];
              [v2 addObject:v55];
              [v47 addObject:v18];
              if (*v7)
              {
                v5 = v51;
                v10 = v52;
              }

              else
              {
                v19 = __CPLAssetsdOSLogDomain();
                v10 = v52;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v85 = v55;
                  _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Repushing full master record for cloud master %@", buf, 0xCu);
                }

                v5 = v51;
              }

              v8 = v53;
LABEL_52:
            }

            v6 = v50;
          }
        }

        ++v8;
      }

      while (v8 != v5);
      v36 = [v3 countByEnumeratingWithState:&v76 objects:v87 count:16];
      v5 = v36;
    }

    while (v36);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v37 = v2;
  v38 = [v37 countByEnumeratingWithState:&v60 objects:v81 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v61;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(a1 + 32) removeRecordWithScopedIdentifier:*(*(&v60 + 1) + 8 * k)];
      }

      v39 = [v37 countByEnumeratingWithState:&v60 objects:v81 count:16];
    }

    while (v39);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v42 = v47;
  v43 = [v42 countByEnumeratingWithState:&v56 objects:v80 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v57;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(a1 + 32) addRecord:*(*(&v56 + 1) + 8 * m)];
      }

      v44 = [v42 countByEnumeratingWithState:&v56 objects:v80 count:16];
    }

    while (v44);
  }
}

- (void)_processInvalidResourceCopySourceCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 orderKeyManager:(id)a6 inLibrary:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Received error while uploading batch: %@ forRecords: %@ : Error: %@. We need to check if the source resources exists.", buf, 0x20u);
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __120__PLCloudBatchUploader__processInvalidResourceCopySourceCommitError_inUploadBatch_forRecords_orderKeyManager_inLibrary___block_invoke;
  v22[3] = &unk_1E75730F8;
  v23 = v16;
  v24 = v13;
  v25 = v14;
  v26 = self;
  v27 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v16;
  [v21 performTransactionAndWait:v22];
}

void __120__PLCloudBatchUploader__processInvalidResourceCopySourceCommitError_inUploadBatch_forRecords_orderKeyManager_inLibrary___block_invoke(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v102 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v103 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v98 = [PLManagedAsset isComputeSyncEnabledForDirection:0 library:*(a1 + 32)];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v3 = [*(a1 + 40) records];
  v4 = [v3 countByEnumeratingWithState:&v122 objects:v134 count:16];
  v92 = a1;
  if (v4)
  {
    v5 = v4;
    v6 = *v123;
    v91 = v3;
    v93 = *v123;
    do
    {
      v7 = 0;
      v94 = v5;
      do
      {
        if (*v123 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v122 + 1) + 8 * v7);
        v9 = [v8 scopedIdentifier];
        if ([*(a1 + 48) containsObject:v9])
        {
          v10 = [*(a1 + 56) _getLocalRecordFromCPLRecord:v8 inLibrary:*(a1 + 32)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v97 = v10;
            if (![v11 isPlaceholderAsset])
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v38 = v7;
                v39 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = [v11 scopedIdentifier];
                  *buf = 138412290;
                  v130 = v40;
                  _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Asset is no longer a placeholder asset, will stop pushing it: %@", buf, 0xCu);
                }

                v7 = v38;
              }

              goto LABEL_55;
            }

            if ([v11 uploadAttempts] >= 2)
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v12 = v7;
                v13 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  v14 = [v11 scopedIdentifier];
                  *buf = 138412290;
                  v130 = v14;
                  _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Exceeded max invalid resource repush attempts for placeholder asset: %@", buf, 0xCu);
                }

                v7 = v12;
              }

              [v102 addObject:v11];
              goto LABEL_55;
            }

            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v43 = v7;
              v44 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [v11 scopedIdentifier];
                *buf = 138412290;
                v130 = v45;
                _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Will attempt to repush source asset for placeholder asset: %@", buf, 0xCu);
              }

              v7 = v43;
            }

            v41 = v103;
            v42 = v11;
LABEL_61:
            [v41 addObject:v42];
            goto LABEL_62;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = v10;
            v15 = v10;
            if ([v15 placeholderState] != 1)
            {
              goto LABEL_62;
            }

            v95 = v7;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v16 = [v15 assets];
            v17 = [v16 countByEnumeratingWithState:&v118 objects:v133 count:16];
            if (!v17)
            {

              v6 = v93;
              v7 = v95;
              goto LABEL_62;
            }

            v18 = v17;
            obj = v15;
            v19 = 0;
            v20 = *v119;
            v21 = MEMORY[0x1E6994D48];
            while (1)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v119 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v23 = *(*(&v118 + 1) + 8 * i);
                if (![v23 isPlaceholderAsset])
                {
                  if ((*v21 & 1) == 0)
                  {
                    v29 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = [v23 scopedIdentifier];
                      *buf = 138412290;
                      v130 = v30;
                      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Asset is no longer a placeholder asset, will stop pushing it: %@", buf, 0xCu);
                    }
                  }

                  v31 = v2;
                  v32 = v9;
                  goto LABEL_42;
                }

                if ([v23 uploadAttempts] < 2)
                {
                  if ((*v21 & 1) == 0)
                  {
                    v33 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      v34 = [v23 scopedIdentifier];
                      *buf = 138412290;
                      v130 = v34;
                      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Will attempt to repush source asset for placeholder asset: %@", buf, 0xCu);

                      v21 = MEMORY[0x1E6994D48];
                    }
                  }

                  v31 = v103;
                  v32 = v23;
LABEL_42:
                  [v31 addObject:v32];
                  continue;
                }

                if ((*v21 & 1) == 0)
                {
                  v24 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = [v23 scopedIdentifier];
                    *buf = 138412290;
                    v130 = v25;
                    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Exceeded max invalid resource repush attempts for placeholder asset: %@", buf, 0xCu);

                    v21 = MEMORY[0x1E6994D48];
                  }

                  if ((*v21 & 1) == 0)
                  {
                    v26 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      v27 = [v23 scopedIdentifier];
                      v28 = [obj scopedIdentifier];
                      *buf = 138412546;
                      v130 = v27;
                      v131 = 2112;
                      v132 = v28;
                      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Removing placeholder asset %@ that is associated with removed placeholder master %@", buf, 0x16u);

                      v21 = MEMORY[0x1E6994D48];
                    }
                  }
                }

                [v102 addObject:v23];
                v19 = 1;
              }

              v18 = [v16 countByEnumeratingWithState:&v118 objects:v133 count:16];
              if (!v18)
              {

                v3 = v91;
                a1 = v92;
                v6 = v93;
                v5 = v94;
                v7 = v95;
                if (v19)
                {
                  if ((*MEMORY[0x1E6994D48] & 1) == 0)
                  {
                    v35 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      v36 = [obj scopedIdentifier];
                      *buf = 138412290;
                      v130 = v36;
                      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Removing placeholder master %@, since its source resource can't be found", buf, 0xCu);

                      v7 = v95;
                    }
                  }

                  v37 = [*(v92 + 32) managedObjectContext];
                  [v37 deleteObject:obj];

LABEL_55:
                  v41 = v2;
                  v42 = v9;
                  goto LABEL_61;
                }

LABEL_62:
                v10 = v97;

                break;
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v46 = [v3 countByEnumeratingWithState:&v122 objects:v134 count:16];
      v5 = v46;
    }

    while (v46);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obja = v102;
  v47 = [obja countByEnumeratingWithState:&v114 objects:v128 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v115;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        v51 = MEMORY[0x1E6994D48];
        if (*v115 != v49)
        {
          objc_enumerationMutation(obja);
        }

        v52 = *(*(&v114 + 1) + 8 * j);
        if ((*v51 & 1) == 0)
        {
          v53 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = [v52 scopedIdentifier];
            *buf = 138412290;
            v130 = v54;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Removing placeholder asset %@, since its source resource can't be found", buf, 0xCu);
          }
        }

        [v52 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
        v55 = [PLAssetTransactionReason transactionReason:@"Deleting placeholder asset since its source resource can't be found"];
        [v52 deleteWithReason:v55];
      }

      v48 = [obja countByEnumeratingWithState:&v114 objects:v128 count:16];
    }

    while (v48);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v56 = v2;
  v57 = [v56 countByEnumeratingWithState:&v110 objects:v127 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v111;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v111 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [*(v92 + 40) removeRecordWithScopedIdentifier:*(*(&v110 + 1) + 8 * k)];
      }

      v58 = [v56 countByEnumeratingWithState:&v110 objects:v127 count:16];
    }

    while (v58);
  }

  v96 = v56;

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v99 = v103;
  v61 = [v99 countByEnumeratingWithState:&v106 objects:v126 count:16];
  v62 = MEMORY[0x1E6994D48];
  v105 = v61;
  if (v61)
  {
    v104 = *v107;
    do
    {
      v63 = 0;
      do
      {
        if (*v107 != v104)
        {
          objc_enumerationMutation(v99);
        }

        v64 = *(*(&v106 + 1) + 8 * v63);
        v65 = [v64 fetchSourceAssetForDuplicationIfExists];
        if (v65)
        {
          if ((*v62 & 1) == 0)
          {
            v66 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [v65 scopedIdentifier];
              *buf = 138412290;
              v130 = v67;
              _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEFAULT, "Regenerating asset resources for source asset %@ and adding to currentUploadBatch", buf, 0xCu);
            }
          }

          v68 = [v65 master];
          v69 = [v68 scopedIdentifier];

          v70 = [v65 cplAssetChangeWithMasterScopedIdentifier:v69 withChangeType:8 shouldGenerateDerivatives:0 orderKeyManager:*(v92 + 64) computeSyncUploadEnabled:v98 inLibrary:*(v92 + 32)];
          v71 = *(v92 + 40);
          v72 = [v70 scopedIdentifier];
          [v71 removeRecordWithScopedIdentifier:v72];

          if (v70)
          {
            [*(v92 + 40) addRecord:v70];
          }

          if ((*v62 & 1) == 0)
          {
            v73 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [v64 scopedIdentifier];
              *buf = 138412290;
              v130 = v74;
              _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Removing placeholder records from currentUploadBatch and deleting master %@", buf, 0xCu);
            }
          }

          v75 = [v64 master];
          v76 = *(v92 + 40);
          v77 = [v64 scopedIdentifier];
          [v76 removeRecordWithScopedIdentifier:v77];

          v78 = *(v92 + 40);
          v79 = [v75 scopedIdentifier];
          [v78 removeRecordWithScopedIdentifier:v79];

          if (v75)
          {
            [v64 setMaster:0];
            v80 = [*(v92 + 32) managedObjectContext];
            [v80 deleteObject:v75];
          }

          if ([PLManagedAsset attemptToRecreateMasterAndAssetResourcesForPlaceholderAssetRepush:v64 sourceAsset:v65 library:*(v92 + 32)])
          {
            if ((*v62 & 1) == 0)
            {
              v81 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = [v64 scopedIdentifier];
                *buf = 138412290;
                v130 = v82;
                _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "Recreating master for placeholder asset %@ and adding master record to currentUploadBatch", buf, 0xCu);
              }
            }

            v83 = [v64 cplMasterChangeInLibrary:*(v92 + 32) shouldGenerateDerivatives:0];
            if (v83)
            {
              [*(v92 + 40) addRecord:v83];
            }

            if ((*v62 & 1) == 0)
            {
              v84 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                v85 = [v64 scopedIdentifier];
                *buf = 138412290;
                v130 = v85;
                _os_log_impl(&dword_19BF1F000, v84, OS_LOG_TYPE_DEFAULT, "Recreating asset record for placeholder asset %@ and adding to currentUploadBatch", buf, 0xCu);
              }
            }

            v86 = [v64 master];
            v87 = [v86 scopedIdentifier];

            v88 = [v64 cplAssetChangeWithMasterScopedIdentifier:v87 withChangeType:0 shouldGenerateDerivatives:0 orderKeyManager:*(v92 + 64) computeSyncUploadEnabled:v98 inLibrary:*(v92 + 32)];
            if (v88)
            {
              [*(v92 + 40) addRecord:v88];
            }

            v62 = MEMORY[0x1E6994D48];
            goto LABEL_121;
          }

          if ((*v62 & 1) == 0)
          {
            v83 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v89 = [v64 scopedIdentifier];
              v90 = [v65 scopedIdentifier];
              *buf = 138412546;
              v130 = v89;
              v131 = 2112;
              v132 = v90;
              _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_ERROR, "Failed to recreate resources on placeholder asset %@, source asset %@ can't be found", buf, 0x16u);

              v62 = MEMORY[0x1E6994D48];
            }

LABEL_121:
          }

          [v64 incrementUploadAttempts];
        }

        ++v63;
      }

      while (v105 != v63);
      v105 = [v99 countByEnumeratingWithState:&v106 objects:v126 count:16];
    }

    while (v105);
  }
}

- (void)_processInvalidScopeCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need to push the scope.", buf, 0x20u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PLCloudBatchUploader__processInvalidScopeCommitError_inUploadBatch_forRecords_inLibrary___block_invoke;
  v18[3] = &unk_1E7578100;
  v19 = v11;
  v20 = v12;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v15 performTransactionAndWait:v18];
}

void __91__PLCloudBatchUploader__processInvalidScopeCommitError_inUploadBatch_forRecords_inLibrary___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DFA8] set];
  v29 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = [*(a1 + 32) records];
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v3)
  {

    goto LABEL_33;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v39;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v39 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v38 + 1) + 8 * i);
      v9 = [v8 scopedIdentifier];
      if ([*(a1 + 40) containsObject:v9])
      {
        v10 = [*(a1 + 48) _getLocalRecordFromCPLRecord:v8 inLibrary:*(a1 + 56)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([v11 uploadAttempts] < 11)
          {
            v14 = [v11 shareRelationship];
            [v11 incrementUploadAttempts];
          }

          else
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v12 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v11 scopedIdentifier];
                *buf = 138412290;
                v45 = v13;
                _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Exceeded max upload attempts for _processInvalidScopeCommitError, going to quarantine asset: %@", buf, 0xCu);
              }
            }

            [*(a1 + 48) _quarantineObject:v11 uploadTracker:0];
            v14 = 0;
            v5 = 1;
          }

          if (v14)
          {
LABEL_19:
            if ([v14 status] == 1)
            {
              v15 = [v14 cplScopeChange];
              [v28 addObject:v15];

LABEL_27:
              goto LABEL_28;
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v10 shareRelationship];
            if (v14)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v16 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v10;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Can't find share for %@, marking it as CPLPushFailed", buf, 0xCu);
          }
        }

        [v10 setCloudLocalState:2];
        [v29 addObject:v9];
        goto LABEL_27;
      }

LABEL_28:
    }

    v4 = [v2 countByEnumeratingWithState:&v38 objects:v46 count:16];
  }

  while (v4);

  if (v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.quarantined", 0, 0, 0);
  }

LABEL_33:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(a1 + 32) removeRecordWithScopedIdentifier:*(*(&v34 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v20);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v28;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(a1 + 32) addRecord:*(*(&v30 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
  }
}

- (void)_processQuarantineRecordsCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 uploadTracker:(id)a6 inLibrary:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v32 = a6;
  v31 = a7;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need to quarantine records", buf, 0x20u);
    }
  }

  v30 = v12;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v13 records];
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 scopedIdentifier];
        if ([v14 containsObject:v23])
        {
          [(PLCloudBatchUploader *)self quarantineRecord:v22 uploadTracker:v32 inLibrary:v31];
          v19 = 1;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [v13 removeRecordWithScopedIdentifier:*(*(&v33 + 1) + 8 * j)];
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v26);
  }

  if (v19)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.quarantined", 0, 0, 0);
  }
}

- (void)_quarantineObject:(id)a3 uploadTracker:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v8 setCloudLocalState:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
    v7 = v6;
    if (v6 && [v6 isPlaceholderAsset])
    {
      [v7 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 stopTrackingMaster:v8];
    }
  }
}

- (void)quarantineRecord:(id)a3 uploadTracker:(id)a4 inLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLCloudBatchUploader_quarantineRecord_uploadTracker_inLibrary___block_invoke;
  v14[3] = &unk_1E7578100;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [v12 performTransaction:v14];
}

void __65__PLCloudBatchUploader_quarantineRecord_uploadTracker_inLibrary___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _getLocalRecordFromCPLRecord:*(a1 + 40) inLibrary:*(a1 + 48)];
  if (v2)
  {
    [*(a1 + 32) _quarantineObject:v2 uploadTracker:*(a1 + 56)];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = v2;
        v4 = "Local object is quarantined: %@";
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      v4 = "Can't find local object to quarantine for record: %@";
      goto LABEL_8;
    }

LABEL_9:
  }
}

- (void)_processIncludeMasterCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v47 = v10;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need to include the missing master.", buf, 0x20u);
    }
  }

  v16 = objc_alloc_init(PLCloudPhotoLibraryBatchManager);
  v17 = [MEMORY[0x1E695DFA8] setWithSet:v12];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v47) = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __92__PLCloudBatchUploader__processIncludeMasterCommitError_inUploadBatch_forRecords_inLibrary___block_invoke;
  v35[3] = &unk_1E7576968;
  v18 = v11;
  v36 = v18;
  v19 = v12;
  v37 = v19;
  v20 = v13;
  v38 = v20;
  v39 = self;
  v42 = buf;
  v21 = v16;
  v40 = v21;
  v22 = v17;
  v41 = v22;
  [v20 performTransactionAndWait:v35];
  if (*(*&buf[8] + 24) == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.quarantined", 0, 0, 0);
  }

  if ([v22 count] && (*v14 & 1) == 0)
  {
    v24 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v44 = 138412290;
      v45 = v22;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Can't find some records to include master for: %@", v44, 0xCu);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v19;
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v26)
  {
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v25);
        }

        [v18 removeRecordWithScopedIdentifier:{*(*(&v31 + 1) + 8 * v28++), v31}];
      }

      while (v26 != v28);
      v26 = [v25 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v26);
  }

  uploadBatchArray = self->_uploadBatchArray;
  v30 = [(PLCloudPhotoLibraryBatchManager *)v21 drainBatches];
  [(NSMutableArray *)uploadBatchArray addObjectsFromArray:v30];

  _Block_object_dispose(buf, 8);
}

void __92__PLCloudBatchUploader__processIncludeMasterCommitError_inUploadBatch_forRecords_inLibrary___block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [*(a1 + 32) records];
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = off_1E7560000;
    v27 = v1;
    do
    {
      v7 = 0;
      v28 = v4;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = [v8 scopedIdentifier];
        if ([*(v1 + 40) containsObject:v9])
        {
          v10 = [(__objc2_class *)v6[53] assetWithScopedIdentifier:v9 inLibrary:*(v1 + 48) prefetchResources:0];
          v11 = v10;
          if (v10)
          {
            if ([v10 uploadAttempts] >= 11)
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v12 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [v11 scopedIdentifier];
                  *buf = 138412290;
                  v34 = v13;
                  _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Exceeded max upload attempts for _processIncludeMasterCommitError, going to quarantine asset: %@", buf, 0xCu);

                  v4 = v28;
                }

                goto LABEL_21;
              }

              goto LABEL_22;
            }

            v16 = [v11 master];
            if (v16 && (v17 = v16, [v11 master], v18 = v6, v19 = v5, v20 = v2, v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "cloudLocalState"), v21, v2 = v20, v5 = v19, v6 = v18, v1 = v27, v17, v22 == 4))
            {
              v4 = v28;
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v12 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  v23 = [v11 cloudAssetGUID];
                  *buf = 138412290;
                  v34 = v23;
                  _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Master was quarantined, also quarantine the asset %@", buf, 0xCu);
                }

LABEL_21:
              }

LABEL_22:
              [*(v1 + 56) _quarantineObject:v11 uploadTracker:0];
              *(*(*(v1 + 80) + 8) + 24) = 1;
            }

            else
            {
              v24 = [v11 cplMasterChangeInLibrary:*(v1 + 48) shouldGenerateDerivatives:1];
              if (v24)
              {
                [*(v1 + 64) addRecord:v24];
                [*(v1 + 64) addRecord:v8];
              }

              else
              {
                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v25 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = [v11 cloudAssetGUID];
                    *buf = 138412290;
                    v34 = v26;
                    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Can't find/create master for record %@, marking as failed", buf, 0xCu);
                  }
                }

                [v11 setCloudLocalState:2];
              }

              v4 = v28;
            }

            [v11 incrementUploadAttempts];
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v14 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [0 cloudAssetGUID];
              *buf = 138412290;
              v34 = v15;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Can't find asset for record %@", buf, 0xCu);
            }
          }

          [*(v1 + 72) removeObject:v9];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }
}

- (void)_processChangeToFullRecordCommitError:(id)a3 inUploadBatch:(id)a4 forRecords:(id)a5 inLibrary:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Received error while upload batch: %@ forRecords: %@ : Error: %@. We need change the upload type to a full record.", buf, 0x20u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PLCloudBatchUploader__processChangeToFullRecordCommitError_inUploadBatch_forRecords_inLibrary___block_invoke;
  v18[3] = &unk_1E7578100;
  v19 = v11;
  v20 = v12;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v15 performTransactionAndWait:v18];
}

void __97__PLCloudBatchUploader__processChangeToFullRecordCommitError_inUploadBatch_forRecords_inLibrary___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E695DFA8] set];
  v2 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [*(a1 + 32) records];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (!v4)
  {

    goto LABEL_36;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v41;
  v31 = v3;
  v29 = v2;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v41 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v40 + 1) + 8 * i);
      v10 = [v9 scopedIdentifier];
      if ([*(a1 + 40) containsObject:v10])
      {
        v11 = [*(a1 + 48) _getLocalRecordFromCPLRecord:v9 inLibrary:*(a1 + 56)];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 cplFullRecord];
          if (!v13)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v14 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v47 = v12;
                _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Can't create full record type for %@, marking it as CPLPushFailed", buf, 0xCu);
              }
            }

            [v12 setCloudLocalState:2];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v12;
            if ([v15 uploadAttempts] < 11)
            {
              [v15 incrementUploadAttempts];
            }

            else
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v16 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v15 scopedIdentifier];
                  *buf = 138412290;
                  v47 = v17;
                  _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Exceeded max upload attempts for _processChangeToFullRecordCommitError, going to quarantine asset: %@", buf, 0xCu);
                }
              }

              [*(a1 + 48) _quarantineObject:v15 uploadTracker:0];

              v13 = 0;
              v6 = 1;
            }

            v2 = v29;
          }

          if (v13)
          {
            [v30 addObject:v13];
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Can't find local object to create full record type: %@", buf, 0xCu);
          }

LABEL_28:

LABEL_29:
          v3 = v31;
        }

        [v2 addObject:v10];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  }

  while (v5);

  if (v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.quarantined", 0, 0, 0);
  }

LABEL_36:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v2;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(a1 + 32) removeRecordWithScopedIdentifier:*(*(&v36 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v21);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v30;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(a1 + 32) addRecord:*(*(&v32 + 1) + 8 * k)];
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v26);
  }
}

- (id)_getLocalRecordFromCPLRecord:(id)a3 inLibrary:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 scopedIdentifier];
  v8 = [v7 identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PLManagedAsset assetWithScopedIdentifier:v7 inLibrary:v6 prefetchResources:0];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PLCloudMaster cloudMasterWithScopedIdentifier:v7 prefetchResources:0 inLibrary:v6];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PLGenericAlbum albumWithCloudGUID:v8 inLibrary:v6];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [PLFaceCrop faceCropsWithUUIDs:v12 inPhotoLibrary:v6];
    v10 = [v13 firstObject];

LABEL_29:
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PLMemory memoryWithUUID:v8 inPhotoLibrary:v6];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![PLUserFeedback shouldHandleCPLSuggestionChange:v5])
    {
      v9 = [PLSuggestion suggestionWithUUID:v8 inPhotoLibrary:v6];
      goto LABEL_7;
    }

    v12 = [v6 managedObjectContext];
    v14 = [PLUserFeedback userFeedbackWithUUID:v8 inManagedObjectContext:v12];
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 managedObjectContext];
    v14 = [PLPerson personWithUUID:v8 inManagedObjectContext:v12];
LABEL_28:
    v10 = v14;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v6 managedObjectContext];
    v12 = [PLGraphNode fetchNodeWithUUID:v8 inManagedObjectContext:v15];

    if (!v12)
    {
      v10 = 0;
      goto LABEL_29;
    }

    v14 = [PLGraphNodeContainer newNodeContainerWithNode:v12];
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PLCloudSharedComment cloudSharedCommentWithGUID:v8 inLibrary:v6];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 managedObjectContext];
    v14 = [(PLShare *)PLLibraryScope shareWithScopeIdentifier:v8 includeTrashed:1 inManagedObjectContext:v12];
    goto LABEL_28;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)_cleanUploadedResources:(id)a3 inLibrary:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [v5 resources];
  v6 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v29 = v34;
    v8 = *v46;
    v30 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v11 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [v10 identity];
            v13 = [v12 fileURL];
            v14 = [v13 path];
            v15 = [MEMORY[0x1E6994B90] descriptionForResourceType:{objc_msgSend(v10, "resourceType")}];
            v16 = [v10 deleteAfterUpload];
            *buf = 138412802;
            v50 = v14;
            v51 = 2112;
            v52 = v15;
            v53 = 1024;
            v54 = v16;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Checking: %@, type: %@ will delete after upload: %d", buf, 0x1Cu);
          }
        }

        if ([v10 deleteAfterUpload] && objc_msgSend(v10, "resourceType") != 1)
        {
          v17 = [v10 identity];
          v18 = [v17 fileURL];
          v19 = [v18 path];

          v20 = [MEMORY[0x1E696AC08] defaultManager];
          if ([v20 fileExistsAtPath:v19])
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v21 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v50 = v19;
                _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "removing %@ that was uploaded.", buf, 0xCu);
              }
            }

            v44 = 0;
            v22 = [v20 removeItemAtPath:v19 error:&v44];
            v23 = v44;
            if (v22)
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v24 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v50 = v10;
                  v51 = 2112;
                  v52 = v19;
                  _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "removed uploaded resource for %@ at %@", buf, 0x16u);
                }
              }

              v25 = [v10 itemScopedIdentifier];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v40[2] = __58__PLCloudBatchUploader__cleanUploadedResources_inLibrary___block_invoke;
                v40[3] = &unk_1E75761B8;
                v41 = v25;
                v42 = v31;
                v43 = v10;
                [v42 performTransactionAndWait:v40];

                v26 = v41;
                goto LABEL_32;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v33[0] = MEMORY[0x1E69E9820];
                v33[1] = 3221225472;
                v34[0] = __58__PLCloudBatchUploader__cleanUploadedResources_inLibrary___block_invoke_218;
                v34[1] = &unk_1E75730F8;
                v35 = v25;
                v27 = v31;
                v36 = v27;
                v37 = v10;
                v38 = v19;
                v39 = v20;
                v28 = v27;
                v5 = v30;
                [v28 performTransactionAndWait:v33];

                v26 = v35;
                goto LABEL_32;
              }

              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v26 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v50 = v5;
                  _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "invalid item change to remove uploaded resources for %@", buf, 0xCu);
                }

LABEL_32:
              }

LABEL_33:
            }

            else if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v25 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v50 = v19;
                _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "failed to remove derivative file %@", buf, 0xCu);
              }

              goto LABEL_33;
            }
          }

          continue;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v7);
  }
}

void __58__PLCloudBatchUploader__cleanUploadedResources_inLibrary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithScopedIdentifier:*(a1 + 32) inLibrary:*(a1 + 40) prefetchResources:1];
  if (v2)
  {
    v3 = [v2 assetResourceForCPLType:{objc_msgSend(*(a1 + 48), "resourceType")}];
    if (v3)
    {
      v4 = v3;
      [v3 markAsNotLocallyAvailable];
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v6 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 48);
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "unable to find uploaded cloud resource %@", &v8, 0xCu);
        }
      }

      v4 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "unable to find asset for uploaded resource %@", &v8, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __58__PLCloudBatchUploader__cleanUploadedResources_inLibrary___block_invoke_218(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [PLCloudMaster cloudMasterWithScopedIdentifier:*(a1 + 32) prefetchResources:1 inLibrary:*(a1 + 40)];
  if (v2)
  {
    v3 = [v2 rm_assetAttachedResourcesForResourceType:{objc_msgSend(*(a1 + 48), "resourceType")}];
    if ([v3 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        v6 = v5;
        v19 = v3;
        v20 = v2;
        v7 = *v23;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v23 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v22 + 1) + 8 * i);
            v10 = objc_autoreleasePoolPush();
            v11 = [v9 fileURL];
            v12 = [v11 path];

            if (([v12 isEqualToString:*(a1 + 56)] & 1) == 0)
            {
              v13 = *(a1 + 64);
              v21 = 0;
              v14 = [v13 removeItemAtPath:v12 error:&v21];
              v15 = v21;
              if ((v14 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v16 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v28 = v12;
                  _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "failed to remove derivative file %@ for duplicated asset", buf, 0xCu);
                }
              }
            }

            [v9 markAsNotLocallyAvailable];

            objc_autoreleasePoolPop(v10);
          }

          v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v6);
        v3 = v19;
        v2 = v20;
      }
    }

    else
    {
      if (*MEMORY[0x1E6994D48])
      {
LABEL_25:

        goto LABEL_26;
      }

      v4 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 48);
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v2;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "unable to find uploaded cloud resource %@ in cloudMaster %@", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "unable to find cloud master for uploaded resource %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (void)uploadFullPhotoLibraryToCloud:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
  v7 = objc_alloc_init(PLCloudPhotoLibraryBatchManager);
  if ([MEMORY[0x1E6994A80] serverSupportsVision])
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke;
    v76[3] = &unk_1E75761B8;
    v77 = v4;
    v78 = self;
    v79 = v7;
    [v77 performBlockAndWait:v76];
  }

  if (!-[PLCloudPhotoLibraryBatchManager currentBatchCount](v7, "currentBatchCount") && [MEMORY[0x1E6994A80] serverSupportsVision])
  {
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2;
    v73[3] = &unk_1E7578848;
    v74 = v4;
    v75 = v7;
    [v74 performBlockAndWait:v73];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_188;
    v69[3] = &unk_1E75761B8;
    v70 = v5;
    v71 = v4;
    v72 = v6;
    [v71 performBlockAndWait:v69];
  }

  if ([v5 count])
  {
    v8 = [v5 _pl_map:&__block_literal_global_192];
    v9 = off_1E755FEC0;
LABEL_10:
    v10 = [(__objc2_class *)*v9 entityName];
    [(PLCloudBatchUploader *)self _processPendingObjects:v8 forEntityName:v10 withBatchManager:v7 inLibrary:v4];

    goto LABEL_15;
  }

  if (!-[PLCloudPhotoLibraryBatchManager isAboveMaximumResourceBudget](v7, "isAboveMaximumResourceBudget") && -[PLCloudPhotoLibraryBatchManager currentBatchCount](v7, "currentBatchCount") <= 49 && [v6 count])
  {
    v8 = [v6 _pl_map:&__block_literal_global_196];
    v9 = off_1E75601A8;
    goto LABEL_10;
  }

LABEL_15:
  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_3;
    v66[3] = &unk_1E7578848;
    v11 = v4;
    v67 = v11;
    v12 = v6;
    v68 = v12;
    [v11 performTransactionAndWait:v66];
    if ([v12 count])
    {
      v13 = [v12 _pl_map:&__block_literal_global_198];
      v14 = +[PLManagedAsset entityName];
      [(PLCloudBatchUploader *)self _processPendingObjects:v13 forEntityName:v14 withBatchManager:v7 inLibrary:v11];
    }
  }

  if (!-[PLCloudPhotoLibraryBatchManager currentBatchCount](v7, "currentBatchCount") && [MEMORY[0x1E6994A80] serverSupportsVision])
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_5;
    v62[3] = &unk_1E75761B8;
    v63 = v4;
    v64 = self;
    v65 = v7;
    [v63 performBlockAndWait:v62];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_202;
    v59[3] = &unk_1E7578848;
    v60 = v4;
    v61 = v7;
    [v60 performBlockAndWait:v59];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_205;
    v56[3] = &unk_1E7578848;
    v57 = v4;
    v58 = v7;
    [v57 performBlockAndWait:v56];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_208;
    v53[3] = &unk_1E7578848;
    v54 = v4;
    v55 = v7;
    [v54 performBlockAndWait:v53];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_211;
    v50[3] = &unk_1E7578848;
    v51 = v4;
    v52 = v7;
    [v51 performBlockAndWait:v50];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_215;
    v47[3] = &unk_1E7578848;
    v48 = v4;
    v49 = v7;
    [v48 performBlockAndWait:v47];
  }

  if (![(PLCloudPhotoLibraryBatchManager *)v7 currentBatchCount])
  {
    v15 = [v4 pathManager];
    v16 = [v15 deletedMemoryUUIDsFilePath];

    v17 = [v4 mainScopeIdentifier];
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = v18;
    if (v16 && [v18 fileExistsAtPath:v16])
    {
      v41 = v5;
      v20 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v16];
      if ([v20 count])
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v21 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = v20;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Syncing %@ memories deleted during migration", buf, 0xCu);
          }
        }

        v36 = v19;
        v37 = v16;
        v38 = v6;
        v39 = self;
        v40 = v4;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v35 = v20;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v43 objects:v84 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v44;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v17 identifier:*(*(&v43 + 1) + 8 * i)];
              v28 = [MEMORY[0x1E6994B18] newDeleteChangeWithScopedIdentifier:v27];
              [(PLCloudPhotoLibraryBatchManager *)v7 addRecord:v28];
            }

            v24 = [v22 countByEnumeratingWithState:&v43 objects:v84 count:16];
          }

          while (v24);
        }

        self = v39;
        v6 = v38;
        v20 = v35;
        v19 = v36;
      }

      v42 = 0;
      v29 = [v19 removeItemAtPath:v16 error:{&v42, v35, v36, v37, v38, v39, v40}];
      v30 = v42;
      if ((v29 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v31 = v20;
        v32 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v81 = v16;
          v82 = 2112;
          v83 = v30;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
        }

        v20 = v31;
      }

      v5 = v41;
    }
  }

  uploadBatchArray = self->_uploadBatchArray;
  v34 = [(PLCloudPhotoLibraryBatchManager *)v7 drainBatches];
  [(NSMutableArray *)uploadBatchArray addObjectsFromArray:v34];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] managedObjectContext];
  v3 = [PLPerson personsToUploadInManagedObjectContext:v2 limit:100];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu pending people", buf, 0xCu);
    }
  }

  v5 = [a1[5] _personsToUploadIncludingReverseOrderedMergeTargetsForPersons:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_185;
  v6[3] = &unk_1E7572300;
  v7 = a1[6];
  [v5 enumerateObjectsUsingBlock:v6];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [PLFaceCrop faceCropsToUploadInPhotoLibrary:*(a1 + 32) limit:50];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = [v2 count];
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending faceCrops", buf, 0xCu);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_186;
  v4[3] = &unk_1E75646E0;
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_188(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (![a1[4] count])
  {
    v2 = [PLGenericAlbum albumsToUploadInitiallyInLibrary:a1[5] limit:100];
    [a1[4] addObjectsFromArray:v2];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v3 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [a1[4] count];
        v9 = 134217984;
        v10 = v4;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending albums", &v9, 0xCu);
      }
    }
  }

  if (![a1[6] count])
  {
    v5 = [a1[5] managedObjectContext];
    v6 = [PLManagedAsset assetsToUploadInitiallyInManagedObjectContext:v5 limit:100];

    [a1[6] addObjectsFromArray:v6];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a1[6] count];
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Found %lu pending assets", &v9, 0xCu);
      }
    }
  }
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_3(uint64_t a1)
{
  v2 = [PLManagedAsset assetsToRetryInLibrary:*(a1 + 32) limit:1];
  [*(a1 + 40) addObjectsFromArray:v2];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_5(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [PLDetectedFace syncableFacesToUploadInitiallyInLibrary:a1[4] limit:50];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = [v2 count];
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending syncable faces", buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) associatedAssetForFaceOrTorso:1 orTemporal:{0, v14}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [v4 _pl_map:&__block_literal_global_201];
    v12 = a1[5];
    v13 = +[PLManagedAsset entityName];
    [v12 _processPendingObjects:v11 forEntityName:v13 withBatchManager:a1[6] inLibrary:a1[4]];
  }
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_202(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [PLMemory memoriesToUploadInPhotoLibrary:*(a1 + 32) limit:100];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = [v2 count];
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending memories", buf, 0xCu);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_203;
  v4[3] = &unk_1E7568E88;
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_205(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [PLSuggestion suggestionsToUploadInPhotoLibrary:*(a1 + 32) limit:100];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = [v2 count];
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending suggestions", buf, 0xCu);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_206;
  v4[3] = &unk_1E7564728;
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_208(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLUserFeedback userFeedbacksToUploadInManagedObjectContext:v2 limit:100];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu pending user feedbacks", buf, 0xCu);
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_209;
  v5[3] = &unk_1E7564750;
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_211(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLSocialGroup socialGroupsToUploadInManagedObjectContext:v2 limit:50];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu pending social groups", buf, 0xCu);
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_213;
  v5[3] = &unk_1E7564778;
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_2_215(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLCloudSharedComment commentsToUploadInManagedObjectContext:v2 limit:100];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu pending cloud shared comments", buf, 0xCu);
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_216;
  v5[3] = &unk_1E75681A0;
  v6 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_216(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplFullRecord];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_213(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSocialGroupChange];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_209(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSuggestionChange];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_206(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSuggestionChange];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_203(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplMemoryChange];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_186(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplFaceCropChange];
  [v2 addRecord:v3];
}

void __54__PLCloudBatchUploader_uploadFullPhotoLibraryToCloud___block_invoke_185(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplPersonChange];
  [v2 addRecord:v3];
}

- (void)uploadDeletedRecordsFromPlist:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(PLCloudPhotoLibraryBatchManager);
  if ([(NSMutableDictionary *)self->_recordsToDelete count]&& (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      recordsToDelete = self->_recordsToDelete;
      *buf = 138412290;
      v42 = recordsToDelete;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "recordsToDelete is not empty %@, overwriting it from file", buf, 0xCu);
    }
  }

  objc_storeStrong(&self->_recordsToDeletePlistPath, a3);
  v26 = v5;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v5];
  v10 = self->_recordsToDelete;
  self->_recordsToDelete = v9;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_recordsToDelete;
  v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        if (([v12 isEqualToString:@"RKVersion"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RKAlbum") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RKFolder") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RKMaster") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RKMemory") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RKPerson") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"RKFaceCrop"))
        {
          v30 = v11;
          v13 = objc_opt_class();
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = [(NSMutableDictionary *)self->_recordsToDelete objectForKeyedSubscript:v12];
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * i);
                v20 = objc_alloc_init(v13);
                [v20 setChangeType:1024];
                v21 = [(PLLibraryServicesManager *)self->_libraryServicesManager mainScopeIdentifier];
                v22 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v21 identifier:v19];
                [v20 setScopedIdentifier:v22];
                [(PLCloudPhotoLibraryBatchManager *)v6 addRecord:v20];
              }

              v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v16);
          }

          v11 = v30;
        }

        ++v11;
      }

      while (v11 != v29);
      v23 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      v29 = v23;
    }

    while (v23);
  }

  uploadBatchArray = self->_uploadBatchArray;
  v25 = [(PLCloudPhotoLibraryBatchManager *)v6 drainBatches];
  [(NSMutableArray *)uploadBatchArray addObjectsFromArray:v25];
}

- (id)_personsToUploadIncludingReverseOrderedMergeTargetsForPersons:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v8 reverseOrderedMergeTargetPersons];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              if (![v15 cloudLocalState])
              {
                [v4 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v12);
        }

        [v4 addObject:v8];
        objc_autoreleasePoolPop(v9);
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v6);
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [obj valueForKey:@"personUUID"];
      v18 = [v4 valueForKey:@"personUUID"];
      *buf = 138412546;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "All unpushed merge targets for %@: %@", buf, 0x16u);
    }
  }

  return v4;
}

- (void)_processPendingObjects:(id)a3 forEntityName:(id)a4 withBatchManager:(id)a5 inLibrary:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PLCloudBatchUploader__processPendingObjects_forEntityName_withBatchManager_inLibrary___block_invoke;
  aBlock[3] = &unk_1E75646B8;
  v25 = v11;
  v38 = v25;
  v14 = v13;
  v39 = v14;
  v40 = self;
  v24 = v12;
  v41 = v24;
  v15 = _Block_copy(aBlock);
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v16 addObject:*(*(&v33 + 1) + 8 * v21)];
        if ([v16 count] >= 0x32)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __88__PLCloudBatchUploader__processPendingObjects_forEntityName_withBatchManager_inLibrary___block_invoke_2;
          v30[3] = &unk_1E7577C08;
          v32 = v15;
          v22 = v16;
          v31 = v22;
          [v14 performTransactionAndWait:v30];
          [v22 removeAllObjects];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__PLCloudBatchUploader__processPendingObjects_forEntityName_withBatchManager_inLibrary___block_invoke_3;
    v27[3] = &unk_1E7577C08;
    v29 = v15;
    v23 = v16;
    v28 = v23;
    [v14 performTransactionAndWait:v27];
    [v23 removeAllObjects];
  }

  objc_autoreleasePoolPop(context);
}

void __88__PLCloudBatchUploader__processPendingObjects_forEntityName_withBatchManager_inLibrary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = +[PLManagedAsset entityName];
  LODWORD(v3) = [v3 isEqualToString:v4];

  if (v3)
  {
    v5 = [PLManagedAsset assetsWithUUIDs:v10 options:1 inLibrary:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = +[PLGenericAlbum entityName];
    LODWORD(v6) = [v6 isEqualToString:v7];

    if (v6)
    {
      v8 = [*(a1 + 40) managedObjectContext];
      v9 = [PLGenericAlbum fetchAlbumsWithUUIDs:v10 propertiesToFetch:0 managedObjectContext:v8];

      v5 = 0;
      if ([v9 isSuccess])
      {
        v5 = [v9 result];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 count])
  {
    [*(a1 + 48) _sendOneBatch:v5 toBatchManager:*(a1 + 56) inLibrary:*(a1 + 40)];
  }
}

- (void)_sendAssets:(id)a3 toBatchManager:(id)a4 orderKeyManager:(id)a5 inLibrary:(id)a6
{
  v127 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v94 = a5;
  v95 = self;
  v96 = a6;
  [(PLCloudBatchUploader *)self _incrementUploadAttemptsAndPushStateForAssets:v10];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v123 = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "sending assets %@ to batch manager", buf, 0xCu);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v84 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v83 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v93 = [PLManagedAsset isComputeSyncEnabledForDirection:0 library:v96];
  v77 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (!v14)
  {
    v75 = 0;
    goto LABEL_98;
  }

  v15 = v14;
  v75 = 0;
  v16 = *v116;
  v79 = *v116;
  v72 = v13;
  while (2)
  {
    v17 = 0;
    do
    {
      if (*v116 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v115 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      v92 = v18;
      if (([(__CFString *)v18 isDeleted]& 1) == 0 && ([(__CFString *)v18 complete]& 1) != 0)
      {
        v85 = v17;
        v114 = 0;
        v20 = [(__CFString *)v18 existingCloudMasterNeedsRepush:&v114];
        v21 = v20;
        if (v114 == 1)
        {
          v22 = [v20 cplPropertyRecord];
          [v11 addRecord:v22];

          v18 = v92;
        }

        v23 = [v21 scopedIdentifier];
        v81 = v19;
        if (v75)
        {
          v24 = [v75 scopedIdentifier];
          if ([v24 isEqual:v23] && !objc_msgSend(v21, "cloudLocalState"))
          {
            v53 = [v11 currentBatchCount];

            v54 = v53 < 200;
            v19 = v81;
            v18 = v92;
            if (v54)
            {
              goto LABEL_20;
            }
          }

          else
          {

            v18 = v92;
          }
        }

        if (([v11 isAboveMaximumResourceBudget] & 1) != 0 || objc_msgSend(v11, "currentBatchCount") > 49)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v57 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEBUG, "Hit current upload batch limit, retry in the next loop.", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v19);
          goto LABEL_98;
        }

LABEL_20:
        if (v21 && ([v21 cloudLocalState] || (objc_msgSend(v13, "containsObject:", v23) & 1) != 0))
        {
          v25 = v77;
          goto LABEL_24;
        }

        v27 = [(__CFString *)v18 cplMasterChangeInLibrary:v96 shouldGenerateDerivatives:v95->_shouldGenerateDerivatives];
        v31 = [(__CFString *)v18 master];

        v32 = [v31 scopedIdentifier];

        if (v32)
        {
          if (!v27)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v45 = [(__CFString *)v92 isDeleted];
          v46 = @"NO";
          if (v45)
          {
            v46 = @"YES";
          }

          v47 = v46;
          v48 = [v31 scopedIdentifier];
          [(PLCloudBatchUploader *)v95 _promptToFileRadarWithTitle:@"TTR: Found CloudMaster without a scopedIdentifier object" description:@"Found a CloudMaster %@ on asset %@ (isDeleted=%@) without a scopedIdentifier %@.\n\nSee rdar://problem/156927080", v31, v92, v47, v48];

          if (!v27)
          {
            goto LABEL_64;
          }
        }

        v49 = [v31 scopedIdentifier];

        if (v49)
        {
          v50 = [v31 scopedIdentifier];

          v23 = v50;
          [v84 setObject:v27 forKey:v50];

          if (!v31)
          {
            v26 = 0;
            v16 = v79;
            v19 = v81;
            v17 = v85;
            goto LABEL_78;
          }

          v21 = v31;
          v25 = v77;
          v16 = v79;
          v19 = v81;
LABEL_24:
          v26 = v21;

          if ([v26 cloudLocalState] == 2)
          {
            v17 = v85;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v27 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v123 = v26;
                v124 = 2112;
                v125 = v92;
                _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "CloudMaster %@ failed to be uploaded, skip uploading asset %@.", buf, 0x16u);
              }

LABEL_76:
              v75 = v26;
LABEL_77:

              v19 = v81;
LABEL_78:
              if (*MEMORY[0x1E6994D48])
              {
LABEL_84:

                goto LABEL_85;
              }

              v55 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v123 = v92;
                _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to add asset %@ to batch, will retry in the next round", buf, 0xCu);
              }

LABEL_83:

              goto LABEL_84;
            }
          }

          else
          {
            v17 = v85;
            if (v23)
            {
              v76 = v26;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __77__PLCloudBatchUploader__sendAssets_toBatchManager_orderKeyManager_inLibrary___block_invoke;
              aBlock[3] = &unk_1E7564690;
              v110 = v96;
              v111 = v95;
              v112 = v84;
              v33 = v23;
              v113 = v33;
              v34 = _Block_copy(aBlock);
              v35 = [v83 objectForKey:v33];
              if (!v35)
              {
                v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v83 setObject:v35 forKey:v33];
              }

              v87 = v33;
              v90 = v35;
              [v35 addObject:v92];
              v36 = [(__CFString *)v92 cloudAssetGUID];
              if ([v36 length])
              {
                [v25 addObject:v36];
              }

              v74 = v36;
              v23 = v87;
              v26 = v76;
              if ([v13 indexOfObject:v87] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v73 = v15;
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                v37 = [v76 assets];
                v38 = [v37 countByEnumeratingWithState:&v105 objects:v121 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v106;
                  do
                  {
                    for (i = 0; i != v39; ++i)
                    {
                      if (*v106 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v105 + 1) + 8 * i);
                      v43 = [v42 cloudAssetGUID];
                      if (([v25 containsObject:v43] & 1) == 0 && objc_msgSend(obj, "indexOfObject:", v42) == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        if ((*MEMORY[0x1E6994D48] & 1) == 0)
                        {
                          v44 = __CPLAssetsdOSLogDomain();
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v123 = v92;
                            v124 = 2112;
                            v125 = v87;
                            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Found duplicate asset %@ for masterScopedIdentifier %@, adding to unsortedAsset", buf, 0x16u);
                          }

                          v25 = v77;
                        }

                        [v90 addObject:v42];
                        v34[2](v34, v42);
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v105 objects:v121 count:16];
                  }

                  while (v39);
                }

                v13 = v72;
                v23 = v87;
                [v72 addObject:v87];
                v15 = v73;
                v16 = v79;
                v17 = v85;
                v26 = v76;
              }

              else
              {
                v34[2](v34, v92);
              }

              v55 = v110;
              v75 = v26;
              v19 = v81;
              goto LABEL_83;
            }

            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v27 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v123 = v92;
                _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "No valid masterScopedIdentifier for asset %@. Skipping upload", buf, 0xCu);
              }

              v23 = 0;
              goto LABEL_76;
            }

            v23 = 0;
          }

          v75 = v26;
          goto LABEL_78;
        }

LABEL_64:
        v17 = v85;
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v51 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = [(__CFString *)v92 uuid];
            *buf = 138543362;
            v123 = v52;
            _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to create master for asset %{public}@. Skipping upload.", buf, 0xCu);

            v17 = v85;
          }
        }

        v26 = 0;
        v16 = v79;
        goto LABEL_77;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v28 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(__CFString *)v92 isDeleted];
          *buf = 138412546;
          v30 = @"incomplete";
          if (v29)
          {
            v30 = @"deleted";
          }

          v123 = v92;
          v124 = 2112;
          v125 = v30;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Ignoring asset %@, since it's %@", buf, 0x16u);
        }
      }

LABEL_85:
      objc_autoreleasePoolPop(v19);
      ++v17;
    }

    while (v17 != v15);
    v56 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
    v15 = v56;
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_98:

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v80 = v13;
  v86 = [v80 countByEnumeratingWithState:&v101 objects:v120 count:16];
  if (v86)
  {
    v82 = *v102;
    do
    {
      v58 = 0;
      do
      {
        if (*v102 != v82)
        {
          objc_enumerationMutation(v80);
        }

        v91 = v58;
        v59 = *(*(&v101 + 1) + 8 * v58);
        v60 = [v84 objectForKey:v59];
        if (v60)
        {
          [v11 addRecord:v60];
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v61 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v123 = v60;
              _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEBUG, "Adding master %@ to initial batch", buf, 0xCu);
            }
          }
        }

        v89 = v60;
        v88 = [v83 objectForKey:v59];
        v62 = [v88 sortedArrayUsingComparator:&__block_literal_global_550];
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v63 = [v62 countByEnumeratingWithState:&v97 objects:v119 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v98;
          do
          {
            for (j = 0; j != v64; ++j)
            {
              if (*v98 != v65)
              {
                objc_enumerationMutation(v62);
              }

              v67 = *(*(&v97 + 1) + 8 * j);
              v68 = [v67 cplAssetChangeWithMasterScopedIdentifier:v59 withChangeType:0 shouldGenerateDerivatives:v95->_shouldGenerateDerivatives orderKeyManager:v94 computeSyncUploadEnabled:v93 inLibrary:v96];
              [v11 addRecord:v68 ignoreBatchSize:1];
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v69 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v123 = v68;
                  _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEBUG, "Adding asset %@ to initial batch", buf, 0xCu);
                }
              }

              v70 = [v67 computeSyncAttributes];

              if (v70)
              {
                v71 = [v67 scopedIdentifier];
                [v11 addComputeSyncRelevantAsset:v71];
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v97 objects:v119 count:16];
          }

          while (v64);
        }

        v58 = v91 + 1;
      }

      while (v91 + 1 != v86);
      v86 = [v80 countByEnumeratingWithState:&v101 objects:v120 count:16];
    }

    while (v86);
  }
}

void __77__PLCloudBatchUploader__sendAssets_toBatchManager_orderKeyManager_inLibrary___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cplMasterChangeInLibrary:*(a1 + 32) shouldGenerateDerivatives:*(*(a1 + 40) + 33)];
  v5 = [*(a1 + 48) objectForKey:*(a1 + 56)];
  if ([v3 isPhotoIris])
  {
    v6 = 18;
  }

  else if ([v3 isRAWPlusJPEG])
  {
    v6 = 17;
  }

  else
  {
    if (![v3 isRAWOnly])
    {
      goto LABEL_13;
    }

    v6 = 2;
  }

  if ([v4 hasResourceOfType:v6 notInMasterChange:v5])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v6];
        v9 = 138412802;
        v10 = v4;
        v11 = 2112;
        v12 = v5;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Using duplicate master change %@ instead of %@ because it has an additional resource of type: %{public}@", &v9, 0x20u);
      }
    }

    [*(a1 + 48) setObject:v4 forKeyedSubscript:*(a1 + 56)];
  }

LABEL_13:
}

uint64_t __77__PLCloudBatchUploader__sendAssets_toBatchManager_orderKeyManager_inLibrary___block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if ([v6 isCloudPhotoLibraryAsset] && !objc_msgSend(v7, "isCloudPhotoLibraryAsset"))
  {
    goto LABEL_7;
  }

  if ([v6 isCloudPhotoLibraryAsset] & 1) == 0 && (objc_msgSend(v7, "isCloudPhotoLibraryAsset"))
  {
LABEL_11:
    v11 = 1;
    goto LABEL_19;
  }

  v8 = [v6 cloudAssetGUID];
  if ([v8 length])
  {
    v9 = [v7 cloudAssetGUID];
    v10 = [v9 length];

    if (!v10)
    {
LABEL_7:
      v11 = -1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v12 = [v6 cloudAssetGUID];
  if ([v12 length])
  {
    v13 = [v7 cloudAssetGUID];
    v14 = [v13 length];

    if (!v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = [v6 dateCreated];
  if (!v15 || (v16 = v15, [v6 dateCreated], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "dateCreated"), v18 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v17, "compare:", v18), v18, v17, v16, !v11))
  {
    v19 = [v6 addedDate];
    if (v19)
    {
      v20 = [v6 addedDate];
      v21 = [v7 addedDate];
      v11 = [v20 compare:v21];
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_19:

  return v11;
}

- (void)_sendAlbums:(id)a3 toBatchManager:(id)a4 orderKeyManager:(id)a5 inLibrary:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "album to upload = %@", buf, 0xCu);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v25;
    *&v17 = 138412290;
    v23 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) cplAlbumChangeInPhotoLibrary:v12 orderKeyManager:{v11, v23, v24}];
        [v10 addRecord:v21];
        if ((*v13 & 1) == 0)
        {
          v22 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v30 = v21;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Adding album %@ to initial batch", buf, 0xCu);
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }
}

- (void)_sendOneBatch:(id)a3 toBatchManager:(id)a4 inLibrary:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a3;
  v12 = [[v10 alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v14 = [v9 libraryServicesManager];
  v15 = [v14 databaseContext];

  v16 = [PLRelationshipOrderKeyManager alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__PLCloudBatchUploader__sendOneBatch_toBatchManager_inLibrary___block_invoke;
  v24[3] = &unk_1E7574C88;
  v25 = v15;
  v17 = v15;
  v18 = [(PLRelationshipOrderKeyManager *)v16 initWithGenerateContextBlock:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PLCloudBatchUploader__sendOneBatch_toBatchManager_inLibrary___block_invoke_2;
  v21[3] = &unk_1E7564668;
  v19 = v13;
  v22 = v19;
  v20 = v12;
  v23 = v20;
  [v11 enumerateObjectsUsingBlock:v21];

  if ([v20 count])
  {
    [(PLCloudBatchUploader *)self _sendAlbums:v20 toBatchManager:v8 orderKeyManager:v18 inLibrary:v9];
  }

  if ([v19 count])
  {
    [(PLCloudBatchUploader *)self _sendAssets:v19 toBatchManager:v8 orderKeyManager:v18 inLibrary:v9];
  }
}

uint64_t __63__PLCloudBatchUploader__sendOneBatch_toBatchManager_inLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:a2];

  return [v2 managedObjectContext];
}

void __63__PLCloudBatchUploader__sendOneBatch_toBatchManager_inLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
LABEL_5:
    [v4 addObject:v3];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Unsupported object %@ to be uploaded", &v6, 0xCu);
    }
  }

LABEL_10:
}

- (void)_incrementUploadAttemptsAndPushStateForAssets:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v18;
    v9 = MEMORY[0x1E6994D48];
    *&v5 = 67109378;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 incrementUploadAttempts];
        v12 = [MEMORY[0x1E695DF00] date];
        [v11 setLastUploadAttemptDate:v12];

        if ([v11 uploadAttempts] >= 10)
        {
          if ((*v9 & 1) == 0)
          {
            v13 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v11 uploadAttempts];
              *buf = v16;
              v22 = v14;
              v23 = 2112;
              v24 = v11;
              _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Retried %d time for asset %@, giving up", buf, 0x12u);
            }
          }

          if ([v11 cloudLocalState] != 2)
          {
            [v11 setCloudLocalState:2];
            v7 = 1;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
    if (v7)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.failedtopush", 0, 0, 0);
    }
  }
}

- (BOOL)_hasUnuploadedResourceForAsset:(id)a3 resourceType:(unint64_t)a4 cloudMaster:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a3 masterResourceForCPLType:a4];
  v9 = v8;
  if (v8 && ![v8 cloudLocalState])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v7 assets];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) masterResourceForCPLType:a4];
          v17 = v16;
          if (v16 && [v16 cloudLocalState] == 3)
          {

            v10 = 0;
            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_15:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBatchesForChanges:(id)a3 outInsertedPhotoCount:(unint64_t *)a4 outInsertedVideoCount:(unint64_t *)a5 withUploadTracker:(id)a6 inLibrary:(id)a7
{
  v386 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v272 = a6;
  v11 = a7;
  v12 = [v10 insertedAssets];
  v13 = [v10 updatedAssets];
  v283 = [v10 deferredAssets];
  v245 = [v10 updatedMasters];
  v275 = [v10 propertyChangedAssetUuids];
  v267 = [v10 sharingPropertyChangedAssetUuids];
  v266 = [v10 adjustedAssetUuids];
  v265 = [v10 faceChangedAssetUuids];
  v264 = [v10 computeSyncChangedAssets];
  v14 = [v10 insertedResources];
  v246 = [v10 updatedResources];
  v15 = [v10 albumInserts];
  v16 = [v10 albumChanges];
  v260 = [v10 memoryChanges];
  v253 = [v10 personChanges];
  v252 = [v10 faceCropChanges];
  v259 = [v10 suggestionChanges];
  v258 = [v10 userFeedbackChanges];
  v257 = [v10 libraryScopeChanges];
  v256 = [v10 collectionShareChanges];
  v255 = [v10 socialGroupChanges];
  v254 = [v10 deletedRecords];
  v261 = v10;
  v263 = [v10 updatedRelationship];
  v17 = objc_alloc_init(PLCloudPhotoLibraryBatchManager);
  v18 = [v11 libraryServicesManager];
  v19 = [v18 databaseContext];

  v20 = [PLRelationshipOrderKeyManager alloc];
  v363[0] = MEMORY[0x1E69E9820];
  v363[1] = 3221225472;
  v363[2] = __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke;
  v363[3] = &unk_1E7574C88;
  v249 = v19;
  v364 = v249;
  v277 = [(PLRelationshipOrderKeyManager *)v20 initWithGenerateContextBlock:v363];
  v276 = [PLManagedAsset isComputeSyncEnabledForDirection:0 library:v11];
  v250 = v16;
  v251 = v15;
  v287 = v17;
  v21 = v17;
  v22 = self;
  [(PLCloudBatchUploader *)self _processAlbumInserts:v15 albumChanges:v16 withBatchManager:v21 inLibrary:v11];
  if ([MEMORY[0x1E6994A80] serverSupportsVision])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [(PLCloudBatchUploader *)self _personsToUploadIncludingReverseOrderedMergeTargetsForPersons:v253];
    v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v24, "count")}];
    v360[0] = MEMORY[0x1E69E9820];
    v360[1] = 3221225472;
    v360[2] = __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke_2;
    v360[3] = &unk_1E756DC58;
    v26 = v25;
    v361 = v26;
    v362 = v287;
    [v24 enumerateObjectsUsingBlock:v360];

    objc_autoreleasePoolPop(v23);
  }

  v282 = v11;
  v286 = self;
  if ([MEMORY[0x1E6994A80] serverSupportsVision])
  {
    v359 = 0u;
    v358 = 0u;
    v357 = 0u;
    v356 = 0u;
    v27 = v252;
    v28 = [v27 countByEnumeratingWithState:&v356 objects:v385 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v357;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v357 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v356 + 1) + 8 * i);
          v33 = objc_autoreleasePoolPush();
          v34 = [v32 cplFaceCropChange];
          [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v34];

          objc_autoreleasePoolPop(v33);
        }

        v29 = [v27 countByEnumeratingWithState:&v356 objects:v385 count:16];
      }

      while (v29);
    }

    v11 = v282;
    v22 = self;
  }

  v35 = MEMORY[0x1E695DFD8];
  v36 = [v254 valueForKey:@"scopedIdentifier"];
  v37 = [v35 setWithArray:v36];

  v38 = [(PLCloudBatchUploader *)v22 _validateAssets:v12 fromCloudUuidDeleteList:v37];

  v248 = v37;
  v262 = [(PLCloudBatchUploader *)v22 _validateAssets:v13 fromCloudUuidDeleteList:v37];

  v355 = 0u;
  v354 = 0u;
  v353 = 0u;
  v352 = 0u;
  obj = v14;
  v39 = [obj countByEnumeratingWithState:&v352 objects:v384 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v353;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v353 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v352 + 1) + 8 * j);
        if ([v43 cplType] == 23 || objc_msgSend(v43, "cplType") == 24)
        {
          v44 = [v43 asset];
          v45 = [v44 master];

          if (v45)
          {
            v46 = [v45 cplFullRecord];
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v46];
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v352 objects:v384 count:16];
    }

    while (v40);
  }

  v351 = 0u;
  v350 = 0u;
  v349 = 0u;
  v348 = 0u;
  v47 = v283;
  v48 = [v47 countByEnumeratingWithState:&v348 objects:v383 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v349;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v349 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v348 + 1) + 8 * k) scopedIdentifier];
        [v272 trackDeferredAssetForScopedIdentifier:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v348 objects:v383 count:16];
    }

    while (v49);
  }

  v247 = v47;

  v347 = 0u;
  v346 = 0u;
  v345 = 0u;
  v344 = 0u;
  v274 = v38;
  v280 = [v274 countByEnumeratingWithState:&v344 objects:v382 count:16];
  if (v280)
  {
    v278 = *v345;
    do
    {
      v53 = 0;
      do
      {
        if (*v345 != v278)
        {
          objc_enumerationMutation(v274);
        }

        v54 = *(*(&v344 + 1) + 8 * v53);
        v55 = objc_autoreleasePoolPush();
        v56 = [v54 shareRelationship];
        v57 = v56;
        if (!v56 || ([v56 shareURL], v58 = objc_claimAutoreleasedReturnValue(), v58, v58))
        {
          v59 = [v54 cloudAssetGUID];
          if (v59 && [v54 cloudLocalState])
          {
            v60 = 2;
          }

          else
          {
            v60 = 0;
          }

          v343 = 0;
          v61 = [v54 existingCloudMasterNeedsRepush:&v343];
          v62 = v61;
          if (v343 == 1)
          {
            v63 = [v61 cplPropertyRecord];
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v63];
          }

          if (!v62 || ![v62 cloudLocalState]|| [v62 cloudLocalState]== 4)
          {
            v64 = [v54 cplMasterChangeInLibrary:v11 shouldGenerateDerivatives:v22->_shouldGenerateDerivatives];
            if (v64)
            {
              v65 = v64;
              v284 = v55;
              [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v64];
              v66 = [v54 master];

              if ([v66 placeholderState]!= 1)
              {
                v67 = [v66 sizeOfOriginal];
                v68 = [v65 scopedIdentifier];
                v69 = [v54 scopedIdentifier];
                [v272 addSizeForUnpushedOriginals:v67 forMasterScopedIdentifier:v68 forAssetScopedIdentifier:v69];

                v11 = v282;
                v22 = v286;
              }

              if (v66)
              {
                v62 = v66;
                goto LABEL_76;
              }

              v62 = 0;
              v55 = v284;
LABEL_104:

              goto LABEL_105;
            }

            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v71 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                v72 = [v54 uuid];
                *buf = 138543362;
                v379 = v72;
                _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_ERROR, "Failed to create master for %{public}@. Skipping upload", buf, 0xCu);
              }
            }

            v65 = 0;
            v73 = v62;
            v62 = 0;
LABEL_102:

            goto LABEL_104;
          }

          v284 = v55;
          if ([v62 cloudLocalState]!= 3)
          {
            goto LABEL_75;
          }

          if ([(PLCloudBatchUploader *)v22 _hasUnuploadedResourceForAsset:v54 resourceType:17 cloudMaster:v62])
          {
            v65 = [v54 cplMasterChangeInLibrary:v11 shouldGenerateDerivatives:v22->_shouldGenerateDerivatives];
            if (v65)
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v74 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v379 = v62;
                  v380 = 2112;
                  v381 = v54;
                  v75 = v74;
                  v76 = "Pushing uploaded CloudMaster %@ again since new asset %@ has an original alternate resource this master does not have";
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

              goto LABEL_74;
            }

            goto LABEL_76;
          }

          if (![(PLCloudBatchUploader *)v22 _hasUnuploadedResourceForAsset:v54 resourceType:18 cloudMaster:v62])
          {
LABEL_75:
            v65 = 0;
            goto LABEL_76;
          }

          v65 = [v54 cplMasterChangeInLibrary:v11 shouldGenerateDerivatives:v22->_shouldGenerateDerivatives];
          if (v65)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v74 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v379 = v62;
                v380 = 2112;
                v381 = v54;
                v75 = v74;
                v76 = "Pushing uploaded CloudMaster %@ again since new asset %@ has an original video complement resource this master does not have";
LABEL_72:
                _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x16u);
              }

LABEL_73:
            }

LABEL_74:
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v65];
          }

LABEL_76:
          if ([v62 cloudLocalState]== 2)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v77 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v379 = v62;
                v380 = 2112;
                v381 = v54;
                _os_log_impl(&dword_19BF1F000, v77, OS_LOG_TYPE_ERROR, "CloudMaster %@ failed to be uploaded, skip uploading asset %@.", buf, 0x16u);
              }

LABEL_96:
            }

            v82 = [v62 originalFilename];
            if (v82)
            {
              v83 = v82;
              v84 = [v54 originalFilename];
              v85 = [v62 originalFilename];
              v86 = [v84 isEqualToString:v85];

              v22 = v286;
              if ((v86 & 1) == 0)
              {
                v87 = [v62 originalFilename];
                [v54 setOriginalFilename:v87];
              }
            }

            v88 = [v54 computeSyncAttributes];

            if (!v88)
            {
              v11 = v282;
              v55 = v284;
              goto LABEL_104;
            }

            v73 = [v54 scopedIdentifier];
            [(PLCloudPhotoLibraryBatchManager *)v287 addComputeSyncRelevantAsset:v73];
            v11 = v282;
            v55 = v284;
            goto LABEL_102;
          }

          v77 = [v62 scopedIdentifier];
          if (v77)
          {
            v78 = [v54 cplAssetChangeWithMasterScopedIdentifier:v77 withChangeType:v60 shouldGenerateDerivatives:v22->_shouldGenerateDerivatives orderKeyManager:v277 computeSyncUploadEnabled:v276 inLibrary:v11];
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v78];
            if ([v54 shouldIncludeInCPLCounts])
            {
              if ([v54 isPhoto])
              {
                v79 = a4;
                if (!a4)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                v80 = [v54 isVideo];
                if (!a5)
                {
                  goto LABEL_91;
                }

                v79 = a5;
                if (!v80)
                {
                  goto LABEL_91;
                }
              }

              ++*v79;
            }

LABEL_91:
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v81 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v379 = v78;
                _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEBUG, "Adding asset %@ to initial batch", buf, 0xCu);
              }

              v22 = v286;
            }
          }

          else
          {
            if (*MEMORY[0x1E6994D48])
            {
              v77 = 0;
              goto LABEL_96;
            }

            v78 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v379 = v54;
              _os_log_impl(&dword_19BF1F000, v78, OS_LOG_TYPE_ERROR, "No valid masterGUID for asset %@. Skipping upload", buf, 0xCu);
            }
          }

          goto LABEL_96;
        }

        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_106;
        }

        v59 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v70 = [v54 _compactDebugDescription];
          *buf = 138543362;
          v379 = v70;
          _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "Skipping asset %{public}@ on an unpublished share", buf, 0xCu);
        }

LABEL_105:

LABEL_106:
        objc_autoreleasePoolPop(v55);
        v53 = v53 + 1;
      }

      while (v280 != v53);
      v89 = [v274 countByEnumeratingWithState:&v344 objects:v382 count:16];
      v280 = v89;
    }

    while (v89);
  }

  v268 = [MEMORY[0x1E695DF70] array];
  v270 = [MEMORY[0x1E695DFA8] set];
  v279 = [MEMORY[0x1E695DFA8] set];
  v339 = 0u;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v90 = v262;
  v91 = [v90 countByEnumeratingWithState:&v339 objects:v377 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v340;
    do
    {
      for (m = 0; m != v92; ++m)
      {
        if (*v340 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = *(*(&v339 + 1) + 8 * m);
        if ([v95 isPartOfBurst])
        {
          v96 = [v95 uuid];
          v97 = [v275 containsObject:v96];

          if (v97)
          {
            v98 = [v95 avalancheUUID];
            v99 = [v279 containsObject:v98];

            if ((v99 & 1) == 0)
            {
              v100 = [v95 avalancheUUID];
              [v279 addObject:v100];

              v101 = [v95 avalancheUUID];
              v102 = [v282 managedObjectContext];
              v103 = [PLAvalanche assetsWithAvalancheUUID:v101 sourceType:1 inManagedObjectContext:v102];

              v336[0] = MEMORY[0x1E69E9820];
              v336[1] = 3221225472;
              v336[2] = __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke_138;
              v336[3] = &unk_1E75781C0;
              v337 = v270;
              v338 = v275;
              [v103 enumerateObjectsUsingBlock:v336];
            }
          }
        }
      }

      v92 = [v90 countByEnumeratingWithState:&v339 objects:v377 count:16];
    }

    while (v92);
  }

  if ([v270 count])
  {
    v104 = [MEMORY[0x1E695DFA8] setWithArray:v90];
    v105 = [v270 allObjects];
    [v104 addObjectsFromArray:v105];

    v106 = MEMORY[0x1E695DEC8];
    v107 = [v104 allObjects];
    v108 = [v106 arrayWithArray:v107];

    v109 = v282;
    v110 = a5;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v111 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v379 = v108;
        _os_log_impl(&dword_19BF1F000, v111, OS_LOG_TYPE_DEBUG, "new update list: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v108 = v90;
    v109 = v282;
    v110 = a5;
  }

  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v281 = v108;
  v112 = [v281 countByEnumeratingWithState:&v332 objects:v376 count:16];
  if (v112)
  {
    v113 = v112;
    v285 = *v333;
    do
    {
      v114 = 0;
      do
      {
        if (*v333 != v285)
        {
          objc_enumerationMutation(v281);
        }

        v115 = *(*(&v332 + 1) + 8 * v114);
        v116 = objc_autoreleasePoolPush();
        v117 = [v115 existingCloudMasterNeedsRepush:0];
        v118 = v117;
        if (!v117 || ![v117 cloudLocalState]|| [v118 cloudLocalState]== 4 || [v115 cloudLocalState]== 4)
        {
          v119 = [v115 cplMasterChangeInLibrary:v109 shouldGenerateDerivatives:v286->_shouldGenerateDerivatives];
          v120 = [v119 scopedIdentifier];

          if (v120)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v119];
            v121 = [v115 master];

            if ([v121 placeholderState]!= 1)
            {
              v122 = [v121 sizeOfOriginal];
              v123 = [v121 scopedIdentifier];
              v124 = [v115 scopedIdentifier];
              [v272 addSizeForUnpushedOriginals:v122 forMasterScopedIdentifier:v123 forAssetScopedIdentifier:v124];

              v109 = v282;
              goto LABEL_144;
            }

            goto LABEL_145;
          }

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v123 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v379 = v115;
              _os_log_impl(&dword_19BF1F000, v123, OS_LOG_TYPE_ERROR, "Skip attempting to add master change with nil scopedIdentifier, asset %@", buf, 0xCu);
            }

            v121 = v118;
LABEL_144:

LABEL_145:
            v118 = v121;
          }

          v125 = [v118 scopedIdentifier];

          if (v125)
          {
            v126 = [v118 scopedIdentifier];
            v127 = [v115 cplAssetChangeWithMasterScopedIdentifier:v126 withChangeType:0 shouldGenerateDerivatives:v286->_shouldGenerateDerivatives orderKeyManager:v277 computeSyncUploadEnabled:v276 inLibrary:v109];
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v127];
            if (![v115 shouldIncludeInCPLCounts])
            {
              goto LABEL_157;
            }

            if ([v115 isPhoto])
            {
              v128 = a4;
              if (!a4)
              {
                goto LABEL_157;
              }

LABEL_156:
              ++*v128;
              goto LABEL_157;
            }

            v129 = [v115 isVideo];
            if (v110)
            {
              v128 = v110;
              if (v129)
              {
                goto LABEL_156;
              }
            }

LABEL_157:

LABEL_158:
          }

          else if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v126 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v379 = v115;
              _os_log_impl(&dword_19BF1F000, v126, OS_LOG_TYPE_ERROR, "No valid masterGUID for asset %@. Will retry in the next round", buf, 0xCu);
            }

            goto LABEL_158;
          }

          goto LABEL_160;
        }

        if ([v118 cloudLocalState]== 2)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v130 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v379 = v118;
              v380 = 2112;
              v381 = v115;
              _os_log_impl(&dword_19BF1F000, v130, OS_LOG_TYPE_ERROR, "CloudMaster %@ failed to be uploaded, skip uploading asset %@.", buf, 0x16u);
            }
          }

          [v268 addObject:v115];
          goto LABEL_160;
        }

        v131 = [v115 uuid];
        if ([v265 containsObject:v131])
        {
          v132 = 32;
        }

        else
        {
          v132 = 0;
        }

        if ([v275 containsObject:v131])
        {
          v132 |= 2uLL;
        }

        if ([v267 containsObject:v131])
        {
          v132 |= 0x40uLL;
        }

        if ([v263 containsObject:v115])
        {
          v133 = v132 | 0x10;
        }

        else
        {
          v133 = v132;
        }

        if ([v266 containsObject:v131])
        {
          v134 = [MEMORY[0x1E696AC08] defaultManager];
          if (![v115 hasAdjustments])
          {
            v139 = [v115 pathForOriginalFile];
            v140 = [v134 fileExistsAtPath:v139];

            if (v140)
            {
              v133 |= 8uLL;
            }

            goto LABEL_187;
          }

          if (!-[NSObject isPhoto](v115, "isPhoto") || (-[NSObject pathForFullsizeRenderImageFile](v115, "pathForFullsizeRenderImageFile"), v135 = objc_claimAutoreleasedReturnValue(), v136 = [v134 fileExistsAtPath:v135], v135, !v136))
          {
            if (![v115 isVideo])
            {
              goto LABEL_187;
            }

            v137 = [v115 pathForFullsizeRenderVideoFile];
            v138 = [v134 fileExistsAtPath:v137];

            if (!v138)
            {
              if (!-[NSObject isDefaultAdjustedSlomo](v115, "isDefaultAdjustedSlomo") || (-[NSObject pathForOriginalFile](v115, "pathForOriginalFile"), v147 = objc_claimAutoreleasedReturnValue(), v148 = [v134 fileExistsAtPath:v147], v147, !v148))
              {
                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v149 = __CPLAssetsdOSLogDomain();
                  v109 = v282;
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v379 = v115;
                    _os_log_impl(&dword_19BF1F000, v149, OS_LOG_TYPE_ERROR, "Video %@ has resource change without full size resource", buf, 0xCu);
                  }

                  goto LABEL_188;
                }

LABEL_187:
                v109 = v282;
LABEL_188:

                goto LABEL_189;
              }
            }
          }

          v133 |= 8uLL;
          goto LABEL_187;
        }

LABEL_189:
        if ([v115 cloudLocalState])
        {
          v141 = v133;
        }

        else
        {
          v141 = 0;
        }

        v142 = [v118 scopedIdentifier];
        v143 = [v115 cplAssetChangeWithMasterScopedIdentifier:v142 withChangeType:v141 shouldGenerateDerivatives:v286->_shouldGenerateDerivatives orderKeyManager:v277 computeSyncUploadEnabled:v276 inLibrary:v109];
        [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v143];
        v144 = [v115 scopedIdentifier];
        v145 = [v264 containsObject:v144];

        if (v145)
        {
          v146 = [v115 scopedIdentifier];
          [(PLCloudPhotoLibraryBatchManager *)v287 addComputeSyncRelevantAsset:v146];
        }

        v109 = v282;
        v110 = a5;
LABEL_160:

        objc_autoreleasePoolPop(v116);
        ++v114;
      }

      while (v113 != v114);
      v150 = [v281 countByEnumeratingWithState:&v332 objects:v376 count:16];
      v113 = v150;
    }

    while (v150);
  }

  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v151 = v245;
  v152 = [v151 countByEnumeratingWithState:&v328 objects:v375 count:16];
  if (!v152)
  {
    goto LABEL_215;
  }

  v153 = v152;
  v154 = *v329;
  do
  {
    for (n = 0; n != v153; ++n)
    {
      if (*v329 != v154)
      {
        objc_enumerationMutation(v151);
      }

      v156 = *(*(&v328 + 1) + 8 * n);
      v157 = [v156 assets];
      v158 = [v157 count];

      if (v158)
      {
        v159 = [v156 cplPropertyRecord];
        [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v159];
      }

      else
      {
        if (*MEMORY[0x1E6994D48])
        {
          continue;
        }

        v159 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          v160 = [v156 scopedIdentifier];
          v161 = [v160 identifier];
          *buf = 138543362;
          v379 = v161;
          _os_log_impl(&dword_19BF1F000, v159, OS_LOG_TYPE_ERROR, "Could not find any asset for master %{public}@. Ignoring update", buf, 0xCu);
        }
      }
    }

    v153 = [v151 countByEnumeratingWithState:&v328 objects:v375 count:16];
  }

  while (v153);
LABEL_215:

  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  v162 = v246;
  v163 = [v162 countByEnumeratingWithState:&v324 objects:v374 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v325;
    do
    {
      for (ii = 0; ii != v164; ++ii)
      {
        if (*v325 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v324 + 1) + 8 * ii) asset];
        v168 = [v167 master];

        if (v168)
        {
          v169 = [v168 cplPropertyRecord];
          [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v169];
        }
      }

      v164 = [v162 countByEnumeratingWithState:&v324 objects:v374 count:16];
    }

    while (v164);
  }

  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v170 = v268;
  v171 = [v170 countByEnumeratingWithState:&v320 objects:v373 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v321;
    do
    {
      for (jj = 0; jj != v172; ++jj)
      {
        if (*v321 != v173)
        {
          objc_enumerationMutation(v170);
        }

        v175 = *(*(&v320 + 1) + 8 * jj);
        if ([v175 cloudLocalState]!= 2)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v176 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v379 = v175;
              _os_log_impl(&dword_19BF1F000, v176, OS_LOG_TYPE_ERROR, "Unable to upload asset %@", buf, 0xCu);
            }
          }

          [v175 setCloudLocalState:2];
        }
      }

      v172 = [v170 countByEnumeratingWithState:&v320 objects:v373 count:16];
    }

    while (v172);
  }

  if ([v260 count])
  {
    v318 = 0u;
    v319 = 0u;
    v316 = 0u;
    v317 = 0u;
    v177 = v260;
    v178 = [v177 countByEnumeratingWithState:&v316 objects:v372 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v317;
      do
      {
        for (kk = 0; kk != v179; ++kk)
        {
          if (*v317 != v180)
          {
            objc_enumerationMutation(v177);
          }

          v182 = *(*(&v316 + 1) + 8 * kk);
          v183 = objc_autoreleasePoolPush();
          v184 = [v182 cplMemoryChange];
          if (v184)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v184];
          }

          objc_autoreleasePoolPop(v183);
        }

        v179 = [v177 countByEnumeratingWithState:&v316 objects:v372 count:16];
      }

      while (v179);
    }
  }

  if ([v259 count])
  {
    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v185 = v259;
    v186 = [v185 countByEnumeratingWithState:&v312 objects:v371 count:16];
    if (v186)
    {
      v187 = v186;
      v188 = *v313;
      do
      {
        for (mm = 0; mm != v187; ++mm)
        {
          if (*v313 != v188)
          {
            objc_enumerationMutation(v185);
          }

          v190 = *(*(&v312 + 1) + 8 * mm);
          v191 = objc_autoreleasePoolPush();
          v192 = [v190 cplSuggestionChange];
          if (v192)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v192];
          }

          objc_autoreleasePoolPop(v191);
        }

        v187 = [v185 countByEnumeratingWithState:&v312 objects:v371 count:16];
      }

      while (v187);
    }
  }

  if ([v258 count])
  {
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    v193 = v258;
    v194 = [v193 countByEnumeratingWithState:&v308 objects:v370 count:16];
    if (v194)
    {
      v195 = v194;
      v196 = *v309;
      do
      {
        for (nn = 0; nn != v195; ++nn)
        {
          if (*v309 != v196)
          {
            objc_enumerationMutation(v193);
          }

          v198 = *(*(&v308 + 1) + 8 * nn);
          v199 = objc_autoreleasePoolPush();
          v200 = [v198 cplSuggestionChange];
          if (v200)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v200];
          }

          objc_autoreleasePoolPop(v199);
        }

        v195 = [v193 countByEnumeratingWithState:&v308 objects:v370 count:16];
      }

      while (v195);
    }
  }

  if ([v257 count])
  {
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v201 = v257;
    v202 = [v201 countByEnumeratingWithState:&v304 objects:v369 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v305;
      do
      {
        for (i1 = 0; i1 != v203; ++i1)
        {
          if (*v305 != v204)
          {
            objc_enumerationMutation(v201);
          }

          v206 = *(*(&v304 + 1) + 8 * i1);
          v207 = objc_autoreleasePoolPush();
          v208 = [v206 cplScopeChange];
          if (v208)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v208];
          }

          objc_autoreleasePoolPop(v207);
        }

        v203 = [v201 countByEnumeratingWithState:&v304 objects:v369 count:16];
      }

      while (v203);
    }
  }

  if ([v256 count])
  {
    v302 = 0u;
    v303 = 0u;
    v300 = 0u;
    v301 = 0u;
    v209 = v256;
    v210 = [v209 countByEnumeratingWithState:&v300 objects:v368 count:16];
    if (v210)
    {
      v211 = v210;
      v212 = *v301;
      do
      {
        for (i2 = 0; i2 != v211; ++i2)
        {
          if (*v301 != v212)
          {
            objc_enumerationMutation(v209);
          }

          v214 = *(*(&v300 + 1) + 8 * i2);
          v215 = objc_autoreleasePoolPush();
          v216 = [v214 cplScopeChange];
          if (v216)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v216];
          }

          objc_autoreleasePoolPop(v215);
        }

        v211 = [v209 countByEnumeratingWithState:&v300 objects:v368 count:16];
      }

      while (v211);
    }
  }

  if ([v255 count])
  {
    v298 = 0u;
    v299 = 0u;
    v296 = 0u;
    v297 = 0u;
    v217 = v255;
    v218 = [v217 countByEnumeratingWithState:&v296 objects:v367 count:16];
    if (v218)
    {
      v219 = v218;
      v220 = *v297;
      do
      {
        for (i3 = 0; i3 != v219; ++i3)
        {
          if (*v297 != v220)
          {
            objc_enumerationMutation(v217);
          }

          v222 = *(*(&v296 + 1) + 8 * i3);
          v223 = objc_autoreleasePoolPush();
          v224 = [v222 cplSocialGroupChange];
          if (v224)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v224];
          }

          objc_autoreleasePoolPop(v223);
        }

        v219 = [v217 countByEnumeratingWithState:&v296 objects:v367 count:16];
      }

      while (v219);
    }
  }

  v225 = [v261 commentChanges];
  v226 = [v225 count];

  if (v226)
  {
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v227 = [v261 commentChanges];
    v228 = [v227 countByEnumeratingWithState:&v292 objects:v366 count:16];
    if (v228)
    {
      v229 = v228;
      v230 = *v293;
      do
      {
        for (i4 = 0; i4 != v229; ++i4)
        {
          if (*v293 != v230)
          {
            objc_enumerationMutation(v227);
          }

          v232 = *(*(&v292 + 1) + 8 * i4);
          v233 = objc_autoreleasePoolPush();
          v234 = [v232 cplFullRecord];
          if (v234)
          {
            [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:v234];
          }

          objc_autoreleasePoolPop(v233);
        }

        v229 = [v227 countByEnumeratingWithState:&v292 objects:v366 count:16];
      }

      while (v229);
    }
  }

  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v235 = v254;
  v236 = [v235 countByEnumeratingWithState:&v288 objects:v365 count:16];
  if (v236)
  {
    v237 = v236;
    isKindOfClass = 0;
    v239 = *v289;
    do
    {
      for (i5 = 0; i5 != v237; ++i5)
      {
        if (*v289 != v239)
        {
          objc_enumerationMutation(v235);
        }

        [(PLCloudPhotoLibraryBatchManager *)v287 addRecord:*(*(&v288 + 1) + 8 * i5)];
        if (isKindOfClass)
        {
          isKindOfClass = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }
      }

      v237 = [v235 countByEnumeratingWithState:&v288 objects:v365 count:16];
    }

    while (v237);
  }

  else
  {
    isKindOfClass = 0;
  }

  if ([v274 count] || (isKindOfClass & 1) != 0 || objc_msgSend(v247, "count"))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 0, 0);
  }

  if ([v170 count])
  {
    v242 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v242, @"com.apple.mobileslideshow.cpl.failedtopush", 0, 0, 0);
  }

  v243 = [(PLCloudPhotoLibraryBatchManager *)v287 drainBatches];

  return v243;
}

uint64_t __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:"-[PLCloudBatchUploader createBatchesForChanges:outInsertedPhotoCount:outInsertedVideoCount:withUploadTracker:inLibrary:]_block_invoke"];

  return [v1 managedObjectContext];
}

void __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 personUUID];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = [v10 personUUID];
    LOBYTE(v5) = [v5 containsObject:v6];

    if ((v5 & 1) == 0)
    {
      v7 = [v10 cplPersonChange];
      [*(a1 + 40) addRecord:v7];
      v8 = *(a1 + 32);
      v9 = [v10 personUUID];
      [v8 addObject:v9];
    }
  }
}

void __120__PLCloudBatchUploader_createBatchesForChanges_outInsertedPhotoCount_outInsertedVideoCount_withUploadTracker_inLibrary___block_invoke_138(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 supportsCloudUpload])
  {
    [*(a1 + 32) addObject:v5];
    v3 = *(a1 + 40);
    v4 = [v5 uuid];
    [v3 addObject:v4];
  }
}

- (id)_validateAssets:(id)a3 fromCloudUuidDeleteList:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = MEMORY[0x1E6994D48];
    v12 = *v27;
    *&v9 = 138543362;
    v23 = v9;
    v24 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 scopedIdentifier];
        if (v15 && [v25 containsObject:v15])
        {
          if ((*v11 & 1) == 0)
          {
            v16 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v31 = v15;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Skipping insert/update for asset %{public}@ since we see it in a delete", buf, 0xCu);
            }
          }
        }

        else
        {
          v17 = [v14 cloudLocalState];
          v18 = v17 == 4 || v17 == 2;
          if (v18 && (*v11 & 1) == 0)
          {
            v19 = v17;
            v20 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v14 uuid];
              *buf = 138543618;
              v31 = v21;
              v32 = 1024;
              v33 = v19;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Going to retry asset %{public}@ with localState %d", buf, 0x12u);

              v11 = MEMORY[0x1E6994D48];
              v12 = v24;
            }
          }

          [v6 addObject:v14];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)_processAlbumInserts:(id)a3 albumChanges:(id)a4 withBatchManager:(id)a5 inLibrary:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 libraryServicesManager];
  v14 = [v13 databaseContext];

  v15 = [PLRelationshipOrderKeyManager alloc];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __85__PLCloudBatchUploader__processAlbumInserts_albumChanges_withBatchManager_inLibrary___block_invoke;
  v35[3] = &unk_1E7574C88;
  v16 = v14;
  v36 = v16;
  v17 = [(PLRelationshipOrderKeyManager *)v15 initWithGenerateContextBlock:v35];
  v18 = MEMORY[0x1E695DFD8];
  v29 = v10;
  v30 = v9;
  v19 = [v9 arrayByAddingObjectsFromArray:v10];
  v20 = [v18 setWithArray:v19];

  v21 = [v20 allObjects];
  v22 = [PLGenericAlbum includeUnpushedParentsForAlbums:v21 limit:0x7FFFFFFFFFFFFFFFLL];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * v27) cplAlbumChangeInPhotoLibrary:v12 orderKeyManager:v17];
        [v11 addRecord:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v25);
  }
}

uint64_t __85__PLCloudBatchUploader__processAlbumInserts_albumChanges_withBatchManager_inLibrary___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:"-[PLCloudBatchUploader _processAlbumInserts:albumChanges:withBatchManager:inLibrary:]_block_invoke"];

  return [v1 managedObjectContext];
}

- (void)handleUploadBatchesFromLocalEvent:(id)a3 outInsertedPhotoCount:(unint64_t *)a4 outInsertedVideoCount:(unint64_t *)a5 shouldTriggerPrefetch:(BOOL *)a6 withUploadTracker:(id)a7 inLibrary:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __152__PLCloudBatchUploader_handleUploadBatchesFromLocalEvent_outInsertedPhotoCount_outInsertedVideoCount_shouldTriggerPrefetch_withUploadTracker_inLibrary___block_invoke;
  v20[3] = &unk_1E7564640;
  v20[4] = self;
  v21 = v14;
  v24 = a6;
  v25 = a4;
  v26 = a5;
  v22 = v16;
  v23 = v15;
  v17 = v15;
  v18 = v16;
  v19 = v14;
  [v18 performTransactionAndWait:v20];
}

void __152__PLCloudBatchUploader_handleUploadBatchesFromLocalEvent_outInsertedPhotoCount_outInsertedVideoCount_shouldTriggerPrefetch_withUploadTracker_inLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _fetchChangesFromLocalEvent:*(a1 + 40) shouldTriggerPrefetch:*(a1 + 64) inLibrary:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = [v2 insertedAssets];
  [v3 _incrementUploadAttemptsAndPushStateForAssets:v4];

  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v2 summaryCounts];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Upload changes: %@", &v10, 0xCu);
    }
  }

  if (![v2 isEmpty])
  {
    v8 = [*(a1 + 32) createBatchesForChanges:v2 outInsertedPhotoCount:*(a1 + 72) outInsertedVideoCount:*(a1 + 80) withUploadTracker:*(a1 + 56) inLibrary:*(a1 + 48)];
    if ((*v5 & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "batches = %@", &v10, 0xCu);
      }
    }

    [*(a1 + 32) addBatches:v8];
    goto LABEL_14;
  }

  if ((*v5 & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "ignoring this event for now, no change", &v10, 2u);
    }

LABEL_14:
  }
}

- (id)_fetchChangesFromLocalEvent:(id)a3 shouldTriggerPrefetch:(BOOL *)a4 inLibrary:(id)a5
{
  v138 = *MEMORY[0x1E69E9840];
  v109 = a3;
  v8 = a5;
  v110 = [v8 managedObjectContext];
  v9 = objc_alloc_init(PLCloudUploadChanges);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v137 = v109;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "localEvent = %@", buf, 0xCu);
    }
  }

  v11 = [v109 objectForKey:*MEMORY[0x1E695D320]];
  [(PLCloudBatchUploader *)self _sortData:v11 isInsert:1 forUploadChanges:v9 shouldTriggerPrefetch:a4 inManagedObjectContext:v110];

  v12 = [v109 objectForKey:*MEMORY[0x1E695D4C8]];
  [(PLCloudBatchUploader *)self _sortData:v12 isInsert:0 forUploadChanges:v9 shouldTriggerPrefetch:a4 inManagedObjectContext:v110];

  v13 = [v109 objectForKey:@"PLUpdatedRelationshipsByObjectIDKey"];
  [(PLCloudBatchUploader *)self _sortRelationshipData:v13 forUploadChanges:v9 inManagedObjectContext:v110];

  v111 = v9;
  [(PLCloudBatchUploader *)self _handleSharingChanges:v109 forUploadEvent:v9 inManagedObjectContext:v110];
  v101 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v102 = v8;
  v14 = [v8 mainScopeIdentifier];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = PLAllCloudDeletionKeys();
  v105 = [obj countByEnumeratingWithState:&v126 objects:v135 count:16];
  if (v105)
  {
    v15 = 0x1E6994000uLL;
    v104 = *v127;
    do
    {
      v16 = 0;
      do
      {
        if (*v127 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v107 = v16;
        v17 = *(*(&v126 + 1) + 8 * v16);
        v18 = [v109 objectForKey:v17];
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v112 = v18;
        v19 = [v18 countByEnumeratingWithState:&v122 objects:v134 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v123;
          do
          {
            v22 = 0;
            do
            {
              if (*v123 != v21)
              {
                objc_enumerationMutation(v112);
              }

              v23 = *(*(&v122 + 1) + 8 * v22);
              v24 = [objc_alloc(*(v15 + 3000)) initWithStringRepresentation:v23 defaultScopeIdentifier:v14];
              if (([(NSMutableSet *)self->_downloadedDeleteRecords containsObject:v24]& 1) == 0)
              {
                if ([v17 isEqualToString:@"cloudAssetDeleteGUIDs"])
                {
                  v25 = objc_opt_class();
                  v26 = self;
                  v27 = v24;
                  v28 = v14;
LABEL_18:
                  v29 = [(PLCloudBatchUploader *)v26 _checkScopeValidityForDeletingRecords:v27 includeMainScopeIdentifier:v28 withRecordChangeClass:v25 managedObjectContext:v110];
                  goto LABEL_28;
                }

                if ([v17 isEqualToString:@"cloudAlbumDeleteGUIDs"])
                {
                  v30 = MEMORY[0x1E6994A78];
                  goto LABEL_27;
                }

                if ([v17 isEqualToString:@"cloudMemoryDeleteGUIDs"])
                {
                  v30 = MEMORY[0x1E6994B18];
                  goto LABEL_27;
                }

                if ([v17 isEqualToString:@"cloudPersonDeleteGUIDs"])
                {
                  v30 = MEMORY[0x1E6994B38];
                  goto LABEL_27;
                }

                if ([v17 isEqualToString:@"cloudFaceCropDeleteGUIDs"])
                {
                  v30 = MEMORY[0x1E6994AC8];
                  goto LABEL_27;
                }

                if ([v17 isEqualToString:@"cloudOwnedCMMDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 2;
                  goto LABEL_45;
                }

                if ([v17 isEqualToString:@"cloudSubscribedCMMDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 3;
                  goto LABEL_45;
                }

                if ([v17 isEqualToString:@"cloudOwnedLibraryScopeDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 4;
                  goto LABEL_45;
                }

                if ([v17 isEqualToString:@"cloudSubscribedLibraryScopeDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 5;
                  goto LABEL_45;
                }

                if ([v17 isEqualToString:@"cloudOwnedCollectionShareDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 7;
                  goto LABEL_45;
                }

                if ([v17 isEqualToString:@"cloudSubscribedCollectionShareDeleteGUIDs"])
                {
                  v34 = MEMORY[0x1E6994BB0];
                  v35 = v23;
                  v36 = 8;
LABEL_45:
                  v29 = [v34 newDeleteScopeChangeWithScopeIdentifier:v35 type:v36];
LABEL_28:
                  v31 = v29;
                  if (!v29)
                  {
                    goto LABEL_31;
                  }

LABEL_29:
                  [(PLCloudUploadChanges *)v111 deletedRecords];
                  v33 = v32 = v15;
                  [v33 addObject:v31];

                  v15 = v32;
LABEL_30:

                  goto LABEL_31;
                }

                if ([v17 isEqualToString:@"cloudSuggestionDeleteGUIDs"] || objc_msgSend(v17, "isEqualToString:", @"cloudUserFeedbackDeleteGUIDs"))
                {
                  v30 = MEMORY[0x1E6994C00];
LABEL_27:
                  v29 = [v30 newDeleteChangeWithScopedIdentifier:v24];
                  goto LABEL_28;
                }

                if ([v17 isEqualToString:@"cloudSocialGroupDeleteGUIDs"])
                {
                  v30 = MEMORY[0x1E6994BD0];
                  goto LABEL_27;
                }

                if ([v17 isEqualToString:@"cloudReactDeleteGUIDs"] || objc_msgSend(v17, "isEqualToString:", @"cloudTextCommentDeleteGUIDs"))
                {
                  v25 = objc_opt_class();
                  v26 = self;
                  v27 = v24;
                  v28 = 0;
                  goto LABEL_18;
                }

                if ([v17 isEqualToString:@"cloudInternalResourceUUIDToResourceTypeMappings"])
                {
                  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-@-"];
                  v38 = v23;
                  v39 = v37;
                  v40 = [v38 componentsSeparatedByString:?];

                  if ([v40 count] == 2)
                  {
                    v41 = [v40 objectAtIndexedSubscript:0];
                    v42 = v40;
                    v43 = v41;
                    v99 = v42;
                    v44 = [v42 objectAtIndexedSubscript:1];
                    v97 = [PLManagedAsset assetWithUUID:v43 inLibrary:v102];
                    v45 = [v97 master];
                    v100 = v43;
                    v98 = v44;
                    if (v45)
                    {
                      v95 = v45;
                      v46 = objc_alloc_init(MEMORY[0x1E6994AB8]);
                      [v46 setResourceType:{objc_msgSend(v44, "integerValue")}];
                      [v46 setExpungedState:2];
                      v47 = [MEMORY[0x1E695DF00] date];
                      v96 = v46;
                      [v46 setExpungedDate:v47];

                      v31 = [v101 objectForKeyedSubscript:v100];
                      if (!v31)
                      {
                        v31 = [v95 cplPropertyRecord];
                        [v101 setObject:v31 forKeyedSubscript:v100];
                      }

                      v48 = [v31 expungeableResourceStates];
                      if (!v48)
                      {
                        v48 = MEMORY[0x1E695E0F0];
                      }

                      v49 = [v48 arrayByAddingObject:{v46, v48}];
                      [v31 setExpungeableResourceStates:v49];

                      v40 = v99;
                      v45 = v95;
                    }

                    else
                    {
                      v31 = 0;
                      v40 = v99;
                    }
                  }

                  else
                  {
                    v31 = 0;
                  }

                  if (v31)
                  {
                    goto LABEL_29;
                  }
                }

                else if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v31 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v137 = v17;
                    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Unsupported cloudDeleteKey %@", buf, 0xCu);
                  }

                  goto LABEL_30;
                }
              }

LABEL_31:

              ++v22;
            }

            while (v20 != v22);
            v50 = [v112 countByEnumeratingWithState:&v122 objects:v134 count:16];
            v20 = v50;
          }

          while (v50);
        }

        v16 = v107 + 1;
      }

      while ((v107 + 1) != v105);
      v105 = [obj countByEnumeratingWithState:&v126 objects:v135 count:16];
    }

    while (v105);
  }

  v113 = [MEMORY[0x1E695DFA8] set];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v51 = [(PLCloudUploadChanges *)v111 insertedAssets];
  v52 = [v51 countByEnumeratingWithState:&v118 objects:v133 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v119;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v119 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v118 + 1) + 8 * i);
        v57 = [v56 uuid];

        if (v57)
        {
          v58 = [v56 uuid];
          [v113 addObject:v58];
        }

        else
        {
          [(PLCloudBatchUploader *)self _promptForNilAssetUUID:v56 isInsert:1];
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v118 objects:v133 count:16];
    }

    while (v53);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v106 = [(PLCloudUploadChanges *)v111 updatedAssets];
  v59 = [v106 countByEnumeratingWithState:&v114 objects:v132 count:16];
  if (v59)
  {
    v60 = v59;
    v108 = *v115;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v115 != v108)
        {
          objc_enumerationMutation(v106);
        }

        v62 = *(*(&v114 + 1) + 8 * j);
        v63 = [v62 uuid];

        if (!v63)
        {
          [(PLCloudBatchUploader *)self _promptForNilAssetUUID:v62 isInsert:0];
          continue;
        }

        cameraAsset = self->_cameraAsset;
        v65 = [v62 uuid];
        if (([(NSMutableSet *)cameraAsset containsObject:v65]& 1) != 0)
        {

LABEL_93:
          v67 = [v62 uuid];
          v68 = [v113 containsObject:v67];

          if ((v68 & 1) == 0)
          {
            v69 = [(PLCloudUploadChanges *)v111 insertedAssets];
            [v69 addObject:v62];
          }

          v70 = self->_cameraAsset;
          v71 = [v62 uuid];
          [(NSMutableSet *)v70 removeObject:v71];

          goto LABEL_96;
        }

        v66 = [v62 cloudLocalState];

        if (!v66)
        {
          goto LABEL_93;
        }

LABEL_96:
        v72 = [v109 objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
        v73 = [v62 objectID];
        v74 = [v72 objectForKeyedSubscript:v73];
        v75 = [v74 unsignedLongValue];

        v131 = @"deferredProcessingNeeded";
        v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
        v77 = +[PLManagedAsset entityName];
        v78 = [PLPropertyIndexMapping indexValueForAttributeNames:v76 entity:v77];

        if ((v78 & v75) != 0)
        {
          v79 = [(PLCloudUploadChanges *)v111 adjustedAssetUuids];
          v80 = [v62 uuid];
          [v79 addObject:v80];
        }

        v81 = [v109 objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
        v82 = [v62 additionalAttributes];
        v83 = [v82 objectID];
        v84 = [v81 objectForKeyedSubscript:v83];
        v85 = [v84 unsignedLongValue];

        v130 = @"originalResourceChoice";
        v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
        v87 = +[PLAdditionalAssetAttributes entityName];
        v88 = [PLPropertyIndexMapping indexValueForAttributeNames:v86 entity:v87];

        if ((v88 & v85) != 0)
        {
          v89 = [(PLCloudUploadChanges *)v111 adjustedAssetUuids];
          v90 = [v62 uuid];
          [v89 addObject:v90];
        }
      }

      v60 = [v106 countByEnumeratingWithState:&v114 objects:v132 count:16];
    }

    while (v60);
  }

  v91 = [(PLCloudUploadChanges *)v111 updatedAssets];
  v92 = [(PLCloudUploadChanges *)v111 insertedAssets];
  [v91 removeObjectsInArray:v92];

  return v111;
}

- (id)_checkScopeValidityForDeletingRecords:(id)a3 includeMainScopeIdentifier:(id)a4 withRecordChangeClass:(Class)a5 managedObjectContext:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v10 && ([v9 scopeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v10), v12, v13) || (objc_msgSend(v9, "scopeIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), +[PLShare shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:](PLShare, "shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:", v14, 0, v11), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = [(objc_class *)a5 newDeleteChangeWithScopedIdentifier:v9];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v17 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromClass(a5);
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Ignoring attempt to push %@ delete %@ for nonexistent scope", &v20, 0x16u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (void)_promptForNilAssetUUID:(id)a3 isInsert:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  if (a4)
  {
    v5 = @"inserting";
  }

  else
  {
    v5 = @"updating";
  }

  v6 = a3;
  v7 = [v6 objectID];
  v8 = [v6 isDeleted];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v4 stringWithFormat:@"Found %@ asset with nil uuid %@ (isDeleted=%@) %@.\n\nSee rdar://problem/52539172", v5, v7, v9, v6];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: asset with nil uuid" radarDescription:v10];
}

- (void)_handleInvalidAsset:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    v4 = [v3 uuid];

    v5 = v7;
    if (v4)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ignoring asset with nil uuid: %@, Please file a Radar to Photos Backend iCloud with 'cplctl diagnose' logs and relate to 32604898", v7];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ignoring nil asset, Please file a Radar to Photos Backend iCloud with 'cplctl diagnose' logs and relate to 32604898"];
  }

  PLSimulateCrash();

  v5 = v7;
LABEL_6:
}

- (void)_addAsset:(id)a3 toAssetChanges:(id)a4 isInsert:(BOOL)a5 seenAssetUuid:(id)a6
{
  v7 = a5;
  v16 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v16 uuid];
  v13 = v12;
  if (!v16 || !v12)
  {
    [(PLCloudBatchUploader *)self _handleInvalidAsset:v16];
    goto LABEL_10;
  }

  if (([(NSMutableSet *)v11 containsObject:v12]& 1) != 0)
  {
    goto LABEL_10;
  }

  v14 = [v16 filename];

  if (v14)
  {
    [v10 addObject:v16];
    cameraAsset = v11;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    cameraAsset = self->_cameraAsset;
  }

  [(NSMutableSet *)cameraAsset addObject:v13];
LABEL_10:
}

- (id)_syncDescriptionForObject:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 syncDescription];
  }

  else
  {
    [v3 description];
  }
  v4 = ;

  return v4;
}

- (void)_promptToFileRadarWithTitle:(id)a3 description:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:&v13];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
    }
  }

  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Cloud Photo Library sync state" message:@"Please file a Radar against Photos" radarTitle:v5 radarDescription:v8];
}

- (BOOL)_validateAsset:(id)a3 onRelatedObject:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_21;
      }

      v13 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Found related object without an asset: %@", buf, 0xCu);
LABEL_19:

      goto LABEL_20;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  if ([v6 isDeleted])
  {
    v8 = [v6 objectID];
    v9 = [v6 isDeleted];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
    [(PLCloudBatchUploader *)self _promptToFileRadarWithTitle:@"TTR: Found deleted asset on related object" description:@"Found deleted asset %@ (isDeleted=%@) on related object %@.\n\nSee rdar://problem/41032234", v8, v11, v12];
LABEL_15:

    goto LABEL_20;
  }

  v14 = [v6 uuid];

  if (!v14)
  {
    v8 = [v6 objectID];
    v16 = [v6 isDeleted];
    v17 = @"NO";
    if (v16)
    {
      v17 = @"YES";
    }

    v11 = v17;
    v12 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
    [(PLCloudBatchUploader *)self _promptToFileRadarWithTitle:@"TTR: Found asset with no UUID on related object" description:@"Found asset with no UUID %@ (isDeleted=%@) on related object %@.\n\nSee rdar://problem/41032234", v8, v11, v12];
    goto LABEL_15;
  }

  if (([v6 supportsCloudUpload] & 1) == 0)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v13 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
      v18 = [v6 objectID];
      *buf = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Related Object %@ attempted to push unsyncable asset: %@", buf, 0x16u);

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v15 = 1;
LABEL_22:

  return v15;
}

- (BOOL)_validateAdditionalAssetAttributes:(id)a3 onRelatedObject:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (![v6 isDeleted])
    {
      v14 = 1;
      goto LABEL_12;
    }

    v8 = [v6 objectID];
    v9 = [v6 isDeleted];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
    [(PLCloudBatchUploader *)self _promptToFileRadarWithTitle:@"TTR: Found deleted asset attributes on related object" description:@"Found deleted asset attributes %@ (isDeleted=%@) on related object %@.\n\nSee rdar://problem/41032234", v8, v11, v12];

    goto LABEL_9;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PLCloudBatchUploader *)self _syncDescriptionForObject:v7];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Found related object without an asset attributes: %@", buf, 0xCu);
    }

LABEL_9:
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)_handleSharingChanges:(id)a3 forUploadEvent:(id)a4 inManagedObjectContext:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = a4;
  obj = [v32 updatedAssets];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 uuid];

        if (v12)
        {
          v13 = [v6 objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
          v14 = [v11 objectID];
          v15 = [v13 objectForKeyedSubscript:v14];
          v16 = [v15 unsignedLongValue];

          v17 = +[PLManagedAsset listOfSharingAttributesRelevantForUpload];
          v18 = +[PLManagedAsset entityName];
          v19 = [PLPropertyIndexMapping indexValueForAttributeNames:v17 entity:v18];

          if ((v19 & v16) != 0)
          {
            v20 = [v32 sharingPropertyChangedAssetUuids];
            v21 = [v11 uuid];
            [v20 addObject:v21];
          }

          v22 = [v6 objectForKeyedSubscript:@"PLUpdatedRelationshipsByObjectIDKey"];
          v23 = [v11 objectID];
          v24 = [v22 objectForKeyedSubscript:v23];
          v25 = [v24 unsignedLongValue];

          v26 = +[PLManagedAsset listOfSharingRelationshipsRelevantForUpload];
          v27 = +[PLManagedAsset entityName];
          v28 = [PLPropertyIndexMapping indexValueForRelationshipNames:v26 entity:v27];

          if ((v28 & v25) != 0)
          {
            v29 = [v32 sharingPropertyChangedAssetUuids];
            v30 = [v11 uuid];
            [v29 addObject:v30];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }
}

- (void)_sortData:(id)a3 isInsert:(BOOL)a4 forUploadChanges:(id)a5 shouldTriggerPrefetch:(BOOL *)a6 inManagedObjectContext:(id)a7
{
  v10 = a4;
  v120 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v96 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count")}];
  v14 = [v12 updatedAssets];
  v94 = v10;
  v87 = v14;
  if (v10)
  {
    v95 = [v12 insertedAssets];
    v91 = [v12 albumInserts];
    v86 = [v12 insertedResources];
    v93 = 0;
  }

  else
  {
    v95 = v14;
    v91 = [v12 albumChanges];
    v93 = [v12 updatedMasters];
    v86 = [v12 updatedResources];
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v110;
    *&v16 = 138543362;
    v83 = v16;
    v92 = v12;
    v98 = a6;
    do
    {
      v19 = 0;
      do
      {
        if (*v110 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v109 + 1) + 8 * v19);
        v108 = 0;
        v21 = [v13 existingObjectWithID:v20 error:{&v108, v83}];
        v22 = v108;
        if (!v21)
        {
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_36;
          }

          v23 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412546;
          v114 = v20;
          v115 = 2112;
          v116 = v22;
          v24 = v23;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = "Failed to fault object for ID %@, skipping %@";
          v27 = 22;
          goto LABEL_18;
        }

        if ([v21 isDeleted])
        {
          if (*MEMORY[0x1E6994D48])
          {
            goto LABEL_36;
          }

          v23 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v114 = v20;
          v24 = v23;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = "Skipping deleted object %@";
          goto LABEL_14;
        }

        if (a6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = 1;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_26;
            }

            v28 = [v21 featuredState]== 1;
          }

          *a6 = v28;
        }

LABEL_26:
        v29 = [v21 supportsCloudUpload];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v29)
        {
          if (isKindOfClass)
          {
            v31 = v21;
            [(PLCloudBatchUploader *)self _addAsset:v31 toAssetChanges:v95 isInsert:v94 seenAssetUuid:v96];
            v32 = [v12 propertyChangedAssetUuids];
            v33 = [v31 uuid];

            [v32 addObject:v33];
            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v93;
LABEL_40:
            [v38 addObject:v21];
            goto LABEL_36;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v21;
            v33 = [v32 asset];
            if ([(PLCloudBatchUploader *)self _validateAsset:v33 onRelatedObject:v32])
            {
              [(PLCloudBatchUploader *)self _addAsset:v33 toAssetChanges:v95 isInsert:v94 seenAssetUuid:v96];
              v43 = [v12 propertyChangedAssetUuids];
              goto LABEL_49;
            }

            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = v21;
            v47 = [v46 assetAttributes];
            if ([(PLCloudBatchUploader *)self _validateAdditionalAssetAttributes:v47 onRelatedObject:v46])
            {
              v48 = [v47 asset];
              if ([(PLCloudBatchUploader *)self _validateAsset:v48 onRelatedObject:v47])
              {
                [(PLCloudBatchUploader *)self _addAsset:v48 toAssetChanges:v95 isInsert:v94 seenAssetUuid:v96];
                logb = [v12 propertyChangedAssetUuids];
                v49 = [v48 uuid];
                [logb addObject:v49];

                v12 = v92;
              }
            }

            goto LABEL_58;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v91;
            goto LABEL_40;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v21;
            v50 = [v23 assetAttributes];
            v51 = v50;
            if (v50)
            {
              log = [v50 asset];
              if ([PLCloudBatchUploader _validateAsset:"_validateAsset:onRelatedObject:" onRelatedObject:?])
              {
                v84 = v23;
                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v52 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    v53 = [log uuid];
                    *buf = v83;
                    v114 = v53;
                    _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ adjusted", buf, 0xCu);
                  }
                }

                v54 = [v12 adjustedAssetUuids];
                v55 = [log uuid];
                [v54 addObject:v55];

                v56 = log;
                a6 = v98;
                v23 = v84;
LABEL_77:

LABEL_78:
LABEL_19:

                goto LABEL_36;
              }
            }

            else
            {
              if (*MEMORY[0x1E6994D48])
              {
                goto LABEL_78;
              }

              log = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v114 = v23;
                _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_ERROR, "Missing attributes for %@", buf, 0xCu);
              }
            }

            v56 = log;
            goto LABEL_77;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 memoryChanges];
            goto LABEL_85;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 suggestionChanges];
            goto LABEL_85;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 userFeedbackChanges];
            goto LABEL_85;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 personChanges];
            goto LABEL_85;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 faceCropChanges];
            goto LABEL_85;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v21;
            v33 = [v32 associatedAssetForFaceOrTorso:1 orTemporal:0];
            if ([(PLCloudBatchUploader *)self _validateAsset:v33 onRelatedObject:v32])
            {
              [(PLCloudBatchUploader *)self _addAsset:v33 toAssetChanges:v87 isInsert:0 seenAssetUuid:v96];
              v43 = [v12 faceChangedAssetUuids];
LABEL_49:
              v44 = v43;
              v45 = [v33 uuid];
              [v44 addObject:v45];

              v12 = v92;
            }

LABEL_29:

LABEL_30:
LABEL_35:
            a6 = v98;
            goto LABEL_36;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = v21;
            v59 = [v58 shareURL];

            loga = v58;
            if (v59)
            {
              v60 = [v58 momentShareAssets];
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v61 = [v60 countByEnumeratingWithState:&v104 objects:v118 count:16];
              if (v61)
              {
                v62 = v61;
                v63 = *v105;
                do
                {
                  for (i = 0; i != v62; ++i)
                  {
                    if (*v105 != v63)
                    {
                      objc_enumerationMutation(v60);
                    }

                    [(PLCloudBatchUploader *)self _addAsset:*(*(&v104 + 1) + 8 * i) toAssetChanges:v95 isInsert:1 seenAssetUuid:v96];
                  }

                  v62 = [v60 countByEnumeratingWithState:&v104 objects:v118 count:16];
                }

                while (v62);
              }

              v12 = v92;
              v58 = loga;
            }

            a6 = v98;
            if ([v58 trashedState]!= 1)
            {
              goto LABEL_128;
            }

            v65 = [v58 cloudDeletionType];
            if (v65 != 6)
            {
              if (v65 == 7)
              {
                v66 = 3;
                goto LABEL_123;
              }

LABEL_128:

              goto LABEL_36;
            }

            v66 = 2;
LABEL_123:
            v74 = MEMORY[0x1E6994BB0];
LABEL_124:
            v75 = [v58 scopeIdentifier];
            v76 = [v74 newDeleteScopeChangeWithScopeIdentifier:v75 type:v66];

            v58 = loga;
            a6 = v98;
            if (!v76)
            {
              goto LABEL_128;
            }

            v77 = [v12 deletedRecords];
            [v77 addObject:v76];

            goto LABEL_127;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 libraryScopeChanges];
LABEL_85:
            v32 = v57;
            [v57 addObject:v41];
LABEL_45:

            goto LABEL_30;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = v21;
            v67 = [v58 shareURL];

            loga = v58;
            if (v67)
            {
              v68 = [v58 collectionShareAssets];
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v69 = [v68 countByEnumeratingWithState:&v100 objects:v117 count:16];
              if (v69)
              {
                v70 = v69;
                v71 = *v101;
                do
                {
                  for (j = 0; j != v70; ++j)
                  {
                    if (*v101 != v71)
                    {
                      objc_enumerationMutation(v68);
                    }

                    [(PLCloudBatchUploader *)self _addAsset:*(*(&v100 + 1) + 8 * j) toAssetChanges:v95 isInsert:1 seenAssetUuid:v96];
                  }

                  v70 = [v68 countByEnumeratingWithState:&v100 objects:v117 count:16];
                }

                while (v70);
              }

              v12 = v92;
              v58 = loga;
            }

            if ([v58 trashedState]== 1)
            {
              v73 = [v58 cloudDeletionType];
              a6 = v98;
              if (v73 == 14)
              {
                v66 = 7;
              }

              else
              {
                if (v73 != 15)
                {
                  goto LABEL_128;
                }

                v66 = 8;
              }

              v74 = MEMORY[0x1E6994A90];
              goto LABEL_124;
            }

            v76 = [v12 collectionShareChanges];
            [v76 addObject:v58];
LABEL_127:
            a6 = v98;

            goto LABEL_128;
          }

          objc_opt_class();
          a6 = v98;
          if (objc_opt_isKindOfClass())
          {
            v23 = v21;
            if (![v23 version])
            {
              [v86 addObject:v23];
            }

            goto LABEL_19;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = v21;
            v85 = [v46 asset];
            v78 = [v12 computeSyncChangedAssets];
            v79 = [v85 scopedIdentifier];
            [v78 addObject:v79];

            v47 = v85;
            if ([(PLCloudBatchUploader *)self _validateAsset:v85 onRelatedObject:v46])
            {
              [(PLCloudBatchUploader *)self _addAsset:v85 toAssetChanges:v95 isInsert:v94 seenAssetUuid:v96];
              v80 = [v12 propertyChangedAssetUuids];
              v81 = [v85 uuid];
              [v80 addObject:v81];

              v47 = v85;
            }

LABEL_58:

            goto LABEL_35;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v21;
            v57 = [v12 commentChanges];
            goto LABEL_85;
          }
        }

        else
        {
          if (isKindOfClass)
          {
            v34 = v21;
            v35 = [objc_opt_class() predicateForUnpushedDeferredAssets];
            v36 = [v35 evaluateWithObject:v34];

            if (v36)
            {
              v37 = [v12 deferredAssets];
              [v37 addObject:v34];
            }

            goto LABEL_35;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v21;
            v39 = [v32 primaryLabel];
            v40 = [v39 code];

            if (v40 != 1000)
            {
              goto LABEL_30;
            }

            v41 = [PLGraphNodeContainer newNodeContainerWithNode:v32];
            if ([v41 supportsCloudUpload])
            {
              v42 = [v12 socialGroupChanges];
              [v42 addObject:v41];
            }

            goto LABEL_45;
          }

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v23 = __CPLAssetsdOSLogDomain();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_19;
            }

            *buf = 138412290;
            v114 = v21;
            v24 = v23;
            v25 = OS_LOG_TYPE_DEBUG;
            v26 = "Object is not supported for CPL, skipping %@";
LABEL_14:
            v27 = 12;
LABEL_18:
            _os_log_impl(&dword_19BF1F000, v24, v25, v26, buf, v27);
            goto LABEL_19;
          }
        }

LABEL_36:

        ++v19;
      }

      while (v19 != v17);
      v82 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
      v17 = v82;
    }

    while (v82);
  }
}

- (void)_sortRelationshipData:(id)a3 forUploadChanges:(id)a4 inManagedObjectContext:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = a4;
  v8 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 existingObjectWithID:v13 error:0];
        if ([v14 supportsCloudUpload])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if ([v15 isDeleted])
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v16 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v27 = v13;
                  v17 = v16;
                  v18 = "Skipping deleted asset %@";
                  goto LABEL_17;
                }

                goto LABEL_25;
              }

              goto LABEL_26;
            }

            if (!v15)
            {
              goto LABEL_26;
            }

            v19 = [v15 filename];

            if (!v19)
            {
              goto LABEL_26;
            }

            v20 = [v21 updatedRelationship];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_27;
            }

            v15 = v14;
            if ([v15 isDeleted])
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v16 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v27 = v13;
                  v17 = v16;
                  v18 = "Skipping deleted album %@";
LABEL_17:
                  _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
                }

LABEL_25:
              }

LABEL_26:

              goto LABEL_27;
            }

            if ([v15 kindValue] == 3999 || objc_msgSend(v15, "kindValue") == 3998)
            {
              goto LABEL_26;
            }

            v20 = [v21 albumChanges];
          }

          v16 = v20;
          [v20 addObject:v15];
          goto LABEL_25;
        }

LABEL_27:
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)recordDeletions:(id)a3
{
  downloadedDeleteRecords = self->_downloadedDeleteRecords;
  v5 = a3;
  [(NSMutableSet *)downloadedDeleteRecords removeAllObjects];
  [(NSMutableSet *)self->_downloadedDeleteRecords addObjectsFromArray:v5];
}

- (void)_pushBatches:(id)a3
{
  v4 = MEMORY[0x1E696AC90];
  v5 = a3;
  v6 = [v4 indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  [(NSMutableArray *)self->_uploadBatchArray insertObjects:v5 atIndexes:v6];
}

- (id)pop
{
  v3 = [(NSMutableArray *)self->_uploadBatchArray firstObject];
  [(NSMutableArray *)self->_uploadBatchArray removeObjectAtIndex:0];

  return v3;
}

- (void)clearUploadArray
{
  [(NSMutableArray *)self->_uploadBatchArray removeAllObjects];
  momentSharesNeedingForceSync = self->_momentSharesNeedingForceSync;

  [(NSMutableSet *)momentSharesNeedingForceSync removeAllObjects];
}

- (PLCloudBatchUploader)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PLCloudBatchUploader;
  v6 = [(PLCloudBatchUploader *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryServicesManager, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    uploadBatchArray = v7->_uploadBatchArray;
    v7->_uploadBatchArray = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    downloadedDeleteRecords = v7->_downloadedDeleteRecords;
    v7->_downloadedDeleteRecords = v10;

    v12 = [MEMORY[0x1E695DFA8] set];
    cameraAsset = v7->_cameraAsset;
    v7->_cameraAsset = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    momentSharesNeedingForceSync = v7->_momentSharesNeedingForceSync;
    v7->_momentSharesNeedingForceSync = v14;

    *&v7->_initialUpload = 256;
  }

  return v7;
}

@end