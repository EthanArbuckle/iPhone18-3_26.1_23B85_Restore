@interface ApplicationWorkspace
+ (BOOL)keepSafeHarborDataForBundleID:(id)a3;
+ (id)defaultWorkspace;
- (ApplicationWorkspace)init;
- (BOOL)_hasThumbnailDownloadOperationForDownloadID:(int64_t)a3;
- (BOOL)_isInstallingForDownloadIdentifier:(int64_t)a3;
- (BOOL)isDownloadingOrInstallingForItemIdentifier:(id)a3;
- (BOOL)isInstalledApp:(id)a3;
- (BOOL)isMultiUser;
- (BOOL)shouldModifyQuota:(id)a3;
- (id)_copyCombinedApplicationProgress:(id)a3 forApplicationHandle:(id)a4;
- (id)_thumbnailDownloadOperationForDownloadID:(int64_t)a3;
- (id)sinfPathForBundleID:(id)a3;
- (void)_addOperationAtBeginning:(id)a3;
- (void)_addProgressOperation:(id)a3;
- (void)_cancelPlaceholderThumbnailInstallForDownloadID:(int64_t)a3;
- (void)_decrementPendingInstallsForDownloadIdentifier:(int64_t)a3;
- (void)_fireWaitBlocksForSyncTermination;
- (void)_fireWaitBlocksIfNecessaryForDownloadWithIdentifier:(int64_t)a3;
- (void)_incrementPendingInstallsForDownloadIdentifier:(int64_t)a3;
- (void)_performNextOperation;
- (void)_removeApplicationDownloadProgressForApplicationHandle:(id)a3;
- (void)_removeOperationsForDownloadIdentifier:(int64_t)a3 operationClass:(Class)a4;
- (void)_stopObservingODRProgress:(id)a3;
- (void)_updatePlaceholderWithODRProgressForApplicationHandle:(id)a3;
- (void)addPlaceholderThumbnailOperation:(id)a3;
- (void)applyWorkspaceChanges:(id)a3;
- (void)cancelPlaceholderInstallationForDownloadIdentifier:(int64_t)a3;
- (void)endExternalInstallationForDownloadIdentifier:(int64_t)a3;
- (void)finishInstallOfApplicationHandle:(id)a3;
- (void)installPlaceholderForApplicationHandle:(id)a3;
- (void)markFailedPlaceholderForApplicationHandle:(id)a3;
- (void)replayIncompleteOperations;
- (void)resetProgressForApplicationHandle:(id)a3;
- (void)restorePlaceholderForApplicationHandle:(id)a3;
- (void)resumeQuotas;
- (void)setIconData:(id)a3 forApplicationHandle:(id)a4;
- (void)suspendQuotas;
- (void)uninstallPlaceholderForApplicationHandle:(id)a3;
- (void)updatePlaceholderForApplicationHandle:(id)a3;
- (void)updatePlaceholderWithApplicationProgress:(id)a3;
- (void)waitForInstallOfDownloadIdentifier:(int64_t)a3 completionBlock:(id)a4;
- (void)waitForSyncBubbleToTerminateWithCompletionBlock:(id)a3;
- (void)willSwitchUser;
@end

@implementation ApplicationWorkspace

