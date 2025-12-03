@interface PLAssetsdNotificationService
- (void)noteGoingToExpireCMMsAlertWithCMMUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle;
- (void)noteInterestingMemoryAlertViewedWithUUID:(id)d;
- (void)noteInterestingMemoryAlertWithMemoryUUID:(id)d notificationDeliveryDate:(id)date;
- (void)notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date;
- (void)notePhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date;
- (void)noteReadyToViewMomentShareWithUUID:(id)d;
- (void)noteSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date;
- (void)notifyEndOfInterestForUnrenderedCinematicVideoItems;
- (void)notifyStartOfInterestForUnrenderedCinematicVideoItems;
- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d;
- (void)respondToPhotoStreamInvitationWithAlbumCloudGUID:(id)d acceptInvitation:(BOOL)invitation;
- (void)userViewedNotificationWithAlbumCloudGUID:(id)d;
@end

@implementation PLAssetsdNotificationService

- (void)noteSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteSharedLibrarySuggestionsWithNotificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:dateCopy];

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
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v7) = enabled;
  if (enabled)
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
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v7) = enabled;
  if (enabled)
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

- (void)notePhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v4 = +[PLNotificationManager sharedManager];
  [v4 postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:dateCopy];
}

- (void)notePhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v4 = +[PLNotificationManager sharedManager];
  [v4 postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:dateCopy];
}

- (void)noteReadyToViewMomentShareWithUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteReadyToViewMomentShareWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdNotificationService noteReadyToViewMomentShareWithUUID:]", v11];
  v7 = +[PLNotificationManager sharedManager];
  [v7 postNotificationForReadyToViewMomentShareWithUUID:dCopy photoLibrary:v6];

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

- (void)noteGoingToExpireCMMsAlertWithCMMUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
  v20 = 0u;
  *sel = 0u;
  v18 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = enabled;
  if (enabled)
  {
    *(&v18 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteGoingToExpireCMMsAlertWithCMMUUIDs:thumbnailImageData:notificationTitle:notificationSubtitle:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v18 + 1), (&v20 + 8));
  }

  v14 = +[PLNotificationManager sharedManager];
  [v14 postNotificationForExpiringCMMsWithUUIDs:dsCopy thumbnailImageData:dataCopy notificationTitle:titleCopy notificationSubtitle:subtitleCopy];

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

- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:dCopy];

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

- (void)respondToPhotoStreamInvitationWithAlbumCloudGUID:(id)d acceptInvitation:(BOOL)invitation
{
  invitationCopy = invitation;
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: respondToPhotoStreamInvitationWithAlbumCloudGUID:acceptInvitation:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v7 = +[PLNotificationManager sharedManager];
  [v7 sendResponse:invitationCopy toPhotoStreamInvitationForAlbumWithCloudGUID:dCopy];

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

- (void)noteInterestingMemoryAlertViewedWithUUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteInterestingMemoryAlertViewedWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 removeNotificationForInterestingMemoryWithUUID:dCopy];

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

- (void)noteInterestingMemoryAlertWithMemoryUUID:(id)d notificationDeliveryDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = enabled;
  if (enabled)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: noteInterestingMemoryAlertWithMemoryUUID:notificationDeliveryDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  v9 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdNotificationService noteInterestingMemoryAlertWithMemoryUUID:notificationDeliveryDate:]", v14];
  v10 = +[PLNotificationManager sharedManager];
  [v10 postNotificationForInterestingMemoryWithMemoryUUID:dCopy library:v9 notificationDeliveryDate:dateCopy];

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

- (void)userViewedNotificationWithAlbumCloudGUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: userViewedNotificationWithAlbumCloudGUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLNotificationManager sharedManager];
  [v5 userViewedNotificationWithAlbumCloudGUID:dCopy];

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