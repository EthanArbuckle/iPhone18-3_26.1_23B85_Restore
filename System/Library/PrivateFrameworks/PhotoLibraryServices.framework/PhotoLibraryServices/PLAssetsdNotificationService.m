@interface PLAssetsdNotificationService
- (void)noteGoingToExpireCMMsAlertWithCMMUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6;
- (void)noteInterestingMemoryAlertViewedWithUUID:(id)a3;
- (void)noteInterestingMemoryAlertWithMemoryUUID:(id)a3 notificationDeliveryDate:(id)a4;
- (void)notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)a3;
- (void)notePhotosChallengeSubmissionWithNotificationDeliveryDate:(id)a3;
- (void)noteReadyToViewMomentShareWithUUID:(id)a3;
- (void)noteSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)a3;
- (void)notifyEndOfInterestForUnrenderedCinematicVideoItems;
- (void)notifyStartOfInterestForUnrenderedCinematicVideoItems;
- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3;
- (void)respondToPhotoStreamInvitationWithAlbumCloudGUID:(id)a3 acceptInvitation:(BOOL)a4;
- (void)userViewedNotificationWithAlbumCloudGUID:(id)a3;
@end

@implementation PLAssetsdNotificationService

- (void)noteSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v4;
  if (v4)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteSharedLibrarySuggestionsWithNotificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:v3];

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)notifyEndOfInterestForUnrenderedCinematicVideoItems
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  *sel = 0u;
  v7 = 0u;
  v2 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v7) = v2;
  if (v2)
  {
    *(&v7 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: notifyEndOfInterestForUnrenderedCinematicVideoItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v7 + 1), (&v9 + 8));
  }

  v3 = +[PLNotificationManager sharedManager];
  [v3 removeNotificationForInterestInUnrenderedCinematicVideoItems];

  if (v8 == 1)
  {
    os_activity_scope_leave((&v9 + 8));
  }

  if (v9)
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v12 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v9, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)notifyStartOfInterestForUnrenderedCinematicVideoItems
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  *sel = 0u;
  v7 = 0u;
  v2 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v7) = v2;
  if (v2)
  {
    *(&v7 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: notifyStartOfInterestForUnrenderedCinematicVideoItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v7 + 1), (&v9 + 8));
  }

  v3 = +[PLNotificationManager sharedManager];
  [v3 postNotificationForInterestInUnrenderedCinematicVideoItems];

  if (v8 == 1)
  {
    os_activity_scope_leave((&v9 + 8));
  }

  if (v9)
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v12 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v9, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)a3
{
  v3 = a3;
  v4 = +[PLNotificationManager sharedManager];
  [v4 postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:v3];
}

- (void)notePhotosChallengeSubmissionWithNotificationDeliveryDate:(id)a3
{
  v3 = a3;
  v4 = +[PLNotificationManager sharedManager];
  [v4 postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:v3];
}

- (void)noteReadyToViewMomentShareWithUUID:(id)a3
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
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteReadyToViewMomentShareWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdNotificationService noteReadyToViewMomentShareWithUUID:]", v11];
  v7 = +[PLNotificationManager sharedManager];
  [v7 postNotificationForReadyToViewMomentShareWithUUID:v4 photoLibrary:v6];

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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)noteGoingToExpireCMMsAlertWithCMMUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20 = 0u;
  *sel = 0u;
  v18 = 0u;
  v13 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = v13;
  if (v13)
  {
    *(&v18 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteGoingToExpireCMMsAlertWithCMMUUIDs:thumbnailImageData:notificationTitle:notificationSubtitle:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v18 + 1), (&v20 + 8));
  }

  v14 = +[PLNotificationManager sharedManager];
  [v14 postNotificationForExpiringCMMsWithUUIDs:v9 thumbnailImageData:v10 notificationTitle:v11 notificationSubtitle:v12];

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v20)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v4;
  if (v4)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:v3];

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)respondToPhotoStreamInvitationWithAlbumCloudGUID:(id)a3 acceptInvitation:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v6 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = v6;
  if (v6)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: respondToPhotoStreamInvitationWithAlbumCloudGUID:acceptInvitation:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v7 = +[PLNotificationManager sharedManager];
  [v7 sendResponse:v4 toPhotoStreamInvitationForAlbumWithCloudGUID:v5];

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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)noteInterestingMemoryAlertViewedWithUUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v4;
  if (v4)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteInterestingMemoryAlertViewedWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 removeNotificationForInterestingMemoryWithUUID:v3];

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)noteInterestingMemoryAlertWithMemoryUUID:(id)a3 notificationDeliveryDate:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = v8;
  if (v8)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteInterestingMemoryAlertWithMemoryUUID:notificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdNotificationService noteInterestingMemoryAlertWithMemoryUUID:notificationDeliveryDate:]", v14];
  v10 = +[PLNotificationManager sharedManager];
  [v10 postNotificationForInterestingMemoryWithMemoryUUID:v6 library:v9 notificationDeliveryDate:v7];

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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)userViewedNotificationWithAlbumCloudGUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v4;
  if (v4)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: userViewedNotificationWithAlbumCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 userViewedNotificationWithAlbumCloudGUID:v3];

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

@end