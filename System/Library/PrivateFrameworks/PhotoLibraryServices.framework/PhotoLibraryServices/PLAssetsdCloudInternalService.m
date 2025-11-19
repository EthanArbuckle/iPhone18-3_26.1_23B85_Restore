@interface PLAssetsdCloudInternalService
- (PLAssetsdCloudInternalService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4;
- (id)activateLibraryScopeWithUUID:(id)a3 reply:(id)a4;
- (id)markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID:(id)a3 excludePersonUUIDs:(id)a4 reply:(id)a5;
- (void)acceptShareWithUUID:(id)a3 reply:(id)a4;
- (void)cloudSharingSpaceManagementRequestWithType:(unint64_t)a3 optionalBytesToPurge:(unint64_t)a4 reply:(id)a5;
- (void)confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID:(id)a3 reply:(id)a4;
- (void)createPhotostreamAlbumWithStreamID:(id)a3;
- (void)deactivateLibraryScopeWithUUID:(id)a3 reply:(id)a4;
- (void)declineCollectionShareWithUUID:(id)a3 reply:(id)a4;
- (void)emailAddressForKey:(int64_t)a3 reply:(id)a4;
- (void)enablePhotostreamsWithStreamID:(id)a3;
- (void)fetchShareWithURL:(id)a3 ignoreExistingShare:(BOOL)a4 reply:(id)a5;
- (void)forceParticipantAssetTrashNotificationWithReply:(id)a3;
- (void)forceSyncMomentShareWithUUID:(id)a3 reply:(id)a4;
- (void)getCPLConfigurationValueForKey:(id)a3 reply:(id)a4;
- (void)getCPLSettingsWithReply:(id)a3;
- (void)getCurrentTransferProgress:(id)a3;
- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 reply:(id)a4;
- (void)getNotUploadedCount:(id)a3;
- (void)getResetSyncStatusWithReply:(id)a3;
- (void)getSystemBudgetsWithReply:(id)a3;
- (void)isComputeSyncEnabledForDirection:(int64_t)a3 reply:(id)a4;
- (void)isReadyForAnalysisCPLInitialDownloadCompletedWithReply:(id)a3;
- (void)isReadyForAnalysisQuickCheckWithReply:(id)a3;
- (void)isReadyForAnalysisWithReply:(id)a3;
- (void)isReadyForCloudPhotoLibraryWithReply:(id)a3;
- (void)keyForEmailAddress:(id)a3 reply:(id)a4;
- (void)markResourcesPurgeableWithUrgency:(int64_t)a3 assetUuids:(id)a4 reply:(id)a5;
- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 reply:(id)a6;
- (void)personInfoDictionaryForPersonID:(id)a3 reply:(id)a4;
- (void)publishShareWithUUID:(id)a3 reply:(id)a4;
- (void)queryUserIdentitiesWithEmails:(id)a3 phoneNumbers:(id)a4 reply:(id)a5;
- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 reply:(id)a5;
- (void)refreshLibraryScopeWithIdentifier:(id)a3 reply:(id)a4;
- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 reply:(id)a7;
- (void)reportInvitationAsSpamForCollectionShareWithUUID:(id)a3 reply:(id)a4;
- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 reply:(id)a4;
- (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply:(id)a3;
- (void)sendInvitationsForCollectionShareWithUUID:(id)a3 participantUUIDs:(id)a4 reply:(id)a5;
- (void)setCloudPhotoLibraryEnabledState:(BOOL)a3;
- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4;
- (void)setPersonInfoDictionary:(id)a3 forPersonID:(id)a4;
- (void)setPrefetchMode:(int64_t)a3 reply:(id)a4;
- (void)sharedLibraryRampCheckWithReply:(id)a3;
- (void)shouldAutoEnableiCPLOnOSXWithReply:(id)a3;
- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 reply:(id)a6;
- (void)syncCloudPhotoLibrary;
- (void)unsharePendingAssetsSharedToScopeWithIdentifier:(id)a3;
- (void)updateSharedAlbumsCachedServerConfigurationLimits;
- (void)userViewedSharedLibraryParticipantAssetTrashNotificationWithReply:(id)a3;
@end

@implementation PLAssetsdCloudInternalService

- (void)isComputeSyncEnabledForDirection:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService isComputeSyncEnabledForDirection:reply:]"];
  v10 = 0;
  v8 = [PLManagedAsset isComputeSyncEnabledForDirection:a3 library:v7 debugMode:1 debugLog:&v10];
  v9 = v10;
  v6[2](v6, v8, v9);
}

- (void)setPrefetchMode:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v8 = [v7 libraryBundle];
  v11 = 0;
  v9 = [PLCPLSettings setPrefetchMode:a3 withLibraryBundle:v8 error:&v11];
  v10 = v11;

  v6[2](v6, v9, v10);
}

- (void)getCPLSettingsWithReply:(id)a3
{
  v5 = a3;
  v7 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v6 = [v7 cplSettings];
  (*(a3 + 2))(v5, v6);
}

