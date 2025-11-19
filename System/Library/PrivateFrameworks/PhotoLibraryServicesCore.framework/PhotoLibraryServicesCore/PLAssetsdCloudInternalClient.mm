@interface PLAssetsdCloudInternalClient
- (BOOL)isReadyForAnalysis;
- (BOOL)isReadyForAnalysisCPLInitialDownloadCompleted;
- (BOOL)isReadyForAnalysisQuickCheck;
- (BOOL)isReadyForCloudPhotoLibrary;
- (BOOL)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 error:(id *)a6;
- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4;
- (BOOL)shouldAutoEnableiCPLOnOSXWithError:(id *)a3;
- (id)activateLibraryScope:(id)a3 completionHandler:(id)a4;
- (id)emailAddressForKey:(int64_t)a3 error:(id *)a4;
- (id)getCPLSettings;
- (id)markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope:(id)a3 excludePersonUUIDs:(id)a4 completionHandler:(id)a5;
- (id)personInfoDictionaryForPersonID:(id)a3 error:(id *)a4;
- (int64_t)keyForEmailAddress:(id)a3 error:(id *)a4;
- (unint64_t)cloudSharingSpaceManagementRequestWithType:(unint64_t)a3 optionalBytesToPurge:(unint64_t)a4 error:(id *)a5;
- (unint64_t)getResetSyncStatusWithError:(id *)a3;
- (void)acceptShare:(id)a3 completionHandler:(id)a4;
- (void)confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope:(id)a3 completionHandler:(id)a4;
- (void)createPhotostreamAlbumWithStreamID:(id)a3;
- (void)deactivateLibraryScope:(id)a3 completionHandler:(id)a4;
- (void)declineCollectionShareWithUUID:(id)a3 completionHandler:(id)a4;
- (void)enablePhotostreamsWithStreamID:(id)a3;
- (void)fetchShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 completionHandler:(id)a5;
- (void)forceParticipantAssetTrashNotificationCompletionHandler:(id)a3;
- (void)forceSyncMomentShare:(id)a3 completionHandler:(id)a4;
- (void)getCPLConfigurationValueForKey:(id)a3 completionHandler:(id)a4;
- (void)getCurrentTransferProgress:(id)a3;
- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getNotUploadedCount:(id)a3;
- (void)getSystemBudgetsWithReply:(id)a3;
- (void)isComputeSyncEnabledForDirection:(int64_t)a3 reply:(id)a4;
- (void)markResourcesPurgeableWithUrgency:(int64_t)a3 assetUuids:(id)a4 completionHandler:(id)a5;
- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 completionHandler:(id)a6;
- (void)publishShare:(id)a3 completionHandler:(id)a4;
- (void)queryParticipantsWithEmails:(id)a3 phoneNumbers:(id)a4 completionHandler:(id)a5;
- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 reply:(id)a5;
- (void)refreshLibraryScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)reportInvitationAsSpamForCollectionShareWithUUID:(id)a3 completionHandler:(id)a4;
- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 completionHandler:(id)a4;
- (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler:(id)a3;
- (void)sendInvitationsForCollectionShareWithUUID:(id)a3 participantUUIDs:(id)a4 completionHandler:(id)a5;
- (void)setCloudPhotoLibraryEnabledState:(BOOL)a3;
- (void)setCloudPhotoLibraryEnabledStateSync:(BOOL)a3;
- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4;
- (void)setPersonInfoDictionary:(id)a3 forPersonID:(id)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)syncCloudPhotoLibrary;
- (void)synchronouslySetCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4;
- (void)unsharePendingAssetsSharedToScopeWithIdentifier:(id)a3;
- (void)updateSharedAlbumsCachedServerConfigurationLimits;
- (void)userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler:(id)a3;
@end

@implementation PLAssetsdCloudInternalClient

