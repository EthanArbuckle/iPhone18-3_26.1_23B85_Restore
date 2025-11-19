@interface PLLibraryScope
+ (BOOL)_preflightChecksForFiringParticipantAssetTrashNotificationWithPhotoLibrary:(id)a3;
+ (BOOL)_queryIsShareEverythingInternalQuery:(id)a3;
+ (BOOL)libraryScopeScopeIdentifierWasCreatedInLocalOnlyMode:(id)a3;
+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
+ (id)_computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope:(id)a3 outPhotoCount:(unint64_t *)a4 outVideoCount:(unint64_t *)a5 outItemCount:(unint64_t *)a6;
+ (id)_libraryForEnumerationFromBundle:(id)a3 withName:(const char *)a4;
+ (id)_nearestDateSetToHour:(int64_t)a3 minute:(int64_t)a4;
+ (id)_shareEverythingInternalQuery;
+ (id)activeLibraryScopeInManagedObjectContext:(id)a3;
+ (id)compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:(id)a3;
+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 unitTestMode:(BOOL)a6 inPhotoLibrary:(id)a7;
+ (id)fireParticipantAssetTrashNotificationIfNeededWithPhotoLibrary:(id)a3 forceNotification:(BOOL)a4;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4;
+ (id)resetLibraryScopeAssetStatesWithManagedObjectContext:(id)a3;
+ (id)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithManagedObjectContext:(id)a3;
+ (id)scopeIdentifierPrefixInLibrary:(id)a3;
+ (signed)activeSyncingStateToUse;
+ (unint64_t)_immediateNotificationAssetThresholdToUseWithPhotoLibrary:(id)a3;
+ (void)_cleanupLocalPreviewLibraryScopesInManagedObjectContext:(id)a3;
+ (void)informRapportToAddShareParticipantUUIDs:(id)a3 photoLibrary:(id)a4;
+ (void)informRapportToRemoveShareParticipantUUIDs:(id)a3 photoLibraryBundle:(id)a4;
+ (void)updateLibraryScopeActiveDefaultsWithManagedObjectContext:(id)a3;
- (BOOL)_libraryScopeWasCreatedInLocalOnlyMode;
- (BOOL)confirmAllRemainingOnboardingPreviewAssetsWithProgress:(id)a3 databaseContext:(id)a4 withError:(id *)a5;
- (BOOL)incrementallyDeleteAndSaveWithError:(id *)a3;
- (BOOL)isSyncableChange;
- (BOOL)libraryScopeIsActive;
- (BOOL)removePeopleRulesForPersonUUID:(id)a3;
- (BOOL)shouldEnableRulesChangeTracker;
- (BOOL)supportsCloudUpload;
- (BOOL)updatePeopleRulesForAllTombstonedPersons;
- (BOOL)updatePeopleRulesForTombstonePersonUUID:(id)a3 replaceWithPersonUUID:(id)a4;
- (id)activateScopeWithCompletionHandler:(id)a3;
- (id)cloudSyncableRulesData;
- (id)cplScopeChange;
- (id)markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs:(id)a3 completionHandler:(id)a4;
- (id)scopedIdentifier;
- (void)_confirmAllRemainingOnboardingPreviewAssetsWithProgress:(id)a3 photoLibrary:(id)a4;
- (void)_insertOwnedParticipantInLibrary:(id)a3 unitTestMode:(BOOL)a4;
- (void)_verifyCurrentUserParticipantExists;
- (void)acceptWithCompletionHandler:(id)a3;
- (void)deactivateScopeWithCompletionHandler:(id)a3;
- (void)didSave;
- (void)prepareForDeletion;
- (void)publishWithCompletionHandler:(id)a3;
- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(unsigned __int16)a6 completionHandler:(id)a7;
- (void)setScopeSyncingState:(signed __int16)a3;
- (void)startExitWithRetentionPolicy:(int64_t)a3 exitSource:(unsigned __int16)a4 completionHandler:(id)a5;
- (void)startTrackingParticipantAssetTrashStateIfNeeded;
- (void)stopTrackingParticipantAssetTrashedStateIfNeeded;
- (void)updateRulesDataWithCloudSyncableRulesData:(id)a3;
- (void)userViewedAssetTrashNotificationWithManagedObjectContext:(id)a3;
- (void)willSave;
@end

@implementation PLLibraryScope

+ (void)informRapportToRemoveShareParticipantUUIDs:(id)a3 photoLibraryBundle:(id)a4
{
  v5 = a3;
  v6 = +[PLDatabaseContext newShortLivedLibraryWithName:bundle:](PLDatabaseContext, "newShortLivedLibraryWithName:bundle:", "+[PLLibraryScope informRapportToRemoveShareParticipantUUIDs:photoLibraryBundle:]", a4);
  v7 = objc_alloc_init(MEMORY[0x1E69C6BA8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PLLibraryScope_informRapportToRemoveShareParticipantUUIDs_photoLibraryBundle___block_invoke;
  v11[3] = &unk_1E75761B8;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [v9 performBlock:v11];
}

void __80__PLLibraryScope_informRapportToRemoveShareParticipantUUIDs_photoLibraryBundle___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [PLShareParticipant participantsWithUUIDs:a1[4] inPhotoLibrary:a1[5]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412290;
    v14 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [v8 description];
        v10 = [v8 emailAddress];
        if (v10 || ([v8 phoneNumber], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          v12 = a1[6];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __80__PLLibraryScope_informRapportToRemoveShareParticipantUUIDs_photoLibraryBundle___block_invoke_2;
          v15[3] = &unk_1E7575FA8;
          v16 = v9;
          [v12 removeAppleID:v11 completion:v15];
        }

        else
        {
          v11 = PLBackendGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v22 = v9;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to remove share participant in unexpected state with nil phone/email %@ via [RPPeopleDiscovery addAppleID:completion:]", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v13 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
      v5 = v13;
    }

    while (v13);
  }
}

void __80__PLLibraryScope_informRapportToRemoveShareParticipantUUIDs_photoLibraryBundle___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v7 = "Failed to remove share participant %@ via [RPPeopleDiscovery removeAppleID:completion:]: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v7 = "Successfully removed share participant %@ via [RPPeopleDiscovery removeAppleID:completion:]";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

+ (void)informRapportToAddShareParticipantUUIDs:(id)a3 photoLibrary:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69C6BA8]);
  v20 = v6;
  v21 = v5;
  v8 = [PLShareParticipant participantsWithUUIDs:v5 inPhotoLibrary:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = [v13 description];
        v15 = [v13 emailAddress];
        if (v15 || ([v13 phoneNumber], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          v17 = [v13 description];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __71__PLLibraryScope_informRapportToAddShareParticipantUUIDs_photoLibrary___block_invoke;
          v22[3] = &unk_1E7575FA8;
          v23 = v17;
          v18 = v17;
          [v7 addAppleID:v16 completion:v22];
        }

        else
        {
          v16 = PLBackendGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v14;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to add share participant in unexpected state with nil phone/email %@ via [RPPeopleDiscovery addAppleID:completion:]", buf, 0xCu);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v10 = v19;
    }

    while (v19);
  }
}

void __71__PLLibraryScope_informRapportToAddShareParticipantUUIDs_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v7 = "Failed to add share participant %@ via [RPPeopleDiscovery addAppleID:completion:]: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v7 = "Successfully added share participant %@ via [RPPeopleDiscovery addAppleID:completion:]";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

+ (BOOL)_queryIsShareEverythingInternalQuery:(id)a3
{
  v3 = a3;
  if ([v3 hasFirst] & 1) != 0 || (objc_msgSend(v3, "hasSecond"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 singleQueries];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v3 conjunction] == 0;
    }
  }

  return v4;
}

+ (id)_shareEverythingInternalQuery
{
  v2 = objc_alloc_init(MEMORY[0x1E69BF2B8]);
  [v2 setConjunction:0];

  return v2;
}

+ (id)resetLibraryScopeAssetStatesWithManagedObjectContext:(id)a3
{
  v5 = a3;
  v6 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Resetting libraryScopeShareState for assets...", buf, 2u);
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7937;
  v25 = __Block_byref_object_dispose__7938;
  v26 = 0;
  v7 = [v5 pl_libraryBundle];
  v8 = [v7 libraryServicesManager];
  v9 = [v8 databaseContext];
  v10 = [v9 newShortLivedCplLibraryWithNameSuffix:"+[PLLibraryScope resetLibraryScopeAssetStatesWithManagedObjectContext:]"];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke;
  v15[3] = &unk_1E7566520;
  v11 = v5;
  v16 = v11;
  v18 = buf;
  v19 = a1;
  v20 = a2;
  v12 = v10;
  v17 = v12;
  [v12 performTransactionAndWait:v15];
  v13 = *(v22 + 5);

  _Block_object_dispose(buf, 8);

  return v13;
}

void __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"PLTransactionScopeMomentGeneration"];
  v3 = [*(a1 + 32) pathManager];
  v4 = +[PLClientServerTransaction beginClientTransactionWithChangeScopes:pathManager:identifier:](PLClientServerTransaction, "beginClientTransactionWithChangeScopes:pathManager:identifier:", v2, v3, "+[PLLibraryScope resetLibraryScopeAssetStatesWithManagedObjectContext:]_block_invoke");

  v5 = [v4 transactionToken];
  v6 = [*(a1 + 32) pathManager];
  v33 = +[PLClientServerTransaction beginServerTransactionWithToken:changeScopes:pathManager:identifier:](PLClientServerTransaction, "beginServerTransactionWithToken:changeScopes:pathManager:identifier:", v5, v2, v6, "+[PLLibraryScope resetLibraryScopeAssetStatesWithManagedObjectContext:]_block_invoke");

  [v4 completeTransaction];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_alloc(MEMORY[0x1E695D5E0]);
    v8 = +[PLManagedAsset entityName];
    v9 = [v7 initWithEntityName:v8];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"libraryScopeShareState", 0];
    [v9 setPredicate:v10];
    [v9 setFetchBatchSize:100];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x2020000000;
    v47 = 0;
    v11 = objc_opt_class();
    v12 = [*(a1 + 32) photoLibrary];
    v13 = [v12 libraryBundle];
    v14 = [v11 _libraryForEnumerationFromBundle:v13 withName:"+[PLLibraryScope resetLibraryScopeAssetStatesWithManagedObjectContext:]_block_invoke"];

    v15 = [v14 managedObjectContext];
    v16 = [PLEnumerateAndSaveController alloc];
    v17 = NSStringFromSelector(*(a1 + 64));
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke_2;
    v41[3] = &unk_1E7575B30;
    v18 = v15;
    v42 = v18;
    v19 = [(PLEnumerateAndSaveController *)v16 initWithName:v17 fetchRequest:v9 context:v18 options:4 generateContextBlock:v41 didFetchObjectIDsBlock:0 processResultsBlock:&__block_literal_global_7946];

    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v20 = +[PLConcurrencyLimiter sharedLimiter];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke_4;
    v35[3] = &unk_1E7578870;
    v37 = v39;
    v21 = v19;
    v36 = v21;
    p_buf = &buf;
    [v20 sync:v35 identifyingBlock:0 library:v14];

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&buf, 8);

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v22 = objc_alloc(MEMORY[0x1E695D560]);
      v23 = +[PLPhotosHighlight entity];
      v24 = [v22 initWithEntity:v23];

      [v24 setResultType:2];
      v43[0] = @"photoAssetsSuggestedByPhotosCount";
      v43[1] = @"videoAssetsSuggestedByPhotosCount";
      v44[0] = &unk_1F0FBAE28;
      v44[1] = &unk_1F0FBAE28;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      [v24 setPropertiesToUpdate:v25];

      v26 = [*(a1 + 40) managedObjectContext];
      v27 = *(*(a1 + 48) + 8);
      obj = *(v27 + 40);
      v28 = [v26 executeRequest:v24 error:&obj];
      objc_storeStrong((v27 + 40), obj);

      v29 = PLBackendSharingGetLog();
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v28 result];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Reset [photo/video]assetsSuggestedByPhotosCount for %@ highlights", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = *(*(*(a1 + 48) + 8) + 40);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v32;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to reset [photo/video]assetsSuggestedByPhotosCount for highlights: %@", &buf, 0xCu);
      }
    }
  }

  [v33 completeTransactionScope:@"PLTransactionScopeMomentGeneration"];
}

