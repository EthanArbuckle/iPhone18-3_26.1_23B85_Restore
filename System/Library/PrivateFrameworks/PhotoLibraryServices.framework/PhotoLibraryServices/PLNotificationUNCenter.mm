@interface PLNotificationUNCenter
+ (id)_UNNotificationInitialize;
+ (id)_categoryIdentifierForNotification:(id)notification;
+ (id)_contentUserInfoForNotification:(id)notification;
+ (id)_invitationsCategoryWithJunkAction:(BOOL)action;
+ (id)_notificationEnablementKeyForNotificationType:(int64_t)type;
+ (id)_sharedLibraryParticipantAssetTrashNotificationCategory;
+ (id)_sharedLibrarySuggestionsCategory;
+ (id)_soundForNotification:(id)notification;
+ (id)_threadIdentifierForNotification:(id)notification;
+ (id)_updatesCategory;
+ (id)_updatesCommentedCategory;
+ (unint64_t)_interruptionLevelForNotification:(id)notification;
- (PLNotificationUNCenter)init;
- (PLNotificationUNCenterDelegate)delegate;
- (id)_copiedContentFromContent:(id)content WithImageData:(id)data identifier:(id)identifier;
- (id)_makeTempThumbnailFileForImageData:(id)data identifier:(id)identifier;
- (id)_makeTempThumbnailFileForNotification:(id)notification;
- (id)_notificationContentWithNotification:(id)notification withImageURL:(id)l sound:(BOOL)sound;
- (void)_findNotificationForRequestIdentifier:(id)identifier withPendingHandler:(id)handler deliveredHandler:(id)deliveredHandler completionHandler:(id)completionHandler;
- (void)_updateAppBadge;
- (void)enumerateExistingNotificationsUsingBlock:(id)block;
- (void)findExistingNotificationByIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)mergeExistingAndSendNotificationForNotification:(id)notification requestIdentifier:(id)identifier thumbnailHandler:(id)handler;
- (void)mergeExistingAndSendNotificationForNotification:(id)notification thumbnailHandler:(id)handler;
- (void)removeAllNotifications;
- (void)removeNotificationWithRequestIdentifiers:(id)identifiers;
- (void)removeNotificationsForNotifications:(id)notifications;
- (void)sendNotificationForNotification:(id)notification;
- (void)sendNotificationForNotification:(id)notification withAttachmentURL:(id)l forceToSound:(BOOL)sound;
- (void)updateBadgeCountWithDelay:(unint64_t)delay;
- (void)updateImageData:(id)data forNotificationWithIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
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
  delegate = [(PLNotificationUNCenter *)self delegate];
  v4 = [delegate currentAppBadgeCountForNotificationUNCenter:self];

  badgeNumber = [(UNUserNotificationCenter *)self->_unc badgeNumber];
  unsignedIntValue = [badgeNumber unsignedIntValue];

  if (v4 != unsignedIntValue)
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = unsignedIntValue;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[Badge Count] Changed application badge count from %lu to %lu", &v8, 0x16u);
    }
  }

  [(UNUserNotificationCenter *)self->_unc setBadgeCount:v4 withCompletionHandler:0];
}

