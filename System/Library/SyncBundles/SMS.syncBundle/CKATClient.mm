@interface CKATClient
+ (void)restoreProtectedCloudStorageMobileBackup;
- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error;
- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager;
- (BOOL)shouldRestoreFile:(id)file backupManager:(id)manager;
- (id)outstandingAssetTransfers;
- (void)_prioritizeRecentAttachments;
- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)logMOCDefaultsWithContext:(id)context;
- (void)prioritizeAsset:(id)asset;
- (void)restoreEndedWithError:(id)error;
@end

@implementation CKATClient

+ (void)restoreProtectedCloudStorageMobileBackup
{
  if (qword_86D8 != -1)
  {
    sub_1C14();
  }

  if (off_86D0)
  {
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Initiating ProtectedCloudStorage mobile backup restore.", v3, 2u);
    }

    off_86D0();
  }
}

- (void)prioritizeAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(MBManager);
  [v4 prioritizeRestoreFileWithPath:assetCopy];
}

- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  v9 = _ATLogCategorySyncBundle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!succeeded)
  {
    if (v10)
    {
      v16 = 138412546;
      v17 = transferCopy;
      v18 = 2114;
      v19 = errorCopy;
      v13 = "failed to restore %@: %{public}@";
      v14 = v9;
      v15 = 22;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {
    v16 = 138412290;
    v17 = transferCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "successfully restored %@", &v16, 0xCu);
  }

  v11 = notify_post("com.apple.ChatKit.attachmentRestoredNotification");
  if (v11)
  {
    v12 = v11;
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      LODWORD(v17) = v12;
      v13 = "notify_post failed: %u";
      v14 = v9;
      v15 = 8;
LABEL_9:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)outstandingAssetTransfers
{
  v25 = 0;
  v19 = objc_alloc_init(MBManager);
  v2 = [v19 restoreFilesForDomain:@"MediaDomain" relativePath:@"Library/SMS" pendingOnly:1 error:&v25];
  v3 = v25;
  if (!v2)
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "failed to get files for restore: %{public}@", buf, 0xCu);
    }
  }

  v17 = v3;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        path = [v11 path];
        v13 = [ATAsset downloadAssetWithIdentifier:path dataclass:@"MessagePart" prettyName:path];
        [v13 setPath:path];
        [v13 setIsRestore:1];
        [v13 setPriority:{objc_msgSend(v11, "priority")}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v14 = dispatch_time(0, 10000000000);
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1274;
  block[3] = &unk_41E8;
  block[4] = self;
  dispatch_after(v14, v15, block);

  return v5;
}

- (void)_prioritizeRecentAttachments
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reprioritizing recent attachments to restore first.", buf, 2u);
  }

  v4 = IMDAttachmentRecordCopyRecentFilenames();
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Recent small attachments %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CKATClient *)self prioritizeAsset:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)logMOCDefaultsWithContext:(id)context
{
  contextCopy = context;
  v4 = IMGetDomainValueForKey();
  v5 = IMGetDomainBoolForKey();
  v6 = IMGetDomainBoolForKey();
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v10 = 138413058;
    v11 = contextCopy;
    if (v5)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = 2112;
    v13 = v4;
    if (v6)
    {
      v8 = @"YES";
    }

    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@: \nsyncDate:%@  \nnewDeviceBringUpHasPerformed:%@ \nnewDeviceBringUpHasFinished:%@", &v10, 0x2Au);
  }
}

- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error
{
  v5 = IMGetDomainValueForKey();
  v6 = IMGetDomainBoolForKey();
  v7 = IMGetDomainBoolForKey();
  v8 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v6)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v10;
    if (v7)
    {
      v9 = @"YES";
    }

    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Checking MOC defaults after reconcile restore: \nsyncDate:%@  \nnewDeviceBringUpHasPerformed:%@ \nnewDeviceBringUpHasFinished:%@", &v14, 0x20u);
  }

  [(CKATClient *)self logMOCDefaultsWithContext:@"Checking MOC defaults after reconcile restore"];
  IMSetDomainValueForKey();
  IMSetDomainBoolForKey();
  IMSetDomainBoolForKey();
  [(CKATClient *)self logMOCDefaultsWithContext:@"MOC Defaults have been reset"];
  v11 = IMGetDomainValueForKey();
  if (v11 || (IMGetDomainBoolForKey() & 1) != 0)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = IMGetDomainBoolForKey() ^ 1;
  }

  return v12;
}

- (void)restoreEndedWithError:(id)error
{
  [(CKATClient *)self logMOCDefaultsWithContext:@"Checking MOC defaults after restore ended"];
  if (!error)
  {
    v5 = +[NSString stringGUID];
    v6 = +[IMDaemonController sharedController];
    [v6 addListenerID:v5 capabilities:kFZListenerCapChats];

    v7 = +[IMDaemonController sharedController];
    [v7 blockUntilConnected];

    v8 = +[IMDaemonController sharedController];
    remoteDaemon = [v8 remoteDaemon];
    [remoteDaemon cleanupAttachments];

    v10 = +[IMDaemonController sharedController];
    [v10 removeListenerID:v5];

    v11 = +[IMDaemonController sharedController];
    [v11 disconnectFromDaemon];

    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18F0;
    block[3] = &unk_41E8;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

- (BOOL)shouldRestoreFile:(id)file backupManager:(id)manager
{
  fileCopy = file;
  path = [fileCopy path];
  v7 = [(CKATClient *)self _isMessagesPath:path];

  if (!v7)
  {
    goto LABEL_5;
  }

  path2 = [fileCopy path];
  v9 = [(CKATClient *)self _isSMSTempDB:path2];

  if (v9 & 1) != 0 || ([fileCopy path], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[CKATClient _isABCache:](self, "_isABCache:", v10), v10, (v11))
  {
    v12 = 0;
  }

  else
  {
LABEL_5:
    v12 = 1;
  }

  return v12;
}

- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager
{
  fileCopy = file;
  path = [fileCopy path];
  isDirectory = [fileCopy isDirectory];

  if ((isDirectory & 1) != 0 || ![(CKATClient *)self _isMessagesPath:path])
  {
    v9 = 0;
  }

  else
  {
    if ([(CKATClient *)self _isLegacyAttachment:path])
    {
      v8 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = path;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Legacy attachment, yup: %@", &v11, 0xCu);
      }
    }

    else if (![(CKATClient *)self _isAttachment:path])
    {
      v9 = [(CKATClient *)self _isSticker:path];
      goto LABEL_8;
    }

    v9 = 1;
  }

LABEL_8:

  return v9;
}

@end