- (void)isComputeSyncEnabledForDirection:(int64_t)a3 reply:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isComputeSyncEnabledForDirection:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v26 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v29 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__PLAssetsdCloudInternalClient_isComputeSyncEnabledForDirection_reply___block_invoke_152;
  v22[3] = &unk_1E7930DB8;
  v24 = a3;
  v17 = v7;
  v23 = v17;
  [v16 remoteObjectProxyWithErrorHandler:&__block_literal_global_151 handler:v22];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v21 = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = v21;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __71__PLAssetsdCloudInternalClient_isComputeSyncEnabledForDirection_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient isComputeSyncEnabledForDirection:reply:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setPrefetchMode:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6044;
  v31 = __Block_byref_object_dispose__6045;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_148_6046];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__PLAssetsdCloudInternalClient_setPrefetchMode_error___block_invoke_149;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v21;
  v20[5] = &buf;
  [v11 setPrefetchMode:a3 reply:v20];

  v12 = *(v22 + 24);
  v13 = *(*(&buf + 1) + 40);
  if (a4 && (v12 & 1) != 0)
  {
    v13 = v13;
    *a4 = v13;
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __54__PLAssetsdCloudInternalClient_setPrefetchMode_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient setPrefetchMode:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)getCPLSettings
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getCPLSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6044;
  v27 = __Block_byref_object_dispose__6045;
  v28 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_144_6048];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__PLAssetsdCloudInternalClient_getCPLSettings__block_invoke_145;
  v20[3] = &unk_1E7930D90;
  v20[4] = &buf;
  [v13 getCPLSettingsWithReply:v20];

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __46__PLAssetsdCloudInternalClient_getCPLSettings__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient getCPLSettings]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)getCPLConfigurationValueForKey:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getCPLConfigurationValueForKey:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__PLAssetsdCloudInternalClient_getCPLConfigurationValueForKey_completionHandler___block_invoke;
  v21[3] = &unk_1E7932DA8;
  v22 = v7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PLAssetsdCloudInternalClient_getCPLConfigurationValueForKey_completionHandler___block_invoke_142;
  v18[3] = &unk_1E7930D68;
  v12 = v6;
  v19 = v12;
  v13 = v22;
  v20 = v13;
  [v11 remoteObjectProxyWithErrorHandler:v21 handler:v18];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __81__PLAssetsdCloudInternalClient_getCPLConfigurationValueForKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to get CPLConfiguration value, XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)markResourcesPurgeableWithUrgency:(int64_t)a3 assetUuids:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: markResourcesPurgeableWithUrgency:assetUuids:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v32 + 1);
    *(&v32 + 1) = v12;

    os_activity_scope_enter(v12, (&v33 + 8));
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __95__PLAssetsdCloudInternalClient_markResourcesPurgeableWithUrgency_assetUuids_completionHandler___block_invoke;
  v30[3] = &unk_1E7932DA8;
  v31 = v10;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __95__PLAssetsdCloudInternalClient_markResourcesPurgeableWithUrgency_assetUuids_completionHandler___block_invoke_138;
  v21[3] = &unk_1F1F727D8;
  v24 = v32;
  v25 = *(&v32 + 1);
  v26 = v33;
  v27 = v34;
  v28 = a2;
  v29 = a3;
  v15 = v9;
  v22 = v15;
  v16 = v31;
  v23 = v16;
  [v14 remoteObjectProxyWithErrorHandler:v30 handler:v21];

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(*(&v34 + 1));
      *buf = 136446210;
      v36 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __95__PLAssetsdCloudInternalClient_markResourcesPurgeableWithUrgency_assetUuids_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to change purgeability because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __95__PLAssetsdCloudInternalClient_markResourcesPurgeableWithUrgency_assetUuids_completionHandler___block_invoke_138(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 markResourcesPurgeableWithUrgency:*(a1 + 104) assetUuids:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)requestDeviceLibraryConfigurationChange:(int64_t)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: requestDeviceLibraryConfigurationChange:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v27 + 1);
    *(&v27 + 1) = v9;

    os_activity_scope_enter(v9, (&v28 + 8));
  }

  v11 = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke;
  v25[3] = &unk_1E7932DA8;
  v26 = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3254779904;
  v17[2] = __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_132;
  v17[3] = &unk_1F1F72C00;
  v19 = v27;
  v20 = *(&v27 + 1);
  v21 = v28;
  v22 = v29;
  v23 = a2;
  v24 = a3;
  v12 = v26;
  v18 = v12;
  [v11 remoteObjectProxyWithErrorHandler:v25 handler:v17];

  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(*(&v29 + 1));
      *buf = 136446210;
      v31 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient requestDeviceLibraryConfigurationChange:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_132(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 96);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_133;
  v12[3] = &unk_1E7930D40;
  v14 = v11;
  v13 = *(a1 + 32);
  [v3 requestDeviceLibraryConfigurationChange:v11 reply:v12];
}

void __90__PLAssetsdCloudInternalClient_requestDeviceLibraryConfigurationChange_completionHandler___block_invoke_133(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v11 = 134218242;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Unable to change device library configuration to: %ld. (%@)", &v11, 0x16u);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, a3, v7);
  }
}

- (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke_130;
  v15[3] = &unk_1F1F72288;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke_130(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke_131;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithReply:v11];
}

void __110__PLAssetsdCloudInternalClient_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler___block_invoke_131(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to reset local only library scopes and reset asset states: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke_128;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke_128(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke_129;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 confirmAllRemainingOnboardingPreviewAssetsOnLibraryScopeWithUUID:v13 reply:v12];
}

void __107__PLAssetsdCloudInternalClient_confirmAllRemainingOnboardingPreviewAssetsOnLibraryScope_completionHandler___block_invoke_129(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to confirm all remaining onboarding preview assets on library scope with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope:(id)a3 excludePersonUUIDs:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope:excludePersonUUIDs:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v30 + 1);
    *(&v30 + 1) = v12;

    os_activity_scope_enter(v12, (&v31 + 8));
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __128__PLAssetsdCloudInternalClient_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope_excludePersonUUIDs_completionHandler___block_invoke;
  v28[3] = &unk_1E7932DA8;
  v15 = v10;
  v29 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v28];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__PLAssetsdCloudInternalClient_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope_excludePersonUUIDs_completionHandler___block_invoke_127;
  v25[3] = &unk_1E7930C50;
  v17 = v8;
  v26 = v17;
  v18 = v15;
  v27 = v18;
  v19 = [v16 markOnboardingPreviewAssetsByProcessingRulesOnLibraryScopeWithUUID:v17 excludePersonUUIDs:v9 reply:v25];

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v19;
}

void __128__PLAssetsdCloudInternalClient_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope_excludePersonUUIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope:excludePersonUUIDs:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __128__PLAssetsdCloudInternalClient_markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope_excludePersonUUIDs_completionHandler___block_invoke_127(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to mark onboarding preview assets on library scope with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unsharePendingAssetsSharedToScopeWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: unsharePendingAssetsSharedToScopeWithIdentifier:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAssetsdBaseClient *)self proxyFactory];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_126_6069];
  [v7 unsharePendingAssetsSharedToScopeWithIdentifier:v4];

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
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __80__PLAssetsdCloudInternalClient_unsharePendingAssetsSharedToScopeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient unsharePendingAssetsSharedToScopeWithIdentifier:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)getLibraryScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getLibraryScopeStatusCountsForScopeWithIdentifier:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_122;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient getLibraryScopeStatusCountsForScopeWithIdentifier:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_122(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_123;
  v12[3] = &unk_1E7930D18;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 getLibraryScopeStatusCountsForScopeWithIdentifier:v13 reply:v12];
}

