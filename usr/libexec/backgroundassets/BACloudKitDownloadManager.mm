@interface BACloudKitDownloadManager
- (BACloudKitDownload)download;
- (BACloudKitDownloadManager)initWithDownload:(id)a3 withDelegate:(id)a4;
- (BACloudKitDownloadManagerDelegate)delegate;
- (BOOL)_consumeAvailableDownloadSize;
- (BOOL)startDownloadWithError:(id *)a3;
- (id)_newOperationQuery;
- (void)_downloadActualAsset;
- (void)_downloadFailedWithError:(id)a3;
- (void)_downloadSucceededWithURL:(id)a3;
- (void)cancelDownload;
- (void)pauseDownload;
@end

@implementation BACloudKitDownloadManager

- (BACloudKitDownloadManager)initWithDownload:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BACloudKitDownloadManager;
  v8 = [(BACloudKitDownloadManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(BACloudKitDownloadManager *)v8 setDelegate:v7];
    [(BACloudKitDownloadManager *)v9 setDownload:v6];
    v10 = +[NSMutableDictionary dictionary];
    [(BACloudKitDownloadManager *)v9 setRecordErrors:v10];

    v11 = dispatch_queue_create("com.apple.BACloudKitDownloadManager.ResponseQueue", 0);
    [(BACloudKitDownloadManager *)v9 setResponseQueue:v11];

    v12 = objc_alloc_init(NSLock);
    [(BACloudKitDownloadManager *)v9 setStateLock:v12];
  }

  return v9;
}

- (BOOL)startDownloadWithError:(id *)a3
{
  v4 = [(BACloudKitDownloadManager *)self stateLock];
  [v4 lock];

  v5 = [(BACloudKitDownloadManager *)self recordErrors];
  [v5 removeAllObjects];

  [(BACloudKitDownloadManager *)self setRecordFound:0];
  [(BACloudKitDownloadManager *)self setAssetFound:0];
  [(BACloudKitDownloadManager *)self setAssetURL:0];
  [(BACloudKitDownloadManager *)self setAssetSize:0];
  v6 = [CKContainer alloc];
  v7 = [(BACloudKitDownloadManager *)self download];
  v8 = [v7 containerID];
  v9 = [v6 initWithContainerID:v8];

  v10 = objc_alloc_init(CKOperationConfiguration);
  [v10 setContainer:v9];
  v11 = [(BACloudKitDownloadManager *)self download];
  os_unfair_lock_lock([v11 downloadLock]);

  v12 = [(BACloudKitDownloadManager *)self download];
  v13 = [v12 isForegroundDownload];

  v14 = [(BACloudKitDownloadManager *)self download];
  os_unfair_lock_unlock([v14 downloadLock]);

  if (v13)
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
  v17 = [(BACloudKitDownloadManager *)self download];
  v18 = [v17 masqueradeIdentifier];
  [v10 setApplicationBundleIdentifierOverrideForContainerAccess:v18];

  [(BACloudKitDownloadManager *)self setOperationConfiguration:v10];
  v19 = [(BACloudKitDownloadManager *)self _newOperationQuery];
  [v19 setShouldFetchAssetContent:0];
  v20 = [v19 database];
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100028FF8;
  v30[3] = &unk_10007A048;
  objc_copyWeak(&v33, &location);
  v21 = v20;
  v31 = v21;
  v32 = self;
  [v19 setQueryCompletionBlock:v30];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100029368;
  v27 = &unk_10007A070;
  v28 = self;
  objc_copyWeak(&v29, &location);
  [v19 setRecordMatchedBlock:&v24];
  [(BACloudKitDownloadManager *)self setCurrentOperation:v19, v24, v25, v26, v27, v28];
  [v21 addOperation:v19];
  v22 = [(BACloudKitDownloadManager *)self stateLock];
  [v22 unlock];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return 1;
}

