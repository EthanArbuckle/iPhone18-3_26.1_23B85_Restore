@interface CSDMomentsController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (CSDMomentsControllerLocalCapabilities)localCapabilities;
- (CSDMomentsController)init;
- (CSDMomentsController)initWithQueue:(id)a3 fileTransferController:(id)a4 mediaAssetManager:(id)a5 callCenterObserver:(id)a6;
- (id)contentsOfDirectoryAtURL:(id)a3;
- (id)sessionForTransactionID:(id)a3;
- (id)urlFromResources:(id)a3 withExtension:(id)a4;
- (int)availabilityWithRemoteAvailable:(BOOL)a3;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)a3;
- (void)_handleReceivedVideoURL:(id)a3;
- (void)_saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5;
- (void)_saveVideoWithURL:(id)a3 completion:(id)a4;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)a3;
- (void)_transferFileAtURL:(id)a3 forSession:(id)a4 request:(id)a5;
- (void)cleanUpForMomentIfNecessary:(id)a3;
- (void)deleteContentsAtURL:(id)a3;
- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4;
- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7;
- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 successfully:(BOOL)a5;
- (void)handleClientDisconnected:(id)a3;
- (void)handleRequestResultWithMomentDescriptor:(id)a3;
- (void)moments:(id)a3 capabilitiesDidChange:(unsigned int)a4;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7;
- (void)moments:(id)a3 didFinishRequest:(id)a4 error:(id)a5;
- (void)moments:(id)a3 didStartProcessingRequest:(id)a4 error:(id)a5;
- (void)momentsServerDidDisconnect:(id)a3;
- (void)registerClient:(id)a3;
- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 reply:(id)a7;
- (void)registerXPCClientWithReply:(id)a3;
- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 reply:(id)a6;
- (void)unregisterClient:(id)a3;
- (void)unregisterStreamToken:(int64_t)a3;
- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4;
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

- (CSDMomentsController)initWithQueue:(id)a3 fileTransferController:(id)a4 mediaAssetManager:(id)a5 callCenterObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = CSDMomentsController;
  v15 = [(CSDMomentsController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    queue = v16->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024A850;
    v19[3] = &unk_10061A450;
    v20 = v16;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    dispatch_async(queue, v19);
  }

  return v16;
}

- (void)handleClientDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handle disconnect for client: %@", buf, 0xCu);
  }

  v7 = [(CSDMomentsController *)self streamTokensByCSDClient];
  v8 = [v7 objectForKey:v4];

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

  v14 = [(CSDMomentsController *)self streamTokensByCSDClient];
  [v14 removeObjectForKey:v4];
}

- (void)registerXPCClientWithReply:(id)a3
{
  v5 = a3;
  v4 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5[2]();
}

- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 reply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CSDMomentsController *)self clientManager];
  v14 = [v13 currentClient];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024B190;
  v17[3] = &unk_10061F9C0;
  v21 = a3;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = a4;
  v15 = v11;
  v16 = v10;
  sub_100004AA4(v14, @"modify-moments", v17, 0, "[CSDMomentsController startRequestWithMediaType:forStreamToken:requesteeID:reply:]");
}

- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDMomentsController *)self clientManager];
  v10 = [v9 currentClient];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024B864;
  v13[3] = &unk_10061AF20;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  sub_100004AA4(v10, @"modify-moments", v13, 0, "[CSDMomentsController endRequestWithTransactionID:reply:]");
}

- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v15);

  v16 = [(CSDMomentsController *)self clientManager];
  v17 = [v16 currentClient];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10024BC34;
  v22[3] = &unk_10061F9E8;
  v28 = a6;
  v22[4] = self;
  v23 = v13;
  v24 = v12;
  v25 = v17;
  v26 = v14;
  v27 = a3;
  v18 = v14;
  v19 = v17;
  v20 = v12;
  v21 = v13;
  sub_100004AA4(v19, @"modify-moments", v22, 0, "[CSDMomentsController registerStreamToken:requesterID:remoteIDSDestinations:remoteMomentsAvailable:reply:]");
}

- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDMomentsController *)self clientManager];
  v9 = [v8 currentClient];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10024C35C;
  v12[3] = &unk_10061FA10;
  v12[4] = self;
  v13 = v9;
  v14 = v6;
  v15 = a3;
  v10 = v6;
  v11 = v9;
  sub_100004AA4(v11, @"modify-moments", v12, 0, "[CSDMomentsController unregisterStreamToken:reply:]");
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C558;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C660;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)moments:(id)a3 didFinishRequest:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v13, 0x16u);
  }

  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:v10];
}

- (void)moments:(id)a3 capabilitiesDidChange:(unsigned int)a4
{
  v6 = a3;
  v7 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", buf, 8u);
  }

  v9 = [(CSDMomentsController *)self availabilityWithRemoteAvailable:1];
  if (v9 == 3)
  {
    sub_10024C1A8(a4);
  }

  else
  {
    +[NSSet set];
  }
  v10 = ;
  v11 = [[TUMomentsCapabilities alloc] initWithAvailability:v9 supportedMediaTypes:v10];
  v12 = [(CSDMomentsController *)self clientManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024CA20;
  v15[3] = &unk_10061FA38;
  v16 = v11;
  v17 = v6;
  v13 = v6;
  v14 = v11;
  [v12 performBlockOnClients:v15];
}

- (void)moments:(id)a3 didStartProcessingRequest:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  v13 = [(CSDMomentsController *)self serverBag];
  if ([v13 isMomentsDisabled])
  {
  }

  else
  {
    v14 = [objc_opt_class() isFaceTimePhotosAvailable];

    if (v14)
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
  if (!v9)
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10047DE8C();
    }

    goto LABEL_20;
  }

  if ([v9 mediaType] == 2 && (TUAllowLocalVideoRecording() & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [(CSDMomentsController *)self clientManager];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10024CD54;
    v25[3] = &unk_10061FA60;
    v26 = v9;
    [v17 performBlockOnClients:v25];

    v16 = 0;
  }

  v18 = [v9 requesterID];

  if (v18)
  {
    v19 = [CSDMomentsNotification alloc];
    v20 = [v8 streamToken];
    v21 = [v9 requesterID];
    v22 = [(CSDMomentsNotification *)v19 initWithStreamToken:v20 requesterID:v21];

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

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v15);

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v100 = v12;
    v101 = 2112;
    v102 = v13;
    v103 = 2112;
    v104 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  v17 = [(CSDMomentsController *)self serverBag];
  if ([v17 isMomentsDisabled])
  {

    goto LABEL_15;
  }

  v18 = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047E318();
    }

    goto LABEL_17;
  }

  v19 = [(CSDMomentsController *)self sessionsByToken];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 streamToken]);
  v21 = [v19 objectForKeyedSubscript:v20];

  if (!v21)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E298(v11);
    }

    goto LABEL_20;
  }

  if ([v12 mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v39 = [v21 remoteRequesterIDSDestinationFor:v12];
    if (v39)
    {
      if (v13 && v14)
      {
        v98[0] = @"jpg";
        v98[1] = @"heic";
        v98[2] = @"mov";
        v40 = [NSArray arrayWithObjects:v98 count:3];
        v41 = [NSSet setWithArray:v40];

        v42 = [v13 pathExtension];
        v43 = [v42 lowercaseString];
        v90 = v41;
        if ([v41 containsObject:v43])
        {
          v83 = [v14 pathExtension];
          [v83 lowercaseString];
          v44 = v88 = v39;
          v45 = [v41 containsObject:v44];

          v39 = v88;
          if (v45)
          {
            v46 = [NSUUID alloc];
            v47 = [v12 transactionID];
            v48 = [v46 initWithUUIDString:v47];

            if (v48)
            {
              NSTemporaryDirectory();
              v84 = v80 = v48;
              v97[0] = v84;
              v78 = [v48 UUIDString];
              v97[1] = v78;
              v49 = +[NSUUID UUID];
              v50 = [v49 UUIDString];
              v97[2] = v50;
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
                v56 = [v13 pathExtension];
                v57 = [v55 URLByAppendingPathExtension:v56];

                v58 = +[NSFileManager defaultManager];
                v94 = v54;
                v79 = v57;
                LOBYTE(v56) = [v58 copyItemAtURL:v13 toURL:v57 error:&v94];
                v59 = v94;

                if (v56)
                {
                  v60 = [v85 URLByAppendingPathComponent:@"lp_movie"];
                  v61 = [v14 pathExtension];
                  v62 = [v60 URLByAppendingPathExtension:v61];

                  v63 = +[NSFileManager defaultManager];
                  v93 = v59;
                  LOBYTE(v61) = [v63 copyItemAtURL:v14 toURL:v62 error:&v93];
                  v77 = v93;

                  v76 = v61;
                  if (v61)
                  {
                    [(CSDMomentsController *)self _transferFileAtURL:v85 forSession:v21 request:v12];
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
                sub_10047E0FC(v12);
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
        sub_10047E188(v12, v21);
      }
    }

    goto LABEL_48;
  }

  if (!TUAllowLocalVideoRecording())
  {
LABEL_53:
    [(CSDMomentsController *)self cleanUpForMomentIfNecessary:v11];
    goto LABEL_17;
  }

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 postNotificationName:@"CSDMomentsControllerStoppedLocalVideoCaptureNotification" object:0];

  if (!v14)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E230();
    }

    goto LABEL_20;
  }

  v23 = [NSUUID alloc];
  v24 = [v12 transactionID];
  v25 = [v23 initWithUUIDString:v24];

  if (!v25)
  {
    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10047E0FC(v12);
    }

LABEL_20:

    goto LABEL_17;
  }

  v86 = NSTemporaryDirectory();
  v89 = v25;
  v96[0] = v86;
  v81 = [v25 UUIDString];
  v96[1] = v81;
  v26 = +[NSUUID UUID];
  v27 = [v26 UUIDString];
  v96[2] = v27;
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
  v33 = [v14 pathExtension];
  v34 = [v32 URLByAppendingPathExtension:v33];

  v35 = +[NSFileManager defaultManager];
  v91 = v31;
  v36 = [v35 copyItemAtURL:v14 toURL:v34 error:&v91];
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

- (void)momentsServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047E358();
  }

  v7 = [(CSDMomentsController *)self sessionsByToken];
  [v7 removeAllObjects];

  v8 = [(CSDMomentsController *)self streamTokensByCSDClient];
  [v8 removeAllObjects];
}

- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(CSDMomentsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D978;
  block[3] = &unk_10061C7D8;
  v19 = v11;
  v20 = v12;
  v23 = a6;
  v21 = v13;
  v22 = self;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(v14, block);
}

- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 successfully:(BOOL)a5
{
  v7 = a4;
  if (!a5)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047E694();
    }
  }

  [(CSDMomentsController *)self deleteContentsAtURL:v7];
}

- (void)deleteContentsAtURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldPreserveMomentsFile])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preserving file at URL: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v9 = 0;
    v6 = [v5 removeItemAtURL:v3 error:&v9];
    v4 = v9;

    v7 = sub_100004778();
    v8 = v7;
    if (v6)
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
}

- (id)contentsOfDirectoryAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v9];
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

- (id)urlFromResources:(id)a3 withExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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
        v12 = [v11 pathExtension];
        v13 = [v12 isEqualToIgnoringCase:v6];

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

- (void)unregisterStreamToken:(int64_t)a3
{
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v11, 0xCu);
  }

  v7 = [(CSDMomentsController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 moments];
  [v9 setIsRegistered:0];
  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:v10];
}

- (void)cleanUpForMomentIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 streamToken];
  v7 = [(CSDMomentsController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 isRegistered];
  LODWORD(v7) = [v4 activeRequestCount];
  v11 = [v4 pendingRequestCount] + v7;
  v12 = [v9 activeRequestsByTransactionID];
  v13 = [v12 count] + v11;

  v14 = sub_100004778();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) != 0 || v13)
  {
    if (v15)
    {
      v17 = 67109376;
      LODWORD(v18[0]) = v10;
      WORD2(v18[0]) = 2048;
      *(v18 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Delaying cleanup because moment is still registered (%d) or has outstanding requests (%lu)", &v17, 0x12u);
    }
  }

  else
  {
    if (v15)
    {
      v17 = 138412290;
      v18[0] = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cleaning up state for moment: %@", &v17, 0xCu);
    }

    v14 = [(CSDMomentsController *)self sessionsByToken];
    v16 = [NSNumber numberWithLong:v6];
    [v14 setObject:0 forKeyedSubscript:v16];
  }
}