- (ApplicationWorkspace)init
{
  v28.receiver = self;
  v28.super_class = ApplicationWorkspace;
  v2 = [(ApplicationWorkspace *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.ApplicationWorkspace.callback", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = *(v2 + 2);
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = dispatch_queue_create("com.apple.itunesstored.ApplicationWorkspace", 0);
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;

    dispatch_set_target_queue(*(v2 + 3), v6);
    v9 = objc_alloc_init(NSLock);
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    [*(v2 + 4) setName:@"com.apple.itunesstored.ApplicationWorkspace"];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = objc_alloc_init(NSCountedSet);
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = objc_alloc_init(ISOperationQueue);
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    [*(v2 + 7) setAdjustsMaxConcurrentOperationCount:0];
    [*(v2 + 7) setMaxConcurrentOperationCount:1];
    [*(v2 + 7) setName:@"com.apple.itunesstored.ApplicationWorkspace.background"];
    v17 = +[UMUserManager sharedManager];
    LODWORD(v6) = [v17 isMultiUser];

    if (v6)
    {
      v18 = +[UMUserManager sharedManager];
      [v18 registerUserSwitchStakeHolder:v2];

      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v20 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      v22 = [v19 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = v21;
      }

      else
      {
        v23 = v21 & 2;
      }

      if (v23)
      {
        v27[0] = 0;
        LODWORD(v26) = 2;
        v24 = _os_log_send_and_compose_impl();

        if (!v24)
        {
LABEL_15:

          return v2;
        }

        v22 = [NSString stringWithCString:v24 encoding:4, v27, v26];
        free(v24);
        SSFileLog();
      }

      goto LABEL_15;
    }
  }

  return v2;
}

+ (id)defaultWorkspace
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016D360;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100383F58 != -1)
  {
    dispatch_once(&qword_100383F58, block);
  }

  v2 = qword_100383F50;

  return v2;
}

- (void)applyWorkspaceChanges:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 changeType];
        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              continue;
            }

            v11 = [v9 applicationHandle];
            [(ApplicationWorkspace *)self uninstallPlaceholderForApplicationHandle:v11];
          }

          else
          {
            v11 = [v9 applicationHandle];
            [(ApplicationWorkspace *)self installPlaceholderForApplicationHandle:v11];
          }
        }

        else
        {
          switch(v10)
          {
            case 2:
              v11 = [v9 applicationHandle];
              [(ApplicationWorkspace *)self finishInstallOfApplicationHandle:v11];
              break;
            case 3:
              v11 = [v9 applicationHandle];
              [(ApplicationWorkspace *)self markFailedPlaceholderForApplicationHandle:v11];
              break;
            case 5:
              v11 = [v9 applicationHandle];
              [(ApplicationWorkspace *)self updatePlaceholderForApplicationHandle:v11];
              break;
            default:
              continue;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addPlaceholderThumbnailOperation:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [v4 applicationHandle];
  if (-[ApplicationWorkspace _hasThumbnailDownloadOperationForDownloadID:](self, "_hasThumbnailDownloadOperationForDownloadID:", [v5 downloadID]))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (!v10)
    {
      goto LABEL_24;
    }

    LODWORD(v16) = 138412290;
    *(&v16 + 4) = v5;
    LODWORD(v15) = 12;
  }

  else
  {
    [(ISOperationQueue *)self->_placeholderIconOperationQueue addOperation:v4];
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v11 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 2;
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    LODWORD(v16) = 138412290;
    *(&v16 + 4) = v5;
    LODWORD(v15) = 12;
  }

  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v9 = [NSString stringWithCString:v14 encoding:4, &v16, v15, v16];
    free(v14);
    SSFileLog();
LABEL_24:
  }

  [(NSLock *)self->_lock unlock];
}