- (void)getCPLConfigurationValueForKey:(id)a3 reply:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  *sel = 0u;
  v16 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v16) = v8;
  if (v8)
  {
    *(&v16 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getCPLConfigurationValueForKey:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v16 + 1), (&v18 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v10 = [v9 directServerConfiguration];

  [v10 check];
  v11 = [v10 valueForKey:v6];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v6;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "CPL configuration value for key %{public}@ is not a dictionary", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  v7[2](v7, v11);

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v18, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)markResourcesPurgeableWithUrgency:(int64_t)a3 assetUuids:(id)a4 reply:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: markResourcesPurgeableWithUrgency:assetUuids:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v32 + 1);
    *(&v32 + 1) = v11;

    os_activity_scope_enter(v11, (&v33 + 8));
  }

  v13 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService markResourcesPurgeableWithUrgency:assetUuids:reply:]"];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"localAvailability", 1];
    v15 = [v8 firstObject];
    v16 = [v15 isEqualToString:@"all"];

    if ((v16 & 1) == 0)
    {
      v17 = MEMORY[0x1E696AB28];
      v35[0] = v14;
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset.uuid", v8];
      v35[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v20 = [v17 andPredicateWithSubpredicates:v19];

      v14 = v20;
    }

    v21 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v22 = [v21 cloudPhotoLibraryManager];
    if (v22)
    {
      if (a3 == -1)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __84__PLAssetsdCloudInternalService_markResourcesPurgeableWithUrgency_assetUuids_reply___block_invoke;
        v30[3] = &unk_1E7576AA0;
        v31 = v9;
        [v22 clearPurgeableResourcesMatchingPredicate:v14 inLibrary:v13 completionHandler:v30];
        v23 = v31;
      }

      else
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __84__PLAssetsdCloudInternalService_markResourcesPurgeableWithUrgency_assetUuids_reply___block_invoke_2;
        v28[3] = &unk_1E7576AA0;
        v29 = v9;
        [v22 markPurgeableResourcesMatchingPredicate:v14 urgency:a3 inLibrary:v13 completionHandler:v28];
        v23 = v29;
      }
    }

    else
    {
      v23 = PLErrorCreate();
      (*(v9 + 2))(v9, 0, v23);
    }
  }

  else
  {
    v14 = PLErrorCreate();
    (*(v9 + 2))(v9, 0, v14);
  }

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v37 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, v26, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)unsharePendingAssetsSharedToScopeWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: unsharePendingAssetsSharedToScopeWithIdentifier:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v7 = [v6 cloudPhotoLibraryManager];
  [v7 startUnsharingPendingAssetsSharedToScopeWithIdentifier:v4];

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 reply:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getLibraryScopeStatusCountsForScopeWithIdentifier:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v12 = [v11 cloudPhotoLibraryManager];

  if (v12)
  {
    v13 = [v11 cloudPhotoLibraryManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PLAssetsdCloudInternalService_getLibraryScopeStatusCountsForScopeWithIdentifier_reply___block_invoke;
    v21[3] = &unk_1E756BAB0;
    v22 = v7;
    [v13 getLibraryScopeStatusCountsForScopeWithIdentifier:v6 completionHandler:v21];

    v14 = v22;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"PLCloudPhotoLibraryManager not available";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v14];
    (*(v7 + 2))(v7, 0, v16);
  }

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)refreshLibraryScopeWithIdentifier:(id)a3 reply:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: refreshLibraryScopeWithIdentifier:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v12 = [v11 cloudPhotoLibraryManager];

  if (v12)
  {
    v13 = [v11 cloudPhotoLibraryManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__PLAssetsdCloudInternalService_refreshLibraryScopeWithIdentifier_reply___block_invoke;
    v21[3] = &unk_1E756BA88;
    v22 = v7;
    [v13 refreshLibraryScopeWithIdentifier:v6 completionHandler:v21];

    v14 = v22;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"PLCloudPhotoLibraryManager not available";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v14];
    (*(v7 + 2))(v7, 0, v16);
  }

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)forceParticipantAssetTrashNotificationWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService forceParticipantAssetTrashNotificationWithReply:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PLAssetsdCloudInternalService_forceParticipantAssetTrashNotificationWithReply___block_invoke;
  v8[3] = &unk_1E7577C08;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 performTransactionAndWait:v8];
}

void __81__PLAssetsdCloudInternalService_forceParticipantAssetTrashNotificationWithReply___block_invoke(uint64_t a1)
{
  v2 = [PLLibraryScope fireParticipantAssetTrashNotificationIfNeededWithPhotoLibrary:*(a1 + 32) forceNotification:1];
  (*(*(a1 + 40) + 16))();
}

- (void)userViewedSharedLibraryParticipantAssetTrashNotificationWithReply:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__37202;
  v12[4] = __Block_byref_object_dispose__37203;
  v13 = 0;
  v5 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService userViewedSharedLibraryParticipantAssetTrashNotificationWithReply:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__PLAssetsdCloudInternalService_userViewedSharedLibraryParticipantAssetTrashNotificationWithReply___block_invoke;
  v8[3] = &unk_1E7577918;
  v6 = v5;
  v9 = v6;
  v11 = v12;
  v7 = v4;
  v10 = v7;
  [v6 performTransactionAndWait:v8];

  _Block_object_dispose(v12, 8);
}

void __99__PLAssetsdCloudInternalService_userViewedSharedLibraryParticipantAssetTrashNotificationWithReply___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v2];

  if (v3)
  {
    v4 = [*(a1 + 32) managedObjectContext];
    [v3 userViewedAssetTrashNotificationWithManagedObjectContext:v4];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"No active Library scope found";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v5 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)sharedLibraryRampCheckWithReply:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: sharedLibraryRampCheckWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 cloudPhotoLibraryManager];
  v10 = [v9 cplConfiguration];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = [v10 valueForKey:@"feature.sharedlibrary.skiprampcheck"];
  v13 = v12;
  if (v12 && [v12 BOOLValue])
  {
    v14 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "PLShouldShowSharedLibrarySetting: Returning YES because CPLConfiguration says we should skip the ramp check", buf, 2u);
    }

    v4[2](v4, 1, 0);
    goto LABEL_16;
  }

  v15 = [v11 valueForKey:@"feature.sharedlibrary.hidesetting"];
  v16 = v15;
  if (!v15 || ![v15 BOOLValue])
  {

LABEL_15:
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__PLAssetsdCloudInternalService_sharedLibraryRampCheckWithReply___block_invoke;
    v22[3] = &unk_1E75774A8;
    v23 = v4;
    [v9 sharedLibraryRampCheckWithCompletionHandler:v22];
    v13 = v23;
    goto LABEL_16;
  }

  v17 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "PLShouldShowSharedLibrarySetting: Returning NO because CPLConfiguration says we should hide the setting", buf, 2u);
  }

  v4[2](v4, 0, 0);
