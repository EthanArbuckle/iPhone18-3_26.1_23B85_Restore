@interface CSDMomentsController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (CSDMomentsControllerLocalCapabilities)localCapabilities;
- (CSDMomentsController)init;
- (CSDMomentsController)initWithQueue:(id)queue fileTransferController:(id)controller mediaAssetManager:(id)manager callCenterObserver:(id)observer;
- (id)contentsOfDirectoryAtURL:(id)l;
- (id)sessionForTransactionID:(id)d;
- (id)urlFromResources:(id)resources withExtension:(id)extension;
- (int)availabilityWithRemoteAvailable:(BOOL)available;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)l;
- (void)_handleReceivedVideoURL:(id)l;
- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion;
- (void)_saveVideoWithURL:(id)l completion:(id)completion;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d;
- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request;
- (void)cleanUpForMomentIfNecessary:(id)necessary;
- (void)deleteContentsAtURL:(id)l;
- (void)endRequestWithTransactionID:(id)d reply:(id)reply;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully;
- (void)handleClientDisconnected:(id)disconnected;
- (void)handleRequestResultWithMomentDescriptor:(id)descriptor;
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error;
- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)registerClient:(id)client;
- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply;
- (void)registerXPCClientWithReply:(id)reply;
- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d reply:(id)reply;
- (void)unregisterClient:(id)client;
- (void)unregisterStreamToken:(int64_t)token;
- (void)unregisterStreamToken:(int64_t)token reply:(id)reply;
@end

@implementation CSDMomentsController

- (CSDMomentsController)init
{
  v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.csdmomentscontroller", 0);
  v4 = objc_alloc_init(CSDFileTransferController);
  v5 = objc_alloc_init(CSDMediaAssetManager);
  v6 = objc_alloc_init(CSDCallCenterObserver);
  v7 = [(CSDMomentsController *)self initWithQueue:v3 fileTransferController:v4 mediaAssetManager:v5 callCenterObserver:v6];

  return v7;
}

- (CSDMomentsController)initWithQueue:(id)queue fileTransferController:(id)controller mediaAssetManager:(id)manager callCenterObserver:(id)observer
{
  queueCopy = queue;
  controllerCopy = controller;
  managerCopy = manager;
  observerCopy = observer;
  v24.receiver = self;
  v24.super_class = CSDMomentsController;
  v15 = [(CSDMomentsController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    queue = v16->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024A850;
    v19[3] = &unk_10061A450;
    v20 = v16;
    v21 = controllerCopy;
    v22 = managerCopy;
    v23 = observerCopy;
    dispatch_async(queue, v19);
  }

  return v16;
}

- (void)handleClientDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = disconnectedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handle disconnect for client: %@", buf, 0xCu);
  }

  streamTokensByCSDClient = [(CSDMomentsController *)self streamTokensByCSDClient];
  v8 = [streamTokensByCSDClient objectForKey:disconnectedCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        -[CSDMomentsController unregisterStreamToken:](self, "unregisterStreamToken:", [*(*(&v15 + 1) + 8 * v13) integerValue]);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  streamTokensByCSDClient2 = [(CSDMomentsController *)self streamTokensByCSDClient];
  [streamTokensByCSDClient2 removeObjectForKey:disconnectedCopy];
}

- (void)registerXPCClientWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  replyCopy[2]();
}

- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024B190;
  v17[3] = &unk_10061F9C0;
  typeCopy = type;
  v17[4] = self;
  v18 = dCopy;
  v19 = replyCopy;
  tokenCopy = token;
  v15 = replyCopy;
  v16 = dCopy;
  sub_100004AA4(currentClient, @"modify-moments", v17, 0, "[CSDMomentsController startRequestWithMediaType:forStreamToken:requesteeID:reply:]");
}

- (void)endRequestWithTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024B864;
  v13[3] = &unk_10061AF20;
  v14 = dCopy;
  selfCopy = self;
  v16 = replyCopy;
  v11 = replyCopy;
  v12 = dCopy;
  sub_100004AA4(currentClient, @"modify-moments", v13, 0, "[CSDMomentsController endRequestWithTransactionID:reply:]");
}

- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply
{
  dCopy = d;
  destinationsCopy = destinations;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10024BC34;
  v22[3] = &unk_10061F9E8;
  availableCopy = available;
  v22[4] = self;
  v23 = destinationsCopy;
  v24 = dCopy;
  v25 = currentClient;
  v26 = replyCopy;
  tokenCopy = token;
  v18 = replyCopy;
  v19 = currentClient;
  v20 = dCopy;
  v21 = destinationsCopy;
  sub_100004AA4(v19, @"modify-moments", v22, 0, "[CSDMomentsController registerStreamToken:requesterID:remoteIDSDestinations:remoteMomentsAvailable:reply:]");
}

- (void)unregisterStreamToken:(int64_t)token reply:(id)reply
{
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10024C35C;
  v12[3] = &unk_10061FA10;
  v12[4] = self;
  v13 = currentClient;
  v14 = replyCopy;
  tokenCopy = token;
  v10 = replyCopy;
  v11 = currentClient;
  sub_100004AA4(v11, @"modify-moments", v12, 0, "[CSDMomentsController unregisterStreamToken:reply:]");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C558;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C660;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  momentsCopy = moments;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = requestCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v13, 0x16u);
  }

  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:momentsCopy];
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  momentsCopy = moments;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    changeCopy = change;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", buf, 8u);
  }

  v9 = [(CSDMomentsController *)self availabilityWithRemoteAvailable:1];
  if (v9 == 3)
  {
    sub_10024C1A8(change);
  }

  else
  {
    +[NSSet set];
  }
  v10 = ;
  v11 = [[TUMomentsCapabilities alloc] initWithAvailability:v9 supportedMediaTypes:v10];
  clientManager = [(CSDMomentsController *)self clientManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024CA20;
  v15[3] = &unk_10061FA38;
  v16 = v11;
  v17 = momentsCopy;
  v13 = momentsCopy;
  v14 = v11;
  [clientManager performBlockOnClients:v15];
}

- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = requestCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  serverBag = [(CSDMomentsController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {
  }

  else
  {
    isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

    if (isFaceTimePhotosAvailable)
    {
      goto LABEL_9;
    }
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10047DE4C();
  }

LABEL_9:
  if (!requestCopy)
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10047DE8C();
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] == 2 && (TUAllowLocalVideoRecording() & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    clientManager = [(CSDMomentsController *)self clientManager];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10024CD54;
    v25[3] = &unk_10061FA60;
    v26 = requestCopy;
    [clientManager performBlockOnClients:v25];

    v16 = 0;
  }

  requesterID = [requestCopy requesterID];

  if (requesterID)
  {
    v19 = [CSDMomentsNotification alloc];
    streamToken = [momentsCopy streamToken];
    requesterID2 = [requestCopy requesterID];
    v22 = [(CSDMomentsNotification *)v19 initWithStreamToken:streamToken requesterID:requesterID2];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:v22];
  }

  if (v16)
  {
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 postNotificationName:@"CSDMomentsControllerStartedLocalVideoCaptureNotification" object:0];
LABEL_20:
  }
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  lCopy = l;
  rLCopy = rL;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v100 = requestCopy;
    v101 = 2112;
    v102 = lCopy;
    v103 = 2112;
    v104 = rLCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  serverBag = [(CSDMomentsController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

    goto LABEL_15;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
LABEL_15:
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047E318();
    }

    goto LABEL_17;
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [momentsCopy streamToken]);
  v21 = [sessionsByToken objectForKeyedSubscript:v20];

  if (!v21)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E298(momentsCopy);
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v39 = [v21 remoteRequesterIDSDestinationFor:requestCopy];
    if (v39)
    {
      if (lCopy && rLCopy)
      {
        v98[0] = @"jpg";
        v98[1] = @"heic";
        v98[2] = @"mov";
        v40 = [NSArray arrayWithObjects:v98 count:3];
        v41 = [NSSet setWithArray:v40];

        pathExtension = [lCopy pathExtension];
        lowercaseString = [pathExtension lowercaseString];
        v90 = v41;
        if ([v41 containsObject:lowercaseString])
        {
          pathExtension2 = [rLCopy pathExtension];
          [pathExtension2 lowercaseString];
          v44 = v88 = v39;
          v45 = [v41 containsObject:v44];

          v39 = v88;
          if (v45)
          {
            v46 = [NSUUID alloc];
            transactionID = [requestCopy transactionID];
            v48 = [v46 initWithUUIDString:transactionID];

            if (v48)
            {
              NSTemporaryDirectory();
              v84 = v80 = v48;
              v97[0] = v84;
              uUIDString = [v48 UUIDString];
              v97[1] = uUIDString;
              v49 = +[NSUUID UUID];
              uUIDString2 = [v49 UUIDString];
              v97[2] = uUIDString2;
              v51 = [NSArray arrayWithObjects:v97 count:3];
              v52 = [NSURL fileURLWithPathComponents:v51];

              v53 = +[NSFileManager defaultManager];
              v95 = 0;
              v85 = v52;
              LOBYTE(v52) = [v53 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:&v95];
              v54 = v95;

              if (v52)
              {
                v55 = [v85 URLByAppendingPathComponent:@"lp_image"];
                pathExtension3 = [lCopy pathExtension];
                v57 = [v55 URLByAppendingPathExtension:pathExtension3];

                v58 = +[NSFileManager defaultManager];
                v94 = v54;
                v79 = v57;
                LOBYTE(pathExtension3) = [v58 copyItemAtURL:lCopy toURL:v57 error:&v94];
                v59 = v94;

                if (pathExtension3)
                {
                  v60 = [v85 URLByAppendingPathComponent:@"lp_movie"];
                  pathExtension4 = [rLCopy pathExtension];
                  v62 = [v60 URLByAppendingPathExtension:pathExtension4];

                  v63 = +[NSFileManager defaultManager];
                  v93 = v59;
                  LOBYTE(pathExtension4) = [v63 copyItemAtURL:rLCopy toURL:v62 error:&v93];
                  v77 = v93;

                  v76 = pathExtension4;
                  if (pathExtension4)
                  {
                    [(CSDMomentsController *)self _transferFileAtURL:v85 forSession:v21 request:requestCopy];
                    v64 = v88;
                    v65 = v90;
                  }

                  else
                  {
                    v75 = sub_100004778();
                    v64 = v88;
                    v65 = v90;
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      sub_10047E094();
                    }
                  }

                  if (v76)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_17;
                }

                v72 = v85;
                v74 = sub_100004778();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                {
                  sub_10047E02C();
                }
              }

              else
              {
                v72 = v85;
                v73 = sub_100004778();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  sub_10047DFC4();
                }
              }
            }

            else
            {
              v71 = sub_100004778();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                sub_10047E0FC(requestCopy);
              }
            }

            v68 = v88;
LABEL_43:

            goto LABEL_17;
          }
        }

        else
        {
        }

        v69 = sub_100004778();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_10047DF5C();
        }

