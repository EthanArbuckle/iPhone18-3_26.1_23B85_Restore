@interface FTLivePhotoController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (FTMomentsControllerLocalCapabilities)localCapabilities;
+ (id)sharedInstance;
- (FTLivePhotoController)init;
- (FTLivePhotoController)initWithQueue:(id)queue fileTransferController:(id)controller idsService:(id)service mediaAssetManager:(id)manager callCenter:(id)center userNotificationProviderDataSource:(id)source featureFlags:(id)flags;
- (FTLivePhotoControllerDelegate)delegate;
- (id)contentsOfDirectoryAtURL:(id)l;
- (id)sessionForTransactionID:(id)d;
- (id)urlFromResources:(id)resources withExtension:(id)extension;
- (int)availabilityWithRemoteAvailable:(BOOL)available;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)l transactionID:(id)d;
- (void)_handleReceivedVideoURL:(id)l;
- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion;
- (void)_saveVideoWithURL:(id)l completion:(id)completion;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d;
- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request;
- (void)cleanUpForMomentIfNecessary:(id)necessary;
- (void)deleteContentsAtURL:(id)l;
- (void)endRequestWithTransactionID:(id)d reply:(id)reply;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l transactionID:(id)d successfully:(BOOL)successfully;
- (void)handleRequestResultWithMomentDescriptor:(id)descriptor;
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error;
- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)requestSandboxExtensionForTransactionID:(id)d reply:(id)reply;
- (void)requestSandboxExtensionForURL:(id)l reply:(id)reply;
- (void)unregisterStreamToken:(int64_t)token;
- (void)unregisterStreamToken:(int64_t)token reply:(id)reply;
@end

@implementation FTLivePhotoController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002974;
  block[3] = &unk_100050F88;
  block[4] = self;
  if (qword_100059C18 != -1)
  {
    dispatch_once(&qword_100059C18, block);
  }

  v2 = qword_100059C10;

  return v2;
}

- (FTLivePhotoController)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

  v5 = dispatch_queue_create("com.apple.telephonyutilities.FTLivePhotoController", v4);
  v6 = [FTFileTransferController alloc];
  v7 = +[_TtC18FTLivePhotoService21FTLivePhotoIDSService sharedInstance];
  v8 = +[FTServerBag sharedInstance];
  v9 = [(FTFileTransferController *)v6 initWithService:v7 serverBag:v8];

  v10 = objc_alloc_init(FTMediaAssetManager);
  v11 = [TUCallCenter callCenterWithQueue:v5];
  v12 = objc_alloc_init(TUFeatureFlags);
  v13 = objc_alloc_init(TUUserNotificationProviderXPCClient);
  v14 = +[_TtC18FTLivePhotoService21FTLivePhotoIDSService sharedInstance];
  v15 = [(FTLivePhotoController *)self initWithQueue:v5 fileTransferController:v9 idsService:v14 mediaAssetManager:v10 callCenter:v11 userNotificationProviderDataSource:v13 featureFlags:v12];

  return v15;
}

- (FTLivePhotoController)initWithQueue:(id)queue fileTransferController:(id)controller idsService:(id)service mediaAssetManager:(id)manager callCenter:(id)center userNotificationProviderDataSource:(id)source featureFlags:(id)flags
{
  queueCopy = queue;
  controllerCopy = controller;
  serviceCopy = service;
  managerCopy = manager;
  centerCopy = center;
  sourceCopy = source;
  flagsCopy = flags;
  v35.receiver = self;
  v35.super_class = FTLivePhotoController;
  v23 = [(FTLivePhotoController *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_queue, queue);
    queue = v24->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002CDC;
    block[3] = &unk_100050FF0;
    v28 = v24;
    v29 = flagsCopy;
    v30 = centerCopy;
    v31 = controllerCopy;
    v32 = serviceCopy;
    v33 = managerCopy;
    v34 = sourceCopy;
    dispatch_async(queue, block);
  }

  return v24;
}

