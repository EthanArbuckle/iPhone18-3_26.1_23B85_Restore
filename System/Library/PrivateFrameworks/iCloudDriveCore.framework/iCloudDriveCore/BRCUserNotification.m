@interface BRCUserNotification
+ (id)defaultInstance;
- (BRCUserNotification)init;
- (id)_logWrapUserReplyBlock:(id)a3;
- (void)_displayDialogWithType:(unint64_t)a3 dict:(id)a4 options:(id)a5 userReplyBlock:(id)a6;
- (void)_displayDialogWithType:(unint64_t)a3 dict:(id)a4 userReplyBlock:(id)a5;
- (void)_hideCurrentDialog;
- (void)_showJoinDialogWithDocumentName:(id)a3 isPublicShare:(BOOL)a4 ckContainer:(id)a5 ownerDisplayName:(id)a6 isFolderShare:(BOOL)a7 appName:(id)a8 reply:(id)a9;
- (void)_updateDialogWithType:(unint64_t)a3 dict:(id)a4 userReplyBlock:(id)a5;
- (void)close;
- (void)dealloc;
- (void)showCloudDocsNotSupportedSimulatorRunningOnOldHost;
- (void)showDefaultErrorForRequestAccessWithReply:(id)a3;
- (void)showErrorDeviceOfflineForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorDeviceOfflineForType:(id)a3 reply:(id)a4;
- (void)showErrorDocumentsAppNotVisibleForShareURL:(id)a3 reply:(id)a4;
- (void)showErrorInstallNativeAppForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorItemUnavailableOrAccessRestrictedForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorItemUnavailableOrAccessRestrictedForType:(id)a3 reply:(id)a4;
- (void)showErrorNativeAppDisabledByProfileForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorParticipantLimitReachedForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorParticipantLimitReachedForType:(id)a3 reply:(id)a4;
- (void)showErrorReasonUnknownForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorServerNotReachableForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorServerNotReachableForType:(id)a3 reply:(id)a4;
- (void)showErrorSignInToiCloudForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorTurnOniCloudDriveForShareMetadata:(id)a3 reply:(id)a4;
- (void)showErrorVolumeNotSupportedWithReason:(unint64_t)a3;
- (void)showJoinDialogForShareMetadata:(id)a3 ckContainer:(id)a4 reply:(id)a5;
@end

@implementation BRCUserNotification

+ (id)defaultInstance
{
  if (defaultInstance_once != -1)
  {
    +[BRCUserNotification defaultInstance];
  }

  v3 = defaultInstance_defaultInstance;

  return v3;
}

uint64_t __38__BRCUserNotification_defaultInstance__block_invoke()
{
  defaultInstance_defaultInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRCUserNotification)init
{
  v3.receiver = self;
  v3.super_class = BRCUserNotification;
  result = [(BRCUserNotification *)&v3 init];
  if (result)
  {
    result->_nextDisplayBeginTime = 0;
  }

  return result;
}

- (void)dealloc
{
  if (self->_progressSubscriber)
  {
    [MEMORY[0x277CCAC48] _removeSubscriber:?];
    progressSubscriber = self->_progressSubscriber;
    self->_progressSubscriber = 0;
  }

  cfUserNotification = self->_cfUserNotification;
  if (cfUserNotification)
  {
    CFUserNotificationCancel(cfUserNotification);
    CFRelease(self->_cfUserNotification);
  }

  displaySource = self->_displaySource;
  if (displaySource)
  {
    dispatch_source_cancel(displaySource);
  }

  source = self->_source;
  if (source)
  {
    CFRelease(source);
  }

  v7.receiver = self;
  v7.super_class = BRCUserNotification;
  [(BRCUserNotification *)&v7 dealloc];
}

