@interface DownloadController
+ (id)controller;
- (BOOL)_cancelDownloads:(id)a3 client:(id)a4;
- (BOOL)_pauseDownloads:(id)a3 isForced:(BOOL)a4 client:(id)a5;
- (BOOL)_prioritizeDownload:(id)a3 aboveDownload:(id)a4 client:(id)a5 error:(id *)a6;
- (BOOL)_restartDownloads:(id)a3 client:(id)a4;
- (BOOL)_resumeDownloads:(id)a3 client:(id)a4;
- (DownloadController)init;
- (id)_downloadPersistentIDsFromBundleIDs:(id)a3;
- (id)_managerClientForConnection:(id)a3;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_dispatchAsync:(id)a3;
- (void)_filterAndTranslateProperties:(id)a3 usingBlock:(id)a4;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5;
- (void)_handleSessionMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_handleSessionMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5;
- (void)_rescueStuckPlaceholderWithBundleID:(id)a3;
- (void)_retryRestoreIfNecessaryForTransaction:(id)a3;
- (void)_sendDownloadKindsUsingNetwork:(id)a3;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidPause:(id)a3;
- (void)applicationInstallsDidPrioritize:(id)a3;
- (void)applicationInstallsDidResume:(id)a3;
- (void)beginUsingNetworkForDownloadKind:(id)a3;
- (void)cancelAllDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)cancelDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)connectDownloadHandlerWithMessage:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)endUsingNetworkForDownloadKind:(id)a3;
- (void)finishDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)finishSessionWithMessage:(id)a3 connection:(id)a4;
- (void)getCellularNetworkAllowed:(id)a3 connection:(id)a4;
- (void)getDownloadAssetPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)getDownloadAssetsWithMessage:(id)a3 connection:(id)a4;
- (void)getDownloadKindsUsingNetworkWithMessage:(id)a3 connection:(id)a4;
- (void)getDownloadPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)getDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)getEntityExistsWithMessage:(id)a3 connection:(id)a4;
- (void)getSessionPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)insertDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)moveDownloadWithMessage:(id)a3 connection:(id)a4;
- (void)notifyClientsOfChangeset:(id)a3;
- (void)notifyClientsOfExternalPropertyChanges:(id)a3 connection:(id)a4;
- (void)notifyClientsOfExternalPropertyChanges:(id)a3 forDownloadID:(int64_t)a4 downloadKind:(id)a5;
- (void)notifyClientsOfExternalStateChanges:(id)a3 connection:(id)a4;
- (void)notifyClientsOfPropertyChanges:(id)a3 forDownloadID:(int64_t)a4 downloadKind:(id)a5;
- (void)observeXPCServer:(id)a3;
- (void)pauseDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)prioritizeDownloadWithMessage:(id)a3 connection:(id)a4;
- (void)registerClientDownloadManager:(id)a3 connection:(id)a4;
- (void)removePersistenceIDWithMessage:(id)a3 connection:(id)a4;
- (void)resetDisavowedSessionsWithMessage:(id)a3 connection:(id)a4;
- (void)restartDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)resumeDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)setAssetPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)setCellularNetworkAllowed:(id)a3 connection:(id)a4;
- (void)setClientDownloadHandlerWithMessage:(id)a3 connection:(id)a4;
- (void)setDownloadHandlerWithMessage:(id)a3 connection:(id)a4;
- (void)setDownloadPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)setDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)setHandlerPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)setSessionProgressWithMessage:(id)a3 connection:(id)a4;
- (void)setSessionPropertiesWithMessage:(id)a3 connection:(id)a4;
- (void)setSessionStatusDescriptionWithMessage:(id)a3 connection:(id)a4;
- (void)start;
@end

@implementation DownloadController

+ (id)controller
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BE474;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100384078 != -1)
  {
    dispatch_once(&qword_100384078, block);
  }

  v2 = qword_100384070;

  return v2;
}