- (void)cancelPlaceholderInstallationForDownloadIdentifier:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  if ([(ApplicationWorkspace *)self _hasThumbnailDownloadOperationForDownloadID:a3])
  {
    [(ApplicationWorkspace *)self _cancelPlaceholderThumbnailInstallForDownloadID:a3];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)endExternalInstallationForDownloadIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016D88C;
  v4[3] = &unk_100329108;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)finishInstallOfApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [[ApplicationWorkspaceFinishOperation alloc] initWithApplicationHandle:v4];
  [(NSLock *)self->_lock lock];
  v6 = [v4 downloadID];
  [(ApplicationWorkspace *)self _removeApplicationDownloadProgressForApplicationHandle:v4];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:v6];
  [(ApplicationWorkspace *)self _addOperationAtBeginning:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016D9BC;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)isDownloadingOrInstallingForItemIdentifier:(id)a3
{
  v4 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  v7 = [v5 shouldLogToDisk];
  v8 = [v5 OSLogObject];
  v9 = v8;
  if (v7)
  {
    v6 |= 2u;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v6;
  }

  else
  {
    v10 = v6 & 2;
  }

  if (v10)
  {
    v51 = 138412290;
    v52 = v4;
    LODWORD(v37) = 12;
    v36 = &v51;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v9 = [NSString stringWithCString:v11 encoding:4, &v51, v37];
    free(v11);
    v36 = v9;
    SSFileLog();
  }

LABEL_12:
  v12 = objc_opt_new();
  v13 = +[DownloadsDatabase downloadsDatabase];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10016E108;
  v42[3] = &unk_10032A140;
  v14 = v4;
  v43 = v14;
  v45 = &v46;
  v15 = v12;
  v44 = v15;
  [v13 readUsingTransactionBlock:v42];

  if ((v47[3] & 1) != 0 || ![v15 count])
  {
    goto LABEL_36;
  }

  [(NSLock *)self->_lock lock];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = *v39;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v16);
      }

      if (-[ApplicationWorkspace _isInstallingForDownloadIdentifier:](self, "_isInstallingForDownloadIdentifier:", [*(*(&v38 + 1) + 8 * i) longLongValue]))
      {
        v20 = +[SSLogConfig sharedDaemonConfig];
        if (!v20)
        {
          v20 = +[SSLogConfig sharedConfig];
        }

        v21 = [v20 shouldLog];
        v22 = [v20 shouldLogToDisk];
        v23 = [v20 OSLogObject];
        v24 = v23;
        if (v22)
        {
          v21 |= 2u;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = v21;
        }

        else
        {
          v25 = v21 & 2;
        }

        if (v25)
        {
          v51 = 138412290;
          v52 = v14;
          LODWORD(v37) = 12;
          v36 = &v51;
          v26 = _os_log_send_and_compose_impl();

          if (!v26)
          {
LABEL_34:

            *(v47 + 24) = 0;
            goto LABEL_35;
          }

          v24 = [NSString stringWithCString:v26 encoding:4, &v51, v37, v38];
          free(v26);
          v36 = v24;
          SSFileLog();
        }

        goto LABEL_34;
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_35:

  [(NSLock *)self->_lock unlock];
LABEL_36:
  if (*(v47 + 24) == 1)
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    v29 = [v27 shouldLogToDisk];
    v30 = [v27 OSLogObject];
    v31 = v30;
    if (v29)
    {
      v28 |= 2u;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v28;
    }

    else
    {
      v32 = v28 & 2;
    }

    if (v32)
    {
      v51 = 138412290;
      v52 = v14;
      LODWORD(v37) = 12;
      v33 = _os_log_send_and_compose_impl();

      if (v33)
      {
        v31 = [NSString stringWithCString:v33 encoding:4, &v51, v37];
        free(v33);
        SSFileLog();
        goto LABEL_47;
      }
    }

    else
    {
LABEL_47:
    }

    v34 = *(v47 + 24);
  }

  else
  {
    v34 = 0;
  }

  _Block_object_dispose(&v46, 8);
  return v34 & 1;
}

- (BOOL)isMultiUser
{
  v2 = +[UMUserManager sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

- (void)installPlaceholderForApplicationHandle:(id)a3
{
  v4 = a3;
  if (!SSDebugShouldUseAppstored())
  {
    v11 = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:v4 forceUpdate:0];

    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_operations addObject:v11];
    [(NSLock *)self->_lock unlock];
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016E7E8;
    block[3] = &unk_100327110;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
    goto LABEL_15;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v15 = 138412290;
  v16 = objc_opt_class();
  v9 = v16;
  LODWORD(v13) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, &v15, v13];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  v11 = [v4 bundleID];

  [ApplicationWorkspaceState completeNotificationForInstallingBundleIdentifier:v11];
LABEL_15:
}