- (void)endRequestWithTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = FTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "transactionID: %@", buf, 0xCu);
  }

  v10 = [(FTLivePhotoController *)self sessionForTransactionID:dCopy];
  activeRequestsByTransactionID = [v10 activeRequestsByTransactionID];
  v12 = [activeRequestsByTransactionID objectForKeyedSubscript:dCopy];

  if (v12)
  {
    avcRequest = [v12 avcRequest];
    v20 = 0;
    v14 = [avcRequest endWithError:&v20];
    v15 = v20;

    v16 = FTDefaultLog();
    dCopy = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, dCopy, OS_LOG_TYPE_DEFAULT, "Successfully ended request %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003852C();
    }
  }

  else
  {
    dCopy = [NSString stringWithFormat:@"Could not find request for transaction ID %@", dCopy];
    v21 = NSLocalizedDescriptionKey;
    v22 = dCopy;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v18];

    v19 = FTDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100038380();
    }
  }

  replyCopy[2](replyCopy, v15);
}

- (void)unregisterStreamToken:(int64_t)token reply:(id)reply
{
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to unregister stream token: %ld", &v9, 0xCu);
  }

  [(FTLivePhotoController *)self unregisterStreamToken:token];
  replyCopy[2](replyCopy, 0);
}

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(FTLivePhotoController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041F0;
  block[3] = &unk_100051090;
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

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l transactionID:(id)d successfully:(BOOL)successfully
{
  lCopy = l;
  dCopy = d;
  if (!successfully)
  {
    v11 = FTDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000388D0();
    }
  }

  [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
  sandboxURLsByRequestTransactionID = [(FTLivePhotoController *)self sandboxURLsByRequestTransactionID];
  [sandboxURLsByRequestTransactionID setObject:0 forKeyedSubscript:dCopy];
}

- (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() shouldPreserveMomentsFile])
  {
    v4 = FTDefaultLog();
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

    v7 = FTDefaultLog();
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
      sub_100038938();
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
    v7 = FTDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000389A0();
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
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v11, 0xCu);
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:token];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  moments = [v9 moments];
  [v9 setIsRegistered:0];
  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:moments];
}

- (void)cleanUpForMomentIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  streamToken = [necessaryCopy streamToken];
  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:streamToken];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  isRegistered = [v9 isRegistered];
  LODWORD(sessionsByToken) = [necessaryCopy activeRequestCount];
  v11 = [necessaryCopy pendingRequestCount] + sessionsByToken;
  activeRequestsByTransactionID = [v9 activeRequestsByTransactionID];
  v13 = [activeRequestsByTransactionID count] + v11;

  sessionsByToken2 = FTDefaultLog();
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

    sessionsByToken2 = [(FTLivePhotoController *)self sessionsByToken];
    v16 = [NSNumber numberWithLong:streamToken];
    [sessionsByToken2 setObject:0 forKeyedSubscript:v16];
  }
}

- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request
{
  lCopy = l;
  sessionCopy = session;
  requestCopy = request;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = FTDefaultLog();
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

  fileTransferController = [(FTLivePhotoController *)self fileTransferController];
  [fileTransferController transferFileAtURL:lCopy toDestinations:v14 withMetadata:v16];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)l transactionID:(id)d
{
  lCopy = l;
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = FTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = lCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v10 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v12 = [v10 fileExistsAtPath:path];

  if (v12)
  {
    v13 = [(FTLivePhotoController *)self contentsOfDirectoryAtURL:lCopy];
    v14 = [(FTLivePhotoController *)self urlFromResources:v13 withExtension:@"jpg"];
    v15 = [(FTLivePhotoController *)self urlFromResources:v13 withExtension:@"heic"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17;
    v19 = [(FTLivePhotoController *)self urlFromResources:v13 withExtension:@"mov"];
    v20 = v19;
    if (v18 && v19)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100005548;
      v23[3] = &unk_1000510E0;
      v23[4] = self;
      v24 = lCopy;
      v25 = dCopy;
      [(FTLivePhotoController *)self _saveLivePhotoWithPhotoURL:v18 videoURL:v20 completion:v23];
    }

    else
    {
      v22 = FTDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100038A70();
      }

      [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
    }
  }

  else
  {
    v21 = FTDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100038A08();
    }

    [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
  }
}

