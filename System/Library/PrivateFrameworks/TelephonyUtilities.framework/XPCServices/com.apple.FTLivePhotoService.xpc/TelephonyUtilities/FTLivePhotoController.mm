@interface FTLivePhotoController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (FTMomentsControllerLocalCapabilities)localCapabilities;
+ (id)sharedInstance;
- (FTLivePhotoController)init;
- (FTLivePhotoController)initWithQueue:(id)a3 fileTransferController:(id)a4 idsService:(id)a5 mediaAssetManager:(id)a6 callCenter:(id)a7 userNotificationProviderDataSource:(id)a8 featureFlags:(id)a9;
- (FTLivePhotoControllerDelegate)delegate;
- (id)contentsOfDirectoryAtURL:(id)a3;
- (id)sessionForTransactionID:(id)a3;
- (id)urlFromResources:(id)a3 withExtension:(id)a4;
- (int)availabilityWithRemoteAvailable:(BOOL)a3;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)a3 transactionID:(id)a4;
- (void)_handleReceivedVideoURL:(id)a3;
- (void)_saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5;
- (void)_saveVideoWithURL:(id)a3 completion:(id)a4;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)a3;
- (void)_transferFileAtURL:(id)a3 forSession:(id)a4 request:(id)a5;
- (void)cleanUpForMomentIfNecessary:(id)a3;
- (void)deleteContentsAtURL:(id)a3;
- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4;
- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7;
- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 transactionID:(id)a5 successfully:(BOOL)a6;
- (void)handleRequestResultWithMomentDescriptor:(id)a3;
- (void)moments:(id)a3 capabilitiesDidChange:(unsigned int)a4;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7;
- (void)moments:(id)a3 didFinishRequest:(id)a4 error:(id)a5;
- (void)moments:(id)a3 didStartProcessingRequest:(id)a4 error:(id)a5;
- (void)momentsServerDidDisconnect:(id)a3;
- (void)requestSandboxExtensionForTransactionID:(id)a3 reply:(id)a4;
- (void)requestSandboxExtensionForURL:(id)a3 reply:(id)a4;
- (void)unregisterStreamToken:(int64_t)a3;
- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4;
@end

@implementation FTLivePhotoController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002974;
  block[3] = &unk_100050F88;
  block[4] = a1;
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

- (FTLivePhotoController)initWithQueue:(id)a3 fileTransferController:(id)a4 idsService:(id)a5 mediaAssetManager:(id)a6 callCenter:(id)a7 userNotificationProviderDataSource:(id)a8 featureFlags:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v35.receiver = self;
  v35.super_class = FTLivePhotoController;
  v23 = [(FTLivePhotoController *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_queue, a3);
    queue = v24->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002CDC;
    block[3] = &unk_100050FF0;
    v28 = v24;
    v29 = v22;
    v30 = v20;
    v31 = v17;
    v32 = v18;
    v33 = v19;
    v34 = v21;
    dispatch_async(queue, block);
  }

  return v24;
}

- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = FTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "transactionID: %@", buf, 0xCu);
  }

  v10 = [(FTLivePhotoController *)self sessionForTransactionID:v6];
  v11 = [v10 activeRequestsByTransactionID];
  v12 = [v11 objectForKeyedSubscript:v6];

  if (v12)
  {
    v13 = [v12 avcRequest];
    v20 = 0;
    v14 = [v13 endWithError:&v20];
    v15 = v20;

    v16 = FTDefaultLog();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully ended request %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003852C();
    }
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Could not find request for transaction ID %@", v6];
    v21 = NSLocalizedDescriptionKey;
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v18];

    v19 = FTDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100038380();
    }
  }

  v7[2](v7, v15);
}

- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to unregister stream token: %ld", &v9, 0xCu);
  }

  [(FTLivePhotoController *)self unregisterStreamToken:a3];
  v6[2](v6, 0);
}

