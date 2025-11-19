@interface PLNotificationUNCenter
+ (id)_UNNotificationInitialize;
+ (id)_categoryIdentifierForNotification:(id)a3;
+ (id)_contentUserInfoForNotification:(id)a3;
+ (id)_invitationsCategoryWithJunkAction:(BOOL)a3;
+ (id)_notificationEnablementKeyForNotificationType:(int64_t)a3;
+ (id)_sharedLibraryParticipantAssetTrashNotificationCategory;
+ (id)_sharedLibrarySuggestionsCategory;
+ (id)_soundForNotification:(id)a3;
+ (id)_threadIdentifierForNotification:(id)a3;
+ (id)_updatesCategory;
+ (id)_updatesCommentedCategory;
+ (unint64_t)_interruptionLevelForNotification:(id)a3;
- (PLNotificationUNCenter)init;
- (PLNotificationUNCenterDelegate)delegate;
- (id)_copiedContentFromContent:(id)a3 WithImageData:(id)a4 identifier:(id)a5;
- (id)_makeTempThumbnailFileForImageData:(id)a3 identifier:(id)a4;
- (id)_makeTempThumbnailFileForNotification:(id)a3;
- (id)_notificationContentWithNotification:(id)a3 withImageURL:(id)a4 sound:(BOOL)a5;
- (void)_findNotificationForRequestIdentifier:(id)a3 withPendingHandler:(id)a4 deliveredHandler:(id)a5 completionHandler:(id)a6;
- (void)_updateAppBadge;
- (void)enumerateExistingNotificationsUsingBlock:(id)a3;
- (void)findExistingNotificationByIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)mergeExistingAndSendNotificationForNotification:(id)a3 requestIdentifier:(id)a4 thumbnailHandler:(id)a5;
- (void)mergeExistingAndSendNotificationForNotification:(id)a3 thumbnailHandler:(id)a4;
- (void)removeAllNotifications;
- (void)removeNotificationWithRequestIdentifiers:(id)a3;
- (void)removeNotificationsForNotifications:(id)a3;
- (void)sendNotificationForNotification:(id)a3;
- (void)sendNotificationForNotification:(id)a3 withAttachmentURL:(id)a4 forceToSound:(BOOL)a5;
- (void)updateBadgeCountWithDelay:(unint64_t)a3;
- (void)updateImageData:(id)a3 forNotificationWithIdentifier:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PLNotificationUNCenter

- (PLNotificationUNCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAppBadge
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PLNotificationUNCenter *)self delegate];
  v4 = [v3 currentAppBadgeCountForNotificationUNCenter:self];

  v5 = [(UNUserNotificationCenter *)self->_unc badgeNumber];
  v6 = [v5 unsignedIntValue];

  if (v4 != v6)
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[Badge Count] Changed application badge count from %lu to %lu", &v8, 0x16u);
    }
  }

  [(UNUserNotificationCenter *)self->_unc setBadgeCount:v4 withCompletionHandler:0];
}

