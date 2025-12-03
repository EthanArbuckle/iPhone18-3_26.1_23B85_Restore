@interface BACloudKitDownloadManager
- (BACloudKitDownload)download;
- (BACloudKitDownloadManager)initWithDownload:(id)download withDelegate:(id)delegate;
- (BACloudKitDownloadManagerDelegate)delegate;
- (BOOL)_consumeAvailableDownloadSize;
- (BOOL)startDownloadWithError:(id *)error;
- (id)_newOperationQuery;
- (void)_downloadActualAsset;
- (void)_downloadFailedWithError:(id)error;
- (void)_downloadSucceededWithURL:(id)l;
- (void)cancelDownload;
- (void)pauseDownload;
@end

@implementation BACloudKitDownloadManager

- (BACloudKitDownloadManager)initWithDownload:(id)download withDelegate:(id)delegate
{
  downloadCopy = download;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = BACloudKitDownloadManager;
  v8 = [(BACloudKitDownloadManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(BACloudKitDownloadManager *)v8 setDelegate:delegateCopy];
    [(BACloudKitDownloadManager *)v9 setDownload:downloadCopy];
    v10 = +[NSMutableDictionary dictionary];
    [(BACloudKitDownloadManager *)v9 setRecordErrors:v10];

    v11 = dispatch_queue_create("com.apple.BACloudKitDownloadManager.ResponseQueue", 0);
    [(BACloudKitDownloadManager *)v9 setResponseQueue:v11];

    v12 = objc_alloc_init(NSLock);
    [(BACloudKitDownloadManager *)v9 setStateLock:v12];
  }

  return v9;
}

- (BOOL)startDownloadWithError:(id *)error
{
  stateLock = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock lock];

  recordErrors = [(BACloudKitDownloadManager *)self recordErrors];
  [recordErrors removeAllObjects];

  [(BACloudKitDownloadManager *)self setRecordFound:0];
  [(BACloudKitDownloadManager *)self setAssetFound:0];
  [(BACloudKitDownloadManager *)self setAssetURL:0];
  [(BACloudKitDownloadManager *)self setAssetSize:0];
  v6 = [CKContainer alloc];
  download = [(BACloudKitDownloadManager *)self download];
  containerID = [download containerID];
  v9 = [v6 initWithContainerID:containerID];

  v10 = objc_alloc_init(CKOperationConfiguration);
  [v10 setContainer:v9];
  download2 = [(BACloudKitDownloadManager *)self download];
  os_unfair_lock_lock([download2 downloadLock]);

  download3 = [(BACloudKitDownloadManager *)self download];
  isForegroundDownload = [download3 isForegroundDownload];

  download4 = [(BACloudKitDownloadManager *)self download];
  os_unfair_lock_unlock([download4 downloadLock]);

  if (isForegroundDownload)
  {
    [v10 setTimeoutIntervalForRequest:60.0];
    [v10 setAllowsCellularAccess:1];
    [v10 setAllowsExpensiveNetworkAccess:1];
    v15 = 0;
    v16 = 17;
  }

  else
  {
    [v10 setAllowsCellularAccess:0];
    [v10 setAllowsExpensiveNetworkAccess:0];
    [v10 setAutomaticallyRetryNetworkFailures:1];
    v16 = 9;
    v15 = 2;
  }

  [v10 setDiscretionaryNetworkBehavior:v15];
  [v10 setQualityOfService:v16];
  download5 = [(BACloudKitDownloadManager *)self download];
  masqueradeIdentifier = [download5 masqueradeIdentifier];
  [v10 setApplicationBundleIdentifierOverrideForContainerAccess:masqueradeIdentifier];

  [(BACloudKitDownloadManager *)self setOperationConfiguration:v10];
  _newOperationQuery = [(BACloudKitDownloadManager *)self _newOperationQuery];
  [_newOperationQuery setShouldFetchAssetContent:0];
  database = [_newOperationQuery database];
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100028FF8;
  v30[3] = &unk_10007A048;
  objc_copyWeak(&v33, &location);
  v21 = database;
  v31 = v21;
  selfCopy = self;
  [_newOperationQuery setQueryCompletionBlock:v30];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100029368;
  v27 = &unk_10007A070;
  selfCopy2 = self;
  objc_copyWeak(&v29, &location);
  [_newOperationQuery setRecordMatchedBlock:&v24];
  [(BACloudKitDownloadManager *)self setCurrentOperation:_newOperationQuery, v24, v25, v26, v27, selfCopy2];
  [v21 addOperation:_newOperationQuery];
  stateLock2 = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock2 unlock];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return 1;
}

- (void)pauseDownload
{
  stateLock = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock lock];

  [(BACloudKitDownloadManager *)self cancelDownload];
  stateLock2 = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock2 unlock];

  responseQueue = [(BACloudKitDownloadManager *)self responseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002957C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(responseQueue, block);
}

