@interface BRKCompanionDataCollectionLogger
- (BRKCompanionDataCollectionLogger)initWithIDSService:(id)service;
- (void)service:(id)service didReceiveResourceURL:(id)l;
@end

@implementation BRKCompanionDataCollectionLogger

- (BRKCompanionDataCollectionLogger)initWithIDSService:(id)service
{
  serviceCopy = service;
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

    path = [(NSURL *)v6->_storageDirectory path];
    BRKCreateDirectory();

    v12 = BRKCreateDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v12;

    objc_storeStrong(&v6->_service, service);
    [serviceCopy setDataCollectionDelegate:v6];
  }

  return v6;
}

- (void)service:(id)service didReceiveResourceURL:(id)l
{
  storageDirectory = self->_storageDirectory;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v8 = [(NSURL *)storageDirectory URLByAppendingPathComponent:lastPathComponent];

  v9 = +[NSFileManager defaultManager];
  [v9 moveItemAtURL:lCopy toURL:v8 error:0];

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