LABEL_16:

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 reply:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v36 = 0u;
  *sel = 0u;
  v35 = 0u;
  v15 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v35) = v15;
  if (v15)
  {
    v16 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v17 = *(&v35 + 1);
    *(&v35 + 1) = v16;

    os_activity_scope_enter(v16, (&v36 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__37202;
  v41 = __Block_byref_object_dispose__37203;
  v42 = 0;
  v18 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:reply:]"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __136__PLAssetsdCloudInternalService_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_reply___block_invoke;
  v27[3] = &unk_1E756BA60;
  v19 = v13;
  v28 = v19;
  v20 = v18;
  v29 = v20;
  v21 = v12;
  v30 = v21;
  v33 = a5;
  v34 = a6;
  v22 = v14;
  v31 = v22;
  p_buf = &buf;
  [v20 performTransactionAndWait:v27];

  _Block_object_dispose(&buf, 8);
  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }
}

void __136__PLAssetsdCloudInternalService_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_reply___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithScopeIdentifier:v2 includeTrashed:1 inManagedObjectContext:v3];

  if (v4)
  {
    [v4 removeParticipantsWithParticipantUUIDs:*(a1 + 48) fromLibraryScopeWithIdentifier:*(a1 + 32) retentionPolicy:*(a1 + 72) exitSource:*(a1 + 80) completionHandler:*(a1 + 56)];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope with scopeIdentifier %@ not found", *(a1 + 32), *MEMORY[0x1E696A578]];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    (*(*(a1 + 56) + 16))();
  }
}

- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 reply:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  v12 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v30) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: startExitFromLibraryScopeWithIdentifier:retentionPolicy:exitSource:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v30 + 1);
    *(&v30 + 1) = v13;

    os_activity_scope_enter(v13, (&v31 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__37202;
  v36 = __Block_byref_object_dispose__37203;
  v37 = 0;
  v15 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService startExitFromLibraryScopeWithIdentifier:retentionPolicy:exitSource:reply:]"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__PLAssetsdCloudInternalService_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_reply___block_invoke;
  v23[3] = &unk_1E756BA38;
  v16 = v10;
  v24 = v16;
  v17 = v15;
  v25 = v17;
  v28 = a4;
  v29 = a5;
  v18 = v11;
  v26 = v18;
  p_buf = &buf;
  [v17 performTransactionAndWait:v23];

  _Block_object_dispose(&buf, 8);
  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }
}

void __106__PLAssetsdCloudInternalService_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_reply___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithScopeIdentifier:v2 includeTrashed:1 inManagedObjectContext:v3];

  if (v4)
  {
    [v4 startExitWithRetentionPolicy:*(a1 + 64) exitSource:*(a1 + 72) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope with scopeIdentifier %@ not found", *(a1 + 32), *MEMORY[0x1E696A578]];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    (*(*(a1 + 48) + 16))();
  }
}

- (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v18 + 1);
    *(&v18 + 1) = v6;

    os_activity_scope_enter(v6, (&v19 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__37202;
  v24 = __Block_byref_object_dispose__37203;
  v25 = 0;
  v8 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PLAssetsdCloudInternalService_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply___block_invoke;
  v15[3] = &unk_1E7578910;
  p_buf = &buf;
  v9 = v8;
  v16 = v9;
  [v9 performTransactionAndWait:v15];
  v10 = v4[2];
  if (*(*(&buf + 1) + 40))
  {
    v10(v4, 0);
  }

  else
  {
    v10(v4, 1);
  }

  _Block_object_dispose(&buf, 8);
  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }
}

void __99__PLAssetsdCloudInternalService_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [PLLibraryScope resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithManagedObjectContext:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 reply:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20 = 0u;
  *sel = 0u;
  v19 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: requestDeviceLibraryConfigurationChange:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v19 + 1);
    *(&v19 + 1) = v8;

    os_activity_scope_enter(v8, (&v20 + 8));
  }

  v10 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v11 = [v10 cloudPhotoLibraryManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PLAssetsdCloudInternalService_requestDeviceLibraryConfigurationChange_reply___block_invoke;
  v17[3] = &unk_1E756BA10;
  v12 = v6;
  v18 = v12;
  [v11 requestDeviceLibraryConfigurationChange:a3 completionHandler:v17];

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v20)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v20;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID:(id)a3 reply:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__37202;
  v31 = __Block_byref_object_dispose__37203;
  v32 = 0;
  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID:reply:]"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__PLAssetsdCloudInternalService_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID_reply___block_invoke;
  v18[3] = &unk_1E7578898;
  v12 = v6;
  v19 = v12;
  v13 = v11;
  v20 = v13;
  v21 = v23;
  p_buf = &buf;
  [v13 performTransactionAndWait:v18];
  v7[2](v7);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v23, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }
}

void __104__PLAssetsdCloudInternalService_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID_reply___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) libraryServicesManager];
    v6 = [v5 databaseContext];
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v4 confirmAllRemainingOnboardingPreviewAssetsWithProgress:0 databaseContext:v6 withError:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope %@ not found", *(a1 + 32)];
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v9 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v6];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID:(id)a3 excludePersonUUIDs:(id)a4 reply:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0u;
  *sel = 0u;
  v33 = 0u;
  v11 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v33) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID:excludePersonUUIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v33 + 1);
    *(&v33 + 1) = v12;

    os_activity_scope_enter(v12, (&v34 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__37202;
  v39 = __Block_byref_object_dispose__37203;
  v40 = 0;
  v14 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v15 = [v14 databaseContext];
  v16 = [v15 newShortLivedCplLibraryWithNameSuffix:"-[PLAssetsdCloudInternalService markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID:excludePersonUUIDs:reply:]"];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __125__PLAssetsdCloudInternalService_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID_excludePersonUUIDs_reply___block_invoke;
  v27[3] = &unk_1E756FB10;
  v17 = v8;
  v28 = v17;
  v18 = v16;
  v29 = v18;
  p_buf = &buf;
  v19 = v9;
  v30 = v19;
  v20 = v10;
  v31 = v20;
  [v18 performTransactionAndWait:v27];
  v21 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v24, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  return v21;
}

void __125__PLAssetsdCloudInternalService_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID_excludePersonUUIDs_reply___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __125__PLAssetsdCloudInternalService_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID_excludePersonUUIDs_reply___block_invoke_2;
    v13[3] = &unk_1E7577430;
    v5 = *(a1 + 48);
    v14 = *(a1 + 56);
    v6 = [v4 markOnboardingPreviewAssetsByProcessingRulesWithExcludePersonUUIDs:v5 completionHandler:v13];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope %@ not found", *(a1 + 32)];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [v10 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v12];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)deactivateLibraryScopeWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: deactivateLibraryScopeWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService deactivateLibraryScopeWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PLAssetsdCloudInternalService_deactivateLibraryScopeWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __70__PLAssetsdCloudInternalService_deactivateLibraryScopeWithUUID_reply___block_invoke(id *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PLAssetsdCloudInternalService_deactivateLibraryScopeWithUUID_reply___block_invoke_2;
    v9[3] = &unk_1E7576050;
    v10 = a1[4];
    v11 = a1[6];
    [v4 deactivateScopeWithCompletionHandler:v9];

    v5 = v10;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope %@ not found", a1[4]];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = [v6 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v8];

    (*(a1[6] + 2))();
  }
}