- (void)fileTransferer:(id)a3 didReceiveResourcesAtURL:(id)a4 withMetadata:(id)a5 isZipped:(BOOL)a6 fromIDSDestination:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(FTLivePhotoController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041F0;
  block[3] = &unk_100051090;
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

- (void)fileTransferer:(id)a3 didTransferFileAtURL:(id)a4 transactionID:(id)a5 successfully:(BOOL)a6
{
  v9 = a4;
  v10 = a5;
  if (!a6)
  {
    v11 = FTDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000388D0();
    }
  }

  [(FTLivePhotoController *)self deleteContentsAtURL:v9];
  v12 = [(FTLivePhotoController *)self sandboxURLsByRequestTransactionID];
  [v12 setObject:0 forKeyedSubscript:v10];
}

- (void)deleteContentsAtURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldPreserveMomentsFile])
  {
    v4 = FTDefaultLog();
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

    v7 = FTDefaultLog();
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
      sub_100038938();
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
    v7 = FTDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000389A0();
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
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v11, 0xCu);
  }

  v7 = [(FTLivePhotoController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 moments];
  [v9 setIsRegistered:0];
  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:v10];
}

- (void)cleanUpForMomentIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 streamToken];
  v7 = [(FTLivePhotoController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 isRegistered];
  LODWORD(v7) = [v4 activeRequestCount];
  v11 = [v4 pendingRequestCount] + v7;
  v12 = [v9 activeRequestsByTransactionID];
  v13 = [v12 count] + v11;

  v14 = FTDefaultLog();
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

    v14 = [(FTLivePhotoController *)self sessionsByToken];
    v16 = [NSNumber numberWithLong:v6];
    [v14 setObject:0 forKeyedSubscript:v16];
  }
}

- (void)_transferFileAtURL:(id)a3 forSession:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = FTDefaultLog();
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

  v17 = [(FTLivePhotoController *)self fileTransferController];
  [v17 transferFileAtURL:v8 toDestinations:v14 withMetadata:v16];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)a3 transactionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = FTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v6 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [(FTLivePhotoController *)self contentsOfDirectoryAtURL:v6];
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
      v24 = v6;
      v25 = v7;
      [(FTLivePhotoController *)self _saveLivePhotoWithPhotoURL:v18 videoURL:v20 completion:v23];
    }

    else
    {
      v22 = FTDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100038A70();
      }

      [(FTLivePhotoController *)self deleteContentsAtURL:v6];
    }
  }

  else
  {
    v21 = FTDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100038A08();
    }

    [(FTLivePhotoController *)self deleteContentsAtURL:v6];
  }
}

- (void)_handleReceivedVideoURL:(id)a3
{
  v4 = a3;
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = FTDefaultLog();
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
    v7[2] = sub_100005798;
    v7[3] = &unk_100051108;
    v7[4] = self;
    v8 = v4;
    [(FTLivePhotoController *)self _saveVideoWithURL:v8 completion:v7];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = FTDefaultLog();
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
  v18[2] = sub_100005A38;
  v18[3] = &unk_100051130;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = objc_retainBlock(v18);
  v17 = [(FTLivePhotoController *)self mediaAssetManager];
  [v17 saveLivePhotoWithPhotoURL:v15 videoURL:v14 completion:v16];
}

