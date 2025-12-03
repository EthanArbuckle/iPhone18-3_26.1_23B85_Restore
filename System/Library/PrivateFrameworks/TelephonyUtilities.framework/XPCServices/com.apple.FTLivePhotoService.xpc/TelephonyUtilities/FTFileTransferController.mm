@interface FTFileTransferController
+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name;
+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name;
+ (id)renamedResourceURL:(id)l withName:(id)name;
+ (void)deleteContentsAtURL:(id)l;
- (FTFileSandboxDelegate)sandboxDelegate;
- (FTFileTransferController)initWithService:(id)service serverBag:(id)bag;
- (FTFileTransferringDelegate)delegate;
- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l;
- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)unzipArchiveAtURL:(id)l completion:(id)completion;
- (void)zipDirectoryAtURL:(id)l completion:(id)completion;
@end

@implementation FTFileTransferController

- (FTFileTransferController)initWithService:(id)service serverBag:(id)bag
{
  serviceCopy = service;
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = FTFileTransferController;
  v9 = [(FTFileTransferController *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    clientFileURLByIdentifier = v9->_clientFileURLByIdentifier;
    v9->_clientFileURLByIdentifier = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    temporaryFileURLByClientFileURL = v9->_temporaryFileURLByClientFileURL;
    v9->_temporaryFileURLByClientFileURL = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    transactionIDByIDSFileIdentifier = v9->_transactionIDByIDSFileIdentifier;
    v9->_transactionIDByIDSFileIdentifier = v14;

    objc_storeStrong(&v9->_service, service);
    objc_storeStrong(&v9->_serverBag, bag);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_DEFAULT, 0);

    v18 = dispatch_queue_create("com.apple.telephonyutilities.FTFileTransfercontroller", v17);
    queue = v9->_queue;
    v9->_queue = v18;
    v20 = v18;

    [(FTIDSService *)v9->_service addServiceDelegate:v9 queue:v9->_queue];
  }

  return v9;
}

- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  v11 = FTDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2112;
    v23 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "transferFileAtURL: %@, destinations: %@", buf, 0x16u);
  }

  queue = [(FTFileTransferController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000823C;
  v16[3] = &unk_100051040;
  v16[4] = self;
  v17 = lCopy;
  v18 = destinationsCopy;
  v19 = metadataCopy;
  v13 = metadataCopy;
  v14 = destinationsCopy;
  v15 = lCopy;
  dispatch_async(queue, v16);
}

- (void)unzipArchiveAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v9 = FTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uRLByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "placing unzip results into folder %@", buf, 0xCu);
  }

  queue = [(FTFileTransferController *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000083CC;
  v14[3] = &unk_1000512A0;
  v14[4] = self;
  v15 = lCopy;
  v16 = uRLByDeletingLastPathComponent;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = uRLByDeletingLastPathComponent;
  v13 = lCopy;
  dispatch_async(queue, v14);
}

- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = FTDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    allObjects = [destinationsCopy allObjects];
    v14 = TULoggableStringForHandles();
    *buf = 138412546;
    v34 = lCopy;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "temporaryClientFileURL: %@, destinations: %@", buf, 0x16u);
  }

  buf[0] = 0;
  v15 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v17 = [v15 fileExistsAtPath:path isDirectory:buf];

  if (v17)
  {
    v18 = +[NSMutableDictionary dictionary];
    v19 = [NSNumber numberWithBool:buf[0]];
    [v18 setObject:v19 forKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];

    [v18 setObject:metadataCopy forKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100008A28;
    v27[3] = &unk_1000512C8;
    v28 = destinationsCopy;
    v20 = v18;
    v29 = v20;
    v30 = metadataCopy;
    selfCopy = self;
    v21 = lCopy;
    v32 = v21;
    v22 = objc_retainBlock(v27);
    v23 = v22;
    if (buf[0] == 1)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100008CE0;
      v24[3] = &unk_1000512F0;
      v24[4] = self;
      v25 = v21;
      v26 = v23;
      [(FTFileTransferController *)self zipDirectoryAtURL:v25 completion:v24];
    }

    else
    {
      (v22[2])(v22, v21);
    }
  }

  else
  {
    v20 = FTDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100039248(buf);
    }
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = FTDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = [serviceCopy serviceIdentifier];
    v19 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412802;
    v38 = lCopy;
    v39 = 2112;
    v40 = metadataCopy;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "incomingResourceURL: %@ metadata: %@ fromID: %@", buf, 0x20u);
  }

  v20 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];
  bOOLValue = [v20 BOOLValue];

  v22 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
  v23 = [v22 objectForKeyedSubscript:@"CSDMomentsControllerMetadataKeyTransactionID"];
  v24 = dispatch_semaphore_create(0);
  sandboxDelegate = [(FTFileTransferController *)self sandboxDelegate];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000900C;
  v31[3] = &unk_100051318;
  v31[4] = self;
  v32 = lCopy;
  v36 = bOOLValue;
  v33 = v22;
  v34 = dCopy;
  v35 = v24;
  v26 = v24;
  v27 = dCopy;
  v28 = v22;
  v29 = lCopy;
  [sandboxDelegate requestSandboxExtensionForTransactionID:v23 reply:v31];

  v30 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v26, v30);
}