void __70__PLAssetsdCloudInternalService_deactivateLibraryScopeWithUUID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to deactivate library scope uuid: %{public}@ (%{public}@)", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Deactivated library scope with uuid: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)activateLibraryScopeWithUUID:(id)a3 reply:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v26) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: activateLibraryScopeWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v26 + 1);
    *(&v26 + 1) = v9;

    os_activity_scope_enter(v9, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__37202;
  v32 = __Block_byref_object_dispose__37203;
  v33 = 0;
  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService activateLibraryScopeWithUUID:reply:]"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__PLAssetsdCloudInternalService_activateLibraryScopeWithUUID_reply___block_invoke;
  v21[3] = &unk_1E756B9E8;
  v12 = v6;
  v22 = v12;
  v13 = v11;
  v23 = v13;
  p_buf = &buf;
  v14 = v7;
  v24 = v14;
  [v13 performTransactionAndWait:v21];
  v15 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  return v15;
}

void __68__PLAssetsdCloudInternalService_activateLibraryScopeWithUUID_reply___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLLibraryScope shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PLAssetsdCloudInternalService_activateLibraryScopeWithUUID_reply___block_invoke_2;
    v12[3] = &unk_1E7576050;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v5 = [v4 activateScopeWithCompletionHandler:v12];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = v13;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library scope %@ not found", *(a1 + 32)];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v9 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v11];

    (*(*(a1 + 48) + 16))();
  }
}

void __68__PLAssetsdCloudInternalService_activateLibraryScopeWithUUID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to activate library scope uuid: %{public}@ (%{public}@)", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Activated library scope with uuid: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getResetSyncStatusWithReply:(id)a3
{
  v7 = a3;
  v4 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v5 = [v4 cloudPhotoLibraryManager];

  v6 = [v5 currentResetSyncType];
  if (v6 <= 6)
  {
    v7[2](v7, qword_19C60B940[v6]);
  }
}

- (void)sendInvitationsForCollectionShareWithUUID:(id)a3 participantUUIDs:(id)a4 reply:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v11 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: sendInvitationsForCollectionShareWithUUID:participantUUIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v28 + 1);
    *(&v28 + 1) = v12;

    os_activity_scope_enter(v12, (&v29 + 8));
  }

  v14 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService sendInvitationsForCollectionShareWithUUID:participantUUIDs:reply:]"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__PLAssetsdCloudInternalService_sendInvitationsForCollectionShareWithUUID_participantUUIDs_reply___block_invoke;
  v23[3] = &unk_1E7573C00;
  v15 = v8;
  v24 = v15;
  v16 = v14;
  v25 = v16;
  v17 = v10;
  v27 = v17;
  v18 = v9;
  v26 = v18;
  [v16 performBlock:v23];

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __98__PLAssetsdCloudInternalService_sendInvitationsForCollectionShareWithUUID_participantUUIDs_reply___block_invoke(id *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (!v4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Collection share %@ not found", a1[4]];
    v20 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v12 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v14];

    (*(a1[7] + 2))();
    goto LABEL_8;
  }

  v5 = [v4 status];
  if ((v5 - 2) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 1)
  {
LABEL_6:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__PLAssetsdCloudInternalService_sendInvitationsForCollectionShareWithUUID_participantUUIDs_reply___block_invoke_2;
    v15[3] = &unk_1E7578038;
    v10 = a1[6];
    v18 = a1[7];
    v16 = a1[6];
    v17 = a1[4];
    [v4 sendInvitationsForShareParticipantUUIDs:v10 completionHandler:v15];

    v11 = v18;
LABEL_8:

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_5:
    v6 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot resend invitations for participants of a non owned collection share %@", a1[4]];
    v22[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v9 = [v6 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:102 userInfo:v8];

    (*(a1[7] + 2))();
    goto LABEL_6;
  }

LABEL_9:
}

void __98__PLAssetsdCloudInternalService_sendInvitationsForCollectionShareWithUUID_participantUUIDs_reply___block_invoke_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to resend invitations for participants of share: %@", &v7, 0xCu);
    }
  }

  else
  {
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = 138412546;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Resent invitations for participants %@ of share %{public}@", &v7, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)reportInvitationAsSpamForCollectionShareWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reportInvitationAsSpamForCollectionShareWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService reportInvitationAsSpamForCollectionShareWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88__PLAssetsdCloudInternalService_reportInvitationAsSpamForCollectionShareWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __88__PLAssetsdCloudInternalService_reportInvitationAsSpamForCollectionShareWithUUID_reply___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (!v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Collection share %@ not found", a1[4]];
    v17 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = v6;
    v10 = 100;
LABEL_10:
    v11 = [v9 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:v10 userInfo:v8];

    (*(a1[6] + 2))();
    goto LABEL_11;
  }

  v5 = [v4 status];
  if (v5 <= 1)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5 == 3)
  {
LABEL_9:
    v12 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot report invitation as spam for an owned collection share %@", a1[4]];
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = v12;
    v10 = 102;
    goto LABEL_10;
  }

  if (v5 == 2)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__PLAssetsdCloudInternalService_reportInvitationAsSpamForCollectionShareWithUUID_reply___block_invoke_2;
    v13[3] = &unk_1E7576050;
    v15 = a1[6];
    v14 = a1[4];
    [v4 markPendingInvitationAsSpamWithCompletionHandler:v13];

    v11 = v15;