- (void)pauseDownload
{
  v3 = [(BACloudKitDownloadManager *)self stateLock];
  [v3 lock];

  [(BACloudKitDownloadManager *)self cancelDownload];
  v4 = [(BACloudKitDownloadManager *)self stateLock];
  [v4 unlock];

  v5 = [(BACloudKitDownloadManager *)self responseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002957C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)cancelDownload
{
  v2 = [(BACloudKitDownloadManager *)self currentOperation];
  [v2 cancel];
}

- (void)_downloadFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(BACloudKitDownloadManager *)self responseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000296B4;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_downloadSucceededWithURL:(id)a3
{
  v4 = a3;
  v5 = [(BACloudKitDownloadManager *)self responseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029818;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

- (BOOL)_consumeAvailableDownloadSize
{
  v3 = [(BACloudKitDownloadManager *)self stateLock];
  [v3 lock];

  v4 = [(BACloudKitDownloadManager *)self download];
  v5 = [v4 applicationInfo];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(BACloudKitDownloadManager *)self download];
  v7 = [v6 applicationInfo];
  v8 = [(BACloudKitDownloadManager *)self download];
  v9 = [v7 remainingDownloadAllowanceWithNecessity:{objc_msgSend(v8, "necessity")}];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = [(BACloudKitDownloadManager *)self download];
  v11 = [v10 applicationInfo];
  v12 = [(BACloudKitDownloadManager *)self assetSize];
  v13 = [(BACloudKitDownloadManager *)self download];
  LOBYTE(v12) = [v11 consumeAllowanceShouldStopWithAdditionalBytes:v12 downloadNecessity:objc_msgSend(v13 isManifest:{"necessity"), 0}];

  if (v12)
  {
LABEL_4:
    v14 = 0;
  }

  else
  {
LABEL_5:
    v14 = 1;
  }

  v15 = [(BACloudKitDownloadManager *)self stateLock];
  [v15 unlock];

  return v14 & 1;
}

- (void)_downloadActualAsset
{
  v3 = [(BACloudKitDownloadManager *)self stateLock];
  [v3 lock];

  [(BACloudKitDownloadManager *)self setRecordFound:0];
  [(BACloudKitDownloadManager *)self setAssetFound:0];
  v4 = [(BACloudKitDownloadManager *)self recordErrors];
  [v4 removeAllObjects];

  v5 = [(BACloudKitDownloadManager *)self _newOperationQuery];
  [v5 setShouldFetchAssetContent:1];
  v6 = [v5 database];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029C50;
  v15[3] = &unk_10007A048;
  objc_copyWeak(&v18, &location);
  v7 = v6;
  v16 = v7;
  v17 = self;
  [v5 setQueryCompletionBlock:v15];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100029FE8;
  v12 = &unk_10007A070;
  v13 = self;
  objc_copyWeak(&v14, &location);
  [v5 setRecordMatchedBlock:&v9];
  [(BACloudKitDownloadManager *)self setCurrentOperation:v5, v9, v10, v11, v12, v13];
  [v7 addOperation:v5];
  v8 = [(BACloudKitDownloadManager *)self stateLock];
  [v8 unlock];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)_newOperationQuery
{
  v3 = [CKQueryOperation alloc];
  v4 = [(BACloudKitDownloadManager *)self download];
  v5 = [v4 query];
  v6 = [v3 initWithQuery:v5];

  v7 = [(BACloudKitDownloadManager *)self download];
  v8 = [v7 zoneID];
  [v6 setZoneID:v8];

  v9 = [(BACloudKitDownloadManager *)self operationConfiguration];
  [v6 setConfiguration:v9];

  v10 = [(BACloudKitDownloadManager *)self download];
  v11 = [v10 databaseScope];

  if (v11 == 2)
  {
    v12 = [(BACloudKitDownloadManager *)self operationConfiguration];
    v13 = [v12 container];
    v14 = [v13 privateCloudDatabase];
  }

  else
  {
    v15 = [(BACloudKitDownloadManager *)self download];
    v16 = [v15 databaseScope];

    v12 = [(BACloudKitDownloadManager *)self operationConfiguration];
    v17 = [v12 container];
    v13 = v17;
    if (v16 == 3)
    {
      [v17 sharedCloudDatabase];
    }

    else
    {
      [v17 publicCloudDatabase];
    }
    v14 = ;
  }

  v18 = v14;

  [v6 setDatabase:v18];
  v19 = [(BACloudKitDownloadManager *)self download];
  v20 = [v19 assetKey];
  v23 = v20;
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