- (id)_copiedContentFromContent:(id)a3 WithImageData:(id)a4 identifier:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"content"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E6983220]);
  v13 = [v9 title];
  [v12 setTitle:v13];

  v14 = [v9 body];
  [v12 setBody:v14];

  v15 = [v9 categoryIdentifier];
  [v12 setCategoryIdentifier:v15];

  v16 = [v9 threadIdentifier];
  [v12 setThreadIdentifier:v16];

  v17 = [v9 defaultActionURL];
  [v12 setDefaultActionURL:v17];

  v18 = [v9 sound];
  [v12 setSound:v18];

  v19 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForImageData:v10 identifier:v11];
  if (v19)
  {
    v31 = 0;
    v20 = [MEMORY[0x1E6983268] attachmentWithIdentifier:@"my_image" URL:v19 options:0 error:&v31];
    v21 = v31;
    if (v20)
    {
      v36[0] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [v12 setAttachments:v22];

      v23 = MEMORY[0x1E695DF90];
      v24 = [v9 userInfo];
      v25 = [v23 dictionaryWithDictionary:v24];

      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];
      [v26 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C0290]];

      [v12 setUserInfo:v25];
    }

    else
    {
      v27 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [v21 localizedDescription];
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "ERROR: create attachment for URL (%@) failed, error: %@", buf, 0x16u);
      }

      v25 = v12;
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (id)_notificationContentWithNotification:(id)a3 withImageURL:(id)a4 sound:(BOOL)a5
{
  v5 = a5;
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:893 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E6983220]);
  v12 = [v9 title];
  [v11 setTitle:v12];

  v13 = [v9 message];
  [v11 setBody:v13];

  v14 = [objc_opt_class() _categoryIdentifierForNotification:v9];
  [v11 setCategoryIdentifier:v14];

  v15 = [objc_opt_class() _threadIdentifierForNotification:v9];
  [v11 setThreadIdentifier:v15];

  [v11 setInterruptionLevel:{objc_msgSend(objc_opt_class(), "_interruptionLevelForNotification:", v9)}];
  v16 = MEMORY[0x1E695DFF8];
  v17 = [v9 destinationURLString];
  v18 = [v16 URLWithString:v17];
  [v11 setDefaultActionURL:v18];

  v19 = [objc_opt_class() _contentUserInfoForNotification:v9];
  [v11 setUserInfo:v19];

  if (v5)
  {
    v20 = [objc_opt_class() _soundForNotification:v9];
    [v11 setSound:v20];
  }

  if (v10)
  {
    v27 = 0;
    v21 = [MEMORY[0x1E6983268] attachmentWithIdentifier:@"my_image" URL:v10 options:0 error:&v27];
    v22 = v27;
    if (v21)
    {
      v32[0] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [v11 setAttachments:v23];
    }

    else
    {
      v23 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v22 localizedDescription];
        *buf = 138412546;
        v29 = v10;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "ERROR: create attachment for URL (%@) failed, error: %@", buf, 0x16u);
      }
    }
  }

  return v11;
}

- (id)_makeTempThumbnailFileForImageData:(id)a3 identifier:(id)a4
{
  v4 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = NSTemporaryDirectory();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notificationTempImage_%@.jpg", v6];

    v10 = [v8 stringByAppendingPathComponent:v9];

    v15 = 0;
    LODWORD(v6) = [v7 writeToFile:v10 options:1 error:&v15];

    v11 = v15;
    if (v6)
    {
      v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    }

    else
    {
      v12 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 localizedDescription];
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ERROR: Writing temp file for notification thumbnail failed: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)_makeTempThumbnailFileForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 thumbnailImageData];
  if (v5 && ([v4 requestIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForImageData:v5 identifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a5;
  PLProcessNotificationResponse(a4);
  v6[2]();
}

- (void)enumerateExistingNotificationsUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  unc = self->_unc;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke;
  v9[3] = &unk_1E7571828;
  v7 = v5;
  v10 = v7;
  v11 = v12;
  v9[4] = self;
  [(UNUserNotificationCenter *)unc getPendingNotificationRequestsWithCompletionHandler:v9];

  _Block_object_dispose(v12, 8);
}

void __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_2;
  v12[3] = &unk_1E75717B0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v13 = v4;
  v14 = v5;
  [a2 enumerateObjectsUsingBlock:v12];
  v6 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_3;
  v9[3] = &unk_1E7571800;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [v6 getDeliveredNotificationsWithCompletionHandler:v9];
}

void __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 content];
  v7 = [v6 userInfo];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];

  v8 = v9;
  if (v9)
  {
    (*(*(a1 + 32) + 16))();
    v8 = v9;
    *a4 = *(*(*(a1 + 40) + 8) + 24);
  }
}