- (void)_hideCurrentDialog
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  displaySource = self->_displaySource;
  if (displaySource)
  {
    dispatch_source_cancel(displaySource);
    v4 = self->_displaySource;
    self->_displaySource = 0;
  }

  source = self->_source;
  if (source)
  {
    CFRunLoopSourceInvalidate(source);
    CFRelease(self->_source);
    self->_source = 0;
  }

  if (self->_cfUserNotification)
  {
    v7 = userNotificationRefToCompletionBlock();
    v6 = self->_cfUserNotification;
    [v7 removeObjectForKey:v6];
    CFUserNotificationCancel(self->_cfUserNotification);
    CFRelease(self->_cfUserNotification);

    self->_cfUserNotification = 0;
  }
}

- (void)_displayDialogWithType:(unint64_t)a3 dict:(id)a4 userReplyBlock:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = v8;
  if (self->_skipDialogs)
  {
    (*(v8 + 2))(v8, 0);
  }

  else
  {
    v10 = +[BRCAccountsManager sharedManager];
    v11 = [v10 isInSyncBubble];

    if ((v11 & 1) == 0)
    {
      [(BRCUserNotification *)self _displayDialogWithType:a3 dict:v12 options:0 userReplyBlock:v9];
    }
  }
}

- (id)_logWrapUserReplyBlock:(id)a3
{
  v3 = a3;
  v19 = 0uLL;
  v20 = 0;
  __brc_create_section(0, "[BRCUserNotification _logWrapUserReplyBlock:]", 185, 0, &v19);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCUserNotification _logWrapUserReplyBlock:?];
  }

  v21 = v19;
  v22 = v20;
  v6 = [MEMORY[0x277D77BF8] sharedManager];
  v7 = [v6 br_currentPersonaID];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCUserNotification _logWrapUserReplyBlock:v7];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__BRCUserNotification__logWrapUserReplyBlock___block_invoke;
  v14[3] = &unk_2785018A0;
  v17 = v21;
  v18 = v22;
  v15 = v7;
  v16 = v3;
  v10 = v3;
  v11 = v7;
  v12 = MEMORY[0x22AA4A310](v14);

  return v12;
}

void __46__BRCUserNotification__logWrapUserReplyBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  BRPerformWithPersonaAndError();
}

void __46__BRCUserNotification__logWrapUserReplyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__BRCUserNotification__logWrapUserReplyBlock___block_invoke_2_cold_1(&v7);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 64), v6);
  __brc_leave_section(&v7);
}

- (void)_displayDialogWithType:(unint64_t)a3 dict:(id)a4 options:(id)a5 userReplyBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(BRCUserNotification *)self _logWrapUserReplyBlock:a6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke;
  block[3] = &unk_2785018F0;
  block[4] = self;
  v17 = v10;
  v19 = v12;
  v20 = a3;
  v18 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    [MEMORY[0x277CCAC48] _removeSubscriber:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;

  v9 = [*(a1 + 40) mutableCopy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = v9;

  v12 = [*(a1 + 48) objectForKeyedSubscript:@"MinimalDisplayTime"];
  v13 = [*(a1 + 48) objectForKeyedSubscript:@"WaitingTimeBeforeDisplay"];
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  v16 = dispatch_time(*(v14 + 32), [v13 unsignedLongLongValue]);
  dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2;
  v27[3] = &unk_2785018C8;
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  v27[4] = v17;
  v30 = v19;
  v29 = v20;
  v21 = v12;
  v28 = v21;
  v22 = v18;
  v23 = v27;
  v24 = v23;
  v25 = v23;
  if (*MEMORY[0x277CFB010])
  {
    v25 = (*MEMORY[0x277CFB010])(v23);
  }

  v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v25);
  dispatch_source_set_event_handler(v22, v26);

  dispatch_resume(*(*(a1 + 32) + 24));
}