- (BOOL)isInstalledApp:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 appState];
      if ([v7 isInstalled])
      {

LABEL_8:
        v11 = [v6 appState];
        v8 = [v11 isValid];

LABEL_10:
        goto LABEL_11;
      }

      v9 = [v6 appState];
      v10 = [v9 isPlaceholder];

      if (v10)
      {
        goto LABEL_8;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)keepSafeHarborDataForBundleID:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3];
  v4 = [v3 bundleContainerURL];
  v5 = [v4 path];

  v6 = [v5 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v7 = [NSMutableDictionary dictionaryWithContentsOfFile:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"DeviceBasedVPP"];
    if (v9 && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)markFailedPlaceholderForApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceFailedPlaceholderOperation alloc] initWithApplicationHandle:v4];
  [(NSLock *)self->_lock lock];
  v6 = [v4 downloadID];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:v6];
  [(ApplicationWorkspace *)self _addOperationAtBeginning:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016EACC;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)replayIncompleteOperations
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithInt:v3];
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v17 = 138412546;
  v18 = objc_opt_class();
  v19 = 2112;
  v20 = v4;
  v9 = v18;
  LODWORD(v13) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, &v17, v13];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  v11 = +[DownloadsDatabase downloadsDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10016ED08;
  v14[3] = &unk_1003294E0;
  v15 = v4;
  v16 = self;
  v12 = v4;
  [v11 modifyAsyncUsingTransactionBlock:v14];
}

- (void)resetProgressForApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceClearProgressOperation alloc] initWithApplicationHandle:v4];

  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_operations addObject:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F8F0;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)restorePlaceholderForApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [[ApplicationWorkspaceFinishOperation alloc] initWithApplicationHandle:v4 isPlaceholderRestore:1];

  [(NSLock *)self->_lock lock];
  [(ApplicationWorkspace *)self _addOperationAtBeginning:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F9C8;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)resumeQuotas
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    LODWORD(v33) = 138412290;
    *(&v33 + 4) = objc_opt_class();
    v7 = *(&v33 + 4);
    LODWORD(v27) = 12;
    v26 = &v33;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      v9 = [NSString stringWithCString:v8 encoding:4, &v33, v27];
      free(v8);
      v26 = v9;
      SSFileLog();
    }
  }

  else
  {
  }

  *&v33 = 0;
  *(&v33 + 1) = &v33;
  v34 = 0x2020000000;
  v35 = 0;
  v10 = +[DownloadsDatabase downloadsDatabase];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10016FE9C;
  v28[3] = &unk_10032A1B8;
  v28[4] = self;
  v28[5] = &v33;
  [v10 readUsingTransactionBlock:v28];

  if (*(*(&v33 + 1) + 24))
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    v13 = [v11 shouldLogToDisk];
    v14 = [v11 OSLogObject];
    v15 = v14;
    if (v13)
    {
      v12 |= 2u;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (!v12)
    {
      goto LABEL_31;
    }

    v16 = objc_opt_class();
    v17 = *(*(&v33 + 1) + 24);
    v29 = 138412546;
    v30 = v16;
    v31 = 1024;
    v32 = v17;
    v18 = v16;
    LODWORD(v27) = 18;
    v19 = _os_log_send_and_compose_impl();

    if (v19)
    {
LABEL_30:
      v15 = [NSString stringWithCString:v19 encoding:4, &v29, v27];
      free(v19);
      SSFileLog();
LABEL_31:
    }
  }

  else
  {
    v20 = +[UMUserManager sharedManager];
    [v20 resumeQuotas];

    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v21 = [v11 shouldLog];
    v22 = [v11 shouldLogToDisk];
    v23 = [v11 OSLogObject];
    v15 = v23;
    if (v22)
    {
      v21 |= 2u;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v21 &= 2u;
    }

    if (!v21)
    {
      goto LABEL_31;
    }

    v24 = objc_opt_class();
    v29 = 138412290;
    v30 = v24;
    v25 = v24;
    LODWORD(v27) = 12;
    v19 = _os_log_send_and_compose_impl();

    if (v19)
    {
      goto LABEL_30;
    }
  }

  _Block_object_dispose(&v33, 8);
}

- (void)setIconData:(id)a3 forApplicationHandle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:v6 iconData:v7];

  [(NSLock *)self->_lock lock];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v18 = 138412290;
  v19 = v6;
  LODWORD(v16) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v12 = [NSString stringWithCString:v14 encoding:4, &v18, v16];
    free(v14);
    SSFileLog();