LABEL_11:
  }
}

void __88__PLAssetsdCloudInternalService_reportInvitationAsSpamForCollectionShareWithUUID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to report invitation as spame for share: %@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Reported invitation as spam for share %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)declineCollectionShareWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: declineCollectionShareWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService declineCollectionShareWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PLAssetsdCloudInternalService_declineCollectionShareWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __70__PLAssetsdCloudInternalService_declineCollectionShareWithUUID_reply___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (!v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Collection share %@ not found", a1[4]];
    v17 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = v6;
    v10 = 100;
LABEL_10:
    v11 = [v9 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:v10 userInfo:v8];

    (*(a1[6] + 2))();
    goto LABEL_11;
  }

  v5 = [v4 status];
  if (v5 <= 1)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5 == 3)
  {
LABEL_9:
    v12 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot decline an owned collection share %@", a1[4]];
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = v12;
    v10 = 102;
    goto LABEL_10;
  }

  if (v5 == 2)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PLAssetsdCloudInternalService_declineCollectionShareWithUUID_reply___block_invoke_2;
    v13[3] = &unk_1E7576050;
    v15 = a1[6];
    v14 = a1[4];
    [v4 declineWithCompletionHandler:v13];

    v11 = v15;
LABEL_11:
  }
}

void __70__PLAssetsdCloudInternalService_declineCollectionShareWithUUID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to decline share: %@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Declined share %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)forceSyncMomentShareWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: forceSyncMomentShareWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService forceSyncMomentShareWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PLAssetsdCloudInternalService_forceSyncMomentShareWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __68__PLAssetsdCloudInternalService_forceSyncMomentShareWithUUID_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLMomentShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v5 = [v4 status];
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {
LABEL_10:
      v17 = v4;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [PLMomentShare forceSyncMomentShares:v14 photoLibrary:*(a1 + 40)];

      (*(*(a1 + 48) + 16))();
      goto LABEL_11;
    }

    if (v5 == 2)
    {
LABEL_9:
      v10 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot force sync a pending moment share %@", *(a1 + 32)];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [v10 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:102 userInfo:v12];

      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moment share %@ not found", *(a1 + 32)];
    v16 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v6 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v8];

    (*(*(a1 + 48) + 16))();
  }

LABEL_11:
}

- (void)queryUserIdentitiesWithEmails:(id)a3 phoneNumbers:(id)a4 reply:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v11 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v44) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: queryUserIdentitiesWithEmails:phoneNumbers:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v44 + 1);
    *(&v44 + 1) = v12;

    os_activity_scope_enter(v12, (&v45 + 8));
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v8, "count")}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v16)
  {
    v17 = *v41;
    do
    {
      v18 = 0;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [objc_alloc(MEMORY[0x1E6994BC8]) initWithEmail:*(*(&v40 + 1) + 8 * v18)];
        [v14 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v16);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v21)
  {
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = [objc_alloc(MEMORY[0x1E6994BC8]) initWithPhoneNumber:*(*(&v36 + 1) + 8 * v23)];
        [v14 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v21);
  }

  v25 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v26 = [v25 cloudPhotoLibraryManager];

  if (v26)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __82__PLAssetsdCloudInternalService_queryUserIdentitiesWithEmails_phoneNumbers_reply___block_invoke;
    v34[3] = &unk_1E756B9C0;
    v35 = v10;
    [v26 queryUserIdentitiesWithParticipants:v14 completionHandler:v34];
    v27 = v35;
  }

  else
  {
    v28 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48 = @"PLCloudPhotoLibraryManager not available";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v29 = [v28 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v27];
    (*(v10 + 2))(v10, 0, 0, v29);
  }

  if (v44 == 1)
  {
    os_activity_scope_leave((&v45 + 8));
  }

  if (v45)
  {
    v30 = PLRequestGetLog();
    v31 = v30;
    v32 = v45;
    if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      Name = sel_getName(*(&v46 + 1));
      *buf = 136446210;
      v52 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v31, OS_SIGNPOST_INTERVAL_END, v32, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __82__PLAssetsdCloudInternalService_queryUserIdentitiesWithEmails_phoneNumbers_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__PLAssetsdCloudInternalService_queryUserIdentitiesWithEmails_phoneNumbers_reply___block_invoke_2;
    v8[3] = &unk_1E756B998;
    v9 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:v8];
    (*(*(a1 + 32) + 16))();
  }
}

void __82__PLAssetsdCloudInternalService_queryUserIdentitiesWithEmails_phoneNumbers_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 email];
  if (v4 || ([v3 phoneNumber], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "hasiCloudAccount")}];
    [v6 setObject:v7 forKey:v5];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Invalid fetched participant %@", &v8, 0xCu);
    }
  }
}

- (void)acceptShareWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: acceptShareWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService acceptShareWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__PLAssetsdCloudInternalService_acceptShareWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __59__PLAssetsdCloudInternalService_acceptShareWithUUID_reply___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (!v4)
  {
    v11 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Share %@ not found", *(a1 + 32)];
    v20 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v9 = v11;
    v10 = 100;
    goto LABEL_6;
  }

  v5 = [v4 status];
  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot accept an owned share %@", *(a1 + 32)];
      v28[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v9 = v6;
      v10 = 102;
LABEL_6:
      v12 = [v9 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:v10 userInfo:v8];

      (*(*(a1 + 48) + 16))();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
LABEL_10:
    v13 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v4 uuid];
      v15 = [v4 scopeIdentifier];
      v16 = [v4 compactDescription];
      *buf = 138543874;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Accepting share: %{public}@, %{public}@, %@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__PLAssetsdCloudInternalService_acceptShareWithUUID_reply___block_invoke_100;
    v17[3] = &unk_1E7577430;
    v18 = *(a1 + 48);
    [v4 acceptWithCompletionHandler:v17];

    goto LABEL_13;
  }

  if (v5 == 3)
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_13:
}