void __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) _hideCurrentDialog];
  error = 0;
  *(*v2 + 8) = CFUserNotificationCreate(0, 0.0, v2[3], &error, *(*v2 + 48));
  v3 = *(*v2 + 8);
  if (v3)
  {
    v4 = error == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (*(*v2 + 16))
    {
      __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2_cold_1(v2, &v14);
      v3 = v14;
    }

    *(*v2 + 16) = CFUserNotificationCreateRunLoopSource(0, v3, _notificationCallback, 0);
    if (*(*v2 + 16))
    {
      Current = CFRunLoopGetCurrent();
      v8 = CFRunLoopCopyCurrentMode(Current);
      if (!v8)
      {
        v8 = CFRetain(*MEMORY[0x277CBF048]);
      }

      v9 = userNotificationRefToCompletionBlock();
      v10 = *(*(a1 + 32) + 8);
      v11 = [*(a1 + 48) copy];
      [v9 setObject:v11 forKey:v10];

      CFRunLoopAddSource(Current, *(*(a1 + 32) + 16), v8);
      CFRelease(v8);
      v12 = *(a1 + 40);
      if (v12)
      {
        v12 = dispatch_time(0, [v12 unsignedLongLongValue]);
      }

      *(*v2 + 32) = v12;
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2_cold_2(&error);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_updateDialogWithType:(unint64_t)a3 dict:(id)a4 userReplyBlock:(id)a5
{
  v8 = a4;
  v9 = [(BRCUserNotification *)self _logWrapUserReplyBlock:a5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__BRCUserNotification__updateDialogWithType_dict_userReplyBlock___block_invoke;
  v12[3] = &unk_278501940;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __65__BRCUserNotification__updateDialogWithType_dict_userReplyBlock___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (!*(v1 + 40))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] ignore user notification udate: no KVO observer registered%@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v3 = a1[5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BRCUserNotification__updateDialogWithType_dict_userReplyBlock___block_invoke_17;
  v10[3] = &unk_278501918;
  v10[4] = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v10];
  if (CFUserNotificationUpdate(*(a1[4] + 8), 0.0, a1[7], *(a1[4] + 48)))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __65__BRCUserNotification__updateDialogWithType_dict_userReplyBlock___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  if (a1[6])
  {
    v4 = userNotificationRefToCompletionBlock();
    v6 = *(a1[4] + 8);
    v7 = a1[6];
    v8 = v6;
    v5 = [v7 copy];
    [v4 setObject:v5 forKey:v8];

LABEL_9:
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v3 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BRCUserNotification_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __28__BRCUserNotification_close__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hideCurrentDialog];
  *(*(a1 + 32) + 32) = 0;
  return result;
}

- (void)_showJoinDialogWithDocumentName:(id)a3 isPublicShare:(BOOL)a4 ckContainer:(id)a5 ownerDisplayName:(id)a6 isFolderShare:(BOOL)a7 appName:(id)a8 reply:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __126__BRCUserNotification__showJoinDialogWithDocumentName_isPublicShare_ckContainer_ownerDisplayName_isFolderShare_appName_reply___block_invoke;
  v23[3] = &unk_278501990;
  v27 = self;
  v28 = v18;
  v29 = a7;
  v24 = v17;
  v25 = v15;
  v30 = a4;
  v26 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v18;
  [a5 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v23];
}

void __126__BRCUserNotification__showJoinDialogWithDocumentName_isPublicShare_ckContainer_ownerDisplayName_isFolderShare_appName_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v7)
    {
      v33 = [v7 br_formattedNameWithNonBreakingSpaces];
    }

    else
    {
      v33 = 0;
    }

    v10 = v8;
    if (*(a1 + 72))
    {
      v11 = MEMORY[0x277CFB000];
    }

    else
    {
      v11 = (a1 + 32);
    }

    v12 = *v11;
    v31 = v12;
    v32 = v10;
    v30 = v7;
    if ([*(a1 + 40) length])
    {
      if (*(a1 + 72) == 1)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = *(a1 + 40);
        v14 = _BRLocalizedStringWithFormat();
LABEL_18:

        v16 = *(a1 + 73);
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = *(a1 + 48);
        v18 = _BRLocalizedStringWithFormat();

        v19 = *MEMORY[0x277CBF198];
        v36[0] = *MEMORY[0x277CBF188];
        v36[1] = v19;
        v37[0] = v14;
        v37[1] = v18;
        v36[2] = *MEMORY[0x277CBF1C0];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v29, v33}];
        v21 = _BRLocalizedStringWithFormat();
        v37[2] = v21;
        v36[3] = *MEMORY[0x277CBF1E8];
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = _BRLocalizedStringWithFormat();
        v37[3] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __126__BRCUserNotification__showJoinDialogWithDocumentName_isPublicShare_ckContainer_ownerDisplayName_isFolderShare_appName_reply___block_invoke_2;
        v34[3] = &unk_278501968;
        v25 = *(a1 + 56);
        v35 = *(a1 + 64);
        [v25 _displayDialogWithType:3 dict:v24 userReplyBlock:v34];

        v7 = v30;
        goto LABEL_19;
      }

      if (*(a1 + 32))
      {
        [BRCSharingUtil localizationKey:@"SHARING_JOIN_HEADER" forTypeOfShare:v12];
      }

      else
      {
        [BRCSharingUtil localizationKeyForOS:@"SHARING_JOIN_HEADER_DEFAULT_APP"];
      }
      v13 = ;
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = *(a1 + 40);
    }

    else
    {
      v13 = [BRCSharingUtil localizationKey:@"SHARING_JOIN_HEADER_NO_DOCUMENT_NAME" forOSAndTypeOfShare:v12];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    v14 = _BRLocalizedStringWithFormat();

    goto LABEL_18;
  }

  (*(*(a1 + 64) + 16))();
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)showJoinDialogForShareMetadata:(id)a3 ckContainer:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 share];
  v12 = [v11 brc_sharedRootDisplayName];

  if ([v12 hasSuffix:@":nooverride"])
  {
    v13 = [v12 substringToIndex:{objc_msgSend(v12, "length") - objc_msgSend(@":nooverride", "length")}];

    v12 = v13;
  }

  v14 = [v10 share];
  v15 = [v14 URL];
  v16 = [v12 brc_fixDocumentExtensionIfNeededForShareURL:v15];

  v26 = [v16 br_displayFilenameWithExtensionHidden:1];

  v17 = [v10 ownerIdentity];
  v18 = [v17 nameComponents];
  v19 = [v18 br_formattedNameWithNonBreakingSpaces];

  v20 = [v10 share];
  v21 = [v20 isFolderShare];

  v22 = [v10 share];
  v23 = [v22 URL];
  v24 = [v23 brc_applicationName];

  v25 = [v10 share];

  -[BRCUserNotification _showJoinDialogWithDocumentName:isPublicShare:ckContainer:ownerDisplayName:isFolderShare:appName:reply:](self, "_showJoinDialogWithDocumentName:isPublicShare:ckContainer:ownerDisplayName:isFolderShare:appName:reply:", v26, [v25 publicPermission] != 1, v9, v19, v21, v24, v8);
}