LABEL_48:
        goto LABEL_17;
      }

      v66 = sub_100004778();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_10047DEF4();
      }
    }

    else
    {
      v66 = sub_100004778();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_10047E188(requestCopy, v21);
      }
    }

    goto LABEL_48;
  }

  if (!TUAllowLocalVideoRecording())
  {
LABEL_53:
    [(CSDMomentsController *)self cleanUpForMomentIfNecessary:momentsCopy];
    goto LABEL_17;
  }

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 postNotificationName:@"CSDMomentsControllerStoppedLocalVideoCaptureNotification" object:0];

  if (!rLCopy)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E230();
    }

    goto LABEL_20;
  }

  v23 = [NSUUID alloc];
  transactionID2 = [requestCopy transactionID];
  v25 = [v23 initWithUUIDString:transactionID2];

  if (!v25)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E0FC(requestCopy);
    }

LABEL_20:

    goto LABEL_17;
  }

  v86 = NSTemporaryDirectory();
  v89 = v25;
  v96[0] = v86;
  uUIDString3 = [v25 UUIDString];
  v96[1] = uUIDString3;
  v26 = +[NSUUID UUID];
  uUIDString4 = [v26 UUIDString];
  v96[2] = uUIDString4;
  v28 = [NSArray arrayWithObjects:v96 count:3];
  v29 = [NSURL fileURLWithPathComponents:v28];

  v30 = +[NSFileManager defaultManager];
  v92 = 0;
  LOBYTE(v28) = [v30 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v92];
  v31 = v92;

  if ((v28 & 1) == 0)
  {
    v67 = sub_100004778();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_10047DFC4();
    }

    v68 = v89;
    goto LABEL_43;
  }

  v82 = v29;
  v32 = [v29 URLByAppendingPathComponent:@"lp_movie"];
  pathExtension5 = [rLCopy pathExtension];
  v34 = [v32 URLByAppendingPathExtension:pathExtension5];

  v35 = +[NSFileManager defaultManager];
  v91 = v31;
  v36 = [v35 copyItemAtURL:rLCopy toURL:v34 error:&v91];
  v87 = v91;

  if (v36)
  {
    [(CSDMomentsController *)self _handleReceivedVideoURL:v34];
    v37 = v89;
  }

  else
  {
    v70 = sub_100004778();
    v37 = v89;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_10047E094();
    }
  }

  if (v36)
  {
    goto LABEL_53;
  }