void __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_4;
  v6[3] = &unk_1E75717D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __67__PLNotificationUNCenter_enumerateExistingNotificationsUsingBlock___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 request];
  v7 = [v6 content];
  v8 = [v7 userInfo];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];

  v9 = v10;
  if (v10)
  {
    (*(*(a1 + 32) + 16))();
    v9 = v10;
    *a4 = *(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)findExistingNotificationByIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__PLNotificationUNCenter_findExistingNotificationByIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7571760;
  v17[4] = v18;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PLNotificationUNCenter_findExistingNotificationByIdentifier_withCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E7571788;
  v16[4] = v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PLNotificationUNCenter_findExistingNotificationByIdentifier_withCompletionHandler___block_invoke_3;
  v13[3] = &unk_1E7573998;
  v10 = v9;
  v14 = v10;
  v15 = v18;
  [(PLNotificationUNCenter *)self _findNotificationForRequestIdentifier:v7 withPendingHandler:v17 deliveredHandler:v16 completionHandler:v13];

  _Block_object_dispose(v18, 8);
}

- (void)mergeExistingAndSendNotificationForNotification:(id)a3 requestIdentifier:(id)a4 thumbnailHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke;
  v25[3] = &unk_1E75716E8;
  v25[4] = self;
  v26 = v9;
  v27 = v8;
  v28 = v30;
  v29 = v32;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_2;
  v19[3] = &unk_1E7571710;
  v23 = v32;
  v20 = v27;
  v21 = self;
  v11 = v26;
  v22 = v11;
  v24 = v30;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_68;
  v14[3] = &unk_1E7571738;
  v17 = v32;
  v14[4] = self;
  v12 = v20;
  v15 = v12;
  v18 = v30;
  v13 = v10;
  v16 = v13;
  [(PLNotificationUNCenter *)self _findNotificationForRequestIdentifier:v11 withPendingHandler:v25 deliveredHandler:v19 completionHandler:v14];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 8);
  v13 = *(a1 + 40);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v13 count:1];
  [v3 removePendingNotificationRequestsWithIdentifiers:{v6, v13, v14}];

  v7 = [v5 content];

  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];

  if (v9)
  {
    v10 = [*(a1 + 48) notificationByMergingWithNotificationDictionary:v9];
    if (v10)
    {
      [*(a1 + 32) sendNotificationForNotification:v10];
      v11 = [v10 thumbnailImageData];

      if (!v11)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) sendNotificationForNotification:*(a1 + 48)];
    v12 = [*(a1 + 48) thumbnailImageData];

    if (!v12)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = [a2 request];
    v4 = [v3 content];
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];

    if (v6)
    {
      v7 = [*(a1 + 32) notificationByMergingWithNotificationDictionary:v6];
      if (v7)
      {
        v8 = [*(a1 + 40) _makeTempThumbnailFileForNotification:v7];
        v9 = [*(a1 + 40) _notificationContentWithNotification:v7 withImageURL:v8 sound:0];
        v10 = *(a1 + 48);
        v11 = *(*(a1 + 40) + 8);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_3;
        v12[3] = &unk_1E7575FA8;
        v13 = v7;
        [v11 replaceContentForRequestWithIdentifier:v10 replacementContent:v9 completionHandler:v12];
        if (!v8)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }
  }
}

uint64_t __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_68(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) sendNotificationForNotification:*(a1 + 40)];
    v2 = [*(a1 + 40) thumbnailImageData];

    if (!v2)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  result = *(a1 + 48);
  if (result && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "PLNotification replaced notification content: %@ (error: %@)", &v6, 0x16u);
  }
}

- (void)mergeExistingAndSendNotificationForNotification:(id)a3 thumbnailHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 requestIdentifier];
  [(PLNotificationUNCenter *)self mergeExistingAndSendNotificationForNotification:v7 requestIdentifier:v8 thumbnailHandler:v6];
}