+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v7 = NSTemporaryDirectory();
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v10 = [v7 stringByAppendingPathComponent:uUIDString];
  v11 = [NSURL fileURLWithPath:v10];

  v12 = +[NSFileManager defaultManager];
  v23 = 0;
  LODWORD(v8) = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v23];
  v13 = v23;

  if (!v8)
  {
    v19 = FTDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000393A0();
    }

    v14 = 0;
    v17 = v13;
    goto LABEL_9;
  }

  v14 = [v11 URLByAppendingPathComponent:nameCopy];
  v15 = +[NSFileManager defaultManager];
  v22 = v13;
  v16 = [v15 copyItemAtURL:lCopy toURL:v14 error:&v22];
  v17 = v22;

  if ((v16 & 1) == 0)
  {
    v19 = FTDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = lCopy;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to copy URL at %@ to %@: %@", buf, 0x20u);
    }

LABEL_9:
    v18 = v14;

    v14 = 0;
    goto LABEL_10;
  }

  v18 = v14;
LABEL_10:
  v20 = v14;

  return v20;
}

+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name
{
  lCopy = l;
  v7 = [self renamedResourceURL:lCopy withName:name];
  v8 = +[NSFileManager defaultManager];
  v13 = 0;
  v9 = [v8 moveItemAtURL:lCopy toURL:v7 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = FTDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = lCopy;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error moving url %@ to %@: %@", buf, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)renamedResourceURL:(id)l withName:(id)name
{
  nameCopy = name;
  pathComponents = [l pathComponents];
  v7 = [pathComponents mutableCopy];

  [v7 removeLastObject];
  [v7 addObject:nameCopy];

  v8 = [NSURL fileURLWithPathComponents:v7];

  return v8;
}

+ (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:lCopy error:&v9];
  v6 = v9;

  v7 = FTDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = lCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleted contents at URL: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100038938();
  }
}

- (void)zipDirectoryAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = NSTemporaryDirectory();
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:uUIDString];
  v13 = [v12 stringByAppendingPathExtension:@"zip"];

  v14 = [NSURL fileURLWithPath:v13];
  v15 = FTDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = lCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Zipping directory at URL: %@, output to: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100009B4C;
  v19[3] = &unk_100051340;
  v20 = lCopy;
  v21 = v14;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = lCopy;
  [(FTFileTransferController *)self performFileCopierOperation:0 onInputURL:v18 outputURL:v17 completion:v19];
}

- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = FTDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    operationCopy = operation;
    v28 = 2112;
    v29 = lCopy;
    v30 = 2112;
    v31 = rLCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "operation: %ld, inputURL: %@, outputURL: %@", buf, 0x20u);
  }

  v15 = [IMFileCopier alloc];
  v22 = lCopy;
  v23 = rLCopy;
  v24 = completionCopy;
  operationCopy2 = operation;
  v16 = completionCopy;
  v17 = rLCopy;
  v18 = lCopy;
  v19 = [(FTFileTransferController *)self queue:_NSConcreteStackBlock];
  v20 = [v15 initWithInputURL:v18 outputURL:v17 identifier:0 operation:operation completionBlock:&v21 queue:v19];

  [v20 start];
}

- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l
{
  lCopy = l;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  temporaryFileURLByClientFileURL = [(FTFileTransferController *)self temporaryFileURLByClientFileURL];
  v7 = [temporaryFileURLByClientFileURL objectForKeyedSubscript:lCopy];

  if (v7)
  {
    v8 = FTDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deleting temporary file at URL: %@", &v10, 0xCu);
    }

    [objc_opt_class() deleteContentsAtURL:v7];
    temporaryFileURLByClientFileURL2 = [(FTFileTransferController *)self temporaryFileURLByClientFileURL];
    [temporaryFileURLByClientFileURL2 setObject:0 forKeyedSubscript:lCopy];
  }
}

- (FTFileTransferringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FTFileSandboxDelegate)sandboxDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sandboxDelegate);

  return WeakRetained;
}

@end