- (void)showErrorSignInToiCloudForShareMetadata:(id)a3 reply:(id)a4
{
  v28[5] = *MEMORY[0x277D85DE8];
  v23 = a4;
  v5 = [a3 share];
  v6 = [BRCSharingUtil typeForShare:v5];

  v27[0] = *MEMORY[0x277CBF188];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = _BRLocalizedStringWithFormat();
  v28[0] = v21;
  v27[1] = *MEMORY[0x277CBF198];
  v20 = v6;
  v19 = [BRCSharingUtil localizationKey:@"SHARING_ICLOUD_SETUP_MESSAGE_IOS" forTypeOfShare:v6];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v28[1] = v8;
  v27[2] = *MEMORY[0x277CBF1C0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = _BRLocalizedStringWithFormat();
  v28[2] = v10;
  v27[3] = *MEMORY[0x277CBF218];
  v11 = [BRCSharingUtil localizationKey:@"PREVIEW_BUTTON" forTypeOfShare:v6];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = _BRLocalizedStringWithFormat();
  v28[3] = v13;
  v27[4] = *MEMORY[0x277CBF1E8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = _BRLocalizedStringWithFormat();
  v28[4] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__BRCUserNotification_showErrorSignInToiCloudForShareMetadata_reply___block_invoke;
  v25[3] = &unk_278501968;
  v26 = v23;
  v17 = v23;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v16 userReplyBlock:v25];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __69__BRCUserNotification_showErrorSignInToiCloudForShareMetadata_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == 2)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = a2 != 1;
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v3, v4, 0);
}