void __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke_4(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v12 = 0;
  v3 = [v2 processObjectsWithError:&v12];
  v4 = v12;
  *(*(a1[5] + 8) + 24) = v3;
  v5 = *(*(a1[5] + 8) + 24);
  v6 = PLBackendSharingGetLog();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1[6] + 8) + 24);
      *buf = 134217984;
      v14 = v8;
      v9 = "ResetLibraryScopeAssetStates: Successfully reset %lu assets";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v10, v11, v9, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v4;
    v9 = "ResetLibraryScopeAssetStates: Failed to reset assets %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void __71__PLLibraryScope_resetLibraryScopeAssetStatesWithManagedObjectContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setLibraryScopeShareState:0];
        [v8 removeLibraryScopeAndContributors];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithManagedObjectContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Removing all local only LibraryScopes", buf, 2u);
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v7 = [a1 sharesWithPredicate:v6 fetchLimit:0 inManagedObjectContext:v4];

  if ([v7 count])
  {
    v13 = 0;
    v8 = [PLShare incrementallyDeleteAndSaveShares:v7 logMessagePrefix:@"local only" error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [a1 resetLibraryScopeAssetStatesWithManagedObjectContext:v4];
    }

    else
    {
      v11 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Failed to delete local only scopes: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)_cleanupLocalPreviewLibraryScopesInManagedObjectContext:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = a3;
  v5 = [objc_opt_class() predicateForPreviewLibraryScope];
  v12[0] = v5;
  v6 = MEMORY[0x1E696AB28];
  v7 = [objc_opt_class() predicateForActiveLibraryScope];
  v8 = [v6 notPredicateWithSubpredicate:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v3 andPredicateWithSubpredicates:v9];

  v11 = [objc_opt_class() sharesWithPredicate:v10 fetchLimit:0 inManagedObjectContext:v4];

  if ([v11 count])
  {
    [PLShare incrementallyDeleteAndSaveShares:v11 logMessagePrefix:@"preview" error:0];
  }
}

+ (id)compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:(id)a3
{
  v14[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69BF328];
  v4 = a3;
  v5 = [v3 predicateForIncludeMask:objc_msgSend(v3 useIndex:{"maskForAssetsEligibleForCPLTransportWithoutSharedScopesAndPlaceholders"), 0}];
  v6 = MEMORY[0x1E696AB28];
  v14[0] = v5;
  v7 = +[PLManagedAsset predicateToExcludeTrashedAssets];
  v14[1] = v7;
  v8 = +[PLManagedAsset predicateToExcludeHiddenAssets];
  v14[2] = v8;
  v14[3] = v4;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 10];
  v14[4] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 103];
  v14[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:6];
  v12 = [v6 andPredicateWithSubpredicates:v11];

  return v12;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!_os_feature_enabled_impl())
  {
    v8 = [v6 scopeIdentifier];
    v10 = [v7 managedObjectContext];
    v11 = [a1 shareWithScopeIdentifier:v8 includeTrashed:1 inManagedObjectContext:v10];

    if ([v11 _libraryScopeWasCreatedInLocalOnlyMode])
    {
      v12 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 debugDescription];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "+[PLLibraryScope insertOrUpdateShareWithCPLScopeChange:inPhotoLibrary:]";
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring %@ in %s since it was created in local only mode", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      if (![a1 validateCPLScopeChange:v6])
      {
        v9 = 0;
LABEL_82:

        goto LABEL_83;
      }

      if (!v11)
      {
        v14 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Creating library scope share with scope identifier %@", buf, 0xCu);
        }

        v11 = [a1 insertInPhotoLibrary:v7];
        [v11 setStatus:2];
        [v11 setScopeIdentifier:v8];
      }

      v15 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v11 uuid];
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Updating library scope %@ with CPLlibraryScopeScopeChange %@", buf, 0x16u);
      }

      v17 = [v6 scopeType];
      v18 = v17;
      v19 = 0;
      if (v17 <= 9)
      {
        if (((1 << v17) & 0x38F) != 0)
        {
          v20 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v6;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Unexpected scopeType for library scope from scopeChange %@", buf, 0xCu);
          }

          v19 = 0;
        }

        else if (v17 == 4 || v17 == 5)
        {
          v19 = 2;
        }
      }

      [v11 setScopeType:v18];
      [v11 setLocalPublishState:v19];
      v21 = [v6 isActivated];
      v22 = [v11 scopeSyncingState];
      if (v21)
      {
        if (v22 != 1)
        {
          [v11 setScopeSyncingState:1];
          [v11 untrash];
          if (PLShouldLogRegisteredEvent())
          {
            v79 = @"PhotoSharingEnabled";
            v80[0] = MEMORY[0x1E695E118];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
            PLLogRegisteredEvent();
          }
        }

        [v11 setPreviewState:0];
        [v11 startTrackingParticipantAssetTrashStateIfNeeded];
      }

      else
      {
        if (v22)
        {
          [v11 setScopeSyncingState:0];
          if (PLShouldLogRegisteredEvent())
          {
            v77 = @"PhotoSharingEnabled";
            v78 = MEMORY[0x1E695E110];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            PLLogRegisteredEvent();
          }
        }

        [v11 stopTrackingParticipantAssetTrashedStateIfNeeded];
      }

      v12 = [v6 assetCountPerType];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v76 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __71__PLLibraryScope_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke;
      v62[3] = &unk_1E7572BD8;
      v62[4] = buf;
      v62[5] = &v67;
      v62[6] = &v63;
      [v12 enumerateKeysAndObjectsUsingBlock:v62];
      [v11 setCloudPhotoCount:*(*&buf[8] + 24)];
      [v11 setCloudVideoCount:*(v68 + 6)];
      [v11 setCloudItemCount:*(v64 + 6)];
      v23 = [v6 title];
      [v11 setTitle:v23];

      v24 = [v6 share];
      if (v24)
      {
        [v11 updateShareWithCPLShare:v24 inPhotoLibrary:v7];
        v25 = [v24 creationDate];
        [v11 setCreationDate:v25];
      }

      else
      {
        v25 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v71 = 138412290;
          *v72 = v6;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "CPLShare missing on scopeChange %@", v71, 0xCu);
        }
      }

      v26 = v6;
      if ([MEMORY[0x1E6994AF0] serverSupportsLibraryShareSettingsRecordSyncing])
      {
        v27 = [v26 userDefinedRules];
        v28 = v27 == 0;

        if (!v28)
        {
          v29 = [v26 userDefinedRules];
          [v11 updateRulesDataWithCloudSyncableRulesData:v29];
        }
      }

      if ([MEMORY[0x1E6994AF0] serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
      {
        v30 = [v26 userViewedParticipantTrashNotificationDate];
        v31 = v30 == 0;

        if (!v31)
        {
          v32 = [v11 lastParticipantAssetTrashNotificationViewedDate];
          v33 = [v26 userViewedParticipantTrashNotificationDate];
          v34 = [v32 isEqualToDate:v33];

          if ((v34 & 1) == 0)
          {
            v35 = [v26 userViewedParticipantTrashNotificationDate];
            [v11 setLastParticipantAssetTrashNotificationViewedDate:v35];

            v36 = [v26 userViewedParticipantTrashNotificationDate];
            [v11 setLastParticipantAssetTrashNotificationDate:v36];

            v37 = [v11 lastParticipantAssetTrashNotificationViewedDate];
            v38 = [v11 lastParticipantAssetTrashNotificationDate];
            v39 = [v37 compare:v38] == -1;

            if (!v39)
            {
              v40 = +[PLNotificationManager sharedManager];
              [v40 removeNotificationForSharedLibraryParticipantAssetTrash];
            }
          }
        }
      }

      if ([v26 isActivated])
      {
        v41 = [v26 exitState];
        if (v41 == 2)
        {
          v42 = 2;
        }

        else
        {
          v42 = v41 == 1;
        }

        [v11 setExitState:v42];
        v43 = [v26 exitSource];
        v44 = 0;
        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = 3;
          }

          else if (v43 == 1000)
          {
            v44 = 1000;
          }
        }

        else if (v43 == 1)
        {
          v44 = 1;
        }

        else if (v43 == 2)
        {
          v44 = 2;
        }

        [v11 setExitSource:v44];
      }

      if ([v26 areSomeUsersExiting])
      {
        v45 = [PLShareParticipant participantsWithScope:v11 inPhotoLibrary:v7];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __71__PLLibraryScope_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke_229;
        v60[3] = &unk_1E7566280;
        v61 = v26;
        [v45 enumerateObjectsUsingBlock:v60];
      }

      if ([v11 scopeType] == 5 && objc_msgSend(v11, "exitState") == 2)
      {
        v46 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v71 = 138412290;
          *v72 = v26;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_INFO, "Exiting accepted scope with scope change: %@", v71, 0xCu);
        }

        v47 = [v26 exitType];
        v48 = v47;
        v49 = v47 > 3;
        if (v47 <= 3)
        {
          v50 = v47;
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        if ([v11 exitType] != v51 && objc_msgSend(v11, "exitSource") != 2)
        {
          v58 = [v26 exitRetentionPolicy];
          if (((v49 | (3u >> (v48 & 0xF))) & 1) == 0)
          {
            v57 = [v11 owner];
            v59 = [v57 shortName];
            if (v59)
            {
              v52 = PLBackendSharingGetLog();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                *v71 = 67109634;
                *v72 = v51;
                *&v72[4] = 2048;
                *&v72[6] = v58;
                v73 = 2112;
                v74 = v59;
                _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_INFO, "Posting notification for non-self-initiated exit process with exit type: %d, retention policy: %ld, owner: %@", v71, 0x1Cu);
              }

              v53 = +[PLNotificationManager sharedManager];
              v54 = [MEMORY[0x1E695DF00] date];
              [v53 postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:v51 retentionPolicy:v58 ownerName:v59 notificationDeliveryDate:v54];
            }

            else
            {
              v53 = PLBackendSharingGetLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v55 = [v57 uuid];
                *v71 = 138543362;
                *v72 = v55;
                _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Owner participant does not have a short name for exit notification: %{public}@", v71, 0xCu);
              }
            }
          }
        }

        [v11 setExitType:v51];
      }

      v11 = v11;

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(buf, 8);
      v9 = v11;
    }

    goto LABEL_82;
  }

  v8 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "+[PLLibraryScope insertOrUpdateShareWithCPLScopeChange:inPhotoLibrary:]";
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring %s since we are in GoldilocksLocalMode", buf, 0xCu);
  }

  v9 = 0;
LABEL_83:

  return v9;
}

void __71__PLLibraryScope_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  if ([v5 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v6 = [v9 integerValue];
    v7 = a1[4];
  }

  else
  {
    v8 = [v5 conformsToType:*MEMORY[0x1E6982EE8]];
    v6 = [v9 integerValue];
    if (v8)
    {
      v7 = a1[5];
    }

    else
    {
      v7 = a1[6];
    }
  }

  *(*(v7 + 8) + 24) += v6;
}

