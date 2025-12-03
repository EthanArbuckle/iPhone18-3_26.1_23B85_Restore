@interface ApplicationWorkspace
+ (BOOL)keepSafeHarborDataForBundleID:(id)d;
+ (id)defaultWorkspace;
- (ApplicationWorkspace)init;
- (BOOL)_hasThumbnailDownloadOperationForDownloadID:(int64_t)d;
- (BOOL)_isInstallingForDownloadIdentifier:(int64_t)identifier;
- (BOOL)isDownloadingOrInstallingForItemIdentifier:(id)identifier;
- (BOOL)isInstalledApp:(id)app;
- (BOOL)isMultiUser;
- (BOOL)shouldModifyQuota:(id)quota;
- (id)_copyCombinedApplicationProgress:(id)progress forApplicationHandle:(id)handle;
- (id)_thumbnailDownloadOperationForDownloadID:(int64_t)d;
- (id)sinfPathForBundleID:(id)d;
- (void)_addOperationAtBeginning:(id)beginning;
- (void)_addProgressOperation:(id)operation;
- (void)_cancelPlaceholderThumbnailInstallForDownloadID:(int64_t)d;
- (void)_decrementPendingInstallsForDownloadIdentifier:(int64_t)identifier;
- (void)_fireWaitBlocksForSyncTermination;
- (void)_fireWaitBlocksIfNecessaryForDownloadWithIdentifier:(int64_t)identifier;
- (void)_incrementPendingInstallsForDownloadIdentifier:(int64_t)identifier;
- (void)_performNextOperation;
- (void)_removeApplicationDownloadProgressForApplicationHandle:(id)handle;
- (void)_removeOperationsForDownloadIdentifier:(int64_t)identifier operationClass:(Class)class;
- (void)_stopObservingODRProgress:(id)progress;
- (void)_updatePlaceholderWithODRProgressForApplicationHandle:(id)handle;
- (void)addPlaceholderThumbnailOperation:(id)operation;
- (void)applyWorkspaceChanges:(id)changes;
- (void)cancelPlaceholderInstallationForDownloadIdentifier:(int64_t)identifier;
- (void)endExternalInstallationForDownloadIdentifier:(int64_t)identifier;
- (void)finishInstallOfApplicationHandle:(id)handle;
- (void)installPlaceholderForApplicationHandle:(id)handle;
- (void)markFailedPlaceholderForApplicationHandle:(id)handle;
- (void)replayIncompleteOperations;
- (void)resetProgressForApplicationHandle:(id)handle;
- (void)restorePlaceholderForApplicationHandle:(id)handle;
- (void)resumeQuotas;
- (void)setIconData:(id)data forApplicationHandle:(id)handle;
- (void)suspendQuotas;
- (void)uninstallPlaceholderForApplicationHandle:(id)handle;
- (void)updatePlaceholderForApplicationHandle:(id)handle;
- (void)updatePlaceholderWithApplicationProgress:(id)progress;
- (void)waitForInstallOfDownloadIdentifier:(int64_t)identifier completionBlock:(id)block;
- (void)waitForSyncBubbleToTerminateWithCompletionBlock:(id)block;
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

      shouldLog = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = shouldLog | 2;
      }

      else
      {
        v21 = shouldLog;
      }

      oSLogObject = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

        oSLogObject = [NSString stringWithCString:v24 encoding:4, v27, v26];
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
  block[4] = self;
  if (qword_100383F58 != -1)
  {
    dispatch_once(&qword_100383F58, block);
  }

  v2 = qword_100383F50;

  return v2;
}

