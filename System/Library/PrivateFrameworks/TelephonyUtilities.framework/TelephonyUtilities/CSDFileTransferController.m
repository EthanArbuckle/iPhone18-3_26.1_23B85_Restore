@interface CSDFileTransferController
+ (id)copyFileAtURL:(id)a3 toTemporaryFileWithName:(id)a4;
+ (id)renameResourceAtURL:(id)a3 toResourceWithName:(id)a4;
+ (id)renamedResourceURL:(id)a3 withName:(id)a4;
+ (void)deleteContentsAtURL:(id)a3;
- (CSDFileTransferController)init;
- (CSDFileTransferController)initWithService:(id)a3;
- (CSDFileTransferringDelegate)delegate;
- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)a3;
- (void)performFileCopierOperation:(unint64_t)a3 onInputURL:(id)a4 outputURL:(id)a5 completion:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)transferFileAtSandboxExtendedURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5 fromMember:(id)a6;
- (void)transferFileAtTemporaryURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5 fromMember:(id)a6;
- (void)transferFileAtURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5;
- (void)unzipArchiveAtURL:(id)a3 completion:(id)a4;
- (void)zipDirectoryAtURL:(id)a3 completion:(id)a4;
@end

@implementation CSDFileTransferController

- (CSDFileTransferController)init
{
  v3 = +[CSDFaceTimeLivePhotosIDSService sharedInstance];
  v4 = [(CSDFileTransferController *)self initWithService:v3];

  return v4;
}

- (CSDFileTransferController)initWithService:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_service, a3);
    v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.csdfiletransfercontroller", 0);
    queue = v6->_queue;
    v6->_queue = v11;

    [(CSDIDSService *)v6->_service addServiceDelegate:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)transferFileAtURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "transferFileAtURL: %@, destinations: %@", buf, 0x16u);
  }

  v12 = [(CSDFileTransferController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010866C;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

- (void)transferFileAtSandboxExtendedURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5 fromMember:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDFileTransferController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001087A4;
  block[3] = &unk_10061A428;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)unzipArchiveAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URLByDeletingLastPathComponent];
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "placing unzip results into folder %@", buf, 0xCu);
  }

  v10 = [(CSDFileTransferController *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100108984;
  v14[3] = &unk_10061AF98;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v6;
  dispatch_async(v10, v14);
}

- (void)transferFileAtTemporaryURL:(id)a3 toDestinations:(id)a4 withMetadata:(id)a5 fromMember:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "temporaryClientFileURL: %@, destinations: %@", buf, 0x16u);
  }

  buf[0] = 0;
  v16 = +[NSFileManager defaultManager];
  v17 = [v10 path];
  v18 = [v16 fileExistsAtPath:v17 isDirectory:buf];

  if (v18)
  {
    v19 = +[NSMutableDictionary dictionary];
    v20 = [NSNumber numberWithBool:buf[0]];
    [v19 setObject:v20 forKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];

    [v19 setObject:v12 forKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100108FCC;
    v28[3] = &unk_10061BBA0;
    v29 = v11;
    v21 = v19;
    v30 = v21;
    v31 = v13;
    v32 = self;
    v22 = v10;
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

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incomingResourceURL: %@ metadata: %@ fromID: %@", &v25, 0x20u);
  }

  v16 = [v12 objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];
  v17 = [v16 BOOLValue];

  v18 = [v12 objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
  v19 = objc_opt_class();
  v20 = +[NSUUID UUID];
  v21 = [v20 UUIDString];
  v22 = [v19 copyFileAtURL:v11 toTemporaryFileWithName:v21];

  if (v22)
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Copied resource to temporary URL: %@", &v25, 0xCu);
    }

    v24 = [(CSDFileTransferController *)self delegate];
    [v24 fileTransferer:self didReceiveResourcesAtURL:v22 withMetadata:v18 isZipped:v17 fromIDSDestination:v13];
  }
}

+ (id)copyFileAtURL:(id)a3 toTemporaryFileWithName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = NSTemporaryDirectory();
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringByAppendingPathComponent:v9];
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

  v14 = [v11 URLByAppendingPathComponent:v6];
  v15 = +[NSFileManager defaultManager];
  v22 = v13;
  v16 = [v15 copyItemAtURL:v5 toURL:v14 error:&v22];
  v17 = v22;

  if ((v16 & 1) == 0)
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v5;
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

+ (id)renameResourceAtURL:(id)a3 toResourceWithName:(id)a4
{
  v6 = a3;
  v7 = [a1 renamedResourceURL:v6 withName:a4];
  v8 = +[NSFileManager defaultManager];
  v13 = 0;
  v9 = [v8 moveItemAtURL:v6 toURL:v7 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = v6;
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

+ (id)renamedResourceURL:(id)a3 withName:(id)a4
{
  v5 = a4;
  v6 = [a3 pathComponents];
  v7 = [v6 mutableCopy];

  [v7 removeLastObject];
  [v7 addObject:v5];

  v8 = [NSURL fileURLWithPathComponents:v7];

  return v8;
}

+ (void)deleteContentsAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v9];
  v6 = v9;

  v7 = sub_100004778();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleted contents at URL: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100475098();
  }
}

- (void)zipDirectoryAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = NSTemporaryDirectory();
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:v11];
  v13 = [v12 stringByAppendingPathExtension:@"zip"];

  v14 = [NSURL fileURLWithPath:v13];
  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Zipping directory at URL: %@, output to: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100109E9C;
  v19[3] = &unk_10061A768;
  v20 = v6;
  v21 = v14;
  v22 = v7;
  v16 = v7;
  v17 = v14;
  v18 = v6;
  [(CSDFileTransferController *)self performFileCopierOperation:0 onInputURL:v18 outputURL:v17 completion:v19];
}

- (void)performFileCopierOperation:(unint64_t)a3 onInputURL:(id)a4 outputURL:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v27 = a3;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "operation: %ld, inputURL: %@, outputURL: %@", buf, 0x20u);
  }

  v15 = [IMFileCopier alloc];
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a3;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [(CSDFileTransferController *)self queue:_NSConcreteStackBlock];
  v20 = [v15 initWithInputURL:v18 outputURL:v17 identifier:0 operation:a3 completionBlock:&v21 queue:v19];

  [v20 start];
}

- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)a3
{
  v4 = a3;
  v5 = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
  v7 = [v6 objectForKeyedSubscript:v4];

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
    v9 = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
    [v9 setObject:0 forKeyedSubscript:v4];
  }
}

- (CSDFileTransferringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end