@interface PLAssetsdNotificationClient
- (void)asyncNotifyEndOfInterestForUnrenderedCinematicVideoItems;
- (void)asyncNotifyExpiringMomentShareWithUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle;
- (void)asyncNotifyInterestingMemoryNotificationForColletionID:(id)d notificationDeliveryDate:(id)date;
- (void)asyncNotifyInterestingMemoryNotificationViewedForColletionID:(id)d;
- (void)asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date;
- (void)asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date;
- (void)asyncNotifyReadyToViewMomentShareWithUUID:(id)d;
- (void)asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d;
- (void)asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:(id)d acceptInvitation:(BOOL)invitation;
- (void)asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date;
- (void)asyncNotifyStartOfInterestForUnrenderedCinematicVideoItems;
- (void)asyncNotifyUserViewedNotificationWithAlbumCloudGUID:(id)d;
@end

@implementation PLAssetsdNotificationClient

- (void)asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];

  [_unboostingRemoteObjectProxy noteSharedLibrarySuggestionsWithNotificationDeliveryDate:dateCopy];
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];

  [_unboostingRemoteObjectProxy notifyEndOfInterestForUnrenderedCinematicVideoItems];
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];

  [_unboostingRemoteObjectProxy notifyStartOfInterestForUnrenderedCinematicVideoItems];
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

- (void)asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:dateCopy];
}

- (void)asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy notePhotosChallengeSubmissionWithNotificationDeliveryDate:dateCopy];
}

- (void)asyncNotifyReadyToViewMomentShareWithUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy noteReadyToViewMomentShareWithUUID:dCopy];

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

- (void)asyncNotifyExpiringMomentShareWithUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy noteGoingToExpireCMMsAlertWithCMMUUIDs:dsCopy thumbnailImageData:dataCopy notificationTitle:titleCopy notificationSubtitle:subtitleCopy];

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

- (void)asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:dCopy];

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

- (void)asyncNotifyInterestingMemoryNotificationViewedForColletionID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy noteInterestingMemoryAlertViewedWithUUID:dCopy];

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

- (void)asyncNotifyInterestingMemoryNotificationForColletionID:(id)d notificationDeliveryDate:(id)date
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy noteInterestingMemoryAlertWithMemoryUUID:dCopy notificationDeliveryDate:dateCopy];

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

- (void)asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:(id)d acceptInvitation:(BOOL)invitation
{
  invitationCopy = invitation;
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy respondToPhotoStreamInvitationWithAlbumCloudGUID:dCopy acceptInvitation:invitationCopy];

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

- (void)asyncNotifyUserViewedNotificationWithAlbumCloudGUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy userViewedNotificationWithAlbumCloudGUID:dCopy];

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