- (DownloadController)init
{
  v14.receiver = self;
  v14.super_class = DownloadController;
  v2 = [(DownloadController *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.DownloadController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.DownloadController.external", 0);
    externalQueue = v2->_externalQueue;
    v2->_externalQueue = v5;

    v7 = objc_alloc_init(NSMutableArray);
    managerClients = v2->_managerClients;
    v2->_managerClients = v7;

    if ((SSDebugShouldUseAppstored() & 1) == 0)
    {
      v9 = objc_alloc_init(WorkspaceDownloadObserver);
      workspaceDownloadObserver = v2->_workspaceDownloadObserver;
      v2->_workspaceDownloadObserver = v9;

      [(WorkspaceDownloadObserver *)v2->_workspaceDownloadObserver setDelegate:v2];
    }

    v11 = +[ApplicationWorkspace defaultWorkspace];
    [v11 replayIncompleteOperations];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_clientDisconnectNotification:" name:@"XPCClientDisconnectNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"XPCClientDisconnectNotification" object:0];
  [(WorkspaceDownloadObserver *)self->_workspaceDownloadObserver setDelegate:0];
  [(WorkspaceDownloadObserver *)self->_workspaceDownloadObserver stopObserving];

  v4.receiver = self;
  v4.super_class = DownloadController;
  [(DownloadController *)&v4 dealloc];
}

- (void)beginUsingNetworkForDownloadKind:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BE548;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)endUsingNetworkForDownloadKind:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BE670;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)notifyClientsOfChangeset:(id)a3
{
  v4 = a3;
  v5 = [v4 changedDownloadKinds];
  if ([v5 count])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001BE8DC;
    v19[3] = &unk_1003281A0;
    v19[4] = self;
    v20 = v5;
    v21 = v4;
    [(DownloadController *)self _dispatchAsync:v19];
  }

  v6 = [v4 finishedDownloadKinds];
  if ([v6 count])
  {
    v14 = v5;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.SSDownloadManager.downloadCompleted.%@", *(*(&v15 + 1) + 8 * v12)];
          CFNotificationCenterPostNotification(DarwinNotifyCenter, v13, 0, 0, 1u);

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = v14;
  }
}

- (void)notifyClientsOfExternalPropertyChanges:(id)a3 forDownloadID:(int64_t)a4 downloadKind:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    dispatchQueue = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001BEAEC;
    v11[3] = &unk_100329530;
    v11[4] = self;
    v12 = v9;
    v14 = a4;
    v13 = v8;
    dispatch_async(dispatchQueue, v11);
  }
}

- (void)notifyClientsOfPropertyChanges:(id)a3 forDownloadID:(int64_t)a4 downloadKind:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    dispatchQueue = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001BED00;
    v11[3] = &unk_100329530;
    v11[4] = self;
    v12 = v9;
    v14 = a4;
    v13 = v8;
    dispatch_async(dispatchQueue, v11);
  }
}

- (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:self selector:"cancelAllDownloadsWithMessage:connection:" forMessage:0];
  [v4 addObserver:self selector:"cancelDownloadsWithMessage:connection:" forMessage:1];
  [v4 addObserver:self selector:"finishDownloadsWithMessage:connection:" forMessage:7];
  [v4 addObserver:self selector:"getActiveDownloadsWithMessage:connection:" forMessage:8];
  [v4 addObserver:self selector:"getDownloadAssetPropertiesWithMessage:connection:" forMessage:26];
  [v4 addObserver:self selector:"getDownloadAssetPropertiesWithMessage:connection:" forMessage:10];
  [v4 addObserver:self selector:"getDownloadAssetsWithMessage:connection:" forMessage:11];
  [v4 addObserver:self selector:"getDownloadKindsUsingNetworkWithMessage:connection:" forMessage:29];
  [v4 addObserver:self selector:"getDownloadPropertiesWithMessage:connection:" forMessage:27];
  [v4 addObserver:self selector:"getDownloadPropertiesWithMessage:connection:" forMessage:13];
  [v4 addObserver:self selector:"getDownloadsWithMessage:connection:" forMessage:14];
  [v4 addObserver:self selector:"getEntityExistsWithMessage:connection:" forMessage:53];
  [v4 addObserver:self selector:"getEntityExistsWithMessage:connection:" forMessage:52];
  [v4 addObserver:self selector:"insertDownloadsWithMessage:connection:" forMessage:15];
  [v4 addObserver:self selector:"moveDownloadWithMessage:connection:" forMessage:16];
  [v4 addObserver:self selector:"notifyClientsOfExternalPropertyChanges:connection:" forMessage:176];
  [v4 addObserver:self selector:"notifyClientsOfExternalStateChanges:connection:" forMessage:177];
  [v4 addObserver:self selector:"pauseDownloadsWithMessage:connection:" forMessage:17];
  [v4 addObserver:self selector:"prioritizeDownloadWithMessage:connection:" forMessage:28];
  [v4 addObserver:self selector:"registerClientDownloadManager:connection:" forMessage:18];
  [v4 addObserver:self selector:"removePersistenceIDWithMessage:connection:" forMessage:6];
  [v4 addObserver:self selector:"resumeDownloadsWithMessage:connection:" forMessage:19];
  [v4 addObserver:self selector:"restartDownloadsWithMessage:connection:" forMessage:20];
  [v4 addObserver:self selector:"retryRestoreDownloadsWithMessage:connection:" forMessage:37];
  [v4 addObserver:self selector:"setAssetPropertiesWithMessage:connection:" forMessage:21];
  [v4 addObserver:self selector:"setDownloadHandlerWithMessage:connection:" forMessage:23];
  [v4 addObserver:self selector:"setDownloadPropertiesWithMessage:connection:" forMessage:24];
  [v4 addObserver:self selector:"setDownloadPropertiesWithMessage:connection:" forMessage:32];
  [v4 addObserver:self selector:"setDownloadsWithMessage:connection:" forMessage:39];
  [v4 addObserver:self selector:"getCellularNetworkAllowed:connection:" forMessage:87];
  [v4 addObserver:self selector:"setCellularNetworkAllowed:connection:" forMessage:88];
  [v4 addObserver:self selector:"finishSessionWithMessage:connection:" forMessage:2];
  [v4 addObserver:self selector:"getSessionPropertiesWithMessage:connection:" forMessage:12];
  [v4 addObserver:self selector:"connectDownloadHandlerWithMessage:connection:" forMessage:3];
  [v4 addObserver:self selector:"resetDisavowedSessionsWithMessage:connection:" forMessage:40];
  [v4 addObserver:self selector:"setClientDownloadHandlerWithMessage:connection:" forMessage:22];
  [v4 addObserver:self selector:"setSessionProgressWithMessage:connection:" forMessage:4];
  [v4 addObserver:self selector:"setHandlerPropertiesWithMessage:connection:" forMessage:31];
  [v4 addObserver:self selector:"setSessionPropertiesWithMessage:connection:" forMessage:30];
  [v4 addObserver:self selector:"setSessionStatusDescriptionWithMessage:connection:" forMessage:51];
}