- (id)_copiedContentFromContent:(id)content WithImageData:(id)data identifier:(id)identifier
{
  v36[1] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dataCopy = data;
  identifierCopy = identifier;
  if (!contentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"content"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E6983220]);
  title = [contentCopy title];
  [v12 setTitle:title];

  body = [contentCopy body];
  [v12 setBody:body];

  categoryIdentifier = [contentCopy categoryIdentifier];
  [v12 setCategoryIdentifier:categoryIdentifier];

  threadIdentifier = [contentCopy threadIdentifier];
  [v12 setThreadIdentifier:threadIdentifier];

  defaultActionURL = [contentCopy defaultActionURL];
  [v12 setDefaultActionURL:defaultActionURL];

  sound = [contentCopy sound];
  [v12 setSound:sound];

  v19 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForImageData:dataCopy identifier:identifierCopy];
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
      userInfo = [contentCopy userInfo];
      v25 = [v23 dictionaryWithDictionary:userInfo];

      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69C0200]];
      [v26 setObject:dataCopy forKeyedSubscript:*MEMORY[0x1E69C0290]];

      [v12 setUserInfo:v25];
    }

    else
    {
      v27 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = localizedDescription;
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

- (id)_notificationContentWithNotification:(id)notification withImageURL:(id)l sound:(BOOL)sound
{
  soundCopy = sound;
  v32[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  lCopy = l;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:893 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E6983220]);
  title = [notificationCopy title];
  [v11 setTitle:title];

  message = [notificationCopy message];
  [v11 setBody:message];

  v14 = [objc_opt_class() _categoryIdentifierForNotification:notificationCopy];
  [v11 setCategoryIdentifier:v14];

  v15 = [objc_opt_class() _threadIdentifierForNotification:notificationCopy];
  [v11 setThreadIdentifier:v15];

  [v11 setInterruptionLevel:{objc_msgSend(objc_opt_class(), "_interruptionLevelForNotification:", notificationCopy)}];
  v16 = MEMORY[0x1E695DFF8];
  destinationURLString = [notificationCopy destinationURLString];
  v18 = [v16 URLWithString:destinationURLString];
  [v11 setDefaultActionURL:v18];

  v19 = [objc_opt_class() _contentUserInfoForNotification:notificationCopy];
  [v11 setUserInfo:v19];

  if (soundCopy)
  {
    v20 = [objc_opt_class() _soundForNotification:notificationCopy];
    [v11 setSound:v20];
  }

  if (lCopy)
  {
    v27 = 0;
    v21 = [MEMORY[0x1E6983268] attachmentWithIdentifier:@"my_image" URL:lCopy options:0 error:&v27];
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
        localizedDescription = [v22 localizedDescription];
        *buf = 138412546;
        v29 = lCopy;
        v30 = 2112;
        v31 = localizedDescription;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "ERROR: create attachment for URL (%@) failed, error: %@", buf, 0x16u);
      }
    }
  }

  return v11;
}

- (id)_makeTempThumbnailFileForImageData:(id)data identifier:(id)identifier
{
  v4 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (data && identifier)
  {
    identifierCopy = identifier;
    dataCopy = data;
    v8 = NSTemporaryDirectory();
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"notificationTempImage_%@.jpg", identifierCopy];

    v10 = [v8 stringByAppendingPathComponent:identifierCopy];

    v15 = 0;
    LODWORD(identifierCopy) = [dataCopy writeToFile:v10 options:1 error:&v15];

    v11 = v15;
    if (identifierCopy)
    {
      v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    }

    else
    {
      v12 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v11 localizedDescription];
        *buf = 138412290;
        v17 = localizedDescription;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ERROR: Writing temp file for notification thumbnail failed: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)_makeTempThumbnailFileForNotification:(id)notification
{
  notificationCopy = notification;
  thumbnailImageData = [notificationCopy thumbnailImageData];
  if (thumbnailImageData && ([notificationCopy requestIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForImageData:thumbnailImageData identifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  PLProcessNotificationResponse(response);
  handlerCopy[2]();
}

- (void)enumerateExistingNotificationsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"block"}];
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
  v7 = blockCopy;
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

- (void)findExistingNotificationByIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
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
  [(PLNotificationUNCenter *)self _findNotificationForRequestIdentifier:identifierCopy withPendingHandler:v17 deliveredHandler:v16 completionHandler:v13];

  _Block_object_dispose(v18, 8);
}

- (void)mergeExistingAndSendNotificationForNotification:(id)notification requestIdentifier:(id)identifier thumbnailHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v26 = identifierCopy;
  v27 = notificationCopy;
  v28 = v30;
  v29 = v32;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109__PLNotificationUNCenter_mergeExistingAndSendNotificationForNotification_requestIdentifier_thumbnailHandler___block_invoke_2;
  v19[3] = &unk_1E7571710;
  v23 = v32;
  v20 = v27;
  selfCopy = self;
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
  v13 = handlerCopy;
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