LABEL_17:
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047E358();
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  [sessionsByToken removeAllObjects];

  streamTokensByCSDClient = [(CSDMomentsController *)self streamTokensByCSDClient];
  [streamTokensByCSDClient removeAllObjects];
}

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(CSDMomentsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D978;
  block[3] = &unk_10061C7D8;
  v19 = lCopy;
  v20 = metadataCopy;
  zippedCopy = zipped;
  v21 = destinationCopy;
  selfCopy = self;
  v15 = destinationCopy;
  v16 = metadataCopy;
  v17 = lCopy;
  dispatch_async(queue, block);
}

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully
{
  lCopy = l;
  if (!successfully)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047E694();
    }
  }

  [(CSDMomentsController *)self deleteContentsAtURL:lCopy];
}

- (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() shouldPreserveMomentsFile])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = lCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preserving file at URL: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v9 = 0;
    v6 = [v5 removeItemAtURL:lCopy error:&v9];
    v4 = v9;

    v7 = sub_100004778();
    v8 = v7;
    if (v6)
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
}

- (id)contentsOfDirectoryAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047E6FC();
    }

    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)urlFromResources:(id)resources withExtension:(id)extension
{
  resourcesCopy = resources;
  extensionCopy = extension;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = resourcesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        pathExtension = [v11 pathExtension];
        v13 = [pathExtension isEqualToIgnoringCase:extensionCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)unregisterStreamToken:(int64_t)token
{
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v11, 0xCu);
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:token];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  moments = [v9 moments];
  [v9 setIsRegistered:0];
  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:moments];
}

- (void)cleanUpForMomentIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  streamToken = [necessaryCopy streamToken];
  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:streamToken];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  isRegistered = [v9 isRegistered];
  LODWORD(sessionsByToken) = [necessaryCopy activeRequestCount];
  v11 = [necessaryCopy pendingRequestCount] + sessionsByToken;
  activeRequestsByTransactionID = [v9 activeRequestsByTransactionID];
  v13 = [activeRequestsByTransactionID count] + v11;

  sessionsByToken2 = sub_100004778();
  v15 = os_log_type_enabled(sessionsByToken2, OS_LOG_TYPE_DEFAULT);
  if ((isRegistered & 1) != 0 || v13)
  {
    if (v15)
    {
      v17 = 67109376;
      LODWORD(v18[0]) = isRegistered;
      WORD2(v18[0]) = 2048;
      *(v18 + 6) = v13;
      _os_log_impl(&_mh_execute_header, sessionsByToken2, OS_LOG_TYPE_DEFAULT, "Delaying cleanup because moment is still registered (%d) or has outstanding requests (%lu)", &v17, 0x12u);
    }
  }

  else
  {
    if (v15)
    {
      v17 = 138412290;
      v18[0] = necessaryCopy;
      _os_log_impl(&_mh_execute_header, sessionsByToken2, OS_LOG_TYPE_DEFAULT, "Cleaning up state for moment: %@", &v17, 0xCu);
    }

    sessionsByToken2 = [(CSDMomentsController *)self sessionsByToken];
    v16 = [NSNumber numberWithLong:streamToken];
    [sessionsByToken2 setObject:0 forKeyedSubscript:v16];
  }
}

- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request
{
  lCopy = l;
  sessionCopy = session;
  requestCopy = request;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = lCopy;
    v22 = 2112;
    v23 = sessionCopy;
    v24 = 2112;
    v25 = requestCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "url: %@ session: %@ request: %@", buf, 0x20u);
  }

  v13 = [sessionCopy remoteRequesterIDSDestinationFor:requestCopy];
  v14 = [NSSet setWithObject:v13];

  transactionID = [requestCopy transactionID];
  v19 = transactionID;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  fileTransferController = [(CSDMomentsController *)self fileTransferController];
  [fileTransferController transferFileAtURL:lCopy toDestinations:v14 withMetadata:v16];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)l
{
  lCopy = l;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = lCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v9 = [v7 fileExistsAtPath:path];

  if (v9)
  {
    v10 = [(CSDMomentsController *)self contentsOfDirectoryAtURL:lCopy];
    v11 = [(CSDMomentsController *)self urlFromResources:v10 withExtension:@"jpg"];
    v12 = [(CSDMomentsController *)self urlFromResources:v10 withExtension:@"heic"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14;
    v16 = [(CSDMomentsController *)self urlFromResources:v10 withExtension:@"mov"];
    v17 = v16;
    if (v15 && v16)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10024EC1C;
      v20[3] = &unk_10061FAB0;
      v20[4] = self;
      v21 = lCopy;
      [(CSDMomentsController *)self _saveLivePhotoWithPhotoURL:v15 videoURL:v17 completion:v20];
    }

    else
    {
      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10047E7CC();
      }

      [(CSDMomentsController *)self deleteContentsAtURL:lCopy];
    }
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10047E764();
    }

    [(CSDMomentsController *)self deleteContentsAtURL:lCopy];
  }
}

- (void)_handleReceivedVideoURL:(id)l
{
  lCopy = l;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_handleReceivedVideoURL: %@", buf, 0xCu);
  }

  if (lCopy && TUAllowLocalVideoRecording())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024EE4C;
    v7[3] = &unk_10061FAB0;
    v7[4] = self;
    v8 = lCopy;
    [(CSDMomentsController *)self _saveVideoWithURL:v8 completion:v7];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = lCopy;
    v24 = 2112;
    v25 = rLCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "saving live photo with photo url: %@ video url: %@", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024F0EC;
  v18[3] = &unk_10061FAD8;
  v19 = lCopy;
  v20 = rLCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = rLCopy;
  v15 = lCopy;
  v16 = objc_retainBlock(v18);
  mediaAssetManager = [(CSDMomentsController *)self mediaAssetManager];
  [mediaAssetManager saveLivePhotoWithPhotoURL:v15 videoURL:v14 completion:v16];
}

- (void)_saveVideoWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (TUAllowLocalVideoRecording())
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = lCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10024F300;
    v16 = &unk_10061FB00;
    v10 = lCopy;
    v17 = v10;
    v18 = completionCopy;
    v11 = objc_retainBlock(&v13);
    v12 = [(CSDMomentsController *)self mediaAssetManager:v13];
    [v12 saveVideoWithURL:v10 completion:v11];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d
{
  dCopy = d;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDMomentsController *)self serverBag];
  [serverBag momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  queue2 = [(CSDMomentsController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10024F498;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_after(v8, queue2, v11);
}

- (id)sessionForTransactionID:(id)d
{
  dCopy = d;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  allValues = [sessionsByToken allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        activeRequestsByTransactionID = [v11 activeRequestsByTransactionID];
        v13 = [activeRequestsByTransactionID objectForKeyedSubscript:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)handleRequestResultWithMomentDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", buf, 0xCu);
  }

  clientManager = [(CSDMomentsController *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10024F860;
  v9[3] = &unk_10061FA60;
  v10 = descriptorCopy;
  v8 = descriptorCopy;
  [clientManager performBlockOnClients:v9];
}

+ (BOOL)isFaceTimePhotosAvailable
{
  localCapabilities = [self localCapabilities];
  if ([localCapabilities isEnabled])
  {
    localCapabilities2 = [self localCapabilities];
    v5 = [localCapabilities2 isRegionBlocked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (CSDMomentsControllerLocalCapabilities)localCapabilities
{
  if (qword_1006ACFB8 != -1)
  {
    sub_10047E91C();
  }

  v3 = qword_1006ACFC0;

  return v3;
}

- (int)availabilityWithRemoteAvailable:(BOOL)available
{
  availableCopy = available;
  localCapabilities = [objc_opt_class() localCapabilities];
  isRegionBlocked = [localCapabilities isRegionBlocked];

  if (isRegionBlocked)
  {
    return 2;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];
  result = 1;
  if (isFaceTimePhotosAvailable && availableCopy)
  {
    serverBag = [(CSDMomentsController *)self serverBag];
    isMomentsDisabled = [serverBag isMomentsDisabled];

    if (isMomentsDisabled)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

+ (BOOL)shouldPreserveMomentsFile
{
  if (qword_1006ACFD0[0] != -1)
  {
    sub_10047E930();
  }

  return byte_1006ACFC8;
}

@end