void __71__PLLibraryScope_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke_229(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 userIdentifier];
  LODWORD(v4) = [v4 isUserWithIdentifierExiting:v5];

  if (v4)
  {
    if ([v7 isCurrentUser])
    {
      v6 = [*(a1 + 32) exitState];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  [v7 setExitState:v6];
}

+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (_os_feature_enabled_impl())
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E6994990];
    v31 = *MEMORY[0x1E696A578];
    v32[0] = @"Unable to fetch shares from URL while in GoldilocksLocalMode";
    v11 = MEMORY[0x1E695DF20];
    v12 = v32;
    v13 = &v31;
LABEL_7:
    v16 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v17 = v9;
    v18 = v10;
    v19 = 33;
    goto LABEL_8;
  }

  if (([v8 isCloudPhotoLibraryEnabled] & 1) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E6994990];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"iCloud Photo Library is not enabled";
    v11 = MEMORY[0x1E695DF20];
    v12 = &v30;
    v13 = &v29;
    goto LABEL_7;
  }

  if ([v7 scopeType] == 4)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Not allowed to url fetch owned LibraryScopes";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v17 = v14;
    v18 = v15;
    v19 = 81001;
  }

  else
  {
    if ([PLShareParticipant isCurrentUserInScopeChange:v7])
    {
      v21 = 1;
      goto LABEL_11;
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Unable to fetch shares from URL while not a participant.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v19 = 81003;
    v17 = v23;
    v18 = v24;
  }

LABEL_8:
  v20 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];
  if (a5)
  {
    v20 = v20;
    *a5 = v20;
  }

  v21 = 0;
LABEL_11:

  return v21;
}

+ (id)_nearestDateSetToHour:(int64_t)a3 minute:(int64_t)a4
{
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v8 = [v7 components:-1 fromDate:v6];
  [v8 setHour:a3];
  [v8 setMinute:a4];
  [v8 setSecond:0];
  v9 = [v7 dateFromComponents:v8];
  if ([v6 compare:v9] == -1)
  {
    v11 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v10 setDay:1];
    v11 = [v7 dateByAddingComponents:v10 toDate:v9 options:0];
  }

  return v11;
}

+ (id)fireParticipantAssetTrashNotificationIfNeededWithPhotoLibrary:(id)a3 forceNotification:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4 || ([a1 _preflightChecksForFiringParticipantAssetTrashNotificationWithPhotoLibrary:v6] & 1) != 0)
  {
    v7 = objc_opt_class();
    v8 = [v6 managedObjectContext];
    v9 = [v7 activeLibraryScopeInManagedObjectContext:v8];

    v32 = 0;
    v33 = 0;
    v31 = 0;
    v10 = [a1 _computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope:v9 outPhotoCount:&v33 outVideoCount:&v32 outItemCount:&v31];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 localizedDescription];
    }

    else
    {
      if (!&v33[v32 + v31])
      {
        v13 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v9 compactDescription];
          *buf = 138412290;
          v35 = v14;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Ran fetch and there were 0 assets to notify user: %@", buf, 0xCu);
        }

        v15 = @"Ran fetch and there were 0 assets to notify user";
        goto LABEL_23;
      }

      v16 = [MEMORY[0x1E695E000] standardUserDefaults];
      v17 = [v16 integerForKey:@"PLLibraryScopeAssetTrashNotificationPostingHour"];

      if (v17)
      {
        v18 = [MEMORY[0x1E695E000] standardUserDefaults];
        v19 = [v18 integerForKey:@"PLLibraryScopeAssetTrashNotificationPostingMinute"];

        v20 = [a1 _nearestDateSetToHour:v17 minute:v19];
        v21 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v35 = v17;
          v36 = 2048;
          v37 = v19;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Custom PLLibraryScopeAssetTrashNotificationPostingHour set: %lu hour, %lu minute", buf, 0x16u);
        }
      }

      else
      {
        v20 = [a1 _nearestDateSetToHour:9 minute:0];
      }

      if (v4)
      {
        v22 = [MEMORY[0x1E695DF00] date];

        v20 = v22;
      }

      v23 = +[PLNotificationManager sharedManager];
      [v23 postNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:v33 videoCount:v32 itemCount:v31 withNotificationDeliveryDate:v20];

      v24 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = v32;
        v25 = v33;
        v27 = v31;
        v28 = [v9 compactDescription];
        *buf = 134219010;
        v35 = v25;
        v36 = 2048;
        v37 = v26;
        v38 = 2048;
        v39 = v27;
        v40 = 2112;
        v41 = v20;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Ran fetch and posted notification about %lu photos %lu videos %lu items to notify user. Notification to be posted at %@: %@", buf, 0x34u);
      }

      v29 = [MEMORY[0x1E695DF00] date];
      [v9 setLastParticipantAssetTrashNotificationDate:v29];

      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ran fetch and posted notification about %lu photos %lu videos %lu items to notify user", v33, v32, v31];
    }

    v15 = v12;
LABEL_23:

    goto LABEL_24;
  }

  v9 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight checks failed", buf, 2u);
  }

  v15 = @"Preflight checks failed";
LABEL_24:

  return v15;
}

+ (id)_computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope:(id)a3 outPhotoCount:(unint64_t *)a4 outVideoCount:(unint64_t *)a5 outItemCount:(unint64_t *)a6
{
  v47[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = [v6 currentUserParticipant];
  v27 = [v6 lastParticipantAssetTrashNotificationDate];
  v25 = +[PLManagedAsset predicateToIncludeOnlyContentContributedByCurrentUser];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 1];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", @"trashedDate", v27];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", @"trashedByParticipant", v26];
  v10 = MEMORY[0x1E696AB28];
  v47[0] = v25;
  v47[1] = v7;
  v47[2] = v8;
  v47[3] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  [v15 setPredicate:v12];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v16 = [v6 managedObjectContext];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __157__PLLibraryScope__computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope_outPhotoCount_outVideoCount_outItemCount___block_invoke;
  v28[3] = &unk_1E7566258;
  v28[4] = &v37;
  v28[5] = &v33;
  v28[6] = &v29;
  v17 = [v16 enumerateObjectsFromFetchRequest:v15 usingDefaultBatchSizeWithBlock:v28];

  if (v17)
  {
    v18 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v6 compactDescription];
      *buf = 138412802;
      v42 = v17;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v12;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "PostParticipantAssetTrashNotification: Fetch failed: %@ libraryScope %@, Predicate %@", buf, 0x20u);
    }
  }

  else
  {
    v18 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = [v6 compactDescription];
      *buf = 138412546;
      v42 = v20;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: LibraryScope %@, Predicate %@", buf, 0x16u);
    }
  }

  if (a4)
  {
    *a4 = v38[3];
  }

  if (a5)
  {
    *a5 = v34[3];
  }

  if (a6)
  {
    *a6 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v17;
}

void __157__PLLibraryScope__computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope_outPhotoCount_outVideoCount_outItemCount___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isPhoto])
  {
    v3 = 32;
  }

  else
  {
    v4 = [v5 isVideo];
    v3 = 48;
    if (v4)
    {
      v3 = 40;
    }
  }

  ++*(*(*(a1 + v3) + 8) + 24);
}

+ (BOOL)_preflightChecksForFiringParticipantAssetTrashNotificationWithPhotoLibrary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PLIsSharedLibraryAssetTrashedByParticipantsNotificationEnabled() & 1) != 0 || ([v4 isUnitTesting])
  {
    v5 = objc_opt_class();
    v6 = [v4 managedObjectContext];
    v7 = [v5 activeLibraryScopeInManagedObjectContext:v6];

    if (!v7)
    {
      v8 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight failed: No active LibraryScope", buf, 2u);
      }

      v17 = 0;
      goto LABEL_42;
    }

    v8 = [v7 currentUserParticipant];
    if (v8)
    {
      v9 = [v7 lastParticipantAssetTrashNotificationDate];
      if (v9)
      {
        v10 = v9;
        v29 = 0;
        v30 = 0;
        v28 = 0;
        v11 = [a1 _immediateNotificationAssetThresholdToUseWithPhotoLibrary:v4];
        v12 = [a1 _computeCountOfContributedAssetsTrashedByOtherParticipantsSinceLastNotificationDateInLibraryScope:v7 outPhotoCount:&v30 outVideoCount:&v29 outItemCount:&v28];
        if (v29 + v30 + v28 >= v11)
        {
          v21 = PLBackendSharingGetLog();
          v17 = 1;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v32 = v29 + v30 + v28;
            v33 = 2048;
            v34 = v11;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight passed: Based on high asset trash count: %lu, threshold: %lu", buf, 0x16u);
          }
        }

        else
        {
          v13 = [MEMORY[0x1E695E000] standardUserDefaults];
          v14 = [v13 integerForKey:@"PLLibraryScopeAssetTrashNotificationThreshold"];

          if (v14)
          {
            v15 = PLBackendSharingGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v32 = v14;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Custom PLLibraryScopeAssetTrashNotificationThreshold set: %lu seconds", buf, 0xCu);
            }

            v16 = v14;
          }

          else
          {
            v16 = 604800.0;
          }

          v22 = objc_alloc(MEMORY[0x1E695DF00]);
          v23 = [MEMORY[0x1E695DF00] date];
          v21 = [v22 initWithTimeInterval:v23 sinceDate:-v16];

          if ([v10 compare:v21]== 1)
          {
            v24 = PLBackendSharingGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v32 = v10;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight failed: lastNotificationDate is within threshold: %@", buf, 0xCu);
            }

            v17 = 0;
          }

          else
          {
            v25 = [v7 lastParticipantAssetTrashNotificationViewedDate];
            v24 = v25;
            if (v25 && [v25 compare:v10]!= -1 && [v24 compare:v21]== 1)
            {
              v26 = PLBackendSharingGetLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v32 = v24;
                _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight failed: lastNotificationViewedDate is within threshold: %@", buf, 0xCu);
              }

              v17 = 0;
            }

            else
            {
              v26 = PLBackendSharingGetLog();
              v17 = 1;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight passed: Reach end of preflight checks", buf, 2u);
              }
            }
          }
        }

        goto LABEL_41;
      }

      v19 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v7 compactDescription];
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "PostParticipantAssetTrashNotification: Preflight failed: Active LibraryScope has nil lastParticipantAssetTrashNotificationDate: %@", buf, 0xCu);
      }

      [v7 startTrackingParticipantAssetTrashStateIfNeeded];
      v10 = 0;
    }

    else
    {
      v10 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = [v7 compactDescription];
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "PostParticipantAssetTrashNotification: Preflight failed: Active LibraryScope has no current user: %@", buf, 0xCu);
      }
    }

    v17 = 0;
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v7 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Preflight failed: Setting is disabled", buf, 2u);
  }

  v17 = 0;
LABEL_43:

  return v17;
}

+ (unint64_t)_immediateNotificationAssetThresholdToUseWithPhotoLibrary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a3 libraryServicesManager];
  v4 = [v3 cloudPhotoLibraryManager];
  v5 = [v4 cplConfiguration];

  v6 = [v5 valueForKey:@"feature.version.sharedlibrarytrashnotificationassetthreshold"];
  if (v6)
  {
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "PostParticipantAssetTrashNotification: Custom immediateNotificationAssetThresholdPreflight set: %@", &v10, 0xCu);
    }

    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 50;
  }

  return v8;
}

+ (void)updateLibraryScopeActiveDefaultsWithManagedObjectContext:(id)a3
{
  v3 = [a1 activeLibraryScopeInManagedObjectContext:a3];
  if (([v3 isDeleted] & 1) != 0 || !objc_msgSend(v3, "libraryScopeIsActive"))
  {
    CFPreferencesSetAppValue(@"PhotosSharedLibrarySyncingIsActive", 0, @"com.apple.mobileslideshow");
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v5 = "Removing PhotosSharedLibrarySyncingIsActive user default";
      v6 = &v7;
      goto LABEL_7;
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"PhotosSharedLibrarySyncingIsActive", *MEMORY[0x1E695E4D0], @"com.apple.mobileslideshow");
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v5 = "Writing PhotosSharedLibrarySyncingIsActive user default";
      v6 = &v8;
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }
}