- (void)removeNotificationWithRequestIdentifiers:(id)a3
{
  unc = self->_unc;
  v5 = a3;
  [(UNUserNotificationCenter *)unc removePendingNotificationRequestsWithIdentifiers:v5];
  [(UNUserNotificationCenter *)self->_unc removeDeliveredNotificationsWithIdentifiers:v5];

  [(PLNotificationUNCenter *)self updateBadgeCountWithDelay:1];
}

- (void)_findNotificationForRequestIdentifier:(id)a3 withPendingHandler:(id)a4 deliveredHandler:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v15 = (v12 | v13) == 0;
  if (!(v12 | v13))
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"pendingHandler || deliveredHandler"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7571648;
  aBlock[4] = self;
  v16 = v11;
  v36 = v16;
  v17 = v13;
  v37 = v17;
  v18 = v14;
  v38 = v18;
  v19 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_4;
  v29[3] = &unk_1E75716C0;
  v29[4] = self;
  v30 = v16;
  v31 = v12;
  v32 = v17;
  v20 = v19;
  v33 = v20;
  v34 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v12;
  v25 = _Block_copy(v29);
  v26 = v25;
  if (!v15)
  {
    if (!v12)
    {
      v25 = v20;
    }

    (*(v25 + 2))();
  }
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7571620;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 getDeliveredNotificationsWithCompletionHandler:v3];
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_5;
  v9[3] = &unk_1E7571698;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v3;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  [v2 getPendingNotificationRequestsWithCompletionHandler:v9];
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 40))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_6;
    v8[3] = &unk_1E7571670;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v8];
  }

  if (*(a1 + 48))
  {
    v7 = *(a1 + 56);
LABEL_6:
    (*(v7 + 16))(v7, v3, v4, v5);
    goto LABEL_7;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    *a4 = 1;
  }
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_3;
  v9[3] = &unk_1E75715F8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v9];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v4, v5, v6, v7);
  }
}

void __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 request];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
    *a4 = 1;
  }
}

- (void)updateImageData:(id)a3 forNotificationWithIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"imageData"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke;
  v18[3] = &unk_1E75715A8;
  v18[4] = self;
  v19 = v7;
  v20 = v9;
  v21 = v22;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke_59;
  v14[3] = &unk_1E75715D0;
  v17 = v22;
  v14[4] = self;
  v10 = v19;
  v15 = v10;
  v11 = v20;
  v16 = v11;
  [(PLNotificationUNCenter *)self _findNotificationForRequestIdentifier:v11 withPendingHandler:v18 deliveredHandler:v14 completionHandler:0];

  _Block_object_dispose(v22, 8);
}

void __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 attachments];

  if (![v5 count])
  {
    v6 = *(a1 + 32);
    v7 = [v3 content];
    v8 = [v6 _copiedContentFromContent:v7 WithImageData:*(a1 + 40) identifier:*(a1 + 48)];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 8);
      v21[0] = *(a1 + 48);
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v9 removePendingNotificationRequestsWithIdentifiers:v10];

      v11 = [v3 trigger];
      v12 = [MEMORY[0x1E6983298] requestWithIdentifier:*(a1 + 48) content:v8 trigger:v11];
      objc_initWeak(&location, *(a1 + 32));
      v13 = *(*(a1 + 32) + 8);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke_2;
      v15[3] = &unk_1E7571580;
      objc_copyWeak(&v19, &location);
      v16 = v8;
      v17 = *(a1 + 48);
      v14 = v12;
      v18 = v14;
      [v13 addNotificationRequest:v14 withCompletionHandler:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

void __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke_59(void *a1, void *a2)
{
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v4 = a1[4];
    v5 = [a2 request];
    v6 = [v5 content];
    v8 = [v4 _copiedContentFromContent:v6 WithImageData:a1[5] identifier:a1[6]];

    v7 = v8;
    if (v8)
    {
      [*(a1[4] + 8) replaceContentForRequestWithIdentifier:a1[6] replacementContent:v8 completionHandler:&__block_literal_global_74859];
      v7 = v8;
    }
  }
}