void __100__PLAssetsdCloudInternalClient_getLibraryScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Unable to get library scope status counts for scope identifier %@. Error: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)refreshLibraryScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: refreshLibraryScopeWithIdentifier:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_119;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient refreshLibraryScopeWithIdentifier:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_120;
  v12[3] = &unk_1E7930CF0;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 refreshLibraryScopeWithIdentifier:v13 reply:v12];
}

void __84__PLAssetsdCloudInternalClient_refreshLibraryScopeWithIdentifier_completionHandler___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Unable to refresh library scope for scope identifier %@. Error: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)forceParticipantAssetTrashNotificationCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: forceParticipantAssetTrashNotificationCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__PLAssetsdCloudInternalClient_forceParticipantAssetTrashNotificationCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __88__PLAssetsdCloudInternalClient_forceParticipantAssetTrashNotificationCompletionHandler___block_invoke_116;
  v15[3] = &unk_1F1F72288;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __88__PLAssetsdCloudInternalClient_forceParticipantAssetTrashNotificationCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient forceParticipantAssetTrashNotificationCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __88__PLAssetsdCloudInternalClient_forceParticipantAssetTrashNotificationCompletionHandler___block_invoke_116(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PLAssetsdCloudInternalClient_forceParticipantAssetTrashNotificationCompletionHandler___block_invoke_117;
  v11[3] = &unk_1E7930CC8;
  v12 = *(a1 + 32);
  [v3 forceParticipantAssetTrashNotificationWithReply:v11];
}

- (void)userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke_114;
  v15[3] = &unk_1F1F72288;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke_114(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke_115;
  v11[3] = &unk_1E7932DA8;
  v12 = *(a1 + 32);
  [v3 userViewedSharedLibraryParticipantAssetTrashNotificationWithReply:v11];
}

void __110__PLAssetsdCloudInternalClient_userViewedSharedLibraryParticipantAssetTrashNotificationWithCompletionHandler___block_invoke_115(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to mark user viewed shared library participant asset trash notification (%@)", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sharedLibraryRampCheckWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke_112;
  v15[3] = &unk_1F1F72288;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to check shared library ramp (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke_112(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke_113;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 sharedLibraryRampCheckWithReply:v11];
}

void __76__PLAssetsdCloudInternalClient_sharedLibraryRampCheckWithCompletionHandler___block_invoke_113(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Unable to check shared library ramp (%@)", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeParticipantsWithParticipantUUIDs:(id)a3 fromLibraryScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v16 = +[PLXPCMessageLogger enabled];
  LOBYTE(v40) = v16;
  if (v16)
  {
    v17 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: removeParticipantsWithParticipantUUIDs:fromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v18 = *(&v40 + 1);
    *(&v40 + 1) = v17;

    os_activity_scope_enter(v17, (&v41 + 8));
  }

  v19 = [(PLAssetsdBaseClient *)self proxyFactory];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v38[3] = &unk_1E7932DA8;
  v39 = v15;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3254779904;
  v27[2] = __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_107;
  v27[3] = &unk_1F1F72458;
  v31 = v40;
  v32 = *(&v40 + 1);
  v33 = v41;
  v34 = v42;
  v35 = a2;
  v20 = v13;
  v28 = v20;
  v21 = v14;
  v29 = v21;
  v36 = a5;
  v37 = a6;
  v22 = v39;
  v30 = v22;
  [v19 remoteObjectProxyWithErrorHandler:v38 handler:v27];

  if (v40 == 1)
  {
    os_activity_scope_leave((&v41 + 8));
  }

  if (v41)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v41;
    if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(*(&v42 + 1));
      *buf = 136446210;
      v44 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to remove participants (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_107(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v20 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v21[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v19 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_108;
  v15[3] = &unk_1E7932930;
  v16 = v11;
  v17 = *(a1 + 48);
  [v3 removeParticipantsWithParticipantUUIDs:v12 fromLibraryScopeWithIdentifier:v16 retentionPolicy:v13 exitSource:v14 reply:v15];
}

void __147__PLAssetsdCloudInternalClient_removeParticipantsWithParticipantUUIDs_fromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to remove participants from library scope with identifier: %@. (%@)", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startExitFromLibraryScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v13 = +[PLXPCMessageLogger enabled];
  LOBYTE(v35) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: startExitFromLibraryScopeWithIdentifier:retentionPolicy:exitSource:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v35 + 1);
    *(&v35 + 1) = v14;

    os_activity_scope_enter(v14, (&v36 + 8));
  }

  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v33[3] = &unk_1E7932DA8;
  v34 = v12;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_102;
  v23[3] = &unk_1F1F72538;
  v26 = v35;
  v27 = *(&v35 + 1);
  v28 = v36;
  v29 = v37;
  v30 = a2;
  v17 = v11;
  v24 = v17;
  v31 = a4;
  v32 = a5;
  v18 = v34;
  v25 = v18;
  [v16 remoteObjectProxyWithErrorHandler:v33 handler:v23];

  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v37 + 1));
      *buf = 136446210;
      v39 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to exit shared scope with scope identifier (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_102(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v19 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v18 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_103;
  v14[3] = &unk_1E7932930;
  v15 = v11;
  v16 = *(a1 + 40);
  [v3 startExitFromLibraryScopeWithIdentifier:v15 retentionPolicy:v12 exitSource:v13 reply:v14];
}

void __117__PLAssetsdCloudInternalClient_startExitFromLibraryScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_103(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to start exit from library scope with identifier: %@. (%@)", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deactivateLibraryScope:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: deactivateLibraryScope:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke_100;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to deactivate library scope because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke_100(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke_101;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 deactivateLibraryScopeWithUUID:v13 reply:v12];
}

void __73__PLAssetsdCloudInternalClient_deactivateLibraryScope_completionHandler___block_invoke_101(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to deactivate library scope with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)activateLibraryScope:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v35) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: activateLibraryScope:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v35 + 1);
    *(&v35 + 1) = v10;

    os_activity_scope_enter(v10, (&v36 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke;
  v33[3] = &unk_1E7932DA8;
  v13 = v8;
  v34 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v33];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3254779904;
  v24[2] = __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke_95;
  v24[3] = &unk_1F1F727A0;
  v28 = v35;
  v29 = *(&v35 + 1);
  v30 = v36;
  v31 = v37;
  v15 = v14;
  v25 = v15;
  v32 = a2;
  v16 = v7;
  v26 = v16;
  v17 = v13;
  v27 = v17;
  v18 = [v15 activateLibraryScopeWithUUID:v16 reply:v24];

  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v37 + 1));
      *buf = 136446210;
      v39 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v18;
}