+ (id)scopeIdentifierPrefixInLibrary:(id)a3
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [a1 localOnlySharedSyncScopeIdentifierPrefix];
  }

  else
  {
    v7 = [v5 mainScopeIdentifier];
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"PLLibraryScope.m" lineNumber:460 description:@"Missing main scope identifier"];
    }

    v6 = CPLSharingScopePrefixForScopeWithIdentifier();
  }

  return v6;
}

+ (BOOL)libraryScopeScopeIdentifierWasCreatedInLocalOnlyMode:(id)a3
{
  v4 = a3;
  v5 = [a1 localOnlySharedSyncScopeIdentifierPrefix];
  v6 = [v4 hasPrefix:v5];

  return v6;
}

+ (signed)activeSyncingStateToUse
{
  if (_os_feature_enabled_impl())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)activeLibraryScopeInManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithShort:{objc_msgSend(objc_opt_class(), "activeSyncingStateToUse")}];
  v8 = [v4 predicateWithFormat:@"%K == %@", @"scopeSyncingState", v7];

  v9 = [a1 sharesWithPredicate:v8 fetchLimit:1 inManagedObjectContext:v6];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 unitTestMode:(BOOL)a6 inPhotoLibrary:(id)a7
{
  v7 = a6;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___PLLibraryScope;
  v11 = a7;
  v12 = objc_msgSendSuper2(&v14, sel_createOwnedShareWithUUID_creationDate_title_inPhotoLibrary_, a3, a4, a5, v11);
  [v12 setScopeType:{4, v14.receiver, v14.super_class}];
  [v12 setPublicPermission:1];
  [v12 _insertOwnedParticipantInLibrary:v11 unitTestMode:v7];

  return v12;
}

+ (id)_libraryForEnumerationFromBundle:(id)a3 withName:(const char *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v6 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v6 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v6 setAutomaticallyPinToFirstFetch:0];
  v11 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:a4 loadedFromBundle:v5 options:v6 error:&v11];

  v8 = v11;
  if (!v7)
  {
    v9 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error creating context for library enumeration: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (BOOL)removePeopleRulesForPersonUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLLibraryScope *)self autoSharePolicy]>= 2)
  {
    v6 = [(PLLibraryScope *)self rulesData];
    v7 = [PLLibraryScopeRule libraryScopeRulesForLibraryScopeRulesData:v6];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    v5 = v9 != 0;
    v10 = v8;
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 personCondition];
          v12 |= [v17 removePersonUUID:v4];

          objc_autoreleasePoolPop(v16);
        }

        v11 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);

      if ((v12 & 1) == 0)
      {
        v5 = 0;
        goto LABEL_16;
      }

      v18 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v4;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "LibraryScope custom rules updated: person %{public}@ removed", buf, 0xCu);
      }

      v10 = [PLLibraryScopeRule dataForLibraryScopeRules:v8];
      [(PLLibraryScope *)self setRulesData:v10];
    }

LABEL_16:
    goto LABEL_17;
  }

  v5 = 0;
LABEL_17:

  return v5;
}

- (BOOL)updatePeopleRulesForAllTombstonedPersons
{
  v40 = *MEMORY[0x1E69E9840];
  if ([(PLLibraryScope *)self autoSharePolicy]>= 2)
  {
    v4 = [(PLLibraryScope *)self rulesData];
    v5 = [PLLibraryScopeRule libraryScopeRulesForLibraryScopeRulesData:v4];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    v3 = 0;
    if (v26)
    {
      v25 = *v35;
      do
      {
        v6 = 0;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * v6);
          v8 = objc_autoreleasePoolPush();
          v9 = [v7 personCondition];
          v10 = [v9 personUUIDs];

          if ([v10 count])
          {
            v28 = v8;
            v29 = v6;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v27 = v10;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v31;
              do
              {
                v15 = 0;
                do
                {
                  if (*v31 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v30 + 1) + 8 * v15);
                  v17 = [(PLManagedObject *)self photoLibrary];
                  v18 = [v17 managedObjectContext];
                  v19 = [PLPerson personWithUUID:v16 inManagedObjectContext:v18];

                  if ([v19 verifiedType] == -2)
                  {
                    v20 = [v19 finalMergeTargetPerson];
                    if (v20)
                    {
                      v21 = [v19 personUUID];
                      v22 = [v20 personUUID];
                      v3 |= [(PLLibraryScope *)self updatePeopleRulesForTombstonePersonUUID:v21 replaceWithPersonUUID:v22];
                    }
                  }

                  ++v15;
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v13);
            }

            v8 = v28;
            v6 = v29;
            v10 = v27;
          }

          objc_autoreleasePoolPop(v8);
          ++v6;
        }

        while (v6 != v26);
        v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v26);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)updatePeopleRulesForTombstonePersonUUID:(id)a3 replaceWithPersonUUID:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PLLibraryScope *)self autoSharePolicy]>= 2)
  {
    v9 = [(PLLibraryScope *)self rulesData];
    v10 = [PLLibraryScopeRule libraryScopeRulesForLibraryScopeRulesData:v9];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v8 = v12 != 0;
    v13 = v11;
    if (v12)
    {
      v14 = v12;
      v23 = v12 != 0;
      v15 = 0;
      v16 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v18 personCondition];
          v15 |= [v20 replaceTombstonePersonUUID:v6 withPersonUUID:v7];

          objc_autoreleasePoolPop(v19);
        }

        v14 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);

      if ((v15 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v21 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v29 = v6;
        v30 = 2114;
        v31 = v7;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "LibraryScope custom rules updated: tombstone person %{public}@ replaced with %{public}@", buf, 0x16u);
      }

      v13 = [PLLibraryScopeRule dataForLibraryScopeRules:v11];
      [(PLLibraryScope *)self setRulesData:v13];
      v8 = v23;
    }

LABEL_16:
    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (id)cloudSyncableRulesData
{
  v3 = [(PLLibraryScope *)self autoSharePolicy];
  if (v3 == 2)
  {
    v5 = [(PLLibraryScope *)self rulesData];
  }

  else if (v3 == 1)
  {
    v4 = +[PLLibraryScope _shareEverythingInternalQuery];
    v5 = [PLQueryHandler dataFromQuery:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateRulesDataWithCloudSyncableRulesData:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [PLQueryHandler constructQueryFromData:v4];
    if (v5)
    {
      if ([PLLibraryScope _queryIsShareEverythingInternalQuery:v5])
      {
        [(PLLibraryScope *)self setAutoSharePolicy:1];
        v6 = self;
        v7 = 0;
      }

      else
      {
        [(PLLibraryScope *)self setAutoSharePolicy:2];
        v6 = self;
        v7 = v8;
      }

      [(PLLibraryScope *)v6 setRulesData:v7];
    }
  }

  else
  {
    [(PLLibraryScope *)self setAutoSharePolicy:0];
    [(PLLibraryScope *)self setRulesData:0];
  }
}

- (BOOL)incrementallyDeleteAndSaveWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  *(&self->super.super._willSaveCallCount + 3) = 1;
  v6 = [(PLLibraryScope *)self managedObjectContext];
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Preparing assets for library scope deletion...", buf, 2u);
  }

  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"libraryScope", self];
  [v10 setPredicate:v11];

  v12 = [PLEnumerateAndSaveController alloc];
  v13 = NSStringFromSelector(a2);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __54__PLLibraryScope_incrementallyDeleteAndSaveWithError___block_invoke;
  v22[3] = &unk_1E7575B30;
  v14 = v6;
  v23 = v14;
  v15 = [(PLEnumerateAndSaveController *)v12 initWithName:v13 fetchRequest:v10 context:v14 options:0 generateContextBlock:v22 didFetchObjectIDsBlock:0 processResultsBlock:&__block_literal_global_315];

  v21 = 0;
  LOBYTE(v13) = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&v21];
  v16 = v21;
  if ((v13 & 1) == 0)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to prepare assets for share deletion: %@", buf, 0xCu);
    }
  }

  v20.receiver = self;
  v20.super_class = PLLibraryScope;
  v18 = [(PLShare *)&v20 incrementallyDeleteAndSaveWithError:a3];

  return v18;
}

void __54__PLLibraryScope_incrementallyDeleteAndSaveWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 removeLibraryScopeAndContributors];
        [v8 setLibraryScopeShareState:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(unsigned __int16)a6 completionHandler:(id)a7
{
  v8 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(PLManagedObject *)self photoLibrary];
  v16 = [(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode];
  if (v16 || [v15 isUnitTesting])
  {
    v17 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PLLibraryScope *)self debugDescription];
      v19 = "for unit testing";
      *buf = 138412802;
      v51 = v18;
      v53 = "[PLLibraryScope removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:]";
      v52 = 2080;
      if (v16)
      {
        v19 = "in local only mode";
      }

      v54 = 2080;
      v55 = v19;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created %s", buf, 0x20u);
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
    v45[3] = &unk_1E7578848;
    v46 = v12;
    v47 = self;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
    v43[3] = &unk_1E7576AA0;
    v44 = v14;
    [v15 performTransaction:v45 completionHandler:v43];

    v20 = v46;
  }

  else
  {
    v20 = [(PLShare *)self compactDescription];
    v21 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v22 = 3;
        }

        else if (v8 == 1000)
        {
          v22 = 1000;
        }
      }

      else if (v8 == 1)
      {
        v22 = 1;
      }

      else if (v8 == 2)
      {
        v22 = 2;
      }

      *buf = 138544130;
      v51 = v12;
      v52 = 2048;
      v53 = a5;
      v54 = 2048;
      v55 = v22;
      v56 = 2114;
      v57 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "RemoveParticipants: Removing participants with UUIDs %{public}@ using retentionPolicy: %ld, exitSource: %ld for library scope %{public}@", buf, 0x2Au);
    }

    v35 = v13;

    v23 = [(PLManagedObject *)self photoLibrary];
    v24 = [v23 libraryServicesManager];
    v25 = [v24 cloudPhotoLibraryManager];

    if (v25)
    {
      v26 = 3;
      v27 = 1000;
      if (v8 != 1000)
      {
        v27 = 0;
      }

      if (v8 != 3)
      {
        v26 = v27;
      }

      v28 = 1;
      v29 = 2;
      if (v8 != 2)
      {
        v29 = 0;
      }

      if (v8 != 1)
      {
        v28 = v29;
      }

      if (v8 <= 2)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_291;
      v36[3] = &unk_1E75662F8;
      v37 = v12;
      v38 = v20;
      v42 = v14;
      v39 = v25;
      v40 = v15;
      v41 = self;
      v13 = v35;
      [v39 removeParticipantsWithParticipantUUIDs:v37 fromLibraryScopeWithIdentifier:v35 retentionPolicy:a5 exitSource:v30 completionHandler:v36];

      v31 = v37;
    }

    else
    {
      v32 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no CPLManager"];
      v49 = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v31 = [v32 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v34];

      (*(v14 + 2))(v14, v31);
      v13 = v35;
    }
  }
}