void __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke_2_60(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLNotification updated thumbnail image (error: %@)", &v4, 0xCu);
  }
}

void __72__PLNotificationUNCenter_updateImageData_forNotificationWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "ERROR: PLNotification failed to post a notifcation (error: %@)", &v12, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained updateBadgeCountWithDelay:0];

    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) title];
      v8 = [*(a1 + 32) body];
      v9 = [*(a1 + 32) defaultActionURL];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = 138413314;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "PLNotification replaced a notification (title: %@, body: %@, defaultActionURL: %@, requestIdentifier: %@, request: %@)", &v12, 0x34u);
    }
  }
}

- (void)updateBadgeCountWithDelay:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 1000000000 * a3);
  v5 = dispatch_get_global_queue(17, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PLNotificationUNCenter_updateBadgeCountWithDelay___block_invoke;
  v6[3] = &unk_1E75788C0;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__PLNotificationUNCenter_updateBadgeCountWithDelay___block_invoke(uint64_t a1)
{
  v2 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PLNotificationUNCenter_updateBadgeCountWithDelay___block_invoke_2;
  v3[3] = &unk_1E75788C0;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performBlock:v3];
  objc_destroyWeak(&v4);
}

void __52__PLNotificationUNCenter_updateBadgeCountWithDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAppBadge];
}

- (void)removeNotificationsForNotifications:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"notifications"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PLNotificationUNCenter_removeNotificationsForNotifications___block_invoke;
  v9[3] = &unk_1E7571558;
  v10 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v9];
  [(UNUserNotificationCenter *)self->_unc removePendingNotificationRequestsWithIdentifiers:v7];
  [(UNUserNotificationCenter *)self->_unc removeDeliveredNotificationsWithIdentifiers:v7];
  [(PLNotificationUNCenter *)self updateBadgeCountWithDelay:1];
}

void __62__PLNotificationUNCenter_removeNotificationsForNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestIdentifier];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (void)removeAllNotifications
{
  [(UNUserNotificationCenter *)self->_unc removeAllPendingNotificationRequests];
  unc = self->_unc;

  [(UNUserNotificationCenter *)unc removeAllDeliveredNotifications];
}

- (void)sendNotificationForNotification:(id)a3 withAttachmentURL:(id)a4 forceToSound:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v11 = [objc_opt_class() _notificationEnablementKeyForNotificationType:{objc_msgSend(v9, "notificationType")}];
  if (!v11 || (PLIsNotificationTypeEnabledForKey() & 1) != 0)
  {
    v12 = [v9 notificationType];
    if (v12 <= 7)
    {
      if ((v12 - 2) >= 4)
      {
        if (v12 >= 2)
        {
          v13 = 0.001;
          if (v12 == 6)
          {
            v21 = [v9 notificationDeliveryDate];
            v22 = v21;
            if (v21)
            {
              [v21 timeIntervalSinceNow];
              v13 = v23;
            }

            else
            {
              v13 = 0.001;
            }

            v24 = [MEMORY[0x1E695E000] standardUserDefaults];
            v25 = [v24 objectForKey:@"PhotosMemoriesNotificationDelayOverride"];

            if (v25)
            {
              [v25 doubleValue];
              v13 = v26;
            }
          }

          goto LABEL_13;
        }

LABEL_18:
        v13 = 2.0;
        goto LABEL_13;
      }
    }

    else if ((v12 - 8) >= 9)
    {
      v13 = 0.001;
      if (v12 != 17)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    v13 = 10.0;
LABEL_13:
    if (v13 < 0.001)
    {
      v13 = 0.001;
    }

    v14 = [MEMORY[0x1E6983300] triggerWithTimeInterval:0 repeats:v13];
    v15 = [(PLNotificationUNCenter *)self _notificationContentWithNotification:v9 withImageURL:v10 sound:v5];
    v16 = [v9 requestIdentifier];
    v17 = [MEMORY[0x1E6983298] requestWithIdentifier:v16 content:v15 trigger:v14];
    objc_initWeak(buf, self);
    unc = self->_unc;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __89__PLNotificationUNCenter_sendNotificationForNotification_withAttachmentURL_forceToSound___block_invoke;
    v28[3] = &unk_1E7571530;
    objc_copyWeak(v31, buf);
    v31[1] = *&v13;
    v19 = v15;
    v29 = v19;
    v20 = v16;
    v30 = v20;
    [(UNUserNotificationCenter *)unc addNotificationRequest:v17 withCompletionHandler:v28];

    objc_destroyWeak(v31);
    objc_destroyWeak(buf);

    goto LABEL_16;
  }

  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v9;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring disabled notification %@, enablement key: %{public}@", buf, 0x16u);
  }