- (void)fetchShareWithURL:(id)a3 ignoreExistingShare:(BOOL)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke;
  v13[3] = &unk_1E756B970;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  v17 = a4;
  [v10 enqueueOperationWithName:@"Fetch Share URL" requiredState:7 executionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v2 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = v2;
  if (v2)
  {
    v3 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: fetchShareWithURL:ignoreExistingShare:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4 = *(&v21 + 1);
    *(&v21 + 1) = v3;

    os_activity_scope_enter(v3, (&v22 + 8));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained newShortLivedLibraryWithName:"-[PLAssetsdCloudInternalService fetchShareWithURL:ignoreExistingShare:reply:]_block_invoke"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_2;
    v16[3] = &unk_1E75760C8;
    v17 = *(a1 + 32);
    v8 = v7;
    v18 = v8;
    v20 = *(a1 + 56);
    v19 = *(a1 + 40);
    [v8 performBlockAndWait:v16];

    v9 = v17;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25 = @"Service was deallocated";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v9 = [v11 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v8];
    (*(v10 + 16))(v10, 0, 0, v9);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_2(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLShare shareWithShareURL:v2 includeTrashed:1 inManagedObjectContext:v3];

  v5 = [v4 uuid];
  if ((*(a1 + 56) & 1) != 0 || !v4)
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_3;
    v15[3] = &unk_1E756B948;
    v16 = v13;
    v17 = v5;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    [PLShare fetchShareFromShareURL:v14 inPhotoLibrary:v16 completionHandler:v15];

    v6 = v16;
  }

  else
  {
    v6 = [v4 uuid];
    if ([v4 trashedState] == 1)
    {
      v7 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v4 uuid];
      v10 = [v8 stringWithFormat:@"Share %@ found but it's trashed", v9];
      v21[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v12 = [v7 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:101 userInfo:v11];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_4;
    v8[3] = &unk_1E75738F8;
    v7 = a1[4];
    v9 = a1[5];
    v10 = a1[4];
    v11 = v6;
    v12 = v5;
    v13 = a1[6];
    v14 = a1[7];
    [v7 performTransactionAndWait:v8];
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void __77__PLAssetsdCloudInternalService_fetchShareWithURL_ignoreExistingShare_reply___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLShare shareWithUUID:v2 includeTrashed:1 inManagedObjectContext:v3];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([*(a1 + 48) isCPLErrorWithCode:23] & 1) != 0 || (objc_msgSend(*(a1 + 48), "isCPLErrorWithCode:", 26) & 1) != 0 || objc_msgSend(*(a1 + 48), "isCPLErrorWithCode:", 25)))
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 56);
      v7 = [*(a1 + 64) pl_redactedShareURL];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Locally existing share has been deleted on server, marking as trashed locally: %{public}@, shareURL: %{public}@", &v8, 0x16u);
    }

    [v4 trash];
  }

  (*(*(a1 + 72) + 16))();
}

- (void)publishShareWithUUID:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: publishShareWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService publishShareWithUUID:reply:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke;
  v19[3] = &unk_1E7576F38;
  v12 = v6;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v13 performBlock:v19];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] managedObjectContext];
  v4 = [PLShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_2;
    v15[3] = &unk_1E756B920;
    v16 = a1[4];
    v17 = a1[6];
    [v4 publishWithCompletionHandler:v15];

    v5 = v16;
  }

  else if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_81;
    v12[3] = &unk_1E756B920;
    v13 = a1[4];
    v14 = a1[6];
    [v4 publishWithCompletionHandler:v12];

    v5 = v13;
  }

  else if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_83;
    v9[3] = &unk_1E756B920;
    v10 = a1[4];
    v11 = a1[6];
    [v4 publishWithCompletionHandler:v9];

    v5 = v10;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Share %@ not found", a1[4]];
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v5 = [v6 errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:100 userInfo:v8];

    (*(a1[6] + 2))();
  }
}

void __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLBackendGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to publish moment share uuid: %{public}@ (%{public}@)", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [v6 pl_redactedShareURL];
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Published moment share with uuid: %{public}@, shareURL: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_81(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLBackendGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to publish library scope uuid: %{public}@ (%{public}@)", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [v6 pl_redactedShareURL];
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Published library scope with uuid: %{public}@, shareURL: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __60__PLAssetsdCloudInternalService_publishShareWithUUID_reply___block_invoke_83(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLBackendGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to publish collection share uuid: %{public}@ (%{public}@)", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [v6 pl_redactedShareURL];
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Published collection share with uuid: %{public}@, shareURL: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 reply:(id)a6
{
  v8 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v26 = 0u;
  *sel = 0u;
  v24 = 0u;
  v12 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = v12;
  if (v12)
  {
    *(&v24 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: overrideSystemBudgetsForSyncSession:pauseReason:systemBudgets:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v24 + 1), (&v26 + 8));
  }

  v13 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v14 = [v13 isCloudPhotoLibraryEnabled];

  if (!v14)
  {
    v17 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
    v18 = 0;
    goto LABEL_12;
  }

  if (v8)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Starting override cellular and battery budget";
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Stopping override cellular and battery budget";
      goto LABEL_10;
    }
  }

  v19 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v20 = [v19 cloudPhotoLibraryManager];

  v18 = [v20 overrideSystemBudgetsForSyncSession:v8 pauseReason:v10 forSystemBudgets:a5];
  v17 = 0;
LABEL_12:
  v11[2](v11, v18, v17);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v26, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getSystemBudgetsWithReply:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getSystemBudgetsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v20 + 1);
    *(&v20 + 1) = v6;

    os_activity_scope_enter(v6, (&v21 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 isCloudPhotoLibraryEnabled];

  if (v9)
  {
    v10 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v11 = [v10 cloudPhotoLibraryManager];

    if (v11)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Getting cellular and battery budget", buf, 2u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__PLAssetsdCloudInternalService_getSystemBudgetsWithReply___block_invoke;
      v18[3] = &unk_1E7577458;
      v19 = v4;
      [v11 getSystemBudgetsWithCompletionHandler:v18];
      v13 = v19;
    }

    else
    {
      v13 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
      (*(v4 + 2))(v4, 0, 0, v13);
    }
  }

  else
  {
    v11 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
    (*(v4 + 2))(v4, 0, 0, v11);
  }

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