- (void)start
{
  v4 = +[DownloadsDatabase downloadsDatabase];
  [v4 modifyAsyncUsingTransactionBlock:&stru_10032B488];
  v3 = +[StoreDownloadQueue sharedDownloadQueue];
  [v3 restoreAllRestorableDownloadsWithReason:@"other"];
  [v4 dispatchBlockAsync:&stru_10032B4A8];
  [(WorkspaceDownloadObserver *)self->_workspaceDownloadObserver startObserving];
}

- (void)applicationInstallsDidPause:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) applicationIdentifier];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BF564;
  v13[3] = &unk_100327238;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [(DownloadController *)self _dispatchAsync:v13];
}

- (void)applicationInstallsDidResume:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) applicationIdentifier];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BF7A4;
  v13[3] = &unk_100327238;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [(DownloadController *)self _dispatchAsync:v13];
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) applicationIdentifier];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BFA00;
  v13[3] = &unk_100327238;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [(DownloadController *)self _dispatchAsync:v13];
}

- (void)applicationInstallsDidPrioritize:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) applicationIdentifier];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BFC3C;
  v13[3] = &unk_100327238;
  v14 = v5;
  v15 = self;
  v12 = v5;
  [(DownloadController *)self _dispatchAsync:v13];
}

- (void)cancelAllDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C0574;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)cancelDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C093C;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)finishDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C0AA0;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)getDownloadAssetPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C120C;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)getDownloadAssetsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1638;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)getDownloadKindsUsingNetworkWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C1984;
  v4[3] = &unk_10032B588;
  v4[4] = self;
  [(DownloadController *)self _handleMessage:a3 connection:a4 usingReplyBlock:v4];
}

- (void)getDownloadPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1A90;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)getDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C1EBC;
  v6[3] = &unk_10032B4F8;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(DownloadController *)v7 _handleMessage:v5 connection:a4 usingReplyBlock:v6];
}

- (void)getEntityExistsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C29BC;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)insertDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C2C7C;
  v6[3] = &unk_10032B4F8;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(DownloadController *)v7 _handleMessage:v5 connection:a4 usingReplyBlock:v6];
}