void __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) photoLibrary];
  v4 = [PLShareParticipant participantsWithUUIDs:v2 inPhotoLibrary:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [*(a1 + 40) managedObjectContext];
        [v11 deleteObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_291(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "RemoveParticipants: Failed to remove participants with UUIDs %@ for library scope %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = PLBackendSharingGetLog();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        *buf = 138412802;
        v31 = v12;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v5;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "RemoveParticipants: Successfully removed participants with UUIDs %@ for library scope %@, updated scope change: %@", buf, 0x20u);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_292;
      v24[3] = &unk_1E7576EE8;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v25 = v15;
      v26 = v16;
      v27 = v5;
      v17 = *(a1 + 72);
      v28 = 0;
      v29 = v17;
      [v14 performTransactionOnLibraryScopeSynchronizationQueue:v24];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        *buf = 138412290;
        v31 = v18;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "RemoveParticipants: Received nil CPLLibraryShareScopeChange back from CPLLibraryManager for library scope %@", buf, 0xCu);
      }

      v19 = *(a1 + 72);
      v20 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received nil CPLLibraryShareScopeChange back from CPLLibraryManager"];
      v37[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v23 = [v20 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v22];
      (*(v19 + 16))(v19, v23);
    }
  }
}

void __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_292(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2_293;
  v7[3] = &unk_1E75761B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __133__PLLibraryScope_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7577C08;
  v6 = *(a1 + 64);
  v5 = *(a1 + 56);
  [v2 performTransactionAndWait:v7 completionHandler:v4];
}

- (void)startExitWithRetentionPolicy:(int64_t)a3 exitSource:(unsigned __int16)a4 completionHandler:(id)a5
{
  v5 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(PLShare *)self compactDescription];
  v10 = [(PLManagedObject *)self photoLibrary];
  if (![(PLLibraryScope *)self libraryScopeIsActive])
  {
    v14 = qos_class_self();
    v15 = dispatch_get_global_queue(v14, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke;
    block[3] = &unk_1E7577C08;
    v50 = v9;
    v51 = v8;
    dispatch_async(v15, block);

    v13 = v50;
LABEL_7:

    goto LABEL_8;
  }

  if ([v10 isUnitTesting])
  {
    v11 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PLLibraryScope *)self debugDescription];
      *buf = 138412546;
      v55 = v12;
      v56 = 2080;
      v57 = "[PLLibraryScope startExitWithRetentionPolicy:exitSource:completionHandler:]";
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created for unit testing", buf, 0x16u);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_279;
    v48[3] = &unk_1E75781E8;
    v48[4] = self;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_2;
    v46[3] = &unk_1E7576AA0;
    v47 = v8;
    [v10 performTransaction:v48 completionHandler:v46];
    v13 = v47;
    goto LABEL_7;
  }

  v16 = [(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode];
  v17 = PLBackendSharingGetLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(PLLibraryScope *)self debugDescription];
      *buf = 138412546;
      v55 = v19;
      v56 = 2080;
      v57 = "[PLLibraryScope startExitWithRetentionPolicy:exitSource:completionHandler:]";
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created in local only mode", buf, 0x16u);
    }

    v45 = 0;
    [(PLLibraryScope *)self incrementallyDeleteAndSaveWithError:&v45];
    v20 = v45;
    if (v20)
    {
      v21 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v9;
        v56 = 2112;
        v57 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "StartExit: Failed to start exit for local only mode library scope %@, %@", buf, 0x16u);
      }
    }

    v22 = qos_class_self();
    v23 = dispatch_get_global_queue(v22, 0);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_280;
    v43[3] = &unk_1E7576AA0;
    v44 = v8;
    dispatch_async(v23, v43);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = 0;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v24 = 3;
        }

        else if (v5 == 1000)
        {
          v24 = 1000;
        }
      }

      else if (v5 == 1)
      {
        v24 = 1;
      }

      else if (v5 == 2)
      {
        v24 = 2;
      }

      *buf = 134218498;
      v55 = a3;
      v56 = 2048;
      v57 = v24;
      v58 = 2114;
      v59 = v9;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "StartExit: Starting exit using retentionPolicy: %ld, exitSource: %ld for library scope %{public}@", buf, 0x20u);
    }

    v25 = [v10 libraryServicesManager];
    v26 = [v25 cloudPhotoLibraryManager];

    if (v26)
    {
      v27 = [(PLLibraryScope *)self scopeIdentifier];
      v28 = 3;
      v29 = 1000;
      if (v5 != 1000)
      {
        v29 = 0;
      }

      if (v5 != 3)
      {
        v28 = v29;
      }

      v30 = 1;
      v31 = 2;
      if (v5 != 2)
      {
        v31 = 0;
      }

      if (v5 != 1)
      {
        v30 = v31;
      }

      if (v5 <= 2)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_281;
      v37[3] = &unk_1E75662D0;
      v38 = v9;
      v42 = v8;
      v39 = v26;
      v40 = v10;
      v41 = self;
      [v39 startExitFromLibraryScopeWithIdentifier:v27 retentionPolicy:a3 exitSource:v32 completionHandler:v37];

      v33 = v38;
    }

    else
    {
      v34 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A578];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no CPLManager"];
      v53 = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v33 = [v34 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v36];

      (*(v8 + 2))(v8, v33);
    }
  }

LABEL_8:
}

void __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to start exit on a LibraryScope that's not actively syncing"];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v2 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v4];

  v6 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "StartExit: Unable to start exit on a LibraryScope that's not actively syncing %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_281(uint64_t a1, void *a2, void *a3)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "StartExit: Failed to start exit for library scope %@, %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = PLBackendSharingGetLog();
    v10 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x1E6994AF0] descriptionForExitState:{objc_msgSend(v5, "exitState")}];
        *buf = 138412802;
        v30 = v11;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "StartExit: Successfully started exit for library scope %@, updated scope change: %@, updated exit state: %@", buf, 0x20u);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_285;
      v23[3] = &unk_1E7576EE8;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v24 = v14;
      v25 = v15;
      v26 = v5;
      v16 = *(a1 + 64);
      v27 = 0;
      v28 = v16;
      [v13 performTransactionOnLibraryScopeSynchronizationQueue:v23];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "StartExit: Received nil CPLLibraryShareScopeChange back from CPLLibraryManager for library scope %@", buf, 0xCu);
      }

      v18 = *(a1 + 64);
      v19 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received nil CPLLibraryShareScopeChange back from CPLLibraryManager"];
      v36[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v22 = [v19 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v21];
      (*(v18 + 16))(v18, v22);
    }
  }
}

void __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_285(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_2_286;
  v7[3] = &unk_1E75761B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__PLLibraryScope_startExitWithRetentionPolicy_exitSource_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7577C08;
  v6 = *(a1 + 64);
  v5 = *(a1 + 56);
  [v2 performTransactionAndWait:v7 completionHandler:v4];
}

- (BOOL)confirmAllRemainingOnboardingPreviewAssetsWithProgress:(id)a3 databaseContext:(id)a4 withError:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [v10 newShortLivedLibraryWithName:"-[PLLibraryScope confirmAllRemainingOnboardingPreviewAssetsWithProgress:databaseContext:withError:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke;
  v15[3] = &unk_1E7576DD0;
  v12 = v11;
  v19 = &v22;
  v20 = a5;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v18 = self;
  v21 = a2;
  [v12 performTransactionAndWait:v15];
  LOBYTE(a2) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return a2;
}

void __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke(uint64_t a1)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695D5E0]);
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 initWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 1];
  v6 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsEligibleForCPLTransportWithoutSharedScopesAndPlaceholders"), 1}];
  v7 = MEMORY[0x1E696AB28];
  v48[0] = v6;
  v48[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  [v4 setPredicate:v9];
  [v4 setFetchBatchSize:100];
  v10 = [*(a1 + 32) managedObjectContext];
  v42 = 0;
  v11 = [v10 countForFetchRequest:v4 error:&v42];
  v12 = v42;

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ConfirmAllRemainingOnboardingPreviewAssets: Count fetch failed: %@", &buf, 0xCu);
    }

    v14 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count fetch failed: %@", v12];
    v47 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v17 = [v14 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v16];

    v18 = *(a1 + 64);
    if (v18)
    {
      v19 = v17;
      *v18 = v17;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    [*(a1 + 40) setTotalUnitCount:v11];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x2020000000;
    v45 = 0;
    v20 = objc_opt_class();
    v21 = [*(a1 + 48) photoLibrary];
    v22 = [v21 libraryBundle];
    v23 = [v20 _libraryForEnumerationFromBundle:v22 withName:"-[PLLibraryScope confirmAllRemainingOnboardingPreviewAssetsWithProgress:databaseContext:withError:]_block_invoke"];

    v24 = [v23 managedObjectContext];
    [v24 setNonCoalescing:1];
    v31 = [PLEnumerateAndSaveController alloc];
    v25 = NSStringFromSelector(*(a1 + 72));
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke_2;
    v40[3] = &unk_1E7575B30;
    v26 = v24;
    v41 = v26;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke_3;
    v37[3] = &unk_1E756AC10;
    p_buf = &buf;
    v38 = *(a1 + 40);
    v27 = [(PLEnumerateAndSaveController *)v31 initWithName:v25 fetchRequest:v4 context:v26 options:4 generateContextBlock:v40 didFetchObjectIDsBlock:0 processResultsBlock:v37];

    v28 = +[PLConcurrencyLimiter sharedLimiter];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke_4;
    v32[3] = &unk_1E75766D0;
    v34 = *(a1 + 56);
    v29 = v27;
    v33 = v29;
    v35 = &buf;
    v36 = *(a1 + 64);
    v30 = [v26 photoLibrary];
    [v28 sync:v32 identifyingBlock:0 library:v30];

    _Block_object_dispose(&buf, 8);
  }
}

void __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 libraryScopeShareState] & 0x1F) == 1 || (objc_msgSend(v11, "libraryScopeShareState") & 0x200000) != 0)
        {
          PLLibraryScopeAssetSetAddToSharedZoneState(1, v11);
          ++*(*(*(a1 + 40) + 8) + 24);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v6, "count") + objc_msgSend(*(a1 + 32), "completedUnitCount")}];
}

void __99__PLLibraryScope_confirmAllRemainingOnboardingPreviewAssetsWithProgress_databaseContext_withError___block_invoke_4(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v11 = 0;
  v3 = [v2 processObjectsWithError:&v11];
  v4 = v11;
  *(*(a1[5] + 8) + 24) = v3;
  v5 = *(*(a1[5] + 8) + 24);
  v6 = PLBackendSharingGetLog();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1[6] + 8) + 24);
      *buf = 134217984;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "ConfirmAllRemainingOnboardingPreviewAssets: Successfully confirmed %lu remaining onboarding preview assets", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ConfirmAllRemainingOnboardingPreviewAssets: Failed to confirm remaining onboarding preview assets %@", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = v4;
      *v9 = v4;
    }
  }
}

- (void)_confirmAllRemainingOnboardingPreviewAssetsWithProgress:(id)a3 photoLibrary:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 libraryServicesManager];
  v8 = [v7 databaseContext];
  v17 = 0;
  v9 = [(PLLibraryScope *)self confirmAllRemainingOnboardingPreviewAssetsWithProgress:v6 databaseContext:v8 withError:&v17];

  v10 = v17;
  v11 = PLBackendSharingGetLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Successfully confirmed remaining onboarding preview assets";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v10;
    v13 = "Failed to confirm remaining onboarding preview assets %@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 12;
    goto LABEL_6;
  }
}