void __59__PLAssetsdCloudInternalService_getSystemBudgetsWithReply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (!a3)
  {
    v6 = [v5 objectForKey:*MEMORY[0x1E6994A68]];
    [v6 BOOLValue];

    v7 = [v8 objectForKey:*MEMORY[0x1E6994A60]];
    [v7 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getNotUploadedCount:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getNotUploadedCount:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v31 + 1);
    *(&v31 + 1) = v6;

    os_activity_scope_enter(v6, (&v32 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 isCloudPhotoLibraryEnabled];

  if (v9)
  {
    v10 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService getNotUploadedCount:]"];
    v30 = 0;
    v11 = [PLManagedAsset countOfNotUploadedAssetsInPhotoLibrary:v10 forAssetType:0 error:&v30];
    v12 = v30;
    v29 = v12;
    v13 = [PLManagedAsset countOfNotUploadedAssetsInPhotoLibrary:v10 forAssetType:1 error:&v29];
    v14 = v29;

    v28 = v14;
    v15 = [PLManagedAsset countOfNotUploadedAssetsInPhotoLibrary:v10 forAssetType:2 error:&v28];
    v16 = v28;

    v27 = v16;
    v17 = [PLManagedAsset countOfNotUploadedAssetsInPhotoLibrary:v10 forAssetType:3 error:&v27];
    v18 = v27;

    v19 = 0;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
      v21 = 0;
      v22 = v18;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = v18;
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0;
        v21 = v17 + v15;
        v19 = v11;
        v20 = v13;
      }
    }

    v4[2](v4, v19, v20, v21, v22);
  }

  else
  {
    v10 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
    v4[2](v4, 0, 0, 0, v10);
  }

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getCurrentTransferProgress:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  *sel = 0u;
  v17 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = v5;
  if (v5)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getCurrentTransferProgress:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v19 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v7 = [v6 isCloudPhotoLibraryEnabled];

  if (v7)
  {
    v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v9 = [v8 cloudPhotoLibraryManager];

    *buf = 0u;
    v22 = 0u;
    if (v9)
    {
      [v9 currentTransferProgress];
      v11 = *buf;
      v10 = *&buf[8];
      v12 = *(&v22 + 1);
      v13 = v22;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  v4[2](v4, v11, v10, v13, v12);
  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *&buf[4] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v19, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 reply:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = v7;
  if (v7)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rampingRequestForResourceType:numRequested:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 isCloudPhotoLibraryEnabled];

  if (v9)
  {
    (*(v6 + 2))(v6, 1, 0, 0);
  }

  else
  {
    v10 = [PLCloudPhotoLibraryError createErrorWithType:15 withDebugMessage:@"iCloud Photo Library not enabled"];
    (*(v6 + 2))(v6, 0, 0, v10);
  }

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v16, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = v7;
  if (v7)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setCloudPhotoLibraryPauseState:reason:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  if (v4 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;
  if (v5)
  {
    v10 = PLGatekeeperXPCGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 67109120;
    LODWORD(v21) = v9;
    v11 = "########## Pausing (%hd) cloud photo";
  }

  else
  {
    v10 = PLGatekeeperXPCGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 67109120;
    LODWORD(v21) = v9;
    v11 = "########## Resuming (%hd) cloud photo";
  }

  _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 8u);
LABEL_12:

  v12 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v13 = [v12 cplReadiness];
  [v13 pauseCloudPhotos:v5 reason:v9];

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v18, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)setCloudPhotoLibraryEnabledState:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setCloudPhotoLibraryEnabledState:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v7 = [v6 libraryBundle];
  [v7 setCloudPhotoLibraryEnabled:v3];

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)syncCloudPhotoLibrary
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  v3 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = v3;
  if (v3)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: syncCloudPhotoLibrary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  v4 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v5 = [v4 isCloudPhotoLibraryEnabled];

  if (v5)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "########## Syncing with Cloud Photo Library!", buf, 2u);
    }

    v7 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v8 = [v7 cloudPhotoLibraryManager];
    [v8 sync];
  }

  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)shouldAutoEnableiCPLOnOSXWithReply:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudInternalService.m" lineNumber:224 description:@"shouldAutoEnableiCPLOnOSXWithReply is only available on OSX"];
}

- (void)isReadyForAnalysisWithReply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = v5;
  if (v5)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: isReadyForAnalysisWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  if (MEMORY[0x19EAEE230]() && (([MEMORY[0x1E695E000] standardUserDefaults], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"PLInhibitReadyForAnalysis"), v6, (v7 & 1) != 0) || (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLForKey:", @"PLOverrideReadyForAnalysis"), v8, v9)))
  {
    v4[2](v4, v7 ^ 1u);
  }

  else
  {
    v10 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v11 = [v10 readyForAnalysis];
    v4[2](v4, [v11 isReadyForAnalysis]);
  }

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v16, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)isReadyForAnalysisCPLInitialDownloadCompletedWithReply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = v5;
  if (v5)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: isReadyForAnalysisCPLInitialDownloadCompletedWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  if (MEMORY[0x19EAEE230]() && (([MEMORY[0x1E695E000] standardUserDefaults], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"PLInhibitReadyForAnalysis"), v6, (v7 & 1) != 0) || (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLForKey:", @"PLOverrideReadyForAnalysis"), v8, v9)))
  {
    v4[2](v4, v7 ^ 1u);
  }

  else
  {
    v10 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v11 = [v10 readyForAnalysis];
    v4[2](v4, [v11 isReadyForAnalysisInitialDownloadCompleted]);
  }

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v16, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)isReadyForAnalysisQuickCheckWithReply:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  connectionAuthorization = self->_connectionAuthorization;
  v5 = a3;
  if ([(PLAssetsdConnectionAuthorization *)connectionAuthorization isQuickCheckReadyForAnalysisClient])
  {
    v9 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v6 = [v9 readyForAnalysis];
    v5[2](v5, [v6 isReadyForAnalysisQuickCheck]);
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "Invalid client for isReadyForAnalysisQuickCheck. Falling back to isReadyForAnalysis for bundle ID: %{public}@", buf, 0xCu);
    }

    [(PLAssetsdCloudInternalService *)self isReadyForAnalysisWithReply:v5];
  }
}