- (void)_handleReceivedVideoURL:(id)l
{
  lCopy = l;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = FTDefaultLog();
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
    v7[2] = sub_100005798;
    v7[3] = &unk_100051108;
    v7[4] = self;
    v8 = lCopy;
    [(FTLivePhotoController *)self _saveVideoWithURL:v8 completion:v7];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = FTDefaultLog();
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
  v18[2] = sub_100005A38;
  v18[3] = &unk_100051130;
  v19 = lCopy;
  v20 = rLCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = rLCopy;
  v15 = lCopy;
  v16 = objc_retainBlock(v18);
  mediaAssetManager = [(FTLivePhotoController *)self mediaAssetManager];
  [mediaAssetManager saveLivePhotoWithPhotoURL:v15 videoURL:v14 completion:v16];
}

- (void)_saveVideoWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (TUAllowLocalVideoRecording())
  {
    v9 = FTDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = lCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100005C4C;
    v16 = &unk_100051158;
    v10 = lCopy;
    v17 = v10;
    v18 = completionCopy;
    v11 = objc_retainBlock(&v13);
    v12 = [(FTLivePhotoController *)self mediaAssetManager:v13];
    [v12 saveVideoWithURL:v10 completion:v11];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d
{
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(FTLivePhotoController *)self serverBag];
  [serverBag momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  queue2 = [(FTLivePhotoController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005DE4;
  v11[3] = &unk_1000510B8;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_after(v8, queue2, v11);
}

- (id)sessionForTransactionID:(id)d
{
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
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
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", &v8, 0xCu);
  }

  clientObject = [(FTLivePhotoController *)self clientObject];
  [clientObject didReceiveLocallyRequestedMomentDescriptor:descriptorCopy];
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

+ (FTMomentsControllerLocalCapabilities)localCapabilities
{
  if (qword_100059C20 != -1)
  {
    sub_100038BC0();
  }

  v3 = qword_100059C28;

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
    serverBag = [(FTLivePhotoController *)self serverBag];
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
  if (qword_100059C38 != -1)
  {
    sub_100038BD4();
  }

  return byte_100059C30;
}

- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  momentsCopy = moments;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = FTDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = requestCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v13, 0x16u);
  }

  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:momentsCopy];
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  momentsCopy = moments;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = change;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", v14, 8u);
  }

  v9 = [(FTLivePhotoController *)self availabilityWithRemoteAvailable:1];
  if (v9 == 3)
  {
    mediaTypesCapabilitiesSetForCapabilities(change);
  }

  else
  {
    +[NSSet set];
  }
  v10 = ;
  v11 = [[TUMomentsCapabilities alloc] initWithAvailability:v9 supportedMediaTypes:v10];
  clientObject = [(FTLivePhotoController *)self clientObject];
  streamToken = [momentsCopy streamToken];

  [clientObject didUpdateCapabilities:v11 forVideoStreamToken:streamToken];
}

- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = FTDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = requestCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  serverBag = [(FTLivePhotoController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

LABEL_15:
    v27 = FTDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100038C50();
    }

    goto LABEL_18;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = FTDefaultLog();
  v16 = v15;
  if (requestCopy)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting sandbox extension for temp URL", buf, 2u);
    }

    sandboxDataSource = [(FTLivePhotoController *)self sandboxDataSource];
    v18 = NSTemporaryDirectory();
    v19 = [NSURL fileURLWithPath:v18];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100006954;
    v31 = &unk_1000511C0;
    selfCopy = self;
    v20 = requestCopy;
    v33 = v20;
    [sandboxDataSource requestSandboxExtensionForURL:v19 reply:&v28];

    if ([v20 mediaType] != 2 || (TUAllowLocalVideoRecording() & 1) == 0)
    {
      clientObject = [(FTLivePhotoController *)self clientObject];
      requesterID = [v20 requesterID];
      [clientObject willCaptureRemoteRequestFromRequesterID:requesterID];
    }

    requesterID2 = [v20 requesterID];

    if (requesterID2)
    {
      userNotificationProviderDataSource = [(FTLivePhotoController *)self userNotificationProviderDataSource];
      streamToken = [momentsCopy streamToken];
      requesterID3 = [v20 requesterID];
      [userNotificationProviderDataSource momentCapturedForStreamToken:streamToken requesterID:requesterID3 reply:&stru_100051200];
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100038BE8();
    }
  }

LABEL_18:
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  lCopy = l;
  rLCopy = rL;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = FTDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = requestCopy;
    v100 = 2112;
    v101 = lCopy;
    v102 = 2112;
    v103 = rLCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  serverBag = [(FTLivePhotoController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

    goto LABEL_15;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
LABEL_15:
    v21 = FTDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003911C();
    }

    goto LABEL_17;
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [momentsCopy streamToken]);
  v21 = [sessionsByToken objectForKeyedSubscript:v20];

  if (!v21)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10003909C(momentsCopy);
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v38 = [v21 remoteRequesterIDSDestinationFor:requestCopy];
    if (v38)
    {
      if (lCopy && rLCopy)
      {
        v97[0] = @"jpg";
        v97[1] = @"heic";
        v97[2] = @"mov";
        v39 = [NSArray arrayWithObjects:v97 count:3];
        v40 = [NSSet setWithArray:v39];

        pathExtension = [lCopy pathExtension];
        lowercaseString = [pathExtension lowercaseString];
        v89 = v40;
        if ([v40 containsObject:lowercaseString])
        {
          pathExtension2 = [rLCopy pathExtension];
          [pathExtension2 lowercaseString];
          v43 = v87 = v38;
          v44 = [v40 containsObject:v43];

          v38 = v87;
          if (v44)
          {
            v45 = [NSUUID alloc];
            transactionID = [requestCopy transactionID];
            v47 = [v45 initWithUUIDString:transactionID];

            if (v47)
            {
              NSTemporaryDirectory();
              v83 = v79 = v47;
              v96[0] = v83;
              uUIDString = [v47 UUIDString];
              v96[1] = uUIDString;
              v48 = +[NSUUID UUID];
              uUIDString2 = [v48 UUIDString];
              v96[2] = uUIDString2;
              v50 = [NSArray arrayWithObjects:v96 count:3];
              v51 = [NSURL fileURLWithPathComponents:v50];

              v52 = +[NSFileManager defaultManager];
              v94 = 0;
              v84 = v51;
              LOBYTE(v51) = [v52 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:&v94];
              v53 = v94;

              if (v51)
              {
                v54 = [v84 URLByAppendingPathComponent:@"lp_image"];
                pathExtension3 = [lCopy pathExtension];
                v56 = [v54 URLByAppendingPathExtension:pathExtension3];

                v57 = +[NSFileManager defaultManager];
                v93 = v53;
                v78 = v56;
                LOBYTE(pathExtension3) = [v57 copyItemAtURL:lCopy toURL:v56 error:&v93];
                v58 = v93;

                if (pathExtension3)
                {
                  v59 = [v84 URLByAppendingPathComponent:@"lp_movie"];
                  pathExtension4 = [rLCopy pathExtension];
                  v61 = [v59 URLByAppendingPathExtension:pathExtension4];

                  v62 = +[NSFileManager defaultManager];
                  v92 = v58;
                  LOBYTE(pathExtension4) = [v62 copyItemAtURL:rLCopy toURL:v61 error:&v92];
                  v76 = v92;

                  v75 = pathExtension4;
                  if (pathExtension4)
                  {
                    [(FTLivePhotoController *)self _transferFileAtURL:v84 forSession:v21 request:requestCopy];
                    v63 = v87;
                    v64 = v89;
                  }

                  else
                  {
                    v74 = FTDefaultLog();
                    v63 = v87;
                    v64 = v89;
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      sub_100038E98();
                    }
                  }

                  if (v75)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_17;
                }

                v71 = v84;
                v73 = FTDefaultLog();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  sub_100038E30();
                }
              }

              else
              {
                v71 = v84;
                v72 = FTDefaultLog();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  sub_100038DC8();
                }
              }
            }

            else
            {
              v70 = FTDefaultLog();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                sub_100038F00(requestCopy);
              }
            }

            v67 = v87;
