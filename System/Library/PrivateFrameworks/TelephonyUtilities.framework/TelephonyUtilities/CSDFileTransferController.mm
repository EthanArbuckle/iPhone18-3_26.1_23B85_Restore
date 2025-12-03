@interface CSDFileTransferController
+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name;
+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name;
+ (id)renamedResourceURL:(id)l withName:(id)name;
+ (void)deleteContentsAtURL:(id)l;
- (CSDFileTransferController)init;
- (CSDFileTransferController)initWithService:(id)service;
- (CSDFileTransferringDelegate)delegate;
- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l;
- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)transferFileAtSandboxExtendedURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member;
- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member;
- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)unzipArchiveAtURL:(id)l completion:(id)completion;
- (void)zipDirectoryAtURL:(id)l completion:(id)completion;
@end

@implementation CSDFileTransferController

- (CSDFileTransferController)init
{
  v3 = +[CSDFaceTimeLivePhotosIDSService sharedInstance];
  v4 = [(CSDFileTransferController *)self initWithService:v3];

  return v4;
}

- (CSDFileTransferController)initWithService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = CSDFileTransferController;
  v6 = [(CSDFileTransferController *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    clientFileURLByIdentifier = v6->_clientFileURLByIdentifier;
    v6->_clientFileURLByIdentifier = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    temporaryFileURLByClientFileURL = v6->_temporaryFileURLByClientFileURL;
    v6->_temporaryFileURLByClientFileURL = v9;

    objc_storeStrong(&v6->_service, service);
    v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.csdfiletransfercontroller", 0);
    queue = v6->_queue;
    v6->_queue = v11;

    [(CSDIDSService *)v6->_service addServiceDelegate:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2112;
    v23 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "transferFileAtURL: %@, destinations: %@", buf, 0x16u);
  }

  queue = [(CSDFileTransferController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010866C;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = lCopy;
  v18 = destinationsCopy;
  v19 = metadataCopy;
  v13 = metadataCopy;
  v14 = destinationsCopy;
  v15 = lCopy;
  dispatch_async(queue, v16);
}

- (void)transferFileAtSandboxExtendedURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  memberCopy = member;
  queue = [(CSDFileTransferController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001087A4;
  block[3] = &unk_10061A428;
  block[4] = self;
  v20 = lCopy;
  v21 = destinationsCopy;
  v22 = metadataCopy;
  v23 = memberCopy;
  v15 = memberCopy;
  v16 = metadataCopy;
  v17 = destinationsCopy;
  v18 = lCopy;
  dispatch_async(queue, block);
}

- (void)unzipArchiveAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uRLByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "placing unzip results into folder %@", buf, 0xCu);
  }

  queue = [(CSDFileTransferController *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100108984;
  v14[3] = &unk_10061AF98;
  v14[4] = self;
  v15 = lCopy;
  v16 = uRLByDeletingLastPathComponent;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = uRLByDeletingLastPathComponent;
  v13 = lCopy;
  dispatch_async(queue, v14);
}

- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  memberCopy = member;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = lCopy;
    v36 = 2112;
    v37 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "temporaryClientFileURL: %@, destinations: %@", buf, 0x16u);
  }

  buf[0] = 0;
  v16 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v18 = [v16 fileExistsAtPath:path isDirectory:buf];

  if (v18)
  {
    v19 = +[NSMutableDictionary dictionary];
    v20 = [NSNumber numberWithBool:buf[0]];
    [v19 setObject:v20 forKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];

    [v19 setObject:metadataCopy forKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100108FCC;
    v28[3] = &unk_10061BBA0;
    v29 = destinationsCopy;
    v21 = v19;
    v30 = v21;
    v31 = memberCopy;
    selfCopy = self;
    v22 = lCopy;
    v33 = v22;
    v23 = objc_retainBlock(v28);
    v24 = v23;
    if (buf[0] == 1)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10010922C;
      v25[3] = &unk_10061BBC8;
      v25[4] = self;
      v26 = v22;
      v27 = v24;
      [(CSDFileTransferController *)self zipDirectoryAtURL:v26 completion:v25];
    }

    else
    {
      (v23[2])(v23, v22);
    }
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100474ED8(buf);
    }
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = lCopy;
    v27 = 2112;
    v28 = metadataCopy;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incomingResourceURL: %@ metadata: %@ fromID: %@", &v25, 0x20u);
  }

  v16 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];
  bOOLValue = [v16 BOOLValue];

  v18 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
  v19 = objc_opt_class();
  v20 = +[NSUUID UUID];
  uUIDString = [v20 UUIDString];
  v22 = [v19 copyFileAtURL:lCopy toTemporaryFileWithName:uUIDString];

  if (v22)
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Copied resource to temporary URL: %@", &v25, 0xCu);
    }

    delegate = [(CSDFileTransferController *)self delegate];
    [delegate fileTransferer:self didReceiveResourcesAtURL:v22 withMetadata:v18 isZipped:bOOLValue fromIDSDestination:dCopy];
  }
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
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100475030();
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
    v19 = sub_100004778();
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
    v11 = sub_100004778();
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

  v7 = sub_100004778();
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
    sub_100475098();
  }
}

- (void)zipDirectoryAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = NSTemporaryDirectory();
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:uUIDString];
  v13 = [v12 stringByAppendingPathExtension:@"zip"];

  v14 = [NSURL fileURLWithPath:v13];
  v15 = sub_100004778();
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
  v19[2] = sub_100109E9C;
  v19[3] = &unk_10061A768;
  v20 = lCopy;
  v21 = v14;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = lCopy;
  [(CSDFileTransferController *)self performFileCopierOperation:0 onInputURL:v18 outputURL:v17 completion:v19];
}

- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = sub_100004778();
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
  v19 = [(CSDFileTransferController *)self queue:_NSConcreteStackBlock];
  v20 = [v15 initWithInputURL:v18 outputURL:v17 identifier:0 operation:operation completionBlock:&v21 queue:v19];

  [v20 start];
}

- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l
{
  lCopy = l;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  temporaryFileURLByClientFileURL = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
  v7 = [temporaryFileURLByClientFileURL objectForKeyedSubscript:lCopy];

  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deleting temporary file at URL: %@", &v10, 0xCu);
    }

    [objc_opt_class() deleteContentsAtURL:v7];
    temporaryFileURLByClientFileURL2 = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
    [temporaryFileURLByClientFileURL2 setObject:0 forKeyedSubscript:lCopy];
  }
}

- (CSDFileTransferringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end