LABEL_16:
}

void __89__PLNotificationUNCenter_sendNotificationForNotification_withAttachmentURL_forceToSound___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "ERROR: PLNotification failed to post a notifcation (error: %@)", &v12, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained updateBadgeCountWithDelay:*(a1 + 56)];

    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) title];
      v8 = [*(a1 + 32) body];
      v9 = [*(a1 + 32) defaultActionURL];
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v12 = 138413314;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "PLNotification Posted: Title: %@, Body: %@, defaultActionURL: %@, delay:%.3fs, requestIdentifier: %@", &v12, 0x34u);
    }
  }
}

- (void)sendNotificationForNotification:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"notification"}];

    v5 = 0;
  }

  v6 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForNotification:v5];
  [(PLNotificationUNCenter *)self sendNotificationForNotification:v8 withAttachmentURL:v6 forceToSound:1];
}

- (PLNotificationUNCenter)init
{
  v6.receiver = self;
  v6.super_class = PLNotificationUNCenter;
  v2 = [(PLNotificationUNCenter *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() _UNNotificationInitialize];
    unc = v2->_unc;
    v2->_unc = v3;

    [(UNUserNotificationCenter *)v2->_unc setDelegate:v2];
  }

  return v2;
}

+ (id)_contentUserInfoForNotification:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLNotificationUNCenter.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "notificationType")}];
  [v6 setObject:v7 forKey:*MEMORY[0x1E69C0248]];

  v8 = [v5 mainAssetUUID];

  if (v8)
  {
    v9 = [v5 mainAssetUUID];
    [v6 setObject:v9 forKey:*MEMORY[0x1E69C01B0]];
  }

  v10 = [v5 albumCloudGUID];

  if (v10)
  {
    v11 = [v5 albumCloudGUID];
    [v6 setObject:v11 forKey:*MEMORY[0x1E69C0180]];
  }

  v12 = [v5 interestingMemoryUUID];

  if (v12)
  {
    v13 = [v5 interestingMemoryUUID];
    [v6 setObject:v13 forKey:*MEMORY[0x1E69C0220]];
  }

  v14 = [v5 photoLibraryURLString];

  if (v14)
  {
    v15 = [v5 photoLibraryURLString];
    [v6 setObject:v15 forKey:*MEMORY[0x1E69C0268]];
  }

  v16 = [v5 suppressionContexts];

  if (v16)
  {
    v17 = [v5 suppressionContexts];
    [v6 setObject:v17 forKey:*MEMORY[0x1E69C0280]];
  }

  v18 = [v5 dictionaryRepresentation];
  if (v18)
  {
    [v6 setObject:v18 forKey:*MEMORY[0x1E69C0200]];
  }

  return v6;
}

+ (unint64_t)_interruptionLevelForNotification:(id)a3
{
  v3 = [a3 notificationType];
  if (v3 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_19C60FBF8[v3];
  }
}