- (void)cancelDownload
{
  currentOperation = [(BACloudKitDownloadManager *)self currentOperation];
  [currentOperation cancel];
}

- (void)_downloadFailedWithError:(id)error
{
  errorCopy = error;
  responseQueue = [(BACloudKitDownloadManager *)self responseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000296B4;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(responseQueue, v7);
}

- (void)_downloadSucceededWithURL:(id)l
{
  lCopy = l;
  responseQueue = [(BACloudKitDownloadManager *)self responseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029818;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_async_and_wait(responseQueue, v7);
}

- (BOOL)_consumeAvailableDownloadSize
{
  stateLock = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock lock];

  download = [(BACloudKitDownloadManager *)self download];
  applicationInfo = [download applicationInfo];

  if (!applicationInfo)
  {
    goto LABEL_5;
  }

  download2 = [(BACloudKitDownloadManager *)self download];
  applicationInfo2 = [download2 applicationInfo];
  download3 = [(BACloudKitDownloadManager *)self download];
  v9 = [applicationInfo2 remainingDownloadAllowanceWithNecessity:{objc_msgSend(download3, "necessity")}];

  if (!v9)
  {
    goto LABEL_4;
  }

  download4 = [(BACloudKitDownloadManager *)self download];
  applicationInfo3 = [download4 applicationInfo];
  assetSize = [(BACloudKitDownloadManager *)self assetSize];
  download5 = [(BACloudKitDownloadManager *)self download];
  LOBYTE(assetSize) = [applicationInfo3 consumeAllowanceShouldStopWithAdditionalBytes:assetSize downloadNecessity:objc_msgSend(download5 isManifest:{"necessity"), 0}];

  if (assetSize)
  {
LABEL_4:
    v14 = 0;
  }

  else
  {
LABEL_5:
    v14 = 1;
  }

  stateLock2 = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock2 unlock];

  return v14 & 1;
}

- (void)_downloadActualAsset
{
  stateLock = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock lock];

  [(BACloudKitDownloadManager *)self setRecordFound:0];
  [(BACloudKitDownloadManager *)self setAssetFound:0];
  recordErrors = [(BACloudKitDownloadManager *)self recordErrors];
  [recordErrors removeAllObjects];

  _newOperationQuery = [(BACloudKitDownloadManager *)self _newOperationQuery];
  [_newOperationQuery setShouldFetchAssetContent:1];
  database = [_newOperationQuery database];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029C50;
  v15[3] = &unk_10007A048;
  objc_copyWeak(&v18, &location);
  v7 = database;
  v16 = v7;
  selfCopy = self;
  [_newOperationQuery setQueryCompletionBlock:v15];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100029FE8;
  v12 = &unk_10007A070;
  selfCopy2 = self;
  objc_copyWeak(&v14, &location);
  [_newOperationQuery setRecordMatchedBlock:&v9];
  [(BACloudKitDownloadManager *)self setCurrentOperation:_newOperationQuery, v9, v10, v11, v12, selfCopy2];
  [v7 addOperation:_newOperationQuery];
  stateLock2 = [(BACloudKitDownloadManager *)self stateLock];
  [stateLock2 unlock];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)_newOperationQuery
{
  v3 = [CKQueryOperation alloc];
  download = [(BACloudKitDownloadManager *)self download];
  query = [download query];
  v6 = [v3 initWithQuery:query];

  download2 = [(BACloudKitDownloadManager *)self download];
  zoneID = [download2 zoneID];
  [v6 setZoneID:zoneID];

  operationConfiguration = [(BACloudKitDownloadManager *)self operationConfiguration];
  [v6 setConfiguration:operationConfiguration];

  download3 = [(BACloudKitDownloadManager *)self download];
  databaseScope = [download3 databaseScope];

  if (databaseScope == 2)
  {
    operationConfiguration2 = [(BACloudKitDownloadManager *)self operationConfiguration];
    container = [operationConfiguration2 container];
    privateCloudDatabase = [container privateCloudDatabase];
  }

  else
  {
    download4 = [(BACloudKitDownloadManager *)self download];
    databaseScope2 = [download4 databaseScope];

    operationConfiguration2 = [(BACloudKitDownloadManager *)self operationConfiguration];
    container2 = [operationConfiguration2 container];
    container = container2;
    if (databaseScope2 == 3)
    {
      [container2 sharedCloudDatabase];
    }

    else
    {
      [container2 publicCloudDatabase];
    }
    privateCloudDatabase = ;
  }

  v18 = privateCloudDatabase;

  [v6 setDatabase:v18];
  download5 = [(BACloudKitDownloadManager *)self download];
  assetKey = [download5 assetKey];
  v23 = assetKey;
  v21 = [NSArray arrayWithObjects:&v23 count:1];
  [v6 setDesiredKeys:v21];

  [v6 setResultsLimit:1];
  return v6;
}

- (BACloudKitDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BACloudKitDownload)download
{
  WeakRetained = objc_loadWeakRetained(&self->_download);

  return WeakRetained;
}

@end