- (void)_saveVideoWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v8);

  if (TUAllowLocalVideoRecording())
  {
    v9 = FTDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100005C4C;
    v16 = &unk_100051158;
    v10 = v6;
    v17 = v10;
    v18 = v7;
    v11 = objc_retainBlock(&v13);
    v12 = [(FTLivePhotoController *)self mediaAssetManager:v13];
    [v12 saveVideoWithURL:v10 completion:v11];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)a3
{
  v4 = a3;
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(FTLivePhotoController *)self serverBag];
  [v6 momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = [(FTLivePhotoController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005DE4;
  v11[3] = &unk_1000510B8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_after(v8, v9, v11);
}

- (id)sessionForTransactionID:(id)a3
{
  v4 = a3;
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(FTLivePhotoController *)self sessionsByToken];
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
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", &v8, 0xCu);
  }

  v7 = [(FTLivePhotoController *)self clientObject];
  [v7 didReceiveLocallyRequestedMomentDescriptor:v4];
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

+ (FTMomentsControllerLocalCapabilities)localCapabilities
{
  if (qword_100059C20 != -1)
  {
    sub_100038BC0();
  }

  v3 = qword_100059C28;

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
    v9 = [(FTLivePhotoController *)self serverBag];
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
  if (qword_100059C38 != -1)
  {
    sub_100038BD4();
  }

  return byte_100059C30;
}

- (void)moments:(id)a3 didFinishRequest:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = FTDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v13, 0x16u);
  }

  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:v10];
}

- (void)moments:(id)a3 capabilitiesDidChange:(unsigned int)a4
{
  v6 = a3;
  v7 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", v14, 8u);
  }

  v9 = [(FTLivePhotoController *)self availabilityWithRemoteAvailable:1];
  if (v9 == 3)
  {
    mediaTypesCapabilitiesSetForCapabilities(a4);
  }

  else
  {
    +[NSSet set];
  }
  v10 = ;
  v11 = [[TUMomentsCapabilities alloc] initWithAvailability:v9 supportedMediaTypes:v10];
  v12 = [(FTLivePhotoController *)self clientObject];
  v13 = [v6 streamToken];

  [v12 didUpdateCapabilities:v11 forVideoStreamToken:v13];
}