- (void)mergeExistingAndSendNotificationForNotification:(id)notification thumbnailHandler:(id)handler
{
  handlerCopy = handler;
  notificationCopy = notification;
  requestIdentifier = [notificationCopy requestIdentifier];
  [(PLNotificationUNCenter *)self mergeExistingAndSendNotificationForNotification:notificationCopy requestIdentifier:requestIdentifier thumbnailHandler:handlerCopy];
}

- (void)removeNotificationWithRequestIdentifiers:(id)identifiers
{
  unc = self->_unc;
  identifiersCopy = identifiers;
  [(UNUserNotificationCenter *)unc removePendingNotificationRequestsWithIdentifiers:identifiersCopy];
  [(UNUserNotificationCenter *)self->_unc removeDeliveredNotificationsWithIdentifiers:identifiersCopy];

  [(PLNotificationUNCenter *)self updateBadgeCountWithDelay:1];
}

- (void)_findNotificationForRequestIdentifier:(id)identifier withPendingHandler:(id)handler deliveredHandler:(id)deliveredHandler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  deliveredHandlerCopy = deliveredHandler;
  completionHandlerCopy = completionHandler;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v15 = (handlerCopy | deliveredHandlerCopy) == 0;
  if (!(handlerCopy | deliveredHandlerCopy))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"pendingHandler || deliveredHandler"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7571648;
  aBlock[4] = self;
  v16 = identifierCopy;
  v36 = v16;
  v17 = deliveredHandlerCopy;
  v37 = v17;
  v18 = completionHandlerCopy;
  v38 = v18;
  v19 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __118__PLNotificationUNCenter__findNotificationForRequestIdentifier_withPendingHandler_deliveredHandler_completionHandler___block_invoke_4;
  v29[3] = &unk_1E75716C0;
  v29[4] = self;
  v30 = v16;
  v31 = handlerCopy;
  v32 = v17;
  v20 = v19;
  v33 = v20;
  v34 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = handlerCopy;
  v25 = _Block_copy(v29);
  v26 = v25;
  if (!v15)
  {
    if (!handlerCopy)
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

- (void)updateImageData:(id)data forNotificationWithIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"imageData"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    goto LABEL_3;
  }

  if (!identifierCopy)
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
  v19 = dataCopy;
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

- (void)updateBadgeCountWithDelay:(unint64_t)delay
{
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 1000000000 * delay);
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