- (void)applyWorkspaceChanges:(id)changes
{
  changesCopy = changes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        changeType = [v9 changeType];
        if (changeType <= 1)
        {
          if (changeType)
          {
            if (changeType != 1)
            {
              continue;
            }

            applicationHandle = [v9 applicationHandle];
            [(ApplicationWorkspace *)self uninstallPlaceholderForApplicationHandle:applicationHandle];
          }

          else
          {
            applicationHandle = [v9 applicationHandle];
            [(ApplicationWorkspace *)self installPlaceholderForApplicationHandle:applicationHandle];
          }
        }

        else
        {
          switch(changeType)
          {
            case 2:
              applicationHandle = [v9 applicationHandle];
              [(ApplicationWorkspace *)self finishInstallOfApplicationHandle:applicationHandle];
              break;
            case 3:
              applicationHandle = [v9 applicationHandle];
              [(ApplicationWorkspace *)self markFailedPlaceholderForApplicationHandle:applicationHandle];
              break;
            case 5:
              applicationHandle = [v9 applicationHandle];
              [(ApplicationWorkspace *)self updatePlaceholderForApplicationHandle:applicationHandle];
              break;
            default:
              continue;
          }
        }
      }

      v6 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addPlaceholderThumbnailOperation:(id)operation
{
  operationCopy = operation;
  [(NSLock *)self->_lock lock];
  applicationHandle = [operationCopy applicationHandle];
  if (-[ApplicationWorkspace _hasThumbnailDownloadOperationForDownloadID:](self, "_hasThumbnailDownloadOperationForDownloadID:", [applicationHandle downloadID]))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    *(&v16 + 4) = applicationHandle;
    LODWORD(v15) = 12;
  }

  else
  {
    [(ISOperationQueue *)self->_placeholderIconOperationQueue addOperation:operationCopy];
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v12 = shouldLog2 | 2;
    }

    else
    {
      v12 = shouldLog2;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    *(&v16 + 4) = applicationHandle;
    LODWORD(v15) = 12;
  }

  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v16, v15, v16];
    free(v14);
    SSFileLog();
LABEL_24:
  }

  [(NSLock *)self->_lock unlock];
}

- (void)cancelPlaceholderInstallationForDownloadIdentifier:(int64_t)identifier
{
  [(NSLock *)self->_lock lock];
  if ([(ApplicationWorkspace *)self _hasThumbnailDownloadOperationForDownloadID:identifier])
  {
    [(ApplicationWorkspace *)self _cancelPlaceholderThumbnailInstallForDownloadID:identifier];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)endExternalInstallationForDownloadIdentifier:(int64_t)identifier
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016D88C;
  v4[3] = &unk_100329108;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

- (void)finishInstallOfApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[ApplicationWorkspaceFinishOperation alloc] initWithApplicationHandle:handleCopy];
  [(NSLock *)self->_lock lock];
  downloadID = [handleCopy downloadID];
  [(ApplicationWorkspace *)self _removeApplicationDownloadProgressForApplicationHandle:handleCopy];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:downloadID];
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

- (BOOL)isDownloadingOrInstallingForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  shouldLogToDisk = [v5 shouldLogToDisk];
  oSLogObject = [v5 OSLogObject];
  v9 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 = shouldLog;
  }

  else
  {
    v10 = shouldLog & 2;
  }

  if (v10)
  {
    v51 = 138412290;
    v52 = identifierCopy;
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
  v14 = identifierCopy;
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

        shouldLog2 = [v20 shouldLog];
        shouldLogToDisk2 = [v20 shouldLogToDisk];
        oSLogObject2 = [v20 OSLogObject];
        v24 = oSLogObject2;
        if (shouldLogToDisk2)
        {
          shouldLog2 |= 2u;
        }

        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v25 = shouldLog2;
        }

        else
        {
          v25 = shouldLog2 & 2;
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

    shouldLog3 = [v27 shouldLog];
    shouldLogToDisk3 = [v27 shouldLogToDisk];
    oSLogObject3 = [v27 OSLogObject];
    v31 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      shouldLog3 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v32 = shouldLog3;
    }

    else
    {
      v32 = shouldLog3 & 2;
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
  isMultiUser = [v2 isMultiUser];

  return isMultiUser;
}

- (void)installPlaceholderForApplicationHandle:(id)handle
{
  handleCopy = handle;
  if (!SSDebugShouldUseAppstored())
  {
    bundleID = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:handleCopy forceUpdate:0];

    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_operations addObject:bundleID];
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

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v15, v13];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  bundleID = [handleCopy bundleID];

  [ApplicationWorkspaceState completeNotificationForInstallingBundleIdentifier:bundleID];
LABEL_15:
}

- (BOOL)isInstalledApp:(id)app
{
  appCopy = app;
  v4 = appCopy;
  if (appCopy && [appCopy length])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      appState = [v5 appState];
      if ([appState isInstalled])
      {

LABEL_8:
        appState2 = [v6 appState];
        isValid = [appState2 isValid];

LABEL_10:
        goto LABEL_11;
      }

      appState3 = [v6 appState];
      isPlaceholder = [appState3 isPlaceholder];

      if (isPlaceholder)
      {
        goto LABEL_8;
      }
    }

    isValid = 0;
    goto LABEL_10;
  }

  isValid = 0;