void __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to activate library scope because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke_95(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLRequestGetLog();
    v3 = os_signpost_id_generate(v2);
    v17 = @"SignpostId";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
    v18[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [*(a1 + 32) set_userInfo:v5];

    v6 = v2;
    v7 = v6;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v16 = v8;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke_96;
  v12[3] = &unk_1E7930C50;
  v13 = v9;
  v14 = *(a1 + 48);
  v11 = [v10 activateLibraryScopeWithUUID:v13 reply:v12];
}

void __71__PLAssetsdCloudInternalClient_activateLibraryScope_completionHandler___block_invoke_96(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to activate library scope with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)getResetSyncStatusWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getResetSyncStatusWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__6044;
  v29 = __Block_byref_object_dispose__6045;
  v30 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PLAssetsdCloudInternalClient_getResetSyncStatusWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__PLAssetsdCloudInternalClient_getResetSyncStatusWithError___block_invoke_93;
  v17[3] = &unk_1E7930CA0;
  v17[4] = &v19;
  [v9 getResetSyncStatusWithReply:v17];

  if (a3)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = v20[3];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __60__PLAssetsdCloudInternalClient_getResetSyncStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdCloudInternalClient getResetSyncStatusWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)queryParticipantsWithEmails:(id)a3 phoneNumbers:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: queryParticipantsWithEmails:phoneNumbers:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v34 + 1);
    *(&v34 + 1) = v13;

    os_activity_scope_enter(v13, (&v35 + 8));
  }

  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = v11;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke_90;
  v23[3] = &unk_1F1F726C0;
  v27 = v34;
  v28 = *(&v34 + 1);
  v29 = v35;
  v30 = v36;
  v31 = a2;
  v16 = v9;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  v18 = v33;
  v26 = v18;
  [v15 remoteObjectProxyWithErrorHandler:v32 handler:v23];

  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v36 + 1));
      *buf = 136446210;
      v38 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to query participants because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke_90(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = [*(a1 + 32) allObjects];
  v12 = [*(a1 + 40) allObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke_91;
  v13[3] = &unk_1E7930C78;
  v14 = *(a1 + 48);
  [v3 queryUserIdentitiesWithEmails:v11 phoneNumbers:v12 reply:v13];
}

void __91__PLAssetsdCloudInternalClient_queryParticipantsWithEmails_phoneNumbers_completionHandler___block_invoke_91(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Query participants returned error. (%@)", &v9, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

- (void)sendInvitationsForCollectionShareWithUUID:(id)a3 participantUUIDs:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendInvitationsForCollectionShareWithUUID:participantUUIDs:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v34 + 1);
    *(&v34 + 1) = v13;

    os_activity_scope_enter(v13, (&v35 + 8));
  }

  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = v11;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke_87;
  v23[3] = &unk_1F1F726C0;
  v27 = v34;
  v28 = *(&v34 + 1);
  v29 = v35;
  v30 = v36;
  v31 = a2;
  v16 = v9;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  v18 = v33;
  v26 = v18;
  [v15 remoteObjectProxyWithErrorHandler:v32 handler:v23];

  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v36 + 1));
      *buf = 136446210;
      v38 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to resend invitations for participants of collection share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke_87(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v18 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke_88;
  v13[3] = &unk_1E7930C50;
  v14 = v11;
  v15 = *(a1 + 48);
  [v3 sendInvitationsForCollectionShareWithUUID:v14 participantUUIDs:v12 reply:v13];
}

void __109__PLAssetsdCloudInternalClient_sendInvitationsForCollectionShareWithUUID_participantUUIDs_completionHandler___block_invoke_88(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to resend invitations for participants of collection share with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reportInvitationAsSpamForCollectionShareWithUUID:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: reportInvitationAsSpamForCollectionShareWithUUID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke_85;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to report invitation as spam for collection share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke_85(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke_86;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 reportInvitationAsSpamForCollectionShareWithUUID:v13 reply:v12];
}

void __99__PLAssetsdCloudInternalClient_reportInvitationAsSpamForCollectionShareWithUUID_completionHandler___block_invoke_86(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to report invitation as spam for collection share with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)declineCollectionShareWithUUID:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: declineCollectionShareWithUUID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke_83;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to decline collection share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke_83(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke_84;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 declineCollectionShareWithUUID:v13 reply:v12];
}

void __81__PLAssetsdCloudInternalClient_declineCollectionShareWithUUID_completionHandler___block_invoke_84(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to decline collection share with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)forceSyncMomentShare:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: forceSyncMomentShare:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke_81;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to force sync moment share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke_82;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 forceSyncMomentShareWithUUID:v13 reply:v12];
}