- (void)moveDownloadWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C3BFC;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)notifyClientsOfExternalStateChanges:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C3E7C;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)notifyClientsOfExternalPropertyChanges:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C4418;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)pauseDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C45B8;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)prioritizeDownloadWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C4730;
  v7[3] = &unk_10032B4F8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)registerClientDownloadManager:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SSXPCConnectionCopyClientIdentifier();
  v9 = xpc_dictionary_get_value(v6, "2");
  v10 = v9;
  if (v9 && xpc_get_type(v9) == &_xpc_type_endpoint)
  {
    if (v8)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001C4B98;
      v20[3] = &unk_10032B740;
      v21 = v10;
      v22 = self;
      v23 = v8;
      v24 = v6;
      [(DownloadController *)self _handleMessage:v24 connection:v7 usingBlock:v20];

      v11 = v21;
      goto LABEL_15;
    }

    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v17 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_14;
    }

    v25 = 138412290;
    v26 = objc_opt_class();
    v15 = v26;
    LODWORD(v19) = 12;
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    v25 = 138412546;
    v26 = objc_opt_class();
    v27 = 2112;
    v28 = v8;
    v15 = v26;
    LODWORD(v19) = 22;
  }

  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [NSString stringWithCString:v16 encoding:4, &v25, v19];
    free(v16);
    SSFileLog();
LABEL_14:
  }

LABEL_15:
}

- (void)removePersistenceIDWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C5298;
  v7[3] = &unk_10032B768;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingBlock:v7];
}

- (void)resumeDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_value(v6, "1");
  v9 = v8;
  if (v8 && xpc_get_type(v8) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1001C551C;
    applier[3] = &unk_100328088;
    v10 = objc_alloc_init(NSMutableOrderedSet);
    v15 = v10;
    xpc_array_apply(v9, applier);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C559C;
    v12[3] = &unk_10032B4F8;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [(DownloadController *)self _handleMessage:v6 connection:v7 usingReplyBlock:v12];
  }
}

- (void)restartDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_value(v6, "1");
  v9 = v8;
  if (v8 && xpc_get_type(v8) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1001C577C;
    applier[3] = &unk_100328088;
    v10 = objc_alloc_init(NSMutableOrderedSet);
    v15 = v10;
    xpc_array_apply(v9, applier);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C57FC;
    v12[3] = &unk_10032B4F8;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [(DownloadController *)self _handleMessage:v6 connection:v7 usingReplyBlock:v12];
  }
}

- (void)setAssetPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C5A74;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)setDownloadHandlerWithMessage:(id)a3 connection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5E18;
  v8[3] = &unk_10032B7F8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(DownloadController *)self _handleMessage:v7 connection:v6 usingBlock:v8];
}

- (void)setDownloadPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C6588;
  v7[3] = &unk_10032B588;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)setDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C69E4;
  v6[3] = &unk_10032B4F8;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(DownloadController *)v7 _handleMessage:v5 connection:a4 usingReplyBlock:v6];
}

- (void)getCellularNetworkAllowed:(id)a3 connection:(id)a4
{
  original = a3;
  v5 = a4;
  if (SSXPCConnectionHasEntitlement())
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0);
    reply = xpc_dictionary_create_reply(original);
    xpc_dictionary_set_BOOL(reply, "1", AppBooleanValue != 0);
    xpc_connection_send_message(v5, reply);
  }
}

- (void)setCellularNetworkAllowed:(id)a3 connection:(id)a4
{
  xdict = a3;
  if (SSXPCConnectionHasEntitlement())
  {
    v5 = kSSUserDefaultsIdentifier;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0);
    v7 = xpc_dictionary_get_BOOL(xdict, "1");
    if (AppBooleanValue != v7)
    {
      CFPreferencesSetAppValue(@"AllowAutoDownloadOnCellular", [NSNumber numberWithBool:v7], v5);
      CFPreferencesAppSynchronize(v5);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSNotificationAutomaticDownloadSettingsChanged, 0, 0, 1u);
      dispatch_async(self->_externalQueue, &stru_10032B890);
    }
  }
}

- (void)connectDownloadHandlerWithMessage:(id)a3 connection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C80BC;
  v8[3] = &unk_1003281A0;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(DownloadController *)self _handleSessionMessage:v7 connection:v6 usingBlock:v8];
}

- (void)finishSessionWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C860C;
  v7[3] = &unk_100327238;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)getSessionPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C8BDC;
  v7[3] = &unk_100329CF8;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingReplyBlock:v7];
}

- (void)resetDisavowedSessionsWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C8F3C;
  v7[3] = &unk_100327110;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)setClientDownloadHandlerWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001C906C;
  v9[3] = &unk_100327238;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(DownloadController *)self _handleSessionMessage:v7 connection:v8 usingBlock:v9];
}