+ (id)_threadIdentifierForNotification:(id)a3
{
  v3 = [a3 notificationType];
  v4 = @"com.apple.mobileslideshow.iCloudPhotoSharing";
  if (((1 << v3) & 0x2003B) == 0)
  {
    v4 = 0;
  }

  if (v3 <= 0x11)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (id)_categoryIdentifierForNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 notificationType];
  v5 = 0;
  v6 = MEMORY[0x1E69C0120];
  switch(v4)
  {
    case 0:
      v7 = [v3 offerToReportAsJunk];
      v6 = MEMORY[0x1E69C0128];
      if (v7)
      {
        v6 = MEMORY[0x1E69C0130];
      }

      goto LABEL_15;
    case 1:
    case 17:
      goto LABEL_15;
    case 3:
      v6 = MEMORY[0x1E69C0160];
      goto LABEL_15;
    case 4:
      v6 = MEMORY[0x1E69C0168];
      goto LABEL_15;
    case 5:
      v6 = MEMORY[0x1E69C0178];
      goto LABEL_15;
    case 6:
      v6 = MEMORY[0x1E69C0170];
      goto LABEL_15;
    case 9:
      v6 = MEMORY[0x1E69C0118];
      goto LABEL_15;
    case 10:
      v6 = MEMORY[0x1E69C0138];
      goto LABEL_15;
    case 12:
      v6 = MEMORY[0x1E69C0158];
      goto LABEL_15;
    case 13:
      v6 = MEMORY[0x1E69C0140];
      goto LABEL_15;
    case 14:
      v6 = MEMORY[0x1E69C0150];
      goto LABEL_15;
    case 16:
      v6 = MEMORY[0x1E69C0148];
LABEL_15:
      v5 = *v6;
      break;
    default:
      break;
  }

  return v5;
}

+ (id)_notificationEnablementKeyForNotificationType:(int64_t)a3
{
  if (a3 <= 0x11 && ((0x2567Fu >> a3) & 1) != 0)
  {
    v4 = **(&unk_1E7571848 + a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_soundForNotification:(id)a3
{
  v3 = MEMORY[0x1E6983238];
  v4 = a3;
  v5 = [v3 soundWithAlertType:9];
  v6 = [v4 notificationType];

  v7 = MEMORY[0x1E69DA918];
  if (v6 != 6)
  {
    v7 = MEMORY[0x1E69DA920];
  }

  [v5 setAlertTopic:*v7];

  return v5;
}

+ (id)_sharedLibraryParticipantAssetTrashNotificationCategory
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6983250];
  v3 = *MEMORY[0x1E69C0618];
  v4 = PLServicesSharedLibraryLocalizedFrameworkString();
  v5 = [v2 actionWithIdentifier:v3 title:v4 options:0];

  v6 = MEMORY[0x1E6983278];
  v7 = *MEMORY[0x1E69C0150];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [v6 categoryWithIdentifier:v7 actions:v8 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v9;
}

+ (id)_sharedLibrarySuggestionsCategory
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6983250];
  v3 = *MEMORY[0x1E69C0618];
  v4 = PLServicesSharedLibraryLocalizedFrameworkString();
  v5 = [v2 actionWithIdentifier:v3 title:v4 options:0];

  v6 = MEMORY[0x1E6983250];
  v7 = *MEMORY[0x1E69C0110];
  v8 = PLServicesSharedLibraryLocalizedFrameworkString();
  v9 = [v6 actionWithIdentifier:v7 title:v8 options:0];

  v10 = MEMORY[0x1E6983278];
  v11 = *MEMORY[0x1E69C0158];
  v15[0] = v5;
  v15[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [v10 categoryWithIdentifier:v11 actions:v12 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v13;
}

+ (id)_invitationsCategoryWithJunkAction:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *MEMORY[0x1E69C0128];
  if (v3)
  {
    v6 = MEMORY[0x1E6983250];
    v7 = *MEMORY[0x1E69C0100];
    v8 = PLServicesLocalizedFrameworkStringForAssetsd();
    v9 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"xmark.bin"];
    v10 = [v6 actionWithIdentifier:v7 title:v8 options:0 icon:v9];

    [v4 addObject:v10];
    v11 = *MEMORY[0x1E69C0130];

    v5 = v11;
  }

  v12 = MEMORY[0x1E6983250];
  v13 = *MEMORY[0x1E69C00A0];
  v14 = PLServicesLocalizedFrameworkStringForAssetsd();
  v15 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"checkmark.circle"];
  v16 = [v12 actionWithIdentifier:v13 title:v14 options:0 icon:v15];

  [v4 addObject:v16];
  v17 = MEMORY[0x1E6983250];
  v18 = *MEMORY[0x1E69C00F8];
  v19 = PLServicesLocalizedFrameworkStringForAssetsd();
  v20 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"xmark.circle"];
  v21 = [v17 actionWithIdentifier:v18 title:v19 options:0 icon:v20];

  [v4 addObject:v21];
  v22 = [MEMORY[0x1E6983278] categoryWithIdentifier:v5 actions:v4 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v22;
}