void __71__PLAssetsdCloudInternalClient_forceSyncMomentShare_completionHandler___block_invoke_82(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to force sync moment share with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)acceptShare:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: acceptShare:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke_79;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to accept moment share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke_79(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke_80;
  v12[3] = &unk_1E7930C50;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 acceptShareWithUUID:v13 reply:v12];
}

void __62__PLAssetsdCloudInternalClient_acceptShare_completionHandler___block_invoke_80(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Unable to accept moment share with uuid: %@. (%@)", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchShareFromShareURL:(id)a3 ignoreExistingShare:(BOOL)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: fetchShareFromShareURL:ignoreExistingShare:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v32 + 1);
    *(&v32 + 1) = v12;

    os_activity_scope_enter(v12, (&v33 + 8));
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke;
  v30[3] = &unk_1E7932DA8;
  v31 = v10;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke_73;
  v21[3] = &unk_1F1F72960;
  v24 = v32;
  v25 = *(&v32 + 1);
  v26 = v33;
  v27 = v34;
  v28 = a2;
  v15 = v9;
  v22 = v15;
  v29 = a4;
  v16 = v31;
  v23 = v16;
  [v14 remoteObjectProxyWithErrorHandler:v30 handler:v21];

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(*(&v34 + 1));
      *buf = 136446210;
      v36 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to fetch moment share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke_73(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v18 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 104);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke_74;
  v13[3] = &unk_1E7930C28;
  v14 = v11;
  v15 = *(a1 + 40);
  [v3 fetchShareWithURL:v14 ignoreExistingShare:v12 reply:v13];
}

void __93__PLAssetsdCloudInternalClient_fetchShareFromShareURL_ignoreExistingShare_completionHandler___block_invoke_74(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Unable to fetch share from share url: %@. (%@)", &v11, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)publishShare:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: publishShare:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke_67;
  v19[3] = &unk_1F1F72AE8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to publish share because XPC service returned an error. (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke_67(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke_68;
  v12[3] = &unk_1E7930C00;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 publishShareWithUUID:v13 reply:v12];
}

void __63__PLAssetsdCloudInternalClient_publishShare_completionHandler___block_invoke_68(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Unable to publish share with uuid: %{public}@ (%{public}@)", &v11, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 completionHandler:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v41 = 0u;
  *sel = 0u;
  v40 = 0u;
  v13 = +[PLXPCMessageLogger enabled];
  LOBYTE(v40) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: overrideSystemBudgetsForSyncSession:pauseReason:systemBudgets:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v40 + 1);
    *(&v40 + 1) = v14;

    os_activity_scope_enter(v14, (&v41 + 8));
  }

  v16 = PLRequestGetLog();
  sel[1] = a2;
  v17 = os_signpost_id_generate(v16);
  *&v41 = v17;
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v44 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v21 = [(PLAssetsdBaseClient *)self proxyFactory];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __112__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_completionHandler___block_invoke;
  v38[3] = &unk_1E7932DA8;
  v39 = v12;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3254779904;
  v28[2] = __112__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_completionHandler___block_invoke_62;
  v28[3] = &unk_1F1F74798;
  v31 = v40;
  v32 = *(&v40 + 1);
  v33 = v41;
  v34 = *sel;
  v35 = a2;
  v37 = a3;
  v22 = v11;
  v29 = v22;
  v36 = a5;
  v23 = v39;
  v30 = v23;
  [v21 remoteObjectProxyWithErrorHandler:v38 handler:v28];

  if (v40 == 1)
  {
    os_activity_scope_leave((&v41 + 8));
  }

  if (v41)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v41;
    if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v27 = sel_getName(sel[1]);
      *buf = 136446210;
      v44 = v27;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __112__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient overrideSystemBudgetsForSyncSession:pauseReason:systemBudgets:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __112__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_completionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v18 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 112);
  v12 = *(a1 + 104);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_completionHandler___block_invoke_63;
  v14[3] = &unk_1E7932DD0;
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  [v3 overrideSystemBudgetsForSyncSession:v11 pauseReason:v13 systemBudgets:v12 reply:v14];
}

- (BOOL)overrideSystemBudgetsForSyncSession:(BOOL)a3 pauseReason:(id)a4 systemBudgets:(unint64_t)a5 error:(id *)a6
{
  v8 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v37 = 0u;
  *sel = 0u;
  v36 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v36) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: overrideSystemBudgetsForSyncSession:pauseReason:systemBudgets:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v36 + 1);
    *(&v36 + 1) = v13;

    os_activity_scope_enter(v13, (&v37 + 8));
  }

  v15 = PLRequestGetLog();
  sel[1] = a2;
  v16 = os_signpost_id_generate(v15);
  *&v37 = v16;
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__6044;
  v42 = __Block_byref_object_dispose__6045;
  v43 = 0;
  v20 = [(PLAssetsdBaseClient *)self proxyFactory];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __100__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_error___block_invoke;
  v31[3] = &unk_1E7932360;
  v31[4] = &v32;
  v31[5] = &buf;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_error___block_invoke_61;
  v30[3] = &unk_1E7932E48;
  v30[4] = &v32;
  v30[5] = &buf;
  [v21 overrideSystemBudgetsForSyncSession:v8 pauseReason:v11 systemBudgets:a5 reply:v30];

  v22 = *(v33 + 24);
  v23 = *(*(&buf + 1) + 40);
  if (a6 && (v22 & 1) == 0)
  {
    v23 = v23;
    *a6 = v23;
  }

  v24 = *(v33 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v32, 8);
  if (v36 == 1)
  {
    os_activity_scope_leave((&v37 + 8));
  }

  if (v37)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v37;
    if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v28;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v24;
}