LABEL_12:
  }

  [(NSMutableArray *)self->_operations addObject:v8];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001704B0;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)shouldModifyQuota:(id)a3
{
  v3 = a3;
  if (SSDownloadKindIsSoftwareKind())
  {
    v4 = 0;
  }

  else if (SSDownloadKindIsEBookKind())
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:SSDownloadKindDocument];
  }

  return v4;
}

- (void)suspendQuotas
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v12 = 138412290;
  v13 = objc_opt_class();
  v7 = v13;
  LODWORD(v10) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, &v12, v10];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  v9 = +[UMUserManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100170708;
  v11[3] = &unk_1003276D0;
  v11[4] = self;
  [v9 suspendQuotasWithCompletionHandler:v11];
}

- (void)uninstallPlaceholderForApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceUninstallOperation alloc] initWithApplicationHandle:v4];
  [(NSLock *)self->_lock lock];
  v6 = [v4 downloadID];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:v6];
  [(ApplicationWorkspace *)self _addOperationAtBeginning:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170984;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)updatePlaceholderForApplicationHandle:(id)a3
{
  v4 = a3;
  v5 = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:v4 forceUpdate:1];

  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_operations addObject:v5];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170A5C;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)updatePlaceholderWithApplicationProgress:(id)a3
{
  v4 = a3;
  v11 = [v4 applicationHandle];
  [(NSLock *)self->_lock lock];
  appProgress = self->_appProgress;
  if (!appProgress)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_appProgress;
    self->_appProgress = v6;

    appProgress = self->_appProgress;
  }

  v8 = [v4 copy];
  [(NSMutableDictionary *)appProgress setObject:v8 forKey:v11];

  [(NSLock *)self->_lock unlock];
  v9 = [(ApplicationWorkspace *)self _copyCombinedApplicationProgress:v4 forApplicationHandle:v11];

  v10 = [[ApplicationWorkspaceProgressOperation alloc] initWithApplicationDownloadProgress:v9];
  [(ApplicationWorkspace *)self _addProgressOperation:v10];
}

- (void)waitForInstallOfDownloadIdentifier:(int64_t)a3 completionBlock:(id)a4
{
  v6 = [a4 copy];
  [(NSLock *)self->_lock lock];
  if (![(ApplicationWorkspace *)self _isInstallingForDownloadIdentifier:a3])
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100170E10;
    block[3] = &unk_100327198;
    v26 = v6;
    dispatch_async(callbackQueue, block);
    v13 = v26;
    goto LABEL_21;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v27 = 134217984;
  v28 = a3;
  LODWORD(v24) = 12;
  v23 = &v27;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [NSString stringWithCString:v12 encoding:4, &v27, v24];
    free(v12);
    v23 = v10;
    SSFileLog();
LABEL_13:
  }

  v13 = [[NSNumber alloc] initWithLongLong:a3];
  waitBlocks = self->_waitBlocks;
  if (!waitBlocks)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = self->_waitBlocks;
    self->_waitBlocks = v15;

    waitBlocks = self->_waitBlocks;
  }

  v17 = [(NSMutableDictionary *)waitBlocks objectForKey:v13, v23];
  if (v17)
  {
    v18 = v17;
    v19 = objc_retainBlock(v6);
    [v18 addObject:v19];
  }

  else
  {
    v21 = [NSMutableArray alloc];
    v22 = objc_retainBlock(v6);
    v18 = [v21 initWithObjects:{v22, 0}];

    [(NSMutableDictionary *)self->_waitBlocks setObject:v18 forKey:v13];
  }

LABEL_21:
  [(NSLock *)self->_lock unlock];
}

- (void)waitForSyncBubbleToTerminateWithCompletionBlock:(id)a3
{
  v4 = [a3 copy];
  [(NSLock *)self->_lock lock];
  syncWaitBlocks = self->_syncWaitBlocks;
  if (!syncWaitBlocks)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_syncWaitBlocks;
    self->_syncWaitBlocks = v6;

    syncWaitBlocks = self->_syncWaitBlocks;
  }

  v8 = objc_retainBlock(v4);
  [(NSMutableArray *)syncWaitBlocks addObject:v8];

  if ([(NSMutableArray *)self->_syncWaitBlocks count]== 1)
  {
    v9 = +[UMUserManager sharedManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100170F28;
    v10[3] = &unk_100327110;
    v10[4] = self;
    [v9 terminateSyncWithCompletionHandler:v10];
  }

  [(NSLock *)self->_lock unlock];
}

