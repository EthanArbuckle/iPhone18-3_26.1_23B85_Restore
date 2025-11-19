@interface PLAssetsdNotificationClient
- (void)asyncNotifyEndOfInterestForUnrenderedCinematicVideoItems;
- (void)asyncNotifyExpiringMomentShareWithUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6;
- (void)asyncNotifyInterestingMemoryNotificationForColletionID:(id)a3 notificationDeliveryDate:(id)a4;
- (void)asyncNotifyInterestingMemoryNotificationViewedForColletionID:(id)a3;
- (void)asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)a3;
- (void)asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)a3;
- (void)asyncNotifyReadyToViewMomentShareWithUUID:(id)a3;
- (void)asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3;
- (void)asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3 acceptInvitation:(BOOL)a4;
- (void)asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:(id)a3;
- (void)asyncNotifyStartOfInterestForUnrenderedCinematicVideoItems;
- (void)asyncNotifyUserViewedNotificationWithAlbumCloudGUID:(id)a3;
@end

@implementation PLAssetsdNotificationClient

- (void)asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:(id)a3
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
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v13 = [v12 _unboostingRemoteObjectProxy];

  [v13 noteSharedLibrarySuggestionsWithNotificationDeliveryDate:v5];
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

- (void)asyncNotifyEndOfInterestForUnrenderedCinematicVideoItems
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyEndOfInterestForUnrenderedCinematicVideoItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v11 = [v10 _unboostingRemoteObjectProxy];

  [v11 notifyEndOfInterestForUnrenderedCinematicVideoItems];
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

- (void)asyncNotifyStartOfInterestForUnrenderedCinematicVideoItems
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyStartOfInterestForUnrenderedCinematicVideoItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v11 = [v10 _unboostingRemoteObjectProxy];

  [v11 notifyStartOfInterestForUnrenderedCinematicVideoItems];
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

- (void)asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)a3
{
  v4 = a3;
  v6 = [(PLAssetsdBaseClient *)self proxyFactory];
  v5 = [v6 _unboostingRemoteObjectProxy];
  [v5 notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:v4];
}

- (void)asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)a3
{
  v4 = a3;
  v6 = [(PLAssetsdBaseClient *)self proxyFactory];
  v5 = [v6 _unboostingRemoteObjectProxy];
  [v5 notePhotosChallengeSubmissionWithNotificationDeliveryDate:v4];
}

- (void)asyncNotifyReadyToViewMomentShareWithUUID:(id)a3
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
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyReadyToViewMomentShareWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v13 = [v12 _unboostingRemoteObjectProxy];
  [v13 noteReadyToViewMomentShareWithUUID:v5];

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

- (void)asyncNotifyExpiringMomentShareWithUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v15 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v15;
  if (v15)
  {
    *(&v26 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyExpiringMomentShareWithUUIDs:thumbnailImageData:notificationTitle:notificationSubtitle:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v26 + 1), (&v27 + 8));
  }

  v16 = PLRequestGetLog();
  sel[1] = a2;
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v30 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v21 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22 = [v21 _unboostingRemoteObjectProxy];
  [v22 noteGoingToExpireCMMsAlertWithCMMUUIDs:v11 thumbnailImageData:v12 notificationTitle:v13 notificationSubtitle:v14];

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v17)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = sel_getName(sel[1]);
      *buf = 136446210;
      v30 = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v24, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3
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
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v13 = [v12 _unboostingRemoteObjectProxy];
  [v13 reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:v5];

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

- (void)asyncNotifyInterestingMemoryNotificationViewedForColletionID:(id)a3
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
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyInterestingMemoryNotificationViewedForColletionID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v13 = [v12 _unboostingRemoteObjectProxy];
  [v13 noteInterestingMemoryAlertViewedWithUUID:v5];

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

- (void)asyncNotifyInterestingMemoryNotificationForColletionID:(id)a3 notificationDeliveryDate:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v20) = v9;
  if (v9)
  {
    *(&v20 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyInterestingMemoryNotificationForColletionID:notificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v21 + 8));
  }

  v10 = PLRequestGetLog();
  sel[1] = a2;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v24 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v16 = [v15 _unboostingRemoteObjectProxy];
  [v16 noteInterestingMemoryAlertWithMemoryUUID:v7 notificationDeliveryDate:v8];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v11)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = v19;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3 acceptInvitation:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = 0u;
  *sel = 0u;
  v19 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v19) = v8;
  if (v8)
  {
    *(&v19 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:acceptInvitation:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v15 = [v14 _unboostingRemoteObjectProxy];
  [v15 respondToPhotoStreamInvitationWithAlbumCloudGUID:v7 acceptInvitation:v4];

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

- (void)asyncNotifyUserViewedNotificationWithAlbumCloudGUID:(id)a3
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
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: asyncNotifyUserViewedNotificationWithAlbumCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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
  v13 = [v12 _unboostingRemoteObjectProxy];
  [v13 userViewedNotificationWithAlbumCloudGUID:v5];

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

@end