void __100__PLAssetsdCloudInternalClient_overrideSystemBudgetsForSyncSession_pauseReason_systemBudgets_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdCloudInternalClient overrideSystemBudgetsForSyncSession:pauseReason:systemBudgets:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)getSystemBudgetsWithReply:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getSystemBudgetsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v23 + 1);
    *(&v23 + 1) = v7;

    os_activity_scope_enter(v7, (&v24 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v24 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v27 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__PLAssetsdCloudInternalClient_getSystemBudgetsWithReply___block_invoke;
  v21[3] = &unk_1E7932DA8;
  v15 = v5;
  v22 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v21];
  [v16 getSystemBudgetsWithReply:v15];

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
      v20 = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __58__PLAssetsdCloudInternalClient_getSystemBudgetsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient getSystemBudgetsWithReply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getNotUploadedCount:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getNotUploadedCount:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__PLAssetsdCloudInternalClient_getNotUploadedCount___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __52__PLAssetsdCloudInternalClient_getNotUploadedCount___block_invoke_57;
  v15[3] = &unk_1F1F72288;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __52__PLAssetsdCloudInternalClient_getNotUploadedCount___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient getNotUploadedCount:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __52__PLAssetsdCloudInternalClient_getNotUploadedCount___block_invoke_57(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 getNotUploadedCount:*(a1 + 32)];
}

- (void)getCurrentTransferProgress:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getCurrentTransferProgress:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v23 + 1);
    *(&v23 + 1) = v7;

    os_activity_scope_enter(v7, (&v24 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v24 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v27 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__PLAssetsdCloudInternalClient_getCurrentTransferProgress___block_invoke;
  v21[3] = &unk_1E7932DA8;
  v15 = v5;
  v22 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v21];
  [v16 getCurrentTransferProgress:v15];

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
      v20 = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __59__PLAssetsdCloudInternalClient_getCurrentTransferProgress___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudInternalClient getCurrentTransferProgress:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a5;
  v11 = 0u;
  *sel = 0u;
  v10 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v10) = v6;
  if (v6)
  {
    *(&v10 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rampingRequestForResourceType:numRequested:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v11 + 8));
  }

  (*(v5 + 2))(v5, 1, 0, 0);
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v8, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)synchronouslySetCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  *sel = 0u;
  v19 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v19) = v8;
  if (v8)
  {
    *(&v19 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslySetCloudPhotoLibraryPauseState:reason:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v20 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v23 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_56];
  [v15 setCloudPhotoLibraryPauseState:v5 reason:v4];

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v10)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __83__PLAssetsdCloudInternalClient_synchronouslySetCloudPhotoLibraryPauseState_reason___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient synchronouslySetCloudPhotoLibraryPauseState:reason:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)setCloudPhotoLibraryPauseState:(BOOL)a3 reason:(signed __int16)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setCloudPhotoLibraryPauseState:reason:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v29 + 1);
    *(&v29 + 1) = v9;

    os_activity_scope_enter(v9, (&v30 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v30 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v33 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __70__PLAssetsdCloudInternalClient_setCloudPhotoLibraryPauseState_reason___block_invoke_51;
  v21[3] = &__block_descriptor_91_e8_32n18_8_8_t0w1_s8_t16w32_e49_v16__0___PLAssetsdCloudInternalServiceProtocol__8l;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = *sel;
  v26 = a2;
  v28 = a3;
  v27 = a4;
  [v16 remoteObjectProxyWithErrorHandler:&__block_literal_global_50 handler:v21];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __70__PLAssetsdCloudInternalClient_setCloudPhotoLibraryPauseState_reason___block_invoke_51(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 80));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 setCloudPhotoLibraryPauseState:*(a1 + 90) reason:*(a1 + 88)];
}

void __70__PLAssetsdCloudInternalClient_setCloudPhotoLibraryPauseState_reason___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient setCloudPhotoLibraryPauseState:reason:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)setCloudPhotoLibraryEnabledStateSync:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v17) = v6;
  if (v6)
  {
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setCloudPhotoLibraryEnabledStateSync:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v21 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_48_6171];
  [v13 setCloudPhotoLibraryEnabledState:v3];

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v8)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = v16;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __69__PLAssetsdCloudInternalClient_setCloudPhotoLibraryEnabledStateSync___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient setCloudPhotoLibraryEnabledStateSync:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)setCloudPhotoLibraryEnabledState:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setCloudPhotoLibraryEnabledState:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v21 + 1);
    *(&v21 + 1) = v7;

    os_activity_scope_enter(v7, (&v22 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3254779904;
  v14[2] = __65__PLAssetsdCloudInternalClient_setCloudPhotoLibraryEnabledState___block_invoke_43;
  v14[3] = &__block_descriptor_89_e8_32n18_8_8_t0w1_s8_t16w32_e49_v16__0___PLAssetsdCloudInternalServiceProtocol__8l;
  v15 = v21;
  v16 = *(&v21 + 1);
  v17 = v22;
  v18 = *sel;
  v19 = a2;
  v20 = a3;
  [v9 remoteObjectProxyWithErrorHandler:&__block_literal_global_42_6175 handler:v14];

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    v12 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __65__PLAssetsdCloudInternalClient_setCloudPhotoLibraryEnabledState___block_invoke_43(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 80));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 setCloudPhotoLibraryEnabledState:*(a1 + 88)];
}