- (id)sinfPathForBundleID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 bundleURL];
      v8 = [v7 path];

      v9 = [v6 bundleExecutable];
      v10 = [v9 stringByAppendingPathExtension:@"sinf"];

      if ([v8 length] && objc_msgSend(v10, "length"))
      {
        v11 = [[NSArray alloc] initWithObjects:{v8, @"SC_Info", v10, 0}];
        v12 = [NSString pathWithComponents:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)willSwitchUser
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSCountedSet *)self->_pendingInstalls copy];
  v48 = self;
  [(NSLock *)self->_lock unlock];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = [v3 count];
  v56 = 134217984;
  v57 = v8;
  LODWORD(v44) = 12;
  v42 = &v56;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, &v56, v44];
    free(v9);
    v42 = v7;
    SSFileLog();
LABEL_11:
  }

  v10 = [UMUserSwitchBlockingTask taskWithName:@"terminate multiuser mode" reason:@"user is going to change"];
  [v10 begin];
  v11 = +[DownloadsDatabase downloadsDatabase];
  v12 = [v11 modifyUsingTransactionBlock:&stru_10032A1D8];

  if (![v3 count])
  {
    v47 = 0;
    goto LABEL_59;
  }

  v45 = v3;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v3;
  v13 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v13)
  {
    v47 = 0;
    goto LABEL_58;
  }

  v14 = v13;
  v47 = 0;
  v15 = *v52;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v52 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = [*(*(&v51 + 1) + 8 * i) longLongValue];
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v18 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 2;
      }

      if (v22)
      {
        v56 = 134217984;
        v57 = v17;
        LODWORD(v44) = 12;
        v43 = &v56;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
          goto LABEL_30;
        }

        v21 = [NSString stringWithCString:v23 encoding:4, &v56, v44];
        free(v23);
        v43 = v21;
        SSFileLog();
      }

LABEL_30:
      v24 = dispatch_semaphore_create(0);
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100171D5C;
      v49[3] = &unk_100327110;
      v25 = v24;
      v50 = v25;
      [(ApplicationWorkspace *)v48 waitForInstallOfDownloadIdentifier:v17 completionBlock:v49];
      v26 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v25, v26))
      {
        v27 = +[SSLogConfig sharedDaemonConfig];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        v28 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v29 = v28 | 2;
        }

        else
        {
          v29 = v28;
        }

        v30 = [v27 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v29;
        }

        else
        {
          v31 = v29 & 2;
        }

        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v27 = +[SSLogConfig sharedDaemonConfig];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        ++v47;
        v32 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v33 = v32 | 2;
        }

        else
        {
          v33 = v32;
        }

        v30 = [v27 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 2;
        }

        if (!v34)
        {
          goto LABEL_52;
        }
      }

      v56 = 134217984;
      v57 = v17;
      LODWORD(v44) = 12;
      v42 = &v56;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
        goto LABEL_53;
      }

      v30 = [NSString stringWithCString:v35 encoding:4, &v56, v44];
      free(v35);
      v42 = v30;
      SSFileLog();
LABEL_52:

LABEL_53:
    }

    v14 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v14);
LABEL_58:

  v3 = v45;
LABEL_59:
  v36 = +[SSLogConfig sharedDaemonConfig];
  if (!v36)
  {
    v36 = +[SSLogConfig sharedConfig];
  }

  v37 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    v38 = v37 | 2;
  }

  else
  {
    v38 = v37;
  }

  v39 = [v36 OSLogObject];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = v38;
  }

  else
  {
    v40 = v38 & 2;
  }

  if (v40)
  {
    v56 = 134217984;
    v57 = v47;
    LODWORD(v44) = 12;
    v41 = _os_log_send_and_compose_impl();

    if (v41)
    {
      v39 = [NSString stringWithCString:v41 encoding:4, &v56, v44];
      free(v41);
      SSFileLog();
      goto LABEL_70;
    }
  }

  else
  {
LABEL_70:
  }

  [v10 end];
}