- (void)showErrorTurnOniCloudDriveForShareMetadata:(id)a3 reply:(id)a4
{
  v33[5] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v5 = a3;
  v6 = [v5 share];
  v7 = [BRCSharingUtil typeForShare:v6];

  v8 = MEMORY[0x277CCAC08];
  v9 = [v5 ownerIdentity];

  v10 = [v9 nameComponents];
  v27 = [v8 localizedStringFromPersonNameComponents:v10 style:0 options:0];

  v32[0] = *MEMORY[0x277CBF188];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = _BRLocalizedStringWithFormat();
  v33[0] = v25;
  v32[1] = *MEMORY[0x277CBF198];
  v24 = v7;
  v23 = [BRCSharingUtil localizationKey:@"SHARING_ICLOUD_DRIVE_SETUP_MESSAGE_IOS" forTypeOfShare:v7];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = _BRLocalizedStringWithFormat();
  v33[1] = v12;
  v32[2] = *MEMORY[0x277CBF1C0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v27}];
  v14 = _BRLocalizedStringWithFormat();
  v33[2] = v14;
  v32[3] = *MEMORY[0x277CBF218];
  v15 = [BRCSharingUtil localizationKey:@"PREVIEW_BUTTON" forTypeOfShare:v7];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = _BRLocalizedStringWithFormat();
  v33[3] = v17;
  v32[4] = *MEMORY[0x277CBF1E8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = _BRLocalizedStringWithFormat();
  v33[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __72__BRCUserNotification_showErrorTurnOniCloudDriveForShareMetadata_reply___block_invoke;
  v30[3] = &unk_278501968;
  v31 = v28;
  v21 = v28;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v20 userReplyBlock:v30];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __72__BRCUserNotification_showErrorTurnOniCloudDriveForShareMetadata_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == 2)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = a2 != 1;
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v3, v4, 0);
}

- (void)showErrorInstallNativeAppForShareMetadata:(id)a3 reply:(id)a4
{
  v37[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 share];
  v9 = [v8 isFolderShare];

  if (v9)
  {
    [BRCUserNotification showErrorInstallNativeAppForShareMetadata:reply:];
  }

  v10 = [v6 share];
  v11 = [v10 URL];
  v12 = [v11 brc_applicationName];

  if (v12)
  {
    v13 = MEMORY[0x277CCAC08];
    v14 = [v6 ownerIdentity];
    [v14 nameComponents];
    v15 = v33 = v7;
    v27 = [v13 localizedStringFromPersonNameComponents:v15 style:0 options:0];

    v36[0] = *MEMORY[0x277CBF188];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = _BRLocalizedStringWithFormat();
    v37[0] = v31;
    v36[1] = *MEMORY[0x277CBF198];
    v29 = [BRCSharingUtil localizationKey:@"SHARING_APP_NOT_INSTALLED_MESSAGE_IOS" forTypeOfShare:v12, v12];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = _BRLocalizedStringWithFormat();
    v37[1] = v26;
    v36[2] = *MEMORY[0x277CBF1C0];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v27}];
    _BRLocalizedStringWithFormat();
    v17 = v30 = self;
    v37[2] = v17;
    v36[3] = *MEMORY[0x277CBF218];
    v18 = [BRCSharingUtil localizationKey:@"PREVIEW_BUTTON" forTypeOfShare:v12];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = _BRLocalizedStringWithFormat();
    v37[3] = v20;
    v36[4] = *MEMORY[0x277CBF1E8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = _BRLocalizedStringWithFormat();
    v37[4] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];

    v7 = v33;
    v24 = v27;

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__BRCUserNotification_showErrorInstallNativeAppForShareMetadata_reply___block_invoke;
    v34[3] = &unk_278501968;
    v35 = v33;
    [(BRCUserNotification *)v30 _displayDialogWithType:3 dict:v23 userReplyBlock:v34];
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"shareMetadata" value:v6];
    (*(v7 + 2))(v7, 0, 0, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __71__BRCUserNotification_showErrorInstallNativeAppForShareMetadata_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == 2)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = a2 != 1;
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v3, v4, 0);
}