LABEL_11:

  return isValid;
}

+ (BOOL)keepSafeHarborDataForBundleID:(id)d
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:d];
  bundleContainerURL = [v3 bundleContainerURL];
  path = [bundleContainerURL path];

  v6 = [path stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v7 = [NSMutableDictionary dictionaryWithContentsOfFile:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"DeviceBasedVPP"];
    if (v9 && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)markFailedPlaceholderForApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceFailedPlaceholderOperation alloc] initWithApplicationHandle:handleCopy];
  [(NSLock *)self->_lock lock];
  downloadID = [handleCopy downloadID];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:downloadID];
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

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v17, v13];
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
  selfCopy = self;
  v12 = v4;
  [v11 modifyAsyncUsingTransactionBlock:v14];
}

- (void)resetProgressForApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceClearProgressOperation alloc] initWithApplicationHandle:handleCopy];

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

- (void)restorePlaceholderForApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[ApplicationWorkspaceFinishOperation alloc] initWithApplicationHandle:handleCopy isPlaceholderRestore:1];

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

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

    shouldLog2 = [v11 shouldLog];
    shouldLogToDisk = [v11 shouldLogToDisk];
    oSLogObject2 = [v11 OSLogObject];
    v15 = oSLogObject2;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
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

    shouldLog3 = [v11 shouldLog];
    shouldLogToDisk2 = [v11 shouldLogToDisk];
    oSLogObject3 = [v11 OSLogObject];
    v15 = oSLogObject3;
    if (shouldLogToDisk2)
    {
      shouldLog3 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      shouldLog3 &= 2u;
    }

    if (!shouldLog3)
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

- (void)setIconData:(id)data forApplicationHandle:(id)handle
{
  handleCopy = handle;
  dataCopy = data;
  v8 = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:handleCopy iconData:dataCopy];

  [(NSLock *)self->_lock lock];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  v19 = handleCopy;
  LODWORD(v16) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v18, v16];
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

- (BOOL)shouldModifyQuota:(id)quota
{
  quotaCopy = quota;
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
    v4 = [quotaCopy isEqualToString:SSDownloadKindDocument];
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

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    oSLogObject = [NSString stringWithCString:v8 encoding:4, &v12, v10];
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

- (void)uninstallPlaceholderForApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(ApplicationWorkspaceOperation *)[ApplicationWorkspaceUninstallOperation alloc] initWithApplicationHandle:handleCopy];
  [(NSLock *)self->_lock lock];
  downloadID = [handleCopy downloadID];

  [(ApplicationWorkspace *)self _removeOperationsForDownloadIdentifier:downloadID];
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

- (void)updatePlaceholderForApplicationHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[ApplicationWorkspaceInstallPlaceholderOperation alloc] initWithApplicationHandle:handleCopy forceUpdate:1];

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

- (void)updatePlaceholderWithApplicationProgress:(id)progress
{
  progressCopy = progress;
  applicationHandle = [progressCopy applicationHandle];
  [(NSLock *)self->_lock lock];
  appProgress = self->_appProgress;
  if (!appProgress)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_appProgress;
    self->_appProgress = v6;

    appProgress = self->_appProgress;
  }

  v8 = [progressCopy copy];
  [(NSMutableDictionary *)appProgress setObject:v8 forKey:applicationHandle];

  [(NSLock *)self->_lock unlock];
  v9 = [(ApplicationWorkspace *)self _copyCombinedApplicationProgress:progressCopy forApplicationHandle:applicationHandle];

  v10 = [[ApplicationWorkspaceProgressOperation alloc] initWithApplicationDownloadProgress:v9];
  [(ApplicationWorkspace *)self _addProgressOperation:v10];
}

- (void)waitForInstallOfDownloadIdentifier:(int64_t)identifier completionBlock:(id)block
{
  v6 = [block copy];
  [(NSLock *)self->_lock lock];
  if (![(ApplicationWorkspace *)self _isInstallingForDownloadIdentifier:identifier])
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

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
  identifierCopy = identifier;
  LODWORD(v24) = 12;
  v23 = &v27;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v27, v24];
    free(v12);
    v23 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  v13 = [[NSNumber alloc] initWithLongLong:identifier];
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