- (void)_addOperationAtBeginning:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableArray *)self->_operations count];
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_operations objectAtIndex:v6];
      v8 = objc_opt_class();
      v9 = objc_opt_class();

      if (v8 != v9)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  [(NSMutableArray *)self->_operations insertObject:v10 atIndex:v6];
}

- (void)_addProgressOperation:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [v4 applicationHandle];
  v6 = [v5 downloadID];

  v7 = [(NSMutableArray *)self->_operations count];
  if (v7 >= 1)
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_operations objectAtIndex:v8 - 2];
      v10 = objc_opt_class();
      if (v10 == objc_opt_class())
      {
        v11 = [v9 applicationHandle];
        v12 = [v11 downloadID];

        if (v12 == v6)
        {
          break;
        }
      }

      if (--v8 <= 1)
      {
        goto LABEL_8;
      }
    }

    [(NSMutableArray *)self->_operations removeObjectAtIndex:v8 - 2];
  }

LABEL_8:
  operations = self->_operations;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10017200C;
  v17[3] = &unk_10032A1F8;
  v17[4] = v6;
  v14 = [(NSMutableArray *)operations indexOfObjectWithOptions:2 passingTest:v17];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ApplicationWorkspace *)self _addOperationAtBeginning:v4];
  }

  else
  {
    [(NSMutableArray *)self->_operations insertObject:v4 atIndex:v14 + 1];
  }

  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100172050;
  v16[3] = &unk_100327110;
  v16[4] = self;
  dispatch_async(dispatchQueue, v16);
}

- (void)_cancelPlaceholderThumbnailInstallForDownloadID:(int64_t)a3
{
  v3 = [(ApplicationWorkspace *)self _thumbnailDownloadOperationForDownloadID:a3];
  v4 = v3;
  if (v3)
  {
    [v3 cancel];
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      [v4 applicationHandle];
      v12 = v11 = 138412290;
      LODWORD(v10) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = [NSString stringWithCString:v9 encoding:4, &v11, v10];
      free(v9);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_copyCombinedApplicationProgress:(id)a3 forApplicationHandle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ApplicationDownloadProgress);
  [(ApplicationDownloadProgress *)v7 setApplicationHandle:v5];

  v8 = [v6 completedUnitCount];
  v9 = [v6 totalUnitCount];

  [(ApplicationDownloadProgress *)v7 setCompletedUnitCount:v8];
  [(ApplicationDownloadProgress *)v7 setTotalUnitCount:v9];
  return v7;
}

- (void)_fireWaitBlocksIfNecessaryForDownloadWithIdentifier:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  if ([(ApplicationWorkspace *)self _isInstallingForDownloadIdentifier:a3])
  {
    v5 = 0;
  }

  else
  {
    v6 = [[NSNumber alloc] initWithLongLong:a3];
    v7 = [(NSMutableDictionary *)self->_waitBlocks objectForKey:v6];
    v5 = [v7 copy];

    [(NSMutableDictionary *)self->_waitBlocks removeObjectForKey:v6];
  }

  [(NSLock *)self->_lock unlock];
  if ([v5 count])
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100172398;
    block[3] = &unk_100327110;
    v10 = v5;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_fireWaitBlocksForSyncTermination
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_syncWaitBlocks copy];
  [(NSMutableArray *)self->_syncWaitBlocks removeAllObjects];
  [(NSLock *)self->_lock unlock];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017254C;
  v6[3] = &unk_100327238;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(dispatchQueue, v6);
}