LABEL_43:

            goto LABEL_17;
          }
        }

        else
        {
        }

        v68 = FTDefaultLog();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_100038D60();
        }

LABEL_48:
        goto LABEL_17;
      }

      v65 = FTDefaultLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_100038CF8();
      }
    }

    else
    {
      v65 = FTDefaultLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_100038F8C(requestCopy, v21);
      }
    }

    goto LABEL_48;
  }

  if (!TUAllowLocalVideoRecording())
  {
LABEL_53:
    [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:momentsCopy];
    goto LABEL_17;
  }

  if (!rLCopy)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100039034();
    }

    goto LABEL_20;
  }

  v22 = [NSUUID alloc];
  transactionID2 = [requestCopy transactionID];
  v24 = [v22 initWithUUIDString:transactionID2];

  if (!v24)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100038F00(requestCopy);
    }

LABEL_20:

    goto LABEL_17;
  }

  v85 = NSTemporaryDirectory();
  v88 = v24;
  v95[0] = v85;
  uUIDString3 = [v24 UUIDString];
  v95[1] = uUIDString3;
  v25 = +[NSUUID UUID];
  uUIDString4 = [v25 UUIDString];
  v95[2] = uUIDString4;
  v27 = [NSArray arrayWithObjects:v95 count:3];
  v28 = [NSURL fileURLWithPathComponents:v27];

  v29 = +[NSFileManager defaultManager];
  v91 = 0;
  LOBYTE(v27) = [v29 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v91];
  v30 = v91;

  if ((v27 & 1) == 0)
  {
    v66 = FTDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_100038DC8();
    }

    v67 = v88;
    goto LABEL_43;
  }

  v81 = v28;
  v31 = [v28 URLByAppendingPathComponent:@"lp_movie"];
  pathExtension5 = [rLCopy pathExtension];
  v33 = [v31 URLByAppendingPathExtension:pathExtension5];

  v34 = +[NSFileManager defaultManager];
  v90 = v30;
  v35 = [v34 copyItemAtURL:rLCopy toURL:v33 error:&v90];
  v86 = v90;

  if (v35)
  {
    [(FTLivePhotoController *)self _handleReceivedVideoURL:v33];
    v36 = v88;
  }

  else
  {
    v69 = FTDefaultLog();
    v36 = v88;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_100038E98();
    }
  }

  if (v35)
  {
    goto LABEL_53;
  }

LABEL_17:
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10003915C();
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  [sessionsByToken removeAllObjects];
}

- (void)requestSandboxExtensionForTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requesting sandbox extension for transactionID: %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000076C8;
  v15[3] = &unk_100051228;
  v15[4] = self;
  v16 = dCopy;
  v17 = replyCopy;
  v9 = replyCopy;
  v10 = dCopy;
  v11 = objc_retainBlock(v15);
  sandboxDataSource = [(FTLivePhotoController *)self sandboxDataSource];
  v13 = NSTemporaryDirectory();
  v14 = [NSURL fileURLWithPath:v13];
  [sandboxDataSource requestSandboxExtensionForURL:v14 reply:v11];
}

- (void)requestSandboxExtensionForURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  v5 = [TUSandboxExtendedURL alloc];
  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v5 initWithURL:v7];

  replyCopy[2](replyCopy, v8, 0);
}

- (FTLivePhotoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end