- (void)waitForSyncBubbleToTerminateWithCompletionBlock:(id)block
{
  v4 = [block copy];
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

- (id)sinfPathForBundleID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy && [dCopy length])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      bundleURL = [v5 bundleURL];
      path = [bundleURL path];

      bundleExecutable = [v6 bundleExecutable];
      v10 = [bundleExecutable stringByAppendingPathExtension:@"sinf"];

      if ([path length] && objc_msgSend(v10, "length"))
      {
        v11 = [[NSArray alloc] initWithObjects:{path, @"SC_Info", v10, 0}];
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
  selfCopy = self;
  [(NSLock *)self->_lock unlock];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v56, v44];
    free(v9);
    v42 = oSLogObject;
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

      longLongValue = [*(*(&v51 + 1) + 8 * i) longLongValue];
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = shouldLog2 | 2;
      }

      else
      {
        v20 = shouldLog2;
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
        v57 = longLongValue;
        LODWORD(v44) = 12;
        v43 = &v56;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
          goto LABEL_30;
        }

        oSLogObject2 = [NSString stringWithCString:v23 encoding:4, &v56, v44];
        free(v23);
        v43 = oSLogObject2;
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
      [(ApplicationWorkspace *)selfCopy waitForInstallOfDownloadIdentifier:longLongValue completionBlock:v49];
      v26 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v25, v26))
      {
        v27 = +[SSLogConfig sharedDaemonConfig];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v29 = shouldLog3 | 2;
        }

        else
        {
          v29 = shouldLog3;
        }

        oSLogObject3 = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        shouldLog4 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v33 = shouldLog4 | 2;
        }

        else
        {
          v33 = shouldLog4;
        }

        oSLogObject3 = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      v57 = longLongValue;
      LODWORD(v44) = 12;
      v42 = &v56;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
        goto LABEL_53;
      }

      oSLogObject3 = [NSString stringWithCString:v35 encoding:4, &v56, v44];
      free(v35);
      v42 = oSLogObject3;
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

  shouldLog5 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    v38 = shouldLog5 | 2;
  }

  else
  {
    v38 = shouldLog5;
  }

  oSLogObject4 = [v36 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
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
      oSLogObject4 = [NSString stringWithCString:v41 encoding:4, &v56, v44];
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

- (void)_addOperationAtBeginning:(id)beginning
{
  beginningCopy = beginning;
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

  [(NSMutableArray *)self->_operations insertObject:beginningCopy atIndex:v6];
}

- (void)_addProgressOperation:(id)operation
{
  operationCopy = operation;
  [(NSLock *)self->_lock lock];
  applicationHandle = [operationCopy applicationHandle];
  downloadID = [applicationHandle downloadID];

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
        applicationHandle2 = [v9 applicationHandle];
        downloadID2 = [applicationHandle2 downloadID];

        if (downloadID2 == downloadID)
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
  v17[4] = downloadID;
  v14 = [(NSMutableArray *)operations indexOfObjectWithOptions:2 passingTest:v17];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ApplicationWorkspace *)self _addOperationAtBeginning:operationCopy];
  }

  else
  {
    [(NSMutableArray *)self->_operations insertObject:operationCopy atIndex:v14 + 1];
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

- (void)_cancelPlaceholderThumbnailInstallForDownloadID:(int64_t)d
{
  v3 = [(ApplicationWorkspace *)self _thumbnailDownloadOperationForDownloadID:d];
  v4 = v3;
  if (v3)
  {
    [v3 cancel];
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [NSString stringWithCString:v9 encoding:4, &v11, v10];
      free(v9);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_copyCombinedApplicationProgress:(id)progress forApplicationHandle:(id)handle
{
  handleCopy = handle;
  progressCopy = progress;
  v7 = objc_alloc_init(ApplicationDownloadProgress);
  [(ApplicationDownloadProgress *)v7 setApplicationHandle:handleCopy];

  completedUnitCount = [progressCopy completedUnitCount];
  totalUnitCount = [progressCopy totalUnitCount];

  [(ApplicationDownloadProgress *)v7 setCompletedUnitCount:completedUnitCount];
  [(ApplicationDownloadProgress *)v7 setTotalUnitCount:totalUnitCount];
  return v7;
}

- (void)_fireWaitBlocksIfNecessaryForDownloadWithIdentifier:(int64_t)identifier
{
  [(NSLock *)self->_lock lock];
  if ([(ApplicationWorkspace *)self _isInstallingForDownloadIdentifier:identifier])
  {
    v5 = 0;
  }

  else
  {
    v6 = [[NSNumber alloc] initWithLongLong:identifier];
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
  selfCopy = self;
  v5 = v3;
  dispatch_async(dispatchQueue, v6);
}

- (BOOL)_hasThumbnailDownloadOperationForDownloadID:(int64_t)d
{
  v3 = [(ApplicationWorkspace *)self _thumbnailDownloadOperationForDownloadID:d];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isInstallingForDownloadIdentifier:(int64_t)identifier
{
  v5 = [[NSNumber alloc] initWithLongLong:identifier];
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
          applicationHandle = [v12 applicationHandle];
          if ([applicationHandle downloadID] == identifier)
          {
            blocksAppInstallation = [v12 blocksAppInstallation];

            if (blocksAppInstallation)
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
      applicationHandle = [v3 applicationHandle];
      downloadID = [applicationHandle downloadID];
      if ([v3 blocksAppInstallation])
      {
        [(ApplicationWorkspace *)self _incrementPendingInstallsForDownloadIdentifier:downloadID];
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
        [(ApplicationWorkspace *)self _decrementPendingInstallsForDownloadIdentifier:downloadID];
      }

      [(ApplicationWorkspace *)self _fireWaitBlocksIfNecessaryForDownloadWithIdentifier:downloadID];

      _Block_object_dispose(&v15, 8);
    }
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)_removeApplicationDownloadProgressForApplicationHandle:(id)handle
{
  [(NSMutableDictionary *)self->_appProgress removeObjectForKey:handle];
  if (![(NSMutableDictionary *)self->_appProgress count])
  {
    appProgress = self->_appProgress;
    self->_appProgress = 0;
  }
}

- (void)_removeOperationsForDownloadIdentifier:(int64_t)identifier operationClass:(Class)class
{
  v7 = [(NSMutableArray *)self->_operations count];
  if (v7 >= 1)
  {
    v8 = v7 + 1;
    do
    {
      v9 = [(NSMutableArray *)self->_operations objectAtIndex:v8 - 2];
      applicationHandle = [v9 applicationHandle];
      downloadID = [applicationHandle downloadID];

      if (downloadID == identifier && (!class || (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(NSMutableArray *)self->_operations removeObjectAtIndex:v8 - 2];
      }

      --v8;
    }

    while (v8 > 1);
  }
}

- (void)_stopObservingODRProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy removeObserver:self forKeyPath:@"finished" context:0];
  [progressCopy removeObserver:self forKeyPath:@"fractionCompleted" context:0];
}

- (id)_thumbnailDownloadOperationForDownloadID:(int64_t)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operations = [(ISOperationQueue *)self->_placeholderIconOperationQueue operations];
  v5 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(operations);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        applicationHandle = [v9 applicationHandle];
        if ([applicationHandle downloadID] == d)
        {
          v11 = v9;

          goto LABEL_11;
        }
      }

      v6 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_updatePlaceholderWithODRProgressForApplicationHandle:(id)handle
{
  lock = self->_lock;
  handleCopy = handle;
  [(NSLock *)lock lock];
  v8 = [(NSMutableDictionary *)self->_appProgress objectForKey:handleCopy];
  [(NSLock *)self->_lock unlock];
  v6 = [(ApplicationWorkspace *)self _copyCombinedApplicationProgress:v8 forApplicationHandle:handleCopy];

  v7 = [[ApplicationWorkspaceProgressOperation alloc] initWithApplicationDownloadProgress:v6];
  [(ApplicationWorkspace *)self _addProgressOperation:v7];
}

- (void)_incrementPendingInstallsForDownloadIdentifier:(int64_t)identifier
{
  [(NSLock *)self->_lock lock];
  v5 = [NSNumber numberWithLongLong:identifier];
  [(NSCountedSet *)self->_pendingInstalls addObject:v5];

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_decrementPendingInstallsForDownloadIdentifier:(int64_t)identifier
{
  [(NSLock *)self->_lock lock];
  v5 = [NSNumber numberWithLongLong:identifier];
  if (![(NSCountedSet *)self->_pendingInstalls containsObject:v5])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v13 = 138412546;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2048;
      *&v13[14] = identifier;
      v10 = *&v13[4];
      LODWORD(v12) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
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