- (id)markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs:(id)a3 completionHandler:(id)a4
{
  v120[1] = *MEMORY[0x1E69E9840];
  v80 = a3;
  v82 = a4;
  v81 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
  if ([(PLLibraryScope *)self autoSharePolicy]!= 1)
  {
    v24 = [(PLLibraryScope *)self rulesData];

    if (v24)
    {
      v25 = [(PLLibraryScope *)self rulesData];
      v26 = [PLQueryHandler constructQueryFromData:v25];

      if (v26)
      {
        v27 = [(PLLibraryScope *)self rulesData];
        v28 = [PLLibraryScopeRule libraryScopeRulesForLibraryScopeRulesData:v27];

        v29 = [v28 count] == 0;
        v30 = PLBackendSharingGetLog();
        v31 = v30;
        if (v29)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: rule object generated from rulesData is nil", &buf, 2u);
          }

          v70 = MEMORY[0x1E696ABC0];
          v115 = *MEMORY[0x1E696A578];
          v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rule object generated from query is nil"];
          v116 = v71;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v73 = [v70 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v72];
        }

        else
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v28;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "MarkOnboardingPreviewAssets: Rule object being used for marking onboarding preview: %@", &buf, 0xCu);
          }

          if ([v80 count])
          {
            v32 = PLBackendSharingGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v80;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "MarkOnboardingPreviewAssets: Exclude people for marking onboarding preview: %@", &buf, 0xCu);
            }

            v33 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:0];
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v34 = v80;
            v35 = [v34 countByEnumeratingWithState:&v102 objects:v114 count:16];
            if (v35)
            {
              v36 = *v103;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v103 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [v33 addPersonUUIDQuery:*(*(&v102 + 1) + 8 * i) comparator:22];
                }

                v35 = [v34 countByEnumeratingWithState:&v102 objects:v114 count:16];
              }

              while (v35);
            }

            v38 = MEMORY[0x1E69BF2C0];
            v39 = [v33 query];
            v40 = [v38 notQuery:v39];

            v41 = [MEMORY[0x1E69BF2C0] andCombineFirstQuery:v26 secondQuery:v40];

            v26 = v41;
          }

          v42 = [(PLManagedObject *)self photoLibrary];
          v43 = objc_opt_new();
          v79 = [PLQueryHandler predicateForQuery:v26 inLibrary:v42 changeDetectionCriteria:v43];

          if (v79)
          {

            goto LABEL_3;
          }

          v74 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: predicate generated from query is nil", &buf, 2u);
          }

          v75 = MEMORY[0x1E696ABC0];
          v112 = *MEMORY[0x1E696A578];
          v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"predicate generated from rule object is nil"];
          v113 = v71;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v73 = [v75 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v72];
        }

        v76 = v73;

        v82[2](v82, v76);
      }

      else
      {
        v66 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: query generated from rulesData is nil", &buf, 2u);
        }

        v67 = MEMORY[0x1E696ABC0];
        v117 = *MEMORY[0x1E696A578];
        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"query generated from rulesData is nil"];
        v118 = v68;
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v26 = [v67 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v69];

        v82[2](v82, v26);
      }
    }

    else
    {
      v62 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: rulesData is not set on LibraryScope", &buf, 2u);
      }

      v63 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rulesData is not set on LibraryScope"];
      v120[0] = v64;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];
      v26 = [v63 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v65];

      v82[2](v82, v26);
    }

    v23 = 0;
    goto LABEL_46;
  }

  v79 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_3:
  v7 = objc_alloc(MEMORY[0x1E695D5E0]);
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 initWithEntityName:v8];

  v10 = [objc_opt_class() compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:v79];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v111[0] = @"additionalAttributes";
  v111[1] = @"libraryScope";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v12 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 predicate];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "MarkOnboardingPreviewAssets: Predicate being used for marking onboarding preview assets: %@", &buf, 0xCu);
  }

  v14 = [(PLManagedObject *)self photoLibrary];
  v15 = [v14 managedObjectContext];
  v101 = 0;
  v16 = [v15 countForFetchRequest:v9 error:&v101];
  v17 = v101;

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: Count fetch failed: %@", &buf, 0xCu);
    }

    v19 = MEMORY[0x1E696ABC0];
    v109 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count fetch failed: %@", v17];
    v110 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v22 = [v19 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:41003 userInfo:v21];

    v82[2](v82, v22);
    v23 = 0;
  }

  else
  {
    [v81 setTotalUnitCount:v16];
    v44 = objc_opt_class();
    v45 = [(PLManagedObject *)self photoLibrary];
    v46 = [v45 libraryBundle];
    v22 = [v44 _libraryForEnumerationFromBundle:v46 withName:"-[PLLibraryScope markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs:completionHandler:]"];

    v47 = [v22 managedObjectContext];
    [v47 setChangeSource:1];

    if (v22)
    {
      v48 = [v22 managedObjectContext];
      v49 = [(PLLibraryScope *)self objectID];
      v50 = [(PLShare *)self currentUserParticipant];
      v51 = [v50 objectID];

      objc_initWeak(&location, self);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v107 = 0x2020000000;
      v108 = 0;
      v52 = [PLEnumerateAndSaveController alloc];
      v53 = NSStringFromSelector(a2);
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __103__PLLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs_completionHandler___block_invoke;
      v98[3] = &unk_1E7575B30;
      v54 = v48;
      v99 = v54;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __103__PLLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs_completionHandler___block_invoke_2;
      v92[3] = &unk_1E75662A8;
      objc_copyWeak(&v97, &location);
      v78 = v49;
      v93 = v78;
      v55 = v51;
      v94 = v55;
      p_buf = &buf;
      v56 = v81;
      v95 = v56;
      v57 = [(PLEnumerateAndSaveController *)v52 initWithName:v53 fetchRequest:v9 context:v54 options:4 generateContextBlock:v98 didFetchObjectIDsBlock:0 processResultsBlock:v92];

      v90[0] = 0;
      v90[1] = v90;
      v90[2] = 0x2020000000;
      v91 = 0;
      v58 = +[PLConcurrencyLimiter sharedLimiter];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __103__PLLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs_completionHandler___block_invoke_271;
      v83[3] = &unk_1E7572F58;
      v88 = v90;
      v59 = v57;
      v84 = v59;
      v60 = v56;
      v85 = v60;
      v89 = &buf;
      v86 = self;
      v87 = v82;
      v61 = [v54 photoLibrary];
      [v58 async:v83 identifyingBlock:0 library:v61];

      v23 = v60;
      _Block_object_dispose(v90, 8);

      objc_destroyWeak(&v97);
      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&location);
    }

    else
    {
      v54 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:45001 userInfo:0];
      v82[2](v82, v54);
      v23 = 0;
    }
  }

  v26 = v79;
LABEL_46:

  return v23;
}

void __103__PLLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    v33 = 0;
    v11 = [v7 existingObjectWithID:v10 error:&v33];
    v12 = v33;
    v13 = *(a1 + 40);
    v32 = v12;
    v14 = [v7 existingObjectWithID:v13 error:&v32];
    v15 = v32;

    if (v14 && v11)
    {
      v24 = v15;
      v25 = a4;
      v26 = WeakRetained;
      v27 = v8;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v8;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * i);
            v22 = [MEMORY[0x1E695DFD8] setWithObject:v14];
            [v21 setLibraryScope:v11 withContributors:v22];

            [v21 setLibraryScopeShareState:0];
            PLLibraryScopeAssetSetSuggestedByClientType(0, v21);
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v18);
      }

      v8 = v27;
      a4 = v25;
      WeakRetained = v26;
      v15 = v24;
    }

    else
    {
      v23 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: Failed to load current user/scope: %@", buf, 0xCu);
      }

      *a4 = 1;
    }

    if ([*(a1 + 48) isCancelled])
    {
      *a4 = 1;
    }
  }

  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(v8, "count") + objc_msgSend(*(a1 + 48), "completedUnitCount")}];
}

void __103__PLLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs_completionHandler___block_invoke_271(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [v2 processObjectsWithError:&v18];
  v4 = v18;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && ([*(a1 + 40) isCancelled] & 1) == 0)
  {
    v16 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 134217984;
      v22 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "MarkOnboardingPreviewAssets: Successfully set %lu assets as onboarding preview assets", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (![*(a1 + 40) isCancelled])
  {
    v16 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "MarkOnboardingPreviewAssets: Failed to set onboarding preview assets %@", buf, 0xCu);
    }

LABEL_12:

    (*(*(a1 + 56) + 16))();
    goto LABEL_13;
  }

  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E69BFF48];
  v19 = *MEMORY[0x1E696A578];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [*(a1 + 40) localizedDescription];
  v9 = [v7 stringWithFormat:@"MarkOnboardingPreviewAssets: Cancelled! Going to reset all asset states... progress: %@", v8];
  v20 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v11 = [v5 errorWithDomain:v6 code:41031 userInfo:v10];

  v12 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = [*(a1 + 48) photoLibrary];
  v14 = [v13 managedObjectContext];
  v15 = [PLLibraryScope resetLibraryScopeAssetStatesWithManagedObjectContext:v14];

  (*(*(a1 + 56) + 16))();
LABEL_13:
}

- (void)deactivateScopeWithCompletionHandler:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLManagedObject *)self photoLibrary];
  if ([(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode])
  {
    v6 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PLLibraryScope *)self debugDescription];
      *buf = 138412546;
      v29 = v7;
      v30 = 2080;
      v31 = "[PLLibraryScope deactivateScopeWithCompletionHandler:]";
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created in local only mode", buf, 0x16u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke;
    v25[3] = &unk_1E75781E8;
    v25[4] = self;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_2;
    v23[3] = &unk_1E7577C08;
    v23[4] = self;
    v24 = v4;
    [v5 performTransaction:v25 completionHandler:v23];
  }

  else
  {
    v8 = [(PLManagedObject *)self photoLibrary];
    v9 = [v8 libraryServicesManager];
    v10 = [v9 cloudPhotoLibraryManager];

    if (v10)
    {
      [(PLLibraryScope *)self setLocalPublishState:1];
      v11 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(PLShare *)self compactDescription];
        *buf = 138412290;
        v29 = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Deactivating library scope %@", buf, 0xCu);
      }

      v13 = [(PLLibraryScope *)self scopeIdentifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_235;
      v18[3] = &unk_1E7577FC0;
      v19 = v10;
      v20 = v5;
      v21 = self;
      v22 = v4;
      [v19 deactivateScopeWithIdentifier:v13 completionHandler:v18];

      v14 = v19;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E69BFF48];
      v26 = *MEMORY[0x1E696A578];
      v27 = @"PLCloudPhotoLibraryManager is not available";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [v15 errorWithDomain:v16 code:41004 userInfo:v14];
      (*(v4 + 2))(v4, v17);
    }
  }
}

uint64_t __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLocalPublishState:0];
  [*(a1 + 32) trash];
  [*(a1 + 32) setScopeSyncingState:0];
  v2 = *(a1 + 32);

  return [v2 stopTrackingParticipantAssetTrashedStateIfNeeded];
}

void __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 libraryServicesManager];
  v4 = [v3 cloudPhotoLibraryManager];

  [v4 stopLibraryScopeRulesChangeTracker];
}

void __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_2_236;
  v7[3] = &unk_1E7573C00;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v3;
  [v4 performTransactionOnLibraryScopeSynchronizationQueue:v7];
}

void __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_2_236(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7578848;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_237;
  v5[3] = &unk_1E7577C08;
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v2 performTransaction:v8 completionHandler:v5 withPriority:1];
}

void __55__PLLibraryScope_deactivateScopeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setLocalPublishState:3];
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) compactDescription];
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to deactivate library scope %@: %@", &v8, 0x16u);
    }
  }

  else
  {
    [v2 setLocalPublishState:0];
    [*(a1 + 40) trash];
    [*(a1 + 40) setScopeSyncingState:0];
    [*(a1 + 40) stopTrackingParticipantAssetTrashedStateIfNeeded];
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) compactDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Deactivated library scope %@", &v8, 0xCu);
    }
  }
}