- (void)moments:(id)a3 didStartProcessingRequest:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = FTDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  v13 = [(FTLivePhotoController *)self serverBag];
  if ([v13 isMomentsDisabled])
  {

LABEL_15:
    v27 = FTDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100038C50();
    }

    goto LABEL_18;
  }

  v14 = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = FTDefaultLog();
  v16 = v15;
  if (v9)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting sandbox extension for temp URL", buf, 2u);
    }

    v17 = [(FTLivePhotoController *)self sandboxDataSource];
    v18 = NSTemporaryDirectory();
    v19 = [NSURL fileURLWithPath:v18];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100006954;
    v31 = &unk_1000511C0;
    v32 = self;
    v20 = v9;
    v33 = v20;
    [v17 requestSandboxExtensionForURL:v19 reply:&v28];

    if ([v20 mediaType] != 2 || (TUAllowLocalVideoRecording() & 1) == 0)
    {
      v21 = [(FTLivePhotoController *)self clientObject];
      v22 = [v20 requesterID];
      [v21 willCaptureRemoteRequestFromRequesterID:v22];
    }

    v23 = [v20 requesterID];

    if (v23)
    {
      v24 = [(FTLivePhotoController *)self userNotificationProviderDataSource];
      v25 = [v8 streamToken];
      v26 = [v20 requesterID];
      [v24 momentCapturedForStreamToken:v25 requesterID:v26 reply:&stru_100051200];
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

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v15);

  v16 = FTDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v99 = v12;
    v100 = 2112;
    v101 = v13;
    v102 = 2112;
    v103 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  v17 = [(FTLivePhotoController *)self serverBag];
  if ([v17 isMomentsDisabled])
  {

    goto LABEL_15;
  }

  v18 = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v21 = FTDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003911C();
    }

    goto LABEL_17;
  }

  v19 = [(FTLivePhotoController *)self sessionsByToken];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 streamToken]);
  v21 = [v19 objectForKeyedSubscript:v20];

  if (!v21)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10003909C(v11);
    }

    goto LABEL_20;
  }

  if ([v12 mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v38 = [v21 remoteRequesterIDSDestinationFor:v12];
    if (v38)
    {
      if (v13 && v14)
      {
        v97[0] = @"jpg";
        v97[1] = @"heic";
        v97[2] = @"mov";
        v39 = [NSArray arrayWithObjects:v97 count:3];
        v40 = [NSSet setWithArray:v39];

        v41 = [v13 pathExtension];
        v42 = [v41 lowercaseString];
        v89 = v40;
        if ([v40 containsObject:v42])
        {
          v82 = [v14 pathExtension];
          [v82 lowercaseString];
          v43 = v87 = v38;
          v44 = [v40 containsObject:v43];

          v38 = v87;
          if (v44)
          {
            v45 = [NSUUID alloc];
            v46 = [v12 transactionID];
            v47 = [v45 initWithUUIDString:v46];

            if (v47)
            {
              NSTemporaryDirectory();
              v83 = v79 = v47;
              v96[0] = v83;
              v77 = [v47 UUIDString];
              v96[1] = v77;
              v48 = +[NSUUID UUID];
              v49 = [v48 UUIDString];
              v96[2] = v49;
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
                v55 = [v13 pathExtension];
                v56 = [v54 URLByAppendingPathExtension:v55];

                v57 = +[NSFileManager defaultManager];
                v93 = v53;
                v78 = v56;
                LOBYTE(v55) = [v57 copyItemAtURL:v13 toURL:v56 error:&v93];
                v58 = v93;

                if (v55)
                {
                  v59 = [v84 URLByAppendingPathComponent:@"lp_movie"];
                  v60 = [v14 pathExtension];
                  v61 = [v59 URLByAppendingPathExtension:v60];

                  v62 = +[NSFileManager defaultManager];
                  v92 = v58;
                  LOBYTE(v60) = [v62 copyItemAtURL:v14 toURL:v61 error:&v92];
                  v76 = v92;

                  v75 = v60;
                  if (v60)
                  {
                    [(FTLivePhotoController *)self _transferFileAtURL:v84 forSession:v21 request:v12];
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
                sub_100038F00(v12);
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
        sub_100038F8C(v12, v21);
      }
    }

    goto LABEL_48;
  }

  if (!TUAllowLocalVideoRecording())
  {
LABEL_53:
    [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:v11];
    goto LABEL_17;
  }

  if (!v14)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100039034();
    }

    goto LABEL_20;
  }

  v22 = [NSUUID alloc];
  v23 = [v12 transactionID];
  v24 = [v22 initWithUUIDString:v23];

  if (!v24)
  {
    v37 = FTDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100038F00(v12);
    }

LABEL_20:

    goto LABEL_17;
  }

  v85 = NSTemporaryDirectory();
  v88 = v24;
  v95[0] = v85;
  v80 = [v24 UUIDString];
  v95[1] = v80;
  v25 = +[NSUUID UUID];
  v26 = [v25 UUIDString];
  v95[2] = v26;
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
  v32 = [v14 pathExtension];
  v33 = [v31 URLByAppendingPathExtension:v32];

  v34 = +[NSFileManager defaultManager];
  v90 = v30;
  v35 = [v34 copyItemAtURL:v14 toURL:v33 error:&v90];
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

- (void)momentsServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = FTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10003915C();
  }

  v7 = [(FTLivePhotoController *)self sessionsByToken];
  [v7 removeAllObjects];
}

- (void)requestSandboxExtensionForTransactionID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = FTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requesting sandbox extension for transactionID: %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000076C8;
  v15[3] = &unk_100051228;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  v11 = objc_retainBlock(v15);
  v12 = [(FTLivePhotoController *)self sandboxDataSource];
  v13 = NSTemporaryDirectory();
  v14 = [NSURL fileURLWithPath:v13];
  [v12 requestSandboxExtensionForURL:v14 reply:v11];
}

- (void)requestSandboxExtensionForURL:(id)a3 reply:(id)a4
{
  v4 = a4;
  v5 = [TUSandboxExtendedURL alloc];
  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v5 initWithURL:v7];

  v4[2](v4, v8, 0);
}

- (FTLivePhotoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end