- (void)setHandlerPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C91BC;
  v7[3] = &unk_100327238;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)setSessionProgressWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C964C;
  v7[3] = &unk_100327110;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)setSessionPropertiesWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C97C8;
  v7[3] = &unk_100327110;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)setSessionStatusDescriptionWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C9AA0;
  v7[3] = &unk_100327110;
  v8 = a3;
  v6 = v8;
  [(DownloadController *)self _handleSessionMessage:v6 connection:a4 usingBlock:v7];
}

- (void)_clientDisconnectNotification:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C9C04;
  v5[3] = &unk_100327238;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(DownloadController *)self _dispatchAsync:v5];
}

- (BOOL)_cancelDownloads:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if ([v6 count])
  {
    v8 = +[DownloadsDatabase downloadsDatabase];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C9FB8;
    v12[3] = &unk_10032B908;
    v13 = v6;
    v15 = self;
    v16 = &v17;
    v14 = v7;
    v9 = [v8 modifyUsingTransactionBlock:v12];
  }

  v10 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)_dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadController"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CA500;
  block[3] = &unk_100327198;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, block);
}

- (id)_downloadPersistentIDsFromBundleIDs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[DownloadsDatabase downloadsDatabase];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001CA648;
  v11[3] = &unk_100329490;
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  [v5 readUsingTransactionBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)_filterAndTranslateProperties:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001CAA78;
  v13 = &unk_10032B930;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_alloc_init(NSMutableIndexSet);
  v7 = v15;
  v8 = v14;
  [v6 enumerateObjectsUsingBlock:&v10];

  v9 = [v8 copy];
  v5[2](v5, v7, v9);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CABB8;
  v9[3] = &unk_10032B958;
  v10 = a4;
  v11 = a5;
  v9[4] = self;
  v7 = v10;
  v8 = v11;
  [(DownloadController *)self _dispatchAsync:v9];
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001CAD00;
  v11[3] = &unk_10032B1E8;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v14;
  v9 = v15;
  v10 = v12;
  [(DownloadController *)self _dispatchAsync:v11];
}

- (void)_handleSessionMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CAE20;
  v7[3] = &unk_100327198;
  v8 = a5;
  v6 = v8;
  [(DownloadController *)self _dispatchAsync:v7];
}

- (void)_handleSessionMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001CAF14;
  v12[3] = &unk_100328758;
  v14 = a4;
  v15 = a5;
  v13 = v8;
  v9 = v14;
  v10 = v15;
  v11 = v8;
  [(DownloadController *)self _dispatchAsync:v12];
}

- (id)_managerClientForConnection:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_managerClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 copyInputConnection];
        v12 = v11;
        if (v11 == v4)
        {
          v13 = v10;

          if (v13)
          {

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [[DownloadManagerClient alloc] initWithInputConnection:v4];
  [(NSMutableArray *)self->_managerClients addObject:v13];
LABEL_13:

  return v13;
}

- (BOOL)_pauseDownloads:(id)a3 isForced:(BOOL)a4 client:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v10 = [v8 count];
  if (v6)
  {
    v6 = [v9 hasEntitlements];
  }

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
    goto LABEL_12;
  }

  v16 = objc_opt_class();
  v37 = 138413058;
  v38 = v16;
  v39 = 2048;
  v40 = v10;
  v41 = 2112;
  v42 = v9;
  v43 = 1024;
  v44 = v6;
  v17 = v16;
  LODWORD(v25) = 38;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v15 = [NSString stringWithCString:v18 encoding:4, &v37, v25];
    free(v18);
    SSFileLog();
LABEL_12:
  }

  v19 = +[DownloadsDatabase downloadsDatabase];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001CB3F0;
  v26[3] = &unk_10032B980;
  v20 = v8;
  v27 = v20;
  v21 = v9;
  v28 = v21;
  v29 = self;
  v30 = &v33;
  v31 = v10;
  v32 = v6;
  v22 = [v19 modifyUsingTransactionBlock:v26];

  v23 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return v23 & 1;
}

- (BOOL)_prioritizeDownload:(id)a3 aboveDownload:(id)a4 client:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001C3248;
  v36 = sub_1001C3258;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v13 = +[DownloadsDatabase downloadsDatabase];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001CBBDC;
  v21[3] = &unk_10032B9A8;
  v14 = v10;
  v22 = v14;
  v15 = v12;
  v23 = v15;
  v24 = self;
  v26 = &v32;
  v27 = &v28;
  v16 = v11;
  v25 = v16;
  v17 = [v13 modifyUsingTransactionBlock:v21];

  if (a6)
  {
    v18 = v33[5];
    if (v18)
    {
      *a6 = v18;
    }
  }

  v19 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v19;
}