- (id)activateScopeWithCompletionHandler:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
  v6 = [(PLManagedObject *)self photoLibrary];
  if ([(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode])
  {
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLLibraryScope *)self debugDescription];
      *buf = 138412546;
      v37 = v8;
      v38 = 2080;
      v39 = "[PLLibraryScope activateScopeWithCompletionHandler:]";
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created in local only mode", buf, 0x16u);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke;
    v31[3] = &unk_1E75761B8;
    v31[4] = self;
    v9 = v5;
    v32 = v9;
    v33 = v6;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_2;
    v29[3] = &unk_1E7576AA0;
    v30 = v4;
    [v33 performTransaction:v31 completionHandler:v29];
    v10 = v9;
  }

  else
  {
    v11 = [(PLManagedObject *)self photoLibrary];
    v12 = [v11 libraryServicesManager];
    v13 = [v12 cloudPhotoLibraryManager];

    if (v13)
    {
      [(PLLibraryScope *)self setLocalPublishState:1];
      v14 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(PLShare *)self compactDescription];
        *buf = 138412290;
        v37 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Activating library scope %@", buf, 0xCu);
      }

      v16 = [(PLLibraryScope *)self scopeIdentifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_232;
      v23[3] = &unk_1E7567468;
      v24 = v13;
      v25 = v6;
      v26 = self;
      v17 = v5;
      v27 = v17;
      v28 = v4;
      [v24 activateScopeWithIdentifier:v16 completionHandler:v23];

      v10 = v17;
      v18 = v24;
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E69BFF48];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"PLCloudPhotoLibraryManager is not available";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v21 = [v19 errorWithDomain:v20 code:41004 userInfo:v18];
      (*(v4 + 2))(v4, v21);

      v10 = 0;
    }
  }

  return v10;
}

uint64_t __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLocalPublishState:2];
  [*(a1 + 32) untrash];
  [*(a1 + 32) setScopeSyncingState:2];
  [*(a1 + 32) setPreviewState:0];
  [*(a1 + 32) _confirmAllRemainingOnboardingPreviewAssetsWithProgress:*(a1 + 40) photoLibrary:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 startTrackingParticipantAssetTrashStateIfNeeded];
}

void __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_232(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_2_233;
  v7[3] = &unk_1E75738F8;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v5;
  v13 = *(a1 + 64);
  v12 = *(a1 + 32);
  v6 = v3;
  [v4 performTransactionOnLibraryScopeSynchronizationQueue:v7];
}

void __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_2_233(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_3;
  v11[3] = &unk_1E7578100;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = v6.i64[1];
  v5.i64[0] = *(a1 + 32);
  v5.i64[1] = v3;
  v12 = vextq_s8(v5, v6, 8uLL);
  v13 = vextq_s8(v6, v5, 8uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_234;
  v7[3] = &unk_1E7576F38;
  v10 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  [v2 performTransaction:v11 completionHandler:v7 withPriority:1];
}

void __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setLocalPublishState:3];
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) compactDescription];
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to activate library scope %@: %@", &v9, 0x16u);
    }
  }

  else
  {
    [v2 setLocalPublishState:2];
    [*(a1 + 40) untrash];
    [*(a1 + 40) setPreviewState:0];
    [*(a1 + 40) setScopeSyncingState:1];
    [*(a1 + 40) startTrackingParticipantAssetTrashStateIfNeeded];
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) compactDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Activated library scope %@", &v9, 0xCu);
    }

    [*(a1 + 40) _confirmAllRemainingOnboardingPreviewAssetsWithProgress:*(a1 + 48) photoLibrary:*(a1 + 56)];
  }
}

uint64_t __53__PLLibraryScope_activateScopeWithCompletionHandler___block_invoke_234(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 startLibraryScopeRulesChangeTracker];
}

- (void)publishWithCompletionHandler:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLManagedObject *)self photoLibrary];
  v6 = [(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode];
  if (v6 || (-[PLManagedObject photoLibrary](self, "photoLibrary"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isUnitTesting], v7, v8))
  {
    v9 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PLLibraryScope *)self debugDescription];
      v11 = "for unit testing";
      *buf = 138412802;
      v41 = v10;
      v43 = "[PLLibraryScope publishWithCompletionHandler:]";
      v42 = 2080;
      if (v6)
      {
        v11 = "in local only mode";
      }

      v44 = 2080;
      v45 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Hijacking %@ in %s since it was created %s", buf, 0x20u);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke;
    v37[3] = &unk_1E75781E8;
    v37[4] = self;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2;
    v35[3] = &unk_1E7577C08;
    v35[4] = self;
    v36 = v4;
    [v5 performTransaction:v37 completionHandler:v35];
  }

  else
  {
    v12 = [v5 libraryServicesManager];
    v13 = [v12 cloudPhotoLibraryManager];

    if (v13)
    {
      v14 = [(PLLibraryScope *)self localPublishState];
      v15 = PLBackendSharingGetLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v14 == 2)
      {
        if (v16)
        {
          v17 = [(PLShare *)self compactDescription];
          *buf = 138412290;
          v41 = v17;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Updating Library scope since it's already published %@", buf, 0xCu);
        }

        v18 = [(PLLibraryScope *)self cplScopeChange];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_219;
        v30[3] = &unk_1E7572C00;
        v31 = v13;
        v32 = v5;
        v33 = self;
        v34 = v4;
        [v31 updateLibraryScopeWithCPLScopeChange:v18 completionHandler:v30];

        v19 = v31;
      }

      else
      {
        if (v16)
        {
          v23 = [(PLShare *)self compactDescription];
          *buf = 138412290;
          v41 = v23;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Publishing library scope %@", buf, 0xCu);
        }

        [(PLLibraryScope *)self setLocalPublishState:1];
        v19 = [(PLShare *)self cplShare];
        v24 = [(PLLibraryScope *)self title];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_223;
        v25[3] = &unk_1E7572C00;
        v26 = v13;
        v27 = v5;
        v28 = self;
        v29 = v4;
        [v26 publishLibraryScopeWithCPLShare:v19 title:v24 completionHandler:v25];
      }
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E69BFF48];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"PLCloudPhotoLibraryManager is not available";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v22 = [v20 errorWithDomain:v21 code:41004 userInfo:v19];
      (*(v4 + 2))(v4, 0, 0, v22);
    }
  }
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) scopeIdentifier];
  v5 = [v3 stringWithFormat:@"fakeShareURL://%@", v4];
  v6 = [v2 URLWithString:v5];
  [*(a1 + 32) setShareURL:v6];

  [*(a1 + 32) setLocalPublishState:2];
  [*(a1 + 32) setParticipantCloudUpdateState:2];
  [*(a1 + 32) setScopeSyncingState:2];
  [*(a1 + 32) setPreviewState:0];
  v7 = [*(a1 + 32) currentUserParticipant];
  if (v7)
  {
    v12 = v7;
    [v7 setAcceptanceStatus:2];
    [v12 setRole:1];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [v8 stringWithFormat:@"_fakeUserID-%@", v10];
    [v12 setUserIdentifier:v11];

    v7 = v12;
  }
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shareURL];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_219(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 share];
  v8 = [v7 URL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2_220;
  v15[3] = &unk_1E7572C28;
  v9 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v6;
  v10 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v7;
  v21 = v5;
  v22 = v10;
  v20 = v8;
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  [v9 performTransactionOnLibraryScopeSynchronizationQueue:v15];
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_223(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 share];
  v8 = [v7 URL];
  v9 = [v5 scopeIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2_224;
  v17[3] = &unk_1E75670B0;
  v10 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v6;
  v11 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = v8;
  v22 = v9;
  v23 = v7;
  v24 = v5;
  v25 = v11;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v16 = v6;
  [v10 performTransactionOnLibraryScopeSynchronizationQueue:v17];
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2_224(id *a1)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_3_225;
  v14[3] = &unk_1E75768C8;
  v2 = a1 + 6;
  v3 = a1[4];
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[7];
  v6 = a1[8];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v15 = v8;
  v16 = v7;
  v17 = a1[9];
  v18 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_226;
  v9[3] = &unk_1E7573C00;
  v13 = a1[11];
  v10 = a1[7];
  v11 = a1[10];
  v12 = a1[5];
  [v3 performTransactionAndWait:v14 completionHandler:v9];
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_3_225(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setLocalPublishState:3];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 40) compactDescription];
      v4 = *(a1 + 32);
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to publish library scope %@: %@", &v10, 0x16u);
    }
  }

  else
  {
    if (!*(a1 + 48))
    {
      v5 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 40) compactDescription];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Missing shareURL after publishing library scope %@", &v10, 0xCu);
      }
    }

    if (*(a1 + 56))
    {
      [*(a1 + 40) setScopeIdentifier:?];
    }

    else
    {
      v7 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) compactDescription];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Missing scopeIdentifier after publishing library scope %@", &v10, 0xCu);
      }
    }

    [*(a1 + 40) updateShareWithCPLShare:*(a1 + 64) inPhotoLibrary:*(a1 + 72)];
    [*(a1 + 40) setLocalPublishState:2];
    [*(a1 + 40) setPreviewState:0];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) compactDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Published library scope %@", &v10, 0xCu);
    }
  }
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_2_220(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E7578100;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = v6.i64[1];
  v5.i64[0] = *(a1 + 32);
  v5.i64[1] = v3;
  v13 = vextq_s8(v5, v6, 8uLL);
  v14 = vextq_s8(v6, v5, 8uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_221;
  v7[3] = &unk_1E7573C00;
  v11 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  [v2 performTransactionAndWait:v12 completionHandler:v7];
}

void __47__PLLibraryScope_publishWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setParticipantCloudUpdateState:3];
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) compactDescription];
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to update library scope %@: %@", &v8, 0x16u);
    }
  }

  else
  {
    [v2 updateShareWithCPLShare:*(a1 + 48) inPhotoLibrary:*(a1 + 56)];
    [*(a1 + 40) setParticipantCloudUpdateState:2];
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) compactDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Updated library scope %@", &v8, 0xCu);
    }
  }
}

- (void)acceptWithCompletionHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLManagedObject *)self photoLibrary];
  if ([v5 isCloudPhotoLibraryEnabled])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7578038;
    v14 = v4;
    v12 = v5;
    v13 = self;
    v10.receiver = self;
    v10.super_class = PLLibraryScope;
    [(PLShare *)&v10 acceptWithCompletionHandler:v11];

    v6 = v14;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E6994990];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"iCloud Photo Library is not enabled";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [v7 errorWithDomain:v8 code:33 userInfo:v6];
    (*(v4 + 2))(v4, v9);

    goto LABEL_5;
  }

LABEL_6:
}

void __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) libraryServicesManager];
    v5 = [v4 cloudPhotoLibraryManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7576F38;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    [v5 performTransactionOnLibraryScopeSynchronizationQueue:v9];
  }
}

void __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E7578848;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v7 = vextq_s8(v3, v3, 8uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke_203;
  v4[3] = &unk_1E7576AA0;
  v5 = *(a1 + 48);
  [v2 performTransaction:v6 completionHandler:v4];
}

uint64_t __46__PLLibraryScope_acceptWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 32) scopeIdentifier];
    v5 = [*(a1 + 32) compactDescription];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Accepted library scope: %{public}@, %{public}@, %@", &v7, 0x20u);
  }

  [*(a1 + 32) setStatus:3];
  [*(a1 + 32) setPreviewState:0];
  [*(a1 + 32) _confirmAllRemainingOnboardingPreviewAssetsWithProgress:0 photoLibrary:*(a1 + 40)];
  return [*(a1 + 32) setScopeSyncingState:1];
}