- (void)showErrorNativeAppDisabledByProfileForShareMetadata:(id)a3 reply:(id)a4
{
  v26[4] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v5 = [a3 share];
  v6 = [BRCSharingUtil typeForShare:v5];

  v25[0] = *MEMORY[0x277CBF188];
  v20 = [BRCSharingUtil localizationKey:@"SHARING_PROFILE_DISABLED_HEADER_IOS" forTypeOfShare:v6];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = _BRLocalizedStringWithFormat();
  v26[0] = v18;
  v25[1] = *MEMORY[0x277CBF198];
  v7 = [BRCSharingUtil localizationKey:@"SHARING_PROFILE_DISABLED_MESSAGE_IOS" forTypeOfShare:v6];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = _BRLocalizedStringWithFormat();
  v26[1] = v9;
  v25[2] = *MEMORY[0x277CBF218];
  v10 = [BRCSharingUtil localizationKey:@"PREVIEW_BUTTON" forTypeOfShare:v6];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = _BRLocalizedStringWithFormat();
  v26[2] = v12;
  v25[3] = *MEMORY[0x277CBF1E8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = _BRLocalizedStringWithFormat();
  v26[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__BRCUserNotification_showErrorNativeAppDisabledByProfileForShareMetadata_reply___block_invoke;
  v23[3] = &unk_278501968;
  v24 = v21;
  v16 = v21;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v15 userReplyBlock:v23];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)showErrorReasonUnknownForShareMetadata:(id)a3 reply:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v18 = a4;
  v5 = [a3 share];
  v6 = [BRCSharingUtil typeForShare:v5];

  v22[0] = *MEMORY[0x277CBF188];
  v7 = [BRCSharingUtil localizationKey:@"SHARING_GENERIC_ERROR_HEADER" forOSAndTypeOfShare:v6];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = _BRLocalizedStringWithFormat();
  v23[0] = v9;
  v22[1] = *MEMORY[0x277CBF198];
  v10 = [BRCSharingUtil localizationKey:@"SHARING_GENERIC_ERROR_MESSAGE" forOSAndTypeOfShare:v6];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = _BRLocalizedStringWithFormat();
  v23[1] = v12;
  v22[2] = *MEMORY[0x277CBF1E8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = _BRLocalizedStringWithFormat();
  v23[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__BRCUserNotification_showErrorReasonUnknownForShareMetadata_reply___block_invoke;
  v20[3] = &unk_278501968;
  v21 = v18;
  v16 = v18;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v15 userReplyBlock:v20];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)showErrorDeviceOfflineForShareMetadata:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8 = [a3 share];
  v7 = [BRCSharingUtil typeForShare:v8];
  [(BRCUserNotification *)self showErrorDeviceOfflineForType:v7 reply:v6];
}