void __65__PLAssetsdCloudInternalClient_setCloudPhotoLibraryEnabledState___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient setCloudPhotoLibraryEnabledState:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)syncCloudPhotoLibrary
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: syncCloudPhotoLibrary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  v5 = PLRequestGetLog();
  sel[1] = a2;
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v19 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_40];
  [v11 syncCloudPhotoLibrary];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v6)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __53__PLAssetsdCloudInternalClient_syncCloudPhotoLibrary__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient syncCloudPhotoLibrary]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)shouldAutoEnableiCPLOnOSXWithError:(id *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudInternalClient.m" lineNumber:188 description:@"shouldAutoEnableiCPLOnOSXWithError is only available on OSX"];

  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: shouldAutoEnableiCPLOnOSXWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v30 + 1);
    *(&v30 + 1) = v8;

    os_activity_scope_enter(v8, (&v31 + 8));
  }

  v10 = PLRequestGetLog();
  sel[1] = a2;
  v11 = os_signpost_id_generate(v10);
  *&v31 = v11;
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__6044;
  v36 = __Block_byref_object_dispose__6045;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__PLAssetsdCloudInternalClient_shouldAutoEnableiCPLOnOSXWithError___block_invoke;
  v25[3] = &unk_1E7932360;
  v25[4] = &v26;
  v25[5] = &buf;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__PLAssetsdCloudInternalClient_shouldAutoEnableiCPLOnOSXWithError___block_invoke_37;
  v24[3] = &unk_1E7932E48;
  v24[4] = &v26;
  v24[5] = &buf;
  [v16 shouldAutoEnableiCPLOnOSXWithReply:v24];

  if (a3)
  {
    v17 = *(*(&buf + 1) + 40);
    if (v17)
    {
      *a3 = v17;
    }
  }

  v18 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
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
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18;
}

void __67__PLAssetsdCloudInternalClient_shouldAutoEnableiCPLOnOSXWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdCloudInternalClient shouldAutoEnableiCPLOnOSXWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)isReadyForAnalysis
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isReadyForAnalysis", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30_6198];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__PLAssetsdCloudInternalClient_isReadyForAnalysis__block_invoke_31;
  v20[3] = &unk_1E7930BD8;
  v20[4] = &buf;
  [v13 isReadyForAnalysisWithReply:v20];

  v14 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __50__PLAssetsdCloudInternalClient_isReadyForAnalysis__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient isReadyForAnalysis]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)isReadyForAnalysisCPLInitialDownloadCompleted
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isReadyForAnalysisCPLInitialDownloadCompleted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27_6204];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__PLAssetsdCloudInternalClient_isReadyForAnalysisCPLInitialDownloadCompleted__block_invoke_28;
  v20[3] = &unk_1E7930BD8;
  v20[4] = &buf;
  [v13 isReadyForAnalysisCPLInitialDownloadCompletedWithReply:v20];

  v14 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __77__PLAssetsdCloudInternalClient_isReadyForAnalysisCPLInitialDownloadCompleted__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient isReadyForAnalysisCPLInitialDownloadCompleted]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)isReadyForAnalysisQuickCheck
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isReadyForAnalysisQuickCheck", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24_6209];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__PLAssetsdCloudInternalClient_isReadyForAnalysisQuickCheck__block_invoke_25;
  v20[3] = &unk_1E7930BD8;
  v20[4] = &buf;
  [v13 isReadyForAnalysisQuickCheckWithReply:v20];

  v14 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __60__PLAssetsdCloudInternalClient_isReadyForAnalysisQuickCheck__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient isReadyForAnalysisQuickCheck]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)isReadyForCloudPhotoLibrary
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isReadyForCloudPhotoLibrary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20_6214];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__PLAssetsdCloudInternalClient_isReadyForCloudPhotoLibrary__block_invoke_21;
  v20[3] = &unk_1E7930BD8;
  v20[4] = &buf;
  [v13 isReadyForCloudPhotoLibraryWithReply:v20];

  v14 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __59__PLAssetsdCloudInternalClient_isReadyForCloudPhotoLibrary__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient isReadyForCloudPhotoLibrary]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)setPersonInfoDictionary:(id)a3 forPersonID:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setPersonInfoDictionary:forPersonID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v27 + 1);
    *(&v27 + 1) = v10;

    os_activity_scope_enter(v10, (&v28 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __68__PLAssetsdCloudInternalClient_setPersonInfoDictionary_forPersonID___block_invoke_17;
  v19[3] = &unk_1F1F72A08;
  v22 = v27;
  v23 = *(&v27 + 1);
  v24 = v28;
  v25 = v29;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v8;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_16_6218 handler:v19];

  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v29 + 1));
      *buf = 136446210;
      v31 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __68__PLAssetsdCloudInternalClient_setPersonInfoDictionary_forPersonID___block_invoke_17(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 setPersonInfoDictionary:*(a1 + 32) forPersonID:*(a1 + 40)];
}

