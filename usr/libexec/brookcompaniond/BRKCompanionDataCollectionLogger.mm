@interface BRKCompanionDataCollectionLogger
- (BRKCompanionDataCollectionLogger)initWithIDSService:(id)a3;
- (void)service:(id)a3 didReceiveResourceURL:(id)a4;
@end

@implementation BRKCompanionDataCollectionLogger

- (BRKCompanionDataCollectionLogger)initWithIDSService:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = BRKCompanionDataCollectionLogger;
  v6 = [(BRKCompanionDataCollectionLogger *)&v15 init];
  if (v6)
  {
    v7 = NSTemporaryDirectory();
    v8 = [NSURL fileURLWithPath:v7];
    v9 = [v8 URLByAppendingPathComponent:@"Brook_Logs"];
    storageDirectory = v6->_storageDirectory;
    v6->_storageDirectory = v9;

    v11 = [(NSURL *)v6->_storageDirectory path];
    BRKCreateDirectory();

    v12 = BRKCreateDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v12;

    objc_storeStrong(&v6->_service, a3);
    [v5 setDataCollectionDelegate:v6];
  }

  return v6;
}

- (void)service:(id)a3 didReceiveResourceURL:(id)a4
{
  storageDirectory = self->_storageDirectory;
  v6 = a4;
  v7 = [v6 lastPathComponent];
  v8 = [(NSURL *)storageDirectory URLByAppendingPathComponent:v7];

  v9 = +[NSFileManager defaultManager];
  [v9 moveItemAtURL:v6 toURL:v8 error:0];

  BRKMarkFilePurgeable();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027B4;
  block[3] = &unk_100008310;
  v13 = v8;
  v11 = v8;
  dispatch_async(queue, block);
}

@end