- (BOOL)_hasThumbnailDownloadOperationForDownloadID:(int64_t)a3
{
  v3 = [(ApplicationWorkspace *)self _thumbnailDownloadOperationForDownloadID:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isInstallingForDownloadIdentifier:(int64_t)a3
{
  v5 = [[NSNumber alloc] initWithLongLong:a3];
  if ([(NSCountedSet *)self->_pendingInstalls countForObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_operations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 applicationHandle];
          if ([v13 downloadID] == a3)
          {
            v14 = [v12 blocksAppInstallation];

            if (v14)
            {
              v6 = 1;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v6 = 0;
LABEL_15:
  }

  return v6;
}

- (void)_performNextOperation
{
  [(NSLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_operations count])
  {
    v3 = [(NSMutableArray *)self->_operations objectAtIndex:0];
    [(NSMutableArray *)self->_operations removeObjectAtIndex:0];
    [(NSLock *)self->_lock unlock];
    if (v3)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = sub_100172A94;
      v19 = sub_100172AA4;
      v20 = 0;
      v4 = [v3 applicationHandle];
      v5 = [v4 downloadID];
      if ([v3 blocksAppInstallation])
      {
        [(ApplicationWorkspace *)self _incrementPendingInstallsForDownloadIdentifier:v5];
      }

      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100172AAC;
      v12 = &unk_10032A220;
      v14 = &v15;
      v6 = dispatch_semaphore_create(0);
      v13 = v6;
      [v3 runWithCompletionBlock:&v9];
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v7 = v16[5];
      if (v7)
      {
        [v7 isFinished];
      }

      if ([v3 blocksAppInstallation])
      {
        [(ApplicationWorkspace *)self _decrementPendingInstallsForDownloadIdentifier:v5];
      }

      [(ApplicationWorkspace *)self _fireWaitBlocksIfNecessaryForDownloadWithIdentifier:v5];

      _Block_object_dispose(&v15, 8);
    }
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)_removeApplicationDownloadProgressForApplicationHandle:(id)a3
{
  [(NSMutableDictionary *)self->_appProgress removeObjectForKey:a3];
  if (![(NSMutableDictionary *)self->_appProgress count])
  {
    appProgress = self->_appProgress;
    self->_appProgress = 0;
  }
}

- (void)_removeOperationsForDownloadIdentifier:(int64_t)a3 operationClass:(Class)a4
{
  v7 = [(NSMutableArray *)self->_operations count];
  if (v7 >= 1)
  {
    v8 = v7 + 1;
    do
    {
      v9 = [(NSMutableArray *)self->_operations objectAtIndex:v8 - 2];
      v10 = [v9 applicationHandle];
      v11 = [v10 downloadID];

      if (v11 == a3 && (!a4 || (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(NSMutableArray *)self->_operations removeObjectAtIndex:v8 - 2];
      }

      --v8;
    }

    while (v8 > 1);
  }
}

- (void)_stopObservingODRProgress:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"finished" context:0];
  [v4 removeObserver:self forKeyPath:@"fractionCompleted" context:0];
}

- (id)_thumbnailDownloadOperationForDownloadID:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ISOperationQueue *)self->_placeholderIconOperationQueue operations];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 applicationHandle];
        if ([v10 downloadID] == a3)
        {
          v11 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_updatePlaceholderWithODRProgressForApplicationHandle:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v8 = [(NSMutableDictionary *)self->_appProgress objectForKey:v5];
  [(NSLock *)self->_lock unlock];
  v6 = [(ApplicationWorkspace *)self _copyCombinedApplicationProgress:v8 forApplicationHandle:v5];

  v7 = [[ApplicationWorkspaceProgressOperation alloc] initWithApplicationDownloadProgress:v6];
  [(ApplicationWorkspace *)self _addProgressOperation:v7];
}

- (void)_incrementPendingInstallsForDownloadIdentifier:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  v5 = [NSNumber numberWithLongLong:a3];
  [(NSCountedSet *)self->_pendingInstalls addObject:v5];

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_decrementPendingInstallsForDownloadIdentifier:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  v5 = [NSNumber numberWithLongLong:a3];
  if (![(NSCountedSet *)self->_pendingInstalls containsObject:v5])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v13 = 138412546;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2048;
      *&v13[14] = a3;
      v10 = *&v13[4];
      LODWORD(v12) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  [(NSCountedSet *)self->_pendingInstalls removeObject:v5];
LABEL_15:

  [(NSLock *)self->_lock unlock];
}

@end