+ (id)_updatesCommentedCategory
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69832F0];
  v3 = *MEMORY[0x1E69C00A8];
  v4 = PLServicesLocalizedFrameworkStringForAssetsd();
  v5 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"bubble.left"];
  v6 = PLServicesLocalizedFrameworkStringForAssetsd();
  v7 = [v2 actionWithIdentifier:v3 title:v4 options:0 icon:v5 textInputButtonTitle:v6 textInputPlaceholder:&stru_1F0F06D80];

  v8 = MEMORY[0x1E6983278];
  v9 = *MEMORY[0x1E69C0168];
  v13[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [v8 categoryWithIdentifier:v9 actions:v10 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v11;
}

+ (id)_updatesCategory
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6983250];
  v3 = *MEMORY[0x1E69C0108];
  v4 = PLServicesLocalizedFrameworkStringForAssetsd();
  v5 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"hand.thumbsup"];
  v6 = [v2 actionWithIdentifier:v3 title:v4 options:0 icon:v5];

  v7 = MEMORY[0x1E69832F0];
  v8 = *MEMORY[0x1E69C00A8];
  v9 = PLServicesLocalizedFrameworkStringForAssetsd();
  v10 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"bubble.left"];
  v11 = PLServicesLocalizedFrameworkStringForAssetsd();
  v12 = [v7 actionWithIdentifier:v8 title:v9 options:0 icon:v10 textInputButtonTitle:v11 textInputPlaceholder:&stru_1F0F06D80];

  v16[0] = v6;
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [MEMORY[0x1E6983278] categoryWithIdentifier:*MEMORY[0x1E69C0160] actions:v13 intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

  return v14;
}

+ (id)_UNNotificationInitialize
{
  v15 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.mobileslideshow"];
  v14 = MEMORY[0x1E695DFD8];
  v13 = [objc_opt_class() _updatesCategory];
  v2 = [objc_opt_class() _updatesLikedCategory];
  v3 = [objc_opt_class() _updatesCommentedCategory];
  v4 = [objc_opt_class() _invitationsCategoryWithJunkAction:0];
  v5 = [objc_opt_class() _invitationsCategoryWithJunkAction:1];
  v6 = [objc_opt_class() _invitationAcceptedCategory];
  v7 = [objc_opt_class() _expiringCMMCategory];
  v8 = [objc_opt_class() _readyToViewInvitationCMMCategory];
  v9 = [objc_opt_class() _sharedLibrarySuggestionsCategory];
  v10 = [objc_opt_class() _sharedLibraryParticipantAssetTrashNotificationCategory];
  v11 = [v14 setWithObjects:{v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0}];

  [v15 setNotificationCategories:v11];

  return v15;
}

@end