void __68__PLAssetsdCloudInternalClient_setPersonInfoDictionary_forPersonID___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient setPersonInfoDictionary:forPersonID:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)personInfoDictionaryForPersonID:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: personInfoDictionaryForPersonID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v33 + 1);
    *(&v33 + 1) = v9;

    os_activity_scope_enter(v9, (&v34 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v35 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v34 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v35 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6044;
  v39 = __Block_byref_object_dispose__6045;
  v40 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6044;
  v31 = __Block_byref_object_dispose__6045;
  v32 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__PLAssetsdCloudInternalClient_personInfoDictionaryForPersonID_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &v27;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__PLAssetsdCloudInternalClient_personInfoDictionaryForPersonID_error___block_invoke_2;
  v25[3] = &unk_1E7930BB0;
  v25[4] = &buf;
  v25[5] = &v27;
  [v17 personInfoDictionaryForPersonID:v7 reply:v25];

  if (a4)
  {
    v18 = v28[5];
    if (v18)
    {
      *a4 = v18;
    }
  }

  v19 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __70__PLAssetsdCloudInternalClient_personInfoDictionaryForPersonID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)emailAddressForKey:(int64_t)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: emailAddressForKey:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v33 + 1);
    *(&v33 + 1) = v9;

    os_activity_scope_enter(v9, (&v34 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v35 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v34 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v35 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6044;
  v39 = __Block_byref_object_dispose__6045;
  v40 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6044;
  v31 = __Block_byref_object_dispose__6045;
  v32 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__PLAssetsdCloudInternalClient_emailAddressForKey_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &v27;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__PLAssetsdCloudInternalClient_emailAddressForKey_error___block_invoke_2;
  v25[3] = &unk_1E7930B88;
  v25[4] = &buf;
  v25[5] = &v27;
  [v17 emailAddressForKey:a3 reply:v25];

  if (a4)
  {
    v18 = v28[5];
    if (v18)
    {
      *a4 = v18;
    }
  }

  v19 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __57__PLAssetsdCloudInternalClient_emailAddressForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (int64_t)keyForEmailAddress:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: keyForEmailAddress:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v31 + 1);
    *(&v31 + 1) = v9;

    os_activity_scope_enter(v9, (&v32 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v33 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v32 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v33 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6044;
  v37 = __Block_byref_object_dispose__6045;
  v38 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__PLAssetsdCloudInternalClient_keyForEmailAddress_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__PLAssetsdCloudInternalClient_keyForEmailAddress_error___block_invoke_2;
  v25[3] = &unk_1E7930B60;
  v25[4] = &v27;
  v25[5] = &buf;
  [v17 keyForEmailAddress:v7 reply:v25];

  if (a4)
  {
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      *a4 = v18;
    }
  }

  v19 = v28[3];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v27, 8);
  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v33 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __57__PLAssetsdCloudInternalClient_keyForEmailAddress_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (unint64_t)cloudSharingSpaceManagementRequestWithType:(unint64_t)a3 optionalBytesToPurge:(unint64_t)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cloudSharingSpaceManagementRequestWithType:optionalBytesToPurge:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v33 + 1);
    *(&v33 + 1) = v11;

    os_activity_scope_enter(v11, (&v34 + 8));
  }

  v13 = PLRequestGetLog();
  *(&v35 + 1) = a2;
  v14 = os_signpost_id_generate(v13);
  *&v34 = v14;
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(*(&v35 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6044;
  v39 = __Block_byref_object_dispose__6045;
  v40 = 0;
  v18 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __102__PLAssetsdCloudInternalClient_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102__PLAssetsdCloudInternalClient_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_error___block_invoke_2;
  v27[3] = &unk_1E7930B38;
  v27[4] = &buf;
  v27[5] = &v29;
  [v19 cloudSharingSpaceManagementRequestWithType:a3 optionalBytesToPurge:a4 reply:v27];

  if (a5)
  {
    v20 = *(*(&buf + 1) + 40);
    if (v20)
    {
      *a5 = v20;
    }
  }

  v21 = v30[3];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v29, 8);
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
      v25 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21;
}

void __102__PLAssetsdCloudInternalClient_cloudSharingSpaceManagementRequestWithType_optionalBytesToPurge_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)updateSharedAlbumsCachedServerConfigurationLimits
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v18) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateSharedAlbumsCachedServerConfigurationLimits", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v18 + 1);
    *(&v18 + 1) = v5;

    os_activity_scope_enter(v5, (&v19 + 8));
  }

  v7 = [(PLAssetsdBaseClient *)self proxyFactory];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3254779904;
  v12[2] = __81__PLAssetsdCloudInternalClient_updateSharedAlbumsCachedServerConfigurationLimits__block_invoke_9;
  v12[3] = &__block_descriptor_88_e8_32n18_8_8_t0w1_s8_t16w32_e49_v16__0___PLAssetsdCloudInternalServiceProtocol__8l;
  v13 = v18;
  v14 = *(&v18 + 1);
  v15 = v19;
  v16 = *sel;
  v17 = a2;
  [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_8 handler:v12];

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    v10 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __81__PLAssetsdCloudInternalClient_updateSharedAlbumsCachedServerConfigurationLimits__block_invoke_9(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 80));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 updateSharedAlbumsCachedServerConfigurationLimits];
}

void __81__PLAssetsdCloudInternalClient_updateSharedAlbumsCachedServerConfigurationLimits__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient updateSharedAlbumsCachedServerConfigurationLimits]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)enablePhotostreamsWithStreamID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: enablePhotostreamsWithStreamID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v22 + 1);
    *(&v22 + 1) = v7;

    os_activity_scope_enter(v7, (&v23 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __63__PLAssetsdCloudInternalClient_enablePhotostreamsWithStreamID___block_invoke_3;
  v15[3] = &unk_1F1F721E0;
  v17 = v22;
  v18 = *(&v22 + 1);
  v19 = v23;
  v20 = *sel;
  v21 = a2;
  v10 = v5;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:&__block_literal_global_2_6246 handler:v15];

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __63__PLAssetsdCloudInternalClient_enablePhotostreamsWithStreamID___block_invoke_3(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 enablePhotostreamsWithStreamID:*(a1 + 32)];
}

void __63__PLAssetsdCloudInternalClient_enablePhotostreamsWithStreamID___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient enablePhotostreamsWithStreamID:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)createPhotostreamAlbumWithStreamID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v17) = v6;
  if (v6)
  {
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: createPhotostreamAlbumWithStreamID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v21 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6257];
  [v13 createPhotostreamAlbumWithStreamID:v5];

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v8)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = v16;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __67__PLAssetsdCloudInternalClient_createPhotostreamAlbumWithStreamID___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCloudInternalClient createPhotostreamAlbumWithStreamID:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

@end