- (void)isReadyForCloudPhotoLibraryWithReply:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = v5;
  if (v5)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: isReadyForCloudPhotoLibraryWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v7 = [v6 cplReadiness];
  v8 = [v7 isReadyForCloudPhotoLibraryWithStatus:0];

  v4[2](v4, v8);
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)setPersonInfoDictionary:(id)a3 forPersonID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  *sel = 0u;
  v15 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = v8;
  if (v8)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setPersonInfoDictionary:forPersonID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v17 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v10 = [v9 libraryBundle];
  v11 = [v10 personInfoManager];
  [v11 setPersonInfo:v6 forPersonID:v7];

  if (v16 == 1)
  {
    os_activity_scope_leave((&v17 + 8));
  }

  if (v17)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v20 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)personInfoDictionaryForPersonID:(id)a3 reply:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = v8;
  if (v8)
  {
    *(&v20 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: personInfoDictionaryForPersonID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v21 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v10 = [v9 libraryBundle];
  v11 = [v10 personInfoManager];
  v12 = [v11 personInfoForPersonID:v6];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"person info not found with personID %@", v6];
    v24 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v16];
  }

  v7[2](v7, v12, v13);

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v21, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)emailAddressForKey:(int64_t)a3 reply:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v21 = 0u;
  *sel = 0u;
  v19 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = v7;
  if (v7)
  {
    *(&v19 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: emailAddressForKey:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v21 + 8));
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 libraryBundle];
  v10 = [v9 emailAddressManager];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 emailAddressForKey:v11];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Email address not found for key";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v15];
  }

  v6[2](v6, v12, v13);

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v21, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)keyForEmailAddress:(id)a3 reply:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  *sel = 0u;
  v19 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = v8;
  if (v8)
  {
    *(&v19 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: keyForEmailAddress:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v21 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v10 = [v9 libraryBundle];
  v11 = [v10 emailAddressManager];
  v12 = [v11 keyForEmailAddress:v6];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Key not found for email address";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v15];
  }

  v7[2](v7, [v12 longLongValue], v13);

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v21, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)cloudSharingSpaceManagementRequestWithType:(unint64_t)a3 optionalBytesToPurge:(unint64_t)a4 reply:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v35 = 0u;
  *sel = 0u;
  v34 = 0u;
  v9 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v34) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cloudSharingSpaceManagementRequestWithType:optionalBytesToPurge:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v34 + 1);
    *(&v34 + 1) = v10;

    os_activity_scope_enter(v10, (&v35 + 8));
  }

  if (a3 == 2)
  {
    v14 = @"PurgeNonRecentlyViewedAssets";
    v12 = 1;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v12 = 0;
    v14 = @"PurgeSpace";
LABEL_9:
    v13 = 1;
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 0;
  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = @"GetSpaceAvailable";
  }

LABEL_11:
  v15 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    v38 = a4;
    v39 = 1024;
    v40 = v13;
    v41 = 1024;
    v42 = v12;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "cloudSharingSpaceManagementRequest jobType %lu %@ bytesToPurge %lld shouldFreeSpace %d shouldKeepRecentlyViewed %d", buf, 0x2Cu);
  }

  v16 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v17 = [v16 databaseContext];
  v18 = [v17 newShortLivedLibraryWithName:"-[PLAssetsdCloudInternalService cloudSharingSpaceManagementRequestWithType:optionalBytesToPurge:reply:]"];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v38 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __103__PLAssetsdCloudInternalService_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_reply___block_invoke;
  v28[3] = &unk_1E756B8F8;
  v30 = buf;
  v31 = a4;
  v32 = v13;
  v33 = v12;
  v19 = v18;
  v29 = v19;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__PLAssetsdCloudInternalService_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_reply___block_invoke_2;
  v25[3] = &unk_1E7573998;
  v20 = v8;
  v26 = v20;
  v27 = buf;
  [v19 performTransaction:v28 completionHandler:v25];

  _Block_object_dispose(buf, 8);
  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *&buf[4] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

unint64_t __103__PLAssetsdCloudInternalService_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_reply___block_invoke(uint64_t a1)
{
  result = [PLDiskSpaceManagement performCloudSharingSpaceManagementWithBytesToPurge:*(a1 + 48) shouldFreeSpace:*(a1 + 56) shouldKeepRecentlyViewedAssets:*(a1 + 57) fromPhotoLibrary:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateSharedAlbumsCachedServerConfigurationLimits
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  *sel = 0u;
  v6 = 0u;
  v2 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v6) = v2;
  if (v2)
  {
    *(&v6 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateSharedAlbumsCachedServerConfigurationLimits", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v6 + 1), (&v8 + 8));
  }

  +[PLPhotoSharingHelper updateSharedAlbumsCachedServerConfigurationLimits];
  if (v7 == 1)
  {
    os_activity_scope_leave((&v8 + 8));
  }

  if (v8)
  {
    v3 = PLRequestGetLog();
    v4 = v3;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v11 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v8, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)enablePhotostreamsWithStreamID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = v5;
  if (v5)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: enablePhotostreamsWithStreamID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:*MEMORY[0x1E69C0450] forKey:*MEMORY[0x1E69C0410]];
  v7 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "enqueing job with streamID %@", buf, 0xCu);
  }

  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 imageWriter];
  [v9 enqueueJob:v6];

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)createPhotostreamAlbumWithStreamID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  *sel = 0u;
  v10 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = v5;
  if (v5)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: createPhotostreamAlbumWithStreamID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v12 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudInternalService createPhotostreamAlbumWithStreamID:]", v10];
  [v6 createPhotoStreamAlbumWithStreamID:v4];

  if (v11 == 1)
  {
    os_activity_scope_leave((&v12 + 8));
  }

  if (v12)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v15 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v12, "########## Syncing with Cloud Photo Library!", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdCloudInternalService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLAssetsdCloudInternalService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, a4);
  }

  return v9;
}

@end