- (void)_transferFileAtURL:(id)a3 forSession:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "url: %@ session: %@ request: %@", buf, 0x20u);
  }

  v13 = [v9 remoteRequesterIDSDestinationFor:v10];
  v14 = [NSSet setWithObject:v13];

  v15 = [v10 transactionID];
  v19 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v17 = [(CSDMomentsController *)self fileTransferController];
  [v17 transferFileAtURL:v8 toDestinations:v14 withMetadata:v16];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v4 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = [(CSDMomentsController *)self contentsOfDirectoryAtURL:v4];
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
      v21 = v4;
      [(CSDMomentsController *)self _saveLivePhotoWithPhotoURL:v15 videoURL:v17 completion:v20];
    }

    else
    {
      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10047E7CC();
      }

      [(CSDMomentsController *)self deleteContentsAtURL:v4];
    }
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10047E764();
    }

    [(CSDMomentsController *)self deleteContentsAtURL:v4];
  }
}

- (void)_handleReceivedVideoURL:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_handleReceivedVideoURL: %@", buf, 0xCu);
  }

  if (v4 && TUAllowLocalVideoRecording())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024EE4C;
    v7[3] = &unk_10061FAB0;
    v7[4] = self;
    v8 = v4;
    [(CSDMomentsController *)self _saveVideoWithURL:v8 completion:v7];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "saving live photo with photo url: %@ video url: %@", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024F0EC;
  v18[3] = &unk_10061FAD8;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = objc_retainBlock(v18);
  v17 = [(CSDMomentsController *)self mediaAssetManager];
  [v17 saveLivePhotoWithPhotoURL:v15 videoURL:v14 completion:v16];
}

- (void)_saveVideoWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v8);

  if (TUAllowLocalVideoRecording())
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10024F300;
    v16 = &unk_10061FB00;
    v10 = v6;
    v17 = v10;
    v18 = v7;
    v11 = objc_retainBlock(&v13);
    v12 = [(CSDMomentsController *)self mediaAssetManager:v13];
    [v12 saveVideoWithURL:v10 completion:v11];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDMomentsController *)self serverBag];
  [v6 momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = [(CSDMomentsController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10024F498;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_after(v8, v9, v11);
}

- (id)sessionForTransactionID:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CSDMomentsController *)self sessionsByToken];
  v7 = [v6 allValues];

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
        v12 = [v11 activeRequestsByTransactionID];
        v13 = [v12 objectForKeyedSubscript:v4];

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

- (void)handleRequestResultWithMomentDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", buf, 0xCu);
  }

  v7 = [(CSDMomentsController *)self clientManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10024F860;
  v9[3] = &unk_10061FA60;
  v10 = v4;
  v8 = v4;
  [v7 performBlockOnClients:v9];
}

+ (BOOL)isFaceTimePhotosAvailable
{
  v3 = [a1 localCapabilities];
  if ([v3 isEnabled])
  {
    v4 = [a1 localCapabilities];
    v5 = [v4 isRegionBlocked] ^ 1;
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

- (int)availabilityWithRemoteAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_opt_class() localCapabilities];
  v6 = [v5 isRegionBlocked];

  if (v6)
  {
    return 2;
  }

  v8 = [objc_opt_class() isFaceTimePhotosAvailable];
  result = 1;
  if (v8 && v3)
  {
    v9 = [(CSDMomentsController *)self serverBag];
    v10 = [v9 isMomentsDisabled];

    if (v10)
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