- (id)cplScopeChange
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode])
  {
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PLLibraryScope *)self debugDescription];
      v14 = 138412546;
      v15 = v5;
      v16 = 2080;
      v17 = "[PLLibraryScope cplScopeChange]";
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring %@ in %s since it was created in local only mode", &v14, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v7 = [(PLLibraryScope *)self scopeIdentifier];
    if (!v7)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PLLibraryScope.m" lineNumber:912 description:@"Missing scope identifier for libraryScope share"];
    }

    v6 = [MEMORY[0x1E6994AF0] newScopeChangeWithScopeIdentifier:v7 type:{-[PLShare scopeType](self, "scopeType")}];
    v8 = [(PLShare *)self cplShare];
    [v6 setShare:v8];
    [v6 setActivated:{-[PLLibraryScope scopeSyncingState](self, "scopeSyncingState") == 1}];
    if ([MEMORY[0x1E6994AF0] serverSupportsLibraryShareSettingsRecordSyncing])
    {
      v9 = [(PLLibraryScope *)self cloudSyncableRulesData];
      [v6 setUserDefinedRules:v9];
    }

    if ([MEMORY[0x1E6994AF0] serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
    {
      v10 = [(PLLibraryScope *)self lastParticipantAssetTrashNotificationViewedDate];
      [v6 setUserViewedParticipantTrashNotificationDate:v10];
    }

    v11 = [(PLLibraryScope *)self title];
    [v6 setTitle:v11];
  }

  return v6;
}

- (id)scopedIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLLibraryScope.m" lineNumber:901 description:{@"%@ are synchronized as scope changes and don't have a scoped identifier", objc_opt_class()}];

  return 0;
}

- (BOOL)supportsCloudUpload
{
  if ([(PLLibraryScope *)self status]!= 1 || [(PLLibraryScope *)self localPublishState]!= 2 || (v3 = [(PLLibraryScope *)self scopeSyncingState], v3 != 1))
  {
    LOBYTE(v3) = [(PLLibraryScope *)self status]== 3 && [(PLLibraryScope *)self localPublishState]== 2 && [(PLLibraryScope *)self scopeSyncingState]== 1;
  }

  return v3;
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __34__PLLibraryScope_isSyncableChange__block_invoke;
  v15 = &unk_1E75781E8;
  v16 = self;
  pl_dispatch_once();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(PLLibraryScope *)self changedValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([isSyncableChange_syncedProperties containsObject:*(*(&v8 + 1) + 8 * i)])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

void __34__PLLibraryScope_isSyncableChange__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"rulesData", @"localPublishState", @"lastParticipantAssetTrashNotificationViewedDate", 0}];
  v1 = isSyncableChange_syncedProperties;
  isSyncableChange_syncedProperties = v0;
}

- (void)userViewedAssetTrashNotificationWithManagedObjectContext:(id)a3
{
  v4 = [(PLLibraryScope *)self lastParticipantAssetTrashNotificationDate];
  [(PLLibraryScope *)self setLastParticipantAssetTrashNotificationViewedDate:v4];
}

- (void)stopTrackingParticipantAssetTrashedStateIfNeeded
{
  v3 = [(PLLibraryScope *)self lastParticipantAssetTrashNotificationDate];

  if (v3)
  {

    [(PLLibraryScope *)self setLastParticipantAssetTrashNotificationDate:0];
  }
}

- (void)startTrackingParticipantAssetTrashStateIfNeeded
{
  if (PLIsSharedLibraryAssetTrashedByParticipantsNotificationEnabled())
  {
    v3 = [(PLLibraryScope *)self lastParticipantAssetTrashNotificationDate];

    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF00] date];
      [(PLLibraryScope *)self setLastParticipantAssetTrashNotificationDate:v4];
    }
  }
}

- (void)_insertOwnedParticipantInLibrary:(id)a3 unitTestMode:(BOOL)a4
{
  v4 = a4;
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PLAccountStore pl_sharedAccountStore];
  v8 = [v7 cachedPrimaryAppleAccount];
  v9 = [(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode];
  if (v4)
  {
    v10 = @"owner@unittest.com";
  }

  else
  {
    v10 = @"owner@localmode.com";
  }

  if (v4 || v9)
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    v10 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = [(PLShare *)self compactDescription];
      v24 = 138412290;
      v25 = v23;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch account store to insert owner participant into libraryScope %@", &v24, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = [v8 username];
  if (v10)
  {
LABEL_8:
    v11 = [v6 managedObjectContext];
    v12 = [PLShareParticipant insertInManagedObjectContext:v11];

    [v12 setEmailAddress:v10];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    [v12 setUuid:v14];

    [v12 setIsCurrentUser:1];
    [v12 setRole:1];
    [v12 setPermission:3];
    if ([(PLLibraryScope *)self _libraryScopeWasCreatedInLocalOnlyMode])
    {
      v15 = [v8 aa_firstName];
      v16 = [v8 aa_lastName];
      v17 = PLPersonNameComponentsWithFirstAndLastName();
      [v12 setNameComponents:v17];
    }

    v18 = MEMORY[0x1E695DFD8];
    v28[0] = v12;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v20 = [v18 setWithArray:v19];
    [(PLLibraryScope *)self setParticipants:v20];

    v21 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(PLShare *)self compactDescription];
      v24 = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Inserted owner participant %@ into libraryScope %@", &v24, 0x16u);
    }

LABEL_13:
  }
}

- (BOOL)shouldEnableRulesChangeTracker
{
  if ([(PLLibraryScope *)self autoSharePolicy]== 1)
  {
    return 1;
  }

  if ([(PLLibraryScope *)self autoSharePolicy]!= 2)
  {
    return 0;
  }

  v4 = [(PLLibraryScope *)self rulesData];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)libraryScopeIsActive
{
  v3 = objc_opt_class();
  v4 = [(PLLibraryScope *)self scopeSyncingState];

  return [v3 libraryScopeIsActiveWithScopeSyncingState:v4];
}

- (void)prepareForDeletion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PLLibraryScope;
  [(PLShare *)&v14 prepareForDeletion];
  v4 = [(PLLibraryScope *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = [v4 mergingChanges];
  if ((v5 & 1) == 0)
  {
    v5 = [(PLShare *)self recordCloudDeletionIfNeeded];
  }

  if (MEMORY[0x19EAEE230](v5) && PLIsAssetsd())
  {
    v6 = [v4 mergePolicy];
    if (([v6 isResolvingConflicts] & 1) == 0)
    {
      v7 = [(PLLibraryScope *)self uuid];

      if (!v7 || (*(&self->super.super._willSaveCallCount + 3) & 1) != 0)
      {
        goto LABEL_10;
      }

      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PLLibraryScope.m" lineNumber:576 description:@"Must call -[PLLibraryScope incrementallyDeleteAndSaveWithError:] prior to deleting a LibraryScope object."];
    }
  }

LABEL_10:
  if (PLShouldLogRegisteredEvent())
  {
    v15 = @"PhotoSharingEnabled";
    v16[0] = MEMORY[0x1E695E110];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    PLLogRegisteredEvent();
  }

  PLResetSharedLibraryAssetTrashedByParticipantsNotificationKey();
  v8 = [(PLLibraryScope *)self participants];
  v9 = [v8 valueForKey:@"uuid"];

  if ([v9 count])
  {
    v10 = objc_opt_class();
    v11 = [v9 allObjects];
    v12 = [(PLManagedObject *)self photoLibrary];
    v13 = [v12 libraryBundle];
    [v10 informRapportToRemoveShareParticipantUUIDs:v11 photoLibraryBundle:v13];
  }

LABEL_15:
}

- (void)_verifyCurrentUserParticipantExists
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PLManagedObject *)self photoLibrary];
  if ([v3 isUnitTesting])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = MEMORY[0x19EAEE520]() ^ 1;
  }

  if (([(PLLibraryScope *)self isDeleted]& 1) == 0)
  {
    if (MEMORY[0x19EAEE240]())
    {
      v5 = [(PLShare *)self currentUserParticipant];
      v6 = (v5 == 0) & v4;

      if (v6 == 1)
      {
        v7 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Triggering tap to radar for LibraryScope with no current user", &v11, 2u);
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTR: Inconsistent iCloud Shared Library participant state"];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared Library does not have a current user participant. This is an inconsistent state."];
        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Inconsistent iCloud Shared Library participant state detected" message:@"Your iCloud Shared Library has experienced an unexpected state radarTitle:please file a Radar against Photos to help us diagnose the issue" radarDescription:v8, v9];
        v10 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_FAULT, "%{public}@", &v11, 0xCu);
        }
      }
    }
  }
}

- (void)setScopeSyncingState:(signed __int16)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PLLibraryScope_setScopeSyncingState___block_invoke;
  v6[3] = &unk_1E7566230;
  objc_copyWeak(&v7, &location);
  v8 = v3;
  [(PLManagedObject *)self pl_safeSetValue:v5 forKey:@"scopeSyncingState" valueDidChangeHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__PLLibraryScope_setScopeSyncingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [objc_opt_class() libraryScopeIsActiveWithScopeSyncingState:*(a1 + 40)];
    v3 = v8;
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = [v8 photoLibrary];
      v7 = [v6 managedObjectContext];
      [v5 _cleanupLocalPreviewLibraryScopesInManagedObjectContext:v7];

      v3 = v8;
    }
  }
}

- (void)didSave
{
  if (*(&self->super.super._willSaveCallCount + 2) == 1)
  {
    *(&self->super.super._willSaveCallCount + 2) = 0;
    v4 = objc_opt_class();
    v6 = [(PLLibraryScope *)self managedObjectContext];
    v5 = [v4 resetLibraryScopeAssetStatesWithManagedObjectContext:v6];
  }
}

- (void)willSave
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PLLibraryScope;
  [(PLManagedObject *)&v18 willSave];
  v3 = [(PLLibraryScope *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PLLibraryScope *)self isDeleted])
    {
      *(&self->super.super._willSaveCallCount + 2) = 1;
    }

    v4 = [(PLLibraryScope *)self changedValues];
    v5 = [v4 objectForKey:@"scopeSyncingState"];

    v6 = v5 != 0;
    if (v5 && [(PLLibraryScope *)self libraryScopeIsActive]&& [(PLLibraryScope *)self trashedState]== 1)
    {
      v7 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = [(PLLibraryScope *)self scopeIdentifier];
        v9 = [(PLLibraryScope *)self uuid];
        *buf = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "LibraryScope %{public}@ for asset %{public}@ is active but in trashed state, this is an invalid state. Untrashing LibraryScope", buf, 0x16u);
      }

      [(PLShare *)self untrash];
    }

    if ((-[PLLibraryScope isInserted](self, "isInserted") & 1) != 0 || (-[PLLibraryScope isDeleted](self, "isDeleted") & 1) != 0 || ([v4 objectForKey:@"participants"], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v3 delayedSaveActions];
      [v11 recordLibraryScopeParticipantsUpdateForLibraryScope:self];

      [(PLLibraryScope *)self _verifyCurrentUserParticipantExists];
      v6 = 1;
    }

    v12 = [v4 objectForKey:@"rulesData"];
    if (v12)
    {
      v13 = v12;
      v14 = [(PLLibraryScope *)self libraryScopeIsActive];

      if (v14)
      {
        v15 = [v3 delayedSaveActions];
        [v15 recordLibraryScopeRulesUpdated];
      }
    }

    if (v6)
    {
      v16 = [(PLManagedObject *)self photoLibrary];
      v17 = [v16 isUnitTesting];

      if ((v17 & 1) == 0)
      {
        [objc_opt_class() updateLibraryScopeActiveDefaultsWithManagedObjectContext:v3];
      }
    }
  }
}

- (BOOL)_libraryScopeWasCreatedInLocalOnlyMode
{
  v3 = objc_opt_class();
  v4 = [(PLLibraryScope *)self scopeIdentifier];
  LOBYTE(v3) = [v3 libraryScopeScopeIdentifierWasCreatedInLocalOnlyMode:v4];

  return v3;
}

@end