- (void)showErrorDeviceOfflineForType:(id)a3 reply:(id)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v21[0] = *MEMORY[0x277CBF188];
  v5 = a3;
  v6 = [BRCSharingUtil localizationKey:@"SHARING_DEVICE_OFFLINE_ERROR_HEADER" forOSAndTypeOfShare:v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v22[0] = v8;
  v21[1] = *MEMORY[0x277CBF198];
  v9 = [BRCSharingUtil localizationKey:@"SHARING_DEVICE_OFFLINE_ERROR_MESSAGE" forOSAndTypeOfShare:v5];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = _BRLocalizedStringWithFormat();
  v22[1] = v11;
  v21[2] = *MEMORY[0x277CBF1E8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = _BRLocalizedStringWithFormat();
  v22[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__BRCUserNotification_showErrorDeviceOfflineForType_reply___block_invoke;
  v19[3] = &unk_278501968;
  v20 = v17;
  v15 = v17;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v14 userReplyBlock:v19];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)showErrorServerNotReachableForShareMetadata:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8 = [a3 share];
  v7 = [BRCSharingUtil typeForShare:v8];
  [(BRCUserNotification *)self showErrorServerNotReachableForType:v7 reply:v6];
}

- (void)showErrorServerNotReachableForType:(id)a3 reply:(id)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v21[0] = *MEMORY[0x277CBF188];
  v5 = a3;
  v6 = [BRCSharingUtil localizationKey:@"SHARING_ICLOUD_NOT_REACHABLE_HEADER" forOSAndTypeOfShare:v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v22[0] = v8;
  v21[1] = *MEMORY[0x277CBF198];
  v9 = [BRCSharingUtil localizationKey:@"SHARING_ICLOUD_NOT_REACHABLE_MESSAGE" forOSAndTypeOfShare:v5];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = _BRLocalizedStringWithFormat();
  v22[1] = v11;
  v21[2] = *MEMORY[0x277CBF1E8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = _BRLocalizedStringWithFormat();
  v22[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__BRCUserNotification_showErrorServerNotReachableForType_reply___block_invoke;
  v19[3] = &unk_278501968;
  v20 = v17;
  v15 = v17;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v14 userReplyBlock:v19];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)showErrorItemUnavailableOrAccessRestrictedForShareMetadata:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8 = [a3 share];
  v7 = [BRCSharingUtil typeForShare:v8];
  [(BRCUserNotification *)self showErrorItemUnavailableOrAccessRestrictedForType:v7 reply:v6];
}

- (void)showErrorItemUnavailableOrAccessRestrictedForType:(id)a3 reply:(id)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v21[0] = *MEMORY[0x277CBF188];
  v5 = a3;
  v6 = [BRCSharingUtil localizationKey:@"SHARING_NO_LONGER_SHARED_HEADER" forOSAndTypeOfShare:v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v22[0] = v8;
  v21[1] = *MEMORY[0x277CBF198];
  v9 = [BRCSharingUtil localizationKey:@"SHARING_NO_LONGER_SHARED_MESSAGE" forOSAndTypeOfShare:v5];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = _BRLocalizedStringWithFormat();
  v22[1] = v11;
  v21[2] = *MEMORY[0x277CBF1E8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = _BRLocalizedStringWithFormat();
  v22[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__BRCUserNotification_showErrorItemUnavailableOrAccessRestrictedForType_reply___block_invoke;
  v19[3] = &unk_278501968;
  v20 = v17;
  v15 = v17;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v14 userReplyBlock:v19];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)showErrorParticipantLimitReachedForShareMetadata:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8 = [a3 share];
  v7 = [BRCSharingUtil typeForShare:v8];
  [(BRCUserNotification *)self showErrorParticipantLimitReachedForType:v7 reply:v6];
}