- (void)removeNotificationsForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (!notificationsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"notifications"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PLNotificationUNCenter_removeNotificationsForNotifications___block_invoke;
  v9[3] = &unk_1E7571558;
  v10 = v6;
  v7 = v6;
  [notificationsCopy enumerateObjectsUsingBlock:v9];
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

- (void)sendNotificationForNotification:(id)notification withAttachmentURL:(id)l forceToSound:(BOOL)sound
{
  soundCopy = sound;
  v36 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  lCopy = l;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v11 = [objc_opt_class() _notificationEnablementKeyForNotificationType:{objc_msgSend(notificationCopy, "notificationType")}];
  if (!v11 || (PLIsNotificationTypeEnabledForKey() & 1) != 0)
  {
    notificationType = [notificationCopy notificationType];
    if (notificationType <= 7)
    {
      if ((notificationType - 2) >= 4)
      {
        if (notificationType >= 2)
        {
          v13 = 0.001;
          if (notificationType == 6)
          {
            notificationDeliveryDate = [notificationCopy notificationDeliveryDate];
            v22 = notificationDeliveryDate;
            if (notificationDeliveryDate)
            {
              [notificationDeliveryDate timeIntervalSinceNow];
              v13 = v23;
            }

            else
            {
              v13 = 0.001;
            }

            standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
            v25 = [standardUserDefaults objectForKey:@"PhotosMemoriesNotificationDelayOverride"];

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

    else if ((notificationType - 8) >= 9)
    {
      v13 = 0.001;
      if (notificationType != 17)
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
    v15 = [(PLNotificationUNCenter *)self _notificationContentWithNotification:notificationCopy withImageURL:lCopy sound:soundCopy];
    requestIdentifier = [notificationCopy requestIdentifier];
    v17 = [MEMORY[0x1E6983298] requestWithIdentifier:requestIdentifier content:v15 trigger:v14];
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
    v20 = requestIdentifier;
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
    v33 = notificationCopy;
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

- (void)sendNotificationForNotification:(id)notification
{
  notificationCopy = notification;
  v8 = notificationCopy;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"notification"}];

    notificationCopy = 0;
  }

  v6 = [(PLNotificationUNCenter *)self _makeTempThumbnailFileForNotification:notificationCopy];
  [(PLNotificationUNCenter *)self sendNotificationForNotification:v8 withAttachmentURL:v6 forceToSound:1];
}

- (PLNotificationUNCenter)init
{
  v6.receiver = self;
  v6.super_class = PLNotificationUNCenter;
  v2 = [(PLNotificationUNCenter *)&v6 init];
  if (v2)
  {
    _UNNotificationInitialize = [objc_opt_class() _UNNotificationInitialize];
    unc = v2->_unc;
    v2->_unc = _UNNotificationInitialize;

    [(UNUserNotificationCenter *)v2->_unc setDelegate:v2];
  }

  return v2;
}

+ (id)_contentUserInfoForNotification:(id)notification
{
  notificationCopy = notification;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationUNCenter.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(notificationCopy, "notificationType")}];
  [v6 setObject:v7 forKey:*MEMORY[0x1E69C0248]];

  mainAssetUUID = [notificationCopy mainAssetUUID];

  if (mainAssetUUID)
  {
    mainAssetUUID2 = [notificationCopy mainAssetUUID];
    [v6 setObject:mainAssetUUID2 forKey:*MEMORY[0x1E69C01B0]];
  }

  albumCloudGUID = [notificationCopy albumCloudGUID];

  if (albumCloudGUID)
  {
    albumCloudGUID2 = [notificationCopy albumCloudGUID];
    [v6 setObject:albumCloudGUID2 forKey:*MEMORY[0x1E69C0180]];
  }

  interestingMemoryUUID = [notificationCopy interestingMemoryUUID];

  if (interestingMemoryUUID)
  {
    interestingMemoryUUID2 = [notificationCopy interestingMemoryUUID];
    [v6 setObject:interestingMemoryUUID2 forKey:*MEMORY[0x1E69C0220]];
  }

  photoLibraryURLString = [notificationCopy photoLibraryURLString];

  if (photoLibraryURLString)
  {
    photoLibraryURLString2 = [notificationCopy photoLibraryURLString];
    [v6 setObject:photoLibraryURLString2 forKey:*MEMORY[0x1E69C0268]];
  }

  suppressionContexts = [notificationCopy suppressionContexts];

  if (suppressionContexts)
  {
    suppressionContexts2 = [notificationCopy suppressionContexts];
    [v6 setObject:suppressionContexts2 forKey:*MEMORY[0x1E69C0280]];
  }

  dictionaryRepresentation = [notificationCopy dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [v6 setObject:dictionaryRepresentation forKey:*MEMORY[0x1E69C0200]];
  }

  return v6;
}

+ (unint64_t)_interruptionLevelForNotification:(id)notification
{
  notificationType = [notification notificationType];
  if (notificationType > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_19C60FBF8[notificationType];
  }
}

+ (id)_threadIdentifierForNotification:(id)notification
{
  notificationType = [notification notificationType];
  v4 = @"com.apple.mobileslideshow.iCloudPhotoSharing";
  if (((1 << notificationType) & 0x2003B) == 0)
  {
    v4 = 0;
  }

  if (notificationType <= 0x11)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (id)_categoryIdentifierForNotification:(id)notification
{
  notificationCopy = notification;
  notificationType = [notificationCopy notificationType];
  v5 = 0;
  v6 = MEMORY[0x1E69C0120];
  switch(notificationType)
  {
    case 0:
      offerToReportAsJunk = [notificationCopy offerToReportAsJunk];
      v6 = MEMORY[0x1E69C0128];
      if (offerToReportAsJunk)
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

+ (id)_notificationEnablementKeyForNotificationType:(int64_t)type
{
  if (type <= 0x11 && ((0x2567Fu >> type) & 1) != 0)
  {
    v4 = **(&unk_1E7571848 + type);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_soundForNotification:(id)notification
{
  v3 = MEMORY[0x1E6983238];
  notificationCopy = notification;
  v5 = [v3 soundWithAlertType:9];
  notificationType = [notificationCopy notificationType];

  v7 = MEMORY[0x1E69DA918];
  if (notificationType != 6)
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

+ (id)_invitationsCategoryWithJunkAction:(BOOL)action
{
  actionCopy = action;
  array = [MEMORY[0x1E695DF70] array];
  v5 = *MEMORY[0x1E69C0128];
  if (actionCopy)
  {
    v6 = MEMORY[0x1E6983250];
    v7 = *MEMORY[0x1E69C0100];
    v8 = PLServicesLocalizedFrameworkStringForAssetsd();
    v9 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"xmark.bin"];
    v10 = [v6 actionWithIdentifier:v7 title:v8 options:0 icon:v9];

    [array addObject:v10];
    v11 = *MEMORY[0x1E69C0130];

    v5 = v11;
  }

  v12 = MEMORY[0x1E6983250];
  v13 = *MEMORY[0x1E69C00A0];
  v14 = PLServicesLocalizedFrameworkStringForAssetsd();
  v15 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"checkmark.circle"];
  v16 = [v12 actionWithIdentifier:v13 title:v14 options:0 icon:v15];

  [array addObject:v16];
  v17 = MEMORY[0x1E6983250];
  v18 = *MEMORY[0x1E69C00F8];
  v19 = PLServicesLocalizedFrameworkStringForAssetsd();
  v20 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"xmark.circle"];
  v21 = [v17 actionWithIdentifier:v18 title:v19 options:0 icon:v20];

  [array addObject:v21];
  v22 = [MEMORY[0x1E6983278] categoryWithIdentifier:v5 actions:array intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

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
  _updatesCategory = [objc_opt_class() _updatesCategory];
  _updatesLikedCategory = [objc_opt_class() _updatesLikedCategory];
  _updatesCommentedCategory = [objc_opt_class() _updatesCommentedCategory];
  v4 = [objc_opt_class() _invitationsCategoryWithJunkAction:0];
  v5 = [objc_opt_class() _invitationsCategoryWithJunkAction:1];
  _invitationAcceptedCategory = [objc_opt_class() _invitationAcceptedCategory];
  _expiringCMMCategory = [objc_opt_class() _expiringCMMCategory];
  _readyToViewInvitationCMMCategory = [objc_opt_class() _readyToViewInvitationCMMCategory];
  _sharedLibrarySuggestionsCategory = [objc_opt_class() _sharedLibrarySuggestionsCategory];
  _sharedLibraryParticipantAssetTrashNotificationCategory = [objc_opt_class() _sharedLibraryParticipantAssetTrashNotificationCategory];
  v11 = [v14 setWithObjects:{_updatesCategory, _updatesLikedCategory, _updatesCommentedCategory, v4, v5, _invitationAcceptedCategory, _expiringCMMCategory, _readyToViewInvitationCMMCategory, _sharedLibrarySuggestionsCategory, _sharedLibraryParticipantAssetTrashNotificationCategory, 0}];

  [v15 setNotificationCategories:v11];

  return v15;
}

@end