- (void)_rescueStuckPlaceholderWithBundleID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = [(NSMutableSet *)self->_rescuingBundleIdentifiers containsObject:v4];
    v6 = +[SSLogConfig sharedDaemonConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [(RescueAbandonedPlaceholderOperation *)v7 shouldLog];
      if ([(RescueAbandonedPlaceholderOperation *)v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      v10 = [(RescueAbandonedPlaceholderOperation *)v7 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v29 = 138412546;
        v30 = objc_opt_class();
        v31 = 2112;
        v32 = v4;
        v11 = v30;
        LODWORD(v24) = 22;
        v12 = _os_log_send_and_compose_impl();

        if (!v12)
        {
LABEL_30:

          goto LABEL_31;
        }

        v10 = [NSString stringWithCString:v12 encoding:4, &v29, v24];
        free(v12);
        SSFileLog();
      }

      goto LABEL_30;
    }

    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v13 = [(RescueAbandonedPlaceholderOperation *)v7 shouldLog];
    if ([(RescueAbandonedPlaceholderOperation *)v7 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [(RescueAbandonedPlaceholderOperation *)v7 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v29 = 138412290;
      v30 = v4;
      LODWORD(v24) = 12;
      v23 = &v29;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_27:

        rescuingBundleIdentifiers = self->_rescuingBundleIdentifiers;
        if (!rescuingBundleIdentifiers)
        {
          v19 = objc_alloc_init(NSMutableSet);
          v20 = self->_rescuingBundleIdentifiers;
          self->_rescuingBundleIdentifiers = v19;

          rescuingBundleIdentifiers = self->_rescuingBundleIdentifiers;
        }

        [(NSMutableSet *)rescuingBundleIdentifiers addObject:v4, v23];
        v7 = [[RescueAbandonedPlaceholderOperation alloc] initWithBundleIdentifier:v4];
        [SSWeakReference weakReferenceWithObject:self];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001CC274;
        v26 = v25[3] = &unk_10032B9F8;
        v27 = v4;
        v28 = self;
        v21 = v26;
        [(RescueAbandonedPlaceholderOperation *)v7 setOutputBlock:v25];
        v22 = +[ISOperationQueue mainQueue];
        [v22 addOperation:v7];

        goto LABEL_30;
      }

      v15 = [NSString stringWithCString:v17 encoding:4, &v29, v24];
      free(v17);
      v23 = v15;
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_31:
}

- (BOOL)_resumeDownloads:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v24 = 138412802;
      v25 = objc_opt_class();
      v26 = 2048;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      v14 = v25;
      LODWORD(v19) = 32;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        v16 = +[DownloadsDatabase downloadsDatabase];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001CC774;
        v20[3] = &unk_100328C60;
        v21 = v6;
        v22 = v7;
        v23 = self;
        v17 = [v16 modifyUsingTransactionBlock:v20];

        goto LABEL_14;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, &v24, v19];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return 1;
}

- (BOOL)_restartDownloads:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v24 = 138412802;
      v25 = objc_opt_class();
      v26 = 2048;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      v14 = v25;
      LODWORD(v19) = 32;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        v16 = +[DownloadsDatabase downloadsDatabase];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001CCCF8;
        v20[3] = &unk_100328C60;
        v21 = v6;
        v22 = v7;
        v23 = self;
        v17 = [v16 modifyUsingTransactionBlock:v20];

        goto LABEL_14;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, &v24, v19];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return 1;
}

- (void)_retryRestoreIfNecessaryForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 changeset];
  v5 = [v4 downloadChangeTypes];

  if ((v5 & 0x20) != 0)
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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = objc_opt_class();
      v10 = *(&v15 + 4);
      LODWORD(v14) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        +[RestoreDownloadsOperation resetShouldSuppressTermsAndConditionsDialogs];
        v12 = [NSNumber numberWithInteger:0];
        v13 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_state.restore_state" value:v12 comparisonType:2];

        [v3 resetDownloadsMatchingPredicate:v13];
        [v3 addDownloadChangeTypes:128];

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v14, v15];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_sendDownloadKindsUsingNetwork:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_managerClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [v4 allObjects];
        [v10 sendDownloadKindsUsingNetwork:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end