- (void)showErrorParticipantLimitReachedForType:(id)a3 reply:(id)a4
{
  v25[4] = *MEMORY[0x277D85DE8];
  v20 = a4;
  v24[0] = *MEMORY[0x277CBF188];
  v5 = a3;
  v19 = [BRCSharingUtil localizationKey:@"SHARING_PARTICIPANT_LIMIT_REACHED_HEADER" forOSAndTypeOfShare:v5];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = _BRLocalizedStringWithFormat();
  v25[0] = v17;
  v24[1] = *MEMORY[0x277CBF198];
  v6 = [BRCSharingUtil localizationKey:@"SHARING_PARTICIPANT_LIMIT_REACHED_MESSAGE" forOSAndTypeOfShare:v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v25[1] = v8;
  v24[2] = *MEMORY[0x277CBF1C0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = _BRLocalizedStringWithFormat();
  v25[2] = v10;
  v24[3] = *MEMORY[0x277CBF1E8];
  v11 = [BRCSharingUtil localizationKey:@"PREVIEW_BUTTON" forTypeOfShare:v5];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = _BRLocalizedStringWithFormat();
  v25[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__BRCUserNotification_showErrorParticipantLimitReachedForType_reply___block_invoke;
  v22[3] = &unk_278501968;
  v23 = v20;
  v15 = v20;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v14 userReplyBlock:v22];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)showErrorDocumentsAppNotVisibleForShareURL:(id)a3 reply:(id)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D67298];
  v18[0] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277CBF188];
  v17[0] = v6;
  v17[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = _BRLocalizedStringWithFormat();
  v18[1] = v9;
  v17[2] = *MEMORY[0x277CBF1E8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = _BRLocalizedStringWithFormat();
  v18[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__BRCUserNotification_showErrorDocumentsAppNotVisibleForShareURL_reply___block_invoke;
  v15[3] = &unk_278501968;
  v16 = v5;
  v13 = v5;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v12 userReplyBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)showCloudDocsNotSupportedSimulatorRunningOnOldHost
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CBF188];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = _BRLocalizedStringWithFormat();
  v12[0] = v4;
  v11[1] = *MEMORY[0x277CBF198];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = _BRLocalizedStringWithFormat();
  v12[1] = v6;
  v11[2] = *MEMORY[0x277CBF1E8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v9 userReplyBlock:&__block_literal_global_172_0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)showErrorVolumeNotSupportedWithReason:(unint64_t)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = @"ICLOUD_DRIVE_VOLUME_NOT_SUPPORTED_NON_LOCAL_ALERT_MESSAGE";
  if (a3 == 2)
  {
    v4 = @"ICLOUD_DRIVE_VOLUME_NOT_SUPPORTED_NON_APFS_ALERT_MESSAGE";
  }

  v15[0] = *MEMORY[0x277CBF188];
  v5 = MEMORY[0x277CCA8D8];
  v6 = v4;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v16[0] = v8;
  v15[1] = *MEMORY[0x277CBF198];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = _BRLocalizedStringWithFormat();

  v16[1] = v10;
  v15[2] = *MEMORY[0x277CBF1E8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = _BRLocalizedStringWithFormat();
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v13 userReplyBlock:&__block_literal_global_186];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)showDefaultErrorForRequestAccessWithReply:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16[0] = *MEMORY[0x277CBF188];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = _BRLocalizedStringWithFormat();
  v17[0] = v6;
  v16[1] = *MEMORY[0x277CBF198];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat();
  v17[1] = v8;
  v16[2] = *MEMORY[0x277CBF1E8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = _BRLocalizedStringWithFormat();
  v17[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__BRCUserNotification_showDefaultErrorForRequestAccessWithReply___block_invoke;
  v14[3] = &unk_278501968;
  v15 = v4;
  v12 = v4;
  [(BRCUserNotification *)self _displayDialogWithType:3 dict:v11 userReplyBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_logWrapUserReplyBlock:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┣%llx updating dialog...%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_logWrapUserReplyBlock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] User notification completion block should run with %@ persona%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __46__BRCUserNotification__logWrapUserReplyBlock___block_invoke_2_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┳%llx sending user reply%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self->_source == NULL%@", &v7, 0xCu);
  }

  *a2 = *(*a1 + 8);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__BRCUserNotification__displayDialogWithType_dict_options_userReplyBlock___block_invoke_2_cold_2(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BRCUserNotification__updateDialogWithType_dict_userReplyBlock___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showErrorInstallNativeAppForShareMetadata:reply